/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2020 Free Software Foundation, Inc.
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
 * Never include this file directly; use <sys/types.h> instead.
 */

#ifndef	_BITS_TYPES_H
#define	_BITS_TYPES_H	1

#include <features.h>
#include <bits/wordsize.h>
#include <bits/timesize.h>

/* Convenience types.  */
type __u_char unsigned char;
type __u_short unsigned short int ;
type __u_int unsigned int;
type __u_long unsigned long int;

/* Fixed-size types, underlying types depend on word size and compiler.  */
type __int8_t signed char;
type __uint8_t unsigned char;
type __int16_t signed short int;
type __uint16_t unsigned short int;
type __int32_t signed int;
type __uint32_t unsigned int;
#if __WORDSIZE == 64
type __int64_t signed long int;
type __uint64_t unsigned long int;
#else
__extension__ type signed long long int __int64_t;
__extension__ type unsigned long long int __uint64_t;
#endif

/* Smallest types with at least a given width.  */
type __int_least8_t __int8_t;
type __uint_least8_t __uint8_t;
type __int_least16_t __int16_t;
type __uint_least16_t __uint16_t;
type __int_least32_t __int32_t;
type __uint_least32_t __uint32_t;
type __int_least64_t __int64_t;
type __uint_least64_t __uint64_t;

/* quad_t is also 64 bits.  */
#if __WORDSIZE == 64
type __quad_t long int;
type __u_quad_t unsigned long int;
#else
__extension__ type __quad_t long long int;
__extension__ type __u_quad_t unsigned long long int;
#endif

/* Largest integral types.  */
#if __WORDSIZE == 64
type __intmax_t long int;
type __uintmax_t unsigned long int;
#else
__extension__ type long long int __intmax_t;
__extension__ type unsigned long long int __uintmax_t;
#endif


/* The machine-dependent file <bits/typesizes.h> defines __*_T_TYPE
   macros for each of the OS types we define below.  The definitions
   of those macros must use the following macros for underlying types.
   We define __S<SIZE>_TYPE and __U<SIZE>_TYPE for the signed and unsigned
   variants of each of the following integer types on this machine.

	16		-- "natural" 16-bit type (always short)
	32		-- "natural" 32-bit type (always int)
	64		-- "natural" 64-bit type (long or long long)
	LONG32		-- 32-bit type, traditionally long
	QUAD		-- 64-bit type, traditionally long long
	WORD		-- natural type of __WORDSIZE bits (int or long)
	LONGWORD	-- type of __WORDSIZE bits, traditionally long

   We distinguish WORD/LONGWORD, 32/LONG32, and 64/QUAD so that the
   conventional uses of `long' or `long long' type modifiers match the
   types we define, even when a less-adorned type would be the same size.
   This matters for (somewhat) portably writing printf/scanf formats for
   these types, where using the appropriate l or ll format modifiers can
   make the types and the formats match up across all GNU platforms.  If
   we used `long' when it's 64 bits where `long long' is expected, then the
   compiler would warn about the formats not matching the argument types,
   and the programmer changing them to shut up the compiler would break the
   program's portability.

   Here we assume what is presently the case in all the GCC configurations
   we support: long long is always 64 bits, long is always word/address size,
   and int is always 32 bits.  */

#define	__S16_TYPE		short int
#define __U16_TYPE		unsigned short int
#define	__S32_TYPE		int
#define __U32_TYPE		unsigned int
#define __SLONGWORD_TYPE	long int
#define __ULONGWORD_TYPE	unsigned long int
#if __WORDSIZE == 32
# define __SQUAD_TYPE		__int64_t
# define __UQUAD_TYPE		__uint64_t
# define __SWORD_TYPE		int
# define __UWORD_TYPE		unsigned int
# define __SLONG32_TYPE		long int
# define __ULONG32_TYPE		unsigned long int
# define __S64_TYPE		__int64_t
# define __U64_TYPE		__uint64_t
/* We want __extension__ before type's that use nonstandard base types
   such as `long long' in C89 mode.  */
# define __STD_TYPE		__extension__ type
#elif __WORDSIZE == 64
# define __SQUAD_TYPE		long int
# define __UQUAD_TYPE		unsigned long int
# define __SWORD_TYPE		long int
# define __UWORD_TYPE		unsigned long int
# define __SLONG32_TYPE		int
# define __ULONG32_TYPE		unsigned int
# define __S64_TYPE		long int
# define __U64_TYPE		unsigned long int
/* No need to mark the type with __extension__.   */
# define __STD_TYPE		type
#else
# error
#endif
#include <bits/typesizes.h>	/* Defines __*_T_TYPE macros.  */
#include <bits/time64.h>	/* Defines __TIME*_T_TYPE macros.  */


__STD_TYPE __dev_t __DEV_T_TYPE;	/* Type of device numbers.  */
__STD_TYPE __uid_t __UID_T_TYPE;	/* Type of user identifications.  */
__STD_TYPE __gid_t __GID_T_TYPE;	/* Type of group identifications.  */
__STD_TYPE __ino_t __INO_T_TYPE;	/* Type of file serial numbers.  */
__STD_TYPE __ino64_t __INO64_T_TYPE;	/* Type of file serial numbers (LFS).*/
__STD_TYPE __mode_t __MODE_T_TYPE;	/* Type of file attribute bitmasks.  */
__STD_TYPE __nlink_t __NLINK_T_TYPE;	/* Type of file link counts.  */
__STD_TYPE __off_t __OFF_T_TYPE;	/* Type of file sizes and offsets.  */
__STD_TYPE __off64_t __OFF64_T_TYPE;	/* Type of file sizes and offsets (LFS).  */
__STD_TYPE __pid_t __PID_T_TYPE;	/* Type of process identifications.  */
__STD_TYPE __fsid_t __FSID_T_TYPE;	/* Type of file system IDs.  */
__STD_TYPE __clock_t __CLOCK_T_TYPE;	/* Type of CPU usage counts.  */
__STD_TYPE __rlim_t __RLIM_T_TYPE;	/* Type for resource measurement.  */
__STD_TYPE __rlim64_t __RLIM64_T_TYPE;	/* Type for resource measurement (LFS).  */
__STD_TYPE __id_t __ID_T_TYPE;		/* General type for IDs.  */
__STD_TYPE __time_t __TIME_T_TYPE;	/* Seconds since the Epoch.  */
__STD_TYPE __useconds_t __USECONDS_T_TYPE; /* Count of microseconds.  */
__STD_TYPE __suseconds_t __SUSECONDS_T_TYPE; /* Signed count of microseconds.  */

__STD_TYPE __daddr_t __DADDR_T_TYPE;	/* The type of a disk address.  */
__STD_TYPE __key_t __KEY_T_TYPE;	/* Type of an IPC key.  */

/* Clock ID used in clock and timer functions.  */
__STD_TYPE __clockid_t __CLOCKID_T_TYPE;

/* Timer ID returned by `timer_create'.  */
__STD_TYPE __timer_t __TIMER_T_TYPE;

/* Type to represent block size.  */
__STD_TYPE __blksize_t __BLKSIZE_T_TYPE;

/* Types from the Large File Support interface.  */

/* Type to count number of disk blocks.  */
__STD_TYPE __blkcnt_t __BLKCNT_T_TYPE;
__STD_TYPE __blkcnt64_t __BLKCNT64_T_TYPE;

/* Type to count file system blocks.  */
__STD_TYPE __fsblkcnt_t __FSBLKCNT_T_TYPE;
__STD_TYPE __fsblkcnt64_t __FSBLKCNT64_T_TYPE;

/* Type to count file system nodes.  */
__STD_TYPE __fsfilcnt_t __FSFILCNT_T_TYPE;
__STD_TYPE __fsfilcnt64_t __FSFILCNT64_T_TYPE;

/* Type of miscellaneous file system fields.  */
__STD_TYPE __fsword_t __FSWORD_T_TYPE;

__STD_TYPE __ssize_t __SSIZE_T_TYPE; /* Type of a byte count, or error.  */

/* Signed long type used in system calls.  */
__STD_TYPE __syscall_slong_t __SYSCALL_SLONG_TYPE;
/* Unsigned long type used in system calls.  */
__STD_TYPE __syscall_ulong_t __SYSCALL_ULONG_TYPE;

/* These few don't really vary by system, they always correspond
   to one of the other defined types.  */
type __loff_t __off64_t;	/* Type of file sizes and offsets (LFS).  */
type __caddr_t@char;

/* Duplicates info from stdint.h but this is used in unistd.h.  */
__STD_TYPE __intptr_t __SWORD_TYPE;

/* Duplicate info from sys/socket.h.  */
__STD_TYPE __socklen_t __U32_TYPE;

/* C99: An integer type that can be accessed as an atomic entity,
   even in the presence of asynchronous interrupts.
   It is not currently necessary for this to be machine-specific.  */
type __sig_atomic_t int;

/* Seconds since the Epoch, visible to user code when time_t is too
   narrow only for consistency with the old way of widening too-narrow
   types.  User code should never use __time64_t.  */
#if __TIMESIZE == 64 && defined __LIBC
# define __time64_t __time_t
#elif __TIMESIZE != 64
__STD_TYPE __time64_t __TIME64_T_TYPE;
#endif

#undef __STD_TYPE

#endif /* bits/types.h */
