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
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKey.part.0, %function
updateKey.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L8
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	sub	sp, sp, #16
	ldr	r4, .L8+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L8+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r2, #0
	movne	r3, #1
	strne	r2, [r5, #16]
	strne	r3, [r4, #48]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	key
	.word	guy
	.word	collision
	.size	updateKey.part.0, .-updateKey.part.0
	.align	2
	.global	displayTime
	.syntax unified
	.arm
	.fpu softvfp
	.type	displayTime, %function
displayTime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #384
	ldr	r2, .L12
	ldr	r3, .L12+4
	ldr	r1, [r2]
	ldr	r4, .L12+8
	ldr	r0, [r3]
	smull	r3, r2, r4, r1
	smull	r3, r6, r4, r0
	asr	r3, r1, #31
	rsb	r3, r3, r2, asr #2
	add	r5, r3, r3, lsl #2
	ldr	r4, .L12+12
	ldr	ip, .L12+16
	sub	r1, r1, r5, lsl #1
	ldr	r2, .L12+20
	add	r5, r1, #2
	lsl	r3, r3, #16
	ldm	r4, {r1, r8}
	ldr	r7, [ip]
	ldr	r2, [r2]
	asr	r3, r3, #16
	add	ip, r3, #2
	asr	r4, r0, #31
	ldr	r3, .L12+24
	sub	r1, r1, #16
	rsb	r4, r4, r6, asr #2
	sub	r2, r8, r2
	sub	r1, r1, r7
	lsl	ip, ip, #5
	strh	ip, [r3, #164]	@ movhi
	lsl	r2, r2, #16
	lsl	ip, r4, #16
	lsl	r1, r1, #16
	add	r4, r4, r4, lsl #2
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	sub	r0, r0, r4, lsl #1
	asr	ip, ip, #16
	strh	r1, [r3, #160]	@ movhi
	strh	r1, [r3, #168]	@ movhi
	strh	r1, [r3, #176]	@ movhi
	strh	r1, [r3, #184]	@ movhi
	strh	r1, [r3, #192]	@ movhi
	add	ip, ip, #2
	add	r1, r2, #4
	add	r0, r0, #2
	sub	r4, r2, #4
	lsl	r5, r5, #5
	strh	r2, [r3, #170]	@ movhi
	strh	r1, [r3, #178]	@ movhi
	lsl	ip, ip, #5
	add	r1, r2, #8
	lsl	r0, r0, #5
	add	r2, r2, #12
	strh	r5, [r3, #172]	@ movhi
	strh	r4, [r3, #162]	@ movhi
	strh	lr, [r3, #180]	@ movhi
	strh	r1, [r3, #186]	@ movhi
	strh	r2, [r3, #194]	@ movhi
	strh	ip, [r3, #188]	@ movhi
	strh	r0, [r3, #196]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	time_m
	.word	time_s
	.word	1717986919
	.word	guy
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	displayTime, .-displayTime
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r2, .L31
	ldr	r2, [r2]
	ldr	r3, .L31+4
	cmp	r2, r1
	push	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	bne	.L16
	ldrh	r2, [r3, #2]
	ldr	r3, .L31+8
	tst	r2, #16
	ldr	r2, [r3]
	beq	.L18
	ldr	r1, .L31+12
	ldr	r3, [r1]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1]
	blt	.L29
.L18:
	ldr	r3, .L31+16
	ldr	r3, [r3]
	orrs	r3, r2, r3
	beq	.L30
.L16:
	ldr	r3, .L31+4
	ldrh	r3, [r3, #2]
	tst	r3, #4096
	beq	.L21
	ldr	r2, .L31+20
	ldrh	r3, [r2, #48]
	ands	r3, r3, #4
	strheq	r3, [r2, #6]	@ movhi
.L21:
	mov	r1, #1
	ldr	r3, .L31+4
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L30:
	ldr	r3, .L31+4
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L16
	bl	displayTime
	b	.L16
.L29:
	mov	ip, #59
	ldr	r0, .L31+24
	ldr	r3, [r0]
	sub	r3, r3, #1
	str	r3, [r0]
	ldr	r3, .L31+16
	ldr	r3, [r3]
	orrs	r3, r2, r3
	str	ip, [r1]
	bne	.L16
	b	.L30
.L32:
	.align	2
.L31:
	.word	paused
	.word	67109376
	.word	won
	.word	time_s
	.word	lost
	.word	67109120
	.word	time_m
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	enableTimerInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	enableTimerInterrupts, %function
enableTimerInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #49152
	mov	lr, #0
	mov	r2, #195
	mov	ip, #16
	ldr	r3, .L35
	ldr	r0, .L35+4
	strh	lr, [r3, #6]	@ movhi
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L36:
	.align	2
.L35:
	.word	67109120
	.word	67109376
	.size	enableTimerInterrupts, .-enableTimerInterrupts
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	push	{r4, lr}
	mov	r1, #49152
	mov	r4, #0
	mov	lr, #195
	mov	ip, #17
	mov	r0, #1
	ldrh	r3, [r2, #4]
	orr	r3, r3, #8
	strh	r3, [r2, #4]	@ movhi
	ldr	r3, .L39
	strh	r4, [r3, #6]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	lr, [r3, #6]	@ movhi
	ldr	r1, .L39+4
	ldr	r3, .L39+8
	add	r2, r2, #512
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	pop	{r4, lr}
	str	r3, [r1, #4092]
	bx	lr
.L40:
	.align	2
.L39:
	.word	67109120
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
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
	mov	r7, #2
	mov	r1, #5
	mov	r5, #1
	mov	r6, #67108864
	mov	lr, #10
	ldr	r2, .L43
	ldr	r9, .L43+4
	str	r4, [r2]
	ldr	r8, .L43+8
	ldr	ip, .L43+12
	ldr	r0, .L43+16
	ldr	r3, .L43+20
	ldr	r2, .L43+24
	str	r7, [r9]
	str	r4, [r8]
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r3]
	str	r4, [r2]
	ldr	r10, .L43+28
	ldr	fp, .L43+32
	ldr	r9, .L43+36
	ldr	r8, .L43+40
	ldr	ip, .L43+44
	ldr	r0, .L43+48
	ldr	r3, .L43+52
	ldr	r2, .L43+56
	str	r4, [r9]
	str	r4, [r8]
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r3]
	str	r1, [r2]
	ldrh	r3, [r10]
	ldr	ip, .L43+60
	ldrh	r2, [fp]
	ldr	r9, .L43+64
	ldr	r8, .L43+68
	ldr	r0, .L43+72
	str	lr, [ip]
	str	r4, [r9]
	str	r4, [r8]
	str	r5, [r0]
	ldr	r8, .L43+76
	strh	r3, [r6, #22]	@ movhi
	mov	r0, #3
	strh	r2, [r6, #20]	@ movhi
	mov	r3, #256
	ldr	r2, .L43+80
	ldr	r1, .L43+84
	mov	lr, pc
	bx	r8
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L43+88
	ldr	r1, .L43+92
	mov	lr, pc
	bx	r8
	mov	r3, #16
	ldr	r2, .L43+96
	mov	lr, #88
	mov	ip, #200
	str	r7, [r2, #28]
	str	r7, [r2, #40]
	mov	r7, #72
	mov	r9, #32
	stm	r2, {ip, lr}
	str	r5, [r2, #12]
	str	r5, [r2, #8]
	str	r3, [r2, #16]
	str	r4, [r2, #24]
	str	r4, [r2, #36]
	str	r4, [r2, #48]
	str	r3, [r2, #20]
	ldr	r2, .L43+100
	str	r7, [r2, #4]
	ldr	r7, .L43+104
	str	r9, [r7, #12]
	mov	r9, #163
	str	r9, [r7, #4]
	mov	r9, #215
	str	r9, [r7]
	mov	r9, #225
	str	r3, [r7, #8]
	str	r5, [r7, #16]
	mov	r8, #24
	ldr	r7, .L43+108
	mov	r1, #40
	mov	r0, #184
	str	r9, [r7]
	mov	r9, #185
	str	r3, [r7, #8]
	str	r3, [r7, #12]
	str	r5, [r7, #16]
	str	r8, [r7, #4]
	ldr	r7, .L43+112
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r5, [r2, #16]
	str	r3, [r2, #28]
	str	r0, [r2]
	str	r3, [r7, #8]
	str	r3, [r7, #12]
	str	r5, [r7, #16]
	str	r9, [r7]
	str	r1, [r7, #4]
	str	r3, [r2, #32]
	str	r0, [r2, #20]
	str	r0, [r2, #40]
	mov	r0, #104
	str	r0, [r2, #44]
	mov	r0, #23
	str	lr, [r2, #24]
	str	r5, [r2, #36]
	str	r3, [r2, #48]
	str	r3, [r2, #52]
	str	r5, [r2, #56]
	ldr	r2, .L43+116
	str	ip, [r2, #4]
	str	r3, [r2, #16]
	str	r0, [r2]
	str	r3, [r2, #20]
	ldr	r0, .L43+120
	ldr	r2, .L43+124
	str	r1, [r0, #4]
	str	r1, [r2]
	ldr	r1, .L43+128
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	str	r3, [r0, #72]
	str	r3, [r0, #76]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	mov	ip, #232
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	mov	r3, #67
	str	r8, [r2, #4]
	stm	r1, {r3, ip}
	str	r5, [r2, #16]
	mov	r3, #68
	mov	r2, #79
	str	r5, [r0, #12]
	str	r5, [r0, #8]
	str	r4, [r0, #44]
	str	r5, [r0, #48]
	str	r2, [r0]
	str	r5, [r1, #16]
	str	r5, [r0, #68]
	str	r3, [r0, #56]
	mov	r3, #172
	str	r5, [r0, #64]
	str	r4, [r0, #100]
	str	r5, [r0, #104]
	str	r3, [r0, #60]
	ldr	r2, .L43+132
	mov	lr, pc
	bx	r2
	mov	r1, #49152
	mov	r2, #195
	mov	r8, #17
	mov	lr, #96
	ldr	r3, .L43+136
	strh	r4, [r3, #6]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldrh	r2, [r6, #4]
	ldrh	ip, [r3, #48]
	ldr	r1, .L43+140
	ldr	r7, .L43+144
	ldr	r9, .L43+148
	ldr	r0, .L43+152
	orr	r3, r2, #8
	strh	r3, [r6, #4]	@ movhi
	strh	r5, [r1, #8]	@ movhi
	strh	r8, [r1]	@ movhi
	str	r9, [r7, #4092]
	str	r4, [fp]
	str	lr, [r10]
	strh	ip, [r0]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	climbing
	.word	life
	.word	delivered
	.word	jumping
	.word	down
	.word	powerUp
	.word	downFrame
	.word	vOff
	.word	hOff
	.word	jumpBoosted
	.word	frame
	.word	score
	.word	jumpFrame
	.word	hammerFrame
	.word	time_s
	.word	gravity
	.word	bootsFrame
	.word	floating
	.word	time_m
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	guy
	.word	heart
	.word	door
	.word	key
	.word	boots
	.word	customer
	.word	crazy
	.word	bubble
	.word	shirt
	.word	hideSprites
	.word	67109120
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.word	buttons
	.size	initGame, .-initGame
	.align	2
	.global	initGuy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGuy, %function
initGuy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	ip, #16
	mov	r4, #200
	mov	lr, #88
	mov	r0, #1
	mov	r1, #2
	ldr	r3, .L47
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	str	r1, [r3, #40]
	str	r1, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	guy
	.size	initGuy, .-initGuy
	.align	2
	.global	initDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	initDoor, %function
initDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #32
	mov	lr, #16
	mov	r0, #163
	mov	r1, #215
	mov	r2, #1
	ldr	r3, .L51
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L52:
	.align	2
.L51:
	.word	door
	.size	initDoor, .-initDoor
	.align	2
	.global	initKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKey, %function
initKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #24
	mov	r0, #225
	mov	r1, #1
	ldr	r3, .L54
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L55:
	.align	2
.L54:
	.word	key
	.size	initKey, .-initKey
	.align	2
	.global	initBoots
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoots, %function
initBoots:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #40
	mov	r0, #185
	mov	r1, #1
	ldr	r3, .L57
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L58:
	.align	2
.L57:
	.word	boots
	.size	initBoots, .-initBoots
	.align	2
	.global	initShirt
	.syntax unified
	.arm
	.fpu softvfp
	.type	initShirt, %function
initShirt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #232
	mov	r0, #67
	mov	r1, #1
	ldr	r3, .L60
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L61:
	.align	2
.L60:
	.word	shirt
	.size	initShirt, .-initShirt
	.align	2
	.global	initCustomer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCustomer, %function
initCustomer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	r0, #23
	mov	r1, #200
	ldr	r3, .L63
	stm	r3, {r0, r1}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L64:
	.align	2
.L63:
	.word	customer
	.size	initCustomer, .-initCustomer
	.align	2
	.global	initBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBubble, %function
initBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #16
	mov	ip, #24
	mov	r0, #40
	mov	r1, #1
	ldr	r3, .L66
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L67:
	.align	2
.L66:
	.word	bubble
	.size	initBubble, .-initBubble
	.align	2
	.global	initCrazy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCrazy, %function
initCrazy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #1
	mov	r1, #16
	mov	r5, #79
	mov	r4, #40
	mov	lr, #68
	mov	r0, #0
	mov	ip, #172
	ldr	r3, .L70
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #56]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #72]
	str	r1, [r3, #76]
	str	ip, [r3, #60]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #48]
	str	r2, [r3, #68]
	str	r2, [r3, #64]
	str	r2, [r3, #104]
	str	r0, [r3, #44]
	str	r0, [r3, #100]
	pop	{r4, r5, lr}
	bx	lr
.L71:
	.align	2
.L70:
	.word	crazy
	.size	initCrazy, .-initCrazy
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
	str	lr, [sp, #-4]!
	mov	r0, #16
	mov	lr, #1
	ldr	r3, .L76
	ldr	r1, [r3, #4]
	ldr	ip, [r3]
	ldr	r3, .L76+4
	sub	r2, r1, #16
	sub	ip, ip, #16
	add	r1, r1, #32
.L73:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, r1
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	ip, [r3]
	str	lr, [r3, #16]
	add	r3, r3, #20
	bne	.L73
	ldr	lr, [sp], #4
	bx	lr
.L77:
	.align	2
.L76:
	.word	guy
	.word	heart
	.size	initHeart, .-initHeart
	.align	2
	.global	updateDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDoor, %function
updateDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L91
	ldr	r5, .L91+4
	ldr	r3, [r4, #48]
	add	r2, r4, #16
	cmp	r3, #0
	add	r7, r5, #8
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	ip, [r5, #4]
	ldr	lr, [r5]
	ldm	r7, {r7, r8}
	sub	sp, sp, #16
	bne	.L89
	ldr	r6, .L91+8
.L79:
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	subne	r3, r3, #1
	strne	r3, [r4, #4]
.L78:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L89:
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	ldr	r6, .L91+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r5, #16]
	bne	.L78
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L78
	add	r2, r4, #16
	add	r7, r5, #8
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	ip, [r5, #4]
	ldr	lr, [r5]
	ldm	r7, {r7, r8}
	b	.L79
.L92:
	.align	2
.L91:
	.word	guy
	.word	door
	.word	collision
	.size	updateDoor, .-updateDoor
	.align	2
	.global	updateKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKey, %function
updateKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L95
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bxne	lr
	b	updateKey.part.0
.L96:
	.align	2
.L95:
	.word	guy
	.size	updateKey, .-updateKey
	.align	2
	.global	updateBoots
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBoots, %function
updateBoots:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L106
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L105
.L97:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L105:
	ldr	r0, .L106+4
	ldr	ip, [r4, #8]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	ldr	r5, [r4, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	str	r5, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r5, .L106+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L97
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L106+12
	ldr	r0, .L106+16
	ldr	ip, [r3]
	ldr	r3, .L106+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L107:
	.align	2
.L106:
	.word	boots
	.word	guy
	.word	collision
	.word	frame
	.word	bootsFrame
	.word	jumpBoosted
	.size	updateBoots, .-updateBoots
	.align	2
	.global	updateShirt
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateShirt, %function
updateShirt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L117
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L116
.L108:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L116:
	ldr	r0, .L117+4
	ldr	ip, [r4, #8]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	ldr	r5, [r4, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	str	r5, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r5, .L117+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L108
	mov	r1, #0
	ldr	r2, .L117+12
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	shirt
	.word	guy
	.word	collision
	.word	life
	.size	updateShirt, .-updateShirt
	.align	2
	.global	updateBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBubble, %function
updateBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L128
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L127
.L119:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L127:
	ldr	r0, .L128+4
	ldr	ip, [r4, #8]
	add	r2, r0, #16
	ldr	r1, [r0]
	ldm	r2, {r2, r3}
	ldr	r0, [r0, #4]
	ldr	r5, [r4, #12]
	ldr	lr, [r4]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	str	r5, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r5, .L128+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L119
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L128+12
	ldr	r0, .L128+16
	ldr	ip, [r3]
	ldr	r3, .L128+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L129:
	.align	2
.L128:
	.word	bubble
	.word	guy
	.word	collision
	.word	frame
	.word	bubbleFrame
	.word	floating
	.size	updateBubble, .-updateBubble
	.align	2
	.global	updateCustomer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCustomer, %function
updateCustomer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateCustomer, .-updateCustomer
	.align	2
	.global	updateCrazy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCrazy, %function
updateCrazy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L153
	mov	r6, #1
	mov	r5, r4
	mov	r9, #0
	ldr	r8, .L153+4
	ldr	r7, .L153+8
	sub	sp, sp, #20
.L143:
	ldr	r3, [r5, #48]
	cmp	r3, #0
	bne	.L132
	mov	r3, #300
	str	r3, [r5]
	str	r3, [r5, #4]
.L133:
	cmp	r6, #2
	bne	.L144
.L131:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L132:
	cmp	r6, #1
	beq	.L152
	ldr	r1, [r4, #68]
	ldr	r2, [r4, #76]
	ldr	r3, [r4, #72]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	str	r9, [sp, #12]
	ldr	r3, [r4, #56]
	ldr	r2, [r4, #60]
	ldr	r0, [r8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L133
	ldr	r3, [r4, #60]
	cmp	r3, #229
	mvngt	r2, #0
	strgt	r2, [r4, #68]
	bgt	.L140
	cmp	r3, #155
	movle	r1, #1
	movle	r2, r1
	ldrgt	r2, [r4, #68]
	strle	r1, [r4, #68]
.L140:
	add	r3, r3, r2
	cmp	r6, #2
	str	r3, [r4, #60]
	beq	.L131
.L144:
	add	r5, r5, #56
	add	r6, r6, #1
	b	.L143
.L152:
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	str	r9, [sp, #12]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L144
	ldr	r3, [r4, #4]
	cmp	r3, #49
	mvngt	r2, #0
	strgt	r2, [r4, #12]
	bgt	.L137
	cmp	r3, #25
	movle	r2, r6
	ldrgt	r2, [r4, #12]
	strle	r6, [r4, #12]
.L137:
	add	r3, r3, r2
	str	r3, [r4, #4]
	add	r5, r5, #56
	add	r6, r6, #1
	b	.L143
.L154:
	.align	2
.L153:
	.word	crazy
	.word	.LANCHOR0
	.word	collisionCheck
	.size	updateCrazy, .-updateCrazy
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
	ldr	r3, .L173
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L156
	mov	r1, #1
	ldr	r2, .L173+4
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L156
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L156
	str	r1, [r2, #56]
	bx	lr
.L156:
	rsbs	r1, r3, #3
	bxeq	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L173+4
.L159:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L159
	bx	lr
.L174:
	.align	2
.L173:
	.word	life
	.word	heart
	.size	updateHeart, .-updateHeart
	.global	__aeabi_idivmod
	.align	2
	.global	animateGuy
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateGuy, %function
animateGuy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #10
	push	{r4, r5, r6, lr}
	ldr	r2, .L227
	ldr	r4, .L227+4
	ldr	r6, [r2]
	ldr	r2, [r4, #28]
	cmp	r6, #0
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #16
	beq	.L176
	ldr	r3, .L227+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L176:
	ldr	r5, [r4, #24]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L227+12
	add	r3, r3, r3, lsl #8
	ldr	r1, .L227+16
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L178
	ldr	r0, [r4, #36]
	ldr	r3, .L227+20
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L178:
	ldr	r3, .L227+24
	ldr	r2, [r3]
	ldr	r3, .L227+28
	cmp	r2, #0
	ldr	r3, [r3]
	beq	.L223
	orrs	r3, r6, r3
	bne	.L222
	ldr	r2, .L227+32
	ldr	r3, .L227+36
	ldr	r2, [r2]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L222
	ldr	r3, .L227+8
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L224
.L196:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L198
.L181:
	tst	r3, #16
	beq	.L225
	cmp	r6, #0
	ldr	r3, [r4, #28]
	bne	.L187
	ldr	r1, .L227+32
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.L187
	cmp	r3, #0
	beq	.L184
	cmp	r3, #2
	bne	.L187
.L193:
	ldr	r3, .L227+40
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L198
	ldr	r3, .L227+44
	ldrh	r3, [r3]
	ands	ip, r3, #2
	bne	.L198
	mov	r0, #15
	mvn	r6, #14
	mov	r3, #3
	mov	r1, #1
	ldr	r5, .L227+48
	ldr	lr, .L227+52
	ldr	r5, [r5]
	str	r0, [sp, #8]
	str	r6, [sp, #12]
	ldr	r0, .L227+56
	str	r5, [lr]
	ldr	lr, [r4, #20]
	ldr	r0, [r0]
	str	lr, [sp, #4]
	ldr	lr, [r4, #16]
	str	lr, [sp]
	ldr	lr, .L227+60
	str	r1, [r2]
	str	r3, [r4, #28]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	str	ip, [lr]
	ldr	r5, .L227+64
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L222
	ldr	r3, .L227+68
	ldr	r3, [r3]
	cmp	r3, #0
	ldm	r4, {r2, r3}
	beq	.L195
	sub	r2, r2, #70
	add	r3, r3, #25
	stm	r4, {r2, r3}
.L222:
	ldr	r3, [r4, #28]
.L187:
	cmp	r3, #10
	beq	.L226
.L185:
	ldr	r5, [r4, #24]
.L198:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L223:
	cmp	r3, #0
	bne	.L222
	ldr	r2, .L227+36
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L222
	ldr	r3, .L227+8
	ldrh	r1, [r3, #48]
	tst	r1, #32
	ldrh	r3, [r3, #48]
	bne	.L181
	cmp	r6, #0
	bne	.L222
	tst	r3, #16
	str	r6, [r4, #28]
	beq	.L183
	ldr	r3, .L227+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L185
.L184:
	ldr	r3, .L227+40
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L198
	ldr	r3, .L227+44
	ldrh	r3, [r3]
	ands	ip, r3, #2
	bne	.L198
	mvn	r3, #14
	mov	r1, #1
	ldr	r0, .L227+48
	ldr	r5, [r0]
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r0, .L227+56
	ldr	r3, [r4, #20]
	ldr	r0, [r0]
	ldr	lr, .L227+52
	str	r3, [sp, #4]
	ldr	r3, [r4, #16]
	str	r3, [sp]
	str	r5, [lr]
	ldr	lr, .L227+60
	str	r1, [r2]
	str	r1, [r4, #28]
	ldr	r3, [r4]
	mov	r1, #256
	ldr	r2, [r4, #4]
	str	ip, [lr]
	ldr	r5, .L227+64
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L222
	ldr	r3, .L227+68
	ldr	r3, [r3]
	ldm	r4, {r1, r2}
	cmp	r3, #0
	subne	r1, r1, #70
	subne	r2, r2, #25
	subeq	r1, r1, #20
	subeq	r2, r2, #15
	stm	r4, {r1, r2}
	ldr	r3, [r4, #28]
	b	.L187
.L226:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L225:
	cmp	r6, #0
	bne	.L222
.L183:
	mov	r3, #2
	ldr	r1, .L227+32
	ldr	r1, [r1]
	cmp	r1, #0
	str	r3, [r4, #28]
	bne	.L185
	b	.L193
.L224:
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L222
	b	.L196
.L195:
	sub	r2, r2, #20
	add	r3, r3, #15
	stm	r4, {r2, r3}
	b	.L222
.L228:
	.align	2
.L227:
	.word	powerUp
	.word	guy
	.word	67109120
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	climbing
	.word	down
	.word	floating
	.word	jumping
	.word	oldButtons
	.word	buttons
	.word	frame
	.word	jumpFrame
	.word	.LANCHOR0
	.word	gravity
	.word	collisionCheck
	.word	jumpBoosted
	.size	animateGuy, .-animateGuy
	.align	2
	.global	updateGuy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGuy, %function
updateGuy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L287
	ldr	r3, [r10]
	cmp	r3, #0
	sub	sp, sp, #20
	bgt	.L280
.L231:
	ldr	r9, .L287+4
	ldr	r3, [r9]
	cmp	r3, #0
	mov	r6, #0
	ldr	r4, .L287+8
	ldr	r7, .L287+12
	ldr	r8, .L287+16
	ldr	r5, .L287+20
	ldr	fp, .L287+24
	bne	.L233
.L285:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L281
.L234:
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L236
	ldr	r1, [r7]
	ldr	r2, [fp]
	orrs	r2, r1, r2
	bne	.L236
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L236
	ldr	r2, [r5, #28]
	cmp	r2, #1
	beq	.L282
	cmp	r2, #3
	beq	.L283
.L236:
	cmp	r6, #1
	add	r4, r4, #56
	bne	.L253
	ldr	r2, [r7]
	orrs	r3, r3, r2
	ldr	r3, [r8]
	bne	.L279
	cmp	r3, #0
	bne	.L241
	ldr	r3, .L287+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L242
	ldr	r3, .L287+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L284
.L243:
	ldr	r3, .L287+32
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L245
	ldr	r3, [r8]
.L279:
	ldr	r4, .L287+24
.L240:
	ldr	r2, [r4]
	orrs	r3, r3, r2
	bne	.L241
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L251
.L241:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateGuy
.L253:
	cmp	r3, #0
	mov	r6, #1
	beq	.L285
.L233:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	ip, .L287+36
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r2, #0
	ldrne	r1, .L287+40
	ldrne	r3, [r1]
	addne	r3, r3, #1
	strne	r3, [r1]
	strne	r2, [r4, #48]
	ldr	r3, [r9]
	b	.L236
.L281:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	ip, [r4]
	str	r1, [sp, #12]
	ldr	r1, [r4, #4]
	add	r0, r0, r0, lsr #31
	stm	sp, {r1, ip}
	asr	r0, r0, #1
	str	r0, [sp, #8]
	add	r3, r3, r3, lsr #31
	add	r2, r2, r2, lsr #31
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	ip, .L287+36
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L235
	ldr	r3, [r9]
	b	.L234
.L280:
	ldr	r2, .L287+44
	add	ip, r2, #16
	ldr	r0, .L287+20
	ldm	r2, {r1, r2}
	ldm	ip, {ip, lr}
	ldr	r3, [r0, #20]
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	ldr	r4, .L287+36
	ldr	r2, [r0, #16]
	ldr	r1, [r0]
	lsl	r3, r3, #1
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L231
	mov	r0, #1
	ldr	r2, .L287+40
	ldr	r3, [r2]
	ldr	r1, .L287+48
	add	r3, r3, #5
	str	r3, [r2]
	str	r0, [r1]
	b	.L231
.L235:
	mov	r2, #0
	mov	r1, #1
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r3, .L287+52
	str	r2, [r4, #48]
	ldr	r3, [r3]
	ldr	r2, .L287+56
	str	r1, [r7]
	str	r3, [r2]
	ldr	r3, [r9]
	b	.L236
.L242:
	ldr	r3, .L287+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L241
.L251:
	ldr	r3, .L287+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L286
.L249:
	ldr	r3, .L287+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L241
	ldr	r4, .L287+20
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L287+60
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L287+64
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L241
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L241
	ldr	r1, .L287+68
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r4, #4]
	bgt	.L241
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L241
.L284:
	ldr	r5, .L287+20
	ldr	r2, [r5, #8]
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	rsb	r2, r2, #0
	str	r1, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	str	r0, [sp, #4]
	ldr	r9, .L287+60
	mov	r1, #256
	ldr	r3, [r5]
	ldr	r2, [r5, #4]
	ldr	r0, [r9, #4]
	ldr	r10, .L287+64
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L243
	ldr	r0, .L287+72
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L287+24
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	r6, [r4]
	ble	.L244
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L244:
	ldr	r1, .L287+32
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L241
.L252:
	mov	ip, #0
	ldr	r1, [r5, #20]
	str	r2, [sp, #12]
	ldr	r2, [r5, #16]
	ldr	r0, [r9, #4]
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	beq	.L246
	ldr	r3, [r8]
	b	.L240
.L283:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L236
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L236
	mov	r1, #1
	ldr	r0, .L287+40
	ldr	r2, [r0]
	add	r2, r2, r1
	str	r2, [r0]
	str	r1, [r4, #52]
	b	.L236
.L245:
	ldr	r5, .L287+20
	ldr	r4, .L287+24
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r9, .L287+60
	ldr	r10, .L287+64
	b	.L252
.L286:
	ldr	r4, .L287+20
	add	r0, r4, #16
	ldr	r2, [r4, #12]
	ldm	r0, {r0, ip}
	rsb	r2, r2, #0
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, .L287+60
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L287+64
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L249
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L249
	ldr	r1, .L287+68
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4, #4]
	ble	.L249
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L249
.L282:
	ldr	r0, [r5]
	ldr	r1, [r4]
	cmp	r0, r1
	bge	.L236
	ldr	r0, [r5, #4]
	ldr	r1, [r4, #4]
	cmp	r0, r1
	bgt	.L236
	ldr	r0, .L287+40
	ldr	r1, [r0]
	add	r1, r1, #3
	str	r2, [r4, #52]
	str	r1, [r0]
	b	.L236
.L246:
	mov	r0, #1
	ldr	r1, .L287+72
	ldr	r3, [r5]
	ldr	r2, [r1]
	ldr	ip, [r5, #8]
	cmp	r2, #94
	add	r3, r3, ip
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L241
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L241
.L288:
	.align	2
.L287:
	.word	life
	.word	powerUp
	.word	crazy
	.word	down
	.word	jumping
	.word	guy
	.word	climbing
	.word	floating
	.word	67109120
	.word	collision
	.word	score
	.word	customer
	.word	delivered
	.word	frame
	.word	downFrame
	.word	.LANCHOR0
	.word	collisionCheck
	.word	hOff
	.word	vOff
	.size	updateGuy, .-updateGuy
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r0, .L361
	ldr	r6, .L361+4
	ldr	r1, [r0]
	ldr	r2, [r6]
	ldr	r4, .L361+8
	add	r2, r2, #1
	cmp	r1, #94
	str	r2, [r6]
	ldr	r3, [r4]
	sub	sp, sp, #20
	ble	.L354
.L290:
	sub	ip, r3, r1
	cmp	ip, #80
	ble	.L322
.L292:
	ldr	r1, .L361+12
	ldr	r0, [r1]
	ldr	r9, .L361+16
	ldr	r10, .L361+20
	cmp	r0, #0
	ldr	fp, [r10]
	ldr	r0, [r9]
	beq	.L294
	ldr	ip, .L361+24
	ldr	ip, [ip]
	sub	ip, r2, ip
	cmp	ip, #25
	beq	.L351
.L353:
	ldr	r8, .L361+28
	ldr	r7, .L361+32
.L295:
	ldr	ip, .L361+36
	ldr	r1, .L361+40
	ldr	lr, [ip]
	ldr	r1, [r1]
	cmp	lr, #0
	sub	r1, r2, r1
	beq	.L298
	ldr	lr, [r4, #28]
	cmp	lr, #0
	moveq	lr, #5
	bne	.L355
.L299:
	cmp	r1, #20
	moveq	r1, #0
	str	lr, [r4, #28]
	streq	r1, [ip]
	beq	.L300
.L298:
	cmp	r1, #70
	beq	.L356
.L300:
	ldr	r1, .L361+44
	ldr	ip, [r1]
	cmp	ip, #0
	beq	.L301
	ldr	ip, .L361+48
	ldr	ip, [ip]
	sub	ip, r2, ip
	cmp	ip, #150
	moveq	ip, #0
	streq	ip, [r1]
	streq	ip, [r4, #28]
.L301:
	ldr	ip, .L361+52
	ldr	r1, .L361+56
	ldr	lr, [ip]
	ldr	r1, [r1]
	cmp	lr, #0
	sub	r2, r2, r1
	bne	.L357
	cmp	r2, #600
	moveq	r1, #1
	ldreq	r2, .L361+60
	streq	r1, [r2, #16]
.L304:
	ldr	r1, [r4, #8]
	add	ip, r4, #16
	cmp	r0, #0
	ldr	r2, [r4, #4]
	ldm	ip, {ip, lr}
	rsb	r1, r1, #0
	bne	.L358
	ldr	r5, .L361+64
	ldr	r0, [r6]
	ldr	r5, [r5]
	sub	r0, r0, r5
.L319:
	cmp	r0, #600
	moveq	r5, #1
	ldreq	r0, .L361+68
	streq	r5, [r0, #16]
.L310:
	mov	r5, #0
	stm	sp, {ip, lr}
	str	r1, [sp, #12]
	ldr	r0, [r8, #4]
	mov	r1, #256
	str	r5, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, r5
	strne	r5, [r10]
	bl	updateGuy
	bl	updateDoor
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L359
.L312:
	bl	updateBoots
	ldr	r3, .L361+72
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L316
	mov	r1, #1
	ldr	r2, .L361+76
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L316
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L316
	str	r1, [r2, #56]
.L315:
	bl	updateShirt
	bl	updateBubble
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateCrazy
.L316:
	rsbs	r1, r3, #3
	beq	.L315
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L361+76
.L318:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L318
	b	.L315
.L351:
	mov	lr, #0
	mov	ip, #10
	str	lr, [r1]
	ldr	r1, .L361+80
	str	ip, [r1]
.L294:
	orrs	fp, r0, fp
	bne	.L353
	ldr	r2, .L361+80
	ldr	r8, .L361+28
	ldr	r5, [r2]
	ldr	r7, .L361+32
	b	.L296
.L297:
	sub	r5, r5, #1
.L296:
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	stmib	sp, {r1, fp}
	str	r2, [sp]
	mov	r1, #256
	str	r5, [sp, #12]
	ldr	r2, [r4, #4]
	ldr	r0, [r8]
	mov	lr, pc
	bx	r7
	cmp	r5, #0
	movle	r3, #0
	movgt	r3, #1
	cmp	r0, #0
	movne	r3, #0
	cmp	r3, #0
	ldr	r3, [r4]
	bne	.L297
	add	r3, r5, r3
	str	r3, [r4]
	ldr	r2, [r6]
	ldr	r0, [r9]
	b	.L295
.L357:
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [ip]
	b	.L304
.L354:
	sub	ip, r3, r1
	cmp	ip, #80
	ble	.L291
	add	r1, r1, #1
	cmp	r1, #0
	str	r1, [r0]
	ble	.L292
	b	.L290
.L356:
	ldr	r1, .L361+84
	ldr	ip, [r1, #44]
	cmp	ip, #0
	movne	ip, #0
	strne	ip, [r1, #44]
	b	.L300
.L291:
	cmp	r1, #0
	ble	.L292
.L322:
	sub	r1, r1, #1
	str	r1, [r0]
	b	.L292
.L355:
	ldr	lr, [r4, #32]
	cmp	lr, #0
	moveq	lr, #5
	movne	lr, #6
	b	.L299
.L359:
	bl	updateKey.part.0
	b	.L312
.L358:
	mov	r0, #0
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	mov	r1, #256
	stm	sp, {ip, lr}
	ldr	r0, [r8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldr	r3, [r4]
	bne	.L307
.L308:
	ldr	r2, .L361+64
	ldr	r0, [r6]
	ldr	r2, [r2]
	ldr	r1, [r4, #8]
	sub	r0, r0, r2
	add	ip, r4, #16
	cmp	r0, #80
	ldr	r2, [r4, #4]
	ldm	ip, {ip, lr}
	rsb	r1, r1, #0
	beq	.L360
	ldr	r5, [r9]
	cmp	r5, #0
	bne	.L310
	b	.L319
.L307:
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4]
	b	.L308
.L360:
	mov	r0, #0
	mov	r5, #10
	str	r0, [r9]
	ldr	r0, .L361+80
	str	r5, [r0]
	b	.L310
.L362:
	.align	2
.L361:
	.word	vOff
	.word	frame
	.word	guy
	.word	jumping
	.word	floating
	.word	climbing
	.word	jumpFrame
	.word	.LANCHOR0
	.word	collisionCheck
	.word	down
	.word	downFrame
	.word	powerUp
	.word	hammerFrame
	.word	jumpBoosted
	.word	bootsFrame
	.word	boots
	.word	bubbleFrame
	.word	bubble
	.word	life
	.word	heart
	.word	gravity
	.word	kong
	.size	updateGame, .-updateGame
	.align	2
	.global	animateCustomer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateCustomer, %function
animateCustomer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	animateCustomer, .-animateCustomer
	.align	2
	.global	animateCrazy
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateCrazy, %function
animateCrazy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	animateCrazy, .-animateCrazy
	.align	2
	.global	drawGuy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGuy, %function
drawGuy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #10
	ldr	r2, .L367
	ldr	r1, .L367+4
	ldr	ip, .L367+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L367+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L368:
	.align	2
.L367:
	.word	guy
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawGuy, .-drawGuy
	.align	2
	.global	drawDoor
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDoor, %function
drawDoor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L373
	ldr	r3, .L373+4
	ldr	r0, .L373+8
	str	lr, [sp, #-4]!
	ldr	ip, [r0]
	ldr	lr, [r3]
	ldr	r2, [r1]
	ldr	r3, [r1, #4]
	ldr	r1, [r1, #16]
	ldr	r0, .L373+12
	cmp	r1, #0
	sub	r2, r2, lr
	sub	r3, r3, ip
	orr	r2, r2, r0
	orr	r3, r3, r0
	movne	r0, #8
	moveq	r0, #26
	ldr	r1, .L373+16
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r0, [r1, #124]	@ movhi
	strh	r2, [r1, #120]	@ movhi
	strh	r3, [r1, #122]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L374:
	.align	2
.L373:
	.word	door
	.word	vOff
	.word	hOff
	.word	-32768
	.word	shadowOAM
	.size	drawDoor, .-drawDoor
	.align	2
	.global	drawKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey, %function
drawKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L378
	ldr	r2, .L378+4
	ldr	r0, .L378+8
	ldr	ip, [r2]
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	ldr	r1, [r1, #16]
	ldr	r0, [r0]
	cmp	r1, #0
	sub	r2, r2, r0
	movne	r0, #6
	moveq	r0, #26
	sub	r3, r3, ip
	orr	r3, r3, #16384
	ldr	r1, .L378+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #132]	@ movhi
	strh	r2, [r1, #128]	@ movhi
	strh	r3, [r1, #130]	@ movhi
	bx	lr
.L379:
	.align	2
.L378:
	.word	key
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawKey, .-drawKey
	.align	2
	.global	drawBoots
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoots, %function
drawBoots:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L383
	ldr	r2, .L383+4
	ldr	r0, .L383+8
	ldr	ip, [r2]
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	ldr	r1, [r1, #16]
	ldr	r0, [r0]
	cmp	r1, #0
	sub	r2, r2, r0
	movne	r0, #4
	moveq	r0, #26
	sub	r3, r3, ip
	orr	r3, r3, #16384
	ldr	r1, .L383+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #140]	@ movhi
	strh	r2, [r1, #136]	@ movhi
	strh	r3, [r1, #138]	@ movhi
	bx	lr
.L384:
	.align	2
.L383:
	.word	boots
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawBoots, .-drawBoots
	.align	2
	.global	drawShirt
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawShirt, %function
drawShirt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L388
	ldr	r2, .L388+4
	ldr	r0, .L388+8
	ldr	ip, [r2]
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	ldr	r1, [r1, #16]
	ldr	r0, [r0]
	cmp	r1, #0
	sub	r2, r2, r0
	movne	r0, #2
	moveq	r0, #30
	sub	r3, r3, ip
	orr	r3, r3, #16384
	ldr	r1, .L388+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #148]	@ movhi
	strh	r2, [r1, #144]	@ movhi
	strh	r3, [r1, #146]	@ movhi
	bx	lr
.L389:
	.align	2
.L388:
	.word	shirt
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawShirt, .-drawShirt
	.align	2
	.global	drawBubble
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBubble, %function
drawBubble:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L393
	ldr	r2, .L393+4
	ldr	r0, .L393+8
	ldr	ip, [r2]
	ldr	r3, [r1, #4]
	ldr	r2, [r1]
	ldr	r1, [r1, #16]
	ldr	r0, [r0]
	cmp	r1, #0
	sub	r2, r2, r0
	movne	r0, #15
	moveq	r0, #30
	sub	r3, r3, ip
	orr	r3, r3, #16384
	ldr	r1, .L393+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #156]	@ movhi
	strh	r2, [r1, #152]	@ movhi
	strh	r3, [r1, #154]	@ movhi
	bx	lr
.L394:
	.align	2
.L393:
	.word	bubble
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawBubble, .-drawBubble
	.align	2
	.global	drawCustomer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCustomer, %function
drawCustomer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #13
	ldr	r2, .L397
	ldr	r1, .L397+4
	ldr	ip, .L397+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L397+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #18]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L398:
	.align	2
.L397:
	.word	customer
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawCustomer, .-drawCustomer
	.align	2
	.global	drawCrazy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCrazy, %function
drawCrazy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #17
	ldr	r0, .L401
	ldr	r2, .L401+4
	ldr	r1, [r0, #4]
	ldrh	ip, [r2]
	ldr	r3, .L401+8
	ldr	r2, [r0, #60]
	ldrh	r4, [r3]
	sub	r1, r1, ip
	sub	r2, r2, ip
	ldr	ip, [r0]
	ldr	r0, [r0, #56]
	ldr	r3, .L401+12
	sub	ip, ip, r4
	sub	r0, r0, r4
	orr	r1, r1, #16384
	orr	r2, r2, #16384
	strh	lr, [r3, #28]	@ movhi
	strh	lr, [r3, #36]	@ movhi
	strh	r1, [r3, #26]	@ movhi
	strh	r2, [r3, #34]	@ movhi
	strh	ip, [r3, #24]	@ movhi
	strh	r0, [r3, #32]	@ movhi
	pop	{r4, lr}
	bx	lr
.L402:
	.align	2
.L401:
	.word	crazy
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawCrazy, .-drawCrazy
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
	push	{r4, r5, lr}
	mov	r4, #30
	mov	lr, #12
	ldr	r2, .L409
	ldr	r1, .L409+4
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r0, .L409+8
	sub	r3, r3, #8
	ldr	r1, [r2]
	sub	r3, r3, ip
	ldr	r2, [r0]
	lsl	r3, r3, #16
	sub	r1, r1, #8
	lsr	r3, r3, #16
	sub	r1, r1, r2
	add	ip, r3, #24
	lsl	r1, r1, #16
	lsl	ip, ip, #16
	ldr	r0, .L409+12
	ldr	r2, .L409+16
	lsr	r1, r1, #16
	lsr	ip, ip, #16
.L406:
	ldr	r5, [r0, #16]
	strh	r3, [r2, #74]	@ movhi
	add	r3, r3, #8
	lsl	r3, r3, #16
	cmp	r5, #0
	lsr	r3, r3, #16
	strhne	lr, [r2, #76]	@ movhi
	strheq	r4, [r2, #76]	@ movhi
	cmp	r3, ip
	strh	r1, [r2, #72]	@ movhi
	add	r0, r0, #20
	add	r2, r2, #8
	bne	.L406
	pop	{r4, r5, lr}
	bx	lr
.L410:
	.align	2
.L409:
	.word	guy
	.word	hOff
	.word	vOff
	.word	heart
	.word	shadowOAM
	.size	drawHeart, .-drawHeart
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
	mov	r1, #10
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r2, .L413
	ldr	r6, .L413+4
	ldr	r5, .L413+8
	ldr	ip, [r6]
	ldr	r3, [r2, #4]
	ldr	r0, [r5]
	ldr	r2, [r2]
	ldr	r4, .L413+12
	sub	r3, r3, ip
	sub	r2, r2, r0
	orr	r3, r3, #16384
	strh	r3, [r4, #2]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	bl	drawDoor
	bl	drawKey
	bl	drawBoots
	bl	drawHeart
	bl	drawShirt
	mov	r1, #13
	ldr	r2, .L413+16
	ldr	ip, [r6]
	ldr	r3, [r2, #4]
	ldr	r0, [r5]
	ldr	r2, [r2]
	sub	r3, r3, ip
	sub	r2, r2, r0
	orr	r3, r3, #16384
	strh	r2, [r4, #16]	@ movhi
	strh	r3, [r4, #18]	@ movhi
	strh	r1, [r4, #20]	@ movhi
	bl	drawBubble
	mov	ip, #17
	ldr	r1, .L413+20
	ldm	r1, {r0, r2}
	add	r1, r1, #56
	ldrh	r7, [r6]
	ldm	r1, {r1, r3}
	ldrh	lr, [r5]
	sub	r2, r2, r7
	sub	r3, r3, r7
	sub	r0, r0, lr
	sub	r1, r1, lr
	orr	r2, r2, #16384
	orr	r3, r3, #16384
	strh	r0, [r4, #24]	@ movhi
	strh	r1, [r4, #32]	@ movhi
	strh	r2, [r4, #26]	@ movhi
	strh	r3, [r4, #34]	@ movhi
	strh	ip, [r4, #28]	@ movhi
	strh	ip, [r4, #36]	@ movhi
	ldr	r0, .L413+24
	mov	lr, pc
	bx	r0
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L413+28
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
.L414:
	.align	2
.L413:
	.word	guy
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	customer
	.word	crazy
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
	.comm	bubble,20,4
	.comm	door,20,4
	.comm	key,20,4
	.comm	boots,20,4
	.comm	shirt,20,4
	.comm	scoreUI,40,4
	.comm	heart,60,4
	.comm	crazy,112,4
	.comm	hammer,52,4
	.comm	customer,52,4
	.comm	kong,52,4
	.comm	guy,52,4
	.global	laddercollisionMap
	.global	collisionMap
	.comm	time_s,4,4
	.comm	time_m,4,4
	.comm	bubbleFrame,4,4
	.comm	bootsFrame,4,4
	.comm	hammerFrame,4,4
	.comm	downFrame,4,4
	.comm	jumpFrame,4,4
	.comm	score,4,4
	.comm	frame,4,4
	.comm	floating,4,4
	.comm	jumpBoosted,4,4
	.comm	powerUp,4,4
	.comm	climbing,4,4
	.comm	down,4,4
	.comm	jumping,4,4
	.comm	lost,4,4
	.comm	won,4,4
	.comm	paused,4,4
	.comm	gravity,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	delivered,4,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
