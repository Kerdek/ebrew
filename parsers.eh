export ptype  (x X) T

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
export declarator (x X t @T) none

export jadv   (x X        ) K
export jeq    (x X c @byte) nat
export expect (x X c @byte) none
export consume(x X c @byte) nat

export try_search_scope(o O c @byte n nat) O

export search_scope(x X c @byte n nat) @Scope
