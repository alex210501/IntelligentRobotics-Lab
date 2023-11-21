
(cl:in-package :asdf)

(defsystem "lab3-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "chargeAction" :depends-on ("_package_chargeAction"))
    (:file "_package_chargeAction" :depends-on ("_package"))
    (:file "chargeActionFeedback" :depends-on ("_package_chargeActionFeedback"))
    (:file "_package_chargeActionFeedback" :depends-on ("_package"))
    (:file "chargeActionGoal" :depends-on ("_package_chargeActionGoal"))
    (:file "_package_chargeActionGoal" :depends-on ("_package"))
    (:file "chargeActionResult" :depends-on ("_package_chargeActionResult"))
    (:file "_package_chargeActionResult" :depends-on ("_package"))
    (:file "chargeFeedback" :depends-on ("_package_chargeFeedback"))
    (:file "_package_chargeFeedback" :depends-on ("_package"))
    (:file "chargeGoal" :depends-on ("_package_chargeGoal"))
    (:file "_package_chargeGoal" :depends-on ("_package"))
    (:file "chargeResult" :depends-on ("_package_chargeResult"))
    (:file "_package_chargeResult" :depends-on ("_package"))
  ))