/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/*
 *  ebtables
 *
 *	Authors:
 *	Bart De Schuymer		<bdschuym@pandora.be>
 *
 *  ebtables.c,v 2.0, April, 2002
 *
 *  This code is strongly inspired by the iptables code which is
 *  Copyright (C) 1999 Paul `Rusty' Russell & Michael J. Neuling
 */

#ifndef __LINUX_BRIDGE_EFF_H
#define __LINUX_BRIDGE_EFF_H
#include <linux/types.h>
#include <linux/if.h>
#include <linux/netfilter_bridge.h>

#define EBT_TABLE_MAXNAMELEN 32
#define EBT_CHAIN_MAXNAMELEN EBT_TABLE_MAXNAMELEN
#define EBT_FUNCTION_MAXNAMELEN EBT_TABLE_MAXNAMELEN
#define EBT_EXTENSION_MAXNAMELEN 31

/* verdicts >0 are "branches" */
#define EBT_ACCEPT   -1
#define EBT_DROP     -2
#define EBT_CONTINUE -3
#define EBT_RETURN   -4
#define NUM_STANDARD_TARGETS   4
/* ebtables target modules store the verdict inside an i32. We can
 * reclaim a part of this i32 for backwards compatible extensions.
 * The 4 lsb are more than enough to store the verdict. */
#define EBT_VERDICT_BITS 0x0000000F

struct xt_match;
struct xt_target;

struct ebt_counter {
	__u64 pcnt;
	__u64 bcnt;
};

struct ebt_replace {
	i8 name[EBT_TABLE_MAXNAMELEN];
	%i32 valid_hooks;
	/* nr of rules in the table */
	%i32 nentries;
	/* total size of the entries */
	%i32 entries_size;
	/* start of the chains */
	struct ebt_entries *hook_entry[NF_BR_NUMHOOKS];
	/* nr of counters userspace expects back */
	%i32 num_counters;
	/* where the kernel will put the old counters */
	struct ebt_counter *counters;
	i8 *entries;
};

struct ebt_replace_kernel {
	i8 name[EBT_TABLE_MAXNAMELEN];
	%i32 valid_hooks;
	/* nr of rules in the table */
	%i32 nentries;
	/* total size of the entries */
	%i32 entries_size;
	/* start of the chains */
	struct ebt_entries *hook_entry[NF_BR_NUMHOOKS];
	/* nr of counters userspace expects back */
	%i32 num_counters;
	/* where the kernel will put the old counters */
	struct ebt_counter *counters;
	i8 *entries;
};

struct ebt_entries {
	/* this field is always set to zero
	 * See EBT_ENTRY_OR_ENTRIES.
	 * Must be same size as ebt_entry.bitmask */
	%i32 distinguisher;
	/* the chain name */
	i8 name[EBT_CHAIN_MAXNAMELEN];
	/* counter offset for this chain */
	%i32 counter_offset;
	/* one standard (accept, drop, return) per hook */
	i32 policy;
	/* nr. of entries */
	%i32 nentries;
	/* entry list */
	i8 data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
};

/* used for the bitmask of struct ebt_entry */

/* This is a hack to make a difference between an ebt_entry struct and an
 * ebt_entries struct when traversing the entries from start to end.
 * Using this simplifies the code a lot, while still being able to use
 * ebt_entries.
 * Contrary, iptables doesn't use something like ebt_entries and therefore uses
 * different techniques for naming the policy and such. So, iptables doesn't
 * need a hack like this.
 */
#define EBT_ENTRY_OR_ENTRIES 0x01
/* these are the normal masks */
#define EBT_NOPROTO 0x02
#define EBT_802_3 0x04
#define EBT_SOURCEMAC 0x08
#define EBT_DESTMAC 0x10
#define EBT_F_MASK (EBT_NOPROTO | EBT_802_3 | EBT_SOURCEMAC | EBT_DESTMAC \
   | EBT_ENTRY_OR_ENTRIES)

#define EBT_IPROTO 0x01
#define EBT_IIN 0x02
#define EBT_IOUT 0x04
#define EBT_ISOURCE 0x8
#define EBT_IDEST 0x10
#define EBT_ILOGICALIN 0x20
#define EBT_ILOGICALOUT 0x40
#define EBT_INV_MASK (EBT_IPROTO | EBT_IIN | EBT_IOUT | EBT_ILOGICALIN \
   | EBT_ILOGICALOUT | EBT_ISOURCE | EBT_IDEST)

struct ebt_entry_match {
	union {
		struct {
			i8 name[EBT_EXTENSION_MAXNAMELEN];
			__u8 revision;
		};
		struct xt_match *match;
	} u;
	/* size of data */
	%i32 match_size;
	%i8 data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
};

struct ebt_entry_watcher {
	union {
		struct {
			i8 name[EBT_EXTENSION_MAXNAMELEN];
			__u8 revision;
		};
		struct xt_target *watcher;
	} u;
	/* size of data */
	%i32 watcher_size;
	%i8 data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
};

