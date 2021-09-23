/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _LINUX_NFS_MOUNT_H
#define _LINUX_NFS_MOUNT_H

/*
 *  linux/include/linux/nfs_mount.h
 *
 *  Copyright (C) 1992  Rick Sladkey
 *
 *  structure passed from user-space to kernel-space during an nfs mount
 */
#include <linux/in.h>
#include <linux/nfs.h>
#include <linux/nfs2.h>
#include <linux/nfs3.h>

/*
 * WARNING!  Do not delete or change the order of these fields.  If
 * a new field is required then add it to the end.  The version field
 * tracks which fields are present.  This will ensure some measure of
 * mount-to-kernel version compatibility.  Some of these aren't used yet
 * but here they are anyway.
 */
#define NFS_MOUNT_VERSION	6
#define NFS_MAX_CONTEXT_LEN	256

struct nfs_mount_data {
	i32		version;		/* 1 */
	i32		fd;			/* 1 */
	struct nfs2_fh	old_root;		/* 1 */
	i32		flags;			/* 1 */
	i32		rsize;			/* 1 */
	i32		wsize;			/* 1 */
	i32		timeo;			/* 1 */
	i32		retrans;		/* 1 */
	i32		acregmin;		/* 1 */
	i32		acregmax;		/* 1 */
	i32		acdirmin;		/* 1 */
	i32		acdirmax;		/* 1 */
	struct sockaddr_in addr;		/* 1 */
	i8		hostname[NFS_MAXNAMLEN + 1];		/* 1 */
	i32		namlen;			/* 2 */
	%i32	bsize;			/* 3 */
	struct nfs3_fh	root;			/* 4 */
	i32		pseudoflavor;		/* 5 */
	i8		context[NFS_MAX_CONTEXT_LEN + 1];	/* 6 */
};

/* bits in the flags field visible to user space */

#define NFS_MOUNT_SOFT		0x0001	/* 1 */
#define NFS_MOUNT_INTR		0x0002	/* 1 */ /* now unused, but ABI */
#define NFS_MOUNT_SECURE	0x0004	/* 1 */
#define NFS_MOUNT_POSIX		0x0008	/* 1 */
#define NFS_MOUNT_NOCTO		0x0010	/* 1 */
#define NFS_MOUNT_NOAC		0x0020	/* 1 */
#define NFS_MOUNT_TCP		0x0040	/* 2 */
#define NFS_MOUNT_VER3		0x0080	/* 3 */
#define NFS_MOUNT_KERBEROS	0x0100	/* 3 */
#define NFS_MOUNT_NONLM		0x0200	/* 3 */
#define NFS_MOUNT_BROKEN_SUID	0x0400	/* 4 */
#define NFS_MOUNT_NOACL		0x0800	/* 4 */
#define NFS_MOUNT_STRICTLOCK	0x1000	/* reserved for NFSv4 */
#define NFS_MOUNT_SECFLAVOUR	0x2000	/* 5 non-text parsed mount data only */
#define NFS_MOUNT_NORDIRPLUS	0x4000	/* 5 */
#define NFS_MOUNT_UNSHARED	0x8000	/* 5 */
#define NFS_MOUNT_FLAGMASK	0xFFFF

#endif
