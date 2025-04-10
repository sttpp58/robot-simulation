;; Auto-generated. Do not edit!


(when (boundp 'robot_arm_urdf::StepperCommand)
  (if (not (find-package "ROBOT_ARM_URDF"))
    (make-package "ROBOT_ARM_URDF"))
  (shadow 'StepperCommand (find-package "ROBOT_ARM_URDF")))
(unless (find-package "ROBOT_ARM_URDF::STEPPERCOMMAND")
  (make-package "ROBOT_ARM_URDF::STEPPERCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude StepperCommand.msg.html


(defclass robot_arm_urdf::StepperCommand
  :super ros::object
  :slots (_target_steps ))

(defmethod robot_arm_urdf::StepperCommand
  (:init
   (&key
    ((:target_steps __target_steps) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _target_steps __target_steps)
   self)
  (:target_steps
   (&optional __target_steps)
   (if __target_steps (setq _target_steps __target_steps)) _target_steps)
  (:serialization-length
   ()
   (+
    ;; int32[] _target_steps
    (* 4    (length _target_steps)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _target_steps
     (write-long (length _target_steps) s)
     (dotimes (i (length _target_steps))
       (write-long (elt _target_steps i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _target_steps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_steps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _target_steps i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robot_arm_urdf::StepperCommand :md5sum-) "d72fea468f87b18315af10edfcc7c9bf")
(setf (get robot_arm_urdf::StepperCommand :datatype-) "robot_arm_urdf/StepperCommand")
(setf (get robot_arm_urdf::StepperCommand :definition-)
      "int32[] target_steps

")



(provide :robot_arm_urdf/StepperCommand "d72fea468f87b18315af10edfcc7c9bf")


