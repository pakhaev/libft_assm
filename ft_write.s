extern ___error

global  _ft_write

_ft_write:
    mov rax, 0x2000004
    syscall
    jb .err
    ret

.err:
    push rax
    call ___error
    pop rax
    mov rax, -1
    ret
