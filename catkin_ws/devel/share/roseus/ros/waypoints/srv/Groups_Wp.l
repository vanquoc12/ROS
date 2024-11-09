;; Auto-generated. Do not edit!


(when (boundp 'waypoints::Groups_Wp)
  (if (not (find-package "WAYPOINTS"))
    (make-package "WAYPOINTS"))
  (shadow 'Groups_Wp (find-package "WAYPOINTS")))
(unless (find-package "WAYPOINTS::GROUPS_WP")
  (make-package "WAYPOINTS::GROUPS_WP"))
(unless (find-package "WAYPOINTS::GROUPS_WPREQUEST")
  (make-package "WAYPOINTS::GROUPS_WPREQUEST"))
(unless (find-package "WAYPOINTS::GROUPS_WPRESPONSE")
  (make-package "WAYPOINTS::GROUPS_WPRESPONSE"))

(in-package "ROS")





(defclass waypoints::Groups_WpRequest
  :super ros::object
  :slots (_option _group_name ))

(defmethod waypoints::Groups_WpRequest
  (:init
   (&key
    ((:option __option) "")
    ((:group_name __group_name) "")
    )
   (send-super :init)
   (setq _option (string __option))
   (setq _group_name (string __group_name))
   self)
  (:option
   (&optional __option)
   (if __option (setq _option __option)) _option)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:serialization-length
   ()
   (+
    ;; string _option
    4 (length _option)
    ;; string _group_name
    4 (length _group_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _option
       (write-long (length _option) s) (princ _option s)
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _option
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _option (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass waypoints::Groups_WpResponse
  :super ros::object
  :slots (_success ))

(defmethod waypoints::Groups_WpResponse
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

(defclass waypoints::Groups_Wp
  :super ros::object
  :slots ())

(setf (get waypoints::Groups_Wp :md5sum-) "15bacb1518f81a33d47562f4809b35a3")
(setf (get waypoints::Groups_Wp :datatype-) "waypoints/Groups_Wp")
(setf (get waypoints::Groups_Wp :request) waypoints::Groups_WpRequest)
(setf (get waypoints::Groups_Wp :response) waypoints::Groups_WpResponse)

(defmethod waypoints::Groups_WpRequest
  (:response () (instance waypoints::Groups_WpResponse :init)))

(setf (get waypoints::Groups_WpRequest :md5sum-) "15bacb1518f81a33d47562f4809b35a3")
(setf (get waypoints::Groups_WpRequest :datatype-) "waypoints/Groups_WpRequest")
(setf (get waypoints::Groups_WpRequest :definition-)
      "string  option               
string  group_name               
---
bool success     
")

(setf (get waypoints::Groups_WpResponse :md5sum-) "15bacb1518f81a33d47562f4809b35a3")
(setf (get waypoints::Groups_WpResponse :datatype-) "waypoints/Groups_WpResponse")
(setf (get waypoints::Groups_WpResponse :definition-)
      "string  option               
string  group_name               
---
bool success     
")



(provide :waypoints/Groups_Wp "15bacb1518f81a33d47562f4809b35a3")


