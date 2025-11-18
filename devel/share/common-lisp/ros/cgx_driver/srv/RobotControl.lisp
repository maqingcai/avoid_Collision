; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotControl-request.msg.html

(cl:defclass <RobotControl-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotControl-request (<RobotControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotControl-request> is deprecated: use cgx_driver-srv:RobotControl-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotControl-request>) ostream)
  "Serializes a message object of type '<RobotControl-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotControl-request>) istream)
  "Deserializes a message object of type '<RobotControl-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotControl-request>)))
  "Returns string type for a service object of type '<RobotControl-request>"
  "cgx_driver/RobotControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControl-request)))
  "Returns string type for a service object of type 'RobotControl-request"
  "cgx_driver/RobotControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotControl-request>)))
  "Returns md5sum for a message object of type '<RobotControl-request>"
  "afdb845140e2f05f77c770110f12be2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotControl-request)))
  "Returns md5sum for a message object of type 'RobotControl-request"
  "afdb845140e2f05f77c770110f12be2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotControl-request>)))
  "Returns full string definition for message of type '<RobotControl-request>"
  (cl:format cl:nil "# RobotControl.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotControl-request)))
  "Returns full string definition for message of type 'RobotControl-request"
  (cl:format cl:nil "# RobotControl.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotControl-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotControl-request
))
;//! \htmlinclude RobotControl-response.msg.html

(cl:defclass <RobotControl-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RobotControl-response (<RobotControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotControl-response> is deprecated: use cgx_driver-srv:RobotControl-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotControl-response>) ostream)
  "Serializes a message object of type '<RobotControl-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotControl-response>) istream)
  "Deserializes a message object of type '<RobotControl-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotControl-response>)))
  "Returns string type for a service object of type '<RobotControl-response>"
  "cgx_driver/RobotControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControl-response)))
  "Returns string type for a service object of type 'RobotControl-response"
  "cgx_driver/RobotControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotControl-response>)))
  "Returns md5sum for a message object of type '<RobotControl-response>"
  "afdb845140e2f05f77c770110f12be2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotControl-response)))
  "Returns md5sum for a message object of type 'RobotControl-response"
  "afdb845140e2f05f77c770110f12be2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotControl-response>)))
  "Returns full string definition for message of type '<RobotControl-response>"
  (cl:format cl:nil "int32 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotControl-response)))
  "Returns full string definition for message of type 'RobotControl-response"
  (cl:format cl:nil "int32 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotControl-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotControl-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotControl)))
  'RobotControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotControl)))
  'RobotControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotControl)))
  "Returns string type for a service object of type '<RobotControl>"
  "cgx_driver/RobotControl")