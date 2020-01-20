global _ft_strdup
extern _ft_strlen
; extern _ft_strcpy
extern _malloc

_ft_strdup:
	cmp rdi, 0
	je error
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je error
	pop rcx
	mov byte[rax + r14], 0
	mov rdi, rax
	pop rsi
	cld
	repnz movsb
	ret

error:
	pop rax
	ret