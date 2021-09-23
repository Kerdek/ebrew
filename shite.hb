export extern __assert_fail (__assertion @const char __file @const char
__line unsigned int __function @const char)
;
export extern __assert_perror_fail (__errnum int __file @const char
__line unsigned int __function @const char)
;
export extern __assert (__assertion @const char __file @const char __line int)
;
type __u_char unsigned char;
type __u_short unsigned short int ;
type __u_int unsigned int;
type __u_long unsigned long int;
type __int8_t signed char;
type __uint8_t unsigned char;
type __int16_t signed short int;
type __uint16_t unsigned short int;
type __int32_t signed int;
type __uint32_t unsigned int;
type __int64_t signed long int;
type __uint64_t unsigned long int;
type __int_least8_t __int8_t;
type __uint_least8_t __uint8_t;
type __int_least16_t __int16_t;
type __uint_least16_t __uint16_t;
type __int_least32_t __int32_t;
type __uint_least32_t __uint32_t;
type __int_least64_t __int64_t;
type __uint_least64_t __uint64_t;
type __quad_t long int;
type __u_quad_t unsigned long int;
type __intmax_t long int;
type __uintmax_t unsigned long int;
type __dev_t unsigned long int;
type __uid_t unsigned int;
type __gid_t unsigned int;
type __ino_t unsigned long int;
type __ino64_t unsigned long int;
type __mode_t unsigned int;
type __nlink_t unsigned long int;
type __off_t long int;
type __off64_t long int;
type __pid_t int;
type __fsid_t struct { __val[2]int; };
type __clock_t long int;
type __rlim_t unsigned long int;
type __rlim64_t unsigned long int;
type __id_t unsigned int;
type __time_t long int;
type __useconds_t unsigned int;
type __suseconds_t long int;
type __daddr_t int;
type __key_t int;
type __clockid_t int;
type __timer_t ;
type __blksize_t long int;
type __blkcnt_t long int;
type __blkcnt64_t long int;
type __fsblkcnt_t unsigned long int;
type __fsblkcnt64_t unsigned long int;
type __fsfilcnt_t unsigned long int;
type __fsfilcnt64_t unsigned long int;
type __fsword_t long int;
type __ssize_t long int;
type __syscall_slong_t long int;
type __syscall_ulong_t unsigned long int;
type __loff_t __off64_t;
type __caddr_t@char;
type __intptr_t long int;
type __socklen_t unsigned int;
type __sig_atomic_t int;
_ enum
_ISupper = (((0) < 8) ? ((1 << (0)) << 8) : ((1 << (0)) >> 8))
_ISlower = (((1) < 8) ? ((1 << (1)) << 8) : ((1 << (1)) >> 8))
_ISalpha = (((2) < 8) ? ((1 << (2)) << 8) : ((1 << (2)) >> 8))
_ISdigit = (((3) < 8) ? ((1 << (3)) << 8) : ((1 << (3)) >> 8))
_ISxdigit = (((4) < 8) ? ((1 << (4)) << 8) : ((1 << (4)) >> 8))
_ISspace = (((5) < 8) ? ((1 << (5)) << 8) : ((1 << (5)) >> 8))
_ISprint = (((6) < 8) ? ((1 << (6)) << 8) : ((1 << (6)) >> 8))
_ISgraph = (((7) < 8) ? ((1 << (7)) << 8) : ((1 << (7)) >> 8))
_ISblank = (((8) < 8) ? ((1 << (8)) << 8) : ((1 << (8)) >> 8))
_IScntrl = (((9) < 8) ? ((1 << (9)) << 8) : ((1 << (9)) >> 8))
_ISpunct = (((10) < 8) ? ((1 << (10)) << 8) : ((1 << (10)) >> 8))
_ISalnum = (((11) < 8) ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
;;
export extern __ctype_b_loc (void)@@const unsigned short int
;
export extern __ctype_tolower_loc (void)@@const __int32_t
;
export extern __ctype_toupper_loc (void)@@const __int32_t
;
export extern isalnum (_ int)int ;
export extern isalpha (_ int)int ;
export extern iscntrl (_ int)int ;
export extern isdigit (_ int)int ;
export extern islower (_ int)int ;
export extern isgraph (_ int)int ;
export extern isprint (_ int)int ;
export extern ispunct (_ int)int ;
export extern isspace (_ int)int ;
export extern isupper (_ int)int ;
export extern isxdigit (_ int)int ;
export extern tolower (__c int)int ;
export extern toupper (__c int)int ;
export extern isblank (_ int)int ;
_ struct __locale_struct
{
__locales[13]@struct __locale_data
__ctype_b@const unsigned short int
__ctype_tolower@const int
__ctype_toupper@const int
__names[13]@const char;
};
type __locale_t@struct __locale_struct;
type locale_t __locale_t;
export extern isalnum_l (_ int _ locale_t)int ;
export extern isalpha_l (_ int _ locale_t)int ;
export extern iscntrl_l (_ int _ locale_t)int ;
export extern isdigit_l (_ int _ locale_t)int ;
export extern islower_l (_ int _ locale_t)int ;
export extern isgraph_l (_ int _ locale_t)int ;
export extern isprint_l (_ int _ locale_t)int ;
export extern ispunct_l (_ int _ locale_t)int ;
export extern isspace_l (_ int _ locale_t)int ;
export extern isupper_l (_ int _ locale_t)int ;
export extern isxdigit_l (_ int _ locale_t)int ;
export extern isblank_l (_ int _ locale_t)int ;
export extern __tolower_l (__c int __l locale_t)int ;
export extern tolower_l (__c int __l locale_t)int ;
export extern __toupper_l (__c int __l locale_t)int ;
export extern toupper_l (__c int __l locale_t)int ;
export extern __errno_location(void)@int ;
inline errno(void) int = (__errno_location)@;;
type __size_t unsigned long;
type size_t unsigned long;
type glob_t struct
{
gl_pathc __size_t
gl_pathv@@char
gl_offs __size_t
gl_flags int
gl_closedir@(@)
gl_readdir@(@)@
gl_opendir@(@const char)@
gl_lstat@(restrict@const char restrict@ )int
gl_stat@(restrict@const char restrict@ )int;
};
export extern glob (restrict __pattern@const char __flags int
__errfunc@(_@const char _ int)int
restrict __pglob@glob_t)int ;
export extern globfree (pglob @glob_t) ;
export extern dirname (path @char) @char ;
export extern basename (path @char) @char ;
type __va_elem struct {
gp_offset unsigned int
fp_offset unsigned int
overflow_arg_area@
reg_save_area@;
};
type va_list __va_elem;
__va_arg_mem(ap@ __va_elem sz int alignment int)@ =
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
type __gnuc_va_list@va_list;
type int8_t __int8_t;
type int16_t __int16_t;
type int32_t __int32_t;
type int64_t __int64_t;
type uint8_t __uint8_t;
type uint16_t __uint16_t;
type uint32_t __uint32_t;
type uint64_t __uint64_t;
type int_least8_t __int_least8_t;
type int_least16_t __int_least16_t;
type int_least32_t __int_least32_t;
type int_least64_t __int_least64_t;
type uint_least8_t __uint_least8_t;
type uint_least16_t __uint_least16_t;
type uint_least32_t __uint_least32_t;
type uint_least64_t __uint_least64_t;
type int_fast8_t signed char;
type int_fast16_t long int;
type int_fast32_t long int;
type int_fast64_t long int;
type uint_fast8_t unsigned char;
type uint_fast16_t unsigned long int;
type uint_fast32_t unsigned long int;
type uint_fast64_t unsigned long int;
type intptr_t long int;
type uintptr_t unsigned long int;
type intmax_t __intmax_t;
type uintmax_t __uintmax_t;
type size_t unsigned long;
type ptrdiff_t long;
type wchar_t unsigned int;
type max_align_t long;
type __mbstate_t struct
{
__count int
__value union
{
__wch unsigned int
__wchb[4] char;
};
};
type __fpos_t struct _G_fpos_t
{
__pos __off_t
__state __mbstate_t;
};
type __fpos64_t struct _G_fpos64_t
{
__pos __off64_t
__state __mbstate_t;
};
_ struct _IO_FILE;
type __FILE struct _IO_FILE;
_ struct _IO_FILE;
type FILE struct _IO_FILE;
_ struct _IO_FILE;
_ struct _IO_marker;
_ struct _IO_codecvt;
_ struct _IO_wide_data;
type _IO_lock_t ;
_ struct _IO_FILE
{
_flags int
_IO_read_ptr@char
_IO_read_end@char
_IO_read_base@char
_IO_write_base@char
_IO_write_ptr@char
_IO_write_end@char
_IO_buf_base@char
_IO_buf_end@char
_IO_save_base@char
_IO_backup_base@char
_IO_save_end@char
_markers@struct _IO_marker
_chain@struct _IO_FILE
_fileno int
_flags2 int
_old_offset __off_t
_cur_column unsigned short
_vtable_offset signed char
_shortbuf[1]char
_lock@_IO_lock_t
_offset __off64_t
_codecvt@struct _IO_codecvt
_wide_data@struct _IO_wide_data
_freeres_list@struct _IO_FILE
_freeres_buf@
__pad5 size_t
_mode int
_unused2[15ul * sizeof int - 4ul * sizeof @ - sizeof size_t]char;
};
type off_t __off_t;
type ssize_t __ssize_t;
type fpos_t __fpos_t;
export extern stdin@FILE;
export extern stdout@FILE;
export extern stderr@FILE;
export extern remove (__filename@const char)int ;
export extern rename (__old@const char __new@const char)int ;
export extern renameat (__oldfd int __old@const char __newfd int
__new@const char)int ;
export extern tmpfile (void)@FILE ;
export extern tmpnam (__s@char)@char ;
export extern fclose (__stream@FILE)int;
export extern fflush (__stream@FILE)int;
export extern fopen (restrict __filename@const char
restrict __modes@const char)@FILE ;
export extern freopen (restrict __filename@const char
restrict __modes@const char
restrict __stream@FILE)@FILE ;
export extern fdopen (__fd int __modes@const char)@FILE ;
export extern fmemopen (__s@ __len size_t __modes@const char)@FILE
;
export extern open_memstream (__bufloc@@char __sizeloc@size_t)@FILE ;
export extern setbuf (restrict __stream@FILE restrict __buf@char) ;
export extern setvbuf (restrict __stream@FILE restrict __buf@char
__modes int __n size_t)int ;
export extern fprintf (restrict __stream@FILE
restrict __format@const char ...)int;
export extern printf (restrict __format@const char ...)int;
export extern sprintf (restrict __s@char
restrict __format@const char ...)int ;
export extern vfprintf (restrict __s@FILE restrict __format@const char
__arg __gnuc_va_list)int;
export extern vprintf (restrict __format@const char __arg __gnuc_va_list)int;
export extern vsprintf (restrict __s@char restrict __format@const char
__arg __gnuc_va_list)int ;
export extern snprintf (restrict __s@char __maxlen size_t
restrict __format@const char ...)int
;
export extern vsnprintf (restrict __s@char __maxlen size_t
restrict __format@const char __arg __gnuc_va_list)int
;
export extern vdprintf (__fd int restrict __fmt@const char
__arg __gnuc_va_list)int
;
export extern dprintf (__fd int restrict __fmt@const char ...)int
;
export extern fscanf (restrict __stream@FILE
restrict __format@const char ...)int ;
export extern scanf (restrict __format@const char ...)int ;
export extern sscanf (restrict __s@const char
restrict __format@const char ...)int ;
export extern __isoc99_fscanf (restrict __stream@FILE
restrict __format@const char ...)int ;
export extern __isoc99_scanf (restrict __format@const char ...)int ;
export extern __isoc99_sscanf (restrict __s@const char
restrict __format@const char ...)int ;
export extern vfscanf (restrict __s@FILE restrict __format@const char
__arg __gnuc_va_list)int
;
export extern vscanf (restrict __format@const char __arg __gnuc_va_list)int
;
export extern vsscanf (restrict __s@const char
restrict __format@const char __arg __gnuc_va_list)int
;
export extern __isoc99_vfscanf (restrict __s@FILE
restrict __format@const char
__arg __gnuc_va_list)int ;
export extern __isoc99_vscanf (restrict __format@const char
__arg __gnuc_va_list)int ;
export extern __isoc99_vsscanf (restrict __s@const char
restrict __format@const char
__arg __gnuc_va_list)int ;
export extern fgetc (__stream@FILE)int;
export extern getc (__stream@FILE)int;
export extern getchar (void)int;
export extern getc_unlocked (__stream@FILE)int;
export extern getchar_unlocked (void)int;
export extern fputc (__c int __stream@FILE)int;
export extern putc (__c int __stream@FILE)int;
export extern putchar (__c int)int;
export extern putc_unlocked (__c int __stream@FILE)int;
export extern putchar_unlocked (__c int)int;
export extern fgets (restrict __s@char __n int restrict __stream@FILE)@char
;
export extern __getdelim (restrict __lineptr@@char
restrict __n@size_t __delimiter int
restrict __stream@FILE)__ssize_t ;
export extern getdelim (restrict __lineptr@@char
restrict __n@size_t __delimiter int
restrict __stream@FILE)__ssize_t ;
export extern getline (restrict __lineptr@char
restrict __n@size_t
restrict __stream@FILE)__ssize_t ;
export extern fputs (restrict __s@const char restrict __stream@FILE )int;
export extern puts (__s@const char)int;
export extern ungetc (__c@int __stream@FILE)int;
export extern fread (restrict __ptr@ __size size_t
__n size_t restrict __stream@FILE)size_t ;
export extern fwrite (restrict __ptr@const __size size_t
__n size_t restrict __s@FILE)size_t;
export extern fseek (__stream@FILE __off long int __whence int)int;
export extern ftell (__stream@FILE)long int ;
export extern rewind (__stream@FILE);
export extern fseeko (__stream@FILE __off __off_t __whence int)int;
export extern ftello (__stream@FILE)__off_t ;
export extern fgetpos (restrict __stream@FILE restrict __pos@fpos_t)int;
export extern fsetpos (__stream@FILE __pos@const fpos_t)int;
export extern clearerr (__stream@FILE) ;
export extern feof (__stream@FILE)int ;
export extern ferror (__stream@FILE)int ;
export extern perror (__s@const char);
export extern fileno (__stream@FILE)int ;
export extern popen (__command@const char __modes@const char)@FILE ;
export extern pclose (__stream@FILE)int;
export extern ctermid (__s@char)@char ;
export extern flockfile (__stream@FILE) ;
export extern ftrylockfile (__stream@FILE)int ;
export extern funlockfile (__stream@FILE) ;
export extern __uflow (_@FILE)int;
export extern __overflow (_@FILE _ int)int;
type idtype_t enum
P_ALL
P_PID
P_PGID
;;
type _Float32 float;
type _Float64 double;
type _Float32x double;
type _Float64x long double;
type div_t struct
{
quot int
rem int;
};
type ldiv_t struct
{
quot long int
rem long int;
};
type lldiv_t struct
{
quot long long int
rem long long int;
};
export extern __ctype_get_mb_cur_max (void)size_t ;
export extern atof (__nptr@const char)double
;
export extern atoi (__nptr@const char)int
;
export extern atol (__nptr@const char)long int
;
export extern atoll (__nptr@const char)long long int
;
export extern strtod (restrict __nptr@const char
restrict __endptr@@char)double
;
export extern strtof (restrict __nptr@const char
restrict __endptr@@char)float ;
export extern strtold (restrict __nptr@const char
restrict __endptr@@char)long double
;
export extern strtol (restrict __nptr@const char
restrict __endptr@@char __base int)long int
;
export extern strtoul (restrict __nptr@const char
restrict __endptr@@char __base int)unsigned long int
;
export extern strtoll (restrict __nptr@const char
restrict __endptr@@char __base int)long long int
;
export extern strtoull (restrict __nptr@const char
restrict __endptr@@char __base int)unsigned long long int
;
export extern rand (void)int ;
export extern srand (__seed unsigned int) ;
export extern rand_r (__seed@unsigned int)int ;
export extern malloc (__size size_t)@ ;
export extern calloc (__nmemb size_t __size size_t)@
;
export extern realloc (__ptr@ __size size_t)@
;
export extern free (__ptr@) ;
export extern posix_memalign(__memptr@@ __alignment size_t __size size_t)int
;
export extern aligned_alloc(__alignment size_t __size size_t)@
;
export extern abort(void) ;
export extern atexit (__func@(void))int ;
export extern at_quick_exit (__func@(void))int ;
export extern exit(__status int) ;
export extern quick_exit(__status int) ;
export extern _Exit(__status int) ;
export extern getenv(__name@const char)@char ;
export extern setenv(__name@const char __value@ const char __replace int)int
;
export extern unsetenv(__name@const char)int ;
export extern mkstemp(__template@char)int ;
export extern mkdtemp(__template@char)@char ;
export extern system(__command@const char)int ;
type __compar_fn_t@(@const @const)int;
export extern bsearch(__key@const __base@const
__nmemb size_t __size size_t __compar __compar_fn_t)@
;
export extern qsort(__base@ __nmemb size_t __size size_t
__compar __compar_fn_t) ;
export extern abs(__x int)int ;
export extern labs(__x long int)long int ;
export extern llabs(__x long long int)long long int
;
export extern div(__numer int __denom int)div_t
;
export extern ldiv(__numer long int __denom long int)ldiv_t
;
export extern lldiv(__numer long long int __denom
long long int)lldiv_t
;
export extern mblen(__s@const char __n size_t)int ;
export extern mbtowc(restrict __pwc@wchar_t restrict __s@
const char __n size_t)int ;
export extern wctomb(__s@char __wchar wchar_t)int ;
export extern mbstowcs(restrict __pwcs@wchar_t restrict __s@
const char __n size_t)size_t ;
export extern wcstombs(restrict __s@char restrict __pwcs@
const wchar_t __n size_t)size_t
;
export extern getsubopt(restrict __optionp@@char
restrict __tokens@const char
restrict __valuep@@char)int
;
export extern memcpy (restrict __dest@ restrict __src@const
__n size_t)@ ;
export extern memmove (__dest@__src@ const __n size_t)@
;
export extern memset (__s@ __c int __n size_t)@ ;
export extern memcmp (__s1@ const __s2@ const __n size_t)int
;
export extern memchr (__s@const __c int __n size_t)@
;
export extern strcpy (restrict __dest@char restrict __src@const char)@char
;
export extern strncpy (restrict __dest@char
restrict __src@const char __n size_t)@char
;
export extern strcat (restrict __dest@char restrict __src@const char)@char
;
export extern strncat (restrict __dest@char restrict __src@const char
__n size_t)@char ;
export extern strcmp (__s1@const char__s2@ const char)int
;
export extern strncmp (__s1@const char__s2@ const char __n size_t)int
;
export extern strcoll (__s1@const char__s2@ const char)int
;
export extern strxfrm (restrict __dest@char
restrict __src@const char __n size_t)size_t
;
export extern strcoll_l (__s1@const char__s2@ const char __l locale_t)int
;
export extern strxfrm_l (__dest@char__src@ const char __n size_t
__l locale_t)size_t ;
export extern strdup (__s@const char)@char
;
export extern strndup (__string@const char __n size_t)@char
;
export extern strchr (__s@const char __c int)@char
;
export extern strrchr (__s@const char __c int)@char
;
export extern strcspn (__s@const char __reject@ const char)size_t
;
export extern strspn (__s@const char __accept@ const char)size_t
;
export extern strpbrk (__s@const char __accept@ const char)@char
;
export extern strstr (__haystack@const char __needle@ const char)@char
;
export extern strtok (restrict __s@char restrict __delim@const char)@char
;
export extern __strtok_r (restrict __s@char
restrict __delim@const char
restrict __save_ptr@@char)@char
;
export extern strtok_r (restrict __s@char restrict __delim@const char
restrict __save_ptr@@char)@char
;
export extern strlen (__s@const char)size_t
;
export extern strnlen (__string@const char __maxlen size_t)size_t
;
export extern strerror (__errnum int)@char ;
export extern __xpg_strerror_r (__errnum int __buf@ char __buflen size_t)int
;
export extern strerror_l (__errnum int __l locale_t)@char ;
export extern strsignal (__sig int)@char ;
export extern __stpcpy (restrict __dest@char restrict __src@const char)@char
;
export extern stpcpy (restrict __dest@char restrict __src@const char)@char
;
export extern __stpncpy (restrict __dest@char
restrict __src@const char __n size_t)@char
;
export extern stpncpy (restrict __dest@char
restrict __src@const char __n size_t)@char
;
export extern strcasecmp (__s1@const char __s2@const char)int
;
export extern strncasecmp (__s1@const char __s2@const char __n size_t)int
;
export extern strcasecmp_l (__s1@const char __s2@const char __loc locale_t)int
;
export extern strncasecmp_l (__s1@const char __s2@const char
__n size_t __loc locale_t)int
;
_ struct timespec
{
tv_sec __time_t
tv_nsec __syscall_slong_t;
};
type time_t __time_t;
type dev_t __dev_t;
type gid_t __gid_t;
type ino_t __ino_t;
type mode_t __mode_t;
type nlink_t __nlink_t;
type uid_t __uid_t;
_ struct stat
{
st_dev __dev_t
st_ino __ino_t
st_nlink __nlink_t
st_mode __mode_t
st_uid __uid_t
st_gid __gid_t
__pad0 int
st_rdev __dev_t
st_size __off_t
st_blksize __blksize_t
st_blocks __blkcnt_t
st_atim struct timespec
st_mtim struct timespec
st_ctim struct timespec
__glibc_reserved[3]__syscall_slong_t;
};
export extern stat (restrict __file@const char
restrict __buf@struct stat)int ;
export extern fstat (__fd int __buf@struct stat)int ;
export extern fstatat ( __fd int restrict __file@const char
restrict __buf@struct stat __flag int)int
;
export extern lstat (restrict __file@const char
restrict __buf@struct stat)int ;
export extern chmod ( __file@const char __mode __mode_t)int
;
export extern fchmod (__fd int __mode __mode_t)int ;
export extern fchmodat (__fd int __file@const char __mode __mode_t
__flag int)int
;
export extern umask ( __mask __mode_t)__mode_t ;
export extern mkdir ( __path@const char __mode __mode_t)int
;
export extern mkdirat ( __fd int __path@const char __mode __mode_t)int
;
export extern mkfifo ( __path@const char __mode __mode_t)int
;
export extern mkfifoat ( __fd int __path@const char __mode __mode_t)int
;
export extern utimensat (__fd int __path@const char
__times[2]const struct timespec __flags int)int
;
export extern futimens ( __fd int __times[2]const struct timespec)int ;
export extern __fxstat ( __ver int __fildes int __stat_buf@struct stat)int
;
export extern __xstat ( __ver int __filename@const char __stat_buf@struct stat)int ;
export extern __lxstat ( __ver int __filename@const char __stat_buf@struct stat)int ;
export extern __fxstatat ( __ver int __fildes int __filename@const char __stat_buf@struct stat __flag int)int
;
export extern __xmknod ( __ver int __path@const char __mode __mode_t __dev@__dev_t)int ;
export extern __xmknodat ( __ver int __fd int __path@const char __mode __mode_t __dev@__dev_t)int
;
type pid_t __pid_t;
type id_t __id_t;
type clock_t __clock_t;
type clockid_t __clockid_t;
type timer_t __timer_t;
type u_int8_t __uint8_t;
type u_int16_t __uint16_t;
type u_int32_t __uint32_t;
type u_int64_t __uint64_t;
type register_t int;
type blksize_t __blksize_t;
type blkcnt_t __blkcnt_t;
type fsblkcnt_t __fsblkcnt_t;
type fsfilcnt_t __fsfilcnt_t;
type __pthread_list_t struct __pthread_internal_list
{
__prev@struct __pthread_internal_list
__next@struct __pthread_internal_list;
};
type __pthread_slist_t struct __pthread_internal_slist
{
__next@struct __pthread_internal_slist;
};
_ struct __pthread_mutex_s
{
__lock int
__count unsigned int
__owner int
__nusers unsigned int
__kind int
__spins short
__elision short
__list __pthread_list_t;
};
_ struct __pthread_rwlock_arch_t
{
__readers unsigned int
__writers unsigned int
__wrphase_futex unsigned int
__writers_futex unsigned int
__pad3 unsigned int
__pad4 unsigned int
__cur_writer int
__shared int
__rwelision signed char
__pad1[7] unsigned char
__pad2 unsigned long int
__flags unsigned int;
};
_ struct __pthread_cond_s
{
_ union
{
__wseq unsigned long long intyy
__wseq32 struct
{
__low unsigned int
__high unsigned int;
};
}
_ union
{
__g1_start unsigned long long int
__g1_start32 struct
{
__low unsigned int
__high unsigned int;
};
}
__g_refs[2]unsigned int __g_size[2]unsigned int
__g1_orig_sizeunsigned int
__wrefsunsigned int
__g_signals[2]unsigned int;
};
type pthread_t unsigned long int;
type pthread_mutexattr_t union
{
__size[4]char
__align int;
};
type pthread_condattr_t union
{
__size[4]char
__align int;
};
type pthread_key_t unsigned int;
type pthread_once_t int;
_ union pthread_attr_t
{
__size[56]char
__align long int;
};
type pthread_attr_t union pthread_attr_t
type pthread_mutex_t union
{
__data struct __pthread_mutex_s
__size[40]char
__align long int;
};
type pthread_cond_t union
{
__data struct __pthread_cond_s
__size[48]char
__align long long int;
};
type pthread_rwlock_t union
{
__data struct __pthread_rwlock_arch_t
__size[56]char
__align long int;
};
type pthread_rwlockattr_t union
{
__size[8]char
__align long int;
};
type pthread_spinlock_t volatile int;
type pthread_barrier_t union
{
__size[32]char
__align long int;
};
type pthread_barrierattr_t union
{
__size[4]char
__align int;
};
type sig_atomic_t __sig_atomic_t;
type __sigset_t struct
{
__val[(1024ul / (8ul * sizeof unsigned long int))]unsigned long int;
};
type sigset_t __sigset_t;
_ union sigval
{
sival_int int
sival_ptr@;
};
type __sigval_t union sigval;
type siginfo_t struct
{
si_signo int
si_errno int
si_code int
__pad0 int
_sifields union
{
_pad[((128ul / sizeof int) - 4ul)]int
_kill struct
{
si_pid __pid_t
si_uid __uid_t;
}
_timer struct
{
si_tid int
si_overrun int
si_sigval __sigval_t;
}
_rt struct
{
si_pid __pid_t
si_uid __uid_t
si_sigval __sigval_t;
}
_sigchld struct
{
si_pid __pid_t
si_uid __uid_t
si_status int
si_utime __clock_t
si_stime __clock_t;
}
_sigfault struct
{
si_addr@
si_addr_lsb short int
_bounds union
{
_addr_bnd struct
{
_lower@
_upper@;
}
_pkey __uint32_t;
};
}
_sigpoll struct
{
si_band long int
si_fd int;
}
_sigsys struct
{
_call_addr@
_syscall int
_arch unsigned int;
};
};
};
_ enum
SI_ASYNCNL = -60
SI_DETHREAD = -7
SI_TKILL
SI_SIGIO
SI_ASYNCIO
SI_MESGQ
SI_TIMER
SI_QUEUE
SI_USER
SI_KERNEL = 0x80
;;
_ enum
ILL_ILLOPC = 1
ILL_ILLOPN
ILL_ILLADR
ILL_ILLTRP
ILL_PRVOPC
ILL_PRVREG
ILL_COPROC
ILL_BADSTK
ILL_BADIADDR
;;
_ enum
FPE_INTDIV = 1
FPE_INTOVF
FPE_FLTDIV
FPE_FLTOVF
FPE_FLTUND
FPE_FLTRES
FPE_FLTINV
FPE_FLTSUB
FPE_FLTUNK = 14
FPE_CONDTRAP
;;
_ enum
SEGV_MAPERR = 1
SEGV_ACCERR
SEGV_BNDERR
SEGV_PKUERR
SEGV_ACCADI
SEGV_ADIDERR
SEGV_ADIPERR
;;
_ enum
BUS_ADRALN = 1
BUS_ADRERR
BUS_OBJERR
BUS_MCEERR_AR
BUS_MCEERR_AO
;;
_ enum
CLD_EXITED = 1
CLD_KILLED
CLD_DUMPED
CLD_TRAPPED
CLD_STOPPED
CLD_CONTINUED
;;
_ enum
POLL_IN = 1
POLL_OUT
POLL_MSG
POLL_ERR
POLL_PRI
POLL_HUP
;;
type sigevent_t struct sigevent
{
sigev_value __sigval_t
sigev_signo int
sigev_notify int
_sigev_un union
{
_pad[((64ul / sizeof int - 4ul))]int
_tid __pid_t
_sigev_thread struct
{
_function@(_ __sigval_t)
_attribute@pthread_attr_t;
};
};
};
_ enum
SIGEV_SIGNAL = 0
SIGEV_NONE
SIGEV_THREAD
SIGEV_THREAD_ID = 4
;;
type __sighandler_t@(_ int);
export extern __sysv_signal (__sig int __handler __sighandler_t)__sighandler_t
;
export extern kill (__pid __pid_t __sig int)int ;
export extern raise (__sig int) int ;
export extern psignal (__sig int __s@const char);
export extern psiginfo (__pinfo@const siginfo_t __s@const char);
export extern sigemptyset (__set@sigset_t)int ;
export extern sigfillset (__set@sigset_t)int ;
export extern sigaddset (__set@sigset_t __signo int)int ;
export extern sigdelset (__set@sigset_t __signo int)int ;
export extern sigismember (__set@const sigset_t __signo int)int
;
_ struct sigaction
{
__sigaction_handler union
{
sa_handler __sighandler_t
sa_sigaction@(_ int _@siginfo_t _@);
}
sa_mask __sigset_t
sa_flags int
sa_restorer@(void);
};
export extern sigprocmask (__how int restrict __set@const sigset_t
restrict __oset@sigset_t)int ;
export extern sigsuspend (__set@const sigset_t)int ;
export extern sigaction (__sig int restrict __act@const struct sigaction
restrict __oact@struct sigaction)int ;
export extern sigpending (__set@sigset_t)int ;
export extern sigwait (restrict __set@const sigset_t restrict __sig@int)int
;
export extern sigwaitinfo (restrict __set@const sigset_t
restrict __info@siginfo_t)int ;
export extern sigtimedwait (restrict __set@const sigset_t
restrict __info@siginfo_t
restrict __timeout@const struct timespec)int
;
export extern sigqueue (__pid __pid_t __sig int __val const union sigval)int
;
type stack_t struct
{
ss_sp@
ss_flags int
ss_size size_t;
};
type greg_t long long int;
type gregset_t[23]greg_t;
_ struct _libc_fpxreg
{
__significand[4]unsigned short int
__exponentunsigned short int
__glibc_reserved1[3]unsigned short int;
};
_ struct _libc_xmmreg
{
__element[4]__uint32_t;
};
_ struct _libc_fpstate
{
__cwd__uint16_t
__swd__uint16_t
__ftw__uint16_t
__fop__uint16_t
__rip__uint64_t
__rdp__uint64_t
__mxcsr__uint32_t
__mxcr_mask__uint32_t
_st[8]struct _libc_fpxreg
_xmm[16]struct _libc_xmmreg
__glibc_reserved1[24]__uint32_t;
};
type fpregset_t@struct _libc_fpstate;
type mcontext_t struct
{
__gregsgregset_t
__fpregsfpregset_t
__reserved1[8]unsigned long long;
} ;
type ucontext_t struct ucontext_t
{
__uc_flagsunsigned long int
uc_link@struct ucontext_t
uc_stack stack_t
uc_mcontext mcontext_t
uc_sigmask sigset_t
__fpregs_mem struct _libc_fpstate
__ssp[4]unsigned long long int;
};
export extern pthread_sigmask (__how int
restrict __newmask@const __sigset_t
restrict __oldmask@__sigset_t)int ;
export extern pthread_kill (__threadid pthread_t __signo int)int ;
export extern __libc_current_sigrtmin (void)int ;
export extern __libc_current_sigrtmax (void)int ;
export extern wait (__stat_loc@int)__pid_t;
export extern waitpid (__pid __pid_t __stat_loc@int __options int)__pid_t;
export extern waitid (__idtype idtype_t __id __id_t __infop@siginfo_t
__options int)int;
_ struct tm
{
tm_sec int
tm_min int
tm_hour int
tm_mday int
tm_mon int
tm_year int
tm_wday int
tm_yday int
tm_isdst int
__tm_gmtoff long int
__tm_zone@const char;
};
_ struct itimerspec
{
it_interval struct timespec
it_value struct timespec;
};
_ struct sigevent;
export extern clock (void)clock_t ;
export extern time (__timer@time_t)time_t ;
export extern difftime (__time1 time_t __time0 time_t)double
;
export extern mktime (__tp@struct tm)time_t ;
export extern strftime (restrict __s@char __maxsize size_t
restrict __format@const char
restrict __tp@const struct tm)size_t ;
export extern strftime_l (restrict __s@char __maxsize size_t
restrict __format@const char
restrict __tp@const struct tm
__loc locale_t)size_t ;
export extern gmtime (__timer@const time_t)@struct tm ;
export extern localtime (__timer@const time_t)@struct tm ;
export extern gmtime_r (restrict __timer@const time_t
restrict __tp@struct tm)@struct tm ;
export extern localtime_r (restrict __timer@const time_t
restrict __tp@struct tm)@struct tm ;
export extern asctime (__tp@const struct tm)@char ;
export extern ctime (restrict __timer@const time_t)@char ;
export extern asctime_r (restrict __tp@const struct tm
restrict __buf@char)@char ;
export extern ctime_r (restrict __timer@const time_t
restrict __buf@char)@char ;
export extern __tzname[2]@char;
export extern __daylight int;
export extern __timezone long int;
export extern tzname[2]@char;
export extern tzset (void) ;
export extern nanosleep (__requested_time@const struct timespec
__remaining@struct timespec)int;
export extern clock_getres (__clock_id clockid_t __res@const struct timespec)int ;
export extern clock_gettime (__clock_id clockid_t __req@const struct timespec)int ;
export extern clock_settime (__clock_id clockid_t __req@const struct timespec)int
;
export extern clock_nanosleep (__clock_id clockid_t __flags int
__req@const struct timespec
__rem@struct timespec)int;
export extern clock_getcpuclockid (__pid pid_t __clock_id@clockid_t)int ;
export extern timer_create (__clock_id clockid_t
restrict __evp@struct sigevent
restrict __timerid@timer_t)int ;
export extern timer_delete (__timerid timer_t)int ;
export extern timer_settime (__timerid timer_t __flags int
restrict __ovalue@struct itimerspec
restrict __ovalue@struct itimerspec)int ;
export extern timer_gettime (__timerid timer_t __value@struct itimerspec)int
;
export extern timer_getoverrun (__timerid timer_t)int ;
export extern timespec_get (__ts@struct timespec __base int)int
;
type useconds_t __useconds_t;
export extern access (__name@const char __type int)int ;
export extern faccessat (__fd int __file@ const char __type int __flag int)int
;
export extern lseek (__fd int __offset __off_t __whence int)__off_t ;
export extern close (__fd int)int;
export extern read (__fd int __buf@ __nbytes size_t)ssize_t ;
export extern write (__fd int __buf@const __n size_t)ssize_t ;
export extern pread (__fd int __buf@ __nbytes size_t __offset __off_t)ssize_t ;
export extern pwrite (__fd int __buf@const __n size_t __offset __off_t)ssize_t ;
export extern pipe (__pipedes[2]int)int ;
export extern alarm (__seconds unsigned int)unsigned int ;
export extern sleep (__seconds unsigned int)unsigned int;
export extern pause ()int;
export extern chown (__file@const char __owner __uid_t __group __gid_t)int
;
export extern fchown (__fd int __owner __uid_t __group __gid_t)int ;
export extern lchown (__file@const char __owner __uid_t __group __gid_t)int
;
export extern fchownat (__fd int __file@const char __owner __uid_t __group
__gid_t __flag int)int
;
export extern chdir (__path@const char)int ;
export extern fchdir (__fd int)int ;
export extern getcwd (__buf @char __size size_t)@char ;
export extern dup (__fd int)int ;
export extern dup2 (__fd int __fd2 int)int ;
export extern __environ@@char;
export extern execve (__path@const char __argv const[]@char
__envp const[]@char)int ;
export extern fexecve (__fd int __argv const[]@char __envp const[]@char)int
;
export extern execv (__path@const char __argv const[]@char)int
;
export extern execle (__path@const char __arg@const char ...)int
;
export extern execl (__path@const char __arg@const char ...)int
;
export extern execvp (__file@const char __argv const@@char)int
;
export extern execlp (__file@const char __arg@const char ...)int
;
export extern _exit (__status int) ;
_ enum
_PC_LINK_MAX
_PC_MAX_CANON
_PC_MAX_INPUT
_PC_NAME_MAX
_PC_PATH_MAX
_PC_PIPE_BUF
_PC_CHOWN_RESTRICTED
_PC_NO_TRUNC
_PC_VDISABLE
_PC_SYNC_IO
_PC_ASYNC_IO
_PC_PRIO_IO
_PC_SOCK_MAXBUF
_PC_FILESIZEBITS
_PC_REC_INCR_XFER_SIZE
_PC_REC_MAX_XFER_SIZE
_PC_REC_MIN_XFER_SIZE
_PC_REC_XFER_ALIGN
_PC_ALLOC_SIZE_MIN
_PC_SYMLINK_MAX
_PC_2_SYMLINKS
;;
_ enum
_SC_ARG_MAX
_SC_CHILD_MAX
_SC_CLK_TCK
_SC_NGROUPS_MAX
_SC_OPEN_MAX
_SC_STREAM_MAX
_SC_TZNAME_MAX
_SC_JOB_CONTROL
_SC_SAVED_IDS
_SC_REALTIME_SIGNALS
_SC_PRIORITY_SCHEDULING
_SC_TIMERS
_SC_ASYNCHRONOUS_IO
_SC_PRIORITIZED_IO
_SC_SYNCHRONIZED_IO
_SC_FSYNC
_SC_MAPPED_FILES
_SC_MEMLOCK
_SC_MEMLOCK_RANGE
_SC_MEMORY_PROTECTION
_SC_MESSAGE_PASSING
_SC_SEMAPHORES
_SC_SHARED_MEMORY_OBJECTS
_SC_AIO_LISTIO_MAX
_SC_AIO_MAX
_SC_AIO_PRIO_DELTA_MAX
_SC_DELAYTIMER_MAX
_SC_MQ_OPEN_MAX
_SC_MQ_PRIO_MAX
_SC_VERSION
_SC_PAGESIZE
_SC_RTSIG_MAX
_SC_SEM_NSEMS_MAX
_SC_SEM_VALUE_MAX
_SC_SIGQUEUE_MAX
_SC_TIMER_MAX
_SC_BC_BASE_MAX
_SC_BC_DIM_MAX
_SC_BC_SCALE_MAX
_SC_BC_STRING_MAX
_SC_COLL_WEIGHTS_MAX
_SC_EQUIV_CLASS_MAX
_SC_EXPR_NEST_MAX
_SC_LINE_MAX
_SC_RE_DUP_MAX
_SC_CHARCLASS_NAME_MAX
_SC_2_VERSION
_SC_2_C_BIND
_SC_2_C_DEV
_SC_2_FORT_DEV
_SC_2_FORT_RUN
_SC_2_SW_DEV
_SC_2_LOCALEDEF
_SC_PII
_SC_PII_XTI
_SC_PII_SOCKET
_SC_PII_INTERNET
_SC_PII_OSI
_SC_POLL
_SC_SELECT
_SC_UIO_MAXIOV
_SC_IOV_MAX = _SC_UIO_MAXIOV
_SC_PII_INTERNET_STREAM
_SC_PII_INTERNET_DGRAM
_SC_PII_OSI_COTS
_SC_PII_OSI_CLTS
_SC_PII_OSI_M
_SC_T_IOV_MAX
_SC_THREADS
_SC_THREAD_SAFE_FUNCTIONS
_SC_GETGR_R_SIZE_MAX
_SC_GETPW_R_SIZE_MAX
_SC_LOGIN_NAME_MAX
_SC_TTY_NAME_MAX
_SC_THREAD_DESTRUCTOR_ITERATIONS
_SC_THREAD_KEYS_MAX
_SC_THREAD_STACK_MIN
_SC_THREAD_THREADS_MAX
_SC_THREAD_ATTR_STACKADDR
_SC_THREAD_ATTR_STACKSIZE
_SC_THREAD_PRIORITY_SCHEDULING
_SC_THREAD_PRIO_INHERIT
_SC_THREAD_PRIO_PROTECT
_SC_THREAD_PROCESS_SHARED
_SC_NPROCESSORS_CONF
_SC_NPROCESSORS_ONLN
_SC_PHYS_PAGES
_SC_AVPHYS_PAGES
_SC_ATEXIT_MAX
_SC_PASS_MAX
_SC_XOPEN_VERSION
_SC_XOPEN_XCU_VERSION
_SC_XOPEN_UNIX
_SC_XOPEN_CRYPT
_SC_XOPEN_ENH_I18N
_SC_XOPEN_SHM
_SC_2_CHAR_TERM
_SC_2_C_VERSION
_SC_2_UPE
_SC_XOPEN_XPG2
_SC_XOPEN_XPG3
_SC_XOPEN_XPG4
_SC_CHAR_BIT
_SC_CHAR_MAX
_SC_CHAR_MIN
_SC_INT_MAX
_SC_INT_MIN
_SC_LONG_BIT
_SC_WORD_BIT
_SC_MB_LEN_MAX
_SC_NZERO
_SC_SSIZE_MAX
_SC_SCHAR_MAX
_SC_SCHAR_MIN
_SC_SHRT_MAX
_SC_SHRT_MIN
_SC_UCHAR_MAX
_SC_UINT_MAX
_SC_ULONG_MAX
_SC_USHRT_MAX
_SC_NL_ARGMAX
_SC_NL_LANGMAX
_SC_NL_MSGMAX
_SC_NL_NMAX
_SC_NL_SETMAX
_SC_NL_TEXTMAX
_SC_XBS5_ILP32_OFF32
_SC_XBS5_ILP32_OFFBIG
_SC_XBS5_LP64_OFF64
_SC_XBS5_LPBIG_OFFBIG
_SC_XOPEN_LEGACY
_SC_XOPEN_REALTIME
_SC_XOPEN_REALTIME_THREADS
_SC_ADVISORY_INFO
_SC_BARRIERS
_SC_BASE
_SC_C_LANG_SUPPORT
_SC_C_LANG_SUPPORT_R
_SC_CLOCK_SELECTION
_SC_CPUTIME
_SC_THREAD_CPUTIME
_SC_DEVICE_IO
_SC_DEVICE_SPECIFIC
_SC_DEVICE_SPECIFIC_R
_SC_FD_MGMT
_SC_FIFO
_SC_PIPE
_SC_FILE_ATTRIBUTES
_SC_FILE_LOCKING
_SC_FILE_SYSTEM
_SC_MONOTONIC_CLOCK
_SC_MULTI_PROCESS
_SC_SINGLE_PROCESS
_SC_NETWORKING
_SC_READER_WRITER_LOCKS
_SC_SPIN_LOCKS
_SC_REGEXP
_SC_REGEX_VERSION
_SC_SHELL
_SC_SIGNALS
_SC_SPAWN
_SC_SPORADIC_SERVER
_SC_THREAD_SPORADIC_SERVER
_SC_SYSTEM_DATABASE
_SC_SYSTEM_DATABASE_R
_SC_TIMEOUTS
_SC_TYPED_MEMORY_OBJECTS
_SC_USER_GROUPS
_SC_USER_GROUPS_R
_SC_2_PBS
_SC_2_PBS_ACCOUNTING
_SC_2_PBS_LOCATE
_SC_2_PBS_MESSAGE
_SC_2_PBS_TRACK
_SC_SYMLOOP_MAX
_SC_STREAMS
_SC_2_PBS_CHECKPOINT
_SC_V6_ILP32_OFF32
_SC_V6_ILP32_OFFBIG
_SC_V6_LP64_OFF64
_SC_V6_LPBIG_OFFBIG
_SC_HOST_NAME_MAX
_SC_TRACE
_SC_TRACE_EVENT_FILTER
_SC_TRACE_INHERIT
_SC_TRACE_LOG
_SC_LEVEL1_ICACHE_SIZE
_SC_LEVEL1_ICACHE_ASSOC
_SC_LEVEL1_ICACHE_LINESIZE
_SC_LEVEL1_DCACHE_SIZE
_SC_LEVEL1_DCACHE_ASSOC
_SC_LEVEL1_DCACHE_LINESIZE
_SC_LEVEL2_CACHE_SIZE
_SC_LEVEL2_CACHE_ASSOC
_SC_LEVEL2_CACHE_LINESIZE
_SC_LEVEL3_CACHE_SIZE
_SC_LEVEL3_CACHE_ASSOC
_SC_LEVEL3_CACHE_LINESIZE
_SC_LEVEL4_CACHE_SIZE
_SC_LEVEL4_CACHE_ASSOC
_SC_LEVEL4_CACHE_LINESIZE
_SC_IPV6 = (cast int the typeof _SC_LEVEL1_ICACHE_SIZE _SC_LEVEL1_ICACHE_SIZE + 50)
_SC_RAW_SOCKETS
_SC_V7_ILP32_OFF32
_SC_V7_ILP32_OFFBIG
_SC_V7_LP64_OFF64
_SC_V7_LPBIG_OFFBIG
_SC_SS_REPL_MAX
_SC_TRACE_EVENT_NAME_MAX
_SC_TRACE_NAME_MAX
_SC_TRACE_SYS_MAX
_SC_TRACE_USER_EVENT_MAX
_SC_XOPEN_STREAMS
_SC_THREAD_ROBUST_PRIO_INHERIT
_SC_THREAD_ROBUST_PRIO_PROTECT
;;
_ enum
_CS_PATH
_CS_V6_WIDTH_RESTRICTED_ENVS
_CS_GNU_LIBC_VERSION
_CS_GNU_LIBPTHREAD_VERSION
_CS_V5_WIDTH_RESTRICTED_ENVS
_CS_V7_WIDTH_RESTRICTED_ENVS
_CS_LFS_CFLAGS = 1000
_CS_LFS_LDFLAGS
_CS_LFS_LIBS
_CS_LFS_LINTFLAGS
_CS_LFS64_CFLAGS
_CS_LFS64_LDFLAGS
_CS_LFS64_LIBS
_CS_LFS64_LINTFLAGS
_CS_XBS5_ILP32_OFF32_CFLAGS = 1100
_CS_XBS5_ILP32_OFF32_LDFLAGS
_CS_XBS5_ILP32_OFF32_LIBS
_CS_XBS5_ILP32_OFF32_LINTFLAGS
_CS_XBS5_ILP32_OFFBIG_CFLAGS
_CS_XBS5_ILP32_OFFBIG_LDFLAGS
_CS_XBS5_ILP32_OFFBIG_LIBS
_CS_XBS5_ILP32_OFFBIG_LINTFLAGS
_CS_XBS5_LP64_OFF64_CFLAGS
_CS_XBS5_LP64_OFF64_LDFLAGS
_CS_XBS5_LP64_OFF64_LIBS
_CS_XBS5_LP64_OFF64_LINTFLAGS
_CS_XBS5_LPBIG_OFFBIG_CFLAGS
_CS_XBS5_LPBIG_OFFBIG_LDFLAGS
_CS_XBS5_LPBIG_OFFBIG_LIBS
_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS
_CS_POSIX_V6_ILP32_OFF32_CFLAGS
_CS_POSIX_V6_ILP32_OFF32_LDFLAGS
_CS_POSIX_V6_ILP32_OFF32_LIBS
_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS
_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS
_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS
_CS_POSIX_V6_ILP32_OFFBIG_LIBS
_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS
_CS_POSIX_V6_LP64_OFF64_CFLAGS
_CS_POSIX_V6_LP64_OFF64_LDFLAGS
_CS_POSIX_V6_LP64_OFF64_LIBS
_CS_POSIX_V6_LP64_OFF64_LINTFLAGS
_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS
_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS
_CS_POSIX_V6_LPBIG_OFFBIG_LIBS
_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS
_CS_POSIX_V7_ILP32_OFF32_CFLAGS
_CS_POSIX_V7_ILP32_OFF32_LDFLAGS
_CS_POSIX_V7_ILP32_OFF32_LIBS
_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS
_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS
_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS
_CS_POSIX_V7_ILP32_OFFBIG_LIBS
_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS
_CS_POSIX_V7_LP64_OFF64_CFLAGS
_CS_POSIX_V7_LP64_OFF64_LDFLAGS
_CS_POSIX_V7_LP64_OFF64_LIBS
_CS_POSIX_V7_LP64_OFF64_LINTFLAGS
_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS
_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS
_CS_POSIX_V7_LPBIG_OFFBIG_LIBS
_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS
_CS_V6_ENV
_CS_V7_ENV
;;
export extern pathconf (__path@const char __name int)long int
;
export extern fpathconf (__fd int __name int)long int ;
export extern sysconf (__name int)long int ;
export extern confstr (__name int __buf@char __len size_t)size_t ;
export extern getpid (void)__pid_t ;
export extern getppid (void)__pid_t ;
export extern getpgrp (void)__pid_t ;
export extern __getpgid (__pid __pid_t)__pid_t ;
export extern getpgid (__pid __pid_t)__pid_t ;
export extern setpgid (__pid __pid_t __pgid __pid_t)int ;
export extern setsid (void)__pid_t ;
export extern getsid (__pid __pid_t)__pid_t ;
export extern getuid (void)__uid_t ;
export extern geteuid (void)__uid_t ;
export extern getgid (void)__gid_t ;
export extern getegid (void)__gid_t ;
export extern getgroups (__size int __list[]__gid_t)int ;
export extern setuid (__uid __uid_t)int ;
export extern seteuid (__uid __uid_t)int ;
export extern setgid (__gid __gid_t)int ;
export extern setegid (__gid __gid_t)int ;
export extern fork (void)__pid_t ;
export extern ttyname (__fd int)@char ;
export extern ttyname_r (__fd int __buf@char __buflen size_t)int
;
export extern isatty (__fd int)int ;
export extern link (__from@const char __to@const char)int
;
export extern linkat (__fromfd int __from@const char __tofd int
__to@const char __flags int)int
;
export extern symlink (__from@const char __to@const char)int
;
export extern readlink (restrict __path@const char
restrict __buf@char __len size_t)ssize_t
;
export extern symlinkat (__from@const char __tofd int
__to@const char)int ;
export extern readlinkat (__fd int restrict __path@const char
restrict __buf@char __len size_t)ssize_t
;
export extern unlink (__name@const char)int ;
export extern unlinkat (__fd int __name@const char __flag int)int
;
export extern rmdir (__path@const char)int ;
export extern tcgetpgrp (__fd int)__pid_t ;
export extern tcsetpgrp (__fd int __pgrp_id __pid_t)int ;
export extern getlogin (void)@char;
export extern getlogin_r (__name@char __name_len size_t)int ;
export extern optarg@char;
export extern optind int;
export extern opterr int;
export extern optopt int;
export extern getopt (___argc int ___argv@const@char __shortopts@const char)int
;
export extern __posix_getopt (___argc int ___argv@const@char
__shortopts@const char)int
;
export extern gethostname (__name@char __len size_t)int ;
export extern fsync (__fd int)int;
export extern truncate (__file@const char __length __off_t)int
;
export extern ftruncate (__fd int __length __off_t)int ;
export extern fdatasync (__fildes int)int;