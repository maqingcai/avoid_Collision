#include "ros/ros.h"
#include "cgx_driver/robotapi.h"
#include "cgx_driver/basestruct.h"
#include "cgx_driver/CgxDriverService.h"
#include "cgx_driver/RobotControl.h"
#include "cgx_driver/RobotStatePose.h"
#include "cgx_driver/RobotStateSpeed.h"
#include "cgx_driver/RobotStateAcceleration.h"
#include "cgx_driver/RobotStateCurrent.h"
#include "cgx_driver/RobotStop.h"
#include "cgx_driver/RobotGetAnalogIOState.h"
#include "cgx_driver/RobotGetDigitalIOState.h"
#include "cgx_driver/RobotSetAnalogIOState.h"
#include "cgx_driver/RobotSetDigitalIOState.h"
#include "cgx_driver/RobotGetAllDAInput.h"
#include "cgx_driver/RobotGetAllDAOutput.h"
#include "cgx_driver/RobotMoveCircle.h"



const char* ROS1_CGX_VERSION = "1.1a";
const double PI = 3.1415926;


std::map<int, std::string> mapErr = {
    {1, "error"},
    {2, "thread_running"},
    {3, "operate_timeout"},
    {4, "result_invalid"},
    {5, "out_of_range"},
    {6, "mutex_invalid"},
    {7, "para_error"},
    {8, "no_result"},
    {9, "no_assignTCPindex"},
    {10, "no_handle"},
    {11, "handle_repeat"},
    {12, "repeat_name"},
    {13, "delete_invalid"},
    {14, "set_bit_reg_invalid"},
    {15, "repeat_id"},
    {16, "file_encryption"},
    {17, "robotmode_error"},
    {18, "move_error"},
    {19, "forcectrl_wrongpara"},
    {20, "forcectrl_invaildcmd"},
    {21, "forcectrl_parablocked"},
    {22, "forcectrl_cmdblocked"},
    {23, "forcectrl_configblocked"},
    {24, "forcectrl_notenable"},
    {25, "forcectrl_wrongsensor"},
    {26, "outputrule_error"},
    {27, "analoginputtype_error"}
};

RobotHandle robot_handle;


bool movej_callback( cgx_driver::CgxDriverService::Request &req,
                     cgx_driver::CgxDriverService::Response &res)
{

    PointControlPara pointControlPara;
    for(int i = 0; i < 6; i++) {
        pointControlPara.pose[i] = req.pose[i];
        pointControlPara.jointpos[i] = req.jointpos[i];
        pointControlPara.speed[i] = req.speed[i];
        pointControlPara.acc[i] = req.acc[i];
        pointControlPara.tcpOffset[i] = 0;
        pointControlPara.coordinatePose[i] = 0;
        pointControlPara.jerk[i] = 60;  
    }

    pointControlPara.tcpID = -1;
    pointControlPara.coordinateType = (req.coordinate_type == "jointCoordinate") ? jointCoordinate :(req.coordinate_type == "ToolBaseCoordinate") ? ToolBaseCoordinate :baseCoordinate; 
    pointControlPara.pointTransType = (req.point_trans_type == "pointTransStop") ? pointTransStop : pointTransConstantSpeed;
    pointControlPara.pointTransRadius = req.point_trans_radius;
    pointControlPara.poseTranType = poseTranMoveToTargetPose;
    pointControlPara.motiontriggerMode = MovetriggerbyOnlyRpc;

    CRresult result = cr_moveJ(robot_handle, pointControlPara);
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to execute cr_moveJ: " + mapErr[result];
        return false;
    }

    res.ret = 0;
    res.message = "cr_moveJ executed successfully";
    return true;
}

