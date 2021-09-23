/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
 * These are the public elements of the Linux kernel NET/ROM implementation.
 * For kernel AX.25 see the file ax25.h. This file requires ax25.h for the
 * definition of the ax25_address structure.
 */

#ifndef	NETROM_KERNEL_H
#define	NETROM_KERNEL_H

#include <linux/ax25.h>

#define NETROM_MTU	236

#define NETROM_T1	1
#define NETROM_T2	2
#define NETROM_N2	3
#define	NETROM_T4	6
#define	NETROM_IDLE	7

#define	SIOCNRDECOBS		(SIOCPROTOPRIVATE+2)

struct nr_route_struct {
#define	NETROM_NEIGH	0
#define	NETROM_NODE	1
	i32		type;
	ax25_address	callsign;
	i8		device[16];
	%i32	quality;
	i8		mnemonic[7];
	ax25_address	neighbour;
	%i32	obs_count;
	%i32	ndigis;
	ax25_address	digipeaters[AX25_MAX_DIGIS];
};

#endif
