; Auto-generated. Do not edit!


(cl:in-package camera_control_msgs-msg)


;//! \htmlinclude GrabAndSaveImageFeedback.msg.html

(cl:defclass <GrabAndSaveImageFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GrabAndSaveImageFeedback (<GrabAndSaveImageFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GrabAndSaveImageFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GrabAndSaveImageFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-msg:<GrabAndSaveImageFeedback> is deprecated: use camera_control_msgs-msg:GrabAndSaveImageFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GrabAndSaveImageFeedback>) ostream)
  "Serializes a message object of type '<GrabAndSaveImageFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GrabAndSaveImageFeedback>) istream)
  "Deserializes a message object of type '<GrabAndSaveImageFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GrabAndSaveImageFeedback>)))
  "Returns string type for a message object of type '<GrabAndSaveImageFeedback>"
  "camera_control_msgs/GrabAndSaveImageFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GrabAndSaveImageFeedback)))
  "Returns string type for a message object of type 'GrabAndSaveImageFeedback"
  "camera_control_msgs/GrabAndSaveImageFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GrabAndSaveImageFeedback>)))
  "Returns md5sum for a message object of type '<GrabAndSaveImageFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GrabAndSaveImageFeedback)))
  "Returns md5sum for a message object of type 'GrabAndSaveImageFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GrabAndSaveImageFeedback>)))
  "Returns full string definition for message of type '<GrabAndSaveImageFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# No Feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GrabAndSaveImageFeedback)))
  "Returns full string definition for message of type 'GrabAndSaveImageFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# No Feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GrabAndSaveImageFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GrabAndSaveImageFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'GrabAndSaveImageFeedback
))
