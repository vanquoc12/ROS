;; Auto-generated. Do not edit!


(when (boundp 'waypoints::waypoint_group)
  (if (not (find-package "WAYPOINTS"))
    (make-package "WAYPOINTS"))
  (shadow 'waypoint_group (find-package "WAYPOINTS")))
(unless (find-package "WAYPOINTS::WAYPOINT_GROUP")
  (make-package "WAYPOINTS::WAYPOINT_GROUP"))

(in-package "ROS")
;;//! \htmlinclude waypoint_group.msg.html


(defclass waypoints::waypoint_group
  :super ros::object
  :slots (_name _wp_list ))

(defmethod waypoints::waypoint_group
  (:init
   (&key
    ((:name __name) "")
    ((:wp_list __wp_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _wp_list __wp_list)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:wp_list
   (&optional __wp_list)
   (if __wp_list (setq _wp_list __wp_list)) _wp_list)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string[] _wp_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _wp_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string[] _wp_list
     (write-long (length _wp_list) s)
     (dolist (elem _wp_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _wp_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wp_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _wp_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get waypoints::waypoint_group :md5sum-) "c03d3488d6139e5ffcdaeff205e40b93")
(setf (get waypoints::waypoint_group :datatype-) "waypoints/waypoint_group")
(setf (get waypoints::waypoint_group :definition-)
      "string name
string[] wp_list

")



(provide :waypoints/waypoint_group "c03d3488d6139e5ffcdaeff205e40b93")


