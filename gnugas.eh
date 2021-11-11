argreg(d N) S = {
  (d == 0) ? "rdi"
  (d == 1) ? "rsi"
  (d == 2) ? "rdx"
  (d == 3) ? "rcx"
  (d == 4) ? "r8"
             "r9"
}

gtreg(s S        ) none = { gc '%' gs s }
gt0  (s S        ) none = { gs s glf  }
gt1  (s S a S    ) none = { gs s gc ' ' gtreg a glf }
gt2  (s S a S b S) none = { gs s gc ' ' gtreg a gc ',' gtreg b glf }

gtz (a S) none = gt2  "xor"  a a
gtcz(a S) none = gt2  "test" a a

gtlit(l N a S) none = (!!l ? { gs "mov $" gn l gc ',' gtreg a glf } gtz  a)

gtnot(    a S) none = gt1 "not" a
gtneg(    a S) none = gt1 "neg" a
gmul (    a S) none = gt1 "mul" a
gdiv (       ) none = { gtz "edx" gt1 "div" "rdi" }
gmod (       ) none = { gdiv
                        gt2 "mov" "rdx" "rax" }
gshx (x C    ) none = { gt2 "mov" "dil" "cl" gs "sh" gc x gs " %cl,%rax" glf }

gadd (a S b S) none = gt2 "add" a b
gsub (a S b S) none = gt2 "sub" a b
gand (a S b S) none = gt2 "and" a b
gor  (a S b S) none = gt2 "or"  a b
gxor (a S b S) none = gt2 "xor" a b
gcmp (a S b S) none = gt2 "cmp" a b
gshr () none = gshx 'r'
gshl () none = gshx 'l'

gpromote(b S) none = gt2 "movzbl" "al" b

gsetf     (s S     b S    ) none = { gs "set" gs s gc ' ' gtreg "al" glf gpromote b }
gcmp_setf (s S a S b S c S) none = { gcmp a b gsetf s c }
gcmpz_setf(s S a S b S    ) none = { gtcz a   gsetf s b }
glnot     (    a S b S    ) none = { gcmpz_setf "e" a b }

gj        (k K l S    ) none = { gs "jmp " gs l gn cast nat k gc '$' glf }
gjc       (k K l S s S) none = { gs "j" gs s gc ' ' gs l gn cast nat k gc '$' glf }
glabel    (k K l S    ) none = { gs l gn cast nat k gs "$:" glf }

gje  (k K l S) none = gjc k l "e"
gjne (k K l S) none = gjc k l "ne"
gjb  (k K l S) none = gjc k l "b"
gjbe (k K l S) none = gjc k l "be"
gja  (k K l S) none = gjc k l "a"
gjae (k K l S) none = gjc k l "ae"

gegcmp(s S) none = gcmp_setf s "rdi" "rax" "eax"

ge  () none = gegcmp "e"
gne () none = gegcmp "ne"
gb  () none = gegcmp "b"
gbe () none = gegcmp "be"
ga  () none = gegcmp "a"
gae () none = gegcmp "ae"

gfpush(c @N  l N) none = { !!l then gs "sub $" gn (l << 3) gc ',' gtreg "rsp" glf (c@ = c@ + l) }
gfpop (c @N  l N) none = { !!l then gs "add $" gn (l << 3) gc ',' gtreg "rsp" glf (c@ = c@ - l) }
gpush (c @N  d S) none = { gt1 "push" d (c@ = c@ + 1) }
gpop  (c @N  s S) none = { gt1 "pop"  s (c@ = c@ - 1) }

gindex(      l N) none = { !!l then gs  "add $" gn  l gc  ',' gtreg  "rax" glf  }
