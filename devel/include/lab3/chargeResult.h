// Generated by gencpp from file lab3/ChargeResult.msg
// DO NOT EDIT!


#ifndef LAB3_MESSAGE_CHARGERESULT_H
#define LAB3_MESSAGE_CHARGERESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lab3
{
template <class ContainerAllocator>
struct ChargeResult_
{
  typedef ChargeResult_<ContainerAllocator> Type;

  ChargeResult_()
    : result(false)  {
    }
  ChargeResult_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::lab3::ChargeResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab3::ChargeResult_<ContainerAllocator> const> ConstPtr;

}; // struct ChargeResult_

typedef ::lab3::ChargeResult_<std::allocator<void> > ChargeResult;

typedef boost::shared_ptr< ::lab3::ChargeResult > ChargeResultPtr;
typedef boost::shared_ptr< ::lab3::ChargeResult const> ChargeResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab3::ChargeResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab3::ChargeResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab3::ChargeResult_<ContainerAllocator1> & lhs, const ::lab3::ChargeResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab3::ChargeResult_<ContainerAllocator1> & lhs, const ::lab3::ChargeResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab3

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab3::ChargeResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab3::ChargeResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab3::ChargeResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab3::ChargeResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab3::ChargeResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab3::ChargeResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab3::ChargeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::lab3::ChargeResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::lab3::ChargeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab3/ChargeResult";
  }

  static const char* value(const ::lab3::ChargeResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab3::ChargeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Result\n"
"bool result\n"
;
  }

  static const char* value(const ::lab3::ChargeResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab3::ChargeResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChargeResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab3::ChargeResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab3::ChargeResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB3_MESSAGE_CHARGERESULT_H