bool movel_callback( cgx_driver::CgxDriverService::Request &req,
                     cgx_driver::CgxDriverService::Response &res)
{
    PointControlPara pointControlPara;
    for(int i = 0; i < 6; i++) {
        pointControlPara.pose[i] = req.pose[i];
        pointControlPara.jointpos[i] = req.jointpos[i];
        pointControlPara.speed[i] = req.speed[i];
        pointControlPara.acc[i] = req.acc[i];
        pointControlPara.tcpOffset[i] = 0;
        pointControlPara.coordinatePose[i] = 0;
        pointControlPara.jerk[i] = 60;  
    }

    pointControlPara.tcpID = -1;
    pointControlPara.coordinateType = (req.coordinate_type == "jointCoordinate") ? jointCoordinate :(req.coordinate_type == "ToolBaseCoordinate") ? ToolBaseCoordinate :baseCoordinate; 
    pointControlPara.pointTransType = (req.point_trans_type == "pointTransStop") ? pointTransStop : pointTransConstantSpeed;
    pointControlPara.pointTransRadius = req.point_trans_radius;
    pointControlPara.poseTranType = poseTranMoveToTargetPose;
    pointControlPara.motiontriggerMode = MovetriggerbyOnlyRpc;

    CRresult result = cr_moveL(robot_handle, pointControlPara);
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to execute cr_moveL: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "cr_moveL executed successfully";
    return true;
}


bool move_joint_callback( cgx_driver::CgxDriverService::Request &req,
                     cgx_driver::CgxDriverService::Response &res)
{
    PointControlPara pointControlPara;
    for(int i = 0; i < 6; i++) {
        pointControlPara.pose[i] = req.pose[i];
        pointControlPara.jointpos[i] = req.jointpos[i];
        pointControlPara.speed[i] = req.speed[i];
        pointControlPara.acc[i] = req.acc[i];
        pointControlPara.tcpOffset[i] = 0;
        pointControlPara.coordinatePose[i] = 0;
        pointControlPara.jerk[i] = 60;  
    }

    pointControlPara.tcpID = -1;
    pointControlPara.coordinateType = (req.coordinate_type == "jointCoordinate") ? jointCoordinate :(req.coordinate_type == "ToolBaseCoordinate") ? ToolBaseCoordinate :baseCoordinate; 
    pointControlPara.pointTransType = (req.point_trans_type == "pointTransStop") ? pointTransStop : pointTransConstantSpeed;
    pointControlPara.pointTransRadius = req.point_trans_radius;
    pointControlPara.poseTranType = poseTranMoveToTargetPose;
    pointControlPara.motiontriggerMode = MovetriggerbyOnlyRpc;
    int isBlock = req.is_block;

    CRresult result = cr_move_joint(robot_handle, pointControlPara, isBlock);
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to execute cr_move_joint: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "cr_move_joint executed successfully";
    return true;
}

bool move_line_callback( cgx_driver::CgxDriverService::Request &req,
                     cgx_driver::CgxDriverService::Response &res)
{
    PointControlPara pointControlPara;
    for(int i = 0; i < 6; i++) {
        pointControlPara.pose[i] = req.pose[i];
        pointControlPara.jointpos[i] = req.jointpos[i];
        pointControlPara.speed[i] = req.speed[i];
        pointControlPara.acc[i] = req.acc[i];
        pointControlPara.tcpOffset[i] = 0;
        pointControlPara.coordinatePose[i] = 0;
        pointControlPara.jerk[i] = 60;  
    }

    pointControlPara.tcpID = -1;
    pointControlPara.coordinateType = (req.coordinate_type == "jointCoordinate") ? jointCoordinate :(req.coordinate_type == "ToolBaseCoordinate") ? ToolBaseCoordinate :baseCoordinate;
    pointControlPara.pointTransType = (req.point_trans_type == "pointTransStop") ? pointTransStop : pointTransConstantSpeed;
    pointControlPara.pointTransRadius = req.point_trans_radius;
    pointControlPara.poseTranType = poseTranMoveToTargetPose;
    pointControlPara.motiontriggerMode = MovetriggerbyOnlyRpc;
    int isBlock = req.is_block;

    CRresult result = cr_move_line(robot_handle, pointControlPara, isBlock);
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to execute cr_move_line: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "cr_move_line executed successfully";
    return true;
}

