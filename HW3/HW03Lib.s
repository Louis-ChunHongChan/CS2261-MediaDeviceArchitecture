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
	.file	"HW03Lib.c"
	.text
	.align	2
	.global	setPixel
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawLargeBomb
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLargeBomb, %function
drawLargeBomb:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L13
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	smull	lr, r8, ip, r2
	sub	sp, sp, #20
	cmp	r2, #2
	sub	r8, r8, r2, asr #31
	ldrh	r2, [sp, #56]
	ble	.L5
	mov	lr, r3
	smull	r3, ip, lr, ip
	sub	ip, ip, lr, asr #31
	add	r3, r1, ip, lsl #1
	ldr	r5, .L13+4
	rsb	r3, r3, r3, lsl #4
	add	ip, ip, r1
	add	r9, r0, r8, lsl #1
	ldr	r7, [r5]
	rsb	ip, ip, ip, lsl #4
	lsl	r6, r3, #4
	str	r3, [sp]
	sub	fp, r9, r8
	add	r3, r1, lr
	sub	r6, r6, ip, lsl #4
	add	r5, r7, ip, lsl #5
	rsb	r3, r3, r3, lsl #4
	add	r10, r1, r8
	add	r6, r6, fp
	add	r4, r0, r3, lsl #4
	add	r5, r5, fp
	sub	r6, r6, r9
	rsb	r10, r10, r10, lsl #4
	str	r4, [sp, #12]
	add	r5, r5, r9
	rsb	r10, r4, r10, lsl #4
	add	lr, lr, lr, lsr #31
	rsb	r4, r0, ip, lsl #4
	lsl	r6, r6, #1
	add	lr, r1, lr, asr #1
	sub	r3, r4, r3, lsl #4
	add	r6, r6, #1440
	ldr	r4, [sp]
	lsl	r5, r5, #1
	str	r6, [sp]
	rsb	r1, r1, r1, lsl #4
	sub	r5, r5, #1424
	rsb	lr, lr, lr, lsl #4
	str	r5, [sp, #4]
	add	r4, r9, r4, lsl #4
	add	r5, r9, ip, lsl #4
	add	r10, r10, r9
	add	r3, r3, fp
	add	lr, r0, lr, lsl #4
	sub	fp, fp, r0
	sub	r9, r9, r0
	add	r0, r0, r1, lsl #4
	ldr	r1, [sp]
	add	ip, r1, #6
	str	ip, [sp]
	add	ip, r7, r4, lsl #1
	ldr	r4, [sp, #12]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	add	r3, r7, r4, lsl #1
	mov	r4, #0
	ldr	r1, [sp, #4]
	lsl	r10, r10, #1
	sub	r1, r1, #10
	rsb	r6, r8, #0
	str	r1, [sp, #4]
	add	lr, r7, lr, lsl #1
	add	r1, r7, r5, lsl #1
	add	r0, r7, r0, lsl #1
	lsl	fp, fp, #1
	sub	r10, r10, #480
	lsl	r9, r9, #1
	lsl	r7, r6, #1
.L8:
	ldr	r5, [sp, #4]
	sub	r6, r3, #480
	sub	r5, r5, r1
	strh	r2, [r0]	@ movhi
	strh	r2, [lr]	@ movhi
	strh	r2, [r9, lr]	@ movhi
	strh	r2, [r6]	@ movhi
	strh	r2, [ip]	@ movhi
	strh	r2, [r10, r3]	@ movhi
	strh	r2, [r7, r1]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r2, [r5]	@ movhi
	ldr	r5, [sp]
	cmp	r4, #2
	strh	r2, [r5, r1]	@ movhi
	ldrle	r5, [sp, #8]
	add	r4, r4, #1
	strhgt	r2, [r0, fp]	@ movhi
	strhle	r2, [r3, r5]	@ movhi
	strhgt	r2, [r3, fp]	@ movhi
	strhle	r2, [r7, ip]	@ movhi
	add	r0, r0, #480
	sub	r3, r3, #476
	add	ip, ip, #480
	cmp	r4, r8
	add	r0, r0, #2
	sub	r3, r3, #2
	add	ip, ip, #2
	add	lr, lr, #2
	add	r1, r1, #480
	blt	.L8
.L5:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	1431655766
	.word	.LANCHOR0
	.size	drawLargeBomb, .-drawLargeBomb
	.align	2
	.global	drawSmallBomb
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSmallBomb, %function
drawSmallBomb:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L23
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	smull	lr, r8, ip, r2
	sub	sp, sp, #20
	cmp	r2, #2
	sub	r8, r8, r2, asr #31
	ldrh	r2, [sp, #56]
	ble	.L15
	mov	lr, r3
	smull	r3, ip, lr, ip
	sub	ip, ip, lr, asr #31
	add	r3, r1, ip, lsl #1
	ldr	r5, .L23+4
	rsb	r3, r3, r3, lsl #4
	add	ip, ip, r1
	add	r9, r0, r8, lsl #1
	ldr	r7, [r5]
	rsb	ip, ip, ip, lsl #4
	lsl	r6, r3, #4
	str	r3, [sp]
	sub	fp, r9, r8
	add	r3, r1, lr
	sub	r6, r6, ip, lsl #4
	add	r5, r7, ip, lsl #5
	rsb	r3, r3, r3, lsl #4
	add	r10, r1, r8
	add	r6, r6, fp
	add	r4, r0, r3, lsl #4
	add	r5, r5, fp
	sub	r6, r6, r9
	rsb	r10, r10, r10, lsl #4
	str	r4, [sp, #12]
	add	r5, r5, r9
	rsb	r10, r4, r10, lsl #4
	add	lr, lr, lr, lsr #31
	rsb	r4, r0, ip, lsl #4
	lsl	r6, r6, #1
	add	lr, r1, lr, asr #1
	sub	r3, r4, r3, lsl #4
	add	r6, r6, #964
	ldr	r4, [sp]
	lsl	r5, r5, #1
	str	r6, [sp, #4]
	rsb	r1, r1, r1, lsl #4
	sub	r5, r5, #952
	rsb	lr, lr, lr, lsl #4
	str	r5, [sp]
	add	r4, r9, r4, lsl #4
	add	r5, r9, ip, lsl #4
	add	r10, r10, r9
	add	r3, r3, fp
	add	lr, r0, lr, lsl #4
	sub	fp, fp, r0
	sub	r9, r9, r0
	add	r0, r0, r1, lsl #4
	ldr	r1, [sp, #4]
	add	ip, r1, #2
	str	ip, [sp, #4]
	add	ip, r7, r4, lsl #1
	ldr	r4, [sp, #12]
	lsl	r3, r3, #1
	str	r3, [sp, #8]
	add	r3, r7, r4, lsl #1
	mov	r4, #0
	ldr	r1, [sp]
	lsl	r10, r10, #1
	sub	r1, r1, #2
	rsb	r6, r8, #0
	str	r1, [sp]
	add	lr, r7, lr, lsl #1
	add	r1, r7, r5, lsl #1
	add	r0, r7, r0, lsl #1
	lsl	fp, fp, #1
	sub	r10, r10, #480
	lsl	r9, r9, #1
	lsl	r7, r6, #1
.L18:
	ldr	r5, [sp]
	sub	r6, r3, #480
	sub	r5, r5, r1
	strh	r2, [r0]	@ movhi
	strh	r2, [lr]	@ movhi
	strh	r2, [r9, lr]	@ movhi
	strh	r2, [r6]	@ movhi
	strh	r2, [ip]	@ movhi
	strh	r2, [r10, r3]	@ movhi
	strh	r2, [r7, r1]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r2, [r5]	@ movhi
	ldr	r5, [sp, #4]
	cmp	r4, #2
	strh	r2, [r5, r1]	@ movhi
	ldrle	r5, [sp, #8]
	add	r4, r4, #1
	strhgt	r2, [r0, fp]	@ movhi
	strhle	r2, [r3, r5]	@ movhi
	strhgt	r2, [r3, fp]	@ movhi
	strhle	r2, [r7, ip]	@ movhi
	add	r0, r0, #480
	sub	r3, r3, #476
	add	ip, ip, #480
	cmp	r4, r8
	add	r0, r0, #2
	sub	r3, r3, #2
	add	ip, ip, #2
	add	lr, lr, #2
	add	r1, r1, #480
	blt	.L18
.L15:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	1431655766
	.word	.LANCHOR0
	.size	drawSmallBomb, .-drawSmallBomb
	.align	2
	.global	drawClawModel
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawClawModel, %function
drawClawModel:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L41
	smull	ip, r4, r3, r4
	cmp	r3, #2
	add	ip, r2, r2, lsr #31
	ldr	r5, [sp, #28]
	ldrh	lr, [sp, #32]
	sub	r4, r4, r3, asr #31
	asr	r6, ip, #1
	ble	.L30
	mov	r7, #0
	ldr	r3, .L41+4
	add	r9, r1, r4
	add	r9, r9, r6
	add	r8, r2, r0
	ldr	r3, [r3]
	rsb	r9, r9, r9, lsl #4
	sub	r8, r8, #1
	add	ip, r0, r9, lsl #4
	add	r8, r8, r9, lsl #4
	add	ip, r3, ip, lsl #1
	add	r3, r3, r8, lsl #1
.L29:
	add	r7, r7, #1
	strh	lr, [ip]	@ movhi
	cmp	r7, r4
	strh	lr, [r3]	@ movhi
	add	ip, ip, #480
	add	r3, r3, #476
	add	ip, ip, #2
	add	r3, r3, #2
	blt	.L29
.L30:
	cmp	r2, #1
	ble	.L28
	ldr	r2, .L41+4
	add	r3, r1, r4
	rsb	ip, r3, r3, lsl #4
	ldr	r2, [r2]
	add	r3, r0, r6
	add	r3, r3, ip, lsl #4
	add	r3, r2, r3, lsl #1
	mov	r2, r3
	mov	ip, #0
.L33:
	add	ip, ip, #1
	strh	lr, [r3]	@ movhi
	cmp	ip, r6
	strh	lr, [r2]	@ movhi
	add	r3, r3, #476
	add	r2, r2, #480
	add	r3, r3, #2
	add	r2, r2, #2
	blt	.L33
.L28:
	cmp	r5, #0
	ble	.L25
	mov	r2, #0
	ldr	r3, .L41+4
	add	r4, r4, r1
	ldr	r3, [r3]
	add	r0, r0, r6
	rsb	r4, r4, r4, lsl #4
	add	ip, r0, r4, lsl #3
	add	ip, r3, ip, lsl #1
	lsl	ip, ip, #1
	add	r3, r3, r0, lsl #1
.L36:
	cmp	r1, #0
	subne	r0, ip, r3
	add	r2, r2, #1
	strheq	lr, [r3]	@ movhi
	strhne	lr, [r0]	@ movhi
	cmp	r5, r2
	add	r3, r3, #480
	bne	.L36
.L25:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	1431655766
	.word	.LANCHOR0
	.size	drawClawModel, .-drawClawModel
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47
	ldr	r3, [r3]
	add	r2, r3, #76800
.L44:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r2
	bne	.L44
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.size	fillScreen, .-fillScreen
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L50:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L50
	mov	r2, #67108864
.L51:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L51
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [sp, #4]
	add	r3, r1, r3
	cmp	r3, ip
	blt	.L59
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	blt	.L59
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	blt	.L59
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	movlt	r0, #0
	movge	r0, #1
	bx	lr
.L59:
	mov	r0, #0
	bx	lr
	.size	collision, .-collision
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
