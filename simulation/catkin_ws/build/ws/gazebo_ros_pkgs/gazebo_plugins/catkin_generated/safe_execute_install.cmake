execute_process(COMMAND "/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/truan/Object-Detection/simulation/catkin_ws/build/ws/gazebo_ros_pkgs/gazebo_plugins/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
