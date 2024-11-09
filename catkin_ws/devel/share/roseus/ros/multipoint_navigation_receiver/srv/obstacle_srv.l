;; Auto-generated. Do not edit!


(when (boundp 'multipoint_navigation_receiver::obstacle_srv)
  (if (not (find-package "MULTIPOINT_NAVIGATION_RECEIVER"))
    (make-package "MULTIPOINT_NAVIGATION_RECEIVER"))
  (shadow 'obstacle_srv (find-package "MULTIPOINT_NAVIGATION_RECEIVER")))
(unless (find-package "MULTIPOINT_NAVIGATION_RECEIVER::OBSTACLE_SRV")
  (make-package "MULTIPOINT_NAVIGATION_RECEIVER::OBSTACLE_SRV"))
(unless (find-package "MULTIPOINT_NAVIGATION_RECEIVER::OBSTACLE_SRVREQUEST")
  (make-package "MULTIPOINT_NAVIGATION_RECEIVER::OBSTACLE_SRVREQUEST"))
(unless (find-package "MULTIPOINT_NAVIGATION_RECEIVER::OBSTACLE_SRVRESPONSE")
  (make-package "MULTIPOINT_NAVIGATION_RECEIVER::OBSTACLE_SRVRESPONSE"))

(in-package "ROS")





(defclass multipoint_navigation_receiver::obstacle_srvRequest
  :super ros::object
  :slots (_positionx _positiony ))

(defmethod multipoint_navigation_receiver::obstacle_srvRequest
  (:init
   (&key
    ((:positionx __positionx) 0.0)
    ((:positiony __positiony) 0.0)
    )
   (send-super :init)
   (setq _positionx (float __positionx))
   (setq _positiony (float __positiony))
   self)
  (:positionx
   (&optional __positionx)
   (if __positionx (setq _positionx __positionx)) _positionx)
  (:positiony
   (&optional __positiony)
   (if __positiony (setq _positiony __positiony)) _positiony)
  (:serialization-length
   ()
   (+
    ;; float32 _positionx
    4
    ;; float32 _positiony
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _positionx
       (sys::poke _positionx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _positiony
       (sys::poke _positiony (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _positionx
     (setq _positionx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _positiony
     (setq _positiony (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass multipoint_navigation_receiver::obstacle_srvResponse
  :super ros::object
  :slots (_obstacle_probability ))

(defmethod multipoint_navigation_receiver::obstacle_srvResponse
  (:init
   (&key
    ((:obstacle_probability __obstacle_probability) 0)
    )
   (send-super :init)
   (setq _obstacle_probability (round __obstacle_probability))
   self)
  (:obstacle_probability
   (&optional __obstacle_probability)
   (if __obstacle_probability (setq _obstacle_probability __obstacle_probability)) _obstacle_probability)
  (:serialization-length
   ()
   (+
    ;; int8 _obstacle_probability
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _obstacle_probability
       (write-byte _obstacle_probability s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _obstacle_probability
     (setq _obstacle_probability (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _obstacle_probability 127) (setq _obstacle_probability (- _obstacle_probability 256)))
   ;;
   self)
  )

(defclass multipoint_navigation_receiver::obstacle_srv
  :super ros::object
  :slots ())

(setf (get multipoint_navigation_receiver::obstacle_srv :md5sum-) "cde20407033a78fab80407a8d3277159")
(setf (get multipoint_navigation_receiver::obstacle_srv :datatype-) "multipoint_navigation_receiver/obstacle_srv")
(setf (get multipoint_navigation_receiver::obstacle_srv :request) multipoint_navigation_receiver::obstacle_srvRequest)
(setf (get multipoint_navigation_receiver::obstacle_srv :response) multipoint_navigation_receiver::obstacle_srvResponse)

(defmethod multipoint_navigation_receiver::obstacle_srvRequest
  (:response () (instance multipoint_navigation_receiver::obstacle_srvResponse :init)))

(setf (get multipoint_navigation_receiver::obstacle_srvRequest :md5sum-) "cde20407033a78fab80407a8d3277159")
(setf (get multipoint_navigation_receiver::obstacle_srvRequest :datatype-) "multipoint_navigation_receiver/obstacle_srvRequest")
(setf (get multipoint_navigation_receiver::obstacle_srvRequest :definition-)
      "float32 positionx
float32 positiony
---
int8 obstacle_probability 
")

(setf (get multipoint_navigation_receiver::obstacle_srvResponse :md5sum-) "cde20407033a78fab80407a8d3277159")
(setf (get multipoint_navigation_receiver::obstacle_srvResponse :datatype-) "multipoint_navigation_receiver/obstacle_srvResponse")
(setf (get multipoint_navigation_receiver::obstacle_srvResponse :definition-)
      "float32 positionx
float32 positiony
---
int8 obstacle_probability 
")



(provide :multipoint_navigation_receiver/obstacle_srv "cde20407033a78fab80407a8d3277159")


