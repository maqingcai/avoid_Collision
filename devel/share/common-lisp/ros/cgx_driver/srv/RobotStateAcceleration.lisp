; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotStateAcceleration-request.msg.html

(cl:defclass <RobotStateAcceleration-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotStateAcceleration-request (<RobotStateAcceleration-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateAcceleration-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateAcceleration-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStateAcceleration-request> is deprecated: use cgx_driver-srv:RobotStateAcceleration-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateAcceleration-request>) ostream)
  "Serializes a message object of type '<RobotStateAcceleration-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateAcceleration-request>) istream)
  "Deserializes a message object of type '<RobotStateAcceleration-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateAcceleration-request>)))
  "Returns string type for a service object of type '<RobotStateAcceleration-request>"
  "cgx_driver/RobotStateAccelerationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateAcceleration-request)))
  "Returns string type for a service object of type 'RobotStateAcceleration-request"
  "cgx_driver/RobotStateAccelerationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateAcceleration-request>)))
  "Returns md5sum for a message object of type '<RobotStateAcceleration-request>"
  "d990f27bdf8ca210513247342e9b6737")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateAcceleration-request)))
  "Returns md5sum for a message object of type 'RobotStateAcceleration-request"
  "d990f27bdf8ca210513247342e9b6737")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateAcceleration-request>)))
  "Returns full string definition for message of type '<RobotStateAcceleration-request>"
  (cl:format cl:nil "# RobotStateAcceleration.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateAcceleration-request)))
  "Returns full string definition for message of type 'RobotStateAcceleration-request"
  (cl:format cl:nil "# RobotStateAcceleration.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateAcceleration-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateAcceleration-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateAcceleration-request
))
;//! \htmlinclude RobotStateAcceleration-response.msg.html

(cl:defclass <RobotStateAcceleration-response> (roslisp-msg-protocol:ros-message)
  ((acceleration
    :reader acceleration
    :initarg :acceleration
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
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

(cl:defclass RobotStateAcceleration-response (<RobotStateAcceleration-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateAcceleration-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateAcceleration-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStateAcceleration-response> is deprecated: use cgx_driver-srv:RobotStateAcceleration-response instead.")))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <RobotStateAcceleration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:acceleration-val is deprecated.  Use cgx_driver-srv:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotStateAcceleration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotStateAcceleration-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateAcceleration-response>) ostream)
  "Serializes a message object of type '<RobotStateAcceleration-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'acceleration))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateAcceleration-response>) istream)
  "Deserializes a message object of type '<RobotStateAcceleration-response>"
  (cl:setf (cl:slot-value msg 'acceleration) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'acceleration)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateAcceleration-response>)))
  "Returns string type for a service object of type '<RobotStateAcceleration-response>"
  "cgx_driver/RobotStateAccelerationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateAcceleration-response)))
  "Returns string type for a service object of type 'RobotStateAcceleration-response"
  "cgx_driver/RobotStateAccelerationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateAcceleration-response>)))
  "Returns md5sum for a message object of type '<RobotStateAcceleration-response>"
  "d990f27bdf8ca210513247342e9b6737")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateAcceleration-response)))
  "Returns md5sum for a message object of type 'RobotStateAcceleration-response"
  "d990f27bdf8ca210513247342e9b6737")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateAcceleration-response>)))
  "Returns full string definition for message of type '<RobotStateAcceleration-response>"
  (cl:format cl:nil "float64[6] acceleration ~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateAcceleration-response)))
  "Returns full string definition for message of type 'RobotStateAcceleration-response"
  (cl:format cl:nil "float64[6] acceleration ~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateAcceleration-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateAcceleration-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateAcceleration-response
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotStateAcceleration)))
  'RobotStateAcceleration-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotStateAcceleration)))
  'RobotStateAcceleration-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateAcceleration)))
  "Returns string type for a service object of type '<RobotStateAcceleration>"
  "cgx_driver/RobotStateAcceleration")