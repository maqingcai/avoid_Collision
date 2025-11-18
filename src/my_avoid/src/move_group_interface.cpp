#include <moveit/move_group_interface/move_group_interface.h>
#include <moveit/planning_scene_interface/planning_scene_interface.h>
#include <moveit_msgs/DisplayRobotState.h>
#include <moveit_msgs/DisplayTrajectory.h>
#include <moveit_msgs/AttachedCollisionObject.h>
#include <moveit_msgs/CollisionObject.h>
#include <moveit_visual_tools/moveit_visual_tools.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>


int main(int argc, char** argv)
{
  ros::init(argc, argv, "move_group_interface");
  ros::NodeHandle node_handle;

  ros::AsyncSpinner spinner(1);
  spinner.start();

  static const std::string PLANNING_GROUP = "test_group";
  moveit::planning_interface::MoveGroupInterface move_group_interface(PLANNING_GROUP);
  moveit::planning_interface::PlanningSceneInterface planning_scene_interface;
  const moveit::core::JointModelGroup* joint_model_group =
      move_group_interface.getCurrentState()->getJointModelGroup(PLANNING_GROUP);

  // visual tools
  namespace rvt = rviz_visual_tools;
  moveit_visual_tools::MoveItVisualTools visual_tools("base_link"); ///TODO
  visual_tools.deleteAllMarkers();
  visual_tools.loadRemoteControl();
  Eigen::Isometry3d text_pose = Eigen::Isometry3d::Identity();
  text_pose.translation().z() = 1.0;
  visual_tools.publishText(text_pose, "MoveGroupInterface Demo", rvt::WHITE, rvt::XLARGE);
  visual_tools.trigger();

  ROS_INFO_NAMED("tutorial", "Planning frame: %s", move_group_interface.getPlanningFrame().c_str());
  ROS_INFO_NAMED("tutorial", "End effector link: %s", move_group_interface.getEndEffectorLink().c_str());
  ROS_INFO_NAMED("tutorial", "Available Planning Groups:");
  std::copy(move_group_interface.getJointModelGroupNames().begin(),
            move_group_interface.getJointModelGroupNames().end(), std::ostream_iterator<std::string>(std::cout, ", "));

  //////////////////////////////////////////////////////////////
  // Start the demo
  ///////////////////////////////////////////////////////////////
  visual_tools.prompt("Press 'next' in the RvizVisualToolsGui window to start the demo");

  geometry_msgs::Pose target_pose;
  target_pose.position.x = 0.7;
  target_pose.position.y = 0.1;
  target_pose.position.z = 0.6;
  tf2::Quaternion q;
  q.setRPY(0, M_PI/2, 0);   // 末端朝下，更易 IK
  target_pose.orientation = tf2::toMsg(q);

  // add obstacle floor
  moveit_msgs::CollisionObject floor;
  floor.header.frame_id = move_group_interface.getPlanningFrame();
  floor.id = "floor";
  shape_msgs::SolidPrimitive floor_primitive;
  floor_primitive.type = floor_primitive.BOX;
  floor_primitive.dimensions.resize(3);
  floor_primitive.dimensions[floor_primitive.BOX_X] = 5.0;
  floor_primitive.dimensions[floor_primitive.BOX_Y] = 5.0;
  floor_primitive.dimensions[floor_primitive.BOX_Z] = 0.01;
  geometry_msgs::Pose floor_pose;
  floor_pose.orientation.w = 1.0;
  floor_pose.position.x = 0.0;
  floor_pose.position.y = 0.0;
  floor_pose.position.z = -0.01;
  floor.primitives.push_back(floor_primitive);
  floor.primitive_poses.push_back(floor_pose);
  floor.operation = floor.ADD;

  // add obstacle BOX1 & BOX2
  moveit_msgs::CollisionObject box1;
  moveit_msgs::CollisionObject box2;
  box1.header.frame_id = move_group_interface.getPlanningFrame();
  box1.id = "box1";
  box2.header.frame_id = move_group_interface.getPlanningFrame();
  box2.id = "box2";
  shape_msgs::SolidPrimitive box1_primitive;
  shape_msgs::SolidPrimitive box2_primitive;
  box1_primitive.type = box1_primitive.BOX;
  box2_primitive.type = box2_primitive.BOX;
  box1_primitive.dimensions.resize(3);
  box2_primitive.dimensions.resize(3);
  box1_primitive.dimensions[box1_primitive.BOX_X] = 0.1;
  box1_primitive.dimensions[box1_primitive.BOX_Y] = 0.8;
  box1_primitive.dimensions[box1_primitive.BOX_Z] = 0.5;
  box2_primitive.dimensions[box2_primitive.BOX_X] = 0.1;
  box2_primitive.dimensions[box2_primitive.BOX_Y] = 0.8;
  box2_primitive.dimensions[box2_primitive.BOX_Z] = 0.5;
  geometry_msgs::Pose box1_pose;
  geometry_msgs::Pose box2_pose;
  // box1_pose.orientation.w = 1.0;
  box1_pose.position.x = 0.5;
  box1_pose.position.y = -0.4;
  box1_pose.position.z = 0.5;
  // box2_pose.orientation.w = 1.0;
  box2_pose.position.x = 0.5;
  box2_pose.position.y = 0.4;
  box2_pose.position.z = 1.0;
  box1.primitives.push_back(box1_primitive);
  box1.primitive_poses.push_back(box1_pose);
  box1.operation = box1.ADD;
  box2.primitives.push_back(box2_primitive);
  box2.primitive_poses.push_back(box2_pose);
  box2.operation = box2.ADD;

  // add collision objects
  std::vector<moveit_msgs::CollisionObject> collision_objects;
  collision_objects.push_back(floor);
  collision_objects.push_back(box1);
  collision_objects.push_back(box2);
  planning_scene_interface.addCollisionObjects(collision_objects);
  ros::Duration(0.5).sleep();

  ///
  move_group_interface.setStartStateToCurrentState();
  move_group_interface.setPoseTarget(target_pose);
  moveit::planning_interface::MoveGroupInterface::Plan my_plan;
  bool success = (move_group_interface.plan(my_plan) == moveit::core::MoveItErrorCode::SUCCESS);
  if (success)
  {
    ROS_INFO("规划成功. 开始执行.");
    move_group_interface.execute(my_plan);
  }
  else
  {
    ROS_WARN("规划失败，考虑调整目标或场景设置");
  }
  ROS_INFO("Planning complete");
  ros::shutdown();
  return 0;
}
