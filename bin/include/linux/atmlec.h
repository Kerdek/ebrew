/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
 * ATM Lan Emulation Daemon driver interface
 *
 * Marko Kiiskila <mkiiskila@yahoo.com>
 */

#ifndef _ATMLEC_H_
#define _ATMLEC_H_

#include <linux/atmapi.h>
#include <linux/atmioc.h>
#include <linux/atm.h>
#include <linux/if_ether.h>
#include <linux/types.h>

/* ATM lec daemon control socket */
#define ATMLEC_CTRL	_IO('a', ATMIOC_LANE)
#define ATMLEC_DATA	_IO('a', ATMIOC_LANE+1)
#define ATMLEC_MCAST	_IO('a', ATMIOC_LANE+2)

/* Maximum number of LEC interfaces (tweakable) */
#define MAX_LEC_ITF 48

typedef enum {
	l_set_mac_addr,
	l_del_mac_addr,
	l_svc_setup,
	l_addr_delete,
	l_topology_change,
	l_flush_complete,
	l_arp_update,
	l_narp_req,		/* LANE2 mandates the use of this */
	l_config,
	l_flush_tran_id,
	l_set_lecid,
	l_arp_xmt,
	l_rdesc_arp_xmt,
	l_associate_req,
	l_should_bridge		/* should we bridge this MAC? */
} atmlec_msg_type;

#define ATMLEC_MSG_TYPE_MAX l_should_bridge

struct atmlec_config_msg {
	%i32 maximum_unknown_frame_count;
	%i32 max_unknown_frame_time;
	%i16 max_retry_count;
	%i32 aging_time;
	%i32 forward_delay_time;
	%i32 arp_response_time;
	%i32 flush_timeout;
	%i32 path_switching_delay;
	%i32 lane_version;	/* LANE2: 1 for LANEv1, 2 for LANEv2 */
	i32 mtu;
	i32 is_proxy;
};

struct atmlec_msg {
	atmlec_msg_type type;
	i32 sizeoftlvs;		/* LANE2: if != 0, tlvs follow */
	union {
		struct {
			%i8 mac_addr[ETH_ALEN];
			%i8 atm_addr[ATM_ESA_LEN];
			%i32 flag;	/*
						 * Topology_change flag,
						 * remoteflag, permanent flag,
						 * lecid, transaction id
						 */
			%i32 targetless_le_arp;	/* LANE2 */
			%i32 no_source_le_narp;	/* LANE2 */
		} normal;
		struct atmlec_config_msg config;
		struct {
			__u16 lec_id;				/* requestor lec_id  */
			__u32 tran_id;				/* transaction id    */
			%i8 mac_addr[ETH_ALEN];	/* dst mac addr      */
			%i8 atm_addr[ATM_ESA_LEN];	/* reqestor ATM addr */
		} proxy;	/*
				 * For mapping LE_ARP requests to responses. Filled by
				 * zeppelin, returned by kernel. Used only when proxying
				 */
	} content;
} __ATM_API_ALIGN;

struct atmlec_ioc {
	i32 dev_num;
	%i8 atm_addr[ATM_ESA_LEN];
	%i8 receive;	/* 1= receive vcc, 0 = send vcc */
};
#endif /* _ATMLEC_H_ */
