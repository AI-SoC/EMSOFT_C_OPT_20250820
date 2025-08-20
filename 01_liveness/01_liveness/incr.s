	.file	"incr.c"
	.text
	.comm	g1,4,4
	.comm	table,12,8
	.globl	coef
	.section	.rodata
	.align 16
	.type	coef, @object
	.size	coef, 20
coef:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.data
	.align 4
	.type	k2, @object
	.size	k2, 4
k2:
	.long	789
	.text
	.globl	init
	.type	init, @function
init:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$100, g1(%rip)
	movl	$1, table(%rip)
	movl	$3, 4+table(%rip)
	movl	$7, 8+table(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	init, .-init
	.section	.rodata
.LC0:
	.string	"g1 temperature is hot.."
.LC1:
	.string	"s temperature is hot.."
	.text
	.globl	incr
	.type	incr, @function
incr:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	g1(%rip), %eax
	addl	$1, %eax
	movl	%eax, g1(%rip)
	movl	g1(%rip), %eax
	cmpl	$103, %eax
	jne	.L3
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.L3:
	movl	s.2325(%rip), %eax
	addl	$1, %eax
	movl	%eax, s.2325(%rip)
	movl	s.2325(%rip), %eax
	cmpl	$4, %eax
	jne	.L4
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.L4:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	incr, .-incr
	.local	s.2325
	.comm	s.2325,4,4
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
