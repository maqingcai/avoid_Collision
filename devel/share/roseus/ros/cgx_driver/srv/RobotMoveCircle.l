;; Auto-generated. Do not edit!


(when (boundp 'cgx_driver::RobotMoveCircle)
  (if (not (find-package "CGX_DRIVER"))
    (make-package "CGX_DRIVER"))
  (shadow 'RobotMoveCircle (find-package "CGX_DRIVER")))
(unless (find-package "CGX_DRIVER::ROBOTMOVECIRCLE")
  (make-package "CGX_DRIVER::ROBOTMOVECIRCLE"))
(unless (find-package "CGX_DRIVER::ROBOTMOVECIRCLEREQUEST")
  (make-package "CGX_DRIVER::ROBOTMOVECIRCLEREQUEST"))
(unless (find-package "CGX_DRIVER::ROBOTMOVECIRCLERESPONSE")
  (make-package "CGX_DRIVER::ROBOTMOVECIRCLERESPONSE"))

(in-package "ROS")





(defclass cgx_driver::RobotMoveCircleRequest
  :super ros::object
  :slots (_mid_pose _mid_jointpos _mid_speed _mid_acc _mid_coordinate_type _mid_point_trans_type _end_pose _end_jointpos _end_speed _end_acc _end_coordinate_type _end_point_trans_type _end_is_block ))

(defmethod cgx_driver::RobotMoveCircleRequest
  (:init
   (&key
    ((:mid_pose __mid_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mid_jointpos __mid_jointpos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mid_speed __mid_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mid_acc __mid_acc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mid_coordinate_type __mid_coordinate_type) "")
    ((:mid_point_trans_type __mid_point_trans_type) "")
    ((:end_pose __end_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:end_jointpos __end_jointpos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:end_speed __end_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:end_acc __end_acc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:end_coordinate_type __end_coordinate_type) "")
    ((:end_point_trans_type __end_point_trans_type) "")
    ((:end_is_block __end_is_block) 0)
    )
   (send-super :init)
   (setq _mid_pose __mid_pose)
   (setq _mid_jointpos __mid_jointpos)
   (setq _mid_speed __mid_speed)
   (setq _mid_acc __mid_acc)
   (setq _mid_coordinate_type (string __mid_coordinate_type))
   (setq _mid_point_trans_type (string __mid_point_trans_type))
   (setq _end_pose __end_pose)
   (setq _end_jointpos __end_jointpos)
   (setq _end_speed __end_speed)
   (setq _end_acc __end_acc)
   (setq _end_coordinate_type (string __end_coordinate_type))
   (setq _end_point_trans_type (string __end_point_trans_type))
   (setq _end_is_block (round __end_is_block))
   self)
  (:mid_pose
   (&optional __mid_pose)
   (if __mid_pose (setq _mid_pose __mid_pose)) _mid_pose)
  (:mid_jointpos
   (&optional __mid_jointpos)
   (if __mid_jointpos (setq _mid_jointpos __mid_jointpos)) _mid_jointpos)
  (:mid_speed
   (&optional __mid_speed)
   (if __mid_speed (setq _mid_speed __mid_speed)) _mid_speed)
  (:mid_acc
   (&optional __mid_acc)
   (if __mid_acc (setq _mid_acc __mid_acc)) _mid_acc)
  (:mid_coordinate_type
   (&optional __mid_coordinate_type)
   (if __mid_coordinate_type (setq _mid_coordinate_type __mid_coordinate_type)) _mid_coordinate_type)
  (:mid_point_trans_type
   (&optional __mid_point_trans_type)
   (if __mid_point_trans_type (setq _mid_point_trans_type __mid_point_trans_type)) _mid_point_trans_type)
  (:end_pose
   (&optional __end_pose)
   (if __end_pose (setq _end_pose __end_pose)) _end_pose)
  (:end_jointpos
   (&optional __end_jointpos)
   (if __end_jointpos (setq _end_jointpos __end_jointpos)) _end_jointpos)
  (:end_speed
   (&optional __end_speed)
   (if __end_speed (setq _end_speed __end_speed)) _end_speed)
  (:end_acc
   (&optional __end_acc)
   (if __end_acc (setq _end_acc __end_acc)) _end_acc)
  (:end_coordinate_type
   (&optional __end_coordinate_type)
   (if __end_coordinate_type (setq _end_coordinate_type __end_coordinate_type)) _end_coordinate_type)
  (:end_point_trans_type
   (&optional __end_point_trans_type)
   (if __end_point_trans_type (setq _end_point_trans_type __end_point_trans_type)) _end_point_trans_type)
  (:end_is_block
   (&optional __end_is_block)
   (if __end_is_block (setq _end_is_block __end_is_block)) _end_is_block)
  (:serialization-length
   ()
   (+
    ;; float32[] _mid_pose
    (* 4    (length _mid_pose)) 4
    ;; float32[] _mid_jointpos
    (* 4    (length _mid_jointpos)) 4
    ;; float32[] _mid_speed
    (* 4    (length _mid_speed)) 4
    ;; float32[] _mid_acc
    (* 4    (length _mid_acc)) 4
    ;; string _mid_coordinate_type
    4 (length _mid_coordinate_type)
    ;; string _mid_point_trans_type
    4 (length _mid_point_trans_type)
    ;; float32[] _end_pose
    (* 4    (length _end_pose)) 4
    ;; float32[] _end_jointpos
    (* 4    (length _end_jointpos)) 4
    ;; float32[] _end_speed
    (* 4    (length _end_speed)) 4
    ;; float32[] _end_acc
    (* 4    (length _end_acc)) 4
    ;; string _end_coordinate_type
    4 (length _end_coordinate_type)
    ;; string _end_point_trans_type
    4 (length _end_point_trans_type)
    ;; int16 _end_is_block
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _mid_pose
     (write-long (length _mid_pose) s)
     (dotimes (i (length _mid_pose))
       (sys::poke (elt _mid_pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _mid_jointpos
     (write-long (length _mid_jointpos) s)
     (dotimes (i (length _mid_jointpos))
       (sys::poke (elt _mid_jointpos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _mid_speed
     (write-long (length _mid_speed) s)
     (dotimes (i (length _mid_speed))
       (sys::poke (elt _mid_speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _mid_acc
     (write-long (length _mid_acc) s)
     (dotimes (i (length _mid_acc))
       (sys::poke (elt _mid_acc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _mid_coordinate_type
       (write-long (length _mid_coordinate_type) s) (princ _mid_coordinate_type s)
     ;; string _mid_point_trans_type
       (write-long (length _mid_point_trans_type) s) (princ _mid_point_trans_type s)
     ;; float32[] _end_pose
     (write-long (length _end_pose) s)
     (dotimes (i (length _end_pose))
       (sys::poke (elt _end_pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _end_jointpos
     (write-long (length _end_jointpos) s)
     (dotimes (i (length _end_jointpos))
       (sys::poke (elt _end_jointpos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _end_speed
     (write-long (length _end_speed) s)
     (dotimes (i (length _end_speed))
       (sys::poke (elt _end_speed i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _end_acc
     (write-long (length _end_acc) s)
     (dotimes (i (length _end_acc))
       (sys::poke (elt _end_acc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _end_coordinate_type
       (write-long (length _end_coordinate_type) s) (princ _end_coordinate_type s)
     ;; string _end_point_trans_type
       (write-long (length _end_point_trans_type) s) (princ _end_point_trans_type s)
     ;; int16 _end_is_block
       (write-word _end_is_block s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _mid_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mid_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mid_pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _mid_jointpos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mid_jointpos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mid_jointpos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _mid_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mid_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mid_speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _mid_acc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mid_acc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mid_acc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _mid_coordinate_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mid_coordinate_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mid_point_trans_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mid_point_trans_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _end_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _end_jointpos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_jointpos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_jointpos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _end_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_speed i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _end_acc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _end_acc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _end_acc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _end_coordinate_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_coordinate_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_point_trans_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_point_trans_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _end_is_block
     (setq _end_is_block (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass cgx_driver::RobotMoveCircleResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod cgx_driver::RobotMoveCircleResponse
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

(defclass cgx_driver::RobotMoveCircle
  :super ros::object
  :slots ())

(setf (get cgx_driver::RobotMoveCircle :md5sum-) "f04f1ce85f111cec2d880bee47b328ac")
(setf (get cgx_driver::RobotMoveCircle :datatype-) "cgx_driver/RobotMoveCircle")
(setf (get cgx_driver::RobotMoveCircle :request) cgx_driver::RobotMoveCircleRequest)
(setf (get cgx_driver::RobotMoveCircle :response) cgx_driver::RobotMoveCircleResponse)

(defmethod cgx_driver::RobotMoveCircleRequest
  (:response () (instance cgx_driver::RobotMoveCircleResponse :init)))

(setf (get cgx_driver::RobotMoveCircleRequest :md5sum-) "f04f1ce85f111cec2d880bee47b328ac")
(setf (get cgx_driver::RobotMoveCircleRequest :datatype-) "cgx_driver/RobotMoveCircleRequest")
(setf (get cgx_driver::RobotMoveCircleRequest :definition-)
      "# RobotMoveCircle.srv
float32[] mid_pose
float32[] mid_jointpos
float32[] mid_speed
float32[] mid_acc
string mid_coordinate_type
string mid_point_trans_type
float32[] end_pose
float32[] end_jointpos
float32[] end_speed
float32[] end_acc
string end_coordinate_type
string end_point_trans_type
int16 end_is_block
---
int16 ret
string message
")

(setf (get cgx_driver::RobotMoveCircleResponse :md5sum-) "f04f1ce85f111cec2d880bee47b328ac")
(setf (get cgx_driver::RobotMoveCircleResponse :datatype-) "cgx_driver/RobotMoveCircleResponse")
(setf (get cgx_driver::RobotMoveCircleResponse :definition-)
      "# RobotMoveCircle.srv
float32[] mid_pose
float32[] mid_jointpos
float32[] mid_speed
float32[] mid_acc
string mid_coordinate_type
string mid_point_trans_type
float32[] end_pose
float32[] end_jointpos
float32[] end_speed
float32[] end_acc
string end_coordinate_type
string end_point_trans_type
int16 end_is_block
---
int16 ret
string message
")



(provide :cgx_driver/RobotMoveCircle "f04f1ce85f111cec2d880bee47b328ac")


