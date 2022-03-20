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
	.global	drawDiscoBall
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDiscoBall, %function
drawDiscoBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r6, r1, #0
	ble	.L6
	rsb	r1, r6, r6, lsl #4
	add	ip, r0, #50331648
	add	ip, ip, r1, lsl #4
	ldr	lr, .L18
	lsl	r1, r0, #1
	lsl	ip, ip, #1
	add	r1, r1, #100663296
.L5:
	strh	lr, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, ip
	bne	.L5
.L6:
	add	ip, r2, r2, lsr #31
	asr	ip, ip, #1
	sub	r5, r0, ip
	cmp	r2, #0
	rsb	r7, ip, #0
	lsr	r9, r2, #31
	sub	ip, r6, ip
	addle	lr, r5, #50331648
	ble	.L3
	mov	r4, r5
	add	r1, ip, r2
	rsb	r1, r1, r1, lsl #4
	add	lr, r5, #50331648
	add	r0, lr, r1, lsl #4
	sub	r8, r2, r2, lsl #4
	lsl	r0, r0, #1
	lsl	r8, r8, #5
	add	r10, r5, r2
.L4:
	add	r1, r0, r8
.L7:
	strh	r3, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r0, r1
	bne	.L7
	add	r4, r4, #1
	cmp	r4, r10
	add	r0, r0, #2
	bne	.L4
.L3:
	mov	r1, #0
	add	r2, r9, r2
	add	r6, r6, r2, asr #1
	rsb	r3, ip, ip, lsl #4
	rsb	r6, r6, r6, lsl #4
	add	r5, r5, r3, lsl #4
	lsl	r4, r6, #4
	add	ip, lr, #3
	add	ip, ip, r3, lsl #4
	lsl	lr, r5, #1
	sub	r3, r4, r3, lsl #4
	rsb	r5, r7, r2, asr #1
	add	lr, lr, #100663296
	lsl	r5, r5, #1
	lsl	r0, r3, #1
	lsl	ip, ip, #1
	sub	r6, r4, #720
.L8:
	mov	r3, lr
	add	r2, r5, lr
.L9:
	strh	r1, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r1, [r0, r3]	@ movhi
	add	r3, r3, #2
	cmp	ip, r3
	strh	r1, [r0, r2]	@ movhi
	sub	r2, r2, #2
	bne	.L9
	sub	r4, r4, #240
	add	ip, ip, #476
	cmp	r6, r4
	add	ip, ip, #2
	add	lr, lr, #480
	sub	r0, r0, #960
	bne	.L8
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	25930
	.size	drawDiscoBall, .-drawDiscoBall
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpgt
	.align	2
	.global	drawFrame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame1, %function