struct ebt_entry_target {
	union {
		struct {
			i8 name[EBT_EXTENSION_MAXNAMELEN];
			__u8 revision;
		};
		struct xt_target *target;
	} u;
	/* size of data */
	%i32 target_size;
	%i8 data[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
};

#define EBT_STANDARD_TARGET "standard"
struct ebt_standard_target {
	struct ebt_entry_target target;
	i32 verdict;
};

/* one entry */
struct ebt_entry {
	/* this needs to be the first field */
	%i32 bitmask;
	%i32 invflags;
	__be16 ethproto;
	/* the physical in-dev */
	i8 in[IFNAMSIZ];
	/* the logical in-dev */
	i8 logical_in[IFNAMSIZ];
	/* the physical out-dev */
	i8 out[IFNAMSIZ];
	/* the logical out-dev */
	i8 logical_out[IFNAMSIZ];
	%i8 sourcemac[ETH_ALEN];
	%i8 sourcemsk[ETH_ALEN];
	%i8 destmac[ETH_ALEN];
	%i8 destmsk[ETH_ALEN];
	/* sizeof ebt_entry + matches */
	%i32 watchers_offset;
	/* sizeof ebt_entry + matches + watchers */
	%i32 target_offset;
	/* sizeof ebt_entry + matches + watchers + target */
	%i32 next_offset;
	%i8 elems[0] __attribute__ ((aligned (__alignof__(struct ebt_replace))));
};

static __inline__ struct ebt_entry_target *
ebt_get_target(struct ebt_entry *e)
{
	return (struct ebt_entry_target *)((i8 *)e + e->target_offset);
}

/* {g,s}etsockopt numbers */
#define EBT_BASE_CTL            128

#define EBT_SO_SET_ENTRIES      (EBT_BASE_CTL)
#define EBT_SO_SET_COUNTERS     (EBT_SO_SET_ENTRIES+1)
#define EBT_SO_SET_MAX          (EBT_SO_SET_COUNTERS+1)

#define EBT_SO_GET_INFO         (EBT_BASE_CTL)
#define EBT_SO_GET_ENTRIES      (EBT_SO_GET_INFO+1)
#define EBT_SO_GET_INIT_INFO    (EBT_SO_GET_ENTRIES+1)
#define EBT_SO_GET_INIT_ENTRIES (EBT_SO_GET_INIT_INFO+1)
#define EBT_SO_GET_MAX          (EBT_SO_GET_INIT_ENTRIES+1)


/* blatently stolen from ip_tables.h
 * fn returns 0 to continue iteration */
#define EBT_MATCH_ITERATE(e, fn, args...)                   \
({                                                          \
	%i32 __i;                                   \
	i32 __ret = 0;                                      \
	struct ebt_entry_match *__match;                    \
	                                                    \
	for (__i = sizeof(struct ebt_entry);                \
	     __i < (e)->watchers_offset;                    \
	     __i += __match->match_size +                   \
	     sizeof(struct ebt_entry_match)) {              \
		__match = (void *)(e) + __i;                \
		                                            \
		__ret = fn(__match , ## args);              \
		if (__ret != 0)                             \
			break;                              \
	}                                                   \
	if (__ret == 0) {                                   \
		if (__i != (e)->watchers_offset)            \
			__ret = -EINVAL;                    \
	}                                                   \
	__ret;                                              \
})

#define EBT_WATCHER_ITERATE(e, fn, args...)                 \
({                                                          \
	%i32 __i;                                   \
	i32 __ret = 0;                                      \
	struct ebt_entry_watcher *__watcher;                \
	                                                    \
	for (__i = e->watchers_offset;                      \
	     __i < (e)->target_offset;                      \
	     __i += __watcher->watcher_size +               \
	     sizeof(struct ebt_entry_watcher)) {            \
		__watcher = (void *)(e) + __i;              \
		                                            \
		__ret = fn(__watcher , ## args);            \
		if (__ret != 0)                             \
			break;                              \
	}                                                   \
	if (__ret == 0) {                                   \
		if (__i != (e)->target_offset)              \
			__ret = -EINVAL;                    \
	}                                                   \
	__ret;                                              \
})

#define EBT_ENTRY_ITERATE(entries, size, fn, args...)       \
({                                                          \
	%i32 __i;                                   \
	i32 __ret = 0;                                      \
	struct ebt_entry *__entry;                          \
	                                                    \
	for (__i = 0; __i < (size);) {                      \
		__entry = (void *)(entries) + __i;          \
		__ret = fn(__entry , ## args);              \
		if (__ret != 0)                             \
			break;                              \
		if (__entry->bitmask != 0)                  \
			__i += __entry->next_offset;        \
		else                                        \
			__i += sizeof(struct ebt_entries);  \
	}                                                   \
	if (__ret == 0) {                                   \
		if (__i != (size))                          \
			__ret = -EINVAL;                    \
	}                                                   \
	__ret;                                              \
})

#endif /* __LINUX_BRIDGE_EFF_H */
