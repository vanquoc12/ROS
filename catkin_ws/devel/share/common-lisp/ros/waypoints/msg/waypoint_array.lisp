; Auto-generated. Do not edit!


(cl:in-package waypoints-msg)


;//! \htmlinclude waypoint_array.msg.html

(cl:defclass <waypoint_array> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type cl:string
    :initform "")
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector waypoints-msg:waypoint_msg)
   :initform (cl:make-array 0 :element-type 'waypoints-msg:waypoint_msg :initial-element (cl:make-instance 'waypoints-msg:waypoint_msg)))
   (groups
    :reader groups
    :initarg :groups
    :type (cl:vector waypoints-msg:waypoint_group)
   :initform (cl:make-array 0 :element-type 'waypoints-msg:waypoint_group :initial-element (cl:make-instance 'waypoints-msg:waypoint_group))))
)

(cl:defclass waypoint_array (<waypoint_array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waypoint_array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waypoint_array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-msg:<waypoint_array> is deprecated: use waypoints-msg:waypoint_array instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <waypoint_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-msg:header-val is deprecated.  Use waypoints-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <waypoint_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-msg:waypoints-val is deprecated.  Use waypoints-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'groups-val :lambda-list '(m))
(cl:defmethod groups-val ((m <waypoint_array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-msg:groups-val is deprecated.  Use waypoints-msg:groups instead.")
  (groups m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waypoint_array>) ostream)
  "Serializes a message object of type '<waypoint_array>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'header))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'header))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'groups))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'groups))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waypoint_array>) istream)
  "Deserializes a message object of type '<waypoint_array>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'header) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'header) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'waypoints-msg:waypoint_msg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'groups) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'groups)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'waypoints-msg:waypoint_group))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waypoint_array>)))
  "Returns string type for a message object of type '<waypoint_array>"
  "waypoints/waypoint_array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoint_array)))
  "Returns string type for a message object of type 'waypoint_array"
  "waypoints/waypoint_array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waypoint_array>)))
  "Returns md5sum for a message object of type '<waypoint_array>"
  "50bb2806cd484cc8094f17a9e088e071")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waypoint_array)))
  "Returns md5sum for a message object of type 'waypoint_array"
  "50bb2806cd484cc8094f17a9e088e071")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waypoint_array>)))
  "Returns full string definition for message of type '<waypoint_array>"
  (cl:format cl:nil "string header~%waypoints/waypoint_msg[] waypoints~%waypoints/waypoint_group[] groups~%~%================================================================================~%MSG: waypoints/waypoint_msg~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoints/waypoint_group~%string name~%string[] wp_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waypoint_array)))
  "Returns full string definition for message of type 'waypoint_array"
  (cl:format cl:nil "string header~%waypoints/waypoint_msg[] waypoints~%waypoints/waypoint_group[] groups~%~%================================================================================~%MSG: waypoints/waypoint_msg~%string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: waypoints/waypoint_group~%string name~%string[] wp_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waypoint_array>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'groups) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waypoint_array>))
  "Converts a ROS message object to a list"
  (cl:list 'waypoint_array
    (cl:cons ':header (header msg))
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':groups (groups msg))
))
