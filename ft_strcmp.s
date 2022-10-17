global ft_strcmp
; rax strcpy(rdi, rsi)

ft_strcmp:
	mov rax, 0
	mov r8, 0
	push r13
	push r14

loop:
	jmp compare
	inc rbx
	jmp loop

zero_case:


compare:
	cmp byte[rdi + rbx], 0
	je lesser
	cmp byte[rsi + rbx], 0
	je greater

	mov al, byte[rdi + rbx]
	cmp al, byte[rsi + rbx]
	jl lesser
	jg greater
	je loop

rdi_zero:
	mov r14, 0
	cmp byte[rsi + rbx], 0
	je rip + 2
	ret
	mov r14, 1
	ret

rsi_zero:
	mov r13, 0
	cmp byte[rsi + rbx], 0
	je rip + 2
	ret
	mov r13, 1
	ret

lesser:
	mov rax, -1
	ret

greater:
	mov rax, 1
	ret