#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <control_msgs/FollowJointTrajectoryAction.h>
#include <actionlib/server/simple_action_server.h>
#include <trajectory_msgs/JointTrajectory.h>
#include <cmath>
#include "cgx_driver/robotapi.h"
#include "cgx_driver/basestruct.h"

typedef actionlib::SimpleActionServer<control_msgs::FollowJointTrajectoryAction> TrajectoryActionServer;

class MoveItController {
public:
    MoveItController(ros::NodeHandle& nh) : 
        nh_(nh),
        as_(nh_, "/test_group_controller/follow_joint_trajectory", 
            boost::bind(&MoveItController::executeCB, this, _1), false),
        robotHandle(0),
        connected_(false) {
        
        CRresult res = cr_create_robot(&robotHandle, "192.168.6.6", 2323, "123");
        if (res != sucess) {
            ROS_ERROR("Failed to connect to the robot. Error code: %d", res);
            return;
        }
        connected_ = true;

        joint_state_pub_ = nh_.advertise<sensor_msgs::JointState>("/joint_states", 10);
        timer_ = nh_.createTimer(ros::Duration(0.1), &MoveItController::publishJointStates, this);
        
        as_.start();
        ROS_INFO("MoveIt Controller and Joint State Publisher are ready.");
    }

    ~MoveItController() {
        if (connected_) {
            cr_destroy_robot(robotHandle);
        }
    }

private:
    void executeCB(const control_msgs::FollowJointTrajectoryGoalConstPtr &goal) {
        control_msgs::FollowJointTrajectoryResult result;
        
        if (!connected_) {
            ROS_ERROR("Robot is not connected!");
            result.error_code = control_msgs::FollowJointTrajectoryResult::INVALID_GOAL;
            as_.setAborted(result);
            return;
        }

        auto trajectory = goal->trajectory;
        if (trajectory.points.empty()) {
            ROS_ERROR("Empty trajectory received");
            result.error_code = control_msgs::FollowJointTrajectoryResult::INVALID_GOAL;
            as_.setAborted(result);
            return;
        }

        int point_num = trajectory.points.size();
        ROS_INFO("Number of points: %d", point_num);

        const int interpolation_points_per_segment = 10;
        std::vector<trajectory_msgs::JointTrajectoryPoint> interpolated_points;
        
        for (int i = 0; i < point_num - 1; ++i) {
            const auto& start_point = trajectory.points[i];
            const auto& end_point = trajectory.points[i + 1];
            
            if (start_point.positions.size() != 6 || end_point.positions.size() != 6) {
                ROS_ERROR("Invalid number of joints in trajectory point (expected 6)");
                result.error_code = control_msgs::FollowJointTrajectoryResult::INVALID_GOAL;
                as_.setAborted(result);
                return;
            }

            interpolated_points.push_back(start_point);

            for (int j = 1; j <= interpolation_points_per_segment; ++j) {
                double ratio = static_cast<double>(j) / (interpolation_points_per_segment + 1);
                trajectory_msgs::JointTrajectoryPoint interpolated_point;
                interpolated_point.positions.resize(6);
                interpolated_point.velocities.resize(6);
                interpolated_point.accelerations.resize(6);

                for (size_t k = 0; k < 6; ++k) {
                    interpolated_point.positions[k] = start_point.positions[k] + ratio * (end_point.positions[k] - start_point.positions[k]);
                    if (!start_point.velocities.empty() && !end_point.velocities.empty()) {
                        interpolated_point.velocities[k] = start_point.velocities[k] + ratio * (end_point.velocities[k] - start_point.velocities[k]);
                    }
                    if (!start_point.accelerations.empty() && !end_point.accelerations.empty()) {
                        interpolated_point.accelerations[k] = start_point.accelerations[k] + ratio * (end_point.accelerations[k] - start_point.accelerations[k]);
                    }
                }
                interpolated_points.push_back(interpolated_point);
            }
        }
        interpolated_points.push_back(trajectory.points.back());

        int interpolated_point_num = interpolated_points.size();
        ROS_INFO("Number of interpolated points: %d", interpolated_point_num);

        CRresult res = cr_path_action(robotHandle, 1, 2);  
        if (res != sucess) {
            ROS_ERROR("Failed to start streaming mode. Error code: %d", res);
            result.error_code = control_msgs::FollowJointTrajectoryResult::INVALID_GOAL;
            as_.setAborted(result);
            return;
        }

        for (int i = 0; i < interpolated_point_num; i++) {
            if (as_.isPreemptRequested() || !ros::ok()) {
                ROS_INFO("Preempted");
                result.error_code = control_msgs::FollowJointTrajectoryResult::SUCCESSFUL;
                as_.setPreempted(result);
                cr_path_action(robotHandle, 1, 0); 
                return;
            }

            const auto& point = interpolated_points[i];
            ROS_INFO("Interpolated trajectory point %d: positions=[%f, %f, %f, %f, %f, %f]", 
                    i, point.positions[0], point.positions[1], point.positions[2], 
                    point.positions[3], point.positions[4], point.positions[5]);
            
            double target_positions[6];
            for (size_t j = 0; j < 6; j++) {
                target_positions[j] = point.positions[j] * 180.0 / M_PI;  
            }

            try {
                PathData pathData;
                pathData.pathPoints = new PathPoint[1];
                memcpy(pathData.pathPoints[0].jointpos, target_positions, sizeof(target_positions));
                pathData.pathPointsNum = 1;
                pathData.moveTime = 2;

                PathDownloadData pathDownloadData;
                pathDownloadData.pathData = pathData;
                pathDownloadData.pathPara.index = 1;
                pathDownloadData.pathPara.moveType = 0;
        
                res = cr_path_download(robotHandle, pathDownloadData);
                delete[] pathData.pathPoints;  
                
                if (res != sucess) {
                    ROS_ERROR("Failed to download path point. Error code: %d", res);
                    result.error_code = control_msgs::FollowJointTrajectoryResult::INVALID_GOAL;
                    as_.setAborted(result);
                    cr_path_action(robotHandle, 1, 0); 
                    return;
                }
            } catch (const std::exception& e) {
                ROS_ERROR("Exception while processing path point: %s", e.what());
                result.error_code = control_msgs::FollowJointTrajectoryResult::INVALID_GOAL;
                as_.setAborted(result);
                cr_path_action(robotHandle, 1, 0);  
                return;
            }
            
            control_msgs::FollowJointTrajectoryFeedback feedback;
            feedback.header.stamp = ros::Time::now();
            feedback.joint_names = trajectory.joint_names;
            feedback.actual.positions = point.positions;
            feedback.desired.positions = point.positions;
            feedback.error.positions.resize(point.positions.size(), 0.0);
            as_.publishFeedback(feedback);
            
            ros::Duration(0.01).sleep();
        }
    
        res = cr_path_action(robotHandle, 1, 0);  
        if (res != sucess) {
            ROS_ERROR("Failed to stop streaming mode. Error code: %d", res);
        }
    
        result.error_code = control_msgs::FollowJointTrajectoryResult::SUCCESSFUL;
        as_.setSucceeded(result);
        ROS_INFO("Goal succeeded");
    }

    void publishJointStates(const ros::TimerEvent&) {
        if (!connected_) return;

        double pos[6] = {0};
        CRresult result = cr_get_jointActualPos(robotHandle, pos);  
        if (result != sucess) {
            ROS_ERROR("Failed to get joint positions. Error code: %d", result);
            return;
        }

        sensor_msgs::JointState msg;
        msg.header.stamp = ros::Time::now();
        msg.name = {"C6_joint1", "C6_joint2", "C6_joint3", "C6_joint4", "C6_joint5", "C6_joint6"}; 
        msg.position.resize(6);
        for (size_t i = 0; i < 6; ++i) {
            msg.position[i] = pos[i] * M_PI / 180.0;
        }
        joint_state_pub_.publish(msg);
    }

    ros::NodeHandle nh_;
    TrajectoryActionServer as_;
    ros::Publisher joint_state_pub_;
    ros::Timer timer_;
    RobotHandle robotHandle;
    bool connected_;
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "moveit_controller");
    ros::NodeHandle nh;
    
    try {
        MoveItController controller(nh);
        ros::spin();
    } catch (const std::exception& e) {
        ROS_ERROR("Exception in main: %s", e.what());
        return 1;
    }
    
    return 0;
}