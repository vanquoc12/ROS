// Generated by gencpp from file waypoints/Delete_WpRequest.msg
// DO NOT EDIT!


#ifndef WAYPOINTS_MESSAGE_DELETE_WPREQUEST_H
#define WAYPOINTS_MESSAGE_DELETE_WPREQUEST_H


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
struct Delete_WpRequest_
{
  typedef Delete_WpRequest_<ContainerAllocator> Type;

  Delete_WpRequest_()
    : wp_name()  {
    }
  Delete_WpRequest_(const ContainerAllocator& _alloc)
    : wp_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _wp_name_type;
  _wp_name_type wp_name;





  typedef boost::shared_ptr< ::waypoints::Delete_WpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::waypoints::Delete_WpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Delete_WpRequest_

typedef ::waypoints::Delete_WpRequest_<std::allocator<void> > Delete_WpRequest;

typedef boost::shared_ptr< ::waypoints::Delete_WpRequest > Delete_WpRequestPtr;
typedef boost::shared_ptr< ::waypoints::Delete_WpRequest const> Delete_WpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::waypoints::Delete_WpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::waypoints::Delete_WpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::waypoints::Delete_WpRequest_<ContainerAllocator1> & lhs, const ::waypoints::Delete_WpRequest_<ContainerAllocator2> & rhs)
{
  return lhs.wp_name == rhs.wp_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::waypoints::Delete_WpRequest_<ContainerAllocator1> & lhs, const ::waypoints::Delete_WpRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace waypoints

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waypoints::Delete_WpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Delete_WpRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Delete_WpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a284afe871109adda1de76fc331e5a94";
  }

  static const char* value(const ::waypoints::Delete_WpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa284afe871109addULL;
  static const uint64_t static_value2 = 0xa1de76fc331e5a94ULL;
};

template<class ContainerAllocator>
struct DataType< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "waypoints/Delete_WpRequest";
  }

  static const char* value(const ::waypoints::Delete_WpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string  wp_name               \n"
;
  }

  static const char* value(const ::waypoints::Delete_WpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.wp_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Delete_WpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::waypoints::Delete_WpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::waypoints::Delete_WpRequest_<ContainerAllocator>& v)
  {
    s << indent << "wp_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.wp_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAYPOINTS_MESSAGE_DELETE_WPREQUEST_H
