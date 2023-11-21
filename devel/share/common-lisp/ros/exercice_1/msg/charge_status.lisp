; Auto-generated. Do not edit!


(cl:in-package exercice_1-msg)


;//! \htmlinclude charge_status.msg.html

(cl:defclass <charge_status> (roslisp-msg-protocol:ros-message)
  ((room_id
    :reader room_id
    :initarg :room_id
    :type cl:integer
    :initform 0)
   (room_name
    :reader room_name
    :initarg :room_name
    :type cl:string
    :initform "")
   (charge_status
    :reader charge_status
    :initarg :charge_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass charge_status (<charge_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <charge_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'charge_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercice_1-msg:<charge_status> is deprecated: use exercice_1-msg:charge_status instead.")))

(cl:ensure-generic-function 'room_id-val :lambda-list '(m))
(cl:defmethod room_id-val ((m <charge_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercice_1-msg:room_id-val is deprecated.  Use exercice_1-msg:room_id instead.")
  (room_id m))

(cl:ensure-generic-function 'room_name-val :lambda-list '(m))
(cl:defmethod room_name-val ((m <charge_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercice_1-msg:room_name-val is deprecated.  Use exercice_1-msg:room_name instead.")
  (room_name m))

(cl:ensure-generic-function 'charge_status-val :lambda-list '(m))
(cl:defmethod charge_status-val ((m <charge_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercice_1-msg:charge_status-val is deprecated.  Use exercice_1-msg:charge_status instead.")
  (charge_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <charge_status>) ostream)
  "Serializes a message object of type '<charge_status>"
  (cl:let* ((signed (cl:slot-value msg 'room_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'room_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'room_name))
  (cl:let* ((signed (cl:slot-value msg 'charge_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <charge_status>) istream)
  "Deserializes a message object of type '<charge_status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'room_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<charge_status>)))
  "Returns string type for a message object of type '<charge_status>"
  "exercice_1/charge_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'charge_status)))
  "Returns string type for a message object of type 'charge_status"
  "exercice_1/charge_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<charge_status>)))
  "Returns md5sum for a message object of type '<charge_status>"
  "cca0b435daf1ea6933fbfbc759f1f9f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'charge_status)))
  "Returns md5sum for a message object of type 'charge_status"
  "cca0b435daf1ea6933fbfbc759f1f9f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<charge_status>)))
  "Returns full string definition for message of type '<charge_status>"
  (cl:format cl:nil "int32 room_id~%string room_name~%int16 charge_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'charge_status)))
  "Returns full string definition for message of type 'charge_status"
  (cl:format cl:nil "int32 room_id~%string room_name~%int16 charge_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <charge_status>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'room_name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <charge_status>))
  "Converts a ROS message object to a list"
  (cl:list 'charge_status
    (cl:cons ':room_id (room_id msg))
    (cl:cons ':room_name (room_name msg))
    (cl:cons ':charge_status (charge_status msg))
))
