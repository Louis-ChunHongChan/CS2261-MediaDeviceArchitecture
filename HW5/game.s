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
	ldr	r3, .L12
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
.L13:
	.align	2
.L12:
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
	mov	r4, #80
	mov	lr, #72
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
	ldr	r3, .L20
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
.L21:
	.align	2
.L20:
	.word	kong
	.size	initKong, .-initKong
	.align	2
	.global	initKong2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKong2, %function
initKong2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #64
	mov	lr, #32
	mov	ip, #65
	mov	r0, #9
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
	.size	initKong2, .-initKong2
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
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #16
	mov	lr, #32
	mov	ip, #175
	mov	r0, #88
	mov	r1, #2
	ldr	r3, .L28
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
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	pauline
	.size	initPauline, .-initPauline
	.align	2
	.global	initPauline2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPauline2, %function
initPauline2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #16
	mov	lr, #32
	mov	ip, #68
	mov	r0, #232
	mov	r1, #2
	ldr	r3, .L32
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
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	pauline
	.size	initPauline2, .-initPauline2
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
	ldr	r3, .L38
	add	ip, r3, #280
.L35:
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
	bne	.L35
	pop	{r4, r5, lr}
	bx	lr
.L39:
	.align	2
.L38:
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
	mov	r0, #10
	ldr	r2, .L42
	ldr	ip, .L42+4
	str	r4, [r2]
	ldr	r1, .L42+8
	ldr	r2, .L42+12
	str	r7, [ip]
	str	r4, [r1]
	str	r4, [r2]
	ldr	r5, .L42+16
	ldr	lr, .L42+20
	ldr	ip, .L42+24
	ldr	r1, .L42+28
	ldr	r2, .L42+32
	str	r4, [r5]
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r1]
	ldr	lr, .L42+36
	ldr	ip, .L42+40
	ldrh	r2, [r2]
	ldr	r8, .L42+44
	ldr	r5, .L42+48
	ldr	r1, .L42+52
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r5]
	str	r0, [r1]
	strh	r2, [r3, #22]	@ movhi
	ldrh	r2, [r8]
	mov	r0, r7
	strh	r2, [r3, #20]	@ movhi
	ldr	r5, .L42+56
	mov	r3, #256
	ldr	r2, .L42+60
	ldr	r1, .L42+64
	mov	lr, pc
	bx	r5
	mov	r0, r7
	mov	r3, #16384
	ldr	r2, .L42+68
	ldr	r1, .L42+72
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
	ldr	r3, .L42+76
	str	r7, [r3, #40]
	str	r4, [r3, #12]
	ldr	r7, .L42+80
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	fp, [r3, #16]
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r0, [r3, #20]
	str	r4, [r3, #44]
	ldr	r3, .L42+84
	str	r0, [r7, #20]
	stmib	r3, {r1, r6}
	str	r4, [r7, #12]
	str	r4, [r7, #8]
	str	r4, [r7, #24]
	str	r4, [r7, #36]
	str	r4, [r7, #28]
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
	ldr	r3, .L42+88
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
	ldr	r3, .L42+92
	str	lr, [r3, #44]
	ldr	lr, .L42+96
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
	ldr	r3, .L42+100
	str	r2, [lr, #32]
	str	r0, [lr, #20]
	str	r6, [lr, #36]
	str	fp, [lr, #24]
	mov	lr, pc
	bx	r3
	mov	r1, #96
	ldr	r2, .L42+104
	ldr	r3, .L42+108
	ldrh	r2, [r2, #48]
	ldr	r0, .L42+32
	str	r4, [r8]
	strh	r2, [r3]	@ movhi
	str	r1, [r0]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	jumping
	.word	life
	.word	rescued
	.word	score
	.word	down
	.word	climbing
	.word	powerUp
	.word	frame
	.word	vOff
	.word	downFrame
	.word	nextLevel
	.word	hOff
	.word	jumpFrame
	.word	gravity
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
	.global	initBarrel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBarrel2, %function
initBarrel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, lr}
	mov	r4, #2
	ldr	r6, .L50
	mov	r2, r1
	mov	r3, r6
	mov	ip, #16
	mov	r0, #1
	mov	r5, #83
	ldr	lr, .L50+4
	ldr	lr, [lr, #20]
	sub	lr, lr, lr, lsl r4
	add	lr, lr, #110
.L48:
	cmp	r1, #0
	stm	r3, {r5, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r4, [r3, #40]
	str	r0, [r3, #28]
	str	r2, [r3, #44]
	streq	r0, [r6, #48]
	streq	r1, [r3, #52]
	beq	.L46
	cmp	r1, #4
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	beq	.L44
.L46:
	add	r1, r1, #1
	add	r3, r3, #56
	b	.L48
.L44:
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	barrel
	.word	kong
	.size	initBarrel2, .-initBarrel2
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mov	r5, #16
	mov	r6, #1
	mov	r2, #2
	mov	fp, #80
	mov	r10, #72
	mov	r1, #32
	mov	lr, #3
	mov	r9, #64
	mov	r8, #65
	mov	r7, #9
	mov	ip, #68
	mov	r0, #232
	ldr	r3, .L54
	str	r4, [r3]
	ldr	r3, .L54+4
	str	r4, [r3]
	ldr	r3, .L54+8
	str	r4, [r3]
	ldr	r3, .L54+12
	str	r4, [r3]
	ldr	r3, .L54+16
	str	r4, [r3]
	ldr	r3, .L54+20
	str	r4, [r3]
	ldr	r3, .L54+24
	str	r4, [r3]
	ldr	r3, .L54+28
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r6, [r3, #12]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	fp, [r3]
	str	r10, [r3, #4]
	str	r6, [r3, #8]
	ldr	r3, .L54+32
	str	r1, [r3, #20]
	str	r4, [r3, #12]
	str	r9, [r3, #16]
	str	lr, [r3, #40]
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	r4, [r3, #44]
	str	r8, [r3]
	str	r7, [r3, #4]
	ldr	r3, .L54+36
	str	r1, [r3, #20]
	str	r5, [r3, #16]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	ip, [r3]
	str	r2, [r3, #40]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	r0, [r3, #4]
	bl	initBarrel2
	mov	r3, #110
	mov	r1, #60
	mov	r0, #120
	mov	lr, #104
	mov	ip, #136
	ldr	r2, .L54+40
	str	r3, [r2]
	ldr	r3, .L54+44
	str	r5, [r2, #16]
	str	r5, [r2, #20]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r5, [r3, #28]
	str	r5, [r3, #32]
	str	r5, [r3, #48]
	str	r5, [r3, #52]
	ldr	r5, .L54+48
	str	r1, [r3]
	ldrh	r5, [r5, #48]
	str	r1, [r3, #20]
	str	r1, [r3, #40]
	ldr	r1, .L54+52
	str	r4, [r2, #12]
	str	r4, [r1]
	str	r4, [r2, #8]
	str	r4, [r2, #24]
	str	r4, [r2, #36]
	str	r4, [r2, #40]
	str	r4, [r2, #28]
	str	r0, [r2, #4]
	ldr	r1, .L54+56
	ldr	r2, .L54+60
	str	r6, [r3, #16]
	str	r6, [r3, #36]
	str	r6, [r3, #56]
	str	r0, [r3, #24]
	strh	r5, [r1]	@ movhi
	str	lr, [r3, #4]
	str	ip, [r3, #44]
	str	r4, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	jumping
	.word	down
	.word	climbing
	.word	powerUp
	.word	frame
	.word	jumpFrame
	.word	downFrame
	.word	mario
	.word	kong
	.word	pauline
	.word	hammer
	.word	heart
	.word	67109120
	.word	vOff
	.word	buttons
	.word	hOff
	.size	initGame2, .-initGame2
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
	ldr	r3, .L57
	ldr	r1, [r3, #16]
	ldr	r3, .L57+4
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
.L58:
	.align	2
.L57:
	.word	pauline
	.word	hammer
	.size	initHammer, .-initHammer
	.align	2
	.global	initHammer2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHammer2, %function
initHammer2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #16
	mov	ip, #110
	mov	r0, #120
	ldr	r3, .L60
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	bx	lr
.L61:
	.align	2
.L60:
	.word	hammer
	.size	initHammer2, .-initHammer2
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
	ldr	r3, .L64
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
.L65:
	.align	2
.L64:
	.word	heart
	.size	initHeart, .-initHeart
	.align	2
	.global	initHeart2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHeart2, %function
initHeart2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #16
	mov	r0, #60
	mov	r1, #1
	mov	r4, #104
	mov	lr, #120
	mov	ip, #136
	ldr	r3, .L68
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
.L69:
	.align	2
.L68:
	.word	heart
	.size	initHeart2, .-initHeart2
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
	ldr	r3, .L72
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
.L73:
	.align	2
.L72:
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
	ldr	r1, .L76
	ldr	r3, [r1, #24]
	ldr	r0, .L76+4
	ldr	r2, .L76+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L77:
	.align	2
.L76:
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
	ldr	r1, .L80
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L80+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L81:
	.align	2
.L80:
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
	ldr	r2, .L99
	ldr	r3, .L99+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	push	{r4, r5, r6, r7, r8, r9, lr}
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #20
	bne	.L83
	ldr	r0, .L99+8
	mov	r2, r0
.L85:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L98
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #56
	bne	.L85
.L83:
	ldr	r5, .L99+8
	mov	r7, #0
	mov	r4, r5
	ldr	r9, .L99+12
	ldr	r8, .L99+16
	add	r6, r5, #280
.L90:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L86
	mov	r1, #188
	ldr	r3, [r4, #16]
	sub	r3, r3, r3, lsl #2
	add	r3, r3, #120
	stm	r4, {r1, r3}
	str	r2, [r4, #44]
	str	r2, [r4, #52]
.L87:
	add	r4, r4, #56
	cmp	r4, r6
	bne	.L90
	ldr	r8, .L99+20
	ldr	r7, .L99+24
	ldr	r4, .L99+28
.L92:
	ldr	r2, [r5, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	str	r2, [r5, #24]
	bcs	.L91
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r4
	str	r1, [r5, #36]
.L91:
	add	r5, r5, #56
	cmp	r5, r6
	bne	.L92
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L86:
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
	ldr	r0, [r9]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L88
	mov	r2, #1
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	add	r3, r3, r1
	str	r3, [r4]
	str	r2, [r4, #44]
	b	.L87
.L88:
	ldr	r3, [r4, #44]
	ldr	r2, [r4, #12]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	sub	r1, r3, r2
	addeq	r3, r3, r2
	streq	r3, [r4, #4]
	beq	.L87
	ldr	r3, [r4, #16]
	add	r3, r1, r3
	cmp	r3, #0
	str	r1, [r4, #4]
	strle	r7, [r4, #48]
	b	.L87
.L98:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #48]
	b	.L83
.L100:
	.align	2
.L99:
	.word	frame
	.word	458129845
	.word	barrel
	.word	.LANCHOR0
	.word	collisionCheck
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.size	updateBarrel, .-updateBarrel
	.align	2
	.global	updateBarrel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBarrel2, %function
updateBarrel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L126
	ldr	r3, .L126+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #20
	bne	.L102
	ldr	r0, .L126+8
	mov	r2, r0
.L104:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L124
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #56
	bne	.L104
.L102:
	ldr	r5, .L126+8
	mov	r10, #0
	mov	r4, r5
	ldr	r9, .L126+12
	ldr	r6, .L126+16
	ldr	r8, .L126+20
	ldr	fp, .L126+24
	add	r7, r5, #280
.L113:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L105
	mov	r1, #83
	ldr	r3, [fp, #20]
	sub	r3, r3, r3, lsl #2
	add	r3, r3, #110
	stm	r4, {r1, r3}
	str	r2, [r4, #44]
	str	r2, [r4, #52]
.L106:
	add	r4, r4, #56
	cmp	r4, r7
	bne	.L113
	ldr	r8, .L126+28
	ldr	r6, .L126+32
	ldr	r4, .L126+36
.L115:
	ldr	r2, [r5, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r6
	str	r2, [r5, #24]
	bcs	.L114
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r4
	str	r1, [r5, #36]
.L114:
	add	r5, r5, #56
	cmp	r5, r7
	bne	.L115
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L105:
	ldr	lr, [r4, #44]
	add	r1, r6, #16
	cmp	lr, #0
	ldr	r0, [r9, #4]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldm	r1, {r1, ip}
	beq	.L125
.L107:
	ldr	lr, [r4, #8]
	stm	sp, {r1, ip}
	str	r10, [sp, #8]
	mov	r1, #256
	str	lr, [sp, #12]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L109
	mov	r1, #1
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	add	r3, r3, r2
	str	r3, [r4]
	str	r1, [r4, #44]
.L110:
	ldr	r1, [r6, #20]
	ldr	r3, [r6, #16]
	stmib	sp, {r1, r10}
	str	r2, [sp, #12]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r6]
	ldr	r2, [r6, #4]
	ldr	r0, [r9, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	streq	r0, [r4, #44]
.L111:
	ldr	r1, [r4, #12]
	ldr	r2, [r6, #20]
	ldr	r3, [r6, #16]
	str	r1, [sp, #8]
	str	r10, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r6]
	ldr	r2, [r6, #4]
	ldr	r0, [r9, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	streq	r0, [r4, #48]
	b	.L106
.L109:
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L111
	ldr	r2, [r4, #8]
	b	.L110
.L125:
	stm	sp, {r1, ip}
	str	lr, [sp, #12]
	ldr	r1, [r4, #12]
	str	r1, [sp, #8]
	mov	r1, #256
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	ldrne	r2, [r4, #12]
	add	r1, r6, #16
	addne	r3, r3, r2
	strne	r3, [r4, #4]
	ldr	r0, [r9, #4]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldm	r1, {r1, ip}
	b	.L107
.L124:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #48]
	b	.L102
.L127:
	.align	2
.L126:
	.word	frame
	.word	458129845
	.word	barrel
	.word	.LANCHOR0
	.word	mario
	.word	collisionCheck
	.word	kong
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.size	updateBarrel2, .-updateBarrel2
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
	ldr	r3, .L136
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	bxle	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L136+4
.L131:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L131
	bx	lr
.L137:
	.align	2
.L136:
	.word	life
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
	ldr	r1, .L182
	ldr	r4, .L182+4
	ldr	r0, [r1]
	ldr	r1, [r4, #28]
	cmp	r0, #0
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	str	r3, [r4, #40]
	sub	sp, sp, #20
	beq	.L139
	ldr	r3, .L182+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L139:
	ldr	r2, [r4, #24]
	add	r3, r2, r2, lsl #4
	ldr	r1, .L182+12
	add	r3, r3, r3, lsl #8
	ldr	ip, .L182+16
	add	r3, r3, r3, lsl #16
	sub	r1, r1, r3
	cmp	r1, ip
	bcs	.L141
	ldr	r3, [r4, #36]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #36]
.L141:
	ldr	r3, .L182+20
	ldr	r1, [r3]
	ldr	r3, .L182+24
	cmp	r1, #0
	ldr	r3, [r3]
	beq	.L179
	orrs	r3, r0, r3
	bne	.L145
	ldr	r3, .L182+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L145
	ldr	r3, .L182+8
	ldrh	r1, [r3, #48]
	tst	r1, #64
	beq	.L155
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L155
.L145:
	ldr	r3, [r4, #28]
.L149:
	cmp	r3, #10
	beq	.L180
	ldr	r2, [r4, #24]
.L158:
	add	r2, r2, #1
	str	r2, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L179:
	cmp	r3, #0
	bne	.L145
	ldr	ip, .L182+28
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L145
	ldr	r3, .L182+8
	ldrh	r1, [r3, #48]
	tst	r1, #32
	ldrh	r3, [r3, #48]
	bne	.L144
	cmp	r0, #0
	bne	.L145
	tst	r3, #16
	str	r0, [r4, #28]
	beq	.L146
.L147:
	ldr	r3, .L182+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L158
	ldr	r3, .L182+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L158
	mvn	r7, #4
	mov	lr, #1
	ldr	r6, .L182+40
	ldr	r3, [r6]
	ldr	r2, .L182+44
	rsb	r3, r3, #0
	ldr	r1, [r2]
	ldr	r0, .L182+48
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r0, [r0, #8]
	ldr	r2, .L182+52
	str	r3, [sp, #4]
	ldr	r3, [r4, #16]
	ldr	r7, .L182+56
	str	r3, [sp]
	str	r1, [r2]
	ldr	r3, [r4]
	mov	r1, #256
	ldr	r2, [r4, #4]
	str	lr, [ip]
	str	lr, [r4, #28]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L145
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	sub	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L149
.L180:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L155:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L158
.L144:
	tst	r3, #16
	beq	.L181
	cmp	r0, #0
	ldr	r3, [r4, #28]
	bne	.L149
	cmp	r3, #0
	beq	.L147
	cmp	r3, #2
	bne	.L149
.L150:
	ldr	r3, .L182+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L158
	ldr	r3, .L182+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L158
	mov	r0, #5
	mov	r1, #3
	mov	lr, #1
	ldr	r6, .L182+40
	ldr	r3, [r6]
	ldr	r2, .L182+44
	rsb	r3, r3, #0
	ldr	r2, [r2]
	ldr	r7, [r4, #20]
	str	r3, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, .L182+48
	ldr	r3, .L182+52
	ldr	r0, [r0, #8]
	str	r7, [sp, #4]
	ldr	r7, [r4, #16]
	str	r1, [r4, #28]
	str	r7, [sp]
	mov	r1, #256
	str	r2, [r3]
	str	lr, [ip]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r7, .L182+56
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L145
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L149
.L181:
	cmp	r0, #0
	bne	.L145
.L146:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L150
.L183:
	.align	2
.L182:
	.word	powerUp
	.word	mario
	.word	67109120
	.word	143165576
	.word	286331153
	.word	climbing
	.word	down
	.word	jumping
	.word	oldButtons
	.word	buttons
	.word	gravity
	.word	frame
	.word	.LANCHOR0
	.word	jumpFrame
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L248
	ldr	r5, .L248+4
	ldr	r3, [fp]
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r9, .L248+8
	ldr	r10, .L248+12
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	sub	sp, sp, #28
	ble	.L236
	ldr	lr, [r9]
	ldr	ip, [r10]
	orrs	ip, lr, ip
	beq	.L232
.L236:
	ldr	ip, .L248+16
	str	ip, [sp, #20]
.L185:
	ldr	r4, .L248+20
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	ldr	ip, [sp, #20]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r2, #256
	movne	r3, #1
	ldrne	r8, .L248+24
	strne	r2, [r4, #4]
	ldr	r4, .L248+28
	strne	r3, [r8]
	ldr	r3, [r4, #44]
	ldreq	r8, .L248+24
	cmp	r3, #0
	beq	.L240
.L189:
	ldr	r4, .L248+32
	ldr	r6, [r8]
	add	r7, r4, #280
.L197:
	cmp	r6, #0
	bne	.L191
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L241
.L192:
	ldr	r3, [r9]
	cmp	r3, #0
	beq	.L194
	ldr	r3, .L248+36
	ldr	r2, [r10]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L194
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L194
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L242
	cmp	r3, #3
	beq	.L243
.L194:
	add	r4, r4, #56
	cmp	r7, r4
	bne	.L197
.L246:
	ldr	r2, [r10]
	orrs	r3, r2, r6
	ldr	r3, [r9]
	beq	.L234
.L239:
	ldr	r4, .L248+36
.L198:
	ldr	r1, [r4]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L199
	ldr	r3, .L248+40
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L244
.L207:
	ldr	r3, .L248+40
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L245
.L199:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateMario
.L191:
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
	ldr	ip, [sp, #20]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r1, #0
	ldrne	r2, .L248+44
	ldrne	r3, [r2]
	strne	r1, [r4, #48]
	addne	r3, r3, #1
	add	r4, r4, #56
	strne	r3, [r2]
	cmp	r7, r4
	ldr	r6, [r8]
	bne	.L197
	b	.L246
.L241:
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
	ldr	ip, [sp, #20]
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldreq	r6, [r8]
	beq	.L192
.L193:
	mov	r1, #1
	ldr	r3, [fp]
	ldr	r2, .L248+48
	sub	r3, r3, #1
	str	r6, [r4, #48]
	ldr	r2, [r2]
	str	r3, [fp]
	add	r4, r4, #56
	ldr	r3, .L248+52
	cmp	r7, r4
	str	r1, [r10]
	str	r2, [r3]
	ldr	r6, [r8]
	bne	.L197
	b	.L246
.L234:
	cmp	r3, #0
	bne	.L199
	ldr	r3, .L248+40
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L247
.L200:
	ldr	r3, .L248+40
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L202
	ldr	r3, [r9]
	ldr	r2, [r10]
	b	.L239
.L240:
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
	ldr	ip, [sp, #20]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L189
	mov	r2, #1
	ldr	r3, .L248+48
	ldr	r0, [r3]
	ldr	r3, [fp]
	ldr	r1, .L248+52
	sub	r3, r3, #1
	str	r0, [r1]
	str	r3, [fp]
	str	r2, [r10]
	str	r2, [r4, #44]
	b	.L189
.L232:
	ldr	ip, .L248+56
	ldr	r4, [ip, #20]
	ldr	lr, [ip, #16]
	str	r4, [sp, #12]
	ldm	ip, {r4, ip}
	str	ip, [sp]
	ldr	ip, .L248+16
	stmib	sp, {r4, lr}
	str	ip, [sp, #20]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r0, #1
	ldrne	r2, .L248+44
	ldrne	r3, [r2]
	addne	r3, r3, #5
	ldrne	r1, .L248+60
	strne	r3, [r2]
	add	r2, r5, #16
	strne	r0, [r1]
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	b	.L185
.L242:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L194
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L194
	ldr	r1, .L248+44
	ldr	r2, [r1]
	add	r2, r2, #1
	str	r3, [r4, #52]
	str	r2, [r1]
	b	.L194
.L243:
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L194
	ldr	r2, [r5, #4]
	ldr	r0, [r5, #16]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #16]
	add	r2, r2, r0
	add	r3, r3, r1
	cmp	r2, r3
	ble	.L194
	mov	r1, #1
	ldr	r2, .L248+44
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r1, [r4, #52]
	str	r3, [r2]
	b	.L194
.L245:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #16]
	str	r3, [sp, #12]
	ldr	ip, [r5, #12]
	ldr	r0, .L248+64
	ldr	r3, [r5]
	ldr	r0, [r0, #8]
	ldr	r4, .L248+68
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L199
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L199
	ldr	r1, .L248+72
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r5, #4]
	bgt	.L199
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L199
.L244:
	ldr	r2, [r5, #12]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L248+64
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r5]
	ldr	r0, [r0, #8]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L248+68
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L207
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L207
	ldr	r1, .L248+72
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5, #4]
	ble	.L207
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L207
.L247:
	ldr	r2, [r5, #8]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r6, .L248+64
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r5]
	ldr	r0, [r6]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r7, .L248+68
	mov	r1, #256
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L200
	mov	ip, #1
	ldr	r0, .L248+76
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L248+36
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	ip, [r4]
	ble	.L201
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L201:
	ldr	r1, .L248+40
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L199
.L209:
	mov	ip, #0
	ldr	r1, [r5, #20]
	str	r2, [sp, #12]
	ldr	r2, [r5, #16]
	ldr	r0, [r6]
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L204
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	add	r3, r3, r2
	cmp	r3, #232
	bgt	.L204
	mov	r0, #1
	ldr	r1, .L248+76
	ldr	r2, [r1]
	cmp	r2, #94
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L199
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L199
.L202:
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r4, .L248+36
	ldr	r6, .L248+64
	ldr	r7, .L248+68
	b	.L209
.L204:
	ldr	r3, [r9]
	ldr	r2, [r10]
	b	.L198
.L249:
	.align	2
.L248:
	.word	life
	.word	mario
	.word	jumping
	.word	down
	.word	collision
	.word	hammer
	.word	powerUp
	.word	kong
	.word	barrel
	.word	climbing
	.word	67109120
	.word	score
	.word	frame
	.word	downFrame
	.word	pauline
	.word	nextLevel
	.word	.LANCHOR0
	.word	collisionCheck
	.word	hOff
	.word	vOff
	.size	updateMario, .-updateMario
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r1, .L292
	ldr	r5, .L292+4
	ldr	r3, [r1]
	ldr	r2, [r5]
	ldr	r4, .L292+8
	ldr	r6, .L292+12
	add	r2, r2, #1
	cmp	r3, #0
	str	r2, [r5]
	ldr	r3, [r4]
	ldr	ip, [r6]
	sub	sp, sp, #16
	beq	.L251
	ldr	r0, .L292+16
	ldr	r0, [r0]
	sub	r0, r2, r0
	cmp	r0, #25
	beq	.L289
.L252:
	ldr	r0, .L292+20
	ldr	r1, .L292+24
	ldr	ip, [r0]
	ldr	r1, [r1]
	cmp	ip, #0
	sub	r1, r2, r1
	beq	.L253
	ldr	ip, [r4, #28]
	cmp	ip, #0
	moveq	ip, #5
	bne	.L290
	cmp	r1, #20
	str	ip, [r4, #28]
	beq	.L291
.L253:
	cmp	r1, #50
	ldr	r5, .L292+28
	beq	.L287
.L255:
	ldr	r1, .L292+32
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L256
	ldr	r0, .L292+36
	ldr	ip, .L292+40
	mla	r2, r0, r2, ip
	ldr	r0, .L292+44
	cmp	r0, r2, ror #2
	movcs	r2, #0
	strcs	r2, [r1]
.L256:
	cmp	r3, #232
	bne	.L257
.L259:
	mov	r3, #0
	str	r3, [r6]
.L258:
	bl	updateMario
	ldr	r3, [r5, #24]
	ldr	r1, .L292+48
	ldr	r2, .L292+52
	add	r3, r3, #1
	mla	r2, r3, r2, r1
	cmp	r1, r2, ror #1
	str	r3, [r5, #24]
	blcs	animateKong.part.0
.L260:
	ldr	r1, .L292+56
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L292+60
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	blcs	animatePauline.part.0
.L261:
	bl	updateBarrel
	ldr	r3, .L292+64
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	ble	.L250
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L292+68
.L264:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L264
.L250:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L289:
	mov	lr, #0
	mov	r0, #10
	str	lr, [r1]
	ldr	r1, .L292+72
	str	r0, [r1]
.L251:
	cmp	ip, #0
	bne	.L252
	ldr	r7, .L292+72
	ldr	lr, [r7]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	ldr	r0, .L292+76
	str	ip, [sp, #8]
	str	lr, [sp, #12]
	ldr	r0, [r0, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	ldr	r8, .L292+80
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	bne	.L266
	ldr	r2, [r5]
	ldr	r3, [r4]
	b	.L252
.L287:
	ldr	r1, [r5, #44]
	cmp	r1, #0
	movne	r1, #0
	strne	r1, [r5, #44]
	b	.L255
.L290:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	moveq	ip, #5
	movne	ip, #6
	cmp	r1, #20
	str	ip, [r4, #28]
	bne	.L253
	b	.L291
.L257:
	mov	ip, #0
	ldr	r2, [r4, #8]
	rsb	r2, r2, #0
	ldr	r1, [r4, #20]
	str	r2, [sp, #12]
	ldr	r0, .L292+76
	ldr	r2, [r4, #16]
	str	ip, [sp, #8]
	ldr	r0, [r0]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	ldr	r4, .L292+80
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L259
	b	.L258
.L291:
	mov	r1, #0
	ldr	r5, .L292+28
	str	r1, [r0]
	b	.L255
.L266:
	ldr	r2, [r4]
	ldr	r3, [r7]
	add	r3, r2, r3
	str	r3, [r4]
	ldr	r2, [r5]
	b	.L252
.L293:
	.align	2
.L292:
	.word	jumping
	.word	frame
	.word	mario
	.word	climbing
	.word	jumpFrame
	.word	down
	.word	downFrame
	.word	kong
	.word	powerUp
	.word	-1775253149
	.word	28633112
	.word	14316556
	.word	85899344
	.word	-1030792151
	.word	pauline
	.word	143165576
	.word	life
	.word	heart
	.word	gravity
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateGame, .-updateGame
	.align	2
	.global	animateMario2
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateMario2, %function
animateMario2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #10
	mov	r3, #2
	push	{r4, r5, r6, r7, lr}
	ldr	r1, .L338
	ldr	r4, .L338+4
	ldr	r0, [r1]
	ldr	r1, [r4, #28]
	cmp	r0, #0
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	str	r3, [r4, #40]
	sub	sp, sp, #20
	beq	.L295
	ldr	r3, .L338+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L295:
	ldr	r2, [r4, #24]
	add	r3, r2, r2, lsl #4
	ldr	r1, .L338+12
	add	r3, r3, r3, lsl #8
	ldr	ip, .L338+16
	add	r3, r3, r3, lsl #16
	sub	r1, r1, r3
	cmp	r1, ip
	bcs	.L297
	ldr	r3, [r4, #36]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #36]
.L297:
	ldr	r3, .L338+20
	ldr	r1, [r3]
	ldr	r3, .L338+24
	cmp	r1, #0
	ldr	r3, [r3]
	beq	.L335
	orrs	r3, r0, r3
	bne	.L301
	ldr	r3, .L338+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L301
	ldr	r3, .L338+8
	ldrh	r1, [r3, #48]
	tst	r1, #64
	beq	.L311
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L311
.L301:
	ldr	r3, [r4, #28]
.L305:
	cmp	r3, #10
	beq	.L336
	ldr	r2, [r4, #24]
.L314:
	add	r2, r2, #1
	str	r2, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L335:
	cmp	r3, #0
	bne	.L301
	ldr	ip, .L338+28
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L301
	ldr	r3, .L338+8
	ldrh	r1, [r3, #48]
	tst	r1, #32
	ldrh	r3, [r3, #48]
	bne	.L300
	cmp	r0, #0
	bne	.L301
	tst	r3, #16
	str	r0, [r4, #28]
	beq	.L302
.L303:
	ldr	r3, .L338+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L314
	ldr	r3, .L338+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L314
	mvn	r7, #4
	mov	lr, #1
	ldr	r6, .L338+40
	ldr	r3, [r6]
	ldr	r2, .L338+44
	rsb	r3, r3, #0
	ldr	r1, [r2]
	ldr	r0, .L338+48
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r0, [r0, #4]
	ldr	r2, .L338+52
	str	r3, [sp, #4]
	ldr	r3, [r4, #16]
	ldr	r7, .L338+56
	str	r3, [sp]
	str	r1, [r2]
	ldr	r3, [r4]
	mov	r1, #256
	ldr	r2, [r4, #4]
	str	lr, [ip]
	str	lr, [r4, #28]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L301
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	sub	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L305
.L336:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L311:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L314
.L300:
	tst	r3, #16
	beq	.L337
	cmp	r0, #0
	ldr	r3, [r4, #28]
	bne	.L305
	cmp	r3, #0
	beq	.L303
	cmp	r3, #2
	bne	.L305
.L306:
	ldr	r3, .L338+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L314
	ldr	r3, .L338+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L314
	mov	r0, #5
	mov	r1, #3
	mov	lr, #1
	ldr	r6, .L338+40
	ldr	r3, [r6]
	ldr	r2, .L338+44
	rsb	r3, r3, #0
	ldr	r2, [r2]
	ldr	r7, [r4, #20]
	str	r3, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, .L338+48
	ldr	r3, .L338+52
	ldr	r0, [r0, #4]
	str	r7, [sp, #4]
	ldr	r7, [r4, #16]
	str	r1, [r4, #28]
	str	r7, [sp]
	mov	r1, #256
	str	r2, [r3]
	str	lr, [ip]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r7, .L338+56
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L301
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L305
.L337:
	cmp	r0, #0
	bne	.L301
.L302:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L306
.L339:
	.align	2
.L338:
	.word	powerUp
	.word	mario
	.word	67109120
	.word	143165576
	.word	286331153
	.word	climbing
	.word	down
	.word	jumping
	.word	oldButtons
	.word	buttons
	.word	gravity
	.word	frame
	.word	.LANCHOR0
	.word	jumpFrame
	.word	collisionCheck
	.size	animateMario2, .-animateMario2
	.align	2
	.global	updateMario2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMario2, %function
updateMario2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L399
	ldr	r5, .L399+4
	ldr	r3, [r10]
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	sub	sp, sp, #20
	beq	.L385
	ldr	r8, .L399+8
.L341:
	ldr	r4, .L399+12
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r2, #256
	movne	r3, #1
	ldrne	r9, .L399+16
	strne	r2, [r4, #4]
	ldr	r4, .L399+20
	strne	r3, [r9]
	ldr	r3, [r4, #44]
	ldreq	r9, .L399+16
	cmp	r3, #0
	beq	.L391
.L345:
	ldr	r4, .L399+24
	ldr	r6, [r9]
	ldr	fp, .L399+28
	add	r7, r4, #280
.L353:
	cmp	r6, #0
	bne	.L347
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L392
.L348:
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L350
	ldr	r3, .L399+32
	ldr	r2, [r10]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L350
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L350
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L393
	cmp	r3, #3
	beq	.L394
.L350:
	add	r4, r4, #56
	cmp	r7, r4
	bne	.L353
.L397:
	ldr	r2, [r10]
	orrs	r3, r2, r6
	ldr	r3, [fp]
	beq	.L387
.L390:
	ldr	r4, .L399+32
.L354:
	ldr	r1, [r4]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L355
	ldr	r3, .L399+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L395
.L362:
	ldr	r3, .L399+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L396
.L355:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateMario2
.L347:
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
	movne	r1, #0
	ldrne	r2, .L399+40
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r1, [r4, #48]
	strne	r3, [r2]
	add	r4, r4, #56
	cmp	r7, r4
	ldr	r6, [r9]
	bne	.L353
	b	.L397
.L392:
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
	ldreq	r6, [r9]
	beq	.L348
.L349:
	mov	r2, #1
	ldr	r1, .L399+44
	ldr	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r1]
	ldr	r3, .L399+48
	str	r2, [r10]
	ldr	r3, [r3]
	ldr	r2, .L399+52
	str	r6, [r4, #48]
	str	r3, [r2]
	add	r4, r4, #56
	cmp	r7, r4
	ldr	r6, [r9]
	bne	.L353
	b	.L397
.L387:
	cmp	r3, #0
	bne	.L355
	ldr	r3, .L399+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L398
.L356:
	ldr	r3, .L399+36
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L358
	ldr	r3, [fp]
	ldr	r2, [r10]
	b	.L390
.L385:
	ldr	ip, .L399+56
	add	r4, ip, #16
	ldm	r4, {r4, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	ldr	r8, .L399+8
	stm	sp, {ip, lr}
	str	r4, [sp, #8]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L399+60
	strne	r2, [r3]
	add	r2, r5, #16
	ldreq	r0, [r5, #4]
	ldrne	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L341
.L391:
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
	beq	.L345
	mov	r2, #1
	ldr	r1, .L399+44
	ldr	r3, [r1]
	ldr	r0, .L399+48
	sub	r3, r3, #1
	ldr	r0, [r0]
	str	r3, [r1]
	ldr	r3, .L399+52
	str	r2, [r10]
	str	r0, [r3]
	str	r2, [r4, #44]
	b	.L345
.L393:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L350
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L350
	ldr	r1, .L399+40
	ldr	r2, [r1]
	add	r2, r2, #1
	str	r3, [r4, #52]
	str	r2, [r1]
	b	.L350
.L394:
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L350
	ldr	r2, [r5, #4]
	ldr	r0, [r5, #16]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #16]
	add	r2, r2, r0
	add	r3, r3, r1
	cmp	r2, r3
	ble	.L350
	mov	r2, #1
	ldr	r1, .L399+40
	ldr	r3, [r1]
	add	r3, r3, r2
	str	r3, [r1]
	str	r2, [r4, #52]
	b	.L350
.L396:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #16]
	str	r3, [sp, #12]
	ldr	ip, [r5, #12]
	ldr	r0, .L399+64
	ldr	r3, [r5]
	ldr	r0, [r0, #4]
	ldr	r4, .L399+68
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L355
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L355
	ldr	r1, .L399+72
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r5, #4]
	bgt	.L355
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L355
.L395:
	ldr	r2, [r5, #12]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L399+64
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r5]
	ldr	r0, [r0, #4]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L399+68
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L362
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L362
	ldr	r1, .L399+72
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5, #4]
	ble	.L362
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L362
.L398:
	ldr	r2, [r5, #8]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r6, .L399+64
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r5]
	ldr	r0, [r6, #12]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r7, .L399+68
	mov	r1, #256
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L356
	mov	ip, #1
	ldr	r0, .L399+76
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L399+32
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	ip, [r4]
	ble	.L357
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L357:
	ldr	r1, .L399+36
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L355
.L364:
	mov	ip, #0
	ldr	r1, [r5, #20]
	str	r2, [sp, #12]
	ldr	r2, [r5, #16]
	ldr	r0, [r6, #12]
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L359
	ldr	r3, [fp]
	ldr	r2, [r10]
	b	.L354
.L358:
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r4, .L399+32
	ldr	r6, .L399+64
	ldr	r7, .L399+68
	b	.L364
.L359:
	mov	r0, #1
	ldr	r1, .L399+76
	ldr	r3, [r5]
	ldr	r2, [r1]
	ldr	ip, [r5, #8]
	cmp	r2, #94
	add	r3, r3, ip
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L355
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L355
.L400:
	.align	2
.L399:
	.word	down
	.word	mario
	.word	collision
	.word	hammer
	.word	powerUp
	.word	kong
	.word	barrel
	.word	jumping
	.word	climbing
	.word	67109120
	.word	score
	.word	life
	.word	frame
	.word	downFrame
	.word	pauline
	.word	rescued
	.word	.LANCHOR0
	.word	collisionCheck
	.word	hOff
	.word	vOff
	.size	updateMario2, .-updateMario2
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r0, .L445
	ldr	r5, .L445+4
	ldr	r4, .L445+8
	ldr	r1, [r5]
	ldr	r3, [r0]
	ldr	r6, .L445+12
	add	r1, r1, #1
	cmp	r3, #0
	add	ip, r4, #16
	str	r1, [r5]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldm	ip, {ip, lr}
	ldr	r10, [r6]
	sub	sp, sp, #16
	beq	.L402
	ldr	r7, .L445+16
	ldr	r7, [r7]
	sub	r7, r1, r7
	cmp	r7, #25
	beq	.L439
.L442:
	ldr	r8, .L445+20
	ldr	r7, .L445+24
.L403:
	ldr	r5, .L445+28
	ldr	r0, .L445+32
	ldr	r9, [r5]
	ldr	r0, [r0]
	cmp	r9, #0
	sub	r0, r1, r0
	beq	.L404
	ldr	r9, [r4, #28]
	cmp	r9, #0
	moveq	r9, #5
	bne	.L443
	cmp	r0, #15
	str	r9, [r4, #28]
	beq	.L444
.L404:
	cmp	r0, #50
	ldr	r5, .L445+36
	beq	.L440
.L406:
	ldr	r0, .L445+40
	ldr	r9, [r0]
	cmp	r9, #0
	beq	.L407
	ldr	r9, .L445+44
	ldr	r10, .L445+48
	mla	r1, r9, r1, r10
	ldr	r9, .L445+52
	cmp	r9, r1, ror #2
	movcs	r1, #0
	strcs	r1, [r0]
.L407:
	mov	r0, #0
	ldr	r1, [r4, #8]
	str	lr, [sp, #4]
	str	r1, [sp, #12]
	str	ip, [sp]
	str	r0, [sp, #8]
	mov	r1, #256
	ldr	r0, [r8, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L408
.L410:
	mov	r3, #0
	str	r3, [r6]
.L409:
	bl	updateMario2
	ldr	r3, [r5, #24]
	ldr	r1, .L445+56
	ldr	r2, .L445+60
	add	r3, r3, #1
	mla	r2, r3, r2, r1
	cmp	r1, r2, ror #1
	str	r3, [r5, #24]
	blcs	animateKong.part.0
.L411:
	ldr	r1, .L445+64
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L445+68
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	blcs	animatePauline.part.0
.L412:
	bl	updateBarrel2
	ldr	r3, .L445+72
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	ble	.L401
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L445+76
.L415:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L415
.L401:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L439:
	mov	r8, #0
	mov	r7, #10
	str	r8, [r0]
	ldr	r0, .L445+80
	str	r7, [r0]
.L402:
	cmp	r10, #0
	bne	.L442
	ldr	r9, .L445+80
	ldr	r1, [r9]
	stm	sp, {ip, lr}
	str	r1, [sp, #12]
	str	r10, [sp, #8]
	ldr	r8, .L445+20
	mov	r1, #256
	ldr	r0, [r8, #4]
	ldr	r7, .L445+24
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L417
	add	ip, r4, #16
	ldr	r1, [r5]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldm	ip, {ip, lr}
	b	.L403
.L440:
	ldr	r0, [r5, #44]
	cmp	r0, #0
	movne	r0, #0
	strne	r0, [r5, #44]
	b	.L406
.L443:
	ldr	r9, [r4, #32]
	cmp	r9, #0
	moveq	r9, #5
	movne	r9, #6
	cmp	r0, #15
	str	r9, [r4, #28]
	bne	.L404
	b	.L444
.L408:
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r0, [sp, #8]
	rsb	r3, r3, #0
	ldr	r0, [r8, #12]
	str	r3, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L410
	b	.L409
.L444:
	mov	r0, #0
	str	r0, [r5]
	ldr	r5, .L445+36
	b	.L406
.L417:
	ldr	r2, [r4]
	ldr	r3, [r9]
	add	ip, r4, #16
	add	r3, r2, r3
	ldr	r1, [r5]
	str	r3, [r4]
	ldr	r2, [r4, #4]
	ldm	ip, {ip, lr}
	b	.L403
.L446:
	.align	2
.L445:
	.word	jumping
	.word	frame
	.word	mario
	.word	climbing
	.word	jumpFrame
	.word	.LANCHOR0
	.word	collisionCheck
	.word	down
	.word	downFrame
	.word	kong
	.word	powerUp
	.word	-1775253149
	.word	28633112
	.word	14316556
	.word	85899344
	.word	-1030792151
	.word	pauline
	.word	143165576
	.word	life
	.word	heart
	.word	gravity
	.size	updateGame2, .-updateGame2
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
	ldr	r1, .L449
	ldr	r3, [r1, #24]
	ldr	r0, .L449+4
	ldr	r2, .L449+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L450:
	.align	2
.L449:
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
	ldr	r1, .L453
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L453+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L454:
	.align	2
.L453:
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
	ldr	r4, .L460
	ldr	r8, .L460+4
	ldr	r7, .L460+8
	ldr	r6, .L460+12
	add	r5, r4, #280
.L457:
	ldr	r2, [r4, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	str	r2, [r4, #24]
	bcs	.L456
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L456:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L457
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L461:
	.align	2
.L460:
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
	ldr	r0, .L470
	ldr	ip, .L470+4
	ldr	r3, .L470+8
	ldr	r1, .L470+12
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
	bne	.L463
	ldr	r0, .L470+16
	lsl	r1, r1, #6
	add	r1, r1, #14
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L463:
	ldr	r0, [r0, #28]
	cmp	r0, #8
	beq	.L468
	cmp	r0, #9
	beq	.L469
	add	r1, r0, r1, lsl #5
	ldr	r0, .L470+16
	lsl	r1, r1, #1
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L468:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L470+16
	lsl	r1, r1, #6
	add	r1, r1, #16
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L469:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L470+16
	lsl	r1, r1, #6
	add	r1, r1, #20
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L471:
	.align	2
.L470:
	.word	mario
	.word	vOff
	.word	hOff
	.word	life
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
	ldr	r1, .L473
	ldr	r2, .L473+4
	ldr	r3, [r1, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L473+8
	ldr	r2, [r1]
	ldr	ip, [r0]
	ldr	r1, [r1, #36]
	ldr	r0, .L473+12
	add	r1, r1, #1
	sub	r2, r2, ip
	lsl	r1, r1, #7
	orr	r2, r2, #16384
	strh	r3, [r0, #10]	@ movhi
	strh	r1, [r0, #12]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	bx	lr
.L474:
	.align	2
.L473:
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
	ldr	r2, .L477
	ldr	r3, .L477+4
	ldr	r0, .L477+8
	str	lr, [sp, #-4]!
	ldr	r1, [r2]
	ldr	lr, [r3]
	ldr	r0, [r0]
	ldr	r3, [r2, #4]
	ldr	r2, [r2, #36]
	ldr	ip, .L477+12
	sub	r1, r1, r0
	sub	r3, r3, lr
	ldr	r0, .L477+16
	lsl	r2, r2, #7
	orr	r1, r1, ip
	add	r2, r2, #24
	orr	r3, r3, ip
	strh	r1, [r0, #16]	@ movhi
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #18]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L478:
	.align	2
.L477:
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
	ldr	r4, .L485
	ldr	r5, .L485+4
	ldr	r10, .L485+8
	ldr	r9, .L485+12
	ldr	r8, .L485+16
	ldr	r7, .L485+20
	sub	sp, sp, #20
	add	r6, r4, #280
.L482:
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
	ldr	r0, [r8]
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
	bne	.L482
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L486:
	.align	2
.L485:
	.word	barrel
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	collisionCheck
	.size	drawBarrel, .-drawBarrel
	.align	2
	.global	drawBarrel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBarrel2, %function
drawBarrel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #0
	ldr	r4, .L493
	ldr	r5, .L493+4
	ldr	r10, .L493+8
	ldr	r9, .L493+12
	ldr	r8, .L493+16
	ldr	r7, .L493+20
	sub	sp, sp, #20
	add	r6, r4, #280
.L490:
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
	strh	r0, [r5, #162]	@ movhi
	str	r1, [sp]
	str	fp, [sp, #8]
	mov	r1, #256
	ldr	r0, [r8, #12]
	strh	ip, [r5, #160]	@ movhi
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
	strh	r3, [r5, #164]	@ movhi
	add	r5, r5, #8
	bne	.L490
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L494:
	.align	2
.L493:
	.word	barrel
	.word	shadowOAM
	.word	vOff
	.word	hOff
	.word	.LANCHOR0
	.word	collisionCheck
	.size	drawBarrel2, .-drawBarrel2
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
	ldr	r2, .L497
	ldr	r1, .L497+4
	ldr	ip, .L497+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L497+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #66]	@ movhi
	strh	r1, [r2, #64]	@ movhi
	strh	r0, [r2, #68]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L498:
	.align	2
.L497:
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
	ldr	r2, .L505
	ldr	r3, .L505+4
	ldr	r1, .L505+8
	ldrh	r4, [r2]
	ldrh	lr, [r3]
	ldr	r0, .L505+12
	add	ip, r1, #24
.L502:
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
	bne	.L502
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L506:
	.align	2
.L505:
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
	ldr	r1, .L511
	ldr	lr, .L511+4
	ldr	r2, .L511+8
	ldr	r3, .L511+12
	ldrh	r5, [r1]
	ldrh	r4, [r2]
	ldr	ip, [lr]
	ldr	r1, [lr, #20]
	ldr	r0, [lr, #4]
	ldr	r2, [lr, #24]
	ldr	r3, [r3]
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
	bgt	.L508
	mov	r4, #640
	ldr	lr, .L511+16
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
.L508:
	ldr	lr, .L511+20
	smull	r4, r5, lr, r3
	asr	lr, r3, #31
	ldr	r4, .L511+24
	rsb	lr, lr, r5, asr #2
	umull	r5, r4, lr, r4
	lsr	r4, r4, #3
	add	r5, lr, lr, lsl #2
	add	r4, r4, r4, lsl #2
	sub	lr, lr, r4, lsl #1
	sub	r3, r3, r5, lsl #1
	ldr	r4, .L511+16
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
.L512:
	.align	2
.L511:
	.word	vOff
	.word	scoreUI
	.word	hOff
	.word	score
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
	ldr	r6, .L515
	ldr	r1, .L515+4
	ldrh	r2, [r6]
	ldr	r3, [r1, #4]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L515+8
	ldr	r5, .L515+12
	ldr	r7, [r0, #4]
	ldr	ip, [r1]
	ldr	lr, [r1, #36]
	sub	r2, r7, r2
	ldr	r1, [r0]
	ldrh	r7, [r5]
	ldr	r0, [r0, #36]
	ldr	r4, .L515+16
	sub	r1, r1, r7
	sub	ip, ip, r7
	ldr	r7, .L515+20
	add	lr, lr, #1
	lsl	r0, r0, #7
	lsl	lr, lr, #7
	orr	r2, r2, r7
	orr	ip, ip, #16384
	add	r0, r0, #24
	strh	r3, [r4, #10]	@ movhi
	orr	r3, r1, r7
	strh	lr, [r4, #12]	@ movhi
	strh	ip, [r4, #8]	@ movhi
	strh	r0, [r4, #20]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r2, [r4, #18]	@ movhi
	bl	drawBarrel
	bl	drawBarrel2
	mov	r1, #26
	ldr	r2, .L515+24
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
	ldr	r3, .L515+28
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L515+32
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
.L516:
	.align	2
.L515:
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
	.global	laddercollisionMap2
	.global	collisionMap2
	.global	laddercollisionMap
	.global	collisionMap
	.comm	nextLevel,4,4
	.comm	downFrame,4,4
	.comm	jumpFrame,4,4
	.comm	score,4,4
	.comm	frame,4,4
	.comm	powerUp,4,4
	.comm	climbing,4,4
	.comm	down,4,4
	.comm	jumping,4,4
	.comm	gravity,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	rescued,4,4
	.comm	life,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	laddercollisionMap, %object
	.size	laddercollisionMap, 4
laddercollisionMap:
	.word	laddercollisionmapBitmap
	.type	collisionMap2, %object
	.size	collisionMap2, 4
collisionMap2:
	.word	collisionmap2Bitmap
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collisionmapBitmap
	.type	laddercollisionMap2, %object
	.size	laddercollisionMap2, 4
laddercollisionMap2:
	.word	laddercollisionmap2Bitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
