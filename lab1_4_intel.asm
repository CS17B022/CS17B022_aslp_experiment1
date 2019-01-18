	.file	"lab1_4.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 80
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-64], 1
	mov	DWORD PTR [rbp-60], 2
	mov	DWORD PTR [rbp-56], 3
	mov	DWORD PTR [rbp-52], 4
	mov	DWORD PTR [rbp-48], 5
	mov	DWORD PTR [rbp-32], 5
	mov	DWORD PTR [rbp-28], 4
	mov	DWORD PTR [rbp-24], 3
	mov	DWORD PTR [rbp-20], 2
	mov	DWORD PTR [rbp-16], 1
	mov	DWORD PTR [rbp-72], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [rbp-72]
	cdqe
	mov	eax, DWORD PTR [rbp-64+rax*4]
	mov	DWORD PTR [rbp-68], eax
	mov	eax, DWORD PTR [rbp-72]
	cdqe
	mov	edx, DWORD PTR [rbp-32+rax*4]
	mov	eax, DWORD PTR [rbp-72]
	cdqe
	mov	DWORD PTR [rbp-64+rax*4], edx
	mov	eax, DWORD PTR [rbp-72]
	cdqe
	mov	edx, DWORD PTR [rbp-68]
	mov	DWORD PTR [rbp-32+rax*4], edx
	add	DWORD PTR [rbp-72], 1
.L2:
	cmp	DWORD PTR [rbp-72], 4
	jle	.L3
	mov	eax, 0
	mov	rcx, QWORD PTR [rbp-8]
	xor	rcx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
