;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotStatePose)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotStatePose (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTSTATEPOSE")
  (make-package "CGX_DRIVER::ROBOTSTATEPOSE"))
(unless (find-package "CGX_DRIVER::ROBOTSTATEPOSEREQUEST")
  (make-package "CGX_DRIVER::ROBOTSTATEPOSEREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTSTATEPOSERESPONSE")
  (make-package "CGX_DRIVER::ROBOTSTATEPOSERESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotStatePoseRequest
  :super ros::object
  :slots ())

(defmethod cgx_driver::RobotStatePoseRequest
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

(defclass cgx_driver::RobotStatePoseResponse
  :super ros::object
  :slots (_pose _ret _message ))

(defmethod cgx_driver::RobotStatePoseResponse
  (:init
   (&key
    ((:pose __pose) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; float64[6] _pose
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
     ;; float64[6] _pose
     (dotimes (i 6)
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int32 _ret
       (write-long _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[6] _pose
   (dotimes (i (length _pose))
     (setf (elt _pose i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int32 _ret
     (setq _ret (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotStatePose
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotStatePose :md5sum-) "d934b828b167df2066e86054919aa285")
(setf (get cgx_driver::RobotStatePose :datatype-) "cgx_driver/RobotStatePose")
(setf (get cgx_driver::RobotStatePose :request) cgx_driver::RobotStatePoseRequest)
(setf (get cgx_driver::RobotStatePose :response) cgx_driver::RobotStatePoseResponse)

(defmethod cgx_driver::RobotStatePoseRequest
  (:response () (instance cgx_driver::RobotStatePoseResponse :init)))

(setf (get cgx_driver::RobotStatePoseRequest :md5sum-) "d934b828b167df2066e86054919aa285")
(setf (get cgx_driver::RobotStatePoseRequest :datatype-) "cgx_driver/RobotStatePoseRequest")
(setf (get cgx_driver::RobotStatePoseRequest :definition-)
      "# RobotStatePose.srv
---
float64[6] pose  # 返回的6维位姿数组
int32 ret        # 返回状态码
string message   # 返回信息
")

(setf (get cgx_driver::RobotStatePoseResponse :md5sum-) "d934b828b167df2066e86054919aa285")
(setf (get cgx_driver::RobotStatePoseResponse :datatype-) "cgx_driver/RobotStatePoseResponse")
(setf (get cgx_driver::RobotStatePoseResponse :definition-)
      "# RobotStatePose.srv
---
float64[6] pose  # 返回的6维位姿数组
int32 ret        # 返回状态码
string message   # 返回信息
")



(provide :cgx_driver/RobotStatePose "d934b828b167df2066e86054919aa285")


