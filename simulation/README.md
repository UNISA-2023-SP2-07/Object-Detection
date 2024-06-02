# HOW TO RUN A SIMULATION WORKSPACE
---
## Source the package before running:
*(Run on terminal before every launch)*

`source /opt/ros/noetic/setup.bash`
`source ~/Object-Detection/simulation/catkin_ws/devel/setup.bash`

Source to the plugins lib 
`source /usr/share/gazebo-11/setup.sh`


Debug: test if rospack is exist in the workspace
`rospack find gazebo_sim`

## Start the simulation:
1. Start roslaunch for gazebo editor: `roslaunch gazebo_sim lab_l.launch`
2. Start gazebo gui:
   
   `cd ~/worlds/`
   `ign gazebo world_with_obstacles.sdf -v 4`

   Show stats of the simulation in new terminal: `ign topic -e -t /world/world_with_obstacles/stats`
   
## Build single package

`catkin_make --only-pkg-with-deps gazebo_sim`
`catkin_make -DCATKIN_WHITELIST_PACKAGES=""` to build all at the end

## DEBUGGING
No public key for`W:GPG error: http://packages.ros.org/ros2/ubuntu focal InRelease: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY `:

`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F42ED6FBAB17C654`

Tool installment

`sudo apt install ros-noetic-gazebo-ros-pkgs`
`sudo apt install ros-noetic-ros-core ros-noetic-geometry2`

## RESOURCES
[Create world in Gazebo](https://campus-rover.gitbook.io/lab-notebook/fiiva/create-gazebo.world)
