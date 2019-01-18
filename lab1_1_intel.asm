	.file	"lab1_1.c"
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
	push	r12
	push	rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	mov	ebx, 10
	mov	r12d, 20
	lea	eax, [rbx+r12]
	mov	DWORD PTR [rbp-44], eax
	mov	eax, ebx
	sub	eax, r12d
	mov	DWORD PTR [rbp-40], eax
	mov	eax, ebx
	imul	eax, r12d
	mov	DWORD PTR [rbp-36], eax
	mov	eax, ebx
	cdq
	idiv	r12d
	mov	DWORD PTR [rbp-32], eax
	mov	eax, ebx
	and	eax, r12d
	mov	DWORD PTR [rbp-28], eax
	mov	eax, r12d
	or	eax, ebx
	mov	DWORD PTR [rbp-24], eax
	mov	eax, ebx
	not	eax
	mov	DWORD PTR [rbp-20], eax
	mov	eax, 0
	pop	rbx
	pop	r12
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
