import rospy, roslib, sys
import moveit_commander
import moveit_msgs.msg
from geometry_msgs.msg import PoseStamped, Pose
from math import pi
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

moveit_commander.roscpp_initialize(sys.argv)
rospy.init_node('move_group_python_interface', anonymous=True)

scene = moveit_commander.PlanningSceneInterface()
robot = moveit_commander.RobotCommander()

group_name = "arm_group"
group = moveit_commander.MoveGroupCommander(group_name)

display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                               moveit_msgs.msg.DisplayTrajectory,
                                               queue_size=20)

def createPose(x, y, z):
    p = PoseStamped()
    p.header.frame_id = robot.get_planning_frame()
    p.pose.position.x = x
    p.pose.position.y = y
    p.pose.position.z = z
    return p

scene.add_box("table", createPose(.25, 0, .05), (.25, 1.5, 0.1))

scene.add_cylinder("pipette", createPose(0, .25, .15), 0.1, 0.05)

joint_goal = group.get_current_joint_values()
joint_goal[0] = pi
joint_goal[1] = pi/2
joint_goal[2] = 0
joint_goal[3] = 0
joint_goal[4] = pi/2
joint_goal[5] = 0

# The go command can be called with joint values, poses, or without any
# parameters if you have already set the pose or joint target for the group
group.go(joint_goal, wait=True)

# Calling ``stop()`` ensures that there is no residual movement
group.stop()

# pose_goal = Pose()
# pose_goal.orientation.w = 1.0
# pose_goal.position.x = 0
# pose_goal.position.y = 0.25
# pose_goal.position.z = 0.15
# group.set_pose_target(pose_goal)

# plan = group.go(wait=True)
# # Calling `stop()` ensures that there is no residual movement
# group.stop()
# # It is always good to clear your targets after planning with poses.
# # Note: there is no equivalent functison for clear_joint_value_targets()

# # group.clear_pose_targets()

planning_frame = group.get_planning_frame()
print("============ Reference frame: %s" % planning_frame)

eef_link = group.get_end_effector_link()
print("============ End effector: %s" % eef_link)

group_names = robot.get_group_names()
print("============ Robot Groups:", robot.get_group_names())

print("============ Printing robot state")
print(robot.get_current_state())
print()