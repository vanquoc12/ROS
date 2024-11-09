; Auto-generated. Do not edit!


(cl:in-package waypoints-srv)


;//! \htmlinclude Stop_Wp-request.msg.html

(cl:defclass <Stop_Wp-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Stop_Wp-request (<Stop_Wp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop_Wp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop_Wp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Stop_Wp-request> is deprecated: use waypoints-srv:Stop_Wp-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop_Wp-request>) ostream)
  "Serializes a message object of type '<Stop_Wp-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop_Wp-request>) istream)
  "Deserializes a message object of type '<Stop_Wp-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop_Wp-request>)))
  "Returns string type for a service object of type '<Stop_Wp-request>"
  "waypoints/Stop_WpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop_Wp-request)))
  "Returns string type for a service object of type 'Stop_Wp-request"
  "waypoints/Stop_WpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop_Wp-request>)))
  "Returns md5sum for a message object of type '<Stop_Wp-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop_Wp-request)))
  "Returns md5sum for a message object of type 'Stop_Wp-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop_Wp-request>)))
  "Returns full string definition for message of type '<Stop_Wp-request>"
  (cl:format cl:nil "       ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop_Wp-request)))
  "Returns full string definition for message of type 'Stop_Wp-request"
  (cl:format cl:nil "       ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop_Wp-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop_Wp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop_Wp-request
))
;//! \htmlinclude Stop_Wp-response.msg.html

(cl:defclass <Stop_Wp-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Stop_Wp-response (<Stop_Wp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop_Wp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop_Wp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name waypoints-srv:<Stop_Wp-response> is deprecated: use waypoints-srv:Stop_Wp-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Stop_Wp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader waypoints-srv:success-val is deprecated.  Use waypoints-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop_Wp-response>) ostream)
  "Serializes a message object of type '<Stop_Wp-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop_Wp-response>) istream)
  "Deserializes a message object of type '<Stop_Wp-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop_Wp-response>)))
  "Returns string type for a service object of type '<Stop_Wp-response>"
  "waypoints/Stop_WpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop_Wp-response)))
  "Returns string type for a service object of type 'Stop_Wp-response"
  "waypoints/Stop_WpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop_Wp-response>)))
  "Returns md5sum for a message object of type '<Stop_Wp-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop_Wp-response)))
  "Returns md5sum for a message object of type 'Stop_Wp-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop_Wp-response>)))
  "Returns full string definition for message of type '<Stop_Wp-response>"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop_Wp-response)))
  "Returns full string definition for message of type 'Stop_Wp-response"
  (cl:format cl:nil "bool success     ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop_Wp-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop_Wp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop_Wp-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Stop_Wp)))
  'Stop_Wp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Stop_Wp)))
  'Stop_Wp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop_Wp)))
  "Returns string type for a service object of type '<Stop_Wp>"
  "waypoints/Stop_Wp")