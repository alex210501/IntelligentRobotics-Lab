// Generated by gencpp from file exercice_2/charge_status.msg
// DO NOT EDIT!


#ifndef EXERCICE_2_MESSAGE_CHARGE_STATUS_H
#define EXERCICE_2_MESSAGE_CHARGE_STATUS_H

#include <ros/service_traits.h>


#include <exercice_2/charge_statusRequest.h>
#include <exercice_2/charge_statusResponse.h>


namespace exercice_2
{

struct charge_status
{

typedef charge_statusRequest Request;
typedef charge_statusResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct charge_status
} // namespace exercice_2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::exercice_2::charge_status > {
  static const char* value()
  {
    return "8f694df7d2a81d673bc7d54188b3b43b";
  }

  static const char* value(const ::exercice_2::charge_status&) { return value(); }
};

template<>
struct DataType< ::exercice_2::charge_status > {
  static const char* value()
  {
    return "exercice_2/charge_status";
  }

  static const char* value(const ::exercice_2::charge_status&) { return value(); }
};


// service_traits::MD5Sum< ::exercice_2::charge_statusRequest> should match
// service_traits::MD5Sum< ::exercice_2::charge_status >
template<>
struct MD5Sum< ::exercice_2::charge_statusRequest>
{
  static const char* value()
  {
    return MD5Sum< ::exercice_2::charge_status >::value();
  }
  static const char* value(const ::exercice_2::charge_statusRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::exercice_2::charge_statusRequest> should match
// service_traits::DataType< ::exercice_2::charge_status >
template<>
struct DataType< ::exercice_2::charge_statusRequest>
{
  static const char* value()
  {
    return DataType< ::exercice_2::charge_status >::value();
  }
  static const char* value(const ::exercice_2::charge_statusRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::exercice_2::charge_statusResponse> should match
// service_traits::MD5Sum< ::exercice_2::charge_status >
template<>
struct MD5Sum< ::exercice_2::charge_statusResponse>
{
  static const char* value()
  {
    return MD5Sum< ::exercice_2::charge_status >::value();
  }
  static const char* value(const ::exercice_2::charge_statusResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::exercice_2::charge_statusResponse> should match
// service_traits::DataType< ::exercice_2::charge_status >
template<>
struct DataType< ::exercice_2::charge_statusResponse>
{
  static const char* value()
  {
    return DataType< ::exercice_2::charge_status >::value();
  }
  static const char* value(const ::exercice_2::charge_statusResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXERCICE_2_MESSAGE_CHARGE_STATUS_H
