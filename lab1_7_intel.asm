	.file	"lab1_7.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	add	rsp, -128
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-120], 0
	jmp	.L2
.L3:
	mov	edi, 12
	call	malloc
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-120]
	cdqe
	mov	QWORD PTR [rbp-96+rax*8], rdx
	mov	edi, 12
	call	malloc
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-120]
	cdqe
	mov	QWORD PTR [rbp-64+rax*8], rdx
	mov	edi, 12
	call	malloc
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-120]
	cdqe
	mov	QWORD PTR [rbp-32+rax*8], rdx
	add	DWORD PTR [rbp-120], 1
.L2:
	cmp	DWORD PTR [rbp-120], 2
	jle	.L3
	mov	DWORD PTR [rbp-116], 0
	jmp	.L4
.L7:
	mov	DWORD PTR [rbp-112], 0
	jmp	.L5
.L6:
	mov	eax, DWORD PTR [rbp-116]
	cdqe
	lea	rdx, [0+rax*8]
	lea	rax, [rbp-96]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rbp-112]
	movsx	rdx, edx
	sal	rdx, 2
	add	rax, rdx
	mov	ecx, DWORD PTR [rbp-116]
	mov	edx, DWORD PTR [rbp-112]
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	mov	eax, DWORD PTR [rbp-116]
	cdqe
	lea	rdx, [0+rax*8]
	lea	rax, [rbp-64]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rbp-112]
	movsx	rdx, edx
	sal	rdx, 2
	add	rdx, rax
	mov	eax, DWORD PTR [rbp-116]
	sub	eax, DWORD PTR [rbp-112]
	mov	DWORD PTR [rdx], eax
	add	DWORD PTR [rbp-112], 1
.L5:
	cmp	DWORD PTR [rbp-112], 2
	jle	.L6
	add	DWORD PTR [rbp-116], 1
.L4:
	cmp	DWORD PTR [rbp-116], 2
	jle	.L7
	mov	DWORD PTR [rbp-108], 0
	jmp	.L8
.L13:
	mov	DWORD PTR [rbp-104], 0
	jmp	.L9
.L12:
	mov	eax, DWORD PTR [rbp-108]
	cdqe
	lea	rdx, [0+rax*8]
	lea	rax, [rbp-32]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rbp-104]
	movsx	rdx, edx
	sal	rdx, 2
	add	rax, rdx
	mov	DWORD PTR [rax], 0
	mov	DWORD PTR [rbp-100], 0
	jmp	.L10
.L11:
	mov	eax, DWORD PTR [rbp-108]
	cdqe
	lea	rdx, [0+rax*8]
	lea	rax, [rbp-32]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	edx, DWORD PTR [rbp-104]
	movsx	rdx, edx
	sal	rdx, 2
	add	rax, rdx
	mov	edx, DWORD PTR [rbp-108]
	movsx	rdx, edx
	lea	rcx, [0+rdx*8]
	lea	rdx, [rbp-32]
	add	rdx, rcx
	mov	rdx, QWORD PTR [rdx]
	mov	ecx, DWORD PTR [rbp-104]
	movsx	rcx, ecx
	sal	rcx, 2
	add	rdx, rcx
	mov	ecx, DWORD PTR [rdx]
	mov	edx, DWORD PTR [rbp-108]
	movsx	rdx, edx
	lea	rsi, [0+rdx*8]
	lea	rdx, [rbp-96]
	add	rdx, rsi
	mov	rdx, QWORD PTR [rdx]
	mov	esi, DWORD PTR [rbp-100]
	movsx	rsi, esi
	sal	rsi, 2
	add	rdx, rsi
	mov	esi, DWORD PTR [rdx]
	mov	edx, DWORD PTR [rbp-100]
	movsx	rdx, edx
	lea	rdi, [0+rdx*8]
	lea	rdx, [rbp-64]
	add	rdx, rdi
	mov	rdx, QWORD PTR [rdx]
	mov	edi, DWORD PTR [rbp-104]
	movsx	rdi, edi
	sal	rdi, 2
	add	rdx, rdi
	mov	edx, DWORD PTR [rdx]
	imul	edx, esi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR [rbp-100], 1
.L10:
	cmp	DWORD PTR [rbp-100], 2
	jle	.L11
	add	DWORD PTR [rbp-104], 1
.L9:
	cmp	DWORD PTR [rbp-104], 2
	jle	.L12
	add	DWORD PTR [rbp-108], 1
.L8:
	cmp	DWORD PTR [rbp-108], 2
	jle	.L13
	mov	eax, 0
	mov	rsi, QWORD PTR [rbp-8]
	xor	rsi, QWORD PTR fs:40
	je	.L15
	call	__stack_chk_fail
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
