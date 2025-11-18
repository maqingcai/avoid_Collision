; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotStatePose-request.msg.html

(cl:defclass <RobotStatePose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotStatePose-request (<RobotStatePose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatePose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatePose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStatePose-request> is deprecated: use cgx_driver-srv:RobotStatePose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatePose-request>) ostream)
  "Serializes a message object of type '<RobotStatePose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatePose-request>) istream)
  "Deserializes a message object of type '<RobotStatePose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatePose-request>)))
  "Returns string type for a service object of type '<RobotStatePose-request>"
  "cgx_driver/RobotStatePoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatePose-request)))
  "Returns string type for a service object of type 'RobotStatePose-request"
  "cgx_driver/RobotStatePoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatePose-request>)))
  "Returns md5sum for a message object of type '<RobotStatePose-request>"
  "d934b828b167df2066e86054919aa285")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatePose-request)))
  "Returns md5sum for a message object of type 'RobotStatePose-request"
  "d934b828b167df2066e86054919aa285")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatePose-request>)))
  "Returns full string definition for message of type '<RobotStatePose-request>"
  (cl:format cl:nil "# RobotStatePose.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatePose-request)))
  "Returns full string definition for message of type 'RobotStatePose-request"
  (cl:format cl:nil "# RobotStatePose.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatePose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatePose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatePose-request
))
;//! \htmlinclude RobotStatePose-response.msg.html

(cl:defclass <RobotStatePose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
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

(cl:defclass RobotStatePose-response (<RobotStatePose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatePose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatePose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotStatePose-response> is deprecated: use cgx_driver-srv:RobotStatePose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RobotStatePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:pose-val is deprecated.  Use cgx_driver-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotStatePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotStatePose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatePose-response>) ostream)
  "Serializes a message object of type '<RobotStatePose-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'pose))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatePose-response>) istream)
  "Deserializes a message object of type '<RobotStatePose-response>"
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'pose)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatePose-response>)))
  "Returns string type for a service object of type '<RobotStatePose-response>"
  "cgx_driver/RobotStatePoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatePose-response)))
  "Returns string type for a service object of type 'RobotStatePose-response"
  "cgx_driver/RobotStatePoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatePose-response>)))
  "Returns md5sum for a message object of type '<RobotStatePose-response>"
  "d934b828b167df2066e86054919aa285")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatePose-response)))
  "Returns md5sum for a message object of type 'RobotStatePose-response"
  "d934b828b167df2066e86054919aa285")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatePose-response>)))
  "Returns full string definition for message of type '<RobotStatePose-response>"
  (cl:format cl:nil "float64[6] pose  # 返回的6维位姿数组~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatePose-response)))
  "Returns full string definition for message of type 'RobotStatePose-response"
  (cl:format cl:nil "float64[6] pose  # 返回的6维位姿数组~%int32 ret        # 返回状态码~%string message   # 返回信息~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatePose-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatePose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatePose-response
    (cl:cons ':pose (pose msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotStatePose)))
  'RobotStatePose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotStatePose)))
  'RobotStatePose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatePose)))
  "Returns string type for a service object of type '<RobotStatePose>"
  "cgx_driver/RobotStatePose")