	.file	"lab1_5.c"
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
	sub	rsp, 64
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-48], 3
	mov	DWORD PTR [rbp-44], 6
	mov	DWORD PTR [rbp-40], 7
	mov	DWORD PTR [rbp-36], 5
	mov	DWORD PTR [rbp-32], 8
	mov	DWORD PTR [rbp-28], 9
	mov	DWORD PTR [rbp-24], 1
	mov	DWORD PTR [rbp-20], 2
	mov	DWORD PTR [rbp-16], 4
	mov	DWORD PTR [rbp-12], 0
	mov	eax, DWORD PTR [rbp-48]
	mov	DWORD PTR [rbp-60], eax
	mov	eax, DWORD PTR [rbp-48]
	mov	DWORD PTR [rbp-56], eax
	mov	DWORD PTR [rbp-52], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	cmp	eax, DWORD PTR [rbp-60]
	jge	.L3
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	mov	DWORD PTR [rbp-60], eax
.L3:
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	cmp	eax, DWORD PTR [rbp-56]
	jle	.L4
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	eax, DWORD PTR [rbp-48+rax*4]
	mov	DWORD PTR [rbp-56], eax
.L4:
	add	DWORD PTR [rbp-52], 1
.L2:
	cmp	DWORD PTR [rbp-52], 9
	jle	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR [rbp-8]
	xor	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
