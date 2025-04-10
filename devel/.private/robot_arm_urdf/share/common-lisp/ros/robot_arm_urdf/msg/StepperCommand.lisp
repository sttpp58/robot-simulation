; Auto-generated. Do not edit!


(cl:in-package robot_arm_urdf-msg)


;//! \htmlinclude StepperCommand.msg.html

(cl:defclass <StepperCommand> (roslisp-msg-protocol:ros-message)
  ((target_steps
    :reader target_steps
    :initarg :target_steps
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass StepperCommand (<StepperCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepperCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepperCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_arm_urdf-msg:<StepperCommand> is deprecated: use robot_arm_urdf-msg:StepperCommand instead.")))

(cl:ensure-generic-function 'target_steps-val :lambda-list '(m))
(cl:defmethod target_steps-val ((m <StepperCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_arm_urdf-msg:target_steps-val is deprecated.  Use robot_arm_urdf-msg:target_steps instead.")
  (target_steps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepperCommand>) ostream)
  "Serializes a message object of type '<StepperCommand>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'target_steps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'target_steps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepperCommand>) istream)
  "Deserializes a message object of type '<StepperCommand>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'target_steps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'target_steps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepperCommand>)))
  "Returns string type for a message object of type '<StepperCommand>"
  "robot_arm_urdf/StepperCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepperCommand)))
  "Returns string type for a message object of type 'StepperCommand"
  "robot_arm_urdf/StepperCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepperCommand>)))
  "Returns md5sum for a message object of type '<StepperCommand>"
  "d72fea468f87b18315af10edfcc7c9bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepperCommand)))
  "Returns md5sum for a message object of type 'StepperCommand"
  "d72fea468f87b18315af10edfcc7c9bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepperCommand>)))
  "Returns full string definition for message of type '<StepperCommand>"
  (cl:format cl:nil "int32[] target_steps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepperCommand)))
  "Returns full string definition for message of type 'StepperCommand"
  (cl:format cl:nil "int32[] target_steps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepperCommand>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'target_steps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepperCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'StepperCommand
    (cl:cons ':target_steps (target_steps msg))
))
