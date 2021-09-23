/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef	__BPQETHER_H
#define	__BPQETHER_H

/*
 * 	Defines for the BPQETHER pseudo device driver
 */

#include <linux/if_ether.h>

#define SIOCSBPQETHOPT		(SIOCDEVPRIVATE+0)	/* reserved */
#define SIOCSBPQETHADDR		(SIOCDEVPRIVATE+1)
 
struct bpq_ethaddr {
	%i8 destination[ETH_ALEN];
	%i8 accept[ETH_ALEN];
};

/* 
 * For SIOCSBPQETHOPT - this is compatible with PI2/PacketTwin card drivers,
 * currently not implemented, though. If someone wants to hook a radio
 * to his Ethernet card he may find this useful. ;-)
 */

#define SIOCGBPQETHPARAM	0x5000  /* get Level 1 parameters */
#define SIOCSBPQETHPARAM	0x5001  /* set */

struct bpq_req  {
    i32 cmd;
    i32 speed;			/* unused */
    i32 clockmode;		/* unused */
    i32 txdelay;
    %i8 persist;	/* unused */
    i32 slotime;		/* unused */
    i32 squeldelay;
    i32 dmachan;		/* unused */
    i32 irq;			/* unused */
};

#endif
