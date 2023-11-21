;; Auto-generated. Do not edit!


(when (boundp 'exercice_2::charge_status)
  (if (not (find-package "EXERCICE_2"))
    (make-package "EXERCICE_2"))
  (shadow 'charge_status (find-package "EXERCICE_2")))
(unless (find-package "EXERCICE_2::CHARGE_STATUS")
  (make-package "EXERCICE_2::CHARGE_STATUS"))
(unless (find-package "EXERCICE_2::CHARGE_STATUSREQUEST")
  (make-package "EXERCICE_2::CHARGE_STATUSREQUEST"))
(unless (find-package "EXERCICE_2::CHARGE_STATUSRESPONSE")
  (make-package "EXERCICE_2::CHARGE_STATUSRESPONSE"))

(in-package "ROS")





(defclass exercice_2::charge_statusRequest
  :super ros::object
  :slots (_src_room_id ))

(defmethod exercice_2::charge_statusRequest
  (:init
   (&key
    ((:src_room_id __src_room_id) 0)
    )
   (send-super :init)
   (setq _src_room_id (round __src_room_id))
   self)
  (:src_room_id
   (&optional __src_room_id)
   (if __src_room_id (setq _src_room_id __src_room_id)) _src_room_id)
  (:serialization-length
   ()
   (+
    ;; int32 _src_room_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _src_room_id
       (write-long _src_room_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _src_room_id
     (setq _src_room_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass exercice_2::charge_statusResponse
  :super ros::object
  :slots (_room_id _room_name _charge_status ))

(defmethod exercice_2::charge_statusResponse
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

(defclass exercice_2::charge_status
  :super ros::object
  :slots ())

(setf (get exercice_2::charge_status :md5sum-) "8f694df7d2a81d673bc7d54188b3b43b")
(setf (get exercice_2::charge_status :datatype-) "exercice_2/charge_status")
(setf (get exercice_2::charge_status :request) exercice_2::charge_statusRequest)
(setf (get exercice_2::charge_status :response) exercice_2::charge_statusResponse)

(defmethod exercice_2::charge_statusRequest
  (:response () (instance exercice_2::charge_statusResponse :init)))

(setf (get exercice_2::charge_statusRequest :md5sum-) "8f694df7d2a81d673bc7d54188b3b43b")
(setf (get exercice_2::charge_statusRequest :datatype-) "exercice_2/charge_statusRequest")
(setf (get exercice_2::charge_statusRequest :definition-)
      "int32 src_room_id
---
int32 room_id
string room_name
int16 charge_status
")

(setf (get exercice_2::charge_statusResponse :md5sum-) "8f694df7d2a81d673bc7d54188b3b43b")
(setf (get exercice_2::charge_statusResponse :datatype-) "exercice_2/charge_statusResponse")
(setf (get exercice_2::charge_statusResponse :definition-)
      "int32 src_room_id
---
int32 room_id
string room_name
int16 charge_status
")



(provide :exercice_2/charge_status "8f694df7d2a81d673bc7d54188b3b43b")


