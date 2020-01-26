global _ft_list_push_front
extern _malloc

_ft_list_push_front:
	push rdi
	push rsi
	mov rdi, 16
	call _malloc
	pop rsi
	pop rdi
	cmp rax, 0
	je end
	mov [rax], rsi
	mov r15, [rdi]
	mov [rax + 8], r15
	mov [rdi], rax
end:
	ret