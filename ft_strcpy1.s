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
	mov rax, rsi
_str_cpy1:
	; mov rsp, [rsi] ; cpy value ?
	mov rdx, [rdi] ; cpy value ?
	mov [rsi], rdx ; cpy value ?
	inc rsi ; increment both
	inc rdi
	cmp [rdi], byte 0 ; if *src == \0
	jne _str_cpy1
	je _end

_end:
	ret
