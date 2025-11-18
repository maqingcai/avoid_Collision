;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotSetDigitalIOState)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotSetDigitalIOState (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTSETDIGITALIOSTATE")
  (make-package "CGX_DRIVER::ROBOTSETDIGITALIOSTATE"))
(unless (find-package "CGX_DRIVER::ROBOTSETDIGITALIOSTATEREQUEST")
  (make-package "CGX_DRIVER::ROBOTSETDIGITALIOSTATEREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTSETDIGITALIOSTATERESPONSE")
  (make-package "CGX_DRIVER::ROBOTSETDIGITALIOSTATERESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotSetDigitalIOStateRequest
  :super ros::object
  :slots (_index _value ))

(defmethod cgx_driver::RobotSetDigitalIOStateRequest
  (:init
   (&key
    ((:index __index) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _value __value)
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _index
    4
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _index
       (write-long _index s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cgx_driver::RobotSetDigitalIOStateResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod cgx_driver::RobotSetDigitalIOStateResponse
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

(defclass cgx_driver::RobotSetDigitalIOState
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotSetDigitalIOState :md5sum-) "275e05a98203a4248140629998ca7ca5")
(setf (get cgx_driver::RobotSetDigitalIOState :datatype-) "cgx_driver/RobotSetDigitalIOState")
(setf (get cgx_driver::RobotSetDigitalIOState :request) cgx_driver::RobotSetDigitalIOStateRequest)
(setf (get cgx_driver::RobotSetDigitalIOState :response) cgx_driver::RobotSetDigitalIOStateResponse)

(defmethod cgx_driver::RobotSetDigitalIOStateRequest
  (:response () (instance cgx_driver::RobotSetDigitalIOStateResponse :init)))

(setf (get cgx_driver::RobotSetDigitalIOStateRequest :md5sum-) "275e05a98203a4248140629998ca7ca5")
(setf (get cgx_driver::RobotSetDigitalIOStateRequest :datatype-) "cgx_driver/RobotSetDigitalIOStateRequest")
(setf (get cgx_driver::RobotSetDigitalIOStateRequest :definition-)
      "# RobotSetDigitalIOState.srv
int32 index
bool value 
---
int32 ret        # 返回状态码
string message   # 返回信息
")

(setf (get cgx_driver::RobotSetDigitalIOStateResponse :md5sum-) "275e05a98203a4248140629998ca7ca5")
(setf (get cgx_driver::RobotSetDigitalIOStateResponse :datatype-) "cgx_driver/RobotSetDigitalIOStateResponse")
(setf (get cgx_driver::RobotSetDigitalIOStateResponse :definition-)
      "# RobotSetDigitalIOState.srv
int32 index
bool value 
---
int32 ret        # 返回状态码
string message   # 返回信息
")



(provide :cgx_driver/RobotSetDigitalIOState "275e05a98203a4248140629998ca7ca5")


