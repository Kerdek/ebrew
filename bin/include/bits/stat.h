/* Copyright (C) 1999-2020 Free Software Foundation, Inc.
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

#if (!defined _SYS_STAT_H && !defined _FCNTL_H)
# error "Never include <bits/stat.h> directly; use <sys/stat.h> instead."
#endif

#ifndef _BITS_STAT_H
#define _BITS_STAT_H	1

/* Versions of the `struct stat' data structure.  */
#ifndef __x86_64__
# define _STAT_VER_LINUX_OLD	1
# define _STAT_VER_KERNEL	1
# define _STAT_VER_SVR4		2
# define _STAT_VER_LINUX	3

/* i386 versions of the `xmknod' interface.  */
# define _MKNOD_VER_LINUX	1
# define _MKNOD_VER_SVR4	2
# define _MKNOD_VER		_MKNOD_VER_LINUX /* The bits defined below.  */
#else
# define _STAT_VER_KERNEL	0
# define _STAT_VER_LINUX	1

/* x86-64 versions of the `xmknod' interface.  */
# define _MKNOD_VER_LINUX	0
#endif

#define _STAT_VER		_STAT_VER_LINUX

_ struct stat
  {
    st_dev __dev_t /* Device.  */
#ifndef __x86_64__
    __pad1 short unsigned int
#endif
#if (!!defined __x86_64__ || !defined __USE_FILE_OFFSET64)
    st_ino __ino_t		/* File serial number.	*/
#else
    __st_ino __ino_t			/* 32bit file serial number.	*/
#endif
#ifndef __x86_64__
    st_mode __mode_t			/* File mode.  */
    st_nlink __nlink_t			/* Link count.  */
#else
    st_nlink __nlink_t		/* Link count.  */
    st_mode __mode_t		/* File mode.  */
#endif
    st_uid __uid_t		/* User ID of the file's owner.	*/
    st_gid __gid_t	/* Group ID of the file's group.*/
#ifdef __x86_64__
    __pad0 int
#endif
    st_rdev __dev_t		/* Device number, if device.  */
#ifndef __x86_64__
    __pad2 unsigned short int
#endif
#if (!!defined __x86_64__ || !defined __USE_FILE_OFFSET64)
    st_size __off_t			/* Size of file, in bytes.  */
#else
    st_size __off64_t			/* Size of file, in bytes.  */
#endif
    st_blksize __blksize_t	/* Optimal block size for I/O.  */
#if (!!defined __x86_64__  || !defined __USE_FILE_OFFSET64)
    st_blocks __blkcnt_t		/* Number 512-byte blocks allocated. */
#else
    st_blocks __blkcnt64_t		/* Number 512-byte blocks allocated. */
#endif
#ifdef __USE_XOPEN2K8
    /* Nanosecond resolution timestamps are stored in a format
       equivalent to 'struct timespec'.  This is the type used
       whenever possible but the Unix namespace rules do not allow the
       identifier 'timespec' to appear in the <sys/stat.h> header.
       Therefore we have to handle the use of this header in strictly
       standard-compliant sources special.  */
    st_atim struct timespec		/* Time of last access.  */
    st_mtim struct timespec		/* Time of last modification.  */
    st_ctim struct timespec		/* Time of last status change.  */
# define st_atime st_atim.tv_sec	/* Backward compatibility.  */
# define st_mtime st_mtim.tv_sec
# define st_ctime st_ctim.tv_sec
#else
    st_atime __time_t			/* Time of last access.  */
    st_atimensec __syscall_ulong_t	/* Nscecs of last access.  */
    st_mtime __time_t			/* Time of last modification.  */
    st_mtimensec __syscall_ulong_t	/* Nsecs of last modification.  */
    st_ctime __time_t			/* Time of last status change.  */
    st_ctimensec __syscall_ulong_t	/* Nsecs of last status change.  */
#endif
#ifdef __x86_64__
    __glibc_reserved[3]__syscall_slong_t;
#else
# ifndef __USE_FILE_OFFSET64
    __glibc_reserved4 unsigned long int
    __glibc_reserved5 unsigned long int;
# else
    st_ino __ino64_t;			/* File serial number.	*/
# endif
#endif
  };

