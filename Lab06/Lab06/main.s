	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L6
	ldr	r1, .L6+4
	ldr	r4, .L6+8
	mov	lr, pc
	bx	r4
	mov	r3, #8192
	ldr	r2, .L6+12
	ldr	r1, .L6+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #512
	ldr	r3, .L6+20
	add	r2, r3, #1024
.L2:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L2
	ldr	r3, .L6+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L6+20
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #4096
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L7:
	.align	2
.L6:
	.word	83886592
	.word	spritesheetPal
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	shadowOAM
	.word	waitForVBlank
	.size	initialize, .-initialize
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r4, .L11
	ldr	r3, .L11+4
	mov	r9, r4
	mov	lr, pc
	bx	r3
	ldr	r8, .L11+8
	ldr	r7, .L11+12
	ldr	r6, .L11+16
	ldr	r5, .L11+20
.L9:
	mov	r3, #50
	mov	lr, #72
	mov	ip, #68
	mov	r0, #8
	mov	fp, #30
	mov	r10, #0
	ldr	r1, .L11+24
	ldr	r2, .L11+28
	strh	r3, [r4]	@ movhi
	strh	r3, [r4, #8]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #32]	@ movhi
	ldr	r3, .L11+32
	strh	r0, [r4, #36]	@ movhi
	strh	r1, [r4, #18]	@ movhi
	strh	r2, [r4, #26]	@ movhi
	strh	r3, [r4, #34]	@ movhi
	strh	r6, [r4, #2]	@ movhi
	strh	r5, [r4, #10]	@ movhi
	strh	fp, [r4, #4]	@ movhi
	strh	r10, [r4, #12]	@ movhi
	strh	lr, [r4, #20]	@ movhi
	strh	ip, [r4, #28]	@ movhi
	mov	lr, pc
	bx	r8
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, r9
	mov	r0, #3
	mov	lr, pc
	bx	r7
	b	.L9
.L12:
	.align	2
.L11:
	.word	shadowOAM
	.word	initialize
	.word	waitForVBlank
	.word	DMANow
	.word	16440
	.word	16456
	.word	16472
	.word	16488
	.word	16504
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
