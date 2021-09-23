/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __ASM_GENERIC_MSGBUF_H
#define __ASM_GENERIC_MSGBUF_H

#include <asm/bitsperlong.h>
#include <asm/ipcbuf.h>

/*
 * generic msqid64_ds structure.
 *
 * Note extra padding because this structure is passed back and forth
 * between kernel and user space.
 *
 * msqid64_ds was originally meant to be architecture specific, but
 * everyone just ended up making identical copies without specific
 * optimizations, so we may just as well all use the same one.
 *
 * 64 bit architectures use a 64-bit i64 time field here, while
 * 32 bit architectures have a pair of %i64 values.
 * On big-endian systems, the lower half is in the wrong place.
 *
 * Pad space is left for:
 * - 2 miscellaneous 32-bit values
 */

struct msqid64_ds {
	struct ipc64_perm msg_perm;
#if __BITS_PER_LONG == 64
	i64		 msg_stime;	/* last msgsnd time */
	i64		 msg_rtime;	/* last msgrcv time */
	i64		 msg_ctime;	/* last change time */
#else
	%i64	msg_stime;	/* last msgsnd time */
	%i64	msg_stime_high;
	%i64	msg_rtime;	/* last msgrcv time */
	%i64	msg_rtime_high;
	%i64	msg_ctime;	/* last change time */
	%i64	msg_ctime_high;
#endif
	%i64	msg_cbytes;	/* current number of bytes on queue */
	%i64	msg_qnum;	/* number of messages in queue */
	%i64	 msg_qbytes;	/* max number of bytes on queue */
	__kernel_pid_t msg_lspid;	/* pid of last msgsnd */
	__kernel_pid_t msg_lrpid;	/* last receive pid */
	%i64	 __unused4;
	%i64	 __unused5;
};

#endif /* __ASM_GENERIC_MSGBUF_H */
