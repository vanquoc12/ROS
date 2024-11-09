;; Auto-generated. Do not edit!


(when (boundp 'multipoint_navigation_receiver::set_goal_srv)
  (if (not (find-package "MULTIPOINT_NAVIGATION_RECEIVER"))
    (make-package "MULTIPOINT_NAVIGATION_RECEIVER"))
  (shadow 'set_goal_srv (find-package "MULTIPOINT_NAVIGATION_RECEIVER")))
(unless (find-package "MULTIPOINT_NAVIGATION_RECEIVER::SET_GOAL_SRV")
  (make-package "MULTIPOINT_NAVIGATION_RECEIVER::SET_GOAL_SRV"))
(unless (find-package "MULTIPOINT_NAVIGATION_RECEIVER::SET_GOAL_SRVREQUEST")
  (make-package "MULTIPOINT_NAVIGATION_RECEIVER::SET_GOAL_SRVREQUEST"))
(unless (find-package "MULTIPOINT_NAVIGATION_RECEIVER::SET_GOAL_SRVRESPONSE")
  (make-package "MULTIPOINT_NAVIGATION_RECEIVER::SET_GOAL_SRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass multipoint_navigation_receiver::set_goal_srvRequest
  :super ros::object
  :slots (_positions _quaternions ))

(defmethod multipoint_navigation_receiver::set_goal_srvRequest
  (:init
   (&key
    ((:positions __positions) ())
    ((:quaternions __quaternions) ())
    )
   (send-super :init)
   (setq _positions __positions)
   (setq _quaternions __quaternions)
   self)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:quaternions
   (&rest __quaternions)
   (if (keywordp (car __quaternions))
       (send* _quaternions __quaternions)
     (progn
       (if __quaternions (setq _quaternions (car __quaternions)))
       _quaternions)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ;; geometry_msgs/Quaternion[] _quaternions
    (apply #'+ (send-all _quaternions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Quaternion[] _quaternions
     (write-long (length _quaternions) s)
     (dolist (elem _quaternions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Quaternion[] _quaternions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _quaternions (let (r) (dotimes (i n) (push (instance geometry_msgs::Quaternion :init) r)) r))
     (dolist (elem- _quaternions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass multipoint_navigation_receiver::set_goal_srvResponse
  :super ros::object
  :slots (_result ))

(defmethod multipoint_navigation_receiver::set_goal_srvResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass multipoint_navigation_receiver::set_goal_srv
  :super ros::object
  :slots ())

(setf (get multipoint_navigation_receiver::set_goal_srv :md5sum-) "343d08ce7c6d1af4bde14bcd847ac4f3")
(setf (get multipoint_navigation_receiver::set_goal_srv :datatype-) "multipoint_navigation_receiver/set_goal_srv")
(setf (get multipoint_navigation_receiver::set_goal_srv :request) multipoint_navigation_receiver::set_goal_srvRequest)
(setf (get multipoint_navigation_receiver::set_goal_srv :response) multipoint_navigation_receiver::set_goal_srvResponse)

(defmethod multipoint_navigation_receiver::set_goal_srvRequest
  (:response () (instance multipoint_navigation_receiver::set_goal_srvResponse :init)))

(setf (get multipoint_navigation_receiver::set_goal_srvRequest :md5sum-) "343d08ce7c6d1af4bde14bcd847ac4f3")
(setf (get multipoint_navigation_receiver::set_goal_srvRequest :datatype-) "multipoint_navigation_receiver/set_goal_srvRequest")
(setf (get multipoint_navigation_receiver::set_goal_srvRequest :definition-)
      "geometry_msgs/Vector3[] positions
geometry_msgs/Quaternion[] quaternions

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
string result
")

(setf (get multipoint_navigation_receiver::set_goal_srvResponse :md5sum-) "343d08ce7c6d1af4bde14bcd847ac4f3")
(setf (get multipoint_navigation_receiver::set_goal_srvResponse :datatype-) "multipoint_navigation_receiver/set_goal_srvResponse")
(setf (get multipoint_navigation_receiver::set_goal_srvResponse :definition-)
      "geometry_msgs/Vector3[] positions
geometry_msgs/Quaternion[] quaternions

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
string result
")



(provide :multipoint_navigation_receiver/set_goal_srv "343d08ce7c6d1af4bde14bcd847ac4f3")


