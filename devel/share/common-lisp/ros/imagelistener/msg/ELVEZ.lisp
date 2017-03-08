; Auto-generated. Do not edit!


(cl:in-package imagelistener-msg)


;//! \htmlinclude ELVEZ.msg.html

(cl:defclass <ELVEZ> (roslisp-msg-protocol:ros-message)
  ((detail_detected
    :reader detail_detected
    :initarg :detail_detected
    :type cl:integer
    :initform 0)
   (detail_ok
    :reader detail_ok
    :initarg :detail_ok
    :type cl:integer
    :initform 0)
   (operation_type
    :reader operation_type
    :initarg :operation_type
    :type cl:integer
    :initform 0)
   (measurement_mm
    :reader measurement_mm
    :initarg :measurement_mm
    :type cl:float
    :initform 0.0)
   (angle_grad
    :reader angle_grad
    :initarg :angle_grad
    :type cl:float
    :initform 0.0)
   (angle_axis
    :reader angle_axis
    :initarg :angle_axis
    :type cl:integer
    :initform 0))
)

(cl:defclass ELVEZ (<ELVEZ>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ELVEZ>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ELVEZ)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name imagelistener-msg:<ELVEZ> is deprecated: use imagelistener-msg:ELVEZ instead.")))

(cl:ensure-generic-function 'detail_detected-val :lambda-list '(m))
(cl:defmethod detail_detected-val ((m <ELVEZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-msg:detail_detected-val is deprecated.  Use imagelistener-msg:detail_detected instead.")
  (detail_detected m))

(cl:ensure-generic-function 'detail_ok-val :lambda-list '(m))
(cl:defmethod detail_ok-val ((m <ELVEZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-msg:detail_ok-val is deprecated.  Use imagelistener-msg:detail_ok instead.")
  (detail_ok m))

(cl:ensure-generic-function 'operation_type-val :lambda-list '(m))
(cl:defmethod operation_type-val ((m <ELVEZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-msg:operation_type-val is deprecated.  Use imagelistener-msg:operation_type instead.")
  (operation_type m))

(cl:ensure-generic-function 'measurement_mm-val :lambda-list '(m))
(cl:defmethod measurement_mm-val ((m <ELVEZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-msg:measurement_mm-val is deprecated.  Use imagelistener-msg:measurement_mm instead.")
  (measurement_mm m))

(cl:ensure-generic-function 'angle_grad-val :lambda-list '(m))
(cl:defmethod angle_grad-val ((m <ELVEZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-msg:angle_grad-val is deprecated.  Use imagelistener-msg:angle_grad instead.")
  (angle_grad m))

(cl:ensure-generic-function 'angle_axis-val :lambda-list '(m))
(cl:defmethod angle_axis-val ((m <ELVEZ>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader imagelistener-msg:angle_axis-val is deprecated.  Use imagelistener-msg:angle_axis instead.")
  (angle_axis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ELVEZ>) ostream)
  "Serializes a message object of type '<ELVEZ>"
  (cl:let* ((signed (cl:slot-value msg 'detail_detected)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'detail_ok)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'operation_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'measurement_mm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_grad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'angle_axis)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ELVEZ>) istream)
  "Deserializes a message object of type '<ELVEZ>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail_detected) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail_ok) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measurement_mm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_grad) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'angle_axis) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ELVEZ>)))
  "Returns string type for a message object of type '<ELVEZ>"
  "imagelistener/ELVEZ")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ELVEZ)))
  "Returns string type for a message object of type 'ELVEZ"
  "imagelistener/ELVEZ")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ELVEZ>)))
  "Returns md5sum for a message object of type '<ELVEZ>"
  "091bb750addfb2a2d38be01aa4c9705f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ELVEZ)))
  "Returns md5sum for a message object of type 'ELVEZ"
  "091bb750addfb2a2d38be01aa4c9705f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ELVEZ>)))
  "Returns full string definition for message of type '<ELVEZ>"
  (cl:format cl:nil "int32 detail_detected~%int32 detail_ok~%int32 operation_type~%float32 measurement_mm~%float32 angle_grad~%int32 angle_axis~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ELVEZ)))
  "Returns full string definition for message of type 'ELVEZ"
  (cl:format cl:nil "int32 detail_detected~%int32 detail_ok~%int32 operation_type~%float32 measurement_mm~%float32 angle_grad~%int32 angle_axis~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ELVEZ>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ELVEZ>))
  "Converts a ROS message object to a list"
  (cl:list 'ELVEZ
    (cl:cons ':detail_detected (detail_detected msg))
    (cl:cons ':detail_ok (detail_ok msg))
    (cl:cons ':operation_type (operation_type msg))
    (cl:cons ':measurement_mm (measurement_mm msg))
    (cl:cons ':angle_grad (angle_grad msg))
    (cl:cons ':angle_axis (angle_axis msg))
))
