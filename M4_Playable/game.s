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
	mov	r2, #1
	mov	r4, #104
	mov	lr, #4
	mov	r1, #0
	mov	ip, #2
	ldr	r3, .L35
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	ldr	r0, .L35+4
	str	lr, [r3, #40]
	stm	r3, {r0, r4}
	str	ip, [r3, #28]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r1, [r3, #24]
	str	r1, [r3, #36]
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
	str	r5, [r2, #48]
	str	r5, [r2, #52]
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r6, #1
	ldr	r4, .L195
	add	r2, r4, #16
	ldr	r5, .L195+4
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	r7, .L195+8
	sub	sp, sp, #20
.L175:
	cmp	r6, #1
	beq	.L188
	ldr	ip, [r4, #52]
	add	r8, r5, #28
	cmp	ip, #0
	ldr	lr, [r5, #20]
	ldr	ip, [r5, #24]
	ldm	r8, {r8, r9}
	bne	.L189
.L169:
	stm	sp, {ip, lr}
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	addne	r3, r3, #1
	strne	r3, [r4, #4]
.L171:
	cmp	r6, #2
	bne	.L190
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L188:
	ldr	ip, [r4, #48]
	add	r8, r5, #8
	cmp	ip, #0
	ldr	lr, [r5]
	ldr	ip, [r5, #4]
	ldm	r8, {r8, r9}
	bne	.L191
.L165:
	stm	sp, {ip, lr}
	str	r9, [sp, #12]
	str	r8, [sp, #8]
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
	str	r9, [sp, #12]
	str	r8, [sp, #8]
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
.L190:
	ldr	r0, [r4, #4]
.L187:
	add	r2, r4, #16
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	b	.L176
.L189:
	stm	sp, {ip, lr}
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L194
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L171
	add	r2, r4, #16
	add	r8, r5, #28
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	ip, [r5, #24]
	ldr	lr, [r5, #20]
	ldm	r8, {r8, r9}
	b	.L169
.L192:
	mov	r2, #0
	ldr	r3, .L195+12
	ldr	r0, .L195+16
	ldrh	r3, [r3]
	ldr	r1, .L195+20
	ldr	ip, .L195+24
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	str	r2, [r5, #16]
	add	r2, r4, #16
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldm	r2, {r2, r3}
	b	.L176
.L194:
	mov	r1, #0
	ldr	r3, .L195+12
	ldr	r2, .L195+28
	ldrh	r3, [r3]
	str	r1, [r5, #36]
	ldr	r1, .L195+32
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [r2, #128]	@ movhi
	strh	r3, [r1, #-62]	@ movhi
	strh	r3, [r2, #66]	@ movhi
	strh	r3, [r1, #66]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	strh	r3, [r2, #132]	@ movhi
	b	.L171
.L193:
	add	r8, r5, #8
	ldr	ip, [r5, #4]
	ldr	lr, [r5]
	ldm	r8, {r8, r9}
	b	.L165
.L196:
	.align	2
.L195:
	.word	guy
	.word	door
	.word	collision
	.word	100724482
	.word	100724584
	.word	100724648
	.word	100724520
	.word	100722442
	.word	100722506
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
	ldr	r4, .L219
	ldr	r6, .L219+4
	ldr	r8, .L219+8
	ldr	r9, .L219+12
	sub	sp, sp, #20
.L207:
	cmp	r5, #1
	beq	.L217
	ldr	r7, [r4, #52]
	cmp	r7, #0
	beq	.L218
.L204:
	cmp	r5, #2
	bne	.L208
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L217:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L199
.L202:
	ldr	r3, [r4]
	cmp	r3, r9
	movle	r2, #0
	movle	r3, #1
	strle	r2, [r6, #16]
	strle	r3, [r4, #48]
.L208:
	add	r5, r5, #1
	b	.L207
.L199:
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
	beq	.L202
	mov	r2, #0
	mov	r3, #1
	str	r2, [r6, #16]
	str	r3, [r4, #48]
	b	.L208
.L218:
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
	b	.L204
.L220:
	.align	2
.L219:
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
	ldr	r5, .L227
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	sub	sp, sp, #16
	ldr	r4, .L227+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L227+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L221
	mov	r1, #96
	mov	r0, #230
	ldr	r2, [r5, #8]
	ldr	r3, [r4, #16]
	rsb	r2, r2, #60
	add	r3, r3, r2, lsl #1
	ldr	ip, .L227+12
	ldr	r2, .L227+16
	str	r3, [r4, #4]
	str	r1, [ip]
	str	r1, [r2]
	str	r0, [r4]
.L221:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L228:
	.align	2
.L227:
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
	ldr	r4, .L238
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L237
.L229:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L237:
	ldr	r0, .L238+4
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
	ldr	r5, .L238+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L229
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L238+12
	ldr	r0, .L238+16
	ldr	ip, [r3]
	ldr	r3, .L238+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L239:
	.align	2
.L238:
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
	ldr	r4, .L251
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #0
	ldr	r6, .L251+4
	ldr	r8, .L251+8
	ldr	r7, .L251+12
	sub	sp, sp, #16
	bne	.L250
.L242:
	cmp	r5, #1
	add	r4, r4, #20
	bne	.L245
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L245:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #1
	beq	.L242
.L250:
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
	b	.L242
.L252:
	.align	2
.L251:
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
	ldr	r4, .L264
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	fp, r5
	ldr	r6, .L264+4
	ldr	r7, .L264+8
	ldr	r10, .L264+12
	ldr	r9, .L264+16
	ldr	r8, .L264+20
	sub	sp, sp, #20
	bne	.L263
.L255:
	cmp	r5, #1
	add	r4, r4, #20
	bne	.L258
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L258:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #1
	beq	.L255
.L263:
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
	beq	.L255
	mov	r3, #1
	mov	r2, #6
	str	r3, [r8]
	ldr	r3, [r9]
	str	fp, [r4, #16]
	str	r2, [r6, #28]
	str	r3, [r10]
	b	.L255
.L265:
	.align	2
.L264:
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
	ldr	r4, .L269
	ldr	r3, [r4, #24]
	ldr	r2, .L269+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4, #24]
	bne	.L266
	ldr	r0, [r4, #36]
	ldr	r3, .L269+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L266:
	pop	{r4, lr}
	bx	lr
.L270:
	.align	2
.L269:
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
	ldr	r3, .L289
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L272
	mov	r1, #1
	ldr	r2, .L289+4
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L272
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L272
	str	r1, [r2, #56]
	bx	lr
.L272:
	rsbs	r1, r3, #3
	bxeq	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L289+4
.L275:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L275
	bx	lr
.L290:
	.align	2
.L289:
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
	ldr	r4, .L343
	add	r5, r4, #24
	ldm	r5, {r5, r6}
	tst	r5, #7
	str	r6, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #20
	bne	.L292
	ldr	r0, [r4, #36]
	ldr	r3, .L343+4
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L292:
	ldr	r2, .L343+8
	ldr	r3, .L343+12
	ldr	r1, [r2]
	ldr	r3, [r3]
	ldr	r2, .L343+16
	orrs	r1, r3, r1
	ldr	r2, [r2]
	bne	.L293
	ldr	r5, .L343+20
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L294
	ldr	r3, .L343+24
	ldrh	r1, [r3, #48]
	tst	r1, #32
	bne	.L295
	cmp	r2, #0
	bne	.L296
	ldr	r2, .L343+28
	ldr	r2, [r2]
	cmp	r2, #0
	ldrh	r3, [r3, #48]
	bne	.L336
	tst	r3, #16
	str	r2, [r4, #28]
	beq	.L298
	ldr	r6, .L343+32
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L303
	ldr	r3, .L343+36
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L339
.L303:
	ldr	r5, [r4, #24]
.L317:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L293:
	orrs	r3, r3, r2
	beq	.L340
.L294:
	mov	r3, #0
	str	r6, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L340:
	ldr	r2, .L343+28
	ldr	r3, .L343+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L294
	ldr	r3, .L343+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L341
.L315:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L317
.L295:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L300
	cmp	r2, #0
	beq	.L342
.L300:
	ldr	r6, [r4, #32]
	b	.L294
.L296:
	ldrh	r3, [r3, #48]
	b	.L300
.L341:
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L294
	b	.L315
.L342:
	ldr	r3, .L343+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L298
.L336:
	ldr	r3, [r4, #28]
.L307:
	cmp	r3, #8
	bne	.L303
	b	.L300
.L298:
	mov	r3, #2
	ldr	r6, .L343+32
	str	r3, [r4, #28]
.L302:
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L303
	ldr	r3, .L343+36
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L303
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #8]
	ldr	r7, .L343+40
	ldr	r3, [r4]
	ldr	r0, [r7]
	ldr	r6, .L343+44
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r6
	subs	ip, r0, #0
	bne	.L336
	mvn	r9, #23
	mov	r8, #15
	mov	r3, #3
	mov	r2, #1
	ldr	r0, .L343+48
	ldr	r1, .L343+52
	ldr	lr, [r0]
	ldr	r0, [r7]
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	str	lr, [r1]
	ldr	r1, [r4, #20]
	ldr	lr, .L343+56
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
	beq	.L336
	ldr	r3, .L343+60
	ldr	r3, [r3]
	ldm	r4, {r1, r2}
	cmp	r3, #0
	subne	r1, r1, #50
	addne	r2, r2, #25
	subeq	r1, r1, #24
	addeq	r2, r2, #15
	stm	r4, {r1, r2}
	ldr	r3, [r4, #28]
	b	.L307
.L339:
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #8]
	ldr	r8, .L343+40
	ldr	r3, [r4]
	ldr	r0, [r8]
	ldr	r7, .L343+44
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	subs	ip, r0, #0
	beq	.L304
	ldr	r3, [r4, #28]
	cmp	r3, #2
	beq	.L302
	b	.L307
.L304:
	mvn	lr, #14
	mov	r2, #1
	mvn	r6, #23
	ldr	r1, .L343+48
	ldr	r0, [r8]
	ldr	r1, [r1]
	str	lr, [sp, #8]
	ldr	lr, [r4, #20]
	str	lr, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	r3, .L343+52
	str	lr, [sp]
	ldr	lr, .L343+56
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
	beq	.L336
	ldr	r3, .L343+60
	ldr	r3, [r3]
	cmp	r3, #0
	ldm	r4, {r2, r3}
	subne	r3, r3, #25
	subeq	r3, r3, #15
	subne	r2, r2, #50
	subeq	r2, r2, #24
	stm	r4, {r2, r3}
	ldr	r3, [r4, #28]
	b	.L307
.L344:
	.align	2
.L343:
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
	ldr	r10, .L403
	ldr	r3, [r10]
	cmp	r3, #0
	sub	sp, sp, #20
	bgt	.L397
.L347:
	ldr	r9, .L403+4
	ldr	r4, .L403+8
	ldr	r3, [r9]
	ldr	r8, .L403+12
	ldr	r7, .L403+16
	ldr	fp, .L403+20
	ldr	r6, .L403+24
	add	r5, r4, #540
.L353:
	cmp	r3, #0
	bne	.L349
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L398
.L350:
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L349
	ldr	r1, [r8]
	ldr	r2, [fp]
	orrs	r2, r1, r2
	bne	.L349
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L349
	ldr	r2, [r6, #28]
	cmp	r2, #1
	beq	.L399
	cmp	r2, #3
	bne	.L349
	ldr	r1, [r6]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L349
	ldr	r1, [r6, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L349
	mov	r1, #1
	ldr	r0, .L403+28
	ldr	r2, [r0]
	add	r2, r2, r1
	str	r2, [r0]
	str	r1, [r4, #52]
.L349:
	add	r4, r4, #60
	cmp	r5, r4
	bne	.L353
.L401:
	ldr	r2, [r8]
	orrs	r3, r3, r2
	ldr	r3, [r7]
	bne	.L395
	cmp	r3, #0
	bne	.L355
	ldr	r3, .L403+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L356
	ldr	r3, .L403+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L400
.L357:
	ldr	r3, .L403+36
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L359
	ldr	r3, [r7]
.L395:
	ldr	r4, .L403+20
.L354:
	ldr	r2, [r4]
	orrs	r3, r3, r2
	bne	.L355
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L365
.L355:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateGuy
.L398:
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
	ldr	ip, .L403+40
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	ldreq	r3, [r9]
	beq	.L350
.L351:
	mov	r2, #1
	mov	r1, #0
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r3, .L403+44
	str	r1, [r4, #48]
	ldr	r3, [r3]
	str	r2, [r8]
	ldr	r1, .L403+48
	ldr	r2, .L403+52
	add	r4, r4, #60
	cmp	r5, r4
	str	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r9]
	bne	.L353
	b	.L401
.L397:
	ldr	r2, .L403+56
	add	ip, r2, #16
	ldr	r0, .L403+24
	ldm	r2, {r1, r2}
	ldm	ip, {ip, lr}
	ldr	r3, [r0, #20]
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	ldr	r4, .L403+40
	ldr	r2, [r0, #16]
	ldr	r1, [r0]
	lsl	r3, r3, #1
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L347
	mov	r0, #1
	ldr	r2, .L403+28
	ldr	r3, [r2]
	ldr	r1, .L403+60
	add	r3, r3, #5
	str	r3, [r2]
	str	r0, [r1]
	b	.L347
.L356:
	ldr	r3, .L403+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L355
.L365:
	ldr	r3, .L403+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L402
.L363:
	ldr	r3, .L403+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L355
	ldr	r4, .L403+24
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L403+64
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L403+68
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L355
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L355
	ldr	ip, .L403+72
	ldr	r2, [r4, #12]
	ldr	r1, [ip]
	add	r3, r3, r2
	cmp	r1, #14
	str	r3, [r4, #4]
	bgt	.L355
	ldr	r0, .L403+76
	ldr	lr, [r0]
	sub	r3, r3, lr
	cmp	r3, #120
	ble	.L355
.L396:
	add	r1, r2, r1
	add	r2, r2, lr
	str	r1, [ip]
	str	r2, [r0]
	b	.L355
.L399:
	ldr	r0, [r6]
	ldr	r1, [r4]
	cmp	r0, r1
	bge	.L349
	ldr	r0, [r6, #4]
	ldr	r1, [r4, #4]
	cmp	r0, r1
	bgt	.L349
	ldr	r0, .L403+28
	ldr	r1, [r0]
	add	r1, r1, #3
	str	r2, [r4, #52]
	str	r1, [r0]
	b	.L349
.L400:
	ldr	r5, .L403+24
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
	ldr	r6, .L403+64
	add	r2, r2, r2, lsr #31
	add	r2, ip, r2, asr #1
	mov	r1, #256
	ldr	r3, [r5]
	ldr	r0, [r6]
	ldr	r9, .L403+80
	sub	r2, r2, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L357
	mov	r1, #1
	ldr	ip, .L403+84
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r2, [ip]
	ldr	r4, .L403+20
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5]
	str	r1, [r4]
	ble	.L358
	ldr	lr, .L403+88
	ldr	r1, [lr]
	sub	r10, r3, r1
	cmp	r10, #80
	suble	r1, r1, r0
	suble	r2, r2, r0
	strle	r1, [lr]
	strle	r2, [ip]
.L358:
	ldr	r2, .L403+36
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L355
.L366:
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
	bne	.L360
	ldr	r3, [r7]
	b	.L354
.L359:
	ldr	r5, .L403+24
	ldr	r4, .L403+20
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r6, .L403+64
	ldr	r9, .L403+80
	b	.L366
.L402:
	ldr	r4, .L403+24
	add	r0, r4, #16
	ldr	r2, [r4, #12]
	ldm	r0, {r0, ip}
	rsb	r2, r2, #0
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, .L403+64
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L403+68
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L363
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L363
	ldr	lr, .L403+72
	ldr	r0, [r4, #12]
	ldr	r1, [lr]
	sub	r3, r3, r0
	cmp	r1, #0
	str	r3, [r4, #4]
	ble	.L363
	ldr	ip, .L403+76
	ldr	r2, [ip]
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r1, r1, r0
	suble	r2, r2, r0
	strle	r1, [lr]
	strle	r2, [ip]
	b	.L363
.L360:
	mov	r1, #1
	ldr	r0, .L403+84
	ldr	r3, .L403+92
	ldr	lr, [r0]
	ldr	r2, [r5, #8]
	cmp	lr, r3
	ldr	r3, [r5]
	add	r3, r2, r3
	str	r3, [r5]
	str	r1, [r4]
	bgt	.L355
	ldr	ip, .L403+88
	ldr	r1, [ip]
	sub	r3, r3, r1
	cmp	r3, #80
	ble	.L355
	b	.L396
.L404:
	.align	2
.L403:
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
	ldr	r4, .L408
	ldr	r3, [r4, #24]
	ldr	r2, .L408+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4, #24]
	bne	.L405
	ldr	r0, [r4, #36]
	ldr	r3, .L408+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L405:
	pop	{r4, lr}
	bx	lr
.L409:
	.align	2
.L408:
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
	ldr	r4, .L418
	ldr	r6, .L418+4
	add	r5, r4, #540
.L412:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	tst	r3, #7
	str	r3, [r4, #24]
	bne	.L411
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L411
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L411:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L412
	pop	{r4, r5, r6, lr}
	bx	lr
.L419:
	.align	2
.L418:
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
	ldr	lr, .L517
	ldr	r4, .L517+4
	ldr	r6, [lr, #16]
	ldr	r5, [lr, #196]
	ldr	r10, .L517+8
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
.L450:
	cmp	r5, #49
	ble	.L421
	ldr	r0, [r2, #48]
	cmp	r0, #0
	moveq	r0, #1
	streq	r0, [r2, #48]
.L421:
	cmp	r3, #0
	beq	.L515
	cmp	r3, #2
	beq	.L516
	cmp	r3, #3
	bne	.L430
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
.L433:
	add	r3, r3, #1
	cmp	r3, #9
	add	r2, r2, #60
	bne	.L450
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
	b	.L448
.L515:
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
	b	.L433
.L430:
	cmp	r3, #6
	bne	.L429
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
	b	.L450
.L429:
	cmp	r3, #8
	bne	.L433
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
.L448:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateCrazy
.L516:
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
	b	.L433
.L518:
	.align	2
.L517:
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
	ldr	r1, .L592
	ldr	r6, .L592+4
	ldr	r2, [r1]
	ldr	r3, [r6]
	ldr	r0, .L592+8
	add	r3, r3, #1
	cmp	r2, r0
	ldr	r4, .L592+12
	str	r3, [r6]
	sub	sp, sp, #20
	ble	.L582
.L520:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L554
.L522:
	ldr	r2, .L592+16
	ldr	r1, [r2]
	ldr	r8, .L592+20
	ldr	r7, .L592+24
	cmp	r1, #0
	ldr	r5, [r7]
	ldr	r1, [r8]
	beq	.L524
	ldr	r0, .L592+28
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #25
	beq	.L585
.L525:
	ldr	r2, .L592+32
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L529
	ldr	r0, .L592+36
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #30
	mov	ip, #5
	moveq	r0, #0
	str	ip, [r4, #28]
	streq	r0, [r2]
.L529:
	ldr	r2, .L592+40
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L531
	ldr	r0, .L592+44
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #150
	moveq	r0, #0
	streq	r0, [r2]
	streq	r0, [r4, #28]
.L531:
	ldr	r0, .L592+48
	ldr	r2, .L592+52
	ldr	ip, [r0]
	ldr	r2, [r2]
	cmp	ip, #0
	sub	r2, r3, r2
	bne	.L586
	cmp	r2, #300
	moveq	r0, #1
	ldreq	r2, .L592+56
	streq	r0, [r2, #16]
.L534:
	cmp	r1, #0
	bne	.L587
.L536:
	ldr	r2, .L592+60
	ldr	r2, [r2]
	sub	r3, r3, r2
.L540:
	cmp	r3, #300
	moveq	r2, #1
	ldreq	r3, .L592+64
	streq	r2, [r3, #16]
	streq	r2, [r3, #36]
.L541:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L588
.L543:
	bl	updateGuy
	bl	updateDoor
	bl	updateKey
	bl	updateTele
	bl	updateBoots
	ldr	r3, .L592+68
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L549
	mov	r1, #1
	ldr	r2, .L592+72
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L549
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L549
	str	r1, [r2, #56]
.L547:
	bl	updateShirt
	bl	updateBubble
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateCrazy
.L549:
	rsbs	r1, r3, #3
	beq	.L547
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L592+72
.L551:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L551
	b	.L547
.L585:
	mov	ip, #0
	mov	r0, #10
	str	ip, [r2]
	ldr	r2, .L592+76
	str	r0, [r2]
.L524:
	orrs	r5, r1, r5
	bne	.L525
	ldr	r10, .L592+80
	ldr	r9, .L592+84
	ldr	fp, .L592+76
	b	.L553
.L589:
	ldr	r3, [fp]
	cmp	r3, r5
	ble	.L526
	add	r5, r5, #1
.L553:
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
	bne	.L589
.L526:
	ldr	r3, [r4]
	sub	r5, r5, #1
	add	r5, r3, r5
	str	r5, [r4]
	ldr	r3, [r6]
	ldr	r1, [r8]
	b	.L525
.L586:
	cmp	r2, #120
	moveq	r2, #0
	streq	r2, [r0]
	cmp	r1, #0
	beq	.L536
.L587:
	mov	ip, #0
	ldr	r3, [r4, #8]
	rsb	r3, r3, #0
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	ldr	r0, .L592+80
	str	r3, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r0]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r5, .L592+84
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L590
.L537:
	ldr	r2, .L592+60
	ldr	r3, [r6]
	ldr	r2, [r2]
	sub	r3, r3, r2
	cmp	r3, #130
	beq	.L591
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L540
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L543
.L588:
	mov	ip, #0
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r0, .L592+80
	str	ip, [sp, #8]
	ldr	r0, [r0]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r4, .L592+84
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	streq	r0, [r7]
	b	.L543
.L582:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L521
	ldr	ip, .L592+88
	ldr	r0, [ip]
	add	r2, r2, #1
	add	r0, r0, #1
	cmp	r2, #1
	str	r2, [r1]
	str	r0, [ip]
	ble	.L522
	b	.L520
.L521:
	cmp	r2, #1
	ble	.L522
.L554:
	ldr	ip, .L592+88
	ldr	r0, [ip]
	sub	r2, r2, #1
	sub	r0, r0, #1
	str	r2, [r1]
	str	r0, [ip]
	b	.L522
.L590:
	ldr	r3, [r4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4]
	b	.L537
.L591:
	mov	r1, #0
	mov	r2, #10
	ldr	r3, .L592+76
	str	r1, [r8]
	str	r2, [r3]
	b	.L541
.L593:
	.align	2
.L592:
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
	ldr	r2, .L619
	ldr	r1, [r2]
	ldr	r2, .L619+4
	cmp	r1, #0
	push	{r4, lr}
	str	r3, [r2, #40]
	beq	.L595
	ldr	r1, .L619+8
	ldr	r3, .L619+12
	ldr	r1, [r1]
	ldr	r3, [r3]
	orrs	r3, r1, r3
	bne	.L596
.L595:
	ldr	r1, .L619+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L619+20
	sub	r3, r3, r0
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #36]
	lsl	r3, r3, #23
	ldr	r0, .L619+24
	lsr	r3, r3, #23
	sub	r1, r1, ip
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	and	r1, r1, #255
	add	r2, r2, #15
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L594:
	pop	{r4, lr}
	bx	lr
.L596:
	ldr	r3, [r2, #28]
	cmp	r3, #0
	beq	.L614
	cmp	r3, #2
	beq	.L595
	cmp	r3, #1
	beq	.L615
	cmp	r3, #3
	beq	.L616
	cmp	r3, #5
	beq	.L617
	cmp	r3, #4
	beq	.L618
	cmp	r3, #6
	bne	.L594
	b	.L595
.L614:
	ldr	r1, .L619+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L619+20
	sub	r3, r3, r0
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #36]
	lsl	r3, r3, #23
	ldr	r0, .L619+24
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
.L617:
	mov	r0, #19
	ldr	r1, .L619+16
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L619+20
	sub	r3, r3, ip
	lsl	r3, r3, #23
	ldr	r2, [r2]
	ldr	ip, [r1]
	lsr	r3, r3, #23
.L613:
	ldr	r1, .L619+24
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L594
.L615:
	mov	r0, #23
	ldr	r1, .L619+16
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L619+20
	sub	r3, r3, ip
	lsl	r3, r3, r0
	ldr	r2, [r2]
	ldr	ip, [r1]
	lsr	r3, r3, r0
	b	.L613
.L616:
	mov	lr, #2
	ldr	r1, .L619+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L619+20
	sub	r3, r3, r0
	ldr	r4, [r1]
	ldr	r0, [r2]
	ldr	r1, [r2, #36]
	lsl	r3, r3, #23
	ldr	ip, .L619+24
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
	b	.L594
.L618:
	mov	lr, #2
	ldr	r1, .L619+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L619+20
	sub	r3, r3, r0
	ldr	r4, [r1]
	ldr	r0, [r2]
	ldr	r1, [r2, #36]
	lsl	r3, r3, #23
	ldr	ip, .L619+24
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
	b	.L594
.L620:
	.align	2
.L619:
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
	ldr	r2, .L634
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, [r2]
	mov	r5, #512
	mov	r2, #0
	ldr	r3, .L634+4
	ldr	r7, [r3]
	lsl	lr, r4, #16
	lsl	ip, r7, #16
	ldr	r3, .L634+8
	ldr	r0, .L634+12
	ldr	r10, .L634+16
	ldr	fp, .L634+20
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L624:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L622
	ldr	r6, [r3]
	sub	r8, r6, r4
	cmp	r8, #0
	ble	.L622
	ldr	r9, [r3, #4]
	sub	r1, r9, r7
	sub	r1, r1, #1
	cmp	r1, #238
	movhi	r1, #0
	movls	r1, #1
	cmp	r8, #159
	movgt	r1, #0
	cmp	r1, #0
	bne	.L633
.L622:
	strh	r5, [r0, #120]	@ movhi
.L623:
	cmp	r2, #1
	add	r3, r3, #20
	bne	.L625
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L625:
	mov	r2, #1
	b	.L624
.L633:
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
	b	.L623
.L635:
	.align	2
.L634:
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
	ldr	r8, .L657
	ldr	r1, .L657+4
	ldr	r3, [r8, #24]
	ldr	r2, .L657+8
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
	ldr	fp, .L657+12
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
	ldr	r4, .L657+16
	ldr	r8, [r8, #16]
	sub	ip, ip, r10
	orr	r3, r3, #16384
	orr	fp, r9, #16384
	and	lr, lr, #255
	and	r2, r2, #255
	sub	r1, r1, #1
.L643:
	cmp	r0, #1
	beq	.L655
	cmp	r7, #0
	beq	.L640
	cmp	r6, #0
	ble	.L640
	ldr	r10, [sp, #4]
	cmp	r10, #0
	bne	.L656
.L640:
	strh	r5, [r4]	@ movhi
.L641:
	cmp	r0, #2
	bne	.L644
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L655:
	cmp	r8, #0
	beq	.L638
	cmp	r1, #158
	bhi	.L638
	cmp	ip, #238
	bhi	.L638
	ldr	r9, .L657+20
	strh	r2, [r9]	@ movhi
	strh	fp, [r9, #2]	@ movhi
	add	r10, r9, #2
	mov	r9, #6	@ movhi
	strh	r9, [r10, #2]	@ movhi
.L644:
	add	r0, r0, #1
	b	.L643
.L638:
	ldr	r9, .L657+20
	add	r0, r0, #1
	strh	r5, [r9]	@ movhi
	b	.L643
.L656:
	mov	r10, #70	@ movhi
	ldr	r9, .L657+24
	strh	lr, [r4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r10, [r9]	@ movhi
	b	.L641
.L658:
	.align	2
.L657:
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
	ldr	r2, .L672
	ldr	r3, .L672+4
	ldr	lr, [r2]
	ldr	r6, [r3]
	lsl	r5, lr, #16
	lsl	r4, r6, #16
	ldr	r1, .L672+8
	ldr	r2, .L672+12
	ldr	fp, .L672+16
	lsr	r5, r5, #16
	lsr	r4, r4, #16
.L665:
	ldr	r0, [r2]
	sub	r10, r0, lr
	cmp	r10, #0
	add	r3, ip, #1
	ble	.L660
	ldr	r7, [r2, #4]
	sub	r9, r7, r6
	sub	r9, r9, #1
	cmp	r9, #238
	movhi	r9, #0
	movls	r9, #1
	cmp	r10, #159
	movgt	r9, #0
	cmp	r9, #0
	bne	.L670
.L660:
	lsl	r0, r3, #3
	strh	r8, [r0, r1]	@ movhi
.L663:
	cmp	r3, #2
	beq	.L659
.L662:
	mov	ip, r3
	add	r2, r2, #20
	b	.L665
.L659:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L670:
	sub	r9, r7, r4
	lsl	r9, r9, #23
	sub	r10, r0, r5
	lsr	r9, r9, #23
	cmp	ip, #0
	and	r10, r10, #255
	orr	r9, r9, fp
	beq	.L671
	mov	ip, #540	@ movhi
	ldr	r0, .L672+20
	strh	r10, [r0]	@ movhi
	strh	r9, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	b	.L663
.L671:
	mov	r0, #668	@ movhi
	ldr	r7, .L672+24
	strh	r10, [r7, #-2]	@ movhi
	strh	r9, [r7]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	b	.L662
.L673:
	.align	2
.L672:
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
	ldr	r3, .L684
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L675
	ldr	r1, .L684+4
	ldr	r2, [r3]
	ldr	r1, [r1]
	sub	r2, r2, r1
	cmp	r2, #0
	ble	.L675
	ldr	r1, .L684+8
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
	bne	.L683
.L675:
	mov	r2, #512
	ldr	r3, .L684+12
	strh	r2, [r3, #136]	@ movhi
	bx	lr
.L683:
	mov	r0, #4
	lsl	r3, r3, #23
	ldr	r1, .L684+12
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #138]	@ movhi
	strh	r2, [r1, #136]	@ movhi
	strh	r0, [r1, #140]	@ movhi
	bx	lr
.L685:
	.align	2
.L684:
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
	ldr	r2, .L699
	ldr	r3, .L699+4
	ldr	r4, [r2]
	ldr	r6, [r3]
	lsl	lr, r4, #16
	lsl	ip, r6, #16
	ldr	r3, .L699+8
	ldr	r2, .L699+12
	ldr	r10, .L699+16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L689:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L687
	ldr	r8, [r3]
	sub	r7, r8, r4
	cmp	r7, #0
	ble	.L687
	ldr	fp, [r3, #4]
	sub	r0, fp, r6
	sub	r0, r0, #1
	cmp	r0, #238
	movhi	r0, #0
	movls	r0, #1
	cmp	r7, #159
	movgt	r0, #0
	cmp	r0, #0
	bne	.L698
.L687:
	strh	r5, [r2]	@ movhi
.L688:
	cmp	r1, #1
	add	r3, r3, #20
	add	r2, r2, #8
	bne	.L690
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L690:
	mov	r1, #1
	b	.L689
.L698:
	sub	r0, fp, ip
	and	r0, r0, r10
	sub	r8, r8, lr
	orr	r0, r0, #16384
	and	r8, r8, #255
	strh	r0, [r2, #2]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	r9, [r2, #4]	@ movhi
	b	.L688
.L700:
	.align	2
.L699:
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
	ldr	r2, .L714
	ldr	r3, .L714+4
	ldr	r4, [r2]
	ldr	r6, [r3]
	lsl	lr, r4, #16
	lsl	ip, r6, #16
	ldr	r3, .L714+8
	ldr	r2, .L714+12
	ldr	r10, .L714+16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L704:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L702
	ldr	r8, [r3]
	sub	r7, r8, r4
	cmp	r7, #0
	ble	.L702
	ldr	fp, [r3, #4]
	sub	r0, fp, r6
	sub	r0, r0, #1
	cmp	r0, #238
	movhi	r0, #0
	movls	r0, #1
	cmp	r7, #159
	movgt	r0, #0
	cmp	r0, #0
	bne	.L713
.L702:
	strh	r5, [r2]	@ movhi
.L703:
	cmp	r1, #1
	add	r3, r3, #20
	add	r2, r2, #8
	bne	.L705
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L705:
	mov	r1, #1
	b	.L704
.L713:
	sub	r0, fp, ip
	and	r0, r0, r10
	sub	r8, r8, lr
	orr	r0, r0, #16384
	and	r8, r8, #255
	strh	r0, [r2, #2]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	r9, [r2, #4]	@ movhi
	b	.L703
.L715:
	.align	2
.L714:
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
	ldr	r2, .L723
	ldr	r1, .L723+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	cmp	r3, #0
	ble	.L717
	ldr	r0, .L723+8
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
	bne	.L722
.L717:
	mov	r2, #512
	ldr	r3, .L723+12
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L722:
	ldr	r2, [r2, #36]
	ldr	r0, .L723+12
	lsl	r2, r2, #6
	add	r2, r2, #13
	orr	r1, r1, #16384
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	strh	r1, [r0, #18]	@ movhi
	bx	lr
.L724:
	.align	2
.L723:
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
	ldr	r3, .L740
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L740+4
	mov	lr, r3
	ldr	r2, .L740+8
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
	ldr	r0, .L740+12
	ldr	r9, .L740+16
	ldr	r8, .L740+20
	str	r3, [sp, #4]
	lsr	r6, r6, #16
	lsr	r5, r5, #16
	b	.L735
.L733:
	mov	r4, r3
	add	lr, lr, #60
	add	r0, r0, #8
.L735:
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
	bhi	.L726
	sub	r1, r1, fp
	sub	r1, r1, #1
	cmp	r1, #238
	bls	.L737
.L726:
	strh	r10, [r0, #240]	@ movhi
.L729:
	cmp	r3, #9
	bne	.L733
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L737:
	sub	r1, r4, #2
	cmp	r4, #0
	cmpne	r1, #1
	bhi	.L727
	ldr	r2, [lr, #12]
	cmn	r2, #1
	ldr	r2, [lr, #36]
	lsl	r2, r2, #7
	addeq	r2, r2, #129
	addne	r2, r2, #133
	strh	r2, [r0, #244]	@ movhi
	b	.L729
.L727:
	sub	r1, r4, #6
	bics	r1, r1, #2
	beq	.L738
	cmp	r4, #7
	beq	.L739
	ldr	r2, [lr, #36]
	lsl	r2, r2, #7
	add	r2, r2, #137
	strh	r2, [r0, #244]	@ movhi
	b	.L729
.L738:
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
	b	.L729
.L739:
	ldr	r2, .L740+24
	ldr	r1, [sp, #4]
	strh	r1, [r2]	@ movhi
	b	.L733
.L741:
	.align	2
.L740:
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
	ldr	r3, .L748
	ldr	ip, .L748+4
	ldr	lr, .L748+8
	ldm	r3, {r0, r1}
	ldr	ip, [ip]
	ldr	r3, [lr]
	sub	r0, r0, #8
	sub	r1, r1, #8
	sub	r0, r0, ip
	sub	r1, r1, r3
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	ldr	ip, .L748+12
	ldr	r3, .L748+16
	lsr	r0, r0, #16
	lsr	r1, r1, #16
.L745:
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
	bne	.L745
	pop	{r4, r5, lr}
	bx	lr
.L749:
	.align	2
.L748:
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
	ldr	r3, .L752
	mov	lr, pc
	bx	r3
	ldr	r4, .L752+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L752+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L752+12
	ldrh	r1, [r2]
	ldr	r2, .L752+16
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L753:
	.align	2
.L752:
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