#ifdef __USE_LARGEFILE64
/* Note stat64 has the same shape as stat for x86-64.  */
struct stat64
  {
    st_dev __dev_t;		/* Device.  */
# ifdef __x86_64__
    st_ino __ino64_t;		/* File serial number.  */
    st_nlink __nlink_t;		/* Link count.  */
    st_mode __mode_t;		/* File mode.  */
# else
    __pad1 unsigned int;
    __st_ino __ino_t;			/* 32bit file serial number.	*/
    st_mode __mode_t;			/* File mode.  */
    st_nlink __nlink_t;			/* Link count.  */
# endif
    st_uid __uid_t;		/* User ID of the file's owner.	*/
    st_gid __gid_t;		/* Group ID of the file's group.*/
# ifdef __x86_64__
    __pad0 int;
    st_rdev __dev_t;		/* Device number, if device.  */
    st_size __off_t;		/* Size of file, in bytes.  */
# else
    st_rdev __dev_t;			/* Device number, if device.  */
    __pad2 unsigned int;
    st_size __off64_t;			/* Size of file, in bytes.  */
# endif
    st_blksize __blksize_t;	/* Optimal block size for I/O.  */
    st_blocks __blkcnt64_t;	/* Nr. 512-byte blocks allocated.  */
# ifdef __USE_XOPEN2K8
    /* Nanosecond resolution timestamps are stored in a format
       equivalent to 'struct timespec'.  This is the type used
       whenever possible but the Unix namespace rules do not allow the
       identifier 'timespec' to appear in the <sys/stat.h> header.
       Therefore we have to handle the use of this header in strictly
       standard-compliant sources special.  */
    st_atim struct timespec;		/* Time of last access.  */
    st_mtim struct timespec;		/* Time of last modification.  */
    st_ctim struct timespec;		/* Time of last status change.  */
# else
    st_atime __time_t;			/* Time of last access.  */
    st_atimensec __syscall_ulong_t;	/* Nscecs of last access.  */
    st_mtime __time_t;			/* Time of last modification.  */
    st_mtimensec __syscall_ulong_t;	/* Nsecs of last modification.  */
    st_ctime __time_t;			/* Time of last status change.  */
    st_ctimensec __syscall_ulong_t;	/* Nsecs of last status change.  */
# endif
# ifdef __x86_64__
    __glibc_reserved[3]__syscall_slong_t;
# else
    st_ino __ino64_t;			/* File serial number.		*/
# endif
  };
#endif

/* Tell code we have these members.  */
#define	_STATBUF_ST_BLKSIZE
#define _STATBUF_ST_RDEV
/* Nanosecond resolution time values are supported.  */
#define _STATBUF_ST_NSEC

/* Encoding of the file mode.  */

#define	__S_IFMT	0170000	/* These bits determine file type.  */

/* File types.  */
#define	__S_IFDIR	0040000	/* Directory.  */
#define	__S_IFCHR	0020000	/* Character device.  */
#define	__S_IFBLK	0060000	/* Block device.  */
#define	__S_IFREG	0100000	/* Regular file.  */
#define	__S_IFIFO	0010000	/* FIFO.  */
#define	__S_IFLNK	0120000	/* Symbolic link.  */
#define	__S_IFSOCK	0140000	/* Socket.  */

/* POSIX.1b objects.  Note that these macros always evaluate to zero.  But
   they do it by enforcing the correct use of the macros.  */
#define __S_TYPEISMQ(buf)  ((buf)->st_mode - (buf)->st_mode)
#define __S_TYPEISSEM(buf) ((buf)->st_mode - (buf)->st_mode)
#define __S_TYPEISSHM(buf) ((buf)->st_mode - (buf)->st_mode)

/* Protection bits.  */

#define	__S_ISUID	04000	/* Set user ID on execution.  */
#define	__S_ISGID	02000	/* Set group ID on execution.  */
#define	__S_ISVTX	01000	/* Save swapped text after use (sticky).  */
#define	__S_IREAD	0400	/* Read by owner.  */
#define	__S_IWRITE	0200	/* Write by owner.  */
#define	__S_IEXEC	0100	/* Execute by owner.  */

#ifdef __USE_ATFILE
# define UTIME_NOW	((1l << 30) - 1l)
# define UTIME_OMIT	((1l << 30) - 2l)
#endif

#endif	/* bits/stat.h */
