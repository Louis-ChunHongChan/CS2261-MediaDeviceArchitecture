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
	.align	2
	.global	initialize
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r6, #3
	mov	r5, #67108864
	mov	r3, #4608
	mov	r2, #7936
	ldr	r1, .L4
	str	r4, [r1]
	ldr	r1, .L4+4
	ldr	ip, .L4+8
	str	r6, [r1]
	ldr	r0, .L4+12
	ldr	r1, .L4+16
	ldr	lr, .L4+20
	str	r4, [ip]
	str	r4, [r0]
	ldr	ip, .L4+24
	ldrh	r0, [r1, #48]
	ldr	r1, .L4+28
	str	r4, [lr]
	strh	r4, [ip]	@ movhi
	strh	r0, [r1]	@ movhi
	ldr	r7, .L4+32
	strh	r3, [r5]	@ movhi
	mov	r0, r6
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+36
	mov	lr, pc
	bx	r7
	mov	r0, r6
	mov	r2, #100663296
	ldr	r3, .L4+40
	ldr	r1, .L4+44
	mov	lr, pc
	bx	r7
	mov	r0, r6
	mov	r3, #1024
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	mov	lr, pc
	bx	r7
	strh	r4, [r5, #22]	@ movhi
	ldr	r3, .L4+56
	strh	r4, [r5, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+60
	str	r4, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	nextLevel
	.word	life
	.word	score
	.word	.LANCHOR0
	.word	67109120
	.word	rescued
	.word	oldButtons
	.word	buttons
	.word	DMANow
	.word	titlePal
	.word	4304
	.word	titleTiles
	.word	100726784
	.word	titleMap
	.word	waitForVBlank
	.word	state
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
	ldr	r3, .L8
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	initialize
.L9:
	.align	2
.L8:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	initialize2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize2, %function
initialize2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r1, #4608
	mov	r4, #0
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L12
	ldr	r0, .L12+4
	ldrh	ip, [r3, #48]
	ldr	r3, .L12+8
	strh	ip, [r0]	@ movhi
	strh	r4, [r3]	@ movhi
	ldr	r7, .L12+12
	strh	r1, [r5]	@ movhi
	ldr	r3, .L12+16
	strh	r2, [r5, #10]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L12+20
	mov	lr, pc
	bx	r7
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L12+24
	mov	lr, pc
	bx	r6
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L12+28
	mov	lr, pc
	bx	r6
	mov	r3, #3216
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L12+36
	ldr	r1, .L12+40
	mov	lr, pc
	bx	r6
	mov	r2, #1
	ldr	r3, .L12+44
	strh	r4, [r5, #22]	@ movhi
	strh	r4, [r5, #20]	@ movhi
	str	r2, [r3]
	mov	lr, pc
	bx	r7
	ldr	r3, .L12+48
	str	r4, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	waitForVBlank
	.word	hideSprites
	.word	DMANow
	.word	shadowOAM
	.word	level2Pal
	.word	level2Tiles
	.word	100726784
	.word	level2Map
	.word	.LANCHOR0
	.word	state
	.size	initialize2, .-initialize2
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L16+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	state
	.size	goToStart, .-goToStart
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
	ldr	r3, .L22
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+4
	ldr	r3, [r3]
	cmp	r3, #0
	mov	r2, #83886080
	mov	r3, #256
	bne	.L19
	mov	r0, #3
	ldr	r1, .L22+8
	ldr	r4, .L22+12
	mov	lr, pc
	bx	r4
	mov	r3, #336
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L22+20
	ldr	r1, .L22+24
	mov	lr, pc
	bx	r4
.L20:
	mov	r2, #1
	ldr	r3, .L22+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L19:
	ldr	r4, .L22+12
	mov	r0, #3
	ldr	r1, .L22+32
	mov	lr, pc
	bx	r4
	mov	r3, #336
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+36
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L22+20
	ldr	r1, .L22+40
	mov	lr, pc
	bx	r4
	b	.L20
.L23:
	.align	2
.L22:
	.word	waitForVBlank
	.word	nextLevel
	.word	gameBgPal
	.word	DMANow
	.word	gameBgTiles
	.word	100726784
	.word	gameBgMap
	.word	state
	.word	gameBg2Pal
	.word	gameBg2Tiles
	.word	gameBg2Map
	.size	goToGame, .-goToGame
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
	ldr	r3, .L32
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L24
	ldr	r3, .L32+8
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L24
	ldr	r3, .L32+12
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r3, .L32+16
	ldrne	r3, .L32+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L24:
	pop	{r4, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	nextLevel
	.word	initGame
	.word	initGame2
	.size	start, .-start
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
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L36+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L36+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r4
	mov	r3, #832
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L36+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L36+24
	ldr	r1, .L36+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #2
	ldr	r1, .L36+32
	strh	r2, [r3, #22]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	str	r0, [r1]
	bx	lr
.L37:
	.align	2
.L36:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	pausePal
	.word	pauseTiles
	.word	100726784
	.word	pauseMap
	.word	state
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
	@ link register save eliminated.
	ldr	r3, .L43
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L43+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L44:
	.align	2
.L43:
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
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
	push	{r4, lr}
	ldr	r3, .L47
	mov	lr, pc
	bx	r3
	ldr	r3, .L47+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L47+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L47+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L47+16
	mov	lr, pc
	bx	r4
	mov	r3, #4864
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L47+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L47+24
	ldr	r1, .L47+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #3
	ldr	r1, .L47+32
	strh	r2, [r3, #22]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	str	r0, [r1]
	bx	lr
.L48:
	.align	2
.L47:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	winPal
	.word	winTiles
	.word	100726784
	.word	winMap
	.word	state
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
	ldr	r3, .L51
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L52:
	.align	2
.L51:
	.word	oldButtons
	.size	win, .-win
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
	push	{r4, lr}
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	ldr	r3, .L55+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L55+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L55+12
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L55+16
	mov	lr, pc
	bx	r4
	mov	r3, #1232
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L55+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L55+24
	ldr	r1, .L55+28
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r2, #0
	mov	r0, #4
	ldr	r1, .L55+32
	strh	r2, [r3, #22]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	str	r0, [r1]
	bx	lr
.L56:
	.align	2
.L55:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	losePal
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	state
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
	ldr	r3, .L73
	ldr	r3, [r3]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L69
	ldr	r3, .L73+4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L70
	ldr	r3, .L73+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+12
	mov	lr, pc
	bx	r3
.L59:
	ldr	r3, .L73+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L61
	ldr	r3, .L73+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L71
.L61:
	ldr	r3, .L73+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L72
.L62:
	ldr	r3, .L73+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L63
	ldr	r3, .L73+32
	ldr	r3, [r3]
	cmp	r3, #98
	bgt	.L63
	pop	{r4, lr}
	bx	lr
.L70:
	bl	initialize2
	b	.L59
.L63:
	pop	{r4, lr}
	b	goToWin
.L69:
	ldr	r3, .L73+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+12
	mov	lr, pc
	bx	r3
	b	.L59
.L72:
	bl	goToLose
	b	.L62
.L71:
	bl	goToPause
	b	.L61
.L74:
	.align	2
.L73:
	.word	nextLevel
	.word	.LANCHOR0
	.word	updateGame2
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	life
	.word	rescued
	.word	score
	.word	updateGame
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
	push	{r4, r7, fp, lr}
	ldr	r6, .L92
	ldr	fp, .L92+4
	ldr	r3, .L92+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L92+12
	ldr	r2, [r6]
	ldrh	r0, [fp]
	ldr	r8, .L92+16
	ldr	r7, .L92+20
	ldr	r10, .L92+24
	ldr	r9, .L92+28
	ldr	r4, .L92+32
.L77:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L85
.L79:
	.word	.L83
	.word	.L82
	.word	.L81
	.word	.L80
	.word	.L78
.L78:
	tst	r0, #8
	beq	.L85
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L77
.L80:
	tst	r0, #8
	beq	.L85
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L77
.L81:
	tst	r0, #8
	beq	.L85
	tst	r3, #8
	beq	.L91
.L85:
	mov	r0, r3
	b	.L77
.L83:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L77
.L82:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L77
.L91:
	ldr	r3, .L92+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [fp]
	b	.L77
.L93:
	.align	2
.L92:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	win.part.0
	.word	lose.part.0
	.word	67109120
	.word	goToGame
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
	.comm	buffer2,41,4
	.comm	buffer,41,4
	.comm	shadowOAM,1024,4
	.global	initialized2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	initialized2, %object
	.size	initialized2, 4
initialized2:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
