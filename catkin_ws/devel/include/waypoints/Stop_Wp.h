// Generated by gencpp from file waypoints/Stop_Wp.msg
// DO NOT EDIT!


#ifndef WAYPOINTS_MESSAGE_STOP_WP_H
#define WAYPOINTS_MESSAGE_STOP_WP_H

#include <ros/service_traits.h>


#include <waypoints/Stop_WpRequest.h>
#include <waypoints/Stop_WpResponse.h>


namespace waypoints
{

struct Stop_Wp
{

typedef Stop_WpRequest Request;
typedef Stop_WpResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Stop_Wp
} // namespace waypoints


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::waypoints::Stop_Wp > {
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::waypoints::Stop_Wp&) { return value(); }
};

template<>
struct DataType< ::waypoints::Stop_Wp > {
  static const char* value()
  {
    return "waypoints/Stop_Wp";
  }

  static const char* value(const ::waypoints::Stop_Wp&) { return value(); }
};


// service_traits::MD5Sum< ::waypoints::Stop_WpRequest> should match
// service_traits::MD5Sum< ::waypoints::Stop_Wp >
template<>
struct MD5Sum< ::waypoints::Stop_WpRequest>
{
  static const char* value()
  {
    return MD5Sum< ::waypoints::Stop_Wp >::value();
  }
  static const char* value(const ::waypoints::Stop_WpRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::waypoints::Stop_WpRequest> should match
// service_traits::DataType< ::waypoints::Stop_Wp >
template<>
struct DataType< ::waypoints::Stop_WpRequest>
{
  static const char* value()
  {
    return DataType< ::waypoints::Stop_Wp >::value();
  }
  static const char* value(const ::waypoints::Stop_WpRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::waypoints::Stop_WpResponse> should match
// service_traits::MD5Sum< ::waypoints::Stop_Wp >
template<>
struct MD5Sum< ::waypoints::Stop_WpResponse>
{
  static const char* value()
  {
    return MD5Sum< ::waypoints::Stop_Wp >::value();
  }
  static const char* value(const ::waypoints::Stop_WpResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::waypoints::Stop_WpResponse> should match
// service_traits::DataType< ::waypoints::Stop_Wp >
template<>
struct DataType< ::waypoints::Stop_WpResponse>
{
  static const char* value()
  {
    return DataType< ::waypoints::Stop_Wp >::value();
  }
  static const char* value(const ::waypoints::Stop_WpResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAYPOINTS_MESSAGE_STOP_WP_H
