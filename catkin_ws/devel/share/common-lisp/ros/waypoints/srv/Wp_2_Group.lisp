; Auto-generated. Do not edit!


(cl:in-package waypoints-srv)


;//! \htmlinclude Wp_2_Group-request.msg.html

(cl:defclass <Wp_2_Group-request> (roslisp-msg-protocol:ros-message)
  ((option
    :reader option
    :initarg :option
    :type cl:string
    :initform "")
   (group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (wp_name
    :reader wp_name
    :initarg :wp_name
    :type cl:string
    :initform "")
   (pos
    :reader pos
    :initarg :pos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Wp_2_Group-request (<Wp_2_Group-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wp_2_Group-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wp_2_Group-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Wp_2_Group-request> is deprecated: use waypoints-srv:Wp_2_Group-request instead.")))

(cl:ensure-generic-function 'option-val :lambda-list '(m))
(cl:defmethod option-val ((m <Wp_2_Group-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:option-val is deprecated.  Use waypoints-srv:option instead.")
  (option m))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <Wp_2_Group-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:group_name-val is deprecated.  Use waypoints-srv:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'wp_name-val :lambda-list '(m))
(cl:defmethod wp_name-val ((m <Wp_2_Group-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:wp_name-val is deprecated.  Use waypoints-srv:wp_name instead.")
  (wp_name m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <Wp_2_Group-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:pos-val is deprecated.  Use waypoints-srv:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wp_2_Group-request>) ostream)
  "Serializes a message object of type '<Wp_2_Group-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wp_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wp_name))
  (cl:let* ((signed (cl:slot-value msg 'pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wp_2_Group-request>) istream)
  "Deserializes a message object of type '<Wp_2_Group-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wp_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wp_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wp_2_Group-request>)))
  "Returns string type for a service object of type '<Wp_2_Group-request>"
  "waypoints/Wp_2_GroupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wp_2_Group-request)))
  "Returns string type for a service object of type 'Wp_2_Group-request"
  "waypoints/Wp_2_GroupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wp_2_Group-request>)))
  "Returns md5sum for a message object of type '<Wp_2_Group-request>"
  "09d585458d996891c104c93e1abec1de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wp_2_Group-request)))
  "Returns md5sum for a message object of type 'Wp_2_Group-request"
  "09d585458d996891c104c93e1abec1de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wp_2_Group-request>)))
  "Returns full string definition for message of type '<Wp_2_Group-request>"
  (cl:format cl:nil "string  option~%string  group_name~%string  wp_name~%int16  pos             ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wp_2_Group-request)))
  "Returns full string definition for message of type 'Wp_2_Group-request"
  (cl:format cl:nil "string  option~%string  group_name~%string  wp_name~%int16  pos             ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wp_2_Group-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'option))
     4 (cl:length (cl:slot-value msg 'group_name))
     4 (cl:length (cl:slot-value msg 'wp_name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wp_2_Group-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Wp_2_Group-request
    (cl:cons ':option (option msg))
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':wp_name (wp_name msg))
    (cl:cons ':pos (pos msg))
))
;//! \htmlinclude Wp_2_Group-response.msg.html

(cl:defclass <Wp_2_Group-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Wp_2_Group-response (<Wp_2_Group-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wp_2_Group-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wp_2_Group-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Wp_2_Group-response> is deprecated: use waypoints-srv:Wp_2_Group-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Wp_2_Group-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:success-val is deprecated.  Use waypoints-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wp_2_Group-response>) ostream)
  "Serializes a message object of type '<Wp_2_Group-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wp_2_Group-response>) istream)
  "Deserializes a message object of type '<Wp_2_Group-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wp_2_Group-response>)))
  "Returns string type for a service object of type '<Wp_2_Group-response>"
  "waypoints/Wp_2_GroupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wp_2_Group-response)))
  "Returns string type for a service object of type 'Wp_2_Group-response"
  "waypoints/Wp_2_GroupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wp_2_Group-response>)))
  "Returns md5sum for a message object of type '<Wp_2_Group-response>"
  "09d585458d996891c104c93e1abec1de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wp_2_Group-response)))
  "Returns md5sum for a message object of type 'Wp_2_Group-response"
  "09d585458d996891c104c93e1abec1de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wp_2_Group-response>)))
  "Returns full string definition for message of type '<Wp_2_Group-response>"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wp_2_Group-response)))
  "Returns full string definition for message of type 'Wp_2_Group-response"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wp_2_Group-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wp_2_Group-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Wp_2_Group-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Wp_2_Group)))
  'Wp_2_Group-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Wp_2_Group)))
  'Wp_2_Group-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wp_2_Group)))
  "Returns string type for a service object of type '<Wp_2_Group>"
  "waypoints/Wp_2_Group")