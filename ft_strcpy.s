; rax strcpy(rdi, rsi)

global ft_strcpy

section .text

ft_strcpy:
	mov rax, 0

loop:
	mov cl, byte[rsi + rax]
	mov byte[rdi + rax], cl
	inc rax
	cmp byte[rsi + rax], 0
	je end
	jmp loop


end:
	mov byte[rdi + rax], 0
	mov rax, rdi
	ret