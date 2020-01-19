; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: frlindh <frlindh@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2020/01/19 18:52:45 by frlindh           #+#    #+#              ;
;    Updated: 2020/01/19 18:57:10 by frlindh          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	push	rbx
	push	rcx
	mov		rbx, rdi
	xor		al, al
	mov		rcx, 0xffffffff
	repne scasb
	sub		rdi, rbx
	mov		rax, rdi
	pop		rbx
	pop		rcx
	ret
