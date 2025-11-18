;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotGetAllDAOutput)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotGetAllDAOutput (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTGETALLDAOUTPUT")
  (make-package "CGX_DRIVER::ROBOTGETALLDAOUTPUT"))
(unless (find-package "CGX_DRIVER::ROBOTGETALLDAOUTPUTREQUEST")
  (make-package "CGX_DRIVER::ROBOTGETALLDAOUTPUTREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTGETALLDAOUTPUTRESPONSE")
  (make-package "CGX_DRIVER::ROBOTGETALLDAOUTPUTRESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotGetAllDAOutputRequest
  :super ros::object
  :slots ())

(defmethod cgx_driver::RobotGetAllDAOutputRequest
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

(defclass cgx_driver::RobotGetAllDAOutputResponse
  :super ros::object
  :slots (_controllerDO _controllerCO _controllerAO _toolDO _ret _message ))

(defmethod cgx_driver::RobotGetAllDAOutputResponse
  (:init
   (&key
    ((:controllerDO __controllerDO) (let (r) (dotimes (i 8) (push nil r)) r))
    ((:controllerCO __controllerCO) (let (r) (dotimes (i 8) (push nil r)) r))
    ((:controllerAO __controllerAO) (make-array 1 :initial-element 0.0 :element-type :float))
    ((:toolDO __toolDO) (let (r) (dotimes (i 2) (push nil r)) r))
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _controllerDO __controllerDO)
   (setq _controllerCO __controllerCO)
   (setq _controllerAO __controllerAO)
   (setq _toolDO __toolDO)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:controllerDO
   (&optional __controllerDO)
   (if __controllerDO (setq _controllerDO __controllerDO)) _controllerDO)
  (:controllerCO
   (&optional __controllerCO)
   (if __controllerCO (setq _controllerCO __controllerCO)) _controllerCO)
  (:controllerAO
   (&optional __controllerAO)
   (if __controllerAO (setq _controllerAO __controllerAO)) _controllerAO)
  (:toolDO
   (&optional __toolDO)
   (if __toolDO (setq _toolDO __toolDO)) _toolDO)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool[8] _controllerDO
    (* 1    8)
    ;; bool[8] _controllerCO
    (* 1    8)
    ;; float32[1] _controllerAO
    (* 4    1)
    ;; bool[2] _toolDO
    (* 1    2)
    ;; int16 _ret
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[8] _controllerDO
     (dotimes (i 8)
       (if (elt _controllerDO i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[8] _controllerCO
     (dotimes (i 8)
       (if (elt _controllerCO i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[1] _controllerAO
     (dotimes (i 1)
       (sys::poke (elt _controllerAO i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool[2] _toolDO
     (dotimes (i 2)
       (if (elt _toolDO i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int16 _ret
       (write-word _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[8] _controllerDO
   (dotimes (i (length _controllerDO))
     (setf (elt _controllerDO i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[8] _controllerCO
   (dotimes (i (length _controllerCO))
     (setf (elt _controllerCO i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; float32[1] _controllerAO
   (dotimes (i (length _controllerAO))
     (setf (elt _controllerAO i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool[2] _toolDO
   (dotimes (i (length _toolDO))
     (setf (elt _toolDO i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; int16 _ret
     (setq _ret (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotGetAllDAOutput
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotGetAllDAOutput :md5sum-) "fdb3ecd52fd607089bccc8ca9c27eda0")
(setf (get cgx_driver::RobotGetAllDAOutput :datatype-) "cgx_driver/RobotGetAllDAOutput")
(setf (get cgx_driver::RobotGetAllDAOutput :request) cgx_driver::RobotGetAllDAOutputRequest)
(setf (get cgx_driver::RobotGetAllDAOutput :response) cgx_driver::RobotGetAllDAOutputResponse)

(defmethod cgx_driver::RobotGetAllDAOutputRequest
  (:response () (instance cgx_driver::RobotGetAllDAOutputResponse :init)))

(setf (get cgx_driver::RobotGetAllDAOutputRequest :md5sum-) "fdb3ecd52fd607089bccc8ca9c27eda0")
(setf (get cgx_driver::RobotGetAllDAOutputRequest :datatype-) "cgx_driver/RobotGetAllDAOutputRequest")
(setf (get cgx_driver::RobotGetAllDAOutputRequest :definition-)
      "# RobotGetAllDAOutput.srv
---
bool[8] controllerDO
bool[8] controllerCO
float32[1] controllerAO
bool[2] toolDO
int16 ret
string message
")

(setf (get cgx_driver::RobotGetAllDAOutputResponse :md5sum-) "fdb3ecd52fd607089bccc8ca9c27eda0")
(setf (get cgx_driver::RobotGetAllDAOutputResponse :datatype-) "cgx_driver/RobotGetAllDAOutputResponse")
(setf (get cgx_driver::RobotGetAllDAOutputResponse :definition-)
      "# RobotGetAllDAOutput.srv
---
bool[8] controllerDO
bool[8] controllerCO
float32[1] controllerAO
bool[2] toolDO
int16 ret
string message
")



(provide :cgx_driver/RobotGetAllDAOutput "fdb3ecd52fd607089bccc8ca9c27eda0")


