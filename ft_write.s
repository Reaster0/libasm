global ft_write
extern __errno_location
; rax ft_write(rdi, rsi, rdx)
; ssize_t write(int fd, const void *buf, size_t count);

ft_write:
	push rbp
	mov rbp, rsp

	mov rax, 1
	syscall

	cmp rax, 0
	jle ft_write_error

	leave
	ret

ft_write_error:
	push rax
	call [rel __errno_location wrt ..got]
	pop qword[rax]
	neg qword[rax]
	mov rax, -1

	leave
	ret
