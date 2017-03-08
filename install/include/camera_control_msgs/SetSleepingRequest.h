// Generated by gencpp from file camera_control_msgs/SetSleepingRequest.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETSLEEPINGREQUEST_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETSLEEPINGREQUEST_H


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
struct SetSleepingRequest_
{
  typedef SetSleepingRequest_<ContainerAllocator> Type;

  SetSleepingRequest_()
    : set_sleeping(false)  {
    }
  SetSleepingRequest_(const ContainerAllocator& _alloc)
    : set_sleeping(false)  {
  (void)_alloc;
    }



   typedef uint8_t _set_sleeping_type;
  _set_sleeping_type set_sleeping;




  typedef boost::shared_ptr< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetSleepingRequest_

typedef ::camera_control_msgs::SetSleepingRequest_<std::allocator<void> > SetSleepingRequest;

typedef boost::shared_ptr< ::camera_control_msgs::SetSleepingRequest > SetSleepingRequestPtr;
typedef boost::shared_ptr< ::camera_control_msgs::SetSleepingRequest const> SetSleepingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace camera_control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'camera_control_msgs': ['/home/tiva/catkin_ws/devel/share/camera_control_msgs/msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "58aad3b532b8c4776fd592aec6441836";
  }

  static const char* value(const ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x58aad3b532b8c477ULL;
  static const uint64_t static_value2 = 0x6fd592aec6441836ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/SetSleepingRequest";
  }

  static const char* value(const ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
\n\
bool set_sleeping\n\
";
  }

  static const char* value(const ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.set_sleeping);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetSleepingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::SetSleepingRequest_<ContainerAllocator>& v)
  {
    s << indent << "set_sleeping: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.set_sleeping);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETSLEEPINGREQUEST_H
