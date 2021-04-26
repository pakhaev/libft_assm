section .text

global	_ft_strlen

_ft_strlen:
    mov rax, 0
    jmp .while

.while:	cmp [rdi + rax], byte 0
		je	.exit
		inc	rax
		jmp .while

.exit:	ret
