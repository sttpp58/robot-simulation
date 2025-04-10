#!/usr/bin/env python3

import rospy
import serial
from std_msgs.msg import Float32

ser = serial.Serial('/dev/ttyACM0', 115200, timeout=1)  # Adjust if needed

def send_angle():
    rospy.init_node('stepper_control', anonymous=True)
    pub = rospy.Publisher('stepper_angle', Float32, queue_size=10)
    rate = rospy.Rate(10)

    while not rospy.is_shutdown():
        try:
            angle = float(input("Enter angle (degrees): "))
            ser.write(f"{angle}\n".encode())  # Send angle to Arduino
            pub.publish(angle)  # Publish to ROS topic
            rospy.loginfo(f"Sent angle: {angle}")

        except ValueError:
            rospy.logwarn("Invalid input. Enter a number.")

        rate.sleep()

if __name__ == '__main__':
    try:
        send_angle()
    except rospy.ROSInterruptException:
        ser.close()

