;; Auto-generated. Do not edit!


(when (boundp 'waypoints::Delete_Wp)
  (if (not (find-package "WAYPOINTS"))
    (make-package "WAYPOINTS"))
  (shadow 'Delete_Wp (find-package "WAYPOINTS")))
(unless (find-package "WAYPOINTS::DELETE_WP")
  (make-package "WAYPOINTS::DELETE_WP"))
(unless (find-package "WAYPOINTS::DELETE_WPREQUEST")
  (make-package "WAYPOINTS::DELETE_WPREQUEST"))
(unless (find-package "WAYPOINTS::DELETE_WPRESPONSE")
  (make-package "WAYPOINTS::DELETE_WPRESPONSE"))

(in-package "ROS")





(defclass waypoints::Delete_WpRequest
  :super ros::object
  :slots (_wp_name ))

(defmethod waypoints::Delete_WpRequest
  (:init
   (&key
    ((:wp_name __wp_name) "")
    )
   (send-super :init)
   (setq _wp_name (string __wp_name))
   self)
  (:wp_name
   (&optional __wp_name)
   (if __wp_name (setq _wp_name __wp_name)) _wp_name)
  (:serialization-length
   ()
   (+
    ;; string _wp_name
    4 (length _wp_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wp_name
       (write-long (length _wp_name) s) (princ _wp_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wp_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wp_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass waypoints::Delete_WpResponse
  :super ros::object
  :slots (_success ))

(defmethod waypoints::Delete_WpResponse
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

(defclass waypoints::Delete_Wp
  :super ros::object
  :slots ())

(setf (get waypoints::Delete_Wp :md5sum-) "586d8f413500dd2c0010cf7506a3071c")
(setf (get waypoints::Delete_Wp :datatype-) "waypoints/Delete_Wp")
(setf (get waypoints::Delete_Wp :request) waypoints::Delete_WpRequest)
(setf (get waypoints::Delete_Wp :response) waypoints::Delete_WpResponse)

(defmethod waypoints::Delete_WpRequest
  (:response () (instance waypoints::Delete_WpResponse :init)))

(setf (get waypoints::Delete_WpRequest :md5sum-) "586d8f413500dd2c0010cf7506a3071c")
(setf (get waypoints::Delete_WpRequest :datatype-) "waypoints/Delete_WpRequest")
(setf (get waypoints::Delete_WpRequest :definition-)
      "string  wp_name               
---
bool success     
")

(setf (get waypoints::Delete_WpResponse :md5sum-) "586d8f413500dd2c0010cf7506a3071c")
(setf (get waypoints::Delete_WpResponse :datatype-) "waypoints/Delete_WpResponse")
(setf (get waypoints::Delete_WpResponse :definition-)
      "string  wp_name               
---
bool success     
")



(provide :waypoints/Delete_Wp "586d8f413500dd2c0010cf7506a3071c")


