global ft_strcmp
; rax strcpy(rdi, rsi)

ft_strcmp:
	mov rax, 0
	mov rbx, 0

loop:
	jmp compare
	inc rbx
	jmp loop

zero_case:
	cmp byte[rdi + rbx], 0
	je less
	cmp byte[rsi + rbx], 0
	je greater

compare:
	mov al, byte[rdi + rbx]
	cmp al, byte[rsi + rbx]
	jl less
	jg greater
	je loop

less:
	mov rax, -1
	ret

greater:
	mov rax, 1
	ret
