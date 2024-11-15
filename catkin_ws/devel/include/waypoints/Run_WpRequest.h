// Generated by gencpp from file waypoints/Run_WpRequest.msg
// DO NOT EDIT!


#ifndef WAYPOINTS_MESSAGE_RUN_WPREQUEST_H
#define WAYPOINTS_MESSAGE_RUN_WPREQUEST_H


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
struct Run_WpRequest_
{
  typedef Run_WpRequest_<ContainerAllocator> Type;

  Run_WpRequest_()
    : wp_name()
    , gr_name()
    , loop(false)
    , index(0)  {
    }
  Run_WpRequest_(const ContainerAllocator& _alloc)
    : wp_name(_alloc)
    , gr_name(_alloc)
    , loop(false)
    , index(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _wp_name_type;
  _wp_name_type wp_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _gr_name_type;
  _gr_name_type gr_name;

   typedef uint8_t _loop_type;
  _loop_type loop;

   typedef int16_t _index_type;
  _index_type index;





  typedef boost::shared_ptr< ::waypoints::Run_WpRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::waypoints::Run_WpRequest_<ContainerAllocator> const> ConstPtr;

}; // struct Run_WpRequest_

typedef ::waypoints::Run_WpRequest_<std::allocator<void> > Run_WpRequest;

typedef boost::shared_ptr< ::waypoints::Run_WpRequest > Run_WpRequestPtr;
typedef boost::shared_ptr< ::waypoints::Run_WpRequest const> Run_WpRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::waypoints::Run_WpRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::waypoints::Run_WpRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::waypoints::Run_WpRequest_<ContainerAllocator1> & lhs, const ::waypoints::Run_WpRequest_<ContainerAllocator2> & rhs)
{
  return lhs.wp_name == rhs.wp_name &&
    lhs.gr_name == rhs.gr_name &&
    lhs.loop == rhs.loop &&
    lhs.index == rhs.index;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::waypoints::Run_WpRequest_<ContainerAllocator1> & lhs, const ::waypoints::Run_WpRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace waypoints

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::waypoints::Run_WpRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waypoints::Run_WpRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Run_WpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waypoints::Run_WpRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Run_WpRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waypoints::Run_WpRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::waypoints::Run_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "604bad90bb13db0cba7fd20abed2fc30";
  }

  static const char* value(const ::waypoints::Run_WpRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x604bad90bb13db0cULL;
  static const uint64_t static_value2 = 0xba7fd20abed2fc30ULL;
};

template<class ContainerAllocator>
struct DataType< ::waypoints::Run_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "waypoints/Run_WpRequest";
  }

  static const char* value(const ::waypoints::Run_WpRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::waypoints::Run_WpRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string  wp_name\n"
"string  gr_name\n"
"bool    loop\n"
"int16   index         \n"
;
  }

  static const char* value(const ::waypoints::Run_WpRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::waypoints::Run_WpRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.wp_name);
      stream.next(m.gr_name);
      stream.next(m.loop);
      stream.next(m.index);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Run_WpRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::waypoints::Run_WpRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::waypoints::Run_WpRequest_<ContainerAllocator>& v)
  {
    s << indent << "wp_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.wp_name);
    s << indent << "gr_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.gr_name);
    s << indent << "loop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.loop);
    s << indent << "index: ";
    Printer<int16_t>::stream(s, indent + "  ", v.index);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WAYPOINTS_MESSAGE_RUN_WPREQUEST_H
