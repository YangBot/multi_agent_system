// Generated by gencpp from file service_demo/snedtaskRequest.msg
// DO NOT EDIT!


#ifndef SERVICE_DEMO_MESSAGE_SNEDTASKREQUEST_H
#define SERVICE_DEMO_MESSAGE_SNEDTASKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace service_demo
{
template <class ContainerAllocator>
struct snedtaskRequest_
{
  typedef snedtaskRequest_<ContainerAllocator> Type;

  snedtaskRequest_()
    : name()
    , age(0)
    , feedback()  {
    }
  snedtaskRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , age(0)
    , feedback(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef int32_t _age_type;
  _age_type age;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _feedback_type;
  _feedback_type feedback;





  typedef boost::shared_ptr< ::service_demo::snedtaskRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::service_demo::snedtaskRequest_<ContainerAllocator> const> ConstPtr;

}; // struct snedtaskRequest_

typedef ::service_demo::snedtaskRequest_<std::allocator<void> > snedtaskRequest;

typedef boost::shared_ptr< ::service_demo::snedtaskRequest > snedtaskRequestPtr;
typedef boost::shared_ptr< ::service_demo::snedtaskRequest const> snedtaskRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::service_demo::snedtaskRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::service_demo::snedtaskRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace service_demo

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::service_demo::snedtaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::service_demo::snedtaskRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_demo::snedtaskRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::service_demo::snedtaskRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_demo::snedtaskRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::service_demo::snedtaskRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::service_demo::snedtaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d909ff136d7b21683428bf14271414ba";
  }

  static const char* value(const ::service_demo::snedtaskRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd909ff136d7b2168ULL;
  static const uint64_t static_value2 = 0x3428bf14271414baULL;
};

template<class ContainerAllocator>
struct DataType< ::service_demo::snedtaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "service_demo/snedtaskRequest";
  }

  static const char* value(const ::service_demo::snedtaskRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::service_demo::snedtaskRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
int32 age\n\
string feedback\n\
";
  }

  static const char* value(const ::service_demo::snedtaskRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::service_demo::snedtaskRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.age);
      stream.next(m.feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct snedtaskRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::service_demo::snedtaskRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::service_demo::snedtaskRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "age: ";
    Printer<int32_t>::stream(s, indent + "  ", v.age);
    s << indent << "feedback: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SERVICE_DEMO_MESSAGE_SNEDTASKREQUEST_H