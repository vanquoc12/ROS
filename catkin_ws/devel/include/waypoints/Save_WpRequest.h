// Generated by gencpp from file waypoints/Save_WpRequest.msg
// DO NOT EDIT!


#ifndef WAYPOINTS_MESSAGE_SAVE_WPREQUEST_H
#define WAYPOINTS_MESSAGE_SAVE_WPREQUEST_H


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
struct Save_WpRequest_
{
  typedef Save_WpRequest_<ContainerAllocator> Type;

  Save_WpRequest_()
    : file_name()  {
    }
  Save_WpRequest_(const ContainerAllocator& _alloc)
    : file_name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _file_name_type;
  _file_name_type file_name;





  typedef boost::shared_ptr< ::waypoints::Save_WpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::waypoints::Save_WpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Save_WpRequest_

typedef ::waypoints::Save_WpRequest_<std::allocator<void> > Save_WpRequest;

typedef boost::shared_ptr< ::waypoints::Save_WpRequest > Save_WpRequestPtr;
typedef boost::shared_ptr< ::waypoints::Save_WpRequest const> Save_WpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::waypoints::Save_WpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::waypoints::Save_WpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::waypoints::Save_WpRequest_<ContainerAllocator1> & lhs, const ::waypoints::Save_WpRequest_<ContainerAllocator2> & rhs)
{
  return lhs.file_name == rhs.file_name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::waypoints::Save_WpRequest_<ContainerAllocator1> & lhs, const ::waypoints::Save_WpRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace waypoints

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::waypoints::Save_WpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waypoints::Save_WpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Save_WpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Save_WpRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Save_WpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Save_WpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::waypoints::Save_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2415261c9605b9f38867ffbbe495fc04";
  }

  static const char* value(const ::waypoints::Save_WpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2415261c9605b9f3ULL;
  static const uint64_t static_value2 = 0x8867ffbbe495fc04ULL;
};

template<class ContainerAllocator>
struct DataType< ::waypoints::Save_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "waypoints/Save_WpRequest";
  }

  static const char* value(const ::waypoints::Save_WpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::waypoints::Save_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string  file_name               \n"
;
  }

  static const char* value(const ::waypoints::Save_WpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::waypoints::Save_WpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.file_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Save_WpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::waypoints::Save_WpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::waypoints::Save_WpRequest_<ContainerAllocator>& v)
  {
    s << indent << "file_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.file_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAYPOINTS_MESSAGE_SAVE_WPREQUEST_H