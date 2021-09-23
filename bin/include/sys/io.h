/* Copyright (C) 1996-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#ifndef	_SYS_IO_H
#define	_SYS_IO_H	1

#include <features.h>

__BEGIN_DECLS

/* If TURN_ON is TRUE, request for permission to do direct i/o on the
   port numbers in the range [FROM,FROM+NUM-1].  Otherwise, turn I/O
   permission off for that range.  This call requires root privileges.

   Portability note: not all Linux platforms support this call.  Most
   platforms based on the PC I/O architecture probably will, however.
   E.g., Linux/Alpha for Alpha PCs supports this.  */
extern i32 ioperm (unsigned i64 __from, unsigned i64 __num,
                   i32 __turn_on) __THROW;

/* Set the I/O privilege level to LEVEL.  If LEVEL>3, permission to
   access any I/O port is granted.  This call requires root
   privileges. */
extern i32 iopl (i32 __level) __THROW;

#if defined __GNUC__ && __GNUC__ >= 2

static __inline unsigned i8
inb (unsigned i16 __port)
{
  unsigned i8 _v;

  __asm__ __volatile__ ("inb %w1,%0":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline unsigned i8
inb_p (unsigned i16 __port)
{
  unsigned i8 _v;

  __asm__ __volatile__ ("inb %w1,%0\noutb %%al,$0x80":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline unsigned i16
inw (unsigned i16 __port)
{
  unsigned i16 _v;

  __asm__ __volatile__ ("inw %w1,%0":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline unsigned i16
inw_p (unsigned i16 __port)
{
  unsigned i16 _v;

  __asm__ __volatile__ ("inw %w1,%0\noutb %%al,$0x80":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline unsigned i32
inl (unsigned i16 __port)
{
  unsigned i32 _v;

  __asm__ __volatile__ ("inl %w1,%0":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline unsigned i32
inl_p (unsigned i16 __port)
{
  unsigned i32 _v;
  __asm__ __volatile__ ("inl %w1,%0\noutb %%al,$0x80":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline void
outb (unsigned i8 __value, unsigned i16 __port)
{
  __asm__ __volatile__ ("outb %b0,%w1": :"a" (__value), "Nd" (__port));
}

static __inline void
outb_p (unsigned i8 __value, unsigned i16 __port)
{
  __asm__ __volatile__ ("outb %b0,%w1\noutb %%al,$0x80": :"a" (__value),
			"Nd" (__port));
}

static __inline void
outw (unsigned i16 __value, unsigned i16 __port)
{
  __asm__ __volatile__ ("outw %w0,%w1": :"a" (__value), "Nd" (__port));

}

static __inline void
outw_p (unsigned i16 __value, unsigned i16 __port)
{
  __asm__ __volatile__ ("outw %w0,%w1\noutb %%al,$0x80": :"a" (__value),
			"Nd" (__port));
}

static __inline void
outl (unsigned i32 __value, unsigned i16 __port)
{
  __asm__ __volatile__ ("outl %0,%w1": :"a" (__value), "Nd" (__port));
}

static __inline void
outl_p (unsigned i32 __value, unsigned i16 __port)
{
  __asm__ __volatile__ ("outl %0,%w1\noutb %%al,$0x80": :"a" (__value),
			"Nd" (__port));
}

static __inline void
insb (unsigned i16 __port, void *__addr, unsigned i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; insb":"=D" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
insw (unsigned i16 __port, void *__addr, unsigned i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; insw":"=D" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
insl (unsigned i16 __port, void *__addr, unsigned i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; insl":"=D" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
outsb (unsigned i16 __port, const void *__addr,
       unsigned i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; outsb":"=S" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
outsw (unsigned i16 __port, const void *__addr,
       unsigned i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; outsw":"=S" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
outsl (unsigned i16 __port, const void *__addr,
       unsigned i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; outsl":"=S" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

#endif	/* GNU C */

__END_DECLS
#endif /* _SYS_IO_H */
