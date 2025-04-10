#!/usr/bin/env python3
import rospy
from moveit_msgs.msg import DisplayTrajectory
from std_msgs.msg import Int32MultiArray  # Use Int32MultiArray for integer values
import numpy as np

# Publisher for integer joint angles
pub = rospy.Publisher("/target_joint_degrees", Int32MultiArray, queue_size=10)

def callback(msg):
    if not msg.trajectory:
        rospy.logwarn("No trajectory received from MoveIt!")
        return

    # Extract last joint positions in the trajectory
    joint_values_rad = msg.trajectory[0].joint_trajectory.points[-1].positions
    joint_values_deg = np.degrees(joint_values_rad)  # Convert radians to degrees
    joint_values_int = [int(round(angle)) for angle in joint_values_deg]  # Convert to integers

    # Publish as Int32MultiArray
    joint_msg = Int32MultiArray()
    joint_msg.data = joint_values_int[:6]  # Take only 6 values
    pub.publish(joint_msg)

    rospy.loginfo(f"Published target joint angles (int degrees): {joint_msg.data}")

def listener():
    rospy.init_node("moveit_joint_publisher", anonymous=True)
    rospy.Subscriber("/move_group/display_planned_path", DisplayTrajectory, callback)
    rospy.spin()

if __name__ == "__main__":
    listener()

