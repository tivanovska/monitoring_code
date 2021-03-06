// Generated by gencpp from file camera_control_msgs/SetBoolResponse.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETBOOLRESPONSE_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETBOOLRESPONSE_H


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
struct SetBoolResponse_
{
  typedef SetBoolResponse_<ContainerAllocator> Type;

  SetBoolResponse_()
    : success(false)
    , message()  {
    }
  SetBoolResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;




  typedef boost::shared_ptr< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetBoolResponse_

typedef ::camera_control_msgs::SetBoolResponse_<std::allocator<void> > SetBoolResponse;

typedef boost::shared_ptr< ::camera_control_msgs::SetBoolResponse > SetBoolResponsePtr;
typedef boost::shared_ptr< ::camera_control_msgs::SetBoolResponse const> SetBoolResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::camera_control_msgs::SetBoolResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "camera_control_msgs/SetBoolResponse";
  }

  static const char* value(const ::camera_control_msgs::SetBoolResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
string message\n\
\n\
";
  }

  static const char* value(const ::camera_control_msgs::SetBoolResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetBoolResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::camera_control_msgs::SetBoolResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::camera_control_msgs::SetBoolResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETBOOLRESPONSE_H
