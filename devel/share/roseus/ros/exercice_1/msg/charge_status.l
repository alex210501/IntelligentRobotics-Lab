;; Auto-generated. Do not edit!


(when (boundp 'exercice_1::charge_status)
  (if (not (find-package "EXERCICE_1"))
    (make-package "EXERCICE_1"))
  (shadow 'charge_status (find-package "EXERCICE_1")))
(unless (find-package "EXERCICE_1::CHARGE_STATUS")
  (make-package "EXERCICE_1::CHARGE_STATUS"))

(in-package "ROS")
;;//! \htmlinclude charge_status.msg.html


(defclass exercice_1::charge_status
  :super ros::object
  :slots (_room_id _room_name _charge_status ))

(defmethod exercice_1::charge_status
  (:init
   (&key
    ((:room_id __room_id) 0)
    ((:room_name __room_name) "")
    ((:charge_status __charge_status) 0)
    )
   (send-super :init)
   (setq _room_id (round __room_id))
   (setq _room_name (string __room_name))
   (setq _charge_status (round __charge_status))
   self)
  (:room_id
   (&optional __room_id)
   (if __room_id (setq _room_id __room_id)) _room_id)
  (:room_name
   (&optional __room_name)
   (if __room_name (setq _room_name __room_name)) _room_name)
  (:charge_status
   (&optional __charge_status)
   (if __charge_status (setq _charge_status __charge_status)) _charge_status)
  (:serialization-length
   ()
   (+
    ;; int32 _room_id
    4
    ;; string _room_name
    4 (length _room_name)
    ;; int16 _charge_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _room_id
       (write-long _room_id s)
     ;; string _room_name
       (write-long (length _room_name) s) (princ _room_name s)
     ;; int16 _charge_status
       (write-word _charge_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _room_id
     (setq _room_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _room_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _room_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _charge_status
     (setq _charge_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get exercice_1::charge_status :md5sum-) "cca0b435daf1ea6933fbfbc759f1f9f9")
(setf (get exercice_1::charge_status :datatype-) "exercice_1/charge_status")
(setf (get exercice_1::charge_status :definition-)
      "int32 room_id
string room_name
int16 charge_status
")



(provide :exercice_1/charge_status "cca0b435daf1ea6933fbfbc759f1f9f9")


