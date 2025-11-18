;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotGetDigitalIOState)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotGetDigitalIOState (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTGETDIGITALIOSTATE")
  (make-package "CGX_DRIVER::ROBOTGETDIGITALIOSTATE"))
(unless (find-package "CGX_DRIVER::ROBOTGETDIGITALIOSTATEREQUEST")
  (make-package "CGX_DRIVER::ROBOTGETDIGITALIOSTATEREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTGETDIGITALIOSTATERESPONSE")
  (make-package "CGX_DRIVER::ROBOTGETDIGITALIOSTATERESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotGetDigitalIOStateRequest
  :super ros::object
  :slots (_index ))

(defmethod cgx_driver::RobotGetDigitalIOStateRequest
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

(defclass cgx_driver::RobotGetDigitalIOStateResponse
  :super ros::object
  :slots (_value _ret _message ))

(defmethod cgx_driver::RobotGetDigitalIOStateResponse
  (:init
   (&key
    ((:value __value) nil)
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _value __value)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ;; int32 _ret
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;; int32 _ret
       (write-long _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotGetDigitalIOState
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotGetDigitalIOState :md5sum-) "5e121ca88187de900c90789129201008")
(setf (get cgx_driver::RobotGetDigitalIOState :datatype-) "cgx_driver/RobotGetDigitalIOState")
(setf (get cgx_driver::RobotGetDigitalIOState :request) cgx_driver::RobotGetDigitalIOStateRequest)
(setf (get cgx_driver::RobotGetDigitalIOState :response) cgx_driver::RobotGetDigitalIOStateResponse)

(defmethod cgx_driver::RobotGetDigitalIOStateRequest
  (:response () (instance cgx_driver::RobotGetDigitalIOStateResponse :init)))

(setf (get cgx_driver::RobotGetDigitalIOStateRequest :md5sum-) "5e121ca88187de900c90789129201008")
(setf (get cgx_driver::RobotGetDigitalIOStateRequest :datatype-) "cgx_driver/RobotGetDigitalIOStateRequest")
(setf (get cgx_driver::RobotGetDigitalIOStateRequest :definition-)
      "# RobotGetDigitalIOState.srv
int32 index
---
bool value 
int32 ret        # 返回状态码
string message   # 返回信息
")

(setf (get cgx_driver::RobotGetDigitalIOStateResponse :md5sum-) "5e121ca88187de900c90789129201008")
(setf (get cgx_driver::RobotGetDigitalIOStateResponse :datatype-) "cgx_driver/RobotGetDigitalIOStateResponse")
(setf (get cgx_driver::RobotGetDigitalIOStateResponse :definition-)
      "# RobotGetDigitalIOState.srv
int32 index
---
bool value 
int32 ret        # 返回状态码
string message   # 返回信息
")



(provide :cgx_driver/RobotGetDigitalIOState "5e121ca88187de900c90789129201008")


