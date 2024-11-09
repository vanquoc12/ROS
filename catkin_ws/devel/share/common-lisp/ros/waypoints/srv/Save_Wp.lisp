; Auto-generated. Do not edit!


(cl:in-package waypoints-srv)


;//! \htmlinclude Save_Wp-request.msg.html

(cl:defclass <Save_Wp-request> (roslisp-msg-protocol:ros-message)
  ((file_name
    :reader file_name
    :initarg :file_name
    :type cl:string
    :initform ""))
)

(cl:defclass Save_Wp-request (<Save_Wp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Save_Wp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Save_Wp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Save_Wp-request> is deprecated: use waypoints-srv:Save_Wp-request instead.")))

(cl:ensure-generic-function 'file_name-val :lambda-list '(m))
(cl:defmethod file_name-val ((m <Save_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:file_name-val is deprecated.  Use waypoints-srv:file_name instead.")
  (file_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Save_Wp-request>) ostream)
  "Serializes a message object of type '<Save_Wp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'file_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'file_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Save_Wp-request>) istream)
  "Deserializes a message object of type '<Save_Wp-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Save_Wp-request>)))
  "Returns string type for a service object of type '<Save_Wp-request>"
  "waypoints/Save_WpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Save_Wp-request)))
  "Returns string type for a service object of type 'Save_Wp-request"
  "waypoints/Save_WpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Save_Wp-request>)))
  "Returns md5sum for a message object of type '<Save_Wp-request>"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Save_Wp-request)))
  "Returns md5sum for a message object of type 'Save_Wp-request"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Save_Wp-request>)))
  "Returns full string definition for message of type '<Save_Wp-request>"
  (cl:format cl:nil "string  file_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Save_Wp-request)))
  "Returns full string definition for message of type 'Save_Wp-request"
  (cl:format cl:nil "string  file_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Save_Wp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'file_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Save_Wp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Save_Wp-request
    (cl:cons ':file_name (file_name msg))
))
;//! \htmlinclude Save_Wp-response.msg.html

(cl:defclass <Save_Wp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Save_Wp-response (<Save_Wp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Save_Wp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Save_Wp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Save_Wp-response> is deprecated: use waypoints-srv:Save_Wp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Save_Wp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:success-val is deprecated.  Use waypoints-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Save_Wp-response>) ostream)
  "Serializes a message object of type '<Save_Wp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Save_Wp-response>) istream)
  "Deserializes a message object of type '<Save_Wp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Save_Wp-response>)))
  "Returns string type for a service object of type '<Save_Wp-response>"
  "waypoints/Save_WpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Save_Wp-response)))
  "Returns string type for a service object of type 'Save_Wp-response"
  "waypoints/Save_WpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Save_Wp-response>)))
  "Returns md5sum for a message object of type '<Save_Wp-response>"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Save_Wp-response)))
  "Returns md5sum for a message object of type 'Save_Wp-response"
  "3ece68834e0f1a84f61883f885f71f9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Save_Wp-response>)))
  "Returns full string definition for message of type '<Save_Wp-response>"
  (cl:format cl:nil "bool success     ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Save_Wp-response)))
  "Returns full string definition for message of type 'Save_Wp-response"
  (cl:format cl:nil "bool success     ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Save_Wp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Save_Wp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Save_Wp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Save_Wp)))
  'Save_Wp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Save_Wp)))
  'Save_Wp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Save_Wp)))
  "Returns string type for a service object of type '<Save_Wp>"
  "waypoints/Save_Wp")