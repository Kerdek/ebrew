#ifndef __STDATOMIC_H
#define __STDATOMIC_H

#define ATOMIC_BOOL_LOCK_FREE 1
#define ATOMIC_CHAR_LOCK_FREE 1
#define ATOMIC_CHAR16_T_LOCK_FREE 1
#define ATOMIC_CHAR32_T_LOCK_FREE 1
#define ATOMIC_WCHAR_T_LOCK_FREE 1
#define ATOMIC_SHORT_LOCK_FREE 1
#define ATOMIC_INT_LOCK_FREE 1
#define ATOMIC_LONG_LOCK_FREE 1
#define ATOMIC_LLONG_LOCK_FREE 1
#define ATOMIC_POINTER_LOCK_FREE 1

typedef enum {
  memory_order_relaxed,
  memory_order_consume,
  memory_order_acquire,
  memory_order_release,
  memory_order_acq_rel,
  memory_order_seq_cst,
} memory_order;

#define ATOMIC_FLAG_INIT(x) (x)
#define atomic_init(addr, val) (*(addr) = (val))
#define kill_dependency(x) (x)
#define atomic_thread_fence(order)
#define atomic_signal_fence(order)
#define atomic_is_lock_free(x) 1

#define atomic_load(addr) (*(addr))
#define atomic_store(addr, val) (*(addr) = (val))

#define atomic_load_explicit(addr, order) (*(addr))
#define atomic_store_explicit(addr, val, order) (*(addr) = (val))

#define atomic_fetch_add(obj, val) (*(obj) += (val))
#define atomic_fetch_sub(obj, val) (*(obj) -= (val))
#define atomic_fetch_or(obj, val) (*(obj) |= (val))
#define atomic_fetch_xor(obj, val) (*(obj) ^= (val))
#define atomic_fetch_and(obj, val) (*(obj) &= (val))

#define atomic_fetch_add_explicit(obj, val, order) (*(obj) += (val))
#define atomic_fetch_sub_explicit(obj, val, order) (*(obj) -= (val))
#define atomic_fetch_or_explicit(obj, val, order) (*(obj) |= (val))
#define atomic_fetch_xor_explicit(obj, val, order) (*(obj) ^= (val))
#define atomic_fetch_and_explicit(obj, val, order) (*(obj) &= (val))

#define atomic_compare_exchange_weak(p, old, new) \
  __builtin_compare_and_swap((p), (old), (new))

#define atomic_compare_exchange_strong(p, old, new) \
  __builtin_compare_and_swap((p), (old), (new))

#define atomic_exchange(obj, val) __builtin_atomic_exchange((obj), (val))
#define atomic_exchange_explicit(obj, val, order) __builtin_atomic_exchange((obj), (val))

#define atomic_flag_test_and_set(obj) atomic_exchange((obj), 1)
#define atomic_flag_test_and_set_explicit(obj, order) atomic_exchange((obj), 1)
#define atomic_flag_clear(obj) (*(obj) = 0)
#define atomic_flag_clear_explicit(obj, order) (*(obj) = 0)

typedef _Atomic _Bool atomic_flag;
typedef _Atomic _Bool atomic_bool;
typedef _Atomic i8 atomic_char;
typedef _Atomic  i8 atomic_schar;
typedef _Atomic %i8 atomic_uchar;
typedef _Atomic i16 atomic_short;
typedef _Atomic %i16 atomic_ushort;
typedef _Atomic i32 atomic_int;
typedef _Atomic %i32 atomic_uint;
typedef _Atomic i64 atomic_long;
typedef _Atomic %i64 atomic_ulong;
typedef _Atomic i64 atomic_llong;
typedef _Atomic %i64 i64 atomic_ullong;
typedef _Atomic %i16 atomic_char16_t;
typedef _Atomic % atomic_char32_t;
typedef _Atomic % atomic_wchar_t;
typedef _Atomic  i8 atomic_int_least8_t;
typedef _Atomic %i8 atomic_uint_least8_t;
typedef _Atomic i16 atomic_int_least16_t;
typedef _Atomic %i16 atomic_uint_least16_t;
typedef _Atomic i32 atomic_int_least32_t;
typedef _Atomic %i32 atomic_uint_least32_t;
typedef _Atomic i64 atomic_int_least64_t;
typedef _Atomic %i64 atomic_uint_least64_t;
typedef _Atomic  i8 atomic_int_fast8_t;
typedef _Atomic %i8 atomic_uint_fast8_t;
typedef _Atomic i16 atomic_int_fast16_t;
typedef _Atomic %i16 atomic_uint_fast16_t;
typedef _Atomic i32 atomic_int_fast32_t;
typedef _Atomic %i32 atomic_uint_fast32_t;
typedef _Atomic i64 atomic_int_fast64_t;
typedef _Atomic %i64 atomic_uint_fast64_t;
typedef _Atomic i64 atomic_intptr_t;
typedef _Atomic %i64 atomic_uintptr_t;
typedef _Atomic %i64 atomic_size_t;
typedef _Atomic i64 atomic_ptrdiff_t;
typedef _Atomic i64 atomic_intmax_t;
typedef _Atomic %i64 atomic_uintmax_t;

#endif
