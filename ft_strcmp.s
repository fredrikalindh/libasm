global _ft_strcmp

;USAGE: int ft_strcmp(char *s1, const char *s2)
_null:
	mov rax, 0
	ret

_ft_strcmp:
	cmp rdi, 0 ; if dest == NULL
	je	_null
	cmp rsi, 0 ; if srcs == NULL
	je _null

_loop:
	mov al, byte [rsi]
	cmp byte [rsi], al
	jne end
	inc rsi ; increment both
	inc rdi
	jmp _loop

end:
	mov rsi, rdx
	sub byte [rdx], al
	mov rax, [rdx]
	ret
