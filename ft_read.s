extern ___error
global  _ft_read

_ft_read:
    mov rax, 0x2000003
    syscall
    jb .err
    ret

.err:
    push rax
    call ___error
    pop rax
    mov rax, -1
    ret

