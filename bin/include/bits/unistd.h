/* Checking macros for unistd functions.
   Copyright (C) 2005-2020 Free Software Foundation, Inc.
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

#ifndef _UNISTD_H
# error "Never include <bits/unistd.h> directly; use <unistd.h> instead."
#endif

extern ssize_t __read_chk (i32 __fd, void *__buf, size_t __nbytes,
			   size_t __buflen) __wur;
extern ssize_t __REDIRECT (__read_alias, (i32 __fd, void *__buf,
					  size_t __nbytes), read) __wur;
extern ssize_t __REDIRECT (__read_chk_warn,
			   (i32 __fd, void *__buf, size_t __nbytes,
			    size_t __buflen), __read_chk)
     __wur __warnattr ("read called with bigger length than size of "
		       "the destination buffer");

__fortify_function __wur ssize_t
read (i32 __fd, void *__buf, size_t __nbytes)
{
  if (__bos0 (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
	return __read_chk (__fd, __buf, __nbytes, __bos0 (__buf));

      if (__nbytes > __bos0 (__buf))
	return __read_chk_warn (__fd, __buf, __nbytes, __bos0 (__buf));
    }
  return __read_alias (__fd, __buf, __nbytes);
}

#ifdef __USE_UNIX98
extern ssize_t __pread_chk (i32 __fd, void *__buf, size_t __nbytes,
			    __off_t __offset, size_t __bufsize) __wur;
extern ssize_t __pread64_chk (i32 __fd, void *__buf, size_t __nbytes,
			      __off64_t __offset, size_t __bufsize) __wur;
extern ssize_t __REDIRECT (__pread_alias,
			   (i32 __fd, void *__buf, size_t __nbytes,
			    __off_t __offset), pread) __wur;
extern ssize_t __REDIRECT (__pread64_alias,
			   (i32 __fd, void *__buf, size_t __nbytes,
			    __off64_t __offset), pread64) __wur;
extern ssize_t __REDIRECT (__pread_chk_warn,
			   (i32 __fd, void *__buf, size_t __nbytes,
			    __off_t __offset, size_t __bufsize), __pread_chk)
     __wur __warnattr ("pread called with bigger length than size of "
		       "the destination buffer");
extern ssize_t __REDIRECT (__pread64_chk_warn,
			   (i32 __fd, void *__buf, size_t __nbytes,
			    __off64_t __offset, size_t __bufsize),
			    __pread64_chk)
     __wur __warnattr ("pread64 called with bigger length than size of "
		       "the destination buffer");

# ifndef __USE_FILE_OFFSET64
__fortify_function __wur ssize_t
pread (i32 __fd, void *__buf, size_t __nbytes, __off_t __offset)
{
  if (__bos0 (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
	return __pread_chk (__fd, __buf, __nbytes, __offset, __bos0 (__buf));

      if ( __nbytes > __bos0 (__buf))
	return __pread_chk_warn (__fd, __buf, __nbytes, __offset,
				 __bos0 (__buf));
    }
  return __pread_alias (__fd, __buf, __nbytes, __offset);
}
# else
__fortify_function __wur ssize_t
pread (i32 __fd, void *__buf, size_t __nbytes, __off64_t __offset)
{
  if (__bos0 (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
	return __pread64_chk (__fd, __buf, __nbytes, __offset, __bos0 (__buf));

      if ( __nbytes > __bos0 (__buf))
	return __pread64_chk_warn (__fd, __buf, __nbytes, __offset,
				   __bos0 (__buf));
    }

  return __pread64_alias (__fd, __buf, __nbytes, __offset);
}
# endif

# ifdef __USE_LARGEFILE64
__fortify_function __wur ssize_t
pread64 (i32 __fd, void *__buf, size_t __nbytes, __off64_t __offset)
{
  if (__bos0 (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__nbytes))
	return __pread64_chk (__fd, __buf, __nbytes, __offset, __bos0 (__buf));

      if ( __nbytes > __bos0 (__buf))
	return __pread64_chk_warn (__fd, __buf, __nbytes, __offset,
				   __bos0 (__buf));
    }

  return __pread64_alias (__fd, __buf, __nbytes, __offset);
}
# endif
#endif

#if defined __USE_XOPEN_EXTENDED || defined __USE_XOPEN2K
extern ssize_t __readlink_chk (const i8 *__restrict __path,
			       i8 *__restrict __buf, size_t __len,
			       size_t __buflen)
     __THROW __nonnull ((1, 2)) __wur;
extern ssize_t __REDIRECT_NTH (__readlink_alias,
			       (const i8 *__restrict __path,
				i8 *__restrict __buf, size_t __len), readlink)
     __nonnull ((1, 2)) __wur;
extern ssize_t __REDIRECT_NTH (__readlink_chk_warn,
			       (const i8 *__restrict __path,
				i8 *__restrict __buf, size_t __len,
				size_t __buflen), __readlink_chk)
     __nonnull ((1, 2)) __wur __warnattr ("readlink called with bigger length "
					  "than size of destination buffer");

__fortify_function __nonnull ((1, 2)) __wur ssize_t
__NTH (readlink (const i8 *__restrict __path, i8 *__restrict __buf,
		 size_t __len))
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
	return __readlink_chk (__path, __buf, __len, __bos (__buf));

      if ( __len > __bos (__buf))
	return __readlink_chk_warn (__path, __buf, __len, __bos (__buf));
    }
  return __readlink_alias (__path, __buf, __len);
}
#endif

#ifdef __USE_ATFILE
extern ssize_t __readlinkat_chk (i32 __fd, const i8 *__restrict __path,
				 i8 *__restrict __buf, size_t __len,
				 size_t __buflen)
     __THROW __nonnull ((2, 3)) __wur;
extern ssize_t __REDIRECT_NTH (__readlinkat_alias,
			       (i32 __fd, const i8 *__restrict __path,
				i8 *__restrict __buf, size_t __len),
			       readlinkat)
     __nonnull ((2, 3)) __wur;
extern ssize_t __REDIRECT_NTH (__readlinkat_chk_warn,
			       (i32 __fd, const i8 *__restrict __path,
				i8 *__restrict __buf, size_t __len,
				size_t __buflen), __readlinkat_chk)
     __nonnull ((2, 3)) __wur __warnattr ("readlinkat called with bigger "
					  "length than size of destination "
					  "buffer");

__fortify_function __nonnull ((2, 3)) __wur ssize_t
__NTH (readlinkat (i32 __fd, const i8 *__restrict __path,
		   i8 *__restrict __buf, size_t __len))
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
	return __readlinkat_chk (__fd, __path, __buf, __len, __bos (__buf));

      if (__len > __bos (__buf))
	return __readlinkat_chk_warn (__fd, __path, __buf, __len,
				      __bos (__buf));
    }
  return __readlinkat_alias (__fd, __path, __buf, __len);
}
#endif

extern i8 *__getcwd_chk (i8 *__buf, size_t __size, size_t __buflen)
     __THROW __wur;
extern i8 *__REDIRECT_NTH (__getcwd_alias,
			     (i8 *__buf, size_t __size), getcwd) __wur;
extern i8 *__REDIRECT_NTH (__getcwd_chk_warn,
			     (i8 *__buf, size_t __size, size_t __buflen),
			     __getcwd_chk)
     __wur __warnattr ("getcwd caller with bigger length than size of "
		       "destination buffer");

__fortify_function __wur i8 *
__NTH (getcwd (i8 *__buf, size_t __size))
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size))
	return __getcwd_chk (__buf, __size, __bos (__buf));

      if (__size > __bos (__buf))
	return __getcwd_chk_warn (__buf, __size, __bos (__buf));
    }
  return __getcwd_alias (__buf, __size);
}

#if defined __USE_MISC || defined __USE_XOPEN_EXTENDED
extern i8 *__getwd_chk (i8 *__buf, size_t buflen)
     __THROW __nonnull ((1)) __wur;
extern i8 *__REDIRECT_NTH (__getwd_warn, (i8 *__buf), getwd)
     __nonnull ((1)) __wur __warnattr ("please use getcwd instead, as getwd "
				       "doesn't specify buffer size");

__fortify_function __nonnull ((1)) __attribute_deprecated__ __wur i8 *
__NTH (getwd (i8 *__buf))
{
  if (__bos (__buf) != (size_t) -1)
    return __getwd_chk (__buf, __bos (__buf));
  return __getwd_warn (__buf);
}
#endif

extern size_t __confstr_chk (i32 __name, i8 *__buf, size_t __len,
			     size_t __buflen) __THROW;
extern size_t __REDIRECT_NTH (__confstr_alias, (i32 __name, i8 *__buf,
						size_t __len), confstr);
extern size_t __REDIRECT_NTH (__confstr_chk_warn,
			      (i32 __name, i8 *__buf, size_t __len,
			       size_t __buflen), __confstr_chk)
     __warnattr ("confstr called with bigger length than size of destination "
		 "buffer");

__fortify_function size_t
__NTH (confstr (i32 __name, i8 *__buf, size_t __len))
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__len))
	return __confstr_chk (__name, __buf, __len, __bos (__buf));

      if (__bos (__buf) < __len)
	return __confstr_chk_warn (__name, __buf, __len, __bos (__buf));
    }
  return __confstr_alias (__name, __buf, __len);
}


extern i32 __getgroups_chk (i32 __size, __gid_t __list[], size_t __listlen)
     __THROW __wur;
extern i32 __REDIRECT_NTH (__getgroups_alias, (i32 __size, __gid_t __list[]),
			   getgroups) __wur;
extern i32 __REDIRECT_NTH (__getgroups_chk_warn,
			   (i32 __size, __gid_t __list[], size_t __listlen),
			   __getgroups_chk)
     __wur __warnattr ("getgroups called with bigger group count than what "
		       "can fit into destination buffer");

__fortify_function i32
__NTH (getgroups (i32 __size, __gid_t __list[]))
{
  if (__bos (__list) != (size_t) -1)
    {
      if (!__builtin_constant_p (__size) || __size < 0)
	return __getgroups_chk (__size, __list, __bos (__list));

      if (__size * sizeof (__gid_t) > __bos (__list))
	return __getgroups_chk_warn (__size, __list, __bos (__list));
    }
  return __getgroups_alias (__size, __list);
}


extern i32 __ttyname_r_chk (i32 __fd, i8 *__buf, size_t __buflen,
			    size_t __nreal) __THROW __nonnull ((2));
extern i32 __REDIRECT_NTH (__ttyname_r_alias, (i32 __fd, i8 *__buf,
					       size_t __buflen), ttyname_r)
     __nonnull ((2));
extern i32 __REDIRECT_NTH (__ttyname_r_chk_warn,
			   (i32 __fd, i8 *__buf, size_t __buflen,
			    size_t __nreal), __ttyname_r_chk)
     __nonnull ((2)) __warnattr ("ttyname_r called with bigger buflen than "
				 "size of destination buffer");

__fortify_function i32
__NTH (ttyname_r (i32 __fd, i8 *__buf, size_t __buflen))
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
	return __ttyname_r_chk (__fd, __buf, __buflen, __bos (__buf));

      if (__buflen > __bos (__buf))
	return __ttyname_r_chk_warn (__fd, __buf, __buflen, __bos (__buf));
    }
  return __ttyname_r_alias (__fd, __buf, __buflen);
}


#ifdef __USE_POSIX199506
extern i32 __getlogin_r_chk (i8 *__buf, size_t __buflen, size_t __nreal)
     __nonnull ((1));
extern i32 __REDIRECT (__getlogin_r_alias, (i8 *__buf, size_t __buflen),
		       getlogin_r) __nonnull ((1));
extern i32 __REDIRECT (__getlogin_r_chk_warn,
		       (i8 *__buf, size_t __buflen, size_t __nreal),
		       __getlogin_r_chk)
     __nonnull ((1)) __warnattr ("getlogin_r called with bigger buflen than "
				 "size of destination buffer");

__fortify_function i32
getlogin_r (i8 *__buf, size_t __buflen)
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
	return __getlogin_r_chk (__buf, __buflen, __bos (__buf));

      if (__buflen > __bos (__buf))
	return __getlogin_r_chk_warn (__buf, __buflen, __bos (__buf));
    }
  return __getlogin_r_alias (__buf, __buflen);
}
#endif


#if defined __USE_MISC || defined __USE_UNIX98
extern i32 __gethostname_chk (i8 *__buf, size_t __buflen, size_t __nreal)
     __THROW __nonnull ((1));
extern i32 __REDIRECT_NTH (__gethostname_alias, (i8 *__buf, size_t __buflen),
			   gethostname) __nonnull ((1));
extern i32 __REDIRECT_NTH (__gethostname_chk_warn,
			   (i8 *__buf, size_t __buflen, size_t __nreal),
			   __gethostname_chk)
     __nonnull ((1)) __warnattr ("gethostname called with bigger buflen than "
				 "size of destination buffer");

__fortify_function i32
__NTH (gethostname (i8 *__buf, size_t __buflen))
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
	return __gethostname_chk (__buf, __buflen, __bos (__buf));

      if (__buflen > __bos (__buf))
	return __gethostname_chk_warn (__buf, __buflen, __bos (__buf));
    }
  return __gethostname_alias (__buf, __buflen);
}
#endif


#if defined __USE_MISC || (defined __USE_XOPEN && !defined __USE_UNIX98)
extern i32 __getdomainname_chk (i8 *__buf, size_t __buflen, size_t __nreal)
     __THROW __nonnull ((1)) __wur;
extern i32 __REDIRECT_NTH (__getdomainname_alias, (i8 *__buf,
						   size_t __buflen),
			   getdomainname) __nonnull ((1)) __wur;
extern i32 __REDIRECT_NTH (__getdomainname_chk_warn,
			   (i8 *__buf, size_t __buflen, size_t __nreal),
			   __getdomainname_chk)
     __nonnull ((1)) __wur __warnattr ("getdomainname called with bigger "
				       "buflen than size of destination "
				       "buffer");

__fortify_function i32
__NTH (getdomainname (i8 *__buf, size_t __buflen))
{
  if (__bos (__buf) != (size_t) -1)
    {
      if (!__builtin_constant_p (__buflen))
	return __getdomainname_chk (__buf, __buflen, __bos (__buf));

      if (__buflen > __bos (__buf))
	return __getdomainname_chk_warn (__buf, __buflen, __bos (__buf));
    }
  return __getdomainname_alias (__buf, __buflen);
}
#endif
