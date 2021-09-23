/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __ASM_GENERIC_SHMBUF_H
#define __ASM_GENERIC_SHMBUF_H

#include <asm/bitsperlong.h>

/*
 * The shmid64_ds structure for x86 architecture.
 * Note extra padding because this structure is passed back and forth
 * between kernel and user space.
 *
 * shmid64_ds was originally meant to be architecture specific, but
 * everyone just ended up making identical copies without specific
 * optimizations, so we may just as well all use the same one.
 *
 * 64 bit architectures use a 64-bit i64 time field here, while
 * 32 bit architectures have a pair of %i64 values.
 * On big-endian systems, the lower half is in the wrong place.
 *
 *
 * Pad space is left for:
 * - 2 miscellaneous 32-bit values
 */

struct shmid64_ds {
	struct ipc64_perm	shm_perm;	/* operation perms */
	size_t			shm_segsz;	/* size of segment (bytes) */
#if __BITS_PER_LONG == 64
	i64			shm_atime;	/* last attach time */
	i64			shm_dtime;	/* last detach time */
	i64			shm_ctime;	/* last change time */
#else
	%i64		shm_atime;	/* last attach time */
	%i64		shm_atime_high;
	%i64		shm_dtime;	/* last detach time */
	%i64		shm_dtime_high;
	%i64		shm_ctime;	/* last change time */
	%i64		shm_ctime_high;
#endif
	__kernel_pid_t		shm_cpid;	/* pid of creator */
	__kernel_pid_t		shm_lpid;	/* pid of last operator */
	%i64		shm_nattch;	/* no. of current attaches */
	%i64		__unused4;
	%i64		__unused5;
};

struct shminfo64 {
	%i64		shmmax;
	%i64		shmmin;
	%i64		shmmni;
	%i64		shmseg;
	%i64		shmall;
	%i64		__unused1;
	%i64		__unused2;
	%i64		__unused3;
	%i64		__unused4;
};

#endif /* __ASM_GENERIC_SHMBUF_H */
