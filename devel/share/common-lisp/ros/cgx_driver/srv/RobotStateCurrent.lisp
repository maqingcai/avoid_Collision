; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotStateCurrent-request.msg.html

(cl:defclass <RobotStateCurrent-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotStateCurrent-request (<RobotStateCurrent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateCurrent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateCurrent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStateCurrent-request> is deprecated: use cgx_driver-srv:RobotStateCurrent-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateCurrent-request>) ostream)
  "Serializes a message object of type '<RobotStateCurrent-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateCurrent-request>) istream)
  "Deserializes a message object of type '<RobotStateCurrent-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateCurrent-request>)))
  "Returns string type for a service object of type '<RobotStateCurrent-request>"
  "cgx_driver/RobotStateCurrentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateCurrent-request)))
  "Returns string type for a service object of type 'RobotStateCurrent-request"
  "cgx_driver/RobotStateCurrentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateCurrent-request>)))
  "Returns md5sum for a message object of type '<RobotStateCurrent-request>"
  "72a586880c39d961d06c55803979df7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateCurrent-request)))
  "Returns md5sum for a message object of type 'RobotStateCurrent-request"
  "72a586880c39d961d06c55803979df7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateCurrent-request>)))
  "Returns full string definition for message of type '<RobotStateCurrent-request>"
  (cl:format cl:nil "# RobotStateCurrent.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateCurrent-request)))
  "Returns full string definition for message of type 'RobotStateCurrent-request"
  (cl:format cl:nil "# RobotStateCurrent.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateCurrent-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateCurrent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateCurrent-request
))
;//! \htmlinclude RobotStateCurrent-response.msg.html

(cl:defclass <RobotStateCurrent-response> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
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

(cl:defclass RobotStateCurrent-response (<RobotStateCurrent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStateCurrent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStateCurrent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStateCurrent-response> is deprecated: use cgx_driver-srv:RobotStateCurrent-response instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <RobotStateCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:current-val is deprecated.  Use cgx_driver-srv:current instead.")
  (current m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotStateCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotStateCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStateCurrent-response>) ostream)
  "Serializes a message object of type '<RobotStateCurrent-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'current))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStateCurrent-response>) istream)
  "Deserializes a message object of type '<RobotStateCurrent-response>"
  (cl:setf (cl:slot-value msg 'current) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'current)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStateCurrent-response>)))
  "Returns string type for a service object of type '<RobotStateCurrent-response>"
  "cgx_driver/RobotStateCurrentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateCurrent-response)))
  "Returns string type for a service object of type 'RobotStateCurrent-response"
  "cgx_driver/RobotStateCurrentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStateCurrent-response>)))
  "Returns md5sum for a message object of type '<RobotStateCurrent-response>"
  "72a586880c39d961d06c55803979df7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStateCurrent-response)))
  "Returns md5sum for a message object of type 'RobotStateCurrent-response"
  "72a586880c39d961d06c55803979df7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStateCurrent-response>)))
  "Returns full string definition for message of type '<RobotStateCurrent-response>"
  (cl:format cl:nil "float64[6] current  ~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStateCurrent-response)))
  "Returns full string definition for message of type 'RobotStateCurrent-response"
  (cl:format cl:nil "float64[6] current  ~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStateCurrent-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'current) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStateCurrent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStateCurrent-response
    (cl:cons ':current (current msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotStateCurrent)))
  'RobotStateCurrent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotStateCurrent)))
  'RobotStateCurrent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStateCurrent)))
  "Returns string type for a service object of type '<RobotStateCurrent>"
  "cgx_driver/RobotStateCurrent")