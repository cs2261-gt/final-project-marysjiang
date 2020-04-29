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
	ldr	r4, .L10
	mov	r3, #16384
	ldr	r2, .L10+4
	ldr	r1, .L10+8
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L10+12
	ldr	r1, .L10+16
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mov	r2, #3
	ldr	r0, .L10+20
	ldr	r1, .L10+24
	ldr	r3, .L10+28
	ldr	lr, .L10+32
	ldr	ip, .L10+36
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r3]
	ldr	r1, .L10+40
	ldr	r3, .L10+44
	ldr	r5, .L10+48
	ldr	r0, .L10+52
	ldr	r6, .L10+56
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r1]
	str	r2, [r3]
	str	r4, [r5]
	str	r4, [r0]
	mov	lr, pc
	bx	r6
	ldr	r5, .L10+60
	smull	r2, r3, r5, r0
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #5
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	ldr	r3, .L10+64
	sub	r0, r0, r2, lsl #2
	add	r0, r0, #10
	str	r0, [r3]
	mov	lr, pc
	bx	r6
	mov	r6, #1
	mov	r2, #100
	smull	r3, r5, r0, r5
	asr	r3, r0, #31
	rsb	r3, r3, r5, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	ldr	lr, .L10+68
	ldr	ip, .L10+72
	ldr	r1, .L10+76
	ldr	r5, .L10+80
	sub	r0, r0, r3, lsl #2
	ldr	r3, .L10+84
	add	r0, r0, #20
	str	r0, [ip]
	str	r2, [r1]
	str	r4, [lr]
	str	r4, [r5]
	str	r6, [r3]
	bl	initPlayer
	mov	r1, #95
	ldr	ip, .L10+88
	str	r1, [ip]
	mov	r1, #25
	mov	fp, #32
	str	r1, [ip, #4]
	mov	r1, #2
	str	r4, [ip, #16]
	str	r1, [ip, #44]
	str	r4, [ip, #20]
	str	r4, [ip, #32]
	str	r4, [ip, #40]
	str	fp, [ip, #24]
	str	fp, [ip, #28]
	mov	ip, #117
	ldr	r2, .L10+92
	mov	r0, #16
	str	ip, [r2]
	str	ip, [r2, #56]
	mov	ip, #240
	ldr	r5, [r5]
	add	r5, r5, #240
	str	r5, [r2, #12]
	str	r5, [r2, #68]
	str	r4, [r2, #16]
	str	r6, [r2, #20]
	str	r4, [r2, #48]
	str	r4, [r2, #52]
	str	r4, [r2, #72]
	str	r6, [r2, #76]
	str	r4, [r2, #104]
	str	r4, [r2, #108]
	str	ip, [r2, #4]
	str	ip, [r2, #60]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r0, [r2, #80]
	str	r0, [r2, #84]
	mov	r2, #116
	mov	r10, r6
	mov	r7, r0
	mov	lr, r4
	mov	r9, #10
	mov	r8, #4
	mov	r1, #165
	ldr	r3, .L10+96
	str	r5, [r3, #12]
	str	r5, [r3, #4]
	str	r4, [r3, #16]
	str	r2, [r3]
	str	r6, [r3, #20]
	str	r5, [r3, #68]
	str	r5, [r3, #60]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	str	r2, [r3, #56]
	str	r4, [r3, #72]
	str	r6, [r3, #76]
	str	r0, [r3, #80]
	str	r0, [r3, #84]
	str	r4, [r3, #104]
	str	r4, [r3, #108]
	ldr	r3, .L10+100
.L7:
	str	r1, [r3, #4]
	add	r1, r1, #20
	cmp	r1, #225
	str	r9, [r3]
	str	r7, [r3, #24]
	str	r7, [r3, #28]
	str	lr, [r3, #32]
	str	lr, [r3, #36]
	str	lr, [r3, #40]
	str	r8, [r3, #44]
	str	r10, [r3, #48]
	add	r3, r3, #56
	bne	.L7
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	direction
	.word	usingNet
	.word	netTimer
	.word	cheat
	.word	cheatTimer
	.word	bugTimer
	.word	livesRemaining
	.word	bugsCaught
	.word	rockTimer
	.word	rand
	.word	1374389535
	.word	rockTimerEnd
	.word	vOff
	.word	bugTimerEnd
	.word	ground
	.word	hOff
	.word	jumping
	.word	bees
	.word	rocks
	.word	bugs
	.word	hearts
	.size	initGame, .-initGame
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
	ldr	r3, .L25
	ldr	r3, [r3]
	push	{r4, r5, r6, lr}
	ldr	r5, .L25+4
	cmp	r3, #0
	ldr	r4, [r5, #32]
	beq	.L13
	add	r3, r4, r4, lsl #4
	ldr	r2, .L25+8
	add	r3, r3, r3, lsl #8
	ldr	r1, .L25+12
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	bcc	.L24
.L14:
	ldr	r3, .L25+16
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L15
	ldr	r2, .L25+20
	ldrh	r2, [r2]
	ands	r2, r2, #16
	streq	r2, [r5, #36]
.L15:
	tst	r3, #32
	beq	.L16
	ldr	r3, .L25+20
	ldrh	r3, [r3]
	tst	r3, #32
	moveq	r3, #1
	streq	r3, [r5, #36]
.L16:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	ldr	r3, .L25+24
	smull	r2, r3, r4, r3
	sub	r3, r3, r4, asr #31
	add	r3, r3, r3, lsl #1
	cmp	r4, r3, lsl #1
	bne	.L14
.L24:
	ldr	r0, [r5, #40]
	ldr	r3, .L25+28
	ldr	r1, [r5, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #40]
	b	.L14
.L26:
	.align	2
.L25:
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
	ldr	r3, .L62
	ldr	r0, .L62+4
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #16]
	ldr	ip, [r0]
	add	r0, r1, r2
	cmp	ip, r0, asr #8
	movle	r0, #0
	ldrle	ip, .L62+8
	push	{r4, r5, lr}
	strle	r0, [ip]
	asrle	ip, r1, #8
	ldr	r1, .L62+12
	ldrh	r1, [r1]
	movle	r2, r0
	strgt	r0, [r3, #8]
	asrgt	ip, r0, #8
	tst	r1, #64
	beq	.L30
	ldr	r0, .L62+16
	ldrh	r0, [r0]
	tst	r0, #64
	beq	.L60
.L30:
	ldr	r0, .L62+20
	ldr	r0, [r0]
	cmp	r0, #3
	moveq	r0, #1
	add	r2, r2, #100
	str	r2, [r3, #16]
	ldreq	r2, .L62+24
	streq	r0, [r2]
	tst	r1, #32
	ldr	r2, [r3, #12]
	beq	.L32
	ldr	r0, .L62+16
	ldrh	r0, [r0]
	tst	r0, #32
	bne	.L32
	ldr	r0, [r3, #4]
	cmp	r0, #0
	ble	.L33
	mov	r4, #1
	ldr	lr, .L62+28
	ldr	r0, [r3, #20]
	ldrh	r5, [lr, #48]
	ldr	lr, .L62+32
	sub	r2, r2, r0
	tst	r5, #32
	str	r2, [r3, #12]
	str	r4, [lr]
	beq	.L34
.L35:
	tst	r1, #16
	beq	.L36
.L61:
	ldr	r0, .L62+16
	ldrh	r0, [r0]
	ands	r0, r0, #16
	bne	.L36
	ldr	lr, [r3, #4]
	cmp	lr, #210
	bgt	.L37
	ldr	lr, .L62+28
	ldr	r4, [r3, #20]
	ldrh	r5, [lr, #48]
	ldr	lr, .L62+32
	add	r2, r2, r4
	tst	r5, #16
	str	r2, [r3, #12]
	str	r0, [lr]
	beq	.L38
.L39:
	tst	r1, #2
	beq	.L40
	ldr	r1, .L62+16
	ldrh	r1, [r1]
	tst	r1, #2
	bne	.L40
	ldr	lr, .L62+36
	ldr	r0, .L62+24
	ldr	r1, [lr]
	ldr	r0, [r0]
	orrs	r1, r1, r0
	moveq	r0, #1
	streq	r1, [r3, #40]
	streq	r0, [lr]
.L40:
	ldr	r1, .L62+40
	ldr	r1, [r1]
	pop	{r4, r5, lr}
	sub	r1, ip, r1
	stm	r3, {r1, r2}
	b	animatePlayer
.L32:
	ldr	r0, .L62+28
	ldrh	r0, [r0, #48]
	tst	r0, #32
	bne	.L35
	ldr	r0, [r3, #4]
	cmp	r0, #0
	ble	.L35
	ldr	r0, [r3, #20]
	ldr	lr, .L62+32
.L34:
	mov	r4, #1
	sub	r2, r2, r0
	tst	r1, #16
	str	r2, [r3, #12]
	str	r4, [lr]
	bne	.L61
.L36:
	ldr	r0, .L62+28
	ldrh	r0, [r0, #48]
	tst	r0, #16
	bne	.L39
	ldr	r0, [r3, #4]
	cmp	r0, #210
	bgt	.L39
	ldr	r4, [r3, #20]
	ldr	lr, .L62+32
.L38:
	mov	r0, #0
	add	r2, r2, r4
	str	r2, [r3, #12]
	str	r0, [lr]
	b	.L39
.L60:
	ldr	r0, .L62+8
	ldr	lr, [r0]
	cmp	lr, #0
	moveq	lr, #1
	subeq	r2, r2, #1488
	streq	lr, [r0]
	subeq	r2, r2, #12
	b	.L30
.L37:
	ldr	r0, .L62+28
	ldrh	r0, [r0, #48]
	b	.L39
.L33:
	ldr	r0, .L62+28
	ldrh	r0, [r0, #48]
	b	.L35
.L63:
	.align	2
.L62:
	.word	player
	.word	ground
	.word	jumping
	.word	oldButtons
	.word	buttons
	.word	bugsCaught
	.word	cheat
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
	@ link register save eliminated.
	ldr	r3, .L69
	ldr	r1, .L69+4
	ldr	r3, [r3]
	add	r2, r1, #36
	cmp	r3, #0
	ldm	r2, {r2, ip}
	ldm	r1, {r0, r3}
	bne	.L65
	ldr	r1, .L69+8
	ldr	r1, [r1]
	cmp	r1, #0
	lsl	r3, r3, #23
	lsl	ip, ip, #5
	addne	r2, r2, #4
	ldr	r1, .L69+12
	lsr	r3, r3, #23
	add	r2, r2, ip
	orr	r3, r3, #32768
	and	r0, r0, #255
	lsl	r2, r2, #2
	strh	r2, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r3, [r1, #2]	@ movhi
	bx	lr
.L65:
	sub	r3, r3, #16
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	add	ip, ip, #3
	ldr	r1, .L69+12
	add	r2, r2, ip, lsl #4
	lsl	r2, r2, #3
	orr	r0, r0, #16384
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	r0, [r1]	@ movhi
	bx	lr
.L70:
	.align	2
.L69:
	.word	usingNet
	.word	player
	.word	cheat
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
	ldr	r3, .L73
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
.L74:
	.align	2
.L73:
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
	ldr	r3, .L83
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldm	r3, {r2, r3}
	sub	sp, sp, #20
	ldr	r4, .L83+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r5, .L83+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L76
	ldr	r3, .L83+12
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L82
.L76:
	ldr	r5, [r4, #32]
	tst	r5, #7
	bne	.L77
	ldr	r0, [r4, #40]
	ldr	r3, .L83+16
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L77:
	add	r5, r5, #1
	str	r5, [r4, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L82:
	ldr	r3, .L83+20
	mov	r2, r5
	ldr	r1, .L83+24
	ldr	r0, .L83+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+32
	str	r5, [r3]
	b	.L76
.L84:
	.align	2
.L83:
	.word	player
	.word	bees
	.word	collision
	.word	cheat
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
	ldr	r5, .L88
	ldr	r4, [r5, #32]
	tst	r4, #7
	bne	.L86
	ldr	r0, [r5, #40]
	ldr	r3, .L88+4
	ldr	r1, [r5, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #40]
.L86:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r1, .L91
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #36]
	add	r3, r3, r0, lsl #5
	ldr	r1, [r1]
	ldr	r0, .L91+4
	add	r3, r3, #10
	lsl	r3, r3, #2
	strh	r3, [r0, #12]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r2, [r0, #10]	@ movhi
	bx	lr
.L92:
	.align	2
.L91:
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
	push	{r4, lr}
	mov	lr, #240
	mov	r2, #0
	mov	r1, #16
	mov	r4, #117
	mov	ip, #1
	ldr	r3, .L95
	ldr	r0, [r3]
	ldr	r3, .L95+4
	add	r0, r0, lr
	str	r4, [r3]
	str	r4, [r3, #56]
	str	lr, [r3, #4]
	str	lr, [r3, #60]
	str	r0, [r3, #12]
	str	r0, [r3, #68]
	str	r2, [r3, #16]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #72]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	ip, [r3, #20]
	str	ip, [r3, #76]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #80]
	str	r1, [r3, #84]
	pop	{r4, lr}
	bx	lr
.L96:
	.align	2
.L95:
	.word	hOff
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
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #0
	sub	sp, sp, #16
	beq	.L98
	ldr	r2, [r0, #24]
	mov	r4, r0
	ldr	r0, [r0, #4]
	rsb	r3, r2, #0
	cmp	r0, r3
	movle	r3, #0
	ldr	r5, .L117
	add	ip, r5, #24
	strle	r3, [r4, #48]
	ldm	ip, {ip, lr}
	ldm	r5, {r1, r3}
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	ldr	r6, .L117+4
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L114
.L100:
	ldr	r3, .L117+8
	ldr	r3, [r3]
	ldr	r2, [r4, #12]
	add	r3, r3, r3, lsr #31
	sub	r3, r2, r3, asr #1
	str	r3, [r4, #4]
.L98:
	ldr	r3, .L117+12
	ldr	r4, .L117+16
	ldr	r1, [r3]
	ldr	r2, [r4]
	cmp	r1, r2
	beq	.L115
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L114:
	ldr	r2, .L117+20
	ldr	r3, [r4, #52]
	ldr	r2, [r2]
	orrs	r6, r3, r2
	bne	.L100
	mov	r2, r6
	ldr	r1, .L117+24
	ldr	r3, .L117+28
	ldr	r0, .L117+32
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r0, .L117+36
	ldr	r3, [r0]
	ldr	r1, [r5, #12]
	sub	r3, r3, #1
	ldr	r2, .L117+40
	str	r3, [r0]
	rsb	r3, r3, r3, lsl #3
	sub	r1, r1, #35
	add	r3, r2, r3, lsl #3
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r6, [r3, #48]
	b	.L100
.L115:
	mov	r0, #0
	ldr	r2, .L117+44
	ldr	r1, [r2, #48]
	cmp	r1, r0
	str	r0, [r3]
	beq	.L102
	ldr	r3, [r2, #104]
	cmp	r3, r0
	beq	.L116
.L103:
	ldr	r3, .L117+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L117+52
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #10
	str	r0, [r4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	mov	r1, #1
.L102:
	mov	ip, #1
	mov	r0, #0
	ldr	r3, .L117+8
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #3
	add	r2, r2, r1, lsl #3
	add	r3, r3, #240
	str	ip, [r2, #48]
	str	r0, [r2, #52]
	str	r3, [r2, #12]
	str	r3, [r2, #4]
	b	.L103
.L118:
	.align	2
.L117:
	.word	player
	.word	collision
	.word	hOff
	.word	rockTimer
	.word	rockTimerEnd
	.word	cheat
	.word	3917
	.word	playSoundB
	.word	rockHit
	.word	livesRemaining
	.word	hearts
	.word	rocks
	.word	rand
	.word	1374389535
	.size	updateRocks, .-updateRocks
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
	@ link register save eliminated.
	ldr	r3, .L125
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L120
	ldr	r2, [r3, #104]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
.L120:
	mov	ip, #1
	mov	r0, #0
	ldr	r1, .L125+4
	ldr	r1, [r1]
	rsb	r2, r2, r2, lsl #3
	add	r3, r3, r2, lsl #3
	add	r2, r1, #240
	str	ip, [r3, #48]
	str	r0, [r3, #52]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	bx	lr
.L126:
	.align	2
.L125:
	.word	rocks
	.word	hOff
	.size	generateRock, .-generateRock
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
	ldr	r3, .L133
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bne	.L128
	mov	r1, #512
	ldr	r2, .L133+4
	strh	r1, [r2, #16]	@ movhi
	ldr	r1, [r3, #104]
	cmp	r1, #0
	bne	.L130
.L132:
	mov	r3, #512
	strh	r3, [r2, #24]	@ movhi
	bx	lr
.L128:
	mov	r0, #78
	ldr	r1, [r3, #4]
	lsl	r1, r1, #23
	ldr	r2, .L133+4
	lsr	r1, r1, #23
	orr	r1, r1, #16384
	strh	r1, [r2, #18]	@ movhi
	ldr	r1, [r3, #104]
	ldrb	ip, [r3]	@ zero_extendqisi2
	cmp	r1, #0
	strh	ip, [r2, #16]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	beq	.L132
.L130:
	mov	r0, #78
	ldr	r1, [r3, #60]
	lsl	r1, r1, #23
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	lsr	r1, r1, #23
	orr	r1, r1, #16384
	strh	r1, [r2, #26]	@ movhi
	strh	r3, [r2, #24]	@ movhi
	strh	r0, [r2, #28]	@ movhi
	bx	lr
.L134:
	.align	2
.L133:
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
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r0, #16
	mov	lr, #116
	mov	ip, #1
	ldr	r3, .L137
	ldr	r1, [r3]
	ldr	r3, .L137+4
	add	r1, r1, #240
	str	lr, [r3]
	str	lr, [r3, #56]
	str	r1, [r3, #12]
	str	r1, [r3, #4]
	str	r1, [r3, #68]
	str	r1, [r3, #60]
	str	r2, [r3, #16]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #72]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	ip, [r3, #20]
	str	ip, [r3, #76]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r0, [r3, #80]
	str	r0, [r3, #84]
	ldr	lr, [sp], #4
	bx	lr
.L138:
	.align	2
.L137:
	.word	hOff
	.word	bugs
	.size	initBugs, .-initBugs
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
	sub	sp, sp, #20
	beq	.L140
	ldr	r2, [r0, #24]
	mov	r4, r0
	ldr	r0, [r0, #4]
	rsb	r3, r2, #0
	cmp	r0, r3
	movle	r3, #0
	ldr	r5, .L164
	add	ip, r5, #24
	strle	r3, [r4, #48]
	ldm	ip, {ip, lr}
	ldm	r5, {r1, r3}
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	ldr	r7, .L164+4
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L142
	ldr	r2, .L164+8
	ldr	r3, .L164+12
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r6, [r4, #52]
	orr	r2, r2, r3
	orrs	r6, r2, r6
	beq	.L160
.L142:
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
	beq	.L143
	ldr	r3, .L164+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L161
.L143:
	ldr	r2, .L164+16
	ldr	r3, [r4, #12]
	ldr	r2, [r2]
	sub	r3, r3, r2
	str	r3, [r4, #4]
.L140:
	ldr	r3, .L164+20
	ldr	r4, .L164+24
	ldr	r1, [r3]
	ldr	r2, [r4]
	cmp	r1, r2
	beq	.L162
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L162:
	mov	r0, #0
	ldr	r2, .L164+28
	ldr	r1, [r2, #48]
	cmp	r1, r0
	str	r0, [r3]
	beq	.L145
	ldr	r3, [r2, #104]
	cmp	r3, r0
	beq	.L163
.L146:
	ldr	r3, .L164+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L164+36
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #20
	str	r0, [r4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L161:
	ldr	r1, .L164+12
	ldr	r2, [r4, #52]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L143
	ldr	r0, .L164+40
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	str	r1, [r0]
	b	.L143
.L163:
	mov	r1, #1
.L145:
	mov	ip, #1
	mov	r0, #0
	ldr	r3, .L164+16
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #3
	add	r2, r2, r1, lsl #3
	add	r3, r3, #240
	str	ip, [r2, #48]
	str	r0, [r2, #52]
	str	r3, [r2, #12]
	str	r3, [r2, #4]
	b	.L146
.L160:
	mov	r2, r6
	ldr	r1, .L164+44
	ldr	r3, .L164+48
	ldr	r0, .L164+52
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r0, .L164+56
	ldr	r3, [r0]
	ldr	r1, [r5, #12]
	sub	r3, r3, #1
	ldr	r2, .L164+60
	str	r3, [r0]
	rsb	r3, r3, r3, lsl #3
	sub	r1, r1, #30
	add	r3, r2, r3, lsl #3
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r6, [r3, #48]
	b	.L143
.L165:
	.align	2
.L164:
	.word	player
	.word	collision
	.word	usingNet
	.word	cheat
	.word	hOff
	.word	bugTimer
	.word	bugTimerEnd
	.word	bugs
	.word	rand
	.word	1374389535
	.word	bugsCaught
	.word	3917
	.word	playSoundB
	.word	rockHit
	.word	livesRemaining
	.word	hearts
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	lr, .L184
	ldr	r1, .L184+4
	ldr	ip, [lr]
	ldr	r0, .L184+8
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	ip, #0
	ldr	ip, .L184+12
	ldr	r7, .L184+16
	add	r3, r3, #1
	str	r3, [r1]
	add	r2, r2, #1
	ldr	r3, [ip]
	ldr	r1, .L184+20
	str	r2, [r0]
	ldr	r2, [r7]
	addne	r3, r3, #1
	strne	r3, [ip]
	cmp	r2, #1
	ldr	r2, [r1]
	addeq	r2, r2, #1
	streq	r2, [r1]
	cmp	r3, #33
	moveq	r3, #0
	streq	r3, [lr]
	streq	r3, [ip]
	cmp	r2, #600
	moveq	r3, #0
	ldreq	r2, .L184+24
	streq	r3, [r7]
	streq	r3, [r1]
	streq	r3, [r2]
	bl	updatePlayer
	bl	updateBees
	ldr	r0, .L184+28
	bl	updateRocks
	ldr	r0, .L184+32
	bl	updateRocks
	ldr	r0, .L184+36
	bl	updateBugs
	ldr	r0, .L184+40
	bl	updateBugs
	ldr	r4, .L184+44
	ldr	r9, .L184+48
	ldr	r8, .L184+52
	ldr	r10, .L184+56
	add	r6, r4, #168
.L173:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L171
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r9, r3
	cmp	r3, r8
	bcs	.L172
	add	r0, r4, #40
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r10
	str	r1, [r4, #40]
.L172:
	add	r5, r5, #1
	str	r5, [r4, #32]
.L171:
	add	r4, r4, #56
	cmp	r4, r6
	bne	.L173
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L174
	ldr	r2, .L184+60
	ldr	r3, [r2]
	add	r3, r3, #3
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L174:
	cmp	r3, #1
	ldreq	r2, .L184+60
	ldreq	r3, [r2]
	addeq	r3, r3, #6
	streq	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L185:
	.align	2
.L184:
	.word	usingNet
	.word	bugTimer
	.word	rockTimer
	.word	netTimer
	.word	cheat
	.word	cheatTimer
	.word	bugsCaught
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
	.global	generateBug
	.syntax unified
	.arm
	.fpu softvfp
	.type	generateBug, %function
generateBug:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L192
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L187
	ldr	r2, [r3, #104]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
.L187:
	mov	ip, #1
	mov	r0, #0
	ldr	r1, .L192+4
	ldr	r1, [r1]
	rsb	r2, r2, r2, lsl #3
	add	r3, r3, r2, lsl #3
	add	r2, r1, #240
	str	ip, [r3, #48]
	str	r0, [r3, #52]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	bx	lr
.L193:
	.align	2
.L192:
	.word	bugs
	.word	hOff
	.size	generateBug, .-generateBug
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
	ldr	r3, .L200
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bne	.L195
	mov	r1, #512
	ldr	r2, .L200+4
	strh	r1, [r2, #48]	@ movhi
	ldr	r1, [r3, #104]
	cmp	r1, #0
	bne	.L197
.L199:
	mov	r3, #512
	strh	r3, [r2, #56]	@ movhi
	bx	lr
.L195:
	mov	r0, #14
	ldr	r1, [r3, #4]
	lsl	r1, r1, #23
	ldr	r2, .L200+4
	lsr	r1, r1, #23
	orr	r1, r1, #16384
	strh	r1, [r2, #50]	@ movhi
	ldr	r1, [r3, #104]
	ldrb	ip, [r3]	@ zero_extendqisi2
	cmp	r1, #0
	strh	ip, [r2, #48]	@ movhi
	strh	r0, [r2, #52]	@ movhi
	beq	.L199
.L197:
	mov	r0, #14
	ldr	r1, [r3, #60]
	lsl	r1, r1, #23
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	lsr	r1, r1, #23
	orr	r1, r1, #16384
	strh	r1, [r2, #58]	@ movhi
	strh	r3, [r2, #56]	@ movhi
	strh	r0, [r2, #60]	@ movhi
	bx	lr
.L201:
	.align	2
.L200:
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
	ldr	r3, .L206
.L203:
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
	bne	.L203
	pop	{r4, lr}
	bx	lr
.L207:
	.align	2
.L206:
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
	ldr	r2, .L218
	add	r3, r3, r3, lsl #8
	ldr	r1, .L218+4
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	mov	r4, r0
	bcs	.L210
	ldr	r0, [r0, #40]
	ldr	r3, .L218+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L210:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L219:
	.align	2
.L218:
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
	ldr	r3, .L226
	ldr	r2, .L226+4
	add	ip, r3, #168
.L223:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	strheq	r4, [r2, #32]	@ movhi
	beq	.L222
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
.L222:
	add	r3, r3, #56
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L223
	pop	{r4, lr}
	bx	lr
.L227:
	.align	2
.L226:
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
	ldr	r1, .L230
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #36]
	add	r3, r3, r0, lsl #5
	ldr	r1, [r1]
	ldr	r0, .L230+4
	add	r3, r3, #10
	lsl	r3, r3, #2
	strh	r3, [r0, #12]	@ movhi
	strh	r2, [r0, #10]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	bl	drawRocks
	bl	drawBugs
	bl	drawHearts
	mov	r3, #67108864
	ldr	r2, .L230+8
	ldrh	r2, [r2]
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L231:
	.align	2
.L230:
	.word	bees
	.word	shadowOAM
	.word	hOff
	.size	drawGame, .-drawGame
	.comm	direction,4,4
	.comm	hOff,4,4
	.comm	vOff,4,4
	.comm	shadowOAM,1024,4
	.comm	hearts,168,4
	.comm	bugTimerEnd,4,4
	.comm	bugTimer,4,4
	.comm	bugs,112,4
	.comm	rockTimerEnd,4,4
	.comm	rockTimer,4,4
	.comm	rocks,112,4
	.comm	bees,56,4
	.comm	jumping,4,4
	.comm	ground,4,4
	.comm	cheatTimer,4,4
	.comm	cheat,4,4
	.comm	bugsCaught,4,4
	.comm	netTimer,4,4
	.comm	usingNet,4,4
	.comm	livesRemaining,4,4
	.comm	player,56,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
