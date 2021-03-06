// Generated by gencpp from file webots_ros/get_floatRequest.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_GET_FLOATREQUEST_H
#define WEBOTS_ROS_MESSAGE_GET_FLOATREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace webots_ros
{
template <class ContainerAllocator>
struct get_floatRequest_
{
  typedef get_floatRequest_<ContainerAllocator> Type;

  get_floatRequest_()
    : ask(false)  {
    }
  get_floatRequest_(const ContainerAllocator& _alloc)
    : ask(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ask_type;
  _ask_type ask;





  typedef boost::shared_ptr< ::webots_ros::get_floatRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_ros::get_floatRequest_<ContainerAllocator> const> ConstPtr;

}; // struct get_floatRequest_

typedef ::webots_ros::get_floatRequest_<std::allocator<void> > get_floatRequest;

typedef boost::shared_ptr< ::webots_ros::get_floatRequest > get_floatRequestPtr;
typedef boost::shared_ptr< ::webots_ros::get_floatRequest const> get_floatRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_ros::get_floatRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_ros::get_floatRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace webots_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'webots_ros': ['/home/bryan/webots123/src/webots_ros/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::get_floatRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::get_floatRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::get_floatRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::get_floatRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::get_floatRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::get_floatRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_ros::get_floatRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fbe9700edfca44c5eefb040d9b60f6d6";
  }

  static const char* value(const ::webots_ros::get_floatRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfbe9700edfca44c5ULL;
  static const uint64_t static_value2 = 0xeefb040d9b60f6d6ULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_ros::get_floatRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/get_floatRequest";
  }

  static const char* value(const ::webots_ros::get_floatRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_ros::get_floatRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ask\n"
;
  }

  static const char* value(const ::webots_ros::get_floatRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_ros::get_floatRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ask);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_floatRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_ros::get_floatRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_ros::get_floatRequest_<ContainerAllocator>& v)
  {
    s << indent << "ask: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ask);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_GET_FLOATREQUEST_H
