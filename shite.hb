
type __fsid_t struct { __val[2]i32; };
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

_ struct __locale_struct
{
__locales[13]@struct __locale_data
__ctype_b@const unsigned i16
__ctype_tolower@const i32
__ctype_toupper@const i32
__names[13]@const i8;
};
type __locale_t@struct __locale_struct;
type locale_t __locale_t;

type glob_t struct
{
gl_pathc unsigned i64
gl_pathv@@i8
gl_offs unsigned i64
gl_flags i32
gl_closedir@(@)
gl_readdir@(@)@
gl_opendir@(@const i8)@
gl_lstat@(@const i8 @ )i32
gl_stat@(@const i8 @ )i32;
};

type __va_elem struct {
gp_offset unsigned i32
fp_offset unsigned i32
overflow_arg_area@
reg_save_area@;
};
type va_list __va_elem;
__va_arg_mem(ap@ __va_elem sz i32 alignment i32)@ =
ap.overflow_arg_area is p
((alignment > 8) && (p = cast unsigned i64 (p + 15ul) / 16ul * 16ul as @void) as void);:
(ap.overflow_arg_area = (cast unsigned i64 p + cast unsigned i64 sz + 7ul) / 8ul * 8ul as @void) ;:
p;;
__va_arg_gp(ap@ __va_elem sz i32 alignment i32)@ = return
(ap.gp_offset >= 48) ? __va_arg_mem ap sz alignment :
(ap.reg_save_area + the unsigned i32 ap.gp_offset) :;
(ap.gp_offset += 8u);;
__va_arg_fp(ap@ __va_elem sz i32 alignment i32)@ = return
(ap.fp_offset >= 112) ? __va_arg_mem ap sz alignment :
(ap.reg_save_area + the unsigned i32 ap.fp_offset) :;
(ap.fp_offset += 8u);;
type __mbstate_t struct
{
__count i32
__value union
{
__wch unsigned i32
__wchb[4] i8;
};
};
type fpos_t struct _G_fpos_t
{
__pos i64
__state __mbstate_t;
};
type __fpos64_t struct _G_fpos64_t
{
__pos i64
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
_flags i32
_IO_read_ptr@i8
_IO_read_end@i8
_IO_read_base@i8
_IO_write_base@i8
_IO_write_ptr@i8
_IO_write_end@i8
_IO_buf_base@i8
_IO_buf_end@i8
_IO_save_base@i8
_IO_backup_base@i8
_IO_save_end@i8
_markers@struct _IO_marker
_chain@struct _IO_FILE
_fileno i32
_flags2 i32
_old_offset i64
_cur_column unsigned i16
_vtable_offset  i8
_shortbuf[1]i8
_lock@_IO_lock_t
_offset i64
_codecvt@struct _IO_codecvt
_wide_data@struct _IO_wide_data
_freeres_list@struct _IO_FILE
_freeres_buf@
__pad5 unsigned i64
_mode i32
_unused2[15ul * sizeof i32 - 4ul * sizeof @ - sizeof unsigned i64]i8;
};
type off_t i64;


type idtype_t enum
P_ALL
P_PID
P_PGID
;;
type _Float32 f32;
type _Float64 f64;
type _Float32x f64;
type _Float64x f80;
type div_t struct
{
quot i32
rem i32;
};
type ldiv_t struct
{
quot i64
rem i64;
};
type lldiv_t struct
{
quot i64
rem i64;
};

type __compar_fn_t@(@const @const)i32;

_ struct timespec
{
tv_sec i64
tv_nsec i64;
};
type time_t i64;
type dev_t unsigned i64;
type gid_t unsigned i32;
type ino_t unsigned i64;
type mode_t unsigned i32;
type nlink_t unsigned i64;
type uid_t unsigned i32;
_ struct stat
{
st_dev unsigned i64
st_ino unsigned i64
st_nlink unsigned i64
st_mode unsigned i32
st_uid unsigned i32
st_gid unsigned i32
__pad0 i32
st_rdev unsigned i64
st_size i64
st_blksize i64
st_blocks i64
st_atim struct timespec
st_mtim struct timespec
st_ctim struct timespec
__glibc_reserved[3]i64;
};


