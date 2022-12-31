global ft_read
extern __errno_location

; rax ft_read(rdi, rsi, rdx)
; ssize_t read(int fd, void *buf, size_t count);

ft_read:
	push rbp
	mov rbp, rsp

	mov rax, 0
	syscall

	cmp rax, 0
	jle ft_read_error

	leave
	ret

ft_read_error:
	push rax
	call [rel __errno_location wrt ..got]
	pop qword[rax]
	neg qword[rax]
	mov rax, -1

	leave
	ret