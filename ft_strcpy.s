global _ft_strcpy
extern ___error

_ft_strcpy:
    mov rax, 0
    cmp rsi, byte 0
    je .err
    jmp .while

.while:
    mov cl, byte [rsi + rax]
    mov byte [rdi + rax], cl
    cmp cl, 0
    je .return
    inc rax
    jmp .while

.err:
    mov rax, 0
    call ___error
    ret

.return:
    movsx rax, cl
    movsx rdx, cl
    mov rax, rdi
    ret
