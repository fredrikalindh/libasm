global _ft_strlen

_ft_strlen:
	cmp rdi, 0
	je _null
	push rcx
	xor rcx, rcx ; mov rcx 0 ?
_ft_strlen_t:
	cmp [rdi], byte 0
	je _end
	inc rcx
	inc rdi
	jmp _ft_strlen_t
_null:
	mov rax, -1
	ret
_end:
	mov rax, rcx
	pop rcx
	ret
