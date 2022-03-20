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
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dcmpgt
	.global	__aeabi_ddiv
	.global	__aeabi_dcmplt
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.align	2
	.global	drawSprite4
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSprite4, %function
drawSprite4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #0
	sub	sp, sp, #60
	mov	r4, r3
	add	r3, r2, r1
	mov	r10, r1
	str	r2, [sp, #28]
	str	r0, [sp, #40]
	str	r3, [sp, #32]
	sub	fp, r0, r2
	ble	.L35
	ldr	r2, [sp, #32]
	mov	r8, r2
	ldr	r3, [sp, #28]
	ldr	r1, [sp, #40]
	ldr	r5, .L37+16
	add	r7, r1, r3, asr #1
	add	r6, r3, r2
.L5:
	mov	r1, r8
	mov	r2, r4
	mov	r0, fp
	mov	lr, pc
	bx	r5
	mov	r1, r8
	mov	r2, r4
	mov	r0, r7
	add	r8, r8, #1
	mov	lr, pc
	bx	r5
	cmp	r8, r6
	bne	.L5
.L6:
	ldr	r9, [sp, #28]
	ldr	r3, .L37+20
	mov	r0, r9
	mov	lr, pc
	bx	r3
	mov	r6, r0
	mov	r7, r1
	adr	r3, .L37
	ldmia	r3, {r2-r3}
	stm	sp, {r6-r7}
	ldr	r8, .L37+24
	mov	lr, pc
	bx	r8
	mov	r3, r9
	ldr	lr, .L37+28
	smull	r2, r3, lr, r3
	mov	lr, r3
	mov	r6, r0
	mov	r7, r1
	add	ip, r9, r9, lsr #31
	sub	lr, lr, r9, asr #31
	asr	ip, ip, #1
	ldr	r3, .L37+32
	str	ip, [sp, #12]
	mov	r2, #0
	str	r6, [sp, #16]
	str	r7, [sp, #20]
	str	lr, [sp, #8]
	ldr	ip, .L37+36
	mov	lr, pc
	bx	ip
	lsl	r3, r9, #1
	str	r3, [sp, #48]
	cmp	r0, #0
	asr	r3, r9, #31
	str	r3, [sp, #52]
	beq	.L36
	ldr	r2, .L37+44
	ldr	r3, [sp, #28]
	str	r2, [sp, #24]
	add	r10, r10, #2
	ldr	r2, [sp, #8]
	add	r10, r10, r3
	add	r2, r10, r2
	str	r2, [sp, #44]
	ldr	r2, [sp, #32]
	add	r10, r3, r2
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	mov	r6, #1
	mov	r8, #0
	ldr	r9, .L37+32
	ldr	r7, .L37+40
	str	r3, [sp, #36]
	b	.L11
.L9:
	add	r6, r6, #1
	ldr	r3, .L37+20
	mov	r0, r6
	mov	lr, pc
	bx	r3
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	mov	r8, r0
	mov	r9, r1
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L4
.L11:
	mov	r2, r4
	mov	r1, r10
	add	r0, fp, r6
	mov	lr, pc
	bx	r5
	adr	r3, .L37+8
	ldmia	r3, {r2-r3}
	ldr	ip, [sp, #24]
	ldmia	sp, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	r2, r8
	mov	r3, r9
	ldr	ip, .L37+36
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L9
	ldr	r3, [sp, #36]
	mov	r2, r4
	ldr	r1, [sp, #44]
	add	r0, r3, r6
	mov	lr, pc
	bx	r5
	b	.L9
.L38:
	.align	3
.L37:
	.word	1717986918
	.word	1073899110
	.word	858993459
	.word	1072902963
	.word	setPixel
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	1431655766
	.word	1072693248
	.word	__aeabi_dcmpgt
	.word	__aeabi_dcmplt
	.word	__aeabi_ddiv
.L36:
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #36]
	ldr	r3, .L37+44
	str	r3, [sp, #24]
.L4:
	ldr	r3, [sp, #28]
	cmp	r3, #2
	ble	.L8
	mov	r8, #0
	ldr	r3, [sp, #36]
	add	r7, fp, #1
	sub	r6, r3, #1
	str	fp, [sp, #16]
	ldr	r10, [sp, #8]
	mov	fp, r4
	mov	r4, r7
	mov	r7, r6
	ldr	r6, [sp, #32]
.L7:
	add	r9, r6, r8
	add	r0, r4, r8
	mov	r1, r9
	mov	r2, fp
	mov	lr, pc
	bx	r5
	sub	r0, r7, r8
	mov	r2, fp
	mov	r1, r9
	add	r8, r8, #1
	mov	lr, pc
	bx	r5
	cmp	r10, r8
	bgt	.L7
	mov	r4, fp
	ldr	fp, [sp, #16]
.L8:
	adr	r3, .L39
	ldmia	r3, {r2-r3}
	ldr	ip, [sp, #24]
	ldmia	sp, {r0-r1}
	mov	lr, pc
	bx	ip
	mov	r6, r0
	mov	r7, r1
	mov	r3, #0
	mov	r2, #0
	str	r6, [sp, #16]
	str	r7, [sp, #20]
	ldr	ip, .L39+16
	mov	lr, pc
	bx	ip
	ldr	r9, [sp, #8]
	ldr	r3, [sp, #32]
	add	r8, r9, fp
	cmp	r0, #0
	add	r8, r8, #1
	add	r9, r9, r3
	beq	.L13
	mov	r6, #0
	str	fp, [sp, #44]
	ldr	r7, .L39+20
	add	fp, sp, #16
	ldmia	fp, {r10-fp}
.L12:
	mov	r2, r4
	add	r0, r8, r6
	mov	r1, r9
	add	r6, r6, #1
	mov	lr, pc
	bx	r5
	ldr	r3, .L39+24
	mov	r0, r6
	mov	lr, pc
	bx	r3
	mov	r2, r10
	mov	r3, fp
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L12
	ldr	fp, [sp, #44]
.L13:
	add	r6, r9, #3
	mov	r2, r4
	mov	r1, r6
	mov	r0, r8
	mov	lr, pc
	bx	r5
	ldr	r3, .L39+24
	mov	r0, r8
	mov	lr, pc
	bx	r3
	add	r3, sp, #16
	ldmia	r3, {r2-r3}
	ldr	ip, .L39+28
	mov	lr, pc
	bx	ip
	ldr	r3, .L39+32
	mov	lr, pc
	bx	r3
	mov	r2, r4
	mov	r1, r6
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #28]
	cmp	r3, #1
	ble	.L20
	ldr	r3, [sp, #28]
	mov	r2, r3
	ldr	r6, .L39+36
	smull	r1, r2, r6, r2
	mov	r6, r2
	mov	r10, #0
	ldr	r2, [sp, #52]
	sub	r6, r2, r6
	ldr	r2, [sp, #40]
	str	r9, [sp, #40]
	mov	r9, r10
	mov	r10, r4
	mov	r4, r2
	ldr	r1, [sp, #32]
	add	r6, r6, r2
	add	r8, r3, r1
	add	r6, r6, r3
	ldr	r3, [sp, #48]
	add	r7, r3, fp
	ldr	r3, [sp, #12]
	str	r8, [sp, #16]
	add	fp, r3, fp
.L17:
	ldr	r3, [sp, #16]
	add	r8, r9, r3
	mov	r1, r8
	mov	r2, r10
	mov	r0, fp
	mov	lr, pc
	bx	r5
	mov	r2, r10
	mov	r1, r8
	mov	r0, r4
	mov	lr, pc
	bx	r5
	mov	r2, r10
	mov	r1, r8
	mov	r0, r7
	mov	lr, pc
	bx	r5
	mov	r2, r10
	mov	r1, r8
	mov	r0, r6
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #12]
	add	r9, r9, #1
	cmp	r3, r9
	bgt	.L17
	ldr	r3, .L39+24
	ldr	r0, [sp, #36]
	mov	lr, pc
	bx	r3
	adr	r3, .L39+8
	ldmia	r3, {r2-r3}
	mov	r6, r0
	mov	r7, r1
	ldr	ip, [sp, #24]
	ldmia	sp, {r0-r1}
	mov	lr, pc
	bx	ip
	ldr	ip, .L39+28
	mov	r2, r0
	mov	r0, r6
	mov	r6, ip
	mov	r3, r1
	mov	r1, r7
	mov	lr, pc
	bx	ip
	mov	r2, #0
	mov	ip, r6
	ldr	r3, .L39+40
	mov	lr, pc
	bx	ip
	ldr	r3, .L39+32
	mov	lr, pc
	bx	r3
	ldr	r3, [sp, #28]
	cmp	r3, #2
	mov	r4, r10
	ldr	r9, [sp, #40]
	ldr	r8, [sp, #16]
	str	r0, [sp]
	ble	.L20
	ldr	r3, [sp, #28]
	mov	r2, r3
	ldr	r7, .L39+36
	smull	r1, r2, r7, r2
	mov	r7, r2
	ldr	r2, [sp, #32]
	add	r6, r2, #10
	ldr	r2, [sp, #52]
	sub	r7, r2, r7
	add	r2, r9, #2
	str	r2, [sp, #16]
	ldr	r2, [sp]
	mov	r10, #0
	add	r9, r3, r2
	mov	r3, r6
	add	r7, r6, r7
	mov	r6, r9
	mov	r9, r4
	mov	r4, r10
	mov	r10, r3
	ldr	r1, [sp, #8]
	add	r0, r2, r1, lsl #1
	add	r1, r1, r2
	str	r0, [sp, #12]
	str	r1, [sp, #24]
.L19:
	ldr	r3, [sp]
	add	fp, r3, r4
	ldr	r3, [sp, #16]
	mov	r0, fp
	add	r1, r3, r4
	mov	r2, r9
	mov	lr, pc
	bx	r5
	sub	r1, r8, r4
	mov	r2, r9
	mov	r0, fp
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #24]
	sub	r1, r10, r4
	add	r0, r3, r4
	mov	r2, r9
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #12]
	mov	r2, r9
	add	r0, r3, r4
	mov	r1, r7
	mov	lr, pc
	bx	r5
	add	r1, r7, r4
	mov	r2, r9
	mov	r0, r6
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #8]
	add	r4, r4, #1
	cmp	r3, r4
	bgt	.L19
.L20:
	ldr	r2, .L39+44
	ldr	r1, [sp, #28]
	ldr	r3, .L39+48
	str	r1, [r2]
	ldr	r2, [sp, #48]
	str	r2, [r3]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L35:
	ldr	r5, .L39+52
	b	.L6
.L40:
	.align	3
.L39:
	.word	1717986918
	.word	1073112678
	.word	858993459
	.word	1072902963
	.word	__aeabi_dcmpgt
	.word	__aeabi_dcmplt
	.word	__aeabi_i2d
	.word	__aeabi_dadd
	.word	__aeabi_d2iz
	.word	1431655766
	.word	1072693248
	.word	cHeight4
	.word	cWidth4
	.word	setPixel
	.size	drawSprite4, .-drawSprite4
	.align	2
	.global	drawSprite1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSprite1, %function
drawSprite1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r9, r2, r2, lsr #31
	sub	sp, sp, #44
	mov	r4, r3
	asr	r3, r9, #1
	str	r3, [sp, #8]
	cmp	r2, #1
	sub	r3, r0, r9, asr #1
	str	r2, [sp, #20]
	str	r0, [sp, #24]
	str	r1, [sp, #16]
	str	r3, [sp, #12]
	ble	.L66
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #8]
	asr	r7, r2, #2
	ldr	r2, [sp, #16]
	add	r10, r3, #1
	sub	r8, r3, #1
	sub	r3, r3, #4
	mov	fp, #1
	ldr	r5, .L68
	str	r3, [sp, #4]
	add	r6, r2, r1
	b	.L45
.L44:
	ldr	r3, [sp, #8]
	cmp	r3, fp
	add	fp, fp, #1
	ble	.L46
.L45:
	add	r9, r6, fp
	mov	r1, r9
	mov	r2, r4
	mov	r0, r10
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r1, r9
	mov	r0, r8
	mov	lr, pc
	bx	r5
	sub	r3, fp, #1
	cmp	r7, r3
	ble	.L44
	ldr	r3, [sp, #4]
	mov	r2, r4
	add	r0, r3, fp
	mov	r1, r6
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #8]
	cmp	r3, fp
	add	fp, fp, #1
	bgt	.L45
.L46:
	mov	r7, #0
	add	r2, sp, #16
	ldm	r2, {r2, r3}
	add	r6, r3, r2
	ldr	r2, [sp, #24]
	add	fp, r6, #5
	sub	r3, r2, r3
	mov	r9, fp
	str	r3, [sp, #4]
	ldr	fp, [sp, #12]
	add	r10, r6, #6
.L43:
	ldr	r3, [sp, #4]
	add	r8, r3, r7
	mov	r0, r8
	mov	r2, r4
	mov	r1, r9
	mov	lr, pc
	bx	r5
	mov	r0, r8
	mov	r2, r4
	mov	r1, r10
	add	r8, fp, r7
	mov	lr, pc
	bx	r5
	mov	r0, r8
	mov	r2, r4
	mov	r1, r9
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r1, r10
	mov	r0, r8
	mov	lr, pc
	bx	r5
	cmp	r7, #1
	bne	.L58
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ble	.L67
	add	r7, r6, #10
	str	r6, [sp, #12]
	add	r8, r6, #11
	mov	r10, #0
	mov	r6, r4
	ldr	r9, [sp, #4]
	mov	r4, r7
	ldr	r7, [sp, #20]
	b	.L47
.L60:
	mov	r10, fp
.L47:
	tst	r10, #1
	moveq	r1, r4
	movne	r1, r8
	mov	r2, r6
	add	r0, r10, r9
	add	fp, r10, #1
	mov	lr, pc
	bx	r5
	cmp	r7, fp
	bne	.L60
	mov	r4, r6
	ldr	r6, [sp, #12]
	ldr	r1, [sp, #20]
	add	r3, r6, #2
	add	r3, r3, r1
	str	r3, [sp, #32]
	add	r2, r6, r1
	ldr	r3, .L68+4
	sub	r2, r2, #7
	str	r10, [sp, #16]
	mov	r7, #0
	mov	r10, r3
	str	r2, [sp, #12]
	str	r3, [sp, #36]
	b	.L54
.L52:
	ldr	r3, [sp, #16]
	cmp	r7, r3
	add	r7, r7, #1
	beq	.L55
.L54:
	ldr	r3, [sp, #4]
	add	r8, r3, r7
	mov	r0, r8
	mov	r2, r4
	mov	r1, r6
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r0, r8
	ldr	r1, [sp, #12]
	mov	lr, pc
	bx	r5
	mov	r0, r7
	mov	lr, pc
	bx	r10
	mov	r8, r0
	mov	r0, fp
	mov	r9, r1
	mov	lr, pc
	bx	r10
	mov	r2, #0
	ldr	r3, .L68+8
	ldr	ip, .L68+12
	mov	lr, pc
	bx	ip
	ldr	ip, .L68+16
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	beq	.L52
	ldr	r3, [sp, #4]
	sub	r8, r3, #1
	sub	r8, r8, r7
	ldr	r3, [sp, #24]
	add	r1, r6, #1
	mov	r0, r8
	mov	r2, r4
	add	r9, r3, r7
	str	r1, [sp, #28]
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #32]
	mov	r0, r9
	ldr	r1, [sp, #28]
	mov	r2, r4
	str	r9, [sp, #28]
	sub	r9, r3, #10
	mov	lr, pc
	bx	r5
	mov	r1, r9
	mov	r2, r4
	ldr	r0, [sp, #28]
	mov	lr, pc
	bx	r5
	mov	r2, r4
	mov	r1, r9
	mov	r0, r8
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #16]
	cmp	r7, r3
	add	r7, r7, #1
	bne	.L54
.L55:
	ldr	r3, [sp, #20]
	cmp	r3, #10
	ble	.L49
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #8]
	add	r7, r3, r2
	ldr	r3, [sp, #20]
	sub	r8, r3, #8
	ldr	r3, [sp, #4]
	add	r8, r8, r6
	sub	r7, r7, #2
	sub	r9, r3, #11
	add	r6, r6, #2
.L56:
	mov	r1, r6
	mov	r2, r4
	mov	r0, r9
	mov	lr, pc
	bx	r5
	mov	r1, r6
	mov	r2, r4
	mov	r0, r7
	add	r6, r6, #1
	mov	lr, pc
	bx	r5
	cmp	r8, r6
	bne	.L56
.L49:
	ldr	r2, [sp, #20]
	ldr	r3, .L68+20
	mov	r0, r2
	str	r2, [r3]
	ldr	r3, [sp, #36]
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+24
	mov	r2, #0
	ldr	r3, .L68+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+36
	str	r0, [r3]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L58:
	mov	r7, #1
	b	.L43
.L66:
	ldr	r5, .L68
	b	.L46
.L67:
	ldr	r3, .L68+4
	str	r3, [sp, #36]
	b	.L55
.L69:
	.align	2
.L68:
	.word	setPixel
	.word	__aeabi_i2d
	.word	1074003968
	.word	__aeabi_ddiv
	.word	__aeabi_dcmplt
	.word	cHeight1
	.word	__aeabi_dmul
	.word	1073217536
	.word	__aeabi_d2iz
	.word	cWidth1
	.size	drawSprite1, .-drawSprite1
	.align	2
	.global	drawSprite2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSprite2, %function
drawSprite2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	ip, r2, r2, lsr #31
	sub	sp, sp, #28
	cmp	r2, #1
	mov	fp, r3
	str	r2, [sp, #16]
	asr	r10, ip, #1
	ble	.L83
	mov	r4, #0
	ldr	r3, [sp, #16]
	ldr	r5, .L84
	add	r7, r3, r1
	sub	r8, r0, r3
	sub	r6, r0, #2
.L74:
	add	r9, r7, r4
	add	r0, r8, r4
	mov	r1, r9
	mov	r2, fp
	mov	lr, pc
	bx	r5
	sub	r0, r6, r4
	mov	r2, fp
	mov	r1, r9
	add	r4, r4, #1
	mov	lr, pc
	bx	r5
	cmp	r4, r10
	blt	.L74
	ldr	r3, [sp, #16]
	asr	r2, r3, #2
	str	r2, [sp]
	add	r9, r3, #3
.L72:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	movge	r9, r3
	sub	r2, r7, r9, asr #2
	str	r2, [sp, #4]
	ldr	r2, [sp]
	add	r3, r8, r10
	str	r3, [sp, #12]
	add	r3, r3, r2
	str	r10, [sp, #20]
	mov	r10, r3
	mov	r3, r7
	mov	r4, #0
	mov	r7, fp
	mov	fp, r3
	add	r2, r8, r2
	str	r2, [sp, #8]
.L76:
	ldr	r3, [sp, #4]
	sub	r9, fp, r4
	add	r0, r8, r4
	mov	r1, r9
	mov	r2, r7
	add	r6, r3, r4
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #8]
	mov	r1, r6
	add	r0, r3, r4
	mov	r2, r7
	mov	lr, pc
	bx	r5
	ldr	r3, [sp, #12]
	mov	r2, r7
	add	r0, r3, r4
	mov	r1, r9
	mov	lr, pc
	bx	r5
	add	r0, r10, r4
	mov	r2, r7
	mov	r1, r6
	mov	lr, pc
	bx	r5
	ldr	r3, [sp]
	add	r4, r4, #1
	cmp	r4, r3
	ble	.L76
	ldr	r10, [sp, #20]
.L73:
	ldr	r2, .L84+4
	ldr	r3, .L84+8
	str	r10, [r2]
	ldr	r2, [sp, #16]
	str	r2, [r3]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L83:
	cmp	r2, #0
	add	r9, r2, #3
	mov	r3, r2
	movlt	r3, r9
	cmn	r2, #3
	asr	r3, r3, #2
	str	r3, [sp]
	blt	.L73
	ldr	r5, .L84
	sub	r8, r0, r2
	add	r7, r2, r1
	b	.L72
.L85:
	.align	2
.L84:
	.word	setPixel
	.word	cHeight2
	.word	cWidth2
	.size	drawSprite2, .-drawSprite2
	.align	2
	.global	drawSprite3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSprite3, %function
drawSprite3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #0
	sub	sp, sp, #36
	add	r10, r2, #3
	str	r10, [sp, #16]
	movge	r10, r2
	cmp	r2, #3
	movle	r3, r2
	lsrle	r3, r3, #31
	str	r2, [sp, #20]
	str	r0, [sp, #12]
	strle	r3, [sp, #24]
	ble	.L93
	mov	r9, r3
	ldr	r2, [sp, #20]
	ldr	ip, [sp, #12]
	add	r3, r2, r2, lsr #31
	sub	r0, ip, r2
	sub	r3, ip, r3, asr #1
	str	r3, [sp, #4]
	add	r3, r0, #3
	str	r3, [sp, #8]
	lsr	r3, r2, #31
	str	r3, [sp, #24]
	mov	r3, r9
	asr	r10, r10, #2
	mov	r9, r10
	mov	r5, #0
	mov	r10, r3
	str	r0, [sp, #28]
	ldr	r4, .L100
	add	fp, r2, r1
.L90:
	ldr	r3, [sp, #4]
	add	r8, r5, fp
	sub	r6, r3, r5
	mov	r0, r6
	mov	r1, r8
	mov	r2, r10
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #8]
	sub	r7, fp, r5
	mov	r0, r6
	mov	r1, r7
	add	r6, r3, r5
	mov	r2, r10
	mov	lr, pc
	bx	r4
	mov	r1, r8
	mov	r0, r6
	mov	r2, r10
	mov	lr, pc
	bx	r4
	add	r5, r5, #1
	mov	r2, r10
	mov	r1, r7
	mov	r0, r6
	mov	lr, pc
	bx	r4
	cmp	r5, r9
	blt	.L90
	ldr	r2, [sp, #20]
	mov	r1, r2
	ldr	r3, .L100+4
	smull	r0, r1, r3, r1
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #1
	cmp	r2, #4
	mov	r9, r10
	str	r3, [sp, #4]
	ble	.L93
	ldr	r3, [sp, #20]
	add	r7, r3, r3, lsl #1
	cmp	r7, #0
	add	r1, r7, #3
	movlt	r7, r1
	ldr	r2, [sp, #24]
	cmp	r3, #0
	ldr	r10, [sp, #16]
	add	r8, r2, r3
	movge	r10, r3
	ldr	r3, [sp, #12]
	sub	r8, r3, r8, asr #1
	sub	r7, r3, r7, asr #2
	ldr	r3, [sp, #28]
	sub	r6, r3, #5
	sub	r3, fp, #3
	str	r3, [sp, #12]
	add	r3, r7, #2
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
	sub	r8, r8, #1
	add	r3, r8, r3
	str	r3, [sp, #8]
	mov	r3, r8
	mov	r5, #0
	mov	r8, r9
	mov	r9, r3
	sub	r10, fp, r10, asr #2
.L92:
	ldr	r3, [sp, #16]
	mov	r2, r8
	add	r0, r3, r5
	mov	r1, r10
	mov	lr, pc
	bx	r4
	add	fp, r10, r5
	sub	r0, r7, r5
	mov	r2, r8
	mov	r1, r10
	mov	lr, pc
	bx	r4
	mov	r1, fp
	add	r0, r9, r5
	mov	r2, r8
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #12]
	mov	r1, fp
	add	r0, r6, #8
	mov	r2, r8
	sub	fp, r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #8]
	mov	r1, fp
	add	r0, r3, r5
	mov	r2, r8
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	r2, r8
	mov	r1, fp
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #4]
	add	r5, r5, #1
	cmp	r5, r3
	sub	r6, r6, #1
	blt	.L92
.L93:
	add	r0, sp, #20
	ldm	r0, {r0, r3}
	ldr	r1, .L100+8
	ldr	r2, .L100+12
	add	r3, r3, r0
	asr	r3, r3, #1
	str	r3, [r1]
	str	r0, [r2]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L101:
	.align	2
.L100:
	.word	setPixel
	.word	1717986919
	.word	cHeight3
	.word	cWidth3
	.size	drawSprite3, .-drawSprite3
	.align	2
	.global	drawTriangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTriangle, %function
drawTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r7, r2, #0
	sub	sp, sp, #12
	ble	.L102
	mov	r9, r0
	sub	r1, r1, r0
	mov	r10, r3
	add	r3, r1, r7, asr #1
	add	fp, r7, r0
	str	r3, [sp, #4]
	ldr	r6, .L110
	sub	fp, fp, r7, asr #1
	lsl	r8, r0, #1
	sub	r7, r0, r7, asr #1
.L104:
	sub	r3, r9, r7
	cmp	r3, #0
	ble	.L107
	mov	r4, r9
	ldr	r3, [sp, #4]
	add	r5, r3, r7
.L105:
	mov	r0, r4
	mov	r2, r10
	mov	r1, r5
	mov	lr, pc
	bx	r6
	sub	r0, r8, r4
	mov	r2, r10
	mov	r1, r5
	sub	r4, r4, #1
	mov	lr, pc
	bx	r6
	cmp	r4, r7
	bne	.L105
.L107:
	add	r7, r7, #1
	cmp	r7, fp
	bne	.L104
.L102:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L111:
	.align	2
.L110:
	.word	setPixel
	.size	drawTriangle, .-drawTriangle
	.align	2
	.global	drawFood
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFood, %function
drawFood:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	mov	r6, r3
	mov	r5, r1
	ldr	r7, .L121
	add	r9, r0, r2
	add	r10, r1, r2
.L114:
	mov	r4, r8
.L115:
	mov	r0, r4
	mov	r2, r6
	mov	r1, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r7
	cmp	r9, r4
	bne	.L115
	add	r5, r5, #1
	cmp	r5, r10
	bne	.L114
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L122:
	.align	2
.L121:
	.word	setPixel
	.size	drawFood, .-drawFood
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
	mov	r0, #67108864
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	lr, #1
	mov	ip, #10
	mvn	r2, #32768
	mov	r1, #31
	ldr	r5, .L125
	ldr	r3, .L125+4
	strh	r5, [r0]	@ movhi
	ldr	r0, .L125+8
	ldrh	r5, [r3]
	strh	r5, [r0]	@ movhi
	ldr	r0, .L125+12
	str	r4, [r0]
	ldr	r0, .L125+16
	str	r4, [r0]
	ldr	r0, .L125+20
	str	r4, [r0]
	ldr	r0, .L125+24
	str	lr, [r0]
	ldr	r0, .L125+28
	str	ip, [r0]
	ldr	r0, .L125+32
	ldrh	lr, [r0, #48]
	ldr	r0, .L125+36
	ldr	ip, .L125+40
	strh	r2, [r3]	@ movhi
	ldr	r2, .L125+44
	strh	lr, [r0]	@ movhi
	ldr	r3, .L125+48
	ldr	r0, .L125+52
	strh	r4, [ip]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #30
	ldr	r2, .L125+56
	ldr	r3, .L125+60
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mvn	r5, #4
	mov	ip, #80
	mov	r1, #120
	ldr	r3, .L125+64
	smull	r2, r3, r0, r3
	add	r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #3
	ldr	r3, .L125+68
	ldr	lr, [r3]
	ldr	r3, .L125+72
	str	r4, [r3]
	ldr	r3, .L125+76
	ldr	r2, .L125+80
	str	r0, [r3]
	ldr	r3, .L125+84
	str	lr, [r2]
	str	r5, [r3]
	ldr	r6, .L125+88
	ldr	lr, .L125+92
	ldr	r0, .L125+96
	ldr	r2, .L125+100
	ldr	r3, .L125+104
	str	r4, [r6]
	str	ip, [lr]
	str	ip, [r0]
	str	r1, [r2]
	str	r1, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	1027
	.word	bgColor
	.word	foodColor
	.word	time
	.word	drawUpdate
	.word	food
	.word	foodGone
	.word	foodSize
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	TriangleColor
	.word	fillScreen
	.word	32767
	.word	TriangleSize
	.word	rand
	.word	-2004318071
	.word	.LANCHOR0
	.word	end
	.word	TriangleX
	.word	tamaSize
	.word	TriangleY
	.word	sizeIndex
	.word	tamaRow
	.word	tamaOldRow
	.word	tamaCol
	.word	tamaOldCol
	.size	initialize, .-initialize
	.align	2
	.global	collisionDetect
	.syntax unified
	.arm
	.fpu softvfp
	.type	collisionDetect, %function
collisionDetect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r2, .L144
	ldr	r4, .L144+4
	ldr	ip, [r2]
	ldr	r6, .L144+8
	ldr	r2, .L144+12
	ldr	r5, .L144+16
	ldr	r3, [r4]
	ldr	r1, .L144+20
	ldr	r0, .L144+24
	ldr	r2, [r2, ip, lsl #2]
	ldr	lr, [r6]
	ldr	ip, [r5]
	ldr	r1, [r1]
	ldr	r0, [r0]
	sub	sp, sp, #16
	add	r3, r3, r3, lsr #31
	stm	sp, {ip, lr}
	asr	r3, r3, #1
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	add	r1, r2, r1
	sub	r0, r0, r2
	ldr	r3, .L144+28
	ldr	r2, .L144+32
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r7, .L144+36
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L143
.L128:
	ldr	r0, [r4]
	ldr	r3, .L144+40
	ldr	r8, .L144+44
	lsl	r4, r0, #1
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L144+48
	mov	lr, pc
	bx	r8
	ldr	r3, .L144+52
	mov	lr, pc
	bx	r3
	ldr	r10, .L144+56
	ldr	r8, .L144+60
	ldr	ip, [r10]
	ldr	lr, [r8]
	ldr	r1, [r6]
	mov	r2, r0
	ldr	r9, .L144+64
	ldr	r0, [r5]
	str	ip, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r9]
	mov	r3, r4
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L127
	ldr	r6, [r10]
	ldr	r3, .L144+68
	cmp	r6, #0
	ldr	r9, [r9]
	ldr	r5, [r8]
	ldrh	r7, [r3]
	ble	.L133
	ldr	r8, .L144+72
	add	r10, r6, r5
	add	r6, r9, r6
.L132:
	mov	r4, r9
.L131:
	mov	r0, r4
	mov	r2, r7
	mov	r1, r5
	add	r4, r4, #1
	mov	lr, pc
	bx	r8
	cmp	r6, r4
	bne	.L131
	add	r5, r5, #1
	cmp	r10, r5
	bne	.L132
.L133:
	mov	r2, #1
	ldr	r3, .L144+76
	str	r2, [r3]
.L127:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L143:
	bl	initialize
	b	.L128
.L145:
	.align	2
.L144:
	.word	sizeIndex
	.word	TriangleSize
	.word	TriangleY
	.word	.LANCHOR0
	.word	TriangleX
	.word	tamaRow
	.word	tamaCol
	.word	tamaHeight
	.word	tamaWidth
	.word	collision
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	1074003968
	.word	__aeabi_d2iz
	.word	foodSize
	.word	foodY
	.word	foodX
	.word	bgColor
	.word	setPixel
	.word	foodGone
	.size	collisionDetect, .-collisionDetect
	.align	2
	.global	updateTrianglePosition
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTrianglePosition, %function
updateTrianglePosition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mvn	r3, r0
	cmp	r0, #0
	moveq	r0, #0
	ldr	r2, .L152
	andne	r0, r3, #1
	ldr	r3, .L152+4
	str	lr, [sp, #-4]!
	ldr	r1, .L152+8
	ldr	lr, [r3]
	ldr	r3, [r2]
	cmp	r0, #0
	ldr	ip, .L152+12
	str	r3, [r1]
	addne	r3, r3, #4
	str	lr, [ip]
	strne	r3, [r2]
	ldr	lr, [sp], #4
	bx	lr
.L153:
	.align	2
.L152:
	.word	TriangleY
	.word	TriangleX
	.word	prevTriangleY
	.word	prevTriangleX
	.size	updateTrianglePosition, .-updateTrianglePosition
	.align	2
	.global	foodColorUpdate
	.syntax unified
	.arm
	.fpu softvfp
	.type	foodColorUpdate, %function
foodColorUpdate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L156
	mov	lr, pc
	bx	r6
	mov	r4, r0
	mov	lr, pc
	bx	r6
	mov	r5, r0
	mov	lr, pc
	bx	r6
	mov	r3, r0
	ldr	r2, .L156+4
	smull	r1, ip, r2, r0
	smull	r0, r1, r2, r5
	smull	r0, r2, r4, r2
	add	r0, ip, r3
	asr	ip, r3, #31
	rsb	ip, ip, r0, asr #4
	add	r0, r1, r5
	asr	r1, r5, #31
	add	r2, r2, r4
	rsb	r1, r1, r0, asr #4
	rsb	ip, ip, ip, lsl #5
	asr	r0, r4, #31
	rsb	r2, r0, r2, asr #4
	sub	r3, r3, ip
	rsb	r1, r1, r1, lsl #5
	sub	r0, r5, r1
	lsl	r3, r3, #10
	rsb	r2, r2, r2, lsl #5
	orr	r3, r3, r0, lsl #5
	sub	r0, r4, r2
	orr	r0, r3, r0
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	pop	{r4, r5, r6, lr}
	bx	lr
.L157:
	.align	2
.L156:
	.word	rand
	.word	-2078209981
	.size	foodColorUpdate, .-foodColorUpdate
	.align	2
	.global	updateFoodPosition
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFoodPosition, %function
updateFoodPosition:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L191
	ldr	r3, [r6]
	cmp	r3, #0
	sub	sp, sp, #36
	beq	.L185
	ldr	r2, .L191+4
	ldr	r3, .L191+8
	mla	r3, r0, r3, r2
	cmp	r2, r3, ror #1
	movcs	r3, #1
	movcc	r3, #0
	cmp	r0, #0
	movne	r0, r3
	moveq	r0, #0
	cmp	r0, #0
	bne	.L182
.L185:
	ldr	r3, .L191+12
	ldr	r8, .L191+16
	ldr	r7, .L191+20
	str	r3, [sp, #20]
.L159:
	ldr	r4, .L191+24
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L164
	ldr	r3, .L191+28
	ldr	r2, .L191+32
	ldr	r0, [r3]
	ldr	r1, [r2]
	ldr	r3, .L191+36
	ldr	r2, .L191+40
	str	r0, [r3]
	str	r1, [r2]
.L165:
	ldr	r2, [r2]
	ldr	r3, [r3]
.L169:
	ldr	lr, [sp, #20]
	ldr	r5, .L191+44
	ldr	r9, [lr]
	ldr	r0, [r5]
	ldr	ip, .L191+48
	ldr	r10, .L191+52
	ldr	r1, .L191+56
	ldr	lr, [ip]
	ldr	r0, [r10, r0, lsl #2]
	ldr	r1, [r1]
	ldr	ip, [r7]
	str	r9, [sp, #12]
	str	r9, [sp, #8]
	add	r1, r0, r1
	sub	r0, lr, r0
	ldr	lr, [r8]
	ldr	r9, .L191+60
	str	ip, [sp, #4]
	str	lr, [sp]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	bne	.L187
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L164:
	cmp	r3, #1
	bne	.L188
	ldr	r3, .L191+64
	ldr	r2, .L191+68
.L186:
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r0, .L191+36
	ldr	r1, .L191+40
	str	r3, [r0]
	str	r2, [r1]
	b	.L169
.L188:
	cmp	r3, #2
	ldreq	r3, .L191+72
	ldreq	r2, .L191+76
	beq	.L186
.L189:
	cmp	r3, #3
	bne	.L190
	ldr	r3, .L191+80
	ldr	r2, .L191+84
	b	.L186
.L187:
	ldr	r2, .L191+88
	ldr	r3, .L191+92
	ldrh	r0, [r2]
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mvn	r1, #0
	ldr	r3, [r5]
	ldr	r2, [r4]
	add	r3, r3, r0
	ldr	ip, [r10, r3, lsl #2]
	str	r3, [r5]
	ldr	r3, .L191+96
	add	r2, r2, r0
	str	r2, [r4]
	str	ip, [r3]
	str	r1, [r8]
	str	r1, [r7]
	str	r0, [r6]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L182:
	ldr	r4, .L191+100
	mov	lr, pc
	bx	r4
	ldr	r3, .L191+104
	smull	r2, r3, r0, r3
	asr	r10, r0, #31
	rsb	r3, r10, r3, asr #4
	add	r10, r3, r3, lsl #2
	rsb	r10, r10, r10, lsl #4
	sub	r5, r0, r10, lsl #1
	str	r5, [sp, #24]
	mov	lr, pc
	bx	r4
	ldr	r3, .L191+108
	smull	r2, r3, r0, r3
	asr	fp, r0, #31
	rsb	r9, fp, r3, asr #1
	rsb	r3, r9, r9, lsl #4
	add	fp, r9, r3, lsl #3
	ldr	r3, .L191+12
	sub	r9, r0, fp
	ldr	r4, [r3]
	ldr	r7, .L191+20
	ldr	r8, .L191+16
	add	r10, r9, #20
	str	r3, [sp, #20]
	str	r10, [r7]
	str	r5, [r8]
	bl	foodColorUpdate
	cmp	r4, #0
	ble	.L163
	add	r3, r4, #20
	add	r2, r3, r9
	ldr	r3, [sp, #24]
	str	r7, [sp, #28]
	str	r8, [sp, #24]
	mov	r7, r0
	mov	r8, r10
	mov	fp, r2
	mov	r10, r3
	ldr	r5, .L191+112
	add	r4, r4, r3
.L162:
	mov	r9, r10
.L161:
	mov	r0, r9
	mov	r2, r7
	mov	r1, r8
	add	r9, r9, #1
	mov	lr, pc
	bx	r5
	cmp	r4, r9
	bne	.L161
	add	r8, r8, #1
	cmp	r8, fp
	bne	.L162
	ldr	r8, [sp, #24]
	ldr	r7, [sp, #28]
.L163:
	mov	r3, #0
	str	r3, [r6]
	b	.L159
.L190:
	ldr	r3, .L191+36
	ldr	r2, .L191+40
	b	.L165
.L192:
	.align	2
.L191:
	.word	foodGone
	.word	28633114
	.word	-1775253149
	.word	foodSize
	.word	foodX
	.word	foodY
	.word	drawUpdate
	.word	cHeight1
	.word	cWidth1
	.word	tamaHeight
	.word	tamaWidth
	.word	sizeIndex
	.word	tamaCol
	.word	.LANCHOR0
	.word	tamaRow
	.word	collision
	.word	cHeight2
	.word	cWidth2
	.word	cHeight3
	.word	cWidth3
	.word	cHeight4
	.word	cWidth4
	.word	bgColor
	.word	fillScreen
	.word	tamaSize
	.word	rand
	.word	458129845
	.word	70991195
	.word	setPixel
	.size	updateFoodPosition, .-updateFoodPosition
	.align	2
	.global	reset
	.syntax unified
	.arm
	.fpu softvfp
	.type	reset, %function
reset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initialize
	.size	reset, .-reset
	.global	__aeabi_dsub
	.align	2
	.global	checkTriangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkTriangle, %function
checkTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L200
	sub	sp, sp, #12
	mov	lr, pc
	bx	fp
	ldr	r3, .L200+4
	smull	r1, r2, r3, r0
	asr	r4, r0, #31
	rsb	r4, r4, r2, asr #4
	add	r4, r4, r4, lsl #2
	rsb	r4, r4, r4, lsl #4
	str	r3, [sp, #4]
	ldr	r5, .L200+8
	sub	r4, r0, r4, lsl #1
	b	.L195
.L196:
	mov	lr, pc
	bx	fp
	ldr	r3, [sp, #4]
	smull	r2, r3, r0, r3
	asr	r4, r0, #31
	rsb	r4, r4, r3, asr #4
	add	r4, r4, r4, lsl #2
	rsb	r4, r4, r4, lsl #4
	sub	r4, r0, r4, lsl #1
.L195:
	mov	r0, r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L200+12
	ldr	r10, [r3]
	mov	r6, r0
	mov	r0, r10
	mov	r7, r1
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r3, .L200+16
	ldr	ip, .L200+20
	mov	lr, pc
	bx	ip
	mov	r8, r0
	mov	r9, r1
	mov	r2, r8
	mov	r3, r9
	ldr	ip, .L200+24
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	ip
	mov	r2, #0
	mov	r3, #0
	ldr	ip, .L200+28
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L196
	mov	r2, r8
	mov	r3, r9
	ldr	ip, .L200+32
	mov	r0, r6
	mov	r1, r7
	mov	lr, pc
	bx	ip
	mov	r2, #0
	ldr	r3, .L200+36
	ldr	ip, .L200+40
	mov	lr, pc
	bx	ip
	cmp	r0, #0
	bne	.L196
	ldr	r5, .L200+44
	ldr	r1, [r5]
	cmp	r1, #160
	bgt	.L199
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L199:
	ldr	r6, .L200+48
	ldr	r3, .L200+52
	mov	r2, r10
	ldrh	r3, [r3]
	ldr	r0, [r6]
	bl	drawTriangle
	mvn	r3, #4
	str	r4, [r6]
	str	r3, [r5]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L201:
	.align	2
.L200:
	.word	rand
	.word	458129845
	.word	__aeabi_i2d
	.word	TriangleSize
	.word	1073217536
	.word	__aeabi_dmul
	.word	__aeabi_dsub
	.word	__aeabi_dcmplt
	.word	__aeabi_dadd
	.word	1080950784
	.word	__aeabi_dcmpgt
	.word	TriangleY
	.word	TriangleX
	.word	bgColor
	.size	checkTriangle, .-checkTriangle
	.align	2
	.global	update
	.syntax unified
	.arm
	.fpu softvfp
	.type	update, %function
update:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L211
	ldr	ip, .L211+4
	ldr	r2, [r1]
	str	lr, [sp, #-4]!
	str	r2, [ip]
	ldr	ip, .L211+8
	ldr	r0, .L211+12
	ldrh	ip, [ip, #48]
	ldr	r3, [r0]
	ldr	lr, .L211+16
	tst	ip, #64
	str	r3, [lr]
	bne	.L203
	ldr	lr, .L211+20
	ldr	ip, .L211+24
	ldr	lr, [lr]
	ldr	ip, [ip, lr, lsl #2]
	add	ip, r3, ip
	cmp	ip, #0
	subgt	r3, r3, #3
	strgt	r3, [r0]
.L203:
	ldr	r3, .L211+8
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L204
	ldr	ip, .L211+20
	ldr	r3, .L211+24
	ldr	ip, [ip]
	ldr	r3, [r3, ip, lsl #2]
	ldr	ip, [r0]
	rsb	r3, r3, #80
	cmp	ip, r3, lsl #1
	addlt	ip, ip, #3
	strlt	ip, [r0]
.L204:
	ldr	r3, .L211+8
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #5
	eor	r3, r3, #1
	cmp	r2, #0
	movle	r3, #0
	andgt	r3, r3, #1
	cmp	r3, #0
	ldr	r3, .L211+8
	ldrh	r3, [r3, #48]
	subne	r2, r2, #3
	strne	r2, [r1]
	tst	r3, #16
	bne	.L202
	ldr	r2, .L211+20
	ldr	r3, .L211+24
	ldr	r2, [r2]
	ldr	r3, [r3, r2, lsl #2]
	add	r3, r3, r3, lsr #31
	ldr	r2, [r1]
	asr	r3, r3, #1
	rsb	r3, r3, #239
	cmp	r3, r2
	addge	r2, r2, #3
	strge	r2, [r1]
.L202:
	ldr	lr, [sp], #4
	bx	lr
.L212:
	.align	2
.L211:
	.word	tamaCol
	.word	tamaOldCol
	.word	67109120
	.word	tamaRow
	.word	tamaOldRow
	.word	sizeIndex
	.word	.LANCHOR0
	.size	update, .-update
	.align	2
	.global	draw
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw, %function
draw:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L239
	ldr	r4, .L239+4
	ldr	r0, [r3]
	ldr	r3, [r4]
	cmp	r0, r3
	ldr	r5, .L239+8
	beq	.L231
.L214:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L232
	cmp	r3, #1
	beq	.L233
	cmp	r3, #2
	beq	.L234
	cmp	r3, #3
	beq	.L235
.L219:
	mov	r2, #1
	ldr	r3, .L239+12
	str	r2, [r3]
.L221:
	ldr	r3, .L239+16
	ldr	r4, .L239+20
	ldr	r3, [r3]
	ldr	r0, [r4]
	ldr	r2, .L239+24
	cmp	r3, r0
	ldr	r6, .L239+28
	ldr	r1, [r2]
	bne	.L224
	ldr	r2, [r6]
	cmp	r2, r1
	ldreq	r5, .L239+32
	beq	.L225
.L224:
	ldr	r2, .L239+36
	ldr	r5, .L239+32
	mov	r0, r3
	ldrh	r3, [r2]
	ldr	r2, [r5]
	bl	drawTriangle
	ldr	r0, [r4]
	ldr	r1, [r6]
.L225:
	ldr	r3, .L239+40
	ldr	r2, [r5]
	ldrh	r3, [r3]
	pop	{r4, r5, r6, lr}
	b	drawTriangle
.L231:
	ldr	r2, .L239+44
	ldr	r3, .L239+48
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L214
.L215:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L236
	cmp	r3, #1
	beq	.L237
	cmp	r3, #2
	beq	.L238
	cmp	r3, #3
	bne	.L219
	ldr	r3, .L239+48
	ldr	r2, .L239+52
	ldr	r1, [r3]
	ldr	r0, [r4]
	mov	r3, #0
	ldr	r2, [r2]
	bl	drawSprite4
	b	.L221
.L236:
	ldr	r3, .L239+48
	ldr	r2, .L239+52
	ldr	r1, [r3]
	ldr	r0, [r4]
	ldr	r2, [r2]
	ldr	r3, .L239+56
	bl	drawSprite1
	b	.L221
.L232:
	ldr	r3, .L239+36
	ldr	r2, .L239+52
	ldr	r1, .L239+44
	ldrh	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	bl	drawSprite1
	b	.L215
.L233:
	ldr	r3, .L239+36
	ldr	r2, .L239+52
	ldr	r1, .L239+44
	ldrh	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	bl	drawSprite2
	b	.L215
.L238:
	ldr	r3, .L239+48
	ldr	r2, .L239+52
	ldr	r1, [r3]
	ldr	r0, [r4]
	mov	r3, #31744
	ldr	r2, [r2]
	bl	drawSprite3
	b	.L221
.L237:
	ldr	r3, .L239+48
	ldr	r2, .L239+52
	ldr	r1, [r3]
	ldr	r0, [r4]
	ldr	r2, [r2]
	ldr	r3, .L239+60
	bl	drawSprite2
	b	.L221
.L234:
	ldr	r3, .L239+36
	ldr	r2, .L239+52
	ldr	r1, .L239+44
	ldrh	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	bl	drawSprite3
	b	.L215
.L235:
	ldr	r3, .L239+36
	ldr	r2, .L239+52
	ldr	r1, .L239+44
	ldrh	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	bl	drawSprite4
	b	.L215
.L240:
	.align	2
.L239:
	.word	tamaOldCol
	.word	tamaCol
	.word	drawUpdate
	.word	end
	.word	prevTriangleX
	.word	TriangleX
	.word	prevTriangleY
	.word	TriangleY
	.word	TriangleSize
	.word	bgColor
	.word	TriangleColor
	.word	tamaOldRow
	.word	tamaRow
	.word	tamaSize
	.word	1023
	.word	31775
	.size	draw, .-draw
	.align	2
	.global	endState
	.syntax unified
	.arm
	.fpu softvfp
	.type	endState, %function
endState:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L243
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L244:
	.align	2
.L243:
	.word	fillScreen
	.size	endState, .-endState
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L254
	mov	lr, pc
	bx	r3
	ldr	fp, .L254+4
	ldr	r4, .L254+8
	ldr	r10, .L254+12
	ldr	r9, .L254+16
	ldr	r8, .L254+20
	ldr	r7, .L254+24
	ldr	r5, .L254+28
	ldr	r6, .L254+32
.L247:
	ldrh	r3, [r4]
	strh	r3, [fp]	@ movhi
	ldr	r3, .L254+36
	ldrh	r3, [r3, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r3, .L254+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L254+44
	mov	lr, pc
	bx	r3
	ldr	r0, [r8]
	mvn	r3, r0
	cmp	r0, #0
	moveq	r3, #0
	ldr	r2, [r7]
	ldr	r1, .L254+48
	andne	r3, r3, #1
	cmp	r3, #0
	str	r2, [r1]
	ldr	r3, [r5]
	ldr	r2, .L254+52
	str	r3, [r2]
	addne	r3, r3, #4
	strne	r3, [r5]
	ldr	r3, .L254+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L254+60
	mov	lr, pc
	bx	r3
	ldr	r3, [r8]
	ldr	r2, [r6]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r8]
	beq	.L247
	mov	r0, #0
	ldr	r3, .L254+64
	mov	lr, pc
	bx	r3
	mov	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L255:
	.align	2
.L254:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	update
	.word	collisionDetect
	.word	time
	.word	TriangleX
	.word	TriangleY
	.word	end
	.word	67109120
	.word	checkTriangle
	.word	waitForVBlank
	.word	prevTriangleX
	.word	prevTriangleY
	.word	updateFoodPosition
	.word	draw
	.word	fillScreen
	.size	main, .-main
	.comm	cWidth4,4,4
	.comm	cHeight4,4,4
	.comm	cWidth3,4,4
	.comm	cHeight3,4,4
	.comm	cWidth2,4,4
	.comm	cHeight2,4,4
	.comm	cWidth1,4,4
	.comm	cHeight1,4,4
	.comm	end,4,4
	.global	t_size
	.comm	sizeIndex,4,4
	.comm	drawUpdate,4,4
	.comm	time,4,4
	.comm	foodGone,4,4
	.comm	foodSize,4,4
	.comm	foodY,4,4
	.comm	foodX,4,4
	.comm	food,4,4
	.comm	TriangleY,4,4
	.comm	TriangleX,4,4
	.comm	TriangleSize,4,4
	.comm	prevTriangleY,4,4
	.comm	prevTriangleX,4,4
	.comm	tamaHeight,4,4
	.comm	tamaWidth,4,4
	.comm	tamaSize,4,4
	.comm	tamaOldCol,4,4
	.comm	tamaOldRow,4,4
	.comm	tamaCol,4,4
	.comm	tamaRow,4,4
	.comm	bgColor,2,2
	.comm	foodColor,2,2
	.comm	tamaColor,2,2
	.comm	TriangleColor,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	screenHeight,4,4
	.comm	screenWidth,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	t_size, %object
	.size	t_size, 16
t_size:
	.word	25
	.word	35
	.word	45
	.word	15
	.ident	"GCC: (devkitARM release 53) 9.1.0"
