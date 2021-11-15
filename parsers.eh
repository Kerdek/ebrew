type
  Expr {
    s @Expr
    a @Expr
    q @(e @Expr c nat) nat
    k  K
    t  T
    u  T
    c  nat
  }

  E @Expr

  Scope {
    s        @Scope
    k        K
    t        T
    e        E
    is_type  nat
    is_def   nat
  }

  O @Scope

  txo   (x X o O    ) T
  lhs   (x X o O    ) E
  rhs   (x X o O a E) E
;

export ptype  txo

export p2     lhs
export p3     lhs
export p4     lhs
export p5     lhs
export p7     lhs
export pmul   lhs
export padd   lhs
export psh    lhs
export pcmp   lhs
export pland  lhs

export decls      (x X o O     ) none
export declarator (x X o O t @T) none

export jadv   (x X        ) K
export jeq    (x X c @byte) nat
export expect (x X c @byte) none
export consume(x X c @byte) nat

export try_search_scope(o O c @byte n nat) O

export search_scope(x X o O c @byte n nat) @Scope
