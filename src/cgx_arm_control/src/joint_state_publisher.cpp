#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include "cgx_driver/robotapi.h"
#include "cgx_driver/basestruct.h"
#include <cmath>

class JointStatePublisher {
public:
    JointStatePublisher() : robotHandle(0) {
        ros::NodeHandle nh;
        
        CRresult result = cr_create_robot(&robotHandle, "192.168.6.6", 2323, "123");
        if (result != sucess) {
            ROS_ERROR("Failed to connect to the robot. Error code: %d", result);
            return;
        }
        
        joint_state_pub_ = nh.advertise<sensor_msgs::JointState>("/joint_states", 10);
        
        timer_ = nh.createTimer(ros::Duration(0.1), &JointStatePublisher::publishJointStates, this);
        
        ROS_INFO("Joint State Publisher is ready.");
    }

private:
    void publishJointStates(const ros::TimerEvent&) {
        double pos[6];
        CRresult result = cr_get_jointActualPos(robotHandle, pos);
        if (result != sucess) {
            ROS_ERROR("Failed to get joint positions. Error code: %d", result);
            return;
        }

        std::vector<double> joint_positions(pos, pos + 6);
        for (double& angle : joint_positions) {
            angle = angle * M_PI / 180.0;
        }

        sensor_msgs::JointState msg;
        msg.header.stamp = ros::Time::now();
        msg.header.frame_id = "";  
        msg.name = {"C6_joint1", "C6_joint2", "C6_joint3", 
                   "C6_joint4", "C6_joint5", "C6_joint6"}; 
        msg.position = joint_positions;
        msg.velocity.clear();
        msg.effort.clear();
        
        joint_state_pub_.publish(msg);
    }

    ros::Publisher joint_state_pub_;
    ros::Timer timer_;
    RobotHandle robotHandle;
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "joint_state_publisher");
    
    JointStatePublisher publisher;
    
    ros::spin();
    return 0;
}