// Generated by gencpp from file exercice_1/charge_status.msg
// DO NOT EDIT!


#ifndef EXERCICE_1_MESSAGE_CHARGE_STATUS_H
#define EXERCICE_1_MESSAGE_CHARGE_STATUS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace exercice_1
{
template <class ContainerAllocator>
struct charge_status_
{
  typedef charge_status_<ContainerAllocator> Type;

  charge_status_()
    : room_id(0)
    , room_name()
    , charge_status(0)  {
    }
  charge_status_(const ContainerAllocator& _alloc)
    : room_id(0)
    , room_name(_alloc)
    , charge_status(0)  {
  (void)_alloc;
    }



   typedef int32_t _room_id_type;
  _room_id_type room_id;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _room_name_type;
  _room_name_type room_name;

   typedef int16_t _charge_status_type;
  _charge_status_type charge_status;





  typedef boost::shared_ptr< ::exercice_1::charge_status_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exercice_1::charge_status_<ContainerAllocator> const> ConstPtr;

}; // struct charge_status_

typedef ::exercice_1::charge_status_<std::allocator<void> > charge_status;

typedef boost::shared_ptr< ::exercice_1::charge_status > charge_statusPtr;
typedef boost::shared_ptr< ::exercice_1::charge_status const> charge_statusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exercice_1::charge_status_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exercice_1::charge_status_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::exercice_1::charge_status_<ContainerAllocator1> & lhs, const ::exercice_1::charge_status_<ContainerAllocator2> & rhs)
{
  return lhs.room_id == rhs.room_id &&
    lhs.room_name == rhs.room_name &&
    lhs.charge_status == rhs.charge_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::exercice_1::charge_status_<ContainerAllocator1> & lhs, const ::exercice_1::charge_status_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace exercice_1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::exercice_1::charge_status_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exercice_1::charge_status_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exercice_1::charge_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exercice_1::charge_status_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercice_1::charge_status_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exercice_1::charge_status_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exercice_1::charge_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cca0b435daf1ea6933fbfbc759f1f9f9";
  }

  static const char* value(const ::exercice_1::charge_status_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcca0b435daf1ea69ULL;
  static const uint64_t static_value2 = 0x33fbfbc759f1f9f9ULL;
};

template<class ContainerAllocator>
struct DataType< ::exercice_1::charge_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exercice_1/charge_status";
  }

  static const char* value(const ::exercice_1::charge_status_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exercice_1::charge_status_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 room_id\n"
"string room_name\n"
"int16 charge_status\n"
;
  }

  static const char* value(const ::exercice_1::charge_status_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exercice_1::charge_status_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.room_id);
      stream.next(m.room_name);
      stream.next(m.charge_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct charge_status_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exercice_1::charge_status_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exercice_1::charge_status_<ContainerAllocator>& v)
  {
    s << indent << "room_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.room_id);
    s << indent << "room_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.room_name);
    s << indent << "charge_status: ";
    Printer<int16_t>::stream(s, indent + "  ", v.charge_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXERCICE_1_MESSAGE_CHARGE_STATUS_H
