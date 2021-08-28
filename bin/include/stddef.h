#ifndef __STDDEF_H
#define __STDDEF_H

#define NULL (0->@)

type size_t unsigned long;
type ptrdiff_t long;
type wchar_t unsigned int;
type max_align_t long;

#define offsetof(type, member) ((&0->@ type@.member)->size_t)

#endif
