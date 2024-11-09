; Auto-generated. Do not edit!


(cl:in-package waypoints-srv)


;//! \htmlinclude Load_Wp-request.msg.html

(cl:defclass <Load_Wp-request> (roslisp-msg-protocol:ros-message)
  ((file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform ""))
)

(cl:defclass Load_Wp-request (<Load_Wp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Load_Wp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Load_Wp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Load_Wp-request> is deprecated: use waypoints-srv:Load_Wp-request instead.")))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <Load_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:file_name-val is deprecated.  Use waypoints-srv:file_name instead.")
  (file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Load_Wp-request>) ostream)
  "Serializes a message object of type '<Load_Wp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Load_Wp-request>) istream)
  "Deserializes a message object of type '<Load_Wp-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'file_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'file_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Load_Wp-request>)))
  "Returns string type for a service object of type '<Load_Wp-request>"
  "waypoints/Load_WpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Load_Wp-request)))
  "Returns string type for a service object of type 'Load_Wp-request"
  "waypoints/Load_WpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Load_Wp-request>)))
  "Returns md5sum for a message object of type '<Load_Wp-request>"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Load_Wp-request)))
  "Returns md5sum for a message object of type 'Load_Wp-request"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Load_Wp-request>)))
  "Returns full string definition for message of type '<Load_Wp-request>"
  (cl:format cl:nil "string  file_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Load_Wp-request)))
  "Returns full string definition for message of type 'Load_Wp-request"
  (cl:format cl:nil "string  file_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Load_Wp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Load_Wp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Load_Wp-request
    (cl:cons ':file_name (file_name msg))
))
;//! \htmlinclude Load_Wp-response.msg.html

(cl:defclass <Load_Wp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Load_Wp-response (<Load_Wp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Load_Wp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Load_Wp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Load_Wp-response> is deprecated: use waypoints-srv:Load_Wp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Load_Wp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:success-val is deprecated.  Use waypoints-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Load_Wp-response>) ostream)
  "Serializes a message object of type '<Load_Wp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Load_Wp-response>) istream)
  "Deserializes a message object of type '<Load_Wp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Load_Wp-response>)))
  "Returns string type for a service object of type '<Load_Wp-response>"
  "waypoints/Load_WpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Load_Wp-response)))
  "Returns string type for a service object of type 'Load_Wp-response"
  "waypoints/Load_WpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Load_Wp-response>)))
  "Returns md5sum for a message object of type '<Load_Wp-response>"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Load_Wp-response)))
  "Returns md5sum for a message object of type 'Load_Wp-response"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Load_Wp-response>)))
  "Returns full string definition for message of type '<Load_Wp-response>"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Load_Wp-response)))
  "Returns full string definition for message of type 'Load_Wp-response"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Load_Wp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Load_Wp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Load_Wp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Load_Wp)))
  'Load_Wp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Load_Wp)))
  'Load_Wp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Load_Wp)))
  "Returns string type for a service object of type '<Load_Wp>"
  "waypoints/Load_Wp")