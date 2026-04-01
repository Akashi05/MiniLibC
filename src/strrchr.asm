section .text
global strrchr

strrchr:
    mov rax, 0
    mov rcx, 0
    mov rbx, 0
.check_equality:
    mov al, [rdi + rcx]
    cmp al, 0
    je .done
    cmp al, sil
    jne .not_find
    lea rbx, [rdi + rcx]
.not_find:
    inc rcx
    jmp .check_equality
.done:
    mov rax, rbx
    ret