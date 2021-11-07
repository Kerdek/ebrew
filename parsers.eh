export ptype  tko

export p2     eko
export p3     eko
export p4     eko
export p5     eko
export p7     eko
export pmul   eko
export padd   eko
export psh    eko
export pcmp   eko
export pland  eko

export decls(x X o O) none
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