type pid_t i32;
type id_t unsigned i32;
type clock_t i64;
type clockid_t i32;
type timer_t void;
type u_int8_t unsigned i8;
type u_int16_t unsigned i16;
type u_int32_t unsigned i32;
type u_int64_t unsigned i64;
type register_t i32;
type blkunsigned i64;
type blkcnt_t i64;
type fsblkcnt_t unsigned i64;
type fsfilcnt_t unsigned i64;
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
__lock i32
__count unsigned i32
__owner i32
__nusers unsigned i32
__kind i32
__spins i16
__elision i16
__list __pthread_list_t;
};
_ struct __pthread_rwlock_arch_t
{
__readers unsigned i32
__writers unsigned i32
__wrphase_futex unsigned i32
__writers_futex unsigned i32
__pad3 unsigned i32
__pad4 unsigned i32
__cur_writer i32
__shared i32
__rwelision  i8
__pad1[7] unsigned i8
__pad2 unsigned i64
__flags unsigned i32;
};
_ struct __pthread_cond_s
{
_ union
{
__wseq unsigned i64 i64 intyy
__wseq32 struct
{
__low unsigned i32
__high unsigned i32;
};
}
_ union
{
__g1_start unsigned i64
__g1_start32 struct
{
__low unsigned i32
__high unsigned i32;
};
}
__g_refs[2]unsigned i32 __g_size[2]unsigned i32
__g1_orig_sizeunsigned i32
__wrefunsigned i32
__g_signals[2]unsigned i32;
};
type pthread_t unsigned i64;
type pthread_mutexattr_t union
{
__size[4]i8
__align i32;
};
type pthread_condattr_t union
{
__size[4]i8
__align i32;
};
type pthread_key_t unsigned i32;
type pthread_once_t i32;
_ union pthread_attr_t
{
__size[56]i8
__align i64;
};
type pthread_attr_t union pthread_attr_t
type pthread_mutex_t union
{
__data struct __pthread_mutex_s
__size[40]i8
__align i64;
};
type pthread_cond_t union
{
__data struct __pthread_cond_s
__size[48]i8
__align i64;
};
type pthread_rwlock_t union
{
__data struct __pthread_rwlock_arch_t
__size[56]i8
__align i64;
};
type pthread_rwlockattr_t union
{
__size[8]i8
__align i64;
};
type pthread_spinlock_t volatile i32;
type pthread_barrier_t union
{
__size[32]i8
__align i64;
};
type pthread_barrierattr_t union
{
__size[4]i8
__align i32;
};
type sig_atomic_t i32;
type __sigset_t struct
{
__val[(1024ul / (8ul * sizeof unsigned i64))]unsigned i64;
};
type sigset_t __sigset_t;
_ union sigval
{
sival_int i32
sival_ptr@;
};
type __sigval_t union sigval;
type siginfo_t struct
{
si_signo i32
si_errno i32
si_code i32
__pad0 i32
_sifields union
{
_pad[((128ul / sizeof i32) - 4ul)]i32
_kill struct
{
si_pid i32
si_uid unsigned i32;
}
_timer struct
{
si_tid i32
si_overrun i32
si_sigval __sigval_t;
}
_rt struct
{
si_pid i32
si_uid unsigned i32
si_sigval __sigval_t;
}
_sigchld struct
{
si_pid i32
si_uid unsigned i32
si_status i32
si_utime i64
si_stime i64;
}
_sigfault struct
{
si_addr@
si_addr_lsb i16 i32
_bounds union
{
_addr_bnd struct
{
_lower@
_upper@;
}
_pkey unsigned i32;
};
}
_sigpoll struct
{
si_band i64
si_fd i32;
}
_sigsys struct
{
_call_addr@
_syscall i32
_arch unsigned i32;
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
sigev_signo i32
sigev_notify i32
_sigev_un union
{
_pad[((64ul / sizeof i32 - 4ul))]i32
_tid i32
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
type __sighandler_t@(_ i32);


_ struct sigaction
{
__sigaction_handler union
{
sa_handler __sighandler_t
sa_sigaction@(_ i32 _@siginfo_t _@);
}
sa_mask __sigset_t
sa_flags i32
sa_restorer@(void);
};

type stack_t struct
{
ss_sp@
ss_flags i32
ss_size unsigned i64;
};
type greg_t i64;
type gregset_t[23]greg_t;
_ struct _libc_fpxreg
{
__significand[4]unsigned i16
__exponentunsigned i16 i32
__glibc_reserved1[3]unsigned i16;
};
_ struct _libc_xmmreg
{
__element[4]unsigned i32;
};
_ struct _libc_fpstate
{
__cwdunsigned i16 i32
__swdunsigned i16 i32
__ftwunsigned i16 i32
__fopunsigned i16 i32
__ripunsigned i64
__rdpunsigned i64
__mxcsrunsigned i32
__mxcr_maskunsigned i32
_st[8]struct _libc_fpxreg
_xmm[16]struct _libc_xmmreg
__glibc_reserved1[24]unsigned i32;
};
type fpregset_t@struct _libc_fpstate;
type mcontext_t struct
{
__gregsgregset_t
__fpregsfpregset_t
__reserved1[8]unsigned i64 i64;
} ;
type ucontext_t struct ucontext_t
{
__uc_flagunsigned i64
uc_link@struct ucontext_t
uc_stack stack_t
uc_mcontext mcontext_t
uc_sigmask sigset_t
__fpregs_mem struct _libc_fpstate
__ssp[4]unsigned i64;
};



_ struct tm
{
tm_sec i32
tm_min i32
tm_hour i32
tm_mday i32
tm_mon i32
tm_year i32
tm_wday i32
tm_yday i32
tm_isdst i32
__tm_gmtoff i64
__tm_zone@const i8;
};
_ struct itimerspec
{
it_interval struct timespec
it_value struct timespec;
};
_ struct sigevent;

type useconds_t unsigned i32;

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
_SC_IPV6 = (cast i32 the typeof _SC_LEVEL1_ICACHE_SIZE _SC_LEVEL1_ICACHE_SIZE + 50)
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


export extern stdin@FILE;
export extern stdout@FILE;
export extern stderr@FILE;
export extern optarg@i8;
export extern optind i32;
export extern opterr i32;
export extern optopt i32;

export extern __errno_location    (void          )@i32 ;
inline errno(void) i32 = (__errno_location)@;;
export extern glob                (pattern       @const i8 flags i32 errfunc@(_@const i8 _ i32)i32 pglob @glob_t) i32 ;
export extern globfree            (pglob         @glob_t) ;
export extern dirname             (path          @i8) @i8 ;
export extern basename            (path          @i8) @i8 ;
export extern __assert            (assertion     @const i8 file @const i8 line i32);
export extern isalnum             (c             i32) i32;
export extern isalpha             (c             i32) i32;
export extern iscntrl             (c             i32) i32;
export extern isdigit             (c             i32) i32;
export extern islower             (c             i32) i32;
export extern isgraph             (c             i32) i32;
export extern isprint             (c             i32) i32;
export extern ispunct             (c             i32) i32;
export extern isspace             (c             i32) i32;
export extern isupper             (c             i32) i32;
export extern isxdigit            (c             i32) i32;
export extern tolower             (c             i32) i32;
export extern toupper             (c             i32) i32;
export extern isblank             (c             i32) i32;
export extern remove              (filename      @const i8)i32 ;
export extern rename              (old           @const i8 new@const i8)i32 ;
export extern renameat            (oldfd         i32 old@const i8 newfd i32 new@const i8)i32 ;
export extern tmpfile             (void          )@FILE ;
export extern tmpnam              (s             @i8)@i8 ;
export extern fopen               (filename      @const i8 modes@const i8)@FILE ;
export extern freopen             (filename      @const i8 modes@const i8 stream@FILE)@FILE ;
export extern fdopen              (fd            i32 modes@const i8)@FILE ;
export extern fmemopen            (s             @ len unsigned i64 modes@const i8)@FILE;
export extern open_memstream      (bufloc        @@i8 sizeloc@unsigned i64)@FILE ;
export extern printf              (format        @const i8 ...)i32;
export extern sprintf             (s             @i8 format@const i8 ...)i32 ;
export extern vprintf             (format        @const i8 arg @va_list)i32;
export extern vsprintf            (s             @i8  format@const i8 arg @va_list)i32 ;
export extern snprintf            (s             @i8 maxlen unsigned i64 format@const i8 ...)i32;
export extern vsnprintf           (s             @i8 maxlen unsigned i64 format@const i8 arg @va_list)i32;
export extern vdprintf            (fd            i32  fmt@const i8 arg @va_list)i32;
export extern dprintf             (fd            i32  fmt@const i8 ...)i32;
export extern scanf               (format        @const i8 ...)i32 ;
export extern sscanf              (s             @const i8 format@const i8 ...)i32 ;
export extern vscanf              (format        @const i8 arg @va_list)i32;
export extern vsscanf             (s             @const i8 format@const i8 arg @va_list)i32 ;
export extern getchar             (void          )i32;
export extern getchar_unlocked    (void          )i32;
export extern fputc               (c             i32 stream@FILE)i32;
export extern putc                (c             i32 stream@FILE)i32;
export extern putchar             (c             i32)i32;
export extern putc_unlocked       (c             i32 stream@FILE)i32;
export extern putchar_unlocked    (c             i32)i32;
export extern fgets               (s             @i8 n i32  stream@FILE)@i8;
export extern getdelim            (lineptr       @@i8 n@unsigned i64 delimiter i32 stream@FILE)i64 ;
export extern getline             (lineptr       @i8 n@unsigned i64 stream@FILE)i64 ;
export extern fputs               (s             @const i8  stream@FILE )i32;
export extern puts                (s             @const i8)i32;
export extern ungetc              (c             @i32 stream@FILE)i32;
export extern fread               (ptr           @ size unsigned i64 n unsigned i64  stream@FILE)unsigned i64 ;
export extern fwrite              (ptr           @const size unsigned i64 n unsigned i64  s@FILE)unsigned i64;
export extern perror              (s             @const i8);
export extern popen               (command       @const i8 modes@const i8)@FILE ;
export extern ctermid             (s             @i8)@i8 ;
export extern fclose              (stream        @FILE)i32;
export extern fflush              (stream        @FILE)i32;
export extern setbuf              (stream        @FILE  buf@i8) ;
export extern setvbuf             (stream        @FILE  buf@i8 modes i32 n unsigned i64)i32 ;
export extern fprintf             (stream        @FILE format@const i8 ...)i32;
export extern vfprintf            (s             @FILE  format@const i8 arg @va_list)i32;
export extern fscanf              (stream        @FILE format@const i8 ...)i32 ;
export extern vfscanf             (s             @FILE  format@const i8 arg @va_list)i32;
export extern fgetc               (stream        @FILE)i32;
export extern getc                (stream        @FILE)i32;
export extern getc_unlocked       (stream        @FILE)i32;
export extern fseek               (stream        @FILE off i64 whence i32)i32;
export extern ftell               (stream        @FILE)i64 ;
export extern rewind              (stream        @FILE);
export extern fseeko              (stream        @FILE off i64 whence i32)i32;
export extern ftello              (stream        @FILE)i64 ;
export extern fgetpos             (stream        @FILE  pos@fpos_t)i32;
export extern fsetpos             (stream        @FILE pos@const fpos_t)i32;
export extern clearerr            (stream        @FILE) ;
export extern feof                (stream        @FILE)i32 ;
export extern ferror              (stream        @FILE)i32 ;
export extern fileno              (stream        @FILE)i32 ;
export extern pclose              (stream        @FILE)i32;
export extern flockfile           (stream        @FILE) ;
export extern ftrylockfile        (stream        @FILE)i32 ;
export extern funlockfile         (stream        @FILE) ;
export extern atof                (nptr          @const i8)f64;
export extern atoi                (nptr          @const i8)i32;
export extern atol                (nptr          @const i8)i64;
export extern atoll               (nptr          @const i8)i64;
export extern strtod              (nptr          @const i8 endptr@@i8)f64;
export extern strtof              (nptr          @const i8 endptr@@i8)f32 ;
export extern strtold             (nptr          @const i8 endptr@@i8)f80;
export extern strtol              (nptr          @const i8 endptr@@i8 base i32)i64;
export extern strtoul             (nptr          @const i8 endptr@@i8 base i32)unsigned i64;
export extern strtoll             (nptr          @const i8 endptr@@i8 base i32)i64;
export extern strtoull            (nptr          @const i8 endptr@@i8 base i32)unsigned i64;
export extern rand                (void          )i32 ;
export extern srand               (seed          unsigned i32) ;
export extern rand_r              (seed          @unsigned i32)i32 ;
export extern malloc              (size          unsigned i64)@ ;
export extern calloc              (nmemb         unsigned i64 size unsigned i64)@;
export extern realloc             (ptr           @ size unsigned i64)@;
export extern free                (ptr           @) ;
export extern posix_memalign      (memptr        @@ alignment unsigned i64 size unsigned i64)i32;
export extern aligned_alloc       (alignment     unsigned i64 size unsigned i64)@;
export extern abort               (void          ) ;
export extern atexit              (func          @(void))i32 ;
export extern at_quick_exit       (func          @(void))i32 ;
export extern exit                (status        i32) ;
export extern quick_exit          (status        i32) ;
export extern _Exit               (status        i32) ;
export extern getenv              (name          @const i8)@i8 ;
export extern setenv              (name          @const i8 value@ const i8 replace i32)i32;
export extern unsetenv            (name          @const i8)i32 ;
export extern mkstemp             (template      @i8)i32 ;
export extern mkdtemp             (template      @i8)@i8 ;
export extern system              (command       @const i8)i32 ;
export extern bsearch             (key           @const base@const nmemb unsigned i64 size unsigned i64 compar compar_fn_t)@;
export extern qsort               (base          @ nmemb unsigned i64 size unsigned i64 compar compar_fn_t) ;
export extern abs                 (x             i32)i32 ;
export extern labs                (x             i64)i64 ;
export extern llabs               (x             i64)i64;
export extern div                 (numer         i32 denom i32)div_t;
export extern ldiv                (numer         i64 denom i64)ldiv_t;
export extern lldiv               (numer         i64 denom i64)lldiv_t;
export extern mblen               (s             @const i8 n unsigned i64)i32 ;
export extern mbtowc              (pwc           @wchar_t  s@ const i8 n unsigned i64)i32 ;
export extern wctomb              (s             @i8 wchar wchar_t)i32 ;
export extern mbstowcs            (pwcs          @wchar_t  s@ const i8 n unsigned i64)unsigned i64 ;
export extern wcstombs            (s             @i8  pwcs@ const wchar_t n unsigned i64)unsigned i64;
export extern getsubopt           (optionp       @@i8 tokens@const i8 valuep@@i8)i32;
export extern memcpy              (dest          @  src@const n unsigned i64)@ ;
export extern memmove             (dest          @src@ const n unsigned i64)@;
export extern memset              (s             @ c i32 n unsigned i64)@ ;
export extern memcmp              (s1            @ const s2@ const n unsigned i64)i32;
export extern memchr              (s             @const c i32 n unsigned i64)@;
export extern strcpy              (dest          @i8  src@const i8)@i8;
export extern strncpy             (dest          @i8 src@const i8 n unsigned i64)@i8;
export extern strcat              (dest          @i8  src@const i8)@i8;
export extern strncat             (dest          @i8  src@const i8 n unsigned i64)@i8 ;
export extern strcmp              (s1            @const chars2@ const i8)i32;
export extern strncmp             (s1            @const chars2@ const i8 n unsigned i64)i32;
export extern strcoll             (s1            @const chars2@ const i8)i32;
export extern strxfrm             (dest          @i8 src@const i8 n unsigned i64)unsigned i64;
export extern strcoll_l           (s1            @const chars2@ const i8 l locale_t)i32;
export extern strxfrm_l           (dest          @charsrc@ const i8 n unsigned i64 l locale_t)unsigned i64 ;
export extern strdup              (s             @const i8)@i8;
export extern strndup             (string        @const i8 n unsigned i64)@i8;
export extern strchr              (s             @const i8 c i32)@i8;
export extern strrchr             (s             @const i8 c i32)@i8;
export extern strcspn             (s             @const i8 reject@ const i8)unsigned i64;
export extern strspn              (s             @const i8 accept@ const i8)unsigned i64;
export extern strpbrk             (s             @const i8 accept@ const i8)@i8;
export extern strstr              (haystack      @const i8 needle@ const i8)@i8;
export extern strtok              (s             @i8  delim@const i8)@i8;
export extern strtok_r            (s             @i8 delim@const i8 save_ptr@@i8)@i8;
export extern strtok_r            (s             @i8  delim@const i8 save_ptr@@i8)@i8;
export extern strlen              (s             @const i8)unsigned i64;
export extern strnlen             (string        @const i8 maxlen unsigned i64)unsigned i64;
export extern strerror            (errnum        i32)@i8 ;
export extern xpg_strerror_r      (errnum        i32 buf@ i8 buflen unsigned i64)i32;
export extern strerror_l          (errnum        i32 l locale_t)@i8 ;
export extern strsignal           (sig           i32)@i8 ;
export extern stpcpy              (dest          @i8  src@const i8)@i8;
export extern stpcpy              (dest          @i8  src@const i8)@i8;
export extern stpncpy             (dest          @i8 src@const i8 n unsigned i64)@i8;
export extern stpncpy             (dest          @i8 src@const i8 n unsigned i64)@i8;
export extern strcasecmp          (s1            @const i8 s2@const i8)i32;
export extern strncasecmp         (s1            @const i8 s2@const i8 n unsigned i64)i32;
export extern strcasecmp_l        (s1            @const i8 s2@const i8 loc locale_t)i32;
export extern strncasecmp_l       (s1            @const i8 s2@const i8 n unsigned i64 loc locale_t)i32;
export extern stat                (file          @const i8 buf@struct stat)i32 ;
export extern fstat               (fd            i32 buf@struct stat)i32 ;
export extern fstatat             (fd            i32  file@const i8 buf@struct stat flag i32)i32;
export extern lstat               (file          @const i8 buf@struct stat)i32 ;
export extern chmod               (file          @const i8 mode unsigned i32)i32;
export extern fchmod              (fd            i32 mode unsigned i32)i32 ;
export extern fchmodat            (fd            i32 file@const i8 mode unsigned i32 flag i32)i32;
export extern umask               (mask          unsigned i32)unsigned i32 ;
export extern mkdir               (path          @const i8 mode unsigned i32)i32;
export extern mkdirat             (fd            i32 path@const i8 mode unsigned i32)i32;
export extern mkfifo              (path          @const i8 mode unsigned i32)i32;
export extern mkfifoat            (fd            i32 path@const i8 mode unsigned i32)i32;
export extern utimensat           (fd            i32 path@const i8 times[2]const struct timespec flags i32)i32;
export extern futimens            (fd            i32 times[2]const struct timespec)i32 ;
export extern fxstat              (ver           i32 fildes i32 stat_buf@struct stat)i32;
export extern xstat               (ver           i32 filename@const i8 stat_buf@struct stat)i32 ;
export extern lxstat              (ver           i32 filename@const i8 stat_buf@struct stat)i32 ;
export extern fxstatat            (ver           i32 fildes i32 filename@const i8 stat_buf@struct stat flag i32)i32;
export extern xmknod              (ver           i32 path@const i8 mode unsigned i32 dev@unsigned i64)i32 ;
export extern xmknodat            (ver           i32 fd i32 path@const i8 mode unsigned i32 dev@unsigned i64)i32;
export extern kill                (pid           i32 sig i32)i32 ;
export extern raise               (sig           i32) i32 ;
export extern psignal             (sig           i32 s@const i8);
export extern psiginfo            (pinfo         @const siginfo_t s@const i8);
export extern sigemptyset         (set           @sigset_t)i32 ;
export extern sigfillset          (set           @sigset_t)i32 ;
export extern sigaddset           (set           @sigset_t signo i32)i32 ;
export extern sigdelset           (set           @sigset_t signo i32)i32 ;
export extern sigismember         (set           @const sigset_t signo i32)i32;
export extern sigprocmask         (how           i32  set@const sigset_t oset@sigset_t)i32 ;
export extern sigsuspend          (set           @const sigset_t)i32 ;
export extern sigaction           (sig           i32  act@const struct sigaction oact@struct sigaction)i32 ;
export extern sigpending          (set           @sigset_t)i32 ;
export extern sigwait             (set           @const sigset_t  sig@i32)i32;
export extern sigwaitinfo         (set           @const sigset_t info@siginfo_t)i32 ;
export extern sigtimedwait        (set           @const sigset_t info@siginfo_t timeout@const struct timespec)i32;
export extern sigqueue            (pid           i32 sig i32 val const union sigval)i32;
export extern pthread_sigmask     (how           i32 newmask@const sigset_t oldmask@sigset_t)i32 ;
export extern pthread_kill        (threadid      pthread_t signo i32)i32 ;
export extern wait                (stat_loc      @i32)i32;
export extern waitpid             (pid           i32 stat_loc@i32 options i32)i32;
export extern waitid              (idtype        idtype_t id unsigned i32 infop@siginfo_t options i32)i32;
export extern clock               (void          )clock_t ;
export extern time                (timer         @time_t)time_t ;
export extern difftime            (time1         time_t time0 time_t)f64;
export extern mktime              (tp            @struct tm)time_t ;
export extern strftime            (s             @i8 maxsize unsigned i64 format@const i8 tp@const struct tm)unsigned i64 ;
export extern strftime_l          (s             @i8 maxsize unsigned i64 format@const i8 tp@const struct tm loc locale_t)unsigned i64 ;
export extern gmtime              (timer         @const time_t)@struct tm ;
export extern localtime           (timer         @const time_t)@struct tm ;
export extern gmtime_r            (timer         @const time_t tp@struct tm)@struct tm ;
export extern localtime_r         (timer         @const time_t tp@struct tm)@struct tm ;
export extern asctime             (tp            @const struct tm)@i8 ;
export extern ctime               (timer         @const time_t)@i8 ;
export extern asctime_r           (tp            @const struct tm buf@i8)@i8 ;
export extern ctime_r             (timer         @const time_t buf@i8)@i8 ;
export extern tzset               (void          ) ;
export extern nanosleep           (requested_time@const struct timespec remaining@struct timespec)i32;
export extern clock_getres        (clock_id      clockid_t res@const struct timespec)i32 ;
export extern clock_gettime       (clock_id      clockid_t req@const struct timespec)i32 ;
export extern clock_settime       (clock_id      clockid_t req@const struct timespec)i32;
export extern clock_nanosleep     (clock_id      clockid_t flags i32 req@const struct timespec rem@struct timespec)i32;
export extern clock_getcpuclockid (pid           pid_t clock_id@clockid_t)i32 ;
export extern timer_create        (clock_id      clockid_t evp@struct sigevent timerid@timer_t)i32 ;
export extern timer_delete        (timerid       timer_t)i32 ;
export extern timer_settime       (timerid       timer_t flags i32 ovalue@struct itimerspec ovalue@struct itimerspec)i32 ;
export extern timer_gettime       (timerid       timer_t value@struct itimerspec)i32;
export extern timer_getoverrun    (timerid       timer_t)i32 ;
export extern timespec_get        (ts            @struct timespec base i32)i32;
export extern access              (name          @const i8 kind i32)i32 ;
export extern faccessat           (fd            i32 file@ const i8 kind i32 flag i32)i32;
export extern lseek               (fd            i32 offset i64 whence i32)i64 ;
export extern close               (fd            i32)i32;
export extern read                (fd            i32 buf@ nbytes unsigned i64)unsigned i64 ;
export extern write               (fd            i32 buf@const n unsigned i64)unsigned i64 ;
export extern pread               (fd            i32 buf@ nbytes unsigned i64 offset i64)unsigned i64 ;
export extern pwrite              (fd            i32 buf@const n unsigned i64 offset i64)unsigned i64 ;
export extern pipe                (pipedes       [2]i32)i32 ;
export extern alarm               (seconds       unsigned i32)unsigned i32 ;
export extern sleep               (seconds       unsigned i32)unsigned i32;
export extern pause               ()             i32;
export extern chown               (file          @const i8 owner unsigned i32 group unsigned i32)i32;
export extern fchown              (fd            i32 owner unsigned i32 group unsigned i32)i32 ;
export extern lchown              (file          @const i8 owner unsigned i32 group unsigned i32)i32;
export extern fchownat            (fd            i32 file@const i8 owner unsigned i32 group unsigned i32 flag i32)i32;
export extern chdir               (path          @const i8)i32 ;
export extern fchdir              (fd            i32)i32 ;
export extern getcwd              (buf           @i8 size unsigned i64)@i8 ;
export extern dup                 (fd            i32)i32 ;
export extern dup2                (fd            i32 fd2 i32)i32 ;
export extern execve              (path          @const i8 argv const[]@i8 envp const[]@i8)i32 ;
export extern fexecve             (fd            i32 argv const[]@i8 envp const[]@i8)i32;
export extern execv               (path          @const i8 argv const[]@i8)i32;
export extern execle              (path          @const i8 arg@const i8 ...)i32;
export extern execl               (path          @const i8 arg@const i8 ...)i32;
export extern execvp              (file          @const i8 argv const@@i8)i32;
export extern execlp              (file          @const i8 arg@const i8 ...)i32;
export extern pathconf            (path          @const i8 name i32)i64;
export extern fpathconf           (fd            i32 name i32)i64 ;
export extern sysconf             (name          i32)i64 ;
export extern confstr             (name          i32 buf@i8 len unsigned i64)unsigned i64 ;
export extern getpid              (void          )i32 ;
export extern getppid             (void          )i32 ;
export extern getpgrp             (void          )i32 ;
export extern getpgid             (pid           i32)i32 ;
export extern setpgid             (pid           i32 pgid i32)i32 ;
export extern setsid              (void          )i32 ;
export extern getsid              (pid           i32)i32 ;
export extern getuid              (void          )unsigned i32 ;
export extern geteuid             (void          )unsigned i32 ;
export extern getgid              (void          )unsigned i32 ;
export extern getegid             (void          )unsigned i32 ;
export extern getgroups           (size          i32 list[]unsigned i32)i32 ;
export extern setuid              (uid           unsigned i32)i32 ;
export extern seteuid             (uid           unsigned i32)i32 ;
export extern setgid              (gid           unsigned i32)i32 ;
export extern setegid             (gid           unsigned i32)i32 ;
export extern fork                (void          )i32 ;
export extern ttyname             (fd            i32)@i8 ;
export extern ttyname_r           (fd            i32 buf@i8 buflen unsigned i64)i32;
export extern isatty              (fd            i32)i32 ;
export extern link                (from          @const i8 to@const i8)i32;
export extern linkat              (fromfd        i32 from@const i8 tofd i32 to@const i8 flags i32)i32;
export extern symlink             (from          @const i8 to@const i8)i32;
export extern readlink            ( path         @const i8  buf@i8 len unsigned i64)unsigned i64;
export extern symlinkat           (from          @const i8 tofd i32 to@const i8)i32 ;
export extern readlinkat          (fd            i32  path@const i8  buf@i8 len unsigned i64)unsigned i64;
export extern unlink              (name          @const i8)i32 ;
export extern unlinkat            (fd            i32 name@const i8 flag i32)i32;
export extern rmdir               (path          @const i8)i32 ;
export extern tcgetpgrp           (fd            i32)i32 ;
export extern tcsetpgrp           (fd            i32 pgrp_id i32)i32 ;
export extern getlogin            (void          )@i8;
export extern getlogin_r          (name          @i8 name_len unsigned i64)i32 ;
export extern getopt              (argc          i32 _argv@const@i8 shortopts@const i8)i32;
export extern gethostname         (name          @i8 len unsigned i64)i32 ;
export extern fsync               (fd            i32)i32;
export extern truncate            (file          @const i8 length i64)i32;
export extern ftruncate           (fd            i32 length i64)i32 ;
export extern fdatasync           (fildes        i32)i32;