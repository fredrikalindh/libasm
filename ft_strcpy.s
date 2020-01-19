global _ft_strcpy

;USAGE: char *ft_strcpy(char *dest, const char *srcs)
_null:
	mov eax, 0
	ret

_ft_strcpy:
	cmp edi, 0 ; if dest == NULL
	je	_null
	cmp esi, 0 ; if srcs == NULL
	je _null
	mov eax, edi
_str_cpy1:
	; mov rsp, [rsi] ; cpy value ?
	mov edx, [esi] ; cpy value ?
	inc edx ; increment both
	inc esi
	cmp [esi], byte 0 ; if *src == \0
	jne _str_cpy1

_end:
	ret
