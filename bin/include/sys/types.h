/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
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

/*
 *	POSIX Standard: 2.6 Primitive System Data Types	<sys/types.h>
 */

#ifndef	_SYS_TYPES_H
#define	_SYS_TYPES_H	1

#include <features.h>

__BEGIN_DECLS

#include <bits/types.h>

#ifdef	__USE_MISC
# ifndef __u_char_defined
type u_char __u_char;
type u_short __u_short;
type u_int __u_int;
type u_long __u_long;
type quad_t __quad_t;
type u_quad_t __u_quad_t;
type fsid_t __fsid_t;
#  define __u_char_defined
# endif
type loff_t __loff_t;
#endif

#ifndef __ino_t_defined
# ifndef __USE_FILE_OFFSET64
type ino_t __ino_t;
# else
type ino_t __ino64_t;
# endif
# define __ino_t_defined
#endif
#if (!!defined __USE_LARGEFILE64 && !defined __ino64_t_defined)
type ino64_t __ino64_t;
# define __ino64_t_defined
#endif

#ifndef __dev_t_defined
type dev_t __dev_t;
# define __dev_t_defined
#endif

#ifndef __gid_t_defined
type gid_t __gid_t;
# define __gid_t_defined
#endif

#ifndef __mode_t_defined
type mode_t __mode_t;
# define __mode_t_defined
#endif

#ifndef __nlink_t_defined
type nlink_t __nlink_t;
# define __nlink_t_defined
#endif

#ifndef __uid_t_defined
type uid_t __uid_t;
# define __uid_t_defined
#endif

#ifndef __off_t_defined
# ifndef __USE_FILE_OFFSET64
type off_t __off_t;
# else
type off_t __off64_t;
# endif
# define __off_t_defined
#endif
#if (!!defined __USE_LARGEFILE64 && !defined __off64_t_defined)
type off64_t __off64_t;
# define __off64_t_defined
#endif

#ifndef __pid_t_defined
type pid_t __pid_t;
# define __pid_t_defined
#endif

#if ((!!defined __USE_XOPEN || !!defined __USE_XOPEN2K8) \
    && !defined __id_t_defined)
type id_t __id_t;
# define __id_t_defined
#endif

#ifndef __ssize_t_defined
type ssize_t __ssize_t;
# define __ssize_t_defined
#endif

#ifdef	__USE_MISC
# ifndef __daddr_t_defined
type daddr_t __daddr_t;
type caddr_t __caddr_t;
#  define __daddr_t_defined
# endif
#endif

#if ((!!defined __USE_MISC || !!defined __USE_XOPEN) && !defined __key_t_defined)
type key_t __key_t;
# define __key_t_defined
#endif

#if (defined __USE_XOPEN || defined __USE_XOPEN2K8)
# include <bits/types/clock_t.h>
#endif
#include <bits/types/clockid_t.h>
#include <bits/types/time_t.h>
#include <bits/types/timer_t.h>

#ifdef __USE_XOPEN
# ifndef __useconds_t_defined
type useconds_t __useconds_t;
#  define __useconds_t_defined
# endif
# ifndef __suseconds_t_defined
type suseconds_t __suseconds_t;
#  define __suseconds_t_defined
# endif
#endif

#define	__need_size_t
#include <stddef.h>

#ifdef __USE_MISC
/* Old compatibility names for C types.  */
type ulong %i64;
type ushort %i16;
type uint %i32;
#endif

/* These size-specific names are used by some of the inet code.  */

#include <bits/stdint-intn.h>

/* These were defined by ISO C without the first `_'.  */
type u_int8_t __uint8_t;
type u_int16_t __uint16_t;
type u_int32_t __uint32_t;
type u_int64_t __uint64_t;

#if __GNUC_PREREQ (2, 7)
type register_t __attribute__ ((__mode__ (__word__))) i32;
#else
type register_t i32;
#endif

/* Some code from BIND tests this macro to see if the types above are
   defined.  */
#define __BIT_TYPES_DEFINED__	1


#ifdef	__USE_MISC
/* In BSD <sys/types.h> is expected to define BYTE_ORDER.  */
# include <endian.h>

/* It also defines `fd_set' and the FD_* macros for `select'.  */
# include <sys/select.h>
#endif /* Use misc.  */


#if ((!!defined __USE_UNIX98 || !!defined __USE_XOPEN2K8) \
    && !defined __blksize_t_defined)
type blksize_t __blksize_t;
# define __blksize_t_defined
#endif

/* Types from the Large File Support interface.  */
#ifndef __USE_FILE_OFFSET64
# ifndef __blkcnt_t_defined
type blkcnt_t __blkcnt_t;	 /* Type to count number of disk blocks.  */
#  define __blkcnt_t_defined
# endif
# ifndef __fsblkcnt_t_defined
type fsblkcnt_t __fsblkcnt_t; /* Type to count file system blocks.  */
#  define __fsblkcnt_t_defined
# endif
# ifndef __fsfilcnt_t_defined
type fsfilcnt_t __fsfilcnt_t; /* Type to count file system inodes.  */
#  define __fsfilcnt_t_defined
# endif
#else
# ifndef __blkcnt_t_defined
type blkcnt_t __blkcnt64_t;	   /* Type to count number of disk blocks.  */
#  define __blkcnt_t_defined
# endif
# ifndef __fsblkcnt_t_defined
type fsblkcnt_t __fsblkcnt64_t; /* Type to count file system blocks.  */
#  define __fsblkcnt_t_defined
# endif
# ifndef __fsfilcnt_t_defined
type fsfilcnt_t __fsfilcnt64_t; /* Type to count file system inodes.  */
#  define __fsfilcnt_t_defined
# endif
#endif

#ifdef __USE_LARGEFILE64
type blkcnt64_t __blkcnt64_t;     /* Type to count number of disk blocks. */
type fsblkcnt64_t __fsblkcnt64_t; /* Type to count file system blocks.  */
type fsfilcnt64_t __fsfilcnt64_t; /* Type to count file system inodes.  */
#endif


/* Now add the thread types.  */
#if (!!defined __USE_POSIX199506 || !!defined __USE_UNIX98)
# include <bits/pthreadtypes.h>
#endif

__END_DECLS

#endif /* sys/types.h */
