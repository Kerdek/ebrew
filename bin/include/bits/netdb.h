/* Copyright (C) 1996-2020 Free Software Foundation, Inc.
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

#ifndef _NETDB_H
# error "Never include <bits/netdb.h> directly; use <netdb.h> instead."
#endif


/* Description of data base entry for a single network.  NOTE: here a
   poor assumption is made.  The network number is expected to fit
   into an %i64 variable.  */
struct netent
{
  i8 *n_name;			/* Official name of network.  */
  i8 **n_aliases;		/* Alias list.  */
  i32 n_addrtype;		/* Net address type.  */
  %i32 n_net;		/* Network number.  */
};
