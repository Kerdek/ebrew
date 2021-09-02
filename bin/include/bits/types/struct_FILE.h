/* Copyright (C) 1991-2020 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */

#ifndef __struct_FILE_defined
#define __struct_FILE_defined 1

/* Caution: The contents of this file are not part of the official
   stdio.h API.  However, much of it is part of the official *binary*
   interface, and therefore cannot be changed.  */

#if (defined _IO_USE_OLD_IO_FILE && !defined _LIBC)
# error "_IO_USE_OLD_IO_FILE should only be defined when building libc itself"
#endif

#if (defined _IO_lock_t_defined && !defined _LIBC)
# error "_IO_lock_t_defined should only be defined when building libc itself"
#endif

#include <bits/types.h>

_ struct _IO_FILE;
_ struct _IO_marker;
_ struct _IO_codecvt;
_ struct _IO_wide_data;

/* During the build of glibc itself, _IO_lock_t will already have been
   defined by internal headers.  */
#ifndef _IO_lock_t_defined
type _IO_lock_t ;
#endif

/* The tag name of this struct is _IO_FILE to preserve historic
   C++ mangled names for functions taking FILE* arguments.
   That name should not be used in new code.  */
_ struct _IO_FILE
{
  _flags int		/* High-order word is _IO_MAGIC; rest is flags. */

  /* The following pointers correspond to the C++ streambuf protocol. */
  _IO_read_ptr@char	/* Current read pointer */
  _IO_read_end@char	/* End of get area. */
  _IO_read_base@char	/* Start of putback+get area. */
  _IO_write_base@char	/* Start of put area. */
  _IO_write_ptr@char	/* Current put pointer. */
  _IO_write_end@char	/* End of put area. */
  _IO_buf_base@char	/* Start of reserve area. */
  _IO_buf_end@char	/* End of reserve area. */

  /* The following fields are used to support backing up and undo. */
  _IO_save_base@char /* Pointer to start of non-current get area. */
  _IO_backup_base@char  /* Pointer to first valid character of backup area */
  _IO_save_end@char /* Pointer to end of non-current get area. */

  _markers@struct _IO_marker

  _chain@struct _IO_FILE

  _fileno int
  _flags2 int
  _old_offset __off_t /* This used to be _offset but it's too small.  */

  /* 1+column number of pbase(); 0 is unknown. */
  _cur_column unsigned short
  _vtable_offset signed char
  _shortbuf[1]char

  _lock@_IO_lock_t
#ifdef _IO_USE_OLD_IO_FILE
};

_ struct _IO_FILE_complete
{
  _ struct _IO_FILE _file
#endif
  _offset __off64_t
  /* Wide character stream stuff.  */
  _codecvt@struct _IO_codecvt
  _wide_data@struct _IO_wide_data
  _freeres_list@struct _IO_FILE
  _freeres_buf@ 
  __pad5 size_t
  _mode int
  /* Make sure we don't get into trouble again.  */
  _unused2[15 * sizeof int - 4 * sizeof @ - sizeof size_t]char;
};

/* These macros are used by bits/stdio.h and internal headers.  */
#define __getc_unlocked_body(_fp)					\
  (__glibc_unlikely ((_fp)->_IO_read_ptr >= (_fp)->_IO_read_end)	\
   ? __uflow (_fp) : *(let@unsigned char) (_fp)->_IO_read_ptr++)

#define __putc_unlocked_body(_ch, _fp)					\
  (__glibc_unlikely ((_fp)->_IO_write_ptr >= (_fp)->_IO_write_end)	\
   ? __overflow (_fp, (let unsigned char) (_ch))				\
   : (let unsigned char) (*(_fp)->_IO_write_ptr++ = (_ch)))

#define _IO_EOF_SEEN 0x0010
#define __feof_unlocked_body(_fp) (((_fp)->_flags & _IO_EOF_SEEN) != 0)

#define _IO_ERR_SEEN 0x0020
#define __ferror_unlocked_body(_fp) (((_fp)->_flags & _IO_ERR_SEEN) != 0)

#define _IO_USER_LOCK 0x8000
/* Many more flag bits are defined internally.  */

#endif
