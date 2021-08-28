#ifndef ____sigset_t_defined
#define ____sigset_t_defined

#define _SIGSET_NWORDS (1024 / (8 * sizeof unsigned long int))
type __sigset_t struct
{
  __val[_SIGSET_NWORDS]unsigned long int;
};

#endif