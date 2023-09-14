.globl _start
.equ _start,F5F7374617274
.section .text.F6C696E7578
F6C696E7578:
mov 8(%rsp),%rax
mov 16(%rsp),%r9
mov 24(%rsp),%r8
mov 32(%rsp),%rcx
mov 40(%rsp),%rdx
mov 48(%rsp),%rsi
mov 56(%rsp),%rdi
syscall
ret
.section .text.F73746F7265
F73746F7265:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
mov %rsi,(%rdi)
mov %rdi,%rax
ret
.section .text.F706F6B65
F706F6B65:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
movb %sil,(%rdi)
ret
.section .text.F616464
F616464:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
mov %rsi,%rax
add %rdi,%rax
ret
.section .text.F737562
F737562:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
mov %rsi,%rax
sub %rdi,%rax
ret
.section .text.F6D756C
F6D756C:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
mov %rsi,%rax
mul %rdi
ret
.section .text.F646976
F646976:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
xor %edx,%edx
mov %rsi,%rax
div %rdi
ret
.section .text.F6D6F64
F6D6F64:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
xor %edx,%edx
mov %rsi,%rax
div %rdi
mov %rdx,%rax
ret
.section .text.F73686C
F73686C:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
mov %rsi,%rax
mov %rdi,%rcx
shl %cl,%rax
ret
.section .text.F61626F7665
F61626F7665:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
cmp %rdi,%rsi
seta %al
movzbl %al,%eax
ret
.section .text.F657175616C
F657175616C:
mov 8(%rsp),%rsi
mov 16(%rsp),%rdi
cmp %rsi,%rdi
sete %al
movzbl %al,%eax
ret
.section .text.F6C6F6164
F6C6F6164:
mov 8(%rsp),%rdi
mov (%rdi),%rax
ret
.section .text.F7065656B
F7065656B:
mov 8(%rsp),%rdi
movzb (%rdi),%eax
ret
.section .text.F6E6567
F6E6567:
mov 8(%rsp),%rdi
mov %rdi,%rax
neg %rax
ret
.section .text.F6E6F74
F6E6F74:
mov 8(%rsp),%rdi
test %rdi,%rdi
sete %al
movzbl %al,%eax
ret
.section .text.F776F7264
F776F7264:
mov $8,%rax
ret
.section .text.F72616E6765
F72616E6765:
mov %rsp,%rax
mov F6E6F74@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov F61626F7665@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov 40(%rax),%rax
push %rax
mov %rsp,%rax
mov 40(%rax),%rax
push %rax
mov 16(%rsp),%rax
call *%rax
add $24,%rsp
test %rax,%rax
jne L1
mov %rsp,%rax
mov F61626F7665@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov 24(%rax),%rax
push %rax
mov %rsp,%rax
mov 48(%rax),%rax
push %rax
mov 16(%rsp),%rax
call *%rax
add $24,%rsp
L1:
push %rax
mov 8(%rsp),%rax
call *%rax
add $16,%rsp
ret
.section .text.F746F
F746F:
mov %rsp,%rax
mov F6C6F6164@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov 32(%rax),%rax
push %rax
mov 8(%rsp),%rax
call *%rax
add $16,%rsp
push %rax
L8:
mov %rax,(%rsp)
mov %rsp,%rax
mov F73746F7265@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov 40(%rax),%rax
push %rax
mov %rsp,%rax
mov 40(%rax),%rax
push %rax
mov %rsp,%rax
mov 40(%rax),%rax
push %rax
mov %rsp,%rax
mov 32(%rax),%rax
push %rax
mov 16(%rsp),%rax
call *%rax
add $24,%rsp
push %rax
mov 16(%rsp),%rax
call *%rax
add $24,%rsp
mov %rsp,%rax
mov 0(%rax),%rax
L11:
pop %rbx
ret
.section .text.F706F7732
F706F7732:
mov %rsp,%rax
mov F73686C@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov 16(%rax),%rax
push %rax
mov $1,%rax
push %rax
mov 16(%rsp),%rax
call *%rax
add $24,%rsp
ret
.section .text.F73756363657373697665
F73756363657373697665:
mov %rsp,%rax
mov F616464@GOTPCREL(%rip),%rax
push %rax
mov $1,%rax
push %rax
mov %rsp,%rax
mov 24(%rax),%rax
push %rax
mov 16(%rsp),%rax
call *%rax
add $24,%rsp
ret
.section .text.F707265636564696E67
F707265636564696E67:
mov %rsp,%rax
mov F737562@GOTPCREL(%rip),%rax
push %rax
mov $1,%rax
push %rax
mov %rsp,%rax
mov 24(%rax),%rax
push %rax
mov 16(%rsp),%rax
call *%rax
add $24,%rsp
ret
.section .text.F696E63
F696E63:
mov %rsp,%rax
mov F746F@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov 16(%rax),%rax
push %rax
mov %rsp,%rax
mov F616464@GOTPCREL(%rip),%rax
push %rax
mov $1,%rax
push %rax
mov 24(%rsp),%rax
call *%rax
add $32,%rsp
ret
.section .text.F646563
F646563:
mov %rsp,%rax
mov F746F@GOTPCREL(%rip),%rax
push %rax
mov %rsp,%rax
mov 16(%rax),%rax
push %rax
mov %rsp,%rax
mov F737562@GOTPCREL(%rip),%rax
push %rax
mov $1,%rax
push %rax
mov 24(%rsp),%rax
call *%rax
add $32,%rsp
ret
