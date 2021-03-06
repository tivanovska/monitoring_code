// Generated by gencpp from file camera_control_msgs/GrabHDRImageGoal.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_GRABHDRIMAGEGOAL_H
#define CAMERA_CONTROL_MSGS_MESSAGE_GRABHDRIMAGEGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace camera_control_msgs
{
template <class ContainerAllocator>
struct GrabHDRImageGoal_
{
  typedef GrabHDRImageGoal_<ContainerAllocator> Type;

  GrabHDRImageGoal_()
    : target_type(0)
    , target_values()
    , exposure_given(false)
    , exposure_times()
    , exposure_fixed(false)
    , brightness_given(false)
    , brightness_values()
    , brightness_continuous(false)
    , gain_given(false)
    , gain_values()
    , gain_fixed(false)
    , gamma_given(false)
    , gamma_values()  {
    }
  GrabHDRImageGoal_(const ContainerAllocator& _alloc)
    : target_type(0)
    , target_values(_alloc)
    , exposure_given(false)
    , exposure_times(_alloc)
    , exposure_fixed(false)
    , brightness_given(false)
    , brightness_values(_alloc)
    , brightness_continuous(false)
    , gain_given(false)
    , gain_values(_alloc)
    , gain_fixed(false)
    , gamma_given(false)
    , gamma_values(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _target_type_type;
  _target_type_type target_type;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _target_values_type;
  _target_values_type target_values;

   typedef uint8_t _exposure_given_type;
  _exposure_given_type exposure_given;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _exposure_times_type;
  _exposure_times_type exposure_times;

   typedef uint8_t _exposure_fixed_type;
  _exposure_fixed_type exposure_fixed;

   typedef uint8_t _brightness_given_type;
  _brightness_given_type brightness_given;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _brightness_values_type;
  _brightness_values_type brightness_values;

   typedef uint8_t _brightness_continuous_type;
  _brightness_continuous_type brightness_continuous;

   typedef uint8_t _gain_given_type;
  _gain_given_type gain_given;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _gain_values_type;
  _gain_values_type gain_values;

   typedef uint8_t _gain_fixed_type;
  _gain_fixed_type gain_fixed;

   typedef uint8_t _gamma_given_type;
  _gamma_given_type gamma_given;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _gamma_values_type;
  _gamma_values_type gamma_values;


    enum { BRIGHTNESS = 1u };
     enum { EXPOSURE = 2u };
 

  typedef boost::shared_ptr< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> const> ConstPtr;

}; // struct GrabHDRImageGoal_

typedef ::camera_control_msgs::GrabHDRImageGoal_<std::allocator<void> > GrabHDRImageGoal;

typedef boost::shared_ptr< ::camera_control_msgs::GrabHDRImageGoal > GrabHDRImageGoalPtr;
typedef boost::shared_ptr< ::camera_control_msgs::GrabHDRImageGoal const> GrabHDRImageGoalConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'camera_control_msgs': ['/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bebd46d3bb820458935c996dfc0a7b94";
  }

  static const char* value(const ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbebd46d3bb820458ULL;
  static const uint64_t static_value2 = 0x935c996dfc0a7b94ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/GrabHDRImageGoal";
  }

  static const char* value(const ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
##########################################\n\
################## GOAL ##################\n\
##########################################\n\
\n\
########################################## DEPRECATED !!!\n\
uint8 BRIGHTNESS = 1\n\
uint8 EXPOSURE = 2\n\
# select between desired mean brightness or exposure\n\
uint8 target_type\n\
# list of target exposures/brightness -> resulting 'images' list has same size\n\
float32[] target_values\n\
########################################## DEPRECATED !!!\n\
\n\
# Flag which indicates if the exposure times are provided and hence should be\n\
# set before grabbing\n\
bool exposure_given\n\
\n\
# The list of target exposure time in microseconds.\n\
# It is possible to grab only one image as well as several images with\n\
# different exposure times. This values can be overriden from the brightness\n\
# search, in case that the flag exposure_fixed is not true.\n\
# The interface will only try to set these values if the exposure_given flag is\n\
# set to true.\n\
float32[] exposure_times\n\
\n\
# If the exposure_fixed flag is set, the exposure time will stay fix in\n\
# case of a brightness search. Hence the target brightness will be reached\n\
# only by varying the gain\n\
bool exposure_fixed\n\
\n\
\n\
# Flag which indicates if the brightness values are provided and hence should\n\
# be set before grabbing\n\
bool brightness_given\n\
\n\
# The average intensity values of the images. It depends the exposure time\n\
# as well as the gain setting. The interface will only try to reach this\n\
# value if the brightness_given flag is set to true.\n\
float32[] brightness_values\n\
\n\
# The brightness_continuous flag controls the auto brightness function.\n\
# If it is set to false, the given brightness will only be reached once.\n\
# Hence changing light conditions lead to changing brightness values.\n\
# If it is set to true, the given brightness will be reached continuously,\n\
# trying to adapt to changing light conditions.\n\
bool brightness_continuous\n\
\n\
\n\
# Flag which indicates if the gain is provided and hence should be set before\n\
# grabbing\n\
bool gain_given\n\
\n\
# The target gain values in percent of the maximal value the camera supports\n\
# For USB-Cameras, the gain is in dB, for GigE-Cameras it is given in so\n\
# called 'device specific units'. This value can be overriden from the\n\
# brightness search, in case that the gain_fixed flag is set to false.\n\
# The interface will only try to reach this values if the gain_given flag is\n\
# set to true.\n\
float32[] gain_values\n\
\n\
# If the gain_fixed flag is set, the gain value will stay fix in\n\
# case of a brightness search. Hence the target brightness will be reached\n\
# only by varying the exposure\n\
bool gain_fixed\n\
\n\
# Flag which indicates if the gamma value is provided and hence should be set\n\
# before grabbing\n\
bool gamma_given\n\
\n\
# Gamma correction of pixel intensity.\n\
# Adjusts the brightness of the pixel values output by the camera's sensor\n\
# to account for a non-linearity in the human perception of brightness or\n\
# of the display system (such as CRT).\n\
# The interface will only try to reach this value if the gamma_given flag is\n\
# set to true.\n\
float32[] gamma_values\n\
\n\
";
  }

  static const char* value(const ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_type);
      stream.next(m.target_values);
      stream.next(m.exposure_given);
      stream.next(m.exposure_times);
      stream.next(m.exposure_fixed);
      stream.next(m.brightness_given);
      stream.next(m.brightness_values);
      stream.next(m.brightness_continuous);
      stream.next(m.gain_given);
      stream.next(m.gain_values);
      stream.next(m.gain_fixed);
      stream.next(m.gamma_given);
      stream.next(m.gamma_values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GrabHDRImageGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::GrabHDRImageGoal_<ContainerAllocator>& v)
  {
    s << indent << "target_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.target_type);
    s << indent << "target_values[]" << std::endl;
    for (size_t i = 0; i < v.target_values.size(); ++i)
    {
      s << indent << "  target_values[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.target_values[i]);
    }
    s << indent << "exposure_given: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.exposure_given);
    s << indent << "exposure_times[]" << std::endl;
    for (size_t i = 0; i < v.exposure_times.size(); ++i)
    {
      s << indent << "  exposure_times[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.exposure_times[i]);
    }
    s << indent << "exposure_fixed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.exposure_fixed);
    s << indent << "brightness_given: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.brightness_given);
    s << indent << "brightness_values[]" << std::endl;
    for (size_t i = 0; i < v.brightness_values.size(); ++i)
    {
      s << indent << "  brightness_values[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.brightness_values[i]);
    }
    s << indent << "brightness_continuous: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.brightness_continuous);
    s << indent << "gain_given: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gain_given);
    s << indent << "gain_values[]" << std::endl;
    for (size_t i = 0; i < v.gain_values.size(); ++i)
    {
      s << indent << "  gain_values[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.gain_values[i]);
    }
    s << indent << "gain_fixed: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gain_fixed);
    s << indent << "gamma_given: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gamma_given);
    s << indent << "gamma_values[]" << std::endl;
    for (size_t i = 0; i < v.gamma_values.size(); ++i)
    {
      s << indent << "  gamma_values[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.gamma_values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_GRABHDRIMAGEGOAL_H
