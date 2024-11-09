; Auto-generated. Do not edit!


(cl:in-package waypoints-srv)


;//! \htmlinclude Groups_Wp-request.msg.html

(cl:defclass <Groups_Wp-request> (roslisp-msg-protocol:ros-message)
  ((option
    :reader option
    :initarg :option
    :type cl:string
    :initform "")
   (group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform ""))
)

(cl:defclass Groups_Wp-request (<Groups_Wp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Groups_Wp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Groups_Wp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Groups_Wp-request> is deprecated: use waypoints-srv:Groups_Wp-request instead.")))

(cl:ensure-generic-function 'option-val :lambda-list '(m))
(cl:defmethod option-val ((m <Groups_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:option-val is deprecated.  Use waypoints-srv:option instead.")
  (option m))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <Groups_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:group_name-val is deprecated.  Use waypoints-srv:group_name instead.")
  (group_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Groups_Wp-request>) ostream)
  "Serializes a message object of type '<Groups_Wp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'option))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'option))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Groups_Wp-request>) istream)
  "Deserializes a message object of type '<Groups_Wp-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'option) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'option) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Groups_Wp-request>)))
  "Returns string type for a service object of type '<Groups_Wp-request>"
  "waypoints/Groups_WpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Groups_Wp-request)))
  "Returns string type for a service object of type 'Groups_Wp-request"
  "waypoints/Groups_WpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Groups_Wp-request>)))
  "Returns md5sum for a message object of type '<Groups_Wp-request>"
  "15bacb1518f81a33d47562f4809b35a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Groups_Wp-request)))
  "Returns md5sum for a message object of type 'Groups_Wp-request"
  "15bacb1518f81a33d47562f4809b35a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Groups_Wp-request>)))
  "Returns full string definition for message of type '<Groups_Wp-request>"
  (cl:format cl:nil "string  option               ~%string  group_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Groups_Wp-request)))
  "Returns full string definition for message of type 'Groups_Wp-request"
  (cl:format cl:nil "string  option               ~%string  group_name               ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Groups_Wp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'option))
     4 (cl:length (cl:slot-value msg 'group_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Groups_Wp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Groups_Wp-request
    (cl:cons ':option (option msg))
    (cl:cons ':group_name (group_name msg))
))
;//! \htmlinclude Groups_Wp-response.msg.html

(cl:defclass <Groups_Wp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Groups_Wp-response (<Groups_Wp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Groups_Wp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Groups_Wp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Groups_Wp-response> is deprecated: use waypoints-srv:Groups_Wp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Groups_Wp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:success-val is deprecated.  Use waypoints-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Groups_Wp-response>) ostream)
  "Serializes a message object of type '<Groups_Wp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Groups_Wp-response>) istream)
  "Deserializes a message object of type '<Groups_Wp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Groups_Wp-response>)))
  "Returns string type for a service object of type '<Groups_Wp-response>"
  "waypoints/Groups_WpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Groups_Wp-response)))
  "Returns string type for a service object of type 'Groups_Wp-response"
  "waypoints/Groups_WpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Groups_Wp-response>)))
  "Returns md5sum for a message object of type '<Groups_Wp-response>"
  "15bacb1518f81a33d47562f4809b35a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Groups_Wp-response)))
  "Returns md5sum for a message object of type 'Groups_Wp-response"
  "15bacb1518f81a33d47562f4809b35a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Groups_Wp-response>)))
  "Returns full string definition for message of type '<Groups_Wp-response>"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Groups_Wp-response)))
  "Returns full string definition for message of type 'Groups_Wp-response"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Groups_Wp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Groups_Wp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Groups_Wp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Groups_Wp)))
  'Groups_Wp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Groups_Wp)))
  'Groups_Wp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Groups_Wp)))
  "Returns string type for a service object of type '<Groups_Wp>"
  "waypoints/Groups_Wp")