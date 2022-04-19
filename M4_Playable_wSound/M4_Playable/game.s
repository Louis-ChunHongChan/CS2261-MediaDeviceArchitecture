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
	ldr	r2, .L33
	ldr	r2, [r2]
	ldr	r3, .L33+4
	cmp	r2, r1
	push	{r4, lr}
	strh	r1, [r3, #8]	@ movhi
	bne	.L8
	ldrh	r2, [r3, #2]
	ldr	r3, .L33+8
	tst	r2, #32
	ldr	r2, [r3]
	bne	.L29
.L10:
	ldr	r3, .L33+12
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L8
	ldr	r3, .L33+4
	ldrh	r3, [r3, #2]
	tst	r3, #1
	bne	.L30
.L8:
	ldr	r3, .L33+4
	ldrh	r3, [r3, #2]
	tst	r3, #4096
	beq	.L18
	ldr	r2, .L33+16
	ldrh	r3, [r2, #48]
	ands	r3, r3, #4
	strheq	r3, [r2, #10]	@ movhi
.L18:
	mov	r1, #1
	ldr	r3, .L33+4
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L29:
	ldr	r1, .L33+20
	ldr	r3, [r1]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r1]
	bge	.L10
	mov	ip, #59
	ldr	r0, .L33+24
	ldr	r3, [r0]
	sub	r3, r3, #1
	str	r3, [r0]
	str	ip, [r1]
	b	.L10
.L30:
	bl	displayTime
	ldr	r3, .L33+28
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L14
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L14
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L31
	ldr	r0, .L33+32
	ldr	r1, .L33+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L14:
	ldr	r3, .L33+36
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L8
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L8
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L32
	ldr	r0, .L33+32
	ldr	r1, .L33+16
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
	b	.L8
.L31:
	ldm	r3, {r0, r1}
	ldr	r3, .L33+40
	mov	lr, pc
	bx	r3
	b	.L14
.L32:
	ldm	r3, {r0, r1}
	ldr	r3, .L33+44
	mov	lr, pc
	bx	r3
	b	.L8
.L34:
	.align	2
.L33:
	.word	paused
	.word	67109376
	.word	won
	.word	lost
	.word	67109120
	.word	time_s
	.word	time_m
	.word	soundA
	.word	dma
	.word	soundB
	.word	playSoundA
	.word	playSoundB
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
	mov	ip, #49152
	mov	lr, #0
	mov	r0, #195
	ldr	r1, .L37
	ldrh	r2, [r1]
	ldr	r3, .L37+4
	orr	r2, r2, #32
	strh	lr, [r3, #10]	@ movhi
	strh	r2, [r1]	@ movhi
	ldr	lr, [sp], #4
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	bx	lr
.L38:
	.align	2
.L37:
	.word	67109376
	.word	67109120
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
	mov	r1, #67108864
	push	{r4, lr}
	mov	r0, #49152
	mov	r4, #0
	mov	lr, #195
	mov	ip, #1
	ldrh	r2, [r1, #4]
	orr	r2, r2, #8
	strh	r2, [r1, #4]	@ movhi
	ldr	r3, .L41
	ldrh	r1, [r3]
	ldr	r2, .L41+4
	orr	r1, r1, #33
	strh	r4, [r2, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	ldr	r1, .L41+8
	ldr	r0, .L41+12
	strh	lr, [r2, #10]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, lr}
	str	r0, [r1, #4092]
	bx	lr
.L42:
	.align	2
.L41:
	.word	67109376
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
	ldr	r3, .L45
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	ldr	r0, .L45+4
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
.L46:
	.align	2
.L45:
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
	ldr	r3, .L49
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
.L50:
	.align	2
.L49:
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
	ldr	r3, .L53
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
.L54:
	.align	2
.L53:
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
	ldr	r3, .L57
	stm	r3, {ip, lr}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r0, [r3, #24]
	str	r1, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r3, .L60
	ldr	r0, .L60+4
	str	r2, [r3, #8]
	stm	r3, {r0, ip}
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L61:
	.align	2
.L60:
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
	ldr	r3, .L64
	ldr	lr, .L64+4
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
.L65:
	.align	2
.L64:
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
	ldr	r3, .L68
	str	lr, [r3]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	ip, [r3, #4]
	str	r0, [r3, #40]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	lr, [sp], #4
	bx	lr
.L69:
	.align	2
.L68:
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
	mov	r4, #40
	mov	lr, #316
	mov	r1, #1
	mov	ip, #72
	mov	r0, #150
	ldr	r3, .L72
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
.L73:
	.align	2
.L72:
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
	ldr	r9, .L161
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
.L93:
	cmp	r2, #0
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	ip, [r3, #56]
	beq	.L101
	cmp	r2, #1
	beq	.L102
	cmp	r2, #2
	bne	.L158
	mvn	r9, #71
	mov	r5, #1
	str	r9, [sp, #12]
	mov	r9, #384
	stmib	sp, {r5, r9}
.L81:
	mov	r5, #4
	add	r2, r2, #1
	cmp	r2, #9
	str	ip, [r3, #36]
	str	r5, [r3, #40]
	str	ip, [r3, #44]
	str	r0, [r3, #48]
	add	r3, r3, #60
	bne	.L93
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
	b	.L74
.L101:
	mov	r7, #152
	mov	r6, #1
	mov	r8, #488
	b	.L81
.L158:
	cmp	r2, #3
	bne	.L159
	mvn	r5, #39
	str	r5, [sp, #24]
	mov	r5, #1
	str	r5, [sp, #16]
	mov	r5, #328
	str	r5, [sp, #20]
	b	.L81
.L159:
	cmp	r2, #4
	beq	.L160
	cmp	r2, #5
	beq	.L106
	cmp	r2, #6
	bne	.L78
	mov	r5, #88
	str	r5, [sp, #60]
	mov	r5, #1
	mov	r9, #16
	str	r5, [sp, #56]
	mov	r5, #237
	str	r9, [r1, #376]
	str	r5, [sp, #52]
	b	.L81
.L78:
	cmp	r2, #7
	bne	.L79
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
	b	.L93
.L79:
	cmp	r2, #8
	bne	.L81
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
.L74:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L106:
	mov	r5, #136
	str	r5, [sp, #48]
	mov	r5, #1
	str	r5, [sp, #40]
	mov	r5, #404
	str	r5, [sp, #44]
	b	.L81
.L160:
	mov	r5, #120
	str	r5, [sp, #36]
	mov	r5, #1
	str	r5, [sp, #28]
	add	r5, r5, #284
	str	r5, [sp, #32]
	b	.L81
.L102:
	ldr	r9, .L161+4
	mov	fp, #136
	mov	r10, r2
	str	r9, [sp]
	b	.L81
.L162:
	.align	2
.L161:
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
	mov	r1, #1
	mov	r2, #0
	ldr	r0, .L165
	str	r8, [r0]
	ldr	r0, .L165+4
	str	r8, [r0, #28]
	add	r8, r8, #484
	str	r8, [r0]
	ldr	r8, .L165+8
	str	r1, [r8]
	ldr	r8, .L165+12
	mov	r7, #10
	str	r2, [r8]
	ldr	r8, .L165+16
	str	r2, [r8]
	ldr	r8, .L165+20
	mov	r6, #352
	str	r2, [r8]
	ldr	r8, .L165+24
	mov	r3, #16
	str	r2, [r8]
	mov	r5, #104
	mov	r4, #4
	ldr	r8, .L165+28
	str	r2, [r8]
	ldr	r8, .L165+32
	str	r2, [r8]
	ldr	r8, .L165+36
	str	r2, [r8]
	ldr	r8, .L165+40
	str	r2, [r8]
	ldr	r8, .L165+44
	str	r2, [r8]
	ldr	r8, .L165+48
	str	r2, [r8]
	ldr	r8, .L165+52
	str	r2, [r8]
	ldr	r8, .L165+56
	str	r2, [r8]
	ldr	r8, .L165+60
	str	r2, [r8]
	ldr	r8, .L165+64
	str	r2, [r8]
	ldr	r8, .L165+68
	str	r2, [r8]
	ldr	r8, .L165+72
	str	r2, [r8]
	ldr	r8, .L165+76
	str	r7, [r8]
	ldr	r8, .L165+80
	str	r7, [r8]
	ldr	r7, .L165+84
	str	r6, [r7]
	ldr	r7, .L165+88
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	str	r5, [r0, #4]
	str	r2, [r0, #24]
	str	r2, [r0, #36]
	str	r4, [r0, #40]
	str	r6, [r7]
	mov	r6, #230
	mov	ip, #32
	str	r2, [r0, #48]
	str	r2, [r0, #52]
	mov	fp, #164
	ldr	r0, .L165+92
	mov	r10, #476
	mov	r9, #48
	str	r6, [r0, #20]
	mov	r7, #152
	mov	r6, #324
	stm	r0, {r10, fp}
	str	r3, [r0, #8]
	str	ip, [r0, #12]
	str	r1, [r0, #16]
	str	r3, [r0, #28]
	str	r1, [r0, #36]
	str	r9, [r0, #24]
	str	ip, [r0, #32]
	ldr	r0, .L165+96
	stm	r0, {r6, r7}
	mov	r6, #232
	str	r6, [r0, #24]
	mov	r6, #100
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r1, [r0, #16]
	str	r3, [r0, #28]
	str	r3, [r0, #32]
	str	r1, [r0, #36]
	str	r6, [r0, #20]
	ldr	r0, .L165+100
	mov	r8, #37
	str	ip, [r0, #8]
	str	ip, [r0, #12]
	str	ip, [r0, #28]
	str	ip, [r0, #32]
	mov	ip, #208
	stm	r0, {r8, ip}
	mov	ip, #56
	str	ip, [r0, #24]
	mov	ip, #222
	mov	lr, #72
	str	ip, [r0, #20]
	ldr	r0, .L165+104
	add	ip, ip, #144
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	stm	r0, {ip, lr}
	mov	ip, #88
	str	r1, [r0, #16]
	ldr	r0, .L165+108
	str	ip, [r0, #4]
	mov	ip, #120
	str	ip, [r0, #44]
	ldr	ip, .L165+112
	str	r1, [r0, #16]
	str	r1, [r0, #36]
	str	r5, [r0, #24]
	str	ip, [r0, #20]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0, #28]
	str	r3, [r0, #32]
	str	r1, [r0, #56]
	str	ip, [r0]
	str	r3, [r0, #48]
	str	r3, [r0, #52]
	str	ip, [r0, #40]
	ldr	r0, .L165+116
	sub	ip, ip, #188
	str	ip, [r0]
	mov	ip, #136
	str	ip, [r0, #24]
	mov	ip, #60
	str	r1, [r0, #16]
	str	r1, [r0, #36]
	str	ip, [r0, #20]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0, #4]
	str	r3, [r0, #28]
	str	r3, [r0, #32]
	ldr	r0, .L165+120
	mov	r9, #13
	str	r2, [r0, #24]
	str	r2, [r0, #36]
	mov	r2, #17
	str	r3, [r0, #16]
	str	r3, [r0, #20]
	stm	r0, {r2, r9}
	ldr	r2, .L165+124
	mov	r10, #40
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	mov	r3, #316
	stm	r2, {r3, r10}
	mov	r3, #150
	str	lr, [r2, #24]
	str	r3, [r2, #20]
	str	r1, [r2, #16]
	str	r1, [r2, #36]
	str	r4, [r0, #40]
	bl	initCrazy
	ldr	r3, .L165+128
	mov	lr, pc
	bx	r3
	ldr	r2, .L165+132
	ldr	r3, .L165+136
	ldrh	r2, [r2, #48]
	strh	r2, [r3]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L166:
	.align	2
.L165:
	.word	life
	.word	guy
	.word	time_m
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
	ldr	r3, .L171
	ldr	r1, [r3, #4]
	ldr	ip, [r3]
	ldr	r3, .L171+4
	sub	r2, r1, #16
	sub	ip, ip, #16
	add	r1, r1, #32
.L168:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, r1
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	ip, [r3]
	str	lr, [r3, #16]
	add	r3, r3, #20
	bne	.L168
	ldr	lr, [sp], #4
	bx	lr
.L172:
	.align	2
.L171:
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
	ldr	r4, .L205
	add	r2, r4, #16
	ldr	r5, .L205+4
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	r7, .L205+8
	sub	sp, sp, #20
.L185:
	cmp	r6, #1
	beq	.L198
	ldr	ip, [r4, #52]
	add	r8, r5, #28
	cmp	ip, #0
	ldr	lr, [r5, #20]
	ldr	ip, [r5, #24]
	ldm	r8, {r8, r9}
	bne	.L199
.L179:
	stm	sp, {ip, lr}
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	addne	r3, r3, #1
	strne	r3, [r4, #4]
.L181:
	cmp	r6, #2
	bne	.L200
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L198:
	ldr	ip, [r4, #48]
	add	r8, r5, #8
	cmp	ip, #0
	ldr	lr, [r5]
	ldr	ip, [r5, #4]
	ldm	r8, {r8, r9}
	bne	.L201
.L175:
	stm	sp, {ip, lr}
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldr	r0, [r4, #4]
	beq	.L197
	sub	r0, r0, #1
	add	r2, r4, #16
	str	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	b	.L186
.L201:
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
	bne	.L202
	ldr	r3, [r4, #48]
	add	r2, r4, #16
	cmp	r3, #0
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	beq	.L203
.L186:
	add	r6, r6, #1
	b	.L185
.L200:
	ldr	r0, [r4, #4]
.L197:
	add	r2, r4, #16
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	b	.L186
.L199:
	stm	sp, {ip, lr}
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L204
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L181
	add	r2, r4, #16
	add	r8, r5, #28
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	ip, [r5, #24]
	ldr	lr, [r5, #20]
	ldm	r8, {r8, r9}
	b	.L179
.L202:
	mov	r2, #0
	ldr	r3, .L205+12
	ldr	r0, .L205+16
	ldrh	r3, [r3]
	ldr	r1, .L205+20
	ldr	ip, .L205+24
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
	b	.L186
.L204:
	mov	r1, #0
	ldr	r3, .L205+12
	ldr	r2, .L205+28
	ldrh	r3, [r3]
	str	r1, [r5, #36]
	ldr	r1, .L205+32
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r3, [r2, #128]	@ movhi
	strh	r3, [r1, #-62]	@ movhi
	strh	r3, [r2, #66]	@ movhi
	strh	r3, [r1, #66]	@ movhi
	strh	r3, [r2, #4]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	strh	r3, [r2, #132]	@ movhi
	b	.L181
.L203:
	add	r8, r5, #8
	ldr	ip, [r5, #4]
	ldr	lr, [r5]
	ldm	r8, {r8, r9}
	b	.L175
.L206:
	.align	2
.L205:
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
	ldr	r4, .L229
	ldr	r6, .L229+4
	ldr	r8, .L229+8
	ldr	r9, .L229+12
	sub	sp, sp, #20
.L217:
	cmp	r5, #1
	beq	.L227
	ldr	r7, [r4, #52]
	cmp	r7, #0
	beq	.L228
.L214:
	cmp	r5, #2
	bne	.L218
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L227:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L209
.L212:
	ldr	r3, [r4]
	cmp	r3, r9
	movle	r2, #0
	movle	r3, #1
	strle	r2, [r6, #16]
	strle	r3, [r4, #48]
.L218:
	add	r5, r5, #1
	b	.L217
.L209:
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
	beq	.L212
	mov	r2, #0
	mov	r3, #1
	str	r2, [r6, #16]
	str	r3, [r4, #48]
	b	.L218
.L228:
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
	b	.L214
.L230:
	.align	2
.L229:
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
	ldr	r5, .L237
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #12]
	ldr	r1, [r5, #8]
	sub	sp, sp, #16
	ldr	r4, .L237+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r6, .L237+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L231
	mov	r1, #96
	mov	r0, #230
	ldr	r2, [r5, #8]
	ldr	r3, [r4, #16]
	rsb	r2, r2, #60
	add	r3, r3, r2, lsl #1
	ldr	ip, .L237+12
	ldr	r2, .L237+16
	str	r3, [r4, #4]
	str	r1, [ip]
	str	r1, [r2]
	str	r0, [r4]
.L231:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L238:
	.align	2
.L237:
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
	ldr	r4, .L248
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L247
.L239:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L247:
	ldr	r0, .L248+4
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
	ldr	r5, .L248+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L239
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L248+12
	ldr	r0, .L248+16
	ldr	ip, [r3]
	ldr	r3, .L248+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L249:
	.align	2
.L248:
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
	ldr	r4, .L261
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #0
	ldr	r6, .L261+4
	ldr	r8, .L261+8
	ldr	r7, .L261+12
	sub	sp, sp, #16
	bne	.L260
.L252:
	cmp	r5, #1
	add	r4, r4, #20
	bne	.L255
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L255:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #1
	beq	.L252
.L260:
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
	b	.L252
.L262:
	.align	2
.L261:
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
	ldr	r4, .L274
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	fp, r5
	ldr	r6, .L274+4
	ldr	r7, .L274+8
	ldr	r10, .L274+12
	ldr	r9, .L274+16
	ldr	r8, .L274+20
	sub	sp, sp, #20
	bne	.L273
.L265:
	cmp	r5, #1
	add	r4, r4, #20
	bne	.L268
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L268:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	mov	r5, #1
	beq	.L265
.L273:
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
	beq	.L265
	mov	r3, #1
	mov	r2, #6
	str	r3, [r8]
	ldr	r3, [r9]
	str	fp, [r4, #16]
	str	r2, [r6, #28]
	str	r3, [r10]
	b	.L265
.L275:
	.align	2
.L274:
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
	ldr	r4, .L279
	ldr	r3, [r4, #24]
	ldr	r2, .L279+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4, #24]
	bne	.L276
	ldr	r0, [r4, #36]
	ldr	r3, .L279+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L276:
	pop	{r4, lr}
	bx	lr
.L280:
	.align	2
.L279:
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
	ldr	r3, .L299
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L282
	mov	r1, #1
	ldr	r2, .L299+4
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L282
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L282
	str	r1, [r2, #56]
	bx	lr
.L282:
	rsbs	r1, r3, #3
	bxeq	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L299+4
.L285:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L285
	bx	lr
.L300:
	.align	2
.L299:
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
	ldr	r4, .L353
	add	r5, r4, #24
	ldm	r5, {r5, r6}
	tst	r5, #7
	str	r6, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #20
	bne	.L302
	ldr	r0, [r4, #36]
	ldr	r3, .L353+4
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L302:
	ldr	r2, .L353+8
	ldr	r3, .L353+12
	ldr	r1, [r2]
	ldr	r3, [r3]
	ldr	r2, .L353+16
	orrs	r1, r3, r1
	ldr	r2, [r2]
	bne	.L303
	ldr	r5, .L353+20
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L304
	ldr	r3, .L353+24
	ldrh	r1, [r3, #48]
	tst	r1, #32
	bne	.L305
	cmp	r2, #0
	bne	.L306
	ldr	r2, .L353+28
	ldr	r2, [r2]
	cmp	r2, #0
	ldrh	r3, [r3, #48]
	bne	.L346
	tst	r3, #16
	str	r2, [r4, #28]
	beq	.L308
	ldr	r6, .L353+32
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L313
	ldr	r3, .L353+36
	ldrh	r3, [r3]
	ands	r3, r3, #2
	beq	.L349
.L313:
	ldr	r5, [r4, #24]
.L327:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L303:
	orrs	r3, r3, r2
	beq	.L350
.L304:
	mov	r3, #0
	str	r6, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L350:
	ldr	r2, .L353+28
	ldr	r3, .L353+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	bne	.L304
	ldr	r3, .L353+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L351
.L325:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L327
.L305:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L310
	cmp	r2, #0
	beq	.L352
.L310:
	ldr	r6, [r4, #32]
	b	.L304
.L306:
	ldrh	r3, [r3, #48]
	b	.L310
.L351:
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L304
	b	.L325
.L352:
	ldr	r3, .L353+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L308
.L346:
	ldr	r3, [r4, #28]
.L317:
	cmp	r3, #8
	bne	.L313
	b	.L310
.L308:
	mov	r3, #2
	ldr	r6, .L353+32
	str	r3, [r4, #28]
.L312:
	ldrh	r3, [r6]
	tst	r3, #2
	beq	.L313
	ldr	r3, .L353+36
	ldrh	r3, [r3]
	ands	r3, r3, #2
	bne	.L313
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #8]
	ldr	r7, .L353+40
	ldr	r3, [r4]
	ldr	r0, [r7]
	ldr	r6, .L353+44
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r6
	subs	ip, r0, #0
	bne	.L346
	mvn	r9, #23
	mov	r8, #15
	mov	r3, #3
	mov	r2, #1
	ldr	r0, .L353+48
	ldr	r1, .L353+52
	ldr	lr, [r0]
	ldr	r0, [r7]
	str	r9, [sp, #12]
	str	r8, [sp, #8]
	str	lr, [r1]
	ldr	r1, [r4, #20]
	ldr	lr, .L353+56
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
	beq	.L346
	ldr	r3, .L353+60
	ldr	r3, [r3]
	ldm	r4, {r1, r2}
	cmp	r3, #0
	subne	r1, r1, #50
	addne	r2, r2, #25
	subeq	r1, r1, #24
	addeq	r2, r2, #15
	stm	r4, {r1, r2}
	ldr	r3, [r4, #28]
	b	.L317
.L349:
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	str	r3, [sp, #8]
	ldr	r8, .L353+40
	ldr	r3, [r4]
	ldr	r0, [r8]
	ldr	r7, .L353+44
	str	ip, [sp, #12]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r7
	subs	ip, r0, #0
	beq	.L314
	ldr	r3, [r4, #28]
	cmp	r3, #2
	beq	.L312
	b	.L317
.L314:
	mvn	lr, #14
	mov	r2, #1
	mvn	r6, #23
	ldr	r1, .L353+48
	ldr	r0, [r8]
	ldr	r1, [r1]
	str	lr, [sp, #8]
	ldr	lr, [r4, #20]
	str	lr, [sp, #4]
	ldr	lr, [r4, #16]
	ldr	r3, .L353+52
	str	lr, [sp]
	ldr	lr, .L353+56
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
	beq	.L346
	ldr	r3, .L353+60
	ldr	r3, [r3]
	cmp	r3, #0
	ldm	r4, {r2, r3}
	subne	r3, r3, #25
	subeq	r3, r3, #15
	subne	r2, r2, #50
	subeq	r2, r2, #24
	stm	r4, {r2, r3}
	ldr	r3, [r4, #28]
	b	.L317
.L354:
	.align	2
.L353:
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
	ldr	fp, .L413
	ldr	r3, [fp]
	cmp	r3, #0
	sub	sp, sp, #20
	bgt	.L408
.L357:
	ldr	r9, .L413+4
	ldr	r4, .L413+8
	ldr	r3, [r9]
	ldr	r8, .L413+12
	ldr	r7, .L413+16
	ldr	r10, .L413+20
	ldr	r6, .L413+24
	add	r5, r4, #540
.L363:
	cmp	r3, #0
	bne	.L359
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L409
.L360:
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L359
	ldr	r1, [r8]
	ldr	r2, [r10]
	orrs	r2, r1, r2
	bne	.L359
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L359
	ldr	r2, [r6, #28]
	cmp	r2, #1
	beq	.L410
	cmp	r2, #3
	bne	.L359
	ldr	r1, [r6]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L359
	ldr	r1, [r6, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L359
	mov	r1, #1
	ldr	r0, .L413+28
	ldr	r2, [r0]
	add	r2, r2, r1
	str	r2, [r0]
	str	r1, [r4, #52]
.L359:
	add	r4, r4, #60
	cmp	r5, r4
	bne	.L363
	ldr	r2, [r8]
	orrs	r3, r3, r2
	ldr	r3, [r7]
	bne	.L406
	cmp	r3, #0
	bne	.L365
	ldr	r3, .L413+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L366
	ldr	r3, .L413+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L411
.L367:
	ldr	r3, .L413+36
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L369
	ldr	r3, [r7]
.L406:
	ldr	r4, .L413+20
.L364:
	ldr	r2, [r4]
	orrs	r3, r3, r2
	bne	.L365
	ldr	r3, [r8]
	cmp	r3, #0
	beq	.L375
.L365:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateGuy
.L409:
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
	ldr	ip, .L413+40
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L361
.L405:
	ldr	r3, [r9]
	b	.L360
.L361:
	mov	r2, #0
	mov	r0, #1
	ldr	r3, [fp]
	ldr	ip, .L413+44
	sub	r3, r3, #1
	ldr	ip, [ip]
	str	r3, [fp]
	ldr	r1, .L413+48
	ldr	r3, .L413+52
	ldr	lr, .L413+56
	str	r0, [r8]
	str	ip, [r3]
	ldr	r1, [r1]
	str	r2, [r4, #48]
	ldr	r0, .L413+60
	ldr	r3, .L413+64
	str	ip, [lr]
	mov	lr, pc
	bx	r3
	b	.L405
.L408:
	ldr	r2, .L413+68
	add	ip, r2, #16
	ldr	r0, .L413+24
	ldm	r2, {r1, r2}
	ldm	ip, {ip, lr}
	ldr	r3, [r0, #20]
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	ldr	r4, .L413+40
	ldr	r2, [r0, #16]
	ldr	r1, [r0]
	lsl	r3, r3, #1
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L357
	mov	r0, #1
	ldr	r2, .L413+28
	ldr	r3, [r2]
	ldr	r1, .L413+72
	add	r3, r3, #5
	str	r3, [r2]
	str	r0, [r1]
	b	.L357
.L366:
	ldr	r3, .L413+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L365
.L375:
	ldr	r3, .L413+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L412
.L373:
	ldr	r3, .L413+36
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L365
	ldr	r4, .L413+24
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L413+76
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L413+80
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L365
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L365
	ldr	ip, .L413+84
	ldr	r2, [r4, #12]
	ldr	r1, [ip]
	add	r3, r3, r2
	cmp	r1, #14
	str	r3, [r4, #4]
	bgt	.L365
	ldr	r0, .L413+88
	ldr	lr, [r0]
	sub	r3, r3, lr
	cmp	r3, #120
	ble	.L365
.L407:
	add	r1, r2, r1
	add	r2, r2, lr
	str	r1, [ip]
	str	r2, [r0]
	b	.L365
.L410:
	ldr	r0, [r6]
	ldr	r1, [r4]
	cmp	r0, r1
	bge	.L359
	ldr	r0, [r6, #4]
	ldr	r1, [r4, #4]
	cmp	r0, r1
	bgt	.L359
	ldr	r0, .L413+28
	ldr	r1, [r0]
	add	r1, r1, #3
	str	r2, [r4, #52]
	str	r1, [r0]
	b	.L359
.L411:
	ldr	r5, .L413+24
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
	ldr	r6, .L413+76
	add	r2, r2, r2, lsr #31
	add	r2, ip, r2, asr #1
	mov	r1, #256
	ldr	r3, [r5]
	ldr	r0, [r6]
	ldr	r9, .L413+92
	sub	r2, r2, #1
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L367
	mov	r1, #1
	ldr	ip, .L413+96
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r2, [ip]
	ldr	r4, .L413+20
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r5]
	str	r1, [r4]
	ble	.L368
	ldr	lr, .L413+100
	ldr	r1, [lr]
	sub	r10, r3, r1
	cmp	r10, #80
	suble	r1, r1, r0
	suble	r2, r2, r0
	strle	r1, [lr]
	strle	r2, [ip]
.L368:
	ldr	r2, .L413+36
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L365
.L376:
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
	bne	.L370
	ldr	r3, [r7]
	b	.L364
.L369:
	ldr	r5, .L413+24
	ldr	r4, .L413+20
	ldr	r3, [r5]
	ldr	r0, [r5, #8]
	ldr	r6, .L413+76
	ldr	r9, .L413+92
	b	.L376
.L412:
	ldr	r4, .L413+24
	add	r0, r4, #16
	ldr	r2, [r4, #12]
	ldm	r0, {r0, ip}
	rsb	r2, r2, #0
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, .L413+76
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L413+80
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L373
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L373
	ldr	lr, .L413+84
	ldr	r0, [r4, #12]
	ldr	r1, [lr]
	sub	r3, r3, r0
	cmp	r1, #0
	str	r3, [r4, #4]
	ble	.L373
	ldr	ip, .L413+88
	ldr	r2, [ip]
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r1, r1, r0
	suble	r2, r2, r0
	strle	r1, [lr]
	strle	r2, [ip]
	b	.L373
.L370:
	mov	r1, #1
	ldr	r0, .L413+96
	ldr	r3, .L413+104
	ldr	lr, [r0]
	ldr	r2, [r5, #8]
	cmp	lr, r3
	ldr	r3, [r5]
	add	r3, r2, r3
	str	r3, [r5]
	str	r1, [r4]
	bgt	.L365
	ldr	ip, .L413+100
	ldr	r1, [ip]
	sub	r3, r3, r1
	cmp	r3, #80
	ble	.L365
	b	.L407
.L414:
	.align	2
.L413:
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
	.word	sheidGuard_length
	.word	crazyFrame
	.word	downFrame
	.word	sheidGuard_data
	.word	playSoundB
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
	ldr	r4, .L418
	ldr	r3, [r4, #24]
	ldr	r2, .L418+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	cmp	r3, r2, lsl #1
	str	r3, [r4, #24]
	bne	.L415
	ldr	r0, [r4, #36]
	ldr	r3, .L418+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L415:
	pop	{r4, lr}
	bx	lr
.L419:
	.align	2
.L418:
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
	ldr	r4, .L428
	ldr	r6, .L428+4
	add	r5, r4, #540
.L422:
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	tst	r3, #7
	str	r3, [r4, #24]
	bne	.L421
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L421
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r4, #36]
.L421:
	add	r4, r4, #60
	cmp	r4, r5
	bne	.L422
	pop	{r4, r5, r6, lr}
	bx	lr
.L429:
	.align	2
.L428:
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
	ldr	lr, .L527
	ldr	r4, .L527+4
	ldr	r6, [lr, #16]
	ldr	r5, [lr, #196]
	ldr	r10, .L527+8
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
.L460:
	cmp	r5, #49
	ble	.L431
	ldr	r0, [r2, #48]
	cmp	r0, #0
	moveq	r0, #1
	streq	r0, [r2, #48]
.L431:
	cmp	r3, #0
	beq	.L525
	cmp	r3, #2
	beq	.L526
	cmp	r3, #3
	bne	.L440
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
.L443:
	add	r3, r3, #1
	cmp	r3, #9
	add	r2, r2, #60
	bne	.L460
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
	b	.L458
.L525:
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
	b	.L443
.L440:
	cmp	r3, #6
	bne	.L439
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
	b	.L460
.L439:
	cmp	r3, #8
	bne	.L443
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
.L458:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateCrazy
.L526:
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
	b	.L443
.L528:
	.align	2
.L527:
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
	ldr	r1, .L602
	ldr	r6, .L602+4
	ldr	r2, [r1]
	ldr	r3, [r6]
	ldr	r0, .L602+8
	add	r3, r3, #1
	cmp	r2, r0
	ldr	r4, .L602+12
	str	r3, [r6]
	sub	sp, sp, #20
	ble	.L592
.L530:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L564
.L532:
	ldr	r2, .L602+16
	ldr	r1, [r2]
	ldr	r8, .L602+20
	ldr	r7, .L602+24
	cmp	r1, #0
	ldr	r5, [r7]
	ldr	r1, [r8]
	beq	.L534
	ldr	r0, .L602+28
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #25
	beq	.L595
.L535:
	ldr	r2, .L602+32
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L539
	ldr	r0, .L602+36
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #30
	mov	ip, #5
	moveq	r0, #0
	str	ip, [r4, #28]
	streq	r0, [r2]
.L539:
	ldr	r2, .L602+40
	ldr	r0, [r2]
	cmp	r0, #0
	beq	.L541
	ldr	r0, .L602+44
	ldr	r0, [r0]
	sub	r0, r3, r0
	cmp	r0, #150
	moveq	r0, #0
	streq	r0, [r2]
	streq	r0, [r4, #28]
.L541:
	ldr	r0, .L602+48
	ldr	r2, .L602+52
	ldr	ip, [r0]
	ldr	r2, [r2]
	cmp	ip, #0
	sub	r2, r3, r2
	bne	.L596
	cmp	r2, #300
	moveq	r0, #1
	ldreq	r2, .L602+56
	streq	r0, [r2, #16]
.L544:
	cmp	r1, #0
	bne	.L597
.L546:
	ldr	r2, .L602+60
	ldr	r2, [r2]
	sub	r3, r3, r2
.L550:
	cmp	r3, #300
	moveq	r2, #1
	ldreq	r3, .L602+64
	streq	r2, [r3, #16]
	streq	r2, [r3, #36]
.L551:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L598
.L553:
	bl	updateGuy
	bl	updateDoor
	bl	updateKey
	bl	updateTele
	bl	updateBoots
	ldr	r3, .L602+68
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L559
	mov	r1, #1
	ldr	r2, .L602+72
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L559
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L559
	str	r1, [r2, #56]
.L557:
	bl	updateShirt
	bl	updateBubble
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	updateCrazy
.L559:
	rsbs	r1, r3, #3
	beq	.L557
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L602+72
.L561:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L561
	b	.L557
.L595:
	mov	ip, #0
	mov	r0, #10
	str	ip, [r2]
	ldr	r2, .L602+76
	str	r0, [r2]
.L534:
	orrs	r5, r1, r5
	bne	.L535
	ldr	r10, .L602+80
	ldr	r9, .L602+84
	ldr	fp, .L602+76
	b	.L563
.L599:
	ldr	r3, [fp]
	cmp	r3, r5
	ble	.L536
	add	r5, r5, #1
.L563:
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
	bne	.L599
.L536:
	ldr	r3, [r4]
	sub	r5, r5, #1
	add	r5, r3, r5
	str	r5, [r4]
	ldr	r3, [r6]
	ldr	r1, [r8]
	b	.L535
.L596:
	cmp	r2, #120
	moveq	r2, #0
	streq	r2, [r0]
	cmp	r1, #0
	beq	.L546
.L597:
	mov	ip, #0
	ldr	r3, [r4, #8]
	rsb	r3, r3, #0
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #16]
	ldr	r0, .L602+80
	str	r3, [sp, #12]
	str	ip, [sp, #8]
	ldr	r0, [r0]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r5, .L602+84
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L600
.L547:
	ldr	r2, .L602+60
	ldr	r3, [r6]
	ldr	r2, [r2]
	sub	r3, r3, r2
	cmp	r3, #130
	beq	.L601
	ldr	r2, [r8]
	cmp	r2, #0
	beq	.L550
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L553
.L598:
	mov	ip, #0
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	ldr	r0, .L602+80
	str	ip, [sp, #8]
	ldr	r0, [r0]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	ldr	r4, .L602+84
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	streq	r0, [r7]
	b	.L553
.L592:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L531
	ldr	ip, .L602+88
	ldr	r0, [ip]
	add	r2, r2, #1
	add	r0, r0, #1
	cmp	r2, #1
	str	r2, [r1]
	str	r0, [ip]
	ble	.L532
	b	.L530
.L531:
	cmp	r2, #1
	ble	.L532
.L564:
	ldr	ip, .L602+88
	ldr	r0, [ip]
	sub	r2, r2, #1
	sub	r0, r0, #1
	str	r2, [r1]
	str	r0, [ip]
	b	.L532
.L600:
	ldr	r3, [r4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4]
	b	.L547
.L601:
	mov	r1, #0
	mov	r2, #10
	ldr	r3, .L602+76
	str	r1, [r8]
	str	r2, [r3]
	b	.L551
.L603:
	.align	2
.L602:
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
	ldr	r2, .L629
	ldr	r1, [r2]
	ldr	r2, .L629+4
	cmp	r1, #0
	push	{r4, lr}
	str	r3, [r2, #40]
	beq	.L605
	ldr	r1, .L629+8
	ldr	r3, .L629+12
	ldr	r1, [r1]
	ldr	r3, [r3]
	orrs	r3, r1, r3
	bne	.L606
.L605:
	ldr	r1, .L629+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L629+20
	sub	r3, r3, r0
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #36]
	lsl	r3, r3, #23
	ldr	r0, .L629+24
	lsr	r3, r3, #23
	sub	r1, r1, ip
	lsl	r2, r2, #6
	orr	r3, r3, #16384
	and	r1, r1, #255
	add	r2, r2, #15
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L604:
	pop	{r4, lr}
	bx	lr
.L606:
	ldr	r3, [r2, #28]
	cmp	r3, #0
	beq	.L624
	cmp	r3, #2
	beq	.L605
	cmp	r3, #1
	beq	.L625
	cmp	r3, #3
	beq	.L626
	cmp	r3, #5
	beq	.L627
	cmp	r3, #4
	beq	.L628
	cmp	r3, #6
	bne	.L604
	b	.L605
.L624:
	ldr	r1, .L629+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L629+20
	sub	r3, r3, r0
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #36]
	lsl	r3, r3, #23
	ldr	r0, .L629+24
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
.L627:
	mov	r0, #19
	ldr	r1, .L629+16
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L629+20
	sub	r3, r3, ip
	lsl	r3, r3, #23
	ldr	r2, [r2]
	ldr	ip, [r1]
	lsr	r3, r3, #23
.L623:
	ldr	r1, .L629+24
	sub	r2, r2, ip
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	b	.L604
.L625:
	mov	r0, #23
	ldr	r1, .L629+16
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L629+20
	sub	r3, r3, ip
	lsl	r3, r3, r0
	ldr	r2, [r2]
	ldr	ip, [r1]
	lsr	r3, r3, r0
	b	.L623
.L626:
	mov	lr, #2
	ldr	r1, .L629+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L629+20
	sub	r3, r3, r0
	ldr	r4, [r1]
	ldr	r0, [r2]
	ldr	r1, [r2, #36]
	lsl	r3, r3, #23
	ldr	ip, .L629+24
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
	b	.L604
.L628:
	mov	lr, #2
	ldr	r1, .L629+16
	ldr	r3, [r2, #4]
	ldr	r0, [r1]
	ldr	r1, .L629+20
	sub	r3, r3, r0
	ldr	r4, [r1]
	ldr	r0, [r2]
	ldr	r1, [r2, #36]
	lsl	r3, r3, #23
	ldr	ip, .L629+24
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
	b	.L604
.L630:
	.align	2
.L629:
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
	ldr	r2, .L644
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, [r2]
	mov	r5, #512
	mov	r2, #0
	ldr	r3, .L644+4
	ldr	r7, [r3]
	lsl	lr, r4, #16
	lsl	ip, r7, #16
	ldr	r3, .L644+8
	ldr	r0, .L644+12
	ldr	r10, .L644+16
	ldr	fp, .L644+20
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L634:
	ldr	r1, [r3, #16]
	cmp	r1, #0
	beq	.L632
	ldr	r6, [r3]
	sub	r8, r6, r4
	cmp	r8, #0
	ble	.L632
	ldr	r9, [r3, #4]
	sub	r1, r9, r7
	sub	r1, r1, #1
	cmp	r1, #238
	movhi	r1, #0
	movls	r1, #1
	cmp	r8, #159
	movgt	r1, #0
	cmp	r1, #0
	bne	.L643
.L632:
	strh	r5, [r0, #120]	@ movhi
.L633:
	cmp	r2, #1
	add	r3, r3, #20
	bne	.L635
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L635:
	mov	r2, #1
	b	.L634
.L643:
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
	b	.L633
.L645:
	.align	2
.L644:
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
	ldr	r8, .L667
	ldr	r1, .L667+4
	ldr	r3, [r8, #24]
	ldr	r2, .L667+8
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
	ldr	fp, .L667+12
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
	ldr	r4, .L667+16
	ldr	r8, [r8, #16]
	sub	ip, ip, r10
	orr	r3, r3, #16384
	orr	fp, r9, #16384
	and	lr, lr, #255
	and	r2, r2, #255
	sub	r1, r1, #1
.L653:
	cmp	r0, #1
	beq	.L665
	cmp	r7, #0
	beq	.L650
	cmp	r6, #0
	ble	.L650
	ldr	r10, [sp, #4]
	cmp	r10, #0
	bne	.L666
.L650:
	strh	r5, [r4]	@ movhi
.L651:
	cmp	r0, #2
	bne	.L654
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L665:
	cmp	r8, #0
	beq	.L648
	cmp	r1, #158
	bhi	.L648
	cmp	ip, #238
	bhi	.L648
	ldr	r9, .L667+20
	strh	r2, [r9]	@ movhi
	strh	fp, [r9, #2]	@ movhi
	add	r10, r9, #2
	mov	r9, #6	@ movhi
	strh	r9, [r10, #2]	@ movhi
.L654:
	add	r0, r0, #1
	b	.L653
.L648:
	ldr	r9, .L667+20
	add	r0, r0, #1
	strh	r5, [r9]	@ movhi
	b	.L653
.L666:
	mov	r10, #70	@ movhi
	ldr	r9, .L667+24
	strh	lr, [r4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	strh	r10, [r9]	@ movhi
	b	.L651
.L668:
	.align	2
.L667:
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
	ldr	r2, .L682
	ldr	r3, .L682+4
	ldr	lr, [r2]
	ldr	r6, [r3]
	lsl	r5, lr, #16
	lsl	r4, r6, #16
	ldr	r1, .L682+8
	ldr	r2, .L682+12
	ldr	fp, .L682+16
	lsr	r5, r5, #16
	lsr	r4, r4, #16
.L675:
	ldr	r0, [r2]
	sub	r10, r0, lr
	cmp	r10, #0
	add	r3, ip, #1
	ble	.L670
	ldr	r7, [r2, #4]
	sub	r9, r7, r6
	sub	r9, r9, #1
	cmp	r9, #238
	movhi	r9, #0
	movls	r9, #1
	cmp	r10, #159
	movgt	r9, #0
	cmp	r9, #0
	bne	.L680
.L670:
	lsl	r0, r3, #3
	strh	r8, [r0, r1]	@ movhi
.L673:
	cmp	r3, #2
	beq	.L669
.L672:
	mov	ip, r3
	add	r2, r2, #20
	b	.L675
.L669:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L680:
	sub	r9, r7, r4
	lsl	r9, r9, #23
	sub	r10, r0, r5
	lsr	r9, r9, #23
	cmp	ip, #0
	and	r10, r10, #255
	orr	r9, r9, fp
	beq	.L681
	mov	ip, #540	@ movhi
	ldr	r0, .L682+20
	strh	r10, [r0]	@ movhi
	strh	r9, [r0, #2]	@ movhi
	strh	ip, [r0, #4]	@ movhi
	b	.L673
.L681:
	mov	r0, #668	@ movhi
	ldr	r7, .L682+24
	strh	r10, [r7, #-2]	@ movhi
	strh	r9, [r7]	@ movhi
	strh	r0, [r7, #2]	@ movhi
	b	.L672
.L683:
	.align	2
.L682:
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
	ldr	r3, .L694
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L685
	ldr	r1, .L694+4
	ldr	r2, [r3]
	ldr	r1, [r1]
	sub	r2, r2, r1
	cmp	r2, #0
	ble	.L685
	ldr	r1, .L694+8
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
	bne	.L693
.L685:
	mov	r2, #512
	ldr	r3, .L694+12
	strh	r2, [r3, #136]	@ movhi
	bx	lr
.L693:
	mov	r0, #4
	lsl	r3, r3, #23
	ldr	r1, .L694+12
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	and	r2, r2, #255
	strh	r3, [r1, #138]	@ movhi
	strh	r2, [r1, #136]	@ movhi
	strh	r0, [r1, #140]	@ movhi
	bx	lr
.L695:
	.align	2
.L694:
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
	ldr	r2, .L709
	ldr	r3, .L709+4
	ldr	r4, [r2]
	ldr	r6, [r3]
	lsl	lr, r4, #16
	lsl	ip, r6, #16
	ldr	r3, .L709+8
	ldr	r2, .L709+12
	ldr	r10, .L709+16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L699:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L697
	ldr	r8, [r3]
	sub	r7, r8, r4
	cmp	r7, #0
	ble	.L697
	ldr	fp, [r3, #4]
	sub	r0, fp, r6
	sub	r0, r0, #1
	cmp	r0, #238
	movhi	r0, #0
	movls	r0, #1
	cmp	r7, #159
	movgt	r0, #0
	cmp	r0, #0
	bne	.L708
.L697:
	strh	r5, [r2]	@ movhi
.L698:
	cmp	r1, #1
	add	r3, r3, #20
	add	r2, r2, #8
	bne	.L700
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L700:
	mov	r1, #1
	b	.L699
.L708:
	sub	r0, fp, ip
	and	r0, r0, r10
	sub	r8, r8, lr
	orr	r0, r0, #16384
	and	r8, r8, #255
	strh	r0, [r2, #2]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	r9, [r2, #4]	@ movhi
	b	.L698
.L710:
	.align	2
.L709:
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
	ldr	r2, .L724
	ldr	r3, .L724+4
	ldr	r4, [r2]
	ldr	r6, [r3]
	lsl	lr, r4, #16
	lsl	ip, r6, #16
	ldr	r3, .L724+8
	ldr	r2, .L724+12
	ldr	r10, .L724+16
	lsr	lr, lr, #16
	lsr	ip, ip, #16
.L714:
	ldr	r0, [r3, #16]
	cmp	r0, #0
	beq	.L712
	ldr	r8, [r3]
	sub	r7, r8, r4
	cmp	r7, #0
	ble	.L712
	ldr	fp, [r3, #4]
	sub	r0, fp, r6
	sub	r0, r0, #1
	cmp	r0, #238
	movhi	r0, #0
	movls	r0, #1
	cmp	r7, #159
	movgt	r0, #0
	cmp	r0, #0
	bne	.L723
.L712:
	strh	r5, [r2]	@ movhi
.L713:
	cmp	r1, #1
	add	r3, r3, #20
	add	r2, r2, #8
	bne	.L715
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L715:
	mov	r1, #1
	b	.L714
.L723:
	sub	r0, fp, ip
	and	r0, r0, r10
	sub	r8, r8, lr
	orr	r0, r0, #16384
	and	r8, r8, #255
	strh	r0, [r2, #2]	@ movhi
	strh	r8, [r2]	@ movhi
	strh	r9, [r2, #4]	@ movhi
	b	.L713
.L725:
	.align	2
.L724:
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
	ldr	r2, .L733
	ldr	r1, .L733+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r3, r3, r1
	cmp	r3, #0
	ble	.L727
	ldr	r0, .L733+8
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
	bne	.L732
.L727:
	mov	r2, #512
	ldr	r3, .L733+12
	strh	r2, [r3, #16]	@ movhi
	bx	lr
.L732:
	ldr	r2, [r2, #36]
	ldr	r0, .L733+12
	lsl	r2, r2, #6
	add	r2, r2, #13
	orr	r1, r1, #16384
	strh	r2, [r0, #20]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	strh	r1, [r0, #18]	@ movhi
	bx	lr
.L734:
	.align	2
.L733:
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
	ldr	r3, .L750
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L750+4
	mov	lr, r3
	ldr	r2, .L750+8
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
	ldr	r0, .L750+12
	ldr	r9, .L750+16
	ldr	r8, .L750+20
	str	r3, [sp, #4]
	lsr	r6, r6, #16
	lsr	r5, r5, #16
	b	.L745
.L743:
	mov	r4, r3
	add	lr, lr, #60
	add	r0, r0, #8
.L745:
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
	bhi	.L736
	sub	r1, r1, fp
	sub	r1, r1, #1
	cmp	r1, #238
	bls	.L747
.L736:
	strh	r10, [r0, #240]	@ movhi
.L739:
	cmp	r3, #9
	bne	.L743
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L747:
	sub	r1, r4, #2
	cmp	r4, #0
	cmpne	r1, #1
	bhi	.L737
	ldr	r2, [lr, #12]
	cmn	r2, #1
	ldr	r2, [lr, #36]
	lsl	r2, r2, #7
	addeq	r2, r2, #129
	addne	r2, r2, #133
	strh	r2, [r0, #244]	@ movhi
	b	.L739
.L737:
	sub	r1, r4, #6
	bics	r1, r1, #2
	beq	.L748
	cmp	r4, #7
	beq	.L749
	ldr	r2, [lr, #36]
	lsl	r2, r2, #7
	add	r2, r2, #137
	strh	r2, [r0, #244]	@ movhi
	b	.L739
.L748:
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
	b	.L739
.L749:
	ldr	r2, .L750+24
	ldr	r1, [sp, #4]
	strh	r1, [r2]	@ movhi
	b	.L743
.L751:
	.align	2
.L750:
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
	ldr	r3, .L758
	ldr	ip, .L758+4
	ldr	lr, .L758+8
	ldm	r3, {r0, r1}
	ldr	ip, [ip]
	ldr	r3, [lr]
	sub	r0, r0, #8
	sub	r1, r1, #8
	sub	r0, r0, ip
	sub	r1, r1, r3
	lsl	r0, r0, #16
	lsl	r1, r1, #16
	ldr	ip, .L758+12
	ldr	r3, .L758+16
	lsr	r0, r0, #16
	lsr	r1, r1, #16
.L755:
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
	bne	.L755
	pop	{r4, r5, lr}
	bx	lr
.L759:
	.align	2
.L758:
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
	ldr	r3, .L762
	mov	lr, pc
	bx	r3
	ldr	r4, .L762+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L762+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L762+12
	ldrh	r1, [r2]
	ldr	r2, .L762+16
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L763:
	.align	2
.L762:
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
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collisionmapBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
