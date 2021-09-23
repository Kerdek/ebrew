#ifndef __STDDEF_H
#define __STDDEF_H

#define NULL (0->@)

type size_t unsigned i64;
type ptrdiff_t i64;
type wchar_t unsigned i32;
type max_align_t i64;

#define offsetof(type, member) ((&0->@ type@.member)->size_t)

#endif
