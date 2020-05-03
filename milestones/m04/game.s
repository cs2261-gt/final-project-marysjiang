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
	ldr	r3, .L19+24
	smull	r2, r3, r4, r3
	sub	r3, r3, r4, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r4, r3, lsl #1
	bne	.L8
.L18:
	ldr	r0, [r5, #40]
	ldr	r3, .L19+28
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
	.word	715827883
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
	mov	ip, #25
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
	ldr	r3, .L78
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldm	r3, {r2, r3}
	sub	sp, sp, #20
	ldr	r4, .L78+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r5, .L78+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L77
.L71:
	ldr	r5, [r4, #32]
	tst	r5, #7
	bne	.L72
	ldr	r0, [r4, #40]
	ldr	r3, .L78+12
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
.L77:
	mov	r2, #0
	ldr	r3, .L78+16
	ldr	r1, .L78+20
	ldr	r0, .L78+24
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L78+28
	str	r2, [r3]
	b	.L71
.L79:
	.align	2
.L78:
	.word	player
	.word	bees
	.word	collision
	.word	__aeabi_idivmod
	.word	playSoundB
	.word	16239
	.word	bugBite
	.word	livesRemaining
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
	ldr	r5, .L83
	ldr	r4, [r5, #32]
	tst	r4, #7
	bne	.L81
	ldr	r0, [r5, #40]
	ldr	r3, .L83+4
	ldr	r1, [r5, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #40]
.L81:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
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
	ldr	r1, .L86
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #36]
	add	r3, r3, r0, lsl #5
	ldr	r1, [r1]
	ldr	r0, .L86+4
	add	r3, r3, #10
	lsl	r3, r3, #2
	strh	r3, [r0, #12]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r2, [r0, #10]	@ movhi
	bx	lr
.L87:
	.align	2
.L86:
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
	mov	r6, #117
	mov	r8, r9
	ldr	r4, .L92
	ldr	r7, .L92+4
	ldr	r10, .L92+8
	ldr	r5, .L92+12
.L89:
	stm	r4, {r6, r8}
	mov	lr, pc
	bx	r7
	mov	r2, #1
	mov	r1, #16
	smull	r3, ip, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #7
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #2
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
	bne	.L90
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L90:
	mov	r9, r2
	b	.L89
.L93:
	.align	2
.L92:
	.word	rocks
	.word	rand
	.word	hOff
	.word	2114445439
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
	ldr	r4, .L102
	ldr	r5, [r4, #48]
	cmp	r5, #0
	beq	.L95
	ldr	r3, [r4, #104]
	cmp	r3, #0
	beq	.L101
.L94:
	pop	{r4, r5, r6, lr}
	bx	lr
.L101:
	mov	r5, #1
.L95:
	ldr	r3, .L102+4
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, #0
	ldr	r2, .L102+8
	smull	r3, lr, r2, r0
	ldr	r3, .L102+12
	asr	r2, r0, #31
	ldr	r3, [r3]
	rsb	r2, r2, lr, asr #7
	add	r2, r2, r2, lsl #6
	rsb	r5, r5, r5, lsl #3
	sub	r0, r0, r2, lsl #2
	add	r3, r3, #240
	add	r4, r4, r5, lsl #3
	add	r0, r3, r0
	str	ip, [r4, #48]
	str	r1, [r4, #52]
	str	r0, [r4, #12]
	str	r0, [r4, #4]
	b	.L94
.L103:
	.align	2
.L102:
	.word	rocks
	.word	rand
	.word	2114445439
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
	beq	.L106
	ldr	r0, [r0, #4]
	cmp	r0, #0
	ble	.L116
.L107:
	ldr	r5, .L117
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
	ldr	r6, .L117+4
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L106
	ldr	r6, [r4, #52]
	cmp	r6, #0
	bne	.L106
	mov	r2, r6
	ldr	r1, .L117+8
	ldr	r3, .L117+12
	ldr	r0, .L117+16
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r0, .L117+20
	ldr	r3, [r0]
	ldr	r1, [r5, #12]
	sub	r3, r3, #1
	ldr	r2, .L117+24
	str	r3, [r0]
	rsb	r3, r3, r3, lsl #3
	sub	r1, r1, #35
	add	r3, r2, r3, lsl #3
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r6, [r3, #48]
.L106:
	ldr	r3, .L117+28
	ldr	r3, [r3]
	ldr	r2, [r4, #12]
	add	r3, r3, r3, lsr #31
	sub	r3, r2, r3, asr #1
	str	r3, [r4, #4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	mov	r3, #0
	str	r3, [r4, #48]
	bl	generateRock
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L106
	ldr	r0, [r4, #4]
	b	.L107
.L118:
	.align	2
.L117:
	.word	player
	.word	collision
	.word	11808
	.word	playSoundB
	.word	rockHit
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
	ldr	r3, .L128
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L120
	mov	r0, #78
	ldr	r1, [r3, #4]
	ldr	r2, .L128+4
	ldr	ip, [r3]
	orr	r1, r1, #16384
	strh	r1, [r2, #18]	@ movhi
	strh	ip, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
.L120:
	ldr	r2, [r3, #104]
	cmp	r2, #0
	bxeq	lr
	mov	r1, #78
	add	r0, r3, #56
	ldm	r0, {r0, r2}
	ldr	r3, .L128+4
	orr	r2, r2, #16384
	strh	r2, [r3, #26]	@ movhi
	strh	r0, [r3, #24]	@ movhi
	strh	r1, [r3, #28]	@ movhi
	bx	lr
.L129:
	.align	2
.L128:
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
	mov	r6, #116
	mov	r8, r9
	ldr	r4, .L134
	ldr	r7, .L134+4
	ldr	r10, .L134+8
	ldr	r5, .L134+12
.L131:
	stm	r4, {r6, r8}
	mov	lr, pc
	bx	r7
	mov	r2, #1
	mov	r1, #16
	smull	r3, ip, r5, r0
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #7
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl #2
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
	bne	.L132
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L132:
	mov	r9, r2
	b	.L131
.L135:
	.align	2
.L134:
	.word	bugs
	.word	rand
	.word	hOff
	.word	2114445439
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
	ldr	r4, .L140
	mov	r0, #3
	ldr	r2, .L140+4
	ldr	r1, .L140+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L140+12
	ldr	r1, .L140+16
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	ip, #3
	mov	r1, #100
	mov	r5, #1
	ldr	r2, .L140+20
	ldr	r3, .L140+24
	str	r4, [r2]
	str	r4, [r3]
	ldr	lr, .L140+28
	ldr	r0, .L140+32
	ldr	r2, .L140+36
	ldr	r3, .L140+40
	str	r4, [lr]
	str	r4, [r0]
	ldr	lr, .L140+44
	ldr	r0, .L140+48
	str	r4, [r2]
	str	r4, [r3]
	ldr	r2, .L140+52
	ldr	r3, .L140+56
	str	r4, [lr]
	str	ip, [r0]
	str	r1, [r2]
	str	r5, [r3]
	bl	initPlayer
	mov	r2, #32
	mov	ip, #95
	mov	r0, #25
	mov	r1, #2
	ldr	r3, .L140+60
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #44]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	r4, [r3, #32]
	str	r4, [r3, #40]
	bl	initRocks
	bl	initBugs
	mov	r0, r5
	mov	r2, #165
	mov	lr, #10
	mov	r1, #16
	mov	ip, #4
	ldr	r3, .L140+64
.L137:
	str	r2, [r3, #4]
	add	r2, r2, #20
	cmp	r2, #225
	str	lr, [r3]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #36]
	str	r4, [r3, #40]
	str	ip, [r3, #44]
	str	r0, [r3, #48]
	add	r3, r3, #56
	bne	.L137
	pop	{r4, r5, r6, lr}
	bx	lr
.L141:
	.align	2
.L140:
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
	ldr	r4, .L150
	ldr	r5, [r4, #48]
	cmp	r5, #0
	beq	.L143
	ldr	r3, [r4, #104]
	cmp	r3, #0
	beq	.L149
.L142:
	pop	{r4, r5, r6, lr}
	bx	lr
.L149:
	mov	r5, #1
.L143:
	ldr	r3, .L150+4
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, #0
	ldr	r2, .L150+8
	smull	r3, lr, r2, r0
	ldr	r3, .L150+12
	asr	r2, r0, #31
	ldr	r3, [r3]
	rsb	r2, r2, lr, asr #7
	add	r2, r2, r2, lsl #6
	rsb	r5, r5, r5, lsl #3
	sub	r0, r0, r2, lsl #2
	add	r3, r3, #240
	add	r4, r4, r5, lsl #3
	add	r0, r3, r0
	str	ip, [r4, #48]
	str	r1, [r4, #52]
	str	r0, [r4, #12]
	str	r0, [r4, #4]
	b	.L142
.L151:
	.align	2
.L150:
	.word	bugs
	.word	rand
	.word	2114445439
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
	push	{r4, r5, r6, r7, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #0
	mov	r4, r0
	sub	sp, sp, #20
	beq	.L154
	ldr	r0, [r0, #4]
	cmp	r0, #0
	ble	.L171
.L155:
	ldr	r5, .L174
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
	ldr	r7, .L174+4
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L157
	ldr	r2, .L174+8
	ldr	r3, [r4, #52]
	ldr	r2, [r2]
	orrs	r6, r3, r2
	beq	.L172
.L157:
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
	bx	r7
	cmp	r0, #0
	beq	.L154
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L154
	ldr	r2, .L174+8
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L173
.L154:
	ldr	r2, .L174+12
	ldr	r3, [r4, #12]
	ldr	r2, [r2]
	sub	r3, r3, r2
	str	r3, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L171:
	mov	r3, #0
	str	r3, [r4, #48]
	bl	generateBug
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L154
	ldr	r0, [r4, #4]
	b	.L155
.L172:
	mov	r2, r6
	ldr	r1, .L174+16
	ldr	r3, .L174+20
	ldr	r0, .L174+24
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r0, .L174+28
	ldr	r3, [r0]
	ldr	r1, [r5, #12]
	sub	r3, r3, #1
	ldr	r2, .L174+32
	str	r3, [r0]
	rsb	r3, r3, r3, lsl #3
	sub	r1, r1, #30
	add	r3, r2, r3, lsl #3
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r6, [r3, #48]
	b	.L154
.L173:
	mov	r0, #1
	ldr	r1, .L174+36
	ldr	r2, [r1]
	str	r3, [r4, #48]
	str	r0, [r4, #52]
	add	r3, r2, r0
	str	r3, [r1]
	bl	generateBug
	b	.L154
.L175:
	.align	2
.L174:
	.word	player
	.word	collision
	.word	usingNet
	.word	hOff
	.word	11808
	.word	playSoundB
	.word	rockHit
	.word	livesRemaining
	.word	hearts
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
	ldr	r1, .L190
	ldr	r2, .L190+4
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
	ldr	r0, .L190+8
	bl	updateRocks
	ldr	r0, .L190+12
	bl	updateRocks
	ldr	r0, .L190+16
	bl	updateBugs
	ldr	r0, .L190+20
	bl	updateBugs
	ldr	r4, .L190+24
	ldr	r8, .L190+28
	ldr	r7, .L190+32
	ldr	r9, .L190+36
	add	r6, r4, #168
.L181:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L179
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r8, r3
	cmp	r3, r7
	bcs	.L180
	add	r0, r4, #40
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r9
	str	r1, [r4, #40]
.L180:
	add	r5, r5, #1
	str	r5, [r4, #32]
.L179:
	add	r4, r4, #56
	cmp	r6, r4
	bne	.L181
	ldr	r2, .L190+40
	ldr	r3, [r2]
	add	r3, r3, #2
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L191:
	.align	2
.L190:
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
	ldr	r3, .L197
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bne	.L193
	mov	r1, #512
	ldr	r2, .L197+4
	strh	r1, [r2, #48]	@ movhi
.L194:
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
.L193:
	mov	r0, #14
	ldr	r1, [r3, #4]
	ldr	r2, .L197+4
	ldr	ip, [r3]
	orr	r1, r1, #16384
	strh	r1, [r2, #50]	@ movhi
	strh	ip, [r2, #48]	@ movhi
	strh	r0, [r2, #52]	@ movhi
	b	.L194
.L198:
	.align	2
.L197:
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
	ldr	r3, .L203
.L200:
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
	bne	.L200
	pop	{r4, lr}
	bx	lr
.L204:
	.align	2
.L203:
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
	ldr	r2, .L215
	add	r3, r3, r3, lsl #8
	ldr	r1, .L215+4
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	mov	r4, r0
	bcs	.L207
	ldr	r0, [r0, #40]
	ldr	r3, .L215+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L207:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L216:
	.align	2
.L215:
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
	ldr	r3, .L223
	ldr	r2, .L223+4
	add	ip, r3, #168
.L220:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	strheq	r4, [r2, #32]	@ movhi
	beq	.L219
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
.L219:
	add	r3, r3, #56
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L220
	pop	{r4, lr}
	bx	lr
.L224:
	.align	2
.L223:
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
	ldr	r0, .L239
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	add	r2, r0, #36
	ldm	r2, {r2, r3}
	ldr	ip, .L239+4
	add	r2, r2, r3, lsl #5
	ldr	lr, [ip, #48]
	ldr	r3, .L239+8
	ldr	r0, [r0]
	add	r2, r2, #10
	lsl	r2, r2, #2
	cmp	lr, #0
	strh	r2, [r3, #12]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	beq	.L226
	mov	r0, #78
	ldm	ip, {r1, r2}
	orr	r2, r2, #16384
	strh	r2, [r3, #18]	@ movhi
	strh	r0, [r3, #20]	@ movhi
	strh	r1, [r3, #16]	@ movhi
.L226:
	ldr	r2, [ip, #104]
	cmp	r2, #0
	beq	.L227
	mov	r1, #78
	add	r0, ip, #56
	ldm	r0, {r0, r2}
	orr	r2, r2, #16384
	strh	r2, [r3, #26]	@ movhi
	strh	r0, [r3, #24]	@ movhi
	strh	r1, [r3, #28]	@ movhi
.L227:
	ldr	r2, .L239+12
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
	ldr	r2, .L239+16
	ldrh	r1, [r2]
	ldr	r2, .L239+20
	ldrh	r2, [r2]
	strh	r1, [r3, #22]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L240:
	.align	2
.L239:
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
