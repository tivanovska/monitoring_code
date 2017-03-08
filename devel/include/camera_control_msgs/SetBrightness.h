// Generated by gencpp from file camera_control_msgs/SetBrightness.msg
// DO NOT EDIT!


#ifndef CAMERA_CONTROL_MSGS_MESSAGE_SETBRIGHTNESS_H
#define CAMERA_CONTROL_MSGS_MESSAGE_SETBRIGHTNESS_H

#include <ros/service_traits.h>


#include <camera_control_msgs/SetBrightnessRequest.h>
#include <camera_control_msgs/SetBrightnessResponse.h>


namespace camera_control_msgs
{

struct SetBrightness
{

typedef SetBrightnessRequest Request;
typedef SetBrightnessResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetBrightness
} // namespace camera_control_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::camera_control_msgs::SetBrightness > {
  static const char* value()
  {
    return "36481c45e92096457660dc69b68eb6b1";
  }

  static const char* value(const ::camera_control_msgs::SetBrightness&) { return value(); }
};

template<>
struct DataType< ::camera_control_msgs::SetBrightness > {
  static const char* value()
  {
    return "camera_control_msgs/SetBrightness";
  }

  static const char* value(const ::camera_control_msgs::SetBrightness&) { return value(); }
};


// service_traits::MD5Sum< ::camera_control_msgs::SetBrightnessRequest> should match 
// service_traits::MD5Sum< ::camera_control_msgs::SetBrightness > 
template<>
struct MD5Sum< ::camera_control_msgs::SetBrightnessRequest>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::SetBrightness >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBrightnessRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::SetBrightnessRequest> should match 
// service_traits::DataType< ::camera_control_msgs::SetBrightness > 
template<>
struct DataType< ::camera_control_msgs::SetBrightnessRequest>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::SetBrightness >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBrightnessRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::camera_control_msgs::SetBrightnessResponse> should match 
// service_traits::MD5Sum< ::camera_control_msgs::SetBrightness > 
template<>
struct MD5Sum< ::camera_control_msgs::SetBrightnessResponse>
{
  static const char* value()
  {
    return MD5Sum< ::camera_control_msgs::SetBrightness >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBrightnessResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_control_msgs::SetBrightnessResponse> should match 
// service_traits::DataType< ::camera_control_msgs::SetBrightness > 
template<>
struct DataType< ::camera_control_msgs::SetBrightnessResponse>
{
  static const char* value()
  {
    return DataType< ::camera_control_msgs::SetBrightness >::value();
  }
  static const char* value(const ::camera_control_msgs::SetBrightnessResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMERA_CONTROL_MSGS_MESSAGE_SETBRIGHTNESS_H
