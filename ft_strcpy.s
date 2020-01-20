global _ft_strcpy

;USAGE: char *ft_strcpy(char *dest, const char *srcs)
; _null:
; 	mov rax, 0
; 	ret
;
; _ft_strcpy:
; 	cmp rdi, 0 ; if dest == NULL
; 	je	_null
; 	cmp rsi, 0 ; if srcs == NULL
; 	je _null
; 	mov rax, rdi

_ft_strcpy:
	mov rax, rdi
loop:
	cmp byte [rsi], 0
	je end
	mov		al, [rsi]
	mov		[rdi], al
	inc rsi
	inc rdi
	jmp loop

end:
	mov [rdi], byte 0
	ret
