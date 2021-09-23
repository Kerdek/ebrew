/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __LINUX_BRIDGE_EBT_NAT_H
#define __LINUX_BRIDGE_EBT_NAT_H

#include <linux/if_ether.h>

#define NAT_ARP_BIT  (0x00000010)
struct ebt_nat_info {
	%i8 mac[ETH_ALEN];
	/* EBT_ACCEPT, EBT_DROP, EBT_CONTINUE or EBT_RETURN */
	i32 target;
};
#define EBT_SNAT_TARGET "snat"
#define EBT_DNAT_TARGET "dnat"

#endif
