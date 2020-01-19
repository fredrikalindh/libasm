global _ft_strcpy

;USAGE: char *ft_strcpy(char *dest, const char *srcs)
_null:
	mov rax, 0
	ret

_ft_strcpy:
	cmp rdi, 0 ; if dest == NULL
	je	_null
	cmp rsi, 0 ; if srcs == NULL
	je _null
	mov rax, rdi

_loop:
	cmp byte [rsi], 0x0
	je end
	mov		al, byte [rsi]
	mov		byte [rdi], al
	inc rsi ; increment both
	inc rdi
	jmp _loop

end:
	mov [rdi], byte 0x0
	ret
