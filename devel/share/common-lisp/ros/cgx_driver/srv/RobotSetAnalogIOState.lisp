; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotSetAnalogIOState-request.msg.html

(cl:defclass <RobotSetAnalogIOState-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotSetAnalogIOState-request (<RobotSetAnalogIOState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotSetAnalogIOState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotSetAnalogIOState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotSetAnalogIOState-request> is deprecated: use cgx_driver-srv:RobotSetAnalogIOState-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <RobotSetAnalogIOState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:index-val is deprecated.  Use cgx_driver-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RobotSetAnalogIOState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:value-val is deprecated.  Use cgx_driver-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotSetAnalogIOState-request>) ostream)
  "Serializes a message object of type '<RobotSetAnalogIOState-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotSetAnalogIOState-request>) istream)
  "Deserializes a message object of type '<RobotSetAnalogIOState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotSetAnalogIOState-request>)))
  "Returns string type for a service object of type '<RobotSetAnalogIOState-request>"
  "cgx_driver/RobotSetAnalogIOStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotSetAnalogIOState-request)))
  "Returns string type for a service object of type 'RobotSetAnalogIOState-request"
  "cgx_driver/RobotSetAnalogIOStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotSetAnalogIOState-request>)))
  "Returns md5sum for a message object of type '<RobotSetAnalogIOState-request>"
  "5228b462be2cb5ab024a8f7c3e4bc55e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotSetAnalogIOState-request)))
  "Returns md5sum for a message object of type 'RobotSetAnalogIOState-request"
  "5228b462be2cb5ab024a8f7c3e4bc55e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotSetAnalogIOState-request>)))
  "Returns full string definition for message of type '<RobotSetAnalogIOState-request>"
  (cl:format cl:nil "# RobotSetAnalogIOState.srv~%int32 index~%float64 value ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotSetAnalogIOState-request)))
  "Returns full string definition for message of type 'RobotSetAnalogIOState-request"
  (cl:format cl:nil "# RobotSetAnalogIOState.srv~%int32 index~%float64 value ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotSetAnalogIOState-request>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotSetAnalogIOState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotSetAnalogIOState-request
    (cl:cons ':index (index msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude RobotSetAnalogIOState-response.msg.html

(cl:defclass <RobotSetAnalogIOState-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RobotSetAnalogIOState-response (<RobotSetAnalogIOState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotSetAnalogIOState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotSetAnalogIOState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotSetAnalogIOState-response> is deprecated: use cgx_driver-srv:RobotSetAnalogIOState-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotSetAnalogIOState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotSetAnalogIOState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotSetAnalogIOState-response>) ostream)
  "Serializes a message object of type '<RobotSetAnalogIOState-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotSetAnalogIOState-response>) istream)
  "Deserializes a message object of type '<RobotSetAnalogIOState-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotSetAnalogIOState-response>)))
  "Returns string type for a service object of type '<RobotSetAnalogIOState-response>"
  "cgx_driver/RobotSetAnalogIOStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotSetAnalogIOState-response)))
  "Returns string type for a service object of type 'RobotSetAnalogIOState-response"
  "cgx_driver/RobotSetAnalogIOStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotSetAnalogIOState-response>)))
  "Returns md5sum for a message object of type '<RobotSetAnalogIOState-response>"
  "5228b462be2cb5ab024a8f7c3e4bc55e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotSetAnalogIOState-response)))
  "Returns md5sum for a message object of type 'RobotSetAnalogIOState-response"
  "5228b462be2cb5ab024a8f7c3e4bc55e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotSetAnalogIOState-response>)))
  "Returns full string definition for message of type '<RobotSetAnalogIOState-response>"
  (cl:format cl:nil "int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotSetAnalogIOState-response)))
  "Returns full string definition for message of type 'RobotSetAnalogIOState-response"
  (cl:format cl:nil "int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotSetAnalogIOState-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotSetAnalogIOState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotSetAnalogIOState-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotSetAnalogIOState)))
  'RobotSetAnalogIOState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotSetAnalogIOState)))
  'RobotSetAnalogIOState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotSetAnalogIOState)))
  "Returns string type for a service object of type '<RobotSetAnalogIOState>"
  "cgx_driver/RobotSetAnalogIOState")