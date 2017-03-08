; Auto-generated. Do not edit!


(cl:in-package imagelistener-srv)


;//! \htmlinclude exampleImageProcessing-request.msg.html

(cl:defclass <exampleImageProcessing-request> (roslisp-msg-protocol:ros-message)
  ((ID_Template
    :reader ID_Template
    :initarg :ID_Template
    :type cl:integer
    :initform 0)
   (ID_Operation
    :reader ID_Operation
    :initarg :ID_Operation
    :type cl:integer
    :initform 0))
)

(cl:defclass exampleImageProcessing-request (<exampleImageProcessing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <exampleImageProcessing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'exampleImageProcessing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imagelistener-srv:<exampleImageProcessing-request> is deprecated: use imagelistener-srv:exampleImageProcessing-request instead.")))

(cl:ensure-generic-function 'ID_Template-val :lambda-list '(m))
(cl:defmethod ID_Template-val ((m <exampleImageProcessing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-srv:ID_Template-val is deprecated.  Use imagelistener-srv:ID_Template instead.")
  (ID_Template m))

(cl:ensure-generic-function 'ID_Operation-val :lambda-list '(m))
(cl:defmethod ID_Operation-val ((m <exampleImageProcessing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-srv:ID_Operation-val is deprecated.  Use imagelistener-srv:ID_Operation instead.")
  (ID_Operation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <exampleImageProcessing-request>) ostream)
  "Serializes a message object of type '<exampleImageProcessing-request>"
  (cl:let* ((signed (cl:slot-value msg 'ID_Template)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ID_Operation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <exampleImageProcessing-request>) istream)
  "Deserializes a message object of type '<exampleImageProcessing-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_Template) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID_Operation) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<exampleImageProcessing-request>)))
  "Returns string type for a service object of type '<exampleImageProcessing-request>"
  "imagelistener/exampleImageProcessingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exampleImageProcessing-request)))
  "Returns string type for a service object of type 'exampleImageProcessing-request"
  "imagelistener/exampleImageProcessingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<exampleImageProcessing-request>)))
  "Returns md5sum for a message object of type '<exampleImageProcessing-request>"
  "4df001eccb778b16252d267a56e427e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'exampleImageProcessing-request)))
  "Returns md5sum for a message object of type 'exampleImageProcessing-request"
  "4df001eccb778b16252d267a56e427e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<exampleImageProcessing-request>)))
  "Returns full string definition for message of type '<exampleImageProcessing-request>"
  (cl:format cl:nil "int64 ID_Template~%int64 ID_Operation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'exampleImageProcessing-request)))
  "Returns full string definition for message of type 'exampleImageProcessing-request"
  (cl:format cl:nil "int64 ID_Template~%int64 ID_Operation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <exampleImageProcessing-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <exampleImageProcessing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'exampleImageProcessing-request
    (cl:cons ':ID_Template (ID_Template msg))
    (cl:cons ':ID_Operation (ID_Operation msg))
))
;//! \htmlinclude exampleImageProcessing-response.msg.html

(cl:defclass <exampleImageProcessing-response> (roslisp-msg-protocol:ros-message)
  ((Im_Width
    :reader Im_Width
    :initarg :Im_Width
    :type cl:integer
    :initform 0)
   (Im_Height
    :reader Im_Height
    :initarg :Im_Height
    :type cl:integer
    :initform 0)
   (Mon_result
    :reader Mon_result
    :initarg :Mon_result
    :type imagelistener-msg:ELVEZ
    :initform (cl:make-instance 'imagelistener-msg:ELVEZ)))
)

(cl:defclass exampleImageProcessing-response (<exampleImageProcessing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <exampleImageProcessing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'exampleImageProcessing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imagelistener-srv:<exampleImageProcessing-response> is deprecated: use imagelistener-srv:exampleImageProcessing-response instead.")))

(cl:ensure-generic-function 'Im_Width-val :lambda-list '(m))
(cl:defmethod Im_Width-val ((m <exampleImageProcessing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-srv:Im_Width-val is deprecated.  Use imagelistener-srv:Im_Width instead.")
  (Im_Width m))

(cl:ensure-generic-function 'Im_Height-val :lambda-list '(m))
(cl:defmethod Im_Height-val ((m <exampleImageProcessing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-srv:Im_Height-val is deprecated.  Use imagelistener-srv:Im_Height instead.")
  (Im_Height m))

(cl:ensure-generic-function 'Mon_result-val :lambda-list '(m))
(cl:defmethod Mon_result-val ((m <exampleImageProcessing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-srv:Mon_result-val is deprecated.  Use imagelistener-srv:Mon_result instead.")
  (Mon_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <exampleImageProcessing-response>) ostream)
  "Serializes a message object of type '<exampleImageProcessing-response>"
  (cl:let* ((signed (cl:slot-value msg 'Im_Width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Im_Height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Mon_result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <exampleImageProcessing-response>) istream)
  "Deserializes a message object of type '<exampleImageProcessing-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Im_Width) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Im_Height) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Mon_result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<exampleImageProcessing-response>)))
  "Returns string type for a service object of type '<exampleImageProcessing-response>"
  "imagelistener/exampleImageProcessingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exampleImageProcessing-response)))
  "Returns string type for a service object of type 'exampleImageProcessing-response"
  "imagelistener/exampleImageProcessingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<exampleImageProcessing-response>)))
  "Returns md5sum for a message object of type '<exampleImageProcessing-response>"
  "4df001eccb778b16252d267a56e427e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'exampleImageProcessing-response)))
  "Returns md5sum for a message object of type 'exampleImageProcessing-response"
  "4df001eccb778b16252d267a56e427e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<exampleImageProcessing-response>)))
  "Returns full string definition for message of type '<exampleImageProcessing-response>"
  (cl:format cl:nil "int64 Im_Width~%int64 Im_Height~%ELVEZ Mon_result~%~%~%================================================================================~%MSG: imagelistener/ELVEZ~%int32 detail_detected~%int32 detail_ok~%int32 operation_type~%float32 measurement_mm~%float32 angle_grad~%int32 angle_axis~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'exampleImageProcessing-response)))
  "Returns full string definition for message of type 'exampleImageProcessing-response"
  (cl:format cl:nil "int64 Im_Width~%int64 Im_Height~%ELVEZ Mon_result~%~%~%================================================================================~%MSG: imagelistener/ELVEZ~%int32 detail_detected~%int32 detail_ok~%int32 operation_type~%float32 measurement_mm~%float32 angle_grad~%int32 angle_axis~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <exampleImageProcessing-response>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Mon_result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <exampleImageProcessing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'exampleImageProcessing-response
    (cl:cons ':Im_Width (Im_Width msg))
    (cl:cons ':Im_Height (Im_Height msg))
    (cl:cons ':Mon_result (Mon_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'exampleImageProcessing)))
  'exampleImageProcessing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'exampleImageProcessing)))
  'exampleImageProcessing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'exampleImageProcessing)))
  "Returns string type for a service object of type '<exampleImageProcessing>"
  "imagelistener/exampleImageProcessing")