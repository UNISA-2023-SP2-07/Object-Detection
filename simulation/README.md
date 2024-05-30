* Start the simulation:
1. Start roslaunch for gazebo editor: roslaunch gazebo_sim lab_l.launch
2. Start gazebo gui:
   
   cd ~/worlds/

   ign gazebo world_with_obstacles.sdf -v 4

   Open new terminal: ign topic -e -t /world/world_with_obstacles/stats
   
* Debug package not found:

-Does the file actually exists? Yes, the file is in the launch folder.

-Did you source the setup.bash file? Do you mean **source /opt/ros/noetic/setup.bash** ? Yes, I did.

-What does **rospack find gazebo_sim** output? [rospack] Error: stack/package tb_tables not found

After using **source ~/Object-Detection/simulation/catkin_ws/devel/setup.bash** I can find it with rospack find.

https://campus-rover.gitbook.io/lab-notebook/fiiva/create-gazebo.world

Fix bug for not having public key:

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F42ED6FBAB17C654


Tool installment
sudo apt install ros-noetic-gazebo-ros-pkgs
sudo apt install ros-noetic-ros-core ros-noetic-geometry2
