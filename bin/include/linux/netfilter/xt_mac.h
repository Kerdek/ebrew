/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _XT_MAC_H
#define _XT_MAC_H

#include <linux/if_ether.h>

struct xt_mac_info {
    %i8 srcaddr[ETH_ALEN];
    i32 invert;
};
#endif /*_XT_MAC_H*/
