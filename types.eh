export TNONE () none
export TBYTE () none
export TNAT  () none
export TSTCT () none
export TPTR  () none
export TFUNC () none

type
  TypeKind  @()none

  Type {
    s      @Type
    a      @Type
    q       TypeKind
    k       K
    size    nat
    align   nat
    offset  nat
  }

  T @Type
;

export nnone (   ) T
export nbyte (   ) T
export nnat  (   ) T
export nstct (   ) T
export nptr  (a T) T
export nfunc (a T) T
export nnew  (a T) T

export type_equal(t T u T) nat
