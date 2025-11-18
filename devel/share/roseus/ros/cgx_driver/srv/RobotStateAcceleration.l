;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotStateAcceleration)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotStateAcceleration (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTSTATEACCELERATION")
  (make-package "CGX_DRIVER::ROBOTSTATEACCELERATION"))
(unless (find-package "CGX_DRIVER::ROBOTSTATEACCELERATIONREQUEST")
  (make-package "CGX_DRIVER::ROBOTSTATEACCELERATIONREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTSTATEACCELERATIONRESPONSE")
  (make-package "CGX_DRIVER::ROBOTSTATEACCELERATIONRESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotStateAccelerationRequest
  :super ros::object
  :slots ())

(defmethod cgx_driver::RobotStateAccelerationRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cgx_driver::RobotStateAccelerationResponse
  :super ros::object
  :slots (_acceleration _ret _message ))

(defmethod cgx_driver::RobotStateAccelerationResponse
  (:init
   (&key
    ((:acceleration __acceleration) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _acceleration __acceleration)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64[6] _acceleration
    (* 8    6)
    ;; int32 _ret
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[6] _acceleration
     (dotimes (i 6)
       (sys::poke (elt _acceleration i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _ret
       (write-long _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[6] _acceleration
   (dotimes (i (length _acceleration))
     (setf (elt _acceleration i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotStateAcceleration
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotStateAcceleration :md5sum-) "d990f27bdf8ca210513247342e9b6737")
(setf (get cgx_driver::RobotStateAcceleration :datatype-) "cgx_driver/RobotStateAcceleration")
(setf (get cgx_driver::RobotStateAcceleration :request) cgx_driver::RobotStateAccelerationRequest)
(setf (get cgx_driver::RobotStateAcceleration :response) cgx_driver::RobotStateAccelerationResponse)

(defmethod cgx_driver::RobotStateAccelerationRequest
  (:response () (instance cgx_driver::RobotStateAccelerationResponse :init)))

(setf (get cgx_driver::RobotStateAccelerationRequest :md5sum-) "d990f27bdf8ca210513247342e9b6737")
(setf (get cgx_driver::RobotStateAccelerationRequest :datatype-) "cgx_driver/RobotStateAccelerationRequest")
(setf (get cgx_driver::RobotStateAccelerationRequest :definition-)
      "# RobotStateAcceleration.srv
---
float64[6] acceleration 
int32 ret        # 返回状态码
string message   # 返回信息
")

(setf (get cgx_driver::RobotStateAccelerationResponse :md5sum-) "d990f27bdf8ca210513247342e9b6737")
(setf (get cgx_driver::RobotStateAccelerationResponse :datatype-) "cgx_driver/RobotStateAccelerationResponse")
(setf (get cgx_driver::RobotStateAccelerationResponse :definition-)
      "# RobotStateAcceleration.srv
---
float64[6] acceleration 
int32 ret        # 返回状态码
string message   # 返回信息
")



(provide :cgx_driver/RobotStateAcceleration "d990f27bdf8ca210513247342e9b6737")


