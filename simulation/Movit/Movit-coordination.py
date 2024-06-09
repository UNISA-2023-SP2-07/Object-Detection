
#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy, roslib, sys
import moveit_commander
from moveit_msgs.msg import RobotTrajectory
from trajectory_msgs.msg import JointTrajectoryPoint

from geometry_msgs.msg import PoseStamped, Pose
from tf.transformations import euler_from_quaternion, quaternion_from_euler


class MoveItPlanningDemo:
    def __init__(self):
        # API to initialize move_group
        moveit_commander.roscpp_initialize(sys.argv)

        # Initialize the ROS node
        rospy.init_node("moveit_ik_demo")

        # Initialize the scene object to monitor changes in the external environment
        self.scene = moveit_commander.PlanningSceneInterface()
        rospy.sleep(1)

        # Initialize self.arm group in the robotic arm that needs to be controlled by move group
        self.arm = moveit_commander.MoveGroupCommander("arm_group")

        # Get the name of the terminal link
        self.end_effector_link = self.arm.get_end_effector_link()

        # Set the reference coordinate system used for the target position
        self.reference_frame = "joint1"
        self.arm.set_pose_reference_frame(self.reference_frame)

        # Allow replanning when motion planning fails
        self.arm.allow_replanning(True)

        # Set the allowable error of position (unit: meter) and attitude (unit: radian)
        self.arm.set_goal_position_tolerance(0.01)
        self.arm.set_goal_orientation_tolerance(0.05)

    def moving(self):
        # Control the robotic arm to return to the initialization position first
        self.arm.set_named_target("init_pose")
        self.arm.go()
        rospy.sleep(2)

        # Set the target pose in the robotic arm workspace, the position is described by x, y, z coordinates,
        # Pose is described by quaternion, based on base_link coordinate system
        target_pose = PoseStamped()
        target_pose.header.frame_id = self.reference_frame
        target_pose.header.stamp = rospy.Time.now()
        target_pose.pose.position.x = 0.132
        target_pose.pose.position.y = -0.150
        target_pose.pose.position.z = 0.075
        target_pose.pose.orientation.x = 0.026
        target_pose.pose.orientation.y = 1.0
        target_pose.pose.orientation.z = 0.0
        target_pose.pose.orientation.w = 0.014

        # Set the current state of the robot arm as the initial state of motion
        self.arm.set_start_state_to_current_state()

        # Set the target pose of the terminal motion of the robotic arm
        self.arm.set_pose_target(target_pose, self.end_effector_link)

        # Plan the movement path,规划运动路径
        traj = self.arm.plan()

        # Control the motion of the robotic arm according to the planned motion path
        self.arm.execute(traj)
        rospy.sleep(1)

        # Control the terminal of the robotic arm to move 5cm to the right. Parameter 1 represents y, 0,1,2,3,4,5 represents xyzrpy
        self.arm.shift_pose_target(1, 0.12, self.end_effector_link)
        self.arm.go()
        rospy.sleep(1)

        self.arm.shift_pose_target(1, 0.1, self.end_effector_link)
        self.arm.go()
        rospy.sleep(1)

        # Control the terminal of the robotic arm to rotate 90 degrees in the opposite direction. 0,1,2,3,4,5 represent xyzrpy
        # self.arm.shift_pose_target(3, -1.57, end_effector_link)
        # self.arm.go()
        # rospy.sleep(1)

    def run(self):
        self.scene.remove_world_object("suit")

        # Run once without obstacles
        self.moving()

        # Add environment
        quat = quaternion_from_euler(3.1415, 0, -1.57)

        suit_post = PoseStamped()
        suit_post.header.frame_id = self.reference_frame
        suit_post.pose.position.x = 0.0
        suit_post.pose.position.y = 0.0
        suit_post.pose.position.z = -0.02
        suit_post.pose.orientation.x = quat[0]
        suit_post.pose.orientation.y = quat[1]
        suit_post.pose.orientation.z = quat[2]
        suit_post.pose.orientation.w = quat[3]

        suit_path = (
            roslib.packages.get_pkg_dir("mycobot_description")
            + "/urdf/mycobot/suit_env.dae"
        )
        # need `pyassimp==3.3`
        self.scene.add_mesh("suit", suit_post, suit_path)
        rospy.sleep(2)

        # Run it again if there is an environmental impact
        self.moving()

        # close and exit moveit
        moveit_commander.roscpp_shutdown()
        moveit_commander.os._exit(0)


if __name__ == "__main__":
    o = MoveItPlanningDemo()
    o.run()
