;; Auto-generated. Do not edit!


(when (boundp 'exercice_2::charge_status_req)
  (if (not (find-package "EXERCICE_2"))
    (make-package "EXERCICE_2"))
  (shadow 'charge_status_req (find-package "EXERCICE_2")))
(unless (find-package "EXERCICE_2::CHARGE_STATUS_REQ")
  (make-package "EXERCICE_2::CHARGE_STATUS_REQ"))

(in-package "ROS")
;;//! \htmlinclude charge_status_req.msg.html


(defclass exercice_2::charge_status_req
  :super ros::object
  :slots (_id ))

(defmethod exercice_2::charge_status_req
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exercice_2::charge_status_req :md5sum-) "c5e4a7d59c68f74eabcec876a00216aa")
(setf (get exercice_2::charge_status_req :datatype-) "exercice_2/charge_status_req")
(setf (get exercice_2::charge_status_req :definition-)
      "int32 id
")



(provide :exercice_2/charge_status_req "c5e4a7d59c68f74eabcec876a00216aa")


