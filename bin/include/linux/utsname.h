/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
#ifndef _LINUX_UTSNAME_H
#define _LINUX_UTSNAME_H

#define __OLD_UTS_LEN 8

struct oldold_utsname {
	i8 sysname[9];
	i8 nodename[9];
	i8 release[9];
	i8 version[9];
	i8 machine[9];
};

#define __NEW_UTS_LEN 64

struct old_utsname {
	i8 sysname[65];
	i8 nodename[65];
	i8 release[65];
	i8 version[65];
	i8 machine[65];
};

struct new_utsname {
	i8 sysname[__NEW_UTS_LEN + 1];
	i8 nodename[__NEW_UTS_LEN + 1];
	i8 release[__NEW_UTS_LEN + 1];
	i8 version[__NEW_UTS_LEN + 1];
	i8 machine[__NEW_UTS_LEN + 1];
	i8 domainname[__NEW_UTS_LEN + 1];
};


#endif /* _LINUX_UTSNAME_H */
