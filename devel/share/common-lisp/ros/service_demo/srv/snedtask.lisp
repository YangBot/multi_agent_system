; Auto-generated. Do not edit!


(cl:in-package service_demo-srv)


;//! \htmlinclude snedtask-request.msg.html

(cl:defclass <snedtask-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass snedtask-request (<snedtask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <snedtask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'snedtask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_demo-srv:<snedtask-request> is deprecated: use service_demo-srv:snedtask-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <snedtask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:name-val is deprecated.  Use service_demo-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <snedtask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:age-val is deprecated.  Use service_demo-srv:age instead.")
  (age m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <snedtask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-srv:feedback-val is deprecated.  Use service_demo-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <snedtask-request>) ostream)
  "Serializes a message object of type '<snedtask-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <snedtask-request>) istream)
  "Deserializes a message object of type '<snedtask-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<snedtask-request>)))
  "Returns string type for a service object of type '<snedtask-request>"
  "service_demo/snedtaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'snedtask-request)))
  "Returns string type for a service object of type 'snedtask-request"
  "service_demo/snedtaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<snedtask-request>)))
  "Returns md5sum for a message object of type '<snedtask-request>"
  "d909ff136d7b21683428bf14271414ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'snedtask-request)))
  "Returns md5sum for a message object of type 'snedtask-request"
  "d909ff136d7b21683428bf14271414ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<snedtask-request>)))
  "Returns full string definition for message of type '<snedtask-request>"
  (cl:format cl:nil "string name~%int32 age~%string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'snedtask-request)))
  "Returns full string definition for message of type 'snedtask-request"
  (cl:format cl:nil "string name~%int32 age~%string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <snedtask-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <snedtask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'snedtask-request
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':feedback (feedback msg))
))
;//! \htmlinclude snedtask-response.msg.html

(cl:defclass <snedtask-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass snedtask-response (<snedtask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <snedtask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'snedtask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_demo-srv:<snedtask-response> is deprecated: use service_demo-srv:snedtask-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <snedtask-response>) ostream)
  "Serializes a message object of type '<snedtask-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <snedtask-response>) istream)
  "Deserializes a message object of type '<snedtask-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<snedtask-response>)))
  "Returns string type for a service object of type '<snedtask-response>"
  "service_demo/snedtaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'snedtask-response)))
  "Returns string type for a service object of type 'snedtask-response"
  "service_demo/snedtaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<snedtask-response>)))
  "Returns md5sum for a message object of type '<snedtask-response>"
  "d909ff136d7b21683428bf14271414ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'snedtask-response)))
  "Returns md5sum for a message object of type 'snedtask-response"
  "d909ff136d7b21683428bf14271414ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<snedtask-response>)))
  "Returns full string definition for message of type '<snedtask-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'snedtask-response)))
  "Returns full string definition for message of type 'snedtask-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <snedtask-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <snedtask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'snedtask-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'snedtask)))
  'snedtask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'snedtask)))
  'snedtask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'snedtask)))
  "Returns string type for a service object of type '<snedtask>"
  "service_demo/snedtask")