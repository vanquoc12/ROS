// Generated by gencpp from file waypoints/Save_Wp.msg
// DO NOT EDIT!


#ifndef WAYPOINTS_MESSAGE_SAVE_WP_H
#define WAYPOINTS_MESSAGE_SAVE_WP_H

#include <ros/service_traits.h>


#include <waypoints/Save_WpRequest.h>
#include <waypoints/Save_WpResponse.h>


namespace waypoints
{

struct Save_Wp
{

typedef Save_WpRequest Request;
typedef Save_WpResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Save_Wp
} // namespace waypoints


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::waypoints::Save_Wp > {
  static const char* value()
  {
    return "3ece68834e0f1a84f61883f885f71f9f";
  }

  static const char* value(const ::waypoints::Save_Wp&) { return value(); }
};

template<>
struct DataType< ::waypoints::Save_Wp > {
  static const char* value()
  {
    return "waypoints/Save_Wp";
  }

  static const char* value(const ::waypoints::Save_Wp&) { return value(); }
};


// service_traits::MD5Sum< ::waypoints::Save_WpRequest> should match
// service_traits::MD5Sum< ::waypoints::Save_Wp >
template<>
struct MD5Sum< ::waypoints::Save_WpRequest>
{
  static const char* value()
  {
    return MD5Sum< ::waypoints::Save_Wp >::value();
  }
  static const char* value(const ::waypoints::Save_WpRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::waypoints::Save_WpRequest> should match
// service_traits::DataType< ::waypoints::Save_Wp >
template<>
struct DataType< ::waypoints::Save_WpRequest>
{
  static const char* value()
  {
    return DataType< ::waypoints::Save_Wp >::value();
  }
  static const char* value(const ::waypoints::Save_WpRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::waypoints::Save_WpResponse> should match
// service_traits::MD5Sum< ::waypoints::Save_Wp >
template<>
struct MD5Sum< ::waypoints::Save_WpResponse>
{
  static const char* value()
  {
    return MD5Sum< ::waypoints::Save_Wp >::value();
  }
  static const char* value(const ::waypoints::Save_WpResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::waypoints::Save_WpResponse> should match
// service_traits::DataType< ::waypoints::Save_Wp >
template<>
struct DataType< ::waypoints::Save_WpResponse>
{
  static const char* value()
  {
    return DataType< ::waypoints::Save_Wp >::value();
  }
  static const char* value(const ::waypoints::Save_WpResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WAYPOINTS_MESSAGE_SAVE_WP_H
