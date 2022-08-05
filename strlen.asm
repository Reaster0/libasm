; rax strlen(rbx)
strlen:
	push rbx
	mov rbx, rax

nextchar:
	cmp byte[eax], 0
	jz finished
	inc eax
	jmp nextchar

finished:
	sub rax, rbx
	pop rbx
	ret


; rax strptrint (rbx, rcx, rdx)
strprint:
	push rdx
	push rcx
	push rbx
	push rax
	call strlen

	mov rdx, rax
	pop rax,

	mov rcx, rax
	mov rbx, 1
	mov rax, 0
	int 0x80

	pop rbx
	pop rcx
	pop rdx
	ret

exit:
	mov rax, 1
	mov rbx, 0
	int 0x80