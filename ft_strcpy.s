global _ft_strcpy

_ft_strcpy:
	mov rax, rdi
loop:
	mov		bl, [rsi]
	mov		[rdi], bl
	cmp		bl, 0
	je end
	inc rsi
	inc rdi
	jmp loop
end:
	ret
