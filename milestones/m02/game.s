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
	.type	updateRocks.part.0, %function
updateRocks.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L8
	add	r4, r3, #16
	ldm	r4, {r4, r5}
	ldr	lr, [r3]
	ldr	ip, [r3, #4]
	sub	sp, sp, #20
	add	r2, r0, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r0]
	ldr	r0, [r0, #4]
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	str	r5, [sp, #12]
	ldr	r4, .L8+4
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, .L8+8
	strne	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.word	collision
	.word	livesRemaining
	.size	updateRocks.part.0, .-updateRocks.part.0
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
	mov	r0, #3
	ldr	r4, .L14
	mov	r3, #16384
	ldr	r2, .L14+4
	ldr	r1, .L14+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L14+12
	ldr	r1, .L14+16
	mov	lr, pc
	bx	r4
	mov	r0, #115
	mov	r4, #1
	mov	r1, #0
	ldr	r2, .L14+20
	str	r0, [r2]
	ldr	r0, [r2, #16]
	add	r0, r0, r0, lsr #31
	asr	r0, r0, r4
	rsb	r0, r0, #120
	str	r0, [r2, #4]
	ldr	r0, .L14+24
	str	r1, [r0]
	ldr	r0, .L14+28
	mov	r5, #32
	mov	r10, #2
	mov	r9, #3
	ldr	r6, .L14+32
	str	r1, [r2, #8]
	str	r1, [r2, #24]
	str	r1, [r2, #32]
	str	r1, [r2, #28]
	mov	fp, #110
	mov	lr, r1
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r1, [r0, #24]
	str	r1, [r0, #32]
	mov	r1, #10
	mov	r3, r6
	mov	r8, #140
	mov	r7, #230
	mov	ip, #8
	str	r10, [r2, #12]
	str	r5, [r2, #16]
	str	r5, [r2, #20]
	str	r9, [r2, #36]
	ldr	r2, .L14+36
	str	r10, [r0, #36]
	str	fp, [r0]
	str	r1, [r0, #4]
	str	r5, [r0, #16]
	str	r5, [r0, #20]
	str	r9, [r2]
	add	r2, r6, #144
.L11:
	str	r8, [r3]
	str	r4, [r3, #12]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	lr, [r3, #40]
	stmib	r3, {r7, lr}
	add	r3, r3, #48
	cmp	r3, r2
	bne	.L11
	str	r4, [r6, #40]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	DMANow
	.word	100728832
	.word	spritesheetNetTiles
	.word	83886592
	.word	spritesheetNetPal
	.word	player
	.word	direction
	.word	bees
	.word	rocks
	.word	livesRemaining
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
	ldr	r1, .L24
	push	{r4, r5, r6, lr}
	mov	r2, r1
	mov	r4, #8
	ldr	ip, .L24+4
	ldr	r0, [ip, #32]
	ldr	r3, [ip, #28]
	add	r3, r3, r0, lsl #5
	ldr	lr, .L24+8
	add	r3, r3, #10
	lsl	r3, r3, #2
	ldr	r6, [lr, #32]
	ldr	r0, [lr, #28]
	strh	r3, [r1, #12]	@ movhi
	ldr	r3, [lr]
	add	r0, r0, r6, lsl #5
	strh	r3, [r1]	@ movhi
	ldr	r6, .L24+12
	ldr	r3, [ip, #4]
	ldr	r5, [lr, #4]
	orr	r3, r3, r6
	ldr	ip, [ip]
	strh	r3, [r1, #10]	@ movhi
	orr	lr, r5, r6
	ldr	r3, .L24+16
	lsl	r0, r0, #2
	strh	lr, [r1, #2]	@ movhi
	strh	ip, [r1, #8]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	add	r0, r3, #144
.L18:
	ldr	r1, [r3, #40]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #48
	strhne	r4, [r2, #20]	@ movhi
	strhne	ip, [r2, #16]	@ movhi
	strhne	r1, [r2, #18]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L18
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	shadowOAM
	.word	bees
	.word	player
	.word	-32768
	.word	rocks
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
	mov	r1, #0
	mov	r4, #115
	mov	lr, #2
	mov	r0, #32
	mov	ip, #3
	ldr	r3, .L28
	ldr	r2, [r3, #16]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	rsb	r2, r2, #120
	str	r4, [r3]
	str	lr, [r3, #12]
	str	r2, [r3, #4]
	str	ip, [r3, #36]
	str	r1, [r3, #8]
	str	r1, [r3, #24]
	str	r1, [r3, #32]
	str	r1, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	player
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L41
	ldr	r5, [r4, #24]
	tst	r5, #7
	bne	.L31
	ldr	r0, [r4, #32]
	ldr	r3, .L41+4
	ldr	r1, [r4, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L31:
	ldr	r3, .L41+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L32
	ldr	r2, .L41+12
	ldrh	r2, [r2]
	ands	r2, r2, #16
	streq	r2, [r4, #28]
.L32:
	tst	r3, #32
	beq	.L33
	ldr	r3, .L41+12
	ldrh	r3, [r3]
	tst	r3, #32
	moveq	r3, #1
	streq	r3, [r4, #28]
.L33:
	add	r5, r5, #1
	str	r5, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	player
	.word	__aeabi_idivmod
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L57
	ldrh	r3, [r3]
	tst	r3, #32
	str	lr, [sp, #-4]!
	beq	.L44
	ldr	r2, .L57+4
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L44
	ldr	r1, .L57+8
	ldr	r2, [r1, #4]
	cmp	r2, #0
	ble	.L45
	mov	ip, #1
	ldr	lr, [r1, #12]
	ldr	r0, .L57+12
	sub	r2, r2, lr
	str	r2, [r1, #4]
	str	ip, [r0]
.L44:
	ldr	r2, .L57+16
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L46
	ldr	r1, .L57+8
	ldr	r2, [r1, #4]
	cmp	r2, #0
	ble	.L46
	mov	ip, #1
	ldr	lr, [r1, #12]
	ldr	r0, .L57+12
	sub	r2, r2, lr
	str	r2, [r1, #4]
	str	ip, [r0]
.L46:
	tst	r3, #16
	beq	.L47
	ldr	r3, .L57+4
	ldrh	r3, [r3]
	ands	r3, r3, #16
	bne	.L47
	ldr	r2, .L57+8
	ldr	r1, [r2, #4]
	cmp	r1, #240
	bgt	.L48
	ldr	r0, [r2, #12]
	ldr	ip, .L57+12
	add	r1, r0, r1
	str	r1, [r2, #4]
	str	r3, [ip]
.L47:
	ldr	r3, .L57+16
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	bne	.L49
	ldr	r2, .L57+8
	ldr	r1, [r2, #4]
	cmp	r1, #240
	ldrle	r0, [r2, #12]
	ldrle	ip, .L57+12
	addle	r1, r0, r1
	strle	r1, [r2, #4]
	strle	r3, [ip]
.L49:
	ldr	lr, [sp], #4
	b	animatePlayer
.L48:
	ldr	r3, .L57+16
	ldr	lr, [sp], #4
	ldrh	r3, [r3, #48]
	b	animatePlayer
.L45:
	ldr	r2, .L57+16
	ldrh	r2, [r2, #48]
	b	.L46
.L58:
	.align	2
.L57:
	.word	oldButtons
	.word	buttons
	.word	player
	.word	direction
	.word	67109120
	.size	updatePlayer, .-updatePlayer
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
	ldr	r1, .L60
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	add	r3, r1, #28
	ldm	r3, {r3, ip}
	ldr	r0, .L60+4
	ldr	r1, [r1]
	add	r3, r3, ip, lsl #5
	lsl	r3, r3, #2
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	bx	lr
.L61:
	.align	2
.L60:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBees
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBees, %function
initBees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #110
	mov	r1, #32
	mov	ip, #10
	mov	r0, #2
	ldr	r3, .L64
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #36]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #32]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L65:
	.align	2
.L64:
	.word	bees
	.size	initBees, .-initBees
	.align	2
	.global	updateBees
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBees, %function
updateBees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L73
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #16]
	ldm	r3, {r2, r3}
	sub	sp, sp, #20
	ldr	r4, .L73+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r5, .L73+8
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, .L73+12
	ldr	r5, [r4, #24]
	strne	r2, [r3]
	tst	r5, #7
	bne	.L68
	ldr	r0, [r4, #32]
	ldr	r3, .L73+16
	ldr	r1, [r4, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L68:
	add	r5, r5, #1
	str	r5, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	player
	.word	bees
	.word	collision
	.word	livesRemaining
	.word	__aeabi_idivmod
	.size	updateBees, .-updateBees
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
	ldr	r4, .L89
	bl	updatePlayer
	bl	updateBees
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L86
	ldr	r3, [r4, #88]
	cmp	r3, #0
	bne	.L87
.L77:
	ldr	r3, [r4, #136]
	cmp	r3, #0
	bne	.L88
.L75:
	pop	{r4, lr}
	bx	lr
.L86:
	mov	r0, r4
	bl	updateRocks.part.0
	ldr	r3, [r4, #88]
	cmp	r3, #0
	beq	.L77
.L87:
	ldr	r0, .L89+4
	bl	updateRocks.part.0
	ldr	r3, [r4, #136]
	cmp	r3, #0
	beq	.L75
.L88:
	ldr	r0, .L89+8
	pop	{r4, lr}
	b	updateRocks.part.0
.L90:
	.align	2
.L89:
	.word	rocks
	.word	rocks+48
	.word	rocks+96
	.size	updateGame, .-updateGame
	.align	2
	.global	animateBees
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBees, %function
animateBees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L94
	ldr	r4, [r5, #24]
	tst	r4, #7
	bne	.L92
	ldr	r0, [r5, #32]
	ldr	r3, .L94+4
	ldr	r1, [r5, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #32]
.L92:
	add	r4, r4, #1
	str	r4, [r5, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	bees
	.word	__aeabi_idivmod
	.size	animateBees, .-animateBees
	.align	2
	.global	drawBees
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBees, %function
drawBees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L97
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #32]
	ldr	r3, [r1, #28]
	add	r3, r3, r0, lsl #5
	ldr	r1, [r1]
	ldr	r0, .L97+4
	add	r3, r3, #10
	lsl	r3, r3, #2
	strh	r3, [r0, #12]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r2, [r0, #10]	@ movhi
	bx	lr
.L98:
	.align	2
.L97:
	.word	bees
	.word	shadowOAM
	.size	drawBees, .-drawBees
	.align	2
	.global	initRocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initRocks, %function
initRocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L103
	push	{r4, r5, lr}
	mov	r3, ip
	mov	r5, #140
	mov	r4, #230
	mov	r1, #0
	mov	r0, #1
	mov	r2, #8
	add	lr, ip, #144
.L100:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r1, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #40]
	add	r3, r3, #48
	cmp	r3, lr
	bne	.L100
	str	r0, [ip, #40]
	pop	{r4, r5, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	rocks
	.size	initRocks, .-initRocks
	.align	2
	.global	updateRocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateRocks, %function
updateRocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #40]
	cmp	r3, #0
	bxeq	lr
	b	updateRocks.part.0
	.size	updateRocks, .-updateRocks
	.align	2
	.global	drawRocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRocks, %function
drawRocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #8
	ldr	r3, .L115
	ldr	r2, .L115+4
	add	r0, r3, #144
.L109:
	ldr	r1, [r3, #40]
	cmp	r1, #0
	ldrne	ip, [r3]
	ldrne	r1, [r3, #4]
	add	r3, r3, #48
	strhne	lr, [r2, #20]	@ movhi
	strhne	ip, [r2, #16]	@ movhi
	strhne	r1, [r2, #18]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L109
	ldr	lr, [sp], #4
	bx	lr
.L116:
	.align	2
.L115:
	.word	rocks
	.word	shadowOAM
	.size	drawRocks, .-drawRocks
	.comm	direction,4,4
	.comm	shadowOAM,1024,4
	.comm	rocks,144,4
	.comm	bees,48,4
	.comm	livesRemaining,4,4
	.comm	player,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
