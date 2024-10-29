	.file	"main_vec.cpp"
	.text
	.p2align 4
	.globl	_Z10operationsPPiS0_yyS0_S0_
	.def	_Z10operationsPPiS0_yyS0_S0_;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10operationsPPiS0_yyS0_S0_
_Z10operationsPPiS0_yyS0_S0_:
.LFB2366:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rbx
	testq	%r8, %r8
	je	.L34
	testq	%r9, %r9
	je	.L34
	movq	%r9, %rax
	movq	%r9, %r15
	movq	%r9, %r14
	leaq	-1(%r9), %r12
	andq	$-8, %rax
	andl	$7, %r15d
	shrq	$3, %r14
	xorl	%ecx, %ecx
	movq	%rax, 24(%rsp)
	movq	%r15, %rax
	salq	$5, %r14
	movq	%r15, 8(%rsp)
	decq	%rax
	movq	%rax, 16(%rsp)
	.p2align 4
	.p2align 3
.L3:
	movq	(%rsi,%rcx,8), %rax
	movq	(%rdi,%rcx,8), %rdx
	cmpq	$2, %r12
	ja	.L11
.L12:
	xorl	%r8d, %r8d
	.p2align 4
	.p2align 3
.L9:
	movl	(%rax,%r8,4), %r10d
	addl	(%rdx,%r8,4), %r10d
	movl	%r10d, (%rax,%r8,4)
	subl	(%rdx,%r8,4), %r10d
	movl	%r10d, (%rax,%r8,4)
	incq	%r8
	cmpq	%r8, %r9
	jne	.L9
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.L3
.L33:
	vzeroupper
.L34:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4
	.p2align 3
.L36:
	testq	%r15, %r15
	je	.L6
	cmpq	$2, 16(%rsp)
	movq	8(%rsp), %r11
	jbe	.L15
	movq	24(%rsp), %rbp
.L4:
	leaq	0(,%rbp,4), %r8
	leaq	(%rax,%r8), %r10
	addq	%rdx, %r8
	vmovdqu	(%r10), %xmm2
	vpaddd	(%r8), %xmm2, %xmm0
	vmovdqu	%xmm0, (%r10)
	vpsubd	(%r8), %xmm0, %xmm0
	movq	%r11, %r8
	andq	$-4, %r8
	addq	%rbp, %r8
	andl	$3, %r11d
	vmovdqu	%xmm0, (%r10)
	je	.L6
.L7:
	leaq	0(,%r8,4), %r11
	leaq	(%rax,%r11), %rbp
	leaq	(%rdx,%r11), %r13
	movl	0(%r13), %r10d
	addl	0(%rbp), %r10d
	movl	%r10d, 0(%rbp)
	subl	0(%r13), %r10d
	movl	%r10d, 0(%rbp)
	leaq	1(%r8), %r10
	cmpq	%r9, %r10
	jnb	.L6
	leaq	4(%rax,%r11), %rbp
	leaq	4(%rdx,%r11), %r13
	addq	$2, %r8
	movl	0(%r13), %r10d
	addl	0(%rbp), %r10d
	movl	%r10d, 0(%rbp)
	subl	0(%r13), %r10d
	movl	%r10d, 0(%rbp)
	cmpq	%r9, %r8
	jnb	.L6
	leaq	8(%rax,%r11), %r8
	leaq	8(%rdx,%r11), %rdx
	movl	(%rdx), %eax
	addl	(%r8), %eax
	movl	%eax, (%r8)
	subl	(%rdx), %eax
	movl	%eax, (%r8)
.L6:
	incq	%rcx
	cmpq	%rbx, %rcx
	je	.L33
	movq	(%rsi,%rcx,8), %rax
	movq	(%rdi,%rcx,8), %rdx
.L11:
	leaq	31(%rax), %r8
	subq	%rdx, %r8
	cmpq	$62, %r8
	jbe	.L12
	cmpq	$6, %r12
	jbe	.L14
	movq	%rax, %r8
	movq	%rdx, %r10
	leaq	(%rax,%r14), %r11
	.p2align 4
	.p2align 3