bool moveJog_callback( cgx_driver::CgxDriverService::Request &req,
                     cgx_driver::CgxDriverService::Response &res)
{
    PointControlPara pointControlPara;
    for(int i = 0; i < 6; i++) {
        pointControlPara.pose[i] = req.pose[i];
        pointControlPara.jointpos[i] = req.jointpos[i];
        pointControlPara.speed[i] = req.speed[i];
        pointControlPara.acc[i] = req.acc[i];
        pointControlPara.tcpOffset[i] = 0;
        pointControlPara.coordinatePose[i] = 0;
        pointControlPara.jerk[i] = 60; 
    }

    pointControlPara.tcpID = -1;
    pointControlPara.coordinateType = (req.coordinate_type == "jointCoordinate") ? jointCoordinate :(req.coordinate_type == "ToolBaseCoordinate") ? ToolBaseCoordinate :baseCoordinate; 
    pointControlPara.pointTransType = (req.point_trans_type == "pointTransStop") ? pointTransStop : pointTransConstantSpeed;
    pointControlPara.pointTransRadius = req.point_trans_radius;
    pointControlPara.poseTranType = poseTranMoveToTargetPose;
    pointControlPara.motiontriggerMode = MovetriggerbyOnlyRpc;

    CRresult result = cr_moveJog(robot_handle, pointControlPara);
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to execute cr_moveJog: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "cr_moveJog executed successfully";
    return true;
}

bool move_circle_callback( cgx_driver::RobotMoveCircle::Request &req,
                     cgx_driver::RobotMoveCircle::Response &res)
{
    PointControlParaSimple  pointControlParaSimple1;  
    PointControlParaSimple  pointControlParaSimple2;  
    for (int index = 0; index < ROB_AXIS_NUM; index++)
    {
        pointControlParaSimple1.pose[index] = req.mid_pose[index];
        pointControlParaSimple1.jointpos[index] = req.mid_jointpos[index];
        pointControlParaSimple1.tcpOffset[index] = 0;
        pointControlParaSimple1.coordinatePose[index] = 0;
        pointControlParaSimple1.speed[index] = req.mid_speed[index];
        pointControlParaSimple1.acc[index] = req.mid_acc[index];
        pointControlParaSimple2.pose[index] = req.end_pose[index];
        pointControlParaSimple2.jointpos[index] = req.end_jointpos[index];
        pointControlParaSimple2.tcpOffset[index] = 0;
        pointControlParaSimple2.coordinatePose[index] = 0;
        pointControlParaSimple2.speed[index] = req.end_speed[index];
        pointControlParaSimple2.acc[index] = req.end_acc[index];
    }
    pointControlParaSimple1.coordinateType = (req.mid_coordinate_type == "jointCoordinate") ? jointCoordinate :(req.mid_coordinate_type == "ToolBaseCoordinate") ? ToolBaseCoordinate :baseCoordinate; ;
    pointControlParaSimple1.pointTransType = (req.mid_point_trans_type == "pointTransStop") ? pointTransStop : pointTransConstantSpeed;;
    pointControlParaSimple1.motiontriggerMode = MovetriggerbyOnlyRpc;
    pointControlParaSimple2.coordinateType = (req.end_coordinate_type == "jointCoordinate") ? jointCoordinate :(req.end_coordinate_type == "ToolBaseCoordinate") ? ToolBaseCoordinate :baseCoordinate; ;
    pointControlParaSimple2.pointTransType = (req.end_point_trans_type == "pointTransStop") ? pointTransStop : pointTransConstantSpeed;;
    pointControlParaSimple2.motiontriggerMode = MovetriggerbyOnlyRpc;
    PointControlPara  pointControlPara1;  
    PointControlPara  pointControlPara2;  
    CRresult result = cr_move_pointControlPara_transfer(robot_handle, pointControlParaSimple1, &pointControlPara1);  
    result = cr_move_pointControlPara_transfer(robot_handle, pointControlParaSimple2, &pointControlPara2);  
    PointControlParaList pointControlParaList;
    pointControlParaList.pointcontrolpara[0] = pointControlPara1;
    pointControlParaList.pointcontrolpara[1] = pointControlPara2;
    pointControlParaList.fixedrot = 0;
    pointControlParaList.centralangle = 0;
    int isBlock = req.end_is_block;
    result = cr_move_circle(robot_handle, pointControlParaList, isBlock);  
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to execute cr_move_circle: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "cr_move_circle executed successfully";
    return true;
}

