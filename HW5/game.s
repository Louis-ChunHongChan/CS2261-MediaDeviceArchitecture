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
	.file	"game.c"
	.text
	.global	__aeabi_idivmod
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateKong.part.0, %function
animateKong.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L4
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	ldr	r3, .L4+4
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	kong
	.word	__aeabi_idivmod
	.size	animateKong.part.0, .-animateKong.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePauline.part.0, %function
animatePauline.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L8
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	ldr	r3, .L8+4
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	pauline
	.word	__aeabi_idivmod
	.size	animatePauline.part.0, .-animatePauline.part.0
	.align	2
	.global	initGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame2, %function
initGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #50
	mov	lr, #88
	mov	ip, #16
	mov	r2, #0
	mov	r0, #1
	mov	r1, #2
	ldr	r3, .L12
	str	r4, [r3]
	ldr	r4, .L12+4
	ldrh	r4, [r4, #48]
	str	lr, [r3, #4]
	ldr	lr, .L12+8
	str	ip, [r3, #16]
	strh	r4, [lr]	@ movhi
	str	ip, [r3, #20]
	ldr	lr, .L12+12
	ldr	ip, .L12+16
	str	r2, [lr]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [ip]
	str	r1, [r3, #40]
	str	r1, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	mario
	.word	67109120
	.word	buttons
	.word	vOff
	.word	hOff
	.size	initGame2, .-initGame2
	.align	2
	.global	initMario
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMario, %function
initMario:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #16
	mov	r4, #232
	mov	lr, #88
	mov	r0, #1
	mov	r1, #0
	mov	r2, #2
	ldr	r3, .L16
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	mario
	.size	initMario, .-initMario
	.align	2
	.global	initMario2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMario2, %function
initMario2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #16
	mov	r4, #50
	mov	lr, #88
	mov	r0, #1
	mov	r1, #0
	mov	r2, #2
	ldr	r3, .L20
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	mario
	.size	initMario2, .-initMario2
	.align	2
	.global	initKong
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKong, %function
initKong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #64
	mov	lr, #32
	mov	ip, #170
	mov	r0, #24
	mov	r1, #3
	ldr	r3, .L24
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #40]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	kong
	.size	initKong, .-initKong
	.align	2
	.global	initPauline
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPauline, %function
initPauline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #32
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #16
	mov	lr, #175
	mov	ip, #88
	mov	r0, #2
	ldr	r3, .L28
	str	r1, [r3, #20]
	ldr	r1, .L28+4
	str	r4, [r3, #16]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r1, #28]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	pauline
	.word	kong
	.size	initPauline, .-initPauline
	.align	2
	.global	initBarrel
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBarrel, %function
initBarrel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r0, #16
	mov	r1, #1
	mov	r5, #188
	mov	r4, #72
	mov	r2, #0
	mov	lr, #2
	ldr	r3, .L34
	add	ip, r3, #280
.L31:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	lr, [r3, #40]
	str	r1, [r3, #28]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	add	r3, r3, #56
	cmp	r3, ip
	bne	.L31
	pop	{r4, r5, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	barrel
	.size	initBarrel, .-initBarrel
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mov	r7, #3
	mov	r3, #67108864
	mov	r1, #10
	ldr	r2, .L38
	ldr	ip, .L38+4
	ldr	lr, .L38+8
	ldrh	r2, [r2]
	ldr	r8, .L38+12
	str	r7, [lr]
	str	r4, [ip]
	strh	r2, [r3, #22]	@ movhi
	ldrh	r2, [r8]
	mov	r0, r7
	strh	r2, [r3, #20]	@ movhi
	ldr	r5, .L38+16
	str	r1, [lr, #4]
	mov	r3, #256
	ldr	r2, .L38+20
	ldr	r1, .L38+24
	str	r4, [lr, #8]
	str	r4, [ip, #4]
	str	r4, [ip, #8]
	str	r4, [ip, #12]
	str	r4, [ip, #16]
	str	r4, [ip, #20]
	str	r4, [ip, #24]
	str	r4, [ip, #28]
	mov	lr, pc
	bx	r5
	mov	r0, r7
	mov	r3, #16384
	ldr	r2, .L38+28
	ldr	r1, .L38+32
	mov	lr, pc
	bx	r5
	mov	fp, #64
	mov	r0, #32
	mov	r10, #170
	mov	r9, #24
	mov	r5, #16
	mov	r6, #1
	mov	r2, #2
	mov	r1, #88
	mov	lr, #175
	mov	ip, #232
	ldr	r3, .L38+36
	str	r7, [r3, #40]
	str	r4, [r3, #12]
	ldr	r7, .L38+40
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	fp, [r3, #16]
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r0, [r3, #20]
	str	r4, [r3, #44]
	ldr	r3, .L38+44
	str	r0, [r7, #20]
	stmib	r3, {r1, r6}
	str	r4, [r7, #12]
	str	r4, [r7, #8]
	str	r4, [r7, #24]
	str	r4, [r7, #36]
	str	lr, [r7]
	str	r5, [r7, #16]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	ip, [r3]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r6, [r3, #12]
	str	r1, [r7, #4]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r7, #40]
	bl	initBarrel
	mov	ip, #120
	mov	r10, #180
	mov	lr, #136
	mov	r2, #8
	mov	r1, #140
	mov	r0, #130
	mov	r9, #104
	mov	fp, #128
	ldr	r7, [r7, #16]
	ldr	r3, .L38+48
	rsb	r7, r7, r7, lsl #3
	add	r7, r7, ip
	str	r7, [r3, #4]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #40]
	str	r4, [r3, #28]
	str	r10, [r3]
	ldr	r3, .L38+52
	str	lr, [r3, #44]
	ldr	lr, .L38+56
	str	r1, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #40]
	str	r2, [lr, #8]
	str	r2, [lr, #12]
	str	r2, [lr, #28]
	str	r0, [lr]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r6, [r3, #16]
	str	r5, [r3, #28]
	str	r5, [r3, #32]
	str	r6, [r3, #36]
	str	r5, [r3, #48]
	str	r5, [r3, #52]
	str	r6, [r3, #56]
	str	r9, [r3, #4]
	str	ip, [r3, #24]
	str	ip, [lr, #4]
	str	r6, [lr, #16]
	ldr	r3, .L38+60
	str	r2, [lr, #32]
	str	r0, [lr, #20]
	str	r6, [lr, #36]
	str	fp, [lr, #24]
	mov	lr, pc
	bx	r3
	mov	r1, #96
	ldr	r2, .L38+64
	ldr	r3, .L38+68
	ldrh	r2, [r2, #48]
	ldr	r0, .L38
	str	r4, [r8]
	strh	r2, [r3]	@ movhi
	str	r1, [r0]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	vOff
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	hOff
	.word	DMANow
	.word	83886592
	.word	mariospritesheetPal
	.word	100728832
	.word	mariospritesheetTiles
	.word	kong
	.word	pauline
	.word	mario
	.word	hammer
	.word	heart
	.word	scoreUI
	.word	hideSprites
	.word	67109120
	.word	buttons
	.size	initGame, .-initGame
	.align	2
	.global	initHammer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHammer, %function
initHammer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r0, #16
	mov	ip, #180
	ldr	r3, .L41
	ldr	r1, [r3, #16]
	ldr	r3, .L41+4
	rsb	r1, r1, r1, lsl #3
	add	r1, r1, #120
	str	r1, [r3, #4]
	str	ip, [r3]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	bx	lr
.L42:
	.align	2
.L41:
	.word	pauline
	.word	hammer
	.size	initHammer, .-initHammer
	.align	2
	.global	initHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHeart, %function
initHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #16
	mov	r0, #140
	mov	r1, #1
	mov	r4, #104
	mov	lr, #120
	mov	ip, #136
	ldr	r3, .L45
	str	r4, [r3, #4]
	str	lr, [r3, #24]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	ip, [r3, #44]
	str	r0, [r3]
	str	r0, [r3, #20]
	str	r0, [r3, #40]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #56]
	pop	{r4, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	heart
	.size	initHeart, .-initHeart
	.align	2
	.global	initScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScore, %function
initScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #8
	mov	lr, #120
	mov	r0, #130
	mov	r1, #1
	mov	ip, #128
	ldr	r3, .L49
	str	lr, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #24]
	str	r0, [r3]
	str	r0, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L50:
	.align	2
.L49:
	.word	scoreUI
	.size	initScore, .-initScore
	.align	2
	.global	updateKong
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKong, %function
updateKong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L53
	ldr	r3, [r1, #24]
	ldr	r0, .L53+4
	ldr	r2, .L53+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L54:
	.align	2
.L53:
	.word	kong
	.word	85899344
	.word	-1030792151
	.size	updateKong, .-updateKong
	.align	2
	.global	updatePauline
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePauline, %function
updatePauline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L57
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L57+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L58:
	.align	2
.L57:
	.word	pauline
	.word	143165576
	.size	updatePauline, .-updatePauline
	.align	2
	.global	updateBarrel
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBarrel, %function
updateBarrel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L76
	ldr	r3, .L76+4
	ldr	r2, [r2, #20]
	smull	r0, r1, r3, r2
	push	{r4, r5, r6, r7, r8, r9, lr}
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #20
	bne	.L60
	ldr	r0, .L76+8
	mov	r2, r0
.L62:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L75
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #56
	bne	.L62
.L60:
	ldr	r5, .L76+8
	mov	r7, #0
	mov	r4, r5
	ldr	r9, .L76+12
	ldr	r8, .L76+16
	add	r6, r5, #280
.L67:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L63
	mov	r1, #188
	ldr	r3, [r4, #16]
	sub	r3, r3, r3, lsl #2
	add	r3, r3, #120
	stm	r4, {r1, r3}
	str	r2, [r4, #44]
	str	r2, [r4, #52]
.L64:
	add	r4, r4, #56
	cmp	r4, r6
	bne	.L67
	ldr	r8, .L76+20
	ldr	r7, .L76+24
	ldr	r4, .L76+28
.L69:
	ldr	r2, [r5, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	str	r2, [r5, #24]
	bcs	.L68
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r4
	str	r1, [r5, #36]
.L68:
	add	r5, r5, #56
	cmp	r5, r6
	bne	.L69
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L63:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	r1, [sp, #12]
	str	r7, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r9, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L65
	mov	r2, #1
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	add	r3, r3, r1
	str	r3, [r4]
	str	r2, [r4, #44]
	b	.L64
.L65:
	ldr	r3, [r4, #44]
	ldr	r2, [r4, #12]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	sub	r1, r3, r2
	addeq	r3, r3, r2
	streq	r3, [r4, #4]
	beq	.L64
	ldr	r3, [r4, #16]
	add	r3, r1, r3
	cmp	r3, #0
	str	r1, [r4, #4]
	strle	r7, [r4, #48]
	b	.L64
.L75:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #48]
	b	.L60
.L77:
	.align	2
.L76:
	.word	.LANCHOR1
	.word	458129845
	.word	barrel
	.word	.LANCHOR0
	.word	collisionCheck
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.size	updateBarrel, .-updateBarrel
	.align	2
	.global	updateHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHeart, %function
updateHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L86
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	bxle	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L86+4
.L81:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L81
	bx	lr
.L87:
	.align	2
.L86:
	.word	.LANCHOR0
	.word	heart
	.size	updateHeart, .-updateHeart
	.align	2
	.global	animateMario
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateMario, %function
animateMario:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #10
	mov	r3, #2
	push	{r4, r5, r6, r7, lr}
	ldr	ip, .L132
	ldr	r4, .L132+4
	ldr	r0, [ip, #16]
	ldr	r1, [r4, #28]
	cmp	r0, #0
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	str	r3, [r4, #40]
	sub	sp, sp, #20
	beq	.L89
	ldr	r3, .L132+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L89:
	ldr	r2, [r4, #24]
	add	r3, r2, r2, lsl #4
	ldr	r1, .L132+12
	add	r3, r3, r3, lsl #8
	ldr	lr, .L132+16
	add	r3, r3, r3, lsl #16
	sub	r1, r1, r3
	cmp	r1, lr
	bcs	.L91
	ldr	r3, [r4, #36]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #36]
.L91:
	ldr	r3, [ip, #12]
	cmp	r3, #0
	ldr	r3, [ip, #8]
	beq	.L129
	orrs	r3, r0, r3
	bne	.L95
	ldr	r3, [ip, #4]
	cmp	r3, #0
	bne	.L95
	ldr	r3, .L132+8
	ldrh	r1, [r3, #48]
	tst	r1, #64
	beq	.L105
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L105
.L95:
	ldr	r3, [r4, #28]
.L99:
	cmp	r3, #10
	beq	.L130
	ldr	r2, [r4, #24]
.L108:
	add	r2, r2, #1
	str	r2, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L129:
	cmp	r3, #0
	bne	.L95
	ldr	r3, [ip, #4]
	cmp	r3, #0
	bne	.L95
	ldr	r3, .L132+8
	ldrh	r1, [r3, #48]
	tst	r1, #32
	ldrh	r3, [r3, #48]
	bne	.L94
	cmp	r0, #0
	bne	.L95
	tst	r3, #16
	str	r0, [r4, #28]
	beq	.L96
.L97:
	ldr	r3, .L132+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L108
	ldr	r3, .L132+24
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L108
	mov	r1, #1
	ldr	r6, .L132+28
	add	r2, r4, #16
	ldr	r3, [r6, #4]
	ldm	r2, {r2, r7}
	ldr	lr, [ip, #20]
	rsb	r3, r3, #0
	stm	sp, {r2, r7}
	str	r3, [sp, #12]
	str	r1, [r4, #28]
	str	r1, [ip, #4]
	str	r5, [sp, #8]
	mov	r1, #256
	ldr	r0, [r6, #16]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r7, .L132+32
	str	lr, [ip, #28]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L95
	ldr	r2, [r4]
	ldr	r1, [r6, #4]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	sub	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6, #4]
	ldr	r3, [r4, #28]
	b	.L99
.L130:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L105:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L108
.L94:
	tst	r3, #16
	beq	.L131
	cmp	r0, #0
	ldr	r3, [r4, #28]
	bne	.L99
	cmp	r3, #0
	beq	.L97
	cmp	r3, #2
	bne	.L99
.L100:
	ldr	r3, .L132+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L108
	ldr	r3, .L132+24
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L108
	mov	r2, #3
	mov	r1, #1
	ldr	r6, .L132+28
	add	r7, r4, #16
	ldm	r7, {r7, lr}
	ldr	r3, [r6, #4]
	str	lr, [sp, #4]
	rsb	r3, r3, #0
	ldr	lr, [ip, #20]
	str	r3, [sp, #12]
	str	r7, [sp]
	str	r2, [r4, #28]
	str	r1, [ip, #4]
	str	r5, [sp, #8]
	mov	r1, #256
	ldr	r0, [r6, #16]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r7, .L132+32
	str	lr, [ip, #28]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L95
	ldr	r2, [r4]
	ldr	r1, [r6, #4]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6, #4]
	ldr	r3, [r4, #28]
	b	.L99
.L131:
	cmp	r0, #0
	bne	.L95
.L96:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L100
.L133:
	.align	2
.L132:
	.word	.LANCHOR1
	.word	mario
	.word	67109120
	.word	143165576
	.word	286331153
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.word	collisionCheck
	.size	animateMario, .-animateMario
	.align	2
	.global	updateMario
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMario, %function
updateMario:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L191
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	sub	sp, sp, #20
	ldr	r5, .L191+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r8, .L191+8
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r2, #1
	ldrne	r6, .L191+12
	ldrne	r3, [r6, #24]
	ldr	r4, .L191+16
	ldrne	r7, .L191+20
	addne	r3, r3, r2
	strne	r2, [r7, #8]
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	strne	r3, [r6, #24]
	ldm	r4, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldreq	r6, .L191+12
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r3, #256
	movne	r2, #1
	strne	r3, [r4, #4]
	ldr	r4, .L191+24
	ldr	r3, [r4, #44]
	strne	r2, [r6, #16]
	cmp	r3, #0
	beq	.L183
.L138:
	mov	fp, #0
	ldr	r4, .L191+28
	ldr	r7, [r6, #16]
	ldr	r10, .L191+20
	add	r9, r4, #280
.L146:
	cmp	r7, #0
	bne	.L140
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L184
.L141:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	beq	.L143
	add	r2, r6, #8
	ldmia	r2, {r2, r3}
	orr	r3, r2, r3
	cmp	r3, #0
	bne	.L143
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L143
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L185
	cmp	r3, #3
	beq	.L186
.L143:
	add	r4, r4, #56
	cmp	r9, r4
	bne	.L146
.L190:
	ldr	r2, [r6, #8]
	orrs	r3, r2, r7
	ldr	r3, [r6, #4]
	bne	.L147
	cmp	r3, #0
	bne	.L148
	ldr	r3, .L191+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L187
.L149:
	ldr	r3, .L191+32
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L151
.L153:
	ldr	r3, [r6, #4]
	ldr	r2, [r6, #8]
.L147:
	ldr	r1, [r6, #12]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L148
	ldr	r3, .L191+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L188
.L156:
	ldr	r3, .L191+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L189
.L148:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateMario
.L140:
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldm	r4, {r2, r3}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r6, #24]
	strne	fp, [r4, #48]
	addne	r3, r3, #1
	add	r4, r4, #56
	strne	r3, [r6, #24]
	cmp	r9, r4
	ldr	r7, [r6, #16]
	bne	.L146
	b	.L190
.L184:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	ip, [r4]
	str	r1, [sp, #12]
	add	r0, r0, r0, lsr #31
	ldr	r1, [r4, #4]
	asr	r0, r0, #1
	add	r3, r3, r3, lsr #31
	add	r2, r2, r2, lsr #31
	stm	sp, {r1, ip}
	str	r0, [sp, #8]
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldreq	r7, [r6, #16]
	beq	.L141
.L142:
	mov	r2, #1
	ldr	r3, [r10]
	str	r7, [r4, #48]
	add	r4, r4, #56
	sub	r3, r3, #1
	cmp	r9, r4
	str	r2, [r6, #8]
	str	r3, [r10]
	ldr	r7, [r6, #16]
	bne	.L146
	b	.L190
.L183:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L138
	mov	r2, #1
	ldr	r7, .L191+20
	ldr	r3, [r7]
	sub	r3, r3, #1
	str	r3, [r7]
	str	r2, [r6, #8]
	str	r2, [r4, #44]
	b	.L138
.L185:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L143
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	ldrle	r2, [r6, #24]
	addle	r2, r2, #1
	strle	r3, [r4, #52]
	strle	r2, [r6, #24]
	b	.L143
.L186:
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L143
	ldr	r2, [r5, #4]
	ldr	r0, [r5, #16]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #16]
	add	r2, r2, r0
	add	r3, r3, r1
	cmp	r2, r3
	ble	.L143
	mov	r2, #1
	ldr	r3, [r6, #24]
	add	r3, r3, #1
	str	r2, [r4, #52]
	str	r3, [r6, #24]
	b	.L143
.L189:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #16]
	str	r3, [sp, #12]
	ldr	ip, [r5, #12]
	ldr	r0, .L191+20
	ldr	r3, [r5]
	ldr	r0, [r0, #16]
	ldr	r4, .L191+36
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L148
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L148
	ldr	r1, .L191+40
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r5, #4]
	bgt	.L148
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L148
.L188:
	ldr	r2, [r5, #12]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L191+20
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r5]
	ldr	r0, [r0, #16]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L191+36
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L156
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L156
	ldr	r1, .L191+40
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5, #4]
	ble	.L156
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L156
.L187:
	ldr	r2, [r5, #8]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r7, .L191+20
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r5]
	ldr	r0, [r7, #12]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L191+36
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L149
	mov	ip, #1
	ldr	r0, .L191+44
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	ip, [r6, #12]
	ble	.L150
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L150:
	ldr	r1, .L191+32
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L148
.L158:
	mov	ip, #0
	ldr	r1, [r5, #20]
	str	r2, [sp, #12]
	ldr	r2, [r5, #16]
	ldr	r0, [r7, #12]
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L153
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	add	r3, r3, r2
	cmp	r3, #232
	bgt	.L153
	mov	r0, #1
	ldr	r1, .L191+44
	ldr	r2, [r1]
	cmp	r2, #94
	str	r3, [r5]
	str	r0, [r6, #12]
	bgt	.L148
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L148
.L151:
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r7, .L191+20
	ldr	r4, .L191+36
	b	.L158
.L192:
	.align	2
.L191:
	.word	pauline
	.word	mario
	.word	collision
	.word	.LANCHOR1
	.word	hammer
	.word	.LANCHOR0
	.word	kong
	.word	barrel
	.word	67109120
	.word	collisionCheck
	.word	hOff
	.word	vOff
	.size	updateMario, .-updateMario
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updateMario
	.size	updateGame2, .-updateGame2
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L236
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #4]
	ldr	r6, .L236+4
	add	r2, r2, #1
	cmp	r3, #0
	str	r2, [r4, #20]
	ldr	r1, [r4, #12]
	ldr	r3, [r6]
	sub	sp, sp, #20
	bne	.L230
	cmp	r1, #0
	ldr	r5, .L236+8
	beq	.L234
.L196:
	ldr	r2, [r4, #8]
	cmp	r2, #0
	bne	.L197
	ldr	r7, .L236+12
.L198:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L202
	ldr	r1, .L236+16
	ldr	r2, [r4, #20]
	ldr	r0, .L236+20
	mla	r2, r0, r2, r1
	ldr	r1, .L236+24
	cmp	r1, r2, ror #2
	movcs	r2, #0
	strcs	r2, [r4, #16]
.L202:
	cmp	r3, #232
	bne	.L203
.L205:
	mov	r3, #0
	str	r3, [r4, #12]
.L204:
	bl	updateMario
	ldr	r3, [r7, #24]
	ldr	r1, .L236+28
	ldr	r2, .L236+32
	add	r3, r3, #1
	mla	r2, r3, r2, r1
	cmp	r1, r2, ror #1
	str	r3, [r7, #24]
	blcs	animateKong.part.0
.L206:
	ldr	r1, .L236+36
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L236+40
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	blcs	animatePauline.part.0
.L207:
	bl	updateBarrel
	ldr	r1, [r5]
	rsb	r1, r1, #3
	cmp	r1, #0
	ble	.L194
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L236+44
.L210:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L210
.L194:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L197:
	ldr	r2, [r6, #28]
	cmp	r2, #0
	moveq	ip, #5
	bne	.L235
.L199:
	ldr	r1, .L236+48
	ldr	r2, [r4, #20]
	ldr	r0, .L236+52
	mla	r2, r0, r2, r1
	cmp	r1, r2, ror #1
	ldr	r7, .L236+12
	str	ip, [r6, #28]
	bcc	.L198
	ldr	r2, [r7, #44]
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r7, #44]
	mov	r2, #0
	str	r2, [r4, #8]
	b	.L198
.L230:
	ldr	r0, [r4, #28]
	sub	r2, r2, r0
	cmp	r2, #25
	beq	.L231
	ldr	r5, .L236+8
	b	.L196
.L235:
	ldr	r2, [r6, #32]
	cmp	r2, #0
	moveq	ip, #5
	movne	ip, #6
	b	.L199
.L203:
	mov	ip, #0
	ldr	r2, [r6, #8]
	ldr	r0, [r6, #20]
	ldr	r1, [r6, #16]
	rsb	r2, r2, #0
	stmib	sp, {r0, ip}
	str	r1, [sp]
	str	r2, [sp, #12]
	mov	r1, #256
	ldr	r2, [r6, #4]
	ldr	r0, [r5, #12]
	ldr	r6, .L236+56
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L205
	b	.L204
.L231:
	mov	r0, #0
	mov	r2, #10
	ldr	r5, .L236+8
	cmp	r1, #0
	str	r0, [r4, #4]
	str	r2, [r5, #4]
	bne	.L196
.L234:
	ldr	r0, [r6, #20]
	ldr	ip, [r5, #4]
	ldr	r2, [r6, #16]
	stmib	sp, {r0, r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r6, #4]
	ldr	r0, [r5, #16]
	ldr	r7, .L236+56
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldreq	r3, [r6]
	beq	.L196
.L212:
	ldr	r2, [r6]
	ldr	r3, [r5, #4]
	add	r3, r2, r3
	str	r3, [r6]
	b	.L196
.L237:
	.align	2
.L236:
	.word	.LANCHOR1
	.word	mario
	.word	.LANCHOR0
	.word	kong
	.word	17179868
	.word	652835029
	.word	8589934
	.word	85899344
	.word	-1030792151
	.word	pauline
	.word	143165576
	.word	heart
	.word	61356674
	.word	-1963413621
	.word	collisionCheck
	.size	updateGame, .-updateGame
	.align	2
	.global	animateKong
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateKong, %function
animateKong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L240
	ldr	r3, [r1, #24]
	ldr	r0, .L240+4
	ldr	r2, .L240+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L241:
	.align	2
.L240:
	.word	kong
	.word	85899344
	.word	-1030792151
	.size	animateKong, .-animateKong
	.align	2
	.global	animatePauline
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePauline, %function
animatePauline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L244
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L244+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L245:
	.align	2
.L244:
	.word	pauline
	.word	143165576
	.size	animatePauline, .-animatePauline
	.align	2
	.global	animateBarrel
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBarrel, %function
animateBarrel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L251
	ldr	r8, .L251+4
	ldr	r7, .L251+8
	ldr	r6, .L251+12
	add	r5, r4, #280
.L248:
	ldr	r2, [r4, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	str	r2, [r4, #24]
	bcs	.L247
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L247:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L248
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L252:
	.align	2
.L251:
	.word	barrel
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.size	animateBarrel, .-animateBarrel
	.align	2
	.global	drawMario
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawMario, %function
drawMario:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L261
	ldr	ip, .L261+4
	ldr	r3, .L261+8
	ldr	r1, .L261+12
	str	lr, [sp, #-4]!
	ldr	r2, [r0]
	ldr	lr, [ip]
	ldr	ip, [r3]
	ldr	r3, [r0, #4]
	ldr	r1, [r1]
	sub	r2, r2, lr
	sub	r3, r3, ip
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	cmp	r1, #0
	lsr	r2, r2, #16
	ldr	r1, [r0, #36]
	asr	r3, r3, #16
	bne	.L254
	ldr	r0, .L261+16
	lsl	r1, r1, #6
	add	r1, r1, #14
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L254:
	ldr	r0, [r0, #28]
	cmp	r0, #8
	beq	.L259
	cmp	r0, #9
	beq	.L260
	add	r1, r0, r1, lsl #5
	ldr	r0, .L261+16
	lsl	r1, r1, #1
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L259:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L261+16
	lsl	r1, r1, #6
	add	r1, r1, #16
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L260:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L261+16
	lsl	r1, r1, #6
	add	r1, r1, #20
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L262:
	.align	2
.L261:
	.word	mario
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawMario, .-drawMario
	.align	2
	.global	drawKong
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKong, %function
drawKong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L264
	ldr	r2, .L264+4
	ldr	r3, [r1, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L264+8
	ldr	r2, [r1]
	ldr	ip, [r0]
	ldr	r1, [r1, #36]
	ldr	r0, .L264+12
	add	r1, r1, #1
	sub	r2, r2, ip
	lsl	r1, r1, #7
	orr	r2, r2, #16384
	strh	r3, [r0, #10]	@ movhi
	strh	r1, [r0, #12]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	bx	lr
.L265:
	.align	2
.L264:
	.word	kong
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawKong, .-drawKong
	.align	2
	.global	drawPauline
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPauline, %function
drawPauline:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L268
	ldr	r3, .L268+4
	ldr	r0, .L268+8
	str	lr, [sp, #-4]!
	ldr	r1, [r2]
	ldr	lr, [r3]
	ldr	r0, [r0]
	ldr	r3, [r2, #4]
	ldr	r2, [r2, #36]
	ldr	ip, .L268+12
	sub	r1, r1, r0
	sub	r3, r3, lr
	ldr	r0, .L268+16
	lsl	r2, r2, #7
	orr	r1, r1, ip
	add	r2, r2, #24
	orr	r3, r3, ip
	strh	r1, [r0, #16]	@ movhi
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #18]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L269:
	.align	2
.L268:
	.word	pauline
	.word	hOff
	.word	vOff
	.word	-32768
	.word	shadowOAM
	.size	drawPauline, .-drawPauline
	.align	2
	.global	drawBarrel
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBarrel, %function
drawBarrel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #0
	ldr	r4, .L276
	ldr	r5, .L276+4
	ldr	r10, .L276+8
	ldr	r9, .L276+12
	ldr	r8, .L276+16
	ldr	r7, .L276+20
	sub	sp, sp, #20
	add	r6, r4, #280
.L273:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #4]
	ldr	r0, [r9]
	str	r1, [sp, #12]
	ldr	r1, [r4, #20]
	ldr	r3, [r4]
	sub	r0, r2, r0
	ldr	ip, [r10]
	str	r1, [sp, #4]
	ldr	r1, [r4, #16]
	orr	r0, r0, #16384
	sub	ip, r3, ip
	strh	r0, [r5, #26]	@ movhi
	str	r1, [sp]
	str	fp, [sp, #8]
	mov	r1, #256
	ldr	r0, [r8, #12]
	strh	ip, [r5, #24]	@ movhi
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r2, [r4, #36]
	ldreq	r3, [r4, #36]
	ldrne	r3, [r4, #28]
	addne	r2, r2, #8
	addeq	r3, r3, #8
	addne	r3, r3, r2, lsl #5
	lsleq	r3, r3, #22
	lslne	r3, r3, #17
	add	r4, r4, #56
	lsr	r3, r3, #16
	cmp	r6, r4
	strh	r3, [r5, #28]	@ movhi
	add	r5, r5, #8
	bne	.L273
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L277:
	.align	2
.L276:
	.word	barrel
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	collisionCheck
	.size	drawBarrel, .-drawBarrel
	.align	2
	.global	drawHammer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHammer, %function
drawHammer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #26
	ldr	r2, .L280
	ldr	r1, .L280+4
	ldr	ip, .L280+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L280+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #66]	@ movhi
	strh	r1, [r2, #64]	@ movhi
	strh	r0, [r2, #68]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L281:
	.align	2
.L280:
	.word	hammer
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawHammer, .-drawHammer
	.align	2
	.global	drawHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #30
	mov	r5, #28
	ldr	r2, .L288
	ldr	r3, .L288+4
	ldr	r1, .L288+8
	ldrh	r4, [r2]
	ldrh	lr, [r3]
	ldr	r0, .L288+12
	add	ip, r1, #24
.L285:
	ldm	r0, {r2, r3}
	sub	r3, r3, lr
	ldr	r7, [r0, #16]
	orr	r3, r3, #16384
	sub	r2, r2, r4
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	cmp	r7, #0
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #72]	@ movhi
	strh	r3, [r1, #74]	@ movhi
	strhne	r5, [r1, #76]	@ movhi
	strheq	r6, [r1, #76]	@ movhi
	add	r1, r1, #8
	cmp	ip, r1
	add	r0, r0, #20
	bne	.L285
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L289:
	.align	2
.L288:
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	heart
	.size	drawHeart, .-drawHeart
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r1, .L294
	ldr	lr, .L294+4
	ldr	r2, .L294+8
	ldr	r3, .L294+12
	ldrh	r5, [r1]
	ldrh	r4, [r2]
	ldr	ip, [lr]
	ldr	r1, [lr, #20]
	ldr	r0, [lr, #4]
	ldr	r2, [lr, #24]
	ldr	r3, [r3, #24]
	sub	ip, ip, r5
	sub	r1, r1, r5
	sub	r0, r0, r4
	sub	r2, r2, r4
	lsl	ip, ip, #16
	lsl	r1, r1, #16
	lsl	r0, r0, #16
	lsl	r2, r2, #16
	cmp	r3, #9
	lsr	ip, ip, #16
	lsr	r1, r1, #16
	lsr	r0, r0, #16
	lsr	r2, r2, #16
	bgt	.L291
	mov	r4, #640
	ldr	lr, .L294+16
	add	r3, r3, #20
	lsl	r3, r3, #5
	strh	r3, [lr, #108]	@ movhi
	strh	ip, [lr, #96]	@ movhi
	strh	r0, [lr, #98]	@ movhi
	strh	r1, [lr, #104]	@ movhi
	strh	r2, [lr, #106]	@ movhi
	strh	r4, [lr, #100]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L291:
	ldr	lr, .L294+20
	smull	r4, r5, lr, r3
	asr	lr, r3, #31
	ldr	r4, .L294+24
	rsb	lr, lr, r5, asr #2
	umull	r5, r4, lr, r4
	lsr	r4, r4, #3
	add	r5, lr, lr, lsl #2
	add	r4, r4, r4, lsl #2
	sub	lr, lr, r4, lsl #1
	sub	r3, r3, r5, lsl #1
	ldr	r4, .L294+16
	add	lr, lr, #20
	add	r3, r3, #20
	lsl	lr, lr, #5
	lsl	r3, r3, #5
	strh	lr, [r4, #100]	@ movhi
	strh	r3, [r4, #108]	@ movhi
	strh	ip, [r4, #96]	@ movhi
	strh	r0, [r4, #98]	@ movhi
	strh	r1, [r4, #104]	@ movhi
	strh	r2, [r4, #106]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L295:
	.align	2
.L294:
	.word	vOff
	.word	scoreUI
	.word	hOff
	.word	.LANCHOR1
	.word	shadowOAM
	.word	1717986919
	.word	-858993459
	.size	drawScore, .-drawScore
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	bl	drawMario
	ldr	r6, .L298
	ldr	r1, .L298+4
	ldrh	r2, [r6]
	ldr	r3, [r1, #4]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L298+8
	ldr	r5, .L298+12
	ldr	r7, [r0, #4]
	ldr	ip, [r1]
	ldr	lr, [r1, #36]
	sub	r2, r7, r2
	ldr	r1, [r0]
	ldrh	r7, [r5]
	ldr	r0, [r0, #36]
	ldr	r4, .L298+16
	sub	r1, r1, r7
	sub	ip, ip, r7
	ldr	r7, .L298+20
	add	lr, lr, #1
	lsl	r0, r0, #7
	lsl	lr, lr, #7
	orr	r2, r2, r7
	strh	r3, [r4, #10]	@ movhi
	orr	ip, ip, #16384
	orr	r3, r1, r7
	add	r0, r0, #24
	strh	lr, [r4, #12]	@ movhi
	strh	ip, [r4, #8]	@ movhi
	strh	r0, [r4, #20]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	bl	drawBarrel
	mov	r1, #26
	ldr	r2, .L298+24
	ldr	ip, [r6]
	ldr	r3, [r2, #4]
	ldr	r0, [r5]
	ldr	r2, [r2]
	sub	r3, r3, ip
	sub	r2, r2, r0
	orr	r3, r3, #16384
	strh	r2, [r4, #64]	@ movhi
	strh	r1, [r4, #68]	@ movhi
	strh	r3, [r4, #66]	@ movhi
	bl	drawHeart
	bl	drawScore
	ldr	r3, .L298+28
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L298+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldrh	r2, [r6]
	strh	r2, [r3, #20]	@ movhi
	ldrh	r2, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L299:
	.align	2
.L298:
	.word	hOff
	.word	kong
	.word	pauline
	.word	vOff
	.word	shadowOAM
	.word	-32768
	.word	hammer
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	scoreUI,40,4
	.comm	heart,60,4
	.comm	barrel,280,4
	.comm	hammer,48,4
	.comm	pauline,48,4
	.comm	kong,48,4
	.comm	mario,48,4
	.global	laddercollisionMap
	.global	collisionMap
	.global	nextLevel
	.global	jumpFrame
	.global	score
	.global	frame
	.global	powerUp
	.global	climbing
	.global	down
	.global	jumping
	.global	gravity
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	rescued
	.global	life
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	life, %object
	.size	life, 4
life:
	.word	3
	.type	gravity, %object
	.size	gravity, 4
gravity:
	.word	10
	.type	nextLevel, %object
	.size	nextLevel, 4
nextLevel:
	.word	1
	.type	laddercollisionMap, %object
	.size	laddercollisionMap, 4
laddercollisionMap:
	.word	laddercollisionmapBitmap
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collisionmapBitmap
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	rescued, %object
	.size	rescued, 4
rescued:
	.space	4
	.type	jumping, %object
	.size	jumping, 4
jumping:
	.space	4
	.type	down, %object
	.size	down, 4
down:
	.space	4
	.type	climbing, %object
	.size	climbing, 4
climbing:
	.space	4
	.type	powerUp, %object
	.size	powerUp, 4
powerUp:
	.space	4
	.type	frame, %object
	.size	frame, 4
frame:
	.space	4
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	jumpFrame, %object
	.size	jumpFrame, 4
jumpFrame:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
