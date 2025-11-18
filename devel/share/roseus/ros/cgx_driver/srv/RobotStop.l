;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotStop)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotStop (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTSTOP")
  (make-package "CGX_DRIVER::ROBOTSTOP"))
(unless (find-package "CGX_DRIVER::ROBOTSTOPREQUEST")
  (make-package "CGX_DRIVER::ROBOTSTOPREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTSTOPRESPONSE")
  (make-package "CGX_DRIVER::ROBOTSTOPRESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotStopRequest
  :super ros::object
  :slots (_moveType ))

(defmethod cgx_driver::RobotStopRequest
  (:init
   (&key
    ((:moveType __moveType) "")
    )
   (send-super :init)
   (setq _moveType (string __moveType))
   self)
  (:moveType
   (&optional __moveType)
   (if __moveType (setq _moveType __moveType)) _moveType)
  (:serialization-length
   ()
   (+
    ;; string _moveType
    4 (length _moveType)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _moveType
       (write-long (length _moveType) s) (princ _moveType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _moveType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _moveType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotStopResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod cgx_driver::RobotStopResponse
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

(defclass cgx_driver::RobotStop
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotStop :md5sum-) "41f8ff55f84d1a1a88561afaab58a98f")
(setf (get cgx_driver::RobotStop :datatype-) "cgx_driver/RobotStop")
(setf (get cgx_driver::RobotStop :request) cgx_driver::RobotStopRequest)
(setf (get cgx_driver::RobotStop :response) cgx_driver::RobotStopResponse)

(defmethod cgx_driver::RobotStopRequest
  (:response () (instance cgx_driver::RobotStopResponse :init)))

(setf (get cgx_driver::RobotStopRequest :md5sum-) "41f8ff55f84d1a1a88561afaab58a98f")
(setf (get cgx_driver::RobotStopRequest :datatype-) "cgx_driver/RobotStopRequest")
(setf (get cgx_driver::RobotStopRequest :definition-)
      "# RobotStop.srv
string moveType 
---
int16 ret
string message
")

(setf (get cgx_driver::RobotStopResponse :md5sum-) "41f8ff55f84d1a1a88561afaab58a98f")
(setf (get cgx_driver::RobotStopResponse :datatype-) "cgx_driver/RobotStopResponse")
(setf (get cgx_driver::RobotStopResponse :definition-)
      "# RobotStop.srv
string moveType 
---
int16 ret
string message
")



(provide :cgx_driver/RobotStop "41f8ff55f84d1a1a88561afaab58a98f")