bool poweron_callback(cgx_driver::RobotControl::Request &req,
                         cgx_driver::RobotControl::Response &res) {
    
    CRresult result = cr_poweron(robot_handle);
    if(result != 0) {
        res.ret = -1;
        res.message = "poweron failed: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "poweron successfully";
    return true;
}

bool poweroff_callback(cgx_driver::RobotControl::Request &req,
                         cgx_driver::RobotControl::Response &res) {
    
    CRresult result = cr_poweroff(robot_handle);
    if(result != 0) {
        res.ret = -1;
        res.message = "poweroff failed: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "poweroff successfully";
    return true;
}

bool enable_callback(cgx_driver::RobotControl::Request &req,
                         cgx_driver::RobotControl::Response &res) {
    
    CRresult result = cr_enable(robot_handle);
    if(result != 0) {
        res.ret = -1;
        res.message = "enable failed: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "enable successfully";
    return true;
}

bool disable_callback(cgx_driver::RobotControl::Request &req,
                         cgx_driver::RobotControl::Response &res) {
    
    CRresult result = cr_disable(robot_handle);
    if(result != 0) {
        res.ret = -1;
        res.message = "disable failed: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "disable successfully";
    return true;
}

bool fault_reset_callback(cgx_driver::RobotControl::Request &req,
                         cgx_driver::RobotControl::Response &res) {
    
    CRresult result = cr_FaultReset(robot_handle);
    if(result != 0) {
        res.ret = -1;
        res.message = "Fault reset failed: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "Fault reset successfully";
    return true;
}

bool sdk_version_callback(cgx_driver::RobotControl::Request &req,
                         cgx_driver::RobotControl::Response &res) {
    
    char version[20];
    CRresult result = cr_get_sdk_version(version);
    if(result != 0) {
        res.ret = -1;
        res.message = "get_sdk_version failed: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "get_sdk_version successfully, version: "+ std::string(version);
    return true;
}

bool moveControl_callback(cgx_driver::RobotStop::Request &req,
                         cgx_driver::RobotStop::Response &res) {
    
    MoveType moveType = (req.moveType == "DecStop") ? DecStop : ImdStop ;  
    CRresult result = cr_moveControl(robot_handle, moveType); 
    if(result != 0) {
        res.ret = -1;
        res.message = "moveControl failed: " + mapErr[result];
        return false;
    }
    res.ret = 0;
    res.message = "moveControl successfully";
    return true;
}

bool get_tcpActualPose_callback(cgx_driver::RobotStatePose::Request &req,
                          cgx_driver::RobotStatePose::Response &res) {
    double pose[6];
    CRresult result = cr_get_tcpActualPose(robot_handle, pose);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get TCP pose: " + mapErr[result];
        return false;
    }

    for(int i = 0; i < 6; i++) {
        res.pose[i] = pose[i];
    }
    res.ret = 0;
    res.message = "Success get TCP pose";
    return true;
}

bool get_tcpActualSpeed_callback(cgx_driver::RobotStateSpeed::Request &req,
                          cgx_driver::RobotStateSpeed::Response &res) {
    double speed[6];
    CRresult result = cr_get_tcpActualSpeed(robot_handle, speed);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get TCP speed: " + mapErr[result];
        return false;
    }

    for(int i = 0; i < 6; i++) {
        res.speed[i] = speed[i];
    }
    res.ret = 0;
    res.message = "Success get TCP speed";
    return true;
}

bool get_tcpActualAcceleration_callback(cgx_driver::RobotStateAcceleration::Request &req,
                          cgx_driver::RobotStateAcceleration::Response &res) {
    double acceleration[6];
    CRresult result = cr_get_tcpActualAcceleration(robot_handle, acceleration);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get TCP Acceleration: " + mapErr[result];
        return false;
    }

    for(int i = 0; i < 6; i++) {
        res.acceleration[i] = acceleration[i];
    }
    res.ret = 0;
    res.message = "Success get TCP acceleration";
    return true;
}

bool get_jointActualPose_callback(cgx_driver::RobotStatePose::Request &req,
                          cgx_driver::RobotStatePose::Response &res) {
    double pose[6];
    CRresult result = cr_get_jointActualPos(robot_handle, pose);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get jointActualPos: " + mapErr[result];
        return false;
    }

    for(int i = 0; i < 6; i++) {
        res.pose[i] = pose[i];
    }
    res.ret = 0;
    res.message = "Success get jointActualPos";
    return true;
}

bool get_jointActualVelocity_callback(cgx_driver::RobotStateSpeed::Request &req,
                          cgx_driver::RobotStateSpeed::Response &res) {
    double speed[6];
    CRresult result = cr_get_jointActualVelocity(robot_handle, speed);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get jointVelocity: " + mapErr[result];
        return false;
    }

    for(int i = 0; i < 6; i++) {
        res.speed[i] = speed[i];
    }
    res.ret = 0;
    res.message = "Success get jointVelocity";
    return true;
}

bool get_jointActualAcceleration_callback(cgx_driver::RobotStateAcceleration::Request &req,
                          cgx_driver::RobotStateAcceleration::Response &res) {
    double acceleration[6];
    CRresult result = cr_get_jointActualAcceleration(robot_handle, acceleration);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get joint Acceleration: " + mapErr[result];
        return false;
    }

    for(int i = 0; i < 6; i++) {
        res.acceleration[i] = acceleration[i];
    }
    res.ret = 0;
    res.message = "Success get joint acceleration";
    return true;
}

