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
	mov	lr, #85
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
	mov	r1, #2
	mov	r5, #188
	mov	r4, #72
	mov	r2, #0
	mov	lr, #1
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
	str	r1, [r3, #40]
	str	lr, [r3, #28]
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
	ldr	lr, .L42+4
	str	r4, [r2]
	ldr	ip, .L42+8
	ldr	r1, .L42+12
	ldr	r2, .L42+16
	str	r7, [lr]
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r2]
	ldr	r5, .L42+20
	ldr	lr, .L42+24
	ldr	ip, .L42+28
	ldr	r1, .L42+32
	ldr	r2, .L42+36
	str	r4, [r5]
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r1]
	ldr	lr, .L42+40
	ldr	ip, .L42+44
	ldrh	r2, [r2]
	ldr	r8, .L42+48
	ldr	r5, .L42+52
	ldr	r1, .L42+56
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r5]
	str	r0, [r1]
	strh	r2, [r3, #22]	@ movhi
	ldrh	r2, [r8]
	mov	r0, r7
	strh	r2, [r3, #20]	@ movhi
	ldr	r5, .L42+60
	mov	r3, #256
	ldr	r2, .L42+64
	ldr	r1, .L42+68
	mov	lr, pc
	bx	r5
	mov	r0, r7
	mov	r3, #16384
	ldr	r2, .L42+72
	ldr	r1, .L42+76
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
	ldr	r3, .L42+80
	str	r7, [r3, #40]
	str	r4, [r3, #12]
	ldr	r7, .L42+84
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	fp, [r3, #16]
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r0, [r3, #20]
	str	r4, [r3, #44]
	ldr	r3, .L42+88
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
	ldr	r3, .L42+92
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
	ldr	r3, .L42+96
	str	lr, [r3, #44]
	ldr	lr, .L42+100
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
	ldr	r3, .L42+104
	str	r2, [lr, #32]
	str	r0, [lr, #20]
	str	r6, [lr, #36]
	str	fp, [lr, #24]
	mov	lr, pc
	bx	r3
	mov	r1, #96
	ldr	r2, .L42+108
	ldr	r3, .L42+112
	ldrh	r2, [r2, #48]
	ldr	r0, .L42+36
	str	r4, [r8]
	strh	r2, [r3]	@ movhi
	str	r1, [r0]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	down
	.word	life
	.word	rescued
	.word	jumping
	.word	jumpFrame
	.word	climbing
	.word	powerUp
	.word	frame
	.word	score
	.word	vOff
	.word	hammerFrame
	.word	nextLevel
	.word	hOff
	.word	downFrame
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
	mov	r1, #2
	push	{r4, r5, lr}
	mov	r0, #16
	mov	r5, #83
	mov	r2, #0
	mov	r4, #1
	ldr	r3, .L48
	ldr	ip, [r3, #20]
	ldr	r3, .L48+4
	sub	ip, ip, ip, lsl r1
	add	ip, ip, #123
	add	lr, r3, #280
.L45:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r1, [r3, #40]
	str	r4, [r3, #28]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	stm	r3, {r5, ip}
	add	r3, r3, #56
	cmp	r3, lr
	bne	.L45
	pop	{r4, r5, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	kong
	.word	barrel
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
	mov	ip, #10
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r3, .L52
	ldr	r0, .L52+4
	ldr	r1, .L52+8
	ldr	r2, .L52+12
	str	ip, [r3]
	ldr	r3, .L52+16
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	ldr	ip, .L52+20
	ldr	r0, .L52+24
	ldr	r1, .L52+28
	ldr	r2, .L52+32
	str	r4, [r3]
	ldr	r3, .L52+36
	mov	r5, #16
	mov	r6, #1
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	mov	fp, #80
	mov	lr, pc
	bx	r3
	mov	r10, #85
	mov	r2, #2
	mov	r1, #32
	mov	r9, #68
	mov	r8, #232
	mov	lr, #65
	mov	ip, #24
	mov	r0, #3
	mov	r7, #64
	ldr	r3, .L52+40
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	fp, [r3]
	str	r10, [r3, #4]
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r6, [r3, #12]
	str	r6, [r3, #8]
	str	r2, [r3, #40]
	str	r2, [r3, #28]
	ldr	r3, .L52+44
	str	r2, [r3, #40]
	str	r5, [r3, #16]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	r9, [r3]
	str	r8, [r3, #4]
	str	r1, [r3, #20]
	ldr	r3, .L52+48
	mov	r9, #110
	str	r1, [r3, #20]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #28]
	str	r4, [r3, #44]
	str	r7, [r3, #16]
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	bl	initBarrel2
	mov	ip, #120
	mov	r0, #60
	mov	r8, #104
	mov	r2, #136
	mov	r1, #8
	mov	lr, #50
	mov	r7, #128
	ldr	r3, .L52+52
	stm	r3, {r9, ip}
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r4, [r3, #24]
	str	r4, [r3, #36]
	str	r4, [r3, #40]
	str	r4, [r3, #28]
	ldr	r3, .L52+56
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r6, [r3, #16]
	str	r5, [r3, #28]
	str	r5, [r3, #32]
	str	r6, [r3, #36]
	str	r5, [r3, #48]
	str	r5, [r3, #52]
	str	r6, [r3, #56]
	str	r8, [r3, #4]
	str	r2, [r3, #44]
	str	r0, [r3]
	ldr	r2, .L52+60
	str	r0, [r3, #20]
	str	r0, [r3, #40]
	str	ip, [r3, #24]
	ldr	r3, .L52+64
	str	r6, [r2, #16]
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	str	r1, [r2, #28]
	str	r1, [r2, #32]
	str	lr, [r2]
	str	ip, [r2, #4]
	str	lr, [r2, #20]
	ldrh	r0, [r3, #48]
	ldr	r3, .L52+68
	ldr	r1, .L52+72
	str	r4, [r3]
	ldr	r3, .L52+76
	str	r6, [r2, #36]
	str	r7, [r2, #24]
	str	r4, [r3]
	strh	r0, [r1]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	gravity
	.word	jumping
	.word	down
	.word	climbing
	.word	powerUp
	.word	frame
	.word	jumpFrame
	.word	downFrame
	.word	hammerFrame
	.word	hideSprites
	.word	mario
	.word	pauline
	.word	kong
	.word	hammer
	.word	heart
	.word	scoreUI
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
	ldr	r3, .L55
	ldr	r1, [r3, #16]
	ldr	r3, .L55+4
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
.L56:
	.align	2
.L55:
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
	ldr	r3, .L58
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
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
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
.L63:
	.align	2
.L62:
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
	ldr	r3, .L66
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
.L67:
	.align	2
.L66:
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
	ldr	r3, .L70
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
.L71:
	.align	2
.L70:
	.word	scoreUI
	.size	initScore, .-initScore
	.align	2
	.global	initScore2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initScore2, %function
initScore2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #8
	mov	lr, #120
	mov	r0, #50
	mov	r1, #1
	mov	ip, #128
	ldr	r3, .L74
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
.L75:
	.align	2
.L74:
	.word	scoreUI
	.size	initScore2, .-initScore2
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
	ldr	r1, .L78
	ldr	r3, [r1, #24]
	ldr	r0, .L78+4
	ldr	r2, .L78+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L79:
	.align	2
.L78:
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
	ldr	r1, .L82
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L82+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L83:
	.align	2
.L82:
	.word	pauline
	.word	143165576
	.size	updatePauline, .-updatePauline
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
	ldr	r3, .L92
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	bxle	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L92+4
.L87:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L87
	bx	lr
.L93:
	.align	2
.L92:
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
	mov	r3, #10
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L138
	ldr	r4, .L138+4
	ldr	r6, [r2]
	ldr	r2, [r4, #28]
	cmp	r6, #0
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #20
	beq	.L95
	ldr	r3, .L138+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L95:
	ldr	r5, [r4, #24]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L138+12
	add	r3, r3, r3, lsl #8
	ldr	r1, .L138+16
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L97
	ldr	r0, [r4, #36]
	ldr	r3, .L138+20
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L97:
	ldr	r3, .L138+24
	ldr	r2, [r3]
	ldr	r3, .L138+28
	cmp	r2, #0
	ldr	r3, [r3]
	beq	.L135
	orrs	r3, r6, r3
	bne	.L101
	ldr	r3, .L138+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L101
	ldr	r3, .L138+8
	ldrh	r2, [r3, #48]
	tst	r2, #64
	beq	.L111
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L111
.L101:
	ldr	r3, [r4, #28]
.L105:
	cmp	r3, #10
	beq	.L136
	ldr	r5, [r4, #24]
.L114:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L135:
	cmp	r3, #0
	bne	.L101
	ldr	ip, .L138+32
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L101
	ldr	r3, .L138+8
	ldrh	r2, [r3, #48]
	tst	r2, #32
	ldrh	r3, [r3, #48]
	bne	.L100
	cmp	r6, #0
	bne	.L101
	tst	r3, #16
	str	r6, [r4, #28]
	beq	.L102
.L103:
	ldr	r3, .L138+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L114
	ldr	r3, .L138+40
	ldrh	r3, [r3]
	ands	r6, r3, #2
	bne	.L114
	mvn	r7, #4
	mov	lr, #1
	ldr	r5, .L138+44
	ldr	r3, [r5]
	ldr	r2, .L138+48
	rsb	r3, r3, #0
	ldr	r1, [r2]
	ldr	r0, .L138+52
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r0, [r0]
	ldr	r2, .L138+56
	str	r3, [sp, #4]
	ldr	r3, [r4, #16]
	ldr	r7, .L138+60
	str	r3, [sp]
	str	r1, [r2]
	ldr	r3, [r4]
	mov	r1, #256
	ldr	r2, [r4, #4]
	str	lr, [r4, #28]
	str	lr, [ip]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L101
	ldr	r2, [r4]
	ldr	r1, [r5]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	sub	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r6, [r5]
	ldr	r3, [r4, #28]
	b	.L105
.L136:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L111:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L114
.L100:
	tst	r3, #16
	beq	.L137
	cmp	r6, #0
	ldr	r3, [r4, #28]
	bne	.L105
	cmp	r3, #0
	beq	.L103
	cmp	r3, #2
	bne	.L105
.L106:
	ldr	r3, .L138+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L114
	ldr	r3, .L138+40
	ldrh	r3, [r3]
	ands	r6, r3, #2
	bne	.L114
	mov	r0, #5
	mov	r1, #3
	mov	lr, #1
	ldr	r5, .L138+44
	ldr	r3, [r5]
	ldr	r2, .L138+48
	rsb	r3, r3, #0
	ldr	r2, [r2]
	ldr	r7, [r4, #20]
	str	r3, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, .L138+52
	ldr	r3, .L138+56
	ldr	r0, [r0]
	str	r7, [sp, #4]
	ldr	r7, [r4, #16]
	str	r1, [r4, #28]
	str	r7, [sp]
	mov	r1, #256
	str	r2, [r3]
	ldr	r7, .L138+60
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	str	lr, [ip]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L101
	ldr	r2, [r4]
	ldr	r1, [r5]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r6, [r5]
	ldr	r3, [r4, #28]
	b	.L105
.L137:
	cmp	r6, #0
	bne	.L101
.L102:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L106
.L139:
	.align	2
.L138:
	.word	powerUp
	.word	mario
	.word	67109120
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
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
	ldr	fp, .L197
	ldr	r5, .L197+4
	ldr	r3, [fp]
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	sub	sp, sp, #28
	bgt	.L183
	ldr	r7, .L197+8
.L141:
	ldr	r4, .L197+12
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r0, #256
	movne	r3, #1
	ldrne	r1, .L197+16
	strne	r0, [r4, #4]
	ldrne	r8, .L197+20
	ldr	r4, .L197+24
	ldrne	r2, .L197+28
	ldrne	r1, [r1]
	strne	r3, [r8]
	ldr	r3, [r4, #44]
	strne	r1, [r2]
	ldreq	r8, .L197+20
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	beq	.L185
.L189:
	ldr	ip, .L197+32
	str	ip, [sp, #20]
.L144:
	mov	r10, r7
	ldr	r4, .L197+36
.L153:
	ldr	r6, [r8]
	add	ip, r4, #16
	cmp	r6, #0
	ldr	r7, [r4, #4]
	ldr	r9, [r4]
	ldm	ip, {ip, lr}
	bne	.L146
	add	lr, lr, lr, lsr #31
	add	ip, ip, ip, lsr #31
	asr	lr, lr, #1
	asr	ip, ip, #1
	add	r3, r3, r3, lsr #31
	add	r2, r2, r2, lsr #31
	stm	sp, {r7, r9}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L147
	mov	r1, #1
	ldr	r2, [sp, #20]
	ldr	r3, [fp]
	str	r1, [r2]
	ldr	r2, .L197+16
	sub	r3, r3, #1
	ldr	r2, [r2]
	str	r3, [fp]
	ldr	r3, .L197+40
	str	r6, [r4, #48]
	str	r2, [r3]
.L148:
	ldr	r3, .L197+44
	add	r4, r4, #56
	cmp	r4, r3
	beq	.L152
.L191:
	add	r2, r5, #16
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L153
.L146:
	stm	sp, {r7, r9, ip, lr}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L148
	mov	r1, #0
	ldr	r2, .L197+48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L197+44
	str	r1, [r4, #48]
	add	r4, r4, #56
	cmp	r4, r3
	bne	.L191
.L152:
	ldr	r2, [sp, #20]
	ldr	r3, [r8]
	ldr	r2, [r2]
	orrs	r3, r2, r3
	ldr	r3, .L197+52
	ldr	r3, [r3]
	beq	.L186
.L190:
	ldr	r4, .L197+56
.L154:
	ldr	r1, [r4]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L155
	ldr	r3, .L197+60
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L192
.L163:
	ldr	r3, .L197+60
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L193
.L155:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateMario
.L147:
	ldr	r3, .L197+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L148
	ldr	r3, [sp, #20]
	ldr	r2, [r3]
	ldr	r3, .L197+56
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L148
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L148
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L194
	cmp	r3, #3
	bne	.L148
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L148
	ldr	r2, [r5, #4]
	ldr	r3, [r4, #4]
	cmp	r2, r3
	bgt	.L148
	mov	r1, #1
	ldr	r2, .L197+48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r1, [r4, #52]
	str	r3, [r2]
	b	.L148
.L186:
	cmp	r3, #0
	bne	.L155
	ldr	r3, .L197+60
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L195
.L156:
	ldr	r3, .L197+60
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L158
	ldr	r3, .L197+52
	ldr	r2, [sp, #20]
	ldr	r3, [r3]
	ldr	r2, [r2]
	b	.L190
.L183:
	ldr	ip, .L197+64
	add	r4, ip, #16
	ldm	r4, {r4, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	lsl	r3, r3, #1
	stm	sp, {ip, lr}
	str	r4, [sp, #8]
	ldr	r7, .L197+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r0, #1
	ldrne	r2, .L197+48
	ldrne	r3, [r2]
	addne	r3, r3, #5
	ldrne	r1, .L197+68
	strne	r3, [r2]
	add	r2, r5, #16
	strne	r0, [r1]
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	b	.L141
.L185:
	ldr	ip, [r4, #20]
	ldr	lr, [r4, #16]
	str	ip, [sp, #12]
	ldr	r6, [r4]
	str	lr, [sp, #8]
	ldr	ip, [r4, #4]
	str	r6, [sp, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L196
	mov	r2, #1
	ldr	r1, .L197+16
	ldr	r3, [fp]
	ldr	ip, .L197+32
	ldr	r0, [r1]
	ldr	r1, .L197+40
	sub	r3, r3, #1
	str	r2, [r4, #44]
	str	r2, [ip]
	add	r2, r5, #16
	str	r0, [r1]
	str	r3, [fp]
	str	ip, [sp, #20]
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L144
.L196:
	add	r2, r5, #16
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L189
.L194:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L148
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L148
	ldr	r1, .L197+48
	ldr	r2, [r1]
	add	r2, r2, #1
	str	r3, [r4, #52]
	str	r2, [r1]
	b	.L148
.L193:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #16]
	str	r3, [sp, #12]
	ldr	ip, [r5, #12]
	ldr	r0, .L197+72
	ldr	r3, [r5]
	ldr	r0, [r0]
	ldr	r4, .L197+76
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L155
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L155
	ldr	r1, .L197+80
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r5, #4]
	bgt	.L155
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L155
.L192:
	ldr	r2, [r5, #12]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L197+72
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r5]
	ldr	r0, [r0]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L197+76
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L163
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L163
	ldr	r1, .L197+80
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5, #4]
	ble	.L163
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L163
.L195:
	ldr	r2, [r5, #8]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r6, .L197+72
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r5]
	ldr	r0, [r6, #4]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r7, .L197+76
	mov	r1, #256
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L156
	mov	ip, #1
	ldr	r0, .L197+84
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L197+56
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	ip, [r4]
	ble	.L157
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L157:
	ldr	r1, .L197+60
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L155
.L165:
	mov	ip, #0
	ldr	r1, [r5, #20]
	str	r2, [sp, #12]
	ldr	r2, [r5, #16]
	ldr	r0, [r6, #4]
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L160
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	add	r3, r3, r2
	cmp	r3, #232
	bgt	.L160
	mov	r0, #1
	ldr	r1, .L197+84
	ldr	r2, [r1]
	cmp	r2, #94
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L155
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L155
.L158:
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r4, .L197+56
	ldr	r6, .L197+72
	ldr	r7, .L197+76
	b	.L165
.L160:
	ldr	r3, .L197+52
	ldr	r2, [sp, #20]
	ldr	r3, [r3]
	ldr	r2, [r2]
	b	.L154
.L198:
	.align	2
.L197:
	.word	life
	.word	mario
	.word	collision
	.word	hammer
	.word	frame
	.word	powerUp
	.word	kong
	.word	hammerFrame
	.word	down
	.word	barrel
	.word	downFrame
	.word	barrel+280
	.word	score
	.word	jumping
	.word	climbing
	.word	67109120
	.word	pauline
	.word	nextLevel
	.word	.LANCHOR0
	.word	collisionCheck
	.word	hOff
	.word	vOff
	.size	updateMario, .-updateMario
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
	ldr	r1, .L243
	ldr	r4, .L243+4
	ldr	r0, [r1]
	ldr	r1, [r4, #28]
	cmp	r0, #0
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	str	r3, [r4, #40]
	sub	sp, sp, #20
	beq	.L200
	ldr	r3, .L243+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L200:
	ldr	r2, [r4, #24]
	add	r3, r2, r2, lsl #4
	ldr	r1, .L243+12
	add	r3, r3, r3, lsl #8
	ldr	ip, .L243+16
	add	r3, r3, r3, lsl #16
	sub	r1, r1, r3
	cmp	r1, ip
	bcs	.L202
	ldr	r3, [r4, #36]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #36]
.L202:
	ldr	r3, .L243+20
	ldr	r1, [r3]
	ldr	r3, .L243+24
	cmp	r1, #0
	ldr	r3, [r3]
	beq	.L240
	orrs	r3, r0, r3
	bne	.L206
	ldr	r3, .L243+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L206
	ldr	r3, .L243+8
	ldrh	r1, [r3, #48]
	tst	r1, #64
	beq	.L216
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L216
.L206:
	ldr	r3, [r4, #28]
.L210:
	cmp	r3, #10
	beq	.L241
	ldr	r2, [r4, #24]
.L219:
	add	r2, r2, #1
	str	r2, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L240:
	cmp	r3, #0
	bne	.L206
	ldr	ip, .L243+28
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L206
	ldr	r3, .L243+8
	ldrh	r1, [r3, #48]
	tst	r1, #32
	ldrh	r3, [r3, #48]
	bne	.L205
	cmp	r0, #0
	bne	.L206
	tst	r3, #16
	str	r0, [r4, #28]
	beq	.L207
.L208:
	ldr	r3, .L243+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L219
	ldr	r3, .L243+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L219
	mvn	r7, #4
	mov	lr, #1
	ldr	r6, .L243+40
	ldr	r3, [r6]
	ldr	r2, .L243+44
	rsb	r3, r3, #0
	ldr	r1, [r2]
	ldr	r0, .L243+48
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r0, [r0, #8]
	ldr	r2, .L243+52
	str	r3, [sp, #4]
	ldr	r3, [r4, #16]
	ldr	r7, .L243+56
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
	beq	.L206
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	sub	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L210
.L241:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L216:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L219
.L205:
	tst	r3, #16
	beq	.L242
	cmp	r0, #0
	ldr	r3, [r4, #28]
	bne	.L210
	cmp	r3, #0
	beq	.L208
	cmp	r3, #2
	bne	.L210
.L211:
	ldr	r3, .L243+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L219
	ldr	r3, .L243+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L219
	mov	r0, #5
	mov	r1, #3
	mov	lr, #1
	ldr	r6, .L243+40
	ldr	r3, [r6]
	ldr	r2, .L243+44
	rsb	r3, r3, #0
	ldr	r2, [r2]
	ldr	r7, [r4, #20]
	str	r3, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, .L243+48
	ldr	r3, .L243+52
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
	ldr	r7, .L243+56
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L206
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L210
.L242:
	cmp	r0, #0
	bne	.L206
.L207:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L211
.L244:
	.align	2
.L243:
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
	ldr	fp, .L298
	ldr	r5, .L298+4
	ldr	r3, [fp]
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	sub	sp, sp, #20
	beq	.L286
	ldr	r7, .L298+8
.L246:
	ldr	r4, .L298+12
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r0, #256
	movne	r3, #1
	ldrne	r1, .L298+16
	strne	r0, [r4, #4]
	ldrne	r8, .L298+20
	ldr	r4, .L298+24
	ldrne	r2, .L298+28
	ldrne	r1, [r1]
	strne	r3, [r8]
	ldr	r3, [r4, #44]
	strne	r1, [r2]
	ldreq	r8, .L298+20
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	beq	.L292
.L249:
	mov	r10, r7
	ldr	r4, .L298+32
.L258:
	ldr	r6, [r8]
	add	ip, r4, #16
	cmp	r6, #0
	ldr	r7, [r4, #4]
	ldr	r9, [r4]
	ldm	ip, {ip, lr}
	bne	.L251
	add	lr, lr, lr, lsr #31
	add	ip, ip, ip, lsr #31
	asr	lr, lr, #1
	asr	ip, ip, #1
	add	r3, r3, r3, lsr #31
	add	r2, r2, r2, lsr #31
	stm	sp, {r7, r9}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L252
	mov	r2, #1
	ldr	r1, .L298+36
	ldr	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r1]
	ldr	r3, .L298+16
	str	r2, [fp]
	ldr	r3, [r3]
	ldr	r2, .L298+40
	str	r6, [r4, #48]
	str	r3, [r2]
.L253:
	ldr	r3, .L298+44
	add	r4, r4, #56
	cmp	r3, r4
	beq	.L257
.L293:
	add	r2, r5, #16
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L258
.L251:
	stm	sp, {r7, r9, ip, lr}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L253
	mov	r1, #0
	ldr	r2, .L298+48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r1, [r4, #48]
	str	r3, [r2]
	ldr	r3, .L298+44
	add	r4, r4, #56
	cmp	r3, r4
	bne	.L293
.L257:
	ldr	r3, [r8]
	ldr	r2, [fp]
	orrs	r3, r2, r3
	ldr	r3, .L298+52
	ldr	r3, [r3]
	bne	.L291
	cmp	r3, #0
	bne	.L260
	ldr	r3, .L298+56
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L294
.L261:
	ldr	r3, .L298+56
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L263
	ldr	r3, .L298+52
	ldr	r2, [fp]
	ldr	r3, [r3]
.L291:
	ldr	r4, .L298+60
.L259:
	ldr	r1, [r4]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L260
	ldr	r3, .L298+56
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L295
.L267:
	ldr	r3, .L298+56
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L296
.L260:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateMario2
.L252:
	ldr	r3, .L298+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L253
	ldr	r3, .L298+60
	ldr	r2, [fp]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L253
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L253
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L297
	cmp	r3, #3
	bne	.L253
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L253
	ldr	r2, [r5, #4]
	ldr	r0, [r5, #16]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #16]
	add	r2, r2, r0
	add	r3, r3, r1
	cmp	r2, r3
	ble	.L253
	mov	r2, #1
	ldr	r1, .L298+48
	ldr	r3, [r1]
	add	r3, r3, r2
	str	r3, [r1]
	str	r2, [r4, #52]
	b	.L253
.L292:
	ldr	ip, [r4, #16]
	add	ip, ip, ip, lsr #31
	asr	ip, ip, #1
	ldr	lr, [r4, #20]
	str	ip, [sp, #8]
	ldr	r6, [r4]
	str	lr, [sp, #12]
	ldr	ip, [r4, #4]
	str	r6, [sp, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L290
	mov	r2, #1
	ldr	r1, .L298+36
	ldr	r3, [r1]
	ldr	r0, .L298+16
	sub	r3, r3, #1
	ldr	r0, [r0]
	str	r3, [r1]
	ldr	r3, .L298+40
	str	r2, [fp]
	str	r0, [r3]
	str	r2, [r4, #44]
.L290:
	add	r2, r5, #16
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L249
.L286:
	ldr	ip, .L298+64
	add	r4, ip, #16
	ldm	r4, {r4, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	lsl	r3, r3, #1
	stm	sp, {ip, lr}
	str	r4, [sp, #8]
	ldr	r7, .L298+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L298+68
	strne	r2, [r3]
	add	r2, r5, #16
	ldreq	r0, [r5, #4]
	ldrne	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L246
.L297:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L253
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L253
	ldr	r1, .L298+48
	ldr	r2, [r1]
	add	r2, r2, #1
	str	r3, [r4, #52]
	str	r2, [r1]
	b	.L253
.L296:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #16]
	str	r3, [sp, #12]
	ldr	ip, [r5, #12]
	ldr	r0, .L298+72
	ldr	r3, [r5]
	ldr	r0, [r0, #8]
	ldr	r4, .L298+76
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L260
	ldr	r1, .L298+80
	ldr	r3, [r5, #4]
	ldr	r2, [r1]
	ldr	r0, [r5, #12]
	cmp	r2, #14
	add	r3, r3, r0
	str	r3, [r5, #4]
	bgt	.L260
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L260
.L295:
	ldr	r2, [r5, #12]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L298+72
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r5]
	ldr	r0, [r0, #8]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L298+76
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L267
	ldr	r1, .L298+80
	ldr	r3, [r5, #4]
	ldr	r2, [r1]
	ldr	r0, [r5, #12]
	cmp	r2, #0
	sub	r3, r3, r0
	str	r3, [r5, #4]
	ble	.L267
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L267
.L294:
	ldr	r2, [r5, #8]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r6, .L298+72
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r5]
	ldr	r0, [r6, #12]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r7, .L298+76
	mov	r1, #256
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L261
	mov	ip, #1
	ldr	r0, .L298+84
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L298+60
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	ip, [r4]
	ble	.L262
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L262:
	ldr	r1, .L298+56
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L260
.L269:
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
	beq	.L264
	ldr	r3, .L298+52
	ldr	r2, [fp]
	ldr	r3, [r3]
	b	.L259
.L263:
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r4, .L298+60
	ldr	r6, .L298+72
	ldr	r7, .L298+76
	b	.L269
.L264:
	mov	r0, #1
	ldr	r1, .L298+84
	ldr	r3, [r5]
	ldr	r2, [r1]
	ldr	ip, [r5, #8]
	cmp	r2, #94
	add	r3, r3, ip
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L260
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L260
.L299:
	.align	2
.L298:
	.word	down
	.word	mario
	.word	collision
	.word	hammer
	.word	frame
	.word	powerUp
	.word	kong
	.word	hammerFrame
	.word	barrel
	.word	life
	.word	downFrame
	.word	barrel+280
	.word	score
	.word	jumping
	.word	67109120
	.word	climbing
	.word	pauline
	.word	rescued
	.word	.LANCHOR0
	.word	collisionCheck
	.word	hOff
	.word	vOff
	.size	updateMario2, .-updateMario2
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
	ldr	r1, .L302
	ldr	r3, [r1, #24]
	ldr	r0, .L302+4
	ldr	r2, .L302+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L303:
	.align	2
.L302:
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
	ldr	r1, .L306
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L306+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L307:
	.align	2
.L306:
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
	ldr	r4, .L316
	ldr	r8, .L316+4
	ldr	r7, .L316+8
	ldr	r6, .L316+12
	add	r5, r4, #280
.L310:
	ldr	r2, [r4, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	str	r2, [r4, #24]
	bcs	.L309
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L309
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L309:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L310
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L317:
	.align	2
.L316:
	.word	barrel
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.size	animateBarrel, .-animateBarrel
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
	ldr	r2, .L332
	ldr	r3, .L332+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	push	{r4, r5, r6, r7, r8, lr}
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #16
	bne	.L319
	ldr	r0, .L332+8
	mov	r2, r0
.L321:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L331
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #56
	bne	.L321
.L319:
	mov	r6, #0
	ldr	r4, .L332+8
	ldr	r8, .L332+12
	ldr	r7, .L332+16
	add	r5, r4, #280
.L326:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L322
	mov	r1, #188
	ldr	r3, [r4, #16]
	sub	r3, r3, r3, lsl #2
	add	r3, r3, #120
	stm	r4, {r1, r3}
	str	r2, [r4, #44]
	str	r2, [r4, #52]
.L323:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L326
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	animateBarrel
.L322:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	str	r6, [sp, #8]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r8, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L324
	mov	r2, #1
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	add	r3, r3, r1
	str	r3, [r4]
	str	r2, [r4, #44]
	b	.L323
.L324:
	ldr	r3, [r4, #44]
	ldr	r2, [r4, #12]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	sub	r1, r3, r2
	addeq	r3, r3, r2
	streq	r3, [r4, #4]
	beq	.L323
	ldr	r3, [r4, #16]
	add	r3, r1, r3
	cmp	r3, #0
	str	r1, [r4, #4]
	strle	r6, [r4, #48]
	b	.L323
.L331:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #48]
	b	.L319
.L333:
	.align	2
.L332:
	.word	frame
	.word	458129845
	.word	barrel
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateBarrel, .-updateBarrel
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
	ldr	r3, .L375
	ldr	r5, .L375+4
	ldr	r1, [r3]
	ldr	r2, [r5]
	cmp	r1, #0
	add	r2, r2, #1
	str	r2, [r5]
	sub	sp, sp, #16
	beq	.L335
	ldr	r1, .L375+8
	ldr	r1, [r1]
	sub	r1, r2, r1
	cmp	r1, #25
	moveq	ip, #0
	moveq	r0, #10
	ldreq	r1, .L375+12
	streq	ip, [r3]
	streq	r0, [r1]
.L335:
	ldr	r6, .L375+16
	ldr	r1, [r6]
	ldr	r4, .L375+20
	cmp	r1, #0
	ldr	r3, [r4]
	beq	.L372
.L336:
	ldr	r0, .L375+24
	ldr	r1, .L375+28
	ldr	ip, [r0]
	ldr	r1, [r1]
	cmp	ip, #0
	sub	r1, r2, r1
	beq	.L338
	ldr	ip, [r4, #28]
	cmp	ip, #0
	moveq	ip, #5
	bne	.L373
	cmp	r1, #20
	str	ip, [r4, #28]
	beq	.L374
.L338:
	cmp	r1, #70
	ldr	r5, .L375+32
	beq	.L370
.L340:
	ldr	r1, .L375+36
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L341
	ldr	r0, .L375+40
	ldr	r0, [r0]
	sub	r2, r2, r0
	cmp	r2, #150
	moveq	r2, #0
	streq	r2, [r1]
	streq	r2, [r4, #28]
.L341:
	cmp	r3, #232
	bne	.L342
.L344:
	mov	r3, #0
	str	r3, [r6]
.L343:
	bl	updateMario
	ldr	r3, [r5, #24]
	ldr	r1, .L375+44
	ldr	r2, .L375+48
	add	r3, r3, #1
	mla	r2, r3, r2, r1
	cmp	r1, r2, ror #1
	str	r3, [r5, #24]
	blcs	animateKong.part.0
.L345:
	ldr	r1, .L375+52
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L375+56
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	blcs	animatePauline.part.0
.L346:
	bl	updateBarrel
	ldr	r3, .L375+60
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	ble	.L334
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L375+64
.L349:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L349
.L334:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L370:
	ldr	r1, [r5, #44]
	cmp	r1, #0
	movne	r1, #0
	strne	r1, [r5, #44]
	b	.L340
.L373:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	moveq	ip, #5
	movne	ip, #6
	cmp	r1, #20
	str	ip, [r4, #28]
	bne	.L338
	b	.L374
.L342:
	mov	ip, #0
	ldr	r2, [r4, #8]
	rsb	r2, r2, #0
	ldr	r1, [r4, #20]
	str	r2, [sp, #12]
	ldr	r0, .L375+68
	ldr	r2, [r4, #16]
	str	ip, [sp, #8]
	ldr	r0, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	ldr	r4, .L375+72
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L344
	b	.L343
.L372:
	ldr	r7, .L375+12
	ldr	lr, [r7]
	add	r2, r4, #16
	ldm	r2, {r2, ip}
	ldr	r0, .L375+68
	str	r1, [sp, #8]
	str	lr, [sp, #12]
	ldr	r0, [r0]
	stm	sp, {r2, ip}
	mov	r1, #256
	ldr	r2, [r4, #4]
	ldr	r8, .L375+72
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r2, [r4]
	ldrne	r3, [r7]
	addne	r3, r2, r3
	ldreq	r2, [r5]
	ldreq	r3, [r4]
	ldrne	r2, [r5]
	strne	r3, [r4]
	b	.L336
.L374:
	mov	r1, #0
	ldr	r5, .L375+32
	str	r1, [r0]
	b	.L340
.L376:
	.align	2
.L375:
	.word	jumping
	.word	frame
	.word	jumpFrame
	.word	gravity
	.word	climbing
	.word	mario
	.word	down
	.word	downFrame
	.word	kong
	.word	powerUp
	.word	hammerFrame
	.word	85899344
	.word	-1030792151
	.word	pauline
	.word	143165576
	.word	life
	.word	heart
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateGame, .-updateGame
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
	ldr	r2, .L395
	ldr	r3, .L395+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	push	{r4, r5, r6, r7, r8, r9, lr}
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #20
	bne	.L378
	ldr	r0, .L395+8
	mov	r2, r0
.L380:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L394
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #56
	bne	.L380
.L378:
	ldr	r4, .L395+8
	ldr	r8, .L395+12
	ldr	r7, .L395+16
	ldr	r6, .L395+20
	add	r5, r4, #280
.L388:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L381
	mov	r1, #83
	ldr	r3, [r6, #20]
	sub	r3, r3, r3, lsl #2
	add	r3, r3, #165
	stm	r4, {r1, r3}
	str	r2, [r4, #44]
	str	r2, [r4, #52]
.L382:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L388
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	animateBarrel
.L381:
	mov	r9, #0
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	sub	r3, r3, r3, lsl #2
	stmib	sp, {r1, r9}
	str	r3, [sp, #12]
	str	r2, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r8, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, r9
	bne	.L383
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	str	r3, [r4]
	b	.L382
.L383:
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #12]
	add	r2, r2, r3
	sub	r3, r2, #90
	cmp	r3, #60
	str	r2, [r4, #4]
	bhi	.L384
	ldr	r3, [r4]
	cmp	r3, #132
	bgt	.L382
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	ip, [r4, #8]
	str	r0, [sp, #4]
	str	r1, [sp]
	str	r9, [sp, #8]
	mov	r1, #256
	str	ip, [sp, #12]
	ldr	r0, [r8, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r4]
	ldrne	r2, [r4, #8]
	addne	r3, r3, r2
	strne	r3, [r4]
	ldr	r2, [r4, #4]
.L384:
	cmp	r2, #256
	movgt	r3, #0
	strgt	r3, [r4, #48]
	b	.L382
.L394:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #48]
	b	.L378
.L396:
	.align	2
.L395:
	.word	frame
	.word	458129845
	.word	barrel
	.word	.LANCHOR0
	.word	collisionCheck
	.word	kong
	.size	updateBarrel2, .-updateBarrel2
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r3, .L439
	ldr	r5, .L439+4
	ldr	r2, [r3]
	ldr	r1, [r5]
	cmp	r2, #0
	add	r1, r1, #1
	str	r1, [r5]
	sub	sp, sp, #20
	beq	.L398
	ldr	r2, .L439+8
	ldr	r2, [r2]
	sub	r2, r1, r2
	cmp	r2, #25
	moveq	ip, #0
	moveq	r0, #10
	ldreq	r2, .L439+12
	streq	ip, [r3]
	streq	r0, [r2]
.L398:
	ldr	r6, .L439+16
	ldr	r4, .L439+20
	ldr	r0, [r6]
	add	ip, r4, #16
	cmp	r0, #0
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldm	ip, {ip, lr}
	beq	.L434
	ldr	r8, .L439+24
	ldr	r7, .L439+28
.L399:
	ldr	r5, .L439+32
	ldr	r0, .L439+36
	ldr	r9, [r5]
	ldr	r0, [r0]
	cmp	r9, #0
	sub	r0, r1, r0
	beq	.L401
	ldr	r9, [r4, #28]
	cmp	r9, #0
	moveq	r9, #5
	bne	.L437
	cmp	r0, #15
	str	r9, [r4, #28]
	beq	.L438
.L401:
	cmp	r0, #70
	ldr	r5, .L439+40
	beq	.L435
.L403:
	ldr	r0, .L439+44
	ldr	r9, [r0]
	cmp	r9, #0
	beq	.L404
	ldr	r9, .L439+48
	ldr	r9, [r9]
	sub	r1, r1, r9
	cmp	r1, #150
	moveq	r1, #0
	streq	r1, [r0]
	streq	r1, [r4, #28]
.L404:
	mov	r0, #0
	ldr	r1, [r4, #8]
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	str	lr, [sp, #4]
	mov	r1, #256
	str	ip, [sp]
	ldr	r0, [r8, #12]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L405
.L407:
	mov	r3, #0
	str	r3, [r6]
.L406:
	bl	updateMario2
	ldr	r3, [r5, #24]
	ldr	r1, .L439+52
	ldr	r2, .L439+56
	add	r3, r3, #1
	mla	r2, r3, r2, r1
	cmp	r1, r2, ror #1
	str	r3, [r5, #24]
	blcs	animateKong.part.0
.L408:
	ldr	r1, .L439+60
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L439+64
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	blcs	animatePauline.part.0
.L409:
	bl	updateBarrel2
	ldr	r3, .L439+68
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	ble	.L397
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L439+72
.L412:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L412
.L397:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L435:
	ldr	r0, [r5, #44]
	cmp	r0, #0
	movne	r0, #0
	strne	r0, [r5, #44]
	b	.L403
.L437:
	ldr	r9, [r4, #32]
	cmp	r9, #0
	moveq	r9, #5
	movne	r9, #6
	cmp	r0, #15
	str	r9, [r4, #28]
	bne	.L401
	b	.L438
.L434:
	ldr	r9, .L439+12
	ldr	r8, .L439+24
	ldr	r1, [r9]
	ldr	r7, .L439+28
	stm	sp, {ip, lr}
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	ldr	r0, [r8, #8]
	mov	r1, #256
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r2, [r4]
	ldrne	r3, [r9]
	add	ip, r4, #16
	addne	r3, r2, r3
	ldreq	r1, [r5]
	ldreq	r2, [r4, #4]
	ldreq	r3, [r4]
	ldrne	r1, [r5]
	strne	r3, [r4]
	ldrne	r2, [r4, #4]
	ldm	ip, {ip, lr}
	b	.L399
.L405:
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	rsb	r3, r3, #0
	str	r0, [sp, #8]
	str	r3, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r0, [r8, #12]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L407
	b	.L406
.L438:
	mov	r0, #0
	str	r0, [r5]
	ldr	r5, .L439+40
	b	.L403
.L440:
	.align	2
.L439:
	.word	jumping
	.word	frame
	.word	jumpFrame
	.word	gravity
	.word	climbing
	.word	mario
	.word	.LANCHOR0
	.word	collisionCheck
	.word	down
	.word	downFrame
	.word	kong
	.word	powerUp
	.word	hammerFrame
	.word	85899344
	.word	-1030792151
	.word	pauline
	.word	143165576
	.word	life
	.word	heart
	.size	updateGame2, .-updateGame2
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
	ldr	r0, .L449
	ldr	ip, .L449+4
	ldr	r3, .L449+8
	ldr	r1, .L449+12
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
	bne	.L442
	ldr	r0, .L449+16
	lsl	r1, r1, #6
	add	r1, r1, #14
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L442:
	ldr	r0, [r0, #28]
	cmp	r0, #8
	beq	.L447
	cmp	r0, #9
	beq	.L448
	add	r1, r0, r1, lsl #5
	ldr	r0, .L449+16
	lsl	r1, r1, #1
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L447:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L449+16
	lsl	r1, r1, #6
	add	r1, r1, #16
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L448:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L449+16
	lsl	r1, r1, #6
	add	r1, r1, #20
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L450:
	.align	2
.L449:
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
	ldr	r1, .L452
	ldr	r2, .L452+4
	ldr	r3, [r1, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L452+8
	ldr	r2, [r1]
	ldr	ip, [r0]
	ldr	r1, [r1, #36]
	ldr	r0, .L452+12
	add	r1, r1, #1
	sub	r2, r2, ip
	lsl	r1, r1, #7
	orr	r2, r2, #16384
	strh	r3, [r0, #10]	@ movhi
	strh	r1, [r0, #12]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	bx	lr
.L453:
	.align	2
.L452:
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
	ldr	r2, .L456
	ldr	r3, .L456+4
	ldr	r0, .L456+8
	str	lr, [sp, #-4]!
	ldr	r1, [r2]
	ldr	lr, [r3]
	ldr	r0, [r0]
	ldr	r3, [r2, #4]
	ldr	r2, [r2, #36]
	ldr	ip, .L456+12
	sub	r1, r1, r0
	sub	r3, r3, lr
	ldr	r0, .L456+16
	lsl	r2, r2, #7
	orr	r1, r1, ip
	add	r2, r2, #24
	orr	r3, r3, ip
	strh	r1, [r0, #16]	@ movhi
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #18]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L457:
	.align	2
.L456:
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
	ldr	r4, .L464
	ldr	r5, .L464+4
	ldr	r10, .L464+8
	ldr	r9, .L464+12
	ldr	r8, .L464+16
	ldr	r7, .L464+20
	sub	sp, sp, #20
	add	r6, r4, #280
.L461:
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
	ldr	r0, [r8, #4]
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
	bne	.L461
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L465:
	.align	2
.L464:
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
	ldr	r4, .L472
	ldr	r5, .L472+4
	ldr	r10, .L472+8
	ldr	r9, .L472+12
	ldr	r8, .L472+16
	ldr	r7, .L472+20
	sub	sp, sp, #20
	add	r6, r4, #280
.L469:
	ldr	r1, [r4, #8]
	rsb	r1, r1, #0
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
	strh	r0, [r5, #114]	@ movhi
	str	r1, [sp]
	str	fp, [sp, #8]
	mov	r1, #256
	ldr	r0, [r8, #12]
	strh	ip, [r5, #112]	@ movhi
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
	strh	r3, [r5, #116]	@ movhi
	add	r5, r5, #8
	bne	.L469
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L473:
	.align	2
.L472:
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
	ldr	r2, .L476
	ldr	r1, .L476+4
	ldr	ip, .L476+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L476+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #66]	@ movhi
	strh	r1, [r2, #64]	@ movhi
	strh	r0, [r2, #68]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L477:
	.align	2
.L476:
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
	ldr	r2, .L484
	ldr	r3, .L484+4
	ldr	r1, .L484+8
	ldrh	r4, [r2]
	ldrh	lr, [r3]
	ldr	r0, .L484+12
	add	ip, r1, #24
.L481:
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
	bne	.L481
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L485:
	.align	2
.L484:
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
	ldr	r1, .L490
	ldr	lr, .L490+4
	ldr	r2, .L490+8
	ldr	r3, .L490+12
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
	bgt	.L487
	mov	r4, #640
	ldr	lr, .L490+16
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
.L487:
	ldr	lr, .L490+20
	smull	r4, r5, lr, r3
	asr	lr, r3, #31
	ldr	r4, .L490+24
	rsb	lr, lr, r5, asr #2
	umull	r5, r4, lr, r4
	lsr	r4, r4, #3
	add	r5, lr, lr, lsl #2
	add	r4, r4, r4, lsl #2
	sub	lr, lr, r4, lsl #1
	sub	r3, r3, r5, lsl #1
	ldr	r4, .L490+16
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
.L491:
	.align	2
.L490:
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
	ldr	r6, .L494
	ldr	r1, .L494+4
	ldrh	r2, [r6]
	ldr	r3, [r1, #4]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L494+8
	ldr	r5, .L494+12
	ldr	r7, [r0, #4]
	ldr	ip, [r1]
	ldr	lr, [r1, #36]
	sub	r2, r7, r2
	ldr	r1, [r0]
	ldrh	r7, [r5]
	ldr	r0, [r0, #36]
	ldr	r4, .L494+16
	sub	r1, r1, r7
	sub	ip, ip, r7
	ldr	r7, .L494+20
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
	ldr	r2, .L494+24
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
	ldr	r3, .L494+28
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L494+32
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
.L495:
	.align	2
.L494:
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
	.comm	hammerFrame,4,4
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
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collisionmapBitmap
	.type	laddercollisionMap, %object
	.size	laddercollisionMap, 4
laddercollisionMap:
	.word	laddercollisionmapBitmap
	.type	collisionMap2, %object
	.size	collisionMap2, 4
collisionMap2:
	.word	collisionmap2Bitmap
	.type	laddercollisionMap2, %object
	.size	laddercollisionMap2, 4
laddercollisionMap2:
	.word	laddercollisionmap2Bitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
