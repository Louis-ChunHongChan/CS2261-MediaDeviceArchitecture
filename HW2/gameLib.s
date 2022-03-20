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
	.file	"gameLib.c"
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
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L13
	push	{r4, r5, lr}
	mov	r1, r2
	ldr	lr, .L13+4
	ldr	r4, [r3]
	ldr	r5, .L13+8
	b	.L9
.L12:
	cmp	r3, #0
	addeq	r1, r1, #1
	rsb	ip, r1, r1, lsl #4
	add	r3, r3, ip, lsl #4
	lsl	r3, r3, #1
	cmp	r2, r5
	strh	r0, [r4, r3]	@ movhi
	beq	.L5
.L10:
	add	r2, r2, #1
.L9:
	umull	ip, r3, lr, r2
	lsr	r3, r3, #7
	rsb	r3, r3, r3, lsl #4
	cmp	r2, #0
	sub	r3, r2, r3, lsl #4
	bne	.L12
	rsb	r3, r1, r1, lsl #4
	lsl	r3, r3, #5
	strh	r0, [r4, r3]	@ movhi
	b	.L10
.L5:
	pop	{r4, r5, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	-2004318071
	.word	38399
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
.L16:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bhi	.L16
	mov	r2, #67108864
.L17:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L17
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
	ble	.L25
	ldr	r3, [sp, #12]
	add	ip, ip, r3
	cmp	ip, r1
	ble	.L25
	ldr	r3, [sp]
	add	r2, r0, r2
	cmp	r2, r3
	ble	.L25
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	cmp	r3, r0
	movle	r0, #0
	movgt	r0, #1
	bx	lr
.L25:
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
