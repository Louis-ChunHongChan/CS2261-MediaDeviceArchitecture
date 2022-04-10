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
	mov	r5, #2
	mov	r0, #10
	mov	r2, #67108864
	ldr	r1, .L12
	ldr	r8, .L12+4
	str	r5, [r1]
	str	r4, [r8]
	ldr	r3, .L12+8
	ldr	r1, .L12+12
	ldr	r8, .L12+16
	str	r4, [r3]
	str	r4, [r1]
	str	r4, [r8]
	ldr	r9, .L12+20
	ldr	r8, .L12+24
	ldr	r7, .L12+28
	ldr	r6, .L12+32
	ldr	lr, .L12+36
	ldr	ip, .L12+40
	ldr	r3, .L12+44
	ldr	r1, .L12+48
	str	r4, [r7]
	str	r4, [r6]
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r3]
	str	r0, [r1]
	ldrh	r3, [r9]
	ldr	lr, .L12+52
	ldr	ip, .L12+56
	ldrh	r1, [r8]
	ldr	r7, .L12+60
	ldr	r6, .L12+64
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r7]
	str	r4, [r6]
	mov	r0, #3
	strh	r3, [r2, #22]	@ movhi
	ldr	r6, .L12+68
	strh	r1, [r2, #20]	@ movhi
	mov	r3, #256
	ldr	r2, .L12+72
	ldr	r1, .L12+76
	mov	lr, pc
	bx	r6
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L12+80
	ldr	r1, .L12+84
	mov	lr, pc
	bx	r6
	mov	r7, #88
	mov	r3, #16
	mov	r2, #1
	mov	r6, #200
	mov	fp, #72
	mov	r10, #32
	ldr	r1, .L12+88
	stm	r1, {r6, r7}
	str	r2, [r1, #12]
	str	r2, [r1, #8]
	str	r5, [r1, #28]
	str	r3, [r1, #16]
	str	r4, [r1, #24]
	str	r4, [r1, #36]
	str	r5, [r1, #40]
	str	r4, [r1, #48]
	ldr	r5, .L12+92
	str	r3, [r1, #20]
	ldr	r1, .L12+96
	str	r10, [r5, #12]
	str	fp, [r1, #4]
	mov	r10, #215
	mov	fp, #163
	mov	lr, #24
	stm	r5, {r10, fp}
	mov	r10, #225
	str	r2, [r5, #16]
	str	r3, [r5, #8]
	ldr	r5, .L12+100
	mov	r0, #40
	stm	r5, {r10, lr}
	mov	ip, #184
	mov	r10, #185
	str	r2, [r5, #16]
	str	r3, [r5, #8]
	str	r3, [r5, #12]
	ldr	r5, .L12+104
	str	r2, [r1, #16]
	str	r2, [r5, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r3, [r1, #28]
	str	ip, [r1]
	str	r3, [r5, #8]
	str	r3, [r5, #12]
	str	r10, [r5]
	str	r0, [r5, #4]
	str	r3, [r1, #32]
	str	ip, [r1, #20]
	str	ip, [r1, #40]
	mov	ip, #104
	str	ip, [r1, #44]
	mov	ip, #20
	str	r2, [r1, #36]
	str	r3, [r1, #48]
	str	r2, [r1, #56]
	str	r7, [r1, #24]
	str	r3, [r1, #52]
	ldr	r1, .L12+108
	str	ip, [r1]
	ldr	ip, .L12+112
	str	lr, [ip, #4]
	str	r2, [ip, #16]
	str	r3, [ip, #8]
	str	r3, [ip, #12]
	str	r0, [ip]
	mov	ip, #79
	str	r6, [r1, #4]
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	ldr	r1, .L12+116
	str	r0, [r1, #4]
	ldr	r0, .L12+120
	str	r3, [r1, #16]
	str	r3, [r1, #20]
	str	r3, [r1, #72]
	str	r3, [r1, #76]
	str	ip, [r1]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	mov	ip, #232
	mov	r3, #67
	stm	r0, {r3, ip}
	mov	r3, #69
	str	r2, [r1, #12]
	str	r2, [r1, #8]
	str	r4, [r1, #44]
	str	r2, [r1, #48]
	str	r2, [r0, #16]
	str	r2, [r1, #68]
	str	r3, [r1, #56]
	mov	r3, #172
	str	r2, [r1, #64]
	str	r4, [r1, #100]
	str	r2, [r1, #104]
	str	r3, [r1, #60]
	ldr	r5, .L12+124
	mov	lr, pc
	bx	r5
	mov	r1, #96
	ldr	r2, .L12+128
	ldr	r3, .L12+132
	ldrh	r2, [r2, #48]
	str	r4, [r8]
	str	r1, [r9]
	strh	r2, [r3]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	life
	.word	jumping
	.word	delivered
	.word	frame
	.word	jumpFrame
	.word	vOff
	.word	hOff
	.word	down
	.word	climbing
	.word	powerUp
	.word	jumpBoosted
	.word	score
	.word	gravity
	.word	bootsFrame
	.word	floating
	.word	downFrame
	.word	hammerFrame
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	guy
	.word	door
	.word	heart
	.word	key
	.word	boots
	.word	customer
	.word	bubble
	.word	crazy
	.word	shirt
	.word	hideSprites
	.word	67109120
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
	ldr	r3, .L16
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
.L17:
	.align	2
.L16:
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
	ldr	r3, .L20
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #4]
	str	r1, [r3]
	str	r2, [r3, #16]
	ldr	lr, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
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
	ldr	r3, .L23
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L24:
	.align	2
.L23:
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
	ldr	r3, .L26
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r3, .L29
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L30:
	.align	2
.L29:
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
	mov	r0, #20
	mov	r1, #200
	ldr	r3, .L32
	stm	r3, {r0, r1}
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r3, .L35
	stm	r3, {r0, ip}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	bx	lr
.L36:
	.align	2
.L35:
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
	mov	lr, #69
	mov	r0, #0
	mov	ip, #172
	ldr	r3, .L39
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
.L40:
	.align	2
.L39:
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
	ldr	r3, .L45
	ldr	r1, [r3, #4]
	ldr	ip, [r3]
	ldr	r3, .L45+4
	sub	r2, r1, #16
	sub	ip, ip, #16
	add	r1, r1, #32
.L42:
	str	r2, [r3, #4]
	add	r2, r2, #16
	cmp	r2, r1
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	ip, [r3]
	str	lr, [r3, #16]
	add	r3, r3, #20
	bne	.L42
	ldr	lr, [sp], #4
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r4, .L60
	ldr	r5, .L60+4
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
	bne	.L58
	ldr	r6, .L60+8
.L48:
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r3, [r4, #4]
	subne	r3, r3, #1
	strne	r3, [r4, #4]
.L47:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L58:
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	ldr	r6, .L60+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r3, #0
	strne	r3, [r5, #16]
	bne	.L47
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L47
	add	r2, r4, #16
	add	r7, r5, #8
	ldr	r0, [r4, #4]
	ldr	r1, [r4]
	ldm	r2, {r2, r3}
	ldr	ip, [r5, #4]
	ldr	lr, [r5]
	ldm	r7, {r7, r8}
	b	.L48
.L61:
	.align	2
.L60:
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
	ldr	r3, .L64
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bxne	lr
	b	updateKey.part.0
.L65:
	.align	2
.L64:
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
	ldr	r4, .L75
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L74
.L66:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L74:
	ldr	r0, .L75+4
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
	ldr	r5, .L75+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L66
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L75+12
	ldr	r0, .L75+16
	ldr	ip, [r3]
	ldr	r3, .L75+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L76:
	.align	2
.L75:
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
	ldr	r4, .L86
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L85
.L77:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L85:
	ldr	r0, .L86+4
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
	ldr	r5, .L86+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L77
	mov	r1, #0
	ldr	r2, .L86+12
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r4, .L97
	ldr	r3, [r4, #16]
	cmp	r3, #0
	sub	sp, sp, #20
	bne	.L96
.L88:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L96:
	ldr	r0, .L97+4
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
	ldr	r5, .L97+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L88
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L97+12
	ldr	r0, .L97+16
	ldr	ip, [r3]
	ldr	r3, .L97+20
	str	ip, [r0]
	str	r1, [r4, #16]
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r4, .L122
	mov	r6, #1
	mov	r5, r4
	mov	r9, #0
	ldr	r8, .L122+4
	ldr	r7, .L122+8
	sub	sp, sp, #20
.L112:
	ldr	r3, [r5, #48]
	cmp	r3, #0
	bne	.L101
	mov	r3, #300
	str	r3, [r5]
	str	r3, [r5, #4]
.L102:
	cmp	r6, #2
	bne	.L113
.L100:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L101:
	cmp	r6, #1
	beq	.L121
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
	beq	.L102
	ldr	r3, [r4, #60]
	cmp	r3, #229
	mvngt	r2, #0
	strgt	r2, [r4, #68]
	bgt	.L109
	cmp	r3, #155
	movle	r1, #1
	movle	r2, r1
	ldrgt	r2, [r4, #68]
	strle	r1, [r4, #68]
.L109:
	add	r3, r3, r2
	cmp	r6, #2
	str	r3, [r4, #60]
	beq	.L100
.L113:
	add	r5, r5, #56
	add	r6, r6, #1
	b	.L112
.L121:
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
	beq	.L113
	ldr	r3, [r4, #4]
	cmp	r3, #49
	mvngt	r2, #0
	strgt	r2, [r4, #12]
	bgt	.L106
	cmp	r3, #25
	movle	r2, r6
	ldrgt	r2, [r4, #12]
	strle	r6, [r4, #12]
.L106:
	add	r3, r3, r2
	str	r3, [r4, #4]
	add	r5, r5, #56
	add	r6, r6, #1
	b	.L112
.L123:
	.align	2
.L122:
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
	ldr	r3, .L142
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L125
	mov	r1, #1
	ldr	r2, .L142+4
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L125
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L125
	str	r1, [r2, #56]
	bx	lr
.L125:
	rsbs	r1, r3, #3
	bxeq	lr
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L142+4
.L128:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r2, r1
	add	r3, r3, #20
	bne	.L128
	bx	lr
.L143:
	.align	2
.L142:
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
	ldr	r2, .L191
	ldr	r4, .L191+4
	ldr	r6, [r2]
	ldr	r2, [r4, #28]
	cmp	r6, #0
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	sub	sp, sp, #16
	beq	.L145
	ldr	r3, .L191+8
	ldrh	r3, [r3, #48]
	tst	r3, #16
	moveq	r3, #8
	movne	r3, #9
	str	r3, [r4, #28]
.L145:
	ldr	r5, [r4, #24]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L191+12
	add	r3, r3, r3, lsl #8
	ldr	r1, .L191+16
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcs	.L147
	ldr	r0, [r4, #36]
	ldr	r3, .L191+20
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L147:
	ldr	r3, .L191+24
	ldr	r2, [r3]
	ldr	r3, .L191+28
	cmp	r2, #0
	ldr	r3, [r3]
	beq	.L188
	orrs	r3, r6, r3
	bne	.L187
	ldr	r3, .L191+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L187
	ldr	r3, .L191+8
	ldrh	r2, [r3, #48]
	tst	r2, #64
	beq	.L163
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L163
.L187:
	ldr	r3, [r4, #28]
.L155:
	cmp	r3, #10
	beq	.L189
	ldr	r5, [r4, #24]
.L166:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L188:
	cmp	r3, #0
	bne	.L187
	ldr	ip, .L191+32
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L187
	ldr	r3, .L191+8
	ldrh	r2, [r3, #48]
	tst	r2, #32
	ldrh	r3, [r3, #48]
	bne	.L150
	cmp	r6, #0
	bne	.L187
	tst	r3, #16
	str	r6, [r4, #28]
	beq	.L152
.L153:
	ldr	r3, .L191+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L166
	ldr	r3, .L191+40
	ldrh	r3, [r3]
	ands	r6, r3, #2
	bne	.L166
	mvn	r3, #14
	mov	lr, #1
	ldr	r2, .L191+44
	ldr	r5, [r4, #20]
	ldr	r1, [r2]
	ldr	r0, .L191+48
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	ldr	r2, .L191+52
	ldr	r3, [r4, #16]
	ldr	r0, [r0]
	str	r5, [sp, #4]
	str	r3, [sp]
	ldr	r5, .L191+56
	str	r1, [r2]
	ldr	r3, [r4]
	mov	r1, #256
	ldr	r2, [r4, #4]
	str	lr, [r4, #28]
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L187
	ldr	r3, .L191+60
	ldr	r1, [r3]
	cmp	r1, #0
	ldm	r4, {r2, r3}
	beq	.L160
	ldr	r1, .L191+64
	sub	r2, r2, #75
	sub	r3, r3, #25
	stm	r4, {r2, r3}
	str	r6, [r1]
	b	.L187
.L189:
	mov	r3, #0
	ldr	r2, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L163:
	mov	r3, #4
	str	r3, [r4, #28]
	b	.L166
.L150:
	tst	r3, #16
	beq	.L190
	cmp	r6, #0
	ldr	r3, [r4, #28]
	bne	.L155
	cmp	r3, #0
	beq	.L153
	cmp	r3, #2
	bne	.L155
.L156:
	ldr	r3, .L191+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L166
	ldr	r3, .L191+40
	ldrh	r3, [r3]
	ands	r6, r3, #2
	bne	.L166
	mvn	r5, #14
	mov	r0, #15
	mov	r1, #3
	mov	lr, #1
	ldr	r2, .L191+44
	ldr	r2, [r2]
	str	r5, [sp, #12]
	str	r0, [sp, #8]
	ldr	r5, [r4, #20]
	ldr	r0, .L191+48
	ldr	r3, .L191+52
	ldr	r0, [r0]
	str	r5, [sp, #4]
	ldr	r5, [r4, #16]
	str	r1, [r4, #28]
	str	r5, [sp]
	mov	r1, #256
	str	r2, [r3]
	ldr	r5, .L191+56
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	str	lr, [ip]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L187
	ldr	r3, .L191+60
	ldr	r1, [r3]
	cmp	r1, #0
	ldm	r4, {r2, r3}
	beq	.L162
	ldr	r1, .L191+64
	sub	r2, r2, #75
	add	r3, r3, #25
	stm	r4, {r2, r3}
	str	r6, [r1]
	b	.L187
.L190:
	cmp	r6, #0
	bne	.L187
.L152:
	mov	r3, #2
	str	r3, [r4, #28]
	b	.L156
.L160:
	ldr	r0, .L191+64
	sub	r3, r3, #15
	sub	r2, r2, #20
	stm	r4, {r2, r3}
	str	r1, [r0]
	ldr	r3, [r4, #28]
	b	.L155
.L162:
	ldr	r0, .L191+64
	add	r3, r3, #15
	sub	r2, r2, #20
	stm	r4, {r2, r3}
	str	r1, [r0]
	ldr	r3, [r4, #28]
	b	.L155
.L192:
	.align	2
.L191:
	.word	powerUp
	.word	guy
	.word	67109120
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	climbing
	.word	down
	.word	jumping
	.word	oldButtons
	.word	buttons
	.word	frame
	.word	.LANCHOR0
	.word	jumpFrame
	.word	collisionCheck
	.word	jumpBoosted
	.word	gravity
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
	ldr	r10, .L248
	ldr	r3, [r10]
	cmp	r3, #0
	sub	sp, sp, #20
	bgt	.L240
.L195:
	ldr	r8, .L248+4
	ldr	r3, [r8]
	cmp	r3, #0
	mov	r6, #0
	ldr	r4, .L248+8
	ldr	r9, .L248+12
	ldr	r7, .L248+16
	ldr	r5, .L248+20
	ldr	fp, .L248+24
	bne	.L197
.L247:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L241
.L198:
	ldr	r2, [r7]
	cmp	r2, #0
	beq	.L200
	ldr	r1, [r9]
	ldr	r2, [fp]
	orrs	r2, r1, r2
	bne	.L200
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L200
	ldr	r2, [r5, #28]
	cmp	r2, #1
	beq	.L242
	cmp	r2, #3
	beq	.L243
.L200:
	cmp	r6, #1
	add	r4, r4, #56
	bne	.L216
	ldr	r2, [r9]
	orrs	r3, r2, r3
	ldr	r3, [r7]
	bne	.L239
	cmp	r3, #0
	bne	.L205
	ldr	r3, .L248+28
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	beq	.L244
.L206:
	ldr	r3, .L248+28
	ldrh	r3, [r3, #48]
	tst	r3, #128
	beq	.L208
	ldr	r3, [r7]
	ldr	r2, [r9]
.L239:
	ldr	r4, .L248+24
.L204:
	ldr	r1, [r4]
	orr	r3, r3, r2
	orrs	r3, r3, r1
	bne	.L205
	ldr	r3, .L248+28
	ldrh	r3, [r3, #48]
	ands	r3, r3, #32
	beq	.L245
.L213:
	ldr	r3, .L248+28
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	beq	.L246
.L205:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateGuy
.L216:
	cmp	r3, #0
	mov	r6, #1
	beq	.L247
.L197:
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
	ldr	ip, .L248+32
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	movne	r2, #0
	ldrne	r1, .L248+36
	ldrne	r3, [r1]
	addne	r3, r3, #1
	strne	r3, [r1]
	strne	r2, [r4, #48]
	ldr	r3, [r8]
	b	.L200
.L241:
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
	ldr	ip, .L248+32
	asr	r3, r3, #1
	asr	r2, r2, #1
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L199
	ldr	r3, [r8]
	b	.L198
.L240:
	ldr	r2, .L248+40
	add	ip, r2, #16
	ldr	r0, .L248+20
	ldm	r2, {r1, r2}
	ldm	ip, {ip, lr}
	ldr	r3, [r0, #20]
	stmib	sp, {r1, ip, lr}
	str	r2, [sp]
	ldr	r4, .L248+32
	ldr	r2, [r0, #16]
	ldr	r1, [r0]
	lsl	r3, r3, #1
	ldr	r0, [r0, #4]
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L195
	mov	r0, #1
	ldr	r2, .L248+36
	ldr	r3, [r2]
	ldr	r1, .L248+44
	add	r3, r3, #5
	str	r3, [r2]
	str	r0, [r1]
	b	.L195
.L199:
	mov	r2, #0
	mov	r1, #1
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r3, [r10]
	ldr	r3, .L248+48
	str	r2, [r4, #48]
	ldr	r3, [r3]
	ldr	r2, .L248+52
	str	r1, [r9]
	str	r3, [r2]
	ldr	r3, [r8]
	b	.L200
.L246:
	ldr	r4, .L248+20
	ldr	r0, [r4, #20]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	stmib	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp]
	ldr	r1, .L248+56
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L248+60
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L205
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #16]
	add	r2, r3, r2
	cmp	r2, #256
	bgt	.L205
	ldr	r1, .L248+64
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r2, #14
	str	r3, [r4, #4]
	bgt	.L205
	sub	r3, r3, r2
	cmp	r3, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L205
.L243:
	ldr	r1, [r5]
	ldr	r2, [r4]
	cmp	r1, r2
	bge	.L200
	ldr	r1, [r5, #4]
	ldr	r2, [r4, #4]
	cmp	r1, r2
	bgt	.L200
	mov	r1, #1
	ldr	r0, .L248+36
	ldr	r2, [r0]
	add	r2, r2, r1
	str	r2, [r0]
	str	r1, [r4, #52]
	b	.L200
.L245:
	ldr	r4, .L248+20
	add	r0, r4, #16
	ldr	r2, [r4, #12]
	ldm	r0, {r0, ip}
	rsb	r2, r2, #0
	stm	sp, {r0, ip}
	str	r3, [sp, #12]
	str	r2, [sp, #8]
	ldr	r1, .L248+56
	ldr	r3, [r4]
	ldr	r0, [r1]
	ldr	r2, [r4, #4]
	mov	r1, #256
	ldr	r5, .L248+60
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L213
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L213
	ldr	r1, .L248+64
	ldr	r0, [r4, #12]
	ldr	r2, [r1]
	sub	r3, r3, r0
	cmp	r2, #0
	str	r3, [r4, #4]
	ble	.L213
	sub	r3, r3, r2
	cmp	r3, #120
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L213
.L244:
	ldr	r5, .L248+20
	ldr	r2, [r5, #8]
	ldr	r0, [r5, #20]
	ldr	r1, [r5, #16]
	rsb	r2, r2, #0
	str	r1, [sp]
	str	r3, [sp, #8]
	str	r2, [sp, #12]
	str	r0, [sp, #4]
	ldr	r8, .L248+56
	mov	r1, #256
	ldr	r3, [r5]
	ldr	r2, [r5, #4]
	ldr	r0, [r8, #4]
	ldr	r10, .L248+60
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L206
	ldr	r0, .L248+68
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r1, [r0]
	ldr	r4, .L248+24
	sub	r3, r3, r2
	cmp	r1, #0
	str	r3, [r5]
	str	r6, [r4]
	ble	.L207
	sub	ip, r3, r1
	cmp	ip, #80
	suble	r1, r1, #1
	strle	r1, [r0]
.L207:
	ldr	r1, .L248+28
	ldrh	r1, [r1, #48]
	tst	r1, #128
	bne	.L205
.L215:
	mov	ip, #0
	ldr	r1, [r5, #20]
	str	r2, [sp, #12]
	ldr	r2, [r5, #16]
	ldr	r0, [r8, #4]
	stmib	sp, {r1, ip}
	str	r2, [sp]
	mov	r1, #256
	ldr	r2, [r5, #4]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L210
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	add	r3, r3, r2
	cmp	r3, #232
	bgt	.L210
	mov	r0, #1
	ldr	r1, .L248+68
	ldr	r2, [r1]
	cmp	r2, #94
	str	r3, [r5]
	str	r0, [r4]
	bgt	.L205
	sub	r3, r3, r2
	cmp	r3, #80
	addgt	r2, r2, r0
	strgt	r2, [r1]
	b	.L205
.L208:
	ldr	r5, .L248+20
	ldr	r4, .L248+24
	ldr	r3, [r5]
	ldr	r2, [r5, #8]
	ldr	r8, .L248+56
	ldr	r10, .L248+60
	b	.L215
.L210:
	ldr	r3, [r7]
	ldr	r2, [r9]
	b	.L204
.L242:
	ldr	r0, [r5]
	ldr	r1, [r4]
	cmp	r0, r1
	bge	.L200
	ldr	r0, [r5, #4]
	ldr	r1, [r4, #4]
	cmp	r0, r1
	bgt	.L200
	ldr	r0, .L248+36
	ldr	r1, [r0]
	add	r1, r1, #3
	str	r2, [r4, #52]
	str	r1, [r0]
	b	.L200
.L249:
	.align	2
.L248:
	.word	life
	.word	powerUp
	.word	crazy
	.word	down
	.word	jumping
	.word	guy
	.word	climbing
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
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r1, .L321
	ldr	r6, .L321+4
	ldr	r2, [r1]
	ldr	r3, [r6]
	cmp	r2, #94
	add	r3, r3, #1
	ldr	r4, .L321+8
	str	r3, [r6]
	sub	sp, sp, #20
	ble	.L312
.L251:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L286
.L253:
	ldr	r2, .L321+12
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.L255
	ldr	r1, .L321+16
	ldr	r1, [r1]
	sub	r1, r3, r1
	cmp	r1, #25
	moveq	r0, #0
	moveq	r1, #10
	streq	r0, [r2]
	ldreq	r2, .L321+20
	streq	r1, [r2]
.L255:
	ldr	r5, .L321+24
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L315
.L256:
	ldr	r1, .L321+28
	ldr	r2, .L321+32
	ldr	r0, [r1]
	ldr	r2, [r2]
	cmp	r0, #0
	sub	r2, r3, r2
	beq	.L261
	ldr	r0, [r4, #28]
	cmp	r0, #0
	moveq	r0, #5
	bne	.L316
.L262:
	cmp	r2, #20
	moveq	r2, #0
	str	r0, [r4, #28]
	streq	r2, [r1]
	beq	.L263
.L261:
	cmp	r2, #70
	beq	.L317
.L263:
	ldr	r2, .L321+36
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.L264
	ldr	r1, .L321+40
	ldr	r1, [r1]
	sub	r1, r3, r1
	cmp	r1, #150
	moveq	r1, #0
	streq	r1, [r2]
	streq	r1, [r4, #28]
.L264:
	ldr	r1, .L321+44
	ldr	r2, .L321+48
	ldr	r0, [r1]
	ldr	r2, [r2]
	cmp	r0, #0
	sub	r2, r3, r2
	bne	.L318
	cmp	r2, #600
	moveq	r1, #1
	ldreq	r2, .L321+52
	streq	r1, [r2, #16]
.L267:
	ldr	r1, .L321+56
	ldr	r2, .L321+60
	ldr	r0, [r1]
	ldr	r2, [r2]
	cmp	r0, #0
	sub	r3, r3, r2
	bne	.L319
	cmp	r3, #600
	moveq	r2, #1
	ldreq	r3, .L321+64
	streq	r2, [r3, #16]
.L271:
	ldr	r3, [r4]
	cmp	r3, #232
	bne	.L273
.L275:
	mov	r3, #0
	str	r3, [r5]
.L274:
	bl	updateGuy
	bl	updateDoor
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L320
.L276:
	bl	updateBoots
	ldr	r3, .L321+68
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L281
	mov	r1, #1
	ldr	r2, .L321+72
	cmp	r3, r1
	str	r1, [r2, #16]
	beq	.L281
	cmp	r3, #2
	str	r1, [r2, #36]
	beq	.L281
	str	r1, [r2, #56]
.L279:
	bl	updateShirt
	bl	updateBubble
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	updateCrazy
.L281:
	rsbs	r1, r3, #3
	beq	.L279
	mov	r2, #0
	mov	ip, r2
	ldr	r3, .L321+72
.L283:
	ldr	r0, [r3, #16]
	add	r2, r2, #1
	cmp	r0, #0
	strne	ip, [r3, #16]
	cmp	r1, r2
	add	r3, r3, #20
	bne	.L283
	b	.L279
.L319:
	mvn	r0, #0
	ldr	r2, .L321+20
	cmp	r3, #80
	str	r0, [r2]
	bne	.L271
	mov	r3, #10
	mov	r0, #0
	str	r3, [r2]
	ldr	r3, [r4]
	cmp	r3, #232
	str	r0, [r1]
	beq	.L275
.L273:
	mov	lr, #0
	ldr	r2, [r4, #8]
	add	r1, r4, #16
	rsb	r2, r2, #0
	ldm	r1, {r1, ip}
	ldr	r0, .L321+76
	str	r2, [sp, #12]
	str	lr, [sp, #8]
	ldr	r2, [r4, #4]
	ldr	r0, [r0, #4]
	ldr	r6, .L321+80
	stm	sp, {r1, ip}
	mov	r1, #256
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L275
	b	.L274
.L318:
	cmp	r2, #100
	moveq	r2, #0
	streq	r2, [r1]
	b	.L267
.L312:
	ldr	r0, [r4]
	sub	r0, r0, r2
	cmp	r0, #80
	ble	.L252
	add	r2, r2, #1
	cmp	r2, #0
	str	r2, [r1]
	ble	.L253
	b	.L251
.L317:
	ldr	r2, .L321+84
	ldr	r1, [r2, #44]
	cmp	r1, #0
	movne	r1, #0
	strne	r1, [r2, #44]
	b	.L263
.L252:
	cmp	r2, #0
	ble	.L253
.L286:
	sub	r2, r2, #1
	str	r2, [r1]
	b	.L253
.L316:
	ldr	r0, [r4, #32]
	cmp	r0, #0
	moveq	r0, #5
	movne	r0, #6
	b	.L262
.L315:
	ldr	r7, .L321+20
	ldr	r1, [r4, #20]
	ldr	r0, [r7]
	ldr	r3, [r4, #16]
	ldr	r9, .L321+76
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	ldr	r2, [r4, #4]
	str	r1, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r3, [r4]
	ldr	r0, [r9]
	ldr	r8, .L321+80
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	ldrne	r2, [r4]
	ldr	r3, [r7]
	addne	r2, r2, r3
	strne	r2, [r4]
	cmp	r3, #10
	beq	.L259
.L314:
	ldr	r3, [r6]
	b	.L256
.L320:
	bl	updateKey.part.0
	b	.L276
.L259:
	mov	ip, #5
	mov	r1, #0
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r1, #256
	ldr	r0, [r9]
	str	ip, [sp, #12]
	ldr	r3, [r4]
	ldr	r2, [r4, #4]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L314
	ldr	r3, [r7]
	ldr	r2, [r4]
	add	r3, r3, r3, lsr #31
	add	r2, r2, r3, asr #1
	str	r2, [r4]
	ldr	r3, [r6]
	b	.L256
.L322:
	.align	2
.L321:
	.word	vOff
	.word	frame
	.word	guy
	.word	jumping
	.word	jumpFrame
	.word	gravity
	.word	climbing
	.word	down
	.word	downFrame
	.word	powerUp
	.word	hammerFrame
	.word	jumpBoosted
	.word	bootsFrame
	.word	boots
	.word	floating
	.word	bubbleFrame
	.word	bubble
	.word	life
	.word	heart
	.word	.LANCHOR0
	.word	collisionCheck
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
	ldr	r2, .L327
	ldr	r1, .L327+4
	ldr	ip, .L327+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L327+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #2]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L328:
	.align	2
.L327:
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
	ldr	r1, .L333
	ldr	r3, .L333+4
	ldr	r0, .L333+8
	str	lr, [sp, #-4]!
	ldr	ip, [r0]
	ldr	lr, [r3]
	ldr	r2, [r1]
	ldr	r3, [r1, #4]
	ldr	r1, [r1, #16]
	ldr	r0, .L333+12
	cmp	r1, #0
	sub	r2, r2, lr
	sub	r3, r3, ip
	orr	r2, r2, r0
	orr	r3, r3, r0
	movne	r0, #8
	moveq	r0, #26
	ldr	r1, .L333+16
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r0, [r1, #124]	@ movhi
	strh	r2, [r1, #120]	@ movhi
	strh	r3, [r1, #122]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L334:
	.align	2
.L333:
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
	ldr	r1, .L338
	ldr	r2, .L338+4
	ldr	r0, .L338+8
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
	ldr	r1, .L338+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #132]	@ movhi
	strh	r2, [r1, #128]	@ movhi
	strh	r3, [r1, #130]	@ movhi
	bx	lr
.L339:
	.align	2
.L338:
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
	ldr	r1, .L343
	ldr	r2, .L343+4
	ldr	r0, .L343+8
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
	ldr	r1, .L343+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #140]	@ movhi
	strh	r2, [r1, #136]	@ movhi
	strh	r3, [r1, #138]	@ movhi
	bx	lr
.L344:
	.align	2
.L343:
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
	ldr	r1, .L348
	ldr	r2, .L348+4
	ldr	r0, .L348+8
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
	ldr	r1, .L348+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #148]	@ movhi
	strh	r2, [r1, #144]	@ movhi
	strh	r3, [r1, #146]	@ movhi
	bx	lr
.L349:
	.align	2
.L348:
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
	ldr	r1, .L353
	ldr	r2, .L353+4
	ldr	r0, .L353+8
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
	ldr	r1, .L353+12
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r0, [r1, #156]	@ movhi
	strh	r2, [r1, #152]	@ movhi
	strh	r3, [r1, #154]	@ movhi
	bx	lr
.L354:
	.align	2
.L353:
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
	ldr	r2, .L357
	ldr	r1, .L357+4
	ldr	ip, .L357+8
	str	lr, [sp, #-4]!
	ldr	r3, [r2, #4]
	ldr	lr, [r1]
	ldr	ip, [ip]
	ldr	r1, [r2]
	sub	r3, r3, lr
	ldr	r2, .L357+12
	orr	r3, r3, #16384
	sub	r1, r1, ip
	strh	r3, [r2, #18]	@ movhi
	strh	r1, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L358:
	.align	2
.L357:
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
	ldr	r0, .L361
	ldr	r2, .L361+4
	ldr	r1, [r0, #4]
	ldrh	ip, [r2]
	ldr	r3, .L361+8
	ldr	r2, [r0, #60]
	ldrh	r4, [r3]
	sub	r1, r1, ip
	sub	r2, r2, ip
	ldr	ip, [r0]
	ldr	r0, [r0, #56]
	ldr	r3, .L361+12
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
.L362:
	.align	2
.L361:
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
	ldr	r2, .L369
	ldr	r1, .L369+4
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r0, .L369+8
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
	ldr	r0, .L369+12
	ldr	r2, .L369+16
	lsr	r1, r1, #16
	lsr	ip, ip, #16
.L366:
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
	bne	.L366
	pop	{r4, r5, lr}
	bx	lr
.L370:
	.align	2
.L369:
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
	ldr	r2, .L373
	ldr	r6, .L373+4
	ldr	r5, .L373+8
	ldr	ip, [r6]
	ldr	r3, [r2, #4]
	ldr	r0, [r5]
	ldr	r2, [r2]
	ldr	r4, .L373+12
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
	ldr	r2, .L373+16
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
	ldr	r1, .L373+20
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
	ldr	r0, .L373+24
	mov	lr, pc
	bx	r0
	mov	r1, r4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r4, .L373+28
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
.L374:
	.align	2
.L373:
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
