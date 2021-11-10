type
  Expr {
    s @Expr
    a @Expr
    q @(e @Expr c N l N) N
    k  K
    t  T
    u  T
    c  N
  }

  E @Expr

  X @K

  Scope {
    s        @Scope
    k        K
    t        T
    e        E
    is_type  N
    is_def   N
  }

  O @Scope

  txo   (x X o O        ) T
  exo   (x X o O        ) E
  exoa  (x X o O     a E) E
;

export ptype  txo

export p2     exo
export p3     exo
export p4     exo
export p5     exo
export p7     exo
export pmul   exo
export padd   exo
export psh    exo
export pcmp   exo
export pland  exo

export decls      (x X o O     ) none
export declarator (x X o O t @T) none

jadv   (x X    ) K    = { x@ ret (x@ = x.s) }
jeq    (x X c S) nat  = { x@ then memcmp x.p c x.n then !c^x.n }
expect (x X c S) none = { { !jeq x c then diag "unexpected" } jadv x }
consume(x X c S) nat  = { jeq x c is r { r then jadv x } r }

try_search_scope(o O c S n N) O = {
  cast O 0 is r
  { o then
    o for oi
    (n != oi.k.n or !strncmp oi.k.p c n) ?
      oi.s
      { (r = oi)
        cast O 0 } }
  r
}

search_scope(x X o O c S n N) @Scope = {
  try_search_scope o c n else
  diag "lookup failed"
}
