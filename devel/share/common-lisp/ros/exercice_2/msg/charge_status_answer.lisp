; Auto-generated. Do not edit!


(cl:in-package exercice_2-msg)


;//! \htmlinclude charge_status_answer.msg.html

(cl:defclass <charge_status_answer> (roslisp-msg-protocol:ros-message)
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
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass charge_status_answer (<charge_status_answer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <charge_status_answer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'charge_status_answer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exercice_2-msg:<charge_status_answer> is deprecated: use exercice_2-msg:charge_status_answer instead.")))

(cl:ensure-generic-function 'room_id-val :lambda-list '(m))
(cl:defmethod room_id-val ((m <charge_status_answer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercice_2-msg:room_id-val is deprecated.  Use exercice_2-msg:room_id instead.")
  (room_id m))

(cl:ensure-generic-function 'room_name-val :lambda-list '(m))
(cl:defmethod room_name-val ((m <charge_status_answer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercice_2-msg:room_name-val is deprecated.  Use exercice_2-msg:room_name instead.")
  (room_name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <charge_status_answer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exercice_2-msg:status-val is deprecated.  Use exercice_2-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <charge_status_answer>) ostream)
  "Serializes a message object of type '<charge_status_answer>"
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
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <charge_status_answer>) istream)
  "Deserializes a message object of type '<charge_status_answer>"
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
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<charge_status_answer>)))
  "Returns string type for a message object of type '<charge_status_answer>"
  "exercice_2/charge_status_answer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'charge_status_answer)))
  "Returns string type for a message object of type 'charge_status_answer"
  "exercice_2/charge_status_answer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<charge_status_answer>)))
  "Returns md5sum for a message object of type '<charge_status_answer>"
  "7f216c29efbe9e32fff125752f06801c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'charge_status_answer)))
  "Returns md5sum for a message object of type 'charge_status_answer"
  "7f216c29efbe9e32fff125752f06801c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<charge_status_answer>)))
  "Returns full string definition for message of type '<charge_status_answer>"
  (cl:format cl:nil "int32 room_id~%string room_name~%int32 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'charge_status_answer)))
  "Returns full string definition for message of type 'charge_status_answer"
  (cl:format cl:nil "int32 room_id~%string room_name~%int32 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <charge_status_answer>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'room_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <charge_status_answer>))
  "Converts a ROS message object to a list"
  (cl:list 'charge_status_answer
    (cl:cons ':room_id (room_id msg))
    (cl:cons ':room_name (room_name msg))
    (cl:cons ':status (status msg))
))
