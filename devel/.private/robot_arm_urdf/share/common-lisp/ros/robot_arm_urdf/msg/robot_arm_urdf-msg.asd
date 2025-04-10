
(cl:in-package :asdf)

(defsystem "robot_arm_urdf-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StepperCommand" :depends-on ("_package_StepperCommand"))
    (:file "_package_StepperCommand" :depends-on ("_package"))
  ))