/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
 * These are the public elements of the Linux kernel AX.25 code. A similar
 * file netrom.h exists for the NET/ROM protocol.
 */

#ifndef	AX25_KERNEL_H
#define	AX25_KERNEL_H

#include <linux/socket.h>

#define AX25_MTU	256
#define AX25_MAX_DIGIS  8

#define AX25_WINDOW	1
#define AX25_T1		2
#define AX25_N2		3
#define AX25_T3		4
#define AX25_T2		5
#define	AX25_BACKOFF	6
#define	AX25_EXTSEQ	7
#define	AX25_PIDINCL	8
#define AX25_IDLE	9
#define AX25_PACLEN	10
#define AX25_IAMDIGI	12

#define AX25_KILL	99

#define SIOCAX25GETUID		(SIOCPROTOPRIVATE+0)
#define SIOCAX25ADDUID		(SIOCPROTOPRIVATE+1)
#define SIOCAX25DELUID		(SIOCPROTOPRIVATE+2)
#define SIOCAX25NOUID		(SIOCPROTOPRIVATE+3)
#define SIOCAX25OPTRT		(SIOCPROTOPRIVATE+7)
#define SIOCAX25CTLCON		(SIOCPROTOPRIVATE+8)
#define SIOCAX25GETINFOOLD	(SIOCPROTOPRIVATE+9)
#define SIOCAX25ADDFWD		(SIOCPROTOPRIVATE+10)
#define SIOCAX25DELFWD		(SIOCPROTOPRIVATE+11)
#define SIOCAX25DEVCTL          (SIOCPROTOPRIVATE+12)
#define SIOCAX25GETINFO         (SIOCPROTOPRIVATE+13)

#define AX25_SET_RT_IPMODE	2

#define AX25_NOUID_DEFAULT	0
#define AX25_NOUID_BLOCK	1

typedef struct {
	i8		ax25_call[7];	/* 6 call + SSID (shifted ascii!) */
} ax25_address;

struct sockaddr_ax25 {
	__kernel_sa_family_t sax25_family;
	ax25_address	sax25_call;
	i32		sax25_ndigis;
	/* Digipeater ax25_address sets follow */
};

#define sax25_uid	sax25_ndigis

struct full_sockaddr_ax25 {
	struct sockaddr_ax25 fsa_ax25;
	ax25_address	fsa_digipeater[AX25_MAX_DIGIS];
};

struct ax25_routes_struct {
	ax25_address	port_addr;
	ax25_address	dest_addr;
	%i8	digi_count;
	ax25_address	digi_addr[AX25_MAX_DIGIS];
};

struct ax25_route_opt_struct {
	ax25_address	port_addr;
	ax25_address	dest_addr;
	i32		cmd;
	i32		arg;
};

struct ax25_ctl_struct {
        ax25_address            port_addr;
        ax25_address            source_addr;
        ax25_address            dest_addr;
        %i32            cmd;
        %i64           arg;
        %i8           digi_count;
        ax25_address            digi_addr[AX25_MAX_DIGIS];
};

/* this will go away. Please do not export to user land */
struct ax25_info_struct_deprecated {
	%i32	n2, n2count;
	%i32	t1, t1timer;
	%i32	t2, t2timer;
	%i32	t3, t3timer;
	%i32	idle, idletimer;
	%i32	state;
	%i32	rcv_q, snd_q;
};

struct ax25_info_struct {
	%i32	n2, n2count;
	%i32	t1, t1timer;
	%i32	t2, t2timer;
	%i32	t3, t3timer;
	%i32	idle, idletimer;
	%i32	state;
	%i32	rcv_q, snd_q;
	%i32	vs, vr, va, vs_max;
	%i32	paclen;
	%i32	window;
};

struct ax25_fwd_struct {
	ax25_address	port_from;
	ax25_address	port_to;
};

#endif
