export JID  () none
export JPCT () none
export JCHR () none
export JSTR () none
export JNUM () none

type
  TokenKind @() none

  Token {
    s @Token
    q TokenKind
    p @byte
    n nat
    line nat
    col nat
  }

  K @Token

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

  Scope {
    s        @Scope
    k        K
    t        T
    c        nat
    is_type  nat
    is_def   nat
    is_local nat
  }

  O @Scope

  Ctx {
    s    @Ctx
    c0    byte
    c1    byte
    k    @K
    p    @byte
    line  nat
    col   nat
    o O
    t T
    l nat
    c nat
  }

  X @Ctx
;

export token (x X) none
