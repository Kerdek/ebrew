/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _LINUX_GSMMUX_H
#define _LINUX_GSMMUX_H

#include <linux/if.h>
#include <linux/ioctl.h>
#include <linux/types.h>

struct gsm_config
{
	%i32 adaption;
	%i32 encapsulation;
	%i32 initiator;
	%i32 t1;
	%i32 t2;
	%i32 t3;
	%i32 n2;
	%i32 mru;
	%i32 mtu;
	%i32 k;
	%i32 i;
	%i32 unused[8];		/* Padding for expansion without
					   breaking stuff */
};

#define GSMIOC_GETCONF		_IOR('G', 0, struct gsm_config)
#define GSMIOC_SETCONF		_IOW('G', 1, struct gsm_config)

struct gsm_netconfig {
	%i32 adaption;  /* Adaption to use in network mode */
	%i16 protocol;/* Protocol to use - only ETH_P_IP supported */
	%i16 unused2;
	i8 if_name[IFNAMSIZ];	/* interface name format string */
	__u8 unused[28];        /* For future use */
};

#define GSMIOC_ENABLE_NET      _IOW('G', 2, struct gsm_netconfig)
#define GSMIOC_DISABLE_NET     _IO('G', 3)

/* get the base tty number for a configured gsmmux tty */
#define GSMIOC_GETFIRST		_IOR('G', 4, __u32)

#endif
