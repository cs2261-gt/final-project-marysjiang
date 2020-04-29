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
	ldr	r5, .L10+32
	ldr	lr, .L10+36
	ldr	ip, .L10+40
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r3]
	ldr	r1, .L10+44
	ldr	r3, .L10+48
	ldr	r0, .L10+52
	str	r4, [r5]
	ldr	r5, .L10+56
	str	r4, [r1]
	str	r4, [lr]
	str	r4, [ip]
	str	r2, [r3]
	str	r4, [r0]
	mov	lr, pc
	bx	r5
	ldr	r3, .L10+60
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	ldr	r3, .L10+64
	add	r0, r0, #10
	str	r0, [r3]
	mov	lr, pc
	bx	r5
	mov	r5, #1
	mov	r1, #100
	ldr	r2, .L10+68
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #6
	rsb	r3, r3, r3, lsl #4
	ldr	lr, .L10+72
	ldr	ip, .L10+76
	ldr	r2, .L10+80
	ldr	r6, .L10+84
	sub	r0, r0, r3, lsl #3
	ldr	r3, .L10+88
	add	r0, r0, #20
	str	r0, [ip]
	str	r1, [r2]
	str	r4, [lr]
	str	r4, [r6]
	str	r5, [r3]
	bl	initPlayer
	mov	r1, #95
	ldr	ip, .L10+92
	str	r1, [ip]
	mov	r1, #25
	mov	fp, #32
	str	r1, [ip, #4]
	mov	r1, #2
	mov	r0, #16
	str	r1, [ip, #44]
	str	r4, [ip, #16]
	str	r4, [ip, #20]
	str	r4, [ip, #32]
	str	r4, [ip, #40]
	str	fp, [ip, #24]
	str	fp, [ip, #28]
	mov	ip, #117
	ldr	r6, [r6]
	ldr	r2, .L10+96
	add	r6, r6, #240
	str	r6, [r2, #12]
	str	r6, [r2, #4]
	str	r6, [r2, #68]
	str	r6, [r2, #60]
	str	r4, [r2, #16]
	str	r5, [r2, #20]
	str	r5, [r2, #48]
	str	r4, [r2, #52]
	str	r4, [r2, #72]
	str	r5, [r2, #76]
	str	r5, [r2, #104]
	str	r4, [r2, #108]
	str	ip, [r2]
	str	ip, [r2, #56]
	str	r0, [r2, #24]
	str	r0, [r2, #28]
	str	r0, [r2, #80]
	str	r0, [r2, #84]
	mov	r2, #116
	mov	r7, r0
	mov	r10, r5
	mov	lr, r4
	mov	r9, #10
	mov	r8, #4
	mov	r1, #165
	ldr	r3, .L10+100
	str	r6, [r3, #12]
	str	r4, [r3, #4]
	str	r4, [r3, #16]
	str	r2, [r3]
	str	r5, [r3, #20]
	str	r6, [r3, #68]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r5, [r3, #48]
	str	r4, [r3, #52]
	str	r2, [r3, #56]
	str	r4, [r3, #60]
	str	r4, [r3, #72]
	str	r5, [r3, #76]
	str	r0, [r3, #80]
	str	r0, [r3, #84]
	str	r5, [r3, #104]
	str	r4, [r3, #108]
	ldr	r3, .L10+104
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
	.word	bugsCaught
	.word	cheat
	.word	cheatTimer
	.word	bugTimer
	.word	livesRemaining
	.word	rockTimer
	.word	rand
	.word	1374389535
	.word	rockTimerEnd
	.word	-2004318071
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
	cmp	lr, #240
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
	cmp	r0, #240
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
	ldr	r3, .L72
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L65
	ldr	r3, .L72+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L66
	ldr	r1, .L72+8
	ldr	r3, [r1, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	str	lr, [sp, #-4]!
	mvn	r3, r3, lsr #17
	mov	lr, #32
	ldr	r0, [r1, #40]
	ldr	r2, [r1, #36]
	ldrb	ip, [r1]	@ zero_extendqisi2
	add	r2, r2, r0, lsl #5
	ldr	r0, .L72+12
	lsl	r2, r2, #2
	str	lr, [r1, #24]
	strh	r3, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L65:
	ldr	r1, .L72+8
	ldr	r3, [r1, #4]
	sub	r3, r3, #16
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	add	r2, r1, #36
	ldm	r2, {r2, ip}
	ldr	r0, [r1]
	add	ip, ip, #3
	ldr	r1, .L72+12
	add	r2, r2, ip, lsl #4
	orr	r0, r0, #16384
	lsl	r2, r2, #3
	strh	r3, [r1, #2]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	bx	lr
.L66:
	cmp	r3, #1
	bxne	lr
	ldr	r1, .L72+8
	ldr	r3, [r1, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	add	r2, r1, #36
	ldm	r2, {r2, ip}
	add	r2, r2, #4
	ldr	r0, .L72+12
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r2, r2, ip, lsl #5
	lsl	r2, r2, #2
	strh	r3, [r0, #2]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r3, .L76
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
.L77:
	.align	2
.L76:
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
	ldr	r3, .L86
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #24]
	ldm	r3, {r2, r3}
	sub	sp, sp, #20
	ldr	r4, .L86+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r5, .L86+8
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L85
.L79:
	ldr	r5, [r4, #32]
	tst	r5, #7
	bne	.L80
	ldr	r0, [r4, #40]
	ldr	r3, .L86+12
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L80:
	add	r5, r5, #1
	str	r5, [r4, #32]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L85:
	mov	r2, #0
	ldr	r3, .L86+16
	ldr	r1, .L86+20
	ldr	r0, .L86+24
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L86+28
	str	r2, [r3]
	b	.L79
.L87:
	.align	2
.L86:
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
	ldr	r5, .L91
	ldr	r4, [r5, #32]
	tst	r4, #7
	bne	.L89
	ldr	r0, [r5, #40]
	ldr	r3, .L91+4
	ldr	r1, [r5, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #40]
.L89:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r1, .L94
	ldr	r2, [r1, #4]
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #40]
	ldr	r3, [r1, #36]
	add	r3, r3, r0, lsl #5
	ldr	r1, [r1]
	ldr	r0, .L94+4
	add	r3, r3, #10
	lsl	r3, r3, #2
	strh	r3, [r0, #12]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r2, [r0, #10]	@ movhi
	bx	lr
.L95:
	.align	2
.L94:
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
	str	lr, [sp, #-4]!
	mov	ip, #0
	mov	r0, #1
	mov	r1, #16
	mov	lr, #117
	ldr	r3, .L98
	ldr	r2, [r3]
	ldr	r3, .L98+4
	add	r2, r2, #240
	str	lr, [r3]
	str	lr, [r3, #56]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	str	r2, [r3, #68]
	str	r2, [r3, #60]
	str	ip, [r3, #16]
	str	ip, [r3, #52]
	str	ip, [r3, #72]
	str	ip, [r3, #108]
	str	r0, [r3, #20]
	str	r0, [r3, #48]
	str	r0, [r3, #76]
	str	r0, [r3, #104]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #80]
	str	r1, [r3, #84]
	ldr	lr, [sp], #4
	bx	lr
.L99:
	.align	2
.L98:
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
	push	{r4, r5, r6, r7, lr}
	ldr	r3, [r0, #48]
	cmp	r3, #0
	sub	sp, sp, #20
	beq	.L101
	ldr	r2, [r0, #24]
	mov	r4, r0
	ldr	r0, [r0, #4]
	rsb	r3, r2, #0
	cmp	r0, r3
	movle	r1, #0
	ldrle	r6, .L122
	ldr	r5, .L122+4
	ldrle	r3, [r6]
	add	ip, r5, #24
	addle	r3, r3, #240
	strle	r3, [r4, #12]
	strle	r1, [r4, #48]
	ldm	ip, {ip, lr}
	ldm	r5, {r1, r3}
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	ldr	r7, .L122+8
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	ldrgt	r6, .L122
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L120
.L103:
	ldr	r3, [r6]
	ldr	r2, [r4, #12]
	add	r3, r3, r3, lsr #31
	sub	r3, r2, r3, asr #1
	str	r3, [r4, #4]
.L101:
	ldr	r3, .L122+12
	ldr	r2, .L122+16
	ldr	r1, [r3]
	ldr	r2, [r2]
	cmp	r1, r2
	beq	.L121
.L100:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L120:
	ldr	r2, .L122+20
	ldr	r3, [r4, #52]
	ldr	r2, [r2]
	orrs	r7, r3, r2
	bne	.L103
	mov	r2, r7
	ldr	r1, .L122+24
	ldr	r3, .L122+28
	ldr	r0, .L122+32
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r0, .L122+36
	ldr	r3, [r0]
	ldr	r1, [r5, #12]
	sub	r3, r3, #1
	ldr	r2, .L122+40
	str	r3, [r0]
	rsb	r3, r3, r3, lsl #3
	sub	r1, r1, #35
	add	r3, r2, r3, lsl #3
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r7, [r3, #48]
	b	.L103
.L121:
	mov	r0, #0
	ldr	r2, .L122+44
	ldr	r1, [r2, #48]
	cmp	r1, r0
	str	r0, [r3]
	beq	.L106
	ldr	r3, [r2, #104]
	cmp	r3, r0
	bne	.L100
	mov	r1, #1
.L106:
	mov	ip, #1
	mov	r0, #0
	ldr	r3, .L122
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #3
	add	r2, r2, r1, lsl #3
	add	r3, r3, #240
	str	ip, [r2, #48]
	str	r0, [r2, #52]
	str	r3, [r2, #12]
	str	r3, [r2, #4]
	b	.L100
.L123:
	.align	2
.L122:
	.word	hOff
	.word	player
	.word	collision
	.word	rockTimer
	.word	rockTimerEnd
	.word	cheat
	.word	11808
	.word	playSoundB
	.word	rockHit
	.word	livesRemaining
	.word	hearts
	.word	rocks
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
	ldr	r3, .L130
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L125
	ldr	r2, [r3, #104]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
.L125:
	mov	ip, #1
	mov	r0, #0
	ldr	r1, .L130+4
	ldr	r1, [r1]
	rsb	r2, r2, r2, lsl #3
	add	r3, r3, r2, lsl #3
	add	r2, r1, #240
	str	ip, [r3, #48]
	str	r0, [r3, #52]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	bx	lr
.L131:
	.align	2
.L130:
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
	ldr	r3, .L141
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L133
	mov	r0, #78
	ldr	r2, [r3, #4]
	lsl	r2, r2, #23
	ldr	r1, .L141+4
	ldrb	ip, [r3]	@ zero_extendqisi2
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	strh	r2, [r1, #18]	@ movhi
	strh	ip, [r1, #16]	@ movhi
	strh	r0, [r1, #20]	@ movhi
.L133:
	ldr	r2, [r3, #104]
	cmp	r2, #0
	bxeq	lr
	mov	r1, #78
	ldr	r2, [r3, #60]
	lsl	r2, r2, #23
	ldrb	r0, [r3, #56]	@ zero_extendqisi2
	lsr	r2, r2, #23
	ldr	r3, .L141+4
	orr	r2, r2, #16384
	strh	r2, [r3, #26]	@ movhi
	strh	r0, [r3, #24]	@ movhi
	strh	r1, [r3, #28]	@ movhi
	bx	lr
.L142:
	.align	2
.L141:
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
	mov	r0, #1
	mov	r1, #16
	mov	lr, #116
	ldr	r3, .L145
	ldr	ip, [r3]
	ldr	r3, .L145+4
	add	ip, ip, #240
	str	lr, [r3]
	str	lr, [r3, #56]
	str	ip, [r3, #12]
	str	ip, [r3, #68]
	str	r2, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	str	r2, [r3, #72]
	str	r2, [r3, #108]
	str	r0, [r3, #20]
	str	r0, [r3, #48]
	str	r0, [r3, #76]
	str	r0, [r3, #104]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #80]
	str	r1, [r3, #84]
	ldr	lr, [sp], #4
	bx	lr
.L146:
	.align	2
.L145:
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
	beq	.L156
	ldr	r2, [r0, #24]
	mov	r4, r0
	ldr	r0, [r0, #4]
	rsb	r3, r2, #0
	cmp	r0, r3
	ble	.L168
	ldr	r5, .L171
	add	ip, r5, #24
	ldm	r5, {r1, r3}
	ldm	ip, {ip, lr}
	stmib	sp, {r1, ip, lr}
	str	r3, [sp]
	ldr	r7, .L171+4
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L150
	ldr	r2, .L171+8
	ldr	r3, .L171+12
	ldr	r2, [r2]
	ldr	r3, [r3]
	ldr	r6, [r4, #52]
	orr	r2, r2, r3
	orrs	r6, r2, r6
	beq	.L169
.L150:
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
	beq	.L151
	ldr	r3, .L171+8
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L151
	ldr	r1, .L171+12
	ldr	r2, [r4, #52]
	ldr	r1, [r1]
	orrs	r2, r2, r1
	bne	.L151
	ldr	r0, .L171+16
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	str	r1, [r0]
.L151:
	ldr	r2, .L171+20
	ldr	r3, [r4, #12]
	ldr	r2, [r2]
	sub	r3, r3, r2
	str	r3, [r4, #4]
.L156:
	ldr	r3, .L171+24
	ldr	r2, .L171+28
	ldr	r1, [r3]
	ldr	r2, [r2]
	cmp	r1, r2
	beq	.L170
.L147:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L168:
	mov	r2, #0
	ldr	r3, .L171+20
	ldr	r3, [r3]
	add	r3, r3, #240
	str	r3, [r4, #12]
	str	r2, [r4, #48]
	b	.L156
.L170:
	mov	r0, #0
	ldr	r2, .L171+32
	ldr	r1, [r2, #48]
	cmp	r1, r0
	str	r0, [r3]
	beq	.L154
	ldr	r3, [r2, #104]
	cmp	r3, r0
	bne	.L147
	mov	r1, #1
.L154:
	mov	ip, #1
	mov	r0, #0
	ldr	r3, .L171+20
	ldr	r3, [r3]
	rsb	r1, r1, r1, lsl #3
	add	r2, r2, r1, lsl #3
	add	r3, r3, #240
	str	ip, [r2, #48]
	str	r0, [r2, #52]
	str	r3, [r2, #12]
	str	r3, [r2, #4]
	b	.L147
.L169:
	mov	r2, r6
	ldr	r1, .L171+36
	ldr	r3, .L171+40
	ldr	r0, .L171+44
	mov	lr, pc
	bx	r3
	mov	ip, #1
	ldr	r0, .L171+48
	ldr	r3, [r0]
	ldr	r1, [r5, #12]
	sub	r3, r3, #1
	ldr	r2, .L171+52
	str	r3, [r0]
	rsb	r3, r3, r3, lsl #3
	sub	r1, r1, #30
	add	r3, r2, r3, lsl #3
	str	ip, [r4, #52]
	str	r1, [r5, #12]
	str	r6, [r3, #48]
	b	.L151
.L172:
	.align	2
.L171:
	.word	player
	.word	collision
	.word	usingNet
	.word	cheat
	.word	bugsCaught
	.word	hOff
	.word	bugTimer
	.word	bugTimerEnd
	.word	bugs
	.word	11808
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
	ldr	lr, .L191
	ldr	r1, .L191+4
	ldr	ip, [lr]
	ldr	r0, .L191+8
	ldr	r3, [r1]
	ldr	r2, [r0]
	cmp	ip, #0
	ldr	ip, .L191+12
	ldr	r7, .L191+16
	add	r3, r3, #1
	str	r3, [r1]
	add	r2, r2, #1
	ldr	r3, [ip]
	ldr	r1, .L191+20
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
	ldreq	r2, .L191+24
	streq	r3, [r7]
	streq	r3, [r1]
	streq	r3, [r2]
	bl	updatePlayer
	bl	updateBees
	ldr	r0, .L191+28
	bl	updateRocks
	ldr	r0, .L191+32
	bl	updateRocks
	ldr	r0, .L191+36
	bl	updateBugs
	ldr	r0, .L191+40
	bl	updateBugs
	ldr	r4, .L191+44
	ldr	r9, .L191+48
	ldr	r8, .L191+52
	ldr	r10, .L191+56
	add	r6, r4, #168
.L180:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L178
	ldr	r5, [r4, #32]
	add	r3, r5, r5, lsl #4
	add	r3, r3, r3, lsl #8
	add	r3, r3, r3, lsl #16
	sub	r3, r9, r3
	cmp	r3, r8
	bcs	.L179
	add	r0, r4, #40
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r10
	str	r1, [r4, #40]
.L179:
	add	r5, r5, #1
	str	r5, [r4, #32]
.L178:
	add	r4, r4, #56
	cmp	r4, r6
	bne	.L180
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L181
	ldr	r2, .L191+60
	ldr	r3, [r2]
	add	r3, r3, #2
	str	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L181:
	cmp	r3, #1
	ldreq	r2, .L191+60
	ldreq	r3, [r2]
	addeq	r3, r3, #6
	streq	r3, [r2]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L192:
	.align	2
.L191:
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
	ldr	r3, .L199
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L194
	ldr	r2, [r3, #104]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
.L194:
	mov	ip, #1
	mov	r0, #0
	ldr	r1, .L199+4
	ldr	r1, [r1]
	rsb	r2, r2, r2, lsl #3
	add	r3, r3, r2, lsl #3
	add	r2, r1, #240
	str	ip, [r3, #48]
	str	r0, [r3, #52]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	bx	lr
.L200:
	.align	2
.L199:
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
	ldr	r3, .L207
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bne	.L202
	mov	r1, #512
	ldr	r2, .L207+4
	strh	r1, [r2, #48]	@ movhi
	ldr	r1, [r3, #104]
	cmp	r1, #0
	bne	.L204
.L206:
	mov	r3, #512
	strh	r3, [r2, #56]	@ movhi
	bx	lr
.L202:
	mov	r0, #14
	ldr	r1, [r3, #4]
	lsl	r1, r1, #23
	ldr	r2, .L207+4
	lsr	r1, r1, #23
	orr	r1, r1, #16384
	strh	r1, [r2, #50]	@ movhi
	ldr	r1, [r3, #104]
	ldrb	ip, [r3]	@ zero_extendqisi2
	cmp	r1, #0
	strh	ip, [r2, #48]	@ movhi
	strh	r0, [r2, #52]	@ movhi
	beq	.L206
.L204:
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
.L208:
	.align	2
.L207:
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
	ldr	r3, .L213
.L210:
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
	bne	.L210
	pop	{r4, lr}
	bx	lr
.L214:
	.align	2
.L213:
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
	ldr	r2, .L225
	add	r3, r3, r3, lsl #8
	ldr	r1, .L225+4
	add	r3, r3, r3, lsl #16
	sub	r2, r2, r3
	cmp	r2, r1
	mov	r4, r0
	bcs	.L217
	ldr	r0, [r0, #40]
	ldr	r3, .L225+8
	ldr	r1, [r4, #44]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #40]
.L217:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L226:
	.align	2
.L225:
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
	ldr	r3, .L233
	ldr	r2, .L233+4
	add	ip, r3, #168
.L230:
	ldr	r1, [r3, #48]
	cmp	r1, #0
	strheq	r4, [r2, #32]	@ movhi
	beq	.L229
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
.L229:
	add	r3, r3, #56
	cmp	r3, ip
	add	r2, r2, #8
	bne	.L230
	pop	{r4, lr}
	bx	lr
.L234:
	.align	2
.L233:
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
	ldr	r0, .L245
	ldr	r1, [r0, #4]
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	ldr	r2, [r0, #40]
	ldr	r3, [r0, #36]
	ldr	ip, .L245+4
	add	r3, r3, r2, lsl #5
	ldr	lr, [ip, #48]
	ldr	r2, .L245+8
	ldr	r0, [r0]
	add	r3, r3, #10
	lsl	r3, r3, #2
	cmp	lr, #0
	strh	r3, [r2, #12]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #10]	@ movhi
	beq	.L236
	mov	r0, #78
	ldr	r3, [ip, #4]
	lsl	r3, r3, #23
	ldrb	r1, [ip]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #20]	@ movhi
	strh	r1, [r2, #16]	@ movhi
.L236:
	ldr	r3, [ip, #104]
	cmp	r3, #0
	beq	.L237
	mov	r1, #78
	ldr	r3, [ip, #60]
	lsl	r3, r3, #23
	ldrb	r0, [ip, #56]	@ zero_extendqisi2
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L237:
	bl	drawBugs
	bl	drawHearts
	mov	r3, #67108864
	ldr	r2, .L245+12
	ldrh	r2, [r2]
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L246:
	.align	2
.L245:
	.word	bees
	.word	rocks
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
