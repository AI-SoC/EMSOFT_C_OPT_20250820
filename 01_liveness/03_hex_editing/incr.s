	.file	"incr.c"
	.text
	.comm	g1, 4, 2
	.data
	.align 4
k2:
	.long	789
	.text
	.globl	init
	.def	init;	.scl	2;	.type	32;	.endef
	.seh_proc	init
init:
	.seh_endprologue
	leaq	g1(%rip), %rax
	movl	$100, (%rax)
	nop
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "g1 temperature is hot..\0"
.LC1:
	.ascii "s temperature is hot..\0"
	.text
	.globl	incr
	.def	incr;	.scl	2;	.type	32;	.endef
	.seh_proc	incr
incr:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	leaq	g1(%rip), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	leaq	g1(%rip), %rax
	movl	%edx, (%rax)
	leaq	g1(%rip), %rax
	movl	(%rax), %eax
	cmpl	$103, %eax
	jne	.L3
	leaq	.LC0(%rip), %rcx
	call	puts
.L3:
	movl	s.3229(%rip), %eax
	addl	$1, %eax
	movl	%eax, s.3229(%rip)
	movl	s.3229(%rip), %eax
	cmpl	$4, %eax
	jne	.L4
	leaq	.LC1(%rip), %rcx
	call	puts
.L4:
	movl	16(%rbp), %eax
	addl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
.lcomm s.3229,4,4
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
