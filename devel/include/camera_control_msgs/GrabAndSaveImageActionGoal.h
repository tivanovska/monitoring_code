// Generated by gencpp from file camera_control_msgs/GrabAndSaveImageActionGoal.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_GRABANDSAVEIMAGEACTIONGOAL_H
#define CAMERA_CONTROL_MSGS_MESSAGE_GRABANDSAVEIMAGEACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <camera_control_msgs/GrabAndSaveImageGoal.h>

namespace camera_control_msgs
{
template <class ContainerAllocator>
struct GrabAndSaveImageActionGoal_
{
  typedef GrabAndSaveImageActionGoal_<ContainerAllocator> Type;

  GrabAndSaveImageActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  GrabAndSaveImageActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::camera_control_msgs::GrabAndSaveImageGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct GrabAndSaveImageActionGoal_

typedef ::camera_control_msgs::GrabAndSaveImageActionGoal_<std::allocator<void> > GrabAndSaveImageActionGoal;

typedef boost::shared_ptr< ::camera_control_msgs::GrabAndSaveImageActionGoal > GrabAndSaveImageActionGoalPtr;
typedef boost::shared_ptr< ::camera_control_msgs::GrabAndSaveImageActionGoal const> GrabAndSaveImageActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'camera_control_msgs': ['/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca187b6ecb464f9dbe4befbffca80547";
  }

  static const char* value(const ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xca187b6ecb464f9dULL;
  static const uint64_t static_value2 = 0xbe4befbffca80547ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/GrabAndSaveImageActionGoal";
  }

  static const char* value(const ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
GrabAndSaveImageGoal goal\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: camera_control_msgs/GrabAndSaveImageGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# The 'GrabAndSaveImageAction' has a similar goal as the 'GrabImagesAction' in\n\
# case of only grabbing one image. It additionally contains a string describing\n\
# the full storage path of the image to be captured.\n\
# It wont provide the grabbed image via the result topic. Instead it only\n\
# returns a flag indicating the success.\n\
\n\
##########################################\n\
################## GOAL ##################\n\
##########################################\n\
\n\
# Flag which indicates if the exposure time is provided and hence should be\n\
# set before grabbing\n\
bool exposure_given\n\
\n\
# Only relevant, if exposure_given is true:\n\
# The target exposure time in microseconds. This values can be overriden from\n\
# the brightness search, in case that the flag exposure_fixed is not true.\n\
float32 exposure_time\n\
\n\
# Flag which indicates if the gain is provided and hence should be set before\n\
# grabbing\n\
bool gain_given\n\
\n\
# Only relevant, if gain_given is true:\n\
# The target gain in percent of the maximal value the camera supports.\n\
# For USB-Cameras, the gain is in dB, for GigE-Cameras it is given in so\n\
# called 'device specific units'. This value can be overriden from the\n\
# brightness search, in case that the gain_fixed flag is set to false.\n\
float32 gain_value\n\
\n\
# Flag which indicates if the gamma value is provided and hence should be set\n\
# before grabbing\n\
bool gamma_given\n\
\n\
# Only relevant, if gain_given is true:\n\
# Gamma correction of pixel intensity.\n\
# Adjusts the brightness of the pixel values output by the camera's sensor\n\
# to account for a non-linearity in the human perception of brightness or\n\
# of the display system (such as CRT).\n\
float32 gamma_value\n\
\n\
# Flag which indicates if the brightness value is provided and hence should\n\
# be set before grabbing\n\
bool brightness_given\n\
\n\
# Only relevant, if brightness_given is true:\n\
# The average intensity value of the resulting image. It depends the exposure\n\
# time as well as the gain setting.\n\
float32 brightness_value\n\
\n\
# Only relevant, if brightness_given is true:\n\
# If the camera should try reach the desired brightness, at least one of the\n\
# following flags MUST be set. If both are set, the interface will use the\n\
# profile that tries to keep the gain at minimum to reduce white noise.\n\
# 'exposure_auto' will adapt the exposure time to reach the brightness, wheras\n\
# 'gain_auto' does so by adapting the gain. If one of these flags is set to\n\
# false, the connected property will be kept fix.\n\
# In most of the cases trying to reach a target brightness only by varying the\n\
# gain and keeping the exposure time fix is not a good approach, because the\n\
# exposure range is many times higher than the gain range.\n\
bool exposure_auto\n\
bool gain_auto\n\
\n\
# File path and image name (including file-extension) to store the grabbed\n\
# image\n\
string img_storage_path_and_name\n\
";
  }

  static const char* value(const ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GrabAndSaveImageActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::GrabAndSaveImageActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::camera_control_msgs::GrabAndSaveImageGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_GRABANDSAVEIMAGEACTIONGOAL_H
