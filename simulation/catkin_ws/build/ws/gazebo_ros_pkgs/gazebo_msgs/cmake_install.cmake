# Install script for directory: /home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/truan/Object-Detection/simulation/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_msgs/msg" TYPE FILE FILES
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/ContactsState.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/ContactState.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/LinkState.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/LinkStates.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/ModelState.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/ModelStates.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/ODEJointProperties.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/ODEPhysics.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/PerformanceMetrics.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/SensorPerformanceMetric.msg"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/msg/WorldState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_msgs/srv" TYPE FILE FILES
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyBodyWrench.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteModel.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/DeleteLight.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkState.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetPhysicsProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelConfiguration.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SpawnModel.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/ApplyJointEffort.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetJointProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetWorldProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetModelState.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/BodyRequest.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetLinkProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetModelState.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/JointRequest.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetLinkState.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetPhysicsProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetJointTrajectory.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/GetLightProperties.srv"
    "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/srv/SetLightProperties.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_msgs/cmake" TYPE FILE FILES "/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_msgs/catkin_generated/installspace/gazebo_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/truan/Object-Detection/simulation/catkin_ws/devel/include/gazebo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/truan/Object-Detection/simulation/catkin_ws/devel/share/roseus/ros/gazebo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/truan/Object-Detection/simulation/catkin_ws/devel/share/common-lisp/ros/gazebo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/truan/Object-Detection/simulation/catkin_ws/devel/share/gennodejs/ros/gazebo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/truan/Object-Detection/simulation/catkin_ws/devel/lib/python3/dist-packages/gazebo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/truan/Object-Detection/simulation/catkin_ws/devel/lib/python3/dist-packages/gazebo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_msgs/catkin_generated/installspace/gazebo_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_msgs/cmake" TYPE FILE FILES "/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_msgs/catkin_generated/installspace/gazebo_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_msgs/cmake" TYPE FILE FILES
    "/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_msgs/catkin_generated/installspace/gazebo_msgsConfig.cmake"
    "/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_msgs/catkin_generated/installspace/gazebo_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gazebo_msgs" TYPE FILE FILES "/home/truan/Object-Detection/simulation/catkin_ws/src/ws/gazebo_ros_pkgs/gazebo_msgs/package.xml")
endif()

