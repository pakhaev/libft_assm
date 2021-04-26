global _ft_strcmp

_ft_strcmp:
    mov rcx, -1
    mov rax, 0
    mov rbx, 0
    jmp .while

.while:
    inc rcx
    mov al, byte[rdi + rcx]
    mov bl, byte[rsi + rcx]
    
    cmp al, bl
    jne .return

    cmp al, byte 0
    je .end
    cmp bl, byte 0
    jmp .while

.return:
    sub rax, rbx
    ret

.end:
    mov rax, 0
    ret
