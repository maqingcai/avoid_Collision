;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotControl)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotControl (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTCONTROL")
  (make-package "CGX_DRIVER::ROBOTCONTROL"))
(unless (find-package "CGX_DRIVER::ROBOTCONTROLREQUEST")
  (make-package "CGX_DRIVER::ROBOTCONTROLREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTCONTROLRESPONSE")
  (make-package "CGX_DRIVER::ROBOTCONTROLRESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotControlRequest
  :super ros::object
  :slots ())

(defmethod cgx_driver::RobotControlRequest
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

(defclass cgx_driver::RobotControlResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod cgx_driver::RobotControlResponse
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
    ;; int32 _ret
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ret
       (write-long _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotControl
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotControl :md5sum-) "afdb845140e2f05f77c770110f12be2b")
(setf (get cgx_driver::RobotControl :datatype-) "cgx_driver/RobotControl")
(setf (get cgx_driver::RobotControl :request) cgx_driver::RobotControlRequest)
(setf (get cgx_driver::RobotControl :response) cgx_driver::RobotControlResponse)

(defmethod cgx_driver::RobotControlRequest
  (:response () (instance cgx_driver::RobotControlResponse :init)))

(setf (get cgx_driver::RobotControlRequest :md5sum-) "afdb845140e2f05f77c770110f12be2b")
(setf (get cgx_driver::RobotControlRequest :datatype-) "cgx_driver/RobotControlRequest")
(setf (get cgx_driver::RobotControlRequest :definition-)
      "# RobotControl.srv
---
int32 ret
string message
")

(setf (get cgx_driver::RobotControlResponse :md5sum-) "afdb845140e2f05f77c770110f12be2b")
(setf (get cgx_driver::RobotControlResponse :datatype-) "cgx_driver/RobotControlResponse")
(setf (get cgx_driver::RobotControlResponse :definition-)
      "# RobotControl.srv
---
int32 ret
string message
")



(provide :cgx_driver/RobotControl "afdb845140e2f05f77c770110f12be2b")


