global _ft_strlen

_ft_strlen:
	mov rcx, rdi
_ft_strlen_t:
	cmp [rdi], byte 0
	je _end
	inc rdi
	jmp _ft_strlen_t
_null:
	mov rax, -1
	ret
_end:
	sub rdi, rcx
	mov rax, rdi
	ret
