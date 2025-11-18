;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotSetAnalogIOState)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotSetAnalogIOState (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTSETANALOGIOSTATE")
  (make-package "CGX_DRIVER::ROBOTSETANALOGIOSTATE"))
(unless (find-package "CGX_DRIVER::ROBOTSETANALOGIOSTATEREQUEST")
  (make-package "CGX_DRIVER::ROBOTSETANALOGIOSTATEREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTSETANALOGIOSTATERESPONSE")
  (make-package "CGX_DRIVER::ROBOTSETANALOGIOSTATERESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotSetAnalogIOStateRequest
  :super ros::object
  :slots (_index _value ))

(defmethod cgx_driver::RobotSetAnalogIOStateRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _value (float __value))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass cgx_driver::RobotSetAnalogIOStateResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod cgx_driver::RobotSetAnalogIOStateResponse
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

(defclass cgx_driver::RobotSetAnalogIOState
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotSetAnalogIOState :md5sum-) "5228b462be2cb5ab024a8f7c3e4bc55e")
(setf (get cgx_driver::RobotSetAnalogIOState :datatype-) "cgx_driver/RobotSetAnalogIOState")
(setf (get cgx_driver::RobotSetAnalogIOState :request) cgx_driver::RobotSetAnalogIOStateRequest)
(setf (get cgx_driver::RobotSetAnalogIOState :response) cgx_driver::RobotSetAnalogIOStateResponse)

(defmethod cgx_driver::RobotSetAnalogIOStateRequest
  (:response () (instance cgx_driver::RobotSetAnalogIOStateResponse :init)))

(setf (get cgx_driver::RobotSetAnalogIOStateRequest :md5sum-) "5228b462be2cb5ab024a8f7c3e4bc55e")
(setf (get cgx_driver::RobotSetAnalogIOStateRequest :datatype-) "cgx_driver/RobotSetAnalogIOStateRequest")
(setf (get cgx_driver::RobotSetAnalogIOStateRequest :definition-)
      "# RobotSetAnalogIOState.srv
int32 index
float64 value 
---
int32 ret        # 返回状态码
string message   # 返回信息
")

(setf (get cgx_driver::RobotSetAnalogIOStateResponse :md5sum-) "5228b462be2cb5ab024a8f7c3e4bc55e")
(setf (get cgx_driver::RobotSetAnalogIOStateResponse :datatype-) "cgx_driver/RobotSetAnalogIOStateResponse")
(setf (get cgx_driver::RobotSetAnalogIOStateResponse :definition-)
      "# RobotSetAnalogIOState.srv
int32 index
float64 value 
---
int32 ret        # 返回状态码
string message   # 返回信息
")



(provide :cgx_driver/RobotSetAnalogIOState "5228b462be2cb5ab024a8f7c3e4bc55e")


