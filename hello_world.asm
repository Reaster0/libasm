; this is a test
;
; Author: Reaster

%include 'strlen.asm'

section.text:
	global _start

	_start:
		
		mov rax, message
		call strprint
		call exit

section.data:
	message db "Hello, World!", 10
	message_lenght equ $-message