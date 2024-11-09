; Auto-generated. Do not edit!


(cl:in-package waypoints-srv)


;//! \htmlinclude Run_Wp-request.msg.html

(cl:defclass <Run_Wp-request> (roslisp-msg-protocol:ros-message)
  ((wp_name
    :reader wp_name
    :initarg :wp_name
    :type cl:string
    :initform "")
   (gr_name
    :reader gr_name
    :initarg :gr_name
    :type cl:string
    :initform "")
   (loop
    :reader loop
    :initarg :loop
    :type cl:boolean
    :initform cl:nil)
   (index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Run_Wp-request (<Run_Wp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Run_Wp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Run_Wp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Run_Wp-request> is deprecated: use waypoints-srv:Run_Wp-request instead.")))

(cl:ensure-generic-function 'wp_name-val :lambda-list '(m))
(cl:defmethod wp_name-val ((m <Run_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:wp_name-val is deprecated.  Use waypoints-srv:wp_name instead.")
  (wp_name m))

(cl:ensure-generic-function 'gr_name-val :lambda-list '(m))
(cl:defmethod gr_name-val ((m <Run_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:gr_name-val is deprecated.  Use waypoints-srv:gr_name instead.")
  (gr_name m))

(cl:ensure-generic-function 'loop-val :lambda-list '(m))
(cl:defmethod loop-val ((m <Run_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:loop-val is deprecated.  Use waypoints-srv:loop instead.")
  (loop m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <Run_Wp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:index-val is deprecated.  Use waypoints-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Run_Wp-request>) ostream)
  "Serializes a message object of type '<Run_Wp-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wp_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wp_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gr_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gr_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loop) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Run_Wp-request>) istream)
  "Deserializes a message object of type '<Run_Wp-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wp_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wp_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gr_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gr_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'loop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Run_Wp-request>)))
  "Returns string type for a service object of type '<Run_Wp-request>"
  "waypoints/Run_WpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Run_Wp-request)))
  "Returns string type for a service object of type 'Run_Wp-request"
  "waypoints/Run_WpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Run_Wp-request>)))
  "Returns md5sum for a message object of type '<Run_Wp-request>"
  "be247a9e980f86ec8f691ab70288ad8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Run_Wp-request)))
  "Returns md5sum for a message object of type 'Run_Wp-request"
  "be247a9e980f86ec8f691ab70288ad8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Run_Wp-request>)))
  "Returns full string definition for message of type '<Run_Wp-request>"
  (cl:format cl:nil "string  wp_name~%string  gr_name~%bool    loop~%int16   index         ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Run_Wp-request)))
  "Returns full string definition for message of type 'Run_Wp-request"
  (cl:format cl:nil "string  wp_name~%string  gr_name~%bool    loop~%int16   index         ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Run_Wp-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'wp_name))
     4 (cl:length (cl:slot-value msg 'gr_name))
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Run_Wp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Run_Wp-request
    (cl:cons ':wp_name (wp_name msg))
    (cl:cons ':gr_name (gr_name msg))
    (cl:cons ':loop (loop msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude Run_Wp-response.msg.html

(cl:defclass <Run_Wp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Run_Wp-response (<Run_Wp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Run_Wp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Run_Wp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Run_Wp-response> is deprecated: use waypoints-srv:Run_Wp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Run_Wp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:success-val is deprecated.  Use waypoints-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Run_Wp-response>) ostream)
  "Serializes a message object of type '<Run_Wp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Run_Wp-response>) istream)
  "Deserializes a message object of type '<Run_Wp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Run_Wp-response>)))
  "Returns string type for a service object of type '<Run_Wp-response>"
  "waypoints/Run_WpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Run_Wp-response)))
  "Returns string type for a service object of type 'Run_Wp-response"
  "waypoints/Run_WpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Run_Wp-response>)))
  "Returns md5sum for a message object of type '<Run_Wp-response>"
  "be247a9e980f86ec8f691ab70288ad8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Run_Wp-response)))
  "Returns md5sum for a message object of type 'Run_Wp-response"
  "be247a9e980f86ec8f691ab70288ad8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Run_Wp-response>)))
  "Returns full string definition for message of type '<Run_Wp-response>"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Run_Wp-response)))
  "Returns full string definition for message of type 'Run_Wp-response"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Run_Wp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Run_Wp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Run_Wp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Run_Wp)))
  'Run_Wp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Run_Wp)))
  'Run_Wp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Run_Wp)))
  "Returns string type for a service object of type '<Run_Wp>"
  "waypoints/Run_Wp")