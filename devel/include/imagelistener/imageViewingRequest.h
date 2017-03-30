// Generated by gencpp from file imagelistener/imageViewingRequest.msg
// DO NOT EDIT!


#ifndef IMAGELISTENER_MESSAGE_IMAGEVIEWINGREQUEST_H
#define IMAGELISTENER_MESSAGE_IMAGEVIEWINGREQUEST_H


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
struct imageViewingRequest_
{
  typedef imageViewingRequest_<ContainerAllocator> Type;

  imageViewingRequest_()
    : path_to_tmp_img()
    , maxSimVal(0.0)  {
    }
  imageViewingRequest_(const ContainerAllocator& _alloc)
    : path_to_tmp_img(_alloc)
    , maxSimVal(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_to_tmp_img_type;
  _path_to_tmp_img_type path_to_tmp_img;

   typedef float _maxSimVal_type;
  _maxSimVal_type maxSimVal;




  typedef boost::shared_ptr< ::imagelistener::imageViewingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::imagelistener::imageViewingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct imageViewingRequest_

typedef ::imagelistener::imageViewingRequest_<std::allocator<void> > imageViewingRequest;

typedef boost::shared_ptr< ::imagelistener::imageViewingRequest > imageViewingRequestPtr;
typedef boost::shared_ptr< ::imagelistener::imageViewingRequest const> imageViewingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::imagelistener::imageViewingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::imagelistener::imageViewingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace imagelistener

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'imagelistener': ['/home/tiva/catkin_ws/src/imagelistener/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::imagelistener::imageViewingRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::imagelistener::imageViewingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::imagelistener::imageViewingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9bcd3c971dc9a992e6146aaf6c22043b";
  }

  static const char* value(const ::imagelistener::imageViewingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9bcd3c971dc9a992ULL;
  static const uint64_t static_value2 = 0xe6146aaf6c22043bULL;
};

template<class ContainerAllocator>
struct DataType< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "imagelistener/imageViewingRequest";
  }

  static const char* value(const ::imagelistener::imageViewingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string path_to_tmp_img\n\
float32 maxSimVal\n\
";
  }

  static const char* value(const ::imagelistener::imageViewingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path_to_tmp_img);
      stream.next(m.maxSimVal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct imageViewingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::imagelistener::imageViewingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::imagelistener::imageViewingRequest_<ContainerAllocator>& v)
  {
    s << indent << "path_to_tmp_img: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path_to_tmp_img);
    s << indent << "maxSimVal: ";
    Printer<float>::stream(s, indent + "  ", v.maxSimVal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IMAGELISTENER_MESSAGE_IMAGEVIEWINGREQUEST_H