bool get_jointActualCurrent_callback(cgx_driver::RobotStateCurrent::Request &req,
                          cgx_driver::RobotStateCurrent::Response &res) {
    double current[6];
    CRresult result = cr_get_jointActualCurrent(robot_handle, current);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get joint Current: " + mapErr[result];
        return false;
    }

    for(int i = 0; i < 6; i++) {
        res.current[i] = current[i];
    }
    res.ret = 0;
    res.message = "Success get joint Current";
    return true;
}


bool get_stdDigitalOut_callback(cgx_driver::RobotGetDigitalIOState::Request &req,
                          cgx_driver::RobotGetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value;
    CRresult result = cr_get_stdDigitalOut(robot_handle, index, &value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get stdDigitalOut: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get stdDigitalOut";
    return true;
}

bool set_stdDigitalOut_callback(cgx_driver::RobotSetDigitalIOState::Request &req,
                          cgx_driver::RobotSetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value = req.value;
    CRresult result = cr_set_stdDigitalOut(robot_handle, index, value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to set stdDigitalOut: " + mapErr[result];
        return false;
    }

    res.ret = 0;
    res.message = "Success set stdDigitalOut";
    return true;
}

bool get_configDigitalOut_callback(cgx_driver::RobotGetDigitalIOState::Request &req,
                          cgx_driver::RobotGetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value;
    CRresult result = cr_get_configDigitalOut(robot_handle, index, &value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get configDigitalOut: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get configDigitalOut";
    return true;
}

bool set_configDigitalOut_callback(cgx_driver::RobotSetDigitalIOState::Request &req,
                          cgx_driver::RobotSetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value = req.value;
    CRresult result = cr_set_configDigitalOut(robot_handle, index, value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to set configDigitalOut: " + mapErr[result];
        return false;
    }

    res.ret = 0;
    res.message = "Success set configDigitalOut";
    return true;
}

bool get_toolDigitalOut_callback(cgx_driver::RobotGetDigitalIOState::Request &req,
                          cgx_driver::RobotGetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value;
    CRresult result = cr_get_toolDigitalOut(robot_handle, index, &value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get toolDigitalOut: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get toolDigitalOut";
    return true;
}

bool set_toolDigitalOut_callback(cgx_driver::RobotSetDigitalIOState::Request &req,
                          cgx_driver::RobotSetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value = req.value;
    CRresult result = cr_set_toolDigitalOut(robot_handle, index, value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to set toolDigitalOut: " + mapErr[result];
        return false;
    }

    res.ret = 0;
    res.message = "Success set toolDigitalOut";
    return true;
}

bool get_stdDigitalIn_callback(cgx_driver::RobotGetDigitalIOState::Request &req,
                          cgx_driver::RobotGetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value;
    CRresult result = cr_get_stdDigitalIn(robot_handle, index, &value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get stdDigitalIn: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get stdDigitalIn";
    return true;
}

bool get_configDigitalIn_callback(cgx_driver::RobotGetDigitalIOState::Request &req,
                          cgx_driver::RobotGetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value;
    CRresult result = cr_get_configDigitalIn(robot_handle, index, &value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get configDigitalIn: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get configDigitalIn";
    return true;
}

bool get_toolDigitalIn_callback(cgx_driver::RobotGetDigitalIOState::Request &req,
                          cgx_driver::RobotGetDigitalIOState::Response &res) {
    int index = req.index;
    BOOL value;
    CRresult result = cr_get_toolDigitalIn(robot_handle, index, &value);
    
    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get toolDigitalIn: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get toolDigitalIn";
    return true;
}

bool get_stdAnalogOut_callback(cgx_driver::RobotGetAnalogIOState::Request &req,
                          cgx_driver::RobotGetAnalogIOState::Response &res) {
    int index = req.index;
    double value;
    CRresult result = cr_get_stdAnalogOut(robot_handle, index, &value);

    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get stdAnalogOut: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get stdAnalogOut";
    return true;
}

bool set_stdAnalogOut_callback(cgx_driver::RobotSetAnalogIOState::Request &req,
                          cgx_driver::RobotSetAnalogIOState::Response &res) {
    int index = req.index;
    double value = req.value;
    CRresult result = cr_set_stdAnalogOut(robot_handle, index, value);

    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to set stdAnalogOut: " + mapErr[result];
        return false;
    }

    res.ret = 0;
    res.message = "Success set stdAnalogOut";
    return true;
}

bool get_toolAnalogIn_callback(cgx_driver::RobotGetAnalogIOState::Request &req,
                          cgx_driver::RobotGetAnalogIOState::Response &res) {
    int index = req.index;
    double value;
    CRresult result = cr_get_toolAnalogIn(robot_handle, index, &value);

    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get toolAnalogIn: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get toolAnalogIn";
    return true;
}

bool get_stdAnalogIn_callback(cgx_driver::RobotGetAnalogIOState::Request &req,
                          cgx_driver::RobotGetAnalogIOState::Response &res) {
    int index = req.index;
    double value;
    CRresult result = cr_get_stdAnalogIn(robot_handle, index, &value);

    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get stdAnalogIn: " + mapErr[result];
        return false;
    }

    res.value = value;
    res.ret = 0;
    res.message = "Success get stdAnalogIn";
    return true;
}

bool get_allDAInput_callback(cgx_driver::RobotGetAllDAInput::Request &req,
                          cgx_driver::RobotGetAllDAInput::Response &res) {
    BOOL controllerDI[8];
    BOOL controllerCI[8];
    double controllerAI[3];
    BOOL toolDI[2];
    double toolAI[2];
    CRresult result = cr_get_allDAInput(robot_handle, controllerDI, controllerCI, controllerAI, toolDI, toolAI);

    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get allDAInput: " + mapErr[result];
        return false;
    }

    for (int i = 0; i < 8; i++)
    {
        res.controllerDI[i] = controllerDI[i];
        res.controllerCI[i] = controllerCI[i];
    }
    for (int i = 0; i < 3; i++)
    {
        res.controllerAI[i] = controllerAI[i];
    }
    for (int i = 0; i < 2; i++)
    {
        res.toolDI[i] = toolDI[i];
        res.toolAI[i] = toolAI[i];
    }
    res.ret = 0;
    res.message = "Success get allDAInput";
    return true;
}

bool get_allDAOutput_callback(cgx_driver::RobotGetAllDAOutput::Request &req,
                          cgx_driver::RobotGetAllDAOutput::Response &res) {
    BOOL controllerDO[8];
    BOOL controllerCO[8];
    double controllerAO[1];
    BOOL toolDO[2];
    CRresult result = cr_get_allDAOutput(robot_handle, controllerDO, controllerCO, controllerAO, toolDO);

    if(result != 0) {
        res.ret = -1;
        res.message = "Failed to get allDAOutput: " + mapErr[result];
        return false;
    }

    for (int i = 0; i < 8; i++)
    {
        res.controllerDO[i] = controllerDO[i];
        res.controllerCO[i] = controllerCO[i];
    }
    for (int i = 0; i < 1; i++)
    {
        res.controllerAO[i] = controllerAO[i];
    }
    for (int i = 0; i < 2; i++)
    {
        res.toolDO[i] = toolDO[i];
    }
    res.ret = 0;
    res.message = "Success get allDAOutput";
    return true;
}


int main(int argc, char **argv)
{
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "cgx_driver");
    ros::NodeHandle nh;
    ros::NodeHandle private_nh("~");  
    

    std::string robot_ip;
    private_nh.param<std::string>("ip", robot_ip, "192.168.6.6");  
    ROS_INFO("Actual connecting IP: %s", robot_ip.c_str());
    
    int robot_port = 2323;
    std::string password = "123";
    
    ROS_INFO("Connecting to robot at IP: %s", robot_ip.c_str());
    
    ros::Rate rate(125);

    CRresult result = cr_create_robot(&robot_handle, robot_ip.c_str(), robot_port, password.c_str());
    if(result != 0) {
        ROS_ERROR("Failed to connect to robot: %s", mapErr[result].c_str());
        return -1;
    }
    ROS_INFO("Successfully connected to robot");

    // Robot Move服务
    ros::ServiceServer moveJ_service = nh.advertiseService("/cgx_driver/moveJ", movej_callback);
    ros::ServiceServer moveL_service = nh.advertiseService("/cgx_driver/moveL", movel_callback);
    ros::ServiceServer move_joint_service = nh.advertiseService("/cgx_driver/move_joint", move_joint_callback);
    ros::ServiceServer move_line_service = nh.advertiseService("/cgx_driver/move_line", move_line_callback);
    ros::ServiceServer moveJog_service = nh.advertiseService("/cgx_driver/moveJog", moveJog_callback);
    ros::ServiceServer move_circle_service = nh.advertiseService("/cgx_driver/move_circle", move_circle_callback);
  
    // Robot Control服务
    ros::ServiceServer poweron_service = nh.advertiseService("/cgx_driver/poweron", poweron_callback);
    ros::ServiceServer poweroff_service = nh.advertiseService("/cgx_driver/poweroff", poweroff_callback);
    ros::ServiceServer enable_service = nh.advertiseService("/cgx_driver/enable", enable_callback);
    ros::ServiceServer disable_service = nh.advertiseService("/cgx_driver/disable", disable_callback);
    ros::ServiceServer FaultReset_service = nh.advertiseService("/cgx_driver/FaultReset", fault_reset_callback);
    ros::ServiceServer sdk_version_service = nh.advertiseService("/cgx_driver/get_sdk_version", sdk_version_callback);
    ros::ServiceServer moveControl_service = nh.advertiseService("/cgx_driver/moveControl", moveControl_callback);
    
    //Robot State服务
    ros::ServiceServer get_tcpActualPose_service = nh.advertiseService("/cgx_driver/get_tcpActualPose", get_tcpActualPose_callback);
    ros::ServiceServer get_tcpActualSpeed_service = nh.advertiseService("/cgx_driver/get_tcpActualSpeed", get_tcpActualSpeed_callback);
    ros::ServiceServer get_tcpActualAcceleration_service = nh.advertiseService("/cgx_driver/get_tcpActualAcceleration", get_tcpActualAcceleration_callback);
    ros::ServiceServer get_jointActualPose_service = nh.advertiseService("/cgx_driver/get_jointActualPose", get_jointActualPose_callback);
    ros::ServiceServer get_jointActualVelocity_service = nh.advertiseService("/cgx_driver/get_jointActualVelocity", get_jointActualVelocity_callback);
    ros::ServiceServer get_jointActualAcceleration_service = nh.advertiseService("/cgx_driver/get_jointActualAcceleration", get_jointActualAcceleration_callback);
    ros::ServiceServer get_jointActualCurrent_service = nh.advertiseService("/cgx_driver/get_jointActualCurrent", get_jointActualCurrent_callback);

    //Robot IO服务
    ros::ServiceServer get_stdDigitalOut_service = nh.advertiseService("/cgx_driver/get_stdDigitalOut", get_stdDigitalOut_callback);
    ros::ServiceServer set_stdDigitalOut_service = nh.advertiseService("/cgx_driver/set_stdDigitalOut", set_stdDigitalOut_callback);
    ros::ServiceServer get_configDigitalOut_service = nh.advertiseService("/cgx_driver/get_configDigitalOut", get_configDigitalOut_callback);
    ros::ServiceServer set_configDigitalOut_service = nh.advertiseService("/cgx_driver/set_configDigitalOut", set_configDigitalOut_callback);
    ros::ServiceServer get_toolDigitalOut_service = nh.advertiseService("/cgx_driver/get_toolDigitalOut", get_toolDigitalOut_callback);
    ros::ServiceServer set_toolDigitalOut_service = nh.advertiseService("/cgx_driver/set_toolDigitalOut", set_toolDigitalOut_callback);
    ros::ServiceServer get_stdDigitalIn_service = nh.advertiseService("/cgx_driver/get_stdDigitalIn", get_stdDigitalIn_callback);
    ros::ServiceServer get_configDigitalIn_service = nh.advertiseService("/cgx_driver/get_configDigitalIn", get_configDigitalIn_callback);
    ros::ServiceServer get_toolDigitalIn_service = nh.advertiseService("/cgx_driver/get_toolDigitalIn", get_toolDigitalIn_callback);

    ros::ServiceServer get_stdAnalogOut_service = nh.advertiseService("/cgx_driver/get_stdAnalogOut", get_stdAnalogOut_callback);
    ros::ServiceServer set_stdAnalogOut_service = nh.advertiseService("/cgx_driver/set_stdAnalogOut", set_stdAnalogOut_callback);
    ros::ServiceServer get_toolAnalogIn_service = nh.advertiseService("/cgx_driver/get_toolAnalogIn", get_toolAnalogIn_callback);
    ros::ServiceServer get_stdAnalogIn_service = nh.advertiseService("/cgx_driver/get_stdAnalogIn", get_stdAnalogIn_callback);
    ros::ServiceServer get_allDAInput_service = nh.advertiseService("/cgx_driver/get_allDAInput", get_allDAInput_callback);
    ros::ServiceServer get_allDAOutput_service = nh.advertiseService("/cgx_driver/get_allDAOutput", get_allDAOutput_callback);
    
    ROS_INFO("CGX driver started");

    while(ros::ok()) {
        ros::spinOnce();
        rate.sleep();
    }

    cr_destroy_robot(robot_handle);
    return 0;
}