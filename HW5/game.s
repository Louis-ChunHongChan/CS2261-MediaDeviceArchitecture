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
	mov	r6, #0
	mov	r7, #3
	mov	r3, #67108864
	mov	r0, #10
	mov	fp, #64
	ldr	r2, .L14
	ldr	lr, .L14+4
	str	r6, [r2]
	ldr	ip, .L14+8
	ldr	r1, .L14+12
	ldr	r2, .L14+16
	str	r7, [lr]
	str	r6, [ip]
	str	r6, [r1]
	str	r6, [r2]
	ldr	r4, .L14+20
	ldr	lr, .L14+24
	ldr	ip, .L14+28
	ldr	r1, .L14+32
	ldr	r2, .L14+36
	str	r6, [r4]
	str	r6, [lr]
	str	r6, [ip]
	str	r6, [r1]
	ldr	lr, .L14+40
	ldr	ip, .L14+44
	ldrh	r2, [r2]
	ldr	r4, .L14+48
	ldr	r1, .L14+52
	ldr	r5, .L14+56
	str	r6, [lr]
	str	r6, [ip]
	str	r6, [r4]
	str	r0, [r1]
	strh	r2, [r3, #22]	@ movhi
	ldrh	r2, [r5]
	mov	r0, r7
	strh	r2, [r3, #20]	@ movhi
	ldr	r4, .L14+60
	mov	r3, #256
	ldr	r2, .L14+64
	ldr	r1, .L14+68
	mov	lr, pc
	bx	r4
	mov	r0, r7
	mov	r3, #16384
	ldr	r2, .L14+72
	ldr	r1, .L14+76
	mov	lr, pc
	bx	r4
	ldr	ip, .L14+80
	str	r7, [ip, #40]
	str	fp, [ip, #16]
	mov	r7, #170
	mov	fp, #24
	mov	r10, #32
	stm	ip, {r7, fp}
	mov	r7, #175
	mov	r8, #1
	str	r6, [ip, #12]
	str	r6, [ip, #8]
	str	r6, [ip, #24]
	str	r6, [ip, #36]
	str	r6, [ip, #28]
	str	r6, [ip, #44]
	str	r10, [ip, #20]
	ldr	ip, .L14+84
	str	r7, [ip]
	ldr	r7, .L14+88
	mov	lr, #16
	mov	r9, #88
	mov	r4, r6
	str	r6, [ip, #12]
	str	r6, [ip, #8]
	str	r6, [ip, #24]
	str	r6, [ip, #36]
	str	r6, [ip, #28]
	str	r6, [r7, #24]
	str	r6, [r7, #36]
	mov	r6, #232
	mov	r0, #2
	mov	r2, r8
	mov	r3, lr
	str	lr, [ip, #16]
	str	lr, [r7, #16]
	str	lr, [r7, #20]
	ldr	lr, .L14+92
	str	r10, [ip, #20]
	str	r6, [r7]
	str	r8, [r7, #12]
	str	r8, [r7, #8]
	str	r9, [r7, #4]
	str	r9, [ip, #4]
	mov	r1, r0
	str	r0, [ip, #40]
	str	r0, [r7, #40]
	str	r0, [r7, #28]
	add	r0, lr, #280
.L11:
	str	r3, [lr, #16]
	str	r3, [lr, #20]
	str	r1, [lr, #12]
	str	r1, [lr, #8]
	str	r4, [lr, #24]
	str	r4, [lr, #36]
	str	r1, [lr, #40]
	str	r2, [lr, #28]
	str	r4, [lr, #44]
	str	r4, [lr, #48]
	str	r4, [lr, #52]
	add	lr, lr, #56
	cmp	r0, lr
	bne	.L11
	mov	fp, #180
	mov	r10, #232
	mov	r0, #8
	mov	ip, #140
	mov	lr, #130
	mov	r6, #120
	mov	r9, #104
	mov	r8, #136
	mov	r7, #128
	ldr	r1, .L14+96
	str	fp, [r1]
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	str	r4, [r1, #12]
	str	r4, [r1, #8]
	str	r4, [r1, #24]
	str	r4, [r1, #36]
	str	r4, [r1, #40]
	str	r4, [r1, #28]
	str	r10, [r1, #4]
	ldr	r1, .L14+100
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r3, [r1, #28]
	str	r3, [r1, #32]
	str	r3, [r1, #48]
	str	r3, [r1, #52]
	ldr	r3, .L14+104
	str	r2, [r1, #16]
	str	r2, [r1, #36]
	str	r2, [r1, #56]
	str	r6, [r3, #4]
	str	r2, [r3, #16]
	str	lr, [r3]
	str	ip, [r1]
	str	ip, [r1, #20]
	str	ip, [r1, #40]
	str	r9, [r1, #4]
	str	r8, [r1, #44]
	str	r6, [r1, #24]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r0, [r3, #28]
	str	r0, [r3, #32]
	ldr	r1, .L14+108
	str	lr, [r3, #20]
	str	r2, [r3, #36]
	str	r7, [r3, #24]
	mov	lr, pc
	bx	r1
	mov	r3, #96
	ldr	r1, .L14+112
	ldr	r2, .L14+116
	ldrh	r1, [r1, #48]
	strh	r1, [r2]	@ movhi
	ldr	r2, .L14+36
	str	r4, [r5]
	str	r3, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L15:
	.align	2
.L14:
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
	.word	downFrame
	.word	gravity
	.word	hOff
	.word	DMANow
	.word	83886592
	.word	mariospritesheetPal
	.word	100728832
	.word	mariospritesheetTiles
	.word	kong
	.word	pauline
	.word	mario
	.word	barrel
	.word	hammer
	.word	heart
	.word	scoreUI
	.word	hideSprites
	.word	67109120
	.word	buttons
	.size	initGame, .-initGame
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
	mov	r0, #10
	mov	r4, #0
	ldr	r1, .L20
	ldr	r2, .L20+4
	ldr	r3, .L20+8
	str	r0, [r1]
	str	r4, [r2]
	ldr	lr, .L20+12
	ldr	ip, .L20+16
	ldr	r0, .L20+20
	ldr	r1, .L20+24
	ldr	r2, .L20+28
	mov	r10, #88
	ldr	r5, .L20+32
	str	r4, [r3]
	ldr	r3, .L20+36
	mov	r6, #1
	str	r4, [r5]
	str	r4, [lr]
	mov	r5, #16
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	mov	fp, #80
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	ip, .L20+40
	str	r10, [ip, #4]
	ldr	r10, .L20+44
	str	r4, [ip, #24]
	str	r4, [ip, #36]
	str	lr, [ip, #40]
	str	lr, [ip, #28]
	mov	r1, lr
	str	fp, [ip]
	str	r5, [ip, #16]
	str	r5, [ip, #20]
	str	r6, [ip, #12]
	str	r6, [ip, #8]
	str	lr, [r10, #40]
	mov	ip, #64
	ldr	lr, .L20+48
	mov	r3, r4
	str	r4, [lr, #12]
	str	r4, [lr, #8]
	str	r4, [lr, #24]
	str	r4, [lr, #36]
	str	r4, [lr, #28]
	str	r4, [lr, #44]
	str	r4, [r10, #12]
	str	r4, [r10, #8]
	str	r4, [r10, #24]
	str	r4, [r10, #36]
	str	r4, [r10, #28]
	mov	r4, #24
	str	ip, [lr, #16]
	mov	ip, #65
	mov	r7, #32
	mov	r9, #68
	mov	r8, #232
	str	r4, [lr, #4]
	mov	r4, #3
	mov	r2, r5
	mov	r0, r6
	str	ip, [lr]
	ldr	ip, .L20+52
	str	r5, [r10, #16]
	str	r9, [r10]
	str	r8, [r10, #4]
	str	r7, [r10, #20]
	str	r7, [lr, #20]
	str	r4, [lr, #40]
	add	lr, ip, #280
.L17:
	str	r2, [ip, #16]
	str	r2, [ip, #20]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r3, [ip, #24]
	str	r3, [ip, #36]
	str	r1, [ip, #40]
	str	r0, [ip, #28]
	str	r3, [ip, #44]
	str	r3, [ip, #48]
	str	r3, [ip, #52]
	add	ip, ip, #56
	cmp	lr, ip
	bne	.L17
	mov	r4, #120
	mov	r9, #110
	mov	lr, #60
	mov	r8, #104
	mov	r7, #136
	mov	ip, #8
	mov	r5, #50
	mov	r6, #128
	ldr	r1, .L20+56
	str	r9, [r1]
	str	r2, [r1, #16]
	str	r2, [r1, #20]
	str	r3, [r1, #12]
	str	r3, [r1, #8]
	str	r3, [r1, #24]
	str	r3, [r1, #36]
	str	r3, [r1, #40]
	str	r3, [r1, #28]
	str	r4, [r1, #4]
	ldr	r1, .L20+60
	str	r4, [r1, #24]
	str	r2, [r1, #8]
	str	r2, [r1, #12]
	str	r2, [r1, #28]
	str	r2, [r1, #32]
	str	r2, [r1, #48]
	str	r2, [r1, #52]
	str	r8, [r1, #4]
	ldr	r2, .L20+64
	str	r7, [r1, #44]
	str	lr, [r1]
	str	lr, [r1, #20]
	str	lr, [r1, #40]
	str	r0, [r1, #16]
	str	r0, [r1, #36]
	str	r0, [r1, #56]
	ldr	r1, .L20+68
	str	r4, [r2, #4]
	str	ip, [r2, #8]
	str	ip, [r2, #12]
	str	ip, [r2, #28]
	str	ip, [r2, #32]
	str	r5, [r2]
	str	r0, [r2, #16]
	ldr	ip, .L20+72
	str	r5, [r2, #20]
	ldrh	lr, [r1, #48]
	str	r6, [r2, #24]
	str	r0, [r2, #36]
	ldr	r1, .L20+76
	ldr	r2, .L20+80
	strh	lr, [ip]	@ movhi
	str	r3, [r1]
	str	r3, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	gravity
	.word	jumping
	.word	down
	.word	powerUp
	.word	frame
	.word	jumpFrame
	.word	downFrame
	.word	hammerFrame
	.word	climbing
	.word	hideSprites
	.word	mario
	.word	pauline
	.word	kong
	.word	barrel
	.word	hammer
	.word	heart
	.word	scoreUI
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
	ldr	r3, .L24
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
.L25:
	.align	2
.L24:
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
	mov	lr, #88
	mov	r0, #1
	mov	r1, #0
	mov	r2, #2
	ldr	r3, .L28
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
.L29:
	.align	2
.L28:
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
	str	r2, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r3, .L36
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
.L37:
	.align	2
.L36:
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
	ldr	r3, .L40
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
.L41:
	.align	2
.L40:
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
	ldr	r3, .L44
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
.L45:
	.align	2
.L44:
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
	str	lr, [sp, #-4]!
	mov	r0, #16
	mov	r1, #2
	mov	r2, #0
	mov	lr, #1
	ldr	r3, .L50
	add	ip, r3, #280
.L47:
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r1, [r3, #40]
	str	lr, [r3, #28]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	add	r3, r3, #56
	cmp	r3, ip
	bne	.L47
	ldr	lr, [sp], #4
	bx	lr
.L51:
	.align	2
.L50:
	.word	barrel
	.size	initBarrel, .-initBarrel
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
	@ link register save eliminated.
	b	initBarrel
	.size	initBarrel2, .-initBarrel2
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
	ldr	r3, .L54
	ldr	r1, [r3, #16]
	ldr	r3, .L54+4
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
.L55:
	.align	2
.L54:
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
	ldr	r3, .L57
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
.L58:
	.align	2
.L57:
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
	ldr	r3, .L61
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
.L62:
	.align	2
.L61:
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
	ldr	r3, .L65
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
.L66:
	.align	2
.L65:
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
	ldr	r3, .L69
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
.L70:
	.align	2
.L69:
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
	ldr	r3, .L73
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
.L74:
	.align	2
.L73:
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
	ldr	r1, .L77
	ldr	r3, [r1, #24]
	ldr	r0, .L77+4
	ldr	r2, .L77+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L78:
	.align	2
.L77:
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
	ldr	r1, .L81
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L81+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L82:
	.align	2
.L81:
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
	ldr	r3, .L91
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	bxle	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L91+4
.L86:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L86
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r2, .L137
	ldr	r4, .L137+4
	ldr	r6, [r2]
	ldr	r2, [r4, #28]
	cmp	r6, #0
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #20
	beq	.L94
	ldr	r3, .L137+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L94:
	ldr	r5, [r4, #24]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L137+12
	add	r3, r3, r3, lsl #8
	ldr	r1, .L137+16
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L96
	ldr	r0, [r4, #36]
	ldr	r3, .L137+20
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L96:
	ldr	r3, .L137+24
	ldr	r2, [r3]
	ldr	r3, .L137+28
	cmp	r2, #0
	ldr	r3, [r3]
	beq	.L134
	orrs	r3, r6, r3
	bne	.L100
	ldr	r3, .L137+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L100
	ldr	r3, .L137+8
	ldrh	r2, [r3, #48]
	tst	r2, #64
	beq	.L110
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L110
.L100:
	ldr	r3, [r4, #28]
.L104:
	cmp	r3, #10
	beq	.L135
	ldr	r5, [r4, #24]
.L113:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L134:
	cmp	r3, #0
	bne	.L100
	ldr	ip, .L137+32
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L100
	ldr	r3, .L137+8
	ldrh	r2, [r3, #48]
	tst	r2, #32
	ldrh	r3, [r3, #48]
	bne	.L99
	cmp	r6, #0
	bne	.L100
	tst	r3, #16
	str	r6, [r4, #28]
	beq	.L101
.L102:
	ldr	r3, .L137+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L113
	ldr	r3, .L137+40
	ldrh	r3, [r3]
	ands	r6, r3, #2
	bne	.L113
	mvn	r7, #4
	mov	lr, #1
	ldr	r5, .L137+44
	ldr	r3, [r5]
	ldr	r2, .L137+48
	rsb	r3, r3, #0
	ldr	r1, [r2]
	ldr	r0, .L137+52
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r0, [r0]
	ldr	r2, .L137+56
	str	r3, [sp, #4]
	ldr	r3, [r4, #16]
	ldr	r7, .L137+60
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
	beq	.L100
	ldr	r2, [r4]
	ldr	r1, [r5]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	sub	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r6, [r5]
	ldr	r3, [r4, #28]
	b	.L104
.L135:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L110:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L113
.L99:
	tst	r3, #16
	beq	.L136
	cmp	r6, #0
	ldr	r3, [r4, #28]
	bne	.L104
	cmp	r3, #0
	beq	.L102
	cmp	r3, #2
	bne	.L104
.L105:
	ldr	r3, .L137+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L113
	ldr	r3, .L137+40
	ldrh	r3, [r3]
	ands	r6, r3, #2
	bne	.L113
	mov	r0, #5
	mov	r1, #3
	mov	lr, #1
	ldr	r5, .L137+44
	ldr	r3, [r5]
	ldr	r2, .L137+48
	rsb	r3, r3, #0
	ldr	r2, [r2]
	ldr	r7, [r4, #20]
	str	r3, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, .L137+52
	ldr	r3, .L137+56
	ldr	r0, [r0]
	str	r7, [sp, #4]
	ldr	r7, [r4, #16]
	str	r1, [r4, #28]
	str	r7, [sp]
	mov	r1, #256
	str	r2, [r3]
	ldr	r7, .L137+60
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	str	lr, [ip]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L100
	ldr	r2, [r4]
	ldr	r1, [r5]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r6, [r5]
	ldr	r3, [r4, #28]
	b	.L104
.L136:
	cmp	r6, #0
	bne	.L100
.L101:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L105
.L138:
	.align	2
.L137:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L187
	ldr	r5, .L187+4
	ldr	r3, [fp]
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	sub	sp, sp, #20
	bgt	.L178
	ldr	r7, .L187+8
.L140:
	ldr	r4, .L187+12
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
	bne	.L142
	ldr	r8, .L187+16
	ldr	r6, [r8]
.L143:
	mov	r10, r7
	ldr	r4, .L187+20
.L150:
	add	r2, r5, #16
	add	ip, r4, #16
	cmp	r6, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	ldr	r7, [r4, #4]
	ldr	r9, [r4]
	ldm	ip, {ip, lr}
	bne	.L144
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
	beq	.L145
	mov	r1, #1
	ldr	r2, .L187+24
	ldr	r3, [fp]
	str	r1, [r2]
	ldr	r2, .L187+28
	sub	r3, r3, #1
	ldr	r2, [r2]
	str	r3, [fp]
	ldr	r3, .L187+32
	str	r6, [r4, #48]
	str	r2, [r3]
.L146:
	ldr	r3, .L187+36
	add	r4, r4, #56
	cmp	r4, r3
	ldr	r6, [r8]
	bne	.L150
	ldr	r3, .L187+24
	ldr	r2, [r3]
	orrs	r3, r2, r6
	ldr	r3, .L187+40
	ldr	r3, [r3]
	bne	.L182
	cmp	r3, #0
	bne	.L152
	ldr	r3, .L187+44
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L183
.L153:
	ldr	r3, .L187+44
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L155
	ldr	r3, .L187+40
	ldr	r2, .L187+24
	ldr	r3, [r3]
	ldr	r2, [r2]
.L182:
	ldr	r4, .L187+48
.L151:
	ldr	r1, [r4]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L152
	ldr	r3, .L187+44
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L184
.L160:
	ldr	r3, .L187+44
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L185
.L152:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateMario
.L144:
	stm	sp, {r7, r9, ip, lr}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L146
	mov	r1, #0
	ldr	r2, .L187+52
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r1, [r4, #48]
	str	r3, [r2]
	b	.L146
.L145:
	ldr	r3, .L187+40
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L146
	ldr	r3, .L187+24
	ldr	r2, [r3]
	ldr	r3, .L187+48
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L146
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L146
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L186
	cmp	r3, #3
	bne	.L146
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L146
	ldr	r2, [r5, #4]
	ldr	r3, [r4, #4]
	cmp	r2, r3
	bgt	.L146
	mov	r1, #1
	ldr	r2, .L187+52
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r1, [r4, #52]
	str	r3, [r2]
	b	.L146
.L142:
	mov	r3, #1
	mov	r0, #256
	ldr	r1, .L187+28
	ldr	r2, .L187+56
	ldr	r1, [r1]
	ldr	r8, .L187+16
	mov	r6, r3
	str	r0, [r4, #4]
	str	r1, [r2]
	str	r3, [r8]
	b	.L143
.L178:
	ldr	ip, .L187+60
	add	r4, ip, #16
	ldm	r4, {r4, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	lsl	r3, r3, #1
	stm	sp, {ip, lr}
	str	r4, [sp, #8]
	ldr	r7, .L187+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r0, #1
	ldrne	r2, .L187+52
	ldrne	r3, [r2]
	addne	r3, r3, #5
	ldrne	r1, .L187+64
	strne	r3, [r2]
	add	r2, r5, #16
	strne	r0, [r1]
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	b	.L140
.L186:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L146
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L146
	ldr	r1, .L187+52
	ldr	r2, [r1]
	add	r2, r2, #3
	str	r3, [r4, #52]
	str	r2, [r1]
	b	.L146
.L185:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #16]
	str	r3, [sp, #12]
	ldr	ip, [r5, #12]
	ldr	r0, .L187+68
	ldr	r3, [r5]
	ldr	r0, [r0]
	ldr	r4, .L187+72
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L152
	ldr	r3, [r5, #4]
	ldr	r2, [r5, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L152
	ldr	r1, .L187+76
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r5, #4]
	bgt	.L152
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L152
.L184:
	ldr	r2, [r5, #12]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L187+68
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r5]
	ldr	r0, [r0]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L187+72
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L160
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L160
	ldr	r1, .L187+76
	ldr	r0, [r5, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5, #4]
	ble	.L160
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L160
.L183:
	ldr	r2, [r5, #8]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r6, .L187+68
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r5]
	ldr	r0, [r6, #4]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r7, .L187+72
	mov	r1, #256
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L153
	mov	ip, #1
	ldr	r0, .L187+80
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L187+48
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	ip, [r4]
	ble	.L154
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L154:
	ldr	r1, .L187+44
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L152
.L162:
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
	bne	.L157
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	add	r3, r3, r2
	cmp	r3, #232
	bgt	.L157
	mov	r0, #1
	ldr	r1, .L187+80
	ldr	r2, [r1]
	cmp	r2, #94
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L152
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L152
.L155:
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r4, .L187+48
	ldr	r6, .L187+68
	ldr	r7, .L187+72
	b	.L162
.L157:
	ldr	r3, .L187+40
	ldr	r2, .L187+24
	ldr	r3, [r3]
	ldr	r2, [r2]
	b	.L151
.L188:
	.align	2
.L187:
	.word	life
	.word	mario
	.word	collision
	.word	hammer
	.word	powerUp
	.word	barrel
	.word	down
	.word	frame
	.word	downFrame
	.word	barrel+280
	.word	jumping
	.word	67109120
	.word	climbing
	.word	score
	.word	hammerFrame
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
	ldr	r1, .L233
	ldr	r4, .L233+4
	ldr	r0, [r1]
	ldr	r1, [r4, #28]
	cmp	r0, #0
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	str	r3, [r4, #40]
	sub	sp, sp, #20
	beq	.L190
	ldr	r3, .L233+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L190:
	ldr	r2, [r4, #24]
	add	r3, r2, r2, lsl #4
	ldr	r1, .L233+12
	add	r3, r3, r3, lsl #8
	ldr	ip, .L233+16
	add	r3, r3, r3, lsl #16
	sub	r1, r1, r3
	cmp	r1, ip
	bcs	.L192
	ldr	r3, [r4, #36]
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #36]
.L192:
	ldr	r3, .L233+20
	ldr	r1, [r3]
	ldr	r3, .L233+24
	cmp	r1, #0
	ldr	r3, [r3]
	beq	.L230
	orrs	r3, r0, r3
	bne	.L196
	ldr	r3, .L233+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L196
	ldr	r3, .L233+8
	ldrh	r1, [r3, #48]
	tst	r1, #64
	beq	.L206
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L206
.L196:
	ldr	r3, [r4, #28]
.L200:
	cmp	r3, #10
	beq	.L231
	ldr	r2, [r4, #24]
.L209:
	add	r2, r2, #1
	str	r2, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L230:
	cmp	r3, #0
	bne	.L196
	ldr	ip, .L233+28
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L196
	ldr	r3, .L233+8
	ldrh	r1, [r3, #48]
	tst	r1, #32
	ldrh	r3, [r3, #48]
	bne	.L195
	cmp	r0, #0
	bne	.L196
	tst	r3, #16
	str	r0, [r4, #28]
	beq	.L197
.L198:
	ldr	r3, .L233+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L209
	ldr	r3, .L233+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L209
	mvn	r7, #4
	mov	lr, #1
	ldr	r6, .L233+40
	ldr	r3, [r6]
	ldr	r2, .L233+44
	rsb	r3, r3, #0
	ldr	r1, [r2]
	ldr	r0, .L233+48
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	ldr	r3, [r4, #20]
	ldr	r0, [r0, #8]
	ldr	r2, .L233+52
	str	r3, [sp, #4]
	ldr	r3, [r4, #16]
	ldr	r7, .L233+56
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
	beq	.L196
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	sub	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L200
.L231:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L206:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L209
.L195:
	tst	r3, #16
	beq	.L232
	cmp	r0, #0
	ldr	r3, [r4, #28]
	bne	.L200
	cmp	r3, #0
	beq	.L198
	cmp	r3, #2
	bne	.L200
.L201:
	ldr	r3, .L233+32
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L209
	ldr	r3, .L233+36
	ldrh	r3, [r3]
	ands	r5, r3, #2
	bne	.L209
	mov	r0, #5
	mov	r1, #3
	mov	lr, #1
	ldr	r6, .L233+40
	ldr	r3, [r6]
	ldr	r2, .L233+44
	rsb	r3, r3, #0
	ldr	r2, [r2]
	ldr	r7, [r4, #20]
	str	r3, [sp, #12]
	str	r0, [sp, #8]
	ldr	r0, .L233+48
	ldr	r3, .L233+52
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
	ldr	r7, .L233+56
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L196
	ldr	r2, [r4]
	ldr	r1, [r6]
	ldr	r3, [r4, #4]
	sub	r2, r2, r1
	add	r3, r3, #5
	str	r3, [r4, #4]
	str	r2, [r4]
	str	r5, [r6]
	ldr	r3, [r4, #28]
	b	.L200
.L232:
	cmp	r0, #0
	bne	.L196
.L197:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L201
.L234:
	.align	2
.L233:
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
	ldr	fp, .L288
	ldr	r5, .L288+4
	ldr	r3, [fp]
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	sub	sp, sp, #20
	beq	.L276
	ldr	r7, .L288+8
.L236:
	ldr	r4, .L288+12
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
	ldrne	r1, .L288+16
	strne	r0, [r4, #4]
	ldrne	r8, .L288+20
	ldr	r4, .L288+24
	ldrne	r2, .L288+28
	ldrne	r1, [r1]
	strne	r3, [r8]
	ldr	r3, [r4, #44]
	strne	r1, [r2]
	ldreq	r8, .L288+20
	add	r2, r5, #16
	cmp	r3, #0
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	beq	.L282
.L239:
	mov	r10, r7
	ldr	r4, .L288+32
.L248:
	ldr	r6, [r8]
	add	ip, r4, #16
	cmp	r6, #0
	ldr	r7, [r4, #4]
	ldr	r9, [r4]
	ldm	ip, {ip, lr}
	bne	.L241
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
	beq	.L242
	mov	r2, #1
	ldr	r1, .L288+36
	ldr	r3, [r1]
	sub	r3, r3, #1
	str	r3, [r1]
	ldr	r3, .L288+16
	str	r2, [fp]
	ldr	r3, [r3]
	ldr	r2, .L288+40
	str	r6, [r4, #48]
	str	r3, [r2]
.L243:
	ldr	r3, .L288+44
	add	r4, r4, #56
	cmp	r3, r4
	beq	.L247
.L283:
	add	r2, r5, #16
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L248
.L241:
	stm	sp, {r7, r9, ip, lr}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L243
	mov	r1, #0
	ldr	r2, .L288+48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r1, [r4, #48]
	str	r3, [r2]
	ldr	r3, .L288+44
	add	r4, r4, #56
	cmp	r3, r4
	bne	.L283
.L247:
	ldr	r3, [r8]
	ldr	r2, [fp]
	orrs	r3, r2, r3
	ldr	r3, .L288+52
	ldr	r3, [r3]
	bne	.L281
	cmp	r3, #0
	bne	.L250
	ldr	r3, .L288+56
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L284
.L251:
	ldr	r3, .L288+56
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L253
	ldr	r3, .L288+52
	ldr	r2, [fp]
	ldr	r3, [r3]
.L281:
	ldr	r4, .L288+60
.L249:
	ldr	r1, [r4]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L250
	ldr	r3, .L288+56
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L285
.L257:
	ldr	r3, .L288+56
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L286
.L250:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateMario2
.L242:
	ldr	r3, .L288+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L243
	ldr	r3, .L288+60
	ldr	r2, [fp]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L243
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L243
	ldr	r3, [r5, #28]
	cmp	r3, #1
	beq	.L287
	cmp	r3, #3
	bne	.L243
	ldr	r2, [r5]
	ldr	r3, [r4]
	cmp	r2, r3
	bge	.L243
	ldr	r2, [r5, #4]
	ldr	r3, [r4, #4]
	cmp	r2, r3
	bgt	.L243
	mov	r2, #1
	ldr	r1, .L288+48
	ldr	r3, [r1]
	add	r3, r3, r2
	str	r3, [r1]
	str	r2, [r4, #52]
	b	.L243
.L282:
	add	ip, r4, #16
	ldm	ip, {ip, lr}
	sub	ip, ip, #3
	str	ip, [sp, #8]
	ldr	r6, [r4]
	str	lr, [sp, #12]
	ldr	ip, [r4, #4]
	str	r6, [sp, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L280
	mov	r2, #1
	ldr	r1, .L288+36
	ldr	r3, [r1]
	ldr	r0, .L288+16
	sub	r3, r3, #1
	ldr	r0, [r0]
	str	r3, [r1]
	ldr	r3, .L288+40
	str	r2, [fp]
	str	r0, [r3]
	str	r2, [r4, #44]
.L280:
	add	r2, r5, #16
	ldr	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L239
.L276:
	ldr	ip, .L288+64
	add	r4, ip, #16
	ldm	r4, {r4, lr}
	str	lr, [sp, #12]
	ldr	lr, [ip]
	ldr	ip, [ip, #4]
	lsl	r3, r3, #1
	stm	sp, {ip, lr}
	str	r4, [sp, #8]
	ldr	r7, .L288+8
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L288+68
	strne	r2, [r3]
	add	r2, r5, #16
	ldreq	r0, [r5, #4]
	ldrne	r0, [r5, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	b	.L236
.L287:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L243
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L243
	ldr	r1, .L288+48
	ldr	r2, [r1]
	add	r2, r2, #3
	str	r3, [r4, #52]
	str	r2, [r1]
	b	.L243
.L286:
	ldr	r1, [r5, #20]
	ldr	r2, [r5, #16]
	str	r3, [sp, #12]
	ldr	ip, [r5, #12]
	ldr	r0, .L288+72
	ldr	r3, [r5]
	ldr	r0, [r0, #8]
	ldr	r4, .L288+76
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L250
	ldr	r1, .L288+80
	ldr	r3, [r5, #4]
	ldr	r2, [r1]
	ldr	r0, [r5, #12]
	cmp	r2, #14
	add	r3, r3, r0
	str	r3, [r5, #4]
	bgt	.L250
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L250
.L285:
	ldr	r2, [r5, #12]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L288+72
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r3, [r5]
	ldr	r0, [r0, #8]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r4, .L288+76
	mov	r1, #256
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L257
	ldr	r1, .L288+80
	ldr	r3, [r5, #4]
	ldr	r2, [r1]
	ldr	r0, [r5, #12]
	cmp	r2, #0
	sub	r3, r3, r0
	str	r3, [r5, #4]
	ble	.L257
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L257
.L284:
	ldr	r2, [r5, #8]
	add	r1, r5, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r6, .L288+72
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r3, [r5]
	ldr	r0, [r6, #12]
	ldr	r2, [r5, #4]
	stm	sp, {r1, ip}
	ldr	r7, .L288+76
	mov	r1, #256
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L251
	mov	ip, #1
	ldr	r0, .L288+84
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L288+60
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	ip, [r4]
	ble	.L252
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L252:
	ldr	r1, .L288+56
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L250
.L259:
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
	beq	.L254
	ldr	r3, .L288+52
	ldr	r2, [fp]
	ldr	r3, [r3]
	b	.L249
.L253:
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r4, .L288+60
	ldr	r6, .L288+72
	ldr	r7, .L288+76
	b	.L259
.L254:
	mov	r0, #1
	ldr	r1, .L288+84
	ldr	r3, [r5]
	ldr	r2, [r1]
	ldr	ip, [r5, #8]
	cmp	r2, #94
	add	r3, r3, ip
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L250
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L250
.L289:
	.align	2
.L288:
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
	ldr	r1, .L292
	ldr	r3, [r1, #24]
	ldr	r0, .L292+4
	ldr	r2, .L292+8
	add	r3, r3, #1
	mla	r2, r3, r2, r0
	cmp	r0, r2, ror #1
	str	r3, [r1, #24]
	bxcc	lr
	b	animateKong.part.0
.L293:
	.align	2
.L292:
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
	ldr	r1, .L296
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L296+4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	bxcc	lr
	b	animatePauline.part.0
.L297:
	.align	2
.L296:
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
	ldr	r4, .L306
	ldr	r8, .L306+4
	ldr	r7, .L306+8
	ldr	r6, .L306+12
	add	r5, r4, #280
.L300:
	ldr	r2, [r4, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	str	r2, [r4, #24]
	bcs	.L299
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L299
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L299:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L300
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L307:
	.align	2
.L306:
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
	ldr	r2, .L322
	ldr	r3, .L322+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	push	{r4, r5, r6, r7, r8, lr}
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #16
	bne	.L309
	ldr	r0, .L322+8
	mov	r2, r0
.L311:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L321
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #56
	bne	.L311
.L309:
	mov	r6, #0
	ldr	r4, .L322+8
	ldr	r8, .L322+12
	ldr	r7, .L322+16
	add	r5, r4, #280
.L316:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L312
	mov	r1, #188
	ldr	r3, [r4, #16]
	sub	r3, r3, r3, lsl #2
	add	r3, r3, #120
	stm	r4, {r1, r3}
	str	r2, [r4, #44]
	str	r2, [r4, #52]
.L313:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L316
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	animateBarrel
.L312:
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
	bne	.L314
	mov	r2, #1
	ldr	r3, [r4]
	ldr	r1, [r4, #8]
	add	r3, r3, r1
	str	r3, [r4]
	str	r2, [r4, #44]
	b	.L313
.L314:
	ldr	r3, [r4, #44]
	ldr	r2, [r4, #12]
	cmp	r3, #0
	ldr	r3, [r4, #4]
	sub	r1, r3, r2
	addeq	r3, r3, r2
	streq	r3, [r4, #4]
	beq	.L313
	ldr	r3, [r4, #16]
	add	r3, r1, r3
	cmp	r3, #0
	str	r1, [r4, #4]
	strle	r6, [r4, #48]
	b	.L313
.L321:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #48]
	b	.L309
.L323:
	.align	2
.L322:
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
	ldr	r3, .L365
	ldr	r5, .L365+4
	ldr	r1, [r3]
	ldr	r2, [r5]
	cmp	r1, #0
	add	r2, r2, #1
	str	r2, [r5]
	sub	sp, sp, #16
	beq	.L325
	ldr	r1, .L365+8
	ldr	r1, [r1]
	sub	r1, r2, r1
	cmp	r1, #25
	moveq	ip, #0
	moveq	r0, #10
	ldreq	r1, .L365+12
	streq	ip, [r3]
	streq	r0, [r1]
.L325:
	ldr	r6, .L365+16
	ldr	r1, [r6]
	ldr	r4, .L365+20
	cmp	r1, #0
	ldr	r3, [r4]
	beq	.L362
.L326:
	ldr	r0, .L365+24
	ldr	r1, .L365+28
	ldr	ip, [r0]
	ldr	r1, [r1]
	cmp	ip, #0
	sub	r1, r2, r1
	beq	.L328
	ldr	ip, [r4, #28]
	cmp	ip, #0
	moveq	ip, #5
	bne	.L363
	cmp	r1, #20
	str	ip, [r4, #28]
	beq	.L364
.L328:
	cmp	r1, #70
	ldr	r5, .L365+32
	beq	.L360
.L330:
	ldr	r1, .L365+36
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L331
	ldr	r0, .L365+40
	ldr	r0, [r0]
	sub	r2, r2, r0
	cmp	r2, #150
	moveq	r2, #0
	streq	r2, [r1]
	streq	r2, [r4, #28]
.L331:
	cmp	r3, #232
	bne	.L332
.L334:
	mov	r3, #0
	str	r3, [r6]
.L333:
	bl	updateMario
	ldr	r3, [r5, #24]
	ldr	r1, .L365+44
	ldr	r2, .L365+48
	add	r3, r3, #1
	mla	r2, r3, r2, r1
	cmp	r1, r2, ror #1
	str	r3, [r5, #24]
	blcs	animateKong.part.0
.L335:
	ldr	r1, .L365+52
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L365+56
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	blcs	animatePauline.part.0
.L336:
	bl	updateBarrel
	ldr	r3, .L365+60
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	ble	.L324
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L365+64
.L339:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L339
.L324:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L360:
	ldr	r1, [r5, #44]
	cmp	r1, #0
	movne	r1, #0
	strne	r1, [r5, #44]
	b	.L330
.L363:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	moveq	ip, #5
	movne	ip, #6
	cmp	r1, #20
	str	ip, [r4, #28]
	bne	.L328
	b	.L364
.L332:
	mov	ip, #0
	ldr	r2, [r4, #8]
	rsb	r2, r2, #0
	ldr	r1, [r4, #20]
	str	r2, [sp, #12]
	ldr	r0, .L365+68
	ldr	r2, [r4, #16]
	str	ip, [sp, #8]
	ldr	r0, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	ldr	r4, .L365+72
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L334
	b	.L333
.L362:
	ldr	r7, .L365+12
	ldr	lr, [r7]
	add	r2, r4, #16
	ldm	r2, {r2, ip}
	ldr	r0, .L365+68
	str	r1, [sp, #8]
	str	lr, [sp, #12]
	ldr	r0, [r0]
	stm	sp, {r2, ip}
	mov	r1, #256
	ldr	r2, [r4, #4]
	ldr	r8, .L365+72
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
	b	.L326
.L364:
	mov	r1, #0
	ldr	r5, .L365+32
	str	r1, [r0]
	b	.L330
.L366:
	.align	2
.L365:
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
	ldr	r2, .L385
	ldr	r3, .L385+4
	ldr	r2, [r2]
	smull	r0, r1, r3, r2
	push	{r4, r5, r6, r7, r8, r9, lr}
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #4
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	subs	r3, r2, r3, lsl #1
	sub	sp, sp, #20
	bne	.L368
	ldr	r0, .L385+8
	mov	r2, r0
.L370:
	ldr	r1, [r2, #48]
	cmp	r1, #0
	beq	.L384
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #56
	bne	.L370
.L368:
	ldr	r4, .L385+8
	ldr	r8, .L385+12
	ldr	r7, .L385+16
	ldr	r6, .L385+20
	add	r5, r4, #280
.L378:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L371
	mov	r1, #83
	ldr	r3, [r6, #20]
	sub	r3, r3, r3, lsl #2
	add	r3, r3, #135
	stm	r4, {r1, r3}
	str	r2, [r4, #44]
	str	r2, [r4, #52]
.L372:
	add	r4, r4, #56
	cmp	r4, r5
	bne	.L378
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	animateBarrel
.L371:
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
	bne	.L373
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	sub	r3, r3, r2
	str	r3, [r4]
	b	.L372
.L373:
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #12]
	add	r2, r2, r3
	sub	r3, r2, #90
	cmp	r3, #60
	str	r2, [r4, #4]
	bhi	.L374
	ldr	r3, [r4]
	cmp	r3, #132
	bgt	.L372
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
.L374:
	cmp	r2, #256
	movgt	r3, #0
	strgt	r3, [r4, #48]
	b	.L372
.L384:
	mov	r2, #1
	rsb	r3, r3, r3, lsl #3
	add	r3, r0, r3, lsl #3
	str	r2, [r3, #48]
	b	.L368
.L386:
	.align	2
.L385:
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
	ldr	r3, .L429
	ldr	r5, .L429+4
	ldr	r2, [r3]
	ldr	r1, [r5]
	cmp	r2, #0
	add	r1, r1, #1
	str	r1, [r5]
	sub	sp, sp, #20
	beq	.L388
	ldr	r2, .L429+8
	ldr	r2, [r2]
	sub	r2, r1, r2
	cmp	r2, #25
	moveq	ip, #0
	moveq	r0, #10
	ldreq	r2, .L429+12
	streq	ip, [r3]
	streq	r0, [r2]
.L388:
	ldr	r6, .L429+16
	ldr	r4, .L429+20
	ldr	r0, [r6]
	add	ip, r4, #16
	cmp	r0, #0
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldm	ip, {ip, lr}
	beq	.L424
	ldr	r8, .L429+24
	ldr	r7, .L429+28
.L389:
	ldr	r5, .L429+32
	ldr	r0, .L429+36
	ldr	r9, [r5]
	ldr	r0, [r0]
	cmp	r9, #0
	sub	r0, r1, r0
	beq	.L391
	ldr	r9, [r4, #28]
	cmp	r9, #0
	moveq	r9, #5
	bne	.L427
	cmp	r0, #15
	str	r9, [r4, #28]
	beq	.L428
.L391:
	cmp	r0, #70
	ldr	r5, .L429+40
	beq	.L425
.L393:
	ldr	r0, .L429+44
	ldr	r9, [r0]
	cmp	r9, #0
	beq	.L394
	ldr	r9, .L429+48
	ldr	r9, [r9]
	sub	r1, r1, r9
	cmp	r1, #150
	moveq	r1, #0
	streq	r1, [r0]
	streq	r1, [r4, #28]
.L394:
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
	beq	.L395
.L397:
	mov	r3, #0
	str	r3, [r6]
.L396:
	bl	updateMario2
	ldr	r3, [r5, #24]
	ldr	r1, .L429+52
	ldr	r2, .L429+56
	add	r3, r3, #1
	mla	r2, r3, r2, r1
	cmp	r1, r2, ror #1
	str	r3, [r5, #24]
	blcs	animateKong.part.0
.L398:
	ldr	r1, .L429+60
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	add	r3, r2, r2, lsl #4
	ldr	r0, .L429+64
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r0, r3
	cmp	r0, r3, ror #1
	str	r2, [r1, #24]
	blcs	animatePauline.part.0
.L399:
	bl	updateBarrel2
	ldr	r3, .L429+68
	ldr	r1, [r3]
	rsb	r1, r1, #3
	cmp	r1, #0
	ble	.L387
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L429+72
.L402:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L402
.L387:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L425:
	ldr	r0, [r5, #44]
	cmp	r0, #0
	movne	r0, #0
	strne	r0, [r5, #44]
	b	.L393
.L427:
	ldr	r9, [r4, #32]
	cmp	r9, #0
	moveq	r9, #5
	movne	r9, #6
	cmp	r0, #15
	str	r9, [r4, #28]
	bne	.L391
	b	.L428
.L424:
	ldr	r9, .L429+12
	ldr	r8, .L429+24
	ldr	r1, [r9]
	ldr	r7, .L429+28
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
	b	.L389
.L395:
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
	bne	.L397
	b	.L396
.L428:
	mov	r0, #0
	str	r0, [r5]
	ldr	r5, .L429+40
	b	.L393
.L430:
	.align	2
.L429:
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
	ldr	r0, .L439
	ldr	ip, .L439+4
	ldr	r3, .L439+8
	ldr	r1, .L439+12
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
	bne	.L432
	ldr	r0, .L439+16
	lsl	r1, r1, #6
	add	r1, r1, #14
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L432:
	ldr	r0, [r0, #28]
	cmp	r0, #8
	beq	.L437
	cmp	r0, #9
	beq	.L438
	add	r1, r0, r1, lsl #5
	ldr	r0, .L439+16
	lsl	r1, r1, #1
	orr	r3, r3, #16384
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L437:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L439+16
	lsl	r1, r1, #6
	add	r1, r1, #16
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L438:
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r0, .L439+16
	lsl	r1, r1, #6
	add	r1, r1, #20
	orr	r2, r2, #16384
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r2, [r0]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L440:
	.align	2
.L439:
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
	ldr	r1, .L442
	ldr	r2, .L442+4
	ldr	r3, [r1, #4]
	ldr	r2, [r2]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L442+8
	ldr	r2, [r1]
	ldr	ip, [r0]
	ldr	r1, [r1, #36]
	ldr	r0, .L442+12
	add	r1, r1, #1
	sub	r2, r2, ip
	lsl	r1, r1, #7
	orr	r2, r2, #16384
	strh	r3, [r0, #10]	@ movhi
	strh	r1, [r0, #12]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	bx	lr
.L443:
	.align	2
.L442:
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
	ldr	r2, .L446
	ldr	r3, .L446+4
	ldr	r0, .L446+8
	str	lr, [sp, #-4]!
	ldr	r1, [r2]
	ldr	lr, [r3]
	ldr	r0, [r0]
	ldr	r3, [r2, #4]
	ldr	r2, [r2, #36]
	ldr	ip, .L446+12
	sub	r1, r1, r0
	sub	r3, r3, lr
	ldr	r0, .L446+16
	lsl	r2, r2, #7
	orr	r1, r1, ip
	add	r2, r2, #24
	orr	r3, r3, ip
	strh	r1, [r0, #16]	@ movhi
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #18]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L447:
	.align	2
.L446:
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
	ldr	r4, .L454
	ldr	r5, .L454+4
	ldr	r10, .L454+8
	ldr	r9, .L454+12
	ldr	r8, .L454+16
	ldr	r7, .L454+20
	sub	sp, sp, #20
	add	r6, r4, #280
.L451:
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
	bne	.L451
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L455:
	.align	2
.L454:
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
	ldr	r4, .L462
	ldr	r5, .L462+4
	ldr	r10, .L462+8
	ldr	r9, .L462+12
	ldr	r8, .L462+16
	ldr	r7, .L462+20
	sub	sp, sp, #20
	add	r6, r4, #280
.L459:
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
	bne	.L459
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L463:
	.align	2
.L462:
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
	ldr	r2, .L466
	ldr	r1, .L466+4
	ldr	ip, .L466+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L466+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #66]	@ movhi
	strh	r1, [r2, #64]	@ movhi
	strh	r0, [r2, #68]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L467:
	.align	2
.L466:
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
	ldr	r2, .L474
	ldr	r3, .L474+4
	ldr	r1, .L474+8
	ldrh	r4, [r2]
	ldrh	lr, [r3]
	ldr	r0, .L474+12
	add	ip, r1, #24
.L471:
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
	bne	.L471
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L475:
	.align	2
.L474:
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
	ldr	r1, .L480
	ldr	lr, .L480+4
	ldr	r2, .L480+8
	ldr	r3, .L480+12
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
	bgt	.L477
	mov	r4, #640
	ldr	lr, .L480+16
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
.L477:
	ldr	lr, .L480+20
	smull	r4, r5, lr, r3
	asr	lr, r3, #31
	ldr	r4, .L480+24
	rsb	lr, lr, r5, asr #2
	umull	r5, r4, lr, r4
	lsr	r4, r4, #3
	add	r5, lr, lr, lsl #2
	add	r4, r4, r4, lsl #2
	sub	lr, lr, r4, lsl #1
	sub	r3, r3, r5, lsl #1
	ldr	r4, .L480+16
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
.L481:
	.align	2
.L480:
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
	ldr	r6, .L484
	ldr	r1, .L484+4
	ldrh	r2, [r6]
	ldr	r3, [r1, #4]
	sub	r3, r3, r2
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r0, .L484+8
	ldr	r5, .L484+12
	ldr	r7, [r0, #4]
	ldr	ip, [r1]
	ldr	lr, [r1, #36]
	sub	r2, r7, r2
	ldr	r1, [r0]
	ldrh	r7, [r5]
	ldr	r0, [r0, #36]
	ldr	r4, .L484+16
	sub	r1, r1, r7
	sub	ip, ip, r7
	ldr	r7, .L484+20
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
	ldr	r2, .L484+24
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
	ldr	r3, .L484+28
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L484+32
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
.L485:
	.align	2
.L484:
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
