section .text
global memmove

memmove:
mov rax, 0
mov rcx, 0

.index_zero:
cmp rdx, 0
je .done
.fill:
mov bl, [rsi]
mov [rdi + rcx], bl
inc rsi
inc rcx
cmp rdx, rcx
jne .fill
.done:
mov rax, rdi
ret
