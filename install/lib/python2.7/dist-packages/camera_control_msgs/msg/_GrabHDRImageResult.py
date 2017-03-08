# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from camera_control_msgs/GrabHDRImageResult.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import sensor_msgs.msg

class GrabHDRImageResult(genpy.Message):
  _md5sum = "94b690a9387c9677e5fe4fdfb8dc4bc6"
  _type = "camera_control_msgs/GrabHDRImageResult"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
##########################################
################# RESULT #################
##########################################

########################################## DEPRECATED !!!
# target values can not always be reached
float32[] reached_values
########################################## DEPRECATED !!!

# The resulting HDR image generated out of several images with the inquired
# image intensity settings.
sensor_msgs/Image hdr_image

# The reached values of the images e.g. the values that were set to the camera
# before the grab
float32[] reached_exposure_times

float32[] reached_brightness_values

float32[] reached_gain_values

float32[] reached_gamma_values

# Flag which indicates the success of the grabbing action
bool success


================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['reached_values','hdr_image','reached_exposure_times','reached_brightness_values','reached_gain_values','reached_gamma_values','success']
  _slot_types = ['float32[]','sensor_msgs/Image','float32[]','float32[]','float32[]','float32[]','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       reached_values,hdr_image,reached_exposure_times,reached_brightness_values,reached_gain_values,reached_gamma_values,success

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GrabHDRImageResult, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.reached_values is None:
        self.reached_values = []
      if self.hdr_image is None:
        self.hdr_image = sensor_msgs.msg.Image()
      if self.reached_exposure_times is None:
        self.reached_exposure_times = []
      if self.reached_brightness_values is None:
        self.reached_brightness_values = []
      if self.reached_gain_values is None:
        self.reached_gain_values = []
      if self.reached_gamma_values is None:
        self.reached_gamma_values = []
      if self.success is None:
        self.success = False
    else:
      self.reached_values = []
      self.hdr_image = sensor_msgs.msg.Image()
      self.reached_exposure_times = []
      self.reached_brightness_values = []
      self.reached_gain_values = []
      self.reached_gamma_values = []
      self.success = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.reached_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.reached_values))
      _x = self
      buff.write(_struct_3I.pack(_x.hdr_image.header.seq, _x.hdr_image.header.stamp.secs, _x.hdr_image.header.stamp.nsecs))
      _x = self.hdr_image.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.hdr_image.height, _x.hdr_image.width))
      _x = self.hdr_image.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.hdr_image.is_bigendian, _x.hdr_image.step))
      _x = self.hdr_image.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.reached_exposure_times)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.reached_exposure_times))
      length = len(self.reached_brightness_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.reached_brightness_values))
      length = len(self.reached_gain_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.reached_gain_values))
      length = len(self.reached_gamma_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.reached_gamma_values))
      buff.write(_struct_B.pack(self.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.hdr_image is None:
        self.hdr_image = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_values = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 12
      (_x.hdr_image.header.seq, _x.hdr_image.header.stamp.secs, _x.hdr_image.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.hdr_image.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.hdr_image.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.hdr_image.height, _x.hdr_image.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.hdr_image.encoding = str[start:end].decode('utf-8')
      else:
        self.hdr_image.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.hdr_image.is_bigendian, _x.hdr_image.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.hdr_image.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_exposure_times = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_brightness_values = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_gain_values = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_gamma_values = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.success,) = _struct_B.unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.reached_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.reached_values.tostring())
      _x = self
      buff.write(_struct_3I.pack(_x.hdr_image.header.seq, _x.hdr_image.header.stamp.secs, _x.hdr_image.header.stamp.nsecs))
      _x = self.hdr_image.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.hdr_image.height, _x.hdr_image.width))
      _x = self.hdr_image.encoding
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_BI.pack(_x.hdr_image.is_bigendian, _x.hdr_image.step))
      _x = self.hdr_image.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.reached_exposure_times)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.reached_exposure_times.tostring())
      length = len(self.reached_brightness_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.reached_brightness_values.tostring())
      length = len(self.reached_gain_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.reached_gain_values.tostring())
      length = len(self.reached_gamma_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.reached_gamma_values.tostring())
      buff.write(_struct_B.pack(self.success))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.hdr_image is None:
        self.hdr_image = sensor_msgs.msg.Image()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      _x = self
      start = end
      end += 12
      (_x.hdr_image.header.seq, _x.hdr_image.header.stamp.secs, _x.hdr_image.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.hdr_image.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.hdr_image.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.hdr_image.height, _x.hdr_image.width,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.hdr_image.encoding = str[start:end].decode('utf-8')
      else:
        self.hdr_image.encoding = str[start:end]
      _x = self
      start = end
      end += 5
      (_x.hdr_image.is_bigendian, _x.hdr_image.step,) = _struct_BI.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      self.hdr_image.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_exposure_times = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_brightness_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_gain_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.reached_gamma_values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 1
      (self.success,) = _struct_B.unpack(str[start:end])
      self.success = bool(self.success)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_B = struct.Struct("<B")
_struct_2I = struct.Struct("<2I")
_struct_BI = struct.Struct("<BI")
