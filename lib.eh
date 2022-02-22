load  (a  ) ?
store (a b) ?
peek  (a  ) ?
poke  (a b) ?
add   (a b) ?
sub   (a b) ?
mul   (a b) ?
div   (a b) ?
mod   (a b) ?
shl   (a b) ?
cmpa  (a b) ?
cmpe  (a b) ?
cmpne (a b) ?
neg   (a  ) ?
not   (a  ) ?
linux (rdi rsi rdx rcx r8 r9 rax) ?

struct ( ) 8

copy (a b) store a load b

member-copy (copy (a b) member (x) a b) copy member a member b

pair-copy (copy-a (a b) member-a (x) copy-b (a b) member-b (x) a b)
do  member-copy copy-a member-a a b
    member-copy copy-b member-b a b

cmpin (a b c)
not or  cmpa a b
        cmpa c a

suc (a) add 1 a
prd (a) sub 1 a

post (op (a) -a)
let (load -a) a
do  store -a (op a)
    a

inc (-a) post suc -a
dec (-a) post prd -a

pow2 (n) shl n 1

exit   (a  ) linux a 0 0 0 0 0 60
brk    (a  ) linux a 0 0 0 0 0 12
stdin  (p n) linux 0 p n 0 0 0 0
stdout (p n) linux 1 p n 0 0 0 1
stderr (p n) linux 2 p n 0 0 0 1

initbrk (n)
let brk 0 i
do  brk add n i
    i

alloc (mem n)
let load mem r
do  store mem add n load mem
    r

retry (stdio (p n) a b)
let (neg 1) err
for a i
and not cmpe i err
let stdio i sub i b n
if  cmpe n err
	err
and n
	add n i

runtime (main (in out brk) heap inbuf outbuf)
let initbrk heap   in
let add in  inbuf  out
let add out outbuf brk
do  poke retry stdin in add in inbuf 0
do  retry stdout out main in out brk
    exit 0

strlen (s)
and peek s
	suc strlen suc s

strncmp (a b n)
or  not n
and cmpe (peek a) (peek b)
    strncmp (suc a) (suc b) (prd n)

put (out c)
let load out p
do  poke p c
    store out add 1 p

put-higit (out n) put out add if cmpa n 10 '0 '7 n

put-bhex (out n)
do  put-higit out div 16 n
    put-higit out mod 16 n

put-digit (out n) put out add '0 n

put-digits (out n)
and n
do  put-digits out div 10 n
    put-digit  out mod 10 n

put-number (out n)
if  n put-digits out if n n '0
    put out '0

put-cm (out) put out ',
put-sp (out) put out ' 
put-ds (out) put out '$
put-cr (out) put out '\r
put-lf (out) put out '\n

# write the bytes in [a, b) to `out` using `vput` #

vput-mem (vput (out a) out a b)
for a i
and cmpa i b
do  vput out (peek i)
    suc i

# write the bytes in string `s` to `out` using `vput` #

vput-string (vput (out a) out s)
for s p
let (peek p) a
and a
do  vput out a
    suc p

put-string (out s) vput-string put out s

put-delim (delim (out) out s)
do  put-string out s
    delim out

put-seq  (out s) put-delim put-sp out s
put-list (out s) put-delim put-cm out s
put-line (out s) put-delim put-lf out s

println (s) do retry stderr s add s strlen s stderr "\n" 1

err (code s) do retry stderr s add s strlen s do stderr "\n" 1 exit code
