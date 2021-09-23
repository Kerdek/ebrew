/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _LINUX_NFS4_MOUNT_H
#define _LINUX_NFS4_MOUNT_H

/*
 *  linux/include/linux/nfs4_mount.h
 *
 *  Copyright (C) 2002  Trond Myklebust
 *
 *  structure passed from user-space to kernel-space during an nfsv4 mount
 */

/*
 * WARNING!  Do not delete or change the order of these fields.  If
 * a new field is required then add it to the end.  The version field
 * tracks which fields are present.  This will ensure some measure of
 * mount-to-kernel version compatibility.  Some of these aren't used yet
 * but here they are anyway.
 */
#define NFS4_MOUNT_VERSION	1

struct nfs_string {
	%i32 len;
	const i8 * data;
};

struct nfs4_mount_data {
	i32 version;				/* 1 */
	i32 flags;				/* 1 */
	i32 rsize;				/* 1 */
	i32 wsize;				/* 1 */
	i32 timeo;				/* 1 */
	i32 retrans;				/* 1 */
	i32 acregmin;				/* 1 */
	i32 acregmax;				/* 1 */
	i32 acdirmin;				/* 1 */
	i32 acdirmax;				/* 1 */

	/* see the definition of 'struct clientaddr4' in RFC3010 */
	struct nfs_string client_addr;		/* 1 */

	/* Mount path */
	struct nfs_string mnt_path;		/* 1 */

	/* Server details */
	struct nfs_string hostname;		/* 1 */
	/* Server IP address */
	%i32 host_addrlen;		/* 1 */
	struct sockaddr * host_addr;	/* 1 */

	/* Transport protocol to use */
	i32 proto;				/* 1 */

	/* Pseudo-flavours to use for authentication. See RFC2623 */
	i32 auth_flavourlen;			/* 1 */
	i32 *auth_flavours;		/* 1 */
};

/* bits in the flags field */
/* Note: the fields that correspond to existing NFSv2/v3 mount options
 * 	 should mirror the values from include/linux/nfs_mount.h
 */

#define NFS4_MOUNT_SOFT		0x0001	/* 1 */
#define NFS4_MOUNT_INTR		0x0002	/* 1 */
#define NFS4_MOUNT_NOCTO	0x0010	/* 1 */
#define NFS4_MOUNT_NOAC		0x0020	/* 1 */
#define NFS4_MOUNT_STRICTLOCK	0x1000	/* 1 */
#define NFS4_MOUNT_UNSHARED	0x8000	/* 1 */
#define NFS4_MOUNT_FLAGMASK	0x9033

#endif
