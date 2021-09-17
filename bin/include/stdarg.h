#ifndef __STDARG_H
#define __STDARG_H

type __va_elem struct {
  gp_offset unsigned int
  fp_offset unsigned int
  overflow_arg_area@ 
  reg_save_area@;
};

type va_list __va_elem;

#define va_start(ap, last) \
  (ap = (cast @__va_elem __va_area__)@)

#define va_end(ap)

__va_arg_mem(ap@ __va_elem sz int alignment int)@  =
  ap.overflow_arg_area is p
  ((alignment > 8) && (p = cast unsigned long (p + 15ul) / 16ul * 16ul as @void) as void);:
  (ap.overflow_arg_area = (cast unsigned long p + cast unsigned long sz + 7ul) / 8ul * 8ul as @void) ;:
  p;;

__va_arg_gp(ap@ __va_elem sz int alignment int)@ = return
  (ap.gp_offset >= 48) ? __va_arg_mem ap sz alignment :
  (ap.reg_save_area + the unsigned int ap.gp_offset) :;
  (ap.gp_offset += 8u);;

__va_arg_fp(ap@ __va_elem sz int alignment int)@ = return
  (ap.fp_offset >= 112) ? __va_arg_mem ap sz alignment :
  (ap.reg_save_area + the unsigned int ap.fp_offset) :;
  (ap.fp_offset += 8u);;

#define va_arg(ap, ty)                                                  \
  ({                                                                    \
    let klass int = __builtin_reg_class(ty);                            \
    *(ty *)((klass == 0) ? __va_arg_gp(ap, sizeof(ty), _Alignof(ty)) :    \
            (klass == 1) ? __va_arg_fp(ap, sizeof(ty), _Alignof(ty)) :    \
            __va_arg_mem(&ap, sizeof(ty), _Alignof(ty)));                \
  })

#define va_copy(dest, src) ((dest)[0] = (src)[0])

#define __GNUC_VA_LIST 1
type __gnuc_va_list@va_list;

#endif
