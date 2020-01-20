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
	jg big
	jl small
big:
	mov ax, [rdi]
	sub ax, [rsi]
	ret
small:
	mov ax, [rsi]
	sub ax, [rdi]
	not rax
	inc rax
	ret
equal:
	mov rax, 0
	ret
