global _ft_strcmp

;USAGE: int ft_strcmp(char *s1, const char *s2)

_ft_strcmp:
	mov r15b, [rdi]
	cmp r15b, [rsi]
	jne end
	cmp [rdi], byte 0
	je end
	inc rsi ; increment both
	inc rdi
	jmp _ft_strcmp

end:
	cmp r15b, [rsi]
	je equal
	jnc big
	jc small
big:
	mov rax, 1
	ret
small:
	mov rax, -1
	ret
equal:
	mov rax, 0
	ret