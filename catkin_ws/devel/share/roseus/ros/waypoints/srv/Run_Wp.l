;; Auto-generated. Do not edit!


(when (boundp 'waypoints::Run_Wp)
  (if (not (find-package "WAYPOINTS"))
    (make-package "WAYPOINTS"))
  (shadow 'Run_Wp (find-package "WAYPOINTS")))
(unless (find-package "WAYPOINTS::RUN_WP")
  (make-package "WAYPOINTS::RUN_WP"))
(unless (find-package "WAYPOINTS::RUN_WPREQUEST")
  (make-package "WAYPOINTS::RUN_WPREQUEST"))
(unless (find-package "WAYPOINTS::RUN_WPRESPONSE")
  (make-package "WAYPOINTS::RUN_WPRESPONSE"))

(in-package "ROS")





(defclass waypoints::Run_WpRequest
  :super ros::object
  :slots (_wp_name _gr_name _loop _index ))

(defmethod waypoints::Run_WpRequest
  (:init
   (&key
    ((:wp_name __wp_name) "")
    ((:gr_name __gr_name) "")
    ((:loop __loop) nil)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _wp_name (string __wp_name))
   (setq _gr_name (string __gr_name))
   (setq _loop __loop)
   (setq _index (round __index))
   self)
  (:wp_name
   (&optional __wp_name)
   (if __wp_name (setq _wp_name __wp_name)) _wp_name)
  (:gr_name
   (&optional __gr_name)
   (if __gr_name (setq _gr_name __gr_name)) _gr_name)
  (:loop
   (&optional (__loop :null))
   (if (not (eq __loop :null)) (setq _loop __loop)) _loop)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; string _wp_name
    4 (length _wp_name)
    ;; string _gr_name
    4 (length _gr_name)
    ;; bool _loop
    1
    ;; int16 _index
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _wp_name
       (write-long (length _wp_name) s) (princ _wp_name s)
     ;; string _gr_name
       (write-long (length _gr_name) s) (princ _gr_name s)
     ;; bool _loop
       (if _loop (write-byte -1 s) (write-byte 0 s))
     ;; int16 _index
       (write-word _index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _wp_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wp_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gr_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gr_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _loop
     (setq _loop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass waypoints::Run_WpResponse
  :super ros::object
  :slots (_success ))

(defmethod waypoints::Run_WpResponse
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

(defclass waypoints::Run_Wp
  :super ros::object
  :slots ())

(setf (get waypoints::Run_Wp :md5sum-) "be247a9e980f86ec8f691ab70288ad8a")
(setf (get waypoints::Run_Wp :datatype-) "waypoints/Run_Wp")
(setf (get waypoints::Run_Wp :request) waypoints::Run_WpRequest)
(setf (get waypoints::Run_Wp :response) waypoints::Run_WpResponse)

(defmethod waypoints::Run_WpRequest
  (:response () (instance waypoints::Run_WpResponse :init)))

(setf (get waypoints::Run_WpRequest :md5sum-) "be247a9e980f86ec8f691ab70288ad8a")
(setf (get waypoints::Run_WpRequest :datatype-) "waypoints/Run_WpRequest")
(setf (get waypoints::Run_WpRequest :definition-)
      "string  wp_name
string  gr_name
bool    loop
int16   index         
---
bool success     
")

(setf (get waypoints::Run_WpResponse :md5sum-) "be247a9e980f86ec8f691ab70288ad8a")
(setf (get waypoints::Run_WpResponse :datatype-) "waypoints/Run_WpResponse")
(setf (get waypoints::Run_WpResponse :definition-)
      "string  wp_name
string  gr_name
bool    loop
int16   index         
---
bool success     
")



(provide :waypoints/Run_Wp "be247a9e980f86ec8f691ab70288ad8a")