.L5:
	vmovdqu	(%r8), %ymm1
	addq	$32, %r8
	addq	$32, %r10
	vpaddd	-32(%r10), %ymm1, %ymm0
	vmovdqu	%ymm0, -32(%r8)
	vpsubd	-32(%r10), %ymm0, %ymm0
	vmovdqu	%ymm0, -32(%r8)
	cmpq	%r11, %r8
	jne	.L5
	jmp	.L36
.L14:
	movq	%r9, %r11
	xorl	%ebp, %ebp
	jmp	.L4
.L15:
	movq	24(%rsp), %r8
	jmp	.L7
	.seh_endproc
	.p2align 4
	.globl	_Z14GenerateMatrixyy
	.def	_Z14GenerateMatrixyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z14GenerateMatrixyy
_Z14GenerateMatrixyy:
.LFB2367:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	shrq	$60, %rax
	jne	.L38
	leaq	0(,%rcx,8), %rbp
	movq	%rbp, %rcx
	call	_Znay
	movq	%rax, %r12
	testq	%rbx, %rbx
	je	.L37
	movabsq	$2305843009213693950, %rax
	cmpq	%rdi, %rax
	jb	.L38
	leaq	0(,%rdi,4), %rsi
	movq	%r12, %rbx
	addq	%r12, %rbp
	.p2align 4
	.p2align 3
.L43:
	movq	%rsi, %rcx
	call	_Znay
	movq	%rax, (%rbx)
	testq	%rdi, %rdi
	je	.L41
	xorl	%r13d, %r13d
	.p2align 4
	.p2align 3
