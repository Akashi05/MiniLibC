section .text
global strchr

strchr:
    mov rax, 0
    mov rcx, 0
.check_equality:
    mov al, [rdi + rcx]
    cmp al, sil
    je .equality_fund
    cmp al, 0
    je .done
    inc rcx
    jmp .check_equality
.equality_fund:
    lea rax, [rdi + rcx]
.done:
    ret