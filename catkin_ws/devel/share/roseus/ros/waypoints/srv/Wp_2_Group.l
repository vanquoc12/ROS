;; Auto-generated. Do not edit!


(when (boundp 'waypoints::Wp_2_Group)
  (if (not (find-package "WAYPOINTS"))
    (make-package "WAYPOINTS"))
  (shadow 'Wp_2_Group (find-package "WAYPOINTS")))
(unless (find-package "WAYPOINTS::WP_2_GROUP")
  (make-package "WAYPOINTS::WP_2_GROUP"))
(unless (find-package "WAYPOINTS::WP_2_GROUPREQUEST")
  (make-package "WAYPOINTS::WP_2_GROUPREQUEST"))
(unless (find-package "WAYPOINTS::WP_2_GROUPRESPONSE")
  (make-package "WAYPOINTS::WP_2_GROUPRESPONSE"))

(in-package "ROS")





(defclass waypoints::Wp_2_GroupRequest
  :super ros::object
  :slots (_option _group_name _wp_name _pos ))

(defmethod waypoints::Wp_2_GroupRequest
  (:init
   (&key
    ((:option __option) "")
    ((:group_name __group_name) "")
    ((:wp_name __wp_name) "")
    ((:pos __pos) 0)
    )
   (send-super :init)
   (setq _option (string __option))
   (setq _group_name (string __group_name))
   (setq _wp_name (string __wp_name))
   (setq _pos (round __pos))
   self)
  (:option
   (&optional __option)
   (if __option (setq _option __option)) _option)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:wp_name
   (&optional __wp_name)
   (if __wp_name (setq _wp_name __wp_name)) _wp_name)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; string _option
    4 (length _option)
    ;; string _group_name
    4 (length _group_name)
    ;; string _wp_name
    4 (length _wp_name)
    ;; int16 _pos
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _option
       (write-long (length _option) s) (princ _option s)
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; string _wp_name
       (write-long (length _wp_name) s) (princ _wp_name s)
     ;; int16 _pos
       (write-word _pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _option
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _option (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _wp_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wp_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _pos
     (setq _pos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass waypoints::Wp_2_GroupResponse
  :super ros::object
  :slots (_success ))

(defmethod waypoints::Wp_2_GroupResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass waypoints::Wp_2_Group
  :super ros::object
  :slots ())

(setf (get waypoints::Wp_2_Group :md5sum-) "09d585458d996891c104c93e1abec1de")
(setf (get waypoints::Wp_2_Group :datatype-) "waypoints/Wp_2_Group")
(setf (get waypoints::Wp_2_Group :request) waypoints::Wp_2_GroupRequest)
(setf (get waypoints::Wp_2_Group :response) waypoints::Wp_2_GroupResponse)

(defmethod waypoints::Wp_2_GroupRequest
  (:response () (instance waypoints::Wp_2_GroupResponse :init)))

(setf (get waypoints::Wp_2_GroupRequest :md5sum-) "09d585458d996891c104c93e1abec1de")
(setf (get waypoints::Wp_2_GroupRequest :datatype-) "waypoints/Wp_2_GroupRequest")
(setf (get waypoints::Wp_2_GroupRequest :definition-)
      "string  option
string  group_name
string  wp_name
int16  pos             
---
bool success     
")

(setf (get waypoints::Wp_2_GroupResponse :md5sum-) "09d585458d996891c104c93e1abec1de")
(setf (get waypoints::Wp_2_GroupResponse :datatype-) "waypoints/Wp_2_GroupResponse")
(setf (get waypoints::Wp_2_GroupResponse :definition-)
      "string  option
string  group_name
string  wp_name
int16  pos             
---
bool success     
")



(provide :waypoints/Wp_2_Group "09d585458d996891c104c93e1abec1de")