drawFrame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L60+8
	ldr	ip, [ip]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	ip, #0
	add	lr, ip, #3
	movlt	ip, lr
	mov	r4, r0
	mov	lr, r1
	mov	r5, r2
	sub	sp, sp, #52
	str	r2, [sp, #4]
	ldr	r2, .L60+12
	ldr	r0, [r2]
	add	r0, r0, r0, lsr #31
	mov	r2, #17
	asr	r1, ip, #2
	asr	r0, r0, #1
	str	r4, [sp, #40]
	mov	r10, r4
	mov	r9, lr
	mov	r4, r3
	str	lr, [sp, #44]
	bl	drawDiscoBall
	cmp	r5, #0
	ldr	r8, .L60+16
	ble	.L21
	mov	r0, r5
	mov	lr, pc
	bx	r8
	mov	r6, r0
	mov	r7, r1
	ldr	ip, .L60+20
	str	r6, [sp, #24]
	str	r7, [sp, #28]
	ldr	r3, .L60+24
	mov	r2, #0
	str	ip, [sp, #32]
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	add	fp, r5, r5, lsr #31
	asr	fp, fp, #1
	rsb	fp, fp, #0
	add	r3, r9, fp
	rsb	r3, r3, r3, lsl #4
	lsl	r3, r3, #5
	add	r3, r3, #100663296
	add	fp, r10, fp
	sub	r3, r3, #2400
	str	r3, [sp, #20]
	add	r3, r5, fp
	str	r3, [sp, #8]
	lsr	r3, r5, #31
	str	r3, [sp, #36]
	ldr	r3, .L60+28
	ldr	r10, .L60+32
	str	r3, [sp, #16]
.L22:
	mov	r2, #0
	mov	r3, #0
	mov	r0, r6
	mov	r1, r7
	ldr	ip, [sp, #16]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L26
	mov	r9, #0
	ldr	r3, [sp, #20]
	add	r5, r3, fp, lsl #1
.L23:
	add	r9, r9, #1
	strh	r4, [r5]	@ movhi
	mov	r0, r9
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r5, r5, #480
	bne	.L23
.L26:
	ldr	r3, [sp, #8]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L22
.L24:
	add	r10, sp, #24
	ldmia	r10, {r9-r10}
	adr	r3, .L60
	ldmia	r3, {r2-r3}
	ldr	ip, [sp, #32]
	mov	r0, r9
	mov	r1, r10
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	ldr	r3, [sp, #36]
	ldr	fp, [sp, #4]
	add	ip, r3, fp
	str	r6, [sp, #8]
	str	r7, [sp, #12]
	asr	r6, ip, #1
	mov	r2, r9
	mov	r3, r10
	str	r6, [sp, #20]
	ldr	ip, [sp, #16]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L27
	mov	r3, fp
	ldr	r5, .L60+36
	smull	r2, r3, r5, r3
	mov	r5, r3
	ldr	r3, [sp, #44]
	mov	r2, r6
	sub	r6, r3, r6
	mov	r3, fp
	mov	r9, r3
	ldr	r1, [sp, #40]
	add	r6, r6, fp
	rsb	r6, r6, r6, lsl #4
	lsl	r7, r6, #5
	sub	fp, r1, r2
	add	r7, r7, r1, lsl #1
	lsl	fp, fp, #1
	ldr	r10, .L60+32
	lsl	r7, r7, #1
	lsl	r6, r6, #4
	sub	r5, r5, r3, asr #31
	add	fp, fp, #100663296
.L29:
	ldr	r3, [sp, #4]
	cmp	r3, #2
	movgt	r2, #0
	addgt	r3, fp, r6, lsl #1
	addgt	r0, r7, #201326592
	ble	.L33
.L30:
	add	r2, r2, #1
	sub	r1, r0, r3
	cmp	r2, r5
	strh	r4, [r3]	@ movhi
	strh	r4, [r1]	@ movhi
	add	r3, r3, #2
	blt	.L30
.L33:
	add	r9, r9, #1
	mov	r0, r9
	mov	lr, pc
	bx	r8
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r6, r6, #240
	add	r7, r7, #960
	bne	.L29
.L27:
	ldr	r3, [sp, #4]
	cmp	r3, #1
	ble	.L41
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #4]
	ldr	ip, [sp, #44]
	add	r2, r3, r2
	ldr	lr, [sp, #20]
	sub	r2, ip, r2, asr #1
	ldr	ip, [sp, #40]
	ldr	r3, .L60+40
	add	ip, ip, lr
	add	r3, ip, r3
	mov	r0, #0
	mvn	r1, #32768
	mov	ip, lr
	rsb	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #4
	lsl	r2, r3, #1
.L40:
	sub	r3, r2, #5760
.L39:
	cmp	r4, #0
	strheq	r4, [r3]	@ movhi
	strhne	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L39
	add	r0, r0, #1
	cmp	r0, ip
	add	r2, r2, #2
	blt	.L40
.L41:
	mov	r2, #0
	ldr	r3, .L60+44
	ldr	ip, [sp, #32]
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	mov	r2, #0
	str	r6, [sp, #8]
	str	r7, [sp, #12]
	ldr	r3, .L60+48
	ldr	ip, [sp, #16]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L20
	ldr	ip, [sp, #32]
	mov	r2, #0
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	ldr	r3, .L60+52
	mov	lr, pc
	bx	ip
	mov	fp, #10
	mov	r6, r0
	mov	r7, r1
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	add	r3, r3, r2
	ldr	r2, [sp, #44]
	ldr	ip, [sp, #40]
	sub	r2, r2, r3, asr #1
	sub	ip, ip, r3, asr #1
	rsb	r3, r2, r2, lsl #4
	str	r2, [sp, #32]
	lsl	r3, r3, #4
	lsl	r2, ip, #1
	add	r3, r3, #2400
	add	r2, r2, #100663296
	str	r3, [sp, #4]
	sub	r3, r2, #4
	str	ip, [sp, #24]
	str	r3, [sp, #20]
	ldr	r10, .L60+32
.L42:
	mov	r2, #0
	mov	r0, r6
	mov	r1, r7
	ldr	r3, .L60+56
	ldr	ip, [sp, #16]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L47
	mov	r5, #1
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #4]
	add	r9, r3, r2, lsl r5
.L43:
	add	r5, r5, #1
	mov	r0, r5
	strh	r4, [r9], #-2	@ movhi
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L43
.L47:
	add	fp, fp, #1
	mov	r0, fp
	mov	lr, pc
	bx	r8
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r10
	ldr	r3, [sp, #4]
	cmp	r0, #0
	add	r3, r3, #240
	str	r3, [sp, #4]
	bne	.L42
	mov	r5, #10
	mov	r4, r0
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #24]
	add	r6, r3, r5
	rsb	r3, r6, r6, lsl #4
	sub	r6, r2, #1
	add	r6, r6, r3, lsl #4
	mov	r7, r8
	lsl	r6, r6, #1
	add	r9, sp, #8
	ldmia	r9, {r8-r9}
	add	r6, r6, #100663296
.L48:
	add	r5, r5, #1
	strh	r4, [r6]	@ movhi
	mov	r0, r5
	mov	lr, pc
	bx	r7
	mov	r2, r8
	mov	r3, r9
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r6, r6, #480
	bne	.L48
.L20:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L21:
	ldr	r5, [sp, #4]
	mov	r0, r5
	mov	lr, pc
	bx	r8
	ldr	r3, .L60+20
	str	r3, [sp, #32]
	ldr	r3, .L60+28
	str	r3, [sp, #16]
	lsr	r3, r5, #31
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	str	r3, [sp, #36]
	b	.L24
.L61:
	.align	3
.L60:
	.word	1717986918
	.word	1073899110
	.word	screenHeight
	.word	screenWidth
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	1073217536
	.word	__aeabi_dcmpgt
	.word	__aeabi_dcmplt
	.word	1431655766
	.word	50334529
	.word	1072955392
	.word	1076101120
	.word	1072168960
	.word	1072693248
	.size	drawFrame1, .-drawFrame1
	.global	__aeabi_dadd
	.align	2
	.global	drawFrame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame2, %function
drawFrame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L103+8
	ldr	ip, [ip]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	ip, #0
	add	lr, ip, #3
	movlt	ip, lr
	mov	r5, r2
	mov	lr, r1
	sub	sp, sp, #68
	str	r2, [sp, #32]
	ldr	r2, .L103+12
	str	r0, [sp]
	ldr	r0, [r2]
	ldr	r9, [sp]
	add	r0, r0, r0, lsr #31
	mov	r2, #17
	asr	r1, ip, #2
	asr	r0, r0, #1
	mov	r10, lr
	mov	r4, r3
	str	lr, [sp, #44]
	str	r9, [sp, #40]
	bl	drawDiscoBall
	cmp	r5, #0
	ldr	r8, .L103+16
	ble	.L63
	mov	r0, r5
	mov	lr, pc
	bx	r8
	mov	r6, r0
	mov	r7, r1
	ldr	ip, .L103+52
	str	r6, [sp, #24]
	str	r7, [sp, #28]
	ldr	r6, .L103+56
	mov	r2, #0
	str	ip, [sp, #56]
	ldr	r3, .L103+20
	str	r6, [sp, #60]
	mov	lr, pc
	bx	ip
	ldr	r3, .L103+24
	mov	r2, #0
	mov	lr, pc
	bx	r6
	mov	r6, r0
	mov	r7, r1
	add	fp, r5, r5, lsr #31
	asr	fp, fp, #1
	rsb	fp, fp, #0
	add	r3, r10, fp
	rsb	r3, r3, r3, lsl #4
	lsl	r3, r3, #5
	add	r3, r3, #100663296
	add	fp, r9, fp
	add	r3, r3, #1440
	str	r3, [sp, #16]
	add	r3, r5, fp
	str	r3, [sp]
	lsr	r3, r5, #31
	str	r3, [sp, #36]
	ldr	r3, .L103+60
	ldr	r9, .L103+64
	str	r3, [sp, #12]
.L64:
	mov	r2, #0
	mov	r3, #0
	mov	r0, r6
	mov	r1, r7
	ldr	ip, [sp, #12]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L68
	mov	r10, #0
	ldr	r3, [sp, #16]
	add	r5, r3, fp, lsl #1
.L65:
	add	r10, r10, #1
	strh	r4, [r5]	@ movhi
	mov	r0, r10
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	add	r5, r5, #480
	bne	.L65
.L68:
	ldr	r3, [sp]
	add	fp, fp, #1
	cmp	r3, fp
	bne	.L64
.L66:
	adr	r3, .L103
	ldmia	r3, {r2-r3}
	ldr	ip, [sp, #56]
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	r5, r0
	mov	r6, r1
	ldr	r7, [sp, #32]
	ldr	r3, [sp, #36]
	add	r10, r7, #8
	mov	r0, r10
	add	fp, r3, r7
	stm	sp, {r5-r6}
	mov	lr, pc
	bx	r8
	mov	r2, r5
	mov	r3, r6
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	asr	fp, fp, #1
	beq	.L69
	mov	r3, r7
	mov	r0, r7
	ldr	r5, .L103+28
	smull	r2, r3, r5, r3
	ldr	r1, [sp, #44]
	mov	r5, r3
	ldr	r3, [sp, #40]
	sub	r1, r1, fp
	sub	r2, r3, fp
	str	fp, [sp, #16]
	add	r3, fp, r3
	mov	fp, r0
	add	r1, r1, r7
	add	r3, r3, r2
	rsb	r1, r1, r1, lsl #4
	add	r3, r3, #6208
	add	r6, r2, #3120
	add	r3, r3, #32
	add	r6, r6, r1, lsl #4
	add	r3, r3, r1, lsl #5
	lsl	r6, r6, #1
	lsl	r7, r3, #1
	add	r6, r6, #100663296
	sub	r5, r5, r0, asr #31
.L71:
	cmp	fp, #2
	movgt	r3, r6
	movgt	r2, #0
	addgt	r0, r7, #201326592
	ble	.L74
.L72:
	add	r2, r2, #1
	sub	r1, r0, r3
	cmp	r2, r5
	strh	r4, [r3]	@ movhi
	strh	r4, [r1]	@ movhi
	add	r3, r3, #2
	blt	.L72
.L74:
	add	r10, r10, #1
	mov	r0, r10
	mov	lr, pc
	bx	r8
	ldmia	sp, {r2-r3}
	mov	lr, pc
	bx	r9
	add	r6, r6, #480
	cmp	r0, #0
	add	r6, r6, #2
	add	r7, r7, #960
	bne	.L71
	ldr	fp, [sp, #16]
.L69:
	ldr	r3, [sp, #32]
	cmp	r3, #1
	ble	.L82
	mov	r0, #0
	mvn	r1, #32768
	add	r2, sp, #32
	ldm	r2, {r2, r3}
	ldr	ip, [sp, #44]
	add	r2, r3, r2
	sub	r2, ip, r2, asr #1
	ldr	ip, [sp, #40]
	ldr	r3, .L103+32
	add	ip, ip, fp
	rsb	r2, r2, r2, lsl #4
	add	r3, ip, r3
	add	r3, r3, r2, lsl #4
	lsl	r2, r3, #1
.L81:
	sub	r3, r2, #5760
.L80:
	cmp	r4, #0
	strheq	r4, [r3]	@ movhi
	strhne	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L80
	add	r0, r0, #1
	cmp	r0, fp
	add	r2, r2, #2
	blt	.L81
.L82:
	mov	r2, #0
	ldr	r3, .L103+36
	ldr	ip, [sp, #56]
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	mov	r2, #0
	str	r6, [sp, #48]
	str	r7, [sp, #52]
	ldr	r3, .L103+24
	ldr	ip, [sp, #60]
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	mov	r2, #0
	str	r6, [sp, #16]
	str	r7, [sp, #20]
	ldr	r3, .L103+40
	ldr	ip, [sp, #12]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L77
	mov	r2, #0
	add	r1, sp, #24
	ldmia	r1, {r0-r1}
	ldr	r3, .L103+44
	ldr	ip, [sp, #56]
	mov	lr, pc
	bx	ip
	mov	fp, #10
	mov	r6, r0
	mov	r7, r1
	add	r2, sp, #32
	ldm	r2, {r2, r3}
	add	r3, r3, r2
	ldr	ip, [sp, #40]
	ldr	r2, [sp, #44]
	asr	r3, r3, #1
	rsb	r3, r3, #0
	add	r2, r2, r3
	add	r3, ip, r3
	rsb	r2, r2, r2, lsl #4
	lsl	r3, r3, #1
	lsl	r2, r2, #4
	add	r3, r3, #100663296
	add	r2, r2, #3120
	sub	r3, r3, #4
	str	r2, [sp]
	str	r3, [sp, #24]
.L83:
	mov	r2, #0
	mov	r0, r6
	mov	r1, r7
	ldr	r3, .L103+48
	ldr	ip, [sp, #12]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L87
	mov	r5, #1
	ldr	r3, [sp, #24]
	ldr	r2, [sp]
	add	r10, r3, r2, lsl r5
.L84:
	add	r5, r5, #1
	mov	r0, r5
	strh	r4, [r10], #-2	@ movhi
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L84
.L87:
	add	fp, fp, #1
	mov	r0, fp
	mov	lr, pc
	bx	r8
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r9
	ldr	r3, [sp]
	cmp	r0, #0
	add	r3, r3, #240
	str	r3, [sp]
	bne	.L83
.L77:
	add	fp, sp, #48
	ldmia	fp, {r10-fp}
	mov	r2, #0
	mov	r0, r10
	mov	r1, fp
	ldr	r3, .L103+40
	ldr	ip, [sp, #12]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L62
	mov	r4, #10
	mov	r5, #0
	add	r2, sp, #32
	ldm	r2, {r2, r3}
	add	r3, r3, r2
	asr	r3, r3, #1
	ldr	r2, [sp, #44]
	rsb	r3, r3, #0
	add	r6, r3, r2
	ldr	r2, [sp, #40]
	add	r6, r6, r4
	add	r3, r3, r2
	rsb	r2, r6, r6, lsl #4
	sub	r6, r3, #1
	add	r6, r6, r2, lsl #4
	lsl	r6, r6, #1
	add	r6, r6, #100663296
.L89:
	add	r4, r4, #1
	strh	r5, [r6]	@ movhi
	mov	r0, r4
	mov	lr, pc
	bx	r8
	mov	r2, r10
	mov	r3, fp
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	add	r6, r6, #480
	bne	.L89
	b	.L104
.L105:
	.align	3
.L103:
	.word	1717986918
	.word	1073899110
	.word	screenHeight
	.word	screenWidth
	.word	__aeabi_i2d
	.word	1073217536
	.word	1074266112
	.word	1431655766
	.word	50336449
	.word	1072955392
	.word	1076101120
	.word	1072168960
	.word	1072693248
	.word	__aeabi_dmul
	.word	__aeabi_dadd
	.word	__aeabi_dcmpgt
	.word	__aeabi_dcmplt
.L104:
.L62:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L63:
	ldr	r5, [sp, #32]
	mov	r0, r5
	mov	lr, pc
	bx	r8
	ldr	r3, .L103+52
	str	r3, [sp, #56]
	ldr	r3, .L103+56
	str	r3, [sp, #60]
	ldr	r3, .L103+60
	str	r3, [sp, #12]
	lsr	r3, r5, #31
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	ldr	r9, .L103+64
	str	r3, [sp, #36]
	b	.L66
	.size	drawFrame2, .-drawFrame2
	.align	2
	.global	drawFrame3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame3, %function
drawFrame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L143
	ldr	ip, [ip]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	ip, #0
	add	lr, ip, #3
	movlt	ip, lr
	mov	r4, r0
	mov	lr, r1
	mov	r5, r2
	sub	sp, sp, #52
	str	r2, [sp, #20]
	ldr	r2, .L143+4
	ldr	r0, [r2]
	add	r0, r0, r0, lsr #31
	mov	r2, #17
	asr	r1, ip, #2
	asr	r0, r0, #1
	str	r4, [sp, #28]
	mov	r10, r4
	mov	r9, lr
	mov	r4, r3
	str	lr, [sp, #40]
	bl	drawDiscoBall
	cmp	r5, #0
	ldr	r8, .L143+8
	ble	.L107
	mov	r0, r5
	mov	lr, pc
	bx	r8
	mov	r6, r0
	mov	r7, r1
	ldr	ip, .L143+12
	str	r6, [sp, #32]
	str	r7, [sp, #36]
	ldr	r3, .L143+16
	mov	r2, #0
	str	ip, [sp, #44]
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	add	fp, r5, r5, lsr #31
	asr	fp, fp, #1
	rsb	fp, fp, #0
	add	r3, r9, fp
	rsb	r3, r3, r3, lsl #4
	lsl	r3, r3, #5
	add	r3, r3, #100663296
	add	fp, r10, fp
	sub	r3, r3, #2400
	str	r3, [sp, #8]
	add	r3, r5, fp
	str	r3, [sp, #4]
	lsr	r3, r5, #31
	str	r3, [sp, #24]
	ldr	r3, .L143+20
	ldr	r10, .L143+24
	str	r3, [sp, #16]
.L108:
	mov	r2, #0
	mov	r3, #0
	mov	r0, r6
	mov	r1, r7
	ldr	ip, [sp, #16]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L112
	mov	r9, #0
	ldr	r3, [sp, #8]
	add	r5, r3, fp, lsl #1
.L109:
	add	r9, r9, #1
	strh	r4, [r5]	@ movhi
	mov	r0, r9
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r5, r5, #480
	bne	.L109
.L112:
	ldr	r3, [sp, #4]
	add	fp, fp, #1
	cmp	fp, r3
	bne	.L108
.L110:
	ldr	r0, [sp, #20]
	ldr	r3, [sp, #24]
	cmp	r0, r0, lsl #1
	add	r7, r3, r0
	mov	r10, r0
	asr	r7, r7, #1
	lsl	r9, r0, #1
	bge	.L113
	mov	r3, r0
	ldr	ip, .L143+28
	smull	r2, r3, ip, r3
	mov	ip, r3
	mov	r6, #0
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #28]
	sub	r3, r3, r7
	sub	r1, r2, r7
	add	r5, r7, r2
	add	r3, r3, r0
	rsb	r3, r3, r3, lsl #4
	add	r2, r1, #1920
	add	r5, r5, r1
	add	lr, r2, r3, lsl #4
	add	r5, r5, #3840
	lsl	lr, lr, #1
	add	r5, r5, r3, lsl #5
	sub	r9, r9, r0
	add	lr, lr, #100663296
	lsl	r5, r5, #1
	sub	ip, ip, r0, asr #31
.L114:
	cmp	r10, #2
	movgt	r3, lr
	movgt	r2, #0
	addgt	r0, r5, #201326592
	ble	.L116
.L115:
	add	r2, r2, #1
	sub	r1, r0, r3
	cmp	r2, ip
	strh	r4, [r3]	@ movhi
	strh	r4, [r1]	@ movhi
	add	r3, r3, #2
	blt	.L115
.L116:
	add	r6, r6, #1
	add	lr, lr, #476
	cmp	r9, r6
	add	lr, lr, #2
	add	r5, r5, #960
	bne	.L114
.L113:
	ldr	r3, [sp, #20]
	cmp	r3, #1
	ble	.L124
	mov	r0, #0
	mvn	r1, #32768
	add	r2, sp, #20
	ldm	r2, {r2, r3}
	ldr	ip, [sp, #40]
	add	r2, r3, r2
	sub	r2, ip, r2, asr #1
	ldr	ip, [sp, #28]
	ldr	r3, .L143+32
	add	ip, ip, r7
	rsb	r2, r2, r2, lsl #4
	add	r3, ip, r3
	add	r3, r3, r2, lsl #4
	lsl	r2, r3, #1
.L123:
	sub	r3, r2, #5760
.L122:
	cmp	r4, #0
	strheq	r4, [r3]	@ movhi
	strhne	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L122
	add	r0, r0, #1
	cmp	r0, r7
	add	r2, r2, #2
	blt	.L123
.L124:
	mov	r2, #0
	ldr	r3, .L143+36
	ldr	ip, [sp, #44]
	add	r1, sp, #32
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	mov	r2, #0
	str	r6, [sp, #8]
	str	r7, [sp, #12]
	ldr	r3, .L143+40
	ldr	ip, [sp, #16]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L106
	mov	r2, #0
	ldr	r3, .L143+44
	ldr	ip, [sp, #44]
	add	r1, sp, #32
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	fp, #10
	mov	r6, r0
	mov	r7, r1
	add	r2, sp, #20
	ldm	r2, {r2, r3}
	add	r3, r3, r2
	ldr	r2, [sp, #40]
	ldr	ip, [sp, #28]
	sub	r2, r2, r3, asr #1
	sub	ip, ip, r3, asr #1
	rsb	r3, r2, r2, lsl #4
	str	r2, [sp, #40]
	lsl	r3, r3, #4
	lsl	r2, ip, #1
	add	r3, r3, #2400
	add	r2, r2, #100663296
	str	r3, [sp, #4]
	sub	r3, r2, #4
	str	ip, [sp, #24]
	str	r3, [sp, #20]
	ldr	r10, .L143+24
.L125:
	mov	r2, #0
	mov	r0, r6
	mov	r1, r7
	ldr	r3, .L143+48
	ldr	ip, [sp, #16]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L130
	mov	r5, #1
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #4]
	add	r9, r3, r2, lsl r5
.L126:
	add	r5, r5, #1
	mov	r0, r5
	strh	r4, [r9], #-2	@ movhi
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L126
.L130:
	add	fp, fp, #1
	mov	r0, fp
	mov	lr, pc
	bx	r8
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r10
	ldr	r3, [sp, #4]
	cmp	r0, #0
	add	r3, r3, #240
	str	r3, [sp, #4]
	bne	.L125
	mov	r5, #10
	mov	r4, r0
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #24]
	add	r6, r3, r5
	rsb	r3, r6, r6, lsl #4
	sub	r6, r2, #1
	add	r6, r6, r3, lsl #4
	mov	r7, r8
	lsl	r6, r6, #1
	add	r9, sp, #8
	ldmia	r9, {r8-r9}
	add	r6, r6, #100663296
.L131:
	add	r5, r5, #1
	strh	r4, [r6]	@ movhi
	mov	r0, r5
	mov	lr, pc
	bx	r7
	mov	r2, r8
	mov	r3, r9
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r6, r6, #480
	bne	.L131
.L106:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L107:
	ldr	r5, [sp, #20]
	mov	r0, r5
	mov	lr, pc
	bx	r8
	ldr	r3, .L143+12
	str	r3, [sp, #44]
	ldr	r3, .L143+20
	str	r3, [sp, #16]
	lsr	r3, r5, #31
	str	r0, [sp, #32]
	str	r1, [sp, #36]
	str	r3, [sp, #24]
	b	.L110
.L144:
	.align	2
.L143:
	.word	screenHeight
	.word	screenWidth
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	1073217536
	.word	__aeabi_dcmpgt
	.word	__aeabi_dcmplt
	.word	1431655766
	.word	50334529
	.word	1072955392
	.word	1076101120
	.word	1072168960
	.word	1072693248
	.size	drawFrame3, .-drawFrame3
	.align	2
	.global	drawFrame4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFrame4, %function
drawFrame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L184
	ldr	ip, [ip]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	ip, #0
	add	lr, ip, #3
	movlt	ip, lr
	mov	r4, r0
	mov	lr, r1
	mov	r5, r2
	sub	sp, sp, #60
	str	r2, [sp, #24]
	ldr	r2, .L184+4
	ldr	r0, [r2]
	add	r0, r0, r0, lsr #31
	mov	r2, #17
	asr	r1, ip, #2
	asr	r0, r0, #1
	str	r4, [sp, #28]
	str	lr, [sp, #40]
	mov	r4, r3
	bl	drawDiscoBall
	cmp	r5, #0
	ble	.L183
	ldr	r5, [sp, #24]
	ldr	r8, .L184+8
	mov	r0, r5
	mov	lr, pc
	bx	r8
	mov	r6, r0
	mov	r7, r1
	ldr	ip, .L184+12
	str	r6, [sp, #16]
	str	r7, [sp, #20]
	ldr	r6, .L184+16
	str	ip, [sp, #44]
	mov	r2, #0
	ldr	r3, .L184+20
	str	r6, [sp, #48]
	mov	lr, pc
	bx	ip
	ldr	r3, .L184+24
	mov	r2, #0
	mov	lr, pc
	bx	r6
	add	r3, r5, r5, lsr #31
	ldr	ip, [sp, #28]
	asr	r3, r3, #1
	rsb	r3, r3, #0
	add	ip, r3, ip
	mov	r7, r1
	mov	fp, ip
	mov	r6, r0
	ldr	r0, [sp, #40]
	add	r3, r0, r3
	rsb	r3, r3, r3, lsl #4
	lsl	r3, r3, #5
	add	r3, r3, #100663296
	add	r3, r3, #4800
	ldr	r0, .L184+28
	str	r3, [sp, #8]
	add	r3, ip, r5
	str	r3, [sp]
	lsr	r3, r5, #31
	str	ip, [sp, #32]
	str	r0, [sp, #4]
	ldr	r10, .L184+32
	str	r3, [sp, #52]
.L149:
	mov	r2, #0
	mov	r3, #0
	mov	r0, r6
	mov	r1, r7
	ldr	ip, [sp, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L152
	mov	r9, #0
	ldr	r3, [sp, #8]
	add	r5, r3, fp, lsl #1
.L148:
	add	r9, r9, #1
	strh	r4, [r5]	@ movhi
	mov	r0, r9
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r5, r5, #480
	bne	.L148
.L152:
	ldr	r3, [sp]
	add	fp, fp, #1
	cmp	r3, fp
	bne	.L149
	ldr	r2, [sp, #24]
	mov	r3, r2
	ldr	r0, .L184+36
	smull	r1, r3, r0, r3
	mvn	r5, r2
	mov	r0, r3
	mov	r7, r2
	ldr	r3, [sp, #40]
	ldr	r1, [sp, #28]
	add	r3, r3, r2, lsl #1
	rsb	r3, r3, r3, lsl #4
	lsl	lr, r3, #5
	add	r1, r1, r2, asr #1
	ldr	r3, [sp, #32]
	add	r1, r1, #2
	add	lr, lr, #100663296
	sub	r1, r1, r3
	sub	lr, lr, #4800
	lsl	r1, r1, #1
	sub	r0, r0, r2, asr #31
	add	r5, r5, r3
	sub	ip, r3, #1
	asr	r6, r2, #1
.L150:
	cmp	r7, #2
	movgt	r2, #0
	addgt	r3, lr, ip, lsl #1
	ble	.L156
.L153:
	add	r2, r2, #1
	cmp	r2, r0
	strh	r4, [r3]	@ movhi
	strh	r4, [r1, r3]	@ movhi
	add	r3, r3, #480
	blt	.L153
.L156:
	sub	ip, ip, #1
	cmp	ip, r5
	add	r1, r1, #4
	bne	.L150
	ldr	r3, [sp, #24]
	cmp	r3, #1
	beq	.L157
	mov	r0, #0
	mvn	r1, #32768
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #24]
	ldr	ip, [sp, #40]
	add	r2, r3, r2
	sub	r2, ip, r2, asr #1
	ldr	ip, [sp, #28]
	ldr	r3, .L184+40
	add	ip, ip, r6
	rsb	r2, r2, r2, lsl #4
	add	r3, ip, r3
	add	r3, r3, r2, lsl #4
	lsl	r2, r3, #1
.L164:
	sub	r3, r2, #5760
.L163:
	cmp	r4, #0
	strheq	r4, [r3]	@ movhi
	strhne	r1, [r3]	@ movhi
	add	r3, r3, #480
	cmp	r2, r3
	bne	.L163
	add	r0, r0, #1
	cmp	r0, r6
	add	r2, r2, #2
	blt	.L164
.L157:
	mov	r2, #0
	ldr	r3, .L184+44
	ldr	ip, [sp, #44]
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	mov	r2, #0
	str	r6, [sp, #32]
	str	r7, [sp, #36]
	ldr	r3, .L184+24
	ldr	ip, [sp, #48]
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	mov	r2, #0
	str	r6, [sp, #8]
	str	r7, [sp, #12]
	ldr	r3, .L184+24
	ldr	ip, [sp, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L160
	mov	r2, #0
	add	r1, sp, #16
	ldmia	r1, {r0-r1}
	ldr	r3, .L184+48
	ldr	ip, [sp, #44]
	mov	lr, pc
	bx	ip
	mov	fp, #10
	mov	r6, r0
	mov	r7, r1
	ldr	r3, [sp, #24]
	add	r3, r3, r3, lsr #31
	ldr	r2, [sp, #40]
	ldr	ip, [sp, #28]
	asr	r3, r3, #1
	rsb	r3, r3, #0
	add	r2, r2, r3
	add	r3, ip, r3
	rsb	r2, r2, r2, lsl #4
	lsl	r3, r3, #1
	lsl	r2, r2, #4
	add	r3, r3, #100663296
	add	r2, r2, #4800
	sub	r3, r3, #4
	str	r2, [sp]
	str	r3, [sp, #16]
	ldr	r10, .L184+32
.L165:
	mov	r2, #0
	mov	r0, r6
	mov	r1, r7
	ldr	r3, .L184+52
	ldr	ip, [sp, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L169
	mov	r5, #1
	ldr	r3, [sp, #16]
	ldr	r2, [sp]
	add	r9, r3, r2, lsl r5
.L166:
	add	r5, r5, #1
	mov	r0, r5
	strh	r4, [r9], #-2	@ movhi
	mov	lr, pc
	bx	r8
	mov	r2, r6
	mov	r3, r7
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L166
.L169:
	add	fp, fp, #1
	mov	r0, fp
	mov	lr, pc
	bx	r8
	add	r3, sp, #8
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r10
	ldr	r3, [sp]
	cmp	r0, #0
	add	r3, r3, #240
	str	r3, [sp]
	bne	.L165
.L160:
	mov	r2, #0
	ldr	r3, .L184+24
	add	r1, sp, #32
	ldmia	r1, {r0-r1}
	ldr	ip, [sp, #4]
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L145
	mov	r4, #10
	mov	r5, #0
	ldr	r3, [sp, #24]
	add	r3, r3, r3, lsr #31
	ldr	r2, [sp, #40]
	asr	r3, r3, #1
	rsb	r3, r3, #0
	add	r6, r3, r2
	ldr	r2, [sp, #28]
	add	r6, r6, r4
	add	r3, r3, r2
	rsb	r2, r6, r6, lsl #4
	sub	r6, r3, #1
	add	r6, r6, r2, lsl #4
	mov	r7, r8
	lsl	r6, r6, #1
	ldr	r10, .L184+32
	add	r9, sp, #32
	ldmia	r9, {r8-r9}
	add	r6, r6, #100663296
.L171:
	add	r4, r4, #1
	strh	r5, [r6]	@ movhi
	mov	r0, r4
	mov	lr, pc
	bx	r7
	mov	r2, r8
	mov	r3, r9
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	add	r6, r6, #480
	bne	.L171
.L145:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L183:
	ldr	r8, .L184+8
	ldr	r0, [sp, #24]
	mov	lr, pc
	bx	r8
	ldr	r3, .L184+12
	str	r3, [sp, #44]
	ldr	r3, .L184+16
	str	r3, [sp, #48]
	ldr	r3, .L184+28
	str	r0, [sp, #16]
	str	r1, [sp, #20]
	str	r3, [sp, #4]
	b	.L157
.L185:
	.align	2
.L184:
	.word	screenHeight
	.word	screenWidth
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_dadd
	.word	1073217536
	.word	1076101120
	.word	__aeabi_dcmpgt
	.word	__aeabi_dcmplt
	.word	1431655766
	.word	50338129
	.word	1072955392
	.word	1072168960
	.word	1072693248
	.size	drawFrame4, .-drawFrame4
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L192
	ldr	r3, [r3]
.L187:
	ldrh	r2, [r3]
	cmp	r2, #159
	bhi	.L187
.L188:
	ldrh	r2, [r3]
	cmp	r2, #159
	bls	.L188
	bx	lr
.L193:
	.align	2
.L192:
	.word	.LANCHOR0
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	updateAnimation
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateAnimation, %function
updateAnimation:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L197
	ldr	r3, .L197+4
	ldrh	r1, [r1, #48]
	ldr	r2, [r3]
	ldr	r0, .L197+8
	tst	r1, #1
	str	r2, [r0]
	addeq	r2, r2, #1
	streq	r2, [r3]
	ldr	r2, .L197
	ldrh	r2, [r2, #48]
	tst	r2, #2
	ldreq	r2, [r3]
	subeq	r2, r2, #1
	streq	r2, [r3]
	bx	lr
.L198:
	.align	2
.L197:
	.word	67109120
	.word	frame
	.word	prevFrame
	.size	updateAnimation, .-updateAnimation
	.align	2
	.global	frameFromInputs
	.syntax unified
	.arm
	.fpu softvfp
	.type	frameFromInputs, %function
frameFromInputs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L202
	ldrh	r2, [r3, #48]
	ldr	r3, .L202+4
	tst	r2, #1
	ldr	r2, .L202
	ldr	r0, [r3]
	ldrh	r2, [r2, #48]
	addeq	r0, r0, #1
	streq	r0, [r3]
	tst	r2, #2
	subeq	r0, r0, #1
	streq	r0, [r3]
	bx	lr
.L203:
	.align	2
.L202:
	.word	67109120
	.word	frame
	.size	frameFromInputs, .-frameFromInputs
	.align	2
	.global	framePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	framePlayer, %function
framePlayer:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	ip, r0, #0
	rsblt	ip, ip, #0
	andlt	ip, ip, #3
	rsblt	ip, ip, #4
	and	ip, ip, #3
	cmp	ip, #2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldrh	r3, [sp]
	beq	.L206
	cmp	ip, #3
	beq	.L207
	cmp	ip, #1
	beq	.L208
	b	drawFrame1
.L206:
	b	drawFrame3
.L207:
	b	drawFrame4
.L208:
	b	drawFrame2
	.size	framePlayer, .-framePlayer
	.align	2
	.global	colorSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	colorSelector, %function
colorSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	rsblt	r0, r0, #0
	andlt	r0, r0, #3
	rsblt	r0, r0, #4
	ldr	r3, .L211
	and	r0, r0, #3
	lsl	r0, r0, #1
	ldrh	r0, [r3, r0]
	bx	lr
.L212:
	.align	2
.L211:
	.word	.LANCHOR1
	.size	colorSelector, .-colorSelector
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
	mov	r4, #67108864
	push	{r7, fp, lr}
	mov	ip, #160
	mov	r7, #240
	mov	r1, #120
	mov	r2, #80
	mov	r3, #27
	ldr	r5, .L223
	ldr	lr, .L223+4
	strh	r5, [r4]	@ movhi
	ldr	r0, .L223+8
	ldr	r6, .L223+12
	ldr	r5, .L223+16
	ldr	r4, .L223+20
	str	r7, [lr]
	str	ip, [r0]
	str	r1, [r6]
	str	r2, [r5]
	str	r3, [r4]
	ldr	fp, .L223+24
	ldr	r10, .L223+28
	ldr	r9, .L223+32
	ldr	r8, .L223+36
	ldr	r7, .L223+40
	sub	sp, sp, #12
.L218:
	mov	lr, pc
	bx	fp
	ldr	r3, [r10]
.L214:
	ldrh	r2, [r3]
	cmp	r2, #159
	bhi	.L214
.L215:
	ldrh	r2, [r3]
	cmp	r2, #159
	bls	.L215
	ldr	ip, [r9]
	ldr	r0, [r8]
	cmp	ip, r0
	ldr	r1, [r6]
	ldr	r2, [r5]
	ldr	r3, [r4]
	beq	.L216
	mov	r0, #0
	str	r0, [sp]
	mov	r0, ip
	mov	lr, pc
	bx	r7
	ldr	r0, [r8]
	ldr	r1, [r6]
	ldr	r2, [r5]
	ldr	r3, [r4]
.L216:
	cmp	r0, #0
	movge	ip, r0
	rsblt	ip, r0, #0
	andlt	ip, ip, #3
	rsblt	ip, ip, #4
	ldr	lr, .L223+44
	and	ip, ip, #3
	lsl	ip, ip, #1
	ldrh	ip, [lr, ip]
	str	ip, [sp]
	mov	lr, pc
	bx	r7
	b	.L218
.L224:
	.align	2
.L223:
	.word	1027
	.word	screenWidth
	.word	screenHeight
	.word	robotX
	.word	robotY
	.word	robotSize
	.word	updateAnimation
	.word	.LANCHOR0
	.word	prevFrame
	.word	frame
	.word	framePlayer
	.word	.LANCHOR1
	.size	main, .-main
	.global	scanlineCounter
	.comm	prevFrame,4,4
	.comm	frame,4,4
	.comm	screenHeight,4,4
	.comm	screenWidth,4,4
	.comm	robotY,4,4
	.comm	robotX,4,4
	.comm	robotSize,4,4
	.comm	ballSize,4,4
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.36, %object
	.size	CSWTCH.36, 8
CSWTCH.36:
	.short	1023
	.short	31
	.short	31775
	.short	992
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	scanlineCounter, %object
	.size	scanlineCounter, 4
scanlineCounter:
	.word	67108870
	.ident	"GCC: (devkitARM release 53) 9.1.0"
