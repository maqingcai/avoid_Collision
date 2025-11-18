; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotGetDigitalIOState-request.msg.html

(cl:defclass <RobotGetDigitalIOState-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass RobotGetDigitalIOState-request (<RobotGetDigitalIOState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGetDigitalIOState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGetDigitalIOState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotGetDigitalIOState-request> is deprecated: use cgx_driver-srv:RobotGetDigitalIOState-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <RobotGetDigitalIOState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:index-val is deprecated.  Use cgx_driver-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGetDigitalIOState-request>) ostream)
  "Serializes a message object of type '<RobotGetDigitalIOState-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGetDigitalIOState-request>) istream)
  "Deserializes a message object of type '<RobotGetDigitalIOState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGetDigitalIOState-request>)))
  "Returns string type for a service object of type '<RobotGetDigitalIOState-request>"
  "cgx_driver/RobotGetDigitalIOStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetDigitalIOState-request)))
  "Returns string type for a service object of type 'RobotGetDigitalIOState-request"
  "cgx_driver/RobotGetDigitalIOStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGetDigitalIOState-request>)))
  "Returns md5sum for a message object of type '<RobotGetDigitalIOState-request>"
  "5e121ca88187de900c90789129201008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGetDigitalIOState-request)))
  "Returns md5sum for a message object of type 'RobotGetDigitalIOState-request"
  "5e121ca88187de900c90789129201008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGetDigitalIOState-request>)))
  "Returns full string definition for message of type '<RobotGetDigitalIOState-request>"
  (cl:format cl:nil "# RobotGetDigitalIOState.srv~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGetDigitalIOState-request)))
  "Returns full string definition for message of type 'RobotGetDigitalIOState-request"
  (cl:format cl:nil "# RobotGetDigitalIOState.srv~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGetDigitalIOState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGetDigitalIOState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGetDigitalIOState-request
    (cl:cons ':index (index msg))
))
;//! \htmlinclude RobotGetDigitalIOState-response.msg.html

(cl:defclass <RobotGetDigitalIOState-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil)
   (ret
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

(cl:defclass RobotGetDigitalIOState-response (<RobotGetDigitalIOState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGetDigitalIOState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGetDigitalIOState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotGetDigitalIOState-response> is deprecated: use cgx_driver-srv:RobotGetDigitalIOState-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RobotGetDigitalIOState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:value-val is deprecated.  Use cgx_driver-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotGetDigitalIOState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotGetDigitalIOState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGetDigitalIOState-response>) ostream)
  "Serializes a message object of type '<RobotGetDigitalIOState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGetDigitalIOState-response>) istream)
  "Deserializes a message object of type '<RobotGetDigitalIOState-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGetDigitalIOState-response>)))
  "Returns string type for a service object of type '<RobotGetDigitalIOState-response>"
  "cgx_driver/RobotGetDigitalIOStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetDigitalIOState-response)))
  "Returns string type for a service object of type 'RobotGetDigitalIOState-response"
  "cgx_driver/RobotGetDigitalIOStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGetDigitalIOState-response>)))
  "Returns md5sum for a message object of type '<RobotGetDigitalIOState-response>"
  "5e121ca88187de900c90789129201008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGetDigitalIOState-response)))
  "Returns md5sum for a message object of type 'RobotGetDigitalIOState-response"
  "5e121ca88187de900c90789129201008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGetDigitalIOState-response>)))
  "Returns full string definition for message of type '<RobotGetDigitalIOState-response>"
  (cl:format cl:nil "bool value ~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGetDigitalIOState-response)))
  "Returns full string definition for message of type 'RobotGetDigitalIOState-response"
  (cl:format cl:nil "bool value ~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGetDigitalIOState-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGetDigitalIOState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGetDigitalIOState-response
    (cl:cons ':value (value msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotGetDigitalIOState)))
  'RobotGetDigitalIOState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotGetDigitalIOState)))
  'RobotGetDigitalIOState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetDigitalIOState)))
  "Returns string type for a service object of type '<RobotGetDigitalIOState>"
  "cgx_driver/RobotGetDigitalIOState")