# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cgx_driver: 0 messages, 14 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cgx_driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv" ""
)

get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv" NAME_WE)
add_custom_target(_cgx_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cgx_driver" "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)
_generate_srv_cpp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
)

### Generating Module File
_generate_module_cpp(cgx_driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cgx_driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cgx_driver_generate_messages cgx_driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_cpp _cgx_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cgx_driver_gencpp)
add_dependencies(cgx_driver_gencpp cgx_driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cgx_driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)
_generate_srv_eus(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
)

### Generating Module File
_generate_module_eus(cgx_driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cgx_driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cgx_driver_generate_messages cgx_driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_eus _cgx_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cgx_driver_geneus)
add_dependencies(cgx_driver_geneus cgx_driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cgx_driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)
_generate_srv_lisp(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
)

### Generating Module File
_generate_module_lisp(cgx_driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cgx_driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cgx_driver_generate_messages cgx_driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_lisp _cgx_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cgx_driver_genlisp)
add_dependencies(cgx_driver_genlisp cgx_driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cgx_driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)
_generate_srv_nodejs(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
)

### Generating Module File
_generate_module_nodejs(cgx_driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cgx_driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cgx_driver_generate_messages cgx_driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_nodejs _cgx_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cgx_driver_gennodejs)
add_dependencies(cgx_driver_gennodejs cgx_driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cgx_driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)
_generate_srv_py(cgx_driver
  "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
)

### Generating Module File
_generate_module_py(cgx_driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cgx_driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cgx_driver_generate_messages cgx_driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/CgxDriverService.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotControl.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStatePose.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotStop.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ffish/Desktop/my_cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv" NAME_WE)
add_dependencies(cgx_driver_generate_messages_py _cgx_driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cgx_driver_genpy)
add_dependencies(cgx_driver_genpy cgx_driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cgx_driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cgx_driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cgx_driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cgx_driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cgx_driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cgx_driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cgx_driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cgx_driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cgx_driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cgx_driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cgx_driver_generate_messages_py std_msgs_generate_messages_py)
endif()
