	.file	"lab1_3.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp				; stack[top-0] <- [rbp]
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp			; rbp <- [rsp]
	.cfi_def_cfa_register 6
	sub	rsp, 48				; rsp <- [rsp] - 48
	mov	rax, QWORD PTR fs:40		; rax <- [40]
	mov	QWORD PTR [rbp-8], rax		; rbp-8 <- [rax]
	xor	eax, eax			; eax <- [eax] xor [eax]
	mov	DWORD PTR [rbp-32], 1		; rbp-32 <- 1
	mov	DWORD PTR [rbp-28], 2		; rbp-28 <- 2
	mov	DWORD PTR [rbp-24], 3		; rbp-24 <- 3
	mov	DWORD PTR [rbp-20], 4		; rbp-20 <- 4
	mov	DWORD PTR [rbp-16], 5		; rbp-16 <- 5
	mov	DWORD PTR [rbp-36], 0		; rbp-36 <- 0
	jmp	.L2				; jump to line 2
.L3:
	mov	eax, DWORD PTR [rbp-36]		; eax <- [rbp-36] ; eax <- 0//after 5 jumps its value becomes 4
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	eax, DWORD PTR [rbp-32+rax*4]	; eax <- [rbp-32+rax*4] ; eax <- 1
	lea	edx, [rax+1]			; edx <- [rax+1] ; edx <- 2//after 5 jumps its value becomes 6
	mov	eax, DWORD PTR [rbp-36]		; eax <- [rbp-36] ; eax <- 0
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	DWORD PTR [rbp-32+rax*4], edx	; rbp-32+rax*4 <- [edx]
	add	DWORD PTR [rbp-36], 1		; rbp-36 <- [rbp-36] + 1
.L2:
	cmp	DWORD PTR [rbp-36], 4		; compare [rbp-36] and 4
	jle	.L3				; jump to line 3 if less than or equal (conditional jump)
	mov	eax, 0				; eax <- 0
	mov	rcx, QWORD PTR [rbp-8]		; rcx <- [rbp-8] ; 
	xor	rcx, QWORD PTR fs:40		; rcx <- [rcx] xor [40] ; rcx <- 0  
	je	.L5				; jump to line 5 if less than or equal (conditional jump)	
	call	__stack_chk_fail		; terminate a function in case of stack overflow
.L5:
	leave					; rbp <- stack[top-0]
	.cfi_def_cfa 7, 8
	ret					; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
