; Auto-generated. Do not edit!


(cl:in-package multipoint_navigation_receiver-srv)


;//! \htmlinclude obstacle_srv-request.msg.html

(cl:defclass <obstacle_srv-request> (roslisp-msg-protocol:ros-message)
  ((positionx
    :reader positionx
    :initarg :positionx
    :type cl:float
    :initform 0.0)
   (positiony
    :reader positiony
    :initarg :positiony
    :type cl:float
    :initform 0.0))
)

(cl:defclass obstacle_srv-request (<obstacle_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obstacle_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obstacle_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multipoint_navigation_receiver-srv:<obstacle_srv-request> is deprecated: use multipoint_navigation_receiver-srv:obstacle_srv-request instead.")))

(cl:ensure-generic-function 'positionx-val :lambda-list '(m))
(cl:defmethod positionx-val ((m <obstacle_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multipoint_navigation_receiver-srv:positionx-val is deprecated.  Use multipoint_navigation_receiver-srv:positionx instead.")
  (positionx m))

(cl:ensure-generic-function 'positiony-val :lambda-list '(m))
(cl:defmethod positiony-val ((m <obstacle_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multipoint_navigation_receiver-srv:positiony-val is deprecated.  Use multipoint_navigation_receiver-srv:positiony instead.")
  (positiony m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obstacle_srv-request>) ostream)
  "Serializes a message object of type '<obstacle_srv-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'positionx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'positiony))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obstacle_srv-request>) istream)
  "Deserializes a message object of type '<obstacle_srv-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positionx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positiony) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obstacle_srv-request>)))
  "Returns string type for a service object of type '<obstacle_srv-request>"
  "multipoint_navigation_receiver/obstacle_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obstacle_srv-request)))
  "Returns string type for a service object of type 'obstacle_srv-request"
  "multipoint_navigation_receiver/obstacle_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obstacle_srv-request>)))
  "Returns md5sum for a message object of type '<obstacle_srv-request>"
  "cde20407033a78fab80407a8d3277159")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obstacle_srv-request)))
  "Returns md5sum for a message object of type 'obstacle_srv-request"
  "cde20407033a78fab80407a8d3277159")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obstacle_srv-request>)))
  "Returns full string definition for message of type '<obstacle_srv-request>"
  (cl:format cl:nil "float32 positionx~%float32 positiony~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obstacle_srv-request)))
  "Returns full string definition for message of type 'obstacle_srv-request"
  (cl:format cl:nil "float32 positionx~%float32 positiony~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obstacle_srv-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obstacle_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'obstacle_srv-request
    (cl:cons ':positionx (positionx msg))
    (cl:cons ':positiony (positiony msg))
))
;//! \htmlinclude obstacle_srv-response.msg.html

(cl:defclass <obstacle_srv-response> (roslisp-msg-protocol:ros-message)
  ((obstacle_probability
    :reader obstacle_probability
    :initarg :obstacle_probability
    :type cl:fixnum
    :initform 0))
)

(cl:defclass obstacle_srv-response (<obstacle_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <obstacle_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'obstacle_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name multipoint_navigation_receiver-srv:<obstacle_srv-response> is deprecated: use multipoint_navigation_receiver-srv:obstacle_srv-response instead.")))

(cl:ensure-generic-function 'obstacle_probability-val :lambda-list '(m))
(cl:defmethod obstacle_probability-val ((m <obstacle_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader multipoint_navigation_receiver-srv:obstacle_probability-val is deprecated.  Use multipoint_navigation_receiver-srv:obstacle_probability instead.")
  (obstacle_probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <obstacle_srv-response>) ostream)
  "Serializes a message object of type '<obstacle_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'obstacle_probability)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <obstacle_srv-response>) istream)
  "Deserializes a message object of type '<obstacle_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obstacle_probability) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<obstacle_srv-response>)))
  "Returns string type for a service object of type '<obstacle_srv-response>"
  "multipoint_navigation_receiver/obstacle_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obstacle_srv-response)))
  "Returns string type for a service object of type 'obstacle_srv-response"
  "multipoint_navigation_receiver/obstacle_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<obstacle_srv-response>)))
  "Returns md5sum for a message object of type '<obstacle_srv-response>"
  "cde20407033a78fab80407a8d3277159")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'obstacle_srv-response)))
  "Returns md5sum for a message object of type 'obstacle_srv-response"
  "cde20407033a78fab80407a8d3277159")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<obstacle_srv-response>)))
  "Returns full string definition for message of type '<obstacle_srv-response>"
  (cl:format cl:nil "int8 obstacle_probability ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'obstacle_srv-response)))
  "Returns full string definition for message of type 'obstacle_srv-response"
  (cl:format cl:nil "int8 obstacle_probability ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <obstacle_srv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <obstacle_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'obstacle_srv-response
    (cl:cons ':obstacle_probability (obstacle_probability msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'obstacle_srv)))
  'obstacle_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'obstacle_srv)))
  'obstacle_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'obstacle_srv)))
  "Returns string type for a service object of type '<obstacle_srv>"
  "multipoint_navigation_receiver/obstacle_srv")