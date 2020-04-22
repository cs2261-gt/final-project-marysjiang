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
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r5, #0
	mov	r6, #512
	ldr	r4, .L4
	strh	r6, [r3]	@ movhi
	strh	r5, [r3, #20]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1040
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r3, r6
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L4+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L4+32
	ldr	r1, .L4+36
	ldr	r0, .L4+40
	mov	lr, pc
	bx	r3
	ldr	r2, .L4+44
	ldr	r3, .L4+48
	str	r5, [r2]
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	bgStartPal
	.word	bgStartTiles
	.word	100720640
	.word	bgStartMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	playSoundA
	.word	1504224
	.word	bubblegumKK
	.word	state
	.word	seed
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
	mov	r3, #67108864
	mov	r2, #7168
	push	{r4, lr}
	mov	lr, #4608
	mov	r1, #0
	ldr	r0, .L8
	strh	r2, [r3, #10]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	ldr	r2, .L8+4
	ldr	r0, .L8+8
	ldrh	ip, [r2, #48]
	ldr	r2, .L8+12
	strh	lr, [r3]	@ movhi
	ldr	r3, .L8+16
	strh	ip, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	24068
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #512
	mov	r2, #0
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L12
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	ldr	r1, .L12+4
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #4032
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+12
	mov	r3, #1024
	mov	r0, #3
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L12+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	bgInstructionsPal
	.word	bgInstructionsTiles
	.word	100720640
	.word	bgInstructionsMap
	.word	waitForVBlank
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	ldr	r4, .L21
	ldr	r3, [r4]
	ldr	r2, .L21+4
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r3, .L21+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L14
	ldr	r3, .L21+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
.L14:
	pop	{r4, lr}
	bx	lr
.L20:
	ldr	r0, [r4]
	ldr	r3, .L21+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToInstructions
.L22:
	.align	2
.L21:
	.word	seed
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	srand
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
	mov	r2, #67108864
	mov	r1, #4864
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L25
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L25+4
	mov	lr, pc
	bx	r4
	mov	r3, #2416
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L25+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L25+12
	ldr	r1, .L25+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L25+20
	ldr	r2, .L25+24
	ldr	r1, .L25+28
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L25+32
	ldr	r1, .L25+36
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L25+40
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r3, #512
	mov	r0, #3
	ldr	r1, .L25+44
	mov	lr, pc
	bx	r4
	ldr	r3, .L25+48
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L25+52
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L26:
	.align	2
.L25:
	.word	DMANow
	.word	bgGameBackPal
	.word	bgGameBackTiles
	.word	100720640
	.word	bgGameBackMap
	.word	7280
	.word	100679680
	.word	bgGameFrontTiles
	.word	100724736
	.word	bgGameFrontMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L27
	ldr	r3, .L34+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L33
.L27:
	pop	{r4, lr}
	bx	lr
.L33:
	ldr	r3, .L34+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L34+16
	ldr	r3, .L34+20
	ldr	r0, .L34+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldr	r3, .L34+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stopSoundA
	.word	2220031
	.word	playSoundA
	.word	goKKRider
	.word	initGame
	.size	instructions, .-instructions
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
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r5, #512
	mov	r2, #0
	ldr	r4, .L38
	strh	r2, [r3, #20]	@ movhi
	strh	r5, [r3]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L38+4
	mov	lr, pc
	bx	r4
	mov	r3, #2192
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L38+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+20
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L38+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L38+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	bgPausePal
	.word	bgPauseTiles
	.word	100720640
	.word	bgPauseMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
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
	push	{r4, lr}
	ldr	r4, .L52
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L41
	ldr	r2, .L52+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L50
.L41:
	tst	r3, #4
	beq	.L40
	ldr	r3, .L52+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L51
.L40:
	pop	{r4, lr}
	bx	lr
.L51:
	ldr	r3, .L52+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L52+16
	ldr	r0, .L52+20
	ldr	r3, .L52+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L50:
	ldr	r3, .L52+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L52+28
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L41
.L53:
	.align	2
.L52:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSoundB
	.word	1504224
	.word	bubblegumKK
	.word	playSoundA
	.word	unpauseSoundA
	.size	pause, .-pause
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
	push	{r4, r5, r6, lr}
	mov	r3, #67108864
	mov	r5, #512
	mov	r2, #0
	ldr	r4, .L56
	strh	r2, [r3, #20]	@ movhi
	strh	r5, [r3]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L56+4
	mov	lr, pc
	bx	r4
	mov	r3, #1888
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L56+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L56+12
	ldr	r1, .L56+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+20
	mov	lr, pc
	bx	r3
	mov	r3, r5
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L56+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L56+28
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L56+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	DMANow
	.word	bgLosePal
	.word	bgLoseTiles
	.word	100720640
	.word	bgLoseMap
	.word	hideSprites
	.word	shadowOAM
	.word	waitForVBlank
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
	push	{r4, lr}
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r3, .L67+4
	ldr	r2, [r3]
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #20]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	ldr	r2, .L67+8
	mov	lr, pc
	bx	r2
	ldr	r3, .L67+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L67+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L67+20
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L59
	ldr	r3, .L67+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L59:
	ldr	r3, .L67+32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L66
	pop	{r4, lr}
	bx	lr
.L66:
	ldr	r3, .L67+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L67+44
	ldr	r0, .L67+48
	ldr	r3, .L67+52
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToLose
.L65:
	ldr	r3, .L67+56
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L67+60
	ldr	r3, .L67+64
	ldr	r0, .L67+68
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L59
.L68:
	.align	2
.L67:
	.word	updateGame
	.word	hOff
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	livesRemaining
	.word	stopSoundA
	.word	stopSoundB
	.word	1413216
	.word	rainy
	.word	playSoundA
	.word	pauseSoundA
	.word	860882
	.word	playSoundB
	.word	bossaKK
	.size	game, .-game
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
	ldr	r3, .L76
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L76+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
	ldr	r3, .L76+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L75
.L69:
	pop	{r4, lr}
	bx	lr
.L75:
	ldr	r3, .L76+12
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L76+16
	ldr	r0, .L76+20
	ldr	r3, .L76+24
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L77:
	.align	2
.L76:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stopSoundA
	.word	1504224
	.word	bubblegumKK
	.word	playSoundA
	.size	lose, .-lose
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
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	ldr	r6, .L90+4
	ldr	r7, .L90+8
	ldr	r5, .L90+12
	ldr	fp, .L90+16
	ldr	r10, .L90+20
	ldr	r9, .L90+24
	ldr	r8, .L90+28
	ldr	r4, .L90+32
.L79:
	ldr	r2, [r6]
	ldrh	r3, [r7]
.L80:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L80
.L82:
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L81
.L81:
	ldr	r3, .L90+36
	mov	lr, pc
	bx	r3
	b	.L79
.L83:
	mov	lr, pc
	bx	r8
	b	.L79
.L84:
	mov	lr, pc
	bx	r9
	b	.L79
.L85:
	mov	lr, pc
	bx	r10
	b	.L79
.L86:
	mov	lr, pc
	bx	fp
	b	.L79
.L91:
	.align	2
.L90:
	.word	initialize
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	instructions
	.word	game
	.word	pause
	.word	67109120
	.word	lose
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	livesRemaining,4,4
	.comm	seed,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
