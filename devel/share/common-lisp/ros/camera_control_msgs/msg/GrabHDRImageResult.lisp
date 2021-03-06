; Auto-generated. Do not edit!


(cl:in-package camera_control_msgs-msg)


;//! \htmlinclude GrabHDRImageResult.msg.html

(cl:defclass <GrabHDRImageResult> (roslisp-msg-protocol:ros-message)
  ((reached_values
    :reader reached_values
    :initarg :reached_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (hdr_image
    :reader hdr_image
    :initarg :hdr_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (reached_exposure_times
    :reader reached_exposure_times
    :initarg :reached_exposure_times
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (reached_brightness_values
    :reader reached_brightness_values
    :initarg :reached_brightness_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (reached_gain_values
    :reader reached_gain_values
    :initarg :reached_gain_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (reached_gamma_values
    :reader reached_gamma_values
    :initarg :reached_gamma_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GrabHDRImageResult (<GrabHDRImageResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GrabHDRImageResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GrabHDRImageResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name camera_control_msgs-msg:<GrabHDRImageResult> is deprecated: use camera_control_msgs-msg:GrabHDRImageResult instead.")))

(cl:ensure-generic-function 'reached_values-val :lambda-list '(m))
(cl:defmethod reached_values-val ((m <GrabHDRImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:reached_values-val is deprecated.  Use camera_control_msgs-msg:reached_values instead.")
  (reached_values m))

(cl:ensure-generic-function 'hdr_image-val :lambda-list '(m))
(cl:defmethod hdr_image-val ((m <GrabHDRImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:hdr_image-val is deprecated.  Use camera_control_msgs-msg:hdr_image instead.")
  (hdr_image m))

(cl:ensure-generic-function 'reached_exposure_times-val :lambda-list '(m))
(cl:defmethod reached_exposure_times-val ((m <GrabHDRImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:reached_exposure_times-val is deprecated.  Use camera_control_msgs-msg:reached_exposure_times instead.")
  (reached_exposure_times m))

(cl:ensure-generic-function 'reached_brightness_values-val :lambda-list '(m))
(cl:defmethod reached_brightness_values-val ((m <GrabHDRImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:reached_brightness_values-val is deprecated.  Use camera_control_msgs-msg:reached_brightness_values instead.")
  (reached_brightness_values m))

(cl:ensure-generic-function 'reached_gain_values-val :lambda-list '(m))
(cl:defmethod reached_gain_values-val ((m <GrabHDRImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:reached_gain_values-val is deprecated.  Use camera_control_msgs-msg:reached_gain_values instead.")
  (reached_gain_values m))

(cl:ensure-generic-function 'reached_gamma_values-val :lambda-list '(m))
(cl:defmethod reached_gamma_values-val ((m <GrabHDRImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:reached_gamma_values-val is deprecated.  Use camera_control_msgs-msg:reached_gamma_values instead.")
  (reached_gamma_values m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GrabHDRImageResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader camera_control_msgs-msg:success-val is deprecated.  Use camera_control_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GrabHDRImageResult>) ostream)
  "Serializes a message object of type '<GrabHDRImageResult>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reached_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'reached_values))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hdr_image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reached_exposure_times))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'reached_exposure_times))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reached_brightness_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'reached_brightness_values))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reached_gain_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'reached_gain_values))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reached_gamma_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'reached_gamma_values))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GrabHDRImageResult>) istream)
  "Deserializes a message object of type '<GrabHDRImageResult>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reached_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reached_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hdr_image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reached_exposure_times) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reached_exposure_times)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reached_brightness_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reached_brightness_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reached_gain_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reached_gain_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reached_gamma_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reached_gamma_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GrabHDRImageResult>)))
  "Returns string type for a message object of type '<GrabHDRImageResult>"
  "camera_control_msgs/GrabHDRImageResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GrabHDRImageResult)))
  "Returns string type for a message object of type 'GrabHDRImageResult"
  "camera_control_msgs/GrabHDRImageResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GrabHDRImageResult>)))
  "Returns md5sum for a message object of type '<GrabHDRImageResult>"
  "94b690a9387c9677e5fe4fdfb8dc4bc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GrabHDRImageResult)))
  "Returns md5sum for a message object of type 'GrabHDRImageResult"
  "94b690a9387c9677e5fe4fdfb8dc4bc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GrabHDRImageResult>)))
  "Returns full string definition for message of type '<GrabHDRImageResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##########################################~%################# RESULT #################~%##########################################~%~%########################################## DEPRECATED !!!~%# target values can not always be reached~%float32[] reached_values~%########################################## DEPRECATED !!!~%~%# The resulting HDR image generated out of several images with the inquired~%# image intensity settings.~%sensor_msgs/Image hdr_image~%~%# The reached values of the images e.g. the values that were set to the camera~%# before the grab~%float32[] reached_exposure_times~%~%float32[] reached_brightness_values~%~%float32[] reached_gain_values~%~%float32[] reached_gamma_values~%~%# Flag which indicates the success of the grabbing action~%bool success~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GrabHDRImageResult)))
  "Returns full string definition for message of type 'GrabHDRImageResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%##########################################~%################# RESULT #################~%##########################################~%~%########################################## DEPRECATED !!!~%# target values can not always be reached~%float32[] reached_values~%########################################## DEPRECATED !!!~%~%# The resulting HDR image generated out of several images with the inquired~%# image intensity settings.~%sensor_msgs/Image hdr_image~%~%# The reached values of the images e.g. the values that were set to the camera~%# before the grab~%float32[] reached_exposure_times~%~%float32[] reached_brightness_values~%~%float32[] reached_gain_values~%~%float32[] reached_gamma_values~%~%# Flag which indicates the success of the grabbing action~%bool success~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GrabHDRImageResult>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reached_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hdr_image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reached_exposure_times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reached_brightness_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reached_gain_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reached_gamma_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GrabHDRImageResult>))
  "Converts a ROS message object to a list"
  (cl:list 'GrabHDRImageResult
    (cl:cons ':reached_values (reached_values msg))
    (cl:cons ':hdr_image (hdr_image msg))
    (cl:cons ':reached_exposure_times (reached_exposure_times msg))
    (cl:cons ':reached_brightness_values (reached_brightness_values msg))
    (cl:cons ':reached_gain_values (reached_gain_values msg))
    (cl:cons ':reached_gamma_values (reached_gamma_values msg))
    (cl:cons ':success (success msg))
))
