; Auto-generated. Do not edit!


(cl:in-package exercice_2-msg)


;//! \htmlinclude charge_status_req.msg.html

(cl:defclass <charge_status_req> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass charge_status_req (<charge_status_req>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <charge_status_req>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'charge_status_req)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercice_2-msg:<charge_status_req> is deprecated: use exercice_2-msg:charge_status_req instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <charge_status_req>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercice_2-msg:id-val is deprecated.  Use exercice_2-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <charge_status_req>) ostream)
  "Serializes a message object of type '<charge_status_req>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <charge_status_req>) istream)
  "Deserializes a message object of type '<charge_status_req>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<charge_status_req>)))
  "Returns string type for a message object of type '<charge_status_req>"
  "exercice_2/charge_status_req")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'charge_status_req)))
  "Returns string type for a message object of type 'charge_status_req"
  "exercice_2/charge_status_req")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<charge_status_req>)))
  "Returns md5sum for a message object of type '<charge_status_req>"
  "c5e4a7d59c68f74eabcec876a00216aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'charge_status_req)))
  "Returns md5sum for a message object of type 'charge_status_req"
  "c5e4a7d59c68f74eabcec876a00216aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<charge_status_req>)))
  "Returns full string definition for message of type '<charge_status_req>"
  (cl:format cl:nil "int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'charge_status_req)))
  "Returns full string definition for message of type 'charge_status_req"
  (cl:format cl:nil "int32 id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <charge_status_req>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <charge_status_req>))
  "Converts a ROS message object to a list"
  (cl:list 'charge_status_req
    (cl:cons ':id (id msg))
))
