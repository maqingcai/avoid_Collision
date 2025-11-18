;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotGetAnalogIOState)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotGetAnalogIOState (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTGETANALOGIOSTATE")
  (make-package "CGX_DRIVER::ROBOTGETANALOGIOSTATE"))
(unless (find-package "CGX_DRIVER::ROBOTGETANALOGIOSTATEREQUEST")
  (make-package "CGX_DRIVER::ROBOTGETANALOGIOSTATEREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTGETANALOGIOSTATERESPONSE")
  (make-package "CGX_DRIVER::ROBOTGETANALOGIOSTATERESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotGetAnalogIOStateRequest
  :super ros::object
  :slots (_index ))

(defmethod cgx_driver::RobotGetAnalogIOStateRequest
  (:init
   (&key
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cgx_driver::RobotGetAnalogIOStateResponse
  :super ros::object
  :slots (_value _ret _message ))

(defmethod cgx_driver::RobotGetAnalogIOStateResponse
  (:init
   (&key
    ((:value __value) 0.0)
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ;; int32 _ret
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _ret
       (write-long _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotGetAnalogIOState
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotGetAnalogIOState :md5sum-) "8eeb73d9e3399a3bcd072ace63e97558")
(setf (get cgx_driver::RobotGetAnalogIOState :datatype-) "cgx_driver/RobotGetAnalogIOState")
(setf (get cgx_driver::RobotGetAnalogIOState :request) cgx_driver::RobotGetAnalogIOStateRequest)
(setf (get cgx_driver::RobotGetAnalogIOState :response) cgx_driver::RobotGetAnalogIOStateResponse)

(defmethod cgx_driver::RobotGetAnalogIOStateRequest
  (:response () (instance cgx_driver::RobotGetAnalogIOStateResponse :init)))

(setf (get cgx_driver::RobotGetAnalogIOStateRequest :md5sum-) "8eeb73d9e3399a3bcd072ace63e97558")
(setf (get cgx_driver::RobotGetAnalogIOStateRequest :datatype-) "cgx_driver/RobotGetAnalogIOStateRequest")
(setf (get cgx_driver::RobotGetAnalogIOStateRequest :definition-)
      "# RobotGetAnalogIOState.srv
int32 index
---
float64 value 
int32 ret        # 返回状态码
string message   # 返回信息
")

(setf (get cgx_driver::RobotGetAnalogIOStateResponse :md5sum-) "8eeb73d9e3399a3bcd072ace63e97558")
(setf (get cgx_driver::RobotGetAnalogIOStateResponse :datatype-) "cgx_driver/RobotGetAnalogIOStateResponse")
(setf (get cgx_driver::RobotGetAnalogIOStateResponse :definition-)
      "# RobotGetAnalogIOState.srv
int32 index
---
float64 value 
int32 ret        # 返回状态码
string message   # 返回信息
")



(provide :cgx_driver/RobotGetAnalogIOState "8eeb73d9e3399a3bcd072ace63e97558")


