;; Auto-generated. Do not edit!


(when (boundp 'lab3::ChargeGoal)
  (if (not (find-package "LAB3"))
    (make-package "LAB3"))
  (shadow 'ChargeGoal (find-package "LAB3")))
(unless (find-package "LAB3::CHARGEGOAL")
  (make-package "LAB3::CHARGEGOAL"))

(in-package "ROS")
;;//! \htmlinclude ChargeGoal.msg.html


(defclass lab3::ChargeGoal
  :super ros::object
  :slots (_goal ))

(defmethod lab3::ChargeGoal
  (:init
   (&key
    ((:goal __goal) 0)
    )
   (send-super :init)
   (setq _goal (round __goal))
   self)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:serialization-length
   ()
   (+
    ;; int32 _goal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _goal
       (write-long _goal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lab3::ChargeGoal :md5sum-) "18df0149936b7aa95588e3862476ebde")
(setf (get lab3::ChargeGoal :datatype-) "lab3/ChargeGoal")
(setf (get lab3::ChargeGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the charge goal
int32 goal

")



(provide :lab3/ChargeGoal "18df0149936b7aa95588e3862476ebde")


