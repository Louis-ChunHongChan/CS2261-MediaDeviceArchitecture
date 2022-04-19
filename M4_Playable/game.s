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
	.global	displayTime
	.arch armv4t
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
	ldr	r2, .L4
	ldr	r3, .L4+4
	ldr	r1, [r2]
	ldr	r4, .L4+8
	ldr	r0, [r3]
	smull	r3, r2, r4, r1
	smull	r3, r6, r4, r0
	asr	r3, r1, #31
	rsb	r3, r3, r2, asr #2
	add	r5, r3, r3, lsl #2
	ldr	r4, .L4+12
	ldr	ip, .L4+16
	sub	r1, r1, r5, lsl #1
	ldr	r2, .L4+20
	add	r5, r1, #2
	lsl	r3, r3, #16
	ldm	r4, {r1, r8}
	ldr	r7, [ip]
	ldr	r2, [r2]
	asr	r3, r3, #16
	add	ip, r3, #2
	asr	r4, r0, #31
	ldr	r3, .L4+24
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
.L5:
	.align	2
.L4:
	.word	time_m
	.word	time_s
	.word	1717986919
	.word	guy
	.word	guyvOff
	.word	guyhOff
	.word	shadowOAM
	.size	displayTime, .-displayTime
	.align	2
	.global	timerInterruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	timerInterruptHandler, %function
timerInterruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r2, .L23
	ldr	r2, [r2]
	ldr	r3, .L23+4
	cmp	r2, r1
	push	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	bne	.L8
	ldrh	r2, [r3, #2]
	ldr	r3, .L23+8
	tst	r2, #16
	ldr	r2, [r3]
	beq	.L10
	ldr	r1, .L23+12
	ldr	r3, [r1]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1]
	blt	.L21
.L10:
	ldr	r3, .L23+16
	ldr	r3, [r3]
	orrs	r3, r2, r3
	beq	.L22
