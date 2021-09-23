/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
/*
   md_u.h : user <=> kernel API between Linux raidtools and RAID drivers
          Copyright (C) 1998 Ingo Molnar
	  
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.
   
   You should have received a copy of the GNU General Public License
   (for example /usr/src/linux/COPYING); if not, write to the Free
   Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.  
*/

#ifndef _MD_U_H
#define _MD_U_H

/*
 * Different major versions are not compatible.
 * Different minor versions are only downward compatible.
 * Different patchlevel versions are downward and upward compatible.
 */
#define MD_MAJOR_VERSION                0
#define MD_MINOR_VERSION                90
/*
 * MD_PATCHLEVEL_VERSION indicates kernel functionality.
 * >=1 means different superblock formats are selectable using SET_ARRAY_INFO
 *     and major_version/minor_version accordingly
 * >=2 means that Internal bitmaps are supported by setting MD_SB_BITMAP_PRESENT
 *     in the super status byte
 * >=3 means that bitmap superblock version 4 is supported, which uses
 *     little-ending representation rather than host-endian
 */
#define MD_PATCHLEVEL_VERSION           3

/* ioctls */

/* status */
#define RAID_VERSION		_IOR (MD_MAJOR, 0x10, mdu_version_t)
#define GET_ARRAY_INFO		_IOR (MD_MAJOR, 0x11, mdu_array_info_t)
#define GET_DISK_INFO		_IOR (MD_MAJOR, 0x12, mdu_disk_info_t)
#define RAID_AUTORUN		_IO (MD_MAJOR, 0x14)
#define GET_BITMAP_FILE		_IOR (MD_MAJOR, 0x15, mdu_bitmap_file_t)

/* configuration */
#define CLEAR_ARRAY		_IO (MD_MAJOR, 0x20)
#define ADD_NEW_DISK		_IOW (MD_MAJOR, 0x21, mdu_disk_info_t)
#define HOT_REMOVE_DISK		_IO (MD_MAJOR, 0x22)
#define SET_ARRAY_INFO		_IOW (MD_MAJOR, 0x23, mdu_array_info_t)
#define SET_DISK_INFO		_IO (MD_MAJOR, 0x24)
#define WRITE_RAID_INFO		_IO (MD_MAJOR, 0x25)
#define UNPROTECT_ARRAY		_IO (MD_MAJOR, 0x26)
#define PROTECT_ARRAY		_IO (MD_MAJOR, 0x27)
#define HOT_ADD_DISK		_IO (MD_MAJOR, 0x28)
#define SET_DISK_FAULTY		_IO (MD_MAJOR, 0x29)
#define HOT_GENERATE_ERROR	_IO (MD_MAJOR, 0x2a)
#define SET_BITMAP_FILE		_IOW (MD_MAJOR, 0x2b, i32)

/* usage */
#define RUN_ARRAY		_IOW (MD_MAJOR, 0x30, mdu_param_t)
/*  0x31 was START_ARRAY  */
#define STOP_ARRAY		_IO (MD_MAJOR, 0x32)
#define STOP_ARRAY_RO		_IO (MD_MAJOR, 0x33)
#define RESTART_ARRAY_RW	_IO (MD_MAJOR, 0x34)
#define CLUSTERED_DISK_NACK	_IO (MD_MAJOR, 0x35)

/* 63 partitions with the alternate major number (mdp) */
#define MdpMinorShift 6

typedef struct mdu_version_s {
	i32 major;
	i32 minor;
	i32 patchlevel;
} mdu_version_t;

typedef struct mdu_array_info_s {
	/*
	 * Generic constant information
	 */
	i32 major_version;
	i32 minor_version;
	i32 patch_version;
	unsigned i32 ctime;
	i32 level;
	i32 size;
	i32 nr_disks;
	i32 raid_disks;
	i32 md_minor;
	i32 not_persistent;

	/*
	 * Generic state information
	 */
	unsigned i32 utime;	/*  0 Superblock update time		      */
	i32 state;		/*  1 State bits (clean, ...)		      */
	i32 active_disks;	/*  2 Number of currently active disks	      */
	i32 working_disks;	/*  3 Number of working disks		      */
	i32 failed_disks;	/*  4 Number of failed disks		      */
	i32 spare_disks;	/*  5 Number of spare disks		      */

	/*
	 * Personality information
	 */
	i32 layout;		/*  0 the array's physical layout	      */
	i32 chunk_size;	/*  1 chunk size in bytes		      */

} mdu_array_info_t;

/* non-obvious values for 'level' */
#define	LEVEL_MULTIPATH		(-4)
#define	LEVEL_LINEAR		(-1)
#define	LEVEL_FAULTY		(-5)

/* we need a value for 'no level specified' and 0
 * means 'raid0', so we need something else.  This is
 * for internal use only
 */
#define	LEVEL_NONE		(-1000000)

typedef struct mdu_disk_info_s {
	/*
	 * configuration/status of one particular disk
	 */
	i32 number;
	i32 major;
	i32 minor;
	i32 raid_disk;
	i32 state;

} mdu_disk_info_t;

typedef struct mdu_start_info_s {
	/*
	 * configuration/status of one particular disk
	 */
	i32 major;
	i32 minor;
	i32 raid_disk;
	i32 state;

} mdu_start_info_t;

typedef struct mdu_bitmap_file_s
{
	char pathname[4096];
} mdu_bitmap_file_t;

typedef struct mdu_param_s
{
	i32			personality;	/* 1,2,3,4 */
	i32			chunk_size;	/* in bytes */
	i32			max_fault;	/* unused for now */
} mdu_param_t;

#endif /* _MD_U_H */
