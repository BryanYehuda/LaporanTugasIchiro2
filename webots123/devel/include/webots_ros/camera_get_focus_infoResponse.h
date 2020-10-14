// Generated by gencpp from file webots_ros/camera_get_focus_infoResponse.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_CAMERA_GET_FOCUS_INFORESPONSE_H
#define WEBOTS_ROS_MESSAGE_CAMERA_GET_FOCUS_INFORESPONSE_H


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
struct camera_get_focus_infoResponse_
{
  typedef camera_get_focus_infoResponse_<ContainerAllocator> Type;

  camera_get_focus_infoResponse_()
    : focalLength(0.0)
    , focalDistance(0.0)
    , maxFocalDistance(0.0)
    , minFocalDistance(0.0)  {
    }
  camera_get_focus_infoResponse_(const ContainerAllocator& _alloc)
    : focalLength(0.0)
    , focalDistance(0.0)
    , maxFocalDistance(0.0)
    , minFocalDistance(0.0)  {
  (void)_alloc;
    }



   typedef double _focalLength_type;
  _focalLength_type focalLength;

   typedef double _focalDistance_type;
  _focalDistance_type focalDistance;

   typedef double _maxFocalDistance_type;
  _maxFocalDistance_type maxFocalDistance;

   typedef double _minFocalDistance_type;
  _minFocalDistance_type minFocalDistance;





  typedef boost::shared_ptr< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> const> ConstPtr;

}; // struct camera_get_focus_infoResponse_

typedef ::webots_ros::camera_get_focus_infoResponse_<std::allocator<void> > camera_get_focus_infoResponse;

typedef boost::shared_ptr< ::webots_ros::camera_get_focus_infoResponse > camera_get_focus_infoResponsePtr;
typedef boost::shared_ptr< ::webots_ros::camera_get_focus_infoResponse const> camera_get_focus_infoResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8cabd8a61992c5b3e4e9d182bb2380ac";
  }

  static const char* value(const ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8cabd8a61992c5b3ULL;
  static const uint64_t static_value2 = 0xe4e9d182bb2380acULL;
};

template<class ContainerAllocator>
struct DataType< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "webots_ros/camera_get_focus_infoResponse";
  }

  static const char* value(const ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 focalLength\n"
"float64 focalDistance\n"
"float64 maxFocalDistance\n"
"float64 minFocalDistance\n"
"\n"
;
  }

  static const char* value(const ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.focalLength);
      stream.next(m.focalDistance);
      stream.next(m.maxFocalDistance);
      stream.next(m.minFocalDistance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct camera_get_focus_infoResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::webots_ros::camera_get_focus_infoResponse_<ContainerAllocator>& v)
  {
    s << indent << "focalLength: ";
    Printer<double>::stream(s, indent + "  ", v.focalLength);
    s << indent << "focalDistance: ";
    Printer<double>::stream(s, indent + "  ", v.focalDistance);
    s << indent << "maxFocalDistance: ";
    Printer<double>::stream(s, indent + "  ", v.maxFocalDistance);
    s << indent << "minFocalDistance: ";
    Printer<double>::stream(s, indent + "  ", v.minFocalDistance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_CAMERA_GET_FOCUS_INFORESPONSE_H
