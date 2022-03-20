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
	.file	"lab01.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	ldr	r1, .L16
	ldr	r3, .L16+4
	strh	r1, [r2]	@ movhi
	ldr	r2, [r3]
	ldr	r0, .L16+8
	add	ip, r2, #16640
	add	r1, ip, #210
	add	ip, ip, #250
.L2:
	sub	r3, r1, #4800
.L3:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L3
	add	r1, r3, #2
	cmp	r1, ip
	bne	.L2
	mov	ip, #0
	mvn	r0, #32768
	add	r1, r2, #5248
	add	r1, r1, #34
.L4:
	add	ip, ip, #1
	sub	r3, r1, #4800
.L5:
	strh	r0, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L5
	cmp	ip, #20
	add	r1, r3, #2
	bne	.L4
	mov	r0, #0
	mov	r1, #31
	add	r2, r2, #45568
	add	r2, r2, #252
.L8:
	sub	r3, r2, #20
.L7:
	strh	r1, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L7
	add	r0, r0, #1
	add	r2, r2, #480
	cmp	r0, #20
	add	r2, r2, #2
	bne	.L8
.L9:
	b	.L9
.L17:
	.align	2
.L16:
	.word	1027
	.word	.LANCHOR0
	.word	31775
	.size	main, .-main
	.text
	.align	2
	.global	setPixel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19
	rsb	r1, r1, r1, lsl #4
	ldr	r3, [r3]
	add	r0, r0, r1, lsl #4
	lsl	r0, r0, #1
	strh	r2, [r3, r0]	@ movhi
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L26
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #4
	add	r1, r0, r1, lsl #4
	add	r3, r3, #4800
	add	r1, r3, r1, lsl #1
	add	ip, r0, #20
.L22:
	sub	r3, r1, #4800
.L23:
	strh	r2, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r3, r1
	bne	.L23
	add	r0, r0, #1
	cmp	r0, ip
	add	r1, r3, #2
	bne	.L22
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	drawParallelogram
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawParallelogram, %function
drawParallelogram:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r1, r1, r1, lsl #4
	add	r1, r0, r1, lsl #4
	mov	r0, #0
	ldr	r3, .L33
	ldr	r3, [r3]
	add	r3, r3, #20
	add	r1, r3, r1, lsl #1
.L29:
	sub	r3, r1, #20
.L30:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L30
	add	r0, r0, #1
	add	r1, r3, #480
	cmp	r0, #20
	add	r1, r1, #2
	bne	.L29
	bx	lr
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.size	drawParallelogram, .-drawParallelogram
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 53) 9.1.0"
