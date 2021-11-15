argreg(d nat) @byte = {
  (d == 0) ? "rdi"
  (d == 1) ? "rsi"
  (d == 2) ? "rdx"
  (d == 3) ? "rcx"
  (d == 4) ? "r8"
             "r9"
}

gtreg(s @byte        ) none = { gc '%' gs s }
gt0  (s @byte        ) none = { gs s glf  }
gt1  (s @byte a @byte    ) none = { gs s gc ' ' gtreg a glf }
gt2  (s @byte a @byte b @byte) none = { gs s gc ' ' gtreg a gc ',' gtreg b glf }

gtz (a @byte) none = gt2  "xor"  a a
gtcz(a @byte) none = gt2  "test" a a

gtlit(l nat a @byte) none = (!!l ? { gs "mov $" gn l gc ',' gtreg a glf } gtz  a)

gtnot(    a @byte) none = gt1 "not" a
gtneg(    a @byte) none = gt1 "neg" a
gmul (    a @byte) none = gt1 "mul" a
gdiv (       ) none = { gtz "edx" gt1 "div" "rdi" }
gmod (       ) none = { gdiv
                        gt2 "mov" "rdx" "rax" }
gshx (x byte    ) none = { gt2 "mov" "dil" "cl" gs "sh" gc x gs " %cl,%rax" glf }

gadd (a @byte b @byte) none = gt2 "add" a b
gsub (a @byte b @byte) none = gt2 "sub" a b
gand (a @byte b @byte) none = gt2 "and" a b
gor  (a @byte b @byte) none = gt2 "or"  a b
gxor (a @byte b @byte) none = gt2 "xor" a b
gcmp (a @byte b @byte) none = gt2 "cmp" a b
gshr () none = gshx 'r'
gshl () none = gshx 'l'

gpromote(b @byte) none = gt2 "movzbl" "al" b

gsetf     (s @byte     b @byte    ) none = { gs "set" gs s gc ' ' gtreg "al" glf gpromote b }
gcmp_setf (s @byte a @byte b @byte c @byte) none = { gcmp a b gsetf s c }
gcmpz_setf(s @byte a @byte b @byte    ) none = { gtcz a   gsetf s b }
glnot     (    a @byte b @byte    ) none = { gcmpz_setf "e" a b }

gj        (k K l @byte    ) none = { gs "jmp " gs l gn cast nat k gc '$' glf }
gjc       (k K l @byte s @byte) none = { gs "j" gs s gc ' ' gs l gn cast nat k gc '$' glf }
glabel    (k K l @byte    ) none = { gs l gn cast nat k gs "$:" glf }

gje  (k K l @byte) none = gjc k l "e"
gjne (k K l @byte) none = gjc k l "ne"
gjb  (k K l @byte) none = gjc k l "b"
gjbe (k K l @byte) none = gjc k l "be"
gja  (k K l @byte) none = gjc k l "a"
gjae (k K l @byte) none = gjc k l "ae"

gegcmp(s @byte) none = gcmp_setf s "rdi" "rax" "eax"

ge  () none = gegcmp "e"
gne () none = gegcmp "ne"
gb  () none = gegcmp "b"
gbe () none = gegcmp "be"
ga  () none = gegcmp "a"
gae () none = gegcmp "ae"

gfpush(c @nat  l nat) none = { !!l then gs "sub $" gn (l << 3) gc ',' gtreg "rsp" glf (c@ = c@ + l) }
gfpop (c @nat  l nat) none = { !!l then gs "add $" gn (l << 3) gc ',' gtreg "rsp" glf (c@ = c@ - l) }
gpush (c @nat  d @byte) none = { gt1 "push" d (c@ = c@ + 1) }
gpop  (c @nat  s @byte) none = { gt1 "pop"  s (c@ = c@ - 1) }

gindex(l nat) none = { l then gs "add $" gn l gc ',' gtreg "rax" glf }
