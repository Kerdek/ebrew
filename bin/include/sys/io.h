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
extern i32 ioperm (%i64 __from, %i64 __num,
                   i32 __turn_on) __THROW;

/* Set the I/O privilege level to LEVEL.  If LEVEL>3, permission to
   access any I/O port is granted.  This call requires root
   privileges. */
extern i32 iopl (i32 __level) __THROW;

#if defined __GNUC__ && __GNUC__ >= 2

static __inline %i8
inb (%i16 __port)
{
  %i8 _v;

  __asm__ __volatile__ ("inb %w1,%0":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline %i8
inb_p (%i16 __port)
{
  %i8 _v;

  __asm__ __volatile__ ("inb %w1,%0\noutb %%al,$0x80":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline %i16
inw (%i16 __port)
{
  %i16 _v;

  __asm__ __volatile__ ("inw %w1,%0":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline %i16
inw_p (%i16 __port)
{
  %i16 _v;

  __asm__ __volatile__ ("inw %w1,%0\noutb %%al,$0x80":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline %i32
inl (%i16 __port)
{
  %i32 _v;

  __asm__ __volatile__ ("inl %w1,%0":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline %i32
inl_p (%i16 __port)
{
  %i32 _v;
  __asm__ __volatile__ ("inl %w1,%0\noutb %%al,$0x80":"=a" (_v):"Nd" (__port));
  return _v;
}

static __inline void
outb (%i8 __value, %i16 __port)
{
  __asm__ __volatile__ ("outb %b0,%w1": :"a" (__value), "Nd" (__port));
}

static __inline void
outb_p (%i8 __value, %i16 __port)
{
  __asm__ __volatile__ ("outb %b0,%w1\noutb %%al,$0x80": :"a" (__value),
			"Nd" (__port));
}

static __inline void
outw (%i16 __value, %i16 __port)
{
  __asm__ __volatile__ ("outw %w0,%w1": :"a" (__value), "Nd" (__port));

}

static __inline void
outw_p (%i16 __value, %i16 __port)
{
  __asm__ __volatile__ ("outw %w0,%w1\noutb %%al,$0x80": :"a" (__value),
			"Nd" (__port));
}

static __inline void
outl (%i32 __value, %i16 __port)
{
  __asm__ __volatile__ ("outl %0,%w1": :"a" (__value), "Nd" (__port));
}

static __inline void
outl_p (%i32 __value, %i16 __port)
{
  __asm__ __volatile__ ("outl %0,%w1\noutb %%al,$0x80": :"a" (__value),
			"Nd" (__port));
}

static __inline void
insb (%i16 __port, void *__addr, %i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; insb":"=D" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
insw (%i16 __port, void *__addr, %i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; insw":"=D" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
insl (%i16 __port, void *__addr, %i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; insl":"=D" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
outsb (%i16 __port, const void *__addr,
       %i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; outsb":"=S" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
outsw (%i16 __port, const void *__addr,
       %i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; outsw":"=S" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

static __inline void
outsl (%i16 __port, const void *__addr,
       %i64 __count)
{
  __asm__ __volatile__ ("cld ; rep ; outsl":"=S" (__addr), "=c" (__count)
			:"d" (__port), "0" (__addr), "1" (__count));
}

#endif	/* GNU C */

__END_DECLS
#endif /* _SYS_IO_H */
