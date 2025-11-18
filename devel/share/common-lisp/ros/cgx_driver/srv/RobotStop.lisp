; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotStop-request.msg.html

(cl:defclass <RobotStop-request> (roslisp-msg-protocol:ros-message)
  ((moveType
    :reader moveType
    :initarg :moveType
    :type cl:string
    :initform ""))
)

(cl:defclass RobotStop-request (<RobotStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStop-request> is deprecated: use cgx_driver-srv:RobotStop-request instead.")))

(cl:ensure-generic-function 'moveType-val :lambda-list '(m))
(cl:defmethod moveType-val ((m <RobotStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:moveType-val is deprecated.  Use cgx_driver-srv:moveType instead.")
  (moveType m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStop-request>) ostream)
  "Serializes a message object of type '<RobotStop-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'moveType))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'moveType))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStop-request>) istream)
  "Deserializes a message object of type '<RobotStop-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moveType) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'moveType) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStop-request>)))
  "Returns string type for a service object of type '<RobotStop-request>"
  "cgx_driver/RobotStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStop-request)))
  "Returns string type for a service object of type 'RobotStop-request"
  "cgx_driver/RobotStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStop-request>)))
  "Returns md5sum for a message object of type '<RobotStop-request>"
  "41f8ff55f84d1a1a88561afaab58a98f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStop-request)))
  "Returns md5sum for a message object of type 'RobotStop-request"
  "41f8ff55f84d1a1a88561afaab58a98f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStop-request>)))
  "Returns full string definition for message of type '<RobotStop-request>"
  (cl:format cl:nil "# RobotStop.srv~%string moveType ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStop-request)))
  "Returns full string definition for message of type 'RobotStop-request"
  (cl:format cl:nil "# RobotStop.srv~%string moveType ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStop-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'moveType))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStop-request
    (cl:cons ':moveType (moveType msg))
))
;//! \htmlinclude RobotStop-response.msg.html

(cl:defclass <RobotStop-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RobotStop-response (<RobotStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStop-response> is deprecated: use cgx_driver-srv:RobotStop-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStop-response>) ostream)
  "Serializes a message object of type '<RobotStop-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStop-response>) istream)
  "Deserializes a message object of type '<RobotStop-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStop-response>)))
  "Returns string type for a service object of type '<RobotStop-response>"
  "cgx_driver/RobotStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStop-response)))
  "Returns string type for a service object of type 'RobotStop-response"
  "cgx_driver/RobotStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStop-response>)))
  "Returns md5sum for a message object of type '<RobotStop-response>"
  "41f8ff55f84d1a1a88561afaab58a98f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStop-response)))
  "Returns md5sum for a message object of type 'RobotStop-response"
  "41f8ff55f84d1a1a88561afaab58a98f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStop-response>)))
  "Returns full string definition for message of type '<RobotStop-response>"
  (cl:format cl:nil "int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStop-response)))
  "Returns full string definition for message of type 'RobotStop-response"
  (cl:format cl:nil "int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStop-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStop-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotStop)))
  'RobotStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotStop)))
  'RobotStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStop)))
  "Returns string type for a service object of type '<RobotStop>"
  "cgx_driver/RobotStop")