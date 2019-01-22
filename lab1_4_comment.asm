	.file	"lab1_4.c"
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
	sub	rsp, 80				; rsp <- rsp - 80
	mov	rax, QWORD PTR fs:40		; rax <- [40]
	mov	QWORD PTR [rbp-8], rax		; rbp-8 <- rax
	xor	eax, eax			; eax <- [eax] xor [eax]
	mov	DWORD PTR [rbp-64], 1		; rbp-64 <- 1
	mov	DWORD PTR [rbp-60], 2		; rbp-60 <- 2
	mov	DWORD PTR [rbp-56], 3		; rbp-56 <- 3
	mov	DWORD PTR [rbp-52], 4		; rbp-52 <- 4
	mov	DWORD PTR [rbp-48], 5		; rbp-48 <- 5
	mov	DWORD PTR [rbp-32], 5		; rbp-32 <- 5
	mov	DWORD PTR [rbp-28], 4		; rbp-28 <- 4
	mov	DWORD PTR [rbp-24], 3		; rbp-24 <- 3
	mov	DWORD PTR [rbp-20], 2		; rbp-20 <- 2
	mov	DWORD PTR [rbp-16], 1		; rbp-16 <- 1
	mov	DWORD PTR [rbp-72], 0		; rbp-72 <- 0
	jmp	.L2				; jump to line 2
.L3:
	mov	eax, DWORD PTR [rbp-72]		; eax <- [rbp-72] ; eax <- (0,1,2,3,4) //respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	eax, DWORD PTR [rbp-64+rax*4]	; eax <- [rbp-64+rax*4] ; eax <- (1,2,3,4,5) //respective values after each instruction call
	mov	DWORD PTR [rbp-68], eax		; [rbp-68] <- [eax]
	mov	eax, DWORD PTR [rbp-72]		; eax <- [rbp-72] ; eax <- (0,1,2,3,4) //respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	edx, DWORD PTR [rbp-32+rax*4]	; edx <- [rbp-32+rax*4] ; edx <- (5,4,3,2,1) //respective values after each instruction call
	mov	eax, DWORD PTR [rbp-72]		; eax <- [rbp-72] ; eax <- (0,1,2,3,4) //respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	DWORD PTR [rbp-64+rax*4], edx	; rbp-64+rax*4 <- [edx] 
	mov	eax, DWORD PTR [rbp-72]		; eax <- [rbp-72] ; eax <- (0,1,2,3,4) //respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	edx, DWORD PTR [rbp-68]		; edx <- [rbp-68] ; edx <- (1,2,3,4,5) //respective values after each instruction call
	mov	DWORD PTR [rbp-32+rax*4], edx	; rbp-32+rax*4 <- [edx]
	add	DWORD PTR [rbp-72], 1		; rbp-72 <- [rbp-72] + 1
.L2:
	cmp	DWORD PTR [rbp-72], 4		; compare [rbp-72] and 4
	jle	.L3				; jump to line 3 if less than or equal (conditional jump)
	mov	eax, 0				; eax <- 0
	mov	rcx, QWORD PTR [rbp-8]		; rcx <- [rbp-8]
	xor	rcx, QWORD PTR fs:40		; rcx <- [rcx] xor [40] ; rcx <- 0
	je	.L5				; jump to line 5 if equal or zero
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
