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
	.global	initClaw
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initClaw, %function
initClaw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r0, #0
	mov	r5, #18
	mov	r4, #25
	mov	lr, #6
	mov	r1, #120
	mov	r2, #1
	mvn	ip, #49664
	ldr	r3, .L4
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r0, [r3]
	str	r0, [r3, #8]
	strh	ip, [r3, #36]	@ movhi
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	claw
	.size	initClaw, .-initClaw
	.align	2
	.global	updateClaw
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateClaw, %function
updateClaw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L7
	ldr	r3, .L12+4
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #16]
	cmp	r2, r1
	blt	.L7
	sub	r2, r2, r1
	str	r2, [r3, #4]
	bx	lr
.L7:
	ldr	r3, .L12
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L9
	ldr	r3, .L12+4
	ldr	r1, [r3, #4]
	ldr	r2, [r3, #28]
	ldr	r0, [r3, #16]
	add	r2, r1, r2
	rsb	ip, r0, #240
	cmp	r2, ip
	bgt	.L9
	add	r1, r1, r0
	str	r1, [r3, #4]
	bx	lr
.L9:
	ldr	r3, .L12
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L11
.L10:
	ldr	r3, .L12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bxne	lr
	ldr	r2, .L12+4
	ldr	r3, [r2]
	cmp	r3, #0
	ldrgt	r1, [r2, #20]
	subgt	r3, r3, r1
	strgt	r3, [r2]
	bx	lr
.L11:
	ldr	r1, .L12+4
	ldr	r3, [r1, #28]
	cmp	r3, #0
	add	r2, r3, #3
	movge	r2, r3
	ldr	r0, [r1]
	ldr	r3, [r1, #24]
	add	r3, r0, r3
	add	r3, r3, r2, asr #2
	cmp	r3, #159
	bgt	.L10
	ldr	r2, [r1, #20]
	ldr	r3, [r1, #32]
	add	r0, r0, r2
	add	r3, r3, r2
	str	r0, [r1]
	str	r3, [r1, #32]
	bx	lr
.L13:
	.align	2
.L12:
	.word	67109120
	.word	claw
	.size	updateClaw, .-updateClaw
	.align	2
	.global	drawClaw
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawClaw, %function
drawClaw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #31744
	push	{r4, r5, lr}
	ldr	r4, .L16
	ldr	r2, [r4, #32]
	sub	sp, sp, #12
	ldr	r3, [r4, #24]
	str	r2, [sp]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #28]
	ldr	r0, [r4, #12]
	str	ip, [sp, #4]
	ldr	r5, .L16+4
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #36]
	ldr	r3, [r4, #32]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #28]
	ldr	r3, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	claw
	.word	drawClawModel
	.size	drawClaw, .-drawClaw
	.align	2
	.global	initBomb
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBomb, %function
initBomb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #0
	ldr	r6, .L24
	mov	lr, pc
	bx	r6
	mov	fp, r10
	mov	r9, #114
	ldr	r3, .L24+4
	smull	r2, r3, r0, r3
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r0, r3, lsl #1
	ldr	r4, .L24+8
	ldr	r5, .L24+12
	ldr	r8, .L24+16
	ldr	r7, .L24+20
	add	r3, r3, #20
.L21:
	add	r3, r3, #20
	str	r3, [r5]
	str	r3, [r4]
	mov	lr, pc
	bx	r6
	smull	r3, r2, r7, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #1
	ldr	r2, [r4]
	ldrh	r3, [r8]
	add	r0, r0, #20
	cmp	r10, #1
	str	fp, [r4, #32]
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	str	r2, [r4, #8]
	strh	r3, [r4, #28]	@ movhi
	add	r10, r10, #1
	bls	.L19
	mov	r3, #15
	mov	ip, #108
	mvn	r0, #1
	mov	r1, #115
	mov	r2, #1
	cmp	r10, #5
	str	fp, [r4, #40]
	strb	ip, [r4, #30]
	str	r0, [r4, #16]
	strb	r1, [r4, #31]
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	str	r2, [r4, #36]
	beq	.L18
.L22:
	ldr	r3, [r5]
	add	r4, r4, #44
	b	.L21
.L19:
	mov	r2, #1
	mov	r3, #21
	mov	r1, #108
	strb	r9, [r4, #30]
	str	fp, [r4, #40]
	str	r2, [r4, #16]
	str	r2, [r4, #36]
	strb	r1, [r4, #31]
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	b	.L22
.L18:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	rand
	.word	715827883
	.word	bomb
	.word	tempRow
	.word	.LANCHOR0
	.word	2114445439
	.size	initBomb, .-initBomb
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
	push	{r4, r5, r6, lr}
	mov	r2, #1
	mov	r0, #0
	mov	lr, #6
	mov	r1, #120
	mov	r5, #18
	mov	r4, #25
	mvn	ip, #49664
	ldr	r3, .L28
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r0, [r3]
	str	r0, [r3, #8]
	strh	ip, [r3, #36]	@ movhi
	str	r1, [r3, #4]
	str	r1, [r3, #12]
	bl	initBomb
	mov	r2, #5
	ldr	r3, .L28+4
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L29:
	.align	2
.L28:
	.word	claw
	.word	bombRemaining
	.size	initGame, .-initGame
	.align	2
	.global	updateBomb
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBomb, %function
updateBomb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldrb	r3, [r0, #31]	@ zero_extendqisi2
	cmp	r3, #115
	mov	r4, r0
	sub	sp, sp, #20
	beq	.L47
.L31:
	cmp	r3, #108
	beq	.L48
.L33:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r3, r2, r3
	cmp	r3, #0
	str	r3, [r4, #4]
	ldr	r5, [r4, #24]
	ble	.L38
	add	r1, r3, r5
	cmp	r1, #240
	ble	.L39
.L38:
	ldr	r1, [r4, #32]
	ldrb	r0, [r4, #31]	@ zero_extendqisi2
	rsb	r2, r2, #0
	add	r1, r1, #1
	cmp	r0, #115
	str	r2, [r4, #16]
	str	r1, [r4, #32]
	beq	.L49
	cmp	r0, #108
	ldreq	r2, .L50
	addeq	r1, r2, r1, lsl #1
	ldrheq	r2, [r1, #8]
	strheq	r2, [r4, #28]	@ movhi
.L39:
	ldr	lr, [r4, #20]
	ldr	ip, [r4]
	ldr	r0, .L50+4
	str	r5, [sp, #8]
	str	r3, [sp]
	ldr	r5, .L50+8
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L30
	mov	r1, #0
	ldr	r2, .L50+12
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #36]
.L30:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L48:
	ldr	r3, [r4, #32]
	cmp	r3, #2
	ble	.L33
	add	r5, r4, #20
	ldm	r5, {r5, ip}
	ldr	r0, .L50+4
	ldr	lr, [r4]
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	ldr	r5, .L50+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	moveq	r2, #1
	ldreq	r3, .L50+16
	streq	r2, [r3]
	b	.L33
.L47:
	ldr	r3, [r0, #32]
	cmp	r3, #3
	ble	.L33
	add	r5, r4, #20
	ldm	r5, {r5, ip}
	ldr	r0, .L50+4
	ldr	lr, [r4]
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	r5, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4, #4]
	ldr	r5, .L50+8
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	moveq	r1, #1
	ldreq	r2, .L50+16
	ldrbne	r3, [r4, #31]	@ zero_extendqisi2
	ldrbeq	r3, [r4, #31]	@ zero_extendqisi2
	streq	r1, [r2]
	b	.L31
.L49:
	ldr	r2, .L50
	lsl	r1, r1, #1
	ldrh	r2, [r2, r1]
	strh	r2, [r4, #28]	@ movhi
	b	.L39
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.word	claw
	.word	collision
	.word	bombRemaining
	.word	lost
	.size	updateBomb, .-updateBomb
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
	push	{r4, lr}
	ldr	r4, .L54
	bl	updateClaw
	mov	r0, r4
	bl	updateBomb
	add	r0, r4, #44
	bl	updateBomb
	add	r0, r4, #88
	bl	updateBomb
	add	r0, r4, #132
	bl	updateBomb
	add	r0, r4, #176
	pop	{r4, lr}
	b	updateBomb
.L55:
	.align	2
.L54:
	.word	bomb
	.size	updateGame, .-updateGame
	.align	2
	.global	drawBomb
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBomb, %function
drawBomb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r3, .L69
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L57
	ldrb	r3, [r4, #31]	@ zero_extendqisi2
	cmp	r3, #115
	beq	.L65
	cmp	r3, #108
	beq	.L66
.L60:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L57:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L60
	ldrb	r3, [r4, #31]	@ zero_extendqisi2
	cmp	r3, #115
	beq	.L67
.L62:
	cmp	r3, #108
	beq	.L68
.L63:
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L60
.L65:
	mov	r2, #31744
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r5, .L69+4
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	ldrb	r3, [r4, #31]	@ zero_extendqisi2
	cmp	r3, #108
	bne	.L60
.L66:
	mov	r2, #31744
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r5, .L69+8
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	ldrh	r2, [r4, #28]
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r2, [r4, #24]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	b	.L60
.L68:
	mov	r2, #31744
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r5, .L69+8
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	b	.L63
.L67:
	mov	r2, #31744
	ldr	r3, [r4, #20]
	str	r2, [sp]
	ldr	r5, .L69+4
	ldr	r2, [r4, #24]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #12]
	mov	lr, pc
	bx	r5
	ldrb	r3, [r4, #31]	@ zero_extendqisi2
	b	.L62
.L70:
	.align	2
.L69:
	.word	rand
	.word	drawSmallBomb
	.word	drawLargeBomb
	.size	drawBomb, .-drawBomb
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
	ldr	r4, .L73
	bl	drawClaw
	mov	r0, r4
	bl	drawBomb
	add	r0, r4, #44
	bl	drawBomb
	add	r0, r4, #88
	bl	drawBomb
	add	r0, r4, #132
	bl	drawBomb
	add	r0, r4, #176
	pop	{r4, lr}
	b	drawBomb
.L74:
	.align	2
.L73:
	.word	bomb
	.size	drawGame, .-drawGame
	.global	largeHitColor
	.global	pickColor
	.comm	tempRow,4,4
	.comm	lost,4,4
	.comm	bombRemaining,4,4
	.comm	bomb,220,4
	.comm	claw,40,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pickColor, %object
	.size	pickColor, 8
pickColor:
	.short	15855
	.short	31775
	.short	31
	.short	32767
	.type	largeHitColor, %object
	.size	largeHitColor, 6
largeHitColor:
	.short	15855
	.short	31
	.short	32767
	.ident	"GCC: (devkitARM release 53) 9.1.0"
