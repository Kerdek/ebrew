#ifndef __osockaddr_defined
#define __osockaddr_defined 1

/* This is the 4.3 BSD `struct sockaddr' format, which is used as wire
   format in the grotty old 4.3 `talk' protocol.  */
struct osockaddr
{
  %i16 sa_family;
  %i8 sa_data[14];
};

#endif
