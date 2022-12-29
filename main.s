	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/earnaud/Work/libasm" "main.c"
	.section	.rodata
.LC0:
	.string	"\nft_strlen tests:"
.LC1:
	.string	"Hello World!"
.LC2:
	.string	"%ld\n"
.LC3:
	.string	"\nft_strcpy tests:"
.LC4:
	.string	"Hello"
.LC5:
	.string	"\nstrcmp tests:"
.LC6:
	.string	"656"
.LC7:
	.string	"756"
.LC8:
	.string	"%d\n"
.LC9:
	.string	"\nft_write tests:"
.LC10:
	.string	"Hello World!\n"
.LC11:
	.string	"errno: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.file 1 "main.c"
	.loc 1 5 11
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.loc 1 5 11
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 7 2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 9 8
	leaq	.LC1(%rip), %rax
	movq	%rax, -48(%rbp)
	.loc 1 10 2
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	ft_strlen@PLT
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 11 2
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 14 2
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 16 14
	leaq	.LC4(%rip), %rax
	movq	%rax, -40(%rbp)
	.loc 1 18 2
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	ft_strcpy@PLT
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 19 2
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 21 2
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 23 2
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	ft_strcmp@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 24 2
	movl	$1, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 25 2
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	ft_strcmp@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 26 2
	movl	$0, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 27 2
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	ft_strcmp@PLT
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 28 2
	movl	$-1, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 31 2
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 33 2
	movl	$13, %edx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	ft_write@PLT
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 34 24
	call	__errno_location@PLT
	.loc 1 34 2
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 36 9
	movl	$0, %eax
	.loc 1 37 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 3 "/usr/include/unistd.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h"
	.file 5 "libasm.h"
	.file 6 "/usr/include/string.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b3
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x2
	.byte	0xc2
	.byte	0x1b
	.long	0x5f
	.uleb128 0x3
	.long	0x77
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0xa
	.long	0x77
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0xdc
	.byte	0x13
	.long	0x66
	.uleb128 0x5
	.long	.LASF12
	.byte	0x4
	.byte	0xd1
	.byte	0x17
	.long	0x43
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x3
	.long	0xae
	.uleb128 0xb
	.uleb128 0xc
	.long	0x77
	.long	0xbf
	.uleb128 0xd
	.long	0x43
	.byte	0x13
	.byte	0
	.uleb128 0x3
	.long	0x7e
	.uleb128 0xe
	.long	.LASF24
	.byte	0x8
	.byte	0x25
	.byte	0xd
	.long	0xd0
	.uleb128 0x3
	.long	0x58
	.uleb128 0x4
	.long	.LASF15
	.byte	0xa
	.byte	0x9
	.long	0x83
	.long	0xf4
	.uleb128 0x2
	.long	0x58
	.uleb128 0x2
	.long	0xa9
	.uleb128 0x2
	.long	0x8f
	.byte	0
	.uleb128 0x4
	.long	.LASF16
	.byte	0x8
	.byte	0x5
	.long	0x58
	.long	0x10e
	.uleb128 0x2
	.long	0xbf
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0x4
	.long	.LASF17
	.byte	0x9
	.byte	0x7
	.long	0x72
	.long	0x128
	.uleb128 0x2
	.long	0x72
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x6
	.value	0x197
	.byte	0xf
	.long	0x8f
	.long	0x13f
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x7
	.value	0x164
	.byte	0xc
	.long	0x58
	.long	0x157
	.uleb128 0x2
	.long	0xbf
	.uleb128 0xf
	.byte	0
	.uleb128 0x4
	.long	.LASF20
	.byte	0x7
	.byte	0x8
	.long	0x8f
	.long	0x16c
	.uleb128 0x2
	.long	0xbf
	.byte	0
	.uleb128 0x10
	.long	.LASF25
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.long	0x58
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.string	"str"
	.byte	0x1
	.byte	0x9
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF21
	.byte	0x10
	.byte	0xe
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF22
	.byte	0x11
	.byte	0x7
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"long long int"
.LASF15:
	.string	"ft_write"
.LASF18:
	.string	"strlen"
.LASF12:
	.string	"size_t"
.LASF23:
	.string	"GNU C17 11.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF5:
	.string	"long unsigned int"
.LASF14:
	.string	"long long unsigned int"
.LASF16:
	.string	"ft_strcmp"
.LASF10:
	.string	"__ssize_t"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF11:
	.string	"ssize_t"
.LASF8:
	.string	"long int"
.LASF21:
	.string	"str1"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"printf"
.LASF17:
	.string	"ft_strcpy"
.LASF25:
	.string	"main"
.LASF7:
	.string	"short int"
.LASF24:
	.string	"__errno_location"
.LASF4:
	.string	"unsigned int"
.LASF22:
	.string	"str2"
.LASF20:
	.string	"ft_strlen"
.LASF6:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/earnaud/Work/libasm"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
