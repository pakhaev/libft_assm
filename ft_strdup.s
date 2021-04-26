extern  _malloc
extern  _ft_strlen
extern  _ft_strcpy

global  _ft_strdup

_ft_strdup:							
            cmp rdi, byte 0
            je .err
				
			push rdi
            call _ft_strlen
            inc rax
            mov rdi, rax
            call _malloc
            cmp rax, 0
            je .err_malloc

            pop rdi

            mov rsi, rdi
            mov rdi, rax
            call _ft_strcpy
            ret

.err:
            mov rax, 0
            ret
	

.err_malloc:
            mov rax, -1
            ret
