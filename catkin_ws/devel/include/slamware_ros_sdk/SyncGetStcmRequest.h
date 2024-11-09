// Generated by gencpp from file slamware_ros_sdk/SyncGetStcmRequest.msg
// DO NOT EDIT!


#ifndef SLAMWARE_ROS_SDK_MESSAGE_SYNCGETSTCMREQUEST_H
#define SLAMWARE_ROS_SDK_MESSAGE_SYNCGETSTCMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace slamware_ros_sdk
{
template <class ContainerAllocator>
struct SyncGetStcmRequest_
{
  typedef SyncGetStcmRequest_<ContainerAllocator> Type;

  SyncGetStcmRequest_()
    {
    }
  SyncGetStcmRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SyncGetStcmRequest_

typedef ::slamware_ros_sdk::SyncGetStcmRequest_<std::allocator<void> > SyncGetStcmRequest;

typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmRequest > SyncGetStcmRequestPtr;
typedef boost::shared_ptr< ::slamware_ros_sdk::SyncGetStcmRequest const> SyncGetStcmRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace slamware_ros_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "slamware_ros_sdk/SyncGetStcmRequest";
  }

  static const char* value(const ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"#request\n"
"\n"
;
  }

  static const char* value(const ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SyncGetStcmRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::slamware_ros_sdk::SyncGetStcmRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // SLAMWARE_ROS_SDK_MESSAGE_SYNCGETSTCMREQUEST_H
