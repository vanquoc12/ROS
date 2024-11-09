; Auto-generated. Do not edit!


(cl:in-package multipoint_navigation_receiver-srv)


;//! \htmlinclude set_goal_srv-request.msg.html

(cl:defclass <set_goal_srv-request> (roslisp-msg-protocol:ros-message)
  ((positions
    :reader positions
    :initarg :positions
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3)))
   (quaternions
    :reader quaternions
    :initarg :quaternions
    :type (cl:vector geometry_msgs-msg:Quaternion)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Quaternion :initial-element (cl:make-instance 'geometry_msgs-msg:Quaternion))))
)

(cl:defclass set_goal_srv-request (<set_goal_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_goal_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_goal_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multipoint_navigation_receiver-srv:<set_goal_srv-request> is deprecated: use multipoint_navigation_receiver-srv:set_goal_srv-request instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <set_goal_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multipoint_navigation_receiver-srv:positions-val is deprecated.  Use multipoint_navigation_receiver-srv:positions instead.")
  (positions m))

(cl:ensure-generic-function 'quaternions-val :lambda-list '(m))
(cl:defmethod quaternions-val ((m <set_goal_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multipoint_navigation_receiver-srv:quaternions-val is deprecated.  Use multipoint_navigation_receiver-srv:quaternions instead.")
  (quaternions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_goal_srv-request>) ostream)
  "Serializes a message object of type '<set_goal_srv-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'positions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'quaternions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'quaternions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_goal_srv-request>) istream)
  "Deserializes a message object of type '<set_goal_srv-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'quaternions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'quaternions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Quaternion))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_goal_srv-request>)))
  "Returns string type for a service object of type '<set_goal_srv-request>"
  "multipoint_navigation_receiver/set_goal_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_goal_srv-request)))
  "Returns string type for a service object of type 'set_goal_srv-request"
  "multipoint_navigation_receiver/set_goal_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_goal_srv-request>)))
  "Returns md5sum for a message object of type '<set_goal_srv-request>"
  "343d08ce7c6d1af4bde14bcd847ac4f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_goal_srv-request)))
  "Returns md5sum for a message object of type 'set_goal_srv-request"
  "343d08ce7c6d1af4bde14bcd847ac4f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_goal_srv-request>)))
  "Returns full string definition for message of type '<set_goal_srv-request>"
  (cl:format cl:nil "geometry_msgs/Vector3[] positions~%geometry_msgs/Quaternion[] quaternions~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_goal_srv-request)))
  "Returns full string definition for message of type 'set_goal_srv-request"
  (cl:format cl:nil "geometry_msgs/Vector3[] positions~%geometry_msgs/Quaternion[] quaternions~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_goal_srv-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'quaternions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_goal_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_goal_srv-request
    (cl:cons ':positions (positions msg))
    (cl:cons ':quaternions (quaternions msg))
))
;//! \htmlinclude set_goal_srv-response.msg.html

(cl:defclass <set_goal_srv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass set_goal_srv-response (<set_goal_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_goal_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_goal_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multipoint_navigation_receiver-srv:<set_goal_srv-response> is deprecated: use multipoint_navigation_receiver-srv:set_goal_srv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <set_goal_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multipoint_navigation_receiver-srv:result-val is deprecated.  Use multipoint_navigation_receiver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_goal_srv-response>) ostream)
  "Serializes a message object of type '<set_goal_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_goal_srv-response>) istream)
  "Deserializes a message object of type '<set_goal_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_goal_srv-response>)))
  "Returns string type for a service object of type '<set_goal_srv-response>"
  "multipoint_navigation_receiver/set_goal_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_goal_srv-response)))
  "Returns string type for a service object of type 'set_goal_srv-response"
  "multipoint_navigation_receiver/set_goal_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_goal_srv-response>)))
  "Returns md5sum for a message object of type '<set_goal_srv-response>"
  "343d08ce7c6d1af4bde14bcd847ac4f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_goal_srv-response)))
  "Returns md5sum for a message object of type 'set_goal_srv-response"
  "343d08ce7c6d1af4bde14bcd847ac4f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_goal_srv-response>)))
  "Returns full string definition for message of type '<set_goal_srv-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_goal_srv-response)))
  "Returns full string definition for message of type 'set_goal_srv-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_goal_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_goal_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_goal_srv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_goal_srv)))
  'set_goal_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_goal_srv)))
  'set_goal_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_goal_srv)))
  "Returns string type for a service object of type '<set_goal_srv>"
  "multipoint_navigation_receiver/set_goal_srv")