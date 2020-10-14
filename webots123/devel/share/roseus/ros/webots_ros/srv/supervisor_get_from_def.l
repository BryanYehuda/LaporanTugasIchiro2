;; Auto-generated. Do not edit!


(when (boundp 'webots_ros::supervisor_get_from_def)
  (if (not (find-package "WEBOTS_ROS"))
    (make-package "WEBOTS_ROS"))
  (shadow 'supervisor_get_from_def (find-package "WEBOTS_ROS")))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_DEF")
  (make-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_DEF"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_DEFREQUEST")
  (make-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_DEFREQUEST"))
(unless (find-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_DEFRESPONSE")
  (make-package "WEBOTS_ROS::SUPERVISOR_GET_FROM_DEFRESPONSE"))

(in-package "ROS")





(defclass webots_ros::supervisor_get_from_defRequest
  :super ros::object
  :slots (_name ))

(defmethod webots_ros::supervisor_get_from_defRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass webots_ros::supervisor_get_from_defResponse
  :super ros::object
  :slots (_node ))

(defmethod webots_ros::supervisor_get_from_defResponse
  (:init
   (&key
    ((:node __node) 0)
    )
   (send-super :init)
   (setq _node (round __node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; uint64 _node
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _node
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _node (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _node) (= (length (_node . bv)) 2)) ;; bignum
              (write-long (ash (elt (_node . bv) 0) 0) s)
              (write-long (ash (elt (_node . bv) 1) -1) s))
             ((and (class _node) (= (length (_node . bv)) 1)) ;; big1
              (write-long (elt (_node . bv) 0) s)
              (write-long (if (>= _node 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _node s)(write-long (if (>= _node 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _node
     
#+(or :alpha :irix6 :x86_64)
      (setf _node (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _node (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass webots_ros::supervisor_get_from_def
  :super ros::object
  :slots ())

(setf (get webots_ros::supervisor_get_from_def :md5sum-) "ac26007a2c83bd1b38318cda0f4ce627")
(setf (get webots_ros::supervisor_get_from_def :datatype-) "webots_ros/supervisor_get_from_def")
(setf (get webots_ros::supervisor_get_from_def :request) webots_ros::supervisor_get_from_defRequest)
(setf (get webots_ros::supervisor_get_from_def :response) webots_ros::supervisor_get_from_defResponse)

(defmethod webots_ros::supervisor_get_from_defRequest
  (:response () (instance webots_ros::supervisor_get_from_defResponse :init)))

(setf (get webots_ros::supervisor_get_from_defRequest :md5sum-) "ac26007a2c83bd1b38318cda0f4ce627")
(setf (get webots_ros::supervisor_get_from_defRequest :datatype-) "webots_ros/supervisor_get_from_defRequest")
(setf (get webots_ros::supervisor_get_from_defRequest :definition-)
      "string name
---
uint64 node

")

(setf (get webots_ros::supervisor_get_from_defResponse :md5sum-) "ac26007a2c83bd1b38318cda0f4ce627")
(setf (get webots_ros::supervisor_get_from_defResponse :datatype-) "webots_ros/supervisor_get_from_defResponse")
(setf (get webots_ros::supervisor_get_from_defResponse :definition-)
      "string name
---
uint64 node

")



(provide :webots_ros/supervisor_get_from_def "ac26007a2c83bd1b38318cda0f4ce627")


