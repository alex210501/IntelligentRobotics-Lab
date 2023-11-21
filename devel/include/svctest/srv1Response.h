// Generated by gencpp from file svctest/srv1Response.msg
// DO NOT EDIT!


#ifndef SVCTEST_MESSAGE_SRV1RESPONSE_H
#define SVCTEST_MESSAGE_SRV1RESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace svctest
{
template <class ContainerAllocator>
struct srv1Response_
{
  typedef srv1Response_<ContainerAllocator> Type;

  srv1Response_()
    : sum(0)  {
    }
  srv1Response_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int32_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::svctest::srv1Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::svctest::srv1Response_<ContainerAllocator> const> ConstPtr;

}; // struct srv1Response_

typedef ::svctest::srv1Response_<std::allocator<void> > srv1Response;

typedef boost::shared_ptr< ::svctest::srv1Response > srv1ResponsePtr;
typedef boost::shared_ptr< ::svctest::srv1Response const> srv1ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::svctest::srv1Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::svctest::srv1Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::svctest::srv1Response_<ContainerAllocator1> & lhs, const ::svctest::srv1Response_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::svctest::srv1Response_<ContainerAllocator1> & lhs, const ::svctest::srv1Response_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace svctest

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::svctest::srv1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::svctest::srv1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::svctest::srv1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::svctest::srv1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::svctest::srv1Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::svctest::srv1Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::svctest::srv1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ba699c25c9418c0366f3595c0c8e8ec";
  }

  static const char* value(const ::svctest::srv1Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ba699c25c9418c0ULL;
  static const uint64_t static_value2 = 0x366f3595c0c8e8ecULL;
};

template<class ContainerAllocator>
struct DataType< ::svctest::srv1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "svctest/srv1Response";
  }

  static const char* value(const ::svctest::srv1Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::svctest::srv1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 sum\n"
;
  }

  static const char* value(const ::svctest::srv1Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::svctest::srv1Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct srv1Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::svctest::srv1Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::svctest::srv1Response_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SVCTEST_MESSAGE_SRV1RESPONSE_H