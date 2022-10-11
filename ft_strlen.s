global ft_strlen
; rax strlen(rdi)

ft_strlen:
	mov rax, 0

nextchar:
	cmp byte[rdi + rax], 0
	jz end
	inc rax
	jmp nextchar

end:
	ret
