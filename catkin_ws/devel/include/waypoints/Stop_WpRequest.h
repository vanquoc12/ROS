// Generated by gencpp from file waypoints/Stop_WpRequest.msg
// DO NOT EDIT!


#ifndef WAYPOINTS_MESSAGE_STOP_WPREQUEST_H
#define WAYPOINTS_MESSAGE_STOP_WPREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace waypoints
{
template <class ContainerAllocator>
struct Stop_WpRequest_
{
  typedef Stop_WpRequest_<ContainerAllocator> Type;

  Stop_WpRequest_()
    {
    }
  Stop_WpRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::waypoints::Stop_WpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::waypoints::Stop_WpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Stop_WpRequest_

typedef ::waypoints::Stop_WpRequest_<std::allocator<void> > Stop_WpRequest;

typedef boost::shared_ptr< ::waypoints::Stop_WpRequest > Stop_WpRequestPtr;
typedef boost::shared_ptr< ::waypoints::Stop_WpRequest const> Stop_WpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::waypoints::Stop_WpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::waypoints::Stop_WpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace waypoints

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waypoints::Stop_WpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Stop_WpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Stop_WpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::waypoints::Stop_WpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "waypoints/Stop_WpRequest";
  }

  static const char* value(const ::waypoints::Stop_WpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "       \n"
;
  }

  static const char* value(const ::waypoints::Stop_WpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Stop_WpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::waypoints::Stop_WpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::waypoints::Stop_WpRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // WAYPOINTS_MESSAGE_STOP_WPREQUEST_H