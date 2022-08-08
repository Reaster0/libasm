; rax strlen(rax) ? rdi

global ft__strlen

ft__strlen:
	mov rax, 0

nextchar:
	cmp byte[rdi + rax], 0
	jz ret
	inc rax
	jmp nextchar

ret:
	ret