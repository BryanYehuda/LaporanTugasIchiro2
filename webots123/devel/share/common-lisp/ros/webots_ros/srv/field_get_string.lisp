; Auto-generated. Do not edit!


(cl:in-package webots_ros-srv)


;//! \htmlinclude field_get_string-request.msg.html

(cl:defclass <field_get_string-request> (roslisp-msg-protocol:ros-message)
  ((field
    :reader field
    :initarg :field
    :type cl:integer
    :initform 0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0))
)

(cl:defclass field_get_string-request (<field_get_string-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_string-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_string-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_string-request> is deprecated: use webots_ros-srv:field_get_string-request instead.")))

(cl:ensure-generic-function 'field-val :lambda-list '(m))
(cl:defmethod field-val ((m <field_get_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:field-val is deprecated.  Use webots_ros-srv:field instead.")
  (field m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <field_get_string-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:index-val is deprecated.  Use webots_ros-srv:index instead.")
  (index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_string-request>) ostream)
  "Serializes a message object of type '<field_get_string-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_string-request>) istream)
  "Deserializes a message object of type '<field_get_string-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'field)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_string-request>)))
  "Returns string type for a service object of type '<field_get_string-request>"
  "webots_ros/field_get_stringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_string-request)))
  "Returns string type for a service object of type 'field_get_string-request"
  "webots_ros/field_get_stringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_string-request>)))
  "Returns md5sum for a message object of type '<field_get_string-request>"
  "a1926692206ecc55a7a2d2564a578c89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_string-request)))
  "Returns md5sum for a message object of type 'field_get_string-request"
  "a1926692206ecc55a7a2d2564a578c89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_string-request>)))
  "Returns full string definition for message of type '<field_get_string-request>"
  (cl:format cl:nil "uint64 field~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_string-request)))
  "Returns full string definition for message of type 'field_get_string-request"
  (cl:format cl:nil "uint64 field~%int32 index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_string-request>))
  (cl:+ 0
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_string-request>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_string-request
    (cl:cons ':field (field msg))
    (cl:cons ':index (index msg))
))
;//! \htmlinclude field_get_string-response.msg.html

(cl:defclass <field_get_string-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass field_get_string-response (<field_get_string-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <field_get_string-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'field_get_string-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name webots_ros-srv:<field_get_string-response> is deprecated: use webots_ros-srv:field_get_string-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <field_get_string-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader webots_ros-srv:value-val is deprecated.  Use webots_ros-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <field_get_string-response>) ostream)
  "Serializes a message object of type '<field_get_string-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <field_get_string-response>) istream)
  "Deserializes a message object of type '<field_get_string-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<field_get_string-response>)))
  "Returns string type for a service object of type '<field_get_string-response>"
  "webots_ros/field_get_stringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_string-response)))
  "Returns string type for a service object of type 'field_get_string-response"
  "webots_ros/field_get_stringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<field_get_string-response>)))
  "Returns md5sum for a message object of type '<field_get_string-response>"
  "a1926692206ecc55a7a2d2564a578c89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'field_get_string-response)))
  "Returns md5sum for a message object of type 'field_get_string-response"
  "a1926692206ecc55a7a2d2564a578c89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<field_get_string-response>)))
  "Returns full string definition for message of type '<field_get_string-response>"
  (cl:format cl:nil "string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'field_get_string-response)))
  "Returns full string definition for message of type 'field_get_string-response"
  (cl:format cl:nil "string value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <field_get_string-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <field_get_string-response>))
  "Converts a ROS message object to a list"
  (cl:list 'field_get_string-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'field_get_string)))
  'field_get_string-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'field_get_string)))
  'field_get_string-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'field_get_string)))
  "Returns string type for a service object of type '<field_get_string>"
  "webots_ros/field_get_string")