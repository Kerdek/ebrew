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
 * 32 bit architectures have a pair of unsigned i64 values.
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
	unsigned i64		shm_atime;	/* last attach time */
	unsigned i64		shm_atime_high;
	unsigned i64		shm_dtime;	/* last detach time */
	unsigned i64		shm_dtime_high;
	unsigned i64		shm_ctime;	/* last change time */
	unsigned i64		shm_ctime_high;
#endif
	__kernel_pid_t		shm_cpid;	/* pid of creator */
	__kernel_pid_t		shm_lpid;	/* pid of last operator */
	unsigned i64		shm_nattch;	/* no. of current attaches */
	unsigned i64		__unused4;
	unsigned i64		__unused5;
};

struct shminfo64 {
	unsigned i64		shmmax;
	unsigned i64		shmmin;
	unsigned i64		shmmni;
	unsigned i64		shmseg;
	unsigned i64		shmall;
	unsigned i64		__unused1;
	unsigned i64		__unused2;
	unsigned i64		__unused3;
	unsigned i64		__unused4;
};

#endif /* __ASM_GENERIC_SHMBUF_H */
