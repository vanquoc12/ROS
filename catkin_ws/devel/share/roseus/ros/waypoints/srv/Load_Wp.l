;; Auto-generated. Do not edit!


(when (boundp 'waypoints::Load_Wp)
  (if (not (find-package "WAYPOINTS"))
    (make-package "WAYPOINTS"))
  (shadow 'Load_Wp (find-package "WAYPOINTS")))
(unless (find-package "WAYPOINTS::LOAD_WP")
  (make-package "WAYPOINTS::LOAD_WP"))
(unless (find-package "WAYPOINTS::LOAD_WPREQUEST")
  (make-package "WAYPOINTS::LOAD_WPREQUEST"))
(unless (find-package "WAYPOINTS::LOAD_WPRESPONSE")
  (make-package "WAYPOINTS::LOAD_WPRESPONSE"))

(in-package "ROS")





(defclass waypoints::Load_WpRequest
  :super ros::object
  :slots (_file_name ))

(defmethod waypoints::Load_WpRequest
  (:init
   (&key
    ((:file_name __file_name) "")
    )
   (send-super :init)
   (setq _file_name (string __file_name))
   self)
  (:file_name
   (&optional __file_name)
   (if __file_name (setq _file_name __file_name)) _file_name)
  (:serialization-length
   ()
   (+
    ;; string _file_name
    4 (length _file_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _file_name
       (write-long (length _file_name) s) (princ _file_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _file_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _file_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass waypoints::Load_WpResponse
  :super ros::object
  :slots (_success ))

(defmethod waypoints::Load_WpResponse
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

(defclass waypoints::Load_Wp
  :super ros::object
  :slots ())

(setf (get waypoints::Load_Wp :md5sum-) "3ece68834e0f1a84f61883f885f71f9f")
(setf (get waypoints::Load_Wp :datatype-) "waypoints/Load_Wp")
(setf (get waypoints::Load_Wp :request) waypoints::Load_WpRequest)
(setf (get waypoints::Load_Wp :response) waypoints::Load_WpResponse)

(defmethod waypoints::Load_WpRequest
  (:response () (instance waypoints::Load_WpResponse :init)))

(setf (get waypoints::Load_WpRequest :md5sum-) "3ece68834e0f1a84f61883f885f71f9f")
(setf (get waypoints::Load_WpRequest :datatype-) "waypoints/Load_WpRequest")
(setf (get waypoints::Load_WpRequest :definition-)
      "string  file_name               
---
bool success     
")

(setf (get waypoints::Load_WpResponse :md5sum-) "3ece68834e0f1a84f61883f885f71f9f")
(setf (get waypoints::Load_WpResponse :datatype-) "waypoints/Load_WpResponse")
(setf (get waypoints::Load_WpResponse :definition-)
      "string  file_name               
---
bool success     
")



(provide :waypoints/Load_Wp "3ece68834e0f1a84f61883f885f71f9f")


