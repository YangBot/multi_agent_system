; Auto-generated. Do not edit!


(cl:in-package service_demo-msg)


;//! \htmlinclude getbot.msg.html

(cl:defclass <getbot> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass getbot (<getbot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getbot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getbot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_demo-msg:<getbot> is deprecated: use service_demo-msg:getbot instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <getbot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_demo-msg:state-val is deprecated.  Use service_demo-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getbot>) ostream)
  "Serializes a message object of type '<getbot>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getbot>) istream)
  "Deserializes a message object of type '<getbot>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getbot>)))
  "Returns string type for a message object of type '<getbot>"
  "service_demo/getbot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getbot)))
  "Returns string type for a message object of type 'getbot"
  "service_demo/getbot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getbot>)))
  "Returns md5sum for a message object of type '<getbot>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getbot)))
  "Returns md5sum for a message object of type 'getbot"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getbot>)))
  "Returns full string definition for message of type '<getbot>"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getbot)))
  "Returns full string definition for message of type 'getbot"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getbot>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getbot>))
  "Converts a ROS message object to a list"
  (cl:list 'getbot
    (cl:cons ':state (state msg))
))