// Generated by gencpp from file imagelistener/exampleImageProcessingRequest.msg
// DO NOT EDIT!


#ifndef IMAGELISTENER_MESSAGE_EXAMPLEIMAGEPROCESSINGREQUEST_H
#define IMAGELISTENER_MESSAGE_EXAMPLEIMAGEPROCESSINGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace imagelistener
{
template <class ContainerAllocator>
struct exampleImageProcessingRequest_
{
  typedef exampleImageProcessingRequest_<ContainerAllocator> Type;

  exampleImageProcessingRequest_()
    : ID_Template(0)
    , ID_Operation(0)  {
    }
  exampleImageProcessingRequest_(const ContainerAllocator& _alloc)
    : ID_Template(0)
    , ID_Operation(0)  {
  (void)_alloc;
    }



   typedef int64_t _ID_Template_type;
  _ID_Template_type ID_Template;

   typedef int64_t _ID_Operation_type;
  _ID_Operation_type ID_Operation;




  typedef boost::shared_ptr< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct exampleImageProcessingRequest_

typedef ::imagelistener::exampleImageProcessingRequest_<std::allocator<void> > exampleImageProcessingRequest;

typedef boost::shared_ptr< ::imagelistener::exampleImageProcessingRequest > exampleImageProcessingRequestPtr;
typedef boost::shared_ptr< ::imagelistener::exampleImageProcessingRequest const> exampleImageProcessingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace imagelistener

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'imagelistener': ['/home/tiva/catkin_ws/src/imagelistener/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7d09356e32d35e9cf8ad6727899171a5";
  }

  static const char* value(const ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7d09356e32d35e9cULL;
  static const uint64_t static_value2 = 0xf8ad6727899171a5ULL;
};

template<class ContainerAllocator>
struct DataType< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imagelistener/exampleImageProcessingRequest";
  }

  static const char* value(const ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 ID_Template\n\
int64 ID_Operation\n\
";
  }

  static const char* value(const ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ID_Template);
      stream.next(m.ID_Operation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct exampleImageProcessingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imagelistener::exampleImageProcessingRequest_<ContainerAllocator>& v)
  {
    s << indent << "ID_Template: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ID_Template);
    s << indent << "ID_Operation: ";
    Printer<int64_t>::stream(s, indent + "  ", v.ID_Operation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMAGELISTENER_MESSAGE_EXAMPLEIMAGEPROCESSINGREQUEST_H
