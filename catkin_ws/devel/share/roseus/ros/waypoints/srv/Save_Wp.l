;; Auto-generated. Do not edit!


(when (boundp 'waypoints::Save_Wp)
  (if (not (find-package "WAYPOINTS"))
    (make-package "WAYPOINTS"))
  (shadow 'Save_Wp (find-package "WAYPOINTS")))
(unless (find-package "WAYPOINTS::SAVE_WP")
  (make-package "WAYPOINTS::SAVE_WP"))
(unless (find-package "WAYPOINTS::SAVE_WPREQUEST")
  (make-package "WAYPOINTS::SAVE_WPREQUEST"))
(unless (find-package "WAYPOINTS::SAVE_WPRESPONSE")
  (make-package "WAYPOINTS::SAVE_WPRESPONSE"))

(in-package "ROS")





(defclass waypoints::Save_WpRequest
  :super ros::object
  :slots (_file_name ))

(defmethod waypoints::Save_WpRequest
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

(defclass waypoints::Save_WpResponse
  :super ros::object
  :slots (_success ))

(defmethod waypoints::Save_WpResponse
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

(defclass waypoints::Save_Wp
  :super ros::object
  :slots ())

(setf (get waypoints::Save_Wp :md5sum-) "3ece68834e0f1a84f61883f885f71f9f")
(setf (get waypoints::Save_Wp :datatype-) "waypoints/Save_Wp")
(setf (get waypoints::Save_Wp :request) waypoints::Save_WpRequest)
(setf (get waypoints::Save_Wp :response) waypoints::Save_WpResponse)

(defmethod waypoints::Save_WpRequest
  (:response () (instance waypoints::Save_WpResponse :init)))

(setf (get waypoints::Save_WpRequest :md5sum-) "3ece68834e0f1a84f61883f885f71f9f")
(setf (get waypoints::Save_WpRequest :datatype-) "waypoints/Save_WpRequest")
(setf (get waypoints::Save_WpRequest :definition-)
      "string  file_name               
---
bool success     

")

(setf (get waypoints::Save_WpResponse :md5sum-) "3ece68834e0f1a84f61883f885f71f9f")
(setf (get waypoints::Save_WpResponse :datatype-) "waypoints/Save_WpResponse")
(setf (get waypoints::Save_WpResponse :definition-)
      "string  file_name               
---
bool success     

")



(provide :waypoints/Save_Wp "3ece68834e0f1a84f61883f885f71f9f")


