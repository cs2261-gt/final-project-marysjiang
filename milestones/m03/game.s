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
	.global	initPlayer
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #0
	mov	r5, #100
	mov	r4, #2
	mov	lr, #3
	mov	ip, #32
	ldr	r2, .L4
	ldr	r0, [r2]
	ldr	r2, .L4+4
	ldr	r3, .L4+8
	ldr	r2, [r2]
	add	r0, r0, r2
	ldr	r2, [r3, #24]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	lsl	r0, r0, #8
	rsb	r2, r2, #120
	str	r5, [r3]
	str	r4, [r3, #20]
	str	lr, [r3, #44]
	str	r0, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #4]
	str	r1, [r3, #16]
	str	r1, [r3, #32]
	str	r1, [r3, #40]
	str	r1, [r3, #36]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	ground
	.word	vOff
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
	ldr	r3, .L19
	ldr	r3, [r3]
	push	{r4, r5, r6, lr}
	ldr	r5, .L19+4
	cmp	r3, #0
	ldr	r4, [r5, #32]
	beq	.L7
	add	r3, r4, r4, lsl #4
	ldr	r2, .L19+8
	add	r3, r3, r3, lsl #8
	ldr	r1, .L19+12
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcc	.L18
.L8:
	ldr	r3, .L19+16
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L9
	ldr	r2, .L19+20
	ldrh	r2, [r2]
	ands	r2, r2, #16
	streq	r2, [r5, #36]
.L9:
	tst	r3, #32
	beq	.L10
	ldr	r3, .L19+20
	ldrh	r3, [r3]
	tst	r3, #32
	moveq	r3, #1
	streq	r3, [r5, #36]
.L10:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	tst	r4, #7
	bne	.L8
.L18:
	ldr	r0, [r5, #40]
	ldr	r3, .L19+24
	ldr	r1, [r5, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #40]
	b	.L8
.L20:
	.align	2
.L19:
	.word	usingNet
	.word	player
	.word	143165576
	.word	286331153
	.word	oldButtons
	.word	buttons
	.word	__aeabi_idivmod
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
	ldr	r3, .L55
	ldr	r0, .L55+4
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #16]
	ldr	ip, [r0]
	add	r0, r1, r2
	cmp	ip, r0, asr #8
	movle	r0, #0
	ldrle	ip, .L55+8
	push	{r4, r5, lr}
	strle	r0, [ip]
	asrle	ip, r1, #8
	ldr	r1, .L55+12
	ldrh	r1, [r1]
	movle	r2, r0
	strgt	r0, [r3, #8]
	asrgt	ip, r0, #8
	tst	r1, #64
	beq	.L24
	ldr	r0, .L55+16
	ldrh	r0, [r0]
	tst	r0, #64
	beq	.L53
.L24:
	add	r2, r2, #100
	tst	r1, #32
	str	r2, [r3, #16]
	ldr	r2, [r3, #12]
	beq	.L25
	ldr	r0, .L55+16
	ldrh	r0, [r0]
	tst	r0, #32
	bne	.L25
	ldr	r0, [r3, #4]
	cmp	r0, #0
	ble	.L26
	mov	r4, #1
	ldr	lr, .L55+20
	ldr	r0, [r3, #20]
	ldrh	r5, [lr, #48]
	ldr	lr, .L55+24
	sub	r2, r2, r0
	tst	r5, #32
	str	r2, [r3, #12]
	str	r4, [lr]
	beq	.L27
.L28:
	tst	r1, #16
	beq	.L29
.L54:
	ldr	r0, .L55+16
	ldrh	r0, [r0]
	ands	r0, r0, #16
	bne	.L29
	ldr	lr, [r3, #4]
	cmp	lr, #240
	bgt	.L30
	ldr	lr, .L55+20
	ldr	r4, [r3, #20]
	ldrh	r5, [lr, #48]
	ldr	lr, .L55+24
	add	r2, r2, r4
	tst	r5, #16
	str	r2, [r3, #12]
	str	r0, [lr]
	beq	.L31
.L32:
	tst	r1, #2
	beq	.L33
	ldr	r1, .L55+16
	ldrh	r1, [r1]
	tst	r1, #2
	bne	.L33
	ldr	r1, .L55+28
	ldr	r0, [r1]
	cmp	r0, #0
	moveq	lr, #1
	streq	r0, [r3, #40]
	streq	lr, [r1]
.L33:
	ldr	r1, .L55+32
	ldr	r1, [r1]
	pop	{r4, r5, lr}
	sub	r1, ip, r1
	stm	r3, {r1, r2}
	b	animatePlayer
.L25:
	ldr	r0, .L55+20
	ldrh	r0, [r0, #48]
	tst	r0, #32
	bne	.L28
	ldr	r0, [r3, #4]
	cmp	r0, #0
	ble	.L28
	ldr	r0, [r3, #20]
	ldr	lr, .L55+24
.L27:
	mov	r4, #1
	sub	r2, r2, r0
	tst	r1, #16
	str	r2, [r3, #12]
	str	r4, [lr]
	bne	.L54
.L29:
	ldr	r0, .L55+20
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L32
	ldr	r0, [r3, #4]
	cmp	r0, #240
	bgt	.L32
	ldr	r4, [r3, #20]
	ldr	lr, .L55+24
.L31:
	mov	r0, #0
	add	r2, r2, r4
	str	r2, [r3, #12]
	str	r0, [lr]
	b	.L32
.L53:
	ldr	r0, .L55+8
	ldr	lr, [r0]
	cmp	lr, #0
	moveq	lr, #1
	subeq	r2, r2, #1488
	streq	lr, [r0]
	subeq	r2, r2, #12
	b	.L24
.L30:
	ldr	r0, .L55+20
	ldrh	r0, [r0, #48]
	b	.L32
.L26:
	ldr	r0, .L55+20
	ldrh	r0, [r0, #48]
	b	.L28
.L56:
	.align	2
.L55:
	.word	player
	.word	ground
	.word	jumping
	.word	oldButtons
	.word	buttons
	.word	67109120
	.word	direction
	.word	usingNet
	.word	vOff
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
	ldr	r3, .L64
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L58
	ldr	r3, .L64+4
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	ldr	r1, .L64+8
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	str	lr, [sp, #-4]!
	mvn	r2, r2, lsr #17
	mov	lr, #32
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #36]
	ldr	ip, [r1]
	add	r3, r3, r0, lsl #5
	ldr	r0, .L64+12
	lsl	r3, r3, #2
	str	lr, [r1, #24]
	strh	r2, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L58:
	ldr	r1, .L64+8
	ldr	r3, [r1, #4]
	sub	r3, r3, #16
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	add	r2, r1, #36
	ldm	r2, {r2, ip}
	ldr	r0, [r1]
	add	ip, ip, #3
	ldr	r1, .L64+12
	add	r2, r2, ip, lsl #4
	orr	r0, r0, #16384
	lsl	r2, r2, #3
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	bx	lr
.L65:
	.align	2
.L64:
	.word	usingNet
	.word	cheat
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
	mov	lr, #95
	mov	r1, #32
	mov	ip, #10
	mov	r0, #2
	ldr	r3, .L68
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #44]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #40]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	ldr	lr, [sp], #4
	bx	lr
.L69:
	.align	2
.L68:
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
	ldr	r3, .L77
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldm	r3, {r2, r3}
	sub	sp, sp, #20
	ldr	r4, .L77+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r5, .L77+8
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, .L77+12
	ldr	r5, [r4, #32]
	strne	r2, [r3]
	tst	r5, #7
	bne	.L72
	ldr	r0, [r4, #40]
	ldr	r3, .L77+16
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L72:
	add	r5, r5, #1
	str	r5, [r4, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	player
	.word	bees
	.word	collision
	.word	livesRemaining
	.word	__aeabi_idivmod
	.size	updateBees, .-updateBees
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
	ldr	r5, .L82
	ldr	r4, [r5, #32]
	tst	r4, #7
	bne	.L80
	ldr	r0, [r5, #40]
	ldr	r3, .L82+4
	ldr	r1, [r5, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #40]
.L80:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L83:
	.align	2
.L82:
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
	ldr	r1, .L85
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #36]
	add	r3, r3, r0, lsl #5
	ldr	r1, [r1]
	ldr	r0, .L85+4
	add	r3, r3, #10
	lsl	r3, r3, #2
	strh	r3, [r0, #12]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r2, [r0, #10]	@ movhi
	bx	lr
.L86:
	.align	2
.L85:
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #0
	mov	r6, #124
	mov	r8, r9
	ldr	r4, .L91
	ldr	r7, .L91+4
	ldr	r10, .L91+8
	ldr	r5, .L91+12
.L88:
	stm	r4, {r6, r8}
	mov	lr, pc
	bx	r7
	mov	r2, #1
	mov	r1, #8
	smull	ip, r3, r5, r0
	add	ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #7
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #4
	ldr	r3, [r10]
	add	r3, r3, #240
	add	r0, r3, r0
	cmp	r9, r2
	str	r8, [r4, #16]
	str	r8, [r4, #52]
	str	r0, [r4, #12]
	str	r2, [r4, #20]
	str	r2, [r4, #48]
	str	r1, [r4, #24]
	str	r1, [r4, #28]
	add	r4, r4, #56
	bne	.L89
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L89:
	mov	r9, r2
	b	.L88
.L92:
	.align	2
.L91:
	.word	rocks
	.word	rand
	.word	hOff
	.word	-2004318071
	.size	initRocks, .-initRocks
	.align	2
	.global	generateRock
	.syntax unified
	.arm
	.fpu softvfp
	.type	generateRock, %function
generateRock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L101
	ldr	r5, [r4, #48]
	cmp	r5, #0
	beq	.L94
	ldr	r3, [r4, #104]
	cmp	r3, #0
	beq	.L100
.L93:
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	mov	r5, #1
.L94:
	ldr	r3, .L101+4
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, #0
	ldr	r2, .L101+8
	smull	r3, r2, r0, r2
	ldr	r3, .L101+12
	add	lr, r2, r0
	asr	r2, r0, #31
	ldr	r3, [r3]
	rsb	r2, r2, lr, asr #7
	rsb	r2, r2, r2, lsl #4
	rsb	r5, r5, r5, lsl #3
	sub	r0, r0, r2, lsl #4
	add	r3, r3, #240
	add	r4, r4, r5, lsl #3
	add	r0, r3, r0
	str	ip, [r4, #48]
	str	r1, [r4, #52]
	str	r0, [r4, #12]
	str	r0, [r4, #4]
	b	.L93
.L102:
	.align	2
.L101:
	.word	rocks
	.word	rand
	.word	-2004318071
	.word	hOff
	.size	generateRock, .-generateRock
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
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	beq	.L105
	ldr	r0, [r0, #4]
	cmp	r0, #0
	ble	.L115
.L106:
	ldr	r5, .L116
	add	r1, r5, #24
	ldm	r1, {r1, ip}
	ldm	r5, {r2, r3}
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r6, .L116+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L105
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L105
	mov	ip, #1
	ldr	r0, .L116+8
	ldr	r3, [r0]
	ldr	r1, .L116+12
	sub	r3, r3, #1
	str	r3, [r0]
	rsb	r3, r3, r3, lsl #3
	add	r3, r1, r3, lsl #3
	ldr	r1, [r5, #12]
	sub	r1, r1, #25
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r2, [r3, #48]
.L105:
	ldr	r3, .L116+16
	ldr	r3, [r3]
	ldr	r2, [r4, #12]
	add	r3, r3, r3, lsr #31
	sub	r3, r2, r3, asr #1
	str	r3, [r4, #4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L115:
	mov	r3, #0
	str	r3, [r4, #48]
	bl	generateRock
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L105
	ldr	r0, [r4, #4]
	b	.L106
.L117:
	.align	2
.L116:
	.word	player
	.word	collision
	.word	livesRemaining
	.word	hearts
	.word	hOff
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
	@ link register save eliminated.
	ldr	r3, .L127
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L119
	mov	ip, #8
	ldr	r2, .L127+4
	ldm	r3, {r0, r1}
	strh	ip, [r2, #20]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #18]	@ movhi
.L119:
	ldr	r2, [r3, #104]
	cmp	r2, #0
	bxeq	lr
	mov	r0, #8
	add	r1, r3, #56
	ldr	r2, .L127+4
	ldm	r1, {r1, r3}
	strh	r0, [r2, #28]	@ movhi
	strh	r1, [r2, #24]	@ movhi
	strh	r3, [r2, #26]	@ movhi
	bx	lr
.L128:
	.align	2
.L127:
	.word	rocks
	.word	shadowOAM
	.size	drawRocks, .-drawRocks
	.align	2
	.global	initBugs
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBugs, %function
initBugs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #0
	mov	r6, #118
	mov	r8, r9
	ldr	r4, .L133
	ldr	r7, .L133+4
	ldr	r10, .L133+8
	ldr	r5, .L133+12
.L130:
	stm	r4, {r6, r8}
	mov	lr, pc
	bx	r7
	mov	r2, #1
	mov	r1, #16
	smull	ip, r3, r5, r0
	add	ip, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #7
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #4
	ldr	r3, [r10]
	add	r3, r3, #240
	add	r0, r3, r0
	cmp	r9, r2
	str	r8, [r4, #16]
	str	r8, [r4, #52]
	str	r0, [r4, #12]
	str	r2, [r4, #20]
	str	r2, [r4, #48]
	str	r1, [r4, #24]
	str	r1, [r4, #28]
	add	r4, r4, #56
	bne	.L131
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L131:
	mov	r9, r2
	b	.L130
.L134:
	.align	2
.L133:
	.word	bugs
	.word	rand
	.word	hOff
	.word	-2004318071
	.size	initBugs, .-initBugs
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
	mov	r3, #16384
	ldr	r4, .L139
	mov	r0, #3
	ldr	r2, .L139+4
	ldr	r1, .L139+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L139+12
	ldr	r1, .L139+16
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	ip, #3
	mov	r1, #100
	mov	r5, #1
	ldr	r2, .L139+20
	ldr	r3, .L139+24
	str	r4, [r2]
	str	r4, [r3]
	ldr	lr, .L139+28
	ldr	r0, .L139+32
	ldr	r2, .L139+36
	ldr	r3, .L139+40
	str	r4, [lr]
	str	r4, [r0]
	ldr	lr, .L139+44
	ldr	r0, .L139+48
	str	r4, [r2]
	str	r4, [r3]
	ldr	r2, .L139+52
	ldr	r3, .L139+56
	str	ip, [r0]
	str	r4, [lr]
	str	r1, [r2]
	mov	r6, #10
	str	r5, [r3]
	bl	initPlayer
	mov	r2, #32
	mov	r0, #95
	mov	r1, #2
	ldr	r3, .L139+60
	str	r0, [r3]
	str	r1, [r3, #44]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r4, [r3, #32]
	str	r4, [r3, #40]
	str	r6, [r3, #4]
	bl	initRocks
	bl	initBugs
	mov	ip, r6
	mov	r0, r5
	mov	r2, #165
	mov	r1, #16
	mov	lr, #4
	ldr	r3, .L139+64
.L136:
	str	r2, [r3, #4]
	add	r2, r2, #20
	cmp	r2, #225
	str	ip, [r3]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #40]
	str	lr, [r3, #44]
	str	r0, [r3, #48]
	add	r3, r3, #56
	bne	.L136
	pop	{r4, r5, r6, lr}
	bx	lr
.L140:
	.align	2
.L139:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	direction
	.word	usingNet
	.word	netTimer
	.word	bugsCaught
	.word	cheat
	.word	vOff
	.word	hOff
	.word	livesRemaining
	.word	ground
	.word	jumping
	.word	bees
	.word	hearts
	.size	initGame, .-initGame
	.align	2
	.global	generateBug
	.syntax unified
	.arm
	.fpu softvfp
	.type	generateBug, %function
generateBug:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L149
	ldr	r5, [r4, #48]
	cmp	r5, #0
	beq	.L142
	ldr	r3, [r4, #104]
	cmp	r3, #0
	beq	.L148
.L141:
	pop	{r4, r5, r6, lr}
	bx	lr
.L148:
	mov	r5, #1
.L142:
	ldr	r3, .L149+4
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, #0
	ldr	r2, .L149+8
	smull	r3, r2, r0, r2
	ldr	r3, .L149+12
	add	lr, r2, r0
	asr	r2, r0, #31
	ldr	r3, [r3]
	rsb	r2, r2, lr, asr #7
	rsb	r2, r2, r2, lsl #4
	rsb	r5, r5, r5, lsl #3
	sub	r0, r0, r2, lsl #4
	add	r3, r3, #240
	add	r4, r4, r5, lsl #3
	add	r0, r3, r0
	str	ip, [r4, #48]
	str	r1, [r4, #52]
	str	r0, [r4, #12]
	str	r0, [r4, #4]
	b	.L141
.L150:
	.align	2
.L149:
	.word	bugs
	.word	rand
	.word	-2004318071
	.word	hOff
	.size	generateBug, .-generateBug
	.align	2
	.global	updateBugs
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBugs, %function
updateBugs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #16
	beq	.L153
	ldr	r0, [r0, #4]
	cmp	r0, #0
	ble	.L170
.L154:
	ldr	r5, .L171
	add	r1, r5, #24
	ldm	r1, {r1, ip}
	ldm	r5, {r2, r3}
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r6, .L171+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L156
	ldr	r2, .L171+8
	ldr	r3, [r4, #52]
	ldr	r2, [r2]
	orrs	r3, r3, r2
	bne	.L156
	mov	ip, #1
	ldr	r0, .L171+12
	ldr	r2, [r0]
	ldr	r1, .L171+16
	sub	r2, r2, #1
	str	r2, [r0]
	rsb	r2, r2, r2, lsl #3
	add	r2, r1, r2, lsl #3
	ldr	r1, [r5, #12]
	sub	r1, r1, #25
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r3, [r2, #48]
.L153:
	ldr	r3, .L171+20
	ldr	r3, [r3]
	ldr	r2, [r4, #12]
	add	r3, r3, r3, lsr #31
	sub	r3, r2, r3, asr #1
	str	r3, [r4, #4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L156:
	ldm	r5, {r2, r3}
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L153
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L153
	ldr	r2, .L171+8
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L153
	ldr	r1, .L171+24
	ldr	r2, [r1]
	str	r3, [r4, #48]
	add	r3, r2, #1
	str	r3, [r1]
	bl	generateBug
	b	.L153
.L170:
	mov	r3, #0
	str	r3, [r4, #48]
	bl	generateBug
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L153
	ldr	r0, [r4, #4]
	b	.L154
.L172:
	.align	2
.L171:
	.word	player
	.word	collision
	.word	usingNet
	.word	livesRemaining
	.word	hearts
	.word	hOff
	.word	bugsCaught
	.size	updateBugs, .-updateBugs
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
	ldr	r1, .L187
	ldr	r2, .L187+4
	ldr	r3, [r1]
	cmp	r3, #0
	ldr	r3, [r2]
	addne	r3, r3, #1
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	strne	r3, [r2]
	cmp	r3, #33
	moveq	r3, #0
	streq	r3, [r1]
	streq	r3, [r2]
	bl	updatePlayer
	bl	updateBees
	ldr	r0, .L187+8
	bl	updateRocks
	ldr	r0, .L187+12
	bl	updateRocks
	ldr	r0, .L187+16
	bl	updateBugs
	ldr	r0, .L187+20
	bl	updateBugs
	ldr	r4, .L187+24
	ldr	r8, .L187+28
	ldr	r7, .L187+32
	ldr	r9, .L187+36
	add	r6, r4, #168
.L178:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L176
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	bcs	.L177
	add	r0, r4, #40
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #40]
.L177:
	add	r5, r5, #1
	str	r5, [r4, #32]
.L176:
	add	r4, r4, #56
	cmp	r6, r4
	bne	.L178
	ldr	r2, .L187+40
	ldr	r3, [r2]
	add	r3, r3, #3
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L188:
	.align	2
.L187:
	.word	usingNet
	.word	netTimer
	.word	rocks
	.word	rocks+56
	.word	bugs
	.word	bugs+56
	.word	hearts
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.word	hOff
	.size	updateGame, .-updateGame
	.align	2
	.global	drawBugs
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBugs, %function
drawBugs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L194
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bne	.L190
	mov	r1, #512
	ldr	r2, .L194+4
	strh	r1, [r2, #48]	@ movhi
.L191:
	ldr	r1, [r3, #104]
	cmp	r1, #0
	moveq	r3, #512
	movne	r0, #14
	ldrne	r1, [r3, #60]
	ldrne	ip, [r3, #56]
	orrne	r3, r1, #16384
	strheq	r3, [r2, #56]	@ movhi
	strhne	r3, [r2, #58]	@ movhi
	strhne	ip, [r2, #56]	@ movhi
	strhne	r0, [r2, #60]	@ movhi
	bx	lr
.L190:
	mov	r0, #14
	ldr	r1, [r3, #4]
	ldr	r2, .L194+4
	ldr	ip, [r3]
	orr	r1, r1, #16384
	strh	r1, [r2, #50]	@ movhi
	strh	ip, [r2, #48]	@ movhi
	strh	r0, [r2, #52]	@ movhi
	b	.L191
.L195:
	.align	2
.L194:
	.word	bugs
	.word	shadowOAM
	.size	drawBugs, .-drawBugs
	.align	2
	.global	initHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHearts, %function
initHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #165
	mov	r4, #10
	mov	r0, #16
	mov	r1, #0
	mov	lr, #4
	mov	ip, #1
	ldr	r3, .L200
.L197:
	str	r2, [r3, #4]
	add	r2, r2, #20
	cmp	r2, #225
	str	r4, [r3]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #32]
	str	r1, [r3, #36]
	str	r1, [r3, #40]
	str	lr, [r3, #44]
	str	ip, [r3, #48]
	add	r3, r3, #56
	bne	.L197
	pop	{r4, lr}
	bx	lr
.L201:
	.align	2
.L200:
	.word	hearts
	.size	initHearts, .-initHearts
	.align	2
	.global	updateHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHearts, %function
updateHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #48]
	cmp	r3, #0
	bxeq	lr
	push	{r4, r5, r6, lr}
	ldr	r5, [r0, #32]
	add	r3, r5, r5, lsl #4
	ldr	r2, .L212
	add	r3, r3, r3, lsl #8
	ldr	r1, .L212+4
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	mov	r4, r0
	bcs	.L204
	ldr	r0, [r0, #40]
	ldr	r3, .L212+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L204:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L213:
	.align	2
.L212:
	.word	143165576
	.word	286331153
	.word	__aeabi_idivmod
	.size	updateHearts, .-updateHearts
	.align	2
	.global	drawHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHearts, %function
drawHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #512
	ldr	r3, .L220
	ldr	r2, .L220+4
	add	ip, r3, #168
.L217:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	strheq	r4, [r2, #32]	@ movhi
	beq	.L216
	add	r1, r3, #36
	ldm	r1, {r1, lr}
	ldr	r0, [r3, #4]
	add	r1, r1, #6
	add	r1, r1, lr, lsl #5
	ldr	lr, [r3]
	lsl	r1, r1, #1
	orr	r0, r0, #16384
	strh	r1, [r2, #36]	@ movhi
	strh	r0, [r2, #34]	@ movhi
	strh	lr, [r2, #32]	@ movhi
.L216:
	add	r3, r3, #56
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L217
	pop	{r4, lr}
	bx	lr
.L221:
	.align	2
.L220:
	.word	hearts
	.word	shadowOAM
	.size	drawHearts, .-drawHearts
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
	bl	drawPlayer
	ldr	r0, .L236
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #17
	ldr	ip, .L236+4
	add	r2, r0, #36
	mvn	r1, r1, lsr #17
	ldm	r2, {r2, r3}
	ldr	lr, [ip, #48]
	ldr	r0, [r0]
	add	r2, r2, r3, lsl #5
	ldr	r3, .L236+8
	cmp	lr, #0
	strh	r0, [r3, #8]	@ movhi
	movne	r0, #8
	add	r2, r2, #10
	lsl	r2, r2, #2
	strh	r2, [r3, #12]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	ldmne	ip, {r1, r2}
	strhne	r2, [r3, #18]	@ movhi
	ldr	r2, [ip, #104]
	strhne	r0, [r3, #20]	@ movhi
	strhne	r1, [r3, #16]	@ movhi
	cmp	r2, #0
	beq	.L224
	mov	r0, #8
	add	r1, ip, #56
	ldm	r1, {r1, r2}
	strh	r0, [r3, #28]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
.L224:
	ldr	r2, .L236+12
	ldr	r1, [r2, #48]
	cmp	r1, #0
	moveq	r1, #512
	movne	ip, #14
	ldmne	r2, {r0, r1}
	orrne	r1, r1, #16384
	strheq	r1, [r3, #48]	@ movhi
	strhne	r1, [r3, #50]	@ movhi
	ldr	r1, [r2, #104]
	strhne	ip, [r3, #52]	@ movhi
	strhne	r0, [r3, #48]	@ movhi
	cmp	r1, #0
	moveq	r2, #512
	movne	r0, #14
	ldrne	r1, [r2, #60]
	ldrne	ip, [r2, #56]
	orrne	r2, r1, #16384
	strheq	r2, [r3, #56]	@ movhi
	strhne	r2, [r3, #58]	@ movhi
	strhne	ip, [r3, #56]	@ movhi
	strhne	r0, [r3, #60]	@ movhi
	bl	drawHearts
	mov	r3, #67108864
	ldr	r2, .L236+16
	ldrh	r1, [r2]
	ldr	r2, .L236+20
	ldrh	r2, [r2]
	strh	r1, [r3, #22]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L237:
	.align	2
.L236:
	.word	bees
	.word	rocks
	.word	shadowOAM
	.word	bugs
	.word	vOff
	.word	hOff
	.size	drawGame, .-drawGame
	.comm	direction,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	shadowOAM,1024,4
	.comm	hearts,168,4
	.comm	bugs,112,4
	.comm	rocks,112,4
	.comm	bees,56,4
	.comm	jumping,4,4
	.comm	ground,4,4
	.comm	cheat,4,4
	.comm	bugsCaught,4,4
	.comm	netTimer,4,4
	.comm	usingNet,4,4
	.comm	livesRemaining,4,4
	.comm	player,56,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
