;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotStateCurrent)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotStateCurrent (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTSTATECURRENT")
  (make-package "CGX_DRIVER::ROBOTSTATECURRENT"))
(unless (find-package "CGX_DRIVER::ROBOTSTATECURRENTREQUEST")
  (make-package "CGX_DRIVER::ROBOTSTATECURRENTREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTSTATECURRENTRESPONSE")
  (make-package "CGX_DRIVER::ROBOTSTATECURRENTRESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotStateCurrentRequest
  :super ros::object
  :slots ())

(defmethod cgx_driver::RobotStateCurrentRequest
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

(defclass cgx_driver::RobotStateCurrentResponse
  :super ros::object
  :slots (_current _ret _message ))

(defmethod cgx_driver::RobotStateCurrentResponse
  (:init
   (&key
    ((:current __current) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _current __current)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64[6] _current
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
     ;; float64[6] _current
     (dotimes (i 6)
       (sys::poke (elt _current i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _ret
       (write-long _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[6] _current
   (dotimes (i (length _current))
     (setf (elt _current i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotStateCurrent
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotStateCurrent :md5sum-) "72a586880c39d961d06c55803979df7b")
(setf (get cgx_driver::RobotStateCurrent :datatype-) "cgx_driver/RobotStateCurrent")
(setf (get cgx_driver::RobotStateCurrent :request) cgx_driver::RobotStateCurrentRequest)
(setf (get cgx_driver::RobotStateCurrent :response) cgx_driver::RobotStateCurrentResponse)

(defmethod cgx_driver::RobotStateCurrentRequest
  (:response () (instance cgx_driver::RobotStateCurrentResponse :init)))

(setf (get cgx_driver::RobotStateCurrentRequest :md5sum-) "72a586880c39d961d06c55803979df7b")
(setf (get cgx_driver::RobotStateCurrentRequest :datatype-) "cgx_driver/RobotStateCurrentRequest")
(setf (get cgx_driver::RobotStateCurrentRequest :definition-)
      "# RobotStateCurrent.srv
---
float64[6] current  
int32 ret        # 返回状态码
string message   # 返回信息
")

(setf (get cgx_driver::RobotStateCurrentResponse :md5sum-) "72a586880c39d961d06c55803979df7b")
(setf (get cgx_driver::RobotStateCurrentResponse :datatype-) "cgx_driver/RobotStateCurrentResponse")
(setf (get cgx_driver::RobotStateCurrentResponse :definition-)
      "# RobotStateCurrent.srv
---
float64[6] current  
int32 ret        # 返回状态码
string message   # 返回信息
")



(provide :cgx_driver/RobotStateCurrent "72a586880c39d961d06c55803979df7b")


