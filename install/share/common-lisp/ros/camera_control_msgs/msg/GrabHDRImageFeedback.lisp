; Auto-generated. Do not edit!


(cl:in-package camera_control_msgs-msg)


;//! \htmlinclude GrabHDRImageFeedback.msg.html

(cl:defclass <GrabHDRImageFeedback> (roslisp-msg-protocol:ros-message)
  ((curr_nr_images_taken
    :reader curr_nr_images_taken
    :initarg :curr_nr_images_taken
    :type cl:integer
    :initform 0))
)

(cl:defclass GrabHDRImageFeedback (<GrabHDRImageFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GrabHDRImageFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GrabHDRImageFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-msg:<GrabHDRImageFeedback> is deprecated: use camera_control_msgs-msg:GrabHDRImageFeedback instead.")))

(cl:ensure-generic-function 'curr_nr_images_taken-val :lambda-list '(m))
(cl:defmethod curr_nr_images_taken-val ((m <GrabHDRImageFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:curr_nr_images_taken-val is deprecated.  Use camera_control_msgs-msg:curr_nr_images_taken instead.")
  (curr_nr_images_taken m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GrabHDRImageFeedback>) ostream)
  "Serializes a message object of type '<GrabHDRImageFeedback>"
  (cl:let* ((signed (cl:slot-value msg 'curr_nr_images_taken)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GrabHDRImageFeedback>) istream)
  "Deserializes a message object of type '<GrabHDRImageFeedback>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'curr_nr_images_taken) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GrabHDRImageFeedback>)))
  "Returns string type for a message object of type '<GrabHDRImageFeedback>"
  "camera_control_msgs/GrabHDRImageFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GrabHDRImageFeedback)))
  "Returns string type for a message object of type 'GrabHDRImageFeedback"
  "camera_control_msgs/GrabHDRImageFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GrabHDRImageFeedback>)))
  "Returns md5sum for a message object of type '<GrabHDRImageFeedback>"
  "416670c64a4018bd170bd09a7dd5f0c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GrabHDRImageFeedback)))
  "Returns md5sum for a message object of type 'GrabHDRImageFeedback"
  "416670c64a4018bd170bd09a7dd5f0c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GrabHDRImageFeedback>)))
  "Returns full string definition for message of type '<GrabHDRImageFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##########################################~%################ FEEDBACK ################~%##########################################~%int32 curr_nr_images_taken~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GrabHDRImageFeedback)))
  "Returns full string definition for message of type 'GrabHDRImageFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##########################################~%################ FEEDBACK ################~%##########################################~%int32 curr_nr_images_taken~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GrabHDRImageFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GrabHDRImageFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'GrabHDRImageFeedback
    (cl:cons ':curr_nr_images_taken (curr_nr_images_taken msg))
))
