gc (x X c byte) none = { (x.q@ = c) (x.q = &x.q^1) }
gs (x X s @byte) none = { s for p p@ then gc x p@ &p^1 }
gsn(x X s @byte n nat) none = { 0 for m (m < n) then gc x s^m (m + 1) }
glf(x X) none = gc x '\n'
gn1(x X n nat) none = { n then gn1 x (n / 10) gc x cast byte ('0' + n % 10) }
gn (x X n nat) none = { n ? gn1 x n gc x '0' }

oc ( c byte) none = err &c 1
os ( s @byte) none = err s strlen s
osn( s @byte n nat) none = err s n
olf() none = oc '\n'
on1( n nat) none = { n then on1 (n / 10) oc cast byte ('0' + n % 10) }
on ( n nat) none = { n ? on1 n oc '0' }

diag  (s @byte) none = { os s olf exit 1 }
kdiag (x X s @byte) none = {
  { x.kp for q (q@ and q@ != '\n') then (&q^(-1)) } is begin_line
  { x.kp for q (q@ and q@ != '\n') then (&q^1) } is end_line
  oc '(' on x.line oc ',' on x.col os "): " osn &begin_line^1 (end_line - begin_line)
  diag s
}