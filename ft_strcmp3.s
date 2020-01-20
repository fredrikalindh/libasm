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
	mov rax, 1
	ret
small:
	mov rax, -1
	ret
equal:
	mov rax, 0
	ret


	_ft_strcmp:
		push r12
		push r13
		push rcx
		mov r12, [rdi]
		mov r13, [rsi]
		mov rcx, -1
	loop:
		inc rcx
		cmp byte [r12 + rcx], 0
		je lend
		mov dl, byte[r12 + rcx]
		cmp dl, byte[r13 + rcx]
		je loop

	lend:
		xor rax, rax
		mov al, byte [r12 + rcx]
		sub al, byte [r13 + rcx]
		jnc end
		neg al
		neg eax

	end:
		pop r12
		pop r13
		pop rcx
		ret