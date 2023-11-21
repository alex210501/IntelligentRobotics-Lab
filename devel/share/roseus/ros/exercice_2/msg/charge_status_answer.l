;; Auto-generated. Do not edit!


(when (boundp 'exercice_2::charge_status_answer)
  (if (not (find-package "EXERCICE_2"))
    (make-package "EXERCICE_2"))
  (shadow 'charge_status_answer (find-package "EXERCICE_2")))
(unless (find-package "EXERCICE_2::CHARGE_STATUS_ANSWER")
  (make-package "EXERCICE_2::CHARGE_STATUS_ANSWER"))

(in-package "ROS")
;;//! \htmlinclude charge_status_answer.msg.html


(defclass exercice_2::charge_status_answer
  :super ros::object
  :slots (_room_id _room_name _status ))

(defmethod exercice_2::charge_status_answer
  (:init
   (&key
    ((:room_id __room_id) 0)
    ((:room_name __room_name) "")
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _room_id (round __room_id))
   (setq _room_name (string __room_name))
   (setq _status (round __status))
   self)
  (:room_id
   (&optional __room_id)
   (if __room_id (setq _room_id __room_id)) _room_id)
  (:room_name
   (&optional __room_name)
   (if __room_name (setq _room_name __room_name)) _room_name)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int32 _room_id
    4
    ;; string _room_name
    4 (length _room_name)
    ;; int32 _status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _room_id
       (write-long _room_id s)
     ;; string _room_name
       (write-long (length _room_name) s) (princ _room_name s)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _room_id
     (setq _room_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _room_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _room_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exercice_2::charge_status_answer :md5sum-) "7f216c29efbe9e32fff125752f06801c")
(setf (get exercice_2::charge_status_answer :datatype-) "exercice_2/charge_status_answer")
(setf (get exercice_2::charge_status_answer :definition-)
      "int32 room_id
string room_name
int32 status
")



(provide :exercice_2/charge_status_answer "7f216c29efbe9e32fff125752f06801c")


