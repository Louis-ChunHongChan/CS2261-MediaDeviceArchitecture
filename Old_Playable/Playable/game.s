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
	mov	r2, #1
	mov	ip, #16
	mov	r4, #230
	mov	lr, #200
	mov	r0, #0
	mov	r1, #2
	ldr	r3, .L43
	stm	r3, {r4, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #48]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	str	r1, [r3, #40]
	str	r1, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
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
	mov	r0, #164
	mov	r1, #476
	mov	r2, #1
	ldr	r3, .L47
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L48:
	.align	2
.L47:
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
	mov	ip, #152
	mov	r0, #324
	mov	r1, #1
	ldr	r3, .L50
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L51:
	.align	2
.L50:
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
	mov	ip, #56
	mov	r0, #356
	mov	r1, #1
	ldr	r3, .L53
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L54:
	.align	2
.L53:
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
	mov	r1, #1
	ldr	r3, .L56
	ldr	r0, .L56+4
	str	r2, [r3, #8]
	stm	r3, {r0, r2}
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L57:
	.align	2
.L56:
	.word	shirt
	.word	282
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
	mov	r1, #200
	ldr	r3, .L59
	ldr	r0, .L59+4
	str	r2, [r3, #16]
	stm	r3, {r0, r1}
	str	r2, [r3, #20]
	bx	lr
.L60:
	.align	2
.L59:
	.word	customer
	.word	281
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
	mov	r0, #316
	mov	r1, #1
	ldr	r3, .L62
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L63:
	.align	2
.L62:
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	mov	r0, #16
	mov	r9, r5
	mov	r6, r5
	mov	r2, r5
	mov	ip, r5
	mov	r1, #1
	ldr	lr, .L123
	ldr	r4, [lr, #180]
	sub	sp, sp, #36
	str	r4, [sp, #20]
	ldr	r4, [lr, #184]
	str	r4, [sp, #24]
	ldr	r4, [lr, #120]
	str	r4, [sp, #8]
	ldr	r4, [lr, #124]
	str	r4, [sp, #12]
	ldr	r4, [lr, #240]
	add	r10, lr, #60
	mov	r3, lr
	ldr	r8, [lr]
	ldr	r7, [lr, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #4]
	ldm	r10, {r10, fp}
	str	r4, [sp, #28]
	ldr	lr, [lr, #244]
.L77:
	cmp	r2, #0
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	ip, [r3, #56]
	beq	.L83
	cmp	r2, #1
	beq	.L84
	cmp	r2, #2
	bne	.L120
	mov	r4, #24
	str	r4, [sp, #12]
	mov	r4, #1
	str	r4, [sp, #4]
	mov	r4, #384
	str	r4, [sp, #8]
.L68:
	add	r2, r2, #1
	cmp	r2, #6
	str	ip, [r3, #44]
	str	r1, [r3, #48]
	add	r3, r3, #60
	bne	.L77
	cmp	r6, #0
	ldrne	r3, .L123
	strne	r8, [r3]
	strne	r7, [r3, #4]
	cmp	r9, #0
	ldrne	r3, .L123
	strne	r10, [r3, #60]
	strne	fp, [r3, #64]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ldrne	r2, .L123
	ldrne	r3, [sp, #8]
	strne	r3, [r2, #120]
	ldrne	r3, [sp, #12]
	strne	r3, [r2, #124]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ldrne	r3, [sp, #20]
	ldrne	r2, .L123
	strne	r3, [r2, #180]
	ldrne	r3, [sp, #24]
	strne	r3, [r2, #184]
	cmp	r5, #0
	ldrne	r2, .L123
	ldrne	r3, [sp, #28]
	strne	lr, [r2, #244]
	strne	r3, [r2, #240]
	b	.L64
.L83:
	mov	r7, #136
	mov	r6, #1
	mov	r8, #488
	b	.L68
.L120:
	cmp	r2, #3
	bne	.L121
	mov	r4, #40
	str	r4, [sp, #24]
	mov	r4, #1
	str	r4, [sp, #16]
	mov	r4, #328
	str	r4, [sp, #20]
	b	.L68
.L121:
	cmp	r2, #4
	beq	.L122
	cmp	r2, #5
	bne	.L68
	cmp	r6, #0
	ldrne	r3, .L123
	strne	r8, [r3]
	strne	r7, [r3, #4]
	cmp	r9, #0
	ldrne	r3, .L123
	strne	r10, [r3, #60]
	strne	fp, [r3, #64]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ldrne	r2, .L123
	ldrne	r3, [sp, #8]
	strne	r3, [r2, #120]
	ldrne	r3, [sp, #12]
	strne	r3, [r2, #124]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ldrne	r3, [sp, #20]
	ldrne	r2, .L123
	strne	r3, [r2, #180]
	ldrne	r3, [sp, #24]
	strne	r3, [r2, #184]
	cmp	r5, #0
	ldrne	r3, [sp, #28]
	ldrne	r2, .L123
	strne	r3, [r2, #240]
	movne	r3, r2
	mov	r0, #400
	mov	r1, #152
	mov	r2, #0
	strne	lr, [r3, #244]
	mov	r3, #1
	ldr	ip, .L123
	str	r0, [ip, #300]
	str	r1, [ip, #304]
	str	r2, [ip, #344]
	str	r3, [ip, #348]
.L64:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L84:
	mov	fp, #152
	mov	r9, r2
	mov	r10, #424
	b	.L68
.L122:
	mov	r2, #280
	str	ip, [r3, #44]
	str	r1, [r3, #48]
	str	r2, [sp, #28]
	mov	lr, #120
	mov	r5, #1
	mov	r2, #5
	add	r3, r3, #60
	b	.L77
.L124:
	.align	2
.L123:
	.word	crazy
	.size	initCrazy, .-initCrazy
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
	mov	r5, #3
	mov	r8, #10
	mov	r6, #67108864
	mov	ip, #99
	mov	r1, #5
	ldr	r0, .L127
	ldr	r2, .L127+4
	ldr	r3, .L127+8
	ldr	lr, .L127+12
	str	r5, [r0]
	str	r4, [r2]
	str	r4, [r3]
	str	r4, [lr]
	ldr	r0, .L127+16
	ldr	r2, .L127+20
	ldr	r3, .L127+24
	ldr	lr, .L127+28
	str	r4, [r0]
	str	r4, [r2]
	str	r4, [r3]
	str	r4, [lr]
	ldr	r0, .L127+32
	ldr	r2, .L127+36
	ldr	r3, .L127+40
	ldr	lr, .L127+44
	str	r4, [r0]
	str	r4, [r2]
	str	r4, [r3]
	str	r4, [lr]
	ldr	r7, .L127+48
	ldr	lr, .L127+52
	ldr	r0, .L127+56
	ldr	r2, .L127+60
	ldr	r3, .L127+64
	str	r4, [r0]
	str	r4, [r2]
	str	r8, [lr]
	str	r4, [r3]
	ldr	r8, .L127+68
	ldrh	r3, [r7]
	ldr	r0, .L127+72
	ldr	r2, .L127+76
	str	ip, [r0]
	str	r1, [r2]
	strh	r3, [r6, #18]	@ movhi
	ldrh	r3, [r8]
	mov	r0, r5
	strh	r3, [r6, #16]	@ movhi
	ldr	r9, .L127+80
	mov	r3, #256
	ldr	r2, .L127+84
	ldr	r1, .L127+88
	mov	lr, pc
	bx	r9
	mov	r0, r5
	mov	r3, #16384
	ldr	r2, .L127+92
	ldr	r1, .L127+96
	mov	lr, pc
	bx	r9
	mov	lr, #2
	mov	r3, #16
	mov	r5, #1
	ldr	r1, .L127+100
	mov	ip, #200
	mov	r2, #230
	str	lr, [r1, #40]
	str	lr, [r1, #28]
	mov	r9, #164
	mov	lr, #476
	str	ip, [r1, #4]
	str	r2, [r1]
	str	r3, [r1, #16]
	str	r5, [r1, #12]
	str	r5, [r1, #8]
	str	r4, [r1, #24]
	str	r4, [r1, #36]
	str	r3, [r1, #20]
	str	r5, [r1, #48]
	mov	r10, #32
	ldr	r1, .L127+104
	str	r9, [r1, #4]
	str	lr, [r1]
	mov	r9, #324
	mov	lr, #152
	str	r3, [r1, #8]
	str	r5, [r1, #16]
	str	r10, [r1, #12]
	ldr	r1, .L127+108
	mov	r0, #214
	stm	r1, {r9, lr}
	mov	fp, #184
	mov	lr, #56
	mov	r10, #356
	ldr	r2, .L127+112
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r5, [r1, #16]
	ldr	r1, .L127+116
	str	r3, [r2, #8]
	stm	r1, {r10, lr}
	str	r3, [r2, #12]
	str	r5, [r2, #16]
	str	r3, [r2, #28]
	str	fp, [r2, #4]
	str	r0, [r2]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r5, [r1, #16]
	str	r3, [r2, #32]
	str	r0, [r2, #20]
	str	r0, [r2, #40]
	mov	r0, #216
	ldr	r1, .L127+120
	str	ip, [r2, #24]
	str	r5, [r2, #36]
	str	r3, [r2, #48]
	str	r3, [r2, #52]
	str	r5, [r2, #56]
	str	r0, [r2, #44]
	ldr	r2, .L127+124
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r3, [r1, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	mov	fp, #24
	mov	r3, #316
	add	r0, r0, #66
	stm	r2, {r3, fp}
	str	r5, [r1, #16]
	str	r0, [r1]
	str	r5, [r2, #16]
	bl	initCrazy
	ldr	r3, .L127+128
	mov	lr, pc
	bx	r3
	mov	r1, #49152
	mov	r2, #195
	mov	r9, #17
	mov	ip, #96
	ldr	r3, .L127+132
	strh	r4, [r3, #6]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldrh	r2, [r6, #4]
	ldrh	r0, [r3, #48]
	orr	r3, r2, #8
	strh	r3, [r6, #4]	@ movhi
	ldr	r1, .L127+136
	ldr	lr, .L127+140
	ldr	r3, .L127+144
	ldr	r2, .L127+148
	strh	r5, [r1, #8]	@ movhi
	strh	r9, [r1]	@ movhi
	str	r2, [lr, #4092]
	str	r4, [r8]
	str	ip, [r7]
	strh	r0, [r3]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L128:
	.align	2
.L127:
	.word	life
	.word	delivered
	.word	jumping
	.word	down
	.word	climbing
	.word	powerUp
	.word	jumpBoosted
	.word	frame
	.word	score
	.word	jumpFrame
	.word	downFrame
	.word	crazyFrame
	.word	vOff
	.word	gravity
	.word	hammerFrame
	.word	bootsFrame
	.word	floating
	.word	hOff
	.word	time_m
	.word	time_s
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	guy
	.word	door
	.word	key
	.word	heart
	.word	boots
	.word	shirt
	.word	bubble
	.word	hideSprites
	.word	67109120
	.word	67109376
	.word	50360320
	.word	buttons
	.word	interruptHandler
	.size	initGame, .-initGame
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
	ldr	r3, .L133
	ldr	r1, [r3, #4]
	ldr	ip, [r3]
	ldr	r3, .L133+4
	sub	r2, r1, #16
	sub	ip, ip, #16
	add	r1, r1, #32
.L130:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, r1
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	ip, [r3]
	str	lr, [r3, #16]
	add	r3, r3, #20
	bne	.L130
	ldr	lr, [sp], #4
	bx	lr
.L134:
	.align	2
.L133:
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
	ldr	r4, .L148
	ldr	r5, .L148+4
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
	bne	.L146
	ldr	r6, .L148+8
.L136:
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	subne	r3, r3, #1
	strne	r3, [r4, #4]
.L135:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L146:
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	ldr	r6, .L148+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r5, #16]
	bne	.L135
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L135
	add	r2, r4, #16
	add	r7, r5, #8
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	ip, [r5, #4]
	ldr	lr, [r5]
	ldm	r7, {r7, r8}
	b	.L136
.L149:
	.align	2
.L148:
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
	ldr	r3, .L152
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bxne	lr
	b	updateKey.part.0
.L153:
	.align	2
.L152:
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
	ldr	r4, .L163
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L162
.L154:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L162:
	ldr	r0, .L163+4
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
	ldr	r5, .L163+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L154
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L163+12
	ldr	r0, .L163+16
	ldr	ip, [r3]
	ldr	r3, .L163+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L164:
	.align	2
.L163:
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
	ldr	r4, .L174
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L173
.L165:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L173:
	ldr	r0, .L174+4
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
	ldr	r5, .L174+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L165
	mov	r1, #0
	ldr	r2, .L174+12
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L175:
	.align	2
.L174:
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
	ldr	r4, .L185
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L184
.L176:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L184:
	ldr	r0, .L185+4
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
	ldr	r5, .L185+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L176
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L185+12
	ldr	r0, .L185+16
	ldr	ip, [r3]
	ldr	r3, .L185+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L186:
	.align	2
.L185:
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L234
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, [r1, #136]
	ldr	r0, .L234+4
	sub	r9, r7, r7, lsl #2
	ldr	r10, [r0]
	lsl	r0, r9, #1
	mov	r9, r0
	mov	r3, #0
	sub	sp, sp, #44
	rsb	r0, r7, #57
	ldr	r5, [r1, #196]
	str	r0, [sp, #24]
	add	r9, r9, #120
	str	r9, [sp, #28]
	ldr	r9, [sp, #24]
	rsb	r8, r5, #30
	ldr	ip, .L234+8
	sub	r5, r5, r5, lsl #3
	str	r5, [sp, #32]
	lsl	r9, r9, #1
	ldr	ip, [ip]
	str	r9, [sp, #24]
	ldr	r9, [sp, #32]
	ldr	r4, [r1, #16]
	str	ip, [sp, #36]
	ldr	r0, [r1, #124]
	add	r9, r9, #127
	str	r9, [sp, #32]
	lsl	r8, r8, #2
	ldr	r9, [sp, #36]
	str	r0, [sp, #12]
	add	fp, r4, #60
	add	r8, r8, #5
	rsb	r4, r4, #28
	mov	r2, r1
	ldr	r7, [r1, #132]
	ldr	r0, [r1, #4]
	ldr	ip, [r1, #12]
	ldr	r5, [r1, #184]
	sub	r10, r9, r10
	mov	r6, r3
	mov	lr, r3
	str	r3, [sp, #4]
	str	r3, [sp, #20]
	str	r3, [sp, #16]
	str	r3, [sp, #8]
	ldr	r1, [r1, #192]
	str	r8, [sp, #36]
	ldr	r9, [sp, #12]
	lsl	fp, fp, #1
	lsl	r4, r4, #2
	b	.L201
.L190:
	cmp	r3, #2
	beq	.L233
	cmp	r3, #3
	bne	.L193
	ldr	r8, [sp, #36]
	cmp	r8, r5
	ldr	r8, [sp, #4]
	movlt	r8, #1
	str	r8, [sp, #4]
	ldr	r8, [sp, #32]
	mvnlt	r1, #0
	cmp	r8, r5
	movge	r1, #1
	mov	r8, #1
	strge	r1, [sp, #4]
	str	r8, [sp, #20]
	add	r5, r5, r1
.L197:
	add	r3, r3, #1
	add	r2, r2, #60
.L201:
	cmp	r10, #49
	ble	.L189
	ldr	r8, [r2, #48]
	cmp	r8, #0
	moveq	r8, #1
	streq	r8, [r2, #48]
.L189:
	cmp	r3, #0
	bne	.L190
	cmp	fp, r0
	movle	lr, #1
	mvnle	ip, #0
	cmp	r4, r0
	movge	lr, #1
	mov	r8, #1
	movge	ip, lr
	str	r8, [sp, #8]
	add	r0, r0, ip
	b	.L197
.L193:
	cmp	r3, #5
	bne	.L197
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ldrne	r3, .L234
	strne	r0, [r3, #4]
	cmp	lr, #0
	ldrne	r3, .L234
	strne	ip, [r3, #12]
	ldr	r3, [sp, #16]
	str	r9, [sp, #12]
	cmp	r3, #0
	ldrne	r3, .L234
	ldrne	r2, [sp, #12]
	strne	r2, [r3, #124]
	cmp	r6, #0
	ldrne	r3, .L234
	strne	r7, [r3, #132]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ldrne	r3, .L234
	strne	r5, [r3, #184]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ldrne	r3, .L234
	strne	r1, [r3, #192]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L233:
	ldr	r8, [sp, #24]
	cmp	r8, r9
	ldr	r8, [sp, #28]
	movle	r6, #1
	mvnle	r7, #0
	cmp	r8, r9
	movge	r6, #1
	mov	r8, #1
	movge	r7, r6
	str	r8, [sp, #16]
	add	r9, r9, r7
	b	.L197
.L235:
	.align	2
.L234:
	.word	crazy
	.word	crazyFrame
	.word	frame
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
	ldr	r3, .L254
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L237
	mov	r1, #1
	ldr	r2, .L254+4
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L237
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L237
	str	r1, [r2, #56]
	bx	lr
.L237:
	rsbs	r1, r3, #3
	bxeq	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L254+4
.L240:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L240
	bx	lr
.L255:
	.align	2
.L254:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r2, .L314
	ldr	r4, .L314+4
	ldr	r6, [r2]
	ldr	r2, [r4, #28]
	cmp	r6, #0
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #20
	beq	.L257
	ldr	r3, .L314+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L257:
	ldr	r5, [r4, #24]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L314+12
	add	r3, r3, r3, lsl #8
	ldr	r1, .L314+16
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L259
	ldr	r0, [r4, #36]
	ldr	r3, .L314+20
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L259:
	ldr	r3, .L314+24
	ldr	r2, [r3]
	ldr	r3, .L314+28
	cmp	r2, #0
	ldr	r3, [r3]
	beq	.L310
	orrs	r3, r6, r3
	bne	.L309
	ldr	r2, .L314+32
	ldr	r3, .L314+36
	ldr	r2, [r2]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L309
	ldr	r3, .L314+8
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L311
.L280:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L282
.L279:
	sub	r2, r2, #24
	add	r3, r3, #15
	stm	r4, {r2, r3}
.L309:
	ldr	r3, [r4, #28]
.L268:
	cmp	r3, #10
	beq	.L312
.L266:
	ldr	r5, [r4, #24]
.L282:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L310:
	cmp	r3, #0
	bne	.L309
	ldr	r5, .L314+36
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L309
	ldr	r3, .L314+8
	ldrh	r2, [r3, #48]
	tst	r2, #32
	ldrh	r3, [r3, #48]
	bne	.L262
	cmp	r6, #0
	bne	.L309
	tst	r3, #16
	str	r6, [r4, #28]
	beq	.L264
	ldr	r3, .L314+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L266
.L265:
	ldr	r3, .L314+40
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L266
	ldr	r3, .L314+44
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L266
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	ldr	r7, .L314+48
	str	r3, [sp, #8]
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r0, [r7]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r6, .L314+52
	mov	lr, pc
	bx	r6
	subs	ip, r0, #0
	beq	.L271
	ldr	r3, [r4, #28]
	b	.L270
.L312:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L262:
	tst	r3, #16
	beq	.L313
	cmp	r6, #0
	ldr	r3, [r4, #28]
	bne	.L268
	ldr	r2, .L314+32
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L268
	cmp	r3, #0
	beq	.L265
.L270:
	cmp	r3, #2
	bne	.L268
.L269:
	ldr	r3, .L314+40
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L266
	ldr	r3, .L314+44
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L266
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	ldr	r7, .L314+48
	str	r3, [sp, #8]
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r0, [r7]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r6, .L314+52
	mov	lr, pc
	bx	r6
	subs	ip, r0, #0
	bne	.L309
	mvn	r9, #23
	mov	r8, #15
	mov	r3, #3
	mov	r2, #1
	ldr	r0, .L314+56
	ldr	r1, .L314+60
	ldr	lr, [r0]
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	str	lr, [r1]
	ldr	r1, [r4, #20]
	ldr	lr, .L314+64
	str	r1, [sp, #4]
	ldr	r1, [r4, #16]
	str	r3, [r4, #28]
	str	r1, [sp]
	ldr	r0, [r7]
	str	r2, [r5]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	str	ip, [lr]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L309
	ldr	r3, .L314+68
	ldr	r3, [r3]
	cmp	r3, #0
	ldm	r4, {r2, r3}
	beq	.L279
	add	r3, r3, #25
	sub	r2, r2, #50
	stm	r4, {r2, r3}
	ldr	r3, [r4, #28]
	b	.L268
.L313:
	cmp	r6, #0
	bne	.L309
.L264:
	mov	r3, #2
	ldr	r2, .L314+32
	ldr	r2, [r2]
	cmp	r2, #0
	str	r3, [r4, #28]
	beq	.L269
	b	.L266
.L311:
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L309
	b	.L280
.L271:
	mvn	lr, #14
	mov	r2, #1
	mvn	r8, #23
	ldr	r1, .L314+56
	ldr	r1, [r1]
	str	lr, [sp, #8]
	ldr	lr, [r4, #20]
	str	lr, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	r3, .L314+60
	str	lr, [sp]
	ldr	lr, .L314+64
	str	r8, [sp, #12]
	str	r2, [r4, #28]
	str	r1, [r3]
	str	r2, [r5]
	mov	r1, #256
	ldr	r0, [r7]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	str	ip, [lr]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L309
	ldr	r3, .L314+68
	ldr	r3, [r3]
	ldm	r4, {r1, r2}
	cmp	r3, #0
	subne	r1, r1, #50
	subne	r2, r2, #25
	subeq	r1, r1, #24
	subeq	r2, r2, #15
	stm	r4, {r1, r2}
	ldr	r3, [r4, #28]
	b	.L268
.L315:
	.align	2
.L314:
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
	.word	.LANCHOR0
	.word	collisionCheck
	.word	frame
	.word	jumpFrame
	.word	gravity
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
	ldr	r10, .L375
	ldr	r3, [r10]
	cmp	r3, #0
	sub	sp, sp, #20
	bgt	.L367
.L318:
	ldr	r9, .L375+4
	ldr	r4, .L375+8
	ldr	r3, [r9]
	ldr	r8, .L375+12
	ldr	r7, .L375+16
	ldr	fp, .L375+20
	ldr	r6, .L375+24
	add	r5, r4, #360
.L324:
	cmp	r3, #0
	bne	.L320
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L368
.L321:
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L320
	ldr	r1, [r8]
	ldr	r2, [fp]
	orrs	r2, r1, r2
	bne	.L320
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L320
	ldr	r2, [r6, #28]
	cmp	r2, #1
	beq	.L369
	cmp	r2, #3
	beq	.L370
.L320:
	add	r4, r4, #60
	cmp	r5, r4
	bne	.L324
.L373:
	ldr	r2, [r8]
	orrs	r3, r3, r2
	ldr	r3, [r7]
	bne	.L366
	cmp	r3, #0
	bne	.L326
	ldr	r3, .L375+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L327
	ldr	r3, .L375+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L371
.L328:
	ldr	r3, .L375+32
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L330
	ldr	r3, [r7]
.L366:
	ldr	r4, .L375+20
.L325:
	ldr	r2, [r4]
	orrs	r3, r3, r2
	bne	.L326
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L336
.L326:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateGuy
.L368:
	add	r0, r4, #16
	ldm	r0, {r0, r1}
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
	add	r2, r6, #16
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
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	ldr	ip, .L375+36
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L372
	mov	r2, #1
	mov	r1, #0
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r3, .L375+40
	str	r1, [r4, #48]
	ldr	r3, [r3]
	str	r2, [r8]
	ldr	r1, .L375+44
	ldr	r2, .L375+48
	add	r4, r4, #60
	cmp	r5, r4
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r9]
	bne	.L324
	b	.L373
.L372:
	ldr	r3, [r9]
	b	.L321
.L367:
	ldr	r2, .L375+52
	add	ip, r2, #16
	ldr	r0, .L375+24
	ldm	r2, {r1, r2}
	ldm	ip, {ip, lr}
	ldr	r3, [r0, #20]
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	ldr	r4, .L375+36
	ldr	r2, [r0, #16]
	ldr	r1, [r0]
	lsl	r3, r3, #1
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L318
	mov	r0, #1
	ldr	r2, .L375+56
	ldr	r3, [r2]
	ldr	r1, .L375+60
	add	r3, r3, #5
	str	r3, [r2]
	str	r0, [r1]
	b	.L318
.L327:
	ldr	r3, .L375+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L326
.L336:
	ldr	r3, .L375+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L374
.L334:
	ldr	r3, .L375+32
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L326
	ldr	r4, .L375+24
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L375+64
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L375+68
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L326
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L326
	ldr	r1, .L375+72
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r4, #4]
	bgt	.L326
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L326
.L369:
	ldr	r0, [r6]
	ldr	r1, [r4]
	cmp	r0, r1
	bge	.L320
	ldr	r0, [r6, #4]
	ldr	r1, [r4, #4]
	cmp	r0, r1
	bgt	.L320
	ldr	r0, .L375+56
	ldr	r1, [r0]
	add	r1, r1, #3
	str	r2, [r4, #52]
	str	r1, [r0]
	b	.L320
.L370:
	ldr	r1, [r6]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L320
	ldr	r1, [r6, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L320
	mov	r1, #1
	ldr	r0, .L375+56
	ldr	r2, [r0]
	add	r2, r2, r1
	str	r2, [r0]
	str	r1, [r4, #52]
	b	.L320
.L371:
	ldr	r5, .L375+24
	ldr	r2, [r5, #16]
	cmp	r2, #0
	add	r1, r2, #3
	movge	r1, r2
	ldr	r0, [r5, #8]
	ldr	lr, [r5, #20]
	ldr	ip, [r5, #4]
	asr	r1, r1, #2
	rsb	r0, r0, #0
	str	r1, [sp]
	str	r3, [sp, #8]
	str	r0, [sp, #12]
	str	lr, [sp, #4]
	ldr	r6, .L375+64
	add	r2, r2, r2, lsr #31
	add	r2, ip, r2, asr #1
	mov	r1, #256
	ldr	r3, [r5]
	ldr	r0, [r6]
	ldr	r9, .L375+76
	sub	r2, r2, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L328
	mov	ip, #1
	ldr	r1, .L375+80
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r2, [r1]
	ldr	r4, .L375+20
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5]
	str	ip, [r4]
	ble	.L329
	sub	ip, r3, r2
	cmp	ip, #80
	suble	r2, r2, #1
	strle	r2, [r1]
.L329:
	ldr	r2, .L375+32
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L326
.L337:
	ldr	r2, [r5, #16]
	cmp	r2, #0
	add	r1, r2, #3
	movge	r1, r2
	mov	ip, #0
	str	r0, [sp, #12]
	ldr	r0, [r5, #4]
	asr	r1, r1, #2
	add	r2, r2, r2, lsr #31
	add	r2, r0, r2, asr #1
	ldr	r0, [r6]
	str	r1, [sp]
	ldr	r1, [r5, #20]
	sub	r2, r2, #1
	stmib	sp, {r1, ip}
	mov	r1, #256
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L331
	ldr	r3, [r7]
	b	.L325
.L330:
	ldr	r5, .L375+24
	ldr	r4, .L375+20
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r6, .L375+64
	ldr	r9, .L375+76
	b	.L337
.L374:
	ldr	r4, .L375+24
	add	r0, r4, #16
	ldr	r2, [r4, #12]
	ldm	r0, {r0, ip}
	rsb	r2, r2, #0
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, .L375+64
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L375+68
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L334
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L334
	ldr	r1, .L375+72
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4, #4]
	ble	.L334
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L334
.L331:
	mov	r0, #1
	ldr	r1, .L375+80
	ldr	ip, .L375+84
	ldr	r2, [r1]
	ldr	r3, [r5]
	cmp	r2, ip
	ldr	ip, [r5, #8]
	add	r3, r3, ip
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L326
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L326
.L376:
	.align	2
.L375:
	.word	life
	.word	powerUp
	.word	crazy
	.word	down
	.word	jumping
	.word	climbing
	.word	guy
	.word	floating
	.word	67109120
	.word	collision
	.word	frame
	.word	downFrame
	.word	crazyFrame
	.word	customer
	.word	score
	.word	delivered
	.word	.LANCHOR0
	.word	collisionCheck
	.word	hOff
	.word	collisionLadderCheck
	.word	vOff
	.word	350
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
	ldr	r1, .L456
	ldr	r6, .L456+4
	ldr	r2, [r1]
	ldr	r3, [r6]
	ldr	r0, .L456+8
	add	r3, r3, #1
	cmp	r2, r0
	ldr	r4, .L456+12
	str	r3, [r6]
	sub	sp, sp, #20
	ble	.L444
.L378:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L414
.L380:
	ldr	r2, .L456+16
	ldr	r1, [r2]
	ldr	r8, .L456+20
	ldr	r7, .L456+24
	cmp	r1, #0
	ldr	r5, [r7]
	ldr	r1, [r8]
	beq	.L382
	ldr	r0, .L456+28
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #25
	beq	.L447
.L383:
	ldr	r2, .L456+32
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L387
	ldr	r0, [r4, #28]
	cmp	r0, #0
	moveq	ip, #5
	bne	.L448
.L388:
	ldr	r0, .L456+36
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #30
	moveq	r0, #0
	str	ip, [r4, #28]
	streq	r0, [r2]
.L387:
	ldr	r2, .L456+40
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L390
	ldr	r0, .L456+44
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #150
	moveq	r0, #0
	streq	r0, [r2]
	streq	r0, [r4, #28]
.L390:
	ldr	r0, .L456+48
	ldr	r2, .L456+52
	ldr	ip, [r0]
	ldr	r2, [r2]
	cmp	ip, #0
	sub	r2, r3, r2
	bne	.L449
	cmp	r2, #300
	moveq	r0, #1
	ldreq	r2, .L456+56
	streq	r0, [r2, #16]
.L393:
	cmp	r1, #0
	bne	.L450
.L395:
	ldr	r2, .L456+60
	ldr	r2, [r2]
	sub	r3, r3, r2
.L399:
	cmp	r3, #300
	moveq	r2, #1
	ldreq	r3, .L456+64
	streq	r2, [r3, #16]
.L400:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L451
.L402:
	bl	updateGuy
	bl	updateDoor
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L452
.L404:
	bl	updateBoots
	ldr	r3, .L456+68
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L409
	mov	r1, #1
	ldr	r2, .L456+72
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L409
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L409
	str	r1, [r2, #56]
.L407:
	bl	updateShirt
	bl	updateBubble
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateCrazy
.L409:
	rsbs	r1, r3, #3
	beq	.L407
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L456+72
.L411:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r1, r2
	add	r3, r3, #20
	bne	.L411
	b	.L407
.L447:
	mov	ip, #0
	mov	r0, #10
	str	ip, [r2]
	ldr	r2, .L456+76
	str	r0, [r2]
.L382:
	orrs	r5, r1, r5
	bne	.L383
	ldr	r10, .L456+80
	ldr	r9, .L456+84
	ldr	fp, .L456+76
	b	.L413
.L453:
	ldr	r3, [fp]
	cmp	r3, r5
	ble	.L384
	add	r5, r5, #1
.L413:
	mov	r1, #0
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	str	r5, [sp, #12]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r10]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L453
.L384:
	ldr	r3, [r4]
	sub	r5, r5, #1
	add	r5, r3, r5
	str	r5, [r4]
	ldr	r3, [r6]
	ldr	r1, [r8]
	b	.L383
.L449:
	cmp	r2, #120
	moveq	r2, #0
	streq	r2, [r0]
	cmp	r1, #0
	beq	.L395
.L450:
	mov	ip, #0
	ldr	r3, [r4, #8]
	rsb	r3, r3, #0
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, .L456+80
	ldr	r3, [r4]
	ldr	r0, [r0]
	ldr	r5, .L456+84
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L454
.L396:
	ldr	r2, .L456+60
	ldr	r3, [r6]
	ldr	r2, [r2]
	sub	r3, r3, r2
	cmp	r3, #130
	beq	.L455
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L399
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L402
.L451:
	mov	ip, #0
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	ip, [sp, #8]
	ldr	r0, .L456+80
	ldr	r5, .L456+84
	ldr	r0, [r0]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	streq	r0, [r7]
	b	.L402
.L444:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L379
	add	r2, r2, #1
	cmp	r2, #0
	str	r2, [r1]
	ble	.L380
	b	.L378
.L379:
	cmp	r2, #0
	ble	.L380
.L414:
	sub	r2, r2, #1
	str	r2, [r1]
	b	.L380
.L448:
	ldr	r0, [r4, #32]
	cmp	r0, #0
	moveq	ip, #5
	movne	ip, #6
	b	.L388
.L452:
	bl	updateKey.part.0
	b	.L404
.L454:
	ldr	r3, [r4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4]
	b	.L396
.L455:
	mov	r1, #0
	mov	r2, #10
	ldr	r3, .L456+76
	str	r1, [r8]
	str	r2, [r3]
	b	.L400
.L457:
	.align	2
.L456:
	.word	vOff
	.word	frame
	.word	350
	.word	guy
	.word	jumping
	.word	floating
	.word	climbing
	.word	jumpFrame
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
	.word	.LANCHOR0
	.word	collisionCheck
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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #10
	push	{r4, r5, r6, lr}
	ldr	r2, .L462
	ldr	r6, .L462+4
	ldr	r5, .L462+8
	ldr	ip, [r6]
	ldr	r3, [r2, #4]
	ldr	r1, [r5]
	ldr	r2, [r2]
	ldr	r4, .L462+12
	sub	r3, r3, ip
	sub	r2, r2, r1
	orr	r3, r3, #16384
	strh	r3, [r4, #2]	@ movhi
	strh	r2, [r4]	@ movhi
	strh	r0, [r4, #4]	@ movhi
	ldr	r1, .L462+16
	mov	lr, pc
	bx	r1
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L462+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldrh	r2, [r6]
	strh	r2, [r3, #16]	@ movhi
	ldrh	r2, [r5]
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L463:
	.align	2
.L462:
	.word	guy
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.size	drawGame, .-drawGame
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
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L467:
	.align	2
.L466:
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
	@ link register save eliminated.
	ldr	r0, .L476
	ldr	r2, .L476+4
	ldr	r3, [r0]
	ldr	r2, [r2]
	ldr	r1, .L476+8
	sub	r3, r3, r2
	ldr	r1, [r1]
	ldr	r2, [r0, #4]
	cmp	r3, #0
	sub	r2, r2, r1
	ble	.L469
	cmp	r2, #0
	ldrgt	r1, .L476+12
	bgt	.L470
.L469:
	mov	ip, #30
	ldr	r1, .L476+12
	strh	ip, [r1, #124]	@ movhi
.L470:
	ldr	r0, [r0, #16]
	cmp	r0, #0
	movne	r0, #8
	moveq	r0, #26
	ldr	ip, .L476+16
	orr	r3, r3, ip
	orr	r2, r2, ip
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r3, [r1, #120]	@ movhi
	strh	r2, [r1, #122]	@ movhi
	strh	r0, [r1, #124]	@ movhi
	bx	lr
.L477:
	.align	2
.L476:
	.word	door
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	-32768
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
	ldr	r0, .L486
	ldr	r3, .L486+4
	ldr	r2, [r0]
	ldr	r3, [r3]
	ldr	r1, .L486+8
	sub	r2, r2, r3
	ldr	r1, [r1]
	ldr	r3, [r0, #4]
	cmp	r2, #0
	sub	r3, r3, r1
	ble	.L479
	cmp	r3, #0
	ldrgt	r1, .L486+12
	bgt	.L480
.L479:
	mov	ip, #30
	ldr	r1, .L486+12
	strh	ip, [r1, #132]	@ movhi
.L480:
	ldr	r0, [r0, #16]
	cmp	r0, #0
	movne	r0, #6
	moveq	r0, #26
	orr	r3, r3, #16384
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #128]	@ movhi
	strh	r3, [r1, #130]	@ movhi
	strh	r0, [r1, #132]	@ movhi
	bx	lr
.L487:
	.align	2
.L486:
	.word	key
	.word	vOff
	.word	hOff
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
	ldr	r0, .L496
	ldr	r3, .L496+4
	ldr	r2, [r0]
	ldr	r3, [r3]
	ldr	r1, .L496+8
	sub	r2, r2, r3
	ldr	r1, [r1]
	ldr	r3, [r0, #4]
	cmp	r2, #0
	sub	r3, r3, r1
	ble	.L489
	cmp	r3, #0
	ldrgt	r1, .L496+12
	bgt	.L490
.L489:
	mov	ip, #30
	ldr	r1, .L496+12
	strh	ip, [r1, #140]	@ movhi
.L490:
	ldr	r0, [r0, #16]
	cmp	r0, #0
	movne	r0, #4
	moveq	r0, #26
	orr	r3, r3, #16384
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #136]	@ movhi
	strh	r3, [r1, #138]	@ movhi
	strh	r0, [r1, #140]	@ movhi
	bx	lr
.L497:
	.align	2
.L496:
	.word	boots
	.word	vOff
	.word	hOff
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
	ldr	r3, .L503
	ldr	r2, .L503+4
	ldr	ip, .L503+8
	ldr	r0, [r2]
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	ldr	ip, [ip]
	sub	r1, r1, r0
	ldr	r0, [r3, #16]
	sub	r2, r2, ip
	orr	r3, r1, #16384
	lsl	r3, r3, #16
	cmp	r0, #0
	lsl	r0, r2, #16
	lsr	r3, r3, #16
	lsr	r0, r0, #16
	beq	.L499
	ldr	ip, .L503+12
	cmp	r2, #0
	strh	r0, [ip, #144]	@ movhi
	strh	r3, [ip, #146]	@ movhi
	ble	.L500
	cmp	r1, #0
	ble	.L500
	mov	r3, #2
	strh	r3, [ip, #148]	@ movhi
	bx	lr
.L500:
	ldr	r3, .L503+16
	strh	r3, [ip, #148]	@ movhi
	bx	lr
.L499:
	mov	r1, #30
	ldr	r2, .L503+12
	strh	r1, [r2, #148]	@ movhi
	strh	r0, [r2, #144]	@ movhi
	strh	r3, [r2, #146]	@ movhi
	bx	lr
.L504:
	.align	2
.L503:
	.word	shirt
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	990
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
	ldr	r3, .L510
	ldr	r2, .L510+4
	ldr	ip, .L510+8
	ldr	r0, [r2]
	ldr	r1, [r3, #4]
	ldr	r2, [r3]
	ldr	ip, [ip]
	sub	r1, r1, r0
	ldr	r0, [r3, #16]
	sub	r2, r2, ip
	orr	r3, r1, #16384
	lsl	r3, r3, #16
	cmp	r0, #0
	lsl	r0, r2, #16
	lsr	r3, r3, #16
	lsr	r0, r0, #16
	beq	.L506
	ldr	ip, .L510+12
	cmp	r2, #0
	strh	r0, [ip, #152]	@ movhi
	strh	r3, [ip, #154]	@ movhi
	ble	.L507
	cmp	r1, #0
	ble	.L507
	mov	r3, #15
	strh	r3, [ip, #156]	@ movhi
	bx	lr
.L507:
	mov	r3, #30
	strh	r3, [ip, #156]	@ movhi
	bx	lr
.L506:
	mov	r1, #30
	ldr	r2, .L510+12
	strh	r1, [r2, #156]	@ movhi
	strh	r0, [r2, #152]	@ movhi
	strh	r3, [r2, #154]	@ movhi
	bx	lr
.L511:
	.align	2
.L510:
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
	ldr	r2, .L514
	ldr	r1, .L514+4
	ldr	ip, .L514+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L514+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #18]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L515:
	.align	2
.L514:
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
	ldr	r3, .L524
	ldr	r2, .L524+4
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, [r3]
	ldr	r5, [r2]
	ldr	r3, .L524+8
	lsl	lr, r5, #16
	lsl	ip, r4, #16
	mov	r8, #30
	mov	r7, #17
	ldr	r1, .L524+12
	lsr	lr, lr, #16
	lsr	ip, ip, #16
	add	r6, r3, #48
	b	.L519
.L523:
	cmp	r2, #0
	ble	.L517
.L518:
	strh	r0, [r3, #240]	@ movhi
	strh	r9, [r3, #242]	@ movhi
	strh	r7, [r3, #244]	@ movhi
	add	r3, r3, #8
	cmp	r3, r6
	add	r1, r1, #60
	beq	.L522
.L519:
	ldr	r2, [r1]
	sub	r0, r2, lr
	sub	r2, r2, r5
	cmp	r2, #0
	ldr	r2, [r1, #4]
	sub	r9, r2, ip
	orr	r9, r9, #16384
	sub	r2, r2, r4
	bgt	.L523
.L517:
	strh	r8, [r3, #244]	@ movhi
	b	.L518
.L522:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L525:
	.align	2
.L524:
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.word	crazy
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
	ldr	r2, .L532
	ldr	r1, .L532+4
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r0, .L532+8
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
	ldr	r0, .L532+12
	ldr	r2, .L532+16
	lsr	r1, r1, #16
	lsr	ip, ip, #16
.L529:
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
	bne	.L529
	pop	{r4, r5, lr}
	bx	lr
.L533:
	.align	2
.L532:
	.word	guy
	.word	hOff
	.word	vOff
	.word	heart
	.word	shadowOAM
	.size	drawHeart, .-drawHeart
	.comm	bubble,20,4
	.comm	door,20,4
	.comm	key,20,4
	.comm	boots,20,4
	.comm	shirt,20,4
	.comm	scoreUI,40,4
	.comm	heart,60,4
	.comm	crazy,360,4
	.comm	hammer,52,4
	.comm	customer,52,4
	.comm	kong,52,4
	.comm	guy,52,4
	.global	collisionMap
	.comm	time_s,4,4
	.comm	time_m,4,4
	.comm	crazyFrame,4,4
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
