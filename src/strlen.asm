section .text
global strlen

strlen:
    mov rax, 0
.null_search:
    cmp byte [rdi + rax], 0
    je .result
    inc rax
    jmp .null_search
.result:
    ret