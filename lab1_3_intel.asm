	.file	"lab1_3.c"
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
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-32], 1
	mov	DWORD PTR [rbp-28], 2
	mov	DWORD PTR [rbp-24], 3
	mov	DWORD PTR [rbp-20], 4
	mov	DWORD PTR [rbp-16], 5
	mov	DWORD PTR [rbp-36], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR [rbp-36]
	cdqe
	mov	eax, DWORD PTR [rbp-32+rax*4]
	lea	edx, [rax+1]
	mov	eax, DWORD PTR [rbp-36]
	cdqe
	mov	DWORD PTR [rbp-32+rax*4], edx
	add	DWORD PTR [rbp-36], 1
.L2:
	cmp	DWORD PTR [rbp-36], 4
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
