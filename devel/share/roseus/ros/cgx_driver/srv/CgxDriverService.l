;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::CgxDriverService)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'CgxDriverService (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::CGXDRIVERSERVICE")
  (make-package "CGX_DRIVER::CGXDRIVERSERVICE"))
(unless (find-package "CGX_DRIVER::CGXDRIVERSERVICEREQUEST")
  (make-package "CGX_DRIVER::CGXDRIVERSERVICEREQUEST"))
(unless (find-package "CGX_DRIVER::CGXDRIVERSERVICERESPONSE")
  (make-package "CGX_DRIVER::CGXDRIVERSERVICERESPONSE"))

(in-package "ROS")





(defclass cgx_driver::CgxDriverServiceRequest
  :super ros::object
  :slots (_pose _jointpos _speed _acc _coordinate_type _point_trans_type _point_trans_radius _is_block ))

(defmethod cgx_driver::CgxDriverServiceRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:jointpos __jointpos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed __speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc __acc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:coordinate_type __coordinate_type) "")
    ((:point_trans_type __point_trans_type) "")
    ((:point_trans_radius __point_trans_radius) 0.0)
    ((:is_block __is_block) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _jointpos __jointpos)
   (setq _speed __speed)
   (setq _acc __acc)
   (setq _coordinate_type (string __coordinate_type))
   (setq _point_trans_type (string __point_trans_type))
   (setq _point_trans_radius (float __point_trans_radius))
   (setq _is_block (round __is_block))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:jointpos
   (&optional __jointpos)
   (if __jointpos (setq _jointpos __jointpos)) _jointpos)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:coordinate_type
   (&optional __coordinate_type)
   (if __coordinate_type (setq _coordinate_type __coordinate_type)) _coordinate_type)
  (:point_trans_type
   (&optional __point_trans_type)
   (if __point_trans_type (setq _point_trans_type __point_trans_type)) _point_trans_type)
  (:point_trans_radius
   (&optional __point_trans_radius)
   (if __point_trans_radius (setq _point_trans_radius __point_trans_radius)) _point_trans_radius)
  (:is_block
   (&optional __is_block)
   (if __is_block (setq _is_block __is_block)) _is_block)
  (:serialization-length
   ()
   (+
    ;; float32[] _pose
    (* 4    (length _pose)) 4
    ;; float32[] _jointpos
    (* 4    (length _jointpos)) 4
    ;; float32[] _speed
    (* 4    (length _speed)) 4
    ;; float32[] _acc
    (* 4    (length _acc)) 4
    ;; string _coordinate_type
    4 (length _coordinate_type)
    ;; string _point_trans_type
    4 (length _point_trans_type)
    ;; float32 _point_trans_radius
    4
    ;; int16 _is_block
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _jointpos
     (write-long (length _jointpos) s)
     (dotimes (i (length _jointpos))
       (sys::poke (elt _jointpos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _speed
     (write-long (length _speed) s)
     (dotimes (i (length _speed))
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acc
     (write-long (length _acc) s)
     (dotimes (i (length _acc))
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _coordinate_type
       (write-long (length _coordinate_type) s) (princ _coordinate_type s)
     ;; string _point_trans_type
       (write-long (length _point_trans_type) s) (princ _point_trans_type s)
     ;; float32 _point_trans_radius
       (sys::poke _point_trans_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _is_block
       (write-word _is_block s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _jointpos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _jointpos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _jointpos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _coordinate_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _coordinate_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _point_trans_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _point_trans_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _point_trans_radius
     (setq _point_trans_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _is_block
     (setq _is_block (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass cgx_driver::CgxDriverServiceResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod cgx_driver::CgxDriverServiceResponse
  (:init
   (&key
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _ret
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _ret
       (write-word _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _ret
     (setq _ret (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::CgxDriverService
  :super ros::object
  :slots ())

(setf (get cgx_driver::CgxDriverService :md5sum-) "f09746e49ae11d9f53a9e2220e8db09a")
(setf (get cgx_driver::CgxDriverService :datatype-) "cgx_driver/CgxDriverService")
(setf (get cgx_driver::CgxDriverService :request) cgx_driver::CgxDriverServiceRequest)
(setf (get cgx_driver::CgxDriverService :response) cgx_driver::CgxDriverServiceResponse)

(defmethod cgx_driver::CgxDriverServiceRequest
  (:response () (instance cgx_driver::CgxDriverServiceResponse :init)))

(setf (get cgx_driver::CgxDriverServiceRequest :md5sum-) "f09746e49ae11d9f53a9e2220e8db09a")
(setf (get cgx_driver::CgxDriverServiceRequest :datatype-) "cgx_driver/CgxDriverServiceRequest")
(setf (get cgx_driver::CgxDriverServiceRequest :definition-)
      "# CgxDriverServiceMove.srv
float32[] pose
float32[] jointpos
float32[] speed
float32[] acc
string coordinate_type
string point_trans_type
float32 point_trans_radius
int16 is_block
---
int16 ret
string message
")

(setf (get cgx_driver::CgxDriverServiceResponse :md5sum-) "f09746e49ae11d9f53a9e2220e8db09a")
(setf (get cgx_driver::CgxDriverServiceResponse :datatype-) "cgx_driver/CgxDriverServiceResponse")
(setf (get cgx_driver::CgxDriverServiceResponse :definition-)
      "# CgxDriverServiceMove.srv
float32[] pose
float32[] jointpos
float32[] speed
float32[] acc
string coordinate_type
string point_trans_type
float32 point_trans_radius
int16 is_block
---
int16 ret
string message
")



(provide :cgx_driver/CgxDriverService "f09746e49ae11d9f53a9e2220e8db09a")


