; Auto-generated. Do not edit!


(cl:in-package imagelistener-srv)


;//! \htmlinclude imageViewing-request.msg.html

(cl:defclass <imageViewing-request> (roslisp-msg-protocol:ros-message)
  ((path_to_tmp_img
    :reader path_to_tmp_img
    :initarg :path_to_tmp_img
    :type cl:string
    :initform "")
   (maxSimVal
    :reader maxSimVal
    :initarg :maxSimVal
    :type cl:float
    :initform 0.0))
)

(cl:defclass imageViewing-request (<imageViewing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imageViewing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imageViewing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imagelistener-srv:<imageViewing-request> is deprecated: use imagelistener-srv:imageViewing-request instead.")))

(cl:ensure-generic-function 'path_to_tmp_img-val :lambda-list '(m))
(cl:defmethod path_to_tmp_img-val ((m <imageViewing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-srv:path_to_tmp_img-val is deprecated.  Use imagelistener-srv:path_to_tmp_img instead.")
  (path_to_tmp_img m))

(cl:ensure-generic-function 'maxSimVal-val :lambda-list '(m))
(cl:defmethod maxSimVal-val ((m <imageViewing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-srv:maxSimVal-val is deprecated.  Use imagelistener-srv:maxSimVal instead.")
  (maxSimVal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imageViewing-request>) ostream)
  "Serializes a message object of type '<imageViewing-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'path_to_tmp_img))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'path_to_tmp_img))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxSimVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imageViewing-request>) istream)
  "Deserializes a message object of type '<imageViewing-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'path_to_tmp_img) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'path_to_tmp_img) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxSimVal) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imageViewing-request>)))
  "Returns string type for a service object of type '<imageViewing-request>"
  "imagelistener/imageViewingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imageViewing-request)))
  "Returns string type for a service object of type 'imageViewing-request"
  "imagelistener/imageViewingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imageViewing-request>)))
  "Returns md5sum for a message object of type '<imageViewing-request>"
  "9bcd3c971dc9a992e6146aaf6c22043b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imageViewing-request)))
  "Returns md5sum for a message object of type 'imageViewing-request"
  "9bcd3c971dc9a992e6146aaf6c22043b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imageViewing-request>)))
  "Returns full string definition for message of type '<imageViewing-request>"
  (cl:format cl:nil "string path_to_tmp_img~%float32 maxSimVal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imageViewing-request)))
  "Returns full string definition for message of type 'imageViewing-request"
  (cl:format cl:nil "string path_to_tmp_img~%float32 maxSimVal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imageViewing-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'path_to_tmp_img))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imageViewing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'imageViewing-request
    (cl:cons ':path_to_tmp_img (path_to_tmp_img msg))
    (cl:cons ':maxSimVal (maxSimVal msg))
))
;//! \htmlinclude imageViewing-response.msg.html

(cl:defclass <imageViewing-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass imageViewing-response (<imageViewing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imageViewing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imageViewing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imagelistener-srv:<imageViewing-response> is deprecated: use imagelistener-srv:imageViewing-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imageViewing-response>) ostream)
  "Serializes a message object of type '<imageViewing-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imageViewing-response>) istream)
  "Deserializes a message object of type '<imageViewing-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imageViewing-response>)))
  "Returns string type for a service object of type '<imageViewing-response>"
  "imagelistener/imageViewingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imageViewing-response)))
  "Returns string type for a service object of type 'imageViewing-response"
  "imagelistener/imageViewingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imageViewing-response>)))
  "Returns md5sum for a message object of type '<imageViewing-response>"
  "9bcd3c971dc9a992e6146aaf6c22043b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imageViewing-response)))
  "Returns md5sum for a message object of type 'imageViewing-response"
  "9bcd3c971dc9a992e6146aaf6c22043b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imageViewing-response>)))
  "Returns full string definition for message of type '<imageViewing-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imageViewing-response)))
  "Returns full string definition for message of type 'imageViewing-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imageViewing-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imageViewing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'imageViewing-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'imageViewing)))
  'imageViewing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'imageViewing)))
  'imageViewing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imageViewing)))
  "Returns string type for a service object of type '<imageViewing>"
  "imagelistener/imageViewing")