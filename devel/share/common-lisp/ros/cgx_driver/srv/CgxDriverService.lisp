; Auto-generated. Do not edit!


(cl:in-package cgx_driver-srv)


;//! \htmlinclude CgxDriverService-request.msg.html

(cl:defclass <CgxDriverService-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (jointpos
    :reader jointpos
    :initarg :jointpos
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (speed
    :reader speed
    :initarg :speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (acc
    :reader acc
    :initarg :acc
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (coordinate_type
    :reader coordinate_type
    :initarg :coordinate_type
    :type cl:string
    :initform "")
   (point_trans_type
    :reader point_trans_type
    :initarg :point_trans_type
    :type cl:string
    :initform "")
   (point_trans_radius
    :reader point_trans_radius
    :initarg :point_trans_radius
    :type cl:float
    :initform 0.0)
   (is_block
    :reader is_block
    :initarg :is_block
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CgxDriverService-request (<CgxDriverService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CgxDriverService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CgxDriverService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<CgxDriverService-request> is deprecated: use cgx_driver-srv:CgxDriverService-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:pose-val is deprecated.  Use cgx_driver-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'jointpos-val :lambda-list '(m))
(cl:defmethod jointpos-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:jointpos-val is deprecated.  Use cgx_driver-srv:jointpos instead.")
  (jointpos m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:speed-val is deprecated.  Use cgx_driver-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:acc-val is deprecated.  Use cgx_driver-srv:acc instead.")
  (acc m))

(cl:ensure-generic-function 'coordinate_type-val :lambda-list '(m))
(cl:defmethod coordinate_type-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:coordinate_type-val is deprecated.  Use cgx_driver-srv:coordinate_type instead.")
  (coordinate_type m))

(cl:ensure-generic-function 'point_trans_type-val :lambda-list '(m))
(cl:defmethod point_trans_type-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:point_trans_type-val is deprecated.  Use cgx_driver-srv:point_trans_type instead.")
  (point_trans_type m))

(cl:ensure-generic-function 'point_trans_radius-val :lambda-list '(m))
(cl:defmethod point_trans_radius-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:point_trans_radius-val is deprecated.  Use cgx_driver-srv:point_trans_radius instead.")
  (point_trans_radius m))

(cl:ensure-generic-function 'is_block-val :lambda-list '(m))
(cl:defmethod is_block-val ((m <CgxDriverService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:is_block-val is deprecated.  Use cgx_driver-srv:is_block instead.")
  (is_block m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CgxDriverService-request>) ostream)
  "Serializes a message object of type '<CgxDriverService-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'jointpos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'jointpos))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'speed))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'acc))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'coordinate_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'coordinate_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'point_trans_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'point_trans_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'point_trans_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'is_block)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CgxDriverService-request>) istream)
  "Deserializes a message object of type '<CgxDriverService-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'jointpos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'jointpos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'acc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'acc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'coordinate_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'coordinate_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'point_trans_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'point_trans_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'point_trans_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_block) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CgxDriverService-request>)))
  "Returns string type for a service object of type '<CgxDriverService-request>"
  "cgx_driver/CgxDriverServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CgxDriverService-request)))
  "Returns string type for a service object of type 'CgxDriverService-request"
  "cgx_driver/CgxDriverServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CgxDriverService-request>)))
  "Returns md5sum for a message object of type '<CgxDriverService-request>"
  "f09746e49ae11d9f53a9e2220e8db09a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CgxDriverService-request)))
  "Returns md5sum for a message object of type 'CgxDriverService-request"
  "f09746e49ae11d9f53a9e2220e8db09a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CgxDriverService-request>)))
  "Returns full string definition for message of type '<CgxDriverService-request>"
  (cl:format cl:nil "# CgxDriverServiceMove.srv~%float32[] pose~%float32[] jointpos~%float32[] speed~%float32[] acc~%string coordinate_type~%string point_trans_type~%float32 point_trans_radius~%int16 is_block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CgxDriverService-request)))
  "Returns full string definition for message of type 'CgxDriverService-request"
  (cl:format cl:nil "# CgxDriverServiceMove.srv~%float32[] pose~%float32[] jointpos~%float32[] speed~%float32[] acc~%string coordinate_type~%string point_trans_type~%float32 point_trans_radius~%int16 is_block~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CgxDriverService-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'jointpos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'acc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'coordinate_type))
     4 (cl:length (cl:slot-value msg 'point_trans_type))
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CgxDriverService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CgxDriverService-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':jointpos (jointpos msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':coordinate_type (coordinate_type msg))
    (cl:cons ':point_trans_type (point_trans_type msg))
    (cl:cons ':point_trans_radius (point_trans_radius msg))
    (cl:cons ':is_block (is_block msg))
))
;//! \htmlinclude CgxDriverService-response.msg.html

(cl:defclass <CgxDriverService-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass CgxDriverService-response (<CgxDriverService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CgxDriverService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CgxDriverService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cgx_driver-srv:<CgxDriverService-response> is deprecated: use cgx_driver-srv:CgxDriverService-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <CgxDriverService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:ret-val is deprecated.  Use cgx_driver-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <CgxDriverService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cgx_driver-srv:message-val is deprecated.  Use cgx_driver-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CgxDriverService-response>) ostream)
  "Serializes a message object of type '<CgxDriverService-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CgxDriverService-response>) istream)
  "Deserializes a message object of type '<CgxDriverService-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CgxDriverService-response>)))
  "Returns string type for a service object of type '<CgxDriverService-response>"
  "cgx_driver/CgxDriverServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CgxDriverService-response)))
  "Returns string type for a service object of type 'CgxDriverService-response"
  "cgx_driver/CgxDriverServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CgxDriverService-response>)))
  "Returns md5sum for a message object of type '<CgxDriverService-response>"
  "f09746e49ae11d9f53a9e2220e8db09a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CgxDriverService-response)))
  "Returns md5sum for a message object of type 'CgxDriverService-response"
  "f09746e49ae11d9f53a9e2220e8db09a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CgxDriverService-response>)))
  "Returns full string definition for message of type '<CgxDriverService-response>"
  (cl:format cl:nil "int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CgxDriverService-response)))
  "Returns full string definition for message of type 'CgxDriverService-response"
  (cl:format cl:nil "int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CgxDriverService-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CgxDriverService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CgxDriverService-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CgxDriverService)))
  'CgxDriverService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CgxDriverService)))
  'CgxDriverService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CgxDriverService)))
  "Returns string type for a service object of type '<CgxDriverService>"
  "cgx_driver/CgxDriverService")