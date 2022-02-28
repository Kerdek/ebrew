.globl _start
.equ _start,f5F7374617274
.globl f6C6F6164
.section .text.f6C6F6164
f6C6F6164:
mov (%rdi),%rax
ret
.globl f73746F7265
.section .text.f73746F7265
f73746F7265:
mov %rsi,(%rdi)
ret
.globl f7065656B
.section .text.f7065656B
f7065656B:
movzb (%rdi),%eax
ret
.globl f706F6B65
.section .text.f706F6B65
f706F6B65:
movb %sil,(%rdi)
ret
.globl f616464
.section .text.f616464
f616464:
mov %rsi,%rax
add %rdi,%rax
ret
.globl f737562
.section .text.f737562
f737562:
mov %rsi,%rax
sub %rdi,%rax
ret
.globl f6D756C
.section .text.f6D756C
f6D756C:
mov %rsi,%rax
mul %rdi
ret
.globl f646976
.section .text.f646976
f646976:
xor %edx,%edx
mov %rsi,%rax
div %rdi
ret
.globl f6D6F64
.section .text.f6D6F64
f6D6F64:
xor %edx,%edx
mov %rsi,%rax
div %rdi
mov %rdx,%rax
ret
.globl f73686C
.section .text.f73686C
f73686C:
mov %rsi,%rax
mov %rdi,%rcx
shl %cl,%rax
ret
.globl f636D7061
.section .text.f636D7061
f636D7061:
cmp %rdi,%rsi
seta %al
movzbl %al,%eax
ret
.globl f636D7065
.section .text.f636D7065
f636D7065:
cmp %rsi,%rdi
sete %al
movzbl %al,%eax
ret
.globl f636D706E65
.section .text.f636D706E65
f636D706E65:
cmp %rsi,%rdi
setne %al
movzbl %al,%eax
ret
.globl f6E6567
.section .text.f6E6567
f6E6567:
mov %rdi,%rax
neg %rax
ret
.globl f6E6F74
.section .text.f6E6F74
f6E6F74:
test %rdi,%rdi
sete %al
movzbl %al,%eax
ret
.globl f6C696E7578
.section .text.f6C696E7578
f6C696E7578:
mov 8(%rsp),%rax
syscall
ret
.section .text.f737472756374
f737472756374:
mov $8,%rax
ret
.section .text.f636F7079
f636F7079:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6D656D6265722D636F7079
f6D656D6265722D636F7079:
push %rdi
push %rsi
push %rdx
push %rcx
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $32,%rsp
ret
.section .text.f706169722D636F7079
f706169722D636F7079:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov f6D656D6265722D636F7079@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov f6D656D6265722D636F7079@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
.0$:
add $48,%rsp
ret
.section .text.f636D70696E
f636D70696E:
push %rdi
push %rsi
push %rdx
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .1$
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.1$:
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $24,%rsp
ret
.section .text.f737563
f737563:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f707264
f707264:
push %rdi
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f706F7374
f706F7374:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.3$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f696E63
f696E63:
push %rdi
mov f706F7374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f737563@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f646563
f646563:
push %rdi
mov f706F7374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f707264@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f706F7732
f706F7732:
push %rdi
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f65786974
f65786974:
push %rdi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov $0,%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $60,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $8,%rsp
ret
.section .text.f62726B
f62726B:
push %rdi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov $0,%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $12,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $8,%rsp
ret
.section .text.f737464696E
f737464696E:
push %rdi
push %rsi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov $0,%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $0,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $16,%rsp
ret
.section .text.f7374646F7574
f7374646F7574:
push %rdi
push %rsi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $1,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $16,%rsp
ret
.section .text.f737464657272
f737464657272:
push %rdi
push %rsi
mov f6C696E7578@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov $2,%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
mov $0,%rax
mov %rax,48(%rsp)
mov $1,%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $16,%rsp
ret
.section .text.f696E697462726B
f696E697462726B:
push %rdi
mov f62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $0,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f62726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 0(%rsp),%rax
.5$:
add $8,%rsp
add $8,%rsp
ret
.section .text.f616C6C6F63
f616C6C6F63:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.7$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f7265747279
f7265747279:
push %rdi
push %rsi
push %rdx
mov $0,%rax
push %rax
mov 16(%rsp),%rax
push %rax
jmp b.10$
.10$:
mov %rax,(%rsp)
b.10$:
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f6E6567@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .13$
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 40(%rsp),%rax
mov %rax,8(%rsp)
mov f6E6567@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.13$:
mov 0(%rsp),%rax
test %rax,%rax
je .14$
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.14$:
.12$:
add $8,%rsp
test %rax,%rax
jne .10$
pop %rax
push %rax
mov 8(%rsp),%rax
test %rax,%rax
jne .15$
mov 0(%rsp),%rax
.15$:
add $8,%rsp
add $8,%rsp
add $24,%rsp
ret
.section .text.f72756E74696D65
f72756E74696D65:
push %rdi
push %rsi
push %rdx
push %rcx
mov f696E697462726B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 24(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 32(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f706F6B65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7265747279@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f737464696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
mov 112(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7265747279@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7374646F7574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov 80(%rsp),%rax
add $-24,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 80(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f65786974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $0,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.20$:
.19$:
add $8,%rsp
add $8,%rsp
add $8,%rsp
add $32,%rsp
ret
.section .text.f7374726C656E
f7374726C656E:
push %rdi
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .21$
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374726C656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.21$:
add $8,%rsp
ret
.section .text.f7374726E636D70
f7374726E636D70:
push %rdi
push %rsi
push %rdx
mov $1,%rax
push %rax
mov 8(%rsp),%rax
test %rax,%rax
je .23$
mov 8(%rsp),%rax
push %rax
jmp b.25$
.25$:
mov %rax,(%rsp)
b.25$:
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .26$
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .27$
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
lea 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.29$:
.28$:
.27$:
jmp .30$
.26$:
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 32(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov $0,%rax
.31$:
.30$:
test %rax,%rax
jne .25$
pop %rax
mov 0(%rsp),%rax
.24$:
.23$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f707574
f707574:
push %rdi
push %rsi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f706F6B65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.33$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f7075742D6869676974
f7075742D6869676974:
push %rdi
push %rsi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $10,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .34$
mov $'0,%rax
jmp .35$
.34$:
mov $'7,%rax
.35$:
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7075742D62686578
f7075742D62686578:
push %rdi
push %rsi
mov f7075742D6869676974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f646976@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $16,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6869676974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f6D6F64@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $16,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.36$:
add $16,%rsp
ret
.section .text.f7075742D6469676974
f7075742D6469676974:
push %rdi
push %rsi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $'0,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7075742D646967697473
f7075742D646967697473:
push %rdi
push %rsi
mov 0(%rsp),%rax
test %rax,%rax
je .37$
mov f7075742D646967697473@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f646976@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $10,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6469676974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f6D6F64@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $10,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.38$:
.37$:
add $16,%rsp
ret
.section .text.f7075742D6E756D626572
f7075742D6E756D626572:
push %rdi
push %rsi
mov 0(%rsp),%rax
test %rax,%rax
je .39$
mov f7075742D646967697473@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
test %rax,%rax
je .40$
mov 24(%rsp),%rax
jmp .41$
.40$:
mov $'0,%rax
.41$:
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
jmp .42$
.39$:
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.42$:
add $16,%rsp
ret
.section .text.f7075742D636D
f7075742D636D:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $',,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D7370
f7075742D7370:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $' ,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D6473
f7075742D6473:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'$,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D6372
f7075742D6372:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\r,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7075742D6C66
f7075742D6C66:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\n,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f767075742D6D656D
f767075742D6D656D:
push %rdi
push %rsi
push %rdx
push %rcx
mov 8(%rsp),%rax
push %rax
jmp b.43$
.43$:
mov %rax,(%rsp)
b.43$:
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .44$
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.45$:
.44$:
test %rax,%rax
jne .43$
pop %rax
add $32,%rsp
ret
.section .text.f767075742D737472696E67
f767075742D737472696E67:
push %rdi
push %rsi
push %rdx
mov 0(%rsp),%rax
push %rax
jmp b.46$
.46$:
mov %rax,(%rsp)
b.46$:
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 0(%rsp),%rax
test %rax,%rax
je .48$
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.49$:
.48$:
add $8,%rsp
test %rax,%rax
jne .46$
pop %rax
add $24,%rsp
ret
.section .text.f7075742D737472696E67
f7075742D737472696E67:
push %rdi
push %rsi
mov f767075742D737472696E67@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f707574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7075742D64656C696D
f7075742D64656C696D:
push %rdi
push %rsi
push %rdx
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.50$:
add $24,%rsp
ret
.section .text.f7075742D736571
f7075742D736571:
push %rdi
push %rsi
mov f7075742D64656C696D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7075742D7370@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7075742D6C697374
f7075742D6C697374:
push %rdi
push %rsi
mov f7075742D64656C696D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7075742D636D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7075742D6C696E65
f7075742D6C696E65:
push %rdi
push %rsi
mov f7075742D64656C696D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7072696E746C6E
f7072696E746C6E:
push %rdi
mov f7265747279@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f737464657272@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov f7374726C656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f737464657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s52
.s52:
.string,"\n"
.previous
mov .s52@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.51$:
add $8,%rsp
ret
.section .text.f657272
f657272:
push %rdi
push %rsi
mov f7265747279@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f737464657272@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov f7374726C656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f737464657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s55
.s55:
.string,"\n"
.previous
mov .s55@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f65786974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.54$:
.53$:
add $16,%rsp
ret
.section .text.f626F6F6B2D2D6E657874
f626F6F6B2D2D6E657874:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f626F6F6B2D2D6C696E65
f626F6F6B2D2D6C696E65:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f626F6F6B2D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D626F6F6B
f7374727563742D626F6F6B:
mov f626F6F6B2D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f626F6F6B2D7365742D6E657874
f626F6F6B2D7365742D6E657874:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f626F6F6B2D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f626F6F6B2D7365742D6C696E65
f626F6F6B2D7365742D6C696E65:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f626F6F6B2D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f626F6F6B2D6765742D6E657874
f626F6F6B2D6765742D6E657874:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f626F6F6B2D2D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f626F6F6B2D6765742D6C696E65
f626F6F6B2D6765742D6C696E65:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f626F6F6B2D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f747970652D2D61726773
f747970652D2D61726773:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f747970652D2D6B696E64
f747970652D2D6B696E64:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D74797065
f7374727563742D74797065:
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f747970652D7365742D61726773
f747970652D7365742D61726773:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f747970652D7365742D6B696E64
f747970652D7365742D6B696E64:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f747970652D6765742D61726773
f747970652D6765742D61726773:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f747970652D6765742D6B696E64
f747970652D6765742D6B696E64:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D2D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6465636C2D2D746F6B656E
f6465636C2D2D746F6B656E:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f6465636C2D2D74797065
f6465636C2D2D74797065:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6465636C2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6465636C
f7374727563742D6465636C:
mov f6465636C2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f6465636C2D7365742D746F6B656E
f6465636C2D7365742D746F6B656E:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6465636C2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6465636C2D7365742D74797065
f6465636C2D7365742D74797065:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6465636C2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6465636C2D746F6B656E
f6465636C2D746F6B656E:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6465636C2D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6465636C2D6765742D74797065
f6465636C2D6765742D74797065:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6465636C2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7370616E2D2D7374617274
f7370616E2D2D7374617274:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f7370616E2D2D656E64
f7370616E2D2D656E64:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7370616E2D2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D7370616E
f7374727563742D7370616E:
mov f7370616E2D2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f7370616E2D7365742D7374617274
f7370616E2D7365742D7374617274:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7370616E2D2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7370616E2D7365742D656E64
f7370616E2D7365742D656E64:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7370616E2D2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7370616E2D7374617274
f7370616E2D7374617274:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7370616E2D2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7370616E2D656E64
f7370616E2D656E64:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7370616E2D2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D6C696E65
f6C6F632D2D6C696E65:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f6C6F632D2D636F6C
f6C6F632D2D636F6C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6C6F63
f7374727563742D6C6F63:
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f6C6F632D7365742D6C696E65
f6C6F632D7365742D6C696E65:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6C6F632D7365742D636F6C
f6C6F632D7365742D636F6C:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6C6F632D6765742D6C696E65
f6C6F632D6765742D6C696E65:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F632D2D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D6765742D636F6C
f6C6F632D6765742D636F6C:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F632D2D636F6C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f63617265742D2D707472
f63617265742D2D707472:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f63617265742D6C6F63
f63617265742D6C6F63:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6361726574
f7374727563742D6361726574:
mov f63617265742D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6C6F63@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f63617265742D7365742D707472
f63617265742D7365742D707472:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f63617265742D6765742D707472
f63617265742D6765742D707472:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D2D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D6765742D7370616E
f746F6B656E2D6765742D7370616E:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D6765742D6361726574
f746F6B656E2D6765742D6361726574:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D7370616E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D746F6B656E
f7374727563742D746F6B656E:
mov f746F6B656E2D6765742D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7374727563742D6361726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f6E616D652D746F6B656E
f6E616D652D746F6B656E:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f6E616D652D2D766172
f6E616D652D2D766172:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D746F6B656E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D6E616D65
f7374727563742D6E616D65:
mov f6E616D652D2D766172@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f6E616D652D7365742D766172
f6E616D652D7365742D766172:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6E616D652D2D766172@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6E616D652D766172
f6E616D652D766172:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6E616D652D2D766172@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7661722D2D74797065
f7661722D2D74797065:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f7661722D2D696D706C
f7661722D2D696D706C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7661722D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D766172
f7374727563742D766172:
mov f7661722D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f7661722D7365742D74797065
f7661722D7365742D74797065:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7661722D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7661722D7365742D696D706C
f7661722D7365742D696D706C:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7661722D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7661722D74797065
f7661722D74797065:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7661722D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7661722D696D706C
f7661722D696D706C:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7661722D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D626F6F6B
f73656D2D2D626F6F6B:
push %rdi
mov 0(%rsp),%rax
add $8,%rsp
ret
.section .text.f73656D2D2D6D656D
f73656D2D2D6D656D:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D6F7574
f73656D2D2D6F7574:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D746F6B656E
f73656D2D746F6B656E:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D74797065
f73656D2D2D74797065:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7374727563742D746F6B656E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D76616C
f73656D2D2D76616C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D697363
f73656D2D2D697363:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D76616C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D666C616B65
f73656D2D2D666C616B65:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D697363@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D2D696D706C
f73656D2D2D696D706C:
push %rdi
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f7374727563742D73656D
f7374727563742D73656D:
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f737472756374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
ret
.section .text.f73656D2D7365742D74797065
f73656D2D7365742D74797065:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D7365742D76616C
f73656D2D7365742D76616C:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D76616C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D7365742D697363
f73656D2D7365742D697363:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D697363@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D7365742D666C616B65
f73656D2D7365742D666C616B65:
push %rdi
push %rsi
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D6765742D6F7574
f73656D2D6765742D6F7574:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D6765742D626F6F6B
f73656D2D6765742D626F6F6B:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D6765742D696D706C
f73656D2D6765742D696D706C:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D6765742D74797065
f73656D2D6765742D74797065:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D6765742D76616C
f73656D2D6765742D76616C:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D76616C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D6765742D697363
f73656D2D6765742D697363:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D697363@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D6765742D666C616B65
f73656D2D6765742D666C616B65:
push %rdi
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7370616E2D696E6974
f7370616E2D696E6974:
push %rdi
push %rsi
push %rdx
mov f7370616E2D7365742D7374617274@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7370616E2D7365742D656E64@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.56$:
add $24,%rsp
ret
.section .text.f7370616E2D636F7079
f7370616E2D636F7079:
push %rdi
push %rsi
mov f7370616E2D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7370616E2D657175616C2D72657374
f7370616E2D657175616C2D72657374:
push %rdi
push %rsi
push %rdx
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .57$
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .58$
mov f7370616E2D657175616C2D72657374@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f707264@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.58$:
.57$:
add $24,%rsp
ret
.section .text.f7370616E2D657175616C
f7370616E2D657175616C:
push %rdi
push %rsi
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .63$
mov f7370616E2D657175616C2D72657374@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.63$:
add $8,%rsp
add $8,%rsp
add $8,%rsp
add $8,%rsp
add $16,%rsp
ret
.section .text.f7370616E2D737472636D70
f7370616E2D737472636D70:
push %rdi
push %rsi
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f7374726E636D70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
je .67$
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f616464@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.67$:
add $8,%rsp
add $8,%rsp
add $8,%rsp
add $16,%rsp
ret
.section .text.f767075742D7370616E
f767075742D7370616E:
push %rdi
push %rsi
push %rdx
mov f767075742D6D656D@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f7370616E2D656E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $24,%rsp
ret
.section .text.f7075742D7370616E
f7075742D7370616E:
push %rdi
push %rsi
mov f767075742D7370616E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f707574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f746F
f746F:
push %rdi
push %rsi
push %rdx
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f66706F70
f66706F70:
push %rdi
push %rsi
mov f746F@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f616464@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f6670757368
f6670757368:
push %rdi
push %rsi
mov f746F@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f737562@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f706F70
f706F70:
push %rdi
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f70757368
f70757368:
push %rdi
mov f646563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f7838365F36342D737472696E672D6D6F76
f7838365F36342D737472696E672D6D6F76:
.section .data..s68
.s68:
.string,"mov"
.previous
mov .s68@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6C6561
f7838365F36342D737472696E672D6C6561:
.section .data..s69
.s69:
.string,"lea"
.previous
mov .s69@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D616464
f7838365F36342D737472696E672D616464:
.section .data..s70
.s70:
.string,"add"
.previous
mov .s70@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D74657374
f7838365F36342D737472696E672D74657374:
.section .data..s71
.s71:
.string,"test"
.previous
mov .s71@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6A65
f7838365F36342D737472696E672D6A65:
.section .data..s72
.s72:
.string,"je"
.previous
mov .s72@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6A6E65
f7838365F36342D737472696E672D6A6E65:
.section .data..s73
.s73:
.string,"jne"
.previous
mov .s73@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D6A6D70
f7838365F36342D737472696E672D6A6D70:
.section .data..s74
.s74:
.string,"jmp"
.previous
mov .s74@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D70757368
f7838365F36342D737472696E672D70757368:
.section .data..s75
.s75:
.string,"push"
.previous
mov .s75@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D706F70
f7838365F36342D737472696E672D706F70:
.section .data..s76
.s76:
.string,"pop"
.previous
mov .s76@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D63616C6C
f7838365F36342D737472696E672D63616C6C:
.section .data..s77
.s77:
.string,"call"
.previous
mov .s77@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726574
f7838365F36342D737472696E672D726574:
.section .data..s78
.s78:
.string,"ret"
.previous
mov .s78@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D656E747279
f7838365F36342D737472696E672D656E747279:
.section .data..s79
.s79:
.string,"_start"
.previous
mov .s79@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D737461636B2D746F70
f7838365F36342D737472696E672D737461636B2D746F70:
.section .data..s80
.s80:
.string,"(%rsp)"
.previous
mov .s80@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D706372656C2D726970
f7838365F36342D737472696E672D706372656C2D726970:
.section .data..s81
.s81:
.string,"@GOTPCREL(%rip)"
.previous
mov .s81@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D7374722D6C6162656C2D707265666978
f7838365F36342D737472696E672D7374722D6C6162656C2D707265666978:
.section .data..s82
.s82:
.string,".s"
.previous
mov .s82@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D676C6F626C
f7838365F36342D737472696E672D676C6F626C:
.section .data..s83
.s83:
.string,".globl"
.previous
mov .s83@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D657175
f7838365F36342D737472696E672D657175:
.section .data..s84
.s84:
.string,".equ"
.previous
mov .s84@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D73656374696F6E2D74657874
f7838365F36342D737472696E672D73656374696F6E2D74657874:
.section .data..s85
.s85:
.string,".section .text."
.previous
mov .s85@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D73656374696F6E2D64617461
f7838365F36342D737472696E672D73656374696F6E2D64617461:
.section .data..s86
.s86:
.string,".section .data."
.previous
mov .s86@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D737472696E67
f7838365F36342D737472696E672D737472696E67:
.section .data..s87
.s87:
.string,".string"
.previous
mov .s87@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D70726576696F7573
f7838365F36342D737472696E672D70726576696F7573:
.section .data..s88
.s88:
.string,".previous"
.previous
mov .s88@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726178
f7838365F36342D737472696E672D726178:
.section .data..s89
.s89:
.string,"%rax"
.previous
mov .s89@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D727370
f7838365F36342D737472696E672D727370:
.section .data..s90
.s90:
.string,"%rsp"
.previous
mov .s90@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726469
f7838365F36342D737472696E672D726469:
.section .data..s91
.s91:
.string,"%rdi"
.previous
mov .s91@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D727369
f7838365F36342D737472696E672D727369:
.section .data..s92
.s92:
.string,"%rsi"
.previous
mov .s92@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726478
f7838365F36342D737472696E672D726478:
.section .data..s93
.s93:
.string,"%rdx"
.previous
mov .s93@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D726378
f7838365F36342D737472696E672D726378:
.section .data..s94
.s94:
.string,"%rcx"
.previous
mov .s94@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D7238
f7838365F36342D737472696E672D7238:
.section .data..s95
.s95:
.string,"%r8"
.previous
mov .s95@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D737472696E672D7239
f7838365F36342D737472696E672D7239:
.section .data..s96
.s96:
.string,"%r9"
.previous
mov .s96@GOTPCREL(%rip),%rax
ret
.section .text.f7838365F36342D6D616E676C65
f7838365F36342D6D616E676C65:
push %rdi
push %rsi
push %rdx
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'f,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-24,%rsp
push %rax
mov f7075742D62686578@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.97$:
add $24,%rsp
ret
.section .text.f7838365F36342D6D616E676C652D7370616E
f7838365F36342D6D616E676C652D7370616E:
push %rdi
push %rsi
mov f7838365F36342D6D616E676C65@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f767075742D7370616E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6D616E676C652D737472696E67
f7838365F36342D6D616E676C652D737472696E67:
push %rdi
push %rsi
mov f7838365F36342D6D616E676C65@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f767075742D737472696E67@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6C6162656C2D737566
f7838365F36342D6C6162656C2D737566:
push %rdi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $':,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.98$:
add $8,%rsp
ret
.section .text.f7838365F36342D6275696C74696E2D6C6162656C
f7838365F36342D6275696C74696E2D6C6162656C:
push %rdi
push %rsi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D676C6F626C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D73656374696F6E2D74657874@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.103$:
.102$:
.101$:
.100$:
.99$:
add $16,%rsp
ret
.section .text.f7838365F36342D707265
f7838365F36342D707265:
push %rdi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D676C6F626C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D656E747279@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D657175@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D656E747279@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6D616E676C652D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D656E747279@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s111
.s111:
.string,"f6C6F6164"
.previous
mov .s111@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s113
.s113:
.string,"mov (%rdi),%rax"
.previous
mov .s113@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s116
.s116:
.string,"f73746F7265"
.previous
mov .s116@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s118
.s118:
.string,"mov %rsi,(%rdi)"
.previous
mov .s118@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s121
.s121:
.string,"f7065656B"
.previous
mov .s121@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s123
.s123:
.string,"movzb (%rdi),%eax"
.previous
mov .s123@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s126
.s126:
.string,"f706F6B65"
.previous
mov .s126@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s128
.s128:
.string,"movb %sil,(%rdi)"
.previous
mov .s128@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s131
.s131:
.string,"f616464"
.previous
mov .s131@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s133
.s133:
.string,"mov %rsi,%rax"
.previous
mov .s133@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s135
.s135:
.string,"add %rdi,%rax"
.previous
mov .s135@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s138
.s138:
.string,"f737562"
.previous
mov .s138@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s140
.s140:
.string,"mov %rsi,%rax"
.previous
mov .s140@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s142
.s142:
.string,"sub %rdi,%rax"
.previous
mov .s142@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s145
.s145:
.string,"f6D756C"
.previous
mov .s145@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s147
.s147:
.string,"mov %rsi,%rax"
.previous
mov .s147@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s149
.s149:
.string,"mul %rdi"
.previous
mov .s149@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s152
.s152:
.string,"f646976"
.previous
mov .s152@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s154
.s154:
.string,"xor %edx,%edx"
.previous
mov .s154@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s156
.s156:
.string,"mov %rsi,%rax"
.previous
mov .s156@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s158
.s158:
.string,"div %rdi"
.previous
mov .s158@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s161
.s161:
.string,"f6D6F64"
.previous
mov .s161@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s163
.s163:
.string,"xor %edx,%edx"
.previous
mov .s163@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s165
.s165:
.string,"mov %rsi,%rax"
.previous
mov .s165@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s167
.s167:
.string,"div %rdi"
.previous
mov .s167@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s169
.s169:
.string,"mov %rdx,%rax"
.previous
mov .s169@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s172
.s172:
.string,"f73686C"
.previous
mov .s172@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s174
.s174:
.string,"mov %rsi,%rax"
.previous
mov .s174@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s176
.s176:
.string,"mov %rdi,%rcx"
.previous
mov .s176@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s178
.s178:
.string,"shl %cl,%rax"
.previous
mov .s178@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s181
.s181:
.string,"f636D7061"
.previous
mov .s181@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s183
.s183:
.string,"cmp %rdi,%rsi"
.previous
mov .s183@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s185
.s185:
.string,"seta %al"
.previous
mov .s185@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s187
.s187:
.string,"movzbl %al,%eax"
.previous
mov .s187@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s190
.s190:
.string,"f636D7065"
.previous
mov .s190@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s192
.s192:
.string,"cmp %rsi,%rdi"
.previous
mov .s192@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s194
.s194:
.string,"sete %al"
.previous
mov .s194@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s196
.s196:
.string,"movzbl %al,%eax"
.previous
mov .s196@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s199
.s199:
.string,"f636D706E65"
.previous
mov .s199@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s201
.s201:
.string,"cmp %rsi,%rdi"
.previous
mov .s201@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s203
.s203:
.string,"setne %al"
.previous
mov .s203@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s205
.s205:
.string,"movzbl %al,%eax"
.previous
mov .s205@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s208
.s208:
.string,"f6E6567"
.previous
mov .s208@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s210
.s210:
.string,"mov %rdi,%rax"
.previous
mov .s210@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s212
.s212:
.string,"neg %rax"
.previous
mov .s212@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s215
.s215:
.string,"f6E6F74"
.previous
mov .s215@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s217
.s217:
.string,"test %rdi,%rdi"
.previous
mov .s217@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s219
.s219:
.string,"sete %al"
.previous
mov .s219@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s221
.s221:
.string,"movzbl %al,%eax"
.previous
mov .s221@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6275696C74696E2D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s224
.s224:
.string,"f6C696E7578"
.previous
mov .s224@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s226
.s226:
.string,"mov 8(%rsp),%rax"
.previous
mov .s226@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s228
.s228:
.string,"syscall"
.previous
mov .s228@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.227$:
.225$:
.223$:
.222$:
.220$:
.218$:
.216$:
.214$:
.213$:
.211$:
.209$:
.207$:
.206$:
.204$:
.202$:
.200$:
.198$:
.197$:
.195$:
.193$:
.191$:
.189$:
.188$:
.186$:
.184$:
.182$:
.180$:
.179$:
.177$:
.175$:
.173$:
.171$:
.170$:
.168$:
.166$:
.164$:
.162$:
.160$:
.159$:
.157$:
.155$:
.153$:
.151$:
.150$:
.148$:
.146$:
.144$:
.143$:
.141$:
.139$:
.137$:
.136$:
.134$:
.132$:
.130$:
.129$:
.127$:
.125$:
.124$:
.122$:
.120$:
.119$:
.117$:
.115$:
.114$:
.112$:
.110$:
.109$:
.108$:
.107$:
.106$:
.105$:
.104$:
add $8,%rsp
ret
.section .text.f7838365F36342D6670757368706F70
f7838365F36342D6670757368706F70:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 8(%rsp),%rax
test %rax,%rax
je .229$
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D616464@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov $'$,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
test %rax,%rax
je .233$
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov $'-,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.233$:
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D636D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D727370@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.236$:
.235$:
.234$:
.232$:
.231$:
.230$:
.229$:
add $40,%rsp
ret
.section .text.f7838365F36342D70757368706F70
f7838365F36342D70757368706F70:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
test %rax,%rax
je .238$
mov f7838365F36342D737472696E672D70757368@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
jmp .239$
.238$:
mov f7838365F36342D737472696E672D706F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
.239$:
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.240$:
.237$:
add $40,%rsp
ret
.section .text.f7838365F36342D66706F70
f7838365F36342D66706F70:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D6670757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f66706F70@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D6670757368
f7838365F36342D6670757368:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D6670757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f6670757368@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $1,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D706F70
f7838365F36342D706F70:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D70757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f706F70@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D70757368
f7838365F36342D70757368:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D70757368706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f70757368@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 48(%rsp),%rax
mov %rax,32(%rsp)
mov $1,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D6C6162656C2D6964
f7838365F36342D6C6162656C2D6964:
push %rdi
push %rsi
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'.,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'$,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.242$:
.241$:
add $16,%rsp
ret
.section .text.f7838365F36342D637A
f7838365F36342D637A:
push %rdi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D74657374@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.244$:
.243$:
add $8,%rsp
ret
.section .text.f7838365F36342D6A63
f7838365F36342D6A63:
push %rdi
push %rsi
push %rdx
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D6964@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.246$:
.245$:
add $24,%rsp
ret
.section .text.f7838365F36342D637A6A63
f7838365F36342D637A6A63:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D637A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D6A63@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.247$:
add $24,%rsp
ret
.section .text.f7838365F36342D6A65
f7838365F36342D6A65:
push %rdi
push %rsi
mov f7838365F36342D637A6A63@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D6A65@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6A6E65
f7838365F36342D6A6E65:
push %rdi
push %rsi
mov f7838365F36342D637A6A63@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D6A6E65@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6A6D70
f7838365F36342D6A6D70:
push %rdi
push %rsi
mov f7838365F36342D6A63@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D6A6D70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6C6F6164
f7838365F36342D6C6F6164:
push %rdi
push %rsi
push %rdx
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov 80(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737461636B2D746F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.248$:
add $24,%rsp
ret
.section .text.f7838365F36342D6964
f7838365F36342D6964:
push %rdi
push %rsi
push %rdx
push %rcx
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 8(%rsp),%rax
test %rax,%rax
je .251$
mov f7838365F36342D6C6F6164@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .252$
.251$:
mov f7838365F36342D6D616E676C652D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D706372656C2D726970@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.253$:
.252$:
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.250$:
.249$:
add $32,%rsp
ret
.section .text.f7838365F36342D61646472
f7838365F36342D61646472:
push %rdi
push %rsi
push %rdx
push %rcx
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6C6561@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6F6164@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.255$:
.254$:
add $32,%rsp
ret
.section .text.f7838365F36342D6C6974
f7838365F36342D6C6974:
push %rdi
push %rsi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6473@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D636D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.259$:
.258$:
.257$:
.256$:
add $16,%rsp
ret
.section .text.f7838365F36342D7374722D6C6162656C
f7838365F36342D7374722D6C6162656C:
push %rdi
push %rsi
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D7374722D6C6162656C2D707265666978@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.260$:
add $16,%rsp
ret
.section .text.f7838365F36342D737472
f7838365F36342D737472:
push %rdi
push %rsi
push %rdx
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D73656374696F6E2D64617461@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D7374722D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D7374722D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737472696E67@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D70726576696F7573@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D7374722D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D706372656C2D726970@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.272$:
.271$:
.270$:
.269$:
.268$:
.267$:
.266$:
.265$:
.264$:
.263$:
.262$:
.261$:
add $24,%rsp
ret
.section .text.f7838365F36342D646F
f7838365F36342D646F:
push %rdi
push %rsi
mov $1,%rax
add $16,%rsp
ret
.section .text.f7838365F36342D6C6162656C
f7838365F36342D6C6162656C:
push %rdi
push %rsi
mov f7838365F36342D6C6162656C2D6964@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.273$:
add $16,%rsp
ret
.section .text.f7838365F36342D6C65742D696E
f7838365F36342D6C65742D696E:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D6C65742D656E64
f7838365F36342D6C65742D656E64:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D66706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov $1,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $24,%rsp
ret
.section .text.f7838365F36342D666F722D696E
f7838365F36342D666F722D696E:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D6C65742D696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
.section .data..s276
.s276:
.string,"jmp b"
.previous
mov .s276@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D6964@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737461636B2D746F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov $'b,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.283$:
.282$:
.281$:
.280$:
.279$:
.278$:
.277$:
.275$:
.274$:
add $24,%rsp
ret
.section .text.f7838365F36342D666F722D656E64
f7838365F36342D666F722D656E64:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D6A6E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.284$:
add $24,%rsp
ret
.section .text.f7838365F36342D63616C6C2D77697468
f7838365F36342D63616C6C2D77697468:
push %rdi
push %rsi
push %rdx
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7838365F36342D6670757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7838365F36342D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov 0(%rsp),%rax
.287$:
.286$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f7838365F36342D63616C6C2D617267
f7838365F36342D63616C6C2D617267:
push %rdi
push %rsi
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D6D6F76@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C697374@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6E756D626572@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D737461636B2D746F70@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.290$:
.289$:
.288$:
add $16,%rsp
ret
.section .text.f7838365F36342D63616C6C2D656E642D706F70
f7838365F36342D63616C6C2D656E642D706F70:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f636D7061@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .291$
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.291$:
add $40,%rsp
ret
.section .text.f7838365F36342D63616C6C2D656E64
f7838365F36342D63616C6C2D656E64:
push %rdi
push %rsi
push %rdx
push %rcx
mov f7838365F36342D706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7838365F36342D63616C6C2D656E642D706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 64(%rsp),%rax
mov %rax,32(%rsp)
mov f7838365F36342D737472696E672D726469@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov f7838365F36342D63616C6C2D656E642D706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 64(%rsp),%rax
mov %rax,32(%rsp)
mov f7838365F36342D737472696E672D727369@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov f7838365F36342D63616C6C2D656E642D706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $2,%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 64(%rsp),%rax
mov %rax,32(%rsp)
mov f7838365F36342D737472696E672D726478@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov f7838365F36342D63616C6C2D656E642D706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $3,%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 64(%rsp),%rax
mov %rax,32(%rsp)
mov f7838365F36342D737472696E672D726378@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov f7838365F36342D63616C6C2D656E642D706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $4,%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 64(%rsp),%rax
mov %rax,32(%rsp)
mov f7838365F36342D737472696E672D7238@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov f7838365F36342D63616C6C2D656E642D706F70@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov $5,%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov 64(%rsp),%rax
mov %rax,32(%rsp)
mov f7838365F36342D737472696E672D7239@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov f7075742D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D63616C6C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f707574@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov $'*,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726178@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D66706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f737562@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.301$:
.300$:
.299$:
.298$:
.297$:
.296$:
.295$:
.294$:
.293$:
.292$:
add $32,%rsp
ret
.section .text.f7838365F36342D7661722D696E
f7838365F36342D7661722D696E:
push %rdi
push %rsi
push %rdx
mov f7075742D737472696E67@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D73656374696F6E2D74657874@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6D616E676C652D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7075742D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f7838365F36342D6D616E676C652D7370616E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7838365F36342D6C6162656C2D737566@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f73686C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $63,%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.306$:
.305$:
.304$:
.303$:
.302$:
add $24,%rsp
ret
.section .text.f7838365F36342D7661722D656E64
f7838365F36342D7661722D656E64:
push %rdi
push %rsi
push %rdx
mov f7838365F36342D66706F70@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f7075742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7838365F36342D737472696E672D726574@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.307$:
add $24,%rsp
ret
.section .text.f636861722D72616E67652D6E7A
f636861722D72616E67652D6E7A:
push %rdi
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7371
f636861722D72616E67652D7371:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\',%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6471
f636861722D72616E67652D6471:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\",%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6273
f636861722D72616E67652D6273:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\\,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D686D
f636861722D72616E67652D686D:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'#,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D716D
f636861722D72616E67652D716D:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'?,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6C70
f636861722D72616E67652D6C70:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'(,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7270
f636861722D72616E67652D7270:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7573
f636861722D72616E67652D7573:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'_,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D656E
f636861722D72616E67652D656E:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'-,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7370
f636861722D72616E67652D7370:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $' ,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D7462
f636861722D72616E67652D7462:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\t,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6C66
f636861722D72616E67652D6C66:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\n,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D6372
f636861722D72616E67652D6372:
push %rdi
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $'\r,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D3039
f636861722D72616E67652D3039:
push %rdi
mov f636D70696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'0,%rax
mov %rax,16(%rsp)
mov $'9,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D415A
f636861722D72616E67652D415A:
push %rdi
mov f636D70696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'A,%rax
mov %rax,16(%rsp)
mov $'Z,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f636861722D72616E67652D617A
f636861722D72616E67652D617A:
push %rdi
mov f636D70696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $'a,%rax
mov %rax,16(%rsp)
mov $'z,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f626F6F6B2D6E6577
f626F6F6B2D6E6577:
push %rdi
push %rsi
push %rdx
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D626F6F6B@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f626F6F6B2D7365742D6E657874@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f626F6F6B2D7365742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.310$:
.309$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f626F6F6B2D636F756E74
f626F6F6B2D636F756E74:
push %rdi
mov 0(%rsp),%rax
test %rax,%rax
je .311$
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f626F6F6B2D636F756E74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.311$:
add $8,%rsp
ret
.section .text.f626F6F6B2D6C6F6F6B7570
f626F6F6B2D6C6F6F6B7570:
push %rdi
push %rsi
push %rdx
mov 8(%rsp),%rax
test %rax,%rax
je .312$
mov f626F6F6B2D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .314$
mov 0(%rsp),%rax
jmp .315$
.314$:
mov f626F6F6B2D6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.315$:
add $8,%rsp
.312$:
add $24,%rsp
ret
.section .text.f626F6F6B2D657175616C
f626F6F6B2D657175616C:
push %rdi
push %rsi
push %rdx
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .316$
mov 8(%rsp),%rax
test %rax,%rax
je .317$
mov 0(%rsp),%rax
test %rax,%rax
je .318$
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov f626F6F6B2D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f626F6F6B2D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .319$
mov f626F6F6B2D657175616C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.319$:
.318$:
.317$:
.316$:
add $24,%rsp
ret
.section .text.f747970652D6E6577
f747970652D6E6577:
push %rdi
push %rsi
push %rdx
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D74797065@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f747970652D7365742D61726773@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f747970652D7365742D6B696E64@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.322$:
.321$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f747970652D6E65772D756E6974
f747970652D6E65772D756E6974:
push %rdi
mov f747970652D6E6577@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov $0,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f747970652D6E65772D66756E6374696F6E
f747970652D6E65772D66756E6374696F6E:
push %rdi
push %rsi
mov f747970652D6E6577@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov $1,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f747970652D6465636C2D657175616C
f747970652D6465636C2D657175616C:
push %rdi
push %rsi
push %rdx
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
jne .323$
mov 8(%rsp),%rax
test %rax,%rax
je .324$
mov 0(%rsp),%rax
test %rax,%rax
je .325$
mov f636D7065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f747970652D6765742D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f747970652D6765742D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .326$
mov f626F6F6B2D657175616C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6765742D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f747970652D6765742D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.326$:
.325$:
.324$:
.323$:
add $24,%rsp
ret
.section .text.f6465636C2D6E6577
f6465636C2D6E6577:
push %rdi
push %rsi
push %rdx
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D6465636C@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f6465636C2D7365742D746F6B656E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6465636C2D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.329$:
.328$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f6465636C2D657175616C
f6465636C2D657175616C:
push %rdi
push %rsi
mov f747970652D6465636C2D657175616C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f6465636C2D657175616C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f6465636C2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f6465636C2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f747970652D657175616C
f747970652D657175616C:
push %rdi
push %rsi
mov f747970652D6465636C2D657175616C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f6465636C2D657175616C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f6C6F632D6366
f6C6F632D6366:
push %rdi
mov f6C6F632D7365742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F632D6765742D636F6C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C6F632D63726C66
f6C6F632D63726C66:
push %rdi
mov f6C6F632D7365742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F632D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6C6F632D7365742D636F6C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $1,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.330$:
add $8,%rsp
ret
.section .text.f6C6F632D696E6974
f6C6F632D696E6974:
push %rdi
push %rsi
push %rdx
mov f6C6F632D7365742D6C696E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6C6F632D7365742D636F6C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.331$:
add $24,%rsp
ret
.section .text.f63617265742D696E6974
f63617265742D696E6974:
push %rdi
push %rsi
mov f63617265742D7365742D707472@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6C6F632D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f63617265742D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
mov $0,%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.332$:
add $16,%rsp
ret
.section .text.f63617265742D636F7079
f63617265742D636F7079:
push %rdi
push %rsi
mov f63617265742D7365742D707472@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f63617265742D6765742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6C6F632D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f63617265742D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f6C6F632D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f6C6F632D6765742D636F6C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.333$:
add $16,%rsp
ret
.section .text.f63617265742D7065656B
f63617265742D7065656B:
push %rdi
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D6765742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636F7079
f746F6B656E2D636F7079:
push %rdi
push %rsi
mov f7370616E2D636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f63617265742D636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D6765742D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.334$:
add $16,%rsp
ret
.section .text.f746F6B656E2D636C6F6E65
f746F6B656E2D636C6F6E65:
push %rdi
push %rsi
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D746F6B656E@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f746F6B656E2D636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.336$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f746F6B656E2D6D61746368
f746F6B656E2D6D61746368:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $16,%rsp
ret
.section .text.f746F6B656E2D6973
f746F6B656E2D6973:
push %rdi
push %rsi
mov f7370616E2D737472636D70@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f746F6B656E2D657175616C
f746F6B656E2D657175616C:
push %rdi
push %rsi
mov f7370616E2D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f6E616D652D6E6577
f6E616D652D6E6577:
push %rdi
push %rsi
push %rdx
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D6E616D65@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f746F6B656E2D636F7079@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f6E616D652D7365742D766172@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.339$:
.338$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f6E616D652D70757368
f6E616D652D70757368:
push %rdi
push %rsi
push %rdx
push %rcx
mov f626F6F6B2D6E6577@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f6E616D652D6E6577@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $32,%rsp
ret
.section .text.f6E616D652D746F6B656E2D657175616C
f6E616D652D746F6B656E2D657175616C:
push %rdi
push %rsi
mov f746F6B656E2D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f6E616D652D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f7472792D6E616D652D6C6F6F6B7570
f7472792D6E616D652D6C6F6F6B7570:
push %rdi
push %rsi
mov f626F6F6B2D6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f6E616D652D746F6B656E2D657175616C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f7661722D6E6577
f7661722D6E6577:
push %rdi
push %rsi
push %rdx
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D766172@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f7661722D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f7661722D7365742D696D706C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.342$:
.341$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f7661722D70757368
f7661722D70757368:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f6E616D652D70757368@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov f7661722D6E6577@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
mov 80(%rsp),%rax
mov %rax,16(%rsp)
mov 72(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
add $40,%rsp
ret
.section .text.f7472792D7661722D6C6F6F6B7570
f7472792D7661722D6C6F6F6B7570:
push %rdi
push %rsi
mov f7472792D6E616D652D6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov 0(%rsp),%rax
test %rax,%rax
je .344$
mov f6E616D652D766172@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.344$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f636861722D636C6173732D6E7A
f636861722D636C6173732D6E7A:
push %rdi
mov f636861722D72616E67652D6E7A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D6C66
f636861722D636C6173732D6C66:
push %rdi
mov f636861722D72616E67652D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D686D
f636861722D636C6173732D686D:
push %rdi
mov f636861722D72616E67652D686D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D6273
f636861722D636C6173732D6273:
push %rdi
mov f636861722D72616E67652D6273@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D7371
f636861722D636C6173732D7371:
push %rdi
mov f636861722D72616E67652D7371@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D6471
f636861722D636C6173732D6471:
push %rdi
mov f636861722D72616E67652D6471@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D3039
f636861722D636C6173732D3039:
push %rdi
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D7773
f636861722D636C6173732D7773:
push %rdi
mov f636861722D72616E67652D7370@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .345$
mov f636861722D72616E67652D7462@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .346$
mov f636861722D72616E67652D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .347$
mov f636861722D72616E67652D6372@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.347$:
.346$:
.345$:
add $8,%rsp
ret
.section .text.f636861722D636C6173732D6964
f636861722D636C6173732D6964:
push %rdi
mov f636861722D72616E67652D415A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .348$
mov f636861722D72616E67652D617A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .349$
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .350$
mov f636861722D72616E67652D656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .351$
mov f636861722D72616E67652D7573@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.351$:
.350$:
.349$:
.348$:
add $8,%rsp
ret
.section .text.f636861722D636C6173732D696D
f636861722D636C6173732D696D:
push %rdi
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .352$
mov f636861722D72616E67652D7371@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.352$:
add $8,%rsp
ret
.section .text.f636861722D636C6173732D756E
f636861722D636C6173732D756E:
push %rdi
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .353$
mov f636861722D72616E67652D7371@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .354$
mov f636861722D72616E67652D415A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .355$
mov f636861722D72616E67652D617A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .356$
mov f636861722D72616E67652D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .357$
mov f636861722D72616E67652D656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .358$
mov f636861722D72616E67652D7573@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .359$
mov f636861722D72616E67652D6471@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.359$:
.358$:
.357$:
.356$:
.355$:
.354$:
.353$:
add $8,%rsp
ret
.section .text.f636861722D636C6173732D7074
f636861722D636C6173732D7074:
push %rdi
mov f636861722D72616E67652D6C70@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .360$
mov f636861722D72616E67652D7270@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .361$
mov f636861722D72616E67652D716D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.361$:
.360$:
add $8,%rsp
ret
.section .text.f636861722D6E6567636C617373
f636861722D6E6567636C617373:
push %rdi
push %rsi
mov f636861722D636C6173732D6E7A@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .362$
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.362$:
add $16,%rsp
ret
.section .text.f636861722D636C6173732D7362
f636861722D636C6173732D7362:
push %rdi
mov f636861722D6E6567636C617373@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f636861722D636C6173732D6362
f636861722D636C6173732D6362:
push %rdi
mov f636861722D6E6567636C617373@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D686D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D6E6F726D616C
f6C65782D6E6F726D616C:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov f63617265742D7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .363$
mov f636861722D72616E67652D6C66@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .365$
mov f6C6F632D63726C66@GOTPCREL(%rip),%rax
jmp .366$
.365$:
mov f6C6F632D6366@GOTPCREL(%rip),%rax
.366$:
add $-8,%rsp
push %rax
mov f63617265742D6C6F63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f63617265742D7365742D707472@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f63617265742D6765742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.364$:
.363$:
add $16,%rsp
ret
.section .text.f6C65782D657363617065
f6C65782D657363617065:
push %rdi
push %rsi
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6273@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .367$
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6E7A@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
jmp .368$
.367$:
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.368$:
add $16,%rsp
ret
.section .text.f6C65782D686D
f6C65782D686D:
push %rdi
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D686D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D6471
f6C65782D6471:
push %rdi
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D7371
f6C65782D7371:
push %rdi
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D7371@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D3039
f6C65782D3039:
push %rdi
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D3039@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D7074
f6C65782D7074:
push %rdi
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D7074@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D7773
f6C65782D7773:
push %rdi
mov f6C65782D6E6F726D616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D7773@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D6964
f6C65782D6964:
push %rdi
mov f6C65782D657363617065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D7362
f6C65782D7362:
push %rdi
mov f6C65782D657363617065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D7362@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6C65782D6362
f6C65782D6362:
push %rdi
mov f6C65782D657363617065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6362@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6561742D62756E6368
f6561742D62756E6368:
push %rdi
push %rsi
mov $0,%rax
push %rax
jmp b.369$
.369$:
mov %rax,(%rsp)
b.369$:
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .369$
pop %rax
add $16,%rsp
ret
.section .text.f6561742D7063686172
f6561742D7063686172:
push %rdi
push %rsi
push %rdx
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .370$
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.370$:
add $24,%rsp
ret
.section .text.f6561742D67726F7570
f6561742D67726F7570:
push %rdi
push %rsi
push %rdx
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .371$
mov f6561742D62756E6368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.372$:
.371$:
add $24,%rsp
ret
.section .text.f6561742D7074
f6561742D7074:
push %rdi
mov f6C65782D7074@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f6561742D6964
f6561742D6964:
push %rdi
mov f6561742D62756E6368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C65782D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6561742D3039
f6561742D3039:
push %rdi
mov f6561742D62756E6368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C65782D3039@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6561742D7773
f6561742D7773:
push %rdi
mov f6561742D62756E6368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f6C65782D7773@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f6561742D7371
f6561742D7371:
push %rdi
mov f6561742D7063686172@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f6C65782D7371@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f6C65782D7362@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f6561742D6471
f6561742D6471:
push %rdi
mov f6561742D67726F7570@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f6C65782D6471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f6C65782D7362@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f6561742D686D
f6561742D686D:
push %rdi
mov f6561742D67726F7570@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f6C65782D686D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f6C65782D6362@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f6561742D6E6F6E74657874
f6561742D6E6F6E74657874:
push %rdi
mov $0,%rax
push %rax
jmp b.373$
.373$:
mov %rax,(%rsp)
b.373$:
mov f6561742D7773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .374$
mov f6561742D686D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.374$:
test %rax,%rax
jne .373$
pop %rax
add $8,%rsp
ret
.section .text.f6561742D74657874
f6561742D74657874:
push %rdi
mov f6561742D6964@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .375$
mov f6561742D7074@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .376$
mov f6561742D7371@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .377$
mov f6561742D6471@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .378$
mov f6561742D3039@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.378$:
.377$:
.376$:
.375$:
add $8,%rsp
ret
.section .text.f746F6B656E2D72656164
f746F6B656E2D72656164:
push %rdi
push %rsi
mov f6561742D6E6F6E74657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f63617265742D6765742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f7065656B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .381$
mov f6561742D74657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .382$
mov f7370616E2D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f63617265742D6765742D707472@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .383$
.382$:
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $1,%rax
mov %rax,8(%rsp)
.section .data..s384
.s384:
.string,"invalid text"
.previous
mov .s384@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.383$:
jmp .385$
.381$:
mov f7370616E2D696E6974@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.385$:
add $8,%rsp
.379$:
add $16,%rsp
ret
.section .text.f746F6B656E2D616476
f746F6B656E2D616476:
push %rdi
mov f7370616E2D7374617274@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .386$
mov f746F6B656E2D72656164@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.386$:
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D646F
f746F6B656E2D636C6173732D646F:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s387
.s387:
.string,"do"
.previous
mov .s387@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D6966
f746F6B656E2D636C6173732D6966:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s388
.s388:
.string,"if"
.previous
mov .s388@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D6F72
f746F6B656E2D636C6173732D6F72:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s389
.s389:
.string,"or"
.previous
mov .s389@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D616E64
f746F6B656E2D636C6173732D616E64:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s390
.s390:
.string,"and"
.previous
mov .s390@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D6C6574
f746F6B656E2D636C6173732D6C6574:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s391
.s391:
.string,"let"
.previous
mov .s391@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D666F72
f746F6B656E2D636C6173732D666F72:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s392
.s392:
.string,"for"
.previous
mov .s392@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D61646472
f746F6B656E2D636C6173732D61646472:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s393
.s393:
.string,"addr"
.previous
mov .s393@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D716D
f746F6B656E2D636C6173732D716D:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s394
.s394:
.string,"?"
.previous
mov .s394@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D6C70
f746F6B656E2D636C6173732D6C70:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s395
.s395:
.string,"("
.previous
mov .s395@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D7270
f746F6B656E2D636C6173732D7270:
push %rdi
mov f746F6B656E2D6973@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
.section .data..s396
.s396:
.string,")"
.previous
mov .s396@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D756E6974
f746F6B656E2D636C6173732D756E6974:
push %rdi
mov f746F6B656E2D6D61746368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D756E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D737472
f746F6B656E2D636C6173732D737472:
push %rdi
mov f746F6B656E2D6D61746368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6471@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D696D
f746F6B656E2D636C6173732D696D:
push %rdi
mov f746F6B656E2D6D61746368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D696D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f746F6B656E2D636C6173732D6964
f746F6B656E2D636C6173732D6964:
push %rdi
mov f746F6B656E2D6D61746368@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f636861722D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D696D706C2D666C616B65
f73656D2D696D706C2D666C616B65:
push %rdi
mov f696E63@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D696D706C2D6C6974
f73656D2D696D706C2D6C6974:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.397$:
add $40,%rsp
ret
.section .text.f73656D2D696D706C2D737472
f73656D2D696D706C2D737472:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 40(%rsp),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.398$:
add $48,%rsp
ret
.section .text.f73656D2D696D706C2D726566
f73656D2D696D706C2D726566:
push %rdi
push %rsi
mov f7472792D7661722D6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D6765742D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov 0(%rsp),%rax
test %rax,%rax
je .400$
mov 16(%rsp),%rax
add $-32,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f7661722D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f73656D2D6765742D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov f73656D2D7365742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f7661722D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.401$:
jmp .402$
.400$:
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $3,%rax
mov %rax,8(%rsp)
.section .data..s403
.s403:
.string,"lookup failed"
.previous
mov .s403@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.402$:
add $8,%rsp
add $16,%rsp
ret
.section .text.f73656D2D696D706C2D707265
f73656D2D696D706C2D707265:
push %rdi
push %rsi
push %rdx
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov $0,%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.404$:
add $24,%rsp
ret
.section .text.f73656D2D696D706C2D7661722D696E
f73656D2D696D706C2D7661722D696E:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 40(%rsp),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 88(%rsp),%rax
mov %rax,16(%rsp)
mov 96(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f7661722D70757368@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 104(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 80(%rsp),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 144(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.405$:
add $48,%rsp
ret
.section .text.f73656D2D696D706C2D7661722D656E64
f73656D2D696D706C2D7661722D656E64:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 40(%rsp),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6C6F6164@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.406$:
add $48,%rsp
ret
.section .text.f73656D2D696D706C2D63616C6C2D617267
f73656D2D696D706C2D63616C6C2D617267:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f747970652D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .407$
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
jmp .408$
.407$:
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $4,%rax
mov %rax,8(%rsp)
.section .data..s409
.s409:
.string,"type error"
.previous
mov .s409@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.408$:
add $40,%rsp
ret
.section .text.f73656D2D696D706C2D63616C6C2D656E64
f73656D2D696D706C2D63616C6C2D656E64:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 40(%rsp),%rax
add $-32,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
mov 96(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.410$:
add $48,%rsp
ret
.section .text.f70617273652D707265646566
f70617273652D707265646566:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .411$
mov f746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 24(%rsp),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.412$:
.411$:
add $40,%rsp
ret
.section .text.f70617273652D61746F6D
f70617273652D61746F6D:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 32(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .413$
mov 24(%rsp),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.413$:
add $40,%rsp
ret
.section .text.f70617273652D6465636C
f70617273652D6465636C:
push %rdi
push %rsi
push %rdx
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .414$
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.414$:
add $24,%rsp
ret
.section .text.f70617273652D736B6970
f70617273652D736B6970:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .415$
mov f746F6B656E2D616476@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.415$:
add $16,%rsp
ret
.section .text.f70617273652D756E6974
f70617273652D756E6974:
push %rdi
mov f70617273652D736B6970@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D636C6173732D756E6974@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f70617273652D6964
f70617273652D6964:
push %rdi
mov f70617273652D736B6970@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f70617273652D6C70
f70617273652D6C70:
push %rdi
mov f70617273652D736B6970@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D636C6173732D6C70@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f70617273652D7270
f70617273652D7270:
push %rdi
mov f70617273652D736B6970@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D636C6173732D7270@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f70617273652D716D
f70617273652D716D:
push %rdi
mov f70617273652D736B6970@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D636C6173732D716D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73796E2D73656D2D707265
f73796E2D73656D2D707265:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $16,%rsp
ret
.section .text.f73796E2D73656D2D756E6974
f73796E2D73656D2D756E6974:
push %rdi
push %rsi
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f70617273652D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.416$:
add $16,%rsp
ret
.section .text.f73796E2D73656D2D737472
f73796E2D73656D2D737472:
push %rdi
push %rsi
push %rdx
mov 16(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f70617273652D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.418$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f73796E2D73656D2D766172
f73796E2D73656D2D766172:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 40(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f70617273652D6964@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.423$:
.422$:
.421$:
.420$:
add $8,%rsp
add $48,%rsp
ret
.section .text.f73796E2D73656D2D736571
f73796E2D73656D2D736571:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 40(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.427$:
.426$:
.425$:
add $8,%rsp
add $48,%rsp
ret
.section .text.f73796E2D73656D2D6966
f73796E2D73656D2D6966:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov 40(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 40(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 16(%rsp),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 88(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 48(%rsp),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 40(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 96(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.435$:
.434$:
.433$:
add $8,%rsp
.431$:
.430$:
.429$:
add $8,%rsp
add $48,%rsp
ret
.section .text.f73796E2D73656D2D617267
f73796E2D73656D2D617267:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 24(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 32(%rsp),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.436$:
add $40,%rsp
ret
.section .text.f73796E2D73656D2D61726773
f73796E2D73656D2D61726773:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov 8(%rsp),%rax
test %rax,%rax
je .437$
mov f73796E2D73656D2D617267@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov f6465636C2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f626F6F6B2D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov f73796E2D73656D2D61726773@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 72(%rsp),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
.438$:
.437$:
add $40,%rsp
ret
.section .text.f73796E2D73656D2D63616C6C
f73796E2D73656D2D63616C6C:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
push %r9
mov f626F6F6B2D636F756E74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D6765742D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov 48(%rsp),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f73796E2D73656D2D61726773@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
mov 80(%rsp),%rax
mov %rax,16(%rsp)
mov 72(%rsp),%rax
mov %rax,24(%rsp)
mov f747970652D6765742D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov $1,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov 40(%rsp),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.441$:
add $8,%rsp
add $8,%rsp
add $48,%rsp
ret
.section .text.f73656D2D707265
f73656D2D707265:
push %rdi
mov f73656D2D696D706C2D707265@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f7838365F36342D707265@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D6C6974
f73656D2D657870722D6C6974:
push %rdi
mov f73656D2D696D706C2D6C6974@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f7838365F36342D6C6974@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D737472
f73656D2D657870722D737472:
push %rdi
mov f73656D2D696D706C2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D7374722D656E64
f73656D2D657870722D7374722D656E64:
push %rdi
push %rsi
mov f73656D2D696D706C2D737472@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f7838365F36342D737472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D61646472
f73656D2D657870722D61646472:
push %rdi
mov f73656D2D696D706C2D726566@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D61646472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D6964
f73656D2D657870722D6964:
push %rdi
mov f73656D2D696D706C2D726566@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f7838365F36342D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D6C6574
f73656D2D657870722D6C6574:
push %rdi
mov f73656D2D696D706C2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D6C65742D696E
f73656D2D657870722D6C65742D696E:
push %rdi
push %rsi
mov f73656D2D696D706C2D7661722D696E@GOTPCREL(%rip),%rax
add $-64,%rsp
push %rax
mov f7838365F36342D6C65742D696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
mov f73656D2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,48(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,56(%rsp)
mov 72(%rsp),%rax
mov %rax,64(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
add $16,%rsp
ret
.section .text.f73656D2D657870722D6C65742D656E64
f73656D2D657870722D6C65742D656E64:
push %rdi
push %rsi
mov f73656D2D696D706C2D7661722D656E64@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f7838365F36342D6C65742D656E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D666F72
f73656D2D657870722D666F72:
push %rdi
mov f73656D2D696D706C2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D666F722D696E
f73656D2D657870722D666F722D696E:
push %rdi
push %rsi
mov f73656D2D696D706C2D7661722D696E@GOTPCREL(%rip),%rax
add $-64,%rsp
push %rax
mov f7838365F36342D666F722D696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
mov f73656D2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,48(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,56(%rsp)
mov 72(%rsp),%rax
mov %rax,64(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
add $16,%rsp
ret
.section .text.f73656D2D657870722D666F722D656E64
f73656D2D657870722D666F722D656E64:
push %rdi
push %rsi
mov f73656D2D696D706C2D7661722D656E64@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f7838365F36342D666F722D656E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D646F
f73656D2D657870722D646F:
push %rdi
mov f73656D2D696D706C2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D646F2D7468656E
f73656D2D657870722D646F2D7468656E:
push %rdi
push %rsi
mov f7838365F36342D646F@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D646F2D656E64
f73656D2D657870722D646F2D656E64:
push %rdi
push %rsi
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D616E64
f73656D2D657870722D616E64:
push %rdi
mov f73656D2D696D706C2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D616E642D7468656E
f73656D2D657870722D616E642D7468656E:
push %rdi
push %rsi
mov f7838365F36342D6A65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D616E642D656E64
f73656D2D657870722D616E642D656E64:
push %rdi
push %rsi
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D6F72
f73656D2D657870722D6F72:
push %rdi
mov f73656D2D696D706C2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D6F722D656C7365
f73656D2D657870722D6F722D656C7365:
push %rdi
push %rsi
mov f7838365F36342D6A6E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D6F722D656E64
f73656D2D657870722D6F722D656E64:
push %rdi
push %rsi
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D6966
f73656D2D657870722D6966:
push %rdi
mov f73656D2D696D706C2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D666C616B65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
add $8,%rsp
ret
.section .text.f73656D2D657870722D69662D7468656E
f73656D2D657870722D69662D7468656E:
push %rdi
push %rsi
mov f7838365F36342D6A65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D69662D656C7365
f73656D2D657870722D69662D656C7365:
push %rdi
push %rsi
mov f7838365F36342D6A6D70@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D69662D656E64
f73656D2D657870722D69662D656E64:
push %rdi
push %rsi
mov f7838365F36342D6C6162656C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D63616C6C2D77697468
f73656D2D657870722D63616C6C2D77697468:
push %rdi
push %rsi
mov f7838365F36342D63616C6C2D77697468@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f73656D2D657870722D63616C6C2D617267
f73656D2D657870722D63616C6C2D617267:
push %rdi
push %rsi
push %rdx
mov f73656D2D696D706C2D63616C6C2D617267@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f7838365F36342D63616C6C2D617267@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f73656D2D657870722D63616C6C2D656E64
f73656D2D657870722D63616C6C2D656E64:
push %rdi
push %rsi
push %rdx
mov f73656D2D696D706C2D63616C6C2D656E64@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov f7838365F36342D63616C6C2D656E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f73656D2D2D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
mov 64(%rsp),%rax
mov %rax,48(%rsp)
mov 72(%rsp),%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $24,%rsp
ret
.section .text.f73796E2D707265
f73796E2D707265:
push %rdi
mov f73796E2D73656D2D707265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D707265@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73796E2D657870722D6C6974
f73796E2D657870722D6C6974:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D756E6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D657870722D6C6974@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D737472
f73796E2D657870722D737472:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D737472@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D657870722D737472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D7374722D656E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D61646472
f73796E2D657870722D61646472:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D756E6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D657870722D61646472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D6964
f73796E2D657870722D6964:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D756E6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D657870722D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D6C6574
f73796E2D657870722D6C6574:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D766172@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f73656D2D657870722D6C6574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D6C65742D696E@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f73656D2D657870722D6C65742D656E64@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D666F72
f73796E2D657870722D666F72:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D766172@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f73656D2D657870722D666F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D666F722D696E@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f73656D2D657870722D666F722D656E64@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D646F
f73796E2D657870722D646F:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D736571@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f73656D2D657870722D646F@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D646F2D7468656E@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f73656D2D657870722D646F2D656E64@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D616E64
f73796E2D657870722D616E64:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D736571@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f73656D2D657870722D616E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D616E642D7468656E@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f73656D2D657870722D616E642D656E64@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D6F72
f73796E2D657870722D6F72:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D736571@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f73656D2D657870722D6F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D6F722D656C7365@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f73656D2D657870722D6F722D656E64@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D6966
f73796E2D657870722D6966:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D6966@GOTPCREL(%rip),%rax
add $-56,%rsp
push %rax
mov f73656D2D657870722D6966@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D69662D7468656E@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f73656D2D657870722D69662D656C7365@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov f73656D2D657870722D69662D656E64@GOTPCREL(%rip),%rax
mov %rax,32(%rsp)
mov 80(%rsp),%rax
mov %rax,40(%rsp)
mov 72(%rsp),%rax
mov %rax,48(%rsp)
mov 64(%rsp),%rax
mov %rax,56(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $8,%rsp
add $24,%rsp
ret
.section .text.f73796E2D657870722D63616C6C
f73796E2D657870722D63616C6C:
push %rdi
push %rsi
push %rdx
mov f73796E2D73656D2D63616C6C@GOTPCREL(%rip),%rax
add $-48,%rsp
push %rax
mov f73656D2D657870722D63616C6C2D77697468@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73656D2D657870722D63616C6C2D617267@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov f73656D2D657870722D63616C6C2D656E64@GOTPCREL(%rip),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov 64(%rsp),%rax
mov %rax,40(%rsp)
mov 56(%rsp),%rax
mov %rax,48(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r9
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D657870722D7465726D
f73796E2D657870722D7465726D:
push %rdi
push %rsi
push %rdx
mov f70617273652D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D646F@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D646F@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .442$
mov f70617273652D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D6966@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D6966@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .443$
mov f70617273652D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D6F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D6F72@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .444$
mov f70617273652D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D616E64@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D616E64@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .445$
mov f70617273652D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D6C6574@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D6C6574@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .446$
mov f70617273652D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D666F72@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D666F72@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .447$
mov f70617273652D707265646566@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D61646472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D61646472@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .448$
mov f70617273652D61746F6D@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D696D@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D6C6974@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .449$
mov f70617273652D61746F6D@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D737472@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D737472@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
test %rax,%rax
jne .450$
mov f70617273652D61746F6D@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f746F6B656E2D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D657870722D6964@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
.450$:
.449$:
.448$:
.447$:
.446$:
.445$:
.444$:
.443$:
.442$:
add $24,%rsp
ret
.section .text.f73796E2D657870722D6A757874
f73796E2D657870722D6A757874:
push %rdi
push %rsi
push %rdx
mov f6E6F74@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f747970652D657175616C@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f73656D2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .451$
mov f747970652D6765742D6B696E64@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .452$
mov f73796E2D657870722D63616C6C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov f73656D2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.452$:
.451$:
add $24,%rsp
ret
.section .text.f73796E2D657870722D6E657374
f73796E2D657870722D6E657374:
push %rdi
push %rsi
push %rdx
mov f70617273652D6C70@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .453$
mov f73796E2D657870722D7465726D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f70617273652D7270@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .455$
mov f73796E2D657870722D6A757874@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f70617273652D7270@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .457$
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $5,%rax
mov %rax,8(%rsp)
.section .data..s458
.s458:
.string,"missing paren"
.previous
mov .s458@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.457$:
.456$:
.455$:
.454$:
jmp .459$
.453$:
mov f73796E2D657870722D7465726D@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
je .460$
mov f73796E2D657870722D6A757874@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .461$
.460$:
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $6,%rax
mov %rax,8(%rsp)
.section .data..s462
.s462:
.string,"missing expression"
.previous
mov .s462@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.461$:
.459$:
add $24,%rsp
ret
.section .text.f73796E2D65787072
f73796E2D65787072:
push %rdi
push %rsi
mov f73796E2D657870722D6E657374@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73796E2D65787072@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $16,%rsp
ret
.section .text.f706172616D73
f706172616D73:
push %rdi
push %rsi
push %rdx
push %rcx
mov 8(%rsp),%rax
test %rax,%rax
je .463$
mov 24(%rsp),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
jmp .464$
.463$:
mov f73796E2D65787072@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov $0,%rax
.465$:
.464$:
add $32,%rsp
ret
.section .text.f706172616D732D6E657874
f706172616D732D6E657874:
push %rdi
push %rsi
push %rdx
push %rcx
mov f706172616D73@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov 40(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f626F6F6B2D6765742D6E657874@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D6765742D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov 0(%rsp),%rax
.467$:
add $8,%rsp
add $32,%rsp
ret
.section .text.f706172616D2D6E616D652D70757368
f706172616D2D6E616D652D70757368:
push %rdi
push %rsi
push %rdx
mov f626F6F6B2D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7661722D70757368@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 112(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D6765742D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 112(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f6465636C2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f6465636C2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov 80(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
add $24,%rsp
ret
.section .text.f7265676973746572
f7265676973746572:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f7838365F36342D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f706172616D2D6E616D652D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f73656D2D6765742D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f706172616D732D6E657874@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
mov 80(%rsp),%rax
mov %rax,16(%rsp)
mov 72(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.470$:
.469$:
add $40,%rsp
ret
.section .text.f737461636B
f737461636B:
push %rdi
push %rsi
push %rdx
mov f706172616D2D6E616D652D70757368@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f706172616D732D6E657874@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f737461636B@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 56(%rsp),%rax
mov %rax,16(%rsp)
mov 48(%rsp),%rax
mov %rax,24(%rsp)
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
.471$:
add $24,%rsp
ret
.section .text.f72656769737465722D736571
f72656769737465722D736571:
push %rdi
push %rsi
push %rdx
push %rcx
push %r8
mov f7265676973746572@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov 80(%rsp),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
mov 56(%rsp),%rax
mov %rax,24(%rsp)
mov 72(%rsp),%rax
mov %rax,32(%rsp)
mov f737563@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $40,%rsp
ret
.section .text.f726567697374657235
f726567697374657235:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f737461636B@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .data..s472
.s472:
.string,"%r9"
.previous
mov .s472@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657234
f726567697374657234:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657235@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .data..s473
.s473:
.string,"%r8"
.previous
mov .s473@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657233
f726567697374657233:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657234@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .data..s474
.s474:
.string,"%rcx"
.previous
mov .s474@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657232
f726567697374657232:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657233@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .data..s475
.s475:
.string,"%rdx"
.previous
mov .s475@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657231
f726567697374657231:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657232@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .data..s476
.s476:
.string,"%rsi"
.previous
mov .s476@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f726567697374657230
f726567697374657230:
push %rdi
push %rsi
push %rdx
mov f72656769737465722D736571@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f726567697374657231@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
.section .data..s477
.s477:
.string,"%rdi"
.previous
mov .s477@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 64(%rsp),%rax
mov %rax,24(%rsp)
mov 56(%rsp),%rax
mov %rax,32(%rsp)
mov 48(%rsp),%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
add $24,%rsp
ret
.section .text.f73796E2D626F6479
f73796E2D626F6479:
push %rdi
push %rsi
mov f7472792D6E616D652D6C6F6F6B7570@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D6765742D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f6465636C2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
test %rax,%rax
je .478$
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $7,%rax
mov %rax,8(%rsp)
.section .data..s479
.s479:
.string,"duplicate"
.previous
mov .s479@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
jmp .480$
.478$:
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f7661722D70757368@GOTPCREL(%rip),%rax
add $-40,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D6765742D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 96(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f6465636C2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f6465636C2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 88(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
mov $0,%rax
mov %rax,40(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
pop %r8
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f626F6F6B2D6765742D6C696E65@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D6765742D626F6F6B@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f70617273652D716D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
jne .483$
mov f7838365F36342D7661722D696E@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6465636C2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
mov f706172616D73@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f726567697374657230@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
mov f747970652D6765742D61726773@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f6465636C2D6765742D74797065@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 72(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov $0,%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
push %rax
mov f7838365F36342D7661722D656E64@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D2D696D706C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov 32(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
.484$:
.483$:
.482$:
.481$:
.480$:
add $16,%rsp
ret
.section .text.f73796E2D6465636C2D736571
f73796E2D6465636C2D736571:
push %rdi
push %rsi
mov f746F6B656E2D636C6173732D6964@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .486$
mov 8(%rsp),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
push %rax
mov f73796E2D6465636C2D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f626F6F6B2D6E6577@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 64(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
add $8,%rsp
add $8,%rsp
.486$:
add $16,%rsp
ret
.section .text.f73796E2D6465636C2D6765742D74797065
f73796E2D6465636C2D6765742D74797065:
push %rdi
push %rsi
mov f70617273652D6C70@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .489$
mov f73796E2D6465636C2D736571@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f70617273652D7270@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
test %rax,%rax
je .491$
mov f747970652D6E65772D66756E6374696F6E@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 48(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 24(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
jmp .492$
.491$:
mov f657272@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov $5,%rax
mov %rax,8(%rsp)
.section .data..s493
.s493:
.string,"missing paren"
.previous
mov .s493@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
.492$:
add $8,%rsp
jmp .494$
.489$:
mov f747970652D6E65772D756E6974@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 32(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.494$:
add $16,%rsp
ret
.section .text.f73796E2D6465636C
f73796E2D6465636C:
push %rdi
mov f746F6B656E2D636C6F6E65@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f70617273652D6964@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f6465636C2D6E6577@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
mov f73796E2D6465636C2D6765742D74797065@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73796E2D6465636C@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov 64(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
.496$:
add $8,%rsp
add $8,%rsp
ret
.section .text.f73796E2D646566
f73796E2D646566:
push %rdi
mov f73796E2D626F6479@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov 24(%rsp),%rax
mov %rax,8(%rsp)
mov f73796E2D6465636C@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
add $8,%rsp
ret
.section .text.f73796E2D64656673
f73796E2D64656673:
push %rdi
mov $0,%rax
push %rax
jmp b.497$
.497$:
mov %rax,(%rsp)
b.497$:
mov f70617273652D6465636C@GOTPCREL(%rip),%rax
add $-24,%rsp
push %rax
mov f746F6B656E2D636C6173732D6964@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f73796E2D646566@GOTPCREL(%rip),%rax
mov %rax,16(%rsp)
mov 40(%rsp),%rax
mov %rax,24(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
call *%rax
test %rax,%rax
jne .497$
pop %rax
add $8,%rsp
ret
.section .text.f73796E
f73796E:
push %rdi
mov f73796E2D707265@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f73796E2D64656673@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.498$:
add $8,%rsp
ret
.section .text.f6D61696E
f6D61696E:
push %rdi
push %rsi
push %rdx
mov f616C6C6F63@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
lea 24(%rsp),%rax
mov %rax,8(%rsp)
mov f7374727563742D73656D@GOTPCREL(%rip),%rax
push %rax
pop %rax
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
push %rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 40(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73746F7265@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f73656D2D2D6D656D@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 40(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 32(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f63617265742D696E6974@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov 48(%rsp),%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f746F6B656E2D72656164@GOTPCREL(%rip),%rax
add $-16,%rsp
push %rax
mov f746F6B656E2D6765742D6361726574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
mov f746F6B656E2D6765742D7370616E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov f73656D2D746F6B656E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 56(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
pop %rax
pop %rdi
pop %rsi
call *%rax
mov f73796E@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov f73656D2D6765742D6F7574@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov 16(%rsp),%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
.504$:
.503$:
.502$:
.501$:
.500$:
add $8,%rsp
add $24,%rsp
ret
.section .text.f5F7374617274
f5F7374617274:
mov f72756E74696D65@GOTPCREL(%rip),%rax
add $-32,%rsp
push %rax
mov f6D61696E@GOTPCREL(%rip),%rax
mov %rax,8(%rsp)
mov f706F7732@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $24,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,16(%rsp)
mov f706F7732@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $20,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,24(%rsp)
mov f706F7732@GOTPCREL(%rip),%rax
add $-8,%rsp
push %rax
mov $23,%rax
mov %rax,8(%rsp)
pop %rax
pop %rdi
call *%rax
mov %rax,32(%rsp)
pop %rax
pop %rdi
pop %rsi
pop %rdx
pop %rcx
call *%rax
ret
