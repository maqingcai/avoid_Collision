; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude RobotGetAllDAOutput-request.msg.html

(cl:defclass <RobotGetAllDAOutput-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotGetAllDAOutput-request (<RobotGetAllDAOutput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGetAllDAOutput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGetAllDAOutput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotGetAllDAOutput-request> is deprecated: use cgx_driver-srv:RobotGetAllDAOutput-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGetAllDAOutput-request>) ostream)
  "Serializes a message object of type '<RobotGetAllDAOutput-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGetAllDAOutput-request>) istream)
  "Deserializes a message object of type '<RobotGetAllDAOutput-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGetAllDAOutput-request>)))
  "Returns string type for a service object of type '<RobotGetAllDAOutput-request>"
  "cgx_driver/RobotGetAllDAOutputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetAllDAOutput-request)))
  "Returns string type for a service object of type 'RobotGetAllDAOutput-request"
  "cgx_driver/RobotGetAllDAOutputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGetAllDAOutput-request>)))
  "Returns md5sum for a message object of type '<RobotGetAllDAOutput-request>"
  "fdb3ecd52fd607089bccc8ca9c27eda0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGetAllDAOutput-request)))
  "Returns md5sum for a message object of type 'RobotGetAllDAOutput-request"
  "fdb3ecd52fd607089bccc8ca9c27eda0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGetAllDAOutput-request>)))
  "Returns full string definition for message of type '<RobotGetAllDAOutput-request>"
  (cl:format cl:nil "# RobotGetAllDAOutput.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGetAllDAOutput-request)))
  "Returns full string definition for message of type 'RobotGetAllDAOutput-request"
  (cl:format cl:nil "# RobotGetAllDAOutput.srv~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGetAllDAOutput-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGetAllDAOutput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGetAllDAOutput-request
))
;//! \htmlinclude RobotGetAllDAOutput-response.msg.html

(cl:defclass <RobotGetAllDAOutput-response> (roslisp-msg-protocol:ros-message)
  ((controllerDO
    :reader controllerDO
    :initarg :controllerDO
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 8 :element-type 'cl:boolean :initial-element cl:nil))
   (controllerCO
    :reader controllerCO
    :initarg :controllerCO
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 8 :element-type 'cl:boolean :initial-element cl:nil))
   (controllerAO
    :reader controllerAO
    :initarg :controllerAO
    :type (cl:vector cl:float)
   :initform (cl:make-array 1 :element-type 'cl:float :initial-element 0.0))
   (toolDO
    :reader toolDO
    :initarg :toolDO
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 2 :element-type 'cl:boolean :initial-element cl:nil))
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

(cl:defclass RobotGetAllDAOutput-response (<RobotGetAllDAOutput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotGetAllDAOutput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotGetAllDAOutput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<RobotGetAllDAOutput-response> is deprecated: use cgx_driver-srv:RobotGetAllDAOutput-response instead.")))

(cl:ensure-generic-function 'controllerDO-val :lambda-list '(m))
(cl:defmethod controllerDO-val ((m <RobotGetAllDAOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:controllerDO-val is deprecated.  Use cgx_driver-srv:controllerDO instead.")
  (controllerDO m))

(cl:ensure-generic-function 'controllerCO-val :lambda-list '(m))
(cl:defmethod controllerCO-val ((m <RobotGetAllDAOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:controllerCO-val is deprecated.  Use cgx_driver-srv:controllerCO instead.")
  (controllerCO m))

(cl:ensure-generic-function 'controllerAO-val :lambda-list '(m))
(cl:defmethod controllerAO-val ((m <RobotGetAllDAOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:controllerAO-val is deprecated.  Use cgx_driver-srv:controllerAO instead.")
  (controllerAO m))

(cl:ensure-generic-function 'toolDO-val :lambda-list '(m))
(cl:defmethod toolDO-val ((m <RobotGetAllDAOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:toolDO-val is deprecated.  Use cgx_driver-srv:toolDO instead.")
  (toolDO m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <RobotGetAllDAOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RobotGetAllDAOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotGetAllDAOutput-response>) ostream)
  "Serializes a message object of type '<RobotGetAllDAOutput-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'controllerDO))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'controllerCO))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'controllerAO))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'toolDO))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotGetAllDAOutput-response>) istream)
  "Deserializes a message object of type '<RobotGetAllDAOutput-response>"
  (cl:setf (cl:slot-value msg 'controllerDO) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'controllerDO)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'controllerCO) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'controllerCO)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'controllerAO) (cl:make-array 1))
  (cl:let ((vals (cl:slot-value msg 'controllerAO)))
    (cl:dotimes (i 1)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'toolDO) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'toolDO)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotGetAllDAOutput-response>)))
  "Returns string type for a service object of type '<RobotGetAllDAOutput-response>"
  "cgx_driver/RobotGetAllDAOutputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetAllDAOutput-response)))
  "Returns string type for a service object of type 'RobotGetAllDAOutput-response"
  "cgx_driver/RobotGetAllDAOutputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotGetAllDAOutput-response>)))
  "Returns md5sum for a message object of type '<RobotGetAllDAOutput-response>"
  "fdb3ecd52fd607089bccc8ca9c27eda0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotGetAllDAOutput-response)))
  "Returns md5sum for a message object of type 'RobotGetAllDAOutput-response"
  "fdb3ecd52fd607089bccc8ca9c27eda0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotGetAllDAOutput-response>)))
  "Returns full string definition for message of type '<RobotGetAllDAOutput-response>"
  (cl:format cl:nil "bool[8] controllerDO~%bool[8] controllerCO~%float32[1] controllerAO~%bool[2] toolDO~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotGetAllDAOutput-response)))
  "Returns full string definition for message of type 'RobotGetAllDAOutput-response"
  (cl:format cl:nil "bool[8] controllerDO~%bool[8] controllerCO~%float32[1] controllerAO~%bool[2] toolDO~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotGetAllDAOutput-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'controllerDO) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'controllerCO) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'controllerAO) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'toolDO) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotGetAllDAOutput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotGetAllDAOutput-response
    (cl:cons ':controllerDO (controllerDO msg))
    (cl:cons ':controllerCO (controllerCO msg))
    (cl:cons ':controllerAO (controllerAO msg))
    (cl:cons ':toolDO (toolDO msg))
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotGetAllDAOutput)))
  'RobotGetAllDAOutput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotGetAllDAOutput)))
  'RobotGetAllDAOutput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotGetAllDAOutput)))
  "Returns string type for a service object of type '<RobotGetAllDAOutput>"
  "cgx_driver/RobotGetAllDAOutput")