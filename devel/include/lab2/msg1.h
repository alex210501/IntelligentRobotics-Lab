// Generated by gencpp from file lab2/msg1.msg
// DO NOT EDIT!


#ifndef LAB2_MESSAGE_MSG1_H
#define LAB2_MESSAGE_MSG1_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lab2
{
template <class ContainerAllocator>
struct msg1_
{
  typedef msg1_<ContainerAllocator> Type;

  msg1_()
    : A(0)
    , B(0)
    , C(0)  {
    }
  msg1_(const ContainerAllocator& _alloc)
    : A(0)
    , B(0)
    , C(0)  {
  (void)_alloc;
    }



   typedef int32_t _A_type;
  _A_type A;

   typedef int32_t _B_type;
  _B_type B;

   typedef int32_t _C_type;
  _C_type C;





  typedef boost::shared_ptr< ::lab2::msg1_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lab2::msg1_<ContainerAllocator> const> ConstPtr;

}; // struct msg1_

typedef ::lab2::msg1_<std::allocator<void> > msg1;

typedef boost::shared_ptr< ::lab2::msg1 > msg1Ptr;
typedef boost::shared_ptr< ::lab2::msg1 const> msg1ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lab2::msg1_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lab2::msg1_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lab2::msg1_<ContainerAllocator1> & lhs, const ::lab2::msg1_<ContainerAllocator2> & rhs)
{
  return lhs.A == rhs.A &&
    lhs.B == rhs.B &&
    lhs.C == rhs.C;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lab2::msg1_<ContainerAllocator1> & lhs, const ::lab2::msg1_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lab2

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lab2::msg1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lab2::msg1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab2::msg1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lab2::msg1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab2::msg1_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lab2::msg1_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lab2::msg1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7a68ce4e0b75a9719b4950a7069c9d4";
  }

  static const char* value(const ::lab2::msg1_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7a68ce4e0b75a97ULL;
  static const uint64_t static_value2 = 0x19b4950a7069c9d4ULL;
};

template<class ContainerAllocator>
struct DataType< ::lab2::msg1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lab2/msg1";
  }

  static const char* value(const ::lab2::msg1_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lab2::msg1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 A\n"
"int32 B\n"
"int32 C\n"
;
  }

  static const char* value(const ::lab2::msg1_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lab2::msg1_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.A);
      stream.next(m.B);
      stream.next(m.C);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct msg1_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lab2::msg1_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lab2::msg1_<ContainerAllocator>& v)
  {
    s << indent << "A: ";
    Printer<int32_t>::stream(s, indent + "  ", v.A);
    s << indent << "B: ";
    Printer<int32_t>::stream(s, indent + "  ", v.B);
    s << indent << "C: ";
    Printer<int32_t>::stream(s, indent + "  ", v.C);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LAB2_MESSAGE_MSG1_H