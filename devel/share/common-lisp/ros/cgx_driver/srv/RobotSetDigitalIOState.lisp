; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotSetDigitalIOState-request.msg.html

(cl:defclass <RobotSetDigitalIOState-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RobotSetDigitalIOState-request (<RobotSetDigitalIOState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotSetDigitalIOState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotSetDigitalIOState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotSetDigitalIOState-request> is deprecated: use cgx_driver-srv:RobotSetDigitalIOState-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <RobotSetDigitalIOState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:index-val is deprecated.  Use cgx_driver-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RobotSetDigitalIOState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:value-val is deprecated.  Use cgx_driver-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotSetDigitalIOState-request>) ostream)
  "Serializes a message object of type '<RobotSetDigitalIOState-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotSetDigitalIOState-request>) istream)
  "Deserializes a message object of type '<RobotSetDigitalIOState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotSetDigitalIOState-request>)))
  "Returns string type for a service object of type '<RobotSetDigitalIOState-request>"
  "cgx_driver/RobotSetDigitalIOStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotSetDigitalIOState-request)))
  "Returns string type for a service object of type 'RobotSetDigitalIOState-request"
  "cgx_driver/RobotSetDigitalIOStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotSetDigitalIOState-request>)))
  "Returns md5sum for a message object of type '<RobotSetDigitalIOState-request>"
  "275e05a98203a4248140629998ca7ca5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotSetDigitalIOState-request)))
  "Returns md5sum for a message object of type 'RobotSetDigitalIOState-request"
  "275e05a98203a4248140629998ca7ca5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotSetDigitalIOState-request>)))
  "Returns full string definition for message of type '<RobotSetDigitalIOState-request>"
  (cl:format cl:nil "# RobotSetDigitalIOState.srv~%int32 index~%bool value ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotSetDigitalIOState-request)))
  "Returns full string definition for message of type 'RobotSetDigitalIOState-request"
  (cl:format cl:nil "# RobotSetDigitalIOState.srv~%int32 index~%bool value ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotSetDigitalIOState-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotSetDigitalIOState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotSetDigitalIOState-request
    (cl:cons ':index (index msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude RobotSetDigitalIOState-response.msg.html

(cl:defclass <RobotSetDigitalIOState-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RobotSetDigitalIOState-response (<RobotSetDigitalIOState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotSetDigitalIOState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotSetDigitalIOState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotSetDigitalIOState-response> is deprecated: use cgx_driver-srv:RobotSetDigitalIOState-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotSetDigitalIOState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotSetDigitalIOState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotSetDigitalIOState-response>) ostream)
  "Serializes a message object of type '<RobotSetDigitalIOState-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotSetDigitalIOState-response>) istream)
  "Deserializes a message object of type '<RobotSetDigitalIOState-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotSetDigitalIOState-response>)))
  "Returns string type for a service object of type '<RobotSetDigitalIOState-response>"
  "cgx_driver/RobotSetDigitalIOStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotSetDigitalIOState-response)))
  "Returns string type for a service object of type 'RobotSetDigitalIOState-response"
  "cgx_driver/RobotSetDigitalIOStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotSetDigitalIOState-response>)))
  "Returns md5sum for a message object of type '<RobotSetDigitalIOState-response>"
  "275e05a98203a4248140629998ca7ca5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotSetDigitalIOState-response)))
  "Returns md5sum for a message object of type 'RobotSetDigitalIOState-response"
  "275e05a98203a4248140629998ca7ca5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotSetDigitalIOState-response>)))
  "Returns full string definition for message of type '<RobotSetDigitalIOState-response>"
  (cl:format cl:nil "int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotSetDigitalIOState-response)))
  "Returns full string definition for message of type 'RobotSetDigitalIOState-response"
  (cl:format cl:nil "int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotSetDigitalIOState-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotSetDigitalIOState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotSetDigitalIOState-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotSetDigitalIOState)))
  'RobotSetDigitalIOState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotSetDigitalIOState)))
  'RobotSetDigitalIOState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotSetDigitalIOState)))
  "Returns string type for a service object of type '<RobotSetDigitalIOState>"
  "cgx_driver/RobotSetDigitalIOState")