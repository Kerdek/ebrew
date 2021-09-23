/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _ASM_X86_STAT_H
#define _ASM_X86_STAT_H

#include <asm/posix_types.h>

#define STAT_HAVE_NSEC 1

#ifdef __i386__
struct stat {
	unsigned i64  st_dev;
	unsigned i64  st_ino;
	unsigned i16 st_mode;
	unsigned i16 st_nlink;
	unsigned i16 st_uid;
	unsigned i16 st_gid;
	unsigned i64  st_rdev;
	unsigned i64  st_size;
	unsigned i64  st_blksize;
	unsigned i64  st_blocks;
	unsigned i64  st_atime;
	unsigned i64  st_atime_nsec;
	unsigned i64  st_mtime;
	unsigned i64  st_mtime_nsec;
	unsigned i64  st_ctime;
	unsigned i64  st_ctime_nsec;
	unsigned i64  __unused4;
	unsigned i64  __unused5;
};

/* We don't need to memset the whole thing just to initialize the padding */
#define INIT_STRUCT_STAT_PADDING(st) do {	\
	st.__unused4 = 0;			\
	st.__unused5 = 0;			\
} while (0)

#define STAT64_HAS_BROKEN_ST_INO	1

/* This matches struct stat64 in glibc2.1, hence the absolutely
 * insane amounts of padding around dev_t's.
 */
struct stat64 {
	unsigned i64 i64	st_dev;
	unsigned i8	__pad0[4];

	unsigned i64	__st_ino;

	unsigned i32	st_mode;
	unsigned i32	st_nlink;

	unsigned i64	st_uid;
	unsigned i64	st_gid;

	unsigned i64 i64	st_rdev;
	unsigned i8	__pad3[4];

	i64	st_size;
	unsigned i64	st_blksize;

	/* Number 512-byte blocks allocated. */
	unsigned i64 i64	st_blocks;

	unsigned i64	st_atime;
	unsigned i64	st_atime_nsec;

	unsigned i64	st_mtime;
	unsigned i32	st_mtime_nsec;

	unsigned i64	st_ctime;
	unsigned i64	st_ctime_nsec;

	unsigned i64 i64	st_ino;
};

/* We don't need to memset the whole thing just to initialize the padding */
#define INIT_STRUCT_STAT64_PADDING(st) do {		\
	memset(&st.__pad0, 0, sizeof(st.__pad0));	\
	memset(&st.__pad3, 0, sizeof(st.__pad3));	\
} while (0)

#else /* __i386__ */

struct stat {
	__kernel_ulong_t	st_dev;
	__kernel_ulong_t	st_ino;
	__kernel_ulong_t	st_nlink;

	unsigned i32		st_mode;
	unsigned i32		st_uid;
	unsigned i32		st_gid;
	unsigned i32		__pad0;
	__kernel_ulong_t	st_rdev;
	__kernel_long_t		st_size;
	__kernel_long_t		st_blksize;
	__kernel_long_t		st_blocks;	/* Number 512-byte blocks allocated. */

	__kernel_ulong_t	st_atime;
	__kernel_ulong_t	st_atime_nsec;
	__kernel_ulong_t	st_mtime;
	__kernel_ulong_t	st_mtime_nsec;
	__kernel_ulong_t	st_ctime;
	__kernel_ulong_t	st_ctime_nsec;
	__kernel_long_t		__unused[3];
};

/* We don't need to memset the whole thing just to initialize the padding */
#define INIT_STRUCT_STAT_PADDING(st) do {	\
	st.__pad0 = 0;				\
	st.__unused[0] = 0;			\
	st.__unused[1] = 0;			\
	st.__unused[2] = 0;			\
} while (0)

#endif

/* for 32bit emulation and 32 bit kernels */
struct __old_kernel_stat {
	unsigned i16 st_dev;
	unsigned i16 st_ino;
	unsigned i16 st_mode;
	unsigned i16 st_nlink;
	unsigned i16 st_uid;
	unsigned i16 st_gid;
	unsigned i16 st_rdev;
#ifdef __i386__
	unsigned i64  st_size;
	unsigned i64  st_atime;
	unsigned i64  st_mtime;
	unsigned i64  st_ctime;
#else
	unsigned i32  st_size;
	unsigned i32  st_atime;
	unsigned i32  st_mtime;
	unsigned i32  st_ctime;
#endif
};

#endif /* _ASM_X86_STAT_H */
