// Generated by gencpp from file webots_ros/node_get_type.msg
// DO NOT EDIT!


#ifndef WEBOTS_ROS_MESSAGE_NODE_GET_TYPE_H
#define WEBOTS_ROS_MESSAGE_NODE_GET_TYPE_H

#include <ros/service_traits.h>


#include <webots_ros/node_get_typeRequest.h>
#include <webots_ros/node_get_typeResponse.h>


namespace webots_ros
{

struct node_get_type
{

typedef node_get_typeRequest Request;
typedef node_get_typeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct node_get_type
} // namespace webots_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::webots_ros::node_get_type > {
  static const char* value()
  {
    return "48b94f6c29e10052dd1b2a32f0d1feea";
  }

  static const char* value(const ::webots_ros::node_get_type&) { return value(); }
};

template<>
struct DataType< ::webots_ros::node_get_type > {
  static const char* value()
  {
    return "webots_ros/node_get_type";
  }

  static const char* value(const ::webots_ros::node_get_type&) { return value(); }
};


// service_traits::MD5Sum< ::webots_ros::node_get_typeRequest> should match 
// service_traits::MD5Sum< ::webots_ros::node_get_type > 
template<>
struct MD5Sum< ::webots_ros::node_get_typeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::webots_ros::node_get_type >::value();
  }
  static const char* value(const ::webots_ros::node_get_typeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_ros::node_get_typeRequest> should match 
// service_traits::DataType< ::webots_ros::node_get_type > 
template<>
struct DataType< ::webots_ros::node_get_typeRequest>
{
  static const char* value()
  {
    return DataType< ::webots_ros::node_get_type >::value();
  }
  static const char* value(const ::webots_ros::node_get_typeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::webots_ros::node_get_typeResponse> should match 
// service_traits::MD5Sum< ::webots_ros::node_get_type > 
template<>
struct MD5Sum< ::webots_ros::node_get_typeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::webots_ros::node_get_type >::value();
  }
  static const char* value(const ::webots_ros::node_get_typeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::webots_ros::node_get_typeResponse> should match 
// service_traits::DataType< ::webots_ros::node_get_type > 
template<>
struct DataType< ::webots_ros::node_get_typeResponse>
{
  static const char* value()
  {
    return DataType< ::webots_ros::node_get_type >::value();
  }
  static const char* value(const ::webots_ros::node_get_typeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WEBOTS_ROS_MESSAGE_NODE_GET_TYPE_H
