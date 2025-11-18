; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotGetAllDAInput-request.msg.html

(cl:defclass <RobotGetAllDAInput-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotGetAllDAInput-request (<RobotGetAllDAInput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGetAllDAInput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGetAllDAInput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotGetAllDAInput-request> is deprecated: use cgx_driver-srv:RobotGetAllDAInput-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGetAllDAInput-request>) ostream)
  "Serializes a message object of type '<RobotGetAllDAInput-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGetAllDAInput-request>) istream)
  "Deserializes a message object of type '<RobotGetAllDAInput-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGetAllDAInput-request>)))
  "Returns string type for a service object of type '<RobotGetAllDAInput-request>"
  "cgx_driver/RobotGetAllDAInputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetAllDAInput-request)))
  "Returns string type for a service object of type 'RobotGetAllDAInput-request"
  "cgx_driver/RobotGetAllDAInputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGetAllDAInput-request>)))
  "Returns md5sum for a message object of type '<RobotGetAllDAInput-request>"
  "cba808cbeaab4420830cd2c51b834403")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGetAllDAInput-request)))
  "Returns md5sum for a message object of type 'RobotGetAllDAInput-request"
  "cba808cbeaab4420830cd2c51b834403")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGetAllDAInput-request>)))
  "Returns full string definition for message of type '<RobotGetAllDAInput-request>"
  (cl:format cl:nil "# RobotGetAllDAInput.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGetAllDAInput-request)))
  "Returns full string definition for message of type 'RobotGetAllDAInput-request"
  (cl:format cl:nil "# RobotGetAllDAInput.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGetAllDAInput-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGetAllDAInput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGetAllDAInput-request
))
;//! \htmlinclude RobotGetAllDAInput-response.msg.html

(cl:defclass <RobotGetAllDAInput-response> (roslisp-msg-protocol:ros-message)
  ((controllerDI
    :reader controllerDI
    :initarg :controllerDI
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 8 :element-type 'cl:boolean :initial-element cl:nil))
   (controllerCI
    :reader controllerCI
    :initarg :controllerCI
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 8 :element-type 'cl:boolean :initial-element cl:nil))
   (controllerAI
    :reader controllerAI
    :initarg :controllerAI
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (toolDI
    :reader toolDI
    :initarg :toolDI
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 2 :element-type 'cl:boolean :initial-element cl:nil))
   (toolAI
    :reader toolAI
    :initarg :toolAI
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (ret
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

(cl:defclass RobotGetAllDAInput-response (<RobotGetAllDAInput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGetAllDAInput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGetAllDAInput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotGetAllDAInput-response> is deprecated: use cgx_driver-srv:RobotGetAllDAInput-response instead.")))

(cl:ensure-generic-function 'controllerDI-val :lambda-list '(m))
(cl:defmethod controllerDI-val ((m <RobotGetAllDAInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:controllerDI-val is deprecated.  Use cgx_driver-srv:controllerDI instead.")
  (controllerDI m))

(cl:ensure-generic-function 'controllerCI-val :lambda-list '(m))
(cl:defmethod controllerCI-val ((m <RobotGetAllDAInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:controllerCI-val is deprecated.  Use cgx_driver-srv:controllerCI instead.")
  (controllerCI m))

(cl:ensure-generic-function 'controllerAI-val :lambda-list '(m))
(cl:defmethod controllerAI-val ((m <RobotGetAllDAInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:controllerAI-val is deprecated.  Use cgx_driver-srv:controllerAI instead.")
  (controllerAI m))

(cl:ensure-generic-function 'toolDI-val :lambda-list '(m))
(cl:defmethod toolDI-val ((m <RobotGetAllDAInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:toolDI-val is deprecated.  Use cgx_driver-srv:toolDI instead.")
  (toolDI m))

(cl:ensure-generic-function 'toolAI-val :lambda-list '(m))
(cl:defmethod toolAI-val ((m <RobotGetAllDAInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:toolAI-val is deprecated.  Use cgx_driver-srv:toolAI instead.")
  (toolAI m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotGetAllDAInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotGetAllDAInput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGetAllDAInput-response>) ostream)
  "Serializes a message object of type '<RobotGetAllDAInput-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'controllerDI))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'controllerCI))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'controllerAI))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'toolDI))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'toolAI))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGetAllDAInput-response>) istream)
  "Deserializes a message object of type '<RobotGetAllDAInput-response>"
  (cl:setf (cl:slot-value msg 'controllerDI) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'controllerDI)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'controllerCI) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'controllerCI)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'controllerAI) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'controllerAI)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'toolDI) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'toolDI)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'toolAI) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'toolAI)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGetAllDAInput-response>)))
  "Returns string type for a service object of type '<RobotGetAllDAInput-response>"
  "cgx_driver/RobotGetAllDAInputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetAllDAInput-response)))
  "Returns string type for a service object of type 'RobotGetAllDAInput-response"
  "cgx_driver/RobotGetAllDAInputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGetAllDAInput-response>)))
  "Returns md5sum for a message object of type '<RobotGetAllDAInput-response>"
  "cba808cbeaab4420830cd2c51b834403")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGetAllDAInput-response)))
  "Returns md5sum for a message object of type 'RobotGetAllDAInput-response"
  "cba808cbeaab4420830cd2c51b834403")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGetAllDAInput-response>)))
  "Returns full string definition for message of type '<RobotGetAllDAInput-response>"
  (cl:format cl:nil "bool[8] controllerDI~%bool[8] controllerCI~%float32[3] controllerAI~%bool[2] toolDI~%float32[2] toolAI~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGetAllDAInput-response)))
  "Returns full string definition for message of type 'RobotGetAllDAInput-response"
  (cl:format cl:nil "bool[8] controllerDI~%bool[8] controllerCI~%float32[3] controllerAI~%bool[2] toolDI~%float32[2] toolAI~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGetAllDAInput-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'controllerDI) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'controllerCI) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'controllerAI) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'toolDI) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'toolAI) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGetAllDAInput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGetAllDAInput-response
    (cl:cons ':controllerDI (controllerDI msg))
    (cl:cons ':controllerCI (controllerCI msg))
    (cl:cons ':controllerAI (controllerAI msg))
    (cl:cons ':toolDI (toolDI msg))
    (cl:cons ':toolAI (toolAI msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotGetAllDAInput)))
  'RobotGetAllDAInput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotGetAllDAInput)))
  'RobotGetAllDAInput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetAllDAInput)))
  "Returns string type for a service object of type '<RobotGetAllDAInput>"
  "cgx_driver/RobotGetAllDAInput")