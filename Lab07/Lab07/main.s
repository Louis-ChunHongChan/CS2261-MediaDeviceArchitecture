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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #256
	ldr	r4, .L6
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L6+4
	mov	lr, pc
	bx	r4
	mov	r3, #1856
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L6+8
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	mov	r0, #3
	ldr	r2, .L6+12
	ldr	r1, .L6+16
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #56320
	mov	r3, #256
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L6+20
	ldr	r2, .L6+24
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L6+28
	ldr	r1, .L6+32
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L6+36
	mov	lr, pc
	bx	r3
	mov	r6, #3
	mov	ip, #0
	mov	r3, #4352
	mov	r8, #32
	mov	r7, #1
	mov	r10, #104
	mov	r9, #100
	mov	r1, ip
	mov	r4, r6
	mov	r2, #156
	mov	r0, #16
	mov	lr, #144
	strh	r3, [r5]	@ movhi
	ldr	r3, .L6+40
	stm	r3, {r9, r10}
	str	ip, [r3, #24]
	str	ip, [r3, #36]
	str	ip, [r3, #28]
	str	r8, [r3, #16]
	str	r8, [r3, #20]
	str	r7, [r3, #12]
	str	r7, [r3, #8]
	str	r6, [r3, #40]
	ldr	r3, .L6+44
.L2:
	str	r2, [r3, #4]
	sub	r2, r2, #32
	cmp	r2, #28
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r4, [r3, #40]
	str	r1, [r3, #28]
	add	r3, r3, #44
	bne	.L2
	mov	r1, #134
	mov	r2, #172
	ldr	r3, .L6+48
	ldr	r0, .L6+52
	ldrh	ip, [r3, #48]
	ldr	r3, .L6+56
	strh	ip, [r0]	@ movhi
	stm	r3, {r1, r2}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	DMANow
	.word	gameBgPal
	.word	gameBgTiles
	.word	100720640
	.word	gameBgMap
	.word	spritesheetPal
	.word	83886592
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	link
	.word	fairy
	.word	67109120
	.word	buttons
	.word	.LANCHOR0
	.size	initialize, .-initialize
	.global	__aeabi_idivmod
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	ldr	r4, .L26+4
	ldr	r6, .L26+8
	ldr	r5, .L26+12
	ldr	r9, .L26+16
	ldr	r8, .L26+20
	ldr	r7, .L26+24
.L22:
	ldr	r3, .L26+28
	ldrh	fp, [r3]
	cmp	fp, #0
	moveq	r2, #4
	ldreq	r3, [r4, #28]
	ldr	r10, [r4, #24]
	streq	r3, [r4, #32]
	add	r3, r10, r10, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	rsb	r3, r3, #142606336
	add	r3, r3, #557056
	streq	r2, [r4, #28]
	add	r3, r3, #2176
	ldr	r2, .L26+32
	add	r3, r3, #8
	cmp	r3, r2
	bcs	.L10
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	ldr	r3, .L26+36
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L10:
	ldrh	r3, [r9, #48]
	tst	r3, #64
	moveq	r2, #1
	ldreq	r3, [r6, #4]
	subeq	r3, r3, #1
	streq	r3, [r6, #4]
	ldrh	r3, [r9, #48]
	streq	r2, [r4, #28]
	ands	r3, r3, #128
	ldreq	r2, [r6, #4]
	streq	r3, [r4, #28]
	ldrh	r3, [r9, #48]
	addeq	r2, r2, #1
	streq	r2, [r6, #4]
	tst	r3, #32
	moveq	r2, #3
	ldreq	r3, [r6]
	subeq	r3, r3, #1
	streq	r3, [r6]
	ldrh	r3, [r9, #48]
	streq	r2, [r4, #28]
	tst	r3, #16
	moveq	r2, #2
	streq	r2, [r4, #28]
	ldr	r2, [r4, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldreq	r3, [r6]
	addeq	r3, r3, #1
	streq	r3, [r6]
	cmp	fp, #0
	ldreq	r3, [r4, #32]
	ldrne	r3, [r4, #28]
	addne	r10, r10, #1
	ldr	r0, .L26+40
	streq	fp, [r4, #36]
	streq	r3, [r4, #28]
	strne	r10, [r4, #24]
	cmp	r3, #4
	strh	r2, [r0, #2]	@ movhi
	moveq	r2, #0
	ldr	r10, .L26+44
	mov	fp, r10
	ldrne	r2, [r4, #36]
	ldr	r1, [r4]
	addne	r3, r3, r2, lsl #5
	streq	r2, [r4, #36]
	ldr	r2, .L26+40
	lsl	r3, r3, #2
	strh	r1, [r0]	@ movhi
	strh	r3, [r2, #4]	@ movhi
.L20:
	ldr	r2, [fp, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	add	r3, r2, r3, lsl #1
	add	r3, r3, r8
	cmp	r7, r3, ror #2
	str	r2, [fp, #24]
	bcc	.L19
	add	r0, fp, #36
	ldm	r0, {r0, r1}
	ldr	r3, .L26+36
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [fp, #36]
.L19:
	add	fp, fp, #44
	cmp	r5, fp
	bne	.L20
	ldr	r3, .L26+40
.L21:
	ldr	r0, [r10, #36]
	ldr	r1, [r10, #28]
	ldr	r2, [r10, #4]
	add	r0, r0, #6
	add	r1, r1, r0, lsl #6
	add	r10, r10, #44
	ldr	r0, [r10, #-44]
	orr	r2, r2, #16384
	cmp	r5, r10
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	add	r3, r3, #8
	bne	.L21
	ldr	r3, .L26+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L26+40
	mov	r0, #3
	ldr	ip, .L26+52
	mov	lr, pc
	bx	ip
	mov	r3, #67108864
	ldrh	r1, [r6]
	ldrh	r2, [r6, #4]
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	b	.L22
.L27:
	.align	2
.L26:
	.word	initialize
	.word	link
	.word	.LANCHOR0
	.word	fairy+176
	.word	67109120
	.word	715827880
	.word	357913940
	.word	buttons
	.word	286331153
	.word	__aeabi_idivmod
	.word	shadowOAM
	.word	fairy
	.word	waitForVBlank
	.word	DMANow
	.size	main, .-main
	.comm	fairy,176,4
	.comm	link,44,4
	.comm	shadowOAM,1024,4
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
