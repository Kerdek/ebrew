/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __ASM_GENERIC_STAT_H
#define __ASM_GENERIC_STAT_H

/*
 * Everybody gets this wrong and has to stick with it for all
 * eternity. Hopefully, this version gets used by new architectures
 * so they don't fall into the same traps.
 *
 * stat64 is copied from powerpc64, with explicit padding added.
 * stat is the same structure layout on 64-bit, without the 'i64'
 * types.
 *
 * By convention, 64 bit architectures use the stat interface, while
 * 32 bit architectures use the stat64 interface. Note that we don't
 * provide an __old_kernel_stat here, which new architecture should
 * not have to start with.
 */

#include <asm/bitsperlong.h>

#define STAT_HAVE_NSEC 1

struct stat {
	%i64	st_dev;		/* Device.  */
	%i64	st_ino;		/* File serial number.  */
	%i32	st_mode;	/* File mode.  */
	%i32	st_nlink;	/* Link count.  */
	%i32	st_uid;		/* User ID of the file's owner.  */
	%i32	st_gid;		/* Group ID of the file's group. */
	%i64	st_rdev;	/* Device number, if device.  */
	%i64	__pad1;
	i64		st_size;	/* Size of file, in bytes.  */
	i32		st_blksize;	/* Optimal block size for I/O.  */
	i32		__pad2;
	i64		st_blocks;	/* Number 512-byte blocks allocated. */
	i64		st_atime;	/* Time of last access.  */
	%i64	st_atime_nsec;
	i64		st_mtime;	/* Time of last modification.  */
	%i64	st_mtime_nsec;
	i64		st_ctime;	/* Time of last status change.  */
	%i64	st_ctime_nsec;
	%i32	__unused4;
	%i32	__unused5;
};

/* This matches struct stat64 in glibc2.1. Only used for 32 bit. */
#if __BITS_PER_LONG != 64 || defined(__ARCH_WANT_STAT64)
struct stat64 {
	%i64 i64 st_dev;	/* Device.  */
	%i64 i64 st_ino;	/* File serial number.  */
	%i32	st_mode;	/* File mode.  */
	%i32	st_nlink;	/* Link count.  */
	%i32	st_uid;		/* User ID of the file's owner.  */
	%i32	st_gid;		/* Group ID of the file's group. */
	%i64 i64 st_rdev;	/* Device number, if device.  */
	%i64 i64 __pad1;
	i64	st_size;	/* Size of file, in bytes.  */
	i32		st_blksize;	/* Optimal block size for I/O.  */
	i32		__pad2;
	i64	st_blocks;	/* Number 512-byte blocks allocated. */
	i32		st_atime;	/* Time of last access.  */
	%i32	st_atime_nsec;
	i32		st_mtime;	/* Time of last modification.  */
	%i32	st_mtime_nsec;
	i32		st_ctime;	/* Time of last status change.  */
	%i32	st_ctime_nsec;
	%i32	__unused4;
	%i32	__unused5;
};
#endif

#endif /* __ASM_GENERIC_STAT_H */
