; Auto-generated. Do not edit!


(cl:in-package waypoints-msg)


;//! \htmlinclude waypoint_group.msg.html

(cl:defclass <waypoint_group> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (wp_list
    :reader wp_list
    :initarg :wp_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass waypoint_group (<waypoint_group>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <waypoint_group>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'waypoint_group)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-msg:<waypoint_group> is deprecated: use waypoints-msg:waypoint_group instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <waypoint_group>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-msg:name-val is deprecated.  Use waypoints-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'wp_list-val :lambda-list '(m))
(cl:defmethod wp_list-val ((m <waypoint_group>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-msg:wp_list-val is deprecated.  Use waypoints-msg:wp_list instead.")
  (wp_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <waypoint_group>) ostream)
  "Serializes a message object of type '<waypoint_group>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wp_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'wp_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <waypoint_group>) istream)
  "Deserializes a message object of type '<waypoint_group>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wp_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wp_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<waypoint_group>)))
  "Returns string type for a message object of type '<waypoint_group>"
  "waypoints/waypoint_group")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'waypoint_group)))
  "Returns string type for a message object of type 'waypoint_group"
  "waypoints/waypoint_group")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<waypoint_group>)))
  "Returns md5sum for a message object of type '<waypoint_group>"
  "c03d3488d6139e5ffcdaeff205e40b93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'waypoint_group)))
  "Returns md5sum for a message object of type 'waypoint_group"
  "c03d3488d6139e5ffcdaeff205e40b93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<waypoint_group>)))
  "Returns full string definition for message of type '<waypoint_group>"
  (cl:format cl:nil "string name~%string[] wp_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'waypoint_group)))
  "Returns full string definition for message of type 'waypoint_group"
  (cl:format cl:nil "string name~%string[] wp_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <waypoint_group>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wp_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <waypoint_group>))
  "Converts a ROS message object to a list"
  (cl:list 'waypoint_group
    (cl:cons ':name (name msg))
    (cl:cons ':wp_list (wp_list msg))
))
