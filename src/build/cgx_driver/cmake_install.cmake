# Install script for directory: /home/ffish/Desktop/cgx_dev/src/cgx_driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cgx_driver/srv" TYPE FILE FILES
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/CgxDriverService.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotControl.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotStatePose.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotStateSpeed.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotStateAcceleration.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotStateCurrent.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotStop.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotGetAnalogIOState.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotGetDigitalIOState.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotSetAnalogIOState.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotSetDigitalIOState.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotGetAllDAInput.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotGetAllDAOutput.srv"
    "/home/ffish/Desktop/cgx_dev/src/cgx_driver/srv/RobotMoveCircle.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cgx_driver/cmake" TYPE FILE FILES "/home/ffish/Desktop/cgx_dev/src/build/cgx_driver/catkin_generated/installspace/cgx_driver-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ffish/Desktop/cgx_dev/src/build/devel/include/cgx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ffish/Desktop/cgx_dev/src/build/devel/share/roseus/ros/cgx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ffish/Desktop/cgx_dev/src/build/devel/share/common-lisp/ros/cgx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ffish/Desktop/cgx_dev/src/build/devel/share/gennodejs/ros/cgx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ffish/Desktop/cgx_dev/src/build/devel/lib/python3/dist-packages/cgx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ffish/Desktop/cgx_dev/src/build/devel/lib/python3/dist-packages/cgx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ffish/Desktop/cgx_dev/src/build/cgx_driver/catkin_generated/installspace/cgx_driver.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cgx_driver/cmake" TYPE FILE FILES "/home/ffish/Desktop/cgx_dev/src/build/cgx_driver/catkin_generated/installspace/cgx_driver-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cgx_driver/cmake" TYPE FILE FILES
    "/home/ffish/Desktop/cgx_dev/src/build/cgx_driver/catkin_generated/installspace/cgx_driverConfig.cmake"
    "/home/ffish/Desktop/cgx_dev/src/build/cgx_driver/catkin_generated/installspace/cgx_driverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cgx_driver" TYPE FILE FILES "/home/ffish/Desktop/cgx_dev/src/cgx_driver/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cgx_driver/cgx_driver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cgx_driver/cgx_driver")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cgx_driver/cgx_driver"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cgx_driver" TYPE EXECUTABLE FILES "/home/ffish/Desktop/cgx_dev/src/build/devel/lib/cgx_driver/cgx_driver")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cgx_driver/cgx_driver" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cgx_driver/cgx_driver")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cgx_driver/cgx_driver"
         OLD_RPATH "/home/ffish/Desktop/cgx_dev/src/cgx_driver/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cgx_driver/cgx_driver")
    endif()
  endif()
endif()

