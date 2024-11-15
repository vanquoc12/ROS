// Generated by gencpp from file multipoint_navigation_receiver/obstacle_srvResponse.msg
// DO NOT EDIT!


#ifndef MULTIPOINT_NAVIGATION_RECEIVER_MESSAGE_OBSTACLE_SRVRESPONSE_H
#define MULTIPOINT_NAVIGATION_RECEIVER_MESSAGE_OBSTACLE_SRVRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace multipoint_navigation_receiver
{
template <class ContainerAllocator>
struct obstacle_srvResponse_
{
  typedef obstacle_srvResponse_<ContainerAllocator> Type;

  obstacle_srvResponse_()
    : obstacle_probability(0)  {
    }
  obstacle_srvResponse_(const ContainerAllocator& _alloc)
    : obstacle_probability(0)  {
  (void)_alloc;
    }



   typedef int8_t _obstacle_probability_type;
  _obstacle_probability_type obstacle_probability;





  typedef boost::shared_ptr< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct obstacle_srvResponse_

typedef ::multipoint_navigation_receiver::obstacle_srvResponse_<std::allocator<void> > obstacle_srvResponse;

typedef boost::shared_ptr< ::multipoint_navigation_receiver::obstacle_srvResponse > obstacle_srvResponsePtr;
typedef boost::shared_ptr< ::multipoint_navigation_receiver::obstacle_srvResponse const> obstacle_srvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator1> & lhs, const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator2> & rhs)
{
  return lhs.obstacle_probability == rhs.obstacle_probability;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator1> & lhs, const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace multipoint_navigation_receiver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7288de76ecf71aa93cdc77a04c0dcff6";
  }

  static const char* value(const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7288de76ecf71aa9ULL;
  static const uint64_t static_value2 = 0x3cdc77a04c0dcff6ULL;
};

template<class ContainerAllocator>
struct DataType< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multipoint_navigation_receiver/obstacle_srvResponse";
  }

  static const char* value(const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 obstacle_probability \n"
;
  }

  static const char* value(const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.obstacle_probability);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct obstacle_srvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::multipoint_navigation_receiver::obstacle_srvResponse_<ContainerAllocator>& v)
  {
    s << indent << "obstacle_probability: ";
    Printer<int8_t>::stream(s, indent + "  ", v.obstacle_probability);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULTIPOINT_NAVIGATION_RECEIVER_MESSAGE_OBSTACLE_SRVRESPONSE_H
