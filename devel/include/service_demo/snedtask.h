// Generated by gencpp from file service_demo/snedtask.msg
// DO NOT EDIT!


#ifndef SERVICE_DEMO_MESSAGE_SNEDTASK_H
#define SERVICE_DEMO_MESSAGE_SNEDTASK_H

#include <ros/service_traits.h>


#include <service_demo/snedtaskRequest.h>
#include <service_demo/snedtaskResponse.h>


namespace service_demo
{

struct snedtask
{

typedef snedtaskRequest Request;
typedef snedtaskResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct snedtask
} // namespace service_demo


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::service_demo::snedtask > {
  static const char* value()
  {
    return "d909ff136d7b21683428bf14271414ba";
  }

  static const char* value(const ::service_demo::snedtask&) { return value(); }
};

template<>
struct DataType< ::service_demo::snedtask > {
  static const char* value()
  {
    return "service_demo/snedtask";
  }

  static const char* value(const ::service_demo::snedtask&) { return value(); }
};


// service_traits::MD5Sum< ::service_demo::snedtaskRequest> should match 
// service_traits::MD5Sum< ::service_demo::snedtask > 
template<>
struct MD5Sum< ::service_demo::snedtaskRequest>
{
  static const char* value()
  {
    return MD5Sum< ::service_demo::snedtask >::value();
  }
  static const char* value(const ::service_demo::snedtaskRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::service_demo::snedtaskRequest> should match 
// service_traits::DataType< ::service_demo::snedtask > 
template<>
struct DataType< ::service_demo::snedtaskRequest>
{
  static const char* value()
  {
    return DataType< ::service_demo::snedtask >::value();
  }
  static const char* value(const ::service_demo::snedtaskRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::service_demo::snedtaskResponse> should match 
// service_traits::MD5Sum< ::service_demo::snedtask > 
template<>
struct MD5Sum< ::service_demo::snedtaskResponse>
{
  static const char* value()
  {
    return MD5Sum< ::service_demo::snedtask >::value();
  }
  static const char* value(const ::service_demo::snedtaskResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::service_demo::snedtaskResponse> should match 
// service_traits::DataType< ::service_demo::snedtask > 
template<>
struct DataType< ::service_demo::snedtaskResponse>
{
  static const char* value()
  {
    return DataType< ::service_demo::snedtask >::value();
  }
  static const char* value(const ::service_demo::snedtaskResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SERVICE_DEMO_MESSAGE_SNEDTASK_H