.L42:
	call	rand
	movl	%eax, %r14d
	call	rand
	movq	(%rbx), %r8
	movslq	%r14d, %rcx
	movl	%eax, %edx
	movl	%r14d, %eax
	imulq	$680390859, %rcx, %rcx
	sarl	$31, %eax
	movl	%edx, %r9d
	sarl	$31, %r9d
	sarq	$36, %rcx
	subl	%eax, %ecx
	imull	$101, %ecx, %ecx
	subl	%ecx, %r14d
	movslq	%edx, %rcx
	imulq	$1374389535, %rcx, %rcx
	leal	-50(%r14), %eax
	sarq	$36, %rcx
	subl	%r9d, %ecx
	imull	$50, %ecx, %ecx
	subl	%ecx, %edx
	leal	1(%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%eax, (%r8,%r13)
	addq	$4, %r13
	cmpq	%rsi, %r13
	jne	.L42
.L41:
	addq	$8, %rbx
	cmpq	%rbp, %rbx
	jne	.L43
.L37:
	movq	%r12, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
.L38:
	call	__cxa_throw_bad_array_new_length
	nop
	.seh_endproc
	.p2align 4
	.globl	_Z12CreateMatrixyy
	.def	_Z12CreateMatrixyy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12CreateMatrixyy
_Z12CreateMatrixyy:
.LFB2368:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rax
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	shrq	$60, %rax
	jne	.L53
	leaq	0(,%rcx,8), %rbp
	movq	%rbp, %rcx
	call	_Znay
	movq	%rax, %r12
	testq	%rbx, %rbx
	je	.L52
	movabsq	$2305843009213693950, %rax
	cmpq	%rdi, %rax
	jb	.L53
	leaq	0(,%rdi,4), %rsi
	movq	%r12, %rbx
	addq	%r12, %rbp
	.p2align 4
	.p2align 3
.L57:
	movq	%rsi, %rcx
	call	_Znay
	movq	%rax, %rcx
	movq	%rax, (%rbx)
	testq	%rdi, %rdi
	je	.L56
	movq	%rsi, %r8
	xorl	%edx, %edx
	call	memset
.L56:
	addq	$8, %rbx
	cmpq	%rbx, %rbp
	jne	.L57
.L52:
	movq	%r12, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
.L53:
	call	__cxa_throw_bad_array_new_length
	nop
	.seh_endproc
	.p2align 4
	.globl	_Z12DeleteMatrixPPiy
	.def	_Z12DeleteMatrixPPiy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z12DeleteMatrixPPiy
_Z12DeleteMatrixPPiy:
.LFB2369:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	testq	%rdx, %rdx
	je	.L66
	xorl	%ebx, %ebx
	.p2align 4
	.p2align 3
.L68:
	movq	(%rdi,%rbx,8), %rcx
	testq	%rcx, %rcx
	je	.L67
	call	_ZdaPv
.L67:
	incq	%rbx
	cmpq	%rbx, %rsi
	jne	.L68
.L69:
	movq	%rdi, %rcx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	_ZdaPv
	.p2align 4
	.p2align 3
.L66:
	testq	%rcx, %rcx
	jne	.L69
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB2370:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	xorl	%ecx, %ecx
	call	*__imp__time64(%rip)
	movl	%eax, %ecx
	call	srand
	movl	$5000, %edx
	movl	$4000, %ecx
	call	_Z14GenerateMatrixyy
	movl	$5000, %edx
	movl	$4000, %ecx
	movq	%rax, %r12
	call	_Z14GenerateMatrixyy
	movl	$5000, %edx
	movl	$4000, %ecx
	movq	%rax, %rbp
	call	_Z12CreateMatrixyy
	movl	$5000, %edx
	movl	$4000, %ecx
	movq	%rax, %rsi
	call	_Z12CreateMatrixyy
	movq	%rax, %rbx
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	.p2align 4
	.p2align 3
.L77:
	movq	(%r12,%r9,8), %rdx
	movq	0(%rbp,%r9,8), %rcx
	xorl	%eax, %eax
	leaq	31(%rdx), %r8
	subq	%rcx, %r8
	cmpq	$62, %r8
	jbe	.L78
	.p2align 4
	.p2align 3
.L80:
	vmovdqu	(%rdx,%rax), %ymm1
	vpaddd	(%rcx,%rax), %ymm1, %ymm0
	vmovdqu	%ymm0, (%rdx,%rax)
	vpsubd	(%rcx,%rax), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$20000, %rax
	jne	.L80
.L79:
	incq	%r9
	cmpq	$4000, %r9
	jne	.L77
	vzeroupper
	call	_ZNSt6chrono3_V212steady_clock3nowEv
	movq	.refptr._ZSt4cout(%rip), %rcx
	subq	%rdi, %rax
	movq	%rax, %rdx
	call	_ZNSo9_M_insertIxEERSoT_
	movq	%rax, %rdi
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %r13
	testq	%r13, %r13
	je	.L89
	cmpb	$0, 56(%r13)
	je	.L83
	movzbl	67(%r13), %eax
.L84:
	movsbl	%al, %edx
	movq	%rdi, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	movq	%r12, %rcx
	movl	$4000, %edx
	call	_Z12DeleteMatrixPPiy
	movq	%rbp, %rcx
	movl	$4000, %edx
	call	_Z12DeleteMatrixPPiy
	movq	%rsi, %rcx
	movl	$4000, %edx
	call	_Z12DeleteMatrixPPiy
	movl	$4000, %edx
	movq	%rbx, %rcx
	call	_Z12DeleteMatrixPPiy
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	ret
	.p2align 4
	.p2align 3
.L78:
	movl	(%rdx,%rax,4), %r8d
	addl	(%rcx,%rax,4), %r8d
	movl	%r8d, (%rdx,%rax,4)
	subl	(%rcx,%rax,4), %r8d
	movl	%r8d, (%rdx,%rax,4)
	incq	%rax
	cmpq	$5000, %rax
	jne	.L78
	jmp	.L79
.L83:
	movq	%r13, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%r13), %rax
	movl	$10, %edx
	movq	%r13, %rcx
	call	*48(%rax)
	jmp	.L84
.L89:
	call	_ZSt16__throw_bad_castv
	nop
	.seh_endproc
	.ident	"GCC: (GNU) 13.2.0"
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	__cxa_throw_bad_array_new_length;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212steady_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
