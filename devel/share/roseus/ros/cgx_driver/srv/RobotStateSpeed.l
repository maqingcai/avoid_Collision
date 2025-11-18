;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotStateSpeed)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotStateSpeed (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTSTATESPEED")
  (make-package "CGX_DRIVER::ROBOTSTATESPEED"))
(unless (find-package "CGX_DRIVER::ROBOTSTATESPEEDREQUEST")
  (make-package "CGX_DRIVER::ROBOTSTATESPEEDREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTSTATESPEEDRESPONSE")
  (make-package "CGX_DRIVER::ROBOTSTATESPEEDRESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotStateSpeedRequest
  :super ros::object
  :slots ())

(defmethod cgx_driver::RobotStateSpeedRequest
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

(defclass cgx_driver::RobotStateSpeedResponse
  :super ros::object
  :slots (_speed _ret _message ))

(defmethod cgx_driver::RobotStateSpeedResponse
  (:init
   (&key
    ((:speed __speed) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _speed __speed)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64[6] _speed
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
     ;; float64[6] _speed
     (dotimes (i 6)
       (sys::poke (elt _speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _ret
       (write-long _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[6] _speed
   (dotimes (i (length _speed))
     (setf (elt _speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotStateSpeed
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotStateSpeed :md5sum-) "d7a84a591a1b34f702caf7415737a9ce")
(setf (get cgx_driver::RobotStateSpeed :datatype-) "cgx_driver/RobotStateSpeed")
(setf (get cgx_driver::RobotStateSpeed :request) cgx_driver::RobotStateSpeedRequest)
(setf (get cgx_driver::RobotStateSpeed :response) cgx_driver::RobotStateSpeedResponse)

(defmethod cgx_driver::RobotStateSpeedRequest
  (:response () (instance cgx_driver::RobotStateSpeedResponse :init)))

(setf (get cgx_driver::RobotStateSpeedRequest :md5sum-) "d7a84a591a1b34f702caf7415737a9ce")
(setf (get cgx_driver::RobotStateSpeedRequest :datatype-) "cgx_driver/RobotStateSpeedRequest")
(setf (get cgx_driver::RobotStateSpeedRequest :definition-)
      "# RobotStateSpeed.srv
---
float64[6] speed  
int32 ret        
string message   
")

(setf (get cgx_driver::RobotStateSpeedResponse :md5sum-) "d7a84a591a1b34f702caf7415737a9ce")
(setf (get cgx_driver::RobotStateSpeedResponse :datatype-) "cgx_driver/RobotStateSpeedResponse")
(setf (get cgx_driver::RobotStateSpeedResponse :definition-)
      "# RobotStateSpeed.srv
---
float64[6] speed  
int32 ret        
string message   
")



(provide :cgx_driver/RobotStateSpeed "d7a84a591a1b34f702caf7415737a9ce")


