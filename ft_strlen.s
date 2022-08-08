; rax strlen(rax) ? rdi

global ft_strlen

section .text

ft_strlen:
	mov rax, 0

nextchar:
	cmp byte[rdi + rax], 0
	jz end
	inc rax
	jmp nextchar

end:
	ret