gc (c C) none = write &c 1
gs (s S) none = write s strlen s
gsn(s S n N) none = write s n
gk (k K) none = gsn k.p k.n
glf() none = gc '\n'
gn1(n N) none = { n then gn1 (n / 10) gc cast byte ('0' + n % 10) }
gn (n N) none = { n ? gn1 n gc '0' }

oc (c C) none = err &c 1
os (s S) none = err s strlen s
osn(s S n N) none = err s n
ok (k K) none = osn k.p k.n
olf(   ) none = oc '\n'
on1(n N) none = { n then on1 (n / 10) oc cast byte ('0' + n % 10) }
on (n N) none = { n ? on1 n oc '0' }

diag (s S) none = { os s olf exit 1 }
