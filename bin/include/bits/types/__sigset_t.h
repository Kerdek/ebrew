#ifndef ____sigset_t_defined
#define ____sigset_t_defined

#define _SIGSET_NWORDS (1024ul / (8ul * sizeof unsigned i64))
type __sigset_t struct
{
  __val[_SIGSET_NWORDS]unsigned i64;
};

#endif