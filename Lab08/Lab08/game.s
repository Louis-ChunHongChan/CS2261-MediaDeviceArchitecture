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
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L4
	ldr	r3, .L4+4
	push	{r4, lr}
	ldr	ip, .L4+8
	ldr	r2, [r1, #4]
	ldr	r4, [r3]
	ldr	lr, [r1, #36]
	ldr	r3, [r1, #28]
	ldr	r0, [r1]
	ldr	ip, [ip]
	ldr	r1, .L4+12
	sub	r2, r2, r4
	add	r3, r3, lr, lsl #5
	orr	r2, r2, #16384
	sub	r0, r0, ip
	lsl	r3, r3, #1
	strh	r2, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	pikachu
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
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
	mov	r6, #96
	mov	r5, #9
	mov	r2, #0
	mov	r0, #16
	mov	r4, #168
	mov	lr, #121
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L8
	str	r6, [r3]
	ldr	r3, .L8+4
	str	r5, [r3]
	ldr	r3, .L8+8
	stm	r3, {r4, lr}
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	ip, [r3, #40]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	vOff
	.word	hOff
	.word	pikachu
	.size	initGame, .-initGame
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
	ldr	r3, .L14
	ldr	r3, [r3, #44]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L11
	ldr	r2, .L14+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L12:
	ldr	r3, .L14+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L14+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L14+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L14+16
	ldrh	r1, [r2]
	ldr	r2, .L14+20
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L11:
	bl	drawPlayer.part.0
	b	.L12
.L15:
	.align	2
.L14:
	.word	pikachu
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	lr, #16
	mov	r4, #3
	mov	ip, #1
	ldr	r1, .L18
	ldr	r3, .L18+4
	ldr	r0, [r1]
	ldr	r1, [r3]
	ldr	r3, .L18+8
	add	r0, r0, #72
	add	r1, r1, #112
	str	r4, [r3, #40]
	str	lr, [r3, #16]
	str	lr, [r3, #20]
	stm	r3, {r0, r1}
	str	ip, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	vOff
	.word	hOff
	.word	pikachu
	.size	initPlayer, .-initPlayer
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L33
	ldr	r3, .L33+4
	ldr	r5, [r4, #24]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #3
	ldr	r6, [r4, #28]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #32]
	str	r1, [r4, #28]
	bne	.L21
	ldr	r0, [r4, #36]
	ldr	r3, .L33+8
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L21:
	ldr	r3, .L33+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #28]
	ldr	r3, .L33+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #28]
	ldr	r3, .L33+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L24
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #28]
	bne	.L26
.L27:
	mov	r3, #2
	str	r3, [r4, #28]
.L26:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L27
	ldr	r3, [r4, #28]
	cmp	r3, #4
	bne	.L26
	mov	r3, #0
	str	r6, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	pikachu
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L65
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	sub	sp, sp, #20
	beq	.L61
.L37:
	ldr	r3, .L65
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	beq	.L62
.L40:
	ldr	r3, .L65
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L63
.L43:
	ldr	r3, .L65
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L64
.L46:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	animatePlayer
.L61:
	ldr	r4, .L65+4
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	ldr	r2, [r4, #8]
	stm	sp, {r0, ip}
	rsb	r2, r2, #0
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	ldr	r1, .L65+8
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L65+12
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L37
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L37
	ldr	r1, .L65+16
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4]
	ble	.L37
	sub	r3, r3, r2
	cmp	r3, #80
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L37
.L64:
	ldr	r4, .L65+4
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L65+8
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L65+12
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L46
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L46
	ldr	r1, .L65+20
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r4, #4]
	bgt	.L46
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L46
.L63:
	ldr	r4, .L65+4
	add	r0, r4, #16
	ldm	r0, {r0, ip}
	ldr	r2, [r4, #12]
	stm	sp, {r0, ip}
	rsb	r2, r2, #0
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, .L65+8
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L65+12
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L43
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L43
	ldr	r1, .L65+20
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4, #4]
	ble	.L43
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L43
.L62:
	ldr	r4, .L65+4
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #8]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, r3, ip}
	str	r2, [sp]
	ldr	r1, .L65+8
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L65+12
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L40
	ldr	r3, [r4]
	ldr	r2, [r4, #20]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L40
	ldr	r1, .L65+16
	ldr	r0, [r4, #8]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #94
	str	r3, [r4]
	bgt	.L40
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L40
.L66:
	.align	2
.L65:
	.word	67109120
	.word	pikachu
	.word	.LANCHOR0
	.word	collisionCheck
	.word	vOff
	.word	hOff
	.size	updatePlayer, .-updatePlayer
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
	@ link register save eliminated.
	b	updatePlayer
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L72
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L69
	ldr	r2, .L72+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L69:
	b	drawPlayer.part.0
.L73:
	.align	2
.L72:
	.word	pikachu
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.global	collisionMap
	.comm	pikachu,48,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	collisionmapBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
