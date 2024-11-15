// Generated by gencpp from file multipoint_navigation_receiver/obstacle_srv.msg
// DO NOT EDIT!


#ifndef MULTIPOINT_NAVIGATION_RECEIVER_MESSAGE_OBSTACLE_SRV_H
#define MULTIPOINT_NAVIGATION_RECEIVER_MESSAGE_OBSTACLE_SRV_H

#include <ros/service_traits.h>


#include <multipoint_navigation_receiver/obstacle_srvRequest.h>
#include <multipoint_navigation_receiver/obstacle_srvResponse.h>


namespace multipoint_navigation_receiver
{

struct obstacle_srv
{

typedef obstacle_srvRequest Request;
typedef obstacle_srvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct obstacle_srv
} // namespace multipoint_navigation_receiver


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::multipoint_navigation_receiver::obstacle_srv > {
  static const char* value()
  {
    return "cde20407033a78fab80407a8d3277159";
  }

  static const char* value(const ::multipoint_navigation_receiver::obstacle_srv&) { return value(); }
};

template<>
struct DataType< ::multipoint_navigation_receiver::obstacle_srv > {
  static const char* value()
  {
    return "multipoint_navigation_receiver/obstacle_srv";
  }

  static const char* value(const ::multipoint_navigation_receiver::obstacle_srv&) { return value(); }
};


// service_traits::MD5Sum< ::multipoint_navigation_receiver::obstacle_srvRequest> should match
// service_traits::MD5Sum< ::multipoint_navigation_receiver::obstacle_srv >
template<>
struct MD5Sum< ::multipoint_navigation_receiver::obstacle_srvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::multipoint_navigation_receiver::obstacle_srv >::value();
  }
  static const char* value(const ::multipoint_navigation_receiver::obstacle_srvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::multipoint_navigation_receiver::obstacle_srvRequest> should match
// service_traits::DataType< ::multipoint_navigation_receiver::obstacle_srv >
template<>
struct DataType< ::multipoint_navigation_receiver::obstacle_srvRequest>
{
  static const char* value()
  {
    return DataType< ::multipoint_navigation_receiver::obstacle_srv >::value();
  }
  static const char* value(const ::multipoint_navigation_receiver::obstacle_srvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::multipoint_navigation_receiver::obstacle_srvResponse> should match
// service_traits::MD5Sum< ::multipoint_navigation_receiver::obstacle_srv >
template<>
struct MD5Sum< ::multipoint_navigation_receiver::obstacle_srvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::multipoint_navigation_receiver::obstacle_srv >::value();
  }
  static const char* value(const ::multipoint_navigation_receiver::obstacle_srvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::multipoint_navigation_receiver::obstacle_srvResponse> should match
// service_traits::DataType< ::multipoint_navigation_receiver::obstacle_srv >
template<>
struct DataType< ::multipoint_navigation_receiver::obstacle_srvResponse>
{
  static const char* value()
  {
    return DataType< ::multipoint_navigation_receiver::obstacle_srv >::value();
  }
  static const char* value(const ::multipoint_navigation_receiver::obstacle_srvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MULTIPOINT_NAVIGATION_RECEIVER_MESSAGE_OBSTACLE_SRV_H
