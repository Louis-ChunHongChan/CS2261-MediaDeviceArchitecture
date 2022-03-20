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
	.file	"main.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Press SELECT To Play\000"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L4
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L4+8
	ldr	r0, .L4+12
	ldr	ip, .L4+16
	str	r3, [r2]
	str	r3, [r0]
	ldr	r4, .L4+20
	mov	r1, r3
	mov	r0, #57
	ldr	r2, .L4+24
	str	r3, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	24319
	.word	fillScreen
	.word	state
	.word	seed
	.word	lost
	.word	drawString
	.word	.LC0
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L7
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L12:
	.align	2
.L11:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r2, .L20
	ldr	r4, .L20+4
	ldrh	r2, [r2]
	ldr	r3, [r4]
	tst	r2, #4
	add	r3, r3, #1
	str	r3, [r4]
	beq	.L13
	ldr	r3, .L20+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L19
.L13:
	pop	{r4, lr}
	bx	lr
.L19:
	mov	r0, #31744
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L20+16
	ldr	r0, [r4]
	ldr	r3, .L20+20
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	oldButtons
	.word	seed
	.word	buttons
	.word	fillScreen
	.word	state
	.word	srand
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L24
	mov	r0, #31744
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L24+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"PAUSED\000"
	.text
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	ip, .L28+4
	ldr	r4, .L28+8
	mov	r1, #0
	mov	r0, #99
	ldr	r3, .L28+12
	ldr	r2, .L28+16
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	fillScreen
	.word	state
	.word	drawString
	.word	32767
	.word	.LC1
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L42
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L31
	ldr	r2, .L42+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L40
.L31:
	tst	r3, #8
	beq	.L30
	ldr	r3, .L42+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L41
.L30:
	pop	{r4, lr}
	bx	lr
.L41:
	pop	{r4, lr}
	b	goToStart
.L40:
	ldr	r3, .L42+8
	mov	r0, #31744
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L42+12
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L31
.L43:
	.align	2
.L42:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	state
	.size	pause, .-pause
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"You Cleared All The Water Mines!\000"
	.text
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #3
	push	{r4, lr}
	ldr	r2, .L46
	ldr	r0, .L46+4
	ldr	r3, .L46+8
	str	r1, [r2]
	ldr	r4, .L46+12
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r0, #24
	ldr	r3, .L46+16
	ldr	r2, .L46+20
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	state
	.word	18367
	.word	fillScreen
	.word	drawString
	.word	31775
	.word	.LC2
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L50
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	b	win.part.0
.L51:
	.align	2
.L50:
	.word	oldButtons
	.size	win, .-win
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"You Died\000"
	.text
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #4
	push	{r4, lr}
	ldr	r2, .L54
	ldr	r0, .L54+4
	ldr	r3, .L54+8
	str	r1, [r2]
	ldr	r4, .L54+12
	mov	lr, pc
	bx	r3
	mov	r3, #31
	mov	r1, #0
	mov	r0, #96
	ldr	r2, .L54+16
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	state
	.word	32767
	.word	fillScreen
	.word	drawString
	.word	.LC3
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L57
	ldr	r3, .L67+16
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L64
.L57:
	ldr	r3, .L67+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L65
.L58:
	ldr	r3, .L67+24
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L66
	pop	{r4, lr}
	bx	lr
.L66:
	pop	{r4, lr}
	b	goToLose
.L65:
	bl	goToWin
	b	.L58
.L64:
	bl	goToPause
	b	.L57
.L68:
	.align	2
.L67:
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	bombRemaining
	.word	lost
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	ldr	r2, .L83
	ldr	r6, .L83+4
	ldr	r10, .L83+8
	push	{r4, r7, fp, lr}
	strh	r2, [r3]	@ movhi
	ldr	r3, .L83+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L83+16
	ldr	r2, [r6]
	ldrh	r0, [r10]
	ldr	r9, .L83+20
	ldr	r8, .L83+24
	ldr	r7, .L83+28
	ldr	fp, .L83+32
	ldr	r4, .L83+36
.L71:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r10]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L79
.L73:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L72
.L72:
	tst	r0, #4
	beq	.L79
	ldr	r3, .L83+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L74:
	tst	r0, #4
	beq	.L79
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L75:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L76:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L77:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r10]
	b	.L71
.L79:
	mov	r0, r3
	b	.L71
.L84:
	.align	2
.L83:
	.word	1027
	.word	state
	.word	buttons
	.word	goToStart
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win.part.0
	.word	67109120
	.word	lose.part.0
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
