; rax strptrint (rax)
strprint:
	push rdx
	push rcx
	push rbx
	push rax
	mov rdi, rax
	call strlen

	mov rdx, rax
	pop rax,

	mov rcx, rax

	mov rbx, 1
	mov rax, 4
	int 0x80

	pop rbx
	pop rcx
	pop rdx
	ret

exit:
	mov rax, 1
	mov rbx, 0
	int 0x80