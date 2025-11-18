;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotGetAllDAInput)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotGetAllDAInput (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTGETALLDAINPUT")
  (make-package "CGX_DRIVER::ROBOTGETALLDAINPUT"))
(unless (find-package "CGX_DRIVER::ROBOTGETALLDAINPUTREQUEST")
  (make-package "CGX_DRIVER::ROBOTGETALLDAINPUTREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTGETALLDAINPUTRESPONSE")
  (make-package "CGX_DRIVER::ROBOTGETALLDAINPUTRESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotGetAllDAInputRequest
  :super ros::object
  :slots ())

(defmethod cgx_driver::RobotGetAllDAInputRequest
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

(defclass cgx_driver::RobotGetAllDAInputResponse
  :super ros::object
  :slots (_controllerDI _controllerCI _controllerAI _toolDI _toolAI _ret _message ))

(defmethod cgx_driver::RobotGetAllDAInputResponse
  (:init
   (&key
    ((:controllerDI __controllerDI) (let (r) (dotimes (i 8) (push nil r)) r))
    ((:controllerCI __controllerCI) (let (r) (dotimes (i 8) (push nil r)) r))
    ((:controllerAI __controllerAI) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:toolDI __toolDI) (let (r) (dotimes (i 2) (push nil r)) r))
    ((:toolAI __toolAI) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _controllerDI __controllerDI)
   (setq _controllerCI __controllerCI)
   (setq _controllerAI __controllerAI)
   (setq _toolDI __toolDI)
   (setq _toolAI __toolAI)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:controllerDI
   (&optional __controllerDI)
   (if __controllerDI (setq _controllerDI __controllerDI)) _controllerDI)
  (:controllerCI
   (&optional __controllerCI)
   (if __controllerCI (setq _controllerCI __controllerCI)) _controllerCI)
  (:controllerAI
   (&optional __controllerAI)
   (if __controllerAI (setq _controllerAI __controllerAI)) _controllerAI)
  (:toolDI
   (&optional __toolDI)
   (if __toolDI (setq _toolDI __toolDI)) _toolDI)
  (:toolAI
   (&optional __toolAI)
   (if __toolAI (setq _toolAI __toolAI)) _toolAI)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool[8] _controllerDI
    (* 1    8)
    ;; bool[8] _controllerCI
    (* 1    8)
    ;; float32[3] _controllerAI
    (* 4    3)
    ;; bool[2] _toolDI
    (* 1    2)
    ;; float32[2] _toolAI
    (* 4    2)
    ;; int16 _ret
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[8] _controllerDI
     (dotimes (i 8)
       (if (elt _controllerDI i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[8] _controllerCI
     (dotimes (i 8)
       (if (elt _controllerCI i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[3] _controllerAI
     (dotimes (i 3)
       (sys::poke (elt _controllerAI i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool[2] _toolDI
     (dotimes (i 2)
       (if (elt _toolDI i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[2] _toolAI
     (dotimes (i 2)
       (sys::poke (elt _toolAI i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16 _ret
       (write-word _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[8] _controllerDI
   (dotimes (i (length _controllerDI))
     (setf (elt _controllerDI i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[8] _controllerCI
   (dotimes (i (length _controllerCI))
     (setf (elt _controllerCI i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; float32[3] _controllerAI
   (dotimes (i (length _controllerAI))
     (setf (elt _controllerAI i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool[2] _toolDI
   (dotimes (i (length _toolDI))
     (setf (elt _toolDI i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; float32[2] _toolAI
   (dotimes (i (length _toolAI))
     (setf (elt _toolAI i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; int16 _ret
     (setq _ret (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cgx_driver::RobotGetAllDAInput
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotGetAllDAInput :md5sum-) "cba808cbeaab4420830cd2c51b834403")
(setf (get cgx_driver::RobotGetAllDAInput :datatype-) "cgx_driver/RobotGetAllDAInput")
(setf (get cgx_driver::RobotGetAllDAInput :request) cgx_driver::RobotGetAllDAInputRequest)
(setf (get cgx_driver::RobotGetAllDAInput :response) cgx_driver::RobotGetAllDAInputResponse)

(defmethod cgx_driver::RobotGetAllDAInputRequest
  (:response () (instance cgx_driver::RobotGetAllDAInputResponse :init)))

(setf (get cgx_driver::RobotGetAllDAInputRequest :md5sum-) "cba808cbeaab4420830cd2c51b834403")
(setf (get cgx_driver::RobotGetAllDAInputRequest :datatype-) "cgx_driver/RobotGetAllDAInputRequest")
(setf (get cgx_driver::RobotGetAllDAInputRequest :definition-)
      "# RobotGetAllDAInput.srv
---
bool[8] controllerDI
bool[8] controllerCI
float32[3] controllerAI
bool[2] toolDI
float32[2] toolAI
int16 ret
string message
")

(setf (get cgx_driver::RobotGetAllDAInputResponse :md5sum-) "cba808cbeaab4420830cd2c51b834403")
(setf (get cgx_driver::RobotGetAllDAInputResponse :datatype-) "cgx_driver/RobotGetAllDAInputResponse")
(setf (get cgx_driver::RobotGetAllDAInputResponse :definition-)
      "# RobotGetAllDAInput.srv
---
bool[8] controllerDI
bool[8] controllerCI
float32[3] controllerAI
bool[2] toolDI
float32[2] toolAI
int16 ret
string message
")



(provide :cgx_driver/RobotGetAllDAInput "cba808cbeaab4420830cd2c51b834403")


