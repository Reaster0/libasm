global ft_strcmp
; rax strcpy(rdi, rsi)

ft_strcmp:
	push rbp
	mov rbp, rsp

	mov rbx, -1
	jmp loop
	leave
	ret


loop:
	inc rbx
	cmp byte[rdi + rbx], 0
	je zero_case
	mov al, byte[rdi + rbx]
	cmp al, byte[rsi + rbx]
	je loop
	jl lesser
	jg greater


zero_case:
	cmp byte[rsi + rbx], 0
	jne lesser
	mov rax, 0
	leave
	ret

lesser:
	mov rax, -1
	leave
	ret

greater:
	mov rax, 1
	leave
	ret