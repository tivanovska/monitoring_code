; Auto-generated. Do not edit!


(cl:in-package camera_control_msgs-msg)


;//! \htmlinclude GrabAndSaveImageResult.msg.html

(cl:defclass <GrabAndSaveImageResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GrabAndSaveImageResult (<GrabAndSaveImageResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GrabAndSaveImageResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GrabAndSaveImageResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-msg:<GrabAndSaveImageResult> is deprecated: use camera_control_msgs-msg:GrabAndSaveImageResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GrabAndSaveImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:success-val is deprecated.  Use camera_control_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GrabAndSaveImageResult>) ostream)
  "Serializes a message object of type '<GrabAndSaveImageResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GrabAndSaveImageResult>) istream)
  "Deserializes a message object of type '<GrabAndSaveImageResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GrabAndSaveImageResult>)))
  "Returns string type for a message object of type '<GrabAndSaveImageResult>"
  "camera_control_msgs/GrabAndSaveImageResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GrabAndSaveImageResult)))
  "Returns string type for a message object of type 'GrabAndSaveImageResult"
  "camera_control_msgs/GrabAndSaveImageResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GrabAndSaveImageResult>)))
  "Returns md5sum for a message object of type '<GrabAndSaveImageResult>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GrabAndSaveImageResult)))
  "Returns md5sum for a message object of type 'GrabAndSaveImageResult"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GrabAndSaveImageResult>)))
  "Returns full string definition for message of type '<GrabAndSaveImageResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%##########################################~%################# RESULT #################~%##########################################~%~%# Flag which indicates the success of ithe grabbing and storage action.~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GrabAndSaveImageResult)))
  "Returns full string definition for message of type 'GrabAndSaveImageResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%##########################################~%################# RESULT #################~%##########################################~%~%# Flag which indicates the success of ithe grabbing and storage action.~%bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GrabAndSaveImageResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GrabAndSaveImageResult>))
  "Converts a ROS message object to a list"
  (cl:list 'GrabAndSaveImageResult
    (cl:cons ':success (success msg))
))
