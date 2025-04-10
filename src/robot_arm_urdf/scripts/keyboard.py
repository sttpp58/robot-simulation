#!/usr/bin/env python3

import rospy
import serial
from std_msgs.msg import String

ser = serial.Serial('/dev/ttyACM0', 115200, timeout=1)  # Adjust port if needed

def send_data():
    rospy.init_node('keyboard_sender', anonymous=True)
    pub = rospy.Publisher('arduino_data', String, queue_size=10)
    rate = rospy.Rate(10)  # 10 Hz

    while not rospy.is_shutdown():
        data = input("Enter data to send: ")
        if data:
            ser.write((data + '\n').encode())  # Send data to Arduino
            pub.publish(data)  # Publish to ROS topic
            rospy.loginfo(f"Sent: {data}")

        rate.sleep()

if __name__ == '__main__':
    try:
        send_data()
    except rospy.ROSInterruptException:
        ser.close()