.L8:
	ldr	r3, .L23+4
	ldrh	r3, [r3, #2]
	tst	r3, #4096
	beq	.L13
	ldr	r2, .L23+20
	ldrh	r3, [r2, #48]
	ands	r3, r3, #4
	strheq	r3, [r2, #6]	@ movhi
.L13:
	mov	r1, #1
	ldr	r3, .L23+4
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L22:
	ldr	r3, .L23+4
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L8
	bl	displayTime
	b	.L8
.L21:
	mov	ip, #59
	ldr	r0, .L23+24
	ldr	r3, [r0]
	sub	r3, r3, #1
	str	r3, [r0]
	ldr	r3, .L23+16
	ldr	r3, [r3]
	orrs	r3, r2, r3
	str	ip, [r1]
	bne	.L8
	b	.L22
.L24:
	.align	2
.L23:
	.word	paused
	.word	67109376
	.word	won
	.word	time_s
	.word	lost
	.word	67109120
	.word	time_m
	.size	timerInterruptHandler, .-timerInterruptHandler
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
	ldr	r3, .L27
	ldr	r0, .L27+4
	strh	lr, [r3, #6]	@ movhi
	strh	ip, [r0]	@ movhi
	ldr	lr, [sp], #4
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	bx	lr
.L28:
	.align	2
.L27:
	.word	67109120
	.word	67109376
	.size	enableTimerInterrupts, .-enableTimerInterrupts
	.align	2
	.global	setupTimerInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupTimerInterrupts, %function
setupTimerInterrupts:
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
	ldr	r3, .L31
	strh	r4, [r3, #6]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	lr, [r3, #6]	@ movhi
	ldr	r1, .L31+4
	ldr	r3, .L31+8
	add	r2, r2, #512
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	pop	{r4, lr}
	str	r3, [r1, #4092]
	bx	lr
.L32:
	.align	2
.L31:
	.word	67109120
	.word	50360320
	.word	timerInterruptHandler
	.size	setupTimerInterrupts, .-setupTimerInterrupts
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
	mov	r0, #16
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #104
	mov	lr, #4
	mov	r1, #1
	mov	ip, #2
	ldr	r3, .L35
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	ldr	r0, .L35+4
	str	lr, [r3, #40]
	stm	r3, {r0, r4}
	str	ip, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	guy
	.word	486
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
	push	{r4, r5, lr}
	mov	r0, #16
	mov	r5, #164
	mov	r4, #476
	mov	lr, #48
	mov	r1, #32
	mov	r2, #1
	mov	ip, #230
	ldr	r3, .L39
	stm	r3, {r4, r5}
	str	lr, [r3, #24]
	str	r0, [r3, #8]
	str	r0, [r3, #28]
	str	ip, [r3, #20]
	str	r1, [r3, #12]
	str	r1, [r3, #32]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	pop	{r4, r5, lr}
	bx	lr
.L40:
	.align	2
.L39:
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
	push	{r4, lr}
	mov	r2, #16
	mov	r4, #152
	mov	lr, #324
	mov	r1, #1
	mov	ip, #232
	mov	r0, #100
	ldr	r3, .L43
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #24]
	str	r0, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	pop	{r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	key
	.size	initKey, .-initKey
	.align	2
	.global	initTele
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTele, %function
initTele:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #32
	mov	lr, #208
	mov	ip, #37
	mov	r0, #56
	mov	r1, #222
	ldr	r3, .L47
	stm	r3, {ip, lr}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r0, [r3, #24]
	str	r1, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L48:
	.align	2
.L47:
	.word	tele
	.size	initTele, .-initTele
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
	mov	ip, #72
	mov	r1, #1
	ldr	r3, .L50
	ldr	r0, .L50+4
	str	r2, [r3, #8]
	stm	r3, {r0, ip}
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L51:
	.align	2
.L50:
	.word	boots
	.word	366
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
	mov	r2, #16
	mov	r1, #1
	mov	ip, #136
	mov	r0, #60
	str	lr, [sp, #-4]!
	ldr	r3, .L54
	ldr	lr, .L54+4
	str	r2, [r3, #8]
	str	lr, [r3]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #24]
	str	r0, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L55:
	.align	2
.L54:
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
	str	lr, [sp, #-4]!
	mov	r1, #16
	mov	lr, #17
	mov	r2, #0
	mov	ip, #13
	mov	r0, #4
	ldr	r3, .L58
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L59:
	.align	2
.L58:
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
	push	{r4, lr}
	mov	r2, #16
	mov	r4, #46
	mov	lr, #316
	mov	r1, #1
	mov	ip, #72
	mov	r0, #150
	ldr	r3, .L62
	str	r4, [r3, #4]
	str	lr, [r3]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	ip, [r3, #24]
	str	r0, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	pop	{r4, lr}
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
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r9, .L151
	mov	r10, r4
	mov	r1, r9
	mov	r3, r9
	mov	r6, r4
	mov	r2, r4
	mov	ip, r4
	mov	lr, #32
	mov	r0, #1
	ldr	r5, [r9, #60]
	sub	sp, sp, #76
	str	r5, [sp]
	ldr	r5, [r9, #180]
	str	r5, [sp, #20]
	ldr	r5, [r9, #184]
	str	r5, [sp, #24]
	ldr	r5, [r9, #120]
	str	r5, [sp, #8]
	ldr	r5, [r9, #124]
	str	r5, [sp, #12]
	ldr	r5, [r9, #300]
	str	r5, [sp, #44]
	ldr	r5, [r9, #304]
	str	r5, [sp, #48]
	ldr	r5, [r9, #240]
	str	r5, [sp, #32]
	ldr	r5, [r9, #244]
	str	r5, [sp, #36]
	ldr	r5, [r9, #420]
	str	r5, [sp, #64]
	ldr	r5, [r9, #424]
	str	r5, [sp, #68]
	ldr	r5, [r9, #360]
	str	r4, [sp, #56]
	str	r4, [sp, #40]
	str	r4, [sp, #28]
	str	r4, [sp, #16]
	str	r4, [sp, #4]
	ldr	fp, [r9, #64]
	ldr	r8, [r9]
	ldr	r7, [r9, #4]
	str	r5, [sp, #52]
	ldr	r5, [r9, #364]
	str	r5, [sp, #60]
.L83:
	cmp	r2, #0
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	ip, [r3, #56]
	beq	.L91
	cmp	r2, #1
	beq	.L92
	cmp	r2, #2
	bne	.L148
	mvn	r9, #71
	mov	r5, #1
	str	r9, [sp, #12]
	mov	r9, #384
	stmib	sp, {r5, r9}
.L71:
	mov	r5, #4
	add	r2, r2, #1
	cmp	r2, #9
	str	ip, [r3, #36]
	str	r5, [r3, #40]
	str	ip, [r3, #44]
	str	r0, [r3, #48]
	add	r3, r3, #60
	bne	.L83
	cmp	r6, #0
	strne	r8, [r1]
	strne	r7, [r1, #4]
	cmp	r10, #0
	ldrne	r3, [sp]
	strne	r3, [r1, #60]
	ldr	r3, [sp, #4]
	strne	fp, [r1, #64]
	cmp	r3, #0
	ldrne	r3, [sp, #8]
	strne	r3, [r1, #120]
	ldrne	r3, [sp, #12]
	strne	r3, [r1, #124]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ldrne	r3, [sp, #20]
	strne	r3, [r1, #180]
	ldrne	r3, [sp, #24]
	strne	r3, [r1, #184]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	ldrne	r3, [sp, #32]
	strne	r3, [r1, #240]
	ldrne	r3, [sp, #36]
	strne	r3, [r1, #244]
	ldr	r3, [sp, #40]
	cmp	r3, #0
	ldrne	r3, [sp, #44]
	strne	r3, [r1, #300]
	ldrne	r3, [sp, #48]
	strne	r3, [r1, #304]
	ldr	r3, [sp, #56]
	cmp	r3, #0
	ldrne	r3, [sp, #52]
	strne	r3, [r1, #360]
	ldrne	r3, [sp, #60]
	strne	r3, [r1, #364]
	cmp	r4, #0
	ldrne	r3, [sp, #64]
	strne	r3, [r1, #420]
	ldrne	r3, [sp, #68]
	strne	r3, [r1, #424]
	b	.L64
.L91:
	mov	r7, #152
	mov	r6, #1
	mov	r8, #488
	b	.L71
.L148:
	cmp	r2, #3
	bne	.L149
	mvn	r5, #39
	str	r5, [sp, #24]
	mov	r5, #1
	str	r5, [sp, #16]
	mov	r5, #328
	str	r5, [sp, #20]
	b	.L71
.L149:
	cmp	r2, #4
	beq	.L150
	cmp	r2, #5
	beq	.L96
	cmp	r2, #6
	bne	.L68
	mov	r5, #88
	str	r5, [sp, #60]
	mov	r5, #1
	mov	r9, #16
	str	r5, [sp, #56]
	mov	r5, #237
	str	r9, [r1, #376]
	str	r5, [sp, #52]
	b	.L71
.L68:
	cmp	r2, #7
	bne	.L69
	ldr	r2, [r1, #436]
	add	r2, r2, #56
	lsl	r2, r2, #1
	str	r2, [sp, #68]
	mov	r2, #4
	str	r2, [r3, #40]
	mov	r2, #185
	str	ip, [r3, #36]
	str	ip, [r3, #44]
	str	r0, [r3, #48]
	str	r2, [sp, #64]
	mov	r4, #1
	mov	r2, #8
	add	r3, r3, #60
	b	.L83
.L69:
	cmp	r2, #8
	bne	.L71
	cmp	r6, #0
	strne	r8, [r1]
	strne	r7, [r1, #4]
	cmp	r10, #0
	ldrne	r3, [sp]
	strne	r3, [r1, #60]
	ldr	r3, [sp, #4]
	strne	fp, [r1, #64]
	cmp	r3, #0
	ldrne	r3, [sp, #8]
	strne	r3, [r1, #120]
	ldrne	r3, [sp, #12]
	strne	r3, [r1, #124]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ldrne	r3, [sp, #20]
	strne	r3, [r1, #180]
	ldrne	r3, [sp, #24]
	strne	r3, [r1, #184]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	ldrne	r3, [sp, #32]
	strne	r3, [r1, #240]
	ldrne	r3, [sp, #36]
	strne	r3, [r1, #244]
	ldr	r3, [sp, #40]
	cmp	r3, #0
	ldrne	r3, [sp, #44]
	strne	r3, [r1, #300]
	ldrne	r3, [sp, #48]
	strne	r3, [r1, #304]
	ldr	r3, [sp, #56]
	cmp	r3, #0
	ldrne	r3, [sp, #52]
	strne	r3, [r1, #360]
	ldrne	r3, [sp, #60]
	strne	r3, [r1, #364]
	cmp	r4, #0
	ldrne	r3, [sp, #64]
	strne	r3, [r1, #420]
	ldrne	r3, [sp, #68]
	mov	r5, #16
	mov	r4, #32
	mov	lr, #93
	mov	ip, #158
	mov	r0, #4
	mov	r2, #1
	strne	r3, [r1, #424]
	mov	r3, #0
	str	r5, [r1, #496]
	str	r4, [r1, #500]
	str	lr, [r1, #480]
	str	ip, [r1, #484]
	str	r3, [r1, #516]
	str	r3, [r1, #524]
	str	r0, [r1, #520]
	str	r2, [r1, #528]
.L64:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L96:
	mov	r5, #136
	str	r5, [sp, #48]
	mov	r5, #1
	str	r5, [sp, #40]
	mov	r5, #404
	str	r5, [sp, #44]
	b	.L71
.L150:
	mov	r5, #120
	str	r5, [sp, #36]
	mov	r5, #1
	str	r5, [sp, #28]
	add	r5, r5, #284
	str	r5, [sp, #32]
	b	.L71
.L92:
	ldr	r9, .L151+4
	mov	fp, #136
	mov	r10, r2
	str	r9, [sp]
	b	.L71
.L152:
	.align	2
.L151:
	.word	crazy
	.word	429
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
	mov	r8, #2
	mov	r4, #0
	ldr	r2, .L155
	str	r8, [r2]
	ldr	r2, .L155+4
	str	r8, [r2, #28]
	add	r8, r8, #484
	str	r8, [r2]
	ldr	r8, .L155+8
	mov	r7, #10
	str	r4, [r8]
	ldr	r8, .L155+12
	str	r4, [r8]
	ldr	r8, .L155+16
	mov	fp, #99
	str	r4, [r8]
	ldr	r8, .L155+20
	mov	lr, #352
	str	r4, [r8]
	ldr	r8, .L155+24
	mov	r3, #16
	mov	r5, #1
	str	r4, [r8]
	mov	ip, #104
	mov	r9, #4
	ldr	r8, .L155+28
	str	r4, [r8]
	ldr	r8, .L155+32
	str	r4, [r8]
	ldr	r8, .L155+36
	str	r4, [r8]
	ldr	r8, .L155+40
	str	r4, [r8]
	ldr	r8, .L155+44
	str	r4, [r8]
	ldr	r8, .L155+48
	str	r4, [r8]
	ldr	r8, .L155+52
	str	r4, [r8]
	ldr	r8, .L155+56
	str	r4, [r8]
	ldr	r8, .L155+60
	str	r4, [r8]
	ldr	r8, .L155+64
	str	r4, [r8]
	ldr	r8, .L155+68
	str	r4, [r8]
	ldr	r8, .L155+72
	str	r7, [r8]
	ldr	r8, .L155+76
	str	r7, [r8]
	ldr	r7, .L155+80
	str	fp, [r7]
	ldr	r7, .L155+84
	str	lr, [r7]
	ldr	r7, .L155+88
	str	ip, [r2, #4]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r5, [r2, #12]
	str	r5, [r2, #8]
	str	r4, [r2, #24]
	str	r4, [r2, #36]
	str	r9, [r2, #40]
	str	lr, [r7]
	mov	lr, #476
	str	r4, [r2, #48]
	str	r4, [r2, #52]
	ldr	r2, .L155+92
	str	lr, [r2]
	mov	lr, #48
	str	lr, [r2, #24]
	mov	lr, #230
	mov	r1, #32
	mov	r10, #164
	str	lr, [r2, #20]
	mov	r7, #324
	mov	lr, #152
	str	r3, [r2, #8]
	str	r1, [r2, #12]
	str	r3, [r2, #28]
	str	r10, [r2, #4]
	str	r1, [r2, #32]
	str	r5, [r2, #16]
	str	r5, [r2, #36]
	ldr	r2, .L155+96
	stm	r2, {r7, lr}
	mov	lr, #232
	str	lr, [r2, #24]
	mov	lr, #100
	str	r3, [r2, #8]
	str	lr, [r2, #20]
	str	r3, [r2, #12]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r5, [r2, #16]
	str	r5, [r2, #36]
	ldr	r2, .L155+100
	mov	r8, #208
	str	r1, [r2, #8]
	str	r1, [r2, #12]
	str	r1, [r2, #28]
	str	r1, [r2, #32]
	mov	r1, #37
	stm	r2, {r1, r8}
	mov	r1, #56
	str	r1, [r2, #24]
	mov	r1, #222
	mov	r0, #72
	str	r1, [r2, #20]
	ldr	r2, .L155+104
	add	r1, r1, #144
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r0, [r2, #4]
	str	r1, [r2]
	mov	r1, #88
	str	r5, [r2, #16]
	ldr	r2, .L155+108
	str	r1, [r2, #4]
	mov	r1, #120
	str	r1, [r2, #44]
	ldr	r1, .L155+112
	str	ip, [r2, #24]
	str	r5, [r2, #16]
	str	r5, [r2, #36]
	str	r1, [r2, #20]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r1, [r2]
	str	r3, [r2, #48]
	str	r3, [r2, #52]
	str	r5, [r2, #56]
	str	r1, [r2, #40]
	ldr	r2, .L155+116
	sub	r1, r1, #188
	str	r1, [r2]
	mov	r1, #136
	str	r1, [r2, #24]
	mov	r1, #60
	mov	r6, #17
	str	r1, [r2, #20]
	mov	r1, #13
	str	r5, [r2, #16]
	str	r3, [r2, #4]
	str	r5, [r2, #36]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	ldr	r2, .L155+120
	str	r1, [r2, #4]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r4, [r2, #24]
	str	r4, [r2, #36]
	str	r6, [r2]
	str	r9, [r2, #40]
	ldr	r2, .L155+124
	mov	r9, #46
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	mov	r3, #316
	stm	r2, {r3, r9}
	mov	r3, #150
	str	r0, [r2, #24]
	str	r5, [r2, #16]
	str	r5, [r2, #36]
	str	r3, [r2, #20]
	bl	initCrazy
	ldr	r3, .L155+128
	mov	lr, pc
	bx	r3
	mov	r0, #49152
	mov	r2, #195
	mov	r1, #67108864
	ldr	r3, .L155+132
	strh	r4, [r3, #6]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	ldrh	r2, [r1, #4]
	ldrh	lr, [r3, #48]
	ldr	r0, .L155+136
	ldr	r4, .L155+140
	ldr	r7, .L155+144
	ldr	ip, .L155+148
	orr	r3, r2, #8
	strh	r6, [r0]	@ movhi
	strh	r5, [r0, #8]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	str	r7, [r4, #4092]
	strh	lr, [ip]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	life
	.word	guy
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
	.word	hammerFrame
	.word	bootsFrame
	.word	floating
	.word	hOff
	.word	guyhOff
	.word	gravity
	.word	time_s
	.word	time_m
	.word	vOff
	.word	guyvOff
	.word	door
	.word	key
	.word	tele
	.word	boots
	.word	heart
	.word	470
	.word	shirt
	.word	customer
	.word	bubble
	.word	hideSprites
	.word	67109120
	.word	67109376
	.word	50360320
	.word	timerInterruptHandler
	.word	buttons
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
	ldr	r3, .L161
	ldr	r1, [r3, #4]
	ldr	ip, [r3]
	ldr	r3, .L161+4
	sub	r2, r1, #16
	sub	ip, ip, #16
	add	r1, r1, #32
.L158:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, r1
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	ip, [r3]
	str	lr, [r3, #16]
	add	r3, r3, #20
	bne	.L158
	ldr	lr, [sp], #4
	bx	lr
.L162:
	.align	2
.L161:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #1
	mov	r8, #0
	ldr	r4, .L194
	add	r2, r4, #16
	ldr	r5, .L194+4
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	r7, .L194+8
	sub	sp, sp, #16
.L175:
	cmp	r6, #1
	beq	.L188
	ldr	ip, [r4, #52]
	add	r9, r5, #28
	cmp	ip, #0
	ldr	lr, [r5, #20]
	ldr	ip, [r5, #24]
	ldm	r9, {r9, r10}
	bne	.L189
.L169:
	stm	sp, {ip, lr}
	str	r10, [sp, #12]
	str	r9, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	addne	r3, r3, #1
	strne	r3, [r4, #4]
.L171:
	cmp	r6, #2
	bne	.L190
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L188:
	ldr	ip, [r4, #48]
	add	r9, r5, #8
	cmp	ip, #0
	ldr	lr, [r5]
	ldr	ip, [r5, #4]
	ldm	r9, {r9, r10}
	bne	.L191
.L165:
	stm	sp, {ip, lr}
	str	r10, [sp, #12]
	str	r9, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldr	r0, [r4, #4]
	beq	.L187
	sub	r0, r0, #1
	add	r2, r4, #16
	str	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	b	.L176
.L191:
	stm	sp, {ip, lr}
	str	r10, [sp, #12]
	str	r9, [sp, #8]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L192
	ldr	r3, [r4, #48]
	add	r2, r4, #16
	cmp	r3, #0
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	beq	.L193
.L176:
	add	r6, r6, #1
	b	.L175
.L189:
	stm	sp, {ip, lr}
	str	r10, [sp, #12]
	str	r9, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	strne	r8, [r5, #36]
	bne	.L171
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L171
	add	r2, r4, #16
	add	r9, r5, #28
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	ip, [r5, #24]
	ldr	lr, [r5, #20]
	ldm	r9, {r9, r10}
	b	.L169
.L190:
	ldr	r0, [r4, #4]
.L187:
	add	r2, r4, #16
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	b	.L176
.L192:
	add	r2, r4, #16
	str	r8, [r5, #16]
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	b	.L176
.L193:
	add	r9, r5, #8
	ldr	ip, [r5, #4]
	ldr	lr, [r5]
	ldm	r9, {r9, r10}
	b	.L165
.L195:
	.align	2
.L194:
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, #1
	ldr	r4, .L218
	ldr	r6, .L218+4
	ldr	r8, .L218+8
	ldr	r9, .L218+12
	sub	sp, sp, #20
.L206:
	cmp	r5, #1
	beq	.L216
	ldr	r7, [r4, #52]
	cmp	r7, #0
	beq	.L217
.L203:
	cmp	r5, #2
	bne	.L207
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L216:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L198
.L201:
	ldr	r3, [r4]
	cmp	r3, r9
	movle	r2, #0
	movle	r3, #1
	strle	r2, [r6, #16]
	strle	r3, [r4, #48]
.L207:
	add	r5, r5, #1
	b	.L206
.L198:
	ldm	r6, {r2, r3}
	ldr	r0, [r6, #12]
	ldr	r1, [r6, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L201
	mov	r2, #0
	mov	r3, #1
	str	r2, [r6, #16]
	str	r3, [r4, #48]
	b	.L207
.L217:
	add	r2, r6, #20
	ldm	r2, {r2, r3}
	ldr	r0, [r6, #32]
	ldr	r1, [r6, #28]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r3, #1
	strne	r7, [r6, #36]
	strne	r3, [r4, #52]
	b	.L203
.L219:
	.align	2
.L218:
	.word	guy
	.word	key
	.word	collision
	.word	285
	.size	updateKey, .-updateKey
	.align	2
	.global	updateTele
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTele, %function
updateTele:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L226
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	sub	sp, sp, #16
	ldr	r4, .L226+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L226+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L220
	mov	r1, #96
	mov	r0, #230
	ldr	r2, [r5, #8]
	ldr	r3, [r4, #16]
	rsb	r2, r2, #60
	add	r3, r3, r2, lsl #1
	ldr	ip, .L226+12
	ldr	r2, .L226+16
	str	r3, [r4, #4]
	str	r1, [ip]
	str	r1, [r2]
	str	r0, [r4]
.L220:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L227:
	.align	2
.L226:
	.word	tele
	.word	guy
	.word	collision
	.word	vOff
	.word	guyvOff
	.size	updateTele, .-updateTele
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
	ldr	r4, .L237
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L236
.L228:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L236:
	ldr	r0, .L237+4
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
	ldr	r5, .L237+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L228
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L237+12
	ldr	r0, .L237+16
	ldr	ip, [r3]
	ldr	r3, .L237+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L238:
	.align	2
.L237:
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L250
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #0
	ldr	r6, .L250+4
	ldr	r8, .L250+8
	ldr	r7, .L250+12
	sub	sp, sp, #16
	bne	.L249
.L241:
	cmp	r5, #1
	add	r4, r4, #20
	bne	.L244
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L244:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #1
	beq	.L241
.L249:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #12]
	ldr	r1, [r4, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, [r7]
	addne	r3, r3, #1
	strne	r3, [r7]
	strne	r2, [r4, #16]
	b	.L241
.L251:
	.align	2
.L250:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #0
	ldr	r4, .L263
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	fp, r5
	ldr	r6, .L263+4
	ldr	r7, .L263+8
	ldr	r10, .L263+12
	ldr	r9, .L263+16
	ldr	r8, .L263+20
	sub	sp, sp, #20
	bne	.L262
.L254:
	cmp	r5, #1
	add	r4, r4, #20
	bne	.L257
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L257:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #1
	beq	.L254
.L262:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #12]
	ldr	r1, [r4, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	ldr	r0, [r6, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L254
	mov	r3, #1
	mov	r2, #6
	str	r3, [r8]
	ldr	r3, [r9]
	str	fp, [r4, #16]
	str	r2, [r6, #28]
	str	r3, [r10]
	b	.L254
.L264:
	.align	2
.L263:
	.word	bubble
	.word	guy
	.word	collision
	.word	bubbleFrame
	.word	frame
	.word	floating
	.size	updateBubble, .-updateBubble
	.global	__aeabi_idivmod
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
	push	{r4, lr}
	ldr	r4, .L268
	ldr	r3, [r4, #24]
	ldr	r2, .L268+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4, #24]
	bne	.L265
	ldr	r0, [r4, #36]
	ldr	r3, .L268+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L265:
	pop	{r4, lr}
	bx	lr
.L269:
	.align	2
.L268:
	.word	customer
	.word	1717986919
	.word	__aeabi_idivmod
	.size	updateCustomer, .-updateCustomer
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
	ldr	r3, .L288
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L271
	mov	r1, #1
	ldr	r2, .L288+4
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L271
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L271
	str	r1, [r2, #56]
	bx	lr
.L271:
	rsbs	r1, r3, #3
	bxeq	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L288+4
.L274:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L274
	bx	lr
.L289:
	.align	2
.L288:
	.word	life
	.word	heart
	.size	updateHeart, .-updateHeart
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
	mov	r3, #8
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L342
	add	r5, r4, #24
	ldm	r5, {r5, r6}
	tst	r5, #7
	str	r6, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #20
	bne	.L291
	ldr	r0, [r4, #36]
	ldr	r3, .L342+4
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L291:
	ldr	r2, .L342+8
	ldr	r3, .L342+12
	ldr	r1, [r2]
	ldr	r3, [r3]
	ldr	r2, .L342+16
	orrs	r1, r3, r1
	ldr	r2, [r2]
	bne	.L292
	ldr	r5, .L342+20
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L293
	ldr	r3, .L342+24
	ldrh	r1, [r3, #48]
	tst	r1, #32
	bne	.L294
	cmp	r2, #0
	bne	.L295
	ldr	r2, .L342+28
	ldr	r2, [r2]
	cmp	r2, #0
	ldrh	r3, [r3, #48]
	bne	.L335
	tst	r3, #16
	str	r2, [r4, #28]
	beq	.L297
	ldr	r6, .L342+32
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L302
	ldr	r3, .L342+36
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L338
.L302:
	ldr	r5, [r4, #24]
.L316:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L292:
	orrs	r3, r3, r2
	beq	.L339
.L293:
	mov	r3, #0
	str	r6, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L339:
	ldr	r2, .L342+28
	ldr	r3, .L342+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L293
	ldr	r3, .L342+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L340
.L314:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L316
.L294:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L299
	cmp	r2, #0
	beq	.L341
.L299:
	ldr	r6, [r4, #32]
	b	.L293
.L295:
	ldrh	r3, [r3, #48]
	b	.L299
.L340:
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L293
	b	.L314
.L341:
	ldr	r3, .L342+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L297
.L335:
	ldr	r3, [r4, #28]
.L306:
	cmp	r3, #8
	bne	.L302
	b	.L299
.L297:
	mov	r3, #2
	ldr	r6, .L342+32
	str	r3, [r4, #28]
.L301:
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L302
	ldr	r3, .L342+36
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L302
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #8]
	ldr	r7, .L342+40
	ldr	r3, [r4]
	ldr	r0, [r7]
	ldr	r6, .L342+44
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r6
	subs	ip, r0, #0
	bne	.L335
	mvn	r9, #23
	mov	r8, #15
	mov	r3, #3
	mov	r2, #1
	ldr	r0, .L342+48
	ldr	r1, .L342+52
	ldr	lr, [r0]
	ldr	r0, [r7]
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	str	lr, [r1]
	ldr	r1, [r4, #20]
	ldr	lr, .L342+56
	str	r1, [sp, #4]
	ldr	r1, [r4, #16]
	str	r3, [r4, #28]
	str	r1, [sp]
	ldr	r3, [r4]
	str	r2, [r5]
	mov	r1, #256
	ldr	r2, [r4, #4]
	str	ip, [lr]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L335
	ldr	r3, .L342+60
	ldr	r3, [r3]
	ldm	r4, {r1, r2}
	cmp	r3, #0
	subne	r1, r1, #50
	addne	r2, r2, #25
	subeq	r1, r1, #24
	addeq	r2, r2, #15
	stm	r4, {r1, r2}
	ldr	r3, [r4, #28]
	b	.L306
.L338:
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #8]
	ldr	r8, .L342+40
	ldr	r3, [r4]
	ldr	r0, [r8]
	ldr	r7, .L342+44
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	subs	ip, r0, #0
	beq	.L303
	ldr	r3, [r4, #28]
	cmp	r3, #2
	beq	.L301
	b	.L306
.L303:
	mvn	lr, #14
	mov	r2, #1
	mvn	r6, #23
	ldr	r1, .L342+48
	ldr	r0, [r8]
	ldr	r1, [r1]
	str	lr, [sp, #8]
	ldr	lr, [r4, #20]
	str	lr, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	r3, .L342+52
	str	lr, [sp]
	ldr	lr, .L342+56
	str	r6, [sp, #12]
	str	r2, [r4, #28]
	str	r1, [r3]
	str	r2, [r5]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	str	ip, [lr]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L335
	ldr	r3, .L342+60
	ldr	r3, [r3]
	cmp	r3, #0
	ldm	r4, {r2, r3}
	subne	r3, r3, #25
	subeq	r3, r3, #15
	subne	r2, r2, #50
	subeq	r2, r2, #24
	stm	r4, {r2, r3}
	ldr	r3, [r4, #28]
	b	.L306
.L343:
	.align	2
.L342:
	.word	guy
	.word	__aeabi_idivmod
	.word	climbing
	.word	down
	.word	powerUp
	.word	jumping
	.word	67109120
	.word	floating
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
	ldr	r10, .L402
	ldr	r3, [r10]
	cmp	r3, #0
	sub	sp, sp, #20
	bgt	.L396
.L346:
	ldr	r9, .L402+4
	ldr	r4, .L402+8
	ldr	r3, [r9]
	ldr	r8, .L402+12
	ldr	r7, .L402+16
	ldr	fp, .L402+20
	ldr	r6, .L402+24
	add	r5, r4, #540
.L352:
	cmp	r3, #0
	bne	.L348
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L397
.L349:
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L348
	ldr	r1, [r8]
	ldr	r2, [fp]
	orrs	r2, r1, r2
	bne	.L348
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L348
	ldr	r2, [r6, #28]
	cmp	r2, #1
	beq	.L398
	cmp	r2, #3
	bne	.L348
	ldr	r1, [r6]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L348
	ldr	r1, [r6, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L348
	mov	r1, #1
	ldr	r0, .L402+28
	ldr	r2, [r0]
	add	r2, r2, r1
	str	r2, [r0]
	str	r1, [r4, #52]
.L348:
	add	r4, r4, #60
	cmp	r5, r4
	bne	.L352
.L400:
	ldr	r2, [r8]
	orrs	r3, r3, r2
	ldr	r3, [r7]
	bne	.L394
	cmp	r3, #0
	bne	.L354
	ldr	r3, .L402+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L355
	ldr	r3, .L402+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L399
.L356:
	ldr	r3, .L402+36
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L358
	ldr	r3, [r7]
.L394:
	ldr	r4, .L402+20
.L353:
	ldr	r2, [r4]
	orrs	r3, r3, r2
	bne	.L354
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L364
.L354:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateGuy
.L397:
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
	ldr	ip, .L402+40
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldreq	r3, [r9]
	beq	.L349
.L350:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r3, .L402+44
	str	r1, [r4, #48]
	ldr	r3, [r3]
	str	r2, [r8]
	ldr	r1, .L402+48
	ldr	r2, .L402+52
	add	r4, r4, #60
	cmp	r5, r4
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r9]
	bne	.L352
	b	.L400
.L396:
	ldr	r2, .L402+56
	add	ip, r2, #16
	ldr	r0, .L402+24
	ldm	r2, {r1, r2}
	ldm	ip, {ip, lr}
	ldr	r3, [r0, #20]
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	ldr	r4, .L402+40
	ldr	r2, [r0, #16]
	ldr	r1, [r0]
	lsl	r3, r3, #1
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L346
	mov	r0, #1
	ldr	r2, .L402+28
	ldr	r3, [r2]
	ldr	r1, .L402+60
	add	r3, r3, #5
	str	r3, [r2]
	str	r0, [r1]
	b	.L346
.L355:
	ldr	r3, .L402+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L354
.L364:
	ldr	r3, .L402+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L401
.L362:
	ldr	r3, .L402+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L354
	ldr	r4, .L402+24
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L402+64
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L402+68
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L354
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L354
	ldr	ip, .L402+72
	ldr	r2, [r4, #12]
	ldr	r1, [ip]
	add	r3, r3, r2
	cmp	r1, #14
	str	r3, [r4, #4]
	bgt	.L354
	ldr	r0, .L402+76
	ldr	lr, [r0]
	sub	r3, r3, lr
	cmp	r3, #120
	ble	.L354
.L395:
	add	r1, r2, r1
	add	r2, r2, lr
	str	r1, [ip]
	str	r2, [r0]
	b	.L354
.L398:
	ldr	r0, [r6]
	ldr	r1, [r4]
	cmp	r0, r1
	bge	.L348
	ldr	r0, [r6, #4]
	ldr	r1, [r4, #4]
	cmp	r0, r1
	bgt	.L348
	ldr	r0, .L402+28
	ldr	r1, [r0]
	add	r1, r1, #3
	str	r2, [r4, #52]
	str	r1, [r0]
	b	.L348
.L399:
	ldr	r5, .L402+24
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
	ldr	r6, .L402+64
	add	r2, r2, r2, lsr #31
	add	r2, ip, r2, asr #1
	mov	r1, #256
	ldr	r3, [r5]
	ldr	r0, [r6]
	ldr	r9, .L402+80
	sub	r2, r2, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L356
	mov	r1, #1
	ldr	ip, .L402+84
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r2, [ip]
	ldr	r4, .L402+20
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5]
	str	r1, [r4]
	ble	.L357
	ldr	lr, .L402+88
	ldr	r1, [lr]
	sub	r10, r3, r1
	cmp	r10, #80
	suble	r1, r1, r0
	suble	r2, r2, r0
	strle	r1, [lr]
	strle	r2, [ip]
.L357:
	ldr	r2, .L402+36
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L354
.L365:
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
	bne	.L359
	ldr	r3, [r7]
	b	.L353
.L358:
	ldr	r5, .L402+24
	ldr	r4, .L402+20
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r6, .L402+64
	ldr	r9, .L402+80
	b	.L365
.L401:
	ldr	r4, .L402+24
	add	r0, r4, #16
	ldr	r2, [r4, #12]
	ldm	r0, {r0, ip}
	rsb	r2, r2, #0
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, .L402+64
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L402+68
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L362
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L362
	ldr	lr, .L402+72
	ldr	r0, [r4, #12]
	ldr	r1, [lr]
	sub	r3, r3, r0
	cmp	r1, #0
	str	r3, [r4, #4]
	ble	.L362
	ldr	ip, .L402+76
	ldr	r2, [ip]
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r1, r1, r0
	suble	r2, r2, r0
	strle	r1, [lr]
	strle	r2, [ip]
	b	.L362
.L359:
	mov	r1, #1
	ldr	r0, .L402+84
	ldr	r3, .L402+92
	ldr	lr, [r0]
	ldr	r2, [r5, #8]
	cmp	lr, r3
	ldr	r3, [r5]
	add	r3, r2, r3
	str	r3, [r5]
	str	r1, [r4]
	bgt	.L354
	ldr	ip, .L402+88
	ldr	r1, [ip]
	sub	r3, r3, r1
	cmp	r3, #80
	ble	.L354
	b	.L395
.L403:
	.align	2
.L402:
	.word	life
	.word	powerUp
	.word	crazy
	.word	down
	.word	jumping
	.word	climbing
	.word	guy
	.word	score
	.word	floating
	.word	67109120
	.word	collision
	.word	frame
	.word	downFrame
	.word	crazyFrame
	.word	customer
	.word	delivered
	.word	.LANCHOR0
	.word	collisionCheck
	.word	hOff
	.word	guyhOff
	.word	collisionLadderCheck
	.word	vOff
	.word	guyvOff
	.word	606
	.size	updateGuy, .-updateGuy
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
	push	{r4, lr}
	ldr	r4, .L407
	ldr	r3, [r4, #24]
	ldr	r2, .L407+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4, #24]
	bne	.L404
	ldr	r0, [r4, #36]
	ldr	r3, .L407+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L404:
	pop	{r4, lr}
	bx	lr
.L408:
	.align	2
.L407:
	.word	customer
	.word	1717986919
	.word	__aeabi_idivmod
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L417
	ldr	r6, .L417+4
	add	r5, r4, #540
.L411:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	tst	r3, #7
	str	r3, [r4, #24]
	bne	.L410
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L410
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L410:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L411
	pop	{r4, r5, r6, lr}
	bx	lr
.L418:
	.align	2
.L417:
	.word	crazy
	.word	__aeabi_idivmod
	.size	animateCrazy, .-animateCrazy
	.align	2
	.global	updateCrazy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCrazy, %function
updateCrazy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0
	mov	r7, r0
	ldr	lr, .L516
	ldr	r4, .L516+4
	ldr	r6, [lr, #16]
	ldr	r5, [lr, #196]
	ldr	r10, .L516+8
	ldr	fp, [lr, #136]
	ldr	r1, [lr, #380]
	ldr	r4, [r4]
	sub	sp, sp, #76
	ldr	r10, [r10]
	add	r9, r6, r6, lsr #31
	rsb	r8, r5, #60
	rsb	r6, r6, #56
	str	r4, [sp, #68]
	str	r6, [sp, #20]
	sub	r4, fp, fp, lsl #2
	add	r6, r1, r1, lsl #1
	asr	r9, r9, #1
	lsl	r8, r8, #1
	rsb	r1, r1, #60
	str	r9, [sp, #16]
	str	r10, [sp, #64]
	str	r8, [sp, #44]
	str	fp, [sp]
	str	r4, [sp, #40]
	str	r6, [sp, #56]
	str	r1, [sp, #60]
	ldr	fp, [lr, #124]
	ldr	r9, [lr, #132]
	ldr	r1, [lr, #4]
	ldr	r4, [lr, #12]
	ldr	r8, [lr, #364]
	ldr	r6, [lr, #372]
	ldr	r10, [lr, #184]
	mov	ip, lr
	mov	r2, lr
	ldr	lr, [lr, #192]
	str	lr, [sp, #24]
	ldr	lr, [sp, #16]
	add	lr, lr, #119
	str	r0, [sp, #36]
	str	r0, [sp, #8]
	str	r0, [sp, #32]
	str	r0, [sp, #4]
	str	r0, [sp, #28]
	str	r0, [sp, #12]
	str	lr, [sp, #16]
	ldr	lr, [sp, #20]
	lsl	lr, lr, #1
	str	lr, [sp, #20]
	ldr	lr, [sp, #44]
	sub	lr, lr, #5
	str	lr, [sp, #48]
	sub	r5, r5, r5, lsl #2
	ldr	lr, [sp, #40]
	add	r5, r5, #104
	str	r5, [sp, #52]
	add	r5, lr, #120
	str	r5, [sp, #44]
	ldr	r5, [sp]
	ldr	lr, [sp, #56]
	rsb	r5, r5, #95
	str	r5, [sp, #40]
	add	r5, lr, #119
	ldr	lr, [sp, #60]
	str	r5, [sp, #56]
	lsl	lr, lr, #1
	add	r5, sp, #64
	str	lr, [sp, #60]
	ldm	r5, {r5, lr}
	str	r0, [sp]
	sub	r5, r5, lr
	ldr	lr, [sp, #24]
.L449:
	cmp	r5, #49
	ble	.L420
	ldr	r0, [r2, #48]
	cmp	r0, #0
	moveq	r0, #1
	streq	r0, [r2, #48]
.L420:
	cmp	r3, #0
	beq	.L514
	cmp	r3, #2
	beq	.L515
	cmp	r3, #3
	bne	.L429
	ldr	r0, [sp, #48]
	cmp	r0, r10
	ldr	r0, [sp, #8]
	movle	r0, #1
	str	r0, [sp, #8]
	ldr	r0, [sp, #52]
	mvnle	lr, #0
	cmp	r0, r10
	movge	r0, #1
	movge	lr, r0
	strge	r0, [sp, #8]
	mov	r0, #1
	str	r0, [sp, #32]
	add	r10, r10, lr
.L432:
	add	r3, r3, #1
	cmp	r3, #9
	add	r2, r2, #60
	bne	.L449
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ldr	r3, [sp, #28]
	strne	r1, [ip, #4]
	cmp	r7, #0
	strne	r4, [ip, #12]
	cmp	r3, #0
	ldr	r3, [sp, #4]
	strne	fp, [ip, #124]
	cmp	r3, #0
	ldr	r3, [sp, #32]
	strne	r9, [ip, #132]
	cmp	r3, #0
	ldr	r3, [sp, #8]
	str	lr, [sp, #24]
	strne	r10, [ip, #184]
	cmp	r3, #0
	ldrne	r3, [sp, #24]
	strne	r3, [ip, #192]
	ldr	r3, [sp, #36]
	ldr	r0, [sp]
	cmp	r3, #0
	strne	r8, [ip, #364]
	cmp	r0, #0
	strne	r6, [ip, #372]
	b	.L447
.L514:
	ldr	r0, [sp, #16]
	cmp	r0, r1
	ldr	r0, [sp, #20]
	mvnlt	r4, #0
	movlt	r7, #1
	cmp	r0, r1
	movge	r7, #1
	mov	r0, #1
	movge	r4, r7
	str	r0, [sp, #12]
	add	r1, r1, r4
	b	.L432
.L429:
	cmp	r3, #6
	bne	.L428
	ldr	r3, [sp, #56]
	cmp	r3, r8
	ldr	r3, [sp]
	movlt	r3, #1
	str	r3, [sp]
	ldr	r3, [sp, #60]
	mvnlt	r6, #0
	cmp	r3, r8
	movge	r3, #1
	movge	r6, r3
	strge	r3, [sp]
	mov	r3, #1
	add	r8, r8, r6
	str	r3, [sp, #36]
	add	r2, r2, #60
	mov	r3, #7
	b	.L449
.L428:
	cmp	r3, #8
	bne	.L432
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ldr	r3, [sp, #28]
	strne	r1, [ip, #4]
	cmp	r7, #0
	strne	r4, [ip, #12]
	cmp	r3, #0
	ldr	r3, [sp, #4]
	strne	fp, [ip, #124]
	cmp	r3, #0
	ldr	r3, [sp, #32]
	strne	r9, [ip, #132]
	cmp	r3, #0
	ldr	r3, [sp, #8]
	str	lr, [sp, #24]
	strne	r10, [ip, #184]
	cmp	r3, #0
	ldrne	r3, [sp, #24]
	ldr	r2, [ip, #500]
	strne	r3, [ip, #192]
	ldr	r3, [sp, #36]
	ldr	r0, [sp]
	cmp	r3, #0
	add	r1, r2, r2, lsl #1
	ldr	r3, [ip, #484]
	add	r1, r1, #119
	strne	r8, [ip, #364]
	cmp	r0, #0
	strne	r6, [ip, #372]
	cmp	r1, r3
	mvnlt	r1, #0
	add	r2, r2, #120
	strlt	r1, [ip, #492]
	cmp	r3, r2
	movle	r1, #1
	movle	r2, r1
	ldrgt	r2, [ip, #492]
	add	r3, r3, r2
	strle	r1, [ip, #492]
	str	r3, [ip, #484]
.L447:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateCrazy
.L515:
	ldr	r0, [sp, #40]
	cmp	r0, fp
	ldr	r0, [sp, #4]
	movle	r0, #1
	str	r0, [sp, #4]
	ldr	r0, [sp, #44]
	mvnle	r9, #0
	cmp	r0, fp
	movge	r0, #1
	movge	r9, r0
	strge	r0, [sp, #4]
	mov	r0, #1
	add	fp, fp, r9
	str	r0, [sp, #28]
	b	.L432
.L517:
	.align	2
.L516:
	.word	crazy
	.word	crazyFrame
	.word	frame
	.size	updateCrazy, .-updateCrazy
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
	ldr	r1, .L591
	ldr	r6, .L591+4
	ldr	r2, [r1]
	ldr	r3, [r6]
	ldr	r0, .L591+8
	add	r3, r3, #1
	cmp	r2, r0
	ldr	r4, .L591+12
	str	r3, [r6]
	sub	sp, sp, #20
	ble	.L581
.L519:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L553
.L521:
	ldr	r2, .L591+16
	ldr	r1, [r2]
	ldr	r8, .L591+20
	ldr	r7, .L591+24
	cmp	r1, #0
	ldr	r5, [r7]
	ldr	r1, [r8]
	beq	.L523
	ldr	r0, .L591+28
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #25
	beq	.L584
.L524:
	ldr	r2, .L591+32
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L528
	ldr	r0, .L591+36
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #30
	mov	ip, #5
	moveq	r0, #0
	str	ip, [r4, #28]
	streq	r0, [r2]
.L528:
	ldr	r2, .L591+40
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L530
	ldr	r0, .L591+44
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #150
	moveq	r0, #0
	streq	r0, [r2]
	streq	r0, [r4, #28]
.L530:
	ldr	r0, .L591+48
	ldr	r2, .L591+52
	ldr	ip, [r0]
	ldr	r2, [r2]
	cmp	ip, #0
	sub	r2, r3, r2
	bne	.L585
	cmp	r2, #300
	moveq	r0, #1
	ldreq	r2, .L591+56
	streq	r0, [r2, #16]
.L533:
	cmp	r1, #0
	bne	.L586
.L535:
	ldr	r2, .L591+60
	ldr	r2, [r2]
	sub	r3, r3, r2
.L539:
	cmp	r3, #300
	moveq	r2, #1
	ldreq	r3, .L591+64
	streq	r2, [r3, #16]
	streq	r2, [r3, #36]
.L540:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L587
.L542:
	bl	updateGuy
	bl	updateDoor
	bl	updateKey
	bl	updateTele
	bl	updateBoots
	ldr	r3, .L591+68
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L548
	mov	r1, #1
	ldr	r2, .L591+72
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L548
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L548
	str	r1, [r2, #56]
.L546:
	bl	updateShirt
	bl	updateBubble
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateCrazy
.L548:
	rsbs	r1, r3, #3
	beq	.L546
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L591+72
.L550:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L550
	b	.L546
.L584:
	mov	ip, #0
	mov	r0, #10
	str	ip, [r2]
	ldr	r2, .L591+76
	str	r0, [r2]
.L523:
	orrs	r5, r1, r5
	bne	.L524
	ldr	r10, .L591+80
	ldr	r9, .L591+84
	ldr	fp, .L591+76
	b	.L552
.L588:
	ldr	r3, [fp]
	cmp	r3, r5
	ble	.L525
	add	r5, r5, #1
.L552:
	mov	r1, #0
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	r1, [sp, #8]
	str	r5, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r0, [r10]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L588
.L525:
	ldr	r3, [r4]
	sub	r5, r5, #1
	add	r5, r3, r5
	str	r5, [r4]
	ldr	r3, [r6]
	ldr	r1, [r8]
	b	.L524
.L585:
	cmp	r2, #120
	moveq	r2, #0
	streq	r2, [r0]
	cmp	r1, #0
	beq	.L535
.L586:
	mov	ip, #0
	ldr	r3, [r4, #8]
	rsb	r3, r3, #0
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	ldr	r0, .L591+80
	str	r3, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r0]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r5, .L591+84
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L589
.L536:
	ldr	r2, .L591+60
	ldr	r3, [r6]
	ldr	r2, [r2]
	sub	r3, r3, r2
	cmp	r3, #130
	beq	.L590
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L539
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L542
.L587:
	mov	ip, #0
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r0, .L591+80
	str	ip, [sp, #8]
	ldr	r0, [r0]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r4, .L591+84
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	streq	r0, [r7]
	b	.L542
.L581:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L520
	ldr	ip, .L591+88
	ldr	r0, [ip]
	add	r2, r2, #1
	add	r0, r0, #1
	cmp	r2, #1
	str	r2, [r1]
	str	r0, [ip]
	ble	.L521
	b	.L519
.L520:
	cmp	r2, #1
	ble	.L521
.L553:
	ldr	ip, .L591+88
	ldr	r0, [ip]
	sub	r2, r2, #1
	sub	r0, r0, #1
	str	r2, [r1]
	str	r0, [ip]
	b	.L521
.L589:
	ldr	r3, [r4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4]
	b	.L536
.L590:
	mov	r1, #0
	mov	r2, #10
	ldr	r3, .L591+76
	str	r1, [r8]
	str	r2, [r3]
	b	.L540
.L592:
	.align	2
.L591:
	.word	guyvOff
	.word	frame
	.word	606
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
	.word	vOff
	.size	updateGame, .-updateGame
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
	mov	r3, #4
	ldr	r2, .L618
	ldr	r1, [r2]
	ldr	r2, .L618+4
	cmp	r1, #0
	push	{r4, lr}
	str	r3, [r2, #40]
	beq	.L594
	ldr	r1, .L618+8
	ldr	r3, .L618+12
	ldr	r1, [r1]
	ldr	r3, [r3]
	orrs	r3, r1, r3
	bne	.L595
.L594:
	ldr	r1, .L618+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L618+20
	sub	r3, r3, r0
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #36]
	lsl	r3, r3, #23
	ldr	r0, .L618+24
	lsr	r3, r3, #23
	sub	r1, r1, ip
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	and	r1, r1, #255
	add	r2, r2, #15
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L593:
	pop	{r4, lr}
	bx	lr
.L595:
	ldr	r3, [r2, #28]
	cmp	r3, #0
	beq	.L613
	cmp	r3, #2
	beq	.L594
	cmp	r3, #1
	beq	.L614
	cmp	r3, #3
	beq	.L615
	cmp	r3, #5
	beq	.L616
	cmp	r3, #4
	beq	.L617
	cmp	r3, #6
	bne	.L593
	b	.L594
.L613:
	ldr	r1, .L618+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L618+20
	sub	r3, r3, r0
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #36]
	lsl	r3, r3, #23
	ldr	r0, .L618+24
	lsr	r3, r3, #23
	sub	r1, r1, ip
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	and	r1, r1, #255
	add	r2, r2, #17
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L616:
	mov	r0, #19
	ldr	r1, .L618+16
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L618+20
	sub	r3, r3, ip
	lsl	r3, r3, #23
	ldr	r2, [r2]
	ldr	ip, [r1]
	lsr	r3, r3, #23
.L612:
	ldr	r1, .L618+24
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L593
.L614:
	mov	r0, #23
	ldr	r1, .L618+16
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L618+20
	sub	r3, r3, ip
	lsl	r3, r3, r0
	ldr	r2, [r2]
	ldr	ip, [r1]
	lsr	r3, r3, r0
	b	.L612
.L615:
	mov	lr, #2
	ldr	r1, .L618+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L618+20
	sub	r3, r3, r0
	ldr	r4, [r1]
	ldr	r0, [r2]
	ldr	r1, [r2, #36]
	lsl	r3, r3, #23
	ldr	ip, .L618+24
	lsr	r3, r3, #23
	sub	r0, r0, r4
	lsl	r1, r1, #6
	orr	r3, r3, #16384
	and	r0, r0, #255
	add	r1, r1, #21
	strh	r3, [ip, #2]	@ movhi
	strh	r0, [ip]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	str	lr, [r2, #40]
	b	.L593
.L617:
	mov	lr, #2
	ldr	r1, .L618+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L618+20
	sub	r3, r3, r0
	ldr	r4, [r1]
	ldr	r0, [r2]
	ldr	r1, [r2, #36]
	lsl	r3, r3, #23
	ldr	ip, .L618+24
	lsr	r3, r3, #23
	sub	r0, r0, r4
	lsl	r1, r1, #6
	orr	r3, r3, #16384
	and	r0, r0, #255
	add	r1, r1, #25
	strh	r3, [ip, #2]	@ movhi
	strh	r0, [ip]	@ movhi
	strh	r1, [ip, #4]	@ movhi
	str	lr, [r2, #40]
	b	.L593
.L619:
	.align	2
.L618:
	.word	life
	.word	guy
	.word	time_m
	.word	time_s
	.word	guyhOff
	.word	guyvOff
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
	ldr	r2, .L633
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, [r2]
	mov	r5, #512
	mov	r2, #0
	ldr	r3, .L633+4
	ldr	r7, [r3]
	lsl	lr, r4, #16
	lsl	ip, r7, #16
	ldr	r3, .L633+8
	ldr	r0, .L633+12
	ldr	r10, .L633+16
	ldr	fp, .L633+20
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L623:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L621
	ldr	r6, [r3]
	sub	r8, r6, r4
	cmp	r8, #0
	ble	.L621
	ldr	r9, [r3, #4]
	sub	r1, r9, r7
	sub	r1, r1, #1
	cmp	r1, #238
	movhi	r1, #0
	movls	r1, #1
	cmp	r8, #159
	movgt	r1, #0
	cmp	r1, #0
	bne	.L632
.L621:
	strh	r5, [r0, #120]	@ movhi
.L622:
	cmp	r2, #1
	add	r3, r3, #20
	bne	.L624
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L624:
	mov	r2, #1
	b	.L623
.L632:
	sub	r1, r6, lr
	and	r1, r1, #255
	orr	r1, r1, r10
	strh	r1, [r0, #120]	@ movhi
	mov	r1, #8	@ movhi
	sub	r6, r9, ip
	and	r6, r6, fp
	orr	r6, r6, r10
	strh	r6, [r0, #122]	@ movhi
	strh	r1, [r0, #124]	@ movhi
	b	.L622
.L634:
	.align	2
.L633:
	.word	vOff
	.word	hOff
	.word	door
	.word	shadowOAM
	.word	-32768
	.word	511
	.size	drawDoor, .-drawDoor
	.align	2
	.global	drawKey
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKey, %function
drawKey:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L656
	ldr	r1, .L656+4
	ldr	r3, [r8, #24]
	ldr	r2, .L656+8
	ldr	r10, [r1]
	ldr	lr, [r8, #20]
	ldr	r1, [r2]
	sub	r2, r3, #1
	sub	r2, r2, r10
	cmp	r2, #238
	sub	r6, lr, r1
	movhi	r0, #0
	movls	r0, #1
	cmp	r6, #159
	movgt	r0, #0
	sub	sp, sp, #12
	str	r0, [sp, #4]
	mov	r5, #512
	mov	r0, #1
	ldr	ip, [r8, #4]
	lsl	r9, r10, #16
	ldr	r7, [r8]
	ldr	fp, .L656+12
	lsr	r9, r9, #16
	lsl	r2, r1, #16
	sub	r3, r3, r9
	lsr	r2, r2, #16
	sub	r9, ip, r9
	and	r3, r3, fp
	sub	lr, lr, r2
	sub	r1, r7, r1
	sub	r2, r7, r2
	sub	ip, ip, #1
	ldr	r7, [r8, #36]
	and	r9, r9, fp
	ldr	r4, .L656+16
	ldr	r8, [r8, #16]
	sub	ip, ip, r10
	orr	r3, r3, #16384
	orr	fp, r9, #16384
	and	lr, lr, #255
	and	r2, r2, #255
	sub	r1, r1, #1
.L642:
	cmp	r0, #1
	beq	.L654
	cmp	r7, #0
	beq	.L639
	cmp	r6, #0
	ble	.L639
	ldr	r10, [sp, #4]
	cmp	r10, #0
	bne	.L655
.L639:
	strh	r5, [r4]	@ movhi
.L640:
	cmp	r0, #2
	bne	.L643
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L654:
	cmp	r8, #0
	beq	.L637
	cmp	r1, #158
	bhi	.L637
	cmp	ip, #238
	bhi	.L637
	ldr	r9, .L656+20
	strh	r2, [r9]	@ movhi
	strh	fp, [r9, #2]	@ movhi
	add	r10, r9, #2
	mov	r9, #6	@ movhi
	strh	r9, [r10, #2]	@ movhi
.L643:
	add	r0, r0, #1
	b	.L642
.L637:
	ldr	r9, .L656+20
	add	r0, r0, #1
	strh	r5, [r9]	@ movhi
	b	.L642
.L655:
	mov	r10, #70	@ movhi
	ldr	r9, .L656+24
	strh	lr, [r4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r10, [r9]	@ movhi
	b	.L640
.L657:
	.align	2
.L656:
	.word	key
	.word	hOff
	.word	vOff
	.word	511
	.word	shadowOAM+648
	.word	shadowOAM+640
	.word	shadowOAM+652
	.size	drawKey, .-drawKey
	.align	2
	.global	drawTele
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTele, %function
drawTele:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, #0
	mov	r8, #512
	ldr	r2, .L671
	ldr	r3, .L671+4
	ldr	lr, [r2]
	ldr	r6, [r3]
	lsl	r5, lr, #16
	lsl	r4, r6, #16
	ldr	r1, .L671+8
	ldr	r2, .L671+12
	ldr	fp, .L671+16
	lsr	r5, r5, #16
	lsr	r4, r4, #16
.L664:
	ldr	r0, [r2]
	sub	r10, r0, lr
	cmp	r10, #0
	add	r3, ip, #1
	ble	.L659
	ldr	r7, [r2, #4]
	sub	r9, r7, r6
	sub	r9, r9, #1
	cmp	r9, #238
	movhi	r9, #0
	movls	r9, #1
	cmp	r10, #159
	movgt	r9, #0
	cmp	r9, #0
	bne	.L669
.L659:
	lsl	r0, r3, #3
	strh	r8, [r0, r1]	@ movhi
.L662:
	cmp	r3, #2
	beq	.L658
.L661:
	mov	ip, r3
	add	r2, r2, #20
	b	.L664
.L658:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L669:
	sub	r9, r7, r4
	lsl	r9, r9, #23
	sub	r10, r0, r5
	lsr	r9, r9, #23
	cmp	ip, #0
	and	r10, r10, #255
	orr	r9, r9, fp
	beq	.L670
	mov	ip, #540	@ movhi
	ldr	r0, .L671+20
	strh	r10, [r0]	@ movhi
	strh	r9, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	b	.L662
.L670:
	mov	r0, #668	@ movhi
	ldr	r7, .L671+24
	strh	r10, [r7, #-2]	@ movhi
	strh	r9, [r7]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	b	.L661
.L672:
	.align	2
.L671:
	.word	vOff
	.word	hOff
	.word	shadowOAM+392
	.word	tele
	.word	-32768
	.word	shadowOAM+408
	.word	shadowOAM+402
	.size	drawTele, .-drawTele
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
	ldr	r3, .L683
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L674
	ldr	r1, .L683+4
	ldr	r2, [r3]
	ldr	r1, [r1]
	sub	r2, r2, r1
	cmp	r2, #0
	ble	.L674
	ldr	r1, .L683+8
	ldr	r3, [r3, #4]
	ldr	r1, [r1]
	sub	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #238
	movhi	r1, #0
	movls	r1, #1
	cmp	r2, #159
	movgt	r1, #0
	cmp	r1, #0
	bne	.L682
.L674:
	mov	r2, #512
	ldr	r3, .L683+12
	strh	r2, [r3, #136]	@ movhi
	bx	lr
.L682:
	mov	r0, #4
	lsl	r3, r3, #23
	ldr	r1, .L683+12
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #138]	@ movhi
	strh	r2, [r1, #136]	@ movhi
	strh	r0, [r1, #140]	@ movhi
	bx	lr
.L684:
	.align	2
.L683:
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #0
	mov	r5, #512
	mov	r9, #2
	ldr	r2, .L698
	ldr	r3, .L698+4
	ldr	r4, [r2]
	ldr	r6, [r3]
	lsl	lr, r4, #16
	lsl	ip, r6, #16
	ldr	r3, .L698+8
	ldr	r2, .L698+12
	ldr	r10, .L698+16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L688:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L686
	ldr	r8, [r3]
	sub	r7, r8, r4
	cmp	r7, #0
	ble	.L686
	ldr	fp, [r3, #4]
	sub	r0, fp, r6
	sub	r0, r0, #1
	cmp	r0, #238
	movhi	r0, #0
	movls	r0, #1
	cmp	r7, #159
	movgt	r0, #0
	cmp	r0, #0
	bne	.L697
.L686:
	strh	r5, [r2]	@ movhi
.L687:
	cmp	r1, #1
	add	r3, r3, #20
	add	r2, r2, #8
	bne	.L689
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L689:
	mov	r1, #1
	b	.L688
.L697:
	sub	r0, fp, ip
	and	r0, r0, r10
	sub	r8, r8, lr
	orr	r0, r0, #16384
	and	r8, r8, #255
	strh	r0, [r2, #2]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	r9, [r2, #4]	@ movhi
	b	.L687
.L699:
	.align	2
.L698:
	.word	vOff
	.word	hOff
	.word	shirt
	.word	shadowOAM+480
	.word	511
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #0
	mov	r5, #512
	mov	r9, #10
	ldr	r2, .L713
	ldr	r3, .L713+4
	ldr	r4, [r2]
	ldr	r6, [r3]
	lsl	lr, r4, #16
	lsl	ip, r6, #16
	ldr	r3, .L713+8
	ldr	r2, .L713+12
	ldr	r10, .L713+16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L703:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L701
	ldr	r8, [r3]
	sub	r7, r8, r4
	cmp	r7, #0
	ble	.L701
	ldr	fp, [r3, #4]
	sub	r0, fp, r6
	sub	r0, r0, #1
	cmp	r0, #238
	movhi	r0, #0
	movls	r0, #1
	cmp	r7, #159
	movgt	r0, #0
	cmp	r0, #0
	bne	.L712
.L701:
	strh	r5, [r2]	@ movhi
.L702:
	cmp	r1, #1
	add	r3, r3, #20
	add	r2, r2, #8
	bne	.L704
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L704:
	mov	r1, #1
	b	.L703
.L712:
	sub	r0, fp, ip
	and	r0, r0, r10
	sub	r8, r8, lr
	orr	r0, r0, #16384
	and	r8, r8, #255
	strh	r0, [r2, #2]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	r9, [r2, #4]	@ movhi
	b	.L702
.L714:
	.align	2
.L713:
	.word	vOff
	.word	hOff
	.word	bubble
	.word	shadowOAM+560
	.word	511
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
	@ link register save eliminated.
	ldr	r2, .L722
	ldr	r1, .L722+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	cmp	r3, #0
	ble	.L716
	ldr	r0, .L722+8
	ldr	r1, [r2, #4]
	ldr	r0, [r0]
	sub	r1, r1, r0
	sub	r0, r1, #1
	cmp	r0, #238
	movhi	r0, #0
	movls	r0, #1
	cmp	r3, #159
	movgt	r0, #0
	cmp	r0, #0
	bne	.L721
.L716:
	mov	r2, #512
	ldr	r3, .L722+12
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L721:
	ldr	r2, [r2, #36]
	ldr	r0, .L722+12
	lsl	r2, r2, #6
	add	r2, r2, #13
	orr	r1, r1, #16384
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	strh	r1, [r0, #18]	@ movhi
	bx	lr
.L723:
	.align	2
.L722:
	.word	customer
	.word	vOff
	.word	hOff
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L739
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L739+4
	mov	lr, r3
	ldr	r2, .L739+8
	ldr	r3, [r3, #456]
	ldr	r7, [r1]
	ldr	fp, [r2]
	lsl	r3, r3, #23
	add	r3, r3, #5439488
	sub	sp, sp, #12
	lsl	r6, r7, #16
	lsl	r5, fp, #16
	lsr	r3, r3, #16
	mov	r4, #0
	mov	r10, #512
	ldr	r0, .L739+12
	ldr	r9, .L739+16
	ldr	r8, .L739+20
	str	r3, [sp, #4]
	lsr	r6, r6, #16
	lsr	r5, r5, #16
	b	.L734
.L732:
	mov	r4, r3
	add	lr, lr, #60
	add	r0, r0, #8
.L734:
	ldr	r3, [lr]
	ldr	r1, [lr, #4]
	sub	r2, r3, r6
	lsl	r2, r2, #16
	sub	r3, r3, r7
	sub	r3, r3, #1
	lsr	r2, r2, #16
	sub	ip, r1, r5
	and	ip, ip, r9
	cmp	r3, #158
	sub	r3, r2, #14
	and	r3, r3, #255
	orr	ip, ip, r8
	strh	r3, [r0, #240]	@ movhi
	strh	ip, [r0, #242]	@ movhi
	add	r3, r4, #1
	bhi	.L725
	sub	r1, r1, fp
	sub	r1, r1, #1
	cmp	r1, #238
	bls	.L736
.L725:
	strh	r10, [r0, #240]	@ movhi
.L728:
	cmp	r3, #9
	bne	.L732
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L736:
	sub	r1, r4, #2
	cmp	r4, #0
	cmpne	r1, #1
	bhi	.L726
	ldr	r2, [lr, #12]
	cmn	r2, #1
	ldr	r2, [lr, #36]
	lsl	r2, r2, #7
	addeq	r2, r2, #129
	addne	r2, r2, #133
	strh	r2, [r0, #244]	@ movhi
	b	.L728
.L726:
	sub	r1, r4, #6
	bics	r1, r1, #2
	beq	.L737
	cmp	r4, #7
	beq	.L738
	ldr	r2, [lr, #36]
	lsl	r2, r2, #7
	add	r2, r2, #137
	strh	r2, [r0, #244]	@ movhi
	b	.L728
.L737:
	ldr	r1, [lr, #36]
	sub	r2, r2, #17
	ldr	ip, [lr, #12]
	and	r2, r2, #255
	orr	r2, r2, r8
	lsl	r1, r1, #23
	cmp	ip, #1
	strh	r2, [r0, #240]	@ movhi
	lsr	r2, r1, #16
	addeq	r2, r2, #27
	addne	r2, r2, #29
	strh	r2, [r0, #244]	@ movhi
	b	.L728
.L738:
	ldr	r2, .L739+24
	ldr	r1, [sp, #4]
	strh	r1, [r2]	@ movhi
	b	.L732
.L740:
	.align	2
.L739:
	.word	crazy
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	511
	.word	-32768
	.word	shadowOAM+300
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
	mov	r2, #0
	mov	r5, #512
	mov	r4, #12
	ldr	r3, .L747
	ldr	ip, .L747+4
	ldr	lr, .L747+8
	ldm	r3, {r0, r1}
	ldr	ip, [ip]
	ldr	r3, [lr]
	sub	r0, r0, #8
	sub	r1, r1, #8
	sub	r0, r0, ip
	sub	r1, r1, r3
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	ldr	ip, .L747+12
	ldr	r3, .L747+16
	lsr	r0, r0, #16
	lsr	r1, r1, #16
.L744:
	ldr	lr, [ip, #16]
	cmp	lr, #0
	add	lr, r1, r2
	add	r2, r2, #8
	strhne	r0, [r3, #72]	@ movhi
	strhne	lr, [r3, #74]	@ movhi
	strhne	r4, [r3, #76]	@ movhi
	strheq	r5, [r3, #72]	@ movhi
	cmp	r2, #24
	add	ip, ip, #20
	add	r3, r3, #8
	bne	.L744
	pop	{r4, r5, lr}
	bx	lr
.L748:
	.align	2
.L747:
	.word	guy
	.word	guyvOff
	.word	guyhOff
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
	push	{r4, lr}
	bl	drawGuy
	bl	drawDoor
	bl	drawKey
	bl	drawTele
	bl	drawBoots
	bl	drawHeart
	bl	drawShirt
	bl	drawCustomer
	bl	drawBubble
	bl	drawCrazy
	ldr	r3, .L751
	mov	lr, pc
	bx	r3
	ldr	r4, .L751+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L751+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L751+12
	ldrh	r1, [r2]
	ldr	r2, .L751+16
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L752:
	.align	2
.L751:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.comm	boots,20,4
	.comm	door,40,4
	.comm	bubble,40,4
	.comm	tele,40,4
	.comm	shirt,40,4
	.comm	key,40,4
	.comm	scoreUI,40,4
	.comm	heart,60,4
	.comm	crazy,540,4
	.comm	hammer,56,4
	.comm	customer,56,4
	.comm	kong,56,4
	.comm	guy,56,4
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
	.comm	guyvOff,4,4
	.comm	guyhOff,4,4
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
