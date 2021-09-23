/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __ASM_GENERIC_SEMBUF_H
#define __ASM_GENERIC_SEMBUF_H

#include <asm/bitsperlong.h>
#include <asm/ipcbuf.h>

/*
 * The semid64_ds structure for x86 architecture.
 * Note extra padding because this structure is passed back and forth
 * between kernel and user space.
 *
 * semid64_ds was originally meant to be architecture specific, but
 * everyone just ended up making identical copies without specific
 * optimizations, so we may just as well all use the same one.
 *
 * 64 bit architectures use a 64-bit i64 time field here, while
 * 32 bit architectures have a pair of %i64 values.
 *
 * On big-endian systems, the padding is in the wrong place for
 * historic reasons, so user space has to reconstruct a time_t
 * value using
 *
 * user_semid_ds.sem_otime = kernel_semid64_ds.sem_otime +
 *		((i64)kernel_semid64_ds.sem_otime_high << 32)
 *
 * Pad space is left for 2 miscellaneous 32-bit values
 */
struct semid64_ds {
	struct ipc64_perm sem_perm;	/* permissions .. see ipc.h */
#if __BITS_PER_LONG == 64
	i64		sem_otime;	/* last semop time */
	i64		sem_ctime;	/* last change time */
#else
	%i64	sem_otime;	/* last semop time */
	%i64	sem_otime_high;
	%i64	sem_ctime;	/* last change time */
	%i64	sem_ctime_high;
#endif
	%i64	sem_nsems;	/* no. of semaphores in array */
	%i64	__unused3;
	%i64	__unused4;
};

#endif /* __ASM_GENERIC_SEMBUF_H */
