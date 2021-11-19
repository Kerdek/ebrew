export ptype  (x X) @Type

export p2     (x X) nat
export p3     (x X) nat
export p4     (x X) nat
export p5     (x X) nat
export p7     (x X) nat
export p8     (x X) nat
export pmul   (x X) nat
export padd   (x X) nat
export psh    (x X) nat
export pcmp   (x X) nat
export pland  (x X) nat

export decls      (x X     ) none
export declarator (x X t @@Type) none

export jadv    (x X        ) none
export jeq     (x X c @byte) nat
export expect  (x X c @byte) none
export consume (x X c @byte) nat

export try_search_scope (x X) X
export search_scope     (x X) X

gcast (x X) none = {
  (x.t.kind == 0) ?
    gtz x "eax"
    { (x.t.kind == 1) then
      gpromote x "eax" }
}

gaddr (x X t T n nat s @byte d @byte) none = {
  (n or !strcmp s d) then
  gs x "lea " { n then gn x n } gs x "(%" gs x s gs x "),%" gs x d glf x
}

gload (x X t T n nat s @byte d @byte) none = {
  (t.kind == 1) ?
    { gs x  "movzbq " gn x n gs x "(%" gs x s gs x "),%" gs x  d glf x }
    { gs x  "mov "    gn x n gs x "(%" gs x s gs x "),%" gs x  d glf x }
}

gstore (x X t T d @byte) none = {
  (t.kind == 1) ?
    { gs x "mov %al,(%"  gs x d gc x ')' glf x }
    { gs x "mov %rax,(%" gs x d gc x ')' glf x }
}

geval (x X l nat) none = {
  x.l for l2
  (l2 > l) then
  (l2 == 1 and l == 0) ?
    (x.t.kind == 5 or x.t.kind == 3 or gload x x.t 0 "rax" "rax")
    { gt0 x "mov (%rax),%rax" }
  (l2 - 1)
}

xret (x X t T l nat) none = {
  (x.t = t)
  (x.l = l)
}

g1ops (x X p@ (x X) nat) none = {
  p@ x
  geval x 0
  xret x nnat x 0
}

g2ops (x X p@ (x X) nat) none = {
  geval x 0
  gpush x "rax"
  p@ x
  geval x 0
  gt0 x "mov %rax,%rdi"
  gpop x "rax"
  xret x nnat x 0
}
