gc (c byte) none = write &c 1
gs (s @byte) none = write s strlen s
gsn(s @byte n nat) none = write s n
gk (k K) none = gsn k.p k.n
glf() none = gc '\n'
gn1(n nat) none = { n then gn1 (n / 10) gc cast byte ('0' + n % 10) }
gn (n nat) none = { n ? gn1 n gc '0' }

oc (c byte) none = err &c 1
os (s @byte) none = err s strlen s
osn(s @byte n nat) none = err s n
ok (k K) none = osn k.p k.n
olf(   ) none = oc '\n'
on1(n nat) none = { n then on1 (n / 10) oc cast byte ('0' + n % 10) }
on (n nat) none = { n ? on1 n oc '0' }

diag  (s @byte) none = { os s olf exit 1 }
kdiag (k K s @byte) none = {
  { k.p for q (q@ and q@ != '\n') then (&q^(-1)) } is begin_line
  { k.p for q (q@ and q@ != '\n') then (&q^1) } is end_line
  oc '(' on k.line oc ',' on k.col os "): " osn &begin_line^1 (end_line - begin_line)
  diag s
}