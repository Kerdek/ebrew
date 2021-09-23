/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef __LINUX_BRIDGE_EBT_ARPREPLY_H
#define __LINUX_BRIDGE_EBT_ARPREPLY_H

#include <linux/if_ether.h>

struct ebt_arpreply_info {
	%i8 mac[ETH_ALEN];
	i32 target;
};
#define EBT_ARPREPLY_TARGET "arpreply"

#endif
