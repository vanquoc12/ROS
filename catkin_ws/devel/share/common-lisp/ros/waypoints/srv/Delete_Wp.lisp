; Auto-generated. Do not edit!


(cl:in-package waypoints-srv)


;//! \htmlinclude Delete_Wp-request.msg.html

(cl:defclass <Delete_Wp-request> (roslisp-msg-protocol:ros-message)
  ((wp_name
    :reader wp_name
    :initarg :wp_name
    :type cl:string
    :initform ""))
)

(cl:defclass Delete_Wp-request (<Delete_Wp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Delete_Wp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Delete_Wp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Delete_Wp-request> is deprecated: use waypoints-srv:Delete_Wp-request instead.")))

(cl:ensure-generic-function 'wp_name-val :lambda-list '(m))
(cl:defmethod wp_name-val ((m <Delete_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:wp_name-val is deprecated.  Use waypoints-srv:wp_name instead.")
  (wp_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Delete_Wp-request>) ostream)
  "Serializes a message object of type '<Delete_Wp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wp_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wp_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Delete_Wp-request>) istream)
  "Deserializes a message object of type '<Delete_Wp-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wp_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wp_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Delete_Wp-request>)))
  "Returns string type for a service object of type '<Delete_Wp-request>"
  "waypoints/Delete_WpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Delete_Wp-request)))
  "Returns string type for a service object of type 'Delete_Wp-request"
  "waypoints/Delete_WpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Delete_Wp-request>)))
  "Returns md5sum for a message object of type '<Delete_Wp-request>"
  "586d8f413500dd2c0010cf7506a3071c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Delete_Wp-request)))
  "Returns md5sum for a message object of type 'Delete_Wp-request"
  "586d8f413500dd2c0010cf7506a3071c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Delete_Wp-request>)))
  "Returns full string definition for message of type '<Delete_Wp-request>"
  (cl:format cl:nil "string  wp_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Delete_Wp-request)))
  "Returns full string definition for message of type 'Delete_Wp-request"
  (cl:format cl:nil "string  wp_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Delete_Wp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wp_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Delete_Wp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Delete_Wp-request
    (cl:cons ':wp_name (wp_name msg))
))
;//! \htmlinclude Delete_Wp-response.msg.html

(cl:defclass <Delete_Wp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Delete_Wp-response (<Delete_Wp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Delete_Wp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Delete_Wp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Delete_Wp-response> is deprecated: use waypoints-srv:Delete_Wp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Delete_Wp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:success-val is deprecated.  Use waypoints-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Delete_Wp-response>) ostream)
  "Serializes a message object of type '<Delete_Wp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Delete_Wp-response>) istream)
  "Deserializes a message object of type '<Delete_Wp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Delete_Wp-response>)))
  "Returns string type for a service object of type '<Delete_Wp-response>"
  "waypoints/Delete_WpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Delete_Wp-response)))
  "Returns string type for a service object of type 'Delete_Wp-response"
  "waypoints/Delete_WpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Delete_Wp-response>)))
  "Returns md5sum for a message object of type '<Delete_Wp-response>"
  "586d8f413500dd2c0010cf7506a3071c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Delete_Wp-response)))
  "Returns md5sum for a message object of type 'Delete_Wp-response"
  "586d8f413500dd2c0010cf7506a3071c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Delete_Wp-response>)))
  "Returns full string definition for message of type '<Delete_Wp-response>"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Delete_Wp-response)))
  "Returns full string definition for message of type 'Delete_Wp-response"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Delete_Wp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Delete_Wp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Delete_Wp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Delete_Wp)))
  'Delete_Wp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Delete_Wp)))
  'Delete_Wp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Delete_Wp)))
  "Returns string type for a service object of type '<Delete_Wp>"
  "waypoints/Delete_Wp")