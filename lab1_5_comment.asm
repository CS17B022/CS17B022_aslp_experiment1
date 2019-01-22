	.file	"lab1_5.c"
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
	sub	rsp, 64				; rsp <- rsp - 64
	mov	rax, QWORD PTR fs:40		; rax <- [40]
	mov	QWORD PTR [rbp-8], rax		; rbp-8 <- rax
	xor	eax, eax			; eax <- [eax] xor [eax]
	mov	DWORD PTR [rbp-48], 3		; rbp-48 <- 3
	mov	DWORD PTR [rbp-44], 6		; rbp-44 <- 6
	mov	DWORD PTR [rbp-40], 7		; rbp-40 <- 7
	mov	DWORD PTR [rbp-36], 5		; rbp-36 <- 5
	mov	DWORD PTR [rbp-32], 8		; rbp-32 <- 8
	mov	DWORD PTR [rbp-28], 9		; rbp-28 <- 9
	mov	DWORD PTR [rbp-24], 1		; rbp-24 <- 1
	mov	DWORD PTR [rbp-20], 2		; rbp-20 <- 2
	mov	DWORD PTR [rbp-16], 4		; rbp-16 <- 4
	mov	DWORD PTR [rbp-12], 0		; rbp-12 <- 0
	mov	eax, DWORD PTR [rbp-48]		; eax <- [rbp-48] ; eax <- 3
	mov	DWORD PTR [rbp-60], eax		; rbp-60 <- [eax]
	mov	eax, DWORD PTR [rbp-48]		; eax <- [rbp-48] ; eax <- 3
	mov	DWORD PTR [rbp-56], eax		; rbp-56 <- eax
	mov	DWORD PTR [rbp-52], 0		; rbp-52 <- 0
	jmp	.L2				; jump to line 2
.L5:
	mov	eax, DWORD PTR [rbp-52]		; eax <- [rbp-52] ; eax <- (0,1,2,3,4,5,6,7,8,9) // respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	eax, DWORD PTR [rbp-48+rax*4]	; eax <- [rbp-48+rax*4] ; eax <- (3,6,7,5,8,9,1,2,4,0) // respective values after each instruction call
	cmp	eax, DWORD PTR [rbp-60]		; compare eax and [rbp-60]
	jge	.L3				; jump to line 3 if greater than or equal
	mov	eax, DWORD PTR [rbp-52]		; eax <- [rbp-52] ; eax <- (6,9) // respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	eax, DWORD PTR [rbp-48+rax*4]	; eax <- [rbp-48+rax*4] ; eax <- (1,0) // respective values after each instruction call
	mov	DWORD PTR [rbp-60], eax		; rbp-60 <- [eax]
.L3:
	mov	eax, DWORD PTR [rbp-52]		; eax <- [rbp-52] ; eax <- (0,1,2,3,4,5,6,7,8,9) // respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	eax, DWORD PTR [rbp-48+rax*4]	; eax <- [rbp-56] ; eax <- (3,6,7,5,8,9,1,2,4,0) // respective values after each instruction call
	cmp	eax, DWORD PTR [rbp-56]		; compare eax and [rbp-56]
	jle	.L4				; jump to line 4 if less than or equal
	mov	eax, DWORD PTR [rbp-52]		; eax <- [rbp-52] ; eax <- (1,2,4,5) // respective values after each instruction call
	cdqe					; copies the sign (bit 31) of the doubleword in the EAX register into the high 32 bits of RAX
	mov	eax, DWORD PTR [rbp-48+rax*4]	; eax <- [rbp-48+rax*4] ; eax <- (6,7,8,9) // respective values after each instruction call
	mov	DWORD PTR [rbp-56], eax		; rbp-56 <- [eax]
.L4:
	add	DWORD PTR [rbp-52], 1		; rbp-52 <-[rbp-52] + 1
.L2:
	cmp	DWORD PTR [rbp-52], 9		; compare [rbp-52] and 9
	jle	.L5				; jump to line 5 if less than or equal to
	mov	eax, 0				; eax <- 0
	mov	rdx, QWORD PTR [rbp-8]		; rdx <- [rbp-8]
	xor	rdx, QWORD PTR fs:40		; rdx <- [rdx] xor [rdx] ; rdx <- 0
	je	.L7				; jump to line 7 if equal to or zero
	call	__stack_chk_fail		; terminate a function in case of stack overflow
.L7:
	leave					; rbp <- stack[top-0]
	.cfi_def_cfa 7, 8
	ret					; return
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
