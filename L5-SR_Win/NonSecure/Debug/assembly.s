
.\L5-SR_Win_NonSecure.elf:     file format elf32-littlearm


Disassembly of section .text:

080401f8 <__do_global_dtors_aux>:
 80401f8:	b510      	push	{r4, lr}
 80401fa:	4c05      	ldr	r4, [pc, #20]	@ (8040210 <__do_global_dtors_aux+0x18>)
 80401fc:	7823      	ldrb	r3, [r4, #0]
 80401fe:	b933      	cbnz	r3, 804020e <__do_global_dtors_aux+0x16>
 8040200:	4b04      	ldr	r3, [pc, #16]	@ (8040214 <__do_global_dtors_aux+0x1c>)
 8040202:	b113      	cbz	r3, 804020a <__do_global_dtors_aux+0x12>
 8040204:	4804      	ldr	r0, [pc, #16]	@ (8040218 <__do_global_dtors_aux+0x20>)
 8040206:	f3af 8000 	nop.w
 804020a:	2301      	movs	r3, #1
 804020c:	7023      	strb	r3, [r4, #0]
 804020e:	bd10      	pop	{r4, pc}
 8040210:	20018088 	.word	0x20018088
 8040214:	00000000 	.word	0x00000000
 8040218:	08046184 	.word	0x08046184

0804021c <frame_dummy>:
 804021c:	b508      	push	{r3, lr}
 804021e:	4b03      	ldr	r3, [pc, #12]	@ (804022c <frame_dummy+0x10>)
 8040220:	b11b      	cbz	r3, 804022a <frame_dummy+0xe>
 8040222:	4903      	ldr	r1, [pc, #12]	@ (8040230 <frame_dummy+0x14>)
 8040224:	4803      	ldr	r0, [pc, #12]	@ (8040234 <frame_dummy+0x18>)
 8040226:	f3af 8000 	nop.w
 804022a:	bd08      	pop	{r3, pc}
 804022c:	00000000 	.word	0x00000000
 8040230:	2001808c 	.word	0x2001808c
 8040234:	08046184 	.word	0x08046184

08040238 <__aeabi_uldivmod>:
 8040238:	b953      	cbnz	r3, 8040250 <__aeabi_uldivmod+0x18>
 804023a:	b94a      	cbnz	r2, 8040250 <__aeabi_uldivmod+0x18>
 804023c:	2900      	cmp	r1, #0
 804023e:	bf08      	it	eq
 8040240:	2800      	cmpeq	r0, #0
 8040242:	bf1c      	itt	ne
 8040244:	f04f 31ff 	movne.w	r1, #4294967295
 8040248:	f04f 30ff 	movne.w	r0, #4294967295
 804024c:	f000 b97e 	b.w	804054c <__aeabi_idiv0>
 8040250:	f1ad 0c08 	sub.w	ip, sp, #8
 8040254:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8040258:	f000 f806 	bl	8040268 <__udivmoddi4>
 804025c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8040260:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8040264:	b004      	add	sp, #16
 8040266:	4770      	bx	lr

08040268 <__udivmoddi4>:
 8040268:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 804026c:	9d09      	ldr	r5, [sp, #36]	@ 0x24
 804026e:	460c      	mov	r4, r1
 8040270:	2b00      	cmp	r3, #0
 8040272:	d14d      	bne.n	8040310 <__udivmoddi4+0xa8>
 8040274:	428a      	cmp	r2, r1
 8040276:	460f      	mov	r7, r1
 8040278:	4684      	mov	ip, r0
 804027a:	4696      	mov	lr, r2
 804027c:	fab2 f382 	clz	r3, r2
 8040280:	d960      	bls.n	8040344 <__udivmoddi4+0xdc>
 8040282:	b14b      	cbz	r3, 8040298 <__udivmoddi4+0x30>
 8040284:	fa02 fe03 	lsl.w	lr, r2, r3
 8040288:	f1c3 0220 	rsb	r2, r3, #32
 804028c:	409f      	lsls	r7, r3
 804028e:	fa00 fc03 	lsl.w	ip, r0, r3
 8040292:	fa20 f202 	lsr.w	r2, r0, r2
 8040296:	4317      	orrs	r7, r2
 8040298:	ea4f 461e 	mov.w	r6, lr, lsr #16
 804029c:	fa1f f48e 	uxth.w	r4, lr
 80402a0:	ea4f 421c 	mov.w	r2, ip, lsr #16
 80402a4:	fbb7 f1f6 	udiv	r1, r7, r6
 80402a8:	fb06 7711 	mls	r7, r6, r1, r7
 80402ac:	fb01 f004 	mul.w	r0, r1, r4
 80402b0:	ea42 4207 	orr.w	r2, r2, r7, lsl #16
 80402b4:	4290      	cmp	r0, r2
 80402b6:	d908      	bls.n	80402ca <__udivmoddi4+0x62>
 80402b8:	eb1e 0202 	adds.w	r2, lr, r2
 80402bc:	f101 37ff 	add.w	r7, r1, #4294967295
 80402c0:	d202      	bcs.n	80402c8 <__udivmoddi4+0x60>
 80402c2:	4290      	cmp	r0, r2
 80402c4:	f200 812d 	bhi.w	8040522 <__udivmoddi4+0x2ba>
 80402c8:	4639      	mov	r1, r7
 80402ca:	1a12      	subs	r2, r2, r0
 80402cc:	fa1f fc8c 	uxth.w	ip, ip
 80402d0:	fbb2 f0f6 	udiv	r0, r2, r6
 80402d4:	fb06 2210 	mls	r2, r6, r0, r2
 80402d8:	fb00 f404 	mul.w	r4, r0, r4
 80402dc:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
 80402e0:	4564      	cmp	r4, ip
 80402e2:	d908      	bls.n	80402f6 <__udivmoddi4+0x8e>
 80402e4:	eb1e 0c0c 	adds.w	ip, lr, ip
 80402e8:	f100 32ff 	add.w	r2, r0, #4294967295
 80402ec:	d202      	bcs.n	80402f4 <__udivmoddi4+0x8c>
 80402ee:	4564      	cmp	r4, ip
 80402f0:	f200 811a 	bhi.w	8040528 <__udivmoddi4+0x2c0>
 80402f4:	4610      	mov	r0, r2
 80402f6:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
 80402fa:	ebac 0c04 	sub.w	ip, ip, r4
 80402fe:	2100      	movs	r1, #0
 8040300:	b125      	cbz	r5, 804030c <__udivmoddi4+0xa4>
 8040302:	fa2c f303 	lsr.w	r3, ip, r3
 8040306:	2200      	movs	r2, #0
 8040308:	e9c5 3200 	strd	r3, r2, [r5]
 804030c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8040310:	428b      	cmp	r3, r1
 8040312:	d905      	bls.n	8040320 <__udivmoddi4+0xb8>
 8040314:	b10d      	cbz	r5, 804031a <__udivmoddi4+0xb2>
 8040316:	e9c5 0100 	strd	r0, r1, [r5]
 804031a:	2100      	movs	r1, #0
 804031c:	4608      	mov	r0, r1
 804031e:	e7f5      	b.n	804030c <__udivmoddi4+0xa4>
 8040320:	fab3 f183 	clz	r1, r3
 8040324:	2900      	cmp	r1, #0
 8040326:	d14d      	bne.n	80403c4 <__udivmoddi4+0x15c>
 8040328:	42a3      	cmp	r3, r4
 804032a:	f0c0 80f2 	bcc.w	8040512 <__udivmoddi4+0x2aa>
 804032e:	4290      	cmp	r0, r2
 8040330:	f080 80ef 	bcs.w	8040512 <__udivmoddi4+0x2aa>
 8040334:	4606      	mov	r6, r0
 8040336:	4623      	mov	r3, r4
 8040338:	4608      	mov	r0, r1
 804033a:	2d00      	cmp	r5, #0
 804033c:	d0e6      	beq.n	804030c <__udivmoddi4+0xa4>
 804033e:	e9c5 6300 	strd	r6, r3, [r5]
 8040342:	e7e3      	b.n	804030c <__udivmoddi4+0xa4>
 8040344:	2b00      	cmp	r3, #0
 8040346:	f040 80a2 	bne.w	804048e <__udivmoddi4+0x226>
 804034a:	1a8a      	subs	r2, r1, r2
 804034c:	ea4f 471e 	mov.w	r7, lr, lsr #16
 8040350:	fa1f f68e 	uxth.w	r6, lr
 8040354:	2101      	movs	r1, #1
 8040356:	fbb2 f4f7 	udiv	r4, r2, r7
 804035a:	fb07 2014 	mls	r0, r7, r4, r2
 804035e:	ea4f 421c 	mov.w	r2, ip, lsr #16
 8040362:	ea42 4200 	orr.w	r2, r2, r0, lsl #16
 8040366:	fb06 f004 	mul.w	r0, r6, r4
 804036a:	4290      	cmp	r0, r2
 804036c:	d90f      	bls.n	804038e <__udivmoddi4+0x126>
 804036e:	eb1e 0202 	adds.w	r2, lr, r2
 8040372:	f104 38ff 	add.w	r8, r4, #4294967295
 8040376:	bf2c      	ite	cs
 8040378:	f04f 0901 	movcs.w	r9, #1
 804037c:	f04f 0900 	movcc.w	r9, #0
 8040380:	4290      	cmp	r0, r2
 8040382:	d903      	bls.n	804038c <__udivmoddi4+0x124>
 8040384:	f1b9 0f00 	cmp.w	r9, #0
 8040388:	f000 80c8 	beq.w	804051c <__udivmoddi4+0x2b4>
 804038c:	4644      	mov	r4, r8
 804038e:	1a12      	subs	r2, r2, r0
 8040390:	fa1f fc8c 	uxth.w	ip, ip
 8040394:	fbb2 f0f7 	udiv	r0, r2, r7
 8040398:	fb07 2210 	mls	r2, r7, r0, r2
 804039c:	fb00 f606 	mul.w	r6, r0, r6
 80403a0:	ea4c 4c02 	orr.w	ip, ip, r2, lsl #16
 80403a4:	4566      	cmp	r6, ip
 80403a6:	d908      	bls.n	80403ba <__udivmoddi4+0x152>
 80403a8:	eb1e 0c0c 	adds.w	ip, lr, ip
 80403ac:	f100 32ff 	add.w	r2, r0, #4294967295
 80403b0:	d202      	bcs.n	80403b8 <__udivmoddi4+0x150>
 80403b2:	4566      	cmp	r6, ip
 80403b4:	f200 80bb 	bhi.w	804052e <__udivmoddi4+0x2c6>
 80403b8:	4610      	mov	r0, r2
 80403ba:	ebac 0c06 	sub.w	ip, ip, r6
 80403be:	ea40 4004 	orr.w	r0, r0, r4, lsl #16
 80403c2:	e79d      	b.n	8040300 <__udivmoddi4+0x98>
 80403c4:	f1c1 0620 	rsb	r6, r1, #32
 80403c8:	408b      	lsls	r3, r1
 80403ca:	fa04 fe01 	lsl.w	lr, r4, r1
 80403ce:	fa22 f706 	lsr.w	r7, r2, r6
 80403d2:	fa20 fc06 	lsr.w	ip, r0, r6
 80403d6:	40f4      	lsrs	r4, r6
 80403d8:	408a      	lsls	r2, r1
 80403da:	431f      	orrs	r7, r3
 80403dc:	ea4e 030c 	orr.w	r3, lr, ip
 80403e0:	fa00 fe01 	lsl.w	lr, r0, r1
 80403e4:	ea4f 4817 	mov.w	r8, r7, lsr #16
 80403e8:	ea4f 4913 	mov.w	r9, r3, lsr #16
 80403ec:	fa1f fc87 	uxth.w	ip, r7
 80403f0:	fbb4 f0f8 	udiv	r0, r4, r8
 80403f4:	fb08 4410 	mls	r4, r8, r0, r4
 80403f8:	ea49 4404 	orr.w	r4, r9, r4, lsl #16
 80403fc:	fb00 f90c 	mul.w	r9, r0, ip
 8040400:	45a1      	cmp	r9, r4
 8040402:	d90e      	bls.n	8040422 <__udivmoddi4+0x1ba>
 8040404:	193c      	adds	r4, r7, r4
 8040406:	f100 3aff 	add.w	sl, r0, #4294967295
 804040a:	bf2c      	ite	cs
 804040c:	f04f 0b01 	movcs.w	fp, #1
 8040410:	f04f 0b00 	movcc.w	fp, #0
 8040414:	45a1      	cmp	r9, r4
 8040416:	d903      	bls.n	8040420 <__udivmoddi4+0x1b8>
 8040418:	f1bb 0f00 	cmp.w	fp, #0
 804041c:	f000 8093 	beq.w	8040546 <__udivmoddi4+0x2de>
 8040420:	4650      	mov	r0, sl
 8040422:	eba4 0409 	sub.w	r4, r4, r9
 8040426:	fa1f f983 	uxth.w	r9, r3
 804042a:	fbb4 f3f8 	udiv	r3, r4, r8
 804042e:	fb08 4413 	mls	r4, r8, r3, r4
 8040432:	fb03 fc0c 	mul.w	ip, r3, ip
 8040436:	ea49 4404 	orr.w	r4, r9, r4, lsl #16
 804043a:	45a4      	cmp	ip, r4
 804043c:	d906      	bls.n	804044c <__udivmoddi4+0x1e4>
 804043e:	193c      	adds	r4, r7, r4
 8040440:	f103 38ff 	add.w	r8, r3, #4294967295
 8040444:	d201      	bcs.n	804044a <__udivmoddi4+0x1e2>
 8040446:	45a4      	cmp	ip, r4
 8040448:	d87a      	bhi.n	8040540 <__udivmoddi4+0x2d8>
 804044a:	4643      	mov	r3, r8
 804044c:	ea43 4000 	orr.w	r0, r3, r0, lsl #16
 8040450:	eba4 040c 	sub.w	r4, r4, ip
 8040454:	fba0 9802 	umull	r9, r8, r0, r2
 8040458:	4544      	cmp	r4, r8
 804045a:	46cc      	mov	ip, r9
 804045c:	4643      	mov	r3, r8
 804045e:	d302      	bcc.n	8040466 <__udivmoddi4+0x1fe>
 8040460:	d106      	bne.n	8040470 <__udivmoddi4+0x208>
 8040462:	45ce      	cmp	lr, r9
 8040464:	d204      	bcs.n	8040470 <__udivmoddi4+0x208>
 8040466:	3801      	subs	r0, #1
 8040468:	ebb9 0c02 	subs.w	ip, r9, r2
 804046c:	eb68 0307 	sbc.w	r3, r8, r7
 8040470:	b15d      	cbz	r5, 804048a <__udivmoddi4+0x222>
 8040472:	ebbe 020c 	subs.w	r2, lr, ip
 8040476:	eb64 0403 	sbc.w	r4, r4, r3
 804047a:	fa04 f606 	lsl.w	r6, r4, r6
 804047e:	fa22 f301 	lsr.w	r3, r2, r1
 8040482:	40cc      	lsrs	r4, r1
 8040484:	431e      	orrs	r6, r3
 8040486:	e9c5 6400 	strd	r6, r4, [r5]
 804048a:	2100      	movs	r1, #0
 804048c:	e73e      	b.n	804030c <__udivmoddi4+0xa4>
 804048e:	fa02 fe03 	lsl.w	lr, r2, r3
 8040492:	f1c3 0120 	rsb	r1, r3, #32
 8040496:	fa04 f203 	lsl.w	r2, r4, r3
 804049a:	fa00 fc03 	lsl.w	ip, r0, r3
 804049e:	40cc      	lsrs	r4, r1
 80404a0:	ea4f 471e 	mov.w	r7, lr, lsr #16
 80404a4:	fa20 f101 	lsr.w	r1, r0, r1
 80404a8:	fa1f f68e 	uxth.w	r6, lr
 80404ac:	fbb4 f0f7 	udiv	r0, r4, r7
 80404b0:	430a      	orrs	r2, r1
 80404b2:	fb07 4410 	mls	r4, r7, r0, r4
 80404b6:	0c11      	lsrs	r1, r2, #16
 80404b8:	ea41 4104 	orr.w	r1, r1, r4, lsl #16
 80404bc:	fb00 f406 	mul.w	r4, r0, r6
 80404c0:	428c      	cmp	r4, r1
 80404c2:	d90e      	bls.n	80404e2 <__udivmoddi4+0x27a>
 80404c4:	eb1e 0101 	adds.w	r1, lr, r1
 80404c8:	f100 38ff 	add.w	r8, r0, #4294967295
 80404cc:	bf2c      	ite	cs
 80404ce:	f04f 0901 	movcs.w	r9, #1
 80404d2:	f04f 0900 	movcc.w	r9, #0
 80404d6:	428c      	cmp	r4, r1
 80404d8:	d902      	bls.n	80404e0 <__udivmoddi4+0x278>
 80404da:	f1b9 0f00 	cmp.w	r9, #0
 80404de:	d02c      	beq.n	804053a <__udivmoddi4+0x2d2>
 80404e0:	4640      	mov	r0, r8
 80404e2:	1b09      	subs	r1, r1, r4
 80404e4:	b292      	uxth	r2, r2
 80404e6:	fbb1 f4f7 	udiv	r4, r1, r7
 80404ea:	fb07 1114 	mls	r1, r7, r4, r1
 80404ee:	ea42 4201 	orr.w	r2, r2, r1, lsl #16
 80404f2:	fb04 f106 	mul.w	r1, r4, r6
 80404f6:	4291      	cmp	r1, r2
 80404f8:	d907      	bls.n	804050a <__udivmoddi4+0x2a2>
 80404fa:	eb1e 0202 	adds.w	r2, lr, r2
 80404fe:	f104 38ff 	add.w	r8, r4, #4294967295
 8040502:	d201      	bcs.n	8040508 <__udivmoddi4+0x2a0>
 8040504:	4291      	cmp	r1, r2
 8040506:	d815      	bhi.n	8040534 <__udivmoddi4+0x2cc>
 8040508:	4644      	mov	r4, r8
 804050a:	1a52      	subs	r2, r2, r1
 804050c:	ea44 4100 	orr.w	r1, r4, r0, lsl #16
 8040510:	e721      	b.n	8040356 <__udivmoddi4+0xee>
 8040512:	1a86      	subs	r6, r0, r2
 8040514:	eb64 0303 	sbc.w	r3, r4, r3
 8040518:	2001      	movs	r0, #1
 804051a:	e70e      	b.n	804033a <__udivmoddi4+0xd2>
 804051c:	3c02      	subs	r4, #2
 804051e:	4472      	add	r2, lr
 8040520:	e735      	b.n	804038e <__udivmoddi4+0x126>
 8040522:	3902      	subs	r1, #2
 8040524:	4472      	add	r2, lr
 8040526:	e6d0      	b.n	80402ca <__udivmoddi4+0x62>
 8040528:	44f4      	add	ip, lr
 804052a:	3802      	subs	r0, #2
 804052c:	e6e3      	b.n	80402f6 <__udivmoddi4+0x8e>
 804052e:	44f4      	add	ip, lr
 8040530:	3802      	subs	r0, #2
 8040532:	e742      	b.n	80403ba <__udivmoddi4+0x152>
 8040534:	3c02      	subs	r4, #2
 8040536:	4472      	add	r2, lr
 8040538:	e7e7      	b.n	804050a <__udivmoddi4+0x2a2>
 804053a:	3802      	subs	r0, #2
 804053c:	4471      	add	r1, lr
 804053e:	e7d0      	b.n	80404e2 <__udivmoddi4+0x27a>
 8040540:	3b02      	subs	r3, #2
 8040542:	443c      	add	r4, r7
 8040544:	e782      	b.n	804044c <__udivmoddi4+0x1e4>
 8040546:	3802      	subs	r0, #2
 8040548:	443c      	add	r4, r7
 804054a:	e76a      	b.n	8040422 <__udivmoddi4+0x1ba>

0804054c <__aeabi_idiv0>:
 804054c:	4770      	bx	lr
 804054e:	bf00      	nop

08040550 <MX_DMA_Init>:
 8040550:	b580      	push	{r7, lr}
 8040552:	b082      	sub	sp, #8
 8040554:	af00      	add	r7, sp, #0
 8040556:	4b12      	ldr	r3, [pc, #72]	@ (80405a0 <MX_DMA_Init+0x50>)
 8040558:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 804055a:	4a11      	ldr	r2, [pc, #68]	@ (80405a0 <MX_DMA_Init+0x50>)
 804055c:	f043 0304 	orr.w	r3, r3, #4
 8040560:	6493      	str	r3, [r2, #72]	@ 0x48
 8040562:	4b0f      	ldr	r3, [pc, #60]	@ (80405a0 <MX_DMA_Init+0x50>)
 8040564:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8040566:	f003 0304 	and.w	r3, r3, #4
 804056a:	607b      	str	r3, [r7, #4]
 804056c:	687b      	ldr	r3, [r7, #4]
 804056e:	4b0c      	ldr	r3, [pc, #48]	@ (80405a0 <MX_DMA_Init+0x50>)
 8040570:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8040572:	4a0b      	ldr	r2, [pc, #44]	@ (80405a0 <MX_DMA_Init+0x50>)
 8040574:	f043 0301 	orr.w	r3, r3, #1
 8040578:	6493      	str	r3, [r2, #72]	@ 0x48
 804057a:	4b09      	ldr	r3, [pc, #36]	@ (80405a0 <MX_DMA_Init+0x50>)
 804057c:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 804057e:	f003 0301 	and.w	r3, r3, #1
 8040582:	603b      	str	r3, [r7, #0]
 8040584:	683b      	ldr	r3, [r7, #0]
 8040586:	2200      	movs	r2, #0
 8040588:	2100      	movs	r1, #0
 804058a:	201d      	movs	r0, #29
 804058c:	f001 f8db 	bl	8041746 <HAL_NVIC_SetPriority>
 8040590:	201d      	movs	r0, #29
 8040592:	f001 f8f2 	bl	804177a <HAL_NVIC_EnableIRQ>
 8040596:	bf00      	nop
 8040598:	3708      	adds	r7, #8
 804059a:	46bd      	mov	sp, r7
 804059c:	bd80      	pop	{r7, pc}
 804059e:	bf00      	nop
 80405a0:	40021000 	.word	0x40021000

080405a4 <MX_GPIO_Init>:
 80405a4:	b580      	push	{r7, lr}
 80405a6:	b082      	sub	sp, #8
 80405a8:	af00      	add	r7, sp, #0
 80405aa:	4b09      	ldr	r3, [pc, #36]	@ (80405d0 <MX_GPIO_Init+0x2c>)
 80405ac:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80405ae:	4a08      	ldr	r2, [pc, #32]	@ (80405d0 <MX_GPIO_Init+0x2c>)
 80405b0:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 80405b4:	64d3      	str	r3, [r2, #76]	@ 0x4c
 80405b6:	4b06      	ldr	r3, [pc, #24]	@ (80405d0 <MX_GPIO_Init+0x2c>)
 80405b8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80405ba:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 80405be:	607b      	str	r3, [r7, #4]
 80405c0:	687b      	ldr	r3, [r7, #4]
 80405c2:	f001 fdf7 	bl	80421b4 <HAL_PWREx_EnableVddIO2>
 80405c6:	bf00      	nop
 80405c8:	3708      	adds	r7, #8
 80405ca:	46bd      	mov	sp, r7
 80405cc:	bd80      	pop	{r7, pc}
 80405ce:	bf00      	nop
 80405d0:	40021000 	.word	0x40021000

080405d4 <MX_ICACHE_Init>:
 80405d4:	b480      	push	{r7}
 80405d6:	af00      	add	r7, sp, #0
 80405d8:	bf00      	nop
 80405da:	46bd      	mov	sp, r7
 80405dc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80405e0:	4770      	bx	lr
	...

080405e4 <__io_putchar>:
 80405e4:	b580      	push	{r7, lr}
 80405e6:	b082      	sub	sp, #8
 80405e8:	af00      	add	r7, sp, #0
 80405ea:	6078      	str	r0, [r7, #4]
 80405ec:	1d39      	adds	r1, r7, #4
 80405ee:	f04f 33ff 	mov.w	r3, #4294967295
 80405f2:	2201      	movs	r2, #1
 80405f4:	4803      	ldr	r0, [pc, #12]	@ (8040604 <__io_putchar+0x20>)
 80405f6:	f003 ff75 	bl	80444e4 <HAL_UART_Transmit>
 80405fa:	687b      	ldr	r3, [r7, #4]
 80405fc:	4618      	mov	r0, r3
 80405fe:	3708      	adds	r7, #8
 8040600:	46bd      	mov	sp, r7
 8040602:	bd80      	pop	{r7, pc}
 8040604:	200181b4 	.word	0x200181b4

08040608 <victim_>:
 8040608:	b480      	push	{r7}
 804060a:	af00      	add	r7, sp, #0
 804060c:	4b07      	ldr	r3, [pc, #28]	@ (804062c <victim_+0x24>)
 804060e:	681b      	ldr	r3, [r3, #0]
 8040610:	2b01      	cmp	r3, #1
 8040612:	d103      	bne.n	804061c <victim_+0x14>
 8040614:	4b06      	ldr	r3, [pc, #24]	@ (8040630 <victim_+0x28>)
 8040616:	2201      	movs	r2, #1
 8040618:	601a      	str	r2, [r3, #0]
 804061a:	e002      	b.n	8040622 <victim_+0x1a>
 804061c:	4b04      	ldr	r3, [pc, #16]	@ (8040630 <victim_+0x28>)
 804061e:	2200      	movs	r2, #0
 8040620:	601a      	str	r2, [r3, #0]
 8040622:	bf00      	nop
 8040624:	46bd      	mov	sp, r7
 8040626:	f85d 7b04 	ldr.w	r7, [sp], #4
 804062a:	4770      	bx	lr
 804062c:	200180a4 	.word	0x200180a4
 8040630:	200180a8 	.word	0x200180a8

08040634 <get_accurate_trace>:
 8040634:	b580      	push	{r7, lr}
 8040636:	b084      	sub	sp, #16
 8040638:	af00      	add	r7, sp, #0
 804063a:	6078      	str	r0, [r7, #4]
 804063c:	6039      	str	r1, [r7, #0]
 804063e:	4b2b      	ldr	r3, [pc, #172]	@ (80406ec <get_accurate_trace+0xb8>)
 8040640:	681b      	ldr	r3, [r3, #0]
 8040642:	687a      	ldr	r2, [r7, #4]
 8040644:	4252      	negs	r2, r2
 8040646:	601a      	str	r2, [r3, #0]
 8040648:	4b29      	ldr	r3, [pc, #164]	@ (80406f0 <get_accurate_trace+0xbc>)
 804064a:	681b      	ldr	r3, [r3, #0]
 804064c:	2200      	movs	r2, #0
 804064e:	601a      	str	r2, [r3, #0]
 8040650:	4b28      	ldr	r3, [pc, #160]	@ (80406f4 <get_accurate_trace+0xc0>)
 8040652:	681b      	ldr	r3, [r3, #0]
 8040654:	2200      	movs	r2, #0
 8040656:	601a      	str	r2, [r3, #0]
 8040658:	687b      	ldr	r3, [r7, #4]
 804065a:	f003 0301 	and.w	r3, r3, #1
 804065e:	2b00      	cmp	r3, #0
 8040660:	d104      	bne.n	804066c <get_accurate_trace+0x38>
 8040662:	4b25      	ldr	r3, [pc, #148]	@ (80406f8 <get_accurate_trace+0xc4>)
 8040664:	681b      	ldr	r3, [r3, #0]
 8040666:	2202      	movs	r2, #2
 8040668:	601a      	str	r2, [r3, #0]
 804066a:	e003      	b.n	8040674 <get_accurate_trace+0x40>
 804066c:	4b22      	ldr	r3, [pc, #136]	@ (80406f8 <get_accurate_trace+0xc4>)
 804066e:	681b      	ldr	r3, [r3, #0]
 8040670:	2201      	movs	r2, #1
 8040672:	601a      	str	r2, [r3, #0]
 8040674:	4921      	ldr	r1, [pc, #132]	@ (80406fc <get_accurate_trace+0xc8>)
 8040676:	4b22      	ldr	r3, [pc, #136]	@ (8040700 <get_accurate_trace+0xcc>)
 8040678:	681b      	ldr	r3, [r3, #0]
 804067a:	461a      	mov	r2, r3
 804067c:	2301      	movs	r3, #1
 804067e:	4821      	ldr	r0, [pc, #132]	@ (8040704 <get_accurate_trace+0xd0>)
 8040680:	f001 f93e 	bl	8041900 <HAL_DMA_Start>
 8040684:	4b1f      	ldr	r3, [pc, #124]	@ (8040704 <get_accurate_trace+0xd0>)
 8040686:	681b      	ldr	r3, [r3, #0]
 8040688:	681a      	ldr	r2, [r3, #0]
 804068a:	4b1e      	ldr	r3, [pc, #120]	@ (8040704 <get_accurate_trace+0xd0>)
 804068c:	681b      	ldr	r3, [r3, #0]
 804068e:	f042 0201 	orr.w	r2, r2, #1
 8040692:	601a      	str	r2, [r3, #0]
 8040694:	4b17      	ldr	r3, [pc, #92]	@ (80406f4 <get_accurate_trace+0xc0>)
 8040696:	681b      	ldr	r3, [r3, #0]
 8040698:	f44f 7280 	mov.w	r2, #256	@ 0x100
 804069c:	601a      	str	r2, [r3, #0]
 804069e:	4b1a      	ldr	r3, [pc, #104]	@ (8040708 <get_accurate_trace+0xd4>)
 80406a0:	681b      	ldr	r3, [r3, #0]
 80406a2:	681a      	ldr	r2, [r3, #0]
 80406a4:	4b18      	ldr	r3, [pc, #96]	@ (8040708 <get_accurate_trace+0xd4>)
 80406a6:	681b      	ldr	r3, [r3, #0]
 80406a8:	f042 0208 	orr.w	r2, r2, #8
 80406ac:	601a      	str	r2, [r3, #0]
 80406ae:	4b17      	ldr	r3, [pc, #92]	@ (804070c <get_accurate_trace+0xd8>)
 80406b0:	681b      	ldr	r3, [r3, #0]
 80406b2:	2200      	movs	r2, #0
 80406b4:	601a      	str	r2, [r3, #0]
 80406b6:	4b16      	ldr	r3, [pc, #88]	@ (8040710 <get_accurate_trace+0xdc>)
 80406b8:	681b      	ldr	r3, [r3, #0]
 80406ba:	681a      	ldr	r2, [r3, #0]
 80406bc:	4b14      	ldr	r3, [pc, #80]	@ (8040710 <get_accurate_trace+0xdc>)
 80406be:	681b      	ldr	r3, [r3, #0]
 80406c0:	f042 0201 	orr.w	r2, r2, #1
 80406c4:	601a      	str	r2, [r3, #0]
 80406c6:	4b13      	ldr	r3, [pc, #76]	@ (8040714 <get_accurate_trace+0xe0>)
 80406c8:	681b      	ldr	r3, [r3, #0]
 80406ca:	681a      	ldr	r2, [r3, #0]
 80406cc:	4b11      	ldr	r3, [pc, #68]	@ (8040714 <get_accurate_trace+0xe0>)
 80406ce:	681b      	ldr	r3, [r3, #0]
 80406d0:	f042 0201 	orr.w	r2, r2, #1
 80406d4:	601a      	str	r2, [r3, #0]
 80406d6:	46c0      	nop			@ (mov r8, r8)
 80406d8:	46c0      	nop			@ (mov r8, r8)
 80406da:	46c0      	nop			@ (mov r8, r8)
 80406dc:	2300      	movs	r3, #0
 80406de:	60fb      	str	r3, [r7, #12]
 80406e0:	68fb      	ldr	r3, [r7, #12]
 80406e2:	2b01      	cmp	r3, #1
 80406e4:	d118      	bne.n	8040718 <get_accurate_trace+0xe4>
 80406e6:	2301      	movs	r3, #1
 80406e8:	60bb      	str	r3, [r7, #8]
 80406ea:	e017      	b.n	804071c <get_accurate_trace+0xe8>
 80406ec:	2001800c 	.word	0x2001800c
 80406f0:	20018004 	.word	0x20018004
 80406f4:	20018008 	.word	0x20018008
 80406f8:	20018010 	.word	0x20018010
 80406fc:	2001801c 	.word	0x2001801c
 8040700:	20018014 	.word	0x20018014
 8040704:	2001814c 	.word	0x2001814c
 8040708:	20018000 	.word	0x20018000
 804070c:	20018018 	.word	0x20018018
 8040710:	20018100 	.word	0x20018100
 8040714:	200180b4 	.word	0x200180b4
 8040718:	2300      	movs	r3, #0
 804071a:	60bb      	str	r3, [r7, #8]
 804071c:	46c0      	nop			@ (mov r8, r8)
 804071e:	46c0      	nop			@ (mov r8, r8)
 8040720:	46c0      	nop			@ (mov r8, r8)
 8040722:	46c0      	nop			@ (mov r8, r8)
 8040724:	46c0      	nop			@ (mov r8, r8)
 8040726:	46c0      	nop			@ (mov r8, r8)
 8040728:	46c0      	nop			@ (mov r8, r8)
 804072a:	46c0      	nop			@ (mov r8, r8)
 804072c:	46c0      	nop			@ (mov r8, r8)
 804072e:	46c0      	nop			@ (mov r8, r8)
 8040730:	46c0      	nop			@ (mov r8, r8)
 8040732:	46c0      	nop			@ (mov r8, r8)
 8040734:	46c0      	nop			@ (mov r8, r8)
 8040736:	46c0      	nop			@ (mov r8, r8)
 8040738:	46c0      	nop			@ (mov r8, r8)
 804073a:	46c0      	nop			@ (mov r8, r8)
 804073c:	46c0      	nop			@ (mov r8, r8)
 804073e:	46c0      	nop			@ (mov r8, r8)
 8040740:	46c0      	nop			@ (mov r8, r8)
 8040742:	46c0      	nop			@ (mov r8, r8)
 8040744:	46c0      	nop			@ (mov r8, r8)
 8040746:	46c0      	nop			@ (mov r8, r8)
 8040748:	46c0      	nop			@ (mov r8, r8)
 804074a:	46c0      	nop			@ (mov r8, r8)
 804074c:	46c0      	nop			@ (mov r8, r8)
 804074e:	46c0      	nop			@ (mov r8, r8)
 8040750:	46c0      	nop			@ (mov r8, r8)
 8040752:	46c0      	nop			@ (mov r8, r8)
 8040754:	46c0      	nop			@ (mov r8, r8)
 8040756:	46c0      	nop			@ (mov r8, r8)
 8040758:	46c0      	nop			@ (mov r8, r8)
 804075a:	46c0      	nop			@ (mov r8, r8)
 804075c:	46c0      	nop			@ (mov r8, r8)
 804075e:	46c0      	nop			@ (mov r8, r8)
 8040760:	46c0      	nop			@ (mov r8, r8)
 8040762:	46c0      	nop			@ (mov r8, r8)
 8040764:	46c0      	nop			@ (mov r8, r8)
 8040766:	46c0      	nop			@ (mov r8, r8)
 8040768:	46c0      	nop			@ (mov r8, r8)
 804076a:	46c0      	nop			@ (mov r8, r8)
 804076c:	46c0      	nop			@ (mov r8, r8)
 804076e:	46c0      	nop			@ (mov r8, r8)
 8040770:	46c0      	nop			@ (mov r8, r8)
 8040772:	46c0      	nop			@ (mov r8, r8)
 8040774:	46c0      	nop			@ (mov r8, r8)
 8040776:	46c0      	nop			@ (mov r8, r8)
 8040778:	46c0      	nop			@ (mov r8, r8)
 804077a:	46c0      	nop			@ (mov r8, r8)
 804077c:	46c0      	nop			@ (mov r8, r8)
 804077e:	46c0      	nop			@ (mov r8, r8)
 8040780:	46c0      	nop			@ (mov r8, r8)
 8040782:	46c0      	nop			@ (mov r8, r8)
 8040784:	46c0      	nop			@ (mov r8, r8)
 8040786:	46c0      	nop			@ (mov r8, r8)
 8040788:	46c0      	nop			@ (mov r8, r8)
 804078a:	46c0      	nop			@ (mov r8, r8)
 804078c:	46c0      	nop			@ (mov r8, r8)
 804078e:	46c0      	nop			@ (mov r8, r8)
 8040790:	46c0      	nop			@ (mov r8, r8)
 8040792:	46c0      	nop			@ (mov r8, r8)
 8040794:	46c0      	nop			@ (mov r8, r8)
 8040796:	46c0      	nop			@ (mov r8, r8)
 8040798:	46c0      	nop			@ (mov r8, r8)
 804079a:	46c0      	nop			@ (mov r8, r8)
 804079c:	46c0      	nop			@ (mov r8, r8)
 804079e:	46c0      	nop			@ (mov r8, r8)
 80407a0:	46c0      	nop			@ (mov r8, r8)
 80407a2:	46c0      	nop			@ (mov r8, r8)
 80407a4:	46c0      	nop			@ (mov r8, r8)
 80407a6:	46c0      	nop			@ (mov r8, r8)
 80407a8:	46c0      	nop			@ (mov r8, r8)
 80407aa:	46c0      	nop			@ (mov r8, r8)
 80407ac:	46c0      	nop			@ (mov r8, r8)
 80407ae:	46c0      	nop			@ (mov r8, r8)
 80407b0:	46c0      	nop			@ (mov r8, r8)
 80407b2:	46c0      	nop			@ (mov r8, r8)
 80407b4:	46c0      	nop			@ (mov r8, r8)
 80407b6:	46c0      	nop			@ (mov r8, r8)
 80407b8:	46c0      	nop			@ (mov r8, r8)
 80407ba:	46c0      	nop			@ (mov r8, r8)
 80407bc:	46c0      	nop			@ (mov r8, r8)
 80407be:	46c0      	nop			@ (mov r8, r8)
 80407c0:	46c0      	nop			@ (mov r8, r8)
 80407c2:	46c0      	nop			@ (mov r8, r8)
 80407c4:	46c0      	nop			@ (mov r8, r8)
 80407c6:	46c0      	nop			@ (mov r8, r8)
 80407c8:	46c0      	nop			@ (mov r8, r8)
 80407ca:	46c0      	nop			@ (mov r8, r8)
 80407cc:	46c0      	nop			@ (mov r8, r8)
 80407ce:	46c0      	nop			@ (mov r8, r8)
 80407d0:	46c0      	nop			@ (mov r8, r8)
 80407d2:	46c0      	nop			@ (mov r8, r8)
 80407d4:	46c0      	nop			@ (mov r8, r8)
 80407d6:	46c0      	nop			@ (mov r8, r8)
 80407d8:	46c0      	nop			@ (mov r8, r8)
 80407da:	46c0      	nop			@ (mov r8, r8)
 80407dc:	46c0      	nop			@ (mov r8, r8)
 80407de:	46c0      	nop			@ (mov r8, r8)
 80407e0:	46c0      	nop			@ (mov r8, r8)
 80407e2:	46c0      	nop			@ (mov r8, r8)
 80407e4:	46c0      	nop			@ (mov r8, r8)
 80407e6:	46c0      	nop			@ (mov r8, r8)
 80407e8:	46c0      	nop			@ (mov r8, r8)
 80407ea:	46c0      	nop			@ (mov r8, r8)
 80407ec:	46c0      	nop			@ (mov r8, r8)
 80407ee:	46c0      	nop			@ (mov r8, r8)
 80407f0:	46c0      	nop			@ (mov r8, r8)
 80407f2:	46c0      	nop			@ (mov r8, r8)
 80407f4:	46c0      	nop			@ (mov r8, r8)
 80407f6:	46c0      	nop			@ (mov r8, r8)
 80407f8:	46c0      	nop			@ (mov r8, r8)
 80407fa:	46c0      	nop			@ (mov r8, r8)
 80407fc:	46c0      	nop			@ (mov r8, r8)
 80407fe:	46c0      	nop			@ (mov r8, r8)
 8040800:	46c0      	nop			@ (mov r8, r8)
 8040802:	46c0      	nop			@ (mov r8, r8)
 8040804:	46c0      	nop			@ (mov r8, r8)
 8040806:	46c0      	nop			@ (mov r8, r8)
 8040808:	46c0      	nop			@ (mov r8, r8)
 804080a:	46c0      	nop			@ (mov r8, r8)
 804080c:	46c0      	nop			@ (mov r8, r8)
 804080e:	46c0      	nop			@ (mov r8, r8)
 8040810:	46c0      	nop			@ (mov r8, r8)
 8040812:	46c0      	nop			@ (mov r8, r8)
 8040814:	46c0      	nop			@ (mov r8, r8)
 8040816:	46c0      	nop			@ (mov r8, r8)
 8040818:	46c0      	nop			@ (mov r8, r8)
 804081a:	46c0      	nop			@ (mov r8, r8)
 804081c:	46c0      	nop			@ (mov r8, r8)
 804081e:	46c0      	nop			@ (mov r8, r8)
 8040820:	46c0      	nop			@ (mov r8, r8)
 8040822:	46c0      	nop			@ (mov r8, r8)
 8040824:	46c0      	nop			@ (mov r8, r8)
 8040826:	46c0      	nop			@ (mov r8, r8)
 8040828:	46c0      	nop			@ (mov r8, r8)
 804082a:	46c0      	nop			@ (mov r8, r8)
 804082c:	46c0      	nop			@ (mov r8, r8)
 804082e:	46c0      	nop			@ (mov r8, r8)
 8040830:	46c0      	nop			@ (mov r8, r8)
 8040832:	46c0      	nop			@ (mov r8, r8)
 8040834:	46c0      	nop			@ (mov r8, r8)
 8040836:	46c0      	nop			@ (mov r8, r8)
 8040838:	46c0      	nop			@ (mov r8, r8)
 804083a:	46c0      	nop			@ (mov r8, r8)
 804083c:	46c0      	nop			@ (mov r8, r8)
 804083e:	46c0      	nop			@ (mov r8, r8)
 8040840:	46c0      	nop			@ (mov r8, r8)
 8040842:	46c0      	nop			@ (mov r8, r8)
 8040844:	46c0      	nop			@ (mov r8, r8)
 8040846:	46c0      	nop			@ (mov r8, r8)
 8040848:	46c0      	nop			@ (mov r8, r8)
 804084a:	46c0      	nop			@ (mov r8, r8)
 804084c:	46c0      	nop			@ (mov r8, r8)
 804084e:	46c0      	nop			@ (mov r8, r8)
 8040850:	46c0      	nop			@ (mov r8, r8)
 8040852:	46c0      	nop			@ (mov r8, r8)
 8040854:	46c0      	nop			@ (mov r8, r8)
 8040856:	46c0      	nop			@ (mov r8, r8)
 8040858:	46c0      	nop			@ (mov r8, r8)
 804085a:	46c0      	nop			@ (mov r8, r8)
 804085c:	46c0      	nop			@ (mov r8, r8)
 804085e:	46c0      	nop			@ (mov r8, r8)
 8040860:	46c0      	nop			@ (mov r8, r8)
 8040862:	46c0      	nop			@ (mov r8, r8)
 8040864:	46c0      	nop			@ (mov r8, r8)
 8040866:	46c0      	nop			@ (mov r8, r8)
 8040868:	46c0      	nop			@ (mov r8, r8)
 804086a:	46c0      	nop			@ (mov r8, r8)
 804086c:	46c0      	nop			@ (mov r8, r8)
 804086e:	46c0      	nop			@ (mov r8, r8)
 8040870:	46c0      	nop			@ (mov r8, r8)
 8040872:	46c0      	nop			@ (mov r8, r8)
 8040874:	46c0      	nop			@ (mov r8, r8)
 8040876:	46c0      	nop			@ (mov r8, r8)
 8040878:	46c0      	nop			@ (mov r8, r8)
 804087a:	46c0      	nop			@ (mov r8, r8)
 804087c:	46c0      	nop			@ (mov r8, r8)
 804087e:	46c0      	nop			@ (mov r8, r8)
 8040880:	46c0      	nop			@ (mov r8, r8)
 8040882:	46c0      	nop			@ (mov r8, r8)
 8040884:	46c0      	nop			@ (mov r8, r8)
 8040886:	46c0      	nop			@ (mov r8, r8)
 8040888:	46c0      	nop			@ (mov r8, r8)
 804088a:	46c0      	nop			@ (mov r8, r8)
 804088c:	46c0      	nop			@ (mov r8, r8)
 804088e:	46c0      	nop			@ (mov r8, r8)
 8040890:	46c0      	nop			@ (mov r8, r8)
 8040892:	46c0      	nop			@ (mov r8, r8)
 8040894:	46c0      	nop			@ (mov r8, r8)
 8040896:	46c0      	nop			@ (mov r8, r8)
 8040898:	46c0      	nop			@ (mov r8, r8)
 804089a:	46c0      	nop			@ (mov r8, r8)
 804089c:	46c0      	nop			@ (mov r8, r8)
 804089e:	46c0      	nop			@ (mov r8, r8)
 80408a0:	46c0      	nop			@ (mov r8, r8)
 80408a2:	46c0      	nop			@ (mov r8, r8)
 80408a4:	46c0      	nop			@ (mov r8, r8)
 80408a6:	46c0      	nop			@ (mov r8, r8)
 80408a8:	46c0      	nop			@ (mov r8, r8)
 80408aa:	46c0      	nop			@ (mov r8, r8)
 80408ac:	46c0      	nop			@ (mov r8, r8)
 80408ae:	46c0      	nop			@ (mov r8, r8)
 80408b0:	46c0      	nop			@ (mov r8, r8)
 80408b2:	46c0      	nop			@ (mov r8, r8)
 80408b4:	46c0      	nop			@ (mov r8, r8)
 80408b6:	46c0      	nop			@ (mov r8, r8)
 80408b8:	46c0      	nop			@ (mov r8, r8)
 80408ba:	46c0      	nop			@ (mov r8, r8)
 80408bc:	46c0      	nop			@ (mov r8, r8)
 80408be:	46c0      	nop			@ (mov r8, r8)
 80408c0:	46c0      	nop			@ (mov r8, r8)
 80408c2:	46c0      	nop			@ (mov r8, r8)
 80408c4:	46c0      	nop			@ (mov r8, r8)
 80408c6:	46c0      	nop			@ (mov r8, r8)
 80408c8:	46c0      	nop			@ (mov r8, r8)
 80408ca:	46c0      	nop			@ (mov r8, r8)
 80408cc:	46c0      	nop			@ (mov r8, r8)
 80408ce:	46c0      	nop			@ (mov r8, r8)
 80408d0:	46c0      	nop			@ (mov r8, r8)
 80408d2:	46c0      	nop			@ (mov r8, r8)
 80408d4:	46c0      	nop			@ (mov r8, r8)
 80408d6:	46c0      	nop			@ (mov r8, r8)
 80408d8:	46c0      	nop			@ (mov r8, r8)
 80408da:	46c0      	nop			@ (mov r8, r8)
 80408dc:	46c0      	nop			@ (mov r8, r8)
 80408de:	46c0      	nop			@ (mov r8, r8)
 80408e0:	46c0      	nop			@ (mov r8, r8)
 80408e2:	46c0      	nop			@ (mov r8, r8)
 80408e4:	46c0      	nop			@ (mov r8, r8)
 80408e6:	46c0      	nop			@ (mov r8, r8)
 80408e8:	46c0      	nop			@ (mov r8, r8)
 80408ea:	46c0      	nop			@ (mov r8, r8)
 80408ec:	46c0      	nop			@ (mov r8, r8)
 80408ee:	46c0      	nop			@ (mov r8, r8)
 80408f0:	46c0      	nop			@ (mov r8, r8)
 80408f2:	46c0      	nop			@ (mov r8, r8)
 80408f4:	46c0      	nop			@ (mov r8, r8)
 80408f6:	46c0      	nop			@ (mov r8, r8)
 80408f8:	46c0      	nop			@ (mov r8, r8)
 80408fa:	46c0      	nop			@ (mov r8, r8)
 80408fc:	46c0      	nop			@ (mov r8, r8)
 80408fe:	46c0      	nop			@ (mov r8, r8)
 8040900:	46c0      	nop			@ (mov r8, r8)
 8040902:	46c0      	nop			@ (mov r8, r8)
 8040904:	46c0      	nop			@ (mov r8, r8)
 8040906:	46c0      	nop			@ (mov r8, r8)
 8040908:	46c0      	nop			@ (mov r8, r8)
 804090a:	46c0      	nop			@ (mov r8, r8)
 804090c:	46c0      	nop			@ (mov r8, r8)
 804090e:	46c0      	nop			@ (mov r8, r8)
 8040910:	46c0      	nop			@ (mov r8, r8)
 8040912:	46c0      	nop			@ (mov r8, r8)
 8040914:	46c0      	nop			@ (mov r8, r8)
 8040916:	46c0      	nop			@ (mov r8, r8)
 8040918:	46c0      	nop			@ (mov r8, r8)
 804091a:	46c0      	nop			@ (mov r8, r8)
 804091c:	46c0      	nop			@ (mov r8, r8)
 804091e:	46c0      	nop			@ (mov r8, r8)
 8040920:	46c0      	nop			@ (mov r8, r8)
 8040922:	46c0      	nop			@ (mov r8, r8)
 8040924:	46c0      	nop			@ (mov r8, r8)
 8040926:	46c0      	nop			@ (mov r8, r8)
 8040928:	46c0      	nop			@ (mov r8, r8)
 804092a:	46c0      	nop			@ (mov r8, r8)
 804092c:	46c0      	nop			@ (mov r8, r8)
 804092e:	46c0      	nop			@ (mov r8, r8)
 8040930:	46c0      	nop			@ (mov r8, r8)
 8040932:	46c0      	nop			@ (mov r8, r8)
 8040934:	46c0      	nop			@ (mov r8, r8)
 8040936:	46c0      	nop			@ (mov r8, r8)
 8040938:	46c0      	nop			@ (mov r8, r8)
 804093a:	46c0      	nop			@ (mov r8, r8)
 804093c:	46c0      	nop			@ (mov r8, r8)
 804093e:	46c0      	nop			@ (mov r8, r8)
 8040940:	46c0      	nop			@ (mov r8, r8)
 8040942:	46c0      	nop			@ (mov r8, r8)
 8040944:	46c0      	nop			@ (mov r8, r8)
 8040946:	46c0      	nop			@ (mov r8, r8)
 8040948:	46c0      	nop			@ (mov r8, r8)
 804094a:	46c0      	nop			@ (mov r8, r8)
 804094c:	46c0      	nop			@ (mov r8, r8)
 804094e:	46c0      	nop			@ (mov r8, r8)
 8040950:	46c0      	nop			@ (mov r8, r8)
 8040952:	46c0      	nop			@ (mov r8, r8)
 8040954:	46c0      	nop			@ (mov r8, r8)
 8040956:	46c0      	nop			@ (mov r8, r8)
 8040958:	46c0      	nop			@ (mov r8, r8)
 804095a:	46c0      	nop			@ (mov r8, r8)
 804095c:	46c0      	nop			@ (mov r8, r8)
 804095e:	46c0      	nop			@ (mov r8, r8)
 8040960:	46c0      	nop			@ (mov r8, r8)
 8040962:	46c0      	nop			@ (mov r8, r8)
 8040964:	46c0      	nop			@ (mov r8, r8)
 8040966:	46c0      	nop			@ (mov r8, r8)
 8040968:	46c0      	nop			@ (mov r8, r8)
 804096a:	46c0      	nop			@ (mov r8, r8)
 804096c:	46c0      	nop			@ (mov r8, r8)
 804096e:	46c0      	nop			@ (mov r8, r8)
 8040970:	46c0      	nop			@ (mov r8, r8)
 8040972:	46c0      	nop			@ (mov r8, r8)
 8040974:	46c0      	nop			@ (mov r8, r8)
 8040976:	46c0      	nop			@ (mov r8, r8)
 8040978:	46c0      	nop			@ (mov r8, r8)
 804097a:	46c0      	nop			@ (mov r8, r8)
 804097c:	46c0      	nop			@ (mov r8, r8)
 804097e:	46c0      	nop			@ (mov r8, r8)
 8040980:	46c0      	nop			@ (mov r8, r8)
 8040982:	46c0      	nop			@ (mov r8, r8)
 8040984:	46c0      	nop			@ (mov r8, r8)
 8040986:	46c0      	nop			@ (mov r8, r8)
 8040988:	46c0      	nop			@ (mov r8, r8)
 804098a:	46c0      	nop			@ (mov r8, r8)
 804098c:	46c0      	nop			@ (mov r8, r8)
 804098e:	46c0      	nop			@ (mov r8, r8)
 8040990:	46c0      	nop			@ (mov r8, r8)
 8040992:	46c0      	nop			@ (mov r8, r8)
 8040994:	46c0      	nop			@ (mov r8, r8)
 8040996:	46c0      	nop			@ (mov r8, r8)
 8040998:	46c0      	nop			@ (mov r8, r8)
 804099a:	46c0      	nop			@ (mov r8, r8)
 804099c:	46c0      	nop			@ (mov r8, r8)
 804099e:	46c0      	nop			@ (mov r8, r8)
 80409a0:	46c0      	nop			@ (mov r8, r8)
 80409a2:	46c0      	nop			@ (mov r8, r8)
 80409a4:	46c0      	nop			@ (mov r8, r8)
 80409a6:	46c0      	nop			@ (mov r8, r8)
 80409a8:	46c0      	nop			@ (mov r8, r8)
 80409aa:	46c0      	nop			@ (mov r8, r8)
 80409ac:	46c0      	nop			@ (mov r8, r8)
 80409ae:	46c0      	nop			@ (mov r8, r8)
 80409b0:	46c0      	nop			@ (mov r8, r8)
 80409b2:	46c0      	nop			@ (mov r8, r8)
 80409b4:	46c0      	nop			@ (mov r8, r8)
 80409b6:	46c0      	nop			@ (mov r8, r8)
 80409b8:	46c0      	nop			@ (mov r8, r8)
 80409ba:	46c0      	nop			@ (mov r8, r8)
 80409bc:	46c0      	nop			@ (mov r8, r8)
 80409be:	46c0      	nop			@ (mov r8, r8)
 80409c0:	46c0      	nop			@ (mov r8, r8)
 80409c2:	46c0      	nop			@ (mov r8, r8)
 80409c4:	46c0      	nop			@ (mov r8, r8)
 80409c6:	46c0      	nop			@ (mov r8, r8)
 80409c8:	46c0      	nop			@ (mov r8, r8)
 80409ca:	46c0      	nop			@ (mov r8, r8)
 80409cc:	46c0      	nop			@ (mov r8, r8)
 80409ce:	46c0      	nop			@ (mov r8, r8)
 80409d0:	46c0      	nop			@ (mov r8, r8)
 80409d2:	46c0      	nop			@ (mov r8, r8)
 80409d4:	46c0      	nop			@ (mov r8, r8)
 80409d6:	46c0      	nop			@ (mov r8, r8)
 80409d8:	46c0      	nop			@ (mov r8, r8)
 80409da:	46c0      	nop			@ (mov r8, r8)
 80409dc:	46c0      	nop			@ (mov r8, r8)
 80409de:	46c0      	nop			@ (mov r8, r8)
 80409e0:	46c0      	nop			@ (mov r8, r8)
 80409e2:	46c0      	nop			@ (mov r8, r8)
 80409e4:	46c0      	nop			@ (mov r8, r8)
 80409e6:	46c0      	nop			@ (mov r8, r8)
 80409e8:	46c0      	nop			@ (mov r8, r8)
 80409ea:	46c0      	nop			@ (mov r8, r8)
 80409ec:	46c0      	nop			@ (mov r8, r8)
 80409ee:	46c0      	nop			@ (mov r8, r8)
 80409f0:	46c0      	nop			@ (mov r8, r8)
 80409f2:	46c0      	nop			@ (mov r8, r8)
 80409f4:	46c0      	nop			@ (mov r8, r8)
 80409f6:	46c0      	nop			@ (mov r8, r8)
 80409f8:	46c0      	nop			@ (mov r8, r8)
 80409fa:	46c0      	nop			@ (mov r8, r8)
 80409fc:	46c0      	nop			@ (mov r8, r8)
 80409fe:	46c0      	nop			@ (mov r8, r8)
 8040a00:	46c0      	nop			@ (mov r8, r8)
 8040a02:	46c0      	nop			@ (mov r8, r8)
 8040a04:	46c0      	nop			@ (mov r8, r8)
 8040a06:	46c0      	nop			@ (mov r8, r8)
 8040a08:	46c0      	nop			@ (mov r8, r8)
 8040a0a:	46c0      	nop			@ (mov r8, r8)
 8040a0c:	46c0      	nop			@ (mov r8, r8)
 8040a0e:	46c0      	nop			@ (mov r8, r8)
 8040a10:	46c0      	nop			@ (mov r8, r8)
 8040a12:	46c0      	nop			@ (mov r8, r8)
 8040a14:	46c0      	nop			@ (mov r8, r8)
 8040a16:	46c0      	nop			@ (mov r8, r8)
 8040a18:	46c0      	nop			@ (mov r8, r8)
 8040a1a:	46c0      	nop			@ (mov r8, r8)
 8040a1c:	46c0      	nop			@ (mov r8, r8)
 8040a1e:	46c0      	nop			@ (mov r8, r8)
 8040a20:	46c0      	nop			@ (mov r8, r8)
 8040a22:	46c0      	nop			@ (mov r8, r8)
 8040a24:	46c0      	nop			@ (mov r8, r8)
 8040a26:	46c0      	nop			@ (mov r8, r8)
 8040a28:	46c0      	nop			@ (mov r8, r8)
 8040a2a:	46c0      	nop			@ (mov r8, r8)
 8040a2c:	46c0      	nop			@ (mov r8, r8)
 8040a2e:	46c0      	nop			@ (mov r8, r8)
 8040a30:	46c0      	nop			@ (mov r8, r8)
 8040a32:	46c0      	nop			@ (mov r8, r8)
 8040a34:	46c0      	nop			@ (mov r8, r8)
 8040a36:	46c0      	nop			@ (mov r8, r8)
 8040a38:	46c0      	nop			@ (mov r8, r8)
 8040a3a:	46c0      	nop			@ (mov r8, r8)
 8040a3c:	46c0      	nop			@ (mov r8, r8)
 8040a3e:	46c0      	nop			@ (mov r8, r8)
 8040a40:	46c0      	nop			@ (mov r8, r8)
 8040a42:	46c0      	nop			@ (mov r8, r8)
 8040a44:	46c0      	nop			@ (mov r8, r8)
 8040a46:	46c0      	nop			@ (mov r8, r8)
 8040a48:	46c0      	nop			@ (mov r8, r8)
 8040a4a:	46c0      	nop			@ (mov r8, r8)
 8040a4c:	46c0      	nop			@ (mov r8, r8)
 8040a4e:	46c0      	nop			@ (mov r8, r8)
 8040a50:	46c0      	nop			@ (mov r8, r8)
 8040a52:	46c0      	nop			@ (mov r8, r8)
 8040a54:	46c0      	nop			@ (mov r8, r8)
 8040a56:	46c0      	nop			@ (mov r8, r8)
 8040a58:	46c0      	nop			@ (mov r8, r8)
 8040a5a:	46c0      	nop			@ (mov r8, r8)
 8040a5c:	46c0      	nop			@ (mov r8, r8)
 8040a5e:	46c0      	nop			@ (mov r8, r8)
 8040a60:	46c0      	nop			@ (mov r8, r8)
 8040a62:	46c0      	nop			@ (mov r8, r8)
 8040a64:	46c0      	nop			@ (mov r8, r8)
 8040a66:	46c0      	nop			@ (mov r8, r8)
 8040a68:	46c0      	nop			@ (mov r8, r8)
 8040a6a:	46c0      	nop			@ (mov r8, r8)
 8040a6c:	46c0      	nop			@ (mov r8, r8)
 8040a6e:	46c0      	nop			@ (mov r8, r8)
 8040a70:	46c0      	nop			@ (mov r8, r8)
 8040a72:	46c0      	nop			@ (mov r8, r8)
 8040a74:	46c0      	nop			@ (mov r8, r8)
 8040a76:	46c0      	nop			@ (mov r8, r8)
 8040a78:	46c0      	nop			@ (mov r8, r8)
 8040a7a:	46c0      	nop			@ (mov r8, r8)
 8040a7c:	46c0      	nop			@ (mov r8, r8)
 8040a7e:	46c0      	nop			@ (mov r8, r8)
 8040a80:	46c0      	nop			@ (mov r8, r8)
 8040a82:	46c0      	nop			@ (mov r8, r8)
 8040a84:	46c0      	nop			@ (mov r8, r8)
 8040a86:	46c0      	nop			@ (mov r8, r8)
 8040a88:	46c0      	nop			@ (mov r8, r8)
 8040a8a:	46c0      	nop			@ (mov r8, r8)
 8040a8c:	46c0      	nop			@ (mov r8, r8)
 8040a8e:	46c0      	nop			@ (mov r8, r8)
 8040a90:	46c0      	nop			@ (mov r8, r8)
 8040a92:	46c0      	nop			@ (mov r8, r8)
 8040a94:	46c0      	nop			@ (mov r8, r8)
 8040a96:	46c0      	nop			@ (mov r8, r8)
 8040a98:	46c0      	nop			@ (mov r8, r8)
 8040a9a:	46c0      	nop			@ (mov r8, r8)
 8040a9c:	46c0      	nop			@ (mov r8, r8)
 8040a9e:	46c0      	nop			@ (mov r8, r8)
 8040aa0:	46c0      	nop			@ (mov r8, r8)
 8040aa2:	46c0      	nop			@ (mov r8, r8)
 8040aa4:	46c0      	nop			@ (mov r8, r8)
 8040aa6:	46c0      	nop			@ (mov r8, r8)
 8040aa8:	46c0      	nop			@ (mov r8, r8)
 8040aaa:	46c0      	nop			@ (mov r8, r8)
 8040aac:	46c0      	nop			@ (mov r8, r8)
 8040aae:	46c0      	nop			@ (mov r8, r8)
 8040ab0:	46c0      	nop			@ (mov r8, r8)
 8040ab2:	46c0      	nop			@ (mov r8, r8)
 8040ab4:	46c0      	nop			@ (mov r8, r8)
 8040ab6:	46c0      	nop			@ (mov r8, r8)
 8040ab8:	46c0      	nop			@ (mov r8, r8)
 8040aba:	46c0      	nop			@ (mov r8, r8)
 8040abc:	46c0      	nop			@ (mov r8, r8)
 8040abe:	46c0      	nop			@ (mov r8, r8)
 8040ac0:	46c0      	nop			@ (mov r8, r8)
 8040ac2:	46c0      	nop			@ (mov r8, r8)
 8040ac4:	46c0      	nop			@ (mov r8, r8)
 8040ac6:	46c0      	nop			@ (mov r8, r8)
 8040ac8:	46c0      	nop			@ (mov r8, r8)
 8040aca:	46c0      	nop			@ (mov r8, r8)
 8040acc:	46c0      	nop			@ (mov r8, r8)
 8040ace:	46c0      	nop			@ (mov r8, r8)
 8040ad0:	46c0      	nop			@ (mov r8, r8)
 8040ad2:	46c0      	nop			@ (mov r8, r8)
 8040ad4:	46c0      	nop			@ (mov r8, r8)
 8040ad6:	46c0      	nop			@ (mov r8, r8)
 8040ad8:	46c0      	nop			@ (mov r8, r8)
 8040ada:	46c0      	nop			@ (mov r8, r8)
 8040adc:	46c0      	nop			@ (mov r8, r8)
 8040ade:	46c0      	nop			@ (mov r8, r8)
 8040ae0:	46c0      	nop			@ (mov r8, r8)
 8040ae2:	46c0      	nop			@ (mov r8, r8)
 8040ae4:	46c0      	nop			@ (mov r8, r8)
 8040ae6:	46c0      	nop			@ (mov r8, r8)
 8040ae8:	46c0      	nop			@ (mov r8, r8)
 8040aea:	46c0      	nop			@ (mov r8, r8)
 8040aec:	46c0      	nop			@ (mov r8, r8)
 8040aee:	46c0      	nop			@ (mov r8, r8)
 8040af0:	46c0      	nop			@ (mov r8, r8)
 8040af2:	46c0      	nop			@ (mov r8, r8)
 8040af4:	46c0      	nop			@ (mov r8, r8)
 8040af6:	46c0      	nop			@ (mov r8, r8)
 8040af8:	46c0      	nop			@ (mov r8, r8)
 8040afa:	46c0      	nop			@ (mov r8, r8)
 8040afc:	46c0      	nop			@ (mov r8, r8)
 8040afe:	46c0      	nop			@ (mov r8, r8)
 8040b00:	46c0      	nop			@ (mov r8, r8)
 8040b02:	46c0      	nop			@ (mov r8, r8)
 8040b04:	46c0      	nop			@ (mov r8, r8)
 8040b06:	46c0      	nop			@ (mov r8, r8)
 8040b08:	46c0      	nop			@ (mov r8, r8)
 8040b0a:	46c0      	nop			@ (mov r8, r8)
 8040b0c:	46c0      	nop			@ (mov r8, r8)
 8040b0e:	46c0      	nop			@ (mov r8, r8)
 8040b10:	46c0      	nop			@ (mov r8, r8)
 8040b12:	46c0      	nop			@ (mov r8, r8)
 8040b14:	46c0      	nop			@ (mov r8, r8)
 8040b16:	46c0      	nop			@ (mov r8, r8)
 8040b18:	46c0      	nop			@ (mov r8, r8)
 8040b1a:	46c0      	nop			@ (mov r8, r8)
 8040b1c:	46c0      	nop			@ (mov r8, r8)
 8040b1e:	46c0      	nop			@ (mov r8, r8)
 8040b20:	46c0      	nop			@ (mov r8, r8)
 8040b22:	46c0      	nop			@ (mov r8, r8)
 8040b24:	46c0      	nop			@ (mov r8, r8)
 8040b26:	46c0      	nop			@ (mov r8, r8)
 8040b28:	46c0      	nop			@ (mov r8, r8)
 8040b2a:	46c0      	nop			@ (mov r8, r8)
 8040b2c:	46c0      	nop			@ (mov r8, r8)
 8040b2e:	46c0      	nop			@ (mov r8, r8)
 8040b30:	46c0      	nop			@ (mov r8, r8)
 8040b32:	46c0      	nop			@ (mov r8, r8)
 8040b34:	46c0      	nop			@ (mov r8, r8)
 8040b36:	46c0      	nop			@ (mov r8, r8)
 8040b38:	46c0      	nop			@ (mov r8, r8)
 8040b3a:	46c0      	nop			@ (mov r8, r8)
 8040b3c:	46c0      	nop			@ (mov r8, r8)
 8040b3e:	46c0      	nop			@ (mov r8, r8)
 8040b40:	46c0      	nop			@ (mov r8, r8)
 8040b42:	46c0      	nop			@ (mov r8, r8)
 8040b44:	46c0      	nop			@ (mov r8, r8)
 8040b46:	46c0      	nop			@ (mov r8, r8)
 8040b48:	46c0      	nop			@ (mov r8, r8)
 8040b4a:	46c0      	nop			@ (mov r8, r8)
 8040b4c:	46c0      	nop			@ (mov r8, r8)
 8040b4e:	46c0      	nop			@ (mov r8, r8)
 8040b50:	46c0      	nop			@ (mov r8, r8)
 8040b52:	46c0      	nop			@ (mov r8, r8)
 8040b54:	46c0      	nop			@ (mov r8, r8)
 8040b56:	46c0      	nop			@ (mov r8, r8)
 8040b58:	46c0      	nop			@ (mov r8, r8)
 8040b5a:	46c0      	nop			@ (mov r8, r8)
 8040b5c:	46c0      	nop			@ (mov r8, r8)
 8040b5e:	46c0      	nop			@ (mov r8, r8)
 8040b60:	46c0      	nop			@ (mov r8, r8)
 8040b62:	46c0      	nop			@ (mov r8, r8)
 8040b64:	46c0      	nop			@ (mov r8, r8)
 8040b66:	46c0      	nop			@ (mov r8, r8)
 8040b68:	46c0      	nop			@ (mov r8, r8)
 8040b6a:	46c0      	nop			@ (mov r8, r8)
 8040b6c:	46c0      	nop			@ (mov r8, r8)
 8040b6e:	46c0      	nop			@ (mov r8, r8)
 8040b70:	46c0      	nop			@ (mov r8, r8)
 8040b72:	46c0      	nop			@ (mov r8, r8)
 8040b74:	46c0      	nop			@ (mov r8, r8)
 8040b76:	46c0      	nop			@ (mov r8, r8)
 8040b78:	46c0      	nop			@ (mov r8, r8)
 8040b7a:	46c0      	nop			@ (mov r8, r8)
 8040b7c:	46c0      	nop			@ (mov r8, r8)
 8040b7e:	46c0      	nop			@ (mov r8, r8)
 8040b80:	46c0      	nop			@ (mov r8, r8)
 8040b82:	46c0      	nop			@ (mov r8, r8)
 8040b84:	46c0      	nop			@ (mov r8, r8)
 8040b86:	46c0      	nop			@ (mov r8, r8)
 8040b88:	46c0      	nop			@ (mov r8, r8)
 8040b8a:	46c0      	nop			@ (mov r8, r8)
 8040b8c:	46c0      	nop			@ (mov r8, r8)
 8040b8e:	46c0      	nop			@ (mov r8, r8)
 8040b90:	46c0      	nop			@ (mov r8, r8)
 8040b92:	46c0      	nop			@ (mov r8, r8)
 8040b94:	46c0      	nop			@ (mov r8, r8)
 8040b96:	46c0      	nop			@ (mov r8, r8)
 8040b98:	46c0      	nop			@ (mov r8, r8)
 8040b9a:	46c0      	nop			@ (mov r8, r8)
 8040b9c:	46c0      	nop			@ (mov r8, r8)
 8040b9e:	46c0      	nop			@ (mov r8, r8)
 8040ba0:	46c0      	nop			@ (mov r8, r8)
 8040ba2:	46c0      	nop			@ (mov r8, r8)
 8040ba4:	46c0      	nop			@ (mov r8, r8)
 8040ba6:	46c0      	nop			@ (mov r8, r8)
 8040ba8:	46c0      	nop			@ (mov r8, r8)
 8040baa:	46c0      	nop			@ (mov r8, r8)
 8040bac:	46c0      	nop			@ (mov r8, r8)
 8040bae:	46c0      	nop			@ (mov r8, r8)
 8040bb0:	46c0      	nop			@ (mov r8, r8)
 8040bb2:	46c0      	nop			@ (mov r8, r8)
 8040bb4:	46c0      	nop			@ (mov r8, r8)
 8040bb6:	46c0      	nop			@ (mov r8, r8)
 8040bb8:	46c0      	nop			@ (mov r8, r8)
 8040bba:	46c0      	nop			@ (mov r8, r8)
 8040bbc:	46c0      	nop			@ (mov r8, r8)
 8040bbe:	46c0      	nop			@ (mov r8, r8)
 8040bc0:	46c0      	nop			@ (mov r8, r8)
 8040bc2:	46c0      	nop			@ (mov r8, r8)
 8040bc4:	46c0      	nop			@ (mov r8, r8)
 8040bc6:	46c0      	nop			@ (mov r8, r8)
 8040bc8:	46c0      	nop			@ (mov r8, r8)
 8040bca:	46c0      	nop			@ (mov r8, r8)
 8040bcc:	46c0      	nop			@ (mov r8, r8)
 8040bce:	46c0      	nop			@ (mov r8, r8)
 8040bd0:	46c0      	nop			@ (mov r8, r8)
 8040bd2:	46c0      	nop			@ (mov r8, r8)
 8040bd4:	46c0      	nop			@ (mov r8, r8)
 8040bd6:	46c0      	nop			@ (mov r8, r8)
 8040bd8:	46c0      	nop			@ (mov r8, r8)
 8040bda:	46c0      	nop			@ (mov r8, r8)
 8040bdc:	46c0      	nop			@ (mov r8, r8)
 8040bde:	46c0      	nop			@ (mov r8, r8)
 8040be0:	46c0      	nop			@ (mov r8, r8)
 8040be2:	46c0      	nop			@ (mov r8, r8)
 8040be4:	46c0      	nop			@ (mov r8, r8)
 8040be6:	46c0      	nop			@ (mov r8, r8)
 8040be8:	46c0      	nop			@ (mov r8, r8)
 8040bea:	46c0      	nop			@ (mov r8, r8)
 8040bec:	46c0      	nop			@ (mov r8, r8)
 8040bee:	46c0      	nop			@ (mov r8, r8)
 8040bf0:	46c0      	nop			@ (mov r8, r8)
 8040bf2:	46c0      	nop			@ (mov r8, r8)
 8040bf4:	46c0      	nop			@ (mov r8, r8)
 8040bf6:	46c0      	nop			@ (mov r8, r8)
 8040bf8:	46c0      	nop			@ (mov r8, r8)
 8040bfa:	46c0      	nop			@ (mov r8, r8)
 8040bfc:	46c0      	nop			@ (mov r8, r8)
 8040bfe:	46c0      	nop			@ (mov r8, r8)
 8040c00:	46c0      	nop			@ (mov r8, r8)
 8040c02:	46c0      	nop			@ (mov r8, r8)
 8040c04:	46c0      	nop			@ (mov r8, r8)
 8040c06:	46c0      	nop			@ (mov r8, r8)
 8040c08:	46c0      	nop			@ (mov r8, r8)
 8040c0a:	46c0      	nop			@ (mov r8, r8)
 8040c0c:	46c0      	nop			@ (mov r8, r8)
 8040c0e:	46c0      	nop			@ (mov r8, r8)
 8040c10:	46c0      	nop			@ (mov r8, r8)
 8040c12:	46c0      	nop			@ (mov r8, r8)
 8040c14:	46c0      	nop			@ (mov r8, r8)
 8040c16:	46c0      	nop			@ (mov r8, r8)
 8040c18:	46c0      	nop			@ (mov r8, r8)
 8040c1a:	46c0      	nop			@ (mov r8, r8)
 8040c1c:	46c0      	nop			@ (mov r8, r8)
 8040c1e:	46c0      	nop			@ (mov r8, r8)
 8040c20:	46c0      	nop			@ (mov r8, r8)
 8040c22:	46c0      	nop			@ (mov r8, r8)
 8040c24:	46c0      	nop			@ (mov r8, r8)
 8040c26:	46c0      	nop			@ (mov r8, r8)
 8040c28:	46c0      	nop			@ (mov r8, r8)
 8040c2a:	46c0      	nop			@ (mov r8, r8)
 8040c2c:	46c0      	nop			@ (mov r8, r8)
 8040c2e:	46c0      	nop			@ (mov r8, r8)
 8040c30:	46c0      	nop			@ (mov r8, r8)
 8040c32:	46c0      	nop			@ (mov r8, r8)
 8040c34:	46c0      	nop			@ (mov r8, r8)
 8040c36:	46c0      	nop			@ (mov r8, r8)
 8040c38:	46c0      	nop			@ (mov r8, r8)
 8040c3a:	46c0      	nop			@ (mov r8, r8)
 8040c3c:	46c0      	nop			@ (mov r8, r8)
 8040c3e:	46c0      	nop			@ (mov r8, r8)
 8040c40:	46c0      	nop			@ (mov r8, r8)
 8040c42:	46c0      	nop			@ (mov r8, r8)
 8040c44:	46c0      	nop			@ (mov r8, r8)
 8040c46:	46c0      	nop			@ (mov r8, r8)
 8040c48:	46c0      	nop			@ (mov r8, r8)
 8040c4a:	46c0      	nop			@ (mov r8, r8)
 8040c4c:	46c0      	nop			@ (mov r8, r8)
 8040c4e:	46c0      	nop			@ (mov r8, r8)
 8040c50:	46c0      	nop			@ (mov r8, r8)
 8040c52:	46c0      	nop			@ (mov r8, r8)
 8040c54:	46c0      	nop			@ (mov r8, r8)
 8040c56:	46c0      	nop			@ (mov r8, r8)
 8040c58:	46c0      	nop			@ (mov r8, r8)
 8040c5a:	46c0      	nop			@ (mov r8, r8)
 8040c5c:	46c0      	nop			@ (mov r8, r8)
 8040c5e:	46c0      	nop			@ (mov r8, r8)
 8040c60:	46c0      	nop			@ (mov r8, r8)
 8040c62:	46c0      	nop			@ (mov r8, r8)
 8040c64:	46c0      	nop			@ (mov r8, r8)
 8040c66:	46c0      	nop			@ (mov r8, r8)
 8040c68:	46c0      	nop			@ (mov r8, r8)
 8040c6a:	46c0      	nop			@ (mov r8, r8)
 8040c6c:	46c0      	nop			@ (mov r8, r8)
 8040c6e:	46c0      	nop			@ (mov r8, r8)
 8040c70:	46c0      	nop			@ (mov r8, r8)
 8040c72:	46c0      	nop			@ (mov r8, r8)
 8040c74:	46c0      	nop			@ (mov r8, r8)
 8040c76:	46c0      	nop			@ (mov r8, r8)
 8040c78:	46c0      	nop			@ (mov r8, r8)
 8040c7a:	46c0      	nop			@ (mov r8, r8)
 8040c7c:	46c0      	nop			@ (mov r8, r8)
 8040c7e:	46c0      	nop			@ (mov r8, r8)
 8040c80:	46c0      	nop			@ (mov r8, r8)
 8040c82:	46c0      	nop			@ (mov r8, r8)
 8040c84:	46c0      	nop			@ (mov r8, r8)
 8040c86:	46c0      	nop			@ (mov r8, r8)
 8040c88:	46c0      	nop			@ (mov r8, r8)
 8040c8a:	46c0      	nop			@ (mov r8, r8)
 8040c8c:	46c0      	nop			@ (mov r8, r8)
 8040c8e:	46c0      	nop			@ (mov r8, r8)
 8040c90:	46c0      	nop			@ (mov r8, r8)
 8040c92:	46c0      	nop			@ (mov r8, r8)
 8040c94:	4b10      	ldr	r3, [pc, #64]	@ (8040cd8 <get_accurate_trace+0x6a4>)
 8040c96:	681b      	ldr	r3, [r3, #0]
 8040c98:	6a1a      	ldr	r2, [r3, #32]
 8040c9a:	f241 1311 	movw	r3, #4369	@ 0x1111
 8040c9e:	4013      	ands	r3, r2
 8040ca0:	2b00      	cmp	r3, #0
 8040ca2:	d10f      	bne.n	8040cc4 <get_accurate_trace+0x690>
 8040ca4:	4b0c      	ldr	r3, [pc, #48]	@ (8040cd8 <get_accurate_trace+0x6a4>)
 8040ca6:	681b      	ldr	r3, [r3, #0]
 8040ca8:	6a1a      	ldr	r2, [r3, #32]
 8040caa:	f240 4344 	movw	r3, #1092	@ 0x444
 8040cae:	4013      	ands	r3, r2
 8040cb0:	2b00      	cmp	r3, #0
 8040cb2:	d107      	bne.n	8040cc4 <get_accurate_trace+0x690>
 8040cb4:	4b08      	ldr	r3, [pc, #32]	@ (8040cd8 <get_accurate_trace+0x6a4>)
 8040cb6:	681b      	ldr	r3, [r3, #0]
 8040cb8:	681a      	ldr	r2, [r3, #0]
 8040cba:	4b07      	ldr	r3, [pc, #28]	@ (8040cd8 <get_accurate_trace+0x6a4>)
 8040cbc:	681b      	ldr	r3, [r3, #0]
 8040cbe:	f022 0201 	bic.w	r2, r2, #1
 8040cc2:	601a      	str	r2, [r3, #0]
 8040cc4:	4805      	ldr	r0, [pc, #20]	@ (8040cdc <get_accurate_trace+0x6a8>)
 8040cc6:	f000 fe5e 	bl	8041986 <HAL_DMA_Abort>
 8040cca:	4805      	ldr	r0, [pc, #20]	@ (8040ce0 <get_accurate_trace+0x6ac>)
 8040ccc:	f002 ffcd 	bl	8043c6a <HAL_TIM_Base_Stop>
 8040cd0:	bf00      	nop
 8040cd2:	3710      	adds	r7, #16
 8040cd4:	46bd      	mov	sp, r7
 8040cd6:	bd80      	pop	{r7, pc}
 8040cd8:	200180b4 	.word	0x200180b4
 8040cdc:	2001814c 	.word	0x2001814c
 8040ce0:	20018100 	.word	0x20018100

08040ce4 <process_accurate_collision>:
 8040ce4:	b580      	push	{r7, lr}
 8040ce6:	b084      	sub	sp, #16
 8040ce8:	af00      	add	r7, sp, #0
 8040cea:	6078      	str	r0, [r7, #4]
 8040cec:	4b06      	ldr	r3, [pc, #24]	@ (8040d08 <process_accurate_collision+0x24>)
 8040cee:	681b      	ldr	r3, [r3, #0]
 8040cf0:	681b      	ldr	r3, [r3, #0]
 8040cf2:	60fb      	str	r3, [r7, #12]
 8040cf4:	687a      	ldr	r2, [r7, #4]
 8040cf6:	68f9      	ldr	r1, [r7, #12]
 8040cf8:	4804      	ldr	r0, [pc, #16]	@ (8040d0c <process_accurate_collision+0x28>)
 8040cfa:	f004 fb65 	bl	80453c8 <iprintf>
 8040cfe:	bf00      	nop
 8040d00:	3710      	adds	r7, #16
 8040d02:	46bd      	mov	sp, r7
 8040d04:	bd80      	pop	{r7, pc}
 8040d06:	bf00      	nop
 8040d08:	20018018 	.word	0x20018018
 8040d0c:	080461a8 	.word	0x080461a8

08040d10 <accurate_trace>:
 8040d10:	b580      	push	{r7, lr}
 8040d12:	b082      	sub	sp, #8
 8040d14:	af00      	add	r7, sp, #0
 8040d16:	2300      	movs	r3, #0
 8040d18:	607b      	str	r3, [r7, #4]
 8040d1a:	e009      	b.n	8040d30 <accurate_trace+0x20>
 8040d1c:	490a      	ldr	r1, [pc, #40]	@ (8040d48 <accurate_trace+0x38>)
 8040d1e:	6878      	ldr	r0, [r7, #4]
 8040d20:	f7ff fc88 	bl	8040634 <get_accurate_trace>
 8040d24:	6878      	ldr	r0, [r7, #4]
 8040d26:	f7ff ffdd 	bl	8040ce4 <process_accurate_collision>
 8040d2a:	687b      	ldr	r3, [r7, #4]
 8040d2c:	3301      	adds	r3, #1
 8040d2e:	607b      	str	r3, [r7, #4]
 8040d30:	4b06      	ldr	r3, [pc, #24]	@ (8040d4c <accurate_trace+0x3c>)
 8040d32:	681b      	ldr	r3, [r3, #0]
 8040d34:	687a      	ldr	r2, [r7, #4]
 8040d36:	429a      	cmp	r2, r3
 8040d38:	dbf0      	blt.n	8040d1c <accurate_trace+0xc>
 8040d3a:	4805      	ldr	r0, [pc, #20]	@ (8040d50 <accurate_trace+0x40>)
 8040d3c:	f004 fbac 	bl	8045498 <puts>
 8040d40:	bf00      	nop
 8040d42:	3708      	adds	r7, #8
 8040d44:	46bd      	mov	sp, r7
 8040d46:	bd80      	pop	{r7, pc}
 8040d48:	08040609 	.word	0x08040609
 8040d4c:	200180ac 	.word	0x200180ac
 8040d50:	080461b4 	.word	0x080461b4

08040d54 <measure_time_old>:
 8040d54:	b580      	push	{r7, lr}
 8040d56:	b082      	sub	sp, #8
 8040d58:	af00      	add	r7, sp, #0
 8040d5a:	4b13      	ldr	r3, [pc, #76]	@ (8040da8 <measure_time_old+0x54>)
 8040d5c:	2200      	movs	r2, #0
 8040d5e:	601a      	str	r2, [r3, #0]
 8040d60:	4b11      	ldr	r3, [pc, #68]	@ (8040da8 <measure_time_old+0x54>)
 8040d62:	4a12      	ldr	r2, [pc, #72]	@ (8040dac <measure_time_old+0x58>)
 8040d64:	605a      	str	r2, [r3, #4]
 8040d66:	4b10      	ldr	r3, [pc, #64]	@ (8040da8 <measure_time_old+0x54>)
 8040d68:	2200      	movs	r2, #0
 8040d6a:	609a      	str	r2, [r3, #8]
 8040d6c:	4b0e      	ldr	r3, [pc, #56]	@ (8040da8 <measure_time_old+0x54>)
 8040d6e:	2205      	movs	r2, #5
 8040d70:	601a      	str	r2, [r3, #0]
 8040d72:	4b0d      	ldr	r3, [pc, #52]	@ (8040da8 <measure_time_old+0x54>)
 8040d74:	689b      	ldr	r3, [r3, #8]
 8040d76:	607b      	str	r3, [r7, #4]
 8040d78:	f7ff fc46 	bl	8040608 <victim_>
 8040d7c:	4b0a      	ldr	r3, [pc, #40]	@ (8040da8 <measure_time_old+0x54>)
 8040d7e:	689b      	ldr	r3, [r3, #8]
 8040d80:	603b      	str	r3, [r7, #0]
 8040d82:	687a      	ldr	r2, [r7, #4]
 8040d84:	683b      	ldr	r3, [r7, #0]
 8040d86:	1ad3      	subs	r3, r2, r3
 8040d88:	3b08      	subs	r3, #8
 8040d8a:	4619      	mov	r1, r3
 8040d8c:	4808      	ldr	r0, [pc, #32]	@ (8040db0 <measure_time_old+0x5c>)
 8040d8e:	f004 fb1b 	bl	80453c8 <iprintf>
 8040d92:	687a      	ldr	r2, [r7, #4]
 8040d94:	683b      	ldr	r3, [r7, #0]
 8040d96:	1ad3      	subs	r3, r2, r3
 8040d98:	3b08      	subs	r3, #8
 8040d9a:	4a06      	ldr	r2, [pc, #24]	@ (8040db4 <measure_time_old+0x60>)
 8040d9c:	6013      	str	r3, [r2, #0]
 8040d9e:	bf00      	nop
 8040da0:	3708      	adds	r7, #8
 8040da2:	46bd      	mov	sp, r7
 8040da4:	bd80      	pop	{r7, pc}
 8040da6:	bf00      	nop
 8040da8:	e000e010 	.word	0xe000e010
 8040dac:	00fffffe 	.word	0x00fffffe
 8040db0:	080461bc 	.word	0x080461bc
 8040db4:	200180ac 	.word	0x200180ac

08040db8 <main>:
 8040db8:	b580      	push	{r7, lr}
 8040dba:	af00      	add	r7, sp, #0
 8040dbc:	f000 fb71 	bl	80414a2 <HAL_Init>
 8040dc0:	f000 f818 	bl	8040df4 <SystemClock_Config>
 8040dc4:	f7ff fbc4 	bl	8040550 <MX_DMA_Init>
 8040dc8:	f7ff fbec 	bl	80405a4 <MX_GPIO_Init>
 8040dcc:	f7ff fc02 	bl	80405d4 <MX_ICACHE_Init>
 8040dd0:	f000 f96a 	bl	80410a8 <MX_TIM1_Init>
 8040dd4:	f000 f9c4 	bl	8041160 <MX_TIM2_Init>
 8040dd8:	f000 fa8e 	bl	80412f8 <MX_LPUART1_UART_Init>
 8040ddc:	4804      	ldr	r0, [pc, #16]	@ (8040df0 <main+0x38>)
 8040dde:	f004 fb5b 	bl	8045498 <puts>
 8040de2:	f7ff ffb7 	bl	8040d54 <measure_time_old>
 8040de6:	f7ff ff93 	bl	8040d10 <accurate_trace>
 8040dea:	bf00      	nop
 8040dec:	e7fd      	b.n	8040dea <main+0x32>
 8040dee:	bf00      	nop
 8040df0:	080461c8 	.word	0x080461c8

08040df4 <SystemClock_Config>:
 8040df4:	b580      	push	{r7, lr}
 8040df6:	b098      	sub	sp, #96	@ 0x60
 8040df8:	af00      	add	r7, sp, #0
 8040dfa:	f107 0318 	add.w	r3, r7, #24
 8040dfe:	2248      	movs	r2, #72	@ 0x48
 8040e00:	2100      	movs	r1, #0
 8040e02:	4618      	mov	r0, r3
 8040e04:	f004 fc28 	bl	8045658 <memset>
 8040e08:	1d3b      	adds	r3, r7, #4
 8040e0a:	2200      	movs	r2, #0
 8040e0c:	601a      	str	r2, [r3, #0]
 8040e0e:	605a      	str	r2, [r3, #4]
 8040e10:	609a      	str	r2, [r3, #8]
 8040e12:	60da      	str	r2, [r3, #12]
 8040e14:	611a      	str	r2, [r3, #16]
 8040e16:	2000      	movs	r0, #0
 8040e18:	f001 f970 	bl	80420fc <HAL_PWREx_ControlVoltageScaling>
 8040e1c:	4603      	mov	r3, r0
 8040e1e:	2b00      	cmp	r3, #0
 8040e20:	d001      	beq.n	8040e26 <SystemClock_Config+0x32>
 8040e22:	f000 f838 	bl	8040e96 <Error_Handler>
 8040e26:	2310      	movs	r3, #16
 8040e28:	61bb      	str	r3, [r7, #24]
 8040e2a:	2301      	movs	r3, #1
 8040e2c:	637b      	str	r3, [r7, #52]	@ 0x34
 8040e2e:	2300      	movs	r3, #0
 8040e30:	63bb      	str	r3, [r7, #56]	@ 0x38
 8040e32:	2360      	movs	r3, #96	@ 0x60
 8040e34:	63fb      	str	r3, [r7, #60]	@ 0x3c
 8040e36:	2302      	movs	r3, #2
 8040e38:	647b      	str	r3, [r7, #68]	@ 0x44
 8040e3a:	2301      	movs	r3, #1
 8040e3c:	64bb      	str	r3, [r7, #72]	@ 0x48
 8040e3e:	2301      	movs	r3, #1
 8040e40:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8040e42:	2337      	movs	r3, #55	@ 0x37
 8040e44:	653b      	str	r3, [r7, #80]	@ 0x50
 8040e46:	2307      	movs	r3, #7
 8040e48:	657b      	str	r3, [r7, #84]	@ 0x54
 8040e4a:	2302      	movs	r3, #2
 8040e4c:	65bb      	str	r3, [r7, #88]	@ 0x58
 8040e4e:	2302      	movs	r3, #2
 8040e50:	65fb      	str	r3, [r7, #92]	@ 0x5c
 8040e52:	f107 0318 	add.w	r3, r7, #24
 8040e56:	4618      	mov	r0, r3
 8040e58:	f001 f9e0 	bl	804221c <HAL_RCC_OscConfig>
 8040e5c:	4603      	mov	r3, r0
 8040e5e:	2b00      	cmp	r3, #0
 8040e60:	d001      	beq.n	8040e66 <SystemClock_Config+0x72>
 8040e62:	f000 f818 	bl	8040e96 <Error_Handler>
 8040e66:	230f      	movs	r3, #15
 8040e68:	607b      	str	r3, [r7, #4]
 8040e6a:	2303      	movs	r3, #3
 8040e6c:	60bb      	str	r3, [r7, #8]
 8040e6e:	2300      	movs	r3, #0
 8040e70:	60fb      	str	r3, [r7, #12]
 8040e72:	2300      	movs	r3, #0
 8040e74:	613b      	str	r3, [r7, #16]
 8040e76:	2300      	movs	r3, #0
 8040e78:	617b      	str	r3, [r7, #20]
 8040e7a:	1d3b      	adds	r3, r7, #4
 8040e7c:	2105      	movs	r1, #5
 8040e7e:	4618      	mov	r0, r3
 8040e80:	f001 fea2 	bl	8042bc8 <HAL_RCC_ClockConfig>
 8040e84:	4603      	mov	r3, r0
 8040e86:	2b00      	cmp	r3, #0
 8040e88:	d001      	beq.n	8040e8e <SystemClock_Config+0x9a>
 8040e8a:	f000 f804 	bl	8040e96 <Error_Handler>
 8040e8e:	bf00      	nop
 8040e90:	3760      	adds	r7, #96	@ 0x60
 8040e92:	46bd      	mov	sp, r7
 8040e94:	bd80      	pop	{r7, pc}

08040e96 <Error_Handler>:
 8040e96:	b480      	push	{r7}
 8040e98:	af00      	add	r7, sp, #0
 8040e9a:	b672      	cpsid	i
 8040e9c:	bf00      	nop
 8040e9e:	bf00      	nop
 8040ea0:	e7fd      	b.n	8040e9e <Error_Handler+0x8>
	...

08040ea4 <HAL_MspInit>:
 8040ea4:	b580      	push	{r7, lr}
 8040ea6:	b082      	sub	sp, #8
 8040ea8:	af00      	add	r7, sp, #0
 8040eaa:	4b0f      	ldr	r3, [pc, #60]	@ (8040ee8 <HAL_MspInit+0x44>)
 8040eac:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8040eae:	4a0e      	ldr	r2, [pc, #56]	@ (8040ee8 <HAL_MspInit+0x44>)
 8040eb0:	f043 0301 	orr.w	r3, r3, #1
 8040eb4:	6613      	str	r3, [r2, #96]	@ 0x60
 8040eb6:	4b0c      	ldr	r3, [pc, #48]	@ (8040ee8 <HAL_MspInit+0x44>)
 8040eb8:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8040eba:	f003 0301 	and.w	r3, r3, #1
 8040ebe:	607b      	str	r3, [r7, #4]
 8040ec0:	687b      	ldr	r3, [r7, #4]
 8040ec2:	4b09      	ldr	r3, [pc, #36]	@ (8040ee8 <HAL_MspInit+0x44>)
 8040ec4:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8040ec6:	4a08      	ldr	r2, [pc, #32]	@ (8040ee8 <HAL_MspInit+0x44>)
 8040ec8:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8040ecc:	6593      	str	r3, [r2, #88]	@ 0x58
 8040ece:	4b06      	ldr	r3, [pc, #24]	@ (8040ee8 <HAL_MspInit+0x44>)
 8040ed0:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8040ed2:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8040ed6:	603b      	str	r3, [r7, #0]
 8040ed8:	683b      	ldr	r3, [r7, #0]
 8040eda:	2007      	movs	r0, #7
 8040edc:	f000 fc28 	bl	8041730 <HAL_NVIC_SetPriorityGrouping>
 8040ee0:	bf00      	nop
 8040ee2:	3708      	adds	r7, #8
 8040ee4:	46bd      	mov	sp, r7
 8040ee6:	bd80      	pop	{r7, pc}
 8040ee8:	40021000 	.word	0x40021000

08040eec <MemManage_Handler>:
 8040eec:	b480      	push	{r7}
 8040eee:	af00      	add	r7, sp, #0
 8040ef0:	bf00      	nop
 8040ef2:	e7fd      	b.n	8040ef0 <MemManage_Handler+0x4>

08040ef4 <UsageFault_Handler>:
 8040ef4:	b480      	push	{r7}
 8040ef6:	af00      	add	r7, sp, #0
 8040ef8:	bf00      	nop
 8040efa:	e7fd      	b.n	8040ef8 <UsageFault_Handler+0x4>

08040efc <SVC_Handler>:
 8040efc:	b480      	push	{r7}
 8040efe:	af00      	add	r7, sp, #0
 8040f00:	bf00      	nop
 8040f02:	46bd      	mov	sp, r7
 8040f04:	f85d 7b04 	ldr.w	r7, [sp], #4
 8040f08:	4770      	bx	lr

08040f0a <PendSV_Handler>:
 8040f0a:	b480      	push	{r7}
 8040f0c:	af00      	add	r7, sp, #0
 8040f0e:	bf00      	nop
 8040f10:	46bd      	mov	sp, r7
 8040f12:	f85d 7b04 	ldr.w	r7, [sp], #4
 8040f16:	4770      	bx	lr

08040f18 <SysTick_Handler>:
 8040f18:	b580      	push	{r7, lr}
 8040f1a:	af00      	add	r7, sp, #0
 8040f1c:	f000 fb18 	bl	8041550 <HAL_IncTick>
 8040f20:	bf00      	nop
 8040f22:	bd80      	pop	{r7, pc}

08040f24 <DMA1_Channel1_IRQHandler>:
 8040f24:	b580      	push	{r7, lr}
 8040f26:	af00      	add	r7, sp, #0
 8040f28:	4802      	ldr	r0, [pc, #8]	@ (8040f34 <DMA1_Channel1_IRQHandler+0x10>)
 8040f2a:	f000 fd88 	bl	8041a3e <HAL_DMA_IRQHandler>
 8040f2e:	bf00      	nop
 8040f30:	bd80      	pop	{r7, pc}
 8040f32:	bf00      	nop
 8040f34:	2001814c 	.word	0x2001814c

08040f38 <_read>:
 8040f38:	b580      	push	{r7, lr}
 8040f3a:	b086      	sub	sp, #24
 8040f3c:	af00      	add	r7, sp, #0
 8040f3e:	60f8      	str	r0, [r7, #12]
 8040f40:	60b9      	str	r1, [r7, #8]
 8040f42:	607a      	str	r2, [r7, #4]
 8040f44:	2300      	movs	r3, #0
 8040f46:	617b      	str	r3, [r7, #20]
 8040f48:	e00a      	b.n	8040f60 <_read+0x28>
 8040f4a:	f3af 8000 	nop.w
 8040f4e:	4601      	mov	r1, r0
 8040f50:	68bb      	ldr	r3, [r7, #8]
 8040f52:	1c5a      	adds	r2, r3, #1
 8040f54:	60ba      	str	r2, [r7, #8]
 8040f56:	b2ca      	uxtb	r2, r1
 8040f58:	701a      	strb	r2, [r3, #0]
 8040f5a:	697b      	ldr	r3, [r7, #20]
 8040f5c:	3301      	adds	r3, #1
 8040f5e:	617b      	str	r3, [r7, #20]
 8040f60:	697a      	ldr	r2, [r7, #20]
 8040f62:	687b      	ldr	r3, [r7, #4]
 8040f64:	429a      	cmp	r2, r3
 8040f66:	dbf0      	blt.n	8040f4a <_read+0x12>
 8040f68:	687b      	ldr	r3, [r7, #4]
 8040f6a:	4618      	mov	r0, r3
 8040f6c:	3718      	adds	r7, #24
 8040f6e:	46bd      	mov	sp, r7
 8040f70:	bd80      	pop	{r7, pc}

08040f72 <_write>:
 8040f72:	b580      	push	{r7, lr}
 8040f74:	b086      	sub	sp, #24
 8040f76:	af00      	add	r7, sp, #0
 8040f78:	60f8      	str	r0, [r7, #12]
 8040f7a:	60b9      	str	r1, [r7, #8]
 8040f7c:	607a      	str	r2, [r7, #4]
 8040f7e:	2300      	movs	r3, #0
 8040f80:	617b      	str	r3, [r7, #20]
 8040f82:	e009      	b.n	8040f98 <_write+0x26>
 8040f84:	68bb      	ldr	r3, [r7, #8]
 8040f86:	1c5a      	adds	r2, r3, #1
 8040f88:	60ba      	str	r2, [r7, #8]
 8040f8a:	781b      	ldrb	r3, [r3, #0]
 8040f8c:	4618      	mov	r0, r3
 8040f8e:	f7ff fb29 	bl	80405e4 <__io_putchar>
 8040f92:	697b      	ldr	r3, [r7, #20]
 8040f94:	3301      	adds	r3, #1
 8040f96:	617b      	str	r3, [r7, #20]
 8040f98:	697a      	ldr	r2, [r7, #20]
 8040f9a:	687b      	ldr	r3, [r7, #4]
 8040f9c:	429a      	cmp	r2, r3
 8040f9e:	dbf1      	blt.n	8040f84 <_write+0x12>
 8040fa0:	687b      	ldr	r3, [r7, #4]
 8040fa2:	4618      	mov	r0, r3
 8040fa4:	3718      	adds	r7, #24
 8040fa6:	46bd      	mov	sp, r7
 8040fa8:	bd80      	pop	{r7, pc}

08040faa <_close>:
 8040faa:	b480      	push	{r7}
 8040fac:	b083      	sub	sp, #12
 8040fae:	af00      	add	r7, sp, #0
 8040fb0:	6078      	str	r0, [r7, #4]
 8040fb2:	f04f 33ff 	mov.w	r3, #4294967295
 8040fb6:	4618      	mov	r0, r3
 8040fb8:	370c      	adds	r7, #12
 8040fba:	46bd      	mov	sp, r7
 8040fbc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8040fc0:	4770      	bx	lr

08040fc2 <_fstat>:
 8040fc2:	b480      	push	{r7}
 8040fc4:	b083      	sub	sp, #12
 8040fc6:	af00      	add	r7, sp, #0
 8040fc8:	6078      	str	r0, [r7, #4]
 8040fca:	6039      	str	r1, [r7, #0]
 8040fcc:	683b      	ldr	r3, [r7, #0]
 8040fce:	f44f 5200 	mov.w	r2, #8192	@ 0x2000
 8040fd2:	605a      	str	r2, [r3, #4]
 8040fd4:	2300      	movs	r3, #0
 8040fd6:	4618      	mov	r0, r3
 8040fd8:	370c      	adds	r7, #12
 8040fda:	46bd      	mov	sp, r7
 8040fdc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8040fe0:	4770      	bx	lr

08040fe2 <_isatty>:
 8040fe2:	b480      	push	{r7}
 8040fe4:	b083      	sub	sp, #12
 8040fe6:	af00      	add	r7, sp, #0
 8040fe8:	6078      	str	r0, [r7, #4]
 8040fea:	2301      	movs	r3, #1
 8040fec:	4618      	mov	r0, r3
 8040fee:	370c      	adds	r7, #12
 8040ff0:	46bd      	mov	sp, r7
 8040ff2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8040ff6:	4770      	bx	lr

08040ff8 <_lseek>:
 8040ff8:	b480      	push	{r7}
 8040ffa:	b085      	sub	sp, #20
 8040ffc:	af00      	add	r7, sp, #0
 8040ffe:	60f8      	str	r0, [r7, #12]
 8041000:	60b9      	str	r1, [r7, #8]
 8041002:	607a      	str	r2, [r7, #4]
 8041004:	2300      	movs	r3, #0
 8041006:	4618      	mov	r0, r3
 8041008:	3714      	adds	r7, #20
 804100a:	46bd      	mov	sp, r7
 804100c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041010:	4770      	bx	lr
	...

08041014 <_sbrk>:
 8041014:	b580      	push	{r7, lr}
 8041016:	b086      	sub	sp, #24
 8041018:	af00      	add	r7, sp, #0
 804101a:	6078      	str	r0, [r7, #4]
 804101c:	4a14      	ldr	r2, [pc, #80]	@ (8041070 <_sbrk+0x5c>)
 804101e:	4b15      	ldr	r3, [pc, #84]	@ (8041074 <_sbrk+0x60>)
 8041020:	1ad3      	subs	r3, r2, r3
 8041022:	617b      	str	r3, [r7, #20]
 8041024:	697b      	ldr	r3, [r7, #20]
 8041026:	613b      	str	r3, [r7, #16]
 8041028:	4b13      	ldr	r3, [pc, #76]	@ (8041078 <_sbrk+0x64>)
 804102a:	681b      	ldr	r3, [r3, #0]
 804102c:	2b00      	cmp	r3, #0
 804102e:	d102      	bne.n	8041036 <_sbrk+0x22>
 8041030:	4b11      	ldr	r3, [pc, #68]	@ (8041078 <_sbrk+0x64>)
 8041032:	4a12      	ldr	r2, [pc, #72]	@ (804107c <_sbrk+0x68>)
 8041034:	601a      	str	r2, [r3, #0]
 8041036:	4b10      	ldr	r3, [pc, #64]	@ (8041078 <_sbrk+0x64>)
 8041038:	681a      	ldr	r2, [r3, #0]
 804103a:	687b      	ldr	r3, [r7, #4]
 804103c:	4413      	add	r3, r2
 804103e:	693a      	ldr	r2, [r7, #16]
 8041040:	429a      	cmp	r2, r3
 8041042:	d207      	bcs.n	8041054 <_sbrk+0x40>
 8041044:	f004 fb56 	bl	80456f4 <__errno>
 8041048:	4603      	mov	r3, r0
 804104a:	220c      	movs	r2, #12
 804104c:	601a      	str	r2, [r3, #0]
 804104e:	f04f 33ff 	mov.w	r3, #4294967295
 8041052:	e009      	b.n	8041068 <_sbrk+0x54>
 8041054:	4b08      	ldr	r3, [pc, #32]	@ (8041078 <_sbrk+0x64>)
 8041056:	681b      	ldr	r3, [r3, #0]
 8041058:	60fb      	str	r3, [r7, #12]
 804105a:	4b07      	ldr	r3, [pc, #28]	@ (8041078 <_sbrk+0x64>)
 804105c:	681a      	ldr	r2, [r3, #0]
 804105e:	687b      	ldr	r3, [r7, #4]
 8041060:	4413      	add	r3, r2
 8041062:	4a05      	ldr	r2, [pc, #20]	@ (8041078 <_sbrk+0x64>)
 8041064:	6013      	str	r3, [r2, #0]
 8041066:	68fb      	ldr	r3, [r7, #12]
 8041068:	4618      	mov	r0, r3
 804106a:	3718      	adds	r7, #24
 804106c:	46bd      	mov	sp, r7
 804106e:	bd80      	pop	{r7, pc}
 8041070:	20030000 	.word	0x20030000
 8041074:	00000400 	.word	0x00000400
 8041078:	200180b0 	.word	0x200180b0
 804107c:	20018398 	.word	0x20018398

08041080 <SystemInit>:
 8041080:	b480      	push	{r7}
 8041082:	af00      	add	r7, sp, #0
 8041084:	bf00      	nop
 8041086:	46bd      	mov	sp, r7
 8041088:	f85d 7b04 	ldr.w	r7, [sp], #4
 804108c:	4770      	bx	lr
	...

08041090 <SystemCoreClockUpdate>:
 8041090:	b580      	push	{r7, lr}
 8041092:	af00      	add	r7, sp, #0
 8041094:	f005 f884 	bl	80461a0 <__SECURE_SystemCoreClockUpdate_veneer>
 8041098:	4603      	mov	r3, r0
 804109a:	4a02      	ldr	r2, [pc, #8]	@ (80410a4 <SystemCoreClockUpdate+0x14>)
 804109c:	6013      	str	r3, [r2, #0]
 804109e:	bf00      	nop
 80410a0:	bd80      	pop	{r7, pc}
 80410a2:	bf00      	nop
 80410a4:	20018020 	.word	0x20018020

080410a8 <MX_TIM1_Init>:
 80410a8:	b580      	push	{r7, lr}
 80410aa:	b088      	sub	sp, #32
 80410ac:	af00      	add	r7, sp, #0
 80410ae:	f107 0310 	add.w	r3, r7, #16
 80410b2:	2200      	movs	r2, #0
 80410b4:	601a      	str	r2, [r3, #0]
 80410b6:	605a      	str	r2, [r3, #4]
 80410b8:	609a      	str	r2, [r3, #8]
 80410ba:	60da      	str	r2, [r3, #12]
 80410bc:	1d3b      	adds	r3, r7, #4
 80410be:	2200      	movs	r2, #0
 80410c0:	601a      	str	r2, [r3, #0]
 80410c2:	605a      	str	r2, [r3, #4]
 80410c4:	609a      	str	r2, [r3, #8]
 80410c6:	4b24      	ldr	r3, [pc, #144]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410c8:	4a24      	ldr	r2, [pc, #144]	@ (804115c <MX_TIM1_Init+0xb4>)
 80410ca:	601a      	str	r2, [r3, #0]
 80410cc:	4b22      	ldr	r3, [pc, #136]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410ce:	2200      	movs	r2, #0
 80410d0:	605a      	str	r2, [r3, #4]
 80410d2:	4b21      	ldr	r3, [pc, #132]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410d4:	2200      	movs	r2, #0
 80410d6:	609a      	str	r2, [r3, #8]
 80410d8:	4b1f      	ldr	r3, [pc, #124]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410da:	2201      	movs	r2, #1
 80410dc:	60da      	str	r2, [r3, #12]
 80410de:	4b1e      	ldr	r3, [pc, #120]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410e0:	2200      	movs	r2, #0
 80410e2:	611a      	str	r2, [r3, #16]
 80410e4:	4b1c      	ldr	r3, [pc, #112]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410e6:	2200      	movs	r2, #0
 80410e8:	615a      	str	r2, [r3, #20]
 80410ea:	4b1b      	ldr	r3, [pc, #108]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410ec:	2280      	movs	r2, #128	@ 0x80
 80410ee:	619a      	str	r2, [r3, #24]
 80410f0:	4819      	ldr	r0, [pc, #100]	@ (8041158 <MX_TIM1_Init+0xb0>)
 80410f2:	f002 fd63 	bl	8043bbc <HAL_TIM_Base_Init>
 80410f6:	4603      	mov	r3, r0
 80410f8:	2b00      	cmp	r3, #0
 80410fa:	d001      	beq.n	8041100 <MX_TIM1_Init+0x58>
 80410fc:	f7ff fecb 	bl	8040e96 <Error_Handler>
 8041100:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 8041104:	613b      	str	r3, [r7, #16]
 8041106:	f107 0310 	add.w	r3, r7, #16
 804110a:	4619      	mov	r1, r3
 804110c:	4812      	ldr	r0, [pc, #72]	@ (8041158 <MX_TIM1_Init+0xb0>)
 804110e:	f002 fe2d 	bl	8043d6c <HAL_TIM_ConfigClockSource>
 8041112:	4603      	mov	r3, r0
 8041114:	2b00      	cmp	r3, #0
 8041116:	d001      	beq.n	804111c <MX_TIM1_Init+0x74>
 8041118:	f7ff febd 	bl	8040e96 <Error_Handler>
 804111c:	2108      	movs	r1, #8
 804111e:	480e      	ldr	r0, [pc, #56]	@ (8041158 <MX_TIM1_Init+0xb0>)
 8041120:	f002 fdca 	bl	8043cb8 <HAL_TIM_OnePulse_Init>
 8041124:	4603      	mov	r3, r0
 8041126:	2b00      	cmp	r3, #0
 8041128:	d001      	beq.n	804112e <MX_TIM1_Init+0x86>
 804112a:	f7ff feb4 	bl	8040e96 <Error_Handler>
 804112e:	2320      	movs	r3, #32
 8041130:	607b      	str	r3, [r7, #4]
 8041132:	2300      	movs	r3, #0
 8041134:	60bb      	str	r3, [r7, #8]
 8041136:	2300      	movs	r3, #0
 8041138:	60fb      	str	r3, [r7, #12]
 804113a:	1d3b      	adds	r3, r7, #4
 804113c:	4619      	mov	r1, r3
 804113e:	4806      	ldr	r0, [pc, #24]	@ (8041158 <MX_TIM1_Init+0xb0>)
 8041140:	f003 f8f8 	bl	8044334 <HAL_TIMEx_MasterConfigSynchronization>
 8041144:	4603      	mov	r3, r0
 8041146:	2b00      	cmp	r3, #0
 8041148:	d001      	beq.n	804114e <MX_TIM1_Init+0xa6>
 804114a:	f7ff fea4 	bl	8040e96 <Error_Handler>
 804114e:	bf00      	nop
 8041150:	3720      	adds	r7, #32
 8041152:	46bd      	mov	sp, r7
 8041154:	bd80      	pop	{r7, pc}
 8041156:	bf00      	nop
 8041158:	200180b4 	.word	0x200180b4
 804115c:	40012c00 	.word	0x40012c00

08041160 <MX_TIM2_Init>:
 8041160:	b580      	push	{r7, lr}
 8041162:	b08c      	sub	sp, #48	@ 0x30
 8041164:	af00      	add	r7, sp, #0
 8041166:	f107 0320 	add.w	r3, r7, #32
 804116a:	2200      	movs	r2, #0
 804116c:	601a      	str	r2, [r3, #0]
 804116e:	605a      	str	r2, [r3, #4]
 8041170:	609a      	str	r2, [r3, #8]
 8041172:	60da      	str	r2, [r3, #12]
 8041174:	f107 030c 	add.w	r3, r7, #12
 8041178:	2200      	movs	r2, #0
 804117a:	601a      	str	r2, [r3, #0]
 804117c:	605a      	str	r2, [r3, #4]
 804117e:	609a      	str	r2, [r3, #8]
 8041180:	60da      	str	r2, [r3, #12]
 8041182:	611a      	str	r2, [r3, #16]
 8041184:	463b      	mov	r3, r7
 8041186:	2200      	movs	r2, #0
 8041188:	601a      	str	r2, [r3, #0]
 804118a:	605a      	str	r2, [r3, #4]
 804118c:	609a      	str	r2, [r3, #8]
 804118e:	4b25      	ldr	r3, [pc, #148]	@ (8041224 <MX_TIM2_Init+0xc4>)
 8041190:	f04f 4280 	mov.w	r2, #1073741824	@ 0x40000000
 8041194:	601a      	str	r2, [r3, #0]
 8041196:	4b23      	ldr	r3, [pc, #140]	@ (8041224 <MX_TIM2_Init+0xc4>)
 8041198:	2200      	movs	r2, #0
 804119a:	605a      	str	r2, [r3, #4]
 804119c:	4b21      	ldr	r3, [pc, #132]	@ (8041224 <MX_TIM2_Init+0xc4>)
 804119e:	2200      	movs	r2, #0
 80411a0:	609a      	str	r2, [r3, #8]
 80411a2:	4b20      	ldr	r3, [pc, #128]	@ (8041224 <MX_TIM2_Init+0xc4>)
 80411a4:	f04f 32ff 	mov.w	r2, #4294967295
 80411a8:	60da      	str	r2, [r3, #12]
 80411aa:	4b1e      	ldr	r3, [pc, #120]	@ (8041224 <MX_TIM2_Init+0xc4>)
 80411ac:	2200      	movs	r2, #0
 80411ae:	611a      	str	r2, [r3, #16]
 80411b0:	4b1c      	ldr	r3, [pc, #112]	@ (8041224 <MX_TIM2_Init+0xc4>)
 80411b2:	2200      	movs	r2, #0
 80411b4:	619a      	str	r2, [r3, #24]
 80411b6:	481b      	ldr	r0, [pc, #108]	@ (8041224 <MX_TIM2_Init+0xc4>)
 80411b8:	f002 fd00 	bl	8043bbc <HAL_TIM_Base_Init>
 80411bc:	4603      	mov	r3, r0
 80411be:	2b00      	cmp	r3, #0
 80411c0:	d001      	beq.n	80411c6 <MX_TIM2_Init+0x66>
 80411c2:	f7ff fe68 	bl	8040e96 <Error_Handler>
 80411c6:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 80411ca:	623b      	str	r3, [r7, #32]
 80411cc:	f107 0320 	add.w	r3, r7, #32
 80411d0:	4619      	mov	r1, r3
 80411d2:	4814      	ldr	r0, [pc, #80]	@ (8041224 <MX_TIM2_Init+0xc4>)
 80411d4:	f002 fdca 	bl	8043d6c <HAL_TIM_ConfigClockSource>
 80411d8:	4603      	mov	r3, r0
 80411da:	2b00      	cmp	r3, #0
 80411dc:	d001      	beq.n	80411e2 <MX_TIM2_Init+0x82>
 80411de:	f7ff fe5a 	bl	8040e96 <Error_Handler>
 80411e2:	2304      	movs	r3, #4
 80411e4:	60fb      	str	r3, [r7, #12]
 80411e6:	2300      	movs	r3, #0
 80411e8:	613b      	str	r3, [r7, #16]
 80411ea:	f107 030c 	add.w	r3, r7, #12
 80411ee:	4619      	mov	r1, r3
 80411f0:	480c      	ldr	r0, [pc, #48]	@ (8041224 <MX_TIM2_Init+0xc4>)
 80411f2:	f002 fe84 	bl	8043efe <HAL_TIM_SlaveConfigSynchro>
 80411f6:	4603      	mov	r3, r0
 80411f8:	2b00      	cmp	r3, #0
 80411fa:	d001      	beq.n	8041200 <MX_TIM2_Init+0xa0>
 80411fc:	f7ff fe4b 	bl	8040e96 <Error_Handler>
 8041200:	2300      	movs	r3, #0
 8041202:	603b      	str	r3, [r7, #0]
 8041204:	2300      	movs	r3, #0
 8041206:	60bb      	str	r3, [r7, #8]
 8041208:	463b      	mov	r3, r7
 804120a:	4619      	mov	r1, r3
 804120c:	4805      	ldr	r0, [pc, #20]	@ (8041224 <MX_TIM2_Init+0xc4>)
 804120e:	f003 f891 	bl	8044334 <HAL_TIMEx_MasterConfigSynchronization>
 8041212:	4603      	mov	r3, r0
 8041214:	2b00      	cmp	r3, #0
 8041216:	d001      	beq.n	804121c <MX_TIM2_Init+0xbc>
 8041218:	f7ff fe3d 	bl	8040e96 <Error_Handler>
 804121c:	bf00      	nop
 804121e:	3730      	adds	r7, #48	@ 0x30
 8041220:	46bd      	mov	sp, r7
 8041222:	bd80      	pop	{r7, pc}
 8041224:	20018100 	.word	0x20018100

08041228 <HAL_TIM_Base_MspInit>:
 8041228:	b580      	push	{r7, lr}
 804122a:	b084      	sub	sp, #16
 804122c:	af00      	add	r7, sp, #0
 804122e:	6078      	str	r0, [r7, #4]
 8041230:	687b      	ldr	r3, [r7, #4]
 8041232:	681b      	ldr	r3, [r3, #0]
 8041234:	4a2c      	ldr	r2, [pc, #176]	@ (80412e8 <HAL_TIM_Base_MspInit+0xc0>)
 8041236:	4293      	cmp	r3, r2
 8041238:	d141      	bne.n	80412be <HAL_TIM_Base_MspInit+0x96>
 804123a:	4b2c      	ldr	r3, [pc, #176]	@ (80412ec <HAL_TIM_Base_MspInit+0xc4>)
 804123c:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 804123e:	4a2b      	ldr	r2, [pc, #172]	@ (80412ec <HAL_TIM_Base_MspInit+0xc4>)
 8041240:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
 8041244:	6613      	str	r3, [r2, #96]	@ 0x60
 8041246:	4b29      	ldr	r3, [pc, #164]	@ (80412ec <HAL_TIM_Base_MspInit+0xc4>)
 8041248:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 804124a:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 804124e:	60fb      	str	r3, [r7, #12]
 8041250:	68fb      	ldr	r3, [r7, #12]
 8041252:	4b27      	ldr	r3, [pc, #156]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 8041254:	4a27      	ldr	r2, [pc, #156]	@ (80412f4 <HAL_TIM_Base_MspInit+0xcc>)
 8041256:	601a      	str	r2, [r3, #0]
 8041258:	4b25      	ldr	r3, [pc, #148]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 804125a:	222e      	movs	r2, #46	@ 0x2e
 804125c:	605a      	str	r2, [r3, #4]
 804125e:	4b24      	ldr	r3, [pc, #144]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 8041260:	2200      	movs	r2, #0
 8041262:	609a      	str	r2, [r3, #8]
 8041264:	4b22      	ldr	r3, [pc, #136]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 8041266:	2200      	movs	r2, #0
 8041268:	60da      	str	r2, [r3, #12]
 804126a:	4b21      	ldr	r3, [pc, #132]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 804126c:	2200      	movs	r2, #0
 804126e:	611a      	str	r2, [r3, #16]
 8041270:	4b1f      	ldr	r3, [pc, #124]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 8041272:	f44f 7200 	mov.w	r2, #512	@ 0x200
 8041276:	615a      	str	r2, [r3, #20]
 8041278:	4b1d      	ldr	r3, [pc, #116]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 804127a:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 804127e:	619a      	str	r2, [r3, #24]
 8041280:	4b1b      	ldr	r3, [pc, #108]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 8041282:	2200      	movs	r2, #0
 8041284:	61da      	str	r2, [r3, #28]
 8041286:	4b1a      	ldr	r3, [pc, #104]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 8041288:	f44f 5240 	mov.w	r2, #12288	@ 0x3000
 804128c:	621a      	str	r2, [r3, #32]
 804128e:	4818      	ldr	r0, [pc, #96]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 8041290:	f000 fa8e 	bl	80417b0 <HAL_DMA_Init>
 8041294:	4603      	mov	r3, r0
 8041296:	2b00      	cmp	r3, #0
 8041298:	d001      	beq.n	804129e <HAL_TIM_Base_MspInit+0x76>
 804129a:	f7ff fdfc 	bl	8040e96 <Error_Handler>
 804129e:	2110      	movs	r1, #16
 80412a0:	4813      	ldr	r0, [pc, #76]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 80412a2:	f000 fccc 	bl	8041c3e <HAL_DMA_ConfigChannelAttributes>
 80412a6:	4603      	mov	r3, r0
 80412a8:	2b00      	cmp	r3, #0
 80412aa:	d001      	beq.n	80412b0 <HAL_TIM_Base_MspInit+0x88>
 80412ac:	f7ff fdf3 	bl	8040e96 <Error_Handler>
 80412b0:	687b      	ldr	r3, [r7, #4]
 80412b2:	4a0f      	ldr	r2, [pc, #60]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 80412b4:	621a      	str	r2, [r3, #32]
 80412b6:	4a0e      	ldr	r2, [pc, #56]	@ (80412f0 <HAL_TIM_Base_MspInit+0xc8>)
 80412b8:	687b      	ldr	r3, [r7, #4]
 80412ba:	6293      	str	r3, [r2, #40]	@ 0x28
 80412bc:	e010      	b.n	80412e0 <HAL_TIM_Base_MspInit+0xb8>
 80412be:	687b      	ldr	r3, [r7, #4]
 80412c0:	681b      	ldr	r3, [r3, #0]
 80412c2:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 80412c6:	d10b      	bne.n	80412e0 <HAL_TIM_Base_MspInit+0xb8>
 80412c8:	4b08      	ldr	r3, [pc, #32]	@ (80412ec <HAL_TIM_Base_MspInit+0xc4>)
 80412ca:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80412cc:	4a07      	ldr	r2, [pc, #28]	@ (80412ec <HAL_TIM_Base_MspInit+0xc4>)
 80412ce:	f043 0301 	orr.w	r3, r3, #1
 80412d2:	6593      	str	r3, [r2, #88]	@ 0x58
 80412d4:	4b05      	ldr	r3, [pc, #20]	@ (80412ec <HAL_TIM_Base_MspInit+0xc4>)
 80412d6:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80412d8:	f003 0301 	and.w	r3, r3, #1
 80412dc:	60bb      	str	r3, [r7, #8]
 80412de:	68bb      	ldr	r3, [r7, #8]
 80412e0:	bf00      	nop
 80412e2:	3710      	adds	r7, #16
 80412e4:	46bd      	mov	sp, r7
 80412e6:	bd80      	pop	{r7, pc}
 80412e8:	40012c00 	.word	0x40012c00
 80412ec:	40021000 	.word	0x40021000
 80412f0:	2001814c 	.word	0x2001814c
 80412f4:	40020008 	.word	0x40020008

080412f8 <MX_LPUART1_UART_Init>:
 80412f8:	b580      	push	{r7, lr}
 80412fa:	af00      	add	r7, sp, #0
 80412fc:	4b22      	ldr	r3, [pc, #136]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 80412fe:	4a23      	ldr	r2, [pc, #140]	@ (804138c <MX_LPUART1_UART_Init+0x94>)
 8041300:	601a      	str	r2, [r3, #0]
 8041302:	4b21      	ldr	r3, [pc, #132]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041304:	f44f 32e1 	mov.w	r2, #115200	@ 0x1c200
 8041308:	605a      	str	r2, [r3, #4]
 804130a:	4b1f      	ldr	r3, [pc, #124]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 804130c:	2200      	movs	r2, #0
 804130e:	609a      	str	r2, [r3, #8]
 8041310:	4b1d      	ldr	r3, [pc, #116]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041312:	2200      	movs	r2, #0
 8041314:	60da      	str	r2, [r3, #12]
 8041316:	4b1c      	ldr	r3, [pc, #112]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041318:	2200      	movs	r2, #0
 804131a:	611a      	str	r2, [r3, #16]
 804131c:	4b1a      	ldr	r3, [pc, #104]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 804131e:	220c      	movs	r2, #12
 8041320:	615a      	str	r2, [r3, #20]
 8041322:	4b19      	ldr	r3, [pc, #100]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041324:	2200      	movs	r2, #0
 8041326:	619a      	str	r2, [r3, #24]
 8041328:	4b17      	ldr	r3, [pc, #92]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 804132a:	2200      	movs	r2, #0
 804132c:	621a      	str	r2, [r3, #32]
 804132e:	4b16      	ldr	r3, [pc, #88]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041330:	2200      	movs	r2, #0
 8041332:	625a      	str	r2, [r3, #36]	@ 0x24
 8041334:	4b14      	ldr	r3, [pc, #80]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041336:	2200      	movs	r2, #0
 8041338:	629a      	str	r2, [r3, #40]	@ 0x28
 804133a:	4b13      	ldr	r3, [pc, #76]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 804133c:	2200      	movs	r2, #0
 804133e:	665a      	str	r2, [r3, #100]	@ 0x64
 8041340:	4811      	ldr	r0, [pc, #68]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041342:	f003 f87f 	bl	8044444 <HAL_UART_Init>
 8041346:	4603      	mov	r3, r0
 8041348:	2b00      	cmp	r3, #0
 804134a:	d001      	beq.n	8041350 <MX_LPUART1_UART_Init+0x58>
 804134c:	f7ff fda3 	bl	8040e96 <Error_Handler>
 8041350:	2100      	movs	r1, #0
 8041352:	480d      	ldr	r0, [pc, #52]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041354:	f003 feac 	bl	80450b0 <HAL_UARTEx_SetTxFifoThreshold>
 8041358:	4603      	mov	r3, r0
 804135a:	2b00      	cmp	r3, #0
 804135c:	d001      	beq.n	8041362 <MX_LPUART1_UART_Init+0x6a>
 804135e:	f7ff fd9a 	bl	8040e96 <Error_Handler>
 8041362:	2100      	movs	r1, #0
 8041364:	4808      	ldr	r0, [pc, #32]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041366:	f003 fee1 	bl	804512c <HAL_UARTEx_SetRxFifoThreshold>
 804136a:	4603      	mov	r3, r0
 804136c:	2b00      	cmp	r3, #0
 804136e:	d001      	beq.n	8041374 <MX_LPUART1_UART_Init+0x7c>
 8041370:	f7ff fd91 	bl	8040e96 <Error_Handler>
 8041374:	4804      	ldr	r0, [pc, #16]	@ (8041388 <MX_LPUART1_UART_Init+0x90>)
 8041376:	f003 fe62 	bl	804503e <HAL_UARTEx_DisableFifoMode>
 804137a:	4603      	mov	r3, r0
 804137c:	2b00      	cmp	r3, #0
 804137e:	d001      	beq.n	8041384 <MX_LPUART1_UART_Init+0x8c>
 8041380:	f7ff fd89 	bl	8040e96 <Error_Handler>
 8041384:	bf00      	nop
 8041386:	bd80      	pop	{r7, pc}
 8041388:	200181b4 	.word	0x200181b4
 804138c:	40008000 	.word	0x40008000

08041390 <HAL_UART_MspInit>:
 8041390:	b580      	push	{r7, lr}
 8041392:	b0ae      	sub	sp, #184	@ 0xb8
 8041394:	af00      	add	r7, sp, #0
 8041396:	6078      	str	r0, [r7, #4]
 8041398:	f107 03a4 	add.w	r3, r7, #164	@ 0xa4
 804139c:	2200      	movs	r2, #0
 804139e:	601a      	str	r2, [r3, #0]
 80413a0:	605a      	str	r2, [r3, #4]
 80413a2:	609a      	str	r2, [r3, #8]
 80413a4:	60da      	str	r2, [r3, #12]
 80413a6:	611a      	str	r2, [r3, #16]
 80413a8:	f107 0310 	add.w	r3, r7, #16
 80413ac:	2294      	movs	r2, #148	@ 0x94
 80413ae:	2100      	movs	r1, #0
 80413b0:	4618      	mov	r0, r3
 80413b2:	f004 f951 	bl	8045658 <memset>
 80413b6:	687b      	ldr	r3, [r7, #4]
 80413b8:	681b      	ldr	r3, [r3, #0]
 80413ba:	4a22      	ldr	r2, [pc, #136]	@ (8041444 <HAL_UART_MspInit+0xb4>)
 80413bc:	4293      	cmp	r3, r2
 80413be:	d13d      	bne.n	804143c <HAL_UART_MspInit+0xac>
 80413c0:	2320      	movs	r3, #32
 80413c2:	613b      	str	r3, [r7, #16]
 80413c4:	2300      	movs	r3, #0
 80413c6:	65bb      	str	r3, [r7, #88]	@ 0x58
 80413c8:	f107 0310 	add.w	r3, r7, #16
 80413cc:	4618      	mov	r0, r3
 80413ce:	f001 fedf 	bl	8043190 <HAL_RCCEx_PeriphCLKConfig>
 80413d2:	4603      	mov	r3, r0
 80413d4:	2b00      	cmp	r3, #0
 80413d6:	d001      	beq.n	80413dc <HAL_UART_MspInit+0x4c>
 80413d8:	f7ff fd5d 	bl	8040e96 <Error_Handler>
 80413dc:	4b1a      	ldr	r3, [pc, #104]	@ (8041448 <HAL_UART_MspInit+0xb8>)
 80413de:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80413e0:	4a19      	ldr	r2, [pc, #100]	@ (8041448 <HAL_UART_MspInit+0xb8>)
 80413e2:	f043 0301 	orr.w	r3, r3, #1
 80413e6:	65d3      	str	r3, [r2, #92]	@ 0x5c
 80413e8:	4b17      	ldr	r3, [pc, #92]	@ (8041448 <HAL_UART_MspInit+0xb8>)
 80413ea:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80413ec:	f003 0301 	and.w	r3, r3, #1
 80413f0:	60fb      	str	r3, [r7, #12]
 80413f2:	68fb      	ldr	r3, [r7, #12]
 80413f4:	4b14      	ldr	r3, [pc, #80]	@ (8041448 <HAL_UART_MspInit+0xb8>)
 80413f6:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80413f8:	4a13      	ldr	r2, [pc, #76]	@ (8041448 <HAL_UART_MspInit+0xb8>)
 80413fa:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 80413fe:	64d3      	str	r3, [r2, #76]	@ 0x4c
 8041400:	4b11      	ldr	r3, [pc, #68]	@ (8041448 <HAL_UART_MspInit+0xb8>)
 8041402:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041404:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8041408:	60bb      	str	r3, [r7, #8]
 804140a:	68bb      	ldr	r3, [r7, #8]
 804140c:	f000 fed2 	bl	80421b4 <HAL_PWREx_EnableVddIO2>
 8041410:	f44f 73c0 	mov.w	r3, #384	@ 0x180
 8041414:	f8c7 30a4 	str.w	r3, [r7, #164]	@ 0xa4
 8041418:	2302      	movs	r3, #2
 804141a:	f8c7 30a8 	str.w	r3, [r7, #168]	@ 0xa8
 804141e:	2300      	movs	r3, #0
 8041420:	f8c7 30ac 	str.w	r3, [r7, #172]	@ 0xac
 8041424:	2300      	movs	r3, #0
 8041426:	f8c7 30b0 	str.w	r3, [r7, #176]	@ 0xb0
 804142a:	2308      	movs	r3, #8
 804142c:	f8c7 30b4 	str.w	r3, [r7, #180]	@ 0xb4
 8041430:	f107 03a4 	add.w	r3, r7, #164	@ 0xa4
 8041434:	4619      	mov	r1, r3
 8041436:	4805      	ldr	r0, [pc, #20]	@ (804144c <HAL_UART_MspInit+0xbc>)
 8041438:	f000 fcd2 	bl	8041de0 <HAL_GPIO_Init>
 804143c:	bf00      	nop
 804143e:	37b8      	adds	r7, #184	@ 0xb8
 8041440:	46bd      	mov	sp, r7
 8041442:	bd80      	pop	{r7, pc}
 8041444:	40008000 	.word	0x40008000
 8041448:	40021000 	.word	0x40021000
 804144c:	42021800 	.word	0x42021800

08041450 <Reset_Handler>:
 8041450:	f8df d034 	ldr.w	sp, [pc, #52]	@ 8041488 <LoopForever+0x2>
 8041454:	f7ff fe14 	bl	8041080 <SystemInit>
 8041458:	2100      	movs	r1, #0
 804145a:	e003      	b.n	8041464 <LoopCopyDataInit>

0804145c <CopyDataInit>:
 804145c:	4b0b      	ldr	r3, [pc, #44]	@ (804148c <LoopForever+0x6>)
 804145e:	585b      	ldr	r3, [r3, r1]
 8041460:	5043      	str	r3, [r0, r1]
 8041462:	3104      	adds	r1, #4

08041464 <LoopCopyDataInit>:
 8041464:	480a      	ldr	r0, [pc, #40]	@ (8041490 <LoopForever+0xa>)
 8041466:	4b0b      	ldr	r3, [pc, #44]	@ (8041494 <LoopForever+0xe>)
 8041468:	1842      	adds	r2, r0, r1
 804146a:	429a      	cmp	r2, r3
 804146c:	d3f6      	bcc.n	804145c <CopyDataInit>
 804146e:	4a0a      	ldr	r2, [pc, #40]	@ (8041498 <LoopForever+0x12>)
 8041470:	e002      	b.n	8041478 <LoopFillZerobss>

08041472 <FillZerobss>:
 8041472:	2300      	movs	r3, #0
 8041474:	f842 3b04 	str.w	r3, [r2], #4

08041478 <LoopFillZerobss>:
 8041478:	4b08      	ldr	r3, [pc, #32]	@ (804149c <LoopForever+0x16>)
 804147a:	429a      	cmp	r2, r3
 804147c:	d3f9      	bcc.n	8041472 <FillZerobss>
 804147e:	f004 f93f 	bl	8045700 <__libc_init_array>
 8041482:	f7ff fc99 	bl	8040db8 <main>

08041486 <LoopForever>:
 8041486:	e7fe      	b.n	8041486 <LoopForever>
 8041488:	20030000 	.word	0x20030000
 804148c:	08046294 	.word	0x08046294
 8041490:	20018000 	.word	0x20018000
 8041494:	20018088 	.word	0x20018088
 8041498:	20018088 	.word	0x20018088
 804149c:	20018398 	.word	0x20018398

080414a0 <ADC1_2_IRQHandler>:
 80414a0:	e7fe      	b.n	80414a0 <ADC1_2_IRQHandler>

080414a2 <HAL_Init>:
 80414a2:	b580      	push	{r7, lr}
 80414a4:	b082      	sub	sp, #8
 80414a6:	af00      	add	r7, sp, #0
 80414a8:	2300      	movs	r3, #0
 80414aa:	71fb      	strb	r3, [r7, #7]
 80414ac:	2004      	movs	r0, #4
 80414ae:	f000 f93f 	bl	8041730 <HAL_NVIC_SetPriorityGrouping>
 80414b2:	f7ff fded 	bl	8041090 <SystemCoreClockUpdate>
 80414b6:	2000      	movs	r0, #0
 80414b8:	f000 f80e 	bl	80414d8 <HAL_InitTick>
 80414bc:	4603      	mov	r3, r0
 80414be:	2b00      	cmp	r3, #0
 80414c0:	d002      	beq.n	80414c8 <HAL_Init+0x26>
 80414c2:	2301      	movs	r3, #1
 80414c4:	71fb      	strb	r3, [r7, #7]
 80414c6:	e001      	b.n	80414cc <HAL_Init+0x2a>
 80414c8:	f7ff fcec 	bl	8040ea4 <HAL_MspInit>
 80414cc:	79fb      	ldrb	r3, [r7, #7]
 80414ce:	4618      	mov	r0, r3
 80414d0:	3708      	adds	r7, #8
 80414d2:	46bd      	mov	sp, r7
 80414d4:	bd80      	pop	{r7, pc}
	...

080414d8 <HAL_InitTick>:
 80414d8:	b580      	push	{r7, lr}
 80414da:	b084      	sub	sp, #16
 80414dc:	af00      	add	r7, sp, #0
 80414de:	6078      	str	r0, [r7, #4]
 80414e0:	2300      	movs	r3, #0
 80414e2:	73fb      	strb	r3, [r7, #15]
 80414e4:	4b17      	ldr	r3, [pc, #92]	@ (8041544 <HAL_InitTick+0x6c>)
 80414e6:	781b      	ldrb	r3, [r3, #0]
 80414e8:	2b00      	cmp	r3, #0
 80414ea:	d023      	beq.n	8041534 <HAL_InitTick+0x5c>
 80414ec:	4b16      	ldr	r3, [pc, #88]	@ (8041548 <HAL_InitTick+0x70>)
 80414ee:	681a      	ldr	r2, [r3, #0]
 80414f0:	4b14      	ldr	r3, [pc, #80]	@ (8041544 <HAL_InitTick+0x6c>)
 80414f2:	781b      	ldrb	r3, [r3, #0]
 80414f4:	4619      	mov	r1, r3
 80414f6:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
 80414fa:	fbb3 f3f1 	udiv	r3, r3, r1
 80414fe:	fbb2 f3f3 	udiv	r3, r2, r3
 8041502:	4618      	mov	r0, r3
 8041504:	f000 f947 	bl	8041796 <HAL_SYSTICK_Config>
 8041508:	4603      	mov	r3, r0
 804150a:	2b00      	cmp	r3, #0
 804150c:	d10f      	bne.n	804152e <HAL_InitTick+0x56>
 804150e:	687b      	ldr	r3, [r7, #4]
 8041510:	2b07      	cmp	r3, #7
 8041512:	d809      	bhi.n	8041528 <HAL_InitTick+0x50>
 8041514:	2200      	movs	r2, #0
 8041516:	6879      	ldr	r1, [r7, #4]
 8041518:	f04f 30ff 	mov.w	r0, #4294967295
 804151c:	f000 f913 	bl	8041746 <HAL_NVIC_SetPriority>
 8041520:	4a0a      	ldr	r2, [pc, #40]	@ (804154c <HAL_InitTick+0x74>)
 8041522:	687b      	ldr	r3, [r7, #4]
 8041524:	6013      	str	r3, [r2, #0]
 8041526:	e007      	b.n	8041538 <HAL_InitTick+0x60>
 8041528:	2301      	movs	r3, #1
 804152a:	73fb      	strb	r3, [r7, #15]
 804152c:	e004      	b.n	8041538 <HAL_InitTick+0x60>
 804152e:	2301      	movs	r3, #1
 8041530:	73fb      	strb	r3, [r7, #15]
 8041532:	e001      	b.n	8041538 <HAL_InitTick+0x60>
 8041534:	2301      	movs	r3, #1
 8041536:	73fb      	strb	r3, [r7, #15]
 8041538:	7bfb      	ldrb	r3, [r7, #15]
 804153a:	4618      	mov	r0, r3
 804153c:	3710      	adds	r7, #16
 804153e:	46bd      	mov	sp, r7
 8041540:	bd80      	pop	{r7, pc}
 8041542:	bf00      	nop
 8041544:	20018028 	.word	0x20018028
 8041548:	20018020 	.word	0x20018020
 804154c:	20018024 	.word	0x20018024

08041550 <HAL_IncTick>:
 8041550:	b480      	push	{r7}
 8041552:	af00      	add	r7, sp, #0
 8041554:	4b06      	ldr	r3, [pc, #24]	@ (8041570 <HAL_IncTick+0x20>)
 8041556:	781b      	ldrb	r3, [r3, #0]
 8041558:	461a      	mov	r2, r3
 804155a:	4b06      	ldr	r3, [pc, #24]	@ (8041574 <HAL_IncTick+0x24>)
 804155c:	681b      	ldr	r3, [r3, #0]
 804155e:	4413      	add	r3, r2
 8041560:	4a04      	ldr	r2, [pc, #16]	@ (8041574 <HAL_IncTick+0x24>)
 8041562:	6013      	str	r3, [r2, #0]
 8041564:	bf00      	nop
 8041566:	46bd      	mov	sp, r7
 8041568:	f85d 7b04 	ldr.w	r7, [sp], #4
 804156c:	4770      	bx	lr
 804156e:	bf00      	nop
 8041570:	20018028 	.word	0x20018028
 8041574:	20018248 	.word	0x20018248

08041578 <HAL_GetTick>:
 8041578:	b480      	push	{r7}
 804157a:	af00      	add	r7, sp, #0
 804157c:	4b03      	ldr	r3, [pc, #12]	@ (804158c <HAL_GetTick+0x14>)
 804157e:	681b      	ldr	r3, [r3, #0]
 8041580:	4618      	mov	r0, r3
 8041582:	46bd      	mov	sp, r7
 8041584:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041588:	4770      	bx	lr
 804158a:	bf00      	nop
 804158c:	20018248 	.word	0x20018248

08041590 <__NVIC_SetPriorityGrouping>:
 8041590:	b480      	push	{r7}
 8041592:	b085      	sub	sp, #20
 8041594:	af00      	add	r7, sp, #0
 8041596:	6078      	str	r0, [r7, #4]
 8041598:	687b      	ldr	r3, [r7, #4]
 804159a:	f003 0307 	and.w	r3, r3, #7
 804159e:	60fb      	str	r3, [r7, #12]
 80415a0:	4b0c      	ldr	r3, [pc, #48]	@ (80415d4 <__NVIC_SetPriorityGrouping+0x44>)
 80415a2:	68db      	ldr	r3, [r3, #12]
 80415a4:	60bb      	str	r3, [r7, #8]
 80415a6:	68ba      	ldr	r2, [r7, #8]
 80415a8:	f64f 03ff 	movw	r3, #63743	@ 0xf8ff
 80415ac:	4013      	ands	r3, r2
 80415ae:	60bb      	str	r3, [r7, #8]
 80415b0:	68fb      	ldr	r3, [r7, #12]
 80415b2:	021a      	lsls	r2, r3, #8
 80415b4:	68bb      	ldr	r3, [r7, #8]
 80415b6:	4313      	orrs	r3, r2
 80415b8:	f043 63bf 	orr.w	r3, r3, #100139008	@ 0x5f80000
 80415bc:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 80415c0:	60bb      	str	r3, [r7, #8]
 80415c2:	4a04      	ldr	r2, [pc, #16]	@ (80415d4 <__NVIC_SetPriorityGrouping+0x44>)
 80415c4:	68bb      	ldr	r3, [r7, #8]
 80415c6:	60d3      	str	r3, [r2, #12]
 80415c8:	bf00      	nop
 80415ca:	3714      	adds	r7, #20
 80415cc:	46bd      	mov	sp, r7
 80415ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80415d2:	4770      	bx	lr
 80415d4:	e000ed00 	.word	0xe000ed00

080415d8 <__NVIC_GetPriorityGrouping>:
 80415d8:	b480      	push	{r7}
 80415da:	af00      	add	r7, sp, #0
 80415dc:	4b04      	ldr	r3, [pc, #16]	@ (80415f0 <__NVIC_GetPriorityGrouping+0x18>)
 80415de:	68db      	ldr	r3, [r3, #12]
 80415e0:	0a1b      	lsrs	r3, r3, #8
 80415e2:	f003 0307 	and.w	r3, r3, #7
 80415e6:	4618      	mov	r0, r3
 80415e8:	46bd      	mov	sp, r7
 80415ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80415ee:	4770      	bx	lr
 80415f0:	e000ed00 	.word	0xe000ed00

080415f4 <__NVIC_EnableIRQ>:
 80415f4:	b480      	push	{r7}
 80415f6:	b083      	sub	sp, #12
 80415f8:	af00      	add	r7, sp, #0
 80415fa:	4603      	mov	r3, r0
 80415fc:	71fb      	strb	r3, [r7, #7]
 80415fe:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8041602:	2b00      	cmp	r3, #0
 8041604:	db0b      	blt.n	804161e <__NVIC_EnableIRQ+0x2a>
 8041606:	79fb      	ldrb	r3, [r7, #7]
 8041608:	f003 021f 	and.w	r2, r3, #31
 804160c:	4907      	ldr	r1, [pc, #28]	@ (804162c <__NVIC_EnableIRQ+0x38>)
 804160e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8041612:	095b      	lsrs	r3, r3, #5
 8041614:	2001      	movs	r0, #1
 8041616:	fa00 f202 	lsl.w	r2, r0, r2
 804161a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 804161e:	bf00      	nop
 8041620:	370c      	adds	r7, #12
 8041622:	46bd      	mov	sp, r7
 8041624:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041628:	4770      	bx	lr
 804162a:	bf00      	nop
 804162c:	e000e100 	.word	0xe000e100

08041630 <__NVIC_SetPriority>:
 8041630:	b480      	push	{r7}
 8041632:	b083      	sub	sp, #12
 8041634:	af00      	add	r7, sp, #0
 8041636:	4603      	mov	r3, r0
 8041638:	6039      	str	r1, [r7, #0]
 804163a:	71fb      	strb	r3, [r7, #7]
 804163c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8041640:	2b00      	cmp	r3, #0
 8041642:	db0a      	blt.n	804165a <__NVIC_SetPriority+0x2a>
 8041644:	683b      	ldr	r3, [r7, #0]
 8041646:	b2da      	uxtb	r2, r3
 8041648:	490c      	ldr	r1, [pc, #48]	@ (804167c <__NVIC_SetPriority+0x4c>)
 804164a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 804164e:	0152      	lsls	r2, r2, #5
 8041650:	b2d2      	uxtb	r2, r2
 8041652:	440b      	add	r3, r1
 8041654:	f883 2300 	strb.w	r2, [r3, #768]	@ 0x300
 8041658:	e00a      	b.n	8041670 <__NVIC_SetPriority+0x40>
 804165a:	683b      	ldr	r3, [r7, #0]
 804165c:	b2da      	uxtb	r2, r3
 804165e:	4908      	ldr	r1, [pc, #32]	@ (8041680 <__NVIC_SetPriority+0x50>)
 8041660:	79fb      	ldrb	r3, [r7, #7]
 8041662:	f003 030f 	and.w	r3, r3, #15
 8041666:	3b04      	subs	r3, #4
 8041668:	0152      	lsls	r2, r2, #5
 804166a:	b2d2      	uxtb	r2, r2
 804166c:	440b      	add	r3, r1
 804166e:	761a      	strb	r2, [r3, #24]
 8041670:	bf00      	nop
 8041672:	370c      	adds	r7, #12
 8041674:	46bd      	mov	sp, r7
 8041676:	f85d 7b04 	ldr.w	r7, [sp], #4
 804167a:	4770      	bx	lr
 804167c:	e000e100 	.word	0xe000e100
 8041680:	e000ed00 	.word	0xe000ed00

08041684 <NVIC_EncodePriority>:
 8041684:	b480      	push	{r7}
 8041686:	b089      	sub	sp, #36	@ 0x24
 8041688:	af00      	add	r7, sp, #0
 804168a:	60f8      	str	r0, [r7, #12]
 804168c:	60b9      	str	r1, [r7, #8]
 804168e:	607a      	str	r2, [r7, #4]
 8041690:	68fb      	ldr	r3, [r7, #12]
 8041692:	f003 0307 	and.w	r3, r3, #7
 8041696:	61fb      	str	r3, [r7, #28]
 8041698:	69fb      	ldr	r3, [r7, #28]
 804169a:	f1c3 0307 	rsb	r3, r3, #7
 804169e:	2b03      	cmp	r3, #3
 80416a0:	bf28      	it	cs
 80416a2:	2303      	movcs	r3, #3
 80416a4:	61bb      	str	r3, [r7, #24]
 80416a6:	69fb      	ldr	r3, [r7, #28]
 80416a8:	3303      	adds	r3, #3
 80416aa:	2b06      	cmp	r3, #6
 80416ac:	d902      	bls.n	80416b4 <NVIC_EncodePriority+0x30>
 80416ae:	69fb      	ldr	r3, [r7, #28]
 80416b0:	3b04      	subs	r3, #4
 80416b2:	e000      	b.n	80416b6 <NVIC_EncodePriority+0x32>
 80416b4:	2300      	movs	r3, #0
 80416b6:	617b      	str	r3, [r7, #20]
 80416b8:	f04f 32ff 	mov.w	r2, #4294967295
 80416bc:	69bb      	ldr	r3, [r7, #24]
 80416be:	fa02 f303 	lsl.w	r3, r2, r3
 80416c2:	43da      	mvns	r2, r3
 80416c4:	68bb      	ldr	r3, [r7, #8]
 80416c6:	401a      	ands	r2, r3
 80416c8:	697b      	ldr	r3, [r7, #20]
 80416ca:	409a      	lsls	r2, r3
 80416cc:	f04f 31ff 	mov.w	r1, #4294967295
 80416d0:	697b      	ldr	r3, [r7, #20]
 80416d2:	fa01 f303 	lsl.w	r3, r1, r3
 80416d6:	43d9      	mvns	r1, r3
 80416d8:	687b      	ldr	r3, [r7, #4]
 80416da:	400b      	ands	r3, r1
 80416dc:	4313      	orrs	r3, r2
 80416de:	4618      	mov	r0, r3
 80416e0:	3724      	adds	r7, #36	@ 0x24
 80416e2:	46bd      	mov	sp, r7
 80416e4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80416e8:	4770      	bx	lr
	...

080416ec <SysTick_Config>:
 80416ec:	b580      	push	{r7, lr}
 80416ee:	b082      	sub	sp, #8
 80416f0:	af00      	add	r7, sp, #0
 80416f2:	6078      	str	r0, [r7, #4]
 80416f4:	687b      	ldr	r3, [r7, #4]
 80416f6:	3b01      	subs	r3, #1
 80416f8:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 80416fc:	d301      	bcc.n	8041702 <SysTick_Config+0x16>
 80416fe:	2301      	movs	r3, #1
 8041700:	e00f      	b.n	8041722 <SysTick_Config+0x36>
 8041702:	4a0a      	ldr	r2, [pc, #40]	@ (804172c <SysTick_Config+0x40>)
 8041704:	687b      	ldr	r3, [r7, #4]
 8041706:	3b01      	subs	r3, #1
 8041708:	6053      	str	r3, [r2, #4]
 804170a:	2107      	movs	r1, #7
 804170c:	f04f 30ff 	mov.w	r0, #4294967295
 8041710:	f7ff ff8e 	bl	8041630 <__NVIC_SetPriority>
 8041714:	4b05      	ldr	r3, [pc, #20]	@ (804172c <SysTick_Config+0x40>)
 8041716:	2200      	movs	r2, #0
 8041718:	609a      	str	r2, [r3, #8]
 804171a:	4b04      	ldr	r3, [pc, #16]	@ (804172c <SysTick_Config+0x40>)
 804171c:	2207      	movs	r2, #7
 804171e:	601a      	str	r2, [r3, #0]
 8041720:	2300      	movs	r3, #0
 8041722:	4618      	mov	r0, r3
 8041724:	3708      	adds	r7, #8
 8041726:	46bd      	mov	sp, r7
 8041728:	bd80      	pop	{r7, pc}
 804172a:	bf00      	nop
 804172c:	e000e010 	.word	0xe000e010

08041730 <HAL_NVIC_SetPriorityGrouping>:
 8041730:	b580      	push	{r7, lr}
 8041732:	b082      	sub	sp, #8
 8041734:	af00      	add	r7, sp, #0
 8041736:	6078      	str	r0, [r7, #4]
 8041738:	6878      	ldr	r0, [r7, #4]
 804173a:	f7ff ff29 	bl	8041590 <__NVIC_SetPriorityGrouping>
 804173e:	bf00      	nop
 8041740:	3708      	adds	r7, #8
 8041742:	46bd      	mov	sp, r7
 8041744:	bd80      	pop	{r7, pc}

08041746 <HAL_NVIC_SetPriority>:
 8041746:	b580      	push	{r7, lr}
 8041748:	b086      	sub	sp, #24
 804174a:	af00      	add	r7, sp, #0
 804174c:	4603      	mov	r3, r0
 804174e:	60b9      	str	r1, [r7, #8]
 8041750:	607a      	str	r2, [r7, #4]
 8041752:	73fb      	strb	r3, [r7, #15]
 8041754:	f7ff ff40 	bl	80415d8 <__NVIC_GetPriorityGrouping>
 8041758:	6178      	str	r0, [r7, #20]
 804175a:	687a      	ldr	r2, [r7, #4]
 804175c:	68b9      	ldr	r1, [r7, #8]
 804175e:	6978      	ldr	r0, [r7, #20]
 8041760:	f7ff ff90 	bl	8041684 <NVIC_EncodePriority>
 8041764:	4602      	mov	r2, r0
 8041766:	f997 300f 	ldrsb.w	r3, [r7, #15]
 804176a:	4611      	mov	r1, r2
 804176c:	4618      	mov	r0, r3
 804176e:	f7ff ff5f 	bl	8041630 <__NVIC_SetPriority>
 8041772:	bf00      	nop
 8041774:	3718      	adds	r7, #24
 8041776:	46bd      	mov	sp, r7
 8041778:	bd80      	pop	{r7, pc}

0804177a <HAL_NVIC_EnableIRQ>:
 804177a:	b580      	push	{r7, lr}
 804177c:	b082      	sub	sp, #8
 804177e:	af00      	add	r7, sp, #0
 8041780:	4603      	mov	r3, r0
 8041782:	71fb      	strb	r3, [r7, #7]
 8041784:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8041788:	4618      	mov	r0, r3
 804178a:	f7ff ff33 	bl	80415f4 <__NVIC_EnableIRQ>
 804178e:	bf00      	nop
 8041790:	3708      	adds	r7, #8
 8041792:	46bd      	mov	sp, r7
 8041794:	bd80      	pop	{r7, pc}

08041796 <HAL_SYSTICK_Config>:
 8041796:	b580      	push	{r7, lr}
 8041798:	b082      	sub	sp, #8
 804179a:	af00      	add	r7, sp, #0
 804179c:	6078      	str	r0, [r7, #4]
 804179e:	6878      	ldr	r0, [r7, #4]
 80417a0:	f7ff ffa4 	bl	80416ec <SysTick_Config>
 80417a4:	4603      	mov	r3, r0
 80417a6:	4618      	mov	r0, r3
 80417a8:	3708      	adds	r7, #8
 80417aa:	46bd      	mov	sp, r7
 80417ac:	bd80      	pop	{r7, pc}
	...

080417b0 <HAL_DMA_Init>:
 80417b0:	b580      	push	{r7, lr}
 80417b2:	b084      	sub	sp, #16
 80417b4:	af00      	add	r7, sp, #0
 80417b6:	6078      	str	r0, [r7, #4]
 80417b8:	687b      	ldr	r3, [r7, #4]
 80417ba:	2b00      	cmp	r3, #0
 80417bc:	d101      	bne.n	80417c2 <HAL_DMA_Init+0x12>
 80417be:	2301      	movs	r3, #1
 80417c0:	e08d      	b.n	80418de <HAL_DMA_Init+0x12e>
 80417c2:	687b      	ldr	r3, [r7, #4]
 80417c4:	681b      	ldr	r3, [r3, #0]
 80417c6:	461a      	mov	r2, r3
 80417c8:	4b47      	ldr	r3, [pc, #284]	@ (80418e8 <HAL_DMA_Init+0x138>)
 80417ca:	429a      	cmp	r2, r3
 80417cc:	d80f      	bhi.n	80417ee <HAL_DMA_Init+0x3e>
 80417ce:	687b      	ldr	r3, [r7, #4]
 80417d0:	681b      	ldr	r3, [r3, #0]
 80417d2:	461a      	mov	r2, r3
 80417d4:	4b45      	ldr	r3, [pc, #276]	@ (80418ec <HAL_DMA_Init+0x13c>)
 80417d6:	4413      	add	r3, r2
 80417d8:	4a45      	ldr	r2, [pc, #276]	@ (80418f0 <HAL_DMA_Init+0x140>)
 80417da:	fba2 2303 	umull	r2, r3, r2, r3
 80417de:	091b      	lsrs	r3, r3, #4
 80417e0:	009a      	lsls	r2, r3, #2
 80417e2:	687b      	ldr	r3, [r7, #4]
 80417e4:	64da      	str	r2, [r3, #76]	@ 0x4c
 80417e6:	687b      	ldr	r3, [r7, #4]
 80417e8:	4a42      	ldr	r2, [pc, #264]	@ (80418f4 <HAL_DMA_Init+0x144>)
 80417ea:	649a      	str	r2, [r3, #72]	@ 0x48
 80417ec:	e00e      	b.n	804180c <HAL_DMA_Init+0x5c>
 80417ee:	687b      	ldr	r3, [r7, #4]
 80417f0:	681b      	ldr	r3, [r3, #0]
 80417f2:	461a      	mov	r2, r3
 80417f4:	4b40      	ldr	r3, [pc, #256]	@ (80418f8 <HAL_DMA_Init+0x148>)
 80417f6:	4413      	add	r3, r2
 80417f8:	4a3d      	ldr	r2, [pc, #244]	@ (80418f0 <HAL_DMA_Init+0x140>)
 80417fa:	fba2 2303 	umull	r2, r3, r2, r3
 80417fe:	091b      	lsrs	r3, r3, #4
 8041800:	009a      	lsls	r2, r3, #2
 8041802:	687b      	ldr	r3, [r7, #4]
 8041804:	64da      	str	r2, [r3, #76]	@ 0x4c
 8041806:	687b      	ldr	r3, [r7, #4]
 8041808:	4a3c      	ldr	r2, [pc, #240]	@ (80418fc <HAL_DMA_Init+0x14c>)
 804180a:	649a      	str	r2, [r3, #72]	@ 0x48
 804180c:	687b      	ldr	r3, [r7, #4]
 804180e:	2202      	movs	r2, #2
 8041810:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8041814:	687b      	ldr	r3, [r7, #4]
 8041816:	681b      	ldr	r3, [r3, #0]
 8041818:	681b      	ldr	r3, [r3, #0]
 804181a:	60fb      	str	r3, [r7, #12]
 804181c:	68fb      	ldr	r3, [r7, #12]
 804181e:	f423 33ff 	bic.w	r3, r3, #130560	@ 0x1fe00
 8041822:	f423 73f8 	bic.w	r3, r3, #496	@ 0x1f0
 8041826:	60fb      	str	r3, [r7, #12]
 8041828:	687b      	ldr	r3, [r7, #4]
 804182a:	689a      	ldr	r2, [r3, #8]
 804182c:	687b      	ldr	r3, [r7, #4]
 804182e:	68db      	ldr	r3, [r3, #12]
 8041830:	431a      	orrs	r2, r3
 8041832:	687b      	ldr	r3, [r7, #4]
 8041834:	691b      	ldr	r3, [r3, #16]
 8041836:	431a      	orrs	r2, r3
 8041838:	687b      	ldr	r3, [r7, #4]
 804183a:	695b      	ldr	r3, [r3, #20]
 804183c:	431a      	orrs	r2, r3
 804183e:	687b      	ldr	r3, [r7, #4]
 8041840:	699b      	ldr	r3, [r3, #24]
 8041842:	431a      	orrs	r2, r3
 8041844:	687b      	ldr	r3, [r7, #4]
 8041846:	69db      	ldr	r3, [r3, #28]
 8041848:	431a      	orrs	r2, r3
 804184a:	687b      	ldr	r3, [r7, #4]
 804184c:	6a1b      	ldr	r3, [r3, #32]
 804184e:	4313      	orrs	r3, r2
 8041850:	68fa      	ldr	r2, [r7, #12]
 8041852:	4313      	orrs	r3, r2
 8041854:	60fb      	str	r3, [r7, #12]
 8041856:	687b      	ldr	r3, [r7, #4]
 8041858:	681b      	ldr	r3, [r3, #0]
 804185a:	68fa      	ldr	r2, [r7, #12]
 804185c:	601a      	str	r2, [r3, #0]
 804185e:	6878      	ldr	r0, [r7, #4]
 8041860:	f000 fa5c 	bl	8041d1c <DMA_CalcDMAMUXChannelBaseAndMask>
 8041864:	687b      	ldr	r3, [r7, #4]
 8041866:	689b      	ldr	r3, [r3, #8]
 8041868:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 804186c:	d102      	bne.n	8041874 <HAL_DMA_Init+0xc4>
 804186e:	687b      	ldr	r3, [r7, #4]
 8041870:	2200      	movs	r2, #0
 8041872:	605a      	str	r2, [r3, #4]
 8041874:	687b      	ldr	r3, [r7, #4]
 8041876:	685a      	ldr	r2, [r3, #4]
 8041878:	687b      	ldr	r3, [r7, #4]
 804187a:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 804187c:	b2d2      	uxtb	r2, r2
 804187e:	601a      	str	r2, [r3, #0]
 8041880:	687b      	ldr	r3, [r7, #4]
 8041882:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8041884:	687a      	ldr	r2, [r7, #4]
 8041886:	6d92      	ldr	r2, [r2, #88]	@ 0x58
 8041888:	605a      	str	r2, [r3, #4]
 804188a:	687b      	ldr	r3, [r7, #4]
 804188c:	685b      	ldr	r3, [r3, #4]
 804188e:	2b00      	cmp	r3, #0
 8041890:	d010      	beq.n	80418b4 <HAL_DMA_Init+0x104>
 8041892:	687b      	ldr	r3, [r7, #4]
 8041894:	685b      	ldr	r3, [r3, #4]
 8041896:	2b04      	cmp	r3, #4
 8041898:	d80c      	bhi.n	80418b4 <HAL_DMA_Init+0x104>
 804189a:	6878      	ldr	r0, [r7, #4]
 804189c:	f000 fa7c 	bl	8041d98 <DMA_CalcDMAMUXRequestGenBaseAndMask>
 80418a0:	687b      	ldr	r3, [r7, #4]
 80418a2:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 80418a4:	2200      	movs	r2, #0
 80418a6:	601a      	str	r2, [r3, #0]
 80418a8:	687b      	ldr	r3, [r7, #4]
 80418aa:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 80418ac:	687a      	ldr	r2, [r7, #4]
 80418ae:	6e52      	ldr	r2, [r2, #100]	@ 0x64
 80418b0:	605a      	str	r2, [r3, #4]
 80418b2:	e008      	b.n	80418c6 <HAL_DMA_Init+0x116>
 80418b4:	687b      	ldr	r3, [r7, #4]
 80418b6:	2200      	movs	r2, #0
 80418b8:	65da      	str	r2, [r3, #92]	@ 0x5c
 80418ba:	687b      	ldr	r3, [r7, #4]
 80418bc:	2200      	movs	r2, #0
 80418be:	661a      	str	r2, [r3, #96]	@ 0x60
 80418c0:	687b      	ldr	r3, [r7, #4]
 80418c2:	2200      	movs	r2, #0
 80418c4:	665a      	str	r2, [r3, #100]	@ 0x64
 80418c6:	687b      	ldr	r3, [r7, #4]
 80418c8:	2200      	movs	r2, #0
 80418ca:	645a      	str	r2, [r3, #68]	@ 0x44
 80418cc:	687b      	ldr	r3, [r7, #4]
 80418ce:	2201      	movs	r2, #1
 80418d0:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 80418d4:	687b      	ldr	r3, [r7, #4]
 80418d6:	2200      	movs	r2, #0
 80418d8:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 80418dc:	2300      	movs	r3, #0
 80418de:	4618      	mov	r0, r3
 80418e0:	3710      	adds	r7, #16
 80418e2:	46bd      	mov	sp, r7
 80418e4:	bd80      	pop	{r7, pc}
 80418e6:	bf00      	nop
 80418e8:	40020407 	.word	0x40020407
 80418ec:	bffdfff8 	.word	0xbffdfff8
 80418f0:	cccccccd 	.word	0xcccccccd
 80418f4:	40020000 	.word	0x40020000
 80418f8:	bffdfbf8 	.word	0xbffdfbf8
 80418fc:	40020400 	.word	0x40020400

08041900 <HAL_DMA_Start>:
 8041900:	b580      	push	{r7, lr}
 8041902:	b086      	sub	sp, #24
 8041904:	af00      	add	r7, sp, #0
 8041906:	60f8      	str	r0, [r7, #12]
 8041908:	60b9      	str	r1, [r7, #8]
 804190a:	607a      	str	r2, [r7, #4]
 804190c:	603b      	str	r3, [r7, #0]
 804190e:	2300      	movs	r3, #0
 8041910:	75fb      	strb	r3, [r7, #23]
 8041912:	68fb      	ldr	r3, [r7, #12]
 8041914:	f893 3024 	ldrb.w	r3, [r3, #36]	@ 0x24
 8041918:	2b01      	cmp	r3, #1
 804191a:	d101      	bne.n	8041920 <HAL_DMA_Start+0x20>
 804191c:	2302      	movs	r3, #2
 804191e:	e02e      	b.n	804197e <HAL_DMA_Start+0x7e>
 8041920:	68fb      	ldr	r3, [r7, #12]
 8041922:	2201      	movs	r2, #1
 8041924:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8041928:	68fb      	ldr	r3, [r7, #12]
 804192a:	f893 3025 	ldrb.w	r3, [r3, #37]	@ 0x25
 804192e:	b2db      	uxtb	r3, r3
 8041930:	2b01      	cmp	r3, #1
 8041932:	d11d      	bne.n	8041970 <HAL_DMA_Start+0x70>
 8041934:	68fb      	ldr	r3, [r7, #12]
 8041936:	2202      	movs	r2, #2
 8041938:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 804193c:	68fb      	ldr	r3, [r7, #12]
 804193e:	2200      	movs	r2, #0
 8041940:	645a      	str	r2, [r3, #68]	@ 0x44
 8041942:	68fb      	ldr	r3, [r7, #12]
 8041944:	681b      	ldr	r3, [r3, #0]
 8041946:	681a      	ldr	r2, [r3, #0]
 8041948:	68fb      	ldr	r3, [r7, #12]
 804194a:	681b      	ldr	r3, [r3, #0]
 804194c:	f022 0201 	bic.w	r2, r2, #1
 8041950:	601a      	str	r2, [r3, #0]
 8041952:	683b      	ldr	r3, [r7, #0]
 8041954:	687a      	ldr	r2, [r7, #4]
 8041956:	68b9      	ldr	r1, [r7, #8]
 8041958:	68f8      	ldr	r0, [r7, #12]
 804195a:	f000 f9a0 	bl	8041c9e <DMA_SetConfig>
 804195e:	68fb      	ldr	r3, [r7, #12]
 8041960:	681b      	ldr	r3, [r3, #0]
 8041962:	681a      	ldr	r2, [r3, #0]
 8041964:	68fb      	ldr	r3, [r7, #12]
 8041966:	681b      	ldr	r3, [r3, #0]
 8041968:	f042 0201 	orr.w	r2, r2, #1
 804196c:	601a      	str	r2, [r3, #0]
 804196e:	e005      	b.n	804197c <HAL_DMA_Start+0x7c>
 8041970:	68fb      	ldr	r3, [r7, #12]
 8041972:	2200      	movs	r2, #0
 8041974:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8041978:	2302      	movs	r3, #2
 804197a:	75fb      	strb	r3, [r7, #23]
 804197c:	7dfb      	ldrb	r3, [r7, #23]
 804197e:	4618      	mov	r0, r3
 8041980:	3718      	adds	r7, #24
 8041982:	46bd      	mov	sp, r7
 8041984:	bd80      	pop	{r7, pc}

08041986 <HAL_DMA_Abort>:
 8041986:	b480      	push	{r7}
 8041988:	b085      	sub	sp, #20
 804198a:	af00      	add	r7, sp, #0
 804198c:	6078      	str	r0, [r7, #4]
 804198e:	2300      	movs	r3, #0
 8041990:	73fb      	strb	r3, [r7, #15]
 8041992:	687b      	ldr	r3, [r7, #4]
 8041994:	f893 3025 	ldrb.w	r3, [r3, #37]	@ 0x25
 8041998:	b2db      	uxtb	r3, r3
 804199a:	2b02      	cmp	r3, #2
 804199c:	d008      	beq.n	80419b0 <HAL_DMA_Abort+0x2a>
 804199e:	687b      	ldr	r3, [r7, #4]
 80419a0:	2204      	movs	r2, #4
 80419a2:	645a      	str	r2, [r3, #68]	@ 0x44
 80419a4:	687b      	ldr	r3, [r7, #4]
 80419a6:	2200      	movs	r2, #0
 80419a8:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 80419ac:	2301      	movs	r3, #1
 80419ae:	e040      	b.n	8041a32 <HAL_DMA_Abort+0xac>
 80419b0:	687b      	ldr	r3, [r7, #4]
 80419b2:	681b      	ldr	r3, [r3, #0]
 80419b4:	681a      	ldr	r2, [r3, #0]
 80419b6:	687b      	ldr	r3, [r7, #4]
 80419b8:	681b      	ldr	r3, [r3, #0]
 80419ba:	f022 020e 	bic.w	r2, r2, #14
 80419be:	601a      	str	r2, [r3, #0]
 80419c0:	687b      	ldr	r3, [r7, #4]
 80419c2:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80419c4:	681a      	ldr	r2, [r3, #0]
 80419c6:	687b      	ldr	r3, [r7, #4]
 80419c8:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 80419ca:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 80419ce:	601a      	str	r2, [r3, #0]
 80419d0:	687b      	ldr	r3, [r7, #4]
 80419d2:	681b      	ldr	r3, [r3, #0]
 80419d4:	681a      	ldr	r2, [r3, #0]
 80419d6:	687b      	ldr	r3, [r7, #4]
 80419d8:	681b      	ldr	r3, [r3, #0]
 80419da:	f022 0201 	bic.w	r2, r2, #1
 80419de:	601a      	str	r2, [r3, #0]
 80419e0:	687b      	ldr	r3, [r7, #4]
 80419e2:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80419e4:	f003 021c 	and.w	r2, r3, #28
 80419e8:	687b      	ldr	r3, [r7, #4]
 80419ea:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 80419ec:	2101      	movs	r1, #1
 80419ee:	fa01 f202 	lsl.w	r2, r1, r2
 80419f2:	605a      	str	r2, [r3, #4]
 80419f4:	687b      	ldr	r3, [r7, #4]
 80419f6:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 80419f8:	687a      	ldr	r2, [r7, #4]
 80419fa:	6d92      	ldr	r2, [r2, #88]	@ 0x58
 80419fc:	605a      	str	r2, [r3, #4]
 80419fe:	687b      	ldr	r3, [r7, #4]
 8041a00:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8041a02:	2b00      	cmp	r3, #0
 8041a04:	d00c      	beq.n	8041a20 <HAL_DMA_Abort+0x9a>
 8041a06:	687b      	ldr	r3, [r7, #4]
 8041a08:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8041a0a:	681a      	ldr	r2, [r3, #0]
 8041a0c:	687b      	ldr	r3, [r7, #4]
 8041a0e:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8041a10:	f422 7280 	bic.w	r2, r2, #256	@ 0x100
 8041a14:	601a      	str	r2, [r3, #0]
 8041a16:	687b      	ldr	r3, [r7, #4]
 8041a18:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8041a1a:	687a      	ldr	r2, [r7, #4]
 8041a1c:	6e52      	ldr	r2, [r2, #100]	@ 0x64
 8041a1e:	605a      	str	r2, [r3, #4]
 8041a20:	687b      	ldr	r3, [r7, #4]
 8041a22:	2201      	movs	r2, #1
 8041a24:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8041a28:	687b      	ldr	r3, [r7, #4]
 8041a2a:	2200      	movs	r2, #0
 8041a2c:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8041a30:	7bfb      	ldrb	r3, [r7, #15]
 8041a32:	4618      	mov	r0, r3
 8041a34:	3714      	adds	r7, #20
 8041a36:	46bd      	mov	sp, r7
 8041a38:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041a3c:	4770      	bx	lr

08041a3e <HAL_DMA_IRQHandler>:
 8041a3e:	b580      	push	{r7, lr}
 8041a40:	b084      	sub	sp, #16
 8041a42:	af00      	add	r7, sp, #0
 8041a44:	6078      	str	r0, [r7, #4]
 8041a46:	687b      	ldr	r3, [r7, #4]
 8041a48:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8041a4a:	681b      	ldr	r3, [r3, #0]
 8041a4c:	60fb      	str	r3, [r7, #12]
 8041a4e:	687b      	ldr	r3, [r7, #4]
 8041a50:	681b      	ldr	r3, [r3, #0]
 8041a52:	681b      	ldr	r3, [r3, #0]
 8041a54:	60bb      	str	r3, [r7, #8]
 8041a56:	687b      	ldr	r3, [r7, #4]
 8041a58:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041a5a:	f003 031c 	and.w	r3, r3, #28
 8041a5e:	2204      	movs	r2, #4
 8041a60:	409a      	lsls	r2, r3
 8041a62:	68fb      	ldr	r3, [r7, #12]
 8041a64:	4013      	ands	r3, r2
 8041a66:	2b00      	cmp	r3, #0
 8041a68:	d053      	beq.n	8041b12 <HAL_DMA_IRQHandler+0xd4>
 8041a6a:	68bb      	ldr	r3, [r7, #8]
 8041a6c:	f003 0304 	and.w	r3, r3, #4
 8041a70:	2b00      	cmp	r3, #0
 8041a72:	d04e      	beq.n	8041b12 <HAL_DMA_IRQHandler+0xd4>
 8041a74:	687b      	ldr	r3, [r7, #4]
 8041a76:	681b      	ldr	r3, [r3, #0]
 8041a78:	681b      	ldr	r3, [r3, #0]
 8041a7a:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 8041a7e:	2b00      	cmp	r3, #0
 8041a80:	d024      	beq.n	8041acc <HAL_DMA_IRQHandler+0x8e>
 8041a82:	687b      	ldr	r3, [r7, #4]
 8041a84:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041a86:	f003 021c 	and.w	r2, r3, #28
 8041a8a:	687b      	ldr	r3, [r7, #4]
 8041a8c:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8041a8e:	2104      	movs	r1, #4
 8041a90:	fa01 f202 	lsl.w	r2, r1, r2
 8041a94:	605a      	str	r2, [r3, #4]
 8041a96:	687b      	ldr	r3, [r7, #4]
 8041a98:	681b      	ldr	r3, [r3, #0]
 8041a9a:	681b      	ldr	r3, [r3, #0]
 8041a9c:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8041aa0:	2b00      	cmp	r3, #0
 8041aa2:	d109      	bne.n	8041ab8 <HAL_DMA_IRQHandler+0x7a>
 8041aa4:	687b      	ldr	r3, [r7, #4]
 8041aa6:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8041aa8:	2b00      	cmp	r3, #0
 8041aaa:	f000 80c0 	beq.w	8041c2e <HAL_DMA_IRQHandler+0x1f0>
 8041aae:	687b      	ldr	r3, [r7, #4]
 8041ab0:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8041ab2:	6878      	ldr	r0, [r7, #4]
 8041ab4:	4798      	blx	r3
 8041ab6:	e0ba      	b.n	8041c2e <HAL_DMA_IRQHandler+0x1f0>
 8041ab8:	687b      	ldr	r3, [r7, #4]
 8041aba:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8041abc:	2b00      	cmp	r3, #0
 8041abe:	f000 80b6 	beq.w	8041c2e <HAL_DMA_IRQHandler+0x1f0>
 8041ac2:	687b      	ldr	r3, [r7, #4]
 8041ac4:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8041ac6:	6878      	ldr	r0, [r7, #4]
 8041ac8:	4798      	blx	r3
 8041aca:	e0b0      	b.n	8041c2e <HAL_DMA_IRQHandler+0x1f0>
 8041acc:	687b      	ldr	r3, [r7, #4]
 8041ace:	681b      	ldr	r3, [r3, #0]
 8041ad0:	681b      	ldr	r3, [r3, #0]
 8041ad2:	f003 0320 	and.w	r3, r3, #32
 8041ad6:	2b00      	cmp	r3, #0
 8041ad8:	d107      	bne.n	8041aea <HAL_DMA_IRQHandler+0xac>
 8041ada:	687b      	ldr	r3, [r7, #4]
 8041adc:	681b      	ldr	r3, [r3, #0]
 8041ade:	681a      	ldr	r2, [r3, #0]
 8041ae0:	687b      	ldr	r3, [r7, #4]
 8041ae2:	681b      	ldr	r3, [r3, #0]
 8041ae4:	f022 0204 	bic.w	r2, r2, #4
 8041ae8:	601a      	str	r2, [r3, #0]
 8041aea:	687b      	ldr	r3, [r7, #4]
 8041aec:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041aee:	f003 021c 	and.w	r2, r3, #28
 8041af2:	687b      	ldr	r3, [r7, #4]
 8041af4:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8041af6:	2104      	movs	r1, #4
 8041af8:	fa01 f202 	lsl.w	r2, r1, r2
 8041afc:	605a      	str	r2, [r3, #4]
 8041afe:	687b      	ldr	r3, [r7, #4]
 8041b00:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8041b02:	2b00      	cmp	r3, #0
 8041b04:	f000 8093 	beq.w	8041c2e <HAL_DMA_IRQHandler+0x1f0>
 8041b08:	687b      	ldr	r3, [r7, #4]
 8041b0a:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8041b0c:	6878      	ldr	r0, [r7, #4]
 8041b0e:	4798      	blx	r3
 8041b10:	e08d      	b.n	8041c2e <HAL_DMA_IRQHandler+0x1f0>
 8041b12:	687b      	ldr	r3, [r7, #4]
 8041b14:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041b16:	f003 031c 	and.w	r3, r3, #28
 8041b1a:	2202      	movs	r2, #2
 8041b1c:	409a      	lsls	r2, r3
 8041b1e:	68fb      	ldr	r3, [r7, #12]
 8041b20:	4013      	ands	r3, r2
 8041b22:	2b00      	cmp	r3, #0
 8041b24:	d04e      	beq.n	8041bc4 <HAL_DMA_IRQHandler+0x186>
 8041b26:	68bb      	ldr	r3, [r7, #8]
 8041b28:	f003 0302 	and.w	r3, r3, #2
 8041b2c:	2b00      	cmp	r3, #0
 8041b2e:	d049      	beq.n	8041bc4 <HAL_DMA_IRQHandler+0x186>
 8041b30:	687b      	ldr	r3, [r7, #4]
 8041b32:	681b      	ldr	r3, [r3, #0]
 8041b34:	681b      	ldr	r3, [r3, #0]
 8041b36:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 8041b3a:	2b00      	cmp	r3, #0
 8041b3c:	d018      	beq.n	8041b70 <HAL_DMA_IRQHandler+0x132>
 8041b3e:	687b      	ldr	r3, [r7, #4]
 8041b40:	681b      	ldr	r3, [r3, #0]
 8041b42:	681b      	ldr	r3, [r3, #0]
 8041b44:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8041b48:	2b00      	cmp	r3, #0
 8041b4a:	d108      	bne.n	8041b5e <HAL_DMA_IRQHandler+0x120>
 8041b4c:	687b      	ldr	r3, [r7, #4]
 8041b4e:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8041b50:	2b00      	cmp	r3, #0
 8041b52:	d06e      	beq.n	8041c32 <HAL_DMA_IRQHandler+0x1f4>
 8041b54:	687b      	ldr	r3, [r7, #4]
 8041b56:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8041b58:	6878      	ldr	r0, [r7, #4]
 8041b5a:	4798      	blx	r3
 8041b5c:	e069      	b.n	8041c32 <HAL_DMA_IRQHandler+0x1f4>
 8041b5e:	687b      	ldr	r3, [r7, #4]
 8041b60:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8041b62:	2b00      	cmp	r3, #0
 8041b64:	d065      	beq.n	8041c32 <HAL_DMA_IRQHandler+0x1f4>
 8041b66:	687b      	ldr	r3, [r7, #4]
 8041b68:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8041b6a:	6878      	ldr	r0, [r7, #4]
 8041b6c:	4798      	blx	r3
 8041b6e:	e060      	b.n	8041c32 <HAL_DMA_IRQHandler+0x1f4>
 8041b70:	687b      	ldr	r3, [r7, #4]
 8041b72:	681b      	ldr	r3, [r3, #0]
 8041b74:	681b      	ldr	r3, [r3, #0]
 8041b76:	f003 0320 	and.w	r3, r3, #32
 8041b7a:	2b00      	cmp	r3, #0
 8041b7c:	d10b      	bne.n	8041b96 <HAL_DMA_IRQHandler+0x158>
 8041b7e:	687b      	ldr	r3, [r7, #4]
 8041b80:	681b      	ldr	r3, [r3, #0]
 8041b82:	681a      	ldr	r2, [r3, #0]
 8041b84:	687b      	ldr	r3, [r7, #4]
 8041b86:	681b      	ldr	r3, [r3, #0]
 8041b88:	f022 020a 	bic.w	r2, r2, #10
 8041b8c:	601a      	str	r2, [r3, #0]
 8041b8e:	687b      	ldr	r3, [r7, #4]
 8041b90:	2201      	movs	r2, #1
 8041b92:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8041b96:	687b      	ldr	r3, [r7, #4]
 8041b98:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041b9a:	f003 021c 	and.w	r2, r3, #28
 8041b9e:	687b      	ldr	r3, [r7, #4]
 8041ba0:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8041ba2:	2102      	movs	r1, #2
 8041ba4:	fa01 f202 	lsl.w	r2, r1, r2
 8041ba8:	605a      	str	r2, [r3, #4]
 8041baa:	687b      	ldr	r3, [r7, #4]
 8041bac:	2200      	movs	r2, #0
 8041bae:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8041bb2:	687b      	ldr	r3, [r7, #4]
 8041bb4:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8041bb6:	2b00      	cmp	r3, #0
 8041bb8:	d03b      	beq.n	8041c32 <HAL_DMA_IRQHandler+0x1f4>
 8041bba:	687b      	ldr	r3, [r7, #4]
 8041bbc:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8041bbe:	6878      	ldr	r0, [r7, #4]
 8041bc0:	4798      	blx	r3
 8041bc2:	e036      	b.n	8041c32 <HAL_DMA_IRQHandler+0x1f4>
 8041bc4:	687b      	ldr	r3, [r7, #4]
 8041bc6:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041bc8:	f003 031c 	and.w	r3, r3, #28
 8041bcc:	2208      	movs	r2, #8
 8041bce:	409a      	lsls	r2, r3
 8041bd0:	68fb      	ldr	r3, [r7, #12]
 8041bd2:	4013      	ands	r3, r2
 8041bd4:	2b00      	cmp	r3, #0
 8041bd6:	d02e      	beq.n	8041c36 <HAL_DMA_IRQHandler+0x1f8>
 8041bd8:	68bb      	ldr	r3, [r7, #8]
 8041bda:	f003 0308 	and.w	r3, r3, #8
 8041bde:	2b00      	cmp	r3, #0
 8041be0:	d029      	beq.n	8041c36 <HAL_DMA_IRQHandler+0x1f8>
 8041be2:	687b      	ldr	r3, [r7, #4]
 8041be4:	681b      	ldr	r3, [r3, #0]
 8041be6:	681a      	ldr	r2, [r3, #0]
 8041be8:	687b      	ldr	r3, [r7, #4]
 8041bea:	681b      	ldr	r3, [r3, #0]
 8041bec:	f022 020e 	bic.w	r2, r2, #14
 8041bf0:	601a      	str	r2, [r3, #0]
 8041bf2:	687b      	ldr	r3, [r7, #4]
 8041bf4:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041bf6:	f003 021c 	and.w	r2, r3, #28
 8041bfa:	687b      	ldr	r3, [r7, #4]
 8041bfc:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8041bfe:	2101      	movs	r1, #1
 8041c00:	fa01 f202 	lsl.w	r2, r1, r2
 8041c04:	605a      	str	r2, [r3, #4]
 8041c06:	687b      	ldr	r3, [r7, #4]
 8041c08:	2201      	movs	r2, #1
 8041c0a:	645a      	str	r2, [r3, #68]	@ 0x44
 8041c0c:	687b      	ldr	r3, [r7, #4]
 8041c0e:	2201      	movs	r2, #1
 8041c10:	f883 2025 	strb.w	r2, [r3, #37]	@ 0x25
 8041c14:	687b      	ldr	r3, [r7, #4]
 8041c16:	2200      	movs	r2, #0
 8041c18:	f883 2024 	strb.w	r2, [r3, #36]	@ 0x24
 8041c1c:	687b      	ldr	r3, [r7, #4]
 8041c1e:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8041c20:	2b00      	cmp	r3, #0
 8041c22:	d008      	beq.n	8041c36 <HAL_DMA_IRQHandler+0x1f8>
 8041c24:	687b      	ldr	r3, [r7, #4]
 8041c26:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8041c28:	6878      	ldr	r0, [r7, #4]
 8041c2a:	4798      	blx	r3
 8041c2c:	e002      	b.n	8041c34 <HAL_DMA_IRQHandler+0x1f6>
 8041c2e:	bf00      	nop
 8041c30:	e000      	b.n	8041c34 <HAL_DMA_IRQHandler+0x1f6>
 8041c32:	bf00      	nop
 8041c34:	bf00      	nop
 8041c36:	bf00      	nop
 8041c38:	3710      	adds	r7, #16
 8041c3a:	46bd      	mov	sp, r7
 8041c3c:	bd80      	pop	{r7, pc}

08041c3e <HAL_DMA_ConfigChannelAttributes>:
 8041c3e:	b480      	push	{r7}
 8041c40:	b085      	sub	sp, #20
 8041c42:	af00      	add	r7, sp, #0
 8041c44:	6078      	str	r0, [r7, #4]
 8041c46:	6039      	str	r1, [r7, #0]
 8041c48:	2300      	movs	r3, #0
 8041c4a:	72fb      	strb	r3, [r7, #11]
 8041c4c:	687b      	ldr	r3, [r7, #4]
 8041c4e:	2b00      	cmp	r3, #0
 8041c50:	d103      	bne.n	8041c5a <HAL_DMA_ConfigChannelAttributes+0x1c>
 8041c52:	2301      	movs	r3, #1
 8041c54:	72fb      	strb	r3, [r7, #11]
 8041c56:	7afb      	ldrb	r3, [r7, #11]
 8041c58:	e01b      	b.n	8041c92 <HAL_DMA_ConfigChannelAttributes+0x54>
 8041c5a:	687b      	ldr	r3, [r7, #4]
 8041c5c:	681b      	ldr	r3, [r3, #0]
 8041c5e:	681b      	ldr	r3, [r3, #0]
 8041c60:	60fb      	str	r3, [r7, #12]
 8041c62:	683b      	ldr	r3, [r7, #0]
 8041c64:	f003 0310 	and.w	r3, r3, #16
 8041c68:	2b00      	cmp	r3, #0
 8041c6a:	d00d      	beq.n	8041c88 <HAL_DMA_ConfigChannelAttributes+0x4a>
 8041c6c:	683b      	ldr	r3, [r7, #0]
 8041c6e:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8041c72:	2b00      	cmp	r3, #0
 8041c74:	d004      	beq.n	8041c80 <HAL_DMA_ConfigChannelAttributes+0x42>
 8041c76:	68fb      	ldr	r3, [r7, #12]
 8041c78:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8041c7c:	60fb      	str	r3, [r7, #12]
 8041c7e:	e003      	b.n	8041c88 <HAL_DMA_ConfigChannelAttributes+0x4a>
 8041c80:	68fb      	ldr	r3, [r7, #12]
 8041c82:	f423 1380 	bic.w	r3, r3, #1048576	@ 0x100000
 8041c86:	60fb      	str	r3, [r7, #12]
 8041c88:	687b      	ldr	r3, [r7, #4]
 8041c8a:	681b      	ldr	r3, [r3, #0]
 8041c8c:	68fa      	ldr	r2, [r7, #12]
 8041c8e:	601a      	str	r2, [r3, #0]
 8041c90:	7afb      	ldrb	r3, [r7, #11]
 8041c92:	4618      	mov	r0, r3
 8041c94:	3714      	adds	r7, #20
 8041c96:	46bd      	mov	sp, r7
 8041c98:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041c9c:	4770      	bx	lr

08041c9e <DMA_SetConfig>:
 8041c9e:	b480      	push	{r7}
 8041ca0:	b085      	sub	sp, #20
 8041ca2:	af00      	add	r7, sp, #0
 8041ca4:	60f8      	str	r0, [r7, #12]
 8041ca6:	60b9      	str	r1, [r7, #8]
 8041ca8:	607a      	str	r2, [r7, #4]
 8041caa:	603b      	str	r3, [r7, #0]
 8041cac:	68fb      	ldr	r3, [r7, #12]
 8041cae:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 8041cb0:	68fa      	ldr	r2, [r7, #12]
 8041cb2:	6d92      	ldr	r2, [r2, #88]	@ 0x58
 8041cb4:	605a      	str	r2, [r3, #4]
 8041cb6:	68fb      	ldr	r3, [r7, #12]
 8041cb8:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8041cba:	2b00      	cmp	r3, #0
 8041cbc:	d004      	beq.n	8041cc8 <DMA_SetConfig+0x2a>
 8041cbe:	68fb      	ldr	r3, [r7, #12]
 8041cc0:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8041cc2:	68fa      	ldr	r2, [r7, #12]
 8041cc4:	6e52      	ldr	r2, [r2, #100]	@ 0x64
 8041cc6:	605a      	str	r2, [r3, #4]
 8041cc8:	68fb      	ldr	r3, [r7, #12]
 8041cca:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041ccc:	f003 021c 	and.w	r2, r3, #28
 8041cd0:	68fb      	ldr	r3, [r7, #12]
 8041cd2:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 8041cd4:	2101      	movs	r1, #1
 8041cd6:	fa01 f202 	lsl.w	r2, r1, r2
 8041cda:	605a      	str	r2, [r3, #4]
 8041cdc:	68fb      	ldr	r3, [r7, #12]
 8041cde:	681b      	ldr	r3, [r3, #0]
 8041ce0:	683a      	ldr	r2, [r7, #0]
 8041ce2:	605a      	str	r2, [r3, #4]
 8041ce4:	68fb      	ldr	r3, [r7, #12]
 8041ce6:	689b      	ldr	r3, [r3, #8]
 8041ce8:	2b10      	cmp	r3, #16
 8041cea:	d108      	bne.n	8041cfe <DMA_SetConfig+0x60>
 8041cec:	68fb      	ldr	r3, [r7, #12]
 8041cee:	681b      	ldr	r3, [r3, #0]
 8041cf0:	687a      	ldr	r2, [r7, #4]
 8041cf2:	609a      	str	r2, [r3, #8]
 8041cf4:	68fb      	ldr	r3, [r7, #12]
 8041cf6:	681b      	ldr	r3, [r3, #0]
 8041cf8:	68ba      	ldr	r2, [r7, #8]
 8041cfa:	60da      	str	r2, [r3, #12]
 8041cfc:	e007      	b.n	8041d0e <DMA_SetConfig+0x70>
 8041cfe:	68fb      	ldr	r3, [r7, #12]
 8041d00:	681b      	ldr	r3, [r3, #0]
 8041d02:	68ba      	ldr	r2, [r7, #8]
 8041d04:	609a      	str	r2, [r3, #8]
 8041d06:	68fb      	ldr	r3, [r7, #12]
 8041d08:	681b      	ldr	r3, [r3, #0]
 8041d0a:	687a      	ldr	r2, [r7, #4]
 8041d0c:	60da      	str	r2, [r3, #12]
 8041d0e:	bf00      	nop
 8041d10:	3714      	adds	r7, #20
 8041d12:	46bd      	mov	sp, r7
 8041d14:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041d18:	4770      	bx	lr
	...

08041d1c <DMA_CalcDMAMUXChannelBaseAndMask>:
 8041d1c:	b480      	push	{r7}
 8041d1e:	b085      	sub	sp, #20
 8041d20:	af00      	add	r7, sp, #0
 8041d22:	6078      	str	r0, [r7, #4]
 8041d24:	687b      	ldr	r3, [r7, #4]
 8041d26:	681b      	ldr	r3, [r3, #0]
 8041d28:	461a      	mov	r2, r3
 8041d2a:	4b17      	ldr	r3, [pc, #92]	@ (8041d88 <DMA_CalcDMAMUXChannelBaseAndMask+0x6c>)
 8041d2c:	429a      	cmp	r2, r3
 8041d2e:	d80a      	bhi.n	8041d46 <DMA_CalcDMAMUXChannelBaseAndMask+0x2a>
 8041d30:	687b      	ldr	r3, [r7, #4]
 8041d32:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041d34:	089b      	lsrs	r3, r3, #2
 8041d36:	009b      	lsls	r3, r3, #2
 8041d38:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
 8041d3c:	f503 3302 	add.w	r3, r3, #133120	@ 0x20800
 8041d40:	687a      	ldr	r2, [r7, #4]
 8041d42:	6513      	str	r3, [r2, #80]	@ 0x50
 8041d44:	e007      	b.n	8041d56 <DMA_CalcDMAMUXChannelBaseAndMask+0x3a>
 8041d46:	687b      	ldr	r3, [r7, #4]
 8041d48:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 8041d4a:	089b      	lsrs	r3, r3, #2
 8041d4c:	009a      	lsls	r2, r3, #2
 8041d4e:	4b0f      	ldr	r3, [pc, #60]	@ (8041d8c <DMA_CalcDMAMUXChannelBaseAndMask+0x70>)
 8041d50:	4413      	add	r3, r2
 8041d52:	687a      	ldr	r2, [r7, #4]
 8041d54:	6513      	str	r3, [r2, #80]	@ 0x50
 8041d56:	687b      	ldr	r3, [r7, #4]
 8041d58:	681b      	ldr	r3, [r3, #0]
 8041d5a:	b2db      	uxtb	r3, r3
 8041d5c:	3b08      	subs	r3, #8
 8041d5e:	4a0c      	ldr	r2, [pc, #48]	@ (8041d90 <DMA_CalcDMAMUXChannelBaseAndMask+0x74>)
 8041d60:	fba2 2303 	umull	r2, r3, r2, r3
 8041d64:	091b      	lsrs	r3, r3, #4
 8041d66:	60fb      	str	r3, [r7, #12]
 8041d68:	687b      	ldr	r3, [r7, #4]
 8041d6a:	4a0a      	ldr	r2, [pc, #40]	@ (8041d94 <DMA_CalcDMAMUXChannelBaseAndMask+0x78>)
 8041d6c:	655a      	str	r2, [r3, #84]	@ 0x54
 8041d6e:	68fb      	ldr	r3, [r7, #12]
 8041d70:	f003 031f 	and.w	r3, r3, #31
 8041d74:	2201      	movs	r2, #1
 8041d76:	409a      	lsls	r2, r3
 8041d78:	687b      	ldr	r3, [r7, #4]
 8041d7a:	659a      	str	r2, [r3, #88]	@ 0x58
 8041d7c:	bf00      	nop
 8041d7e:	3714      	adds	r7, #20
 8041d80:	46bd      	mov	sp, r7
 8041d82:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041d86:	4770      	bx	lr
 8041d88:	40020407 	.word	0x40020407
 8041d8c:	40020820 	.word	0x40020820
 8041d90:	cccccccd 	.word	0xcccccccd
 8041d94:	40020880 	.word	0x40020880

08041d98 <DMA_CalcDMAMUXRequestGenBaseAndMask>:
 8041d98:	b480      	push	{r7}
 8041d9a:	b085      	sub	sp, #20
 8041d9c:	af00      	add	r7, sp, #0
 8041d9e:	6078      	str	r0, [r7, #4]
 8041da0:	687b      	ldr	r3, [r7, #4]
 8041da2:	685b      	ldr	r3, [r3, #4]
 8041da4:	b2db      	uxtb	r3, r3
 8041da6:	60fb      	str	r3, [r7, #12]
 8041da8:	68fa      	ldr	r2, [r7, #12]
 8041daa:	4b0b      	ldr	r3, [pc, #44]	@ (8041dd8 <DMA_CalcDMAMUXRequestGenBaseAndMask+0x40>)
 8041dac:	4413      	add	r3, r2
 8041dae:	009b      	lsls	r3, r3, #2
 8041db0:	461a      	mov	r2, r3
 8041db2:	687b      	ldr	r3, [r7, #4]
 8041db4:	65da      	str	r2, [r3, #92]	@ 0x5c
 8041db6:	687b      	ldr	r3, [r7, #4]
 8041db8:	4a08      	ldr	r2, [pc, #32]	@ (8041ddc <DMA_CalcDMAMUXRequestGenBaseAndMask+0x44>)
 8041dba:	661a      	str	r2, [r3, #96]	@ 0x60
 8041dbc:	68fb      	ldr	r3, [r7, #12]
 8041dbe:	3b01      	subs	r3, #1
 8041dc0:	f003 0303 	and.w	r3, r3, #3
 8041dc4:	2201      	movs	r2, #1
 8041dc6:	409a      	lsls	r2, r3
 8041dc8:	687b      	ldr	r3, [r7, #4]
 8041dca:	665a      	str	r2, [r3, #100]	@ 0x64
 8041dcc:	bf00      	nop
 8041dce:	3714      	adds	r7, #20
 8041dd0:	46bd      	mov	sp, r7
 8041dd2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8041dd6:	4770      	bx	lr
 8041dd8:	1000823f 	.word	0x1000823f
 8041ddc:	40020940 	.word	0x40020940

08041de0 <HAL_GPIO_Init>:
 8041de0:	b480      	push	{r7}
 8041de2:	b087      	sub	sp, #28
 8041de4:	af00      	add	r7, sp, #0
 8041de6:	6078      	str	r0, [r7, #4]
 8041de8:	6039      	str	r1, [r7, #0]
 8041dea:	2300      	movs	r3, #0
 8041dec:	617b      	str	r3, [r7, #20]
 8041dee:	e158      	b.n	80420a2 <HAL_GPIO_Init+0x2c2>
 8041df0:	683b      	ldr	r3, [r7, #0]
 8041df2:	681a      	ldr	r2, [r3, #0]
 8041df4:	2101      	movs	r1, #1
 8041df6:	697b      	ldr	r3, [r7, #20]
 8041df8:	fa01 f303 	lsl.w	r3, r1, r3
 8041dfc:	4013      	ands	r3, r2
 8041dfe:	60fb      	str	r3, [r7, #12]
 8041e00:	68fb      	ldr	r3, [r7, #12]
 8041e02:	2b00      	cmp	r3, #0
 8041e04:	f000 814a 	beq.w	804209c <HAL_GPIO_Init+0x2bc>
 8041e08:	683b      	ldr	r3, [r7, #0]
 8041e0a:	685b      	ldr	r3, [r3, #4]
 8041e0c:	f003 0303 	and.w	r3, r3, #3
 8041e10:	2b01      	cmp	r3, #1
 8041e12:	d005      	beq.n	8041e20 <HAL_GPIO_Init+0x40>
 8041e14:	683b      	ldr	r3, [r7, #0]
 8041e16:	685b      	ldr	r3, [r3, #4]
 8041e18:	f003 0303 	and.w	r3, r3, #3
 8041e1c:	2b02      	cmp	r3, #2
 8041e1e:	d130      	bne.n	8041e82 <HAL_GPIO_Init+0xa2>
 8041e20:	687b      	ldr	r3, [r7, #4]
 8041e22:	689b      	ldr	r3, [r3, #8]
 8041e24:	613b      	str	r3, [r7, #16]
 8041e26:	697b      	ldr	r3, [r7, #20]
 8041e28:	005b      	lsls	r3, r3, #1
 8041e2a:	2203      	movs	r2, #3
 8041e2c:	fa02 f303 	lsl.w	r3, r2, r3
 8041e30:	43db      	mvns	r3, r3
 8041e32:	693a      	ldr	r2, [r7, #16]
 8041e34:	4013      	ands	r3, r2
 8041e36:	613b      	str	r3, [r7, #16]
 8041e38:	683b      	ldr	r3, [r7, #0]
 8041e3a:	68da      	ldr	r2, [r3, #12]
 8041e3c:	697b      	ldr	r3, [r7, #20]
 8041e3e:	005b      	lsls	r3, r3, #1
 8041e40:	fa02 f303 	lsl.w	r3, r2, r3
 8041e44:	693a      	ldr	r2, [r7, #16]
 8041e46:	4313      	orrs	r3, r2
 8041e48:	613b      	str	r3, [r7, #16]
 8041e4a:	687b      	ldr	r3, [r7, #4]
 8041e4c:	693a      	ldr	r2, [r7, #16]
 8041e4e:	609a      	str	r2, [r3, #8]
 8041e50:	687b      	ldr	r3, [r7, #4]
 8041e52:	685b      	ldr	r3, [r3, #4]
 8041e54:	613b      	str	r3, [r7, #16]
 8041e56:	2201      	movs	r2, #1
 8041e58:	697b      	ldr	r3, [r7, #20]
 8041e5a:	fa02 f303 	lsl.w	r3, r2, r3
 8041e5e:	43db      	mvns	r3, r3
 8041e60:	693a      	ldr	r2, [r7, #16]
 8041e62:	4013      	ands	r3, r2
 8041e64:	613b      	str	r3, [r7, #16]
 8041e66:	683b      	ldr	r3, [r7, #0]
 8041e68:	685b      	ldr	r3, [r3, #4]
 8041e6a:	091b      	lsrs	r3, r3, #4
 8041e6c:	f003 0201 	and.w	r2, r3, #1
 8041e70:	697b      	ldr	r3, [r7, #20]
 8041e72:	fa02 f303 	lsl.w	r3, r2, r3
 8041e76:	693a      	ldr	r2, [r7, #16]
 8041e78:	4313      	orrs	r3, r2
 8041e7a:	613b      	str	r3, [r7, #16]
 8041e7c:	687b      	ldr	r3, [r7, #4]
 8041e7e:	693a      	ldr	r2, [r7, #16]
 8041e80:	605a      	str	r2, [r3, #4]
 8041e82:	683b      	ldr	r3, [r7, #0]
 8041e84:	685b      	ldr	r3, [r3, #4]
 8041e86:	f003 0303 	and.w	r3, r3, #3
 8041e8a:	2b03      	cmp	r3, #3
 8041e8c:	d017      	beq.n	8041ebe <HAL_GPIO_Init+0xde>
 8041e8e:	687b      	ldr	r3, [r7, #4]
 8041e90:	68db      	ldr	r3, [r3, #12]
 8041e92:	613b      	str	r3, [r7, #16]
 8041e94:	697b      	ldr	r3, [r7, #20]
 8041e96:	005b      	lsls	r3, r3, #1
 8041e98:	2203      	movs	r2, #3
 8041e9a:	fa02 f303 	lsl.w	r3, r2, r3
 8041e9e:	43db      	mvns	r3, r3
 8041ea0:	693a      	ldr	r2, [r7, #16]
 8041ea2:	4013      	ands	r3, r2
 8041ea4:	613b      	str	r3, [r7, #16]
 8041ea6:	683b      	ldr	r3, [r7, #0]
 8041ea8:	689a      	ldr	r2, [r3, #8]
 8041eaa:	697b      	ldr	r3, [r7, #20]
 8041eac:	005b      	lsls	r3, r3, #1
 8041eae:	fa02 f303 	lsl.w	r3, r2, r3
 8041eb2:	693a      	ldr	r2, [r7, #16]
 8041eb4:	4313      	orrs	r3, r2
 8041eb6:	613b      	str	r3, [r7, #16]
 8041eb8:	687b      	ldr	r3, [r7, #4]
 8041eba:	693a      	ldr	r2, [r7, #16]
 8041ebc:	60da      	str	r2, [r3, #12]
 8041ebe:	683b      	ldr	r3, [r7, #0]
 8041ec0:	685b      	ldr	r3, [r3, #4]
 8041ec2:	f003 0303 	and.w	r3, r3, #3
 8041ec6:	2b02      	cmp	r3, #2
 8041ec8:	d123      	bne.n	8041f12 <HAL_GPIO_Init+0x132>
 8041eca:	697b      	ldr	r3, [r7, #20]
 8041ecc:	08da      	lsrs	r2, r3, #3
 8041ece:	687b      	ldr	r3, [r7, #4]
 8041ed0:	3208      	adds	r2, #8
 8041ed2:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8041ed6:	613b      	str	r3, [r7, #16]
 8041ed8:	697b      	ldr	r3, [r7, #20]
 8041eda:	f003 0307 	and.w	r3, r3, #7
 8041ede:	009b      	lsls	r3, r3, #2
 8041ee0:	220f      	movs	r2, #15
 8041ee2:	fa02 f303 	lsl.w	r3, r2, r3
 8041ee6:	43db      	mvns	r3, r3
 8041ee8:	693a      	ldr	r2, [r7, #16]
 8041eea:	4013      	ands	r3, r2
 8041eec:	613b      	str	r3, [r7, #16]
 8041eee:	683b      	ldr	r3, [r7, #0]
 8041ef0:	691a      	ldr	r2, [r3, #16]
 8041ef2:	697b      	ldr	r3, [r7, #20]
 8041ef4:	f003 0307 	and.w	r3, r3, #7
 8041ef8:	009b      	lsls	r3, r3, #2
 8041efa:	fa02 f303 	lsl.w	r3, r2, r3
 8041efe:	693a      	ldr	r2, [r7, #16]
 8041f00:	4313      	orrs	r3, r2
 8041f02:	613b      	str	r3, [r7, #16]
 8041f04:	697b      	ldr	r3, [r7, #20]
 8041f06:	08da      	lsrs	r2, r3, #3
 8041f08:	687b      	ldr	r3, [r7, #4]
 8041f0a:	3208      	adds	r2, #8
 8041f0c:	6939      	ldr	r1, [r7, #16]
 8041f0e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8041f12:	687b      	ldr	r3, [r7, #4]
 8041f14:	681b      	ldr	r3, [r3, #0]
 8041f16:	613b      	str	r3, [r7, #16]
 8041f18:	697b      	ldr	r3, [r7, #20]
 8041f1a:	005b      	lsls	r3, r3, #1
 8041f1c:	2203      	movs	r2, #3
 8041f1e:	fa02 f303 	lsl.w	r3, r2, r3
 8041f22:	43db      	mvns	r3, r3
 8041f24:	693a      	ldr	r2, [r7, #16]
 8041f26:	4013      	ands	r3, r2
 8041f28:	613b      	str	r3, [r7, #16]
 8041f2a:	683b      	ldr	r3, [r7, #0]
 8041f2c:	685b      	ldr	r3, [r3, #4]
 8041f2e:	f003 0203 	and.w	r2, r3, #3
 8041f32:	697b      	ldr	r3, [r7, #20]
 8041f34:	005b      	lsls	r3, r3, #1
 8041f36:	fa02 f303 	lsl.w	r3, r2, r3
 8041f3a:	693a      	ldr	r2, [r7, #16]
 8041f3c:	4313      	orrs	r3, r2
 8041f3e:	613b      	str	r3, [r7, #16]
 8041f40:	687b      	ldr	r3, [r7, #4]
 8041f42:	693a      	ldr	r2, [r7, #16]
 8041f44:	601a      	str	r2, [r3, #0]
 8041f46:	683b      	ldr	r3, [r7, #0]
 8041f48:	685b      	ldr	r3, [r3, #4]
 8041f4a:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 8041f4e:	2b00      	cmp	r3, #0
 8041f50:	f000 80a4 	beq.w	804209c <HAL_GPIO_Init+0x2bc>
 8041f54:	4a5a      	ldr	r2, [pc, #360]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8041f56:	697b      	ldr	r3, [r7, #20]
 8041f58:	089b      	lsrs	r3, r3, #2
 8041f5a:	3318      	adds	r3, #24
 8041f5c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8041f60:	613b      	str	r3, [r7, #16]
 8041f62:	697b      	ldr	r3, [r7, #20]
 8041f64:	f003 0303 	and.w	r3, r3, #3
 8041f68:	00db      	lsls	r3, r3, #3
 8041f6a:	220f      	movs	r2, #15
 8041f6c:	fa02 f303 	lsl.w	r3, r2, r3
 8041f70:	43db      	mvns	r3, r3
 8041f72:	693a      	ldr	r2, [r7, #16]
 8041f74:	4013      	ands	r3, r2
 8041f76:	613b      	str	r3, [r7, #16]
 8041f78:	687b      	ldr	r3, [r7, #4]
 8041f7a:	4a52      	ldr	r2, [pc, #328]	@ (80420c4 <HAL_GPIO_Init+0x2e4>)
 8041f7c:	4293      	cmp	r3, r2
 8041f7e:	d025      	beq.n	8041fcc <HAL_GPIO_Init+0x1ec>
 8041f80:	687b      	ldr	r3, [r7, #4]
 8041f82:	4a51      	ldr	r2, [pc, #324]	@ (80420c8 <HAL_GPIO_Init+0x2e8>)
 8041f84:	4293      	cmp	r3, r2
 8041f86:	d01f      	beq.n	8041fc8 <HAL_GPIO_Init+0x1e8>
 8041f88:	687b      	ldr	r3, [r7, #4]
 8041f8a:	4a50      	ldr	r2, [pc, #320]	@ (80420cc <HAL_GPIO_Init+0x2ec>)
 8041f8c:	4293      	cmp	r3, r2
 8041f8e:	d019      	beq.n	8041fc4 <HAL_GPIO_Init+0x1e4>
 8041f90:	687b      	ldr	r3, [r7, #4]
 8041f92:	4a4f      	ldr	r2, [pc, #316]	@ (80420d0 <HAL_GPIO_Init+0x2f0>)
 8041f94:	4293      	cmp	r3, r2
 8041f96:	d013      	beq.n	8041fc0 <HAL_GPIO_Init+0x1e0>
 8041f98:	687b      	ldr	r3, [r7, #4]
 8041f9a:	4a4e      	ldr	r2, [pc, #312]	@ (80420d4 <HAL_GPIO_Init+0x2f4>)
 8041f9c:	4293      	cmp	r3, r2
 8041f9e:	d00d      	beq.n	8041fbc <HAL_GPIO_Init+0x1dc>
 8041fa0:	687b      	ldr	r3, [r7, #4]
 8041fa2:	4a4d      	ldr	r2, [pc, #308]	@ (80420d8 <HAL_GPIO_Init+0x2f8>)
 8041fa4:	4293      	cmp	r3, r2
 8041fa6:	d007      	beq.n	8041fb8 <HAL_GPIO_Init+0x1d8>
 8041fa8:	687b      	ldr	r3, [r7, #4]
 8041faa:	4a4c      	ldr	r2, [pc, #304]	@ (80420dc <HAL_GPIO_Init+0x2fc>)
 8041fac:	4293      	cmp	r3, r2
 8041fae:	d101      	bne.n	8041fb4 <HAL_GPIO_Init+0x1d4>
 8041fb0:	2306      	movs	r3, #6
 8041fb2:	e00c      	b.n	8041fce <HAL_GPIO_Init+0x1ee>
 8041fb4:	2307      	movs	r3, #7
 8041fb6:	e00a      	b.n	8041fce <HAL_GPIO_Init+0x1ee>
 8041fb8:	2305      	movs	r3, #5
 8041fba:	e008      	b.n	8041fce <HAL_GPIO_Init+0x1ee>
 8041fbc:	2304      	movs	r3, #4
 8041fbe:	e006      	b.n	8041fce <HAL_GPIO_Init+0x1ee>
 8041fc0:	2303      	movs	r3, #3
 8041fc2:	e004      	b.n	8041fce <HAL_GPIO_Init+0x1ee>
 8041fc4:	2302      	movs	r3, #2
 8041fc6:	e002      	b.n	8041fce <HAL_GPIO_Init+0x1ee>
 8041fc8:	2301      	movs	r3, #1
 8041fca:	e000      	b.n	8041fce <HAL_GPIO_Init+0x1ee>
 8041fcc:	2300      	movs	r3, #0
 8041fce:	697a      	ldr	r2, [r7, #20]
 8041fd0:	f002 0203 	and.w	r2, r2, #3
 8041fd4:	00d2      	lsls	r2, r2, #3
 8041fd6:	4093      	lsls	r3, r2
 8041fd8:	693a      	ldr	r2, [r7, #16]
 8041fda:	4313      	orrs	r3, r2
 8041fdc:	613b      	str	r3, [r7, #16]
 8041fde:	4938      	ldr	r1, [pc, #224]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8041fe0:	697b      	ldr	r3, [r7, #20]
 8041fe2:	089b      	lsrs	r3, r3, #2
 8041fe4:	3318      	adds	r3, #24
 8041fe6:	693a      	ldr	r2, [r7, #16]
 8041fe8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8041fec:	4b34      	ldr	r3, [pc, #208]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8041fee:	681b      	ldr	r3, [r3, #0]
 8041ff0:	613b      	str	r3, [r7, #16]
 8041ff2:	68fb      	ldr	r3, [r7, #12]
 8041ff4:	43db      	mvns	r3, r3
 8041ff6:	693a      	ldr	r2, [r7, #16]
 8041ff8:	4013      	ands	r3, r2
 8041ffa:	613b      	str	r3, [r7, #16]
 8041ffc:	683b      	ldr	r3, [r7, #0]
 8041ffe:	685b      	ldr	r3, [r3, #4]
 8042000:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 8042004:	2b00      	cmp	r3, #0
 8042006:	d003      	beq.n	8042010 <HAL_GPIO_Init+0x230>
 8042008:	693a      	ldr	r2, [r7, #16]
 804200a:	68fb      	ldr	r3, [r7, #12]
 804200c:	4313      	orrs	r3, r2
 804200e:	613b      	str	r3, [r7, #16]
 8042010:	4a2b      	ldr	r2, [pc, #172]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8042012:	693b      	ldr	r3, [r7, #16]
 8042014:	6013      	str	r3, [r2, #0]
 8042016:	4b2a      	ldr	r3, [pc, #168]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8042018:	685b      	ldr	r3, [r3, #4]
 804201a:	613b      	str	r3, [r7, #16]
 804201c:	68fb      	ldr	r3, [r7, #12]
 804201e:	43db      	mvns	r3, r3
 8042020:	693a      	ldr	r2, [r7, #16]
 8042022:	4013      	ands	r3, r2
 8042024:	613b      	str	r3, [r7, #16]
 8042026:	683b      	ldr	r3, [r7, #0]
 8042028:	685b      	ldr	r3, [r3, #4]
 804202a:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 804202e:	2b00      	cmp	r3, #0
 8042030:	d003      	beq.n	804203a <HAL_GPIO_Init+0x25a>
 8042032:	693a      	ldr	r2, [r7, #16]
 8042034:	68fb      	ldr	r3, [r7, #12]
 8042036:	4313      	orrs	r3, r2
 8042038:	613b      	str	r3, [r7, #16]
 804203a:	4a21      	ldr	r2, [pc, #132]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 804203c:	693b      	ldr	r3, [r7, #16]
 804203e:	6053      	str	r3, [r2, #4]
 8042040:	4b1f      	ldr	r3, [pc, #124]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8042042:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 8042046:	613b      	str	r3, [r7, #16]
 8042048:	68fb      	ldr	r3, [r7, #12]
 804204a:	43db      	mvns	r3, r3
 804204c:	693a      	ldr	r2, [r7, #16]
 804204e:	4013      	ands	r3, r2
 8042050:	613b      	str	r3, [r7, #16]
 8042052:	683b      	ldr	r3, [r7, #0]
 8042054:	685b      	ldr	r3, [r3, #4]
 8042056:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 804205a:	2b00      	cmp	r3, #0
 804205c:	d003      	beq.n	8042066 <HAL_GPIO_Init+0x286>
 804205e:	693a      	ldr	r2, [r7, #16]
 8042060:	68fb      	ldr	r3, [r7, #12]
 8042062:	4313      	orrs	r3, r2
 8042064:	613b      	str	r3, [r7, #16]
 8042066:	4a16      	ldr	r2, [pc, #88]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8042068:	693b      	ldr	r3, [r7, #16]
 804206a:	f8c2 3084 	str.w	r3, [r2, #132]	@ 0x84
 804206e:	4b14      	ldr	r3, [pc, #80]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8042070:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 8042074:	613b      	str	r3, [r7, #16]
 8042076:	68fb      	ldr	r3, [r7, #12]
 8042078:	43db      	mvns	r3, r3
 804207a:	693a      	ldr	r2, [r7, #16]
 804207c:	4013      	ands	r3, r2
 804207e:	613b      	str	r3, [r7, #16]
 8042080:	683b      	ldr	r3, [r7, #0]
 8042082:	685b      	ldr	r3, [r3, #4]
 8042084:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 8042088:	2b00      	cmp	r3, #0
 804208a:	d003      	beq.n	8042094 <HAL_GPIO_Init+0x2b4>
 804208c:	693a      	ldr	r2, [r7, #16]
 804208e:	68fb      	ldr	r3, [r7, #12]
 8042090:	4313      	orrs	r3, r2
 8042092:	613b      	str	r3, [r7, #16]
 8042094:	4a0a      	ldr	r2, [pc, #40]	@ (80420c0 <HAL_GPIO_Init+0x2e0>)
 8042096:	693b      	ldr	r3, [r7, #16]
 8042098:	f8c2 3080 	str.w	r3, [r2, #128]	@ 0x80
 804209c:	697b      	ldr	r3, [r7, #20]
 804209e:	3301      	adds	r3, #1
 80420a0:	617b      	str	r3, [r7, #20]
 80420a2:	683b      	ldr	r3, [r7, #0]
 80420a4:	681a      	ldr	r2, [r3, #0]
 80420a6:	697b      	ldr	r3, [r7, #20]
 80420a8:	fa22 f303 	lsr.w	r3, r2, r3
 80420ac:	2b00      	cmp	r3, #0
 80420ae:	f47f ae9f 	bne.w	8041df0 <HAL_GPIO_Init+0x10>
 80420b2:	bf00      	nop
 80420b4:	bf00      	nop
 80420b6:	371c      	adds	r7, #28
 80420b8:	46bd      	mov	sp, r7
 80420ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80420be:	4770      	bx	lr
 80420c0:	4002f400 	.word	0x4002f400
 80420c4:	42020000 	.word	0x42020000
 80420c8:	42020400 	.word	0x42020400
 80420cc:	42020800 	.word	0x42020800
 80420d0:	42020c00 	.word	0x42020c00
 80420d4:	42021000 	.word	0x42021000
 80420d8:	42021400 	.word	0x42021400
 80420dc:	42021800 	.word	0x42021800

080420e0 <HAL_PWREx_GetVoltageRange>:
 80420e0:	b480      	push	{r7}
 80420e2:	af00      	add	r7, sp, #0
 80420e4:	4b04      	ldr	r3, [pc, #16]	@ (80420f8 <HAL_PWREx_GetVoltageRange+0x18>)
 80420e6:	681b      	ldr	r3, [r3, #0]
 80420e8:	f403 63c0 	and.w	r3, r3, #1536	@ 0x600
 80420ec:	4618      	mov	r0, r3
 80420ee:	46bd      	mov	sp, r7
 80420f0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80420f4:	4770      	bx	lr
 80420f6:	bf00      	nop
 80420f8:	40007000 	.word	0x40007000

080420fc <HAL_PWREx_ControlVoltageScaling>:
 80420fc:	b580      	push	{r7, lr}
 80420fe:	b084      	sub	sp, #16
 8042100:	af00      	add	r7, sp, #0
 8042102:	6078      	str	r0, [r7, #4]
 8042104:	4b27      	ldr	r3, [pc, #156]	@ (80421a4 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8042106:	681b      	ldr	r3, [r3, #0]
 8042108:	f403 63c0 	and.w	r3, r3, #1536	@ 0x600
 804210c:	60bb      	str	r3, [r7, #8]
 804210e:	f000 f861 	bl	80421d4 <HAL_PWREx_SMPS_GetEffectiveMode>
 8042112:	4603      	mov	r3, r0
 8042114:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8042118:	d101      	bne.n	804211e <HAL_PWREx_ControlVoltageScaling+0x22>
 804211a:	2301      	movs	r3, #1
 804211c:	e03e      	b.n	804219c <HAL_PWREx_ControlVoltageScaling+0xa0>
 804211e:	4b21      	ldr	r3, [pc, #132]	@ (80421a4 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8042120:	68db      	ldr	r3, [r3, #12]
 8042122:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 8042126:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 804212a:	d101      	bne.n	8042130 <HAL_PWREx_ControlVoltageScaling+0x34>
 804212c:	2301      	movs	r3, #1
 804212e:	e035      	b.n	804219c <HAL_PWREx_ControlVoltageScaling+0xa0>
 8042130:	68ba      	ldr	r2, [r7, #8]
 8042132:	687b      	ldr	r3, [r7, #4]
 8042134:	429a      	cmp	r2, r3
 8042136:	d101      	bne.n	804213c <HAL_PWREx_ControlVoltageScaling+0x40>
 8042138:	2300      	movs	r3, #0
 804213a:	e02f      	b.n	804219c <HAL_PWREx_ControlVoltageScaling+0xa0>
 804213c:	4b19      	ldr	r3, [pc, #100]	@ (80421a4 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 804213e:	681b      	ldr	r3, [r3, #0]
 8042140:	f423 62c0 	bic.w	r2, r3, #1536	@ 0x600
 8042144:	4917      	ldr	r1, [pc, #92]	@ (80421a4 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8042146:	687b      	ldr	r3, [r7, #4]
 8042148:	4313      	orrs	r3, r2
 804214a:	600b      	str	r3, [r1, #0]
 804214c:	4b16      	ldr	r3, [pc, #88]	@ (80421a8 <HAL_PWREx_ControlVoltageScaling+0xac>)
 804214e:	681b      	ldr	r3, [r3, #0]
 8042150:	095b      	lsrs	r3, r3, #5
 8042152:	4a16      	ldr	r2, [pc, #88]	@ (80421ac <HAL_PWREx_ControlVoltageScaling+0xb0>)
 8042154:	fba2 2303 	umull	r2, r3, r2, r3
 8042158:	09db      	lsrs	r3, r3, #7
 804215a:	2232      	movs	r2, #50	@ 0x32
 804215c:	fb02 f303 	mul.w	r3, r2, r3
 8042160:	4a13      	ldr	r2, [pc, #76]	@ (80421b0 <HAL_PWREx_ControlVoltageScaling+0xb4>)
 8042162:	fba2 2303 	umull	r2, r3, r2, r3
 8042166:	08db      	lsrs	r3, r3, #3
 8042168:	3301      	adds	r3, #1
 804216a:	60fb      	str	r3, [r7, #12]
 804216c:	e002      	b.n	8042174 <HAL_PWREx_ControlVoltageScaling+0x78>
 804216e:	68fb      	ldr	r3, [r7, #12]
 8042170:	3b01      	subs	r3, #1
 8042172:	60fb      	str	r3, [r7, #12]
 8042174:	4b0b      	ldr	r3, [pc, #44]	@ (80421a4 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8042176:	695b      	ldr	r3, [r3, #20]
 8042178:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 804217c:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8042180:	d102      	bne.n	8042188 <HAL_PWREx_ControlVoltageScaling+0x8c>
 8042182:	68fb      	ldr	r3, [r7, #12]
 8042184:	2b00      	cmp	r3, #0
 8042186:	d1f2      	bne.n	804216e <HAL_PWREx_ControlVoltageScaling+0x72>
 8042188:	4b06      	ldr	r3, [pc, #24]	@ (80421a4 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 804218a:	695b      	ldr	r3, [r3, #20]
 804218c:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8042190:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8042194:	d101      	bne.n	804219a <HAL_PWREx_ControlVoltageScaling+0x9e>
 8042196:	2303      	movs	r3, #3
 8042198:	e000      	b.n	804219c <HAL_PWREx_ControlVoltageScaling+0xa0>
 804219a:	2300      	movs	r3, #0
 804219c:	4618      	mov	r0, r3
 804219e:	3710      	adds	r7, #16
 80421a0:	46bd      	mov	sp, r7
 80421a2:	bd80      	pop	{r7, pc}
 80421a4:	40007000 	.word	0x40007000
 80421a8:	20018020 	.word	0x20018020
 80421ac:	0a7c5ac5 	.word	0x0a7c5ac5
 80421b0:	cccccccd 	.word	0xcccccccd

080421b4 <HAL_PWREx_EnableVddIO2>:
 80421b4:	b480      	push	{r7}
 80421b6:	af00      	add	r7, sp, #0
 80421b8:	4b05      	ldr	r3, [pc, #20]	@ (80421d0 <HAL_PWREx_EnableVddIO2+0x1c>)
 80421ba:	685b      	ldr	r3, [r3, #4]
 80421bc:	4a04      	ldr	r2, [pc, #16]	@ (80421d0 <HAL_PWREx_EnableVddIO2+0x1c>)
 80421be:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 80421c2:	6053      	str	r3, [r2, #4]
 80421c4:	bf00      	nop
 80421c6:	46bd      	mov	sp, r7
 80421c8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80421cc:	4770      	bx	lr
 80421ce:	bf00      	nop
 80421d0:	40007000 	.word	0x40007000

080421d4 <HAL_PWREx_SMPS_GetEffectiveMode>:
 80421d4:	b480      	push	{r7}
 80421d6:	b083      	sub	sp, #12
 80421d8:	af00      	add	r7, sp, #0
 80421da:	4b0f      	ldr	r3, [pc, #60]	@ (8042218 <HAL_PWREx_SMPS_GetEffectiveMode+0x44>)
 80421dc:	691b      	ldr	r3, [r3, #16]
 80421de:	603b      	str	r3, [r7, #0]
 80421e0:	683b      	ldr	r3, [r7, #0]
 80421e2:	f403 5380 	and.w	r3, r3, #4096	@ 0x1000
 80421e6:	2b00      	cmp	r3, #0
 80421e8:	d003      	beq.n	80421f2 <HAL_PWREx_SMPS_GetEffectiveMode+0x1e>
 80421ea:	f44f 5380 	mov.w	r3, #4096	@ 0x1000
 80421ee:	607b      	str	r3, [r7, #4]
 80421f0:	e00a      	b.n	8042208 <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
 80421f2:	683b      	ldr	r3, [r7, #0]
 80421f4:	f403 4300 	and.w	r3, r3, #32768	@ 0x8000
 80421f8:	2b00      	cmp	r3, #0
 80421fa:	d103      	bne.n	8042204 <HAL_PWREx_SMPS_GetEffectiveMode+0x30>
 80421fc:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8042200:	607b      	str	r3, [r7, #4]
 8042202:	e001      	b.n	8042208 <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
 8042204:	2300      	movs	r3, #0
 8042206:	607b      	str	r3, [r7, #4]
 8042208:	687b      	ldr	r3, [r7, #4]
 804220a:	4618      	mov	r0, r3
 804220c:	370c      	adds	r7, #12
 804220e:	46bd      	mov	sp, r7
 8042210:	f85d 7b04 	ldr.w	r7, [sp], #4
 8042214:	4770      	bx	lr
 8042216:	bf00      	nop
 8042218:	40007000 	.word	0x40007000

0804221c <HAL_RCC_OscConfig>:
 804221c:	b580      	push	{r7, lr}
 804221e:	b088      	sub	sp, #32
 8042220:	af00      	add	r7, sp, #0
 8042222:	6078      	str	r0, [r7, #4]
 8042224:	687b      	ldr	r3, [r7, #4]
 8042226:	2b00      	cmp	r3, #0
 8042228:	d102      	bne.n	8042230 <HAL_RCC_OscConfig+0x14>
 804222a:	2301      	movs	r3, #1
 804222c:	f000 bcc2 	b.w	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042230:	4b99      	ldr	r3, [pc, #612]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042232:	689b      	ldr	r3, [r3, #8]
 8042234:	f003 030c 	and.w	r3, r3, #12
 8042238:	61bb      	str	r3, [r7, #24]
 804223a:	4b97      	ldr	r3, [pc, #604]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 804223c:	68db      	ldr	r3, [r3, #12]
 804223e:	f003 0303 	and.w	r3, r3, #3
 8042242:	617b      	str	r3, [r7, #20]
 8042244:	687b      	ldr	r3, [r7, #4]
 8042246:	681b      	ldr	r3, [r3, #0]
 8042248:	f003 0310 	and.w	r3, r3, #16
 804224c:	2b00      	cmp	r3, #0
 804224e:	f000 80e9 	beq.w	8042424 <HAL_RCC_OscConfig+0x208>
 8042252:	69bb      	ldr	r3, [r7, #24]
 8042254:	2b00      	cmp	r3, #0
 8042256:	d006      	beq.n	8042266 <HAL_RCC_OscConfig+0x4a>
 8042258:	69bb      	ldr	r3, [r7, #24]
 804225a:	2b0c      	cmp	r3, #12
 804225c:	f040 8083 	bne.w	8042366 <HAL_RCC_OscConfig+0x14a>
 8042260:	697b      	ldr	r3, [r7, #20]
 8042262:	2b01      	cmp	r3, #1
 8042264:	d17f      	bne.n	8042366 <HAL_RCC_OscConfig+0x14a>
 8042266:	4b8c      	ldr	r3, [pc, #560]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042268:	681b      	ldr	r3, [r3, #0]
 804226a:	f003 0302 	and.w	r3, r3, #2
 804226e:	2b00      	cmp	r3, #0
 8042270:	d006      	beq.n	8042280 <HAL_RCC_OscConfig+0x64>
 8042272:	687b      	ldr	r3, [r7, #4]
 8042274:	69db      	ldr	r3, [r3, #28]
 8042276:	2b00      	cmp	r3, #0
 8042278:	d102      	bne.n	8042280 <HAL_RCC_OscConfig+0x64>
 804227a:	2301      	movs	r3, #1
 804227c:	f000 bc9a 	b.w	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042280:	687b      	ldr	r3, [r7, #4]
 8042282:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8042284:	4b84      	ldr	r3, [pc, #528]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042286:	681b      	ldr	r3, [r3, #0]
 8042288:	f003 0308 	and.w	r3, r3, #8
 804228c:	2b00      	cmp	r3, #0
 804228e:	d004      	beq.n	804229a <HAL_RCC_OscConfig+0x7e>
 8042290:	4b81      	ldr	r3, [pc, #516]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042292:	681b      	ldr	r3, [r3, #0]
 8042294:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8042298:	e005      	b.n	80422a6 <HAL_RCC_OscConfig+0x8a>
 804229a:	4b7f      	ldr	r3, [pc, #508]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 804229c:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 80422a0:	091b      	lsrs	r3, r3, #4
 80422a2:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 80422a6:	4293      	cmp	r3, r2
 80422a8:	d224      	bcs.n	80422f4 <HAL_RCC_OscConfig+0xd8>
 80422aa:	687b      	ldr	r3, [r7, #4]
 80422ac:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80422ae:	4618      	mov	r0, r3
 80422b0:	f000 fe9c 	bl	8042fec <RCC_SetFlashLatencyFromMSIRange>
 80422b4:	4603      	mov	r3, r0
 80422b6:	2b00      	cmp	r3, #0
 80422b8:	d002      	beq.n	80422c0 <HAL_RCC_OscConfig+0xa4>
 80422ba:	2301      	movs	r3, #1
 80422bc:	f000 bc7a 	b.w	8042bb4 <HAL_RCC_OscConfig+0x998>
 80422c0:	4b75      	ldr	r3, [pc, #468]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422c2:	681b      	ldr	r3, [r3, #0]
 80422c4:	4a74      	ldr	r2, [pc, #464]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422c6:	f043 0308 	orr.w	r3, r3, #8
 80422ca:	6013      	str	r3, [r2, #0]
 80422cc:	4b72      	ldr	r3, [pc, #456]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422ce:	681b      	ldr	r3, [r3, #0]
 80422d0:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 80422d4:	687b      	ldr	r3, [r7, #4]
 80422d6:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80422d8:	496f      	ldr	r1, [pc, #444]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422da:	4313      	orrs	r3, r2
 80422dc:	600b      	str	r3, [r1, #0]
 80422de:	4b6e      	ldr	r3, [pc, #440]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422e0:	685b      	ldr	r3, [r3, #4]
 80422e2:	f423 427f 	bic.w	r2, r3, #65280	@ 0xff00
 80422e6:	687b      	ldr	r3, [r7, #4]
 80422e8:	6a1b      	ldr	r3, [r3, #32]
 80422ea:	021b      	lsls	r3, r3, #8
 80422ec:	496a      	ldr	r1, [pc, #424]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422ee:	4313      	orrs	r3, r2
 80422f0:	604b      	str	r3, [r1, #4]
 80422f2:	e026      	b.n	8042342 <HAL_RCC_OscConfig+0x126>
 80422f4:	4b68      	ldr	r3, [pc, #416]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422f6:	681b      	ldr	r3, [r3, #0]
 80422f8:	4a67      	ldr	r2, [pc, #412]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80422fa:	f043 0308 	orr.w	r3, r3, #8
 80422fe:	6013      	str	r3, [r2, #0]
 8042300:	4b65      	ldr	r3, [pc, #404]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042302:	681b      	ldr	r3, [r3, #0]
 8042304:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8042308:	687b      	ldr	r3, [r7, #4]
 804230a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 804230c:	4962      	ldr	r1, [pc, #392]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 804230e:	4313      	orrs	r3, r2
 8042310:	600b      	str	r3, [r1, #0]
 8042312:	4b61      	ldr	r3, [pc, #388]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042314:	685b      	ldr	r3, [r3, #4]
 8042316:	f423 427f 	bic.w	r2, r3, #65280	@ 0xff00
 804231a:	687b      	ldr	r3, [r7, #4]
 804231c:	6a1b      	ldr	r3, [r3, #32]
 804231e:	021b      	lsls	r3, r3, #8
 8042320:	495d      	ldr	r1, [pc, #372]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042322:	4313      	orrs	r3, r2
 8042324:	604b      	str	r3, [r1, #4]
 8042326:	69bb      	ldr	r3, [r7, #24]
 8042328:	2b00      	cmp	r3, #0
 804232a:	d10a      	bne.n	8042342 <HAL_RCC_OscConfig+0x126>
 804232c:	687b      	ldr	r3, [r7, #4]
 804232e:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8042330:	4618      	mov	r0, r3
 8042332:	f000 fe5b 	bl	8042fec <RCC_SetFlashLatencyFromMSIRange>
 8042336:	4603      	mov	r3, r0
 8042338:	2b00      	cmp	r3, #0
 804233a:	d002      	beq.n	8042342 <HAL_RCC_OscConfig+0x126>
 804233c:	2301      	movs	r3, #1
 804233e:	f000 bc39 	b.w	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042342:	f000 fe17 	bl	8042f74 <HAL_RCC_GetHCLKFreq>
 8042346:	4603      	mov	r3, r0
 8042348:	4a54      	ldr	r2, [pc, #336]	@ (804249c <HAL_RCC_OscConfig+0x280>)
 804234a:	6013      	str	r3, [r2, #0]
 804234c:	4b54      	ldr	r3, [pc, #336]	@ (80424a0 <HAL_RCC_OscConfig+0x284>)
 804234e:	681b      	ldr	r3, [r3, #0]
 8042350:	4618      	mov	r0, r3
 8042352:	f7ff f8c1 	bl	80414d8 <HAL_InitTick>
 8042356:	4603      	mov	r3, r0
 8042358:	73fb      	strb	r3, [r7, #15]
 804235a:	7bfb      	ldrb	r3, [r7, #15]
 804235c:	2b00      	cmp	r3, #0
 804235e:	d060      	beq.n	8042422 <HAL_RCC_OscConfig+0x206>
 8042360:	7bfb      	ldrb	r3, [r7, #15]
 8042362:	f000 bc27 	b.w	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042366:	687b      	ldr	r3, [r7, #4]
 8042368:	69db      	ldr	r3, [r3, #28]
 804236a:	2b00      	cmp	r3, #0
 804236c:	d039      	beq.n	80423e2 <HAL_RCC_OscConfig+0x1c6>
 804236e:	4b4a      	ldr	r3, [pc, #296]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042370:	681b      	ldr	r3, [r3, #0]
 8042372:	4a49      	ldr	r2, [pc, #292]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042374:	f043 0301 	orr.w	r3, r3, #1
 8042378:	6013      	str	r3, [r2, #0]
 804237a:	f7ff f8fd 	bl	8041578 <HAL_GetTick>
 804237e:	6138      	str	r0, [r7, #16]
 8042380:	e00f      	b.n	80423a2 <HAL_RCC_OscConfig+0x186>
 8042382:	f7ff f8f9 	bl	8041578 <HAL_GetTick>
 8042386:	4602      	mov	r2, r0
 8042388:	693b      	ldr	r3, [r7, #16]
 804238a:	1ad3      	subs	r3, r2, r3
 804238c:	2b02      	cmp	r3, #2
 804238e:	d908      	bls.n	80423a2 <HAL_RCC_OscConfig+0x186>
 8042390:	4b41      	ldr	r3, [pc, #260]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042392:	681b      	ldr	r3, [r3, #0]
 8042394:	f003 0302 	and.w	r3, r3, #2
 8042398:	2b00      	cmp	r3, #0
 804239a:	d102      	bne.n	80423a2 <HAL_RCC_OscConfig+0x186>
 804239c:	2303      	movs	r3, #3
 804239e:	f000 bc09 	b.w	8042bb4 <HAL_RCC_OscConfig+0x998>
 80423a2:	4b3d      	ldr	r3, [pc, #244]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423a4:	681b      	ldr	r3, [r3, #0]
 80423a6:	f003 0302 	and.w	r3, r3, #2
 80423aa:	2b00      	cmp	r3, #0
 80423ac:	d0e9      	beq.n	8042382 <HAL_RCC_OscConfig+0x166>
 80423ae:	4b3a      	ldr	r3, [pc, #232]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423b0:	681b      	ldr	r3, [r3, #0]
 80423b2:	4a39      	ldr	r2, [pc, #228]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423b4:	f043 0308 	orr.w	r3, r3, #8
 80423b8:	6013      	str	r3, [r2, #0]
 80423ba:	4b37      	ldr	r3, [pc, #220]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423bc:	681b      	ldr	r3, [r3, #0]
 80423be:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 80423c2:	687b      	ldr	r3, [r7, #4]
 80423c4:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80423c6:	4934      	ldr	r1, [pc, #208]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423c8:	4313      	orrs	r3, r2
 80423ca:	600b      	str	r3, [r1, #0]
 80423cc:	4b32      	ldr	r3, [pc, #200]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423ce:	685b      	ldr	r3, [r3, #4]
 80423d0:	f423 427f 	bic.w	r2, r3, #65280	@ 0xff00
 80423d4:	687b      	ldr	r3, [r7, #4]
 80423d6:	6a1b      	ldr	r3, [r3, #32]
 80423d8:	021b      	lsls	r3, r3, #8
 80423da:	492f      	ldr	r1, [pc, #188]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423dc:	4313      	orrs	r3, r2
 80423de:	604b      	str	r3, [r1, #4]
 80423e0:	e020      	b.n	8042424 <HAL_RCC_OscConfig+0x208>
 80423e2:	4b2d      	ldr	r3, [pc, #180]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423e4:	681b      	ldr	r3, [r3, #0]
 80423e6:	4a2c      	ldr	r2, [pc, #176]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 80423e8:	f023 0301 	bic.w	r3, r3, #1
 80423ec:	6013      	str	r3, [r2, #0]
 80423ee:	f7ff f8c3 	bl	8041578 <HAL_GetTick>
 80423f2:	6138      	str	r0, [r7, #16]
 80423f4:	e00e      	b.n	8042414 <HAL_RCC_OscConfig+0x1f8>
 80423f6:	f7ff f8bf 	bl	8041578 <HAL_GetTick>
 80423fa:	4602      	mov	r2, r0
 80423fc:	693b      	ldr	r3, [r7, #16]
 80423fe:	1ad3      	subs	r3, r2, r3
 8042400:	2b02      	cmp	r3, #2
 8042402:	d907      	bls.n	8042414 <HAL_RCC_OscConfig+0x1f8>
 8042404:	4b24      	ldr	r3, [pc, #144]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042406:	681b      	ldr	r3, [r3, #0]
 8042408:	f003 0302 	and.w	r3, r3, #2
 804240c:	2b00      	cmp	r3, #0
 804240e:	d001      	beq.n	8042414 <HAL_RCC_OscConfig+0x1f8>
 8042410:	2303      	movs	r3, #3
 8042412:	e3cf      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042414:	4b20      	ldr	r3, [pc, #128]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042416:	681b      	ldr	r3, [r3, #0]
 8042418:	f003 0302 	and.w	r3, r3, #2
 804241c:	2b00      	cmp	r3, #0
 804241e:	d1ea      	bne.n	80423f6 <HAL_RCC_OscConfig+0x1da>
 8042420:	e000      	b.n	8042424 <HAL_RCC_OscConfig+0x208>
 8042422:	bf00      	nop
 8042424:	687b      	ldr	r3, [r7, #4]
 8042426:	681b      	ldr	r3, [r3, #0]
 8042428:	f003 0301 	and.w	r3, r3, #1
 804242c:	2b00      	cmp	r3, #0
 804242e:	d07e      	beq.n	804252e <HAL_RCC_OscConfig+0x312>
 8042430:	69bb      	ldr	r3, [r7, #24]
 8042432:	2b08      	cmp	r3, #8
 8042434:	d005      	beq.n	8042442 <HAL_RCC_OscConfig+0x226>
 8042436:	69bb      	ldr	r3, [r7, #24]
 8042438:	2b0c      	cmp	r3, #12
 804243a:	d10e      	bne.n	804245a <HAL_RCC_OscConfig+0x23e>
 804243c:	697b      	ldr	r3, [r7, #20]
 804243e:	2b03      	cmp	r3, #3
 8042440:	d10b      	bne.n	804245a <HAL_RCC_OscConfig+0x23e>
 8042442:	4b15      	ldr	r3, [pc, #84]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042444:	681b      	ldr	r3, [r3, #0]
 8042446:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 804244a:	2b00      	cmp	r3, #0
 804244c:	d06e      	beq.n	804252c <HAL_RCC_OscConfig+0x310>
 804244e:	687b      	ldr	r3, [r7, #4]
 8042450:	685b      	ldr	r3, [r3, #4]
 8042452:	2b00      	cmp	r3, #0
 8042454:	d16a      	bne.n	804252c <HAL_RCC_OscConfig+0x310>
 8042456:	2301      	movs	r3, #1
 8042458:	e3ac      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 804245a:	687b      	ldr	r3, [r7, #4]
 804245c:	685b      	ldr	r3, [r3, #4]
 804245e:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8042462:	d106      	bne.n	8042472 <HAL_RCC_OscConfig+0x256>
 8042464:	4b0c      	ldr	r3, [pc, #48]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042466:	681b      	ldr	r3, [r3, #0]
 8042468:	4a0b      	ldr	r2, [pc, #44]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 804246a:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 804246e:	6013      	str	r3, [r2, #0]
 8042470:	e024      	b.n	80424bc <HAL_RCC_OscConfig+0x2a0>
 8042472:	687b      	ldr	r3, [r7, #4]
 8042474:	685b      	ldr	r3, [r3, #4]
 8042476:	f5b3 2fa0 	cmp.w	r3, #327680	@ 0x50000
 804247a:	d113      	bne.n	80424a4 <HAL_RCC_OscConfig+0x288>
 804247c:	4b06      	ldr	r3, [pc, #24]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 804247e:	681b      	ldr	r3, [r3, #0]
 8042480:	4a05      	ldr	r2, [pc, #20]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 8042482:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 8042486:	6013      	str	r3, [r2, #0]
 8042488:	4b03      	ldr	r3, [pc, #12]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 804248a:	681b      	ldr	r3, [r3, #0]
 804248c:	4a02      	ldr	r2, [pc, #8]	@ (8042498 <HAL_RCC_OscConfig+0x27c>)
 804248e:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8042492:	6013      	str	r3, [r2, #0]
 8042494:	e012      	b.n	80424bc <HAL_RCC_OscConfig+0x2a0>
 8042496:	bf00      	nop
 8042498:	40021000 	.word	0x40021000
 804249c:	20018020 	.word	0x20018020
 80424a0:	20018024 	.word	0x20018024
 80424a4:	4b8b      	ldr	r3, [pc, #556]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80424a6:	681b      	ldr	r3, [r3, #0]
 80424a8:	4a8a      	ldr	r2, [pc, #552]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80424aa:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 80424ae:	6013      	str	r3, [r2, #0]
 80424b0:	4b88      	ldr	r3, [pc, #544]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80424b2:	681b      	ldr	r3, [r3, #0]
 80424b4:	4a87      	ldr	r2, [pc, #540]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80424b6:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 80424ba:	6013      	str	r3, [r2, #0]
 80424bc:	687b      	ldr	r3, [r7, #4]
 80424be:	685b      	ldr	r3, [r3, #4]
 80424c0:	2b00      	cmp	r3, #0
 80424c2:	d019      	beq.n	80424f8 <HAL_RCC_OscConfig+0x2dc>
 80424c4:	f7ff f858 	bl	8041578 <HAL_GetTick>
 80424c8:	6138      	str	r0, [r7, #16]
 80424ca:	e00e      	b.n	80424ea <HAL_RCC_OscConfig+0x2ce>
 80424cc:	f7ff f854 	bl	8041578 <HAL_GetTick>
 80424d0:	4602      	mov	r2, r0
 80424d2:	693b      	ldr	r3, [r7, #16]
 80424d4:	1ad3      	subs	r3, r2, r3
 80424d6:	2b64      	cmp	r3, #100	@ 0x64
 80424d8:	d907      	bls.n	80424ea <HAL_RCC_OscConfig+0x2ce>
 80424da:	4b7e      	ldr	r3, [pc, #504]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80424dc:	681b      	ldr	r3, [r3, #0]
 80424de:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80424e2:	2b00      	cmp	r3, #0
 80424e4:	d101      	bne.n	80424ea <HAL_RCC_OscConfig+0x2ce>
 80424e6:	2303      	movs	r3, #3
 80424e8:	e364      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 80424ea:	4b7a      	ldr	r3, [pc, #488]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80424ec:	681b      	ldr	r3, [r3, #0]
 80424ee:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80424f2:	2b00      	cmp	r3, #0
 80424f4:	d0ea      	beq.n	80424cc <HAL_RCC_OscConfig+0x2b0>
 80424f6:	e01a      	b.n	804252e <HAL_RCC_OscConfig+0x312>
 80424f8:	f7ff f83e 	bl	8041578 <HAL_GetTick>
 80424fc:	6138      	str	r0, [r7, #16]
 80424fe:	e00e      	b.n	804251e <HAL_RCC_OscConfig+0x302>
 8042500:	f7ff f83a 	bl	8041578 <HAL_GetTick>
 8042504:	4602      	mov	r2, r0
 8042506:	693b      	ldr	r3, [r7, #16]
 8042508:	1ad3      	subs	r3, r2, r3
 804250a:	2b64      	cmp	r3, #100	@ 0x64
 804250c:	d907      	bls.n	804251e <HAL_RCC_OscConfig+0x302>
 804250e:	4b71      	ldr	r3, [pc, #452]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042510:	681b      	ldr	r3, [r3, #0]
 8042512:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8042516:	2b00      	cmp	r3, #0
 8042518:	d001      	beq.n	804251e <HAL_RCC_OscConfig+0x302>
 804251a:	2303      	movs	r3, #3
 804251c:	e34a      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 804251e:	4b6d      	ldr	r3, [pc, #436]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042520:	681b      	ldr	r3, [r3, #0]
 8042522:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8042526:	2b00      	cmp	r3, #0
 8042528:	d1ea      	bne.n	8042500 <HAL_RCC_OscConfig+0x2e4>
 804252a:	e000      	b.n	804252e <HAL_RCC_OscConfig+0x312>
 804252c:	bf00      	nop
 804252e:	687b      	ldr	r3, [r7, #4]
 8042530:	681b      	ldr	r3, [r3, #0]
 8042532:	f003 0302 	and.w	r3, r3, #2
 8042536:	2b00      	cmp	r3, #0
 8042538:	d06c      	beq.n	8042614 <HAL_RCC_OscConfig+0x3f8>
 804253a:	69bb      	ldr	r3, [r7, #24]
 804253c:	2b04      	cmp	r3, #4
 804253e:	d005      	beq.n	804254c <HAL_RCC_OscConfig+0x330>
 8042540:	69bb      	ldr	r3, [r7, #24]
 8042542:	2b0c      	cmp	r3, #12
 8042544:	d119      	bne.n	804257a <HAL_RCC_OscConfig+0x35e>
 8042546:	697b      	ldr	r3, [r7, #20]
 8042548:	2b02      	cmp	r3, #2
 804254a:	d116      	bne.n	804257a <HAL_RCC_OscConfig+0x35e>
 804254c:	4b61      	ldr	r3, [pc, #388]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 804254e:	681b      	ldr	r3, [r3, #0]
 8042550:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8042554:	2b00      	cmp	r3, #0
 8042556:	d005      	beq.n	8042564 <HAL_RCC_OscConfig+0x348>
 8042558:	687b      	ldr	r3, [r7, #4]
 804255a:	68db      	ldr	r3, [r3, #12]
 804255c:	2b00      	cmp	r3, #0
 804255e:	d101      	bne.n	8042564 <HAL_RCC_OscConfig+0x348>
 8042560:	2301      	movs	r3, #1
 8042562:	e327      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042564:	4b5b      	ldr	r3, [pc, #364]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042566:	685b      	ldr	r3, [r3, #4]
 8042568:	f023 42fe 	bic.w	r2, r3, #2130706432	@ 0x7f000000
 804256c:	687b      	ldr	r3, [r7, #4]
 804256e:	691b      	ldr	r3, [r3, #16]
 8042570:	061b      	lsls	r3, r3, #24
 8042572:	4958      	ldr	r1, [pc, #352]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042574:	4313      	orrs	r3, r2
 8042576:	604b      	str	r3, [r1, #4]
 8042578:	e04c      	b.n	8042614 <HAL_RCC_OscConfig+0x3f8>
 804257a:	687b      	ldr	r3, [r7, #4]
 804257c:	68db      	ldr	r3, [r3, #12]
 804257e:	2b00      	cmp	r3, #0
 8042580:	d029      	beq.n	80425d6 <HAL_RCC_OscConfig+0x3ba>
 8042582:	4b54      	ldr	r3, [pc, #336]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042584:	681b      	ldr	r3, [r3, #0]
 8042586:	4a53      	ldr	r2, [pc, #332]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042588:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 804258c:	6013      	str	r3, [r2, #0]
 804258e:	f7fe fff3 	bl	8041578 <HAL_GetTick>
 8042592:	6138      	str	r0, [r7, #16]
 8042594:	e00e      	b.n	80425b4 <HAL_RCC_OscConfig+0x398>
 8042596:	f7fe ffef 	bl	8041578 <HAL_GetTick>
 804259a:	4602      	mov	r2, r0
 804259c:	693b      	ldr	r3, [r7, #16]
 804259e:	1ad3      	subs	r3, r2, r3
 80425a0:	2b02      	cmp	r3, #2
 80425a2:	d907      	bls.n	80425b4 <HAL_RCC_OscConfig+0x398>
 80425a4:	4b4b      	ldr	r3, [pc, #300]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80425a6:	681b      	ldr	r3, [r3, #0]
 80425a8:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 80425ac:	2b00      	cmp	r3, #0
 80425ae:	d101      	bne.n	80425b4 <HAL_RCC_OscConfig+0x398>
 80425b0:	2303      	movs	r3, #3
 80425b2:	e2ff      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 80425b4:	4b47      	ldr	r3, [pc, #284]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80425b6:	681b      	ldr	r3, [r3, #0]
 80425b8:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 80425bc:	2b00      	cmp	r3, #0
 80425be:	d0ea      	beq.n	8042596 <HAL_RCC_OscConfig+0x37a>
 80425c0:	4b44      	ldr	r3, [pc, #272]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80425c2:	685b      	ldr	r3, [r3, #4]
 80425c4:	f023 42fe 	bic.w	r2, r3, #2130706432	@ 0x7f000000
 80425c8:	687b      	ldr	r3, [r7, #4]
 80425ca:	691b      	ldr	r3, [r3, #16]
 80425cc:	061b      	lsls	r3, r3, #24
 80425ce:	4941      	ldr	r1, [pc, #260]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80425d0:	4313      	orrs	r3, r2
 80425d2:	604b      	str	r3, [r1, #4]
 80425d4:	e01e      	b.n	8042614 <HAL_RCC_OscConfig+0x3f8>
 80425d6:	4b3f      	ldr	r3, [pc, #252]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80425d8:	681b      	ldr	r3, [r3, #0]
 80425da:	4a3e      	ldr	r2, [pc, #248]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80425dc:	f423 7380 	bic.w	r3, r3, #256	@ 0x100
 80425e0:	6013      	str	r3, [r2, #0]
 80425e2:	f7fe ffc9 	bl	8041578 <HAL_GetTick>
 80425e6:	6138      	str	r0, [r7, #16]
 80425e8:	e00e      	b.n	8042608 <HAL_RCC_OscConfig+0x3ec>
 80425ea:	f7fe ffc5 	bl	8041578 <HAL_GetTick>
 80425ee:	4602      	mov	r2, r0
 80425f0:	693b      	ldr	r3, [r7, #16]
 80425f2:	1ad3      	subs	r3, r2, r3
 80425f4:	2b02      	cmp	r3, #2
 80425f6:	d907      	bls.n	8042608 <HAL_RCC_OscConfig+0x3ec>
 80425f8:	4b36      	ldr	r3, [pc, #216]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80425fa:	681b      	ldr	r3, [r3, #0]
 80425fc:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8042600:	2b00      	cmp	r3, #0
 8042602:	d001      	beq.n	8042608 <HAL_RCC_OscConfig+0x3ec>
 8042604:	2303      	movs	r3, #3
 8042606:	e2d5      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042608:	4b32      	ldr	r3, [pc, #200]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 804260a:	681b      	ldr	r3, [r3, #0]
 804260c:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8042610:	2b00      	cmp	r3, #0
 8042612:	d1ea      	bne.n	80425ea <HAL_RCC_OscConfig+0x3ce>
 8042614:	687b      	ldr	r3, [r7, #4]
 8042616:	681b      	ldr	r3, [r3, #0]
 8042618:	f003 0308 	and.w	r3, r3, #8
 804261c:	2b00      	cmp	r3, #0
 804261e:	d062      	beq.n	80426e6 <HAL_RCC_OscConfig+0x4ca>
 8042620:	687b      	ldr	r3, [r7, #4]
 8042622:	695b      	ldr	r3, [r3, #20]
 8042624:	2b00      	cmp	r3, #0
 8042626:	d038      	beq.n	804269a <HAL_RCC_OscConfig+0x47e>
 8042628:	687b      	ldr	r3, [r7, #4]
 804262a:	699b      	ldr	r3, [r3, #24]
 804262c:	2b00      	cmp	r3, #0
 804262e:	d108      	bne.n	8042642 <HAL_RCC_OscConfig+0x426>
 8042630:	4b28      	ldr	r3, [pc, #160]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042632:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8042636:	4a27      	ldr	r2, [pc, #156]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042638:	f023 0310 	bic.w	r3, r3, #16
 804263c:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 8042640:	e007      	b.n	8042652 <HAL_RCC_OscConfig+0x436>
 8042642:	4b24      	ldr	r3, [pc, #144]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042644:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8042648:	4a22      	ldr	r2, [pc, #136]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 804264a:	f043 0310 	orr.w	r3, r3, #16
 804264e:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 8042652:	4b20      	ldr	r3, [pc, #128]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 8042654:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8042658:	4a1e      	ldr	r2, [pc, #120]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 804265a:	f043 0301 	orr.w	r3, r3, #1
 804265e:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 8042662:	f7fe ff89 	bl	8041578 <HAL_GetTick>
 8042666:	6138      	str	r0, [r7, #16]
 8042668:	e00f      	b.n	804268a <HAL_RCC_OscConfig+0x46e>
 804266a:	f7fe ff85 	bl	8041578 <HAL_GetTick>
 804266e:	4602      	mov	r2, r0
 8042670:	693b      	ldr	r3, [r7, #16]
 8042672:	1ad3      	subs	r3, r2, r3
 8042674:	2b07      	cmp	r3, #7
 8042676:	d908      	bls.n	804268a <HAL_RCC_OscConfig+0x46e>
 8042678:	4b16      	ldr	r3, [pc, #88]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 804267a:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 804267e:	f003 0302 	and.w	r3, r3, #2
 8042682:	2b00      	cmp	r3, #0
 8042684:	d101      	bne.n	804268a <HAL_RCC_OscConfig+0x46e>
 8042686:	2303      	movs	r3, #3
 8042688:	e294      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 804268a:	4b12      	ldr	r3, [pc, #72]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 804268c:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8042690:	f003 0302 	and.w	r3, r3, #2
 8042694:	2b00      	cmp	r3, #0
 8042696:	d0e8      	beq.n	804266a <HAL_RCC_OscConfig+0x44e>
 8042698:	e025      	b.n	80426e6 <HAL_RCC_OscConfig+0x4ca>
 804269a:	4b0e      	ldr	r3, [pc, #56]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 804269c:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 80426a0:	4a0c      	ldr	r2, [pc, #48]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80426a2:	f023 0301 	bic.w	r3, r3, #1
 80426a6:	f8c2 3094 	str.w	r3, [r2, #148]	@ 0x94
 80426aa:	f7fe ff65 	bl	8041578 <HAL_GetTick>
 80426ae:	6138      	str	r0, [r7, #16]
 80426b0:	e012      	b.n	80426d8 <HAL_RCC_OscConfig+0x4bc>
 80426b2:	f7fe ff61 	bl	8041578 <HAL_GetTick>
 80426b6:	4602      	mov	r2, r0
 80426b8:	693b      	ldr	r3, [r7, #16]
 80426ba:	1ad3      	subs	r3, r2, r3
 80426bc:	2b07      	cmp	r3, #7
 80426be:	d90b      	bls.n	80426d8 <HAL_RCC_OscConfig+0x4bc>
 80426c0:	4b04      	ldr	r3, [pc, #16]	@ (80426d4 <HAL_RCC_OscConfig+0x4b8>)
 80426c2:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 80426c6:	f003 0302 	and.w	r3, r3, #2
 80426ca:	2b00      	cmp	r3, #0
 80426cc:	d004      	beq.n	80426d8 <HAL_RCC_OscConfig+0x4bc>
 80426ce:	2303      	movs	r3, #3
 80426d0:	e270      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 80426d2:	bf00      	nop
 80426d4:	40021000 	.word	0x40021000
 80426d8:	4ba8      	ldr	r3, [pc, #672]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80426da:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 80426de:	f003 0302 	and.w	r3, r3, #2
 80426e2:	2b00      	cmp	r3, #0
 80426e4:	d1e5      	bne.n	80426b2 <HAL_RCC_OscConfig+0x496>
 80426e6:	687b      	ldr	r3, [r7, #4]
 80426e8:	681b      	ldr	r3, [r3, #0]
 80426ea:	f003 0304 	and.w	r3, r3, #4
 80426ee:	2b00      	cmp	r3, #0
 80426f0:	f000 812d 	beq.w	804294e <HAL_RCC_OscConfig+0x732>
 80426f4:	2300      	movs	r3, #0
 80426f6:	77fb      	strb	r3, [r7, #31]
 80426f8:	4ba0      	ldr	r3, [pc, #640]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80426fa:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80426fc:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8042700:	2b00      	cmp	r3, #0
 8042702:	d10d      	bne.n	8042720 <HAL_RCC_OscConfig+0x504>
 8042704:	4b9d      	ldr	r3, [pc, #628]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042706:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042708:	4a9c      	ldr	r2, [pc, #624]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804270a:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 804270e:	6593      	str	r3, [r2, #88]	@ 0x58
 8042710:	4b9a      	ldr	r3, [pc, #616]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042712:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042714:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8042718:	60bb      	str	r3, [r7, #8]
 804271a:	68bb      	ldr	r3, [r7, #8]
 804271c:	2301      	movs	r3, #1
 804271e:	77fb      	strb	r3, [r7, #31]
 8042720:	4b97      	ldr	r3, [pc, #604]	@ (8042980 <HAL_RCC_OscConfig+0x764>)
 8042722:	681b      	ldr	r3, [r3, #0]
 8042724:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8042728:	2b00      	cmp	r3, #0
 804272a:	d11e      	bne.n	804276a <HAL_RCC_OscConfig+0x54e>
 804272c:	4b94      	ldr	r3, [pc, #592]	@ (8042980 <HAL_RCC_OscConfig+0x764>)
 804272e:	681b      	ldr	r3, [r3, #0]
 8042730:	4a93      	ldr	r2, [pc, #588]	@ (8042980 <HAL_RCC_OscConfig+0x764>)
 8042732:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8042736:	6013      	str	r3, [r2, #0]
 8042738:	f7fe ff1e 	bl	8041578 <HAL_GetTick>
 804273c:	6138      	str	r0, [r7, #16]
 804273e:	e00e      	b.n	804275e <HAL_RCC_OscConfig+0x542>
 8042740:	f7fe ff1a 	bl	8041578 <HAL_GetTick>
 8042744:	4602      	mov	r2, r0
 8042746:	693b      	ldr	r3, [r7, #16]
 8042748:	1ad3      	subs	r3, r2, r3
 804274a:	2b02      	cmp	r3, #2
 804274c:	d907      	bls.n	804275e <HAL_RCC_OscConfig+0x542>
 804274e:	4b8c      	ldr	r3, [pc, #560]	@ (8042980 <HAL_RCC_OscConfig+0x764>)
 8042750:	681b      	ldr	r3, [r3, #0]
 8042752:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8042756:	2b00      	cmp	r3, #0
 8042758:	d101      	bne.n	804275e <HAL_RCC_OscConfig+0x542>
 804275a:	2303      	movs	r3, #3
 804275c:	e22a      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 804275e:	4b88      	ldr	r3, [pc, #544]	@ (8042980 <HAL_RCC_OscConfig+0x764>)
 8042760:	681b      	ldr	r3, [r3, #0]
 8042762:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8042766:	2b00      	cmp	r3, #0
 8042768:	d0ea      	beq.n	8042740 <HAL_RCC_OscConfig+0x524>
 804276a:	687b      	ldr	r3, [r7, #4]
 804276c:	689b      	ldr	r3, [r3, #8]
 804276e:	f003 0301 	and.w	r3, r3, #1
 8042772:	2b00      	cmp	r3, #0
 8042774:	d01f      	beq.n	80427b6 <HAL_RCC_OscConfig+0x59a>
 8042776:	687b      	ldr	r3, [r7, #4]
 8042778:	689b      	ldr	r3, [r3, #8]
 804277a:	f003 0304 	and.w	r3, r3, #4
 804277e:	2b00      	cmp	r3, #0
 8042780:	d010      	beq.n	80427a4 <HAL_RCC_OscConfig+0x588>
 8042782:	4b7e      	ldr	r3, [pc, #504]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042784:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042788:	4a7c      	ldr	r2, [pc, #496]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804278a:	f043 0304 	orr.w	r3, r3, #4
 804278e:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8042792:	4b7a      	ldr	r3, [pc, #488]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042794:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042798:	4a78      	ldr	r2, [pc, #480]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804279a:	f043 0301 	orr.w	r3, r3, #1
 804279e:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80427a2:	e018      	b.n	80427d6 <HAL_RCC_OscConfig+0x5ba>
 80427a4:	4b75      	ldr	r3, [pc, #468]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80427a6:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80427aa:	4a74      	ldr	r2, [pc, #464]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80427ac:	f043 0301 	orr.w	r3, r3, #1
 80427b0:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80427b4:	e00f      	b.n	80427d6 <HAL_RCC_OscConfig+0x5ba>
 80427b6:	4b71      	ldr	r3, [pc, #452]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80427b8:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80427bc:	4a6f      	ldr	r2, [pc, #444]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80427be:	f023 0301 	bic.w	r3, r3, #1
 80427c2:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80427c6:	4b6d      	ldr	r3, [pc, #436]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80427c8:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80427cc:	4a6b      	ldr	r2, [pc, #428]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80427ce:	f023 0304 	bic.w	r3, r3, #4
 80427d2:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80427d6:	687b      	ldr	r3, [r7, #4]
 80427d8:	689b      	ldr	r3, [r3, #8]
 80427da:	2b00      	cmp	r3, #0
 80427dc:	d068      	beq.n	80428b0 <HAL_RCC_OscConfig+0x694>
 80427de:	f7fe fecb 	bl	8041578 <HAL_GetTick>
 80427e2:	6138      	str	r0, [r7, #16]
 80427e4:	e011      	b.n	804280a <HAL_RCC_OscConfig+0x5ee>
 80427e6:	f7fe fec7 	bl	8041578 <HAL_GetTick>
 80427ea:	4602      	mov	r2, r0
 80427ec:	693b      	ldr	r3, [r7, #16]
 80427ee:	1ad3      	subs	r3, r2, r3
 80427f0:	f241 3288 	movw	r2, #5000	@ 0x1388
 80427f4:	4293      	cmp	r3, r2
 80427f6:	d908      	bls.n	804280a <HAL_RCC_OscConfig+0x5ee>
 80427f8:	4b60      	ldr	r3, [pc, #384]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80427fa:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80427fe:	f003 0302 	and.w	r3, r3, #2
 8042802:	2b00      	cmp	r3, #0
 8042804:	d101      	bne.n	804280a <HAL_RCC_OscConfig+0x5ee>
 8042806:	2303      	movs	r3, #3
 8042808:	e1d4      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 804280a:	4b5c      	ldr	r3, [pc, #368]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804280c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042810:	f003 0302 	and.w	r3, r3, #2
 8042814:	2b00      	cmp	r3, #0
 8042816:	d0e6      	beq.n	80427e6 <HAL_RCC_OscConfig+0x5ca>
 8042818:	687b      	ldr	r3, [r7, #4]
 804281a:	689b      	ldr	r3, [r3, #8]
 804281c:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8042820:	2b00      	cmp	r3, #0
 8042822:	d022      	beq.n	804286a <HAL_RCC_OscConfig+0x64e>
 8042824:	4b55      	ldr	r3, [pc, #340]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042826:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804282a:	4a54      	ldr	r2, [pc, #336]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804282c:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8042830:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8042834:	e011      	b.n	804285a <HAL_RCC_OscConfig+0x63e>
 8042836:	f7fe fe9f 	bl	8041578 <HAL_GetTick>
 804283a:	4602      	mov	r2, r0
 804283c:	693b      	ldr	r3, [r7, #16]
 804283e:	1ad3      	subs	r3, r2, r3
 8042840:	f241 3288 	movw	r2, #5000	@ 0x1388
 8042844:	4293      	cmp	r3, r2
 8042846:	d908      	bls.n	804285a <HAL_RCC_OscConfig+0x63e>
 8042848:	4b4c      	ldr	r3, [pc, #304]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804284a:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804284e:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8042852:	2b00      	cmp	r3, #0
 8042854:	d101      	bne.n	804285a <HAL_RCC_OscConfig+0x63e>
 8042856:	2303      	movs	r3, #3
 8042858:	e1ac      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 804285a:	4b48      	ldr	r3, [pc, #288]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804285c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042860:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8042864:	2b00      	cmp	r3, #0
 8042866:	d0e6      	beq.n	8042836 <HAL_RCC_OscConfig+0x61a>
 8042868:	e068      	b.n	804293c <HAL_RCC_OscConfig+0x720>
 804286a:	4b44      	ldr	r3, [pc, #272]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804286c:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042870:	4a42      	ldr	r2, [pc, #264]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042872:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8042876:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 804287a:	e011      	b.n	80428a0 <HAL_RCC_OscConfig+0x684>
 804287c:	f7fe fe7c 	bl	8041578 <HAL_GetTick>
 8042880:	4602      	mov	r2, r0
 8042882:	693b      	ldr	r3, [r7, #16]
 8042884:	1ad3      	subs	r3, r2, r3
 8042886:	f241 3288 	movw	r2, #5000	@ 0x1388
 804288a:	4293      	cmp	r3, r2
 804288c:	d908      	bls.n	80428a0 <HAL_RCC_OscConfig+0x684>
 804288e:	4b3b      	ldr	r3, [pc, #236]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042890:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042894:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8042898:	2b00      	cmp	r3, #0
 804289a:	d001      	beq.n	80428a0 <HAL_RCC_OscConfig+0x684>
 804289c:	2303      	movs	r3, #3
 804289e:	e189      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 80428a0:	4b36      	ldr	r3, [pc, #216]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80428a2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80428a6:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 80428aa:	2b00      	cmp	r3, #0
 80428ac:	d1e6      	bne.n	804287c <HAL_RCC_OscConfig+0x660>
 80428ae:	e045      	b.n	804293c <HAL_RCC_OscConfig+0x720>
 80428b0:	f7fe fe62 	bl	8041578 <HAL_GetTick>
 80428b4:	6138      	str	r0, [r7, #16]
 80428b6:	e011      	b.n	80428dc <HAL_RCC_OscConfig+0x6c0>
 80428b8:	f7fe fe5e 	bl	8041578 <HAL_GetTick>
 80428bc:	4602      	mov	r2, r0
 80428be:	693b      	ldr	r3, [r7, #16]
 80428c0:	1ad3      	subs	r3, r2, r3
 80428c2:	f241 3288 	movw	r2, #5000	@ 0x1388
 80428c6:	4293      	cmp	r3, r2
 80428c8:	d908      	bls.n	80428dc <HAL_RCC_OscConfig+0x6c0>
 80428ca:	4b2c      	ldr	r3, [pc, #176]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80428cc:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80428d0:	f003 0302 	and.w	r3, r3, #2
 80428d4:	2b00      	cmp	r3, #0
 80428d6:	d001      	beq.n	80428dc <HAL_RCC_OscConfig+0x6c0>
 80428d8:	2303      	movs	r3, #3
 80428da:	e16b      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 80428dc:	4b27      	ldr	r3, [pc, #156]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80428de:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80428e2:	f003 0302 	and.w	r3, r3, #2
 80428e6:	2b00      	cmp	r3, #0
 80428e8:	d1e6      	bne.n	80428b8 <HAL_RCC_OscConfig+0x69c>
 80428ea:	4b24      	ldr	r3, [pc, #144]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80428ec:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80428f0:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80428f4:	2b00      	cmp	r3, #0
 80428f6:	d021      	beq.n	804293c <HAL_RCC_OscConfig+0x720>
 80428f8:	4b20      	ldr	r3, [pc, #128]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 80428fa:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80428fe:	4a1f      	ldr	r2, [pc, #124]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042900:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8042904:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8042908:	e011      	b.n	804292e <HAL_RCC_OscConfig+0x712>
 804290a:	f7fe fe35 	bl	8041578 <HAL_GetTick>
 804290e:	4602      	mov	r2, r0
 8042910:	693b      	ldr	r3, [r7, #16]
 8042912:	1ad3      	subs	r3, r2, r3
 8042914:	f241 3288 	movw	r2, #5000	@ 0x1388
 8042918:	4293      	cmp	r3, r2
 804291a:	d908      	bls.n	804292e <HAL_RCC_OscConfig+0x712>
 804291c:	4b17      	ldr	r3, [pc, #92]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804291e:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042922:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8042926:	2b00      	cmp	r3, #0
 8042928:	d001      	beq.n	804292e <HAL_RCC_OscConfig+0x712>
 804292a:	2303      	movs	r3, #3
 804292c:	e142      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 804292e:	4b13      	ldr	r3, [pc, #76]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042930:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8042934:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8042938:	2b00      	cmp	r3, #0
 804293a:	d1e6      	bne.n	804290a <HAL_RCC_OscConfig+0x6ee>
 804293c:	7ffb      	ldrb	r3, [r7, #31]
 804293e:	2b01      	cmp	r3, #1
 8042940:	d105      	bne.n	804294e <HAL_RCC_OscConfig+0x732>
 8042942:	4b0e      	ldr	r3, [pc, #56]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042944:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042946:	4a0d      	ldr	r2, [pc, #52]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042948:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 804294c:	6593      	str	r3, [r2, #88]	@ 0x58
 804294e:	687b      	ldr	r3, [r7, #4]
 8042950:	681b      	ldr	r3, [r3, #0]
 8042952:	f003 0320 	and.w	r3, r3, #32
 8042956:	2b00      	cmp	r3, #0
 8042958:	d04f      	beq.n	80429fa <HAL_RCC_OscConfig+0x7de>
 804295a:	687b      	ldr	r3, [r7, #4]
 804295c:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 804295e:	2b00      	cmp	r3, #0
 8042960:	d028      	beq.n	80429b4 <HAL_RCC_OscConfig+0x798>
 8042962:	4b06      	ldr	r3, [pc, #24]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 8042964:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 8042968:	4a04      	ldr	r2, [pc, #16]	@ (804297c <HAL_RCC_OscConfig+0x760>)
 804296a:	f043 0301 	orr.w	r3, r3, #1
 804296e:	f8c2 3098 	str.w	r3, [r2, #152]	@ 0x98
 8042972:	f7fe fe01 	bl	8041578 <HAL_GetTick>
 8042976:	6138      	str	r0, [r7, #16]
 8042978:	e014      	b.n	80429a4 <HAL_RCC_OscConfig+0x788>
 804297a:	bf00      	nop
 804297c:	40021000 	.word	0x40021000
 8042980:	40007000 	.word	0x40007000
 8042984:	f7fe fdf8 	bl	8041578 <HAL_GetTick>
 8042988:	4602      	mov	r2, r0
 804298a:	693b      	ldr	r3, [r7, #16]
 804298c:	1ad3      	subs	r3, r2, r3
 804298e:	2b02      	cmp	r3, #2
 8042990:	d908      	bls.n	80429a4 <HAL_RCC_OscConfig+0x788>
 8042992:	4b8a      	ldr	r3, [pc, #552]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042994:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 8042998:	f003 0302 	and.w	r3, r3, #2
 804299c:	2b00      	cmp	r3, #0
 804299e:	d101      	bne.n	80429a4 <HAL_RCC_OscConfig+0x788>
 80429a0:	2303      	movs	r3, #3
 80429a2:	e107      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 80429a4:	4b85      	ldr	r3, [pc, #532]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 80429a6:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 80429aa:	f003 0302 	and.w	r3, r3, #2
 80429ae:	2b00      	cmp	r3, #0
 80429b0:	d0e8      	beq.n	8042984 <HAL_RCC_OscConfig+0x768>
 80429b2:	e022      	b.n	80429fa <HAL_RCC_OscConfig+0x7de>
 80429b4:	4b81      	ldr	r3, [pc, #516]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 80429b6:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 80429ba:	4a80      	ldr	r2, [pc, #512]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 80429bc:	f023 0301 	bic.w	r3, r3, #1
 80429c0:	f8c2 3098 	str.w	r3, [r2, #152]	@ 0x98
 80429c4:	f7fe fdd8 	bl	8041578 <HAL_GetTick>
 80429c8:	6138      	str	r0, [r7, #16]
 80429ca:	e00f      	b.n	80429ec <HAL_RCC_OscConfig+0x7d0>
 80429cc:	f7fe fdd4 	bl	8041578 <HAL_GetTick>
 80429d0:	4602      	mov	r2, r0
 80429d2:	693b      	ldr	r3, [r7, #16]
 80429d4:	1ad3      	subs	r3, r2, r3
 80429d6:	2b02      	cmp	r3, #2
 80429d8:	d908      	bls.n	80429ec <HAL_RCC_OscConfig+0x7d0>
 80429da:	4b78      	ldr	r3, [pc, #480]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 80429dc:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 80429e0:	f003 0302 	and.w	r3, r3, #2
 80429e4:	2b00      	cmp	r3, #0
 80429e6:	d001      	beq.n	80429ec <HAL_RCC_OscConfig+0x7d0>
 80429e8:	2303      	movs	r3, #3
 80429ea:	e0e3      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 80429ec:	4b73      	ldr	r3, [pc, #460]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 80429ee:	f8d3 3098 	ldr.w	r3, [r3, #152]	@ 0x98
 80429f2:	f003 0302 	and.w	r3, r3, #2
 80429f6:	2b00      	cmp	r3, #0
 80429f8:	d1e8      	bne.n	80429cc <HAL_RCC_OscConfig+0x7b0>
 80429fa:	687b      	ldr	r3, [r7, #4]
 80429fc:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 80429fe:	2b00      	cmp	r3, #0
 8042a00:	f000 80d7 	beq.w	8042bb2 <HAL_RCC_OscConfig+0x996>
 8042a04:	4b6d      	ldr	r3, [pc, #436]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a06:	689b      	ldr	r3, [r3, #8]
 8042a08:	f003 030c 	and.w	r3, r3, #12
 8042a0c:	2b0c      	cmp	r3, #12
 8042a0e:	f000 8091 	beq.w	8042b34 <HAL_RCC_OscConfig+0x918>
 8042a12:	687b      	ldr	r3, [r7, #4]
 8042a14:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8042a16:	2b02      	cmp	r3, #2
 8042a18:	d166      	bne.n	8042ae8 <HAL_RCC_OscConfig+0x8cc>
 8042a1a:	4b68      	ldr	r3, [pc, #416]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a1c:	681b      	ldr	r3, [r3, #0]
 8042a1e:	4a67      	ldr	r2, [pc, #412]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a20:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8042a24:	6013      	str	r3, [r2, #0]
 8042a26:	f7fe fda7 	bl	8041578 <HAL_GetTick>
 8042a2a:	6138      	str	r0, [r7, #16]
 8042a2c:	e00e      	b.n	8042a4c <HAL_RCC_OscConfig+0x830>
 8042a2e:	f7fe fda3 	bl	8041578 <HAL_GetTick>
 8042a32:	4602      	mov	r2, r0
 8042a34:	693b      	ldr	r3, [r7, #16]
 8042a36:	1ad3      	subs	r3, r2, r3
 8042a38:	2b02      	cmp	r3, #2
 8042a3a:	d907      	bls.n	8042a4c <HAL_RCC_OscConfig+0x830>
 8042a3c:	4b5f      	ldr	r3, [pc, #380]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a3e:	681b      	ldr	r3, [r3, #0]
 8042a40:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8042a44:	2b00      	cmp	r3, #0
 8042a46:	d001      	beq.n	8042a4c <HAL_RCC_OscConfig+0x830>
 8042a48:	2303      	movs	r3, #3
 8042a4a:	e0b3      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042a4c:	4b5b      	ldr	r3, [pc, #364]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a4e:	681b      	ldr	r3, [r3, #0]
 8042a50:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8042a54:	2b00      	cmp	r3, #0
 8042a56:	d1ea      	bne.n	8042a2e <HAL_RCC_OscConfig+0x812>
 8042a58:	4b58      	ldr	r3, [pc, #352]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a5a:	68da      	ldr	r2, [r3, #12]
 8042a5c:	4b58      	ldr	r3, [pc, #352]	@ (8042bc0 <HAL_RCC_OscConfig+0x9a4>)
 8042a5e:	4013      	ands	r3, r2
 8042a60:	687a      	ldr	r2, [r7, #4]
 8042a62:	6b11      	ldr	r1, [r2, #48]	@ 0x30
 8042a64:	687a      	ldr	r2, [r7, #4]
 8042a66:	6b52      	ldr	r2, [r2, #52]	@ 0x34
 8042a68:	3a01      	subs	r2, #1
 8042a6a:	0112      	lsls	r2, r2, #4
 8042a6c:	4311      	orrs	r1, r2
 8042a6e:	687a      	ldr	r2, [r7, #4]
 8042a70:	6b92      	ldr	r2, [r2, #56]	@ 0x38
 8042a72:	0212      	lsls	r2, r2, #8
 8042a74:	4311      	orrs	r1, r2
 8042a76:	687a      	ldr	r2, [r7, #4]
 8042a78:	6c12      	ldr	r2, [r2, #64]	@ 0x40
 8042a7a:	0852      	lsrs	r2, r2, #1
 8042a7c:	3a01      	subs	r2, #1
 8042a7e:	0552      	lsls	r2, r2, #21
 8042a80:	4311      	orrs	r1, r2
 8042a82:	687a      	ldr	r2, [r7, #4]
 8042a84:	6c52      	ldr	r2, [r2, #68]	@ 0x44
 8042a86:	0852      	lsrs	r2, r2, #1
 8042a88:	3a01      	subs	r2, #1
 8042a8a:	0652      	lsls	r2, r2, #25
 8042a8c:	4311      	orrs	r1, r2
 8042a8e:	687a      	ldr	r2, [r7, #4]
 8042a90:	6bd2      	ldr	r2, [r2, #60]	@ 0x3c
 8042a92:	06d2      	lsls	r2, r2, #27
 8042a94:	430a      	orrs	r2, r1
 8042a96:	4949      	ldr	r1, [pc, #292]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a98:	4313      	orrs	r3, r2
 8042a9a:	60cb      	str	r3, [r1, #12]
 8042a9c:	4b47      	ldr	r3, [pc, #284]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042a9e:	681b      	ldr	r3, [r3, #0]
 8042aa0:	4a46      	ldr	r2, [pc, #280]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042aa2:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 8042aa6:	6013      	str	r3, [r2, #0]
 8042aa8:	4b44      	ldr	r3, [pc, #272]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042aaa:	68db      	ldr	r3, [r3, #12]
 8042aac:	4a43      	ldr	r2, [pc, #268]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042aae:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 8042ab2:	60d3      	str	r3, [r2, #12]
 8042ab4:	f7fe fd60 	bl	8041578 <HAL_GetTick>
 8042ab8:	6138      	str	r0, [r7, #16]
 8042aba:	e00e      	b.n	8042ada <HAL_RCC_OscConfig+0x8be>
 8042abc:	f7fe fd5c 	bl	8041578 <HAL_GetTick>
 8042ac0:	4602      	mov	r2, r0
 8042ac2:	693b      	ldr	r3, [r7, #16]
 8042ac4:	1ad3      	subs	r3, r2, r3
 8042ac6:	2b02      	cmp	r3, #2
 8042ac8:	d907      	bls.n	8042ada <HAL_RCC_OscConfig+0x8be>
 8042aca:	4b3c      	ldr	r3, [pc, #240]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042acc:	681b      	ldr	r3, [r3, #0]
 8042ace:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8042ad2:	2b00      	cmp	r3, #0
 8042ad4:	d101      	bne.n	8042ada <HAL_RCC_OscConfig+0x8be>
 8042ad6:	2303      	movs	r3, #3
 8042ad8:	e06c      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042ada:	4b38      	ldr	r3, [pc, #224]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042adc:	681b      	ldr	r3, [r3, #0]
 8042ade:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8042ae2:	2b00      	cmp	r3, #0
 8042ae4:	d0ea      	beq.n	8042abc <HAL_RCC_OscConfig+0x8a0>
 8042ae6:	e064      	b.n	8042bb2 <HAL_RCC_OscConfig+0x996>
 8042ae8:	4b34      	ldr	r3, [pc, #208]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042aea:	681b      	ldr	r3, [r3, #0]
 8042aec:	4a33      	ldr	r2, [pc, #204]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042aee:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8042af2:	6013      	str	r3, [r2, #0]
 8042af4:	f7fe fd40 	bl	8041578 <HAL_GetTick>
 8042af8:	6138      	str	r0, [r7, #16]
 8042afa:	e00e      	b.n	8042b1a <HAL_RCC_OscConfig+0x8fe>
 8042afc:	f7fe fd3c 	bl	8041578 <HAL_GetTick>
 8042b00:	4602      	mov	r2, r0
 8042b02:	693b      	ldr	r3, [r7, #16]
 8042b04:	1ad3      	subs	r3, r2, r3
 8042b06:	2b02      	cmp	r3, #2
 8042b08:	d907      	bls.n	8042b1a <HAL_RCC_OscConfig+0x8fe>
 8042b0a:	4b2c      	ldr	r3, [pc, #176]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042b0c:	681b      	ldr	r3, [r3, #0]
 8042b0e:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8042b12:	2b00      	cmp	r3, #0
 8042b14:	d001      	beq.n	8042b1a <HAL_RCC_OscConfig+0x8fe>
 8042b16:	2303      	movs	r3, #3
 8042b18:	e04c      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042b1a:	4b28      	ldr	r3, [pc, #160]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042b1c:	681b      	ldr	r3, [r3, #0]
 8042b1e:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8042b22:	2b00      	cmp	r3, #0
 8042b24:	d1ea      	bne.n	8042afc <HAL_RCC_OscConfig+0x8e0>
 8042b26:	4b25      	ldr	r3, [pc, #148]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042b28:	68da      	ldr	r2, [r3, #12]
 8042b2a:	4924      	ldr	r1, [pc, #144]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042b2c:	4b25      	ldr	r3, [pc, #148]	@ (8042bc4 <HAL_RCC_OscConfig+0x9a8>)
 8042b2e:	4013      	ands	r3, r2
 8042b30:	60cb      	str	r3, [r1, #12]
 8042b32:	e03e      	b.n	8042bb2 <HAL_RCC_OscConfig+0x996>
 8042b34:	687b      	ldr	r3, [r7, #4]
 8042b36:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 8042b38:	2b01      	cmp	r3, #1
 8042b3a:	d101      	bne.n	8042b40 <HAL_RCC_OscConfig+0x924>
 8042b3c:	2301      	movs	r3, #1
 8042b3e:	e039      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042b40:	4b1e      	ldr	r3, [pc, #120]	@ (8042bbc <HAL_RCC_OscConfig+0x9a0>)
 8042b42:	68db      	ldr	r3, [r3, #12]
 8042b44:	617b      	str	r3, [r7, #20]
 8042b46:	697b      	ldr	r3, [r7, #20]
 8042b48:	f003 0203 	and.w	r2, r3, #3
 8042b4c:	687b      	ldr	r3, [r7, #4]
 8042b4e:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8042b50:	429a      	cmp	r2, r3
 8042b52:	d12c      	bne.n	8042bae <HAL_RCC_OscConfig+0x992>
 8042b54:	697b      	ldr	r3, [r7, #20]
 8042b56:	f003 02f0 	and.w	r2, r3, #240	@ 0xf0
 8042b5a:	687b      	ldr	r3, [r7, #4]
 8042b5c:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8042b5e:	3b01      	subs	r3, #1
 8042b60:	011b      	lsls	r3, r3, #4
 8042b62:	429a      	cmp	r2, r3
 8042b64:	d123      	bne.n	8042bae <HAL_RCC_OscConfig+0x992>
 8042b66:	697b      	ldr	r3, [r7, #20]
 8042b68:	f403 42fe 	and.w	r2, r3, #32512	@ 0x7f00
 8042b6c:	687b      	ldr	r3, [r7, #4]
 8042b6e:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 8042b70:	021b      	lsls	r3, r3, #8
 8042b72:	429a      	cmp	r2, r3
 8042b74:	d11b      	bne.n	8042bae <HAL_RCC_OscConfig+0x992>
 8042b76:	697b      	ldr	r3, [r7, #20]
 8042b78:	f003 4278 	and.w	r2, r3, #4160749568	@ 0xf8000000
 8042b7c:	687b      	ldr	r3, [r7, #4]
 8042b7e:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 8042b80:	06db      	lsls	r3, r3, #27
 8042b82:	429a      	cmp	r2, r3
 8042b84:	d113      	bne.n	8042bae <HAL_RCC_OscConfig+0x992>
 8042b86:	697b      	ldr	r3, [r7, #20]
 8042b88:	f403 02c0 	and.w	r2, r3, #6291456	@ 0x600000
 8042b8c:	687b      	ldr	r3, [r7, #4]
 8042b8e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 8042b90:	085b      	lsrs	r3, r3, #1
 8042b92:	3b01      	subs	r3, #1
 8042b94:	055b      	lsls	r3, r3, #21
 8042b96:	429a      	cmp	r2, r3
 8042b98:	d109      	bne.n	8042bae <HAL_RCC_OscConfig+0x992>
 8042b9a:	697b      	ldr	r3, [r7, #20]
 8042b9c:	f003 62c0 	and.w	r2, r3, #100663296	@ 0x6000000
 8042ba0:	687b      	ldr	r3, [r7, #4]
 8042ba2:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8042ba4:	085b      	lsrs	r3, r3, #1
 8042ba6:	3b01      	subs	r3, #1
 8042ba8:	065b      	lsls	r3, r3, #25
 8042baa:	429a      	cmp	r2, r3
 8042bac:	d001      	beq.n	8042bb2 <HAL_RCC_OscConfig+0x996>
 8042bae:	2301      	movs	r3, #1
 8042bb0:	e000      	b.n	8042bb4 <HAL_RCC_OscConfig+0x998>
 8042bb2:	2300      	movs	r3, #0
 8042bb4:	4618      	mov	r0, r3
 8042bb6:	3720      	adds	r7, #32
 8042bb8:	46bd      	mov	sp, r7
 8042bba:	bd80      	pop	{r7, pc}
 8042bbc:	40021000 	.word	0x40021000
 8042bc0:	019f800c 	.word	0x019f800c
 8042bc4:	feeefffc 	.word	0xfeeefffc

08042bc8 <HAL_RCC_ClockConfig>:
 8042bc8:	b580      	push	{r7, lr}
 8042bca:	b086      	sub	sp, #24
 8042bcc:	af00      	add	r7, sp, #0
 8042bce:	6078      	str	r0, [r7, #4]
 8042bd0:	6039      	str	r1, [r7, #0]
 8042bd2:	2300      	movs	r3, #0
 8042bd4:	617b      	str	r3, [r7, #20]
 8042bd6:	687b      	ldr	r3, [r7, #4]
 8042bd8:	2b00      	cmp	r3, #0
 8042bda:	d101      	bne.n	8042be0 <HAL_RCC_ClockConfig+0x18>
 8042bdc:	2301      	movs	r3, #1
 8042bde:	e11c      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042be0:	4b90      	ldr	r3, [pc, #576]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042be2:	681b      	ldr	r3, [r3, #0]
 8042be4:	f003 030f 	and.w	r3, r3, #15
 8042be8:	683a      	ldr	r2, [r7, #0]
 8042bea:	429a      	cmp	r2, r3
 8042bec:	d910      	bls.n	8042c10 <HAL_RCC_ClockConfig+0x48>
 8042bee:	4b8d      	ldr	r3, [pc, #564]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042bf0:	681b      	ldr	r3, [r3, #0]
 8042bf2:	f023 020f 	bic.w	r2, r3, #15
 8042bf6:	498b      	ldr	r1, [pc, #556]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042bf8:	683b      	ldr	r3, [r7, #0]
 8042bfa:	4313      	orrs	r3, r2
 8042bfc:	600b      	str	r3, [r1, #0]
 8042bfe:	4b89      	ldr	r3, [pc, #548]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042c00:	681b      	ldr	r3, [r3, #0]
 8042c02:	f003 030f 	and.w	r3, r3, #15
 8042c06:	683a      	ldr	r2, [r7, #0]
 8042c08:	429a      	cmp	r2, r3
 8042c0a:	d001      	beq.n	8042c10 <HAL_RCC_ClockConfig+0x48>
 8042c0c:	2301      	movs	r3, #1
 8042c0e:	e104      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042c10:	687b      	ldr	r3, [r7, #4]
 8042c12:	681b      	ldr	r3, [r3, #0]
 8042c14:	f003 0302 	and.w	r3, r3, #2
 8042c18:	2b00      	cmp	r3, #0
 8042c1a:	d010      	beq.n	8042c3e <HAL_RCC_ClockConfig+0x76>
 8042c1c:	687b      	ldr	r3, [r7, #4]
 8042c1e:	689a      	ldr	r2, [r3, #8]
 8042c20:	4b81      	ldr	r3, [pc, #516]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c22:	689b      	ldr	r3, [r3, #8]
 8042c24:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8042c28:	429a      	cmp	r2, r3
 8042c2a:	d908      	bls.n	8042c3e <HAL_RCC_ClockConfig+0x76>
 8042c2c:	4b7e      	ldr	r3, [pc, #504]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c2e:	689b      	ldr	r3, [r3, #8]
 8042c30:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8042c34:	687b      	ldr	r3, [r7, #4]
 8042c36:	689b      	ldr	r3, [r3, #8]
 8042c38:	497b      	ldr	r1, [pc, #492]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c3a:	4313      	orrs	r3, r2
 8042c3c:	608b      	str	r3, [r1, #8]
 8042c3e:	687b      	ldr	r3, [r7, #4]
 8042c40:	681b      	ldr	r3, [r3, #0]
 8042c42:	f003 0301 	and.w	r3, r3, #1
 8042c46:	2b00      	cmp	r3, #0
 8042c48:	f000 8085 	beq.w	8042d56 <HAL_RCC_ClockConfig+0x18e>
 8042c4c:	687b      	ldr	r3, [r7, #4]
 8042c4e:	685b      	ldr	r3, [r3, #4]
 8042c50:	2b03      	cmp	r3, #3
 8042c52:	d11f      	bne.n	8042c94 <HAL_RCC_ClockConfig+0xcc>
 8042c54:	4b74      	ldr	r3, [pc, #464]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c56:	681b      	ldr	r3, [r3, #0]
 8042c58:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8042c5c:	2b00      	cmp	r3, #0
 8042c5e:	d101      	bne.n	8042c64 <HAL_RCC_ClockConfig+0x9c>
 8042c60:	2301      	movs	r3, #1
 8042c62:	e0da      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042c64:	f000 fa26 	bl	80430b4 <RCC_GetSysClockFreqFromPLLSource>
 8042c68:	6138      	str	r0, [r7, #16]
 8042c6a:	693b      	ldr	r3, [r7, #16]
 8042c6c:	4a6f      	ldr	r2, [pc, #444]	@ (8042e2c <HAL_RCC_ClockConfig+0x264>)
 8042c6e:	4293      	cmp	r3, r2
 8042c70:	d947      	bls.n	8042d02 <HAL_RCC_ClockConfig+0x13a>
 8042c72:	4b6d      	ldr	r3, [pc, #436]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c74:	689b      	ldr	r3, [r3, #8]
 8042c76:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8042c7a:	2b00      	cmp	r3, #0
 8042c7c:	d141      	bne.n	8042d02 <HAL_RCC_ClockConfig+0x13a>
 8042c7e:	4b6a      	ldr	r3, [pc, #424]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c80:	689b      	ldr	r3, [r3, #8]
 8042c82:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8042c86:	4a68      	ldr	r2, [pc, #416]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c88:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8042c8c:	6093      	str	r3, [r2, #8]
 8042c8e:	2380      	movs	r3, #128	@ 0x80
 8042c90:	617b      	str	r3, [r7, #20]
 8042c92:	e036      	b.n	8042d02 <HAL_RCC_ClockConfig+0x13a>
 8042c94:	687b      	ldr	r3, [r7, #4]
 8042c96:	685b      	ldr	r3, [r3, #4]
 8042c98:	2b02      	cmp	r3, #2
 8042c9a:	d107      	bne.n	8042cac <HAL_RCC_ClockConfig+0xe4>
 8042c9c:	4b62      	ldr	r3, [pc, #392]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042c9e:	681b      	ldr	r3, [r3, #0]
 8042ca0:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8042ca4:	2b00      	cmp	r3, #0
 8042ca6:	d115      	bne.n	8042cd4 <HAL_RCC_ClockConfig+0x10c>
 8042ca8:	2301      	movs	r3, #1
 8042caa:	e0b6      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042cac:	687b      	ldr	r3, [r7, #4]
 8042cae:	685b      	ldr	r3, [r3, #4]
 8042cb0:	2b00      	cmp	r3, #0
 8042cb2:	d107      	bne.n	8042cc4 <HAL_RCC_ClockConfig+0xfc>
 8042cb4:	4b5c      	ldr	r3, [pc, #368]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042cb6:	681b      	ldr	r3, [r3, #0]
 8042cb8:	f003 0302 	and.w	r3, r3, #2
 8042cbc:	2b00      	cmp	r3, #0
 8042cbe:	d109      	bne.n	8042cd4 <HAL_RCC_ClockConfig+0x10c>
 8042cc0:	2301      	movs	r3, #1
 8042cc2:	e0aa      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042cc4:	4b58      	ldr	r3, [pc, #352]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042cc6:	681b      	ldr	r3, [r3, #0]
 8042cc8:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8042ccc:	2b00      	cmp	r3, #0
 8042cce:	d101      	bne.n	8042cd4 <HAL_RCC_ClockConfig+0x10c>
 8042cd0:	2301      	movs	r3, #1
 8042cd2:	e0a2      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042cd4:	f000 f8b0 	bl	8042e38 <HAL_RCC_GetSysClockFreq>
 8042cd8:	6138      	str	r0, [r7, #16]
 8042cda:	693b      	ldr	r3, [r7, #16]
 8042cdc:	4a53      	ldr	r2, [pc, #332]	@ (8042e2c <HAL_RCC_ClockConfig+0x264>)
 8042cde:	4293      	cmp	r3, r2
 8042ce0:	d90f      	bls.n	8042d02 <HAL_RCC_ClockConfig+0x13a>
 8042ce2:	4b51      	ldr	r3, [pc, #324]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042ce4:	689b      	ldr	r3, [r3, #8]
 8042ce6:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8042cea:	2b00      	cmp	r3, #0
 8042cec:	d109      	bne.n	8042d02 <HAL_RCC_ClockConfig+0x13a>
 8042cee:	4b4e      	ldr	r3, [pc, #312]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042cf0:	689b      	ldr	r3, [r3, #8]
 8042cf2:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8042cf6:	4a4c      	ldr	r2, [pc, #304]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042cf8:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8042cfc:	6093      	str	r3, [r2, #8]
 8042cfe:	2380      	movs	r3, #128	@ 0x80
 8042d00:	617b      	str	r3, [r7, #20]
 8042d02:	4b49      	ldr	r3, [pc, #292]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d04:	689b      	ldr	r3, [r3, #8]
 8042d06:	f023 0203 	bic.w	r2, r3, #3
 8042d0a:	687b      	ldr	r3, [r7, #4]
 8042d0c:	685b      	ldr	r3, [r3, #4]
 8042d0e:	4946      	ldr	r1, [pc, #280]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d10:	4313      	orrs	r3, r2
 8042d12:	608b      	str	r3, [r1, #8]
 8042d14:	f7fe fc30 	bl	8041578 <HAL_GetTick>
 8042d18:	60f8      	str	r0, [r7, #12]
 8042d1a:	e013      	b.n	8042d44 <HAL_RCC_ClockConfig+0x17c>
 8042d1c:	f7fe fc2c 	bl	8041578 <HAL_GetTick>
 8042d20:	4602      	mov	r2, r0
 8042d22:	68fb      	ldr	r3, [r7, #12]
 8042d24:	1ad3      	subs	r3, r2, r3
 8042d26:	f241 3288 	movw	r2, #5000	@ 0x1388
 8042d2a:	4293      	cmp	r3, r2
 8042d2c:	d90a      	bls.n	8042d44 <HAL_RCC_ClockConfig+0x17c>
 8042d2e:	4b3e      	ldr	r3, [pc, #248]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d30:	689b      	ldr	r3, [r3, #8]
 8042d32:	f003 020c 	and.w	r2, r3, #12
 8042d36:	687b      	ldr	r3, [r7, #4]
 8042d38:	685b      	ldr	r3, [r3, #4]
 8042d3a:	009b      	lsls	r3, r3, #2
 8042d3c:	429a      	cmp	r2, r3
 8042d3e:	d001      	beq.n	8042d44 <HAL_RCC_ClockConfig+0x17c>
 8042d40:	2303      	movs	r3, #3
 8042d42:	e06a      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042d44:	4b38      	ldr	r3, [pc, #224]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d46:	689b      	ldr	r3, [r3, #8]
 8042d48:	f003 020c 	and.w	r2, r3, #12
 8042d4c:	687b      	ldr	r3, [r7, #4]
 8042d4e:	685b      	ldr	r3, [r3, #4]
 8042d50:	009b      	lsls	r3, r3, #2
 8042d52:	429a      	cmp	r2, r3
 8042d54:	d1e2      	bne.n	8042d1c <HAL_RCC_ClockConfig+0x154>
 8042d56:	697b      	ldr	r3, [r7, #20]
 8042d58:	2b80      	cmp	r3, #128	@ 0x80
 8042d5a:	d105      	bne.n	8042d68 <HAL_RCC_ClockConfig+0x1a0>
 8042d5c:	4b32      	ldr	r3, [pc, #200]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d5e:	689b      	ldr	r3, [r3, #8]
 8042d60:	4a31      	ldr	r2, [pc, #196]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d62:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8042d66:	6093      	str	r3, [r2, #8]
 8042d68:	687b      	ldr	r3, [r7, #4]
 8042d6a:	681b      	ldr	r3, [r3, #0]
 8042d6c:	f003 0302 	and.w	r3, r3, #2
 8042d70:	2b00      	cmp	r3, #0
 8042d72:	d010      	beq.n	8042d96 <HAL_RCC_ClockConfig+0x1ce>
 8042d74:	687b      	ldr	r3, [r7, #4]
 8042d76:	689a      	ldr	r2, [r3, #8]
 8042d78:	4b2b      	ldr	r3, [pc, #172]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d7a:	689b      	ldr	r3, [r3, #8]
 8042d7c:	f003 03f0 	and.w	r3, r3, #240	@ 0xf0
 8042d80:	429a      	cmp	r2, r3
 8042d82:	d208      	bcs.n	8042d96 <HAL_RCC_ClockConfig+0x1ce>
 8042d84:	4b28      	ldr	r3, [pc, #160]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d86:	689b      	ldr	r3, [r3, #8]
 8042d88:	f023 02f0 	bic.w	r2, r3, #240	@ 0xf0
 8042d8c:	687b      	ldr	r3, [r7, #4]
 8042d8e:	689b      	ldr	r3, [r3, #8]
 8042d90:	4925      	ldr	r1, [pc, #148]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042d92:	4313      	orrs	r3, r2
 8042d94:	608b      	str	r3, [r1, #8]
 8042d96:	4b23      	ldr	r3, [pc, #140]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042d98:	681b      	ldr	r3, [r3, #0]
 8042d9a:	f003 030f 	and.w	r3, r3, #15
 8042d9e:	683a      	ldr	r2, [r7, #0]
 8042da0:	429a      	cmp	r2, r3
 8042da2:	d210      	bcs.n	8042dc6 <HAL_RCC_ClockConfig+0x1fe>
 8042da4:	4b1f      	ldr	r3, [pc, #124]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042da6:	681b      	ldr	r3, [r3, #0]
 8042da8:	f023 020f 	bic.w	r2, r3, #15
 8042dac:	491d      	ldr	r1, [pc, #116]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042dae:	683b      	ldr	r3, [r7, #0]
 8042db0:	4313      	orrs	r3, r2
 8042db2:	600b      	str	r3, [r1, #0]
 8042db4:	4b1b      	ldr	r3, [pc, #108]	@ (8042e24 <HAL_RCC_ClockConfig+0x25c>)
 8042db6:	681b      	ldr	r3, [r3, #0]
 8042db8:	f003 030f 	and.w	r3, r3, #15
 8042dbc:	683a      	ldr	r2, [r7, #0]
 8042dbe:	429a      	cmp	r2, r3
 8042dc0:	d001      	beq.n	8042dc6 <HAL_RCC_ClockConfig+0x1fe>
 8042dc2:	2301      	movs	r3, #1
 8042dc4:	e029      	b.n	8042e1a <HAL_RCC_ClockConfig+0x252>
 8042dc6:	687b      	ldr	r3, [r7, #4]
 8042dc8:	681b      	ldr	r3, [r3, #0]
 8042dca:	f003 0304 	and.w	r3, r3, #4
 8042dce:	2b00      	cmp	r3, #0
 8042dd0:	d008      	beq.n	8042de4 <HAL_RCC_ClockConfig+0x21c>
 8042dd2:	4b15      	ldr	r3, [pc, #84]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042dd4:	689b      	ldr	r3, [r3, #8]
 8042dd6:	f423 62e0 	bic.w	r2, r3, #1792	@ 0x700
 8042dda:	687b      	ldr	r3, [r7, #4]
 8042ddc:	68db      	ldr	r3, [r3, #12]
 8042dde:	4912      	ldr	r1, [pc, #72]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042de0:	4313      	orrs	r3, r2
 8042de2:	608b      	str	r3, [r1, #8]
 8042de4:	687b      	ldr	r3, [r7, #4]
 8042de6:	681b      	ldr	r3, [r3, #0]
 8042de8:	f003 0308 	and.w	r3, r3, #8
 8042dec:	2b00      	cmp	r3, #0
 8042dee:	d009      	beq.n	8042e04 <HAL_RCC_ClockConfig+0x23c>
 8042df0:	4b0d      	ldr	r3, [pc, #52]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042df2:	689b      	ldr	r3, [r3, #8]
 8042df4:	f423 5260 	bic.w	r2, r3, #14336	@ 0x3800
 8042df8:	687b      	ldr	r3, [r7, #4]
 8042dfa:	691b      	ldr	r3, [r3, #16]
 8042dfc:	00db      	lsls	r3, r3, #3
 8042dfe:	490a      	ldr	r1, [pc, #40]	@ (8042e28 <HAL_RCC_ClockConfig+0x260>)
 8042e00:	4313      	orrs	r3, r2
 8042e02:	608b      	str	r3, [r1, #8]
 8042e04:	f000 f8b6 	bl	8042f74 <HAL_RCC_GetHCLKFreq>
 8042e08:	4603      	mov	r3, r0
 8042e0a:	4a09      	ldr	r2, [pc, #36]	@ (8042e30 <HAL_RCC_ClockConfig+0x268>)
 8042e0c:	6013      	str	r3, [r2, #0]
 8042e0e:	4b09      	ldr	r3, [pc, #36]	@ (8042e34 <HAL_RCC_ClockConfig+0x26c>)
 8042e10:	681b      	ldr	r3, [r3, #0]
 8042e12:	4618      	mov	r0, r3
 8042e14:	f7fe fb60 	bl	80414d8 <HAL_InitTick>
 8042e18:	4603      	mov	r3, r0
 8042e1a:	4618      	mov	r0, r3
 8042e1c:	3718      	adds	r7, #24
 8042e1e:	46bd      	mov	sp, r7
 8042e20:	bd80      	pop	{r7, pc}
 8042e22:	bf00      	nop
 8042e24:	40022000 	.word	0x40022000
 8042e28:	40021000 	.word	0x40021000
 8042e2c:	04c4b400 	.word	0x04c4b400
 8042e30:	20018020 	.word	0x20018020
 8042e34:	20018024 	.word	0x20018024

08042e38 <HAL_RCC_GetSysClockFreq>:
 8042e38:	b480      	push	{r7}
 8042e3a:	b089      	sub	sp, #36	@ 0x24
 8042e3c:	af00      	add	r7, sp, #0
 8042e3e:	2300      	movs	r3, #0
 8042e40:	61fb      	str	r3, [r7, #28]
 8042e42:	2300      	movs	r3, #0
 8042e44:	61bb      	str	r3, [r7, #24]
 8042e46:	4b47      	ldr	r3, [pc, #284]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042e48:	689b      	ldr	r3, [r3, #8]
 8042e4a:	f003 030c 	and.w	r3, r3, #12
 8042e4e:	613b      	str	r3, [r7, #16]
 8042e50:	4b44      	ldr	r3, [pc, #272]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042e52:	68db      	ldr	r3, [r3, #12]
 8042e54:	f003 0303 	and.w	r3, r3, #3
 8042e58:	60fb      	str	r3, [r7, #12]
 8042e5a:	693b      	ldr	r3, [r7, #16]
 8042e5c:	2b00      	cmp	r3, #0
 8042e5e:	d005      	beq.n	8042e6c <HAL_RCC_GetSysClockFreq+0x34>
 8042e60:	693b      	ldr	r3, [r7, #16]
 8042e62:	2b0c      	cmp	r3, #12
 8042e64:	d121      	bne.n	8042eaa <HAL_RCC_GetSysClockFreq+0x72>
 8042e66:	68fb      	ldr	r3, [r7, #12]
 8042e68:	2b01      	cmp	r3, #1
 8042e6a:	d11e      	bne.n	8042eaa <HAL_RCC_GetSysClockFreq+0x72>
 8042e6c:	4b3d      	ldr	r3, [pc, #244]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042e6e:	681b      	ldr	r3, [r3, #0]
 8042e70:	f003 0308 	and.w	r3, r3, #8
 8042e74:	2b00      	cmp	r3, #0
 8042e76:	d107      	bne.n	8042e88 <HAL_RCC_GetSysClockFreq+0x50>
 8042e78:	4b3a      	ldr	r3, [pc, #232]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042e7a:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8042e7e:	0a1b      	lsrs	r3, r3, #8
 8042e80:	f003 030f 	and.w	r3, r3, #15
 8042e84:	61fb      	str	r3, [r7, #28]
 8042e86:	e005      	b.n	8042e94 <HAL_RCC_GetSysClockFreq+0x5c>
 8042e88:	4b36      	ldr	r3, [pc, #216]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042e8a:	681b      	ldr	r3, [r3, #0]
 8042e8c:	091b      	lsrs	r3, r3, #4
 8042e8e:	f003 030f 	and.w	r3, r3, #15
 8042e92:	61fb      	str	r3, [r7, #28]
 8042e94:	4a34      	ldr	r2, [pc, #208]	@ (8042f68 <HAL_RCC_GetSysClockFreq+0x130>)
 8042e96:	69fb      	ldr	r3, [r7, #28]
 8042e98:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8042e9c:	61fb      	str	r3, [r7, #28]
 8042e9e:	693b      	ldr	r3, [r7, #16]
 8042ea0:	2b00      	cmp	r3, #0
 8042ea2:	d10d      	bne.n	8042ec0 <HAL_RCC_GetSysClockFreq+0x88>
 8042ea4:	69fb      	ldr	r3, [r7, #28]
 8042ea6:	61bb      	str	r3, [r7, #24]
 8042ea8:	e00a      	b.n	8042ec0 <HAL_RCC_GetSysClockFreq+0x88>
 8042eaa:	693b      	ldr	r3, [r7, #16]
 8042eac:	2b04      	cmp	r3, #4
 8042eae:	d102      	bne.n	8042eb6 <HAL_RCC_GetSysClockFreq+0x7e>
 8042eb0:	4b2e      	ldr	r3, [pc, #184]	@ (8042f6c <HAL_RCC_GetSysClockFreq+0x134>)
 8042eb2:	61bb      	str	r3, [r7, #24]
 8042eb4:	e004      	b.n	8042ec0 <HAL_RCC_GetSysClockFreq+0x88>
 8042eb6:	693b      	ldr	r3, [r7, #16]
 8042eb8:	2b08      	cmp	r3, #8
 8042eba:	d101      	bne.n	8042ec0 <HAL_RCC_GetSysClockFreq+0x88>
 8042ebc:	4b2c      	ldr	r3, [pc, #176]	@ (8042f70 <HAL_RCC_GetSysClockFreq+0x138>)
 8042ebe:	61bb      	str	r3, [r7, #24]
 8042ec0:	693b      	ldr	r3, [r7, #16]
 8042ec2:	2b0c      	cmp	r3, #12
 8042ec4:	d146      	bne.n	8042f54 <HAL_RCC_GetSysClockFreq+0x11c>
 8042ec6:	4b27      	ldr	r3, [pc, #156]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042ec8:	68db      	ldr	r3, [r3, #12]
 8042eca:	f003 0303 	and.w	r3, r3, #3
 8042ece:	60bb      	str	r3, [r7, #8]
 8042ed0:	4b24      	ldr	r3, [pc, #144]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042ed2:	68db      	ldr	r3, [r3, #12]
 8042ed4:	091b      	lsrs	r3, r3, #4
 8042ed6:	f003 030f 	and.w	r3, r3, #15
 8042eda:	3301      	adds	r3, #1
 8042edc:	607b      	str	r3, [r7, #4]
 8042ede:	68bb      	ldr	r3, [r7, #8]
 8042ee0:	2b02      	cmp	r3, #2
 8042ee2:	d003      	beq.n	8042eec <HAL_RCC_GetSysClockFreq+0xb4>
 8042ee4:	68bb      	ldr	r3, [r7, #8]
 8042ee6:	2b03      	cmp	r3, #3
 8042ee8:	d00d      	beq.n	8042f06 <HAL_RCC_GetSysClockFreq+0xce>
 8042eea:	e019      	b.n	8042f20 <HAL_RCC_GetSysClockFreq+0xe8>
 8042eec:	4a1f      	ldr	r2, [pc, #124]	@ (8042f6c <HAL_RCC_GetSysClockFreq+0x134>)
 8042eee:	687b      	ldr	r3, [r7, #4]
 8042ef0:	fbb2 f3f3 	udiv	r3, r2, r3
 8042ef4:	4a1b      	ldr	r2, [pc, #108]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042ef6:	68d2      	ldr	r2, [r2, #12]
 8042ef8:	0a12      	lsrs	r2, r2, #8
 8042efa:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 8042efe:	fb02 f303 	mul.w	r3, r2, r3
 8042f02:	617b      	str	r3, [r7, #20]
 8042f04:	e019      	b.n	8042f3a <HAL_RCC_GetSysClockFreq+0x102>
 8042f06:	4a1a      	ldr	r2, [pc, #104]	@ (8042f70 <HAL_RCC_GetSysClockFreq+0x138>)
 8042f08:	687b      	ldr	r3, [r7, #4]
 8042f0a:	fbb2 f3f3 	udiv	r3, r2, r3
 8042f0e:	4a15      	ldr	r2, [pc, #84]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042f10:	68d2      	ldr	r2, [r2, #12]
 8042f12:	0a12      	lsrs	r2, r2, #8
 8042f14:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 8042f18:	fb02 f303 	mul.w	r3, r2, r3
 8042f1c:	617b      	str	r3, [r7, #20]
 8042f1e:	e00c      	b.n	8042f3a <HAL_RCC_GetSysClockFreq+0x102>
 8042f20:	69fa      	ldr	r2, [r7, #28]
 8042f22:	687b      	ldr	r3, [r7, #4]
 8042f24:	fbb2 f3f3 	udiv	r3, r2, r3
 8042f28:	4a0e      	ldr	r2, [pc, #56]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042f2a:	68d2      	ldr	r2, [r2, #12]
 8042f2c:	0a12      	lsrs	r2, r2, #8
 8042f2e:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 8042f32:	fb02 f303 	mul.w	r3, r2, r3
 8042f36:	617b      	str	r3, [r7, #20]
 8042f38:	bf00      	nop
 8042f3a:	4b0a      	ldr	r3, [pc, #40]	@ (8042f64 <HAL_RCC_GetSysClockFreq+0x12c>)
 8042f3c:	68db      	ldr	r3, [r3, #12]
 8042f3e:	0e5b      	lsrs	r3, r3, #25
 8042f40:	f003 0303 	and.w	r3, r3, #3
 8042f44:	3301      	adds	r3, #1
 8042f46:	005b      	lsls	r3, r3, #1
 8042f48:	603b      	str	r3, [r7, #0]
 8042f4a:	697a      	ldr	r2, [r7, #20]
 8042f4c:	683b      	ldr	r3, [r7, #0]
 8042f4e:	fbb2 f3f3 	udiv	r3, r2, r3
 8042f52:	61bb      	str	r3, [r7, #24]
 8042f54:	69bb      	ldr	r3, [r7, #24]
 8042f56:	4618      	mov	r0, r3
 8042f58:	3724      	adds	r7, #36	@ 0x24
 8042f5a:	46bd      	mov	sp, r7
 8042f5c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8042f60:	4770      	bx	lr
 8042f62:	bf00      	nop
 8042f64:	40021000 	.word	0x40021000
 8042f68:	080461e8 	.word	0x080461e8
 8042f6c:	00f42400 	.word	0x00f42400
 8042f70:	007a1200 	.word	0x007a1200

08042f74 <HAL_RCC_GetHCLKFreq>:
 8042f74:	b580      	push	{r7, lr}
 8042f76:	af00      	add	r7, sp, #0
 8042f78:	f7ff ff5e 	bl	8042e38 <HAL_RCC_GetSysClockFreq>
 8042f7c:	4602      	mov	r2, r0
 8042f7e:	4b05      	ldr	r3, [pc, #20]	@ (8042f94 <HAL_RCC_GetHCLKFreq+0x20>)
 8042f80:	689b      	ldr	r3, [r3, #8]
 8042f82:	091b      	lsrs	r3, r3, #4
 8042f84:	f003 030f 	and.w	r3, r3, #15
 8042f88:	4903      	ldr	r1, [pc, #12]	@ (8042f98 <HAL_RCC_GetHCLKFreq+0x24>)
 8042f8a:	5ccb      	ldrb	r3, [r1, r3]
 8042f8c:	fa22 f303 	lsr.w	r3, r2, r3
 8042f90:	4618      	mov	r0, r3
 8042f92:	bd80      	pop	{r7, pc}
 8042f94:	40021000 	.word	0x40021000
 8042f98:	080461d0 	.word	0x080461d0

08042f9c <HAL_RCC_GetPCLK1Freq>:
 8042f9c:	b580      	push	{r7, lr}
 8042f9e:	af00      	add	r7, sp, #0
 8042fa0:	f7ff ffe8 	bl	8042f74 <HAL_RCC_GetHCLKFreq>
 8042fa4:	4602      	mov	r2, r0
 8042fa6:	4b05      	ldr	r3, [pc, #20]	@ (8042fbc <HAL_RCC_GetPCLK1Freq+0x20>)
 8042fa8:	689b      	ldr	r3, [r3, #8]
 8042faa:	0a1b      	lsrs	r3, r3, #8
 8042fac:	f003 0307 	and.w	r3, r3, #7
 8042fb0:	4903      	ldr	r1, [pc, #12]	@ (8042fc0 <HAL_RCC_GetPCLK1Freq+0x24>)
 8042fb2:	5ccb      	ldrb	r3, [r1, r3]
 8042fb4:	fa22 f303 	lsr.w	r3, r2, r3
 8042fb8:	4618      	mov	r0, r3
 8042fba:	bd80      	pop	{r7, pc}
 8042fbc:	40021000 	.word	0x40021000
 8042fc0:	080461e0 	.word	0x080461e0

08042fc4 <HAL_RCC_GetPCLK2Freq>:
 8042fc4:	b580      	push	{r7, lr}
 8042fc6:	af00      	add	r7, sp, #0
 8042fc8:	f7ff ffd4 	bl	8042f74 <HAL_RCC_GetHCLKFreq>
 8042fcc:	4602      	mov	r2, r0
 8042fce:	4b05      	ldr	r3, [pc, #20]	@ (8042fe4 <HAL_RCC_GetPCLK2Freq+0x20>)
 8042fd0:	689b      	ldr	r3, [r3, #8]
 8042fd2:	0adb      	lsrs	r3, r3, #11
 8042fd4:	f003 0307 	and.w	r3, r3, #7
 8042fd8:	4903      	ldr	r1, [pc, #12]	@ (8042fe8 <HAL_RCC_GetPCLK2Freq+0x24>)
 8042fda:	5ccb      	ldrb	r3, [r1, r3]
 8042fdc:	fa22 f303 	lsr.w	r3, r2, r3
 8042fe0:	4618      	mov	r0, r3
 8042fe2:	bd80      	pop	{r7, pc}
 8042fe4:	40021000 	.word	0x40021000
 8042fe8:	080461e0 	.word	0x080461e0

08042fec <RCC_SetFlashLatencyFromMSIRange>:
 8042fec:	b580      	push	{r7, lr}
 8042fee:	b086      	sub	sp, #24
 8042ff0:	af00      	add	r7, sp, #0
 8042ff2:	6078      	str	r0, [r7, #4]
 8042ff4:	2300      	movs	r3, #0
 8042ff6:	617b      	str	r3, [r7, #20]
 8042ff8:	4b2c      	ldr	r3, [pc, #176]	@ (80430ac <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8042ffa:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8042ffc:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8043000:	2b00      	cmp	r3, #0
 8043002:	d003      	beq.n	804300c <RCC_SetFlashLatencyFromMSIRange+0x20>
 8043004:	f7ff f86c 	bl	80420e0 <HAL_PWREx_GetVoltageRange>
 8043008:	6138      	str	r0, [r7, #16]
 804300a:	e014      	b.n	8043036 <RCC_SetFlashLatencyFromMSIRange+0x4a>
 804300c:	4b27      	ldr	r3, [pc, #156]	@ (80430ac <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 804300e:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8043010:	4a26      	ldr	r2, [pc, #152]	@ (80430ac <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8043012:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8043016:	6593      	str	r3, [r2, #88]	@ 0x58
 8043018:	4b24      	ldr	r3, [pc, #144]	@ (80430ac <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 804301a:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 804301c:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8043020:	60fb      	str	r3, [r7, #12]
 8043022:	68fb      	ldr	r3, [r7, #12]
 8043024:	f7ff f85c 	bl	80420e0 <HAL_PWREx_GetVoltageRange>
 8043028:	6138      	str	r0, [r7, #16]
 804302a:	4b20      	ldr	r3, [pc, #128]	@ (80430ac <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 804302c:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 804302e:	4a1f      	ldr	r2, [pc, #124]	@ (80430ac <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8043030:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8043034:	6593      	str	r3, [r2, #88]	@ 0x58
 8043036:	693b      	ldr	r3, [r7, #16]
 8043038:	2b00      	cmp	r3, #0
 804303a:	d003      	beq.n	8043044 <RCC_SetFlashLatencyFromMSIRange+0x58>
 804303c:	693b      	ldr	r3, [r7, #16]
 804303e:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8043042:	d10b      	bne.n	804305c <RCC_SetFlashLatencyFromMSIRange+0x70>
 8043044:	687b      	ldr	r3, [r7, #4]
 8043046:	2b80      	cmp	r3, #128	@ 0x80
 8043048:	d919      	bls.n	804307e <RCC_SetFlashLatencyFromMSIRange+0x92>
 804304a:	687b      	ldr	r3, [r7, #4]
 804304c:	2ba0      	cmp	r3, #160	@ 0xa0
 804304e:	d902      	bls.n	8043056 <RCC_SetFlashLatencyFromMSIRange+0x6a>
 8043050:	2302      	movs	r3, #2
 8043052:	617b      	str	r3, [r7, #20]
 8043054:	e013      	b.n	804307e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8043056:	2301      	movs	r3, #1
 8043058:	617b      	str	r3, [r7, #20]
 804305a:	e010      	b.n	804307e <RCC_SetFlashLatencyFromMSIRange+0x92>
 804305c:	687b      	ldr	r3, [r7, #4]
 804305e:	2b80      	cmp	r3, #128	@ 0x80
 8043060:	d902      	bls.n	8043068 <RCC_SetFlashLatencyFromMSIRange+0x7c>
 8043062:	2303      	movs	r3, #3
 8043064:	617b      	str	r3, [r7, #20]
 8043066:	e00a      	b.n	804307e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8043068:	687b      	ldr	r3, [r7, #4]
 804306a:	2b80      	cmp	r3, #128	@ 0x80
 804306c:	d102      	bne.n	8043074 <RCC_SetFlashLatencyFromMSIRange+0x88>
 804306e:	2302      	movs	r3, #2
 8043070:	617b      	str	r3, [r7, #20]
 8043072:	e004      	b.n	804307e <RCC_SetFlashLatencyFromMSIRange+0x92>
 8043074:	687b      	ldr	r3, [r7, #4]
 8043076:	2b70      	cmp	r3, #112	@ 0x70
 8043078:	d101      	bne.n	804307e <RCC_SetFlashLatencyFromMSIRange+0x92>
 804307a:	2301      	movs	r3, #1
 804307c:	617b      	str	r3, [r7, #20]
 804307e:	4b0c      	ldr	r3, [pc, #48]	@ (80430b0 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8043080:	681b      	ldr	r3, [r3, #0]
 8043082:	f023 020f 	bic.w	r2, r3, #15
 8043086:	490a      	ldr	r1, [pc, #40]	@ (80430b0 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8043088:	697b      	ldr	r3, [r7, #20]
 804308a:	4313      	orrs	r3, r2
 804308c:	600b      	str	r3, [r1, #0]
 804308e:	4b08      	ldr	r3, [pc, #32]	@ (80430b0 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8043090:	681b      	ldr	r3, [r3, #0]
 8043092:	f003 030f 	and.w	r3, r3, #15
 8043096:	697a      	ldr	r2, [r7, #20]
 8043098:	429a      	cmp	r2, r3
 804309a:	d001      	beq.n	80430a0 <RCC_SetFlashLatencyFromMSIRange+0xb4>
 804309c:	2301      	movs	r3, #1
 804309e:	e000      	b.n	80430a2 <RCC_SetFlashLatencyFromMSIRange+0xb6>
 80430a0:	2300      	movs	r3, #0
 80430a2:	4618      	mov	r0, r3
 80430a4:	3718      	adds	r7, #24
 80430a6:	46bd      	mov	sp, r7
 80430a8:	bd80      	pop	{r7, pc}
 80430aa:	bf00      	nop
 80430ac:	40021000 	.word	0x40021000
 80430b0:	40022000 	.word	0x40022000

080430b4 <RCC_GetSysClockFreqFromPLLSource>:
 80430b4:	b480      	push	{r7}
 80430b6:	b087      	sub	sp, #28
 80430b8:	af00      	add	r7, sp, #0
 80430ba:	4b31      	ldr	r3, [pc, #196]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 80430bc:	68db      	ldr	r3, [r3, #12]
 80430be:	f003 0303 	and.w	r3, r3, #3
 80430c2:	60fb      	str	r3, [r7, #12]
 80430c4:	4b2e      	ldr	r3, [pc, #184]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 80430c6:	68db      	ldr	r3, [r3, #12]
 80430c8:	091b      	lsrs	r3, r3, #4
 80430ca:	f003 030f 	and.w	r3, r3, #15
 80430ce:	3301      	adds	r3, #1
 80430d0:	60bb      	str	r3, [r7, #8]
 80430d2:	68fb      	ldr	r3, [r7, #12]
 80430d4:	2b03      	cmp	r3, #3
 80430d6:	d015      	beq.n	8043104 <RCC_GetSysClockFreqFromPLLSource+0x50>
 80430d8:	68fb      	ldr	r3, [r7, #12]
 80430da:	2b03      	cmp	r3, #3
 80430dc:	d839      	bhi.n	8043152 <RCC_GetSysClockFreqFromPLLSource+0x9e>
 80430de:	68fb      	ldr	r3, [r7, #12]
 80430e0:	2b01      	cmp	r3, #1
 80430e2:	d01c      	beq.n	804311e <RCC_GetSysClockFreqFromPLLSource+0x6a>
 80430e4:	68fb      	ldr	r3, [r7, #12]
 80430e6:	2b02      	cmp	r3, #2
 80430e8:	d133      	bne.n	8043152 <RCC_GetSysClockFreqFromPLLSource+0x9e>
 80430ea:	4a26      	ldr	r2, [pc, #152]	@ (8043184 <RCC_GetSysClockFreqFromPLLSource+0xd0>)
 80430ec:	68bb      	ldr	r3, [r7, #8]
 80430ee:	fbb2 f3f3 	udiv	r3, r2, r3
 80430f2:	4a23      	ldr	r2, [pc, #140]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 80430f4:	68d2      	ldr	r2, [r2, #12]
 80430f6:	0a12      	lsrs	r2, r2, #8
 80430f8:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 80430fc:	fb02 f303 	mul.w	r3, r2, r3
 8043100:	613b      	str	r3, [r7, #16]
 8043102:	e029      	b.n	8043158 <RCC_GetSysClockFreqFromPLLSource+0xa4>
 8043104:	4a20      	ldr	r2, [pc, #128]	@ (8043188 <RCC_GetSysClockFreqFromPLLSource+0xd4>)
 8043106:	68bb      	ldr	r3, [r7, #8]
 8043108:	fbb2 f3f3 	udiv	r3, r2, r3
 804310c:	4a1c      	ldr	r2, [pc, #112]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 804310e:	68d2      	ldr	r2, [r2, #12]
 8043110:	0a12      	lsrs	r2, r2, #8
 8043112:	f002 027f 	and.w	r2, r2, #127	@ 0x7f
 8043116:	fb02 f303 	mul.w	r3, r2, r3
 804311a:	613b      	str	r3, [r7, #16]
 804311c:	e01c      	b.n	8043158 <RCC_GetSysClockFreqFromPLLSource+0xa4>
 804311e:	4b18      	ldr	r3, [pc, #96]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 8043120:	681b      	ldr	r3, [r3, #0]
 8043122:	f003 0308 	and.w	r3, r3, #8
 8043126:	2b00      	cmp	r3, #0
 8043128:	d107      	bne.n	804313a <RCC_GetSysClockFreqFromPLLSource+0x86>
 804312a:	4b15      	ldr	r3, [pc, #84]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 804312c:	f8d3 3094 	ldr.w	r3, [r3, #148]	@ 0x94
 8043130:	0a1b      	lsrs	r3, r3, #8
 8043132:	f003 030f 	and.w	r3, r3, #15
 8043136:	617b      	str	r3, [r7, #20]
 8043138:	e005      	b.n	8043146 <RCC_GetSysClockFreqFromPLLSource+0x92>
 804313a:	4b11      	ldr	r3, [pc, #68]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 804313c:	681b      	ldr	r3, [r3, #0]
 804313e:	091b      	lsrs	r3, r3, #4
 8043140:	f003 030f 	and.w	r3, r3, #15
 8043144:	617b      	str	r3, [r7, #20]
 8043146:	4a11      	ldr	r2, [pc, #68]	@ (804318c <RCC_GetSysClockFreqFromPLLSource+0xd8>)
 8043148:	697b      	ldr	r3, [r7, #20]
 804314a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 804314e:	613b      	str	r3, [r7, #16]
 8043150:	e002      	b.n	8043158 <RCC_GetSysClockFreqFromPLLSource+0xa4>
 8043152:	2300      	movs	r3, #0
 8043154:	613b      	str	r3, [r7, #16]
 8043156:	bf00      	nop
 8043158:	4b09      	ldr	r3, [pc, #36]	@ (8043180 <RCC_GetSysClockFreqFromPLLSource+0xcc>)
 804315a:	68db      	ldr	r3, [r3, #12]
 804315c:	0e5b      	lsrs	r3, r3, #25
 804315e:	f003 0303 	and.w	r3, r3, #3
 8043162:	3301      	adds	r3, #1
 8043164:	005b      	lsls	r3, r3, #1
 8043166:	607b      	str	r3, [r7, #4]
 8043168:	693a      	ldr	r2, [r7, #16]
 804316a:	687b      	ldr	r3, [r7, #4]
 804316c:	fbb2 f3f3 	udiv	r3, r2, r3
 8043170:	603b      	str	r3, [r7, #0]
 8043172:	683b      	ldr	r3, [r7, #0]
 8043174:	4618      	mov	r0, r3
 8043176:	371c      	adds	r7, #28
 8043178:	46bd      	mov	sp, r7
 804317a:	f85d 7b04 	ldr.w	r7, [sp], #4
 804317e:	4770      	bx	lr
 8043180:	40021000 	.word	0x40021000
 8043184:	00f42400 	.word	0x00f42400
 8043188:	007a1200 	.word	0x007a1200
 804318c:	080461e8 	.word	0x080461e8

08043190 <HAL_RCCEx_PeriphCLKConfig>:
 8043190:	b580      	push	{r7, lr}
 8043192:	b088      	sub	sp, #32
 8043194:	af00      	add	r7, sp, #0
 8043196:	6078      	str	r0, [r7, #4]
 8043198:	2300      	movs	r3, #0
 804319a:	77fb      	strb	r3, [r7, #31]
 804319c:	2300      	movs	r3, #0
 804319e:	77bb      	strb	r3, [r7, #30]
 80431a0:	687b      	ldr	r3, [r7, #4]
 80431a2:	681b      	ldr	r3, [r3, #0]
 80431a4:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 80431a8:	2b00      	cmp	r3, #0
 80431aa:	d040      	beq.n	804322e <HAL_RCCEx_PeriphCLKConfig+0x9e>
 80431ac:	687b      	ldr	r3, [r7, #4]
 80431ae:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 80431b0:	2b80      	cmp	r3, #128	@ 0x80
 80431b2:	d02a      	beq.n	804320a <HAL_RCCEx_PeriphCLKConfig+0x7a>
 80431b4:	2b80      	cmp	r3, #128	@ 0x80
 80431b6:	d825      	bhi.n	8043204 <HAL_RCCEx_PeriphCLKConfig+0x74>
 80431b8:	2b60      	cmp	r3, #96	@ 0x60
 80431ba:	d026      	beq.n	804320a <HAL_RCCEx_PeriphCLKConfig+0x7a>
 80431bc:	2b60      	cmp	r3, #96	@ 0x60
 80431be:	d821      	bhi.n	8043204 <HAL_RCCEx_PeriphCLKConfig+0x74>
 80431c0:	2b40      	cmp	r3, #64	@ 0x40
 80431c2:	d006      	beq.n	80431d2 <HAL_RCCEx_PeriphCLKConfig+0x42>
 80431c4:	2b40      	cmp	r3, #64	@ 0x40
 80431c6:	d81d      	bhi.n	8043204 <HAL_RCCEx_PeriphCLKConfig+0x74>
 80431c8:	2b00      	cmp	r3, #0
 80431ca:	d009      	beq.n	80431e0 <HAL_RCCEx_PeriphCLKConfig+0x50>
 80431cc:	2b20      	cmp	r3, #32
 80431ce:	d010      	beq.n	80431f2 <HAL_RCCEx_PeriphCLKConfig+0x62>
 80431d0:	e018      	b.n	8043204 <HAL_RCCEx_PeriphCLKConfig+0x74>
 80431d2:	4b8f      	ldr	r3, [pc, #572]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80431d4:	68db      	ldr	r3, [r3, #12]
 80431d6:	4a8e      	ldr	r2, [pc, #568]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80431d8:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 80431dc:	60d3      	str	r3, [r2, #12]
 80431de:	e015      	b.n	804320c <HAL_RCCEx_PeriphCLKConfig+0x7c>
 80431e0:	687b      	ldr	r3, [r7, #4]
 80431e2:	3304      	adds	r3, #4
 80431e4:	2100      	movs	r1, #0
 80431e6:	4618      	mov	r0, r3
 80431e8:	f000 fb56 	bl	8043898 <RCCEx_PLLSAI1_Config>
 80431ec:	4603      	mov	r3, r0
 80431ee:	77fb      	strb	r3, [r7, #31]
 80431f0:	e00c      	b.n	804320c <HAL_RCCEx_PeriphCLKConfig+0x7c>
 80431f2:	687b      	ldr	r3, [r7, #4]
 80431f4:	3320      	adds	r3, #32
 80431f6:	2100      	movs	r1, #0
 80431f8:	4618      	mov	r0, r3
 80431fa:	f000 fc33 	bl	8043a64 <RCCEx_PLLSAI2_Config>
 80431fe:	4603      	mov	r3, r0
 8043200:	77fb      	strb	r3, [r7, #31]
 8043202:	e003      	b.n	804320c <HAL_RCCEx_PeriphCLKConfig+0x7c>
 8043204:	2301      	movs	r3, #1
 8043206:	77fb      	strb	r3, [r7, #31]
 8043208:	e000      	b.n	804320c <HAL_RCCEx_PeriphCLKConfig+0x7c>
 804320a:	bf00      	nop
 804320c:	7ffb      	ldrb	r3, [r7, #31]
 804320e:	2b00      	cmp	r3, #0
 8043210:	d10b      	bne.n	804322a <HAL_RCCEx_PeriphCLKConfig+0x9a>
 8043212:	4b7f      	ldr	r3, [pc, #508]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043214:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8043218:	f023 02e0 	bic.w	r2, r3, #224	@ 0xe0
 804321c:	687b      	ldr	r3, [r7, #4]
 804321e:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8043220:	497b      	ldr	r1, [pc, #492]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043222:	4313      	orrs	r3, r2
 8043224:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 8043228:	e001      	b.n	804322e <HAL_RCCEx_PeriphCLKConfig+0x9e>
 804322a:	7ffb      	ldrb	r3, [r7, #31]
 804322c:	77bb      	strb	r3, [r7, #30]
 804322e:	687b      	ldr	r3, [r7, #4]
 8043230:	681b      	ldr	r3, [r3, #0]
 8043232:	f403 5380 	and.w	r3, r3, #4096	@ 0x1000
 8043236:	2b00      	cmp	r3, #0
 8043238:	d047      	beq.n	80432ca <HAL_RCCEx_PeriphCLKConfig+0x13a>
 804323a:	687b      	ldr	r3, [r7, #4]
 804323c:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 804323e:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8043242:	d030      	beq.n	80432a6 <HAL_RCCEx_PeriphCLKConfig+0x116>
 8043244:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 8043248:	d82a      	bhi.n	80432a0 <HAL_RCCEx_PeriphCLKConfig+0x110>
 804324a:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 804324e:	d02a      	beq.n	80432a6 <HAL_RCCEx_PeriphCLKConfig+0x116>
 8043250:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8043254:	d824      	bhi.n	80432a0 <HAL_RCCEx_PeriphCLKConfig+0x110>
 8043256:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 804325a:	d008      	beq.n	804326e <HAL_RCCEx_PeriphCLKConfig+0xde>
 804325c:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8043260:	d81e      	bhi.n	80432a0 <HAL_RCCEx_PeriphCLKConfig+0x110>
 8043262:	2b00      	cmp	r3, #0
 8043264:	d00a      	beq.n	804327c <HAL_RCCEx_PeriphCLKConfig+0xec>
 8043266:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 804326a:	d010      	beq.n	804328e <HAL_RCCEx_PeriphCLKConfig+0xfe>
 804326c:	e018      	b.n	80432a0 <HAL_RCCEx_PeriphCLKConfig+0x110>
 804326e:	4b68      	ldr	r3, [pc, #416]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043270:	68db      	ldr	r3, [r3, #12]
 8043272:	4a67      	ldr	r2, [pc, #412]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043274:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8043278:	60d3      	str	r3, [r2, #12]
 804327a:	e015      	b.n	80432a8 <HAL_RCCEx_PeriphCLKConfig+0x118>
 804327c:	687b      	ldr	r3, [r7, #4]
 804327e:	3304      	adds	r3, #4
 8043280:	2100      	movs	r1, #0
 8043282:	4618      	mov	r0, r3
 8043284:	f000 fb08 	bl	8043898 <RCCEx_PLLSAI1_Config>
 8043288:	4603      	mov	r3, r0
 804328a:	77fb      	strb	r3, [r7, #31]
 804328c:	e00c      	b.n	80432a8 <HAL_RCCEx_PeriphCLKConfig+0x118>
 804328e:	687b      	ldr	r3, [r7, #4]
 8043290:	3320      	adds	r3, #32
 8043292:	2100      	movs	r1, #0
 8043294:	4618      	mov	r0, r3
 8043296:	f000 fbe5 	bl	8043a64 <RCCEx_PLLSAI2_Config>
 804329a:	4603      	mov	r3, r0
 804329c:	77fb      	strb	r3, [r7, #31]
 804329e:	e003      	b.n	80432a8 <HAL_RCCEx_PeriphCLKConfig+0x118>
 80432a0:	2301      	movs	r3, #1
 80432a2:	77fb      	strb	r3, [r7, #31]
 80432a4:	e000      	b.n	80432a8 <HAL_RCCEx_PeriphCLKConfig+0x118>
 80432a6:	bf00      	nop
 80432a8:	7ffb      	ldrb	r3, [r7, #31]
 80432aa:	2b00      	cmp	r3, #0
 80432ac:	d10b      	bne.n	80432c6 <HAL_RCCEx_PeriphCLKConfig+0x136>
 80432ae:	4b58      	ldr	r3, [pc, #352]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80432b0:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 80432b4:	f423 62e0 	bic.w	r2, r3, #1792	@ 0x700
 80432b8:	687b      	ldr	r3, [r7, #4]
 80432ba:	6f1b      	ldr	r3, [r3, #112]	@ 0x70
 80432bc:	4954      	ldr	r1, [pc, #336]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80432be:	4313      	orrs	r3, r2
 80432c0:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 80432c4:	e001      	b.n	80432ca <HAL_RCCEx_PeriphCLKConfig+0x13a>
 80432c6:	7ffb      	ldrb	r3, [r7, #31]
 80432c8:	77bb      	strb	r3, [r7, #30]
 80432ca:	687b      	ldr	r3, [r7, #4]
 80432cc:	681b      	ldr	r3, [r3, #0]
 80432ce:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 80432d2:	2b00      	cmp	r3, #0
 80432d4:	f000 80ab 	beq.w	804342e <HAL_RCCEx_PeriphCLKConfig+0x29e>
 80432d8:	2300      	movs	r3, #0
 80432da:	75fb      	strb	r3, [r7, #23]
 80432dc:	4b4c      	ldr	r3, [pc, #304]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80432de:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80432e0:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80432e4:	2b00      	cmp	r3, #0
 80432e6:	d10d      	bne.n	8043304 <HAL_RCCEx_PeriphCLKConfig+0x174>
 80432e8:	4b49      	ldr	r3, [pc, #292]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80432ea:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80432ec:	4a48      	ldr	r2, [pc, #288]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80432ee:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 80432f2:	6593      	str	r3, [r2, #88]	@ 0x58
 80432f4:	4b46      	ldr	r3, [pc, #280]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80432f6:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 80432f8:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 80432fc:	60fb      	str	r3, [r7, #12]
 80432fe:	68fb      	ldr	r3, [r7, #12]
 8043300:	2301      	movs	r3, #1
 8043302:	75fb      	strb	r3, [r7, #23]
 8043304:	4b43      	ldr	r3, [pc, #268]	@ (8043414 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 8043306:	681b      	ldr	r3, [r3, #0]
 8043308:	4a42      	ldr	r2, [pc, #264]	@ (8043414 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 804330a:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 804330e:	6013      	str	r3, [r2, #0]
 8043310:	f7fe f932 	bl	8041578 <HAL_GetTick>
 8043314:	6138      	str	r0, [r7, #16]
 8043316:	e00f      	b.n	8043338 <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8043318:	f7fe f92e 	bl	8041578 <HAL_GetTick>
 804331c:	4602      	mov	r2, r0
 804331e:	693b      	ldr	r3, [r7, #16]
 8043320:	1ad3      	subs	r3, r2, r3
 8043322:	2b02      	cmp	r3, #2
 8043324:	d908      	bls.n	8043338 <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8043326:	4b3b      	ldr	r3, [pc, #236]	@ (8043414 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 8043328:	681b      	ldr	r3, [r3, #0]
 804332a:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 804332e:	2b00      	cmp	r3, #0
 8043330:	d109      	bne.n	8043346 <HAL_RCCEx_PeriphCLKConfig+0x1b6>
 8043332:	2303      	movs	r3, #3
 8043334:	77fb      	strb	r3, [r7, #31]
 8043336:	e006      	b.n	8043346 <HAL_RCCEx_PeriphCLKConfig+0x1b6>
 8043338:	4b36      	ldr	r3, [pc, #216]	@ (8043414 <HAL_RCCEx_PeriphCLKConfig+0x284>)
 804333a:	681b      	ldr	r3, [r3, #0]
 804333c:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 8043340:	2b00      	cmp	r3, #0
 8043342:	d0e9      	beq.n	8043318 <HAL_RCCEx_PeriphCLKConfig+0x188>
 8043344:	e000      	b.n	8043348 <HAL_RCCEx_PeriphCLKConfig+0x1b8>
 8043346:	bf00      	nop
 8043348:	7ffb      	ldrb	r3, [r7, #31]
 804334a:	2b00      	cmp	r3, #0
 804334c:	d164      	bne.n	8043418 <HAL_RCCEx_PeriphCLKConfig+0x288>
 804334e:	4b30      	ldr	r3, [pc, #192]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043350:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8043354:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 8043358:	61bb      	str	r3, [r7, #24]
 804335a:	69bb      	ldr	r3, [r7, #24]
 804335c:	2b00      	cmp	r3, #0
 804335e:	d01f      	beq.n	80433a0 <HAL_RCCEx_PeriphCLKConfig+0x210>
 8043360:	687b      	ldr	r3, [r7, #4]
 8043362:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8043366:	69ba      	ldr	r2, [r7, #24]
 8043368:	429a      	cmp	r2, r3
 804336a:	d019      	beq.n	80433a0 <HAL_RCCEx_PeriphCLKConfig+0x210>
 804336c:	4b28      	ldr	r3, [pc, #160]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 804336e:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8043372:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8043376:	61bb      	str	r3, [r7, #24]
 8043378:	4b25      	ldr	r3, [pc, #148]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 804337a:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804337e:	4a24      	ldr	r2, [pc, #144]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043380:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8043384:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8043388:	4b21      	ldr	r3, [pc, #132]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 804338a:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 804338e:	4a20      	ldr	r2, [pc, #128]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043390:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8043394:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 8043398:	4a1d      	ldr	r2, [pc, #116]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 804339a:	69bb      	ldr	r3, [r7, #24]
 804339c:	f8c2 3090 	str.w	r3, [r2, #144]	@ 0x90
 80433a0:	69bb      	ldr	r3, [r7, #24]
 80433a2:	f003 0301 	and.w	r3, r3, #1
 80433a6:	2b00      	cmp	r3, #0
 80433a8:	d01f      	beq.n	80433ea <HAL_RCCEx_PeriphCLKConfig+0x25a>
 80433aa:	f7fe f8e5 	bl	8041578 <HAL_GetTick>
 80433ae:	6138      	str	r0, [r7, #16]
 80433b0:	e012      	b.n	80433d8 <HAL_RCCEx_PeriphCLKConfig+0x248>
 80433b2:	f7fe f8e1 	bl	8041578 <HAL_GetTick>
 80433b6:	4602      	mov	r2, r0
 80433b8:	693b      	ldr	r3, [r7, #16]
 80433ba:	1ad3      	subs	r3, r2, r3
 80433bc:	f241 3288 	movw	r2, #5000	@ 0x1388
 80433c0:	4293      	cmp	r3, r2
 80433c2:	d909      	bls.n	80433d8 <HAL_RCCEx_PeriphCLKConfig+0x248>
 80433c4:	4b12      	ldr	r3, [pc, #72]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80433c6:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80433ca:	f003 0302 	and.w	r3, r3, #2
 80433ce:	2b00      	cmp	r3, #0
 80433d0:	d10a      	bne.n	80433e8 <HAL_RCCEx_PeriphCLKConfig+0x258>
 80433d2:	2303      	movs	r3, #3
 80433d4:	77fb      	strb	r3, [r7, #31]
 80433d6:	e007      	b.n	80433e8 <HAL_RCCEx_PeriphCLKConfig+0x258>
 80433d8:	4b0d      	ldr	r3, [pc, #52]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80433da:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80433de:	f003 0302 	and.w	r3, r3, #2
 80433e2:	2b00      	cmp	r3, #0
 80433e4:	d0e5      	beq.n	80433b2 <HAL_RCCEx_PeriphCLKConfig+0x222>
 80433e6:	e000      	b.n	80433ea <HAL_RCCEx_PeriphCLKConfig+0x25a>
 80433e8:	bf00      	nop
 80433ea:	7ffb      	ldrb	r3, [r7, #31]
 80433ec:	2b00      	cmp	r3, #0
 80433ee:	d10c      	bne.n	804340a <HAL_RCCEx_PeriphCLKConfig+0x27a>
 80433f0:	4b07      	ldr	r3, [pc, #28]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 80433f2:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 80433f6:	f423 7240 	bic.w	r2, r3, #768	@ 0x300
 80433fa:	687b      	ldr	r3, [r7, #4]
 80433fc:	f8d3 3090 	ldr.w	r3, [r3, #144]	@ 0x90
 8043400:	4903      	ldr	r1, [pc, #12]	@ (8043410 <HAL_RCCEx_PeriphCLKConfig+0x280>)
 8043402:	4313      	orrs	r3, r2
 8043404:	f8c1 3090 	str.w	r3, [r1, #144]	@ 0x90
 8043408:	e008      	b.n	804341c <HAL_RCCEx_PeriphCLKConfig+0x28c>
 804340a:	7ffb      	ldrb	r3, [r7, #31]
 804340c:	77bb      	strb	r3, [r7, #30]
 804340e:	e005      	b.n	804341c <HAL_RCCEx_PeriphCLKConfig+0x28c>
 8043410:	40021000 	.word	0x40021000
 8043414:	40007000 	.word	0x40007000
 8043418:	7ffb      	ldrb	r3, [r7, #31]
 804341a:	77bb      	strb	r3, [r7, #30]
 804341c:	7dfb      	ldrb	r3, [r7, #23]
 804341e:	2b01      	cmp	r3, #1
 8043420:	d105      	bne.n	804342e <HAL_RCCEx_PeriphCLKConfig+0x29e>
 8043422:	4b9c      	ldr	r3, [pc, #624]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043424:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8043426:	4a9b      	ldr	r2, [pc, #620]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043428:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 804342c:	6593      	str	r3, [r2, #88]	@ 0x58
 804342e:	687b      	ldr	r3, [r7, #4]
 8043430:	681b      	ldr	r3, [r3, #0]
 8043432:	f003 0301 	and.w	r3, r3, #1
 8043436:	2b00      	cmp	r3, #0
 8043438:	d00a      	beq.n	8043450 <HAL_RCCEx_PeriphCLKConfig+0x2c0>
 804343a:	4b96      	ldr	r3, [pc, #600]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804343c:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043440:	f023 0203 	bic.w	r2, r3, #3
 8043444:	687b      	ldr	r3, [r7, #4]
 8043446:	6b5b      	ldr	r3, [r3, #52]	@ 0x34
 8043448:	4992      	ldr	r1, [pc, #584]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804344a:	4313      	orrs	r3, r2
 804344c:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8043450:	687b      	ldr	r3, [r7, #4]
 8043452:	681b      	ldr	r3, [r3, #0]
 8043454:	f003 0302 	and.w	r3, r3, #2
 8043458:	2b00      	cmp	r3, #0
 804345a:	d00a      	beq.n	8043472 <HAL_RCCEx_PeriphCLKConfig+0x2e2>
 804345c:	4b8d      	ldr	r3, [pc, #564]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804345e:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043462:	f023 020c 	bic.w	r2, r3, #12
 8043466:	687b      	ldr	r3, [r7, #4]
 8043468:	6b9b      	ldr	r3, [r3, #56]	@ 0x38
 804346a:	498a      	ldr	r1, [pc, #552]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804346c:	4313      	orrs	r3, r2
 804346e:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8043472:	687b      	ldr	r3, [r7, #4]
 8043474:	681b      	ldr	r3, [r3, #0]
 8043476:	f003 0304 	and.w	r3, r3, #4
 804347a:	2b00      	cmp	r3, #0
 804347c:	d00a      	beq.n	8043494 <HAL_RCCEx_PeriphCLKConfig+0x304>
 804347e:	4b85      	ldr	r3, [pc, #532]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043480:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043484:	f023 0230 	bic.w	r2, r3, #48	@ 0x30
 8043488:	687b      	ldr	r3, [r7, #4]
 804348a:	6bdb      	ldr	r3, [r3, #60]	@ 0x3c
 804348c:	4981      	ldr	r1, [pc, #516]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804348e:	4313      	orrs	r3, r2
 8043490:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8043494:	687b      	ldr	r3, [r7, #4]
 8043496:	681b      	ldr	r3, [r3, #0]
 8043498:	f003 0308 	and.w	r3, r3, #8
 804349c:	2b00      	cmp	r3, #0
 804349e:	d00a      	beq.n	80434b6 <HAL_RCCEx_PeriphCLKConfig+0x326>
 80434a0:	4b7c      	ldr	r3, [pc, #496]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80434a2:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80434a6:	f023 02c0 	bic.w	r2, r3, #192	@ 0xc0
 80434aa:	687b      	ldr	r3, [r7, #4]
 80434ac:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
 80434ae:	4979      	ldr	r1, [pc, #484]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80434b0:	4313      	orrs	r3, r2
 80434b2:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80434b6:	687b      	ldr	r3, [r7, #4]
 80434b8:	681b      	ldr	r3, [r3, #0]
 80434ba:	f003 0310 	and.w	r3, r3, #16
 80434be:	2b00      	cmp	r3, #0
 80434c0:	d00a      	beq.n	80434d8 <HAL_RCCEx_PeriphCLKConfig+0x348>
 80434c2:	4b74      	ldr	r3, [pc, #464]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80434c4:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80434c8:	f423 7240 	bic.w	r2, r3, #768	@ 0x300
 80434cc:	687b      	ldr	r3, [r7, #4]
 80434ce:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 80434d0:	4970      	ldr	r1, [pc, #448]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80434d2:	4313      	orrs	r3, r2
 80434d4:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80434d8:	687b      	ldr	r3, [r7, #4]
 80434da:	681b      	ldr	r3, [r3, #0]
 80434dc:	f003 0320 	and.w	r3, r3, #32
 80434e0:	2b00      	cmp	r3, #0
 80434e2:	d00a      	beq.n	80434fa <HAL_RCCEx_PeriphCLKConfig+0x36a>
 80434e4:	4b6b      	ldr	r3, [pc, #428]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80434e6:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80434ea:	f423 6240 	bic.w	r2, r3, #3072	@ 0xc00
 80434ee:	687b      	ldr	r3, [r7, #4]
 80434f0:	6c9b      	ldr	r3, [r3, #72]	@ 0x48
 80434f2:	4968      	ldr	r1, [pc, #416]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80434f4:	4313      	orrs	r3, r2
 80434f6:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80434fa:	687b      	ldr	r3, [r7, #4]
 80434fc:	681b      	ldr	r3, [r3, #0]
 80434fe:	f403 7300 	and.w	r3, r3, #512	@ 0x200
 8043502:	2b00      	cmp	r3, #0
 8043504:	d00a      	beq.n	804351c <HAL_RCCEx_PeriphCLKConfig+0x38c>
 8043506:	4b63      	ldr	r3, [pc, #396]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043508:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804350c:	f423 2240 	bic.w	r2, r3, #786432	@ 0xc0000
 8043510:	687b      	ldr	r3, [r7, #4]
 8043512:	6ddb      	ldr	r3, [r3, #92]	@ 0x5c
 8043514:	495f      	ldr	r1, [pc, #380]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043516:	4313      	orrs	r3, r2
 8043518:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 804351c:	687b      	ldr	r3, [r7, #4]
 804351e:	681b      	ldr	r3, [r3, #0]
 8043520:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8043524:	2b00      	cmp	r3, #0
 8043526:	d00a      	beq.n	804353e <HAL_RCCEx_PeriphCLKConfig+0x3ae>
 8043528:	4b5a      	ldr	r3, [pc, #360]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804352a:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804352e:	f423 1240 	bic.w	r2, r3, #3145728	@ 0x300000
 8043532:	687b      	ldr	r3, [r7, #4]
 8043534:	6e1b      	ldr	r3, [r3, #96]	@ 0x60
 8043536:	4957      	ldr	r1, [pc, #348]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043538:	4313      	orrs	r3, r2
 804353a:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 804353e:	687b      	ldr	r3, [r7, #4]
 8043540:	681b      	ldr	r3, [r3, #0]
 8043542:	f403 0380 	and.w	r3, r3, #4194304	@ 0x400000
 8043546:	2b00      	cmp	r3, #0
 8043548:	d00a      	beq.n	8043560 <HAL_RCCEx_PeriphCLKConfig+0x3d0>
 804354a:	4b52      	ldr	r3, [pc, #328]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804354c:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043550:	f423 0240 	bic.w	r2, r3, #12582912	@ 0xc00000
 8043554:	687b      	ldr	r3, [r7, #4]
 8043556:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 8043558:	494e      	ldr	r1, [pc, #312]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804355a:	4313      	orrs	r3, r2
 804355c:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8043560:	687b      	ldr	r3, [r7, #4]
 8043562:	681b      	ldr	r3, [r3, #0]
 8043564:	f003 7300 	and.w	r3, r3, #33554432	@ 0x2000000
 8043568:	2b00      	cmp	r3, #0
 804356a:	d031      	beq.n	80435d0 <HAL_RCCEx_PeriphCLKConfig+0x440>
 804356c:	687b      	ldr	r3, [r7, #4]
 804356e:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 8043570:	f1b3 7f00 	cmp.w	r3, #33554432	@ 0x2000000
 8043574:	d00e      	beq.n	8043594 <HAL_RCCEx_PeriphCLKConfig+0x404>
 8043576:	f1b3 7f00 	cmp.w	r3, #33554432	@ 0x2000000
 804357a:	d814      	bhi.n	80435a6 <HAL_RCCEx_PeriphCLKConfig+0x416>
 804357c:	2b00      	cmp	r3, #0
 804357e:	d015      	beq.n	80435ac <HAL_RCCEx_PeriphCLKConfig+0x41c>
 8043580:	f1b3 7f80 	cmp.w	r3, #16777216	@ 0x1000000
 8043584:	d10f      	bne.n	80435a6 <HAL_RCCEx_PeriphCLKConfig+0x416>
 8043586:	4b43      	ldr	r3, [pc, #268]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043588:	68db      	ldr	r3, [r3, #12]
 804358a:	4a42      	ldr	r2, [pc, #264]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804358c:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8043590:	60d3      	str	r3, [r2, #12]
 8043592:	e00c      	b.n	80435ae <HAL_RCCEx_PeriphCLKConfig+0x41e>
 8043594:	687b      	ldr	r3, [r7, #4]
 8043596:	3304      	adds	r3, #4
 8043598:	2100      	movs	r1, #0
 804359a:	4618      	mov	r0, r3
 804359c:	f000 f97c 	bl	8043898 <RCCEx_PLLSAI1_Config>
 80435a0:	4603      	mov	r3, r0
 80435a2:	77fb      	strb	r3, [r7, #31]
 80435a4:	e003      	b.n	80435ae <HAL_RCCEx_PeriphCLKConfig+0x41e>
 80435a6:	2301      	movs	r3, #1
 80435a8:	77fb      	strb	r3, [r7, #31]
 80435aa:	e000      	b.n	80435ae <HAL_RCCEx_PeriphCLKConfig+0x41e>
 80435ac:	bf00      	nop
 80435ae:	7ffb      	ldrb	r3, [r7, #31]
 80435b0:	2b00      	cmp	r3, #0
 80435b2:	d10b      	bne.n	80435cc <HAL_RCCEx_PeriphCLKConfig+0x43c>
 80435b4:	4b37      	ldr	r3, [pc, #220]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80435b6:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80435ba:	f023 7240 	bic.w	r2, r3, #50331648	@ 0x3000000
 80435be:	687b      	ldr	r3, [r7, #4]
 80435c0:	6e9b      	ldr	r3, [r3, #104]	@ 0x68
 80435c2:	4934      	ldr	r1, [pc, #208]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80435c4:	4313      	orrs	r3, r2
 80435c6:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80435ca:	e001      	b.n	80435d0 <HAL_RCCEx_PeriphCLKConfig+0x440>
 80435cc:	7ffb      	ldrb	r3, [r7, #31]
 80435ce:	77bb      	strb	r3, [r7, #30]
 80435d0:	687b      	ldr	r3, [r7, #4]
 80435d2:	681b      	ldr	r3, [r3, #0]
 80435d4:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 80435d8:	2b00      	cmp	r3, #0
 80435da:	d00a      	beq.n	80435f2 <HAL_RCCEx_PeriphCLKConfig+0x462>
 80435dc:	4b2d      	ldr	r3, [pc, #180]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80435de:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80435e2:	f423 5240 	bic.w	r2, r3, #12288	@ 0x3000
 80435e6:	687b      	ldr	r3, [r7, #4]
 80435e8:	6cdb      	ldr	r3, [r3, #76]	@ 0x4c
 80435ea:	492a      	ldr	r1, [pc, #168]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 80435ec:	4313      	orrs	r3, r2
 80435ee:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80435f2:	687b      	ldr	r3, [r7, #4]
 80435f4:	681b      	ldr	r3, [r3, #0]
 80435f6:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 80435fa:	2b00      	cmp	r3, #0
 80435fc:	d00a      	beq.n	8043614 <HAL_RCCEx_PeriphCLKConfig+0x484>
 80435fe:	4b25      	ldr	r3, [pc, #148]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043600:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043604:	f423 4240 	bic.w	r2, r3, #49152	@ 0xc000
 8043608:	687b      	ldr	r3, [r7, #4]
 804360a:	6d1b      	ldr	r3, [r3, #80]	@ 0x50
 804360c:	4921      	ldr	r1, [pc, #132]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804360e:	4313      	orrs	r3, r2
 8043610:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8043614:	687b      	ldr	r3, [r7, #4]
 8043616:	681b      	ldr	r3, [r3, #0]
 8043618:	f403 7380 	and.w	r3, r3, #256	@ 0x100
 804361c:	2b00      	cmp	r3, #0
 804361e:	d00a      	beq.n	8043636 <HAL_RCCEx_PeriphCLKConfig+0x4a6>
 8043620:	4b1c      	ldr	r3, [pc, #112]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043622:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043626:	f423 3240 	bic.w	r2, r3, #196608	@ 0x30000
 804362a:	687b      	ldr	r3, [r7, #4]
 804362c:	6d5b      	ldr	r3, [r3, #84]	@ 0x54
 804362e:	4919      	ldr	r1, [pc, #100]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043630:	4313      	orrs	r3, r2
 8043632:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8043636:	687b      	ldr	r3, [r7, #4]
 8043638:	681b      	ldr	r3, [r3, #0]
 804363a:	f403 1380 	and.w	r3, r3, #1048576	@ 0x100000
 804363e:	2b00      	cmp	r3, #0
 8043640:	d00a      	beq.n	8043658 <HAL_RCCEx_PeriphCLKConfig+0x4c8>
 8043642:	4b14      	ldr	r3, [pc, #80]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043644:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8043648:	f023 0203 	bic.w	r2, r3, #3
 804364c:	687b      	ldr	r3, [r7, #4]
 804364e:	6d9b      	ldr	r3, [r3, #88]	@ 0x58
 8043650:	4910      	ldr	r1, [pc, #64]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043652:	4313      	orrs	r3, r2
 8043654:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 8043658:	687b      	ldr	r3, [r7, #4]
 804365a:	681b      	ldr	r3, [r3, #0]
 804365c:	f403 5300 	and.w	r3, r3, #8192	@ 0x2000
 8043660:	2b00      	cmp	r3, #0
 8043662:	d02b      	beq.n	80436bc <HAL_RCCEx_PeriphCLKConfig+0x52c>
 8043664:	4b0b      	ldr	r3, [pc, #44]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043666:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804366a:	f023 6240 	bic.w	r2, r3, #201326592	@ 0xc000000
 804366e:	687b      	ldr	r3, [r7, #4]
 8043670:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 8043672:	4908      	ldr	r1, [pc, #32]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043674:	4313      	orrs	r3, r2
 8043676:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 804367a:	687b      	ldr	r3, [r7, #4]
 804367c:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 804367e:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 8043682:	d109      	bne.n	8043698 <HAL_RCCEx_PeriphCLKConfig+0x508>
 8043684:	4b03      	ldr	r3, [pc, #12]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 8043686:	68db      	ldr	r3, [r3, #12]
 8043688:	4a02      	ldr	r2, [pc, #8]	@ (8043694 <HAL_RCCEx_PeriphCLKConfig+0x504>)
 804368a:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 804368e:	60d3      	str	r3, [r2, #12]
 8043690:	e014      	b.n	80436bc <HAL_RCCEx_PeriphCLKConfig+0x52c>
 8043692:	bf00      	nop
 8043694:	40021000 	.word	0x40021000
 8043698:	687b      	ldr	r3, [r7, #4]
 804369a:	6f5b      	ldr	r3, [r3, #116]	@ 0x74
 804369c:	f1b3 6f80 	cmp.w	r3, #67108864	@ 0x4000000
 80436a0:	d10c      	bne.n	80436bc <HAL_RCCEx_PeriphCLKConfig+0x52c>
 80436a2:	687b      	ldr	r3, [r7, #4]
 80436a4:	3304      	adds	r3, #4
 80436a6:	2101      	movs	r1, #1
 80436a8:	4618      	mov	r0, r3
 80436aa:	f000 f8f5 	bl	8043898 <RCCEx_PLLSAI1_Config>
 80436ae:	4603      	mov	r3, r0
 80436b0:	77fb      	strb	r3, [r7, #31]
 80436b2:	7ffb      	ldrb	r3, [r7, #31]
 80436b4:	2b00      	cmp	r3, #0
 80436b6:	d001      	beq.n	80436bc <HAL_RCCEx_PeriphCLKConfig+0x52c>
 80436b8:	7ffb      	ldrb	r3, [r7, #31]
 80436ba:	77bb      	strb	r3, [r7, #30]
 80436bc:	687b      	ldr	r3, [r7, #4]
 80436be:	681b      	ldr	r3, [r3, #0]
 80436c0:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 80436c4:	2b00      	cmp	r3, #0
 80436c6:	d04a      	beq.n	804375e <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 80436c8:	687b      	ldr	r3, [r7, #4]
 80436ca:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 80436cc:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 80436d0:	d108      	bne.n	80436e4 <HAL_RCCEx_PeriphCLKConfig+0x554>
 80436d2:	4b70      	ldr	r3, [pc, #448]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80436d4:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 80436d8:	4a6e      	ldr	r2, [pc, #440]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80436da:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 80436de:	f8c2 309c 	str.w	r3, [r2, #156]	@ 0x9c
 80436e2:	e012      	b.n	804370a <HAL_RCCEx_PeriphCLKConfig+0x57a>
 80436e4:	4b6b      	ldr	r3, [pc, #428]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80436e6:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80436ea:	f023 6240 	bic.w	r2, r3, #201326592	@ 0xc000000
 80436ee:	687b      	ldr	r3, [r7, #4]
 80436f0:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 80436f2:	4968      	ldr	r1, [pc, #416]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80436f4:	4313      	orrs	r3, r2
 80436f6:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80436fa:	4b66      	ldr	r3, [pc, #408]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80436fc:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8043700:	4a64      	ldr	r2, [pc, #400]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043702:	f423 4380 	bic.w	r3, r3, #16384	@ 0x4000
 8043706:	f8c2 309c 	str.w	r3, [r2, #156]	@ 0x9c
 804370a:	687b      	ldr	r3, [r7, #4]
 804370c:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 804370e:	f1b3 6f80 	cmp.w	r3, #67108864	@ 0x4000000
 8043712:	d10d      	bne.n	8043730 <HAL_RCCEx_PeriphCLKConfig+0x5a0>
 8043714:	687b      	ldr	r3, [r7, #4]
 8043716:	3304      	adds	r3, #4
 8043718:	2101      	movs	r1, #1
 804371a:	4618      	mov	r0, r3
 804371c:	f000 f8bc 	bl	8043898 <RCCEx_PLLSAI1_Config>
 8043720:	4603      	mov	r3, r0
 8043722:	77fb      	strb	r3, [r7, #31]
 8043724:	7ffb      	ldrb	r3, [r7, #31]
 8043726:	2b00      	cmp	r3, #0
 8043728:	d019      	beq.n	804375e <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 804372a:	7ffb      	ldrb	r3, [r7, #31]
 804372c:	77bb      	strb	r3, [r7, #30]
 804372e:	e016      	b.n	804375e <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 8043730:	687b      	ldr	r3, [r7, #4]
 8043732:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 8043734:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 8043738:	d106      	bne.n	8043748 <HAL_RCCEx_PeriphCLKConfig+0x5b8>
 804373a:	4b56      	ldr	r3, [pc, #344]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804373c:	68db      	ldr	r3, [r3, #12]
 804373e:	4a55      	ldr	r2, [pc, #340]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043740:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8043744:	60d3      	str	r3, [r2, #12]
 8043746:	e00a      	b.n	804375e <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 8043748:	687b      	ldr	r3, [r7, #4]
 804374a:	6f9b      	ldr	r3, [r3, #120]	@ 0x78
 804374c:	f5b3 4f80 	cmp.w	r3, #16384	@ 0x4000
 8043750:	d105      	bne.n	804375e <HAL_RCCEx_PeriphCLKConfig+0x5ce>
 8043752:	4b50      	ldr	r3, [pc, #320]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043754:	68db      	ldr	r3, [r3, #12]
 8043756:	4a4f      	ldr	r2, [pc, #316]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043758:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 804375c:	60d3      	str	r3, [r2, #12]
 804375e:	687b      	ldr	r3, [r7, #4]
 8043760:	681b      	ldr	r3, [r3, #0]
 8043762:	f403 2380 	and.w	r3, r3, #262144	@ 0x40000
 8043766:	2b00      	cmp	r3, #0
 8043768:	d028      	beq.n	80437bc <HAL_RCCEx_PeriphCLKConfig+0x62c>
 804376a:	4b4a      	ldr	r3, [pc, #296]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804376c:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043770:	f023 6240 	bic.w	r2, r3, #201326592	@ 0xc000000
 8043774:	687b      	ldr	r3, [r7, #4]
 8043776:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 8043778:	4946      	ldr	r1, [pc, #280]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804377a:	4313      	orrs	r3, r2
 804377c:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 8043780:	687b      	ldr	r3, [r7, #4]
 8043782:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 8043784:	f1b3 6f00 	cmp.w	r3, #134217728	@ 0x8000000
 8043788:	d106      	bne.n	8043798 <HAL_RCCEx_PeriphCLKConfig+0x608>
 804378a:	4b42      	ldr	r3, [pc, #264]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804378c:	68db      	ldr	r3, [r3, #12]
 804378e:	4a41      	ldr	r2, [pc, #260]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043790:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8043794:	60d3      	str	r3, [r2, #12]
 8043796:	e011      	b.n	80437bc <HAL_RCCEx_PeriphCLKConfig+0x62c>
 8043798:	687b      	ldr	r3, [r7, #4]
 804379a:	6fdb      	ldr	r3, [r3, #124]	@ 0x7c
 804379c:	f1b3 6f80 	cmp.w	r3, #67108864	@ 0x4000000
 80437a0:	d10c      	bne.n	80437bc <HAL_RCCEx_PeriphCLKConfig+0x62c>
 80437a2:	687b      	ldr	r3, [r7, #4]
 80437a4:	3304      	adds	r3, #4
 80437a6:	2101      	movs	r1, #1
 80437a8:	4618      	mov	r0, r3
 80437aa:	f000 f875 	bl	8043898 <RCCEx_PLLSAI1_Config>
 80437ae:	4603      	mov	r3, r0
 80437b0:	77fb      	strb	r3, [r7, #31]
 80437b2:	7ffb      	ldrb	r3, [r7, #31]
 80437b4:	2b00      	cmp	r3, #0
 80437b6:	d001      	beq.n	80437bc <HAL_RCCEx_PeriphCLKConfig+0x62c>
 80437b8:	7ffb      	ldrb	r3, [r7, #31]
 80437ba:	77bb      	strb	r3, [r7, #30]
 80437bc:	687b      	ldr	r3, [r7, #4]
 80437be:	681b      	ldr	r3, [r3, #0]
 80437c0:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 80437c4:	2b00      	cmp	r3, #0
 80437c6:	d01e      	beq.n	8043806 <HAL_RCCEx_PeriphCLKConfig+0x676>
 80437c8:	4b32      	ldr	r3, [pc, #200]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80437ca:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80437ce:	f023 5240 	bic.w	r2, r3, #805306368	@ 0x30000000
 80437d2:	687b      	ldr	r3, [r7, #4]
 80437d4:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 80437d8:	492e      	ldr	r1, [pc, #184]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 80437da:	4313      	orrs	r3, r2
 80437dc:	f8c1 3088 	str.w	r3, [r1, #136]	@ 0x88
 80437e0:	687b      	ldr	r3, [r7, #4]
 80437e2:	f8d3 3080 	ldr.w	r3, [r3, #128]	@ 0x80
 80437e6:	f1b3 5f80 	cmp.w	r3, #268435456	@ 0x10000000
 80437ea:	d10c      	bne.n	8043806 <HAL_RCCEx_PeriphCLKConfig+0x676>
 80437ec:	687b      	ldr	r3, [r7, #4]
 80437ee:	3304      	adds	r3, #4
 80437f0:	2102      	movs	r1, #2
 80437f2:	4618      	mov	r0, r3
 80437f4:	f000 f850 	bl	8043898 <RCCEx_PLLSAI1_Config>
 80437f8:	4603      	mov	r3, r0
 80437fa:	77fb      	strb	r3, [r7, #31]
 80437fc:	7ffb      	ldrb	r3, [r7, #31]
 80437fe:	2b00      	cmp	r3, #0
 8043800:	d001      	beq.n	8043806 <HAL_RCCEx_PeriphCLKConfig+0x676>
 8043802:	7ffb      	ldrb	r3, [r7, #31]
 8043804:	77bb      	strb	r3, [r7, #30]
 8043806:	687b      	ldr	r3, [r7, #4]
 8043808:	681b      	ldr	r3, [r3, #0]
 804380a:	f403 3380 	and.w	r3, r3, #65536	@ 0x10000
 804380e:	2b00      	cmp	r3, #0
 8043810:	d00b      	beq.n	804382a <HAL_RCCEx_PeriphCLKConfig+0x69a>
 8043812:	4b20      	ldr	r3, [pc, #128]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043814:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8043818:	f023 0204 	bic.w	r2, r3, #4
 804381c:	687b      	ldr	r3, [r7, #4]
 804381e:	f8d3 3084 	ldr.w	r3, [r3, #132]	@ 0x84
 8043822:	491c      	ldr	r1, [pc, #112]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043824:	4313      	orrs	r3, r2
 8043826:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 804382a:	687b      	ldr	r3, [r7, #4]
 804382c:	681b      	ldr	r3, [r3, #0]
 804382e:	f403 1300 	and.w	r3, r3, #2097152	@ 0x200000
 8043832:	2b00      	cmp	r3, #0
 8043834:	d00b      	beq.n	804384e <HAL_RCCEx_PeriphCLKConfig+0x6be>
 8043836:	4b17      	ldr	r3, [pc, #92]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043838:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 804383c:	f023 0218 	bic.w	r2, r3, #24
 8043840:	687b      	ldr	r3, [r7, #4]
 8043842:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8043846:	4913      	ldr	r1, [pc, #76]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043848:	4313      	orrs	r3, r2
 804384a:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 804384e:	687b      	ldr	r3, [r7, #4]
 8043850:	681b      	ldr	r3, [r3, #0]
 8043852:	f003 7380 	and.w	r3, r3, #16777216	@ 0x1000000
 8043856:	2b00      	cmp	r3, #0
 8043858:	d017      	beq.n	804388a <HAL_RCCEx_PeriphCLKConfig+0x6fa>
 804385a:	4b0e      	ldr	r3, [pc, #56]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804385c:	f8d3 309c 	ldr.w	r3, [r3, #156]	@ 0x9c
 8043860:	f423 1240 	bic.w	r2, r3, #3145728	@ 0x300000
 8043864:	687b      	ldr	r3, [r7, #4]
 8043866:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 804386a:	490a      	ldr	r1, [pc, #40]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 804386c:	4313      	orrs	r3, r2
 804386e:	f8c1 309c 	str.w	r3, [r1, #156]	@ 0x9c
 8043872:	687b      	ldr	r3, [r7, #4]
 8043874:	f8d3 308c 	ldr.w	r3, [r3, #140]	@ 0x8c
 8043878:	f5b3 1f00 	cmp.w	r3, #2097152	@ 0x200000
 804387c:	d105      	bne.n	804388a <HAL_RCCEx_PeriphCLKConfig+0x6fa>
 804387e:	4b05      	ldr	r3, [pc, #20]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043880:	68db      	ldr	r3, [r3, #12]
 8043882:	4a04      	ldr	r2, [pc, #16]	@ (8043894 <HAL_RCCEx_PeriphCLKConfig+0x704>)
 8043884:	f443 1380 	orr.w	r3, r3, #1048576	@ 0x100000
 8043888:	60d3      	str	r3, [r2, #12]
 804388a:	7fbb      	ldrb	r3, [r7, #30]
 804388c:	4618      	mov	r0, r3
 804388e:	3720      	adds	r7, #32
 8043890:	46bd      	mov	sp, r7
 8043892:	bd80      	pop	{r7, pc}
 8043894:	40021000 	.word	0x40021000

08043898 <RCCEx_PLLSAI1_Config>:
 8043898:	b580      	push	{r7, lr}
 804389a:	b084      	sub	sp, #16
 804389c:	af00      	add	r7, sp, #0
 804389e:	6078      	str	r0, [r7, #4]
 80438a0:	6039      	str	r1, [r7, #0]
 80438a2:	2300      	movs	r3, #0
 80438a4:	73fb      	strb	r3, [r7, #15]
 80438a6:	687b      	ldr	r3, [r7, #4]
 80438a8:	681b      	ldr	r3, [r3, #0]
 80438aa:	2b03      	cmp	r3, #3
 80438ac:	d018      	beq.n	80438e0 <RCCEx_PLLSAI1_Config+0x48>
 80438ae:	2b03      	cmp	r3, #3
 80438b0:	d81f      	bhi.n	80438f2 <RCCEx_PLLSAI1_Config+0x5a>
 80438b2:	2b01      	cmp	r3, #1
 80438b4:	d002      	beq.n	80438bc <RCCEx_PLLSAI1_Config+0x24>
 80438b6:	2b02      	cmp	r3, #2
 80438b8:	d009      	beq.n	80438ce <RCCEx_PLLSAI1_Config+0x36>
 80438ba:	e01a      	b.n	80438f2 <RCCEx_PLLSAI1_Config+0x5a>
 80438bc:	4b65      	ldr	r3, [pc, #404]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80438be:	681b      	ldr	r3, [r3, #0]
 80438c0:	f003 0302 	and.w	r3, r3, #2
 80438c4:	2b00      	cmp	r3, #0
 80438c6:	d117      	bne.n	80438f8 <RCCEx_PLLSAI1_Config+0x60>
 80438c8:	2301      	movs	r3, #1
 80438ca:	73fb      	strb	r3, [r7, #15]
 80438cc:	e014      	b.n	80438f8 <RCCEx_PLLSAI1_Config+0x60>
 80438ce:	4b61      	ldr	r3, [pc, #388]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80438d0:	681b      	ldr	r3, [r3, #0]
 80438d2:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 80438d6:	2b00      	cmp	r3, #0
 80438d8:	d110      	bne.n	80438fc <RCCEx_PLLSAI1_Config+0x64>
 80438da:	2301      	movs	r3, #1
 80438dc:	73fb      	strb	r3, [r7, #15]
 80438de:	e00d      	b.n	80438fc <RCCEx_PLLSAI1_Config+0x64>
 80438e0:	4b5c      	ldr	r3, [pc, #368]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80438e2:	681b      	ldr	r3, [r3, #0]
 80438e4:	f403 23c0 	and.w	r3, r3, #393216	@ 0x60000
 80438e8:	2b00      	cmp	r3, #0
 80438ea:	d109      	bne.n	8043900 <RCCEx_PLLSAI1_Config+0x68>
 80438ec:	2301      	movs	r3, #1
 80438ee:	73fb      	strb	r3, [r7, #15]
 80438f0:	e006      	b.n	8043900 <RCCEx_PLLSAI1_Config+0x68>
 80438f2:	2301      	movs	r3, #1
 80438f4:	73fb      	strb	r3, [r7, #15]
 80438f6:	e004      	b.n	8043902 <RCCEx_PLLSAI1_Config+0x6a>
 80438f8:	bf00      	nop
 80438fa:	e002      	b.n	8043902 <RCCEx_PLLSAI1_Config+0x6a>
 80438fc:	bf00      	nop
 80438fe:	e000      	b.n	8043902 <RCCEx_PLLSAI1_Config+0x6a>
 8043900:	bf00      	nop
 8043902:	7bfb      	ldrb	r3, [r7, #15]
 8043904:	2b00      	cmp	r3, #0
 8043906:	f040 809f 	bne.w	8043a48 <RCCEx_PLLSAI1_Config+0x1b0>
 804390a:	4b52      	ldr	r3, [pc, #328]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 804390c:	681b      	ldr	r3, [r3, #0]
 804390e:	4a51      	ldr	r2, [pc, #324]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043910:	f023 6380 	bic.w	r3, r3, #67108864	@ 0x4000000
 8043914:	6013      	str	r3, [r2, #0]
 8043916:	f7fd fe2f 	bl	8041578 <HAL_GetTick>
 804391a:	60b8      	str	r0, [r7, #8]
 804391c:	e00f      	b.n	804393e <RCCEx_PLLSAI1_Config+0xa6>
 804391e:	f7fd fe2b 	bl	8041578 <HAL_GetTick>
 8043922:	4602      	mov	r2, r0
 8043924:	68bb      	ldr	r3, [r7, #8]
 8043926:	1ad3      	subs	r3, r2, r3
 8043928:	2b02      	cmp	r3, #2
 804392a:	d908      	bls.n	804393e <RCCEx_PLLSAI1_Config+0xa6>
 804392c:	4b49      	ldr	r3, [pc, #292]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 804392e:	681b      	ldr	r3, [r3, #0]
 8043930:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 8043934:	2b00      	cmp	r3, #0
 8043936:	d009      	beq.n	804394c <RCCEx_PLLSAI1_Config+0xb4>
 8043938:	2303      	movs	r3, #3
 804393a:	73fb      	strb	r3, [r7, #15]
 804393c:	e006      	b.n	804394c <RCCEx_PLLSAI1_Config+0xb4>
 804393e:	4b45      	ldr	r3, [pc, #276]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043940:	681b      	ldr	r3, [r3, #0]
 8043942:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 8043946:	2b00      	cmp	r3, #0
 8043948:	d1e9      	bne.n	804391e <RCCEx_PLLSAI1_Config+0x86>
 804394a:	e000      	b.n	804394e <RCCEx_PLLSAI1_Config+0xb6>
 804394c:	bf00      	nop
 804394e:	7bfb      	ldrb	r3, [r7, #15]
 8043950:	2b00      	cmp	r3, #0
 8043952:	d179      	bne.n	8043a48 <RCCEx_PLLSAI1_Config+0x1b0>
 8043954:	683b      	ldr	r3, [r7, #0]
 8043956:	2b00      	cmp	r3, #0
 8043958:	d116      	bne.n	8043988 <RCCEx_PLLSAI1_Config+0xf0>
 804395a:	4b3e      	ldr	r3, [pc, #248]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 804395c:	691a      	ldr	r2, [r3, #16]
 804395e:	4b3e      	ldr	r3, [pc, #248]	@ (8043a58 <RCCEx_PLLSAI1_Config+0x1c0>)
 8043960:	4013      	ands	r3, r2
 8043962:	687a      	ldr	r2, [r7, #4]
 8043964:	6892      	ldr	r2, [r2, #8]
 8043966:	0211      	lsls	r1, r2, #8
 8043968:	687a      	ldr	r2, [r7, #4]
 804396a:	68d2      	ldr	r2, [r2, #12]
 804396c:	06d2      	lsls	r2, r2, #27
 804396e:	4311      	orrs	r1, r2
 8043970:	687a      	ldr	r2, [r7, #4]
 8043972:	6852      	ldr	r2, [r2, #4]
 8043974:	3a01      	subs	r2, #1
 8043976:	0112      	lsls	r2, r2, #4
 8043978:	4311      	orrs	r1, r2
 804397a:	687a      	ldr	r2, [r7, #4]
 804397c:	6812      	ldr	r2, [r2, #0]
 804397e:	430a      	orrs	r2, r1
 8043980:	4934      	ldr	r1, [pc, #208]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043982:	4313      	orrs	r3, r2
 8043984:	610b      	str	r3, [r1, #16]
 8043986:	e033      	b.n	80439f0 <RCCEx_PLLSAI1_Config+0x158>
 8043988:	683b      	ldr	r3, [r7, #0]
 804398a:	2b01      	cmp	r3, #1
 804398c:	d118      	bne.n	80439c0 <RCCEx_PLLSAI1_Config+0x128>
 804398e:	4b31      	ldr	r3, [pc, #196]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043990:	691a      	ldr	r2, [r3, #16]
 8043992:	4b32      	ldr	r3, [pc, #200]	@ (8043a5c <RCCEx_PLLSAI1_Config+0x1c4>)
 8043994:	4013      	ands	r3, r2
 8043996:	687a      	ldr	r2, [r7, #4]
 8043998:	6892      	ldr	r2, [r2, #8]
 804399a:	0211      	lsls	r1, r2, #8
 804399c:	687a      	ldr	r2, [r7, #4]
 804399e:	6912      	ldr	r2, [r2, #16]
 80439a0:	0852      	lsrs	r2, r2, #1
 80439a2:	3a01      	subs	r2, #1
 80439a4:	0552      	lsls	r2, r2, #21
 80439a6:	4311      	orrs	r1, r2
 80439a8:	687a      	ldr	r2, [r7, #4]
 80439aa:	6852      	ldr	r2, [r2, #4]
 80439ac:	3a01      	subs	r2, #1
 80439ae:	0112      	lsls	r2, r2, #4
 80439b0:	4311      	orrs	r1, r2
 80439b2:	687a      	ldr	r2, [r7, #4]
 80439b4:	6812      	ldr	r2, [r2, #0]
 80439b6:	430a      	orrs	r2, r1
 80439b8:	4926      	ldr	r1, [pc, #152]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80439ba:	4313      	orrs	r3, r2
 80439bc:	610b      	str	r3, [r1, #16]
 80439be:	e017      	b.n	80439f0 <RCCEx_PLLSAI1_Config+0x158>
 80439c0:	4b24      	ldr	r3, [pc, #144]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80439c2:	691a      	ldr	r2, [r3, #16]
 80439c4:	4b26      	ldr	r3, [pc, #152]	@ (8043a60 <RCCEx_PLLSAI1_Config+0x1c8>)
 80439c6:	4013      	ands	r3, r2
 80439c8:	687a      	ldr	r2, [r7, #4]
 80439ca:	6892      	ldr	r2, [r2, #8]
 80439cc:	0211      	lsls	r1, r2, #8
 80439ce:	687a      	ldr	r2, [r7, #4]
 80439d0:	6952      	ldr	r2, [r2, #20]
 80439d2:	0852      	lsrs	r2, r2, #1
 80439d4:	3a01      	subs	r2, #1
 80439d6:	0652      	lsls	r2, r2, #25
 80439d8:	4311      	orrs	r1, r2
 80439da:	687a      	ldr	r2, [r7, #4]
 80439dc:	6852      	ldr	r2, [r2, #4]
 80439de:	3a01      	subs	r2, #1
 80439e0:	0112      	lsls	r2, r2, #4
 80439e2:	4311      	orrs	r1, r2
 80439e4:	687a      	ldr	r2, [r7, #4]
 80439e6:	6812      	ldr	r2, [r2, #0]
 80439e8:	430a      	orrs	r2, r1
 80439ea:	491a      	ldr	r1, [pc, #104]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80439ec:	4313      	orrs	r3, r2
 80439ee:	610b      	str	r3, [r1, #16]
 80439f0:	4b18      	ldr	r3, [pc, #96]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80439f2:	681b      	ldr	r3, [r3, #0]
 80439f4:	4a17      	ldr	r2, [pc, #92]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 80439f6:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 80439fa:	6013      	str	r3, [r2, #0]
 80439fc:	f7fd fdbc 	bl	8041578 <HAL_GetTick>
 8043a00:	60b8      	str	r0, [r7, #8]
 8043a02:	e00f      	b.n	8043a24 <RCCEx_PLLSAI1_Config+0x18c>
 8043a04:	f7fd fdb8 	bl	8041578 <HAL_GetTick>
 8043a08:	4602      	mov	r2, r0
 8043a0a:	68bb      	ldr	r3, [r7, #8]
 8043a0c:	1ad3      	subs	r3, r2, r3
 8043a0e:	2b02      	cmp	r3, #2
 8043a10:	d908      	bls.n	8043a24 <RCCEx_PLLSAI1_Config+0x18c>
 8043a12:	4b10      	ldr	r3, [pc, #64]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043a14:	681b      	ldr	r3, [r3, #0]
 8043a16:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 8043a1a:	2b00      	cmp	r3, #0
 8043a1c:	d109      	bne.n	8043a32 <RCCEx_PLLSAI1_Config+0x19a>
 8043a1e:	2303      	movs	r3, #3
 8043a20:	73fb      	strb	r3, [r7, #15]
 8043a22:	e006      	b.n	8043a32 <RCCEx_PLLSAI1_Config+0x19a>
 8043a24:	4b0b      	ldr	r3, [pc, #44]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043a26:	681b      	ldr	r3, [r3, #0]
 8043a28:	f003 6300 	and.w	r3, r3, #134217728	@ 0x8000000
 8043a2c:	2b00      	cmp	r3, #0
 8043a2e:	d0e9      	beq.n	8043a04 <RCCEx_PLLSAI1_Config+0x16c>
 8043a30:	e000      	b.n	8043a34 <RCCEx_PLLSAI1_Config+0x19c>
 8043a32:	bf00      	nop
 8043a34:	7bfb      	ldrb	r3, [r7, #15]
 8043a36:	2b00      	cmp	r3, #0
 8043a38:	d106      	bne.n	8043a48 <RCCEx_PLLSAI1_Config+0x1b0>
 8043a3a:	4b06      	ldr	r3, [pc, #24]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043a3c:	691a      	ldr	r2, [r3, #16]
 8043a3e:	687b      	ldr	r3, [r7, #4]
 8043a40:	699b      	ldr	r3, [r3, #24]
 8043a42:	4904      	ldr	r1, [pc, #16]	@ (8043a54 <RCCEx_PLLSAI1_Config+0x1bc>)
 8043a44:	4313      	orrs	r3, r2
 8043a46:	610b      	str	r3, [r1, #16]
 8043a48:	7bfb      	ldrb	r3, [r7, #15]
 8043a4a:	4618      	mov	r0, r3
 8043a4c:	3710      	adds	r7, #16
 8043a4e:	46bd      	mov	sp, r7
 8043a50:	bd80      	pop	{r7, pc}
 8043a52:	bf00      	nop
 8043a54:	40021000 	.word	0x40021000
 8043a58:	07ff800c 	.word	0x07ff800c
 8043a5c:	ff9f800c 	.word	0xff9f800c
 8043a60:	f9ff800c 	.word	0xf9ff800c

08043a64 <RCCEx_PLLSAI2_Config>:
 8043a64:	b580      	push	{r7, lr}
 8043a66:	b084      	sub	sp, #16
 8043a68:	af00      	add	r7, sp, #0
 8043a6a:	6078      	str	r0, [r7, #4]
 8043a6c:	6039      	str	r1, [r7, #0]
 8043a6e:	2300      	movs	r3, #0
 8043a70:	73fb      	strb	r3, [r7, #15]
 8043a72:	687b      	ldr	r3, [r7, #4]
 8043a74:	681b      	ldr	r3, [r3, #0]
 8043a76:	2b03      	cmp	r3, #3
 8043a78:	d018      	beq.n	8043aac <RCCEx_PLLSAI2_Config+0x48>
 8043a7a:	2b03      	cmp	r3, #3
 8043a7c:	d81f      	bhi.n	8043abe <RCCEx_PLLSAI2_Config+0x5a>
 8043a7e:	2b01      	cmp	r3, #1
 8043a80:	d002      	beq.n	8043a88 <RCCEx_PLLSAI2_Config+0x24>
 8043a82:	2b02      	cmp	r3, #2
 8043a84:	d009      	beq.n	8043a9a <RCCEx_PLLSAI2_Config+0x36>
 8043a86:	e01a      	b.n	8043abe <RCCEx_PLLSAI2_Config+0x5a>
 8043a88:	4b4a      	ldr	r3, [pc, #296]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043a8a:	681b      	ldr	r3, [r3, #0]
 8043a8c:	f003 0302 	and.w	r3, r3, #2
 8043a90:	2b00      	cmp	r3, #0
 8043a92:	d117      	bne.n	8043ac4 <RCCEx_PLLSAI2_Config+0x60>
 8043a94:	2301      	movs	r3, #1
 8043a96:	73fb      	strb	r3, [r7, #15]
 8043a98:	e014      	b.n	8043ac4 <RCCEx_PLLSAI2_Config+0x60>
 8043a9a:	4b46      	ldr	r3, [pc, #280]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043a9c:	681b      	ldr	r3, [r3, #0]
 8043a9e:	f403 6380 	and.w	r3, r3, #1024	@ 0x400
 8043aa2:	2b00      	cmp	r3, #0
 8043aa4:	d110      	bne.n	8043ac8 <RCCEx_PLLSAI2_Config+0x64>
 8043aa6:	2301      	movs	r3, #1
 8043aa8:	73fb      	strb	r3, [r7, #15]
 8043aaa:	e00d      	b.n	8043ac8 <RCCEx_PLLSAI2_Config+0x64>
 8043aac:	4b41      	ldr	r3, [pc, #260]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043aae:	681b      	ldr	r3, [r3, #0]
 8043ab0:	f403 23c0 	and.w	r3, r3, #393216	@ 0x60000
 8043ab4:	2b00      	cmp	r3, #0
 8043ab6:	d109      	bne.n	8043acc <RCCEx_PLLSAI2_Config+0x68>
 8043ab8:	2301      	movs	r3, #1
 8043aba:	73fb      	strb	r3, [r7, #15]
 8043abc:	e006      	b.n	8043acc <RCCEx_PLLSAI2_Config+0x68>
 8043abe:	2301      	movs	r3, #1
 8043ac0:	73fb      	strb	r3, [r7, #15]
 8043ac2:	e004      	b.n	8043ace <RCCEx_PLLSAI2_Config+0x6a>
 8043ac4:	bf00      	nop
 8043ac6:	e002      	b.n	8043ace <RCCEx_PLLSAI2_Config+0x6a>
 8043ac8:	bf00      	nop
 8043aca:	e000      	b.n	8043ace <RCCEx_PLLSAI2_Config+0x6a>
 8043acc:	bf00      	nop
 8043ace:	7bfb      	ldrb	r3, [r7, #15]
 8043ad0:	2b00      	cmp	r3, #0
 8043ad2:	d169      	bne.n	8043ba8 <RCCEx_PLLSAI2_Config+0x144>
 8043ad4:	4b37      	ldr	r3, [pc, #220]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043ad6:	681b      	ldr	r3, [r3, #0]
 8043ad8:	4a36      	ldr	r2, [pc, #216]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043ada:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8043ade:	6013      	str	r3, [r2, #0]
 8043ae0:	f7fd fd4a 	bl	8041578 <HAL_GetTick>
 8043ae4:	60b8      	str	r0, [r7, #8]
 8043ae6:	e00f      	b.n	8043b08 <RCCEx_PLLSAI2_Config+0xa4>
 8043ae8:	f7fd fd46 	bl	8041578 <HAL_GetTick>
 8043aec:	4602      	mov	r2, r0
 8043aee:	68bb      	ldr	r3, [r7, #8]
 8043af0:	1ad3      	subs	r3, r2, r3
 8043af2:	2b02      	cmp	r3, #2
 8043af4:	d908      	bls.n	8043b08 <RCCEx_PLLSAI2_Config+0xa4>
 8043af6:	4b2f      	ldr	r3, [pc, #188]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043af8:	681b      	ldr	r3, [r3, #0]
 8043afa:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8043afe:	2b00      	cmp	r3, #0
 8043b00:	d009      	beq.n	8043b16 <RCCEx_PLLSAI2_Config+0xb2>
 8043b02:	2303      	movs	r3, #3
 8043b04:	73fb      	strb	r3, [r7, #15]
 8043b06:	e006      	b.n	8043b16 <RCCEx_PLLSAI2_Config+0xb2>
 8043b08:	4b2a      	ldr	r3, [pc, #168]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b0a:	681b      	ldr	r3, [r3, #0]
 8043b0c:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8043b10:	2b00      	cmp	r3, #0
 8043b12:	d1e9      	bne.n	8043ae8 <RCCEx_PLLSAI2_Config+0x84>
 8043b14:	e000      	b.n	8043b18 <RCCEx_PLLSAI2_Config+0xb4>
 8043b16:	bf00      	nop
 8043b18:	7bfb      	ldrb	r3, [r7, #15]
 8043b1a:	2b00      	cmp	r3, #0
 8043b1c:	d144      	bne.n	8043ba8 <RCCEx_PLLSAI2_Config+0x144>
 8043b1e:	683b      	ldr	r3, [r7, #0]
 8043b20:	2b00      	cmp	r3, #0
 8043b22:	d115      	bne.n	8043b50 <RCCEx_PLLSAI2_Config+0xec>
 8043b24:	4b23      	ldr	r3, [pc, #140]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b26:	695a      	ldr	r2, [r3, #20]
 8043b28:	4b23      	ldr	r3, [pc, #140]	@ (8043bb8 <RCCEx_PLLSAI2_Config+0x154>)
 8043b2a:	4013      	ands	r3, r2
 8043b2c:	687a      	ldr	r2, [r7, #4]
 8043b2e:	6892      	ldr	r2, [r2, #8]
 8043b30:	0211      	lsls	r1, r2, #8
 8043b32:	687a      	ldr	r2, [r7, #4]
 8043b34:	68d2      	ldr	r2, [r2, #12]
 8043b36:	06d2      	lsls	r2, r2, #27
 8043b38:	4311      	orrs	r1, r2
 8043b3a:	687a      	ldr	r2, [r7, #4]
 8043b3c:	6852      	ldr	r2, [r2, #4]
 8043b3e:	3a01      	subs	r2, #1
 8043b40:	0112      	lsls	r2, r2, #4
 8043b42:	4311      	orrs	r1, r2
 8043b44:	687a      	ldr	r2, [r7, #4]
 8043b46:	6812      	ldr	r2, [r2, #0]
 8043b48:	430a      	orrs	r2, r1
 8043b4a:	491a      	ldr	r1, [pc, #104]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b4c:	4313      	orrs	r3, r2
 8043b4e:	614b      	str	r3, [r1, #20]
 8043b50:	4b18      	ldr	r3, [pc, #96]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b52:	681b      	ldr	r3, [r3, #0]
 8043b54:	4a17      	ldr	r2, [pc, #92]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b56:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8043b5a:	6013      	str	r3, [r2, #0]
 8043b5c:	f7fd fd0c 	bl	8041578 <HAL_GetTick>
 8043b60:	60b8      	str	r0, [r7, #8]
 8043b62:	e00f      	b.n	8043b84 <RCCEx_PLLSAI2_Config+0x120>
 8043b64:	f7fd fd08 	bl	8041578 <HAL_GetTick>
 8043b68:	4602      	mov	r2, r0
 8043b6a:	68bb      	ldr	r3, [r7, #8]
 8043b6c:	1ad3      	subs	r3, r2, r3
 8043b6e:	2b02      	cmp	r3, #2
 8043b70:	d908      	bls.n	8043b84 <RCCEx_PLLSAI2_Config+0x120>
 8043b72:	4b10      	ldr	r3, [pc, #64]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b74:	681b      	ldr	r3, [r3, #0]
 8043b76:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8043b7a:	2b00      	cmp	r3, #0
 8043b7c:	d109      	bne.n	8043b92 <RCCEx_PLLSAI2_Config+0x12e>
 8043b7e:	2303      	movs	r3, #3
 8043b80:	73fb      	strb	r3, [r7, #15]
 8043b82:	e006      	b.n	8043b92 <RCCEx_PLLSAI2_Config+0x12e>
 8043b84:	4b0b      	ldr	r3, [pc, #44]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b86:	681b      	ldr	r3, [r3, #0]
 8043b88:	f003 5300 	and.w	r3, r3, #536870912	@ 0x20000000
 8043b8c:	2b00      	cmp	r3, #0
 8043b8e:	d0e9      	beq.n	8043b64 <RCCEx_PLLSAI2_Config+0x100>
 8043b90:	e000      	b.n	8043b94 <RCCEx_PLLSAI2_Config+0x130>
 8043b92:	bf00      	nop
 8043b94:	7bfb      	ldrb	r3, [r7, #15]
 8043b96:	2b00      	cmp	r3, #0
 8043b98:	d106      	bne.n	8043ba8 <RCCEx_PLLSAI2_Config+0x144>
 8043b9a:	4b06      	ldr	r3, [pc, #24]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043b9c:	695a      	ldr	r2, [r3, #20]
 8043b9e:	687b      	ldr	r3, [r7, #4]
 8043ba0:	691b      	ldr	r3, [r3, #16]
 8043ba2:	4904      	ldr	r1, [pc, #16]	@ (8043bb4 <RCCEx_PLLSAI2_Config+0x150>)
 8043ba4:	4313      	orrs	r3, r2
 8043ba6:	614b      	str	r3, [r1, #20]
 8043ba8:	7bfb      	ldrb	r3, [r7, #15]
 8043baa:	4618      	mov	r0, r3
 8043bac:	3710      	adds	r7, #16
 8043bae:	46bd      	mov	sp, r7
 8043bb0:	bd80      	pop	{r7, pc}
 8043bb2:	bf00      	nop
 8043bb4:	40021000 	.word	0x40021000
 8043bb8:	07ff800c 	.word	0x07ff800c

08043bbc <HAL_TIM_Base_Init>:
 8043bbc:	b580      	push	{r7, lr}
 8043bbe:	b082      	sub	sp, #8
 8043bc0:	af00      	add	r7, sp, #0
 8043bc2:	6078      	str	r0, [r7, #4]
 8043bc4:	687b      	ldr	r3, [r7, #4]
 8043bc6:	2b00      	cmp	r3, #0
 8043bc8:	d101      	bne.n	8043bce <HAL_TIM_Base_Init+0x12>
 8043bca:	2301      	movs	r3, #1
 8043bcc:	e049      	b.n	8043c62 <HAL_TIM_Base_Init+0xa6>
 8043bce:	687b      	ldr	r3, [r7, #4]
 8043bd0:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8043bd4:	b2db      	uxtb	r3, r3
 8043bd6:	2b00      	cmp	r3, #0
 8043bd8:	d106      	bne.n	8043be8 <HAL_TIM_Base_Init+0x2c>
 8043bda:	687b      	ldr	r3, [r7, #4]
 8043bdc:	2200      	movs	r2, #0
 8043bde:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8043be2:	6878      	ldr	r0, [r7, #4]
 8043be4:	f7fd fb20 	bl	8041228 <HAL_TIM_Base_MspInit>
 8043be8:	687b      	ldr	r3, [r7, #4]
 8043bea:	2202      	movs	r2, #2
 8043bec:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043bf0:	687b      	ldr	r3, [r7, #4]
 8043bf2:	681a      	ldr	r2, [r3, #0]
 8043bf4:	687b      	ldr	r3, [r7, #4]
 8043bf6:	3304      	adds	r3, #4
 8043bf8:	4619      	mov	r1, r3
 8043bfa:	4610      	mov	r0, r2
 8043bfc:	f000 f9c2 	bl	8043f84 <TIM_Base_SetConfig>
 8043c00:	687b      	ldr	r3, [r7, #4]
 8043c02:	2201      	movs	r2, #1
 8043c04:	f883 2048 	strb.w	r2, [r3, #72]	@ 0x48
 8043c08:	687b      	ldr	r3, [r7, #4]
 8043c0a:	2201      	movs	r2, #1
 8043c0c:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 8043c10:	687b      	ldr	r3, [r7, #4]
 8043c12:	2201      	movs	r2, #1
 8043c14:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 8043c18:	687b      	ldr	r3, [r7, #4]
 8043c1a:	2201      	movs	r2, #1
 8043c1c:	f883 2040 	strb.w	r2, [r3, #64]	@ 0x40
 8043c20:	687b      	ldr	r3, [r7, #4]
 8043c22:	2201      	movs	r2, #1
 8043c24:	f883 2041 	strb.w	r2, [r3, #65]	@ 0x41
 8043c28:	687b      	ldr	r3, [r7, #4]
 8043c2a:	2201      	movs	r2, #1
 8043c2c:	f883 2042 	strb.w	r2, [r3, #66]	@ 0x42
 8043c30:	687b      	ldr	r3, [r7, #4]
 8043c32:	2201      	movs	r2, #1
 8043c34:	f883 2043 	strb.w	r2, [r3, #67]	@ 0x43
 8043c38:	687b      	ldr	r3, [r7, #4]
 8043c3a:	2201      	movs	r2, #1
 8043c3c:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8043c40:	687b      	ldr	r3, [r7, #4]
 8043c42:	2201      	movs	r2, #1
 8043c44:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8043c48:	687b      	ldr	r3, [r7, #4]
 8043c4a:	2201      	movs	r2, #1
 8043c4c:	f883 2046 	strb.w	r2, [r3, #70]	@ 0x46
 8043c50:	687b      	ldr	r3, [r7, #4]
 8043c52:	2201      	movs	r2, #1
 8043c54:	f883 2047 	strb.w	r2, [r3, #71]	@ 0x47
 8043c58:	687b      	ldr	r3, [r7, #4]
 8043c5a:	2201      	movs	r2, #1
 8043c5c:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043c60:	2300      	movs	r3, #0
 8043c62:	4618      	mov	r0, r3
 8043c64:	3708      	adds	r7, #8
 8043c66:	46bd      	mov	sp, r7
 8043c68:	bd80      	pop	{r7, pc}

08043c6a <HAL_TIM_Base_Stop>:
 8043c6a:	b480      	push	{r7}
 8043c6c:	b083      	sub	sp, #12
 8043c6e:	af00      	add	r7, sp, #0
 8043c70:	6078      	str	r0, [r7, #4]
 8043c72:	687b      	ldr	r3, [r7, #4]
 8043c74:	681b      	ldr	r3, [r3, #0]
 8043c76:	6a1a      	ldr	r2, [r3, #32]
 8043c78:	f241 1311 	movw	r3, #4369	@ 0x1111
 8043c7c:	4013      	ands	r3, r2
 8043c7e:	2b00      	cmp	r3, #0
 8043c80:	d10f      	bne.n	8043ca2 <HAL_TIM_Base_Stop+0x38>
 8043c82:	687b      	ldr	r3, [r7, #4]
 8043c84:	681b      	ldr	r3, [r3, #0]
 8043c86:	6a1a      	ldr	r2, [r3, #32]
 8043c88:	f240 4344 	movw	r3, #1092	@ 0x444
 8043c8c:	4013      	ands	r3, r2
 8043c8e:	2b00      	cmp	r3, #0
 8043c90:	d107      	bne.n	8043ca2 <HAL_TIM_Base_Stop+0x38>
 8043c92:	687b      	ldr	r3, [r7, #4]
 8043c94:	681b      	ldr	r3, [r3, #0]
 8043c96:	681a      	ldr	r2, [r3, #0]
 8043c98:	687b      	ldr	r3, [r7, #4]
 8043c9a:	681b      	ldr	r3, [r3, #0]
 8043c9c:	f022 0201 	bic.w	r2, r2, #1
 8043ca0:	601a      	str	r2, [r3, #0]
 8043ca2:	687b      	ldr	r3, [r7, #4]
 8043ca4:	2201      	movs	r2, #1
 8043ca6:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043caa:	2300      	movs	r3, #0
 8043cac:	4618      	mov	r0, r3
 8043cae:	370c      	adds	r7, #12
 8043cb0:	46bd      	mov	sp, r7
 8043cb2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043cb6:	4770      	bx	lr

08043cb8 <HAL_TIM_OnePulse_Init>:
 8043cb8:	b580      	push	{r7, lr}
 8043cba:	b082      	sub	sp, #8
 8043cbc:	af00      	add	r7, sp, #0
 8043cbe:	6078      	str	r0, [r7, #4]
 8043cc0:	6039      	str	r1, [r7, #0]
 8043cc2:	687b      	ldr	r3, [r7, #4]
 8043cc4:	2b00      	cmp	r3, #0
 8043cc6:	d101      	bne.n	8043ccc <HAL_TIM_OnePulse_Init+0x14>
 8043cc8:	2301      	movs	r3, #1
 8043cca:	e041      	b.n	8043d50 <HAL_TIM_OnePulse_Init+0x98>
 8043ccc:	687b      	ldr	r3, [r7, #4]
 8043cce:	f893 303d 	ldrb.w	r3, [r3, #61]	@ 0x3d
 8043cd2:	b2db      	uxtb	r3, r3
 8043cd4:	2b00      	cmp	r3, #0
 8043cd6:	d106      	bne.n	8043ce6 <HAL_TIM_OnePulse_Init+0x2e>
 8043cd8:	687b      	ldr	r3, [r7, #4]
 8043cda:	2200      	movs	r2, #0
 8043cdc:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8043ce0:	6878      	ldr	r0, [r7, #4]
 8043ce2:	f000 f839 	bl	8043d58 <HAL_TIM_OnePulse_MspInit>
 8043ce6:	687b      	ldr	r3, [r7, #4]
 8043ce8:	2202      	movs	r2, #2
 8043cea:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043cee:	687b      	ldr	r3, [r7, #4]
 8043cf0:	681a      	ldr	r2, [r3, #0]
 8043cf2:	687b      	ldr	r3, [r7, #4]
 8043cf4:	3304      	adds	r3, #4
 8043cf6:	4619      	mov	r1, r3
 8043cf8:	4610      	mov	r0, r2
 8043cfa:	f000 f943 	bl	8043f84 <TIM_Base_SetConfig>
 8043cfe:	687b      	ldr	r3, [r7, #4]
 8043d00:	681b      	ldr	r3, [r3, #0]
 8043d02:	681a      	ldr	r2, [r3, #0]
 8043d04:	687b      	ldr	r3, [r7, #4]
 8043d06:	681b      	ldr	r3, [r3, #0]
 8043d08:	f022 0208 	bic.w	r2, r2, #8
 8043d0c:	601a      	str	r2, [r3, #0]
 8043d0e:	687b      	ldr	r3, [r7, #4]
 8043d10:	681b      	ldr	r3, [r3, #0]
 8043d12:	6819      	ldr	r1, [r3, #0]
 8043d14:	687b      	ldr	r3, [r7, #4]
 8043d16:	681b      	ldr	r3, [r3, #0]
 8043d18:	683a      	ldr	r2, [r7, #0]
 8043d1a:	430a      	orrs	r2, r1
 8043d1c:	601a      	str	r2, [r3, #0]
 8043d1e:	687b      	ldr	r3, [r7, #4]
 8043d20:	2201      	movs	r2, #1
 8043d22:	f883 2048 	strb.w	r2, [r3, #72]	@ 0x48
 8043d26:	687b      	ldr	r3, [r7, #4]
 8043d28:	2201      	movs	r2, #1
 8043d2a:	f883 203e 	strb.w	r2, [r3, #62]	@ 0x3e
 8043d2e:	687b      	ldr	r3, [r7, #4]
 8043d30:	2201      	movs	r2, #1
 8043d32:	f883 203f 	strb.w	r2, [r3, #63]	@ 0x3f
 8043d36:	687b      	ldr	r3, [r7, #4]
 8043d38:	2201      	movs	r2, #1
 8043d3a:	f883 2044 	strb.w	r2, [r3, #68]	@ 0x44
 8043d3e:	687b      	ldr	r3, [r7, #4]
 8043d40:	2201      	movs	r2, #1
 8043d42:	f883 2045 	strb.w	r2, [r3, #69]	@ 0x45
 8043d46:	687b      	ldr	r3, [r7, #4]
 8043d48:	2201      	movs	r2, #1
 8043d4a:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043d4e:	2300      	movs	r3, #0
 8043d50:	4618      	mov	r0, r3
 8043d52:	3708      	adds	r7, #8
 8043d54:	46bd      	mov	sp, r7
 8043d56:	bd80      	pop	{r7, pc}

08043d58 <HAL_TIM_OnePulse_MspInit>:
 8043d58:	b480      	push	{r7}
 8043d5a:	b083      	sub	sp, #12
 8043d5c:	af00      	add	r7, sp, #0
 8043d5e:	6078      	str	r0, [r7, #4]
 8043d60:	bf00      	nop
 8043d62:	370c      	adds	r7, #12
 8043d64:	46bd      	mov	sp, r7
 8043d66:	f85d 7b04 	ldr.w	r7, [sp], #4
 8043d6a:	4770      	bx	lr

08043d6c <HAL_TIM_ConfigClockSource>:
 8043d6c:	b580      	push	{r7, lr}
 8043d6e:	b084      	sub	sp, #16
 8043d70:	af00      	add	r7, sp, #0
 8043d72:	6078      	str	r0, [r7, #4]
 8043d74:	6039      	str	r1, [r7, #0]
 8043d76:	2300      	movs	r3, #0
 8043d78:	73fb      	strb	r3, [r7, #15]
 8043d7a:	687b      	ldr	r3, [r7, #4]
 8043d7c:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8043d80:	2b01      	cmp	r3, #1
 8043d82:	d101      	bne.n	8043d88 <HAL_TIM_ConfigClockSource+0x1c>
 8043d84:	2302      	movs	r3, #2
 8043d86:	e0b6      	b.n	8043ef6 <HAL_TIM_ConfigClockSource+0x18a>
 8043d88:	687b      	ldr	r3, [r7, #4]
 8043d8a:	2201      	movs	r2, #1
 8043d8c:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8043d90:	687b      	ldr	r3, [r7, #4]
 8043d92:	2202      	movs	r2, #2
 8043d94:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043d98:	687b      	ldr	r3, [r7, #4]
 8043d9a:	681b      	ldr	r3, [r3, #0]
 8043d9c:	689b      	ldr	r3, [r3, #8]
 8043d9e:	60bb      	str	r3, [r7, #8]
 8043da0:	68bb      	ldr	r3, [r7, #8]
 8043da2:	f423 1344 	bic.w	r3, r3, #3211264	@ 0x310000
 8043da6:	f023 0377 	bic.w	r3, r3, #119	@ 0x77
 8043daa:	60bb      	str	r3, [r7, #8]
 8043dac:	68bb      	ldr	r3, [r7, #8]
 8043dae:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 8043db2:	60bb      	str	r3, [r7, #8]
 8043db4:	687b      	ldr	r3, [r7, #4]
 8043db6:	681b      	ldr	r3, [r3, #0]
 8043db8:	68ba      	ldr	r2, [r7, #8]
 8043dba:	609a      	str	r2, [r3, #8]
 8043dbc:	683b      	ldr	r3, [r7, #0]
 8043dbe:	681b      	ldr	r3, [r3, #0]
 8043dc0:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8043dc4:	d03e      	beq.n	8043e44 <HAL_TIM_ConfigClockSource+0xd8>
 8043dc6:	f5b3 5f00 	cmp.w	r3, #8192	@ 0x2000
 8043dca:	f200 8087 	bhi.w	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043dce:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8043dd2:	f000 8086 	beq.w	8043ee2 <HAL_TIM_ConfigClockSource+0x176>
 8043dd6:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8043dda:	d87f      	bhi.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043ddc:	2b70      	cmp	r3, #112	@ 0x70
 8043dde:	d01a      	beq.n	8043e16 <HAL_TIM_ConfigClockSource+0xaa>
 8043de0:	2b70      	cmp	r3, #112	@ 0x70
 8043de2:	d87b      	bhi.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043de4:	2b60      	cmp	r3, #96	@ 0x60
 8043de6:	d050      	beq.n	8043e8a <HAL_TIM_ConfigClockSource+0x11e>
 8043de8:	2b60      	cmp	r3, #96	@ 0x60
 8043dea:	d877      	bhi.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043dec:	2b50      	cmp	r3, #80	@ 0x50
 8043dee:	d03c      	beq.n	8043e6a <HAL_TIM_ConfigClockSource+0xfe>
 8043df0:	2b50      	cmp	r3, #80	@ 0x50
 8043df2:	d873      	bhi.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043df4:	2b40      	cmp	r3, #64	@ 0x40
 8043df6:	d058      	beq.n	8043eaa <HAL_TIM_ConfigClockSource+0x13e>
 8043df8:	2b40      	cmp	r3, #64	@ 0x40
 8043dfa:	d86f      	bhi.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043dfc:	2b30      	cmp	r3, #48	@ 0x30
 8043dfe:	d064      	beq.n	8043eca <HAL_TIM_ConfigClockSource+0x15e>
 8043e00:	2b30      	cmp	r3, #48	@ 0x30
 8043e02:	d86b      	bhi.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043e04:	2b20      	cmp	r3, #32
 8043e06:	d060      	beq.n	8043eca <HAL_TIM_ConfigClockSource+0x15e>
 8043e08:	2b20      	cmp	r3, #32
 8043e0a:	d867      	bhi.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043e0c:	2b00      	cmp	r3, #0
 8043e0e:	d05c      	beq.n	8043eca <HAL_TIM_ConfigClockSource+0x15e>
 8043e10:	2b10      	cmp	r3, #16
 8043e12:	d05a      	beq.n	8043eca <HAL_TIM_ConfigClockSource+0x15e>
 8043e14:	e062      	b.n	8043edc <HAL_TIM_ConfigClockSource+0x170>
 8043e16:	687b      	ldr	r3, [r7, #4]
 8043e18:	6818      	ldr	r0, [r3, #0]
 8043e1a:	683b      	ldr	r3, [r7, #0]
 8043e1c:	6899      	ldr	r1, [r3, #8]
 8043e1e:	683b      	ldr	r3, [r7, #0]
 8043e20:	685a      	ldr	r2, [r3, #4]
 8043e22:	683b      	ldr	r3, [r7, #0]
 8043e24:	68db      	ldr	r3, [r3, #12]
 8043e26:	f000 fa64 	bl	80442f2 <TIM_ETR_SetConfig>
 8043e2a:	687b      	ldr	r3, [r7, #4]
 8043e2c:	681b      	ldr	r3, [r3, #0]
 8043e2e:	689b      	ldr	r3, [r3, #8]
 8043e30:	60bb      	str	r3, [r7, #8]
 8043e32:	68bb      	ldr	r3, [r7, #8]
 8043e34:	f043 0377 	orr.w	r3, r3, #119	@ 0x77
 8043e38:	60bb      	str	r3, [r7, #8]
 8043e3a:	687b      	ldr	r3, [r7, #4]
 8043e3c:	681b      	ldr	r3, [r3, #0]
 8043e3e:	68ba      	ldr	r2, [r7, #8]
 8043e40:	609a      	str	r2, [r3, #8]
 8043e42:	e04f      	b.n	8043ee4 <HAL_TIM_ConfigClockSource+0x178>
 8043e44:	687b      	ldr	r3, [r7, #4]
 8043e46:	6818      	ldr	r0, [r3, #0]
 8043e48:	683b      	ldr	r3, [r7, #0]
 8043e4a:	6899      	ldr	r1, [r3, #8]
 8043e4c:	683b      	ldr	r3, [r7, #0]
 8043e4e:	685a      	ldr	r2, [r3, #4]
 8043e50:	683b      	ldr	r3, [r7, #0]
 8043e52:	68db      	ldr	r3, [r3, #12]
 8043e54:	f000 fa4d 	bl	80442f2 <TIM_ETR_SetConfig>
 8043e58:	687b      	ldr	r3, [r7, #4]
 8043e5a:	681b      	ldr	r3, [r3, #0]
 8043e5c:	689a      	ldr	r2, [r3, #8]
 8043e5e:	687b      	ldr	r3, [r7, #4]
 8043e60:	681b      	ldr	r3, [r3, #0]
 8043e62:	f442 4280 	orr.w	r2, r2, #16384	@ 0x4000
 8043e66:	609a      	str	r2, [r3, #8]
 8043e68:	e03c      	b.n	8043ee4 <HAL_TIM_ConfigClockSource+0x178>
 8043e6a:	687b      	ldr	r3, [r7, #4]
 8043e6c:	6818      	ldr	r0, [r3, #0]
 8043e6e:	683b      	ldr	r3, [r7, #0]
 8043e70:	6859      	ldr	r1, [r3, #4]
 8043e72:	683b      	ldr	r3, [r7, #0]
 8043e74:	68db      	ldr	r3, [r3, #12]
 8043e76:	461a      	mov	r2, r3
 8043e78:	f000 f9bf 	bl	80441fa <TIM_TI1_ConfigInputStage>
 8043e7c:	687b      	ldr	r3, [r7, #4]
 8043e7e:	681b      	ldr	r3, [r3, #0]
 8043e80:	2150      	movs	r1, #80	@ 0x50
 8043e82:	4618      	mov	r0, r3
 8043e84:	f000 fa18 	bl	80442b8 <TIM_ITRx_SetConfig>
 8043e88:	e02c      	b.n	8043ee4 <HAL_TIM_ConfigClockSource+0x178>
 8043e8a:	687b      	ldr	r3, [r7, #4]
 8043e8c:	6818      	ldr	r0, [r3, #0]
 8043e8e:	683b      	ldr	r3, [r7, #0]
 8043e90:	6859      	ldr	r1, [r3, #4]
 8043e92:	683b      	ldr	r3, [r7, #0]
 8043e94:	68db      	ldr	r3, [r3, #12]
 8043e96:	461a      	mov	r2, r3
 8043e98:	f000 f9de 	bl	8044258 <TIM_TI2_ConfigInputStage>
 8043e9c:	687b      	ldr	r3, [r7, #4]
 8043e9e:	681b      	ldr	r3, [r3, #0]
 8043ea0:	2160      	movs	r1, #96	@ 0x60
 8043ea2:	4618      	mov	r0, r3
 8043ea4:	f000 fa08 	bl	80442b8 <TIM_ITRx_SetConfig>
 8043ea8:	e01c      	b.n	8043ee4 <HAL_TIM_ConfigClockSource+0x178>
 8043eaa:	687b      	ldr	r3, [r7, #4]
 8043eac:	6818      	ldr	r0, [r3, #0]
 8043eae:	683b      	ldr	r3, [r7, #0]
 8043eb0:	6859      	ldr	r1, [r3, #4]
 8043eb2:	683b      	ldr	r3, [r7, #0]
 8043eb4:	68db      	ldr	r3, [r3, #12]
 8043eb6:	461a      	mov	r2, r3
 8043eb8:	f000 f99f 	bl	80441fa <TIM_TI1_ConfigInputStage>
 8043ebc:	687b      	ldr	r3, [r7, #4]
 8043ebe:	681b      	ldr	r3, [r3, #0]
 8043ec0:	2140      	movs	r1, #64	@ 0x40
 8043ec2:	4618      	mov	r0, r3
 8043ec4:	f000 f9f8 	bl	80442b8 <TIM_ITRx_SetConfig>
 8043ec8:	e00c      	b.n	8043ee4 <HAL_TIM_ConfigClockSource+0x178>
 8043eca:	687b      	ldr	r3, [r7, #4]
 8043ecc:	681a      	ldr	r2, [r3, #0]
 8043ece:	683b      	ldr	r3, [r7, #0]
 8043ed0:	681b      	ldr	r3, [r3, #0]
 8043ed2:	4619      	mov	r1, r3
 8043ed4:	4610      	mov	r0, r2
 8043ed6:	f000 f9ef 	bl	80442b8 <TIM_ITRx_SetConfig>
 8043eda:	e003      	b.n	8043ee4 <HAL_TIM_ConfigClockSource+0x178>
 8043edc:	2301      	movs	r3, #1
 8043ede:	73fb      	strb	r3, [r7, #15]
 8043ee0:	e000      	b.n	8043ee4 <HAL_TIM_ConfigClockSource+0x178>
 8043ee2:	bf00      	nop
 8043ee4:	687b      	ldr	r3, [r7, #4]
 8043ee6:	2201      	movs	r2, #1
 8043ee8:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043eec:	687b      	ldr	r3, [r7, #4]
 8043eee:	2200      	movs	r2, #0
 8043ef0:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8043ef4:	7bfb      	ldrb	r3, [r7, #15]
 8043ef6:	4618      	mov	r0, r3
 8043ef8:	3710      	adds	r7, #16
 8043efa:	46bd      	mov	sp, r7
 8043efc:	bd80      	pop	{r7, pc}

08043efe <HAL_TIM_SlaveConfigSynchro>:
 8043efe:	b580      	push	{r7, lr}
 8043f00:	b082      	sub	sp, #8
 8043f02:	af00      	add	r7, sp, #0
 8043f04:	6078      	str	r0, [r7, #4]
 8043f06:	6039      	str	r1, [r7, #0]
 8043f08:	687b      	ldr	r3, [r7, #4]
 8043f0a:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8043f0e:	2b01      	cmp	r3, #1
 8043f10:	d101      	bne.n	8043f16 <HAL_TIM_SlaveConfigSynchro+0x18>
 8043f12:	2302      	movs	r3, #2
 8043f14:	e031      	b.n	8043f7a <HAL_TIM_SlaveConfigSynchro+0x7c>
 8043f16:	687b      	ldr	r3, [r7, #4]
 8043f18:	2201      	movs	r2, #1
 8043f1a:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8043f1e:	687b      	ldr	r3, [r7, #4]
 8043f20:	2202      	movs	r2, #2
 8043f22:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043f26:	6839      	ldr	r1, [r7, #0]
 8043f28:	6878      	ldr	r0, [r7, #4]
 8043f2a:	f000 f8d1 	bl	80440d0 <TIM_SlaveTimer_SetConfig>
 8043f2e:	4603      	mov	r3, r0
 8043f30:	2b00      	cmp	r3, #0
 8043f32:	d009      	beq.n	8043f48 <HAL_TIM_SlaveConfigSynchro+0x4a>
 8043f34:	687b      	ldr	r3, [r7, #4]
 8043f36:	2201      	movs	r2, #1
 8043f38:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043f3c:	687b      	ldr	r3, [r7, #4]
 8043f3e:	2200      	movs	r2, #0
 8043f40:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8043f44:	2301      	movs	r3, #1
 8043f46:	e018      	b.n	8043f7a <HAL_TIM_SlaveConfigSynchro+0x7c>
 8043f48:	687b      	ldr	r3, [r7, #4]
 8043f4a:	681b      	ldr	r3, [r3, #0]
 8043f4c:	68da      	ldr	r2, [r3, #12]
 8043f4e:	687b      	ldr	r3, [r7, #4]
 8043f50:	681b      	ldr	r3, [r3, #0]
 8043f52:	f022 0240 	bic.w	r2, r2, #64	@ 0x40
 8043f56:	60da      	str	r2, [r3, #12]
 8043f58:	687b      	ldr	r3, [r7, #4]
 8043f5a:	681b      	ldr	r3, [r3, #0]
 8043f5c:	68da      	ldr	r2, [r3, #12]
 8043f5e:	687b      	ldr	r3, [r7, #4]
 8043f60:	681b      	ldr	r3, [r3, #0]
 8043f62:	f422 4280 	bic.w	r2, r2, #16384	@ 0x4000
 8043f66:	60da      	str	r2, [r3, #12]
 8043f68:	687b      	ldr	r3, [r7, #4]
 8043f6a:	2201      	movs	r2, #1
 8043f6c:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8043f70:	687b      	ldr	r3, [r7, #4]
 8043f72:	2200      	movs	r2, #0
 8043f74:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8043f78:	2300      	movs	r3, #0
 8043f7a:	4618      	mov	r0, r3
 8043f7c:	3708      	adds	r7, #8
 8043f7e:	46bd      	mov	sp, r7
 8043f80:	bd80      	pop	{r7, pc}
	...

08043f84 <TIM_Base_SetConfig>:
 8043f84:	b480      	push	{r7}
 8043f86:	b085      	sub	sp, #20
 8043f88:	af00      	add	r7, sp, #0
 8043f8a:	6078      	str	r0, [r7, #4]
 8043f8c:	6039      	str	r1, [r7, #0]
 8043f8e:	687b      	ldr	r3, [r7, #4]
 8043f90:	681b      	ldr	r3, [r3, #0]
 8043f92:	60fb      	str	r3, [r7, #12]
 8043f94:	687b      	ldr	r3, [r7, #4]
 8043f96:	4a46      	ldr	r2, [pc, #280]	@ (80440b0 <TIM_Base_SetConfig+0x12c>)
 8043f98:	4293      	cmp	r3, r2
 8043f9a:	d013      	beq.n	8043fc4 <TIM_Base_SetConfig+0x40>
 8043f9c:	687b      	ldr	r3, [r7, #4]
 8043f9e:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8043fa2:	d00f      	beq.n	8043fc4 <TIM_Base_SetConfig+0x40>
 8043fa4:	687b      	ldr	r3, [r7, #4]
 8043fa6:	4a43      	ldr	r2, [pc, #268]	@ (80440b4 <TIM_Base_SetConfig+0x130>)
 8043fa8:	4293      	cmp	r3, r2
 8043faa:	d00b      	beq.n	8043fc4 <TIM_Base_SetConfig+0x40>
 8043fac:	687b      	ldr	r3, [r7, #4]
 8043fae:	4a42      	ldr	r2, [pc, #264]	@ (80440b8 <TIM_Base_SetConfig+0x134>)
 8043fb0:	4293      	cmp	r3, r2
 8043fb2:	d007      	beq.n	8043fc4 <TIM_Base_SetConfig+0x40>
 8043fb4:	687b      	ldr	r3, [r7, #4]
 8043fb6:	4a41      	ldr	r2, [pc, #260]	@ (80440bc <TIM_Base_SetConfig+0x138>)
 8043fb8:	4293      	cmp	r3, r2
 8043fba:	d003      	beq.n	8043fc4 <TIM_Base_SetConfig+0x40>
 8043fbc:	687b      	ldr	r3, [r7, #4]
 8043fbe:	4a40      	ldr	r2, [pc, #256]	@ (80440c0 <TIM_Base_SetConfig+0x13c>)
 8043fc0:	4293      	cmp	r3, r2
 8043fc2:	d108      	bne.n	8043fd6 <TIM_Base_SetConfig+0x52>
 8043fc4:	68fb      	ldr	r3, [r7, #12]
 8043fc6:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8043fca:	60fb      	str	r3, [r7, #12]
 8043fcc:	683b      	ldr	r3, [r7, #0]
 8043fce:	685b      	ldr	r3, [r3, #4]
 8043fd0:	68fa      	ldr	r2, [r7, #12]
 8043fd2:	4313      	orrs	r3, r2
 8043fd4:	60fb      	str	r3, [r7, #12]
 8043fd6:	687b      	ldr	r3, [r7, #4]
 8043fd8:	4a35      	ldr	r2, [pc, #212]	@ (80440b0 <TIM_Base_SetConfig+0x12c>)
 8043fda:	4293      	cmp	r3, r2
 8043fdc:	d01f      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 8043fde:	687b      	ldr	r3, [r7, #4]
 8043fe0:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 8043fe4:	d01b      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 8043fe6:	687b      	ldr	r3, [r7, #4]
 8043fe8:	4a32      	ldr	r2, [pc, #200]	@ (80440b4 <TIM_Base_SetConfig+0x130>)
 8043fea:	4293      	cmp	r3, r2
 8043fec:	d017      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 8043fee:	687b      	ldr	r3, [r7, #4]
 8043ff0:	4a31      	ldr	r2, [pc, #196]	@ (80440b8 <TIM_Base_SetConfig+0x134>)
 8043ff2:	4293      	cmp	r3, r2
 8043ff4:	d013      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 8043ff6:	687b      	ldr	r3, [r7, #4]
 8043ff8:	4a30      	ldr	r2, [pc, #192]	@ (80440bc <TIM_Base_SetConfig+0x138>)
 8043ffa:	4293      	cmp	r3, r2
 8043ffc:	d00f      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 8043ffe:	687b      	ldr	r3, [r7, #4]
 8044000:	4a2f      	ldr	r2, [pc, #188]	@ (80440c0 <TIM_Base_SetConfig+0x13c>)
 8044002:	4293      	cmp	r3, r2
 8044004:	d00b      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 8044006:	687b      	ldr	r3, [r7, #4]
 8044008:	4a2e      	ldr	r2, [pc, #184]	@ (80440c4 <TIM_Base_SetConfig+0x140>)
 804400a:	4293      	cmp	r3, r2
 804400c:	d007      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 804400e:	687b      	ldr	r3, [r7, #4]
 8044010:	4a2d      	ldr	r2, [pc, #180]	@ (80440c8 <TIM_Base_SetConfig+0x144>)
 8044012:	4293      	cmp	r3, r2
 8044014:	d003      	beq.n	804401e <TIM_Base_SetConfig+0x9a>
 8044016:	687b      	ldr	r3, [r7, #4]
 8044018:	4a2c      	ldr	r2, [pc, #176]	@ (80440cc <TIM_Base_SetConfig+0x148>)
 804401a:	4293      	cmp	r3, r2
 804401c:	d108      	bne.n	8044030 <TIM_Base_SetConfig+0xac>
 804401e:	68fb      	ldr	r3, [r7, #12]
 8044020:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8044024:	60fb      	str	r3, [r7, #12]
 8044026:	683b      	ldr	r3, [r7, #0]
 8044028:	68db      	ldr	r3, [r3, #12]
 804402a:	68fa      	ldr	r2, [r7, #12]
 804402c:	4313      	orrs	r3, r2
 804402e:	60fb      	str	r3, [r7, #12]
 8044030:	68fb      	ldr	r3, [r7, #12]
 8044032:	f023 0280 	bic.w	r2, r3, #128	@ 0x80
 8044036:	683b      	ldr	r3, [r7, #0]
 8044038:	695b      	ldr	r3, [r3, #20]
 804403a:	4313      	orrs	r3, r2
 804403c:	60fb      	str	r3, [r7, #12]
 804403e:	687b      	ldr	r3, [r7, #4]
 8044040:	68fa      	ldr	r2, [r7, #12]
 8044042:	601a      	str	r2, [r3, #0]
 8044044:	683b      	ldr	r3, [r7, #0]
 8044046:	689a      	ldr	r2, [r3, #8]
 8044048:	687b      	ldr	r3, [r7, #4]
 804404a:	62da      	str	r2, [r3, #44]	@ 0x2c
 804404c:	683b      	ldr	r3, [r7, #0]
 804404e:	681a      	ldr	r2, [r3, #0]
 8044050:	687b      	ldr	r3, [r7, #4]
 8044052:	629a      	str	r2, [r3, #40]	@ 0x28
 8044054:	687b      	ldr	r3, [r7, #4]
 8044056:	4a16      	ldr	r2, [pc, #88]	@ (80440b0 <TIM_Base_SetConfig+0x12c>)
 8044058:	4293      	cmp	r3, r2
 804405a:	d00f      	beq.n	804407c <TIM_Base_SetConfig+0xf8>
 804405c:	687b      	ldr	r3, [r7, #4]
 804405e:	4a18      	ldr	r2, [pc, #96]	@ (80440c0 <TIM_Base_SetConfig+0x13c>)
 8044060:	4293      	cmp	r3, r2
 8044062:	d00b      	beq.n	804407c <TIM_Base_SetConfig+0xf8>
 8044064:	687b      	ldr	r3, [r7, #4]
 8044066:	4a17      	ldr	r2, [pc, #92]	@ (80440c4 <TIM_Base_SetConfig+0x140>)
 8044068:	4293      	cmp	r3, r2
 804406a:	d007      	beq.n	804407c <TIM_Base_SetConfig+0xf8>
 804406c:	687b      	ldr	r3, [r7, #4]
 804406e:	4a16      	ldr	r2, [pc, #88]	@ (80440c8 <TIM_Base_SetConfig+0x144>)
 8044070:	4293      	cmp	r3, r2
 8044072:	d003      	beq.n	804407c <TIM_Base_SetConfig+0xf8>
 8044074:	687b      	ldr	r3, [r7, #4]
 8044076:	4a15      	ldr	r2, [pc, #84]	@ (80440cc <TIM_Base_SetConfig+0x148>)
 8044078:	4293      	cmp	r3, r2
 804407a:	d103      	bne.n	8044084 <TIM_Base_SetConfig+0x100>
 804407c:	683b      	ldr	r3, [r7, #0]
 804407e:	691a      	ldr	r2, [r3, #16]
 8044080:	687b      	ldr	r3, [r7, #4]
 8044082:	631a      	str	r2, [r3, #48]	@ 0x30
 8044084:	687b      	ldr	r3, [r7, #4]
 8044086:	2201      	movs	r2, #1
 8044088:	615a      	str	r2, [r3, #20]
 804408a:	687b      	ldr	r3, [r7, #4]
 804408c:	691b      	ldr	r3, [r3, #16]
 804408e:	f003 0301 	and.w	r3, r3, #1
 8044092:	2b01      	cmp	r3, #1
 8044094:	d105      	bne.n	80440a2 <TIM_Base_SetConfig+0x11e>
 8044096:	687b      	ldr	r3, [r7, #4]
 8044098:	691b      	ldr	r3, [r3, #16]
 804409a:	f023 0201 	bic.w	r2, r3, #1
 804409e:	687b      	ldr	r3, [r7, #4]
 80440a0:	611a      	str	r2, [r3, #16]
 80440a2:	bf00      	nop
 80440a4:	3714      	adds	r7, #20
 80440a6:	46bd      	mov	sp, r7
 80440a8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80440ac:	4770      	bx	lr
 80440ae:	bf00      	nop
 80440b0:	40012c00 	.word	0x40012c00
 80440b4:	40000400 	.word	0x40000400
 80440b8:	40000800 	.word	0x40000800
 80440bc:	40000c00 	.word	0x40000c00
 80440c0:	40013400 	.word	0x40013400
 80440c4:	40014000 	.word	0x40014000
 80440c8:	40014400 	.word	0x40014400
 80440cc:	40014800 	.word	0x40014800

080440d0 <TIM_SlaveTimer_SetConfig>:
 80440d0:	b580      	push	{r7, lr}
 80440d2:	b086      	sub	sp, #24
 80440d4:	af00      	add	r7, sp, #0
 80440d6:	6078      	str	r0, [r7, #4]
 80440d8:	6039      	str	r1, [r7, #0]
 80440da:	2300      	movs	r3, #0
 80440dc:	75fb      	strb	r3, [r7, #23]
 80440de:	687b      	ldr	r3, [r7, #4]
 80440e0:	681b      	ldr	r3, [r3, #0]
 80440e2:	689b      	ldr	r3, [r3, #8]
 80440e4:	613b      	str	r3, [r7, #16]
 80440e6:	693b      	ldr	r3, [r7, #16]
 80440e8:	f423 1340 	bic.w	r3, r3, #3145728	@ 0x300000
 80440ec:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 80440f0:	613b      	str	r3, [r7, #16]
 80440f2:	683b      	ldr	r3, [r7, #0]
 80440f4:	685b      	ldr	r3, [r3, #4]
 80440f6:	693a      	ldr	r2, [r7, #16]
 80440f8:	4313      	orrs	r3, r2
 80440fa:	613b      	str	r3, [r7, #16]
 80440fc:	693b      	ldr	r3, [r7, #16]
 80440fe:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8044102:	f023 0307 	bic.w	r3, r3, #7
 8044106:	613b      	str	r3, [r7, #16]
 8044108:	683b      	ldr	r3, [r7, #0]
 804410a:	681b      	ldr	r3, [r3, #0]
 804410c:	693a      	ldr	r2, [r7, #16]
 804410e:	4313      	orrs	r3, r2
 8044110:	613b      	str	r3, [r7, #16]
 8044112:	687b      	ldr	r3, [r7, #4]
 8044114:	681b      	ldr	r3, [r3, #0]
 8044116:	693a      	ldr	r2, [r7, #16]
 8044118:	609a      	str	r2, [r3, #8]
 804411a:	683b      	ldr	r3, [r7, #0]
 804411c:	685b      	ldr	r3, [r3, #4]
 804411e:	2b70      	cmp	r3, #112	@ 0x70
 8044120:	d01a      	beq.n	8044158 <TIM_SlaveTimer_SetConfig+0x88>
 8044122:	2b70      	cmp	r3, #112	@ 0x70
 8044124:	d860      	bhi.n	80441e8 <TIM_SlaveTimer_SetConfig+0x118>
 8044126:	2b60      	cmp	r3, #96	@ 0x60
 8044128:	d054      	beq.n	80441d4 <TIM_SlaveTimer_SetConfig+0x104>
 804412a:	2b60      	cmp	r3, #96	@ 0x60
 804412c:	d85c      	bhi.n	80441e8 <TIM_SlaveTimer_SetConfig+0x118>
 804412e:	2b50      	cmp	r3, #80	@ 0x50
 8044130:	d046      	beq.n	80441c0 <TIM_SlaveTimer_SetConfig+0xf0>
 8044132:	2b50      	cmp	r3, #80	@ 0x50
 8044134:	d858      	bhi.n	80441e8 <TIM_SlaveTimer_SetConfig+0x118>
 8044136:	2b40      	cmp	r3, #64	@ 0x40
 8044138:	d019      	beq.n	804416e <TIM_SlaveTimer_SetConfig+0x9e>
 804413a:	2b40      	cmp	r3, #64	@ 0x40
 804413c:	d854      	bhi.n	80441e8 <TIM_SlaveTimer_SetConfig+0x118>
 804413e:	2b30      	cmp	r3, #48	@ 0x30
 8044140:	d055      	beq.n	80441ee <TIM_SlaveTimer_SetConfig+0x11e>
 8044142:	2b30      	cmp	r3, #48	@ 0x30
 8044144:	d850      	bhi.n	80441e8 <TIM_SlaveTimer_SetConfig+0x118>
 8044146:	2b20      	cmp	r3, #32
 8044148:	d051      	beq.n	80441ee <TIM_SlaveTimer_SetConfig+0x11e>
 804414a:	2b20      	cmp	r3, #32
 804414c:	d84c      	bhi.n	80441e8 <TIM_SlaveTimer_SetConfig+0x118>
 804414e:	2b00      	cmp	r3, #0
 8044150:	d04d      	beq.n	80441ee <TIM_SlaveTimer_SetConfig+0x11e>
 8044152:	2b10      	cmp	r3, #16
 8044154:	d04b      	beq.n	80441ee <TIM_SlaveTimer_SetConfig+0x11e>
 8044156:	e047      	b.n	80441e8 <TIM_SlaveTimer_SetConfig+0x118>
 8044158:	687b      	ldr	r3, [r7, #4]
 804415a:	6818      	ldr	r0, [r3, #0]
 804415c:	683b      	ldr	r3, [r7, #0]
 804415e:	68d9      	ldr	r1, [r3, #12]
 8044160:	683b      	ldr	r3, [r7, #0]
 8044162:	689a      	ldr	r2, [r3, #8]
 8044164:	683b      	ldr	r3, [r7, #0]
 8044166:	691b      	ldr	r3, [r3, #16]
 8044168:	f000 f8c3 	bl	80442f2 <TIM_ETR_SetConfig>
 804416c:	e040      	b.n	80441f0 <TIM_SlaveTimer_SetConfig+0x120>
 804416e:	683b      	ldr	r3, [r7, #0]
 8044170:	681b      	ldr	r3, [r3, #0]
 8044172:	2b05      	cmp	r3, #5
 8044174:	d101      	bne.n	804417a <TIM_SlaveTimer_SetConfig+0xaa>
 8044176:	2301      	movs	r3, #1
 8044178:	e03b      	b.n	80441f2 <TIM_SlaveTimer_SetConfig+0x122>
 804417a:	687b      	ldr	r3, [r7, #4]
 804417c:	681b      	ldr	r3, [r3, #0]
 804417e:	6a1b      	ldr	r3, [r3, #32]
 8044180:	60fb      	str	r3, [r7, #12]
 8044182:	687b      	ldr	r3, [r7, #4]
 8044184:	681b      	ldr	r3, [r3, #0]
 8044186:	6a1a      	ldr	r2, [r3, #32]
 8044188:	687b      	ldr	r3, [r7, #4]
 804418a:	681b      	ldr	r3, [r3, #0]
 804418c:	f022 0201 	bic.w	r2, r2, #1
 8044190:	621a      	str	r2, [r3, #32]
 8044192:	687b      	ldr	r3, [r7, #4]
 8044194:	681b      	ldr	r3, [r3, #0]
 8044196:	699b      	ldr	r3, [r3, #24]
 8044198:	60bb      	str	r3, [r7, #8]
 804419a:	68bb      	ldr	r3, [r7, #8]
 804419c:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 80441a0:	60bb      	str	r3, [r7, #8]
 80441a2:	683b      	ldr	r3, [r7, #0]
 80441a4:	691b      	ldr	r3, [r3, #16]
 80441a6:	011b      	lsls	r3, r3, #4
 80441a8:	68ba      	ldr	r2, [r7, #8]
 80441aa:	4313      	orrs	r3, r2
 80441ac:	60bb      	str	r3, [r7, #8]
 80441ae:	687b      	ldr	r3, [r7, #4]
 80441b0:	681b      	ldr	r3, [r3, #0]
 80441b2:	68ba      	ldr	r2, [r7, #8]
 80441b4:	619a      	str	r2, [r3, #24]
 80441b6:	687b      	ldr	r3, [r7, #4]
 80441b8:	681b      	ldr	r3, [r3, #0]
 80441ba:	68fa      	ldr	r2, [r7, #12]
 80441bc:	621a      	str	r2, [r3, #32]
 80441be:	e017      	b.n	80441f0 <TIM_SlaveTimer_SetConfig+0x120>
 80441c0:	687b      	ldr	r3, [r7, #4]
 80441c2:	6818      	ldr	r0, [r3, #0]
 80441c4:	683b      	ldr	r3, [r7, #0]
 80441c6:	6899      	ldr	r1, [r3, #8]
 80441c8:	683b      	ldr	r3, [r7, #0]
 80441ca:	691b      	ldr	r3, [r3, #16]
 80441cc:	461a      	mov	r2, r3
 80441ce:	f000 f814 	bl	80441fa <TIM_TI1_ConfigInputStage>
 80441d2:	e00d      	b.n	80441f0 <TIM_SlaveTimer_SetConfig+0x120>
 80441d4:	687b      	ldr	r3, [r7, #4]
 80441d6:	6818      	ldr	r0, [r3, #0]
 80441d8:	683b      	ldr	r3, [r7, #0]
 80441da:	6899      	ldr	r1, [r3, #8]
 80441dc:	683b      	ldr	r3, [r7, #0]
 80441de:	691b      	ldr	r3, [r3, #16]
 80441e0:	461a      	mov	r2, r3
 80441e2:	f000 f839 	bl	8044258 <TIM_TI2_ConfigInputStage>
 80441e6:	e003      	b.n	80441f0 <TIM_SlaveTimer_SetConfig+0x120>
 80441e8:	2301      	movs	r3, #1
 80441ea:	75fb      	strb	r3, [r7, #23]
 80441ec:	e000      	b.n	80441f0 <TIM_SlaveTimer_SetConfig+0x120>
 80441ee:	bf00      	nop
 80441f0:	7dfb      	ldrb	r3, [r7, #23]
 80441f2:	4618      	mov	r0, r3
 80441f4:	3718      	adds	r7, #24
 80441f6:	46bd      	mov	sp, r7
 80441f8:	bd80      	pop	{r7, pc}

080441fa <TIM_TI1_ConfigInputStage>:
 80441fa:	b480      	push	{r7}
 80441fc:	b087      	sub	sp, #28
 80441fe:	af00      	add	r7, sp, #0
 8044200:	60f8      	str	r0, [r7, #12]
 8044202:	60b9      	str	r1, [r7, #8]
 8044204:	607a      	str	r2, [r7, #4]
 8044206:	68fb      	ldr	r3, [r7, #12]
 8044208:	6a1b      	ldr	r3, [r3, #32]
 804420a:	617b      	str	r3, [r7, #20]
 804420c:	68fb      	ldr	r3, [r7, #12]
 804420e:	6a1b      	ldr	r3, [r3, #32]
 8044210:	f023 0201 	bic.w	r2, r3, #1
 8044214:	68fb      	ldr	r3, [r7, #12]
 8044216:	621a      	str	r2, [r3, #32]
 8044218:	68fb      	ldr	r3, [r7, #12]
 804421a:	699b      	ldr	r3, [r3, #24]
 804421c:	613b      	str	r3, [r7, #16]
 804421e:	693b      	ldr	r3, [r7, #16]
 8044220:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8044224:	613b      	str	r3, [r7, #16]
 8044226:	687b      	ldr	r3, [r7, #4]
 8044228:	011b      	lsls	r3, r3, #4
 804422a:	693a      	ldr	r2, [r7, #16]
 804422c:	4313      	orrs	r3, r2
 804422e:	613b      	str	r3, [r7, #16]
 8044230:	697b      	ldr	r3, [r7, #20]
 8044232:	f023 030a 	bic.w	r3, r3, #10
 8044236:	617b      	str	r3, [r7, #20]
 8044238:	697a      	ldr	r2, [r7, #20]
 804423a:	68bb      	ldr	r3, [r7, #8]
 804423c:	4313      	orrs	r3, r2
 804423e:	617b      	str	r3, [r7, #20]
 8044240:	68fb      	ldr	r3, [r7, #12]
 8044242:	693a      	ldr	r2, [r7, #16]
 8044244:	619a      	str	r2, [r3, #24]
 8044246:	68fb      	ldr	r3, [r7, #12]
 8044248:	697a      	ldr	r2, [r7, #20]
 804424a:	621a      	str	r2, [r3, #32]
 804424c:	bf00      	nop
 804424e:	371c      	adds	r7, #28
 8044250:	46bd      	mov	sp, r7
 8044252:	f85d 7b04 	ldr.w	r7, [sp], #4
 8044256:	4770      	bx	lr

08044258 <TIM_TI2_ConfigInputStage>:
 8044258:	b480      	push	{r7}
 804425a:	b087      	sub	sp, #28
 804425c:	af00      	add	r7, sp, #0
 804425e:	60f8      	str	r0, [r7, #12]
 8044260:	60b9      	str	r1, [r7, #8]
 8044262:	607a      	str	r2, [r7, #4]
 8044264:	68fb      	ldr	r3, [r7, #12]
 8044266:	6a1b      	ldr	r3, [r3, #32]
 8044268:	617b      	str	r3, [r7, #20]
 804426a:	68fb      	ldr	r3, [r7, #12]
 804426c:	6a1b      	ldr	r3, [r3, #32]
 804426e:	f023 0210 	bic.w	r2, r3, #16
 8044272:	68fb      	ldr	r3, [r7, #12]
 8044274:	621a      	str	r2, [r3, #32]
 8044276:	68fb      	ldr	r3, [r7, #12]
 8044278:	699b      	ldr	r3, [r3, #24]
 804427a:	613b      	str	r3, [r7, #16]
 804427c:	693b      	ldr	r3, [r7, #16]
 804427e:	f423 4370 	bic.w	r3, r3, #61440	@ 0xf000
 8044282:	613b      	str	r3, [r7, #16]
 8044284:	687b      	ldr	r3, [r7, #4]
 8044286:	031b      	lsls	r3, r3, #12
 8044288:	693a      	ldr	r2, [r7, #16]
 804428a:	4313      	orrs	r3, r2
 804428c:	613b      	str	r3, [r7, #16]
 804428e:	697b      	ldr	r3, [r7, #20]
 8044290:	f023 03a0 	bic.w	r3, r3, #160	@ 0xa0
 8044294:	617b      	str	r3, [r7, #20]
 8044296:	68bb      	ldr	r3, [r7, #8]
 8044298:	011b      	lsls	r3, r3, #4
 804429a:	697a      	ldr	r2, [r7, #20]
 804429c:	4313      	orrs	r3, r2
 804429e:	617b      	str	r3, [r7, #20]
 80442a0:	68fb      	ldr	r3, [r7, #12]
 80442a2:	693a      	ldr	r2, [r7, #16]
 80442a4:	619a      	str	r2, [r3, #24]
 80442a6:	68fb      	ldr	r3, [r7, #12]
 80442a8:	697a      	ldr	r2, [r7, #20]
 80442aa:	621a      	str	r2, [r3, #32]
 80442ac:	bf00      	nop
 80442ae:	371c      	adds	r7, #28
 80442b0:	46bd      	mov	sp, r7
 80442b2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80442b6:	4770      	bx	lr

080442b8 <TIM_ITRx_SetConfig>:
 80442b8:	b480      	push	{r7}
 80442ba:	b085      	sub	sp, #20
 80442bc:	af00      	add	r7, sp, #0
 80442be:	6078      	str	r0, [r7, #4]
 80442c0:	6039      	str	r1, [r7, #0]
 80442c2:	687b      	ldr	r3, [r7, #4]
 80442c4:	689b      	ldr	r3, [r3, #8]
 80442c6:	60fb      	str	r3, [r7, #12]
 80442c8:	68fb      	ldr	r3, [r7, #12]
 80442ca:	f423 1340 	bic.w	r3, r3, #3145728	@ 0x300000
 80442ce:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 80442d2:	60fb      	str	r3, [r7, #12]
 80442d4:	683a      	ldr	r2, [r7, #0]
 80442d6:	68fb      	ldr	r3, [r7, #12]
 80442d8:	4313      	orrs	r3, r2
 80442da:	f043 0307 	orr.w	r3, r3, #7
 80442de:	60fb      	str	r3, [r7, #12]
 80442e0:	687b      	ldr	r3, [r7, #4]
 80442e2:	68fa      	ldr	r2, [r7, #12]
 80442e4:	609a      	str	r2, [r3, #8]
 80442e6:	bf00      	nop
 80442e8:	3714      	adds	r7, #20
 80442ea:	46bd      	mov	sp, r7
 80442ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80442f0:	4770      	bx	lr

080442f2 <TIM_ETR_SetConfig>:
 80442f2:	b480      	push	{r7}
 80442f4:	b087      	sub	sp, #28
 80442f6:	af00      	add	r7, sp, #0
 80442f8:	60f8      	str	r0, [r7, #12]
 80442fa:	60b9      	str	r1, [r7, #8]
 80442fc:	607a      	str	r2, [r7, #4]
 80442fe:	603b      	str	r3, [r7, #0]
 8044300:	68fb      	ldr	r3, [r7, #12]
 8044302:	689b      	ldr	r3, [r3, #8]
 8044304:	617b      	str	r3, [r7, #20]
 8044306:	697b      	ldr	r3, [r7, #20]
 8044308:	f423 437f 	bic.w	r3, r3, #65280	@ 0xff00
 804430c:	617b      	str	r3, [r7, #20]
 804430e:	683b      	ldr	r3, [r7, #0]
 8044310:	021a      	lsls	r2, r3, #8
 8044312:	687b      	ldr	r3, [r7, #4]
 8044314:	431a      	orrs	r2, r3
 8044316:	68bb      	ldr	r3, [r7, #8]
 8044318:	4313      	orrs	r3, r2
 804431a:	697a      	ldr	r2, [r7, #20]
 804431c:	4313      	orrs	r3, r2
 804431e:	617b      	str	r3, [r7, #20]
 8044320:	68fb      	ldr	r3, [r7, #12]
 8044322:	697a      	ldr	r2, [r7, #20]
 8044324:	609a      	str	r2, [r3, #8]
 8044326:	bf00      	nop
 8044328:	371c      	adds	r7, #28
 804432a:	46bd      	mov	sp, r7
 804432c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8044330:	4770      	bx	lr
	...

08044334 <HAL_TIMEx_MasterConfigSynchronization>:
 8044334:	b480      	push	{r7}
 8044336:	b085      	sub	sp, #20
 8044338:	af00      	add	r7, sp, #0
 804433a:	6078      	str	r0, [r7, #4]
 804433c:	6039      	str	r1, [r7, #0]
 804433e:	687b      	ldr	r3, [r7, #4]
 8044340:	f893 303c 	ldrb.w	r3, [r3, #60]	@ 0x3c
 8044344:	2b01      	cmp	r3, #1
 8044346:	d101      	bne.n	804434c <HAL_TIMEx_MasterConfigSynchronization+0x18>
 8044348:	2302      	movs	r3, #2
 804434a:	e068      	b.n	804441e <HAL_TIMEx_MasterConfigSynchronization+0xea>
 804434c:	687b      	ldr	r3, [r7, #4]
 804434e:	2201      	movs	r2, #1
 8044350:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 8044354:	687b      	ldr	r3, [r7, #4]
 8044356:	2202      	movs	r2, #2
 8044358:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 804435c:	687b      	ldr	r3, [r7, #4]
 804435e:	681b      	ldr	r3, [r3, #0]
 8044360:	685b      	ldr	r3, [r3, #4]
 8044362:	60fb      	str	r3, [r7, #12]
 8044364:	687b      	ldr	r3, [r7, #4]
 8044366:	681b      	ldr	r3, [r3, #0]
 8044368:	689b      	ldr	r3, [r3, #8]
 804436a:	60bb      	str	r3, [r7, #8]
 804436c:	687b      	ldr	r3, [r7, #4]
 804436e:	681b      	ldr	r3, [r3, #0]
 8044370:	4a2e      	ldr	r2, [pc, #184]	@ (804442c <HAL_TIMEx_MasterConfigSynchronization+0xf8>)
 8044372:	4293      	cmp	r3, r2
 8044374:	d004      	beq.n	8044380 <HAL_TIMEx_MasterConfigSynchronization+0x4c>
 8044376:	687b      	ldr	r3, [r7, #4]
 8044378:	681b      	ldr	r3, [r3, #0]
 804437a:	4a2d      	ldr	r2, [pc, #180]	@ (8044430 <HAL_TIMEx_MasterConfigSynchronization+0xfc>)
 804437c:	4293      	cmp	r3, r2
 804437e:	d108      	bne.n	8044392 <HAL_TIMEx_MasterConfigSynchronization+0x5e>
 8044380:	68fb      	ldr	r3, [r7, #12]
 8044382:	f423 0370 	bic.w	r3, r3, #15728640	@ 0xf00000
 8044386:	60fb      	str	r3, [r7, #12]
 8044388:	683b      	ldr	r3, [r7, #0]
 804438a:	685b      	ldr	r3, [r3, #4]
 804438c:	68fa      	ldr	r2, [r7, #12]
 804438e:	4313      	orrs	r3, r2
 8044390:	60fb      	str	r3, [r7, #12]
 8044392:	68fb      	ldr	r3, [r7, #12]
 8044394:	f023 0370 	bic.w	r3, r3, #112	@ 0x70
 8044398:	60fb      	str	r3, [r7, #12]
 804439a:	683b      	ldr	r3, [r7, #0]
 804439c:	681b      	ldr	r3, [r3, #0]
 804439e:	68fa      	ldr	r2, [r7, #12]
 80443a0:	4313      	orrs	r3, r2
 80443a2:	60fb      	str	r3, [r7, #12]
 80443a4:	687b      	ldr	r3, [r7, #4]
 80443a6:	681b      	ldr	r3, [r3, #0]
 80443a8:	68fa      	ldr	r2, [r7, #12]
 80443aa:	605a      	str	r2, [r3, #4]
 80443ac:	687b      	ldr	r3, [r7, #4]
 80443ae:	681b      	ldr	r3, [r3, #0]
 80443b0:	4a1e      	ldr	r2, [pc, #120]	@ (804442c <HAL_TIMEx_MasterConfigSynchronization+0xf8>)
 80443b2:	4293      	cmp	r3, r2
 80443b4:	d01d      	beq.n	80443f2 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 80443b6:	687b      	ldr	r3, [r7, #4]
 80443b8:	681b      	ldr	r3, [r3, #0]
 80443ba:	f1b3 4f80 	cmp.w	r3, #1073741824	@ 0x40000000
 80443be:	d018      	beq.n	80443f2 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 80443c0:	687b      	ldr	r3, [r7, #4]
 80443c2:	681b      	ldr	r3, [r3, #0]
 80443c4:	4a1b      	ldr	r2, [pc, #108]	@ (8044434 <HAL_TIMEx_MasterConfigSynchronization+0x100>)
 80443c6:	4293      	cmp	r3, r2
 80443c8:	d013      	beq.n	80443f2 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 80443ca:	687b      	ldr	r3, [r7, #4]
 80443cc:	681b      	ldr	r3, [r3, #0]
 80443ce:	4a1a      	ldr	r2, [pc, #104]	@ (8044438 <HAL_TIMEx_MasterConfigSynchronization+0x104>)
 80443d0:	4293      	cmp	r3, r2
 80443d2:	d00e      	beq.n	80443f2 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 80443d4:	687b      	ldr	r3, [r7, #4]
 80443d6:	681b      	ldr	r3, [r3, #0]
 80443d8:	4a18      	ldr	r2, [pc, #96]	@ (804443c <HAL_TIMEx_MasterConfigSynchronization+0x108>)
 80443da:	4293      	cmp	r3, r2
 80443dc:	d009      	beq.n	80443f2 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 80443de:	687b      	ldr	r3, [r7, #4]
 80443e0:	681b      	ldr	r3, [r3, #0]
 80443e2:	4a13      	ldr	r2, [pc, #76]	@ (8044430 <HAL_TIMEx_MasterConfigSynchronization+0xfc>)
 80443e4:	4293      	cmp	r3, r2
 80443e6:	d004      	beq.n	80443f2 <HAL_TIMEx_MasterConfigSynchronization+0xbe>
 80443e8:	687b      	ldr	r3, [r7, #4]
 80443ea:	681b      	ldr	r3, [r3, #0]
 80443ec:	4a14      	ldr	r2, [pc, #80]	@ (8044440 <HAL_TIMEx_MasterConfigSynchronization+0x10c>)
 80443ee:	4293      	cmp	r3, r2
 80443f0:	d10c      	bne.n	804440c <HAL_TIMEx_MasterConfigSynchronization+0xd8>
 80443f2:	68bb      	ldr	r3, [r7, #8]
 80443f4:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 80443f8:	60bb      	str	r3, [r7, #8]
 80443fa:	683b      	ldr	r3, [r7, #0]
 80443fc:	689b      	ldr	r3, [r3, #8]
 80443fe:	68ba      	ldr	r2, [r7, #8]
 8044400:	4313      	orrs	r3, r2
 8044402:	60bb      	str	r3, [r7, #8]
 8044404:	687b      	ldr	r3, [r7, #4]
 8044406:	681b      	ldr	r3, [r3, #0]
 8044408:	68ba      	ldr	r2, [r7, #8]
 804440a:	609a      	str	r2, [r3, #8]
 804440c:	687b      	ldr	r3, [r7, #4]
 804440e:	2201      	movs	r2, #1
 8044410:	f883 203d 	strb.w	r2, [r3, #61]	@ 0x3d
 8044414:	687b      	ldr	r3, [r7, #4]
 8044416:	2200      	movs	r2, #0
 8044418:	f883 203c 	strb.w	r2, [r3, #60]	@ 0x3c
 804441c:	2300      	movs	r3, #0
 804441e:	4618      	mov	r0, r3
 8044420:	3714      	adds	r7, #20
 8044422:	46bd      	mov	sp, r7
 8044424:	f85d 7b04 	ldr.w	r7, [sp], #4
 8044428:	4770      	bx	lr
 804442a:	bf00      	nop
 804442c:	40012c00 	.word	0x40012c00
 8044430:	40013400 	.word	0x40013400
 8044434:	40000400 	.word	0x40000400
 8044438:	40000800 	.word	0x40000800
 804443c:	40000c00 	.word	0x40000c00
 8044440:	40014000 	.word	0x40014000

08044444 <HAL_UART_Init>:
 8044444:	b580      	push	{r7, lr}
 8044446:	b082      	sub	sp, #8
 8044448:	af00      	add	r7, sp, #0
 804444a:	6078      	str	r0, [r7, #4]
 804444c:	687b      	ldr	r3, [r7, #4]
 804444e:	2b00      	cmp	r3, #0
 8044450:	d101      	bne.n	8044456 <HAL_UART_Init+0x12>
 8044452:	2301      	movs	r3, #1
 8044454:	e042      	b.n	80444dc <HAL_UART_Init+0x98>
 8044456:	687b      	ldr	r3, [r7, #4]
 8044458:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804445c:	2b00      	cmp	r3, #0
 804445e:	d106      	bne.n	804446e <HAL_UART_Init+0x2a>
 8044460:	687b      	ldr	r3, [r7, #4]
 8044462:	2200      	movs	r2, #0
 8044464:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8044468:	6878      	ldr	r0, [r7, #4]
 804446a:	f7fc ff91 	bl	8041390 <HAL_UART_MspInit>
 804446e:	687b      	ldr	r3, [r7, #4]
 8044470:	2224      	movs	r2, #36	@ 0x24
 8044472:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8044476:	687b      	ldr	r3, [r7, #4]
 8044478:	681b      	ldr	r3, [r3, #0]
 804447a:	681a      	ldr	r2, [r3, #0]
 804447c:	687b      	ldr	r3, [r7, #4]
 804447e:	681b      	ldr	r3, [r3, #0]
 8044480:	f022 0201 	bic.w	r2, r2, #1
 8044484:	601a      	str	r2, [r3, #0]
 8044486:	687b      	ldr	r3, [r7, #4]
 8044488:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 804448a:	2b00      	cmp	r3, #0
 804448c:	d002      	beq.n	8044494 <HAL_UART_Init+0x50>
 804448e:	6878      	ldr	r0, [r7, #4]
 8044490:	f000 fbb6 	bl	8044c00 <UART_AdvFeatureConfig>
 8044494:	6878      	ldr	r0, [r7, #4]
 8044496:	f000 f8b3 	bl	8044600 <UART_SetConfig>
 804449a:	4603      	mov	r3, r0
 804449c:	2b01      	cmp	r3, #1
 804449e:	d101      	bne.n	80444a4 <HAL_UART_Init+0x60>
 80444a0:	2301      	movs	r3, #1
 80444a2:	e01b      	b.n	80444dc <HAL_UART_Init+0x98>
 80444a4:	687b      	ldr	r3, [r7, #4]
 80444a6:	681b      	ldr	r3, [r3, #0]
 80444a8:	685a      	ldr	r2, [r3, #4]
 80444aa:	687b      	ldr	r3, [r7, #4]
 80444ac:	681b      	ldr	r3, [r3, #0]
 80444ae:	f422 4290 	bic.w	r2, r2, #18432	@ 0x4800
 80444b2:	605a      	str	r2, [r3, #4]
 80444b4:	687b      	ldr	r3, [r7, #4]
 80444b6:	681b      	ldr	r3, [r3, #0]
 80444b8:	689a      	ldr	r2, [r3, #8]
 80444ba:	687b      	ldr	r3, [r7, #4]
 80444bc:	681b      	ldr	r3, [r3, #0]
 80444be:	f022 022a 	bic.w	r2, r2, #42	@ 0x2a
 80444c2:	609a      	str	r2, [r3, #8]
 80444c4:	687b      	ldr	r3, [r7, #4]
 80444c6:	681b      	ldr	r3, [r3, #0]
 80444c8:	681a      	ldr	r2, [r3, #0]
 80444ca:	687b      	ldr	r3, [r7, #4]
 80444cc:	681b      	ldr	r3, [r3, #0]
 80444ce:	f042 0201 	orr.w	r2, r2, #1
 80444d2:	601a      	str	r2, [r3, #0]
 80444d4:	6878      	ldr	r0, [r7, #4]
 80444d6:	f000 fc35 	bl	8044d44 <UART_CheckIdleState>
 80444da:	4603      	mov	r3, r0
 80444dc:	4618      	mov	r0, r3
 80444de:	3708      	adds	r7, #8
 80444e0:	46bd      	mov	sp, r7
 80444e2:	bd80      	pop	{r7, pc}

080444e4 <HAL_UART_Transmit>:
 80444e4:	b580      	push	{r7, lr}
 80444e6:	b08a      	sub	sp, #40	@ 0x28
 80444e8:	af02      	add	r7, sp, #8
 80444ea:	60f8      	str	r0, [r7, #12]
 80444ec:	60b9      	str	r1, [r7, #8]
 80444ee:	603b      	str	r3, [r7, #0]
 80444f0:	4613      	mov	r3, r2
 80444f2:	80fb      	strh	r3, [r7, #6]
 80444f4:	68fb      	ldr	r3, [r7, #12]
 80444f6:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80444fa:	2b20      	cmp	r3, #32
 80444fc:	d17b      	bne.n	80445f6 <HAL_UART_Transmit+0x112>
 80444fe:	68bb      	ldr	r3, [r7, #8]
 8044500:	2b00      	cmp	r3, #0
 8044502:	d002      	beq.n	804450a <HAL_UART_Transmit+0x26>
 8044504:	88fb      	ldrh	r3, [r7, #6]
 8044506:	2b00      	cmp	r3, #0
 8044508:	d101      	bne.n	804450e <HAL_UART_Transmit+0x2a>
 804450a:	2301      	movs	r3, #1
 804450c:	e074      	b.n	80445f8 <HAL_UART_Transmit+0x114>
 804450e:	68fb      	ldr	r3, [r7, #12]
 8044510:	2200      	movs	r2, #0
 8044512:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 8044516:	68fb      	ldr	r3, [r7, #12]
 8044518:	2221      	movs	r2, #33	@ 0x21
 804451a:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 804451e:	f7fd f82b 	bl	8041578 <HAL_GetTick>
 8044522:	6178      	str	r0, [r7, #20]
 8044524:	68fb      	ldr	r3, [r7, #12]
 8044526:	88fa      	ldrh	r2, [r7, #6]
 8044528:	f8a3 2054 	strh.w	r2, [r3, #84]	@ 0x54
 804452c:	68fb      	ldr	r3, [r7, #12]
 804452e:	88fa      	ldrh	r2, [r7, #6]
 8044530:	f8a3 2056 	strh.w	r2, [r3, #86]	@ 0x56
 8044534:	68fb      	ldr	r3, [r7, #12]
 8044536:	689b      	ldr	r3, [r3, #8]
 8044538:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 804453c:	d108      	bne.n	8044550 <HAL_UART_Transmit+0x6c>
 804453e:	68fb      	ldr	r3, [r7, #12]
 8044540:	691b      	ldr	r3, [r3, #16]
 8044542:	2b00      	cmp	r3, #0
 8044544:	d104      	bne.n	8044550 <HAL_UART_Transmit+0x6c>
 8044546:	2300      	movs	r3, #0
 8044548:	61fb      	str	r3, [r7, #28]
 804454a:	68bb      	ldr	r3, [r7, #8]
 804454c:	61bb      	str	r3, [r7, #24]
 804454e:	e003      	b.n	8044558 <HAL_UART_Transmit+0x74>
 8044550:	68bb      	ldr	r3, [r7, #8]
 8044552:	61fb      	str	r3, [r7, #28]
 8044554:	2300      	movs	r3, #0
 8044556:	61bb      	str	r3, [r7, #24]
 8044558:	e030      	b.n	80445bc <HAL_UART_Transmit+0xd8>
 804455a:	683b      	ldr	r3, [r7, #0]
 804455c:	9300      	str	r3, [sp, #0]
 804455e:	697b      	ldr	r3, [r7, #20]
 8044560:	2200      	movs	r2, #0
 8044562:	2180      	movs	r1, #128	@ 0x80
 8044564:	68f8      	ldr	r0, [r7, #12]
 8044566:	f000 fc97 	bl	8044e98 <UART_WaitOnFlagUntilTimeout>
 804456a:	4603      	mov	r3, r0
 804456c:	2b00      	cmp	r3, #0
 804456e:	d005      	beq.n	804457c <HAL_UART_Transmit+0x98>
 8044570:	68fb      	ldr	r3, [r7, #12]
 8044572:	2220      	movs	r2, #32
 8044574:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8044578:	2303      	movs	r3, #3
 804457a:	e03d      	b.n	80445f8 <HAL_UART_Transmit+0x114>
 804457c:	69fb      	ldr	r3, [r7, #28]
 804457e:	2b00      	cmp	r3, #0
 8044580:	d10b      	bne.n	804459a <HAL_UART_Transmit+0xb6>
 8044582:	69bb      	ldr	r3, [r7, #24]
 8044584:	881b      	ldrh	r3, [r3, #0]
 8044586:	461a      	mov	r2, r3
 8044588:	68fb      	ldr	r3, [r7, #12]
 804458a:	681b      	ldr	r3, [r3, #0]
 804458c:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8044590:	629a      	str	r2, [r3, #40]	@ 0x28
 8044592:	69bb      	ldr	r3, [r7, #24]
 8044594:	3302      	adds	r3, #2
 8044596:	61bb      	str	r3, [r7, #24]
 8044598:	e007      	b.n	80445aa <HAL_UART_Transmit+0xc6>
 804459a:	69fb      	ldr	r3, [r7, #28]
 804459c:	781a      	ldrb	r2, [r3, #0]
 804459e:	68fb      	ldr	r3, [r7, #12]
 80445a0:	681b      	ldr	r3, [r3, #0]
 80445a2:	629a      	str	r2, [r3, #40]	@ 0x28
 80445a4:	69fb      	ldr	r3, [r7, #28]
 80445a6:	3301      	adds	r3, #1
 80445a8:	61fb      	str	r3, [r7, #28]
 80445aa:	68fb      	ldr	r3, [r7, #12]
 80445ac:	f8b3 3056 	ldrh.w	r3, [r3, #86]	@ 0x56
 80445b0:	b29b      	uxth	r3, r3
 80445b2:	3b01      	subs	r3, #1
 80445b4:	b29a      	uxth	r2, r3
 80445b6:	68fb      	ldr	r3, [r7, #12]
 80445b8:	f8a3 2056 	strh.w	r2, [r3, #86]	@ 0x56
 80445bc:	68fb      	ldr	r3, [r7, #12]
 80445be:	f8b3 3056 	ldrh.w	r3, [r3, #86]	@ 0x56
 80445c2:	b29b      	uxth	r3, r3
 80445c4:	2b00      	cmp	r3, #0
 80445c6:	d1c8      	bne.n	804455a <HAL_UART_Transmit+0x76>
 80445c8:	683b      	ldr	r3, [r7, #0]
 80445ca:	9300      	str	r3, [sp, #0]
 80445cc:	697b      	ldr	r3, [r7, #20]
 80445ce:	2200      	movs	r2, #0
 80445d0:	2140      	movs	r1, #64	@ 0x40
 80445d2:	68f8      	ldr	r0, [r7, #12]
 80445d4:	f000 fc60 	bl	8044e98 <UART_WaitOnFlagUntilTimeout>
 80445d8:	4603      	mov	r3, r0
 80445da:	2b00      	cmp	r3, #0
 80445dc:	d005      	beq.n	80445ea <HAL_UART_Transmit+0x106>
 80445de:	68fb      	ldr	r3, [r7, #12]
 80445e0:	2220      	movs	r2, #32
 80445e2:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80445e6:	2303      	movs	r3, #3
 80445e8:	e006      	b.n	80445f8 <HAL_UART_Transmit+0x114>
 80445ea:	68fb      	ldr	r3, [r7, #12]
 80445ec:	2220      	movs	r2, #32
 80445ee:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80445f2:	2300      	movs	r3, #0
 80445f4:	e000      	b.n	80445f8 <HAL_UART_Transmit+0x114>
 80445f6:	2302      	movs	r3, #2
 80445f8:	4618      	mov	r0, r3
 80445fa:	3720      	adds	r7, #32
 80445fc:	46bd      	mov	sp, r7
 80445fe:	bd80      	pop	{r7, pc}

08044600 <UART_SetConfig>:
 8044600:	e92d 4fb0 	stmdb	sp!, {r4, r5, r7, r8, r9, sl, fp, lr}
 8044604:	b08c      	sub	sp, #48	@ 0x30
 8044606:	af00      	add	r7, sp, #0
 8044608:	6178      	str	r0, [r7, #20]
 804460a:	2300      	movs	r3, #0
 804460c:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8044610:	697b      	ldr	r3, [r7, #20]
 8044612:	689a      	ldr	r2, [r3, #8]
 8044614:	697b      	ldr	r3, [r7, #20]
 8044616:	691b      	ldr	r3, [r3, #16]
 8044618:	431a      	orrs	r2, r3
 804461a:	697b      	ldr	r3, [r7, #20]
 804461c:	695b      	ldr	r3, [r3, #20]
 804461e:	431a      	orrs	r2, r3
 8044620:	697b      	ldr	r3, [r7, #20]
 8044622:	69db      	ldr	r3, [r3, #28]
 8044624:	4313      	orrs	r3, r2
 8044626:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8044628:	697b      	ldr	r3, [r7, #20]
 804462a:	681b      	ldr	r3, [r3, #0]
 804462c:	681a      	ldr	r2, [r3, #0]
 804462e:	4baa      	ldr	r3, [pc, #680]	@ (80448d8 <UART_SetConfig+0x2d8>)
 8044630:	4013      	ands	r3, r2
 8044632:	697a      	ldr	r2, [r7, #20]
 8044634:	6812      	ldr	r2, [r2, #0]
 8044636:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 8044638:	430b      	orrs	r3, r1
 804463a:	6013      	str	r3, [r2, #0]
 804463c:	697b      	ldr	r3, [r7, #20]
 804463e:	681b      	ldr	r3, [r3, #0]
 8044640:	685b      	ldr	r3, [r3, #4]
 8044642:	f423 5140 	bic.w	r1, r3, #12288	@ 0x3000
 8044646:	697b      	ldr	r3, [r7, #20]
 8044648:	68da      	ldr	r2, [r3, #12]
 804464a:	697b      	ldr	r3, [r7, #20]
 804464c:	681b      	ldr	r3, [r3, #0]
 804464e:	430a      	orrs	r2, r1
 8044650:	605a      	str	r2, [r3, #4]
 8044652:	697b      	ldr	r3, [r7, #20]
 8044654:	699b      	ldr	r3, [r3, #24]
 8044656:	62fb      	str	r3, [r7, #44]	@ 0x2c
 8044658:	697b      	ldr	r3, [r7, #20]
 804465a:	681b      	ldr	r3, [r3, #0]
 804465c:	4a9f      	ldr	r2, [pc, #636]	@ (80448dc <UART_SetConfig+0x2dc>)
 804465e:	4293      	cmp	r3, r2
 8044660:	d004      	beq.n	804466c <UART_SetConfig+0x6c>
 8044662:	697b      	ldr	r3, [r7, #20]
 8044664:	6a1b      	ldr	r3, [r3, #32]
 8044666:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8044668:	4313      	orrs	r3, r2
 804466a:	62fb      	str	r3, [r7, #44]	@ 0x2c
 804466c:	697b      	ldr	r3, [r7, #20]
 804466e:	681b      	ldr	r3, [r3, #0]
 8044670:	689b      	ldr	r3, [r3, #8]
 8044672:	f023 436e 	bic.w	r3, r3, #3992977408	@ 0xee000000
 8044676:	f423 6330 	bic.w	r3, r3, #2816	@ 0xb00
 804467a:	697a      	ldr	r2, [r7, #20]
 804467c:	6812      	ldr	r2, [r2, #0]
 804467e:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 8044680:	430b      	orrs	r3, r1
 8044682:	6093      	str	r3, [r2, #8]
 8044684:	697b      	ldr	r3, [r7, #20]
 8044686:	681b      	ldr	r3, [r3, #0]
 8044688:	6adb      	ldr	r3, [r3, #44]	@ 0x2c
 804468a:	f023 010f 	bic.w	r1, r3, #15
 804468e:	697b      	ldr	r3, [r7, #20]
 8044690:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
 8044692:	697b      	ldr	r3, [r7, #20]
 8044694:	681b      	ldr	r3, [r3, #0]
 8044696:	430a      	orrs	r2, r1
 8044698:	62da      	str	r2, [r3, #44]	@ 0x2c
 804469a:	697b      	ldr	r3, [r7, #20]
 804469c:	681b      	ldr	r3, [r3, #0]
 804469e:	4a90      	ldr	r2, [pc, #576]	@ (80448e0 <UART_SetConfig+0x2e0>)
 80446a0:	4293      	cmp	r3, r2
 80446a2:	d125      	bne.n	80446f0 <UART_SetConfig+0xf0>
 80446a4:	4b8f      	ldr	r3, [pc, #572]	@ (80448e4 <UART_SetConfig+0x2e4>)
 80446a6:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80446aa:	f003 0303 	and.w	r3, r3, #3
 80446ae:	2b03      	cmp	r3, #3
 80446b0:	d81a      	bhi.n	80446e8 <UART_SetConfig+0xe8>
 80446b2:	a201      	add	r2, pc, #4	@ (adr r2, 80446b8 <UART_SetConfig+0xb8>)
 80446b4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80446b8:	080446c9 	.word	0x080446c9
 80446bc:	080446d9 	.word	0x080446d9
 80446c0:	080446d1 	.word	0x080446d1
 80446c4:	080446e1 	.word	0x080446e1
 80446c8:	2301      	movs	r3, #1
 80446ca:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80446ce:	e116      	b.n	80448fe <UART_SetConfig+0x2fe>
 80446d0:	2302      	movs	r3, #2
 80446d2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80446d6:	e112      	b.n	80448fe <UART_SetConfig+0x2fe>
 80446d8:	2304      	movs	r3, #4
 80446da:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80446de:	e10e      	b.n	80448fe <UART_SetConfig+0x2fe>
 80446e0:	2308      	movs	r3, #8
 80446e2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80446e6:	e10a      	b.n	80448fe <UART_SetConfig+0x2fe>
 80446e8:	2310      	movs	r3, #16
 80446ea:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80446ee:	e106      	b.n	80448fe <UART_SetConfig+0x2fe>
 80446f0:	697b      	ldr	r3, [r7, #20]
 80446f2:	681b      	ldr	r3, [r3, #0]
 80446f4:	4a7c      	ldr	r2, [pc, #496]	@ (80448e8 <UART_SetConfig+0x2e8>)
 80446f6:	4293      	cmp	r3, r2
 80446f8:	d138      	bne.n	804476c <UART_SetConfig+0x16c>
 80446fa:	4b7a      	ldr	r3, [pc, #488]	@ (80448e4 <UART_SetConfig+0x2e4>)
 80446fc:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044700:	f003 030c 	and.w	r3, r3, #12
 8044704:	2b0c      	cmp	r3, #12
 8044706:	d82d      	bhi.n	8044764 <UART_SetConfig+0x164>
 8044708:	a201      	add	r2, pc, #4	@ (adr r2, 8044710 <UART_SetConfig+0x110>)
 804470a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 804470e:	bf00      	nop
 8044710:	08044745 	.word	0x08044745
 8044714:	08044765 	.word	0x08044765
 8044718:	08044765 	.word	0x08044765
 804471c:	08044765 	.word	0x08044765
 8044720:	08044755 	.word	0x08044755
 8044724:	08044765 	.word	0x08044765
 8044728:	08044765 	.word	0x08044765
 804472c:	08044765 	.word	0x08044765
 8044730:	0804474d 	.word	0x0804474d
 8044734:	08044765 	.word	0x08044765
 8044738:	08044765 	.word	0x08044765
 804473c:	08044765 	.word	0x08044765
 8044740:	0804475d 	.word	0x0804475d
 8044744:	2300      	movs	r3, #0
 8044746:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 804474a:	e0d8      	b.n	80448fe <UART_SetConfig+0x2fe>
 804474c:	2302      	movs	r3, #2
 804474e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8044752:	e0d4      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044754:	2304      	movs	r3, #4
 8044756:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 804475a:	e0d0      	b.n	80448fe <UART_SetConfig+0x2fe>
 804475c:	2308      	movs	r3, #8
 804475e:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8044762:	e0cc      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044764:	2310      	movs	r3, #16
 8044766:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 804476a:	e0c8      	b.n	80448fe <UART_SetConfig+0x2fe>
 804476c:	697b      	ldr	r3, [r7, #20]
 804476e:	681b      	ldr	r3, [r3, #0]
 8044770:	4a5e      	ldr	r2, [pc, #376]	@ (80448ec <UART_SetConfig+0x2ec>)
 8044772:	4293      	cmp	r3, r2
 8044774:	d125      	bne.n	80447c2 <UART_SetConfig+0x1c2>
 8044776:	4b5b      	ldr	r3, [pc, #364]	@ (80448e4 <UART_SetConfig+0x2e4>)
 8044778:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 804477c:	f003 0330 	and.w	r3, r3, #48	@ 0x30
 8044780:	2b30      	cmp	r3, #48	@ 0x30
 8044782:	d016      	beq.n	80447b2 <UART_SetConfig+0x1b2>
 8044784:	2b30      	cmp	r3, #48	@ 0x30
 8044786:	d818      	bhi.n	80447ba <UART_SetConfig+0x1ba>
 8044788:	2b20      	cmp	r3, #32
 804478a:	d00a      	beq.n	80447a2 <UART_SetConfig+0x1a2>
 804478c:	2b20      	cmp	r3, #32
 804478e:	d814      	bhi.n	80447ba <UART_SetConfig+0x1ba>
 8044790:	2b00      	cmp	r3, #0
 8044792:	d002      	beq.n	804479a <UART_SetConfig+0x19a>
 8044794:	2b10      	cmp	r3, #16
 8044796:	d008      	beq.n	80447aa <UART_SetConfig+0x1aa>
 8044798:	e00f      	b.n	80447ba <UART_SetConfig+0x1ba>
 804479a:	2300      	movs	r3, #0
 804479c:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80447a0:	e0ad      	b.n	80448fe <UART_SetConfig+0x2fe>
 80447a2:	2302      	movs	r3, #2
 80447a4:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80447a8:	e0a9      	b.n	80448fe <UART_SetConfig+0x2fe>
 80447aa:	2304      	movs	r3, #4
 80447ac:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80447b0:	e0a5      	b.n	80448fe <UART_SetConfig+0x2fe>
 80447b2:	2308      	movs	r3, #8
 80447b4:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80447b8:	e0a1      	b.n	80448fe <UART_SetConfig+0x2fe>
 80447ba:	2310      	movs	r3, #16
 80447bc:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80447c0:	e09d      	b.n	80448fe <UART_SetConfig+0x2fe>
 80447c2:	697b      	ldr	r3, [r7, #20]
 80447c4:	681b      	ldr	r3, [r3, #0]
 80447c6:	4a4a      	ldr	r2, [pc, #296]	@ (80448f0 <UART_SetConfig+0x2f0>)
 80447c8:	4293      	cmp	r3, r2
 80447ca:	d125      	bne.n	8044818 <UART_SetConfig+0x218>
 80447cc:	4b45      	ldr	r3, [pc, #276]	@ (80448e4 <UART_SetConfig+0x2e4>)
 80447ce:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 80447d2:	f003 03c0 	and.w	r3, r3, #192	@ 0xc0
 80447d6:	2bc0      	cmp	r3, #192	@ 0xc0
 80447d8:	d016      	beq.n	8044808 <UART_SetConfig+0x208>
 80447da:	2bc0      	cmp	r3, #192	@ 0xc0
 80447dc:	d818      	bhi.n	8044810 <UART_SetConfig+0x210>
 80447de:	2b80      	cmp	r3, #128	@ 0x80
 80447e0:	d00a      	beq.n	80447f8 <UART_SetConfig+0x1f8>
 80447e2:	2b80      	cmp	r3, #128	@ 0x80
 80447e4:	d814      	bhi.n	8044810 <UART_SetConfig+0x210>
 80447e6:	2b00      	cmp	r3, #0
 80447e8:	d002      	beq.n	80447f0 <UART_SetConfig+0x1f0>
 80447ea:	2b40      	cmp	r3, #64	@ 0x40
 80447ec:	d008      	beq.n	8044800 <UART_SetConfig+0x200>
 80447ee:	e00f      	b.n	8044810 <UART_SetConfig+0x210>
 80447f0:	2300      	movs	r3, #0
 80447f2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80447f6:	e082      	b.n	80448fe <UART_SetConfig+0x2fe>
 80447f8:	2302      	movs	r3, #2
 80447fa:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80447fe:	e07e      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044800:	2304      	movs	r3, #4
 8044802:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8044806:	e07a      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044808:	2308      	movs	r3, #8
 804480a:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 804480e:	e076      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044810:	2310      	movs	r3, #16
 8044812:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8044816:	e072      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044818:	697b      	ldr	r3, [r7, #20]
 804481a:	681b      	ldr	r3, [r3, #0]
 804481c:	4a35      	ldr	r2, [pc, #212]	@ (80448f4 <UART_SetConfig+0x2f4>)
 804481e:	4293      	cmp	r3, r2
 8044820:	d12a      	bne.n	8044878 <UART_SetConfig+0x278>
 8044822:	4b30      	ldr	r3, [pc, #192]	@ (80448e4 <UART_SetConfig+0x2e4>)
 8044824:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044828:	f403 7340 	and.w	r3, r3, #768	@ 0x300
 804482c:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8044830:	d01a      	beq.n	8044868 <UART_SetConfig+0x268>
 8044832:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8044836:	d81b      	bhi.n	8044870 <UART_SetConfig+0x270>
 8044838:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 804483c:	d00c      	beq.n	8044858 <UART_SetConfig+0x258>
 804483e:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 8044842:	d815      	bhi.n	8044870 <UART_SetConfig+0x270>
 8044844:	2b00      	cmp	r3, #0
 8044846:	d003      	beq.n	8044850 <UART_SetConfig+0x250>
 8044848:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
 804484c:	d008      	beq.n	8044860 <UART_SetConfig+0x260>
 804484e:	e00f      	b.n	8044870 <UART_SetConfig+0x270>
 8044850:	2300      	movs	r3, #0
 8044852:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8044856:	e052      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044858:	2302      	movs	r3, #2
 804485a:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 804485e:	e04e      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044860:	2304      	movs	r3, #4
 8044862:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8044866:	e04a      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044868:	2308      	movs	r3, #8
 804486a:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 804486e:	e046      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044870:	2310      	movs	r3, #16
 8044872:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 8044876:	e042      	b.n	80448fe <UART_SetConfig+0x2fe>
 8044878:	697b      	ldr	r3, [r7, #20]
 804487a:	681b      	ldr	r3, [r3, #0]
 804487c:	4a17      	ldr	r2, [pc, #92]	@ (80448dc <UART_SetConfig+0x2dc>)
 804487e:	4293      	cmp	r3, r2
 8044880:	d13a      	bne.n	80448f8 <UART_SetConfig+0x2f8>
 8044882:	4b18      	ldr	r3, [pc, #96]	@ (80448e4 <UART_SetConfig+0x2e4>)
 8044884:	f8d3 3088 	ldr.w	r3, [r3, #136]	@ 0x88
 8044888:	f403 6340 	and.w	r3, r3, #3072	@ 0xc00
 804488c:	f5b3 6f40 	cmp.w	r3, #3072	@ 0xc00
 8044890:	d01a      	beq.n	80448c8 <UART_SetConfig+0x2c8>
 8044892:	f5b3 6f40 	cmp.w	r3, #3072	@ 0xc00
 8044896:	d81b      	bhi.n	80448d0 <UART_SetConfig+0x2d0>
 8044898:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 804489c:	d00c      	beq.n	80448b8 <UART_SetConfig+0x2b8>
 804489e:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 80448a2:	d815      	bhi.n	80448d0 <UART_SetConfig+0x2d0>
 80448a4:	2b00      	cmp	r3, #0
 80448a6:	d003      	beq.n	80448b0 <UART_SetConfig+0x2b0>
 80448a8:	f5b3 6f80 	cmp.w	r3, #1024	@ 0x400
 80448ac:	d008      	beq.n	80448c0 <UART_SetConfig+0x2c0>
 80448ae:	e00f      	b.n	80448d0 <UART_SetConfig+0x2d0>
 80448b0:	2300      	movs	r3, #0
 80448b2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80448b6:	e022      	b.n	80448fe <UART_SetConfig+0x2fe>
 80448b8:	2302      	movs	r3, #2
 80448ba:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80448be:	e01e      	b.n	80448fe <UART_SetConfig+0x2fe>
 80448c0:	2304      	movs	r3, #4
 80448c2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80448c6:	e01a      	b.n	80448fe <UART_SetConfig+0x2fe>
 80448c8:	2308      	movs	r3, #8
 80448ca:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80448ce:	e016      	b.n	80448fe <UART_SetConfig+0x2fe>
 80448d0:	2310      	movs	r3, #16
 80448d2:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80448d6:	e012      	b.n	80448fe <UART_SetConfig+0x2fe>
 80448d8:	cfff69f3 	.word	0xcfff69f3
 80448dc:	40008000 	.word	0x40008000
 80448e0:	40013800 	.word	0x40013800
 80448e4:	40021000 	.word	0x40021000
 80448e8:	40004400 	.word	0x40004400
 80448ec:	40004800 	.word	0x40004800
 80448f0:	40004c00 	.word	0x40004c00
 80448f4:	40005000 	.word	0x40005000
 80448f8:	2310      	movs	r3, #16
 80448fa:	f887 302b 	strb.w	r3, [r7, #43]	@ 0x2b
 80448fe:	697b      	ldr	r3, [r7, #20]
 8044900:	681b      	ldr	r3, [r3, #0]
 8044902:	4ab0      	ldr	r2, [pc, #704]	@ (8044bc4 <UART_SetConfig+0x5c4>)
 8044904:	4293      	cmp	r3, r2
 8044906:	f040 809b 	bne.w	8044a40 <UART_SetConfig+0x440>
 804490a:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
 804490e:	2b08      	cmp	r3, #8
 8044910:	d827      	bhi.n	8044962 <UART_SetConfig+0x362>
 8044912:	a201      	add	r2, pc, #4	@ (adr r2, 8044918 <UART_SetConfig+0x318>)
 8044914:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8044918:	0804493d 	.word	0x0804493d
 804491c:	08044945 	.word	0x08044945
 8044920:	0804494d 	.word	0x0804494d
 8044924:	08044963 	.word	0x08044963
 8044928:	08044953 	.word	0x08044953
 804492c:	08044963 	.word	0x08044963
 8044930:	08044963 	.word	0x08044963
 8044934:	08044963 	.word	0x08044963
 8044938:	0804495b 	.word	0x0804495b
 804493c:	f7fe fb2e 	bl	8042f9c <HAL_RCC_GetPCLK1Freq>
 8044940:	6278      	str	r0, [r7, #36]	@ 0x24
 8044942:	e014      	b.n	804496e <UART_SetConfig+0x36e>
 8044944:	f7fe fb3e 	bl	8042fc4 <HAL_RCC_GetPCLK2Freq>
 8044948:	6278      	str	r0, [r7, #36]	@ 0x24
 804494a:	e010      	b.n	804496e <UART_SetConfig+0x36e>
 804494c:	4b9e      	ldr	r3, [pc, #632]	@ (8044bc8 <UART_SetConfig+0x5c8>)
 804494e:	627b      	str	r3, [r7, #36]	@ 0x24
 8044950:	e00d      	b.n	804496e <UART_SetConfig+0x36e>
 8044952:	f7fe fa71 	bl	8042e38 <HAL_RCC_GetSysClockFreq>
 8044956:	6278      	str	r0, [r7, #36]	@ 0x24
 8044958:	e009      	b.n	804496e <UART_SetConfig+0x36e>
 804495a:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 804495e:	627b      	str	r3, [r7, #36]	@ 0x24
 8044960:	e005      	b.n	804496e <UART_SetConfig+0x36e>
 8044962:	2300      	movs	r3, #0
 8044964:	627b      	str	r3, [r7, #36]	@ 0x24
 8044966:	2301      	movs	r3, #1
 8044968:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 804496c:	bf00      	nop
 804496e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044970:	2b00      	cmp	r3, #0
 8044972:	f000 8130 	beq.w	8044bd6 <UART_SetConfig+0x5d6>
 8044976:	697b      	ldr	r3, [r7, #20]
 8044978:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 804497a:	4a94      	ldr	r2, [pc, #592]	@ (8044bcc <UART_SetConfig+0x5cc>)
 804497c:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8044980:	461a      	mov	r2, r3
 8044982:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044984:	fbb3 f3f2 	udiv	r3, r3, r2
 8044988:	61bb      	str	r3, [r7, #24]
 804498a:	697b      	ldr	r3, [r7, #20]
 804498c:	685a      	ldr	r2, [r3, #4]
 804498e:	4613      	mov	r3, r2
 8044990:	005b      	lsls	r3, r3, #1
 8044992:	4413      	add	r3, r2
 8044994:	69ba      	ldr	r2, [r7, #24]
 8044996:	429a      	cmp	r2, r3
 8044998:	d305      	bcc.n	80449a6 <UART_SetConfig+0x3a6>
 804499a:	697b      	ldr	r3, [r7, #20]
 804499c:	685b      	ldr	r3, [r3, #4]
 804499e:	031b      	lsls	r3, r3, #12
 80449a0:	69ba      	ldr	r2, [r7, #24]
 80449a2:	429a      	cmp	r2, r3
 80449a4:	d903      	bls.n	80449ae <UART_SetConfig+0x3ae>
 80449a6:	2301      	movs	r3, #1
 80449a8:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 80449ac:	e113      	b.n	8044bd6 <UART_SetConfig+0x5d6>
 80449ae:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 80449b0:	2200      	movs	r2, #0
 80449b2:	60bb      	str	r3, [r7, #8]
 80449b4:	60fa      	str	r2, [r7, #12]
 80449b6:	697b      	ldr	r3, [r7, #20]
 80449b8:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 80449ba:	4a84      	ldr	r2, [pc, #528]	@ (8044bcc <UART_SetConfig+0x5cc>)
 80449bc:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 80449c0:	b29b      	uxth	r3, r3
 80449c2:	2200      	movs	r2, #0
 80449c4:	603b      	str	r3, [r7, #0]
 80449c6:	607a      	str	r2, [r7, #4]
 80449c8:	e9d7 2300 	ldrd	r2, r3, [r7]
 80449cc:	e9d7 0102 	ldrd	r0, r1, [r7, #8]
 80449d0:	f7fb fc32 	bl	8040238 <__aeabi_uldivmod>
 80449d4:	4602      	mov	r2, r0
 80449d6:	460b      	mov	r3, r1
 80449d8:	4610      	mov	r0, r2
 80449da:	4619      	mov	r1, r3
 80449dc:	f04f 0200 	mov.w	r2, #0
 80449e0:	f04f 0300 	mov.w	r3, #0
 80449e4:	020b      	lsls	r3, r1, #8
 80449e6:	ea43 6310 	orr.w	r3, r3, r0, lsr #24
 80449ea:	0202      	lsls	r2, r0, #8
 80449ec:	6979      	ldr	r1, [r7, #20]
 80449ee:	6849      	ldr	r1, [r1, #4]
 80449f0:	0849      	lsrs	r1, r1, #1
 80449f2:	2000      	movs	r0, #0
 80449f4:	460c      	mov	r4, r1
 80449f6:	4605      	mov	r5, r0
 80449f8:	eb12 0804 	adds.w	r8, r2, r4
 80449fc:	eb43 0905 	adc.w	r9, r3, r5
 8044a00:	697b      	ldr	r3, [r7, #20]
 8044a02:	685b      	ldr	r3, [r3, #4]
 8044a04:	2200      	movs	r2, #0
 8044a06:	469a      	mov	sl, r3
 8044a08:	4693      	mov	fp, r2
 8044a0a:	4652      	mov	r2, sl
 8044a0c:	465b      	mov	r3, fp
 8044a0e:	4640      	mov	r0, r8
 8044a10:	4649      	mov	r1, r9
 8044a12:	f7fb fc11 	bl	8040238 <__aeabi_uldivmod>
 8044a16:	4602      	mov	r2, r0
 8044a18:	460b      	mov	r3, r1
 8044a1a:	4613      	mov	r3, r2
 8044a1c:	623b      	str	r3, [r7, #32]
 8044a1e:	6a3b      	ldr	r3, [r7, #32]
 8044a20:	f5b3 7f40 	cmp.w	r3, #768	@ 0x300
 8044a24:	d308      	bcc.n	8044a38 <UART_SetConfig+0x438>
 8044a26:	6a3b      	ldr	r3, [r7, #32]
 8044a28:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 8044a2c:	d204      	bcs.n	8044a38 <UART_SetConfig+0x438>
 8044a2e:	697b      	ldr	r3, [r7, #20]
 8044a30:	681b      	ldr	r3, [r3, #0]
 8044a32:	6a3a      	ldr	r2, [r7, #32]
 8044a34:	60da      	str	r2, [r3, #12]
 8044a36:	e0ce      	b.n	8044bd6 <UART_SetConfig+0x5d6>
 8044a38:	2301      	movs	r3, #1
 8044a3a:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8044a3e:	e0ca      	b.n	8044bd6 <UART_SetConfig+0x5d6>
 8044a40:	697b      	ldr	r3, [r7, #20]
 8044a42:	69db      	ldr	r3, [r3, #28]
 8044a44:	f5b3 4f00 	cmp.w	r3, #32768	@ 0x8000
 8044a48:	d166      	bne.n	8044b18 <UART_SetConfig+0x518>
 8044a4a:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
 8044a4e:	2b08      	cmp	r3, #8
 8044a50:	d827      	bhi.n	8044aa2 <UART_SetConfig+0x4a2>
 8044a52:	a201      	add	r2, pc, #4	@ (adr r2, 8044a58 <UART_SetConfig+0x458>)
 8044a54:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8044a58:	08044a7d 	.word	0x08044a7d
 8044a5c:	08044a85 	.word	0x08044a85
 8044a60:	08044a8d 	.word	0x08044a8d
 8044a64:	08044aa3 	.word	0x08044aa3
 8044a68:	08044a93 	.word	0x08044a93
 8044a6c:	08044aa3 	.word	0x08044aa3
 8044a70:	08044aa3 	.word	0x08044aa3
 8044a74:	08044aa3 	.word	0x08044aa3
 8044a78:	08044a9b 	.word	0x08044a9b
 8044a7c:	f7fe fa8e 	bl	8042f9c <HAL_RCC_GetPCLK1Freq>
 8044a80:	6278      	str	r0, [r7, #36]	@ 0x24
 8044a82:	e014      	b.n	8044aae <UART_SetConfig+0x4ae>
 8044a84:	f7fe fa9e 	bl	8042fc4 <HAL_RCC_GetPCLK2Freq>
 8044a88:	6278      	str	r0, [r7, #36]	@ 0x24
 8044a8a:	e010      	b.n	8044aae <UART_SetConfig+0x4ae>
 8044a8c:	4b4e      	ldr	r3, [pc, #312]	@ (8044bc8 <UART_SetConfig+0x5c8>)
 8044a8e:	627b      	str	r3, [r7, #36]	@ 0x24
 8044a90:	e00d      	b.n	8044aae <UART_SetConfig+0x4ae>
 8044a92:	f7fe f9d1 	bl	8042e38 <HAL_RCC_GetSysClockFreq>
 8044a96:	6278      	str	r0, [r7, #36]	@ 0x24
 8044a98:	e009      	b.n	8044aae <UART_SetConfig+0x4ae>
 8044a9a:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8044a9e:	627b      	str	r3, [r7, #36]	@ 0x24
 8044aa0:	e005      	b.n	8044aae <UART_SetConfig+0x4ae>
 8044aa2:	2300      	movs	r3, #0
 8044aa4:	627b      	str	r3, [r7, #36]	@ 0x24
 8044aa6:	2301      	movs	r3, #1
 8044aa8:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8044aac:	bf00      	nop
 8044aae:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044ab0:	2b00      	cmp	r3, #0
 8044ab2:	f000 8090 	beq.w	8044bd6 <UART_SetConfig+0x5d6>
 8044ab6:	697b      	ldr	r3, [r7, #20]
 8044ab8:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8044aba:	4a44      	ldr	r2, [pc, #272]	@ (8044bcc <UART_SetConfig+0x5cc>)
 8044abc:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8044ac0:	461a      	mov	r2, r3
 8044ac2:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044ac4:	fbb3 f3f2 	udiv	r3, r3, r2
 8044ac8:	005a      	lsls	r2, r3, #1
 8044aca:	697b      	ldr	r3, [r7, #20]
 8044acc:	685b      	ldr	r3, [r3, #4]
 8044ace:	085b      	lsrs	r3, r3, #1
 8044ad0:	441a      	add	r2, r3
 8044ad2:	697b      	ldr	r3, [r7, #20]
 8044ad4:	685b      	ldr	r3, [r3, #4]
 8044ad6:	fbb2 f3f3 	udiv	r3, r2, r3
 8044ada:	623b      	str	r3, [r7, #32]
 8044adc:	6a3b      	ldr	r3, [r7, #32]
 8044ade:	2b0f      	cmp	r3, #15
 8044ae0:	d916      	bls.n	8044b10 <UART_SetConfig+0x510>
 8044ae2:	6a3b      	ldr	r3, [r7, #32]
 8044ae4:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8044ae8:	d212      	bcs.n	8044b10 <UART_SetConfig+0x510>
 8044aea:	6a3b      	ldr	r3, [r7, #32]
 8044aec:	b29b      	uxth	r3, r3
 8044aee:	f023 030f 	bic.w	r3, r3, #15
 8044af2:	83fb      	strh	r3, [r7, #30]
 8044af4:	6a3b      	ldr	r3, [r7, #32]
 8044af6:	085b      	lsrs	r3, r3, #1
 8044af8:	b29b      	uxth	r3, r3
 8044afa:	f003 0307 	and.w	r3, r3, #7
 8044afe:	b29a      	uxth	r2, r3
 8044b00:	8bfb      	ldrh	r3, [r7, #30]
 8044b02:	4313      	orrs	r3, r2
 8044b04:	83fb      	strh	r3, [r7, #30]
 8044b06:	697b      	ldr	r3, [r7, #20]
 8044b08:	681b      	ldr	r3, [r3, #0]
 8044b0a:	8bfa      	ldrh	r2, [r7, #30]
 8044b0c:	60da      	str	r2, [r3, #12]
 8044b0e:	e062      	b.n	8044bd6 <UART_SetConfig+0x5d6>
 8044b10:	2301      	movs	r3, #1
 8044b12:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8044b16:	e05e      	b.n	8044bd6 <UART_SetConfig+0x5d6>
 8044b18:	f897 302b 	ldrb.w	r3, [r7, #43]	@ 0x2b
 8044b1c:	2b08      	cmp	r3, #8
 8044b1e:	d828      	bhi.n	8044b72 <UART_SetConfig+0x572>
 8044b20:	a201      	add	r2, pc, #4	@ (adr r2, 8044b28 <UART_SetConfig+0x528>)
 8044b22:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8044b26:	bf00      	nop
 8044b28:	08044b4d 	.word	0x08044b4d
 8044b2c:	08044b55 	.word	0x08044b55
 8044b30:	08044b5d 	.word	0x08044b5d
 8044b34:	08044b73 	.word	0x08044b73
 8044b38:	08044b63 	.word	0x08044b63
 8044b3c:	08044b73 	.word	0x08044b73
 8044b40:	08044b73 	.word	0x08044b73
 8044b44:	08044b73 	.word	0x08044b73
 8044b48:	08044b6b 	.word	0x08044b6b
 8044b4c:	f7fe fa26 	bl	8042f9c <HAL_RCC_GetPCLK1Freq>
 8044b50:	6278      	str	r0, [r7, #36]	@ 0x24
 8044b52:	e014      	b.n	8044b7e <UART_SetConfig+0x57e>
 8044b54:	f7fe fa36 	bl	8042fc4 <HAL_RCC_GetPCLK2Freq>
 8044b58:	6278      	str	r0, [r7, #36]	@ 0x24
 8044b5a:	e010      	b.n	8044b7e <UART_SetConfig+0x57e>
 8044b5c:	4b1a      	ldr	r3, [pc, #104]	@ (8044bc8 <UART_SetConfig+0x5c8>)
 8044b5e:	627b      	str	r3, [r7, #36]	@ 0x24
 8044b60:	e00d      	b.n	8044b7e <UART_SetConfig+0x57e>
 8044b62:	f7fe f969 	bl	8042e38 <HAL_RCC_GetSysClockFreq>
 8044b66:	6278      	str	r0, [r7, #36]	@ 0x24
 8044b68:	e009      	b.n	8044b7e <UART_SetConfig+0x57e>
 8044b6a:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
 8044b6e:	627b      	str	r3, [r7, #36]	@ 0x24
 8044b70:	e005      	b.n	8044b7e <UART_SetConfig+0x57e>
 8044b72:	2300      	movs	r3, #0
 8044b74:	627b      	str	r3, [r7, #36]	@ 0x24
 8044b76:	2301      	movs	r3, #1
 8044b78:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8044b7c:	bf00      	nop
 8044b7e:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044b80:	2b00      	cmp	r3, #0
 8044b82:	d028      	beq.n	8044bd6 <UART_SetConfig+0x5d6>
 8044b84:	697b      	ldr	r3, [r7, #20]
 8044b86:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
 8044b88:	4a10      	ldr	r2, [pc, #64]	@ (8044bcc <UART_SetConfig+0x5cc>)
 8044b8a:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8044b8e:	461a      	mov	r2, r3
 8044b90:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044b92:	fbb3 f2f2 	udiv	r2, r3, r2
 8044b96:	697b      	ldr	r3, [r7, #20]
 8044b98:	685b      	ldr	r3, [r3, #4]
 8044b9a:	085b      	lsrs	r3, r3, #1
 8044b9c:	441a      	add	r2, r3
 8044b9e:	697b      	ldr	r3, [r7, #20]
 8044ba0:	685b      	ldr	r3, [r3, #4]
 8044ba2:	fbb2 f3f3 	udiv	r3, r2, r3
 8044ba6:	623b      	str	r3, [r7, #32]
 8044ba8:	6a3b      	ldr	r3, [r7, #32]
 8044baa:	2b0f      	cmp	r3, #15
 8044bac:	d910      	bls.n	8044bd0 <UART_SetConfig+0x5d0>
 8044bae:	6a3b      	ldr	r3, [r7, #32]
 8044bb0:	f5b3 3f80 	cmp.w	r3, #65536	@ 0x10000
 8044bb4:	d20c      	bcs.n	8044bd0 <UART_SetConfig+0x5d0>
 8044bb6:	6a3b      	ldr	r3, [r7, #32]
 8044bb8:	b29a      	uxth	r2, r3
 8044bba:	697b      	ldr	r3, [r7, #20]
 8044bbc:	681b      	ldr	r3, [r3, #0]
 8044bbe:	60da      	str	r2, [r3, #12]
 8044bc0:	e009      	b.n	8044bd6 <UART_SetConfig+0x5d6>
 8044bc2:	bf00      	nop
 8044bc4:	40008000 	.word	0x40008000
 8044bc8:	00f42400 	.word	0x00f42400
 8044bcc:	08046228 	.word	0x08046228
 8044bd0:	2301      	movs	r3, #1
 8044bd2:	f887 302a 	strb.w	r3, [r7, #42]	@ 0x2a
 8044bd6:	697b      	ldr	r3, [r7, #20]
 8044bd8:	2201      	movs	r2, #1
 8044bda:	f8a3 206a 	strh.w	r2, [r3, #106]	@ 0x6a
 8044bde:	697b      	ldr	r3, [r7, #20]
 8044be0:	2201      	movs	r2, #1
 8044be2:	f8a3 2068 	strh.w	r2, [r3, #104]	@ 0x68
 8044be6:	697b      	ldr	r3, [r7, #20]
 8044be8:	2200      	movs	r2, #0
 8044bea:	675a      	str	r2, [r3, #116]	@ 0x74
 8044bec:	697b      	ldr	r3, [r7, #20]
 8044bee:	2200      	movs	r2, #0
 8044bf0:	679a      	str	r2, [r3, #120]	@ 0x78
 8044bf2:	f897 302a 	ldrb.w	r3, [r7, #42]	@ 0x2a
 8044bf6:	4618      	mov	r0, r3
 8044bf8:	3730      	adds	r7, #48	@ 0x30
 8044bfa:	46bd      	mov	sp, r7
 8044bfc:	e8bd 8fb0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, sl, fp, pc}

08044c00 <UART_AdvFeatureConfig>:
 8044c00:	b480      	push	{r7}
 8044c02:	b083      	sub	sp, #12
 8044c04:	af00      	add	r7, sp, #0
 8044c06:	6078      	str	r0, [r7, #4]
 8044c08:	687b      	ldr	r3, [r7, #4]
 8044c0a:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044c0c:	f003 0308 	and.w	r3, r3, #8
 8044c10:	2b00      	cmp	r3, #0
 8044c12:	d00a      	beq.n	8044c2a <UART_AdvFeatureConfig+0x2a>
 8044c14:	687b      	ldr	r3, [r7, #4]
 8044c16:	681b      	ldr	r3, [r3, #0]
 8044c18:	685b      	ldr	r3, [r3, #4]
 8044c1a:	f423 4100 	bic.w	r1, r3, #32768	@ 0x8000
 8044c1e:	687b      	ldr	r3, [r7, #4]
 8044c20:	6b9a      	ldr	r2, [r3, #56]	@ 0x38
 8044c22:	687b      	ldr	r3, [r7, #4]
 8044c24:	681b      	ldr	r3, [r3, #0]
 8044c26:	430a      	orrs	r2, r1
 8044c28:	605a      	str	r2, [r3, #4]
 8044c2a:	687b      	ldr	r3, [r7, #4]
 8044c2c:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044c2e:	f003 0301 	and.w	r3, r3, #1
 8044c32:	2b00      	cmp	r3, #0
 8044c34:	d00a      	beq.n	8044c4c <UART_AdvFeatureConfig+0x4c>
 8044c36:	687b      	ldr	r3, [r7, #4]
 8044c38:	681b      	ldr	r3, [r3, #0]
 8044c3a:	685b      	ldr	r3, [r3, #4]
 8044c3c:	f423 3100 	bic.w	r1, r3, #131072	@ 0x20000
 8044c40:	687b      	ldr	r3, [r7, #4]
 8044c42:	6ada      	ldr	r2, [r3, #44]	@ 0x2c
 8044c44:	687b      	ldr	r3, [r7, #4]
 8044c46:	681b      	ldr	r3, [r3, #0]
 8044c48:	430a      	orrs	r2, r1
 8044c4a:	605a      	str	r2, [r3, #4]
 8044c4c:	687b      	ldr	r3, [r7, #4]
 8044c4e:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044c50:	f003 0302 	and.w	r3, r3, #2
 8044c54:	2b00      	cmp	r3, #0
 8044c56:	d00a      	beq.n	8044c6e <UART_AdvFeatureConfig+0x6e>
 8044c58:	687b      	ldr	r3, [r7, #4]
 8044c5a:	681b      	ldr	r3, [r3, #0]
 8044c5c:	685b      	ldr	r3, [r3, #4]
 8044c5e:	f423 3180 	bic.w	r1, r3, #65536	@ 0x10000
 8044c62:	687b      	ldr	r3, [r7, #4]
 8044c64:	6b1a      	ldr	r2, [r3, #48]	@ 0x30
 8044c66:	687b      	ldr	r3, [r7, #4]
 8044c68:	681b      	ldr	r3, [r3, #0]
 8044c6a:	430a      	orrs	r2, r1
 8044c6c:	605a      	str	r2, [r3, #4]
 8044c6e:	687b      	ldr	r3, [r7, #4]
 8044c70:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044c72:	f003 0304 	and.w	r3, r3, #4
 8044c76:	2b00      	cmp	r3, #0
 8044c78:	d00a      	beq.n	8044c90 <UART_AdvFeatureConfig+0x90>
 8044c7a:	687b      	ldr	r3, [r7, #4]
 8044c7c:	681b      	ldr	r3, [r3, #0]
 8044c7e:	685b      	ldr	r3, [r3, #4]
 8044c80:	f423 2180 	bic.w	r1, r3, #262144	@ 0x40000
 8044c84:	687b      	ldr	r3, [r7, #4]
 8044c86:	6b5a      	ldr	r2, [r3, #52]	@ 0x34
 8044c88:	687b      	ldr	r3, [r7, #4]
 8044c8a:	681b      	ldr	r3, [r3, #0]
 8044c8c:	430a      	orrs	r2, r1
 8044c8e:	605a      	str	r2, [r3, #4]
 8044c90:	687b      	ldr	r3, [r7, #4]
 8044c92:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044c94:	f003 0310 	and.w	r3, r3, #16
 8044c98:	2b00      	cmp	r3, #0
 8044c9a:	d00a      	beq.n	8044cb2 <UART_AdvFeatureConfig+0xb2>
 8044c9c:	687b      	ldr	r3, [r7, #4]
 8044c9e:	681b      	ldr	r3, [r3, #0]
 8044ca0:	689b      	ldr	r3, [r3, #8]
 8044ca2:	f423 5180 	bic.w	r1, r3, #4096	@ 0x1000
 8044ca6:	687b      	ldr	r3, [r7, #4]
 8044ca8:	6bda      	ldr	r2, [r3, #60]	@ 0x3c
 8044caa:	687b      	ldr	r3, [r7, #4]
 8044cac:	681b      	ldr	r3, [r3, #0]
 8044cae:	430a      	orrs	r2, r1
 8044cb0:	609a      	str	r2, [r3, #8]
 8044cb2:	687b      	ldr	r3, [r7, #4]
 8044cb4:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044cb6:	f003 0320 	and.w	r3, r3, #32
 8044cba:	2b00      	cmp	r3, #0
 8044cbc:	d00a      	beq.n	8044cd4 <UART_AdvFeatureConfig+0xd4>
 8044cbe:	687b      	ldr	r3, [r7, #4]
 8044cc0:	681b      	ldr	r3, [r3, #0]
 8044cc2:	689b      	ldr	r3, [r3, #8]
 8044cc4:	f423 5100 	bic.w	r1, r3, #8192	@ 0x2000
 8044cc8:	687b      	ldr	r3, [r7, #4]
 8044cca:	6c1a      	ldr	r2, [r3, #64]	@ 0x40
 8044ccc:	687b      	ldr	r3, [r7, #4]
 8044cce:	681b      	ldr	r3, [r3, #0]
 8044cd0:	430a      	orrs	r2, r1
 8044cd2:	609a      	str	r2, [r3, #8]
 8044cd4:	687b      	ldr	r3, [r7, #4]
 8044cd6:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044cd8:	f003 0340 	and.w	r3, r3, #64	@ 0x40
 8044cdc:	2b00      	cmp	r3, #0
 8044cde:	d01a      	beq.n	8044d16 <UART_AdvFeatureConfig+0x116>
 8044ce0:	687b      	ldr	r3, [r7, #4]
 8044ce2:	681b      	ldr	r3, [r3, #0]
 8044ce4:	685b      	ldr	r3, [r3, #4]
 8044ce6:	f423 1180 	bic.w	r1, r3, #1048576	@ 0x100000
 8044cea:	687b      	ldr	r3, [r7, #4]
 8044cec:	6c5a      	ldr	r2, [r3, #68]	@ 0x44
 8044cee:	687b      	ldr	r3, [r7, #4]
 8044cf0:	681b      	ldr	r3, [r3, #0]
 8044cf2:	430a      	orrs	r2, r1
 8044cf4:	605a      	str	r2, [r3, #4]
 8044cf6:	687b      	ldr	r3, [r7, #4]
 8044cf8:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
 8044cfa:	f5b3 1f80 	cmp.w	r3, #1048576	@ 0x100000
 8044cfe:	d10a      	bne.n	8044d16 <UART_AdvFeatureConfig+0x116>
 8044d00:	687b      	ldr	r3, [r7, #4]
 8044d02:	681b      	ldr	r3, [r3, #0]
 8044d04:	685b      	ldr	r3, [r3, #4]
 8044d06:	f423 01c0 	bic.w	r1, r3, #6291456	@ 0x600000
 8044d0a:	687b      	ldr	r3, [r7, #4]
 8044d0c:	6c9a      	ldr	r2, [r3, #72]	@ 0x48
 8044d0e:	687b      	ldr	r3, [r7, #4]
 8044d10:	681b      	ldr	r3, [r3, #0]
 8044d12:	430a      	orrs	r2, r1
 8044d14:	605a      	str	r2, [r3, #4]
 8044d16:	687b      	ldr	r3, [r7, #4]
 8044d18:	6a9b      	ldr	r3, [r3, #40]	@ 0x28
 8044d1a:	f003 0380 	and.w	r3, r3, #128	@ 0x80
 8044d1e:	2b00      	cmp	r3, #0
 8044d20:	d00a      	beq.n	8044d38 <UART_AdvFeatureConfig+0x138>
 8044d22:	687b      	ldr	r3, [r7, #4]
 8044d24:	681b      	ldr	r3, [r3, #0]
 8044d26:	685b      	ldr	r3, [r3, #4]
 8044d28:	f423 2100 	bic.w	r1, r3, #524288	@ 0x80000
 8044d2c:	687b      	ldr	r3, [r7, #4]
 8044d2e:	6cda      	ldr	r2, [r3, #76]	@ 0x4c
 8044d30:	687b      	ldr	r3, [r7, #4]
 8044d32:	681b      	ldr	r3, [r3, #0]
 8044d34:	430a      	orrs	r2, r1
 8044d36:	605a      	str	r2, [r3, #4]
 8044d38:	bf00      	nop
 8044d3a:	370c      	adds	r7, #12
 8044d3c:	46bd      	mov	sp, r7
 8044d3e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8044d42:	4770      	bx	lr

08044d44 <UART_CheckIdleState>:
 8044d44:	b580      	push	{r7, lr}
 8044d46:	b098      	sub	sp, #96	@ 0x60
 8044d48:	af02      	add	r7, sp, #8
 8044d4a:	6078      	str	r0, [r7, #4]
 8044d4c:	687b      	ldr	r3, [r7, #4]
 8044d4e:	2200      	movs	r2, #0
 8044d50:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 8044d54:	f7fc fc10 	bl	8041578 <HAL_GetTick>
 8044d58:	6578      	str	r0, [r7, #84]	@ 0x54
 8044d5a:	687b      	ldr	r3, [r7, #4]
 8044d5c:	681b      	ldr	r3, [r3, #0]
 8044d5e:	681b      	ldr	r3, [r3, #0]
 8044d60:	f003 0308 	and.w	r3, r3, #8
 8044d64:	2b08      	cmp	r3, #8
 8044d66:	d12f      	bne.n	8044dc8 <UART_CheckIdleState+0x84>
 8044d68:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 8044d6c:	9300      	str	r3, [sp, #0]
 8044d6e:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 8044d70:	2200      	movs	r2, #0
 8044d72:	f44f 1100 	mov.w	r1, #2097152	@ 0x200000
 8044d76:	6878      	ldr	r0, [r7, #4]
 8044d78:	f000 f88e 	bl	8044e98 <UART_WaitOnFlagUntilTimeout>
 8044d7c:	4603      	mov	r3, r0
 8044d7e:	2b00      	cmp	r3, #0
 8044d80:	d022      	beq.n	8044dc8 <UART_CheckIdleState+0x84>
 8044d82:	687b      	ldr	r3, [r7, #4]
 8044d84:	681b      	ldr	r3, [r3, #0]
 8044d86:	63bb      	str	r3, [r7, #56]	@ 0x38
 8044d88:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8044d8a:	e853 3f00 	ldrex	r3, [r3]
 8044d8e:	637b      	str	r3, [r7, #52]	@ 0x34
 8044d90:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8044d92:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8044d96:	653b      	str	r3, [r7, #80]	@ 0x50
 8044d98:	687b      	ldr	r3, [r7, #4]
 8044d9a:	681b      	ldr	r3, [r3, #0]
 8044d9c:	461a      	mov	r2, r3
 8044d9e:	6d3b      	ldr	r3, [r7, #80]	@ 0x50
 8044da0:	647b      	str	r3, [r7, #68]	@ 0x44
 8044da2:	643a      	str	r2, [r7, #64]	@ 0x40
 8044da4:	6c39      	ldr	r1, [r7, #64]	@ 0x40
 8044da6:	6c7a      	ldr	r2, [r7, #68]	@ 0x44
 8044da8:	e841 2300 	strex	r3, r2, [r1]
 8044dac:	63fb      	str	r3, [r7, #60]	@ 0x3c
 8044dae:	6bfb      	ldr	r3, [r7, #60]	@ 0x3c
 8044db0:	2b00      	cmp	r3, #0
 8044db2:	d1e6      	bne.n	8044d82 <UART_CheckIdleState+0x3e>
 8044db4:	687b      	ldr	r3, [r7, #4]
 8044db6:	2220      	movs	r2, #32
 8044db8:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8044dbc:	687b      	ldr	r3, [r7, #4]
 8044dbe:	2200      	movs	r2, #0
 8044dc0:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8044dc4:	2303      	movs	r3, #3
 8044dc6:	e063      	b.n	8044e90 <UART_CheckIdleState+0x14c>
 8044dc8:	687b      	ldr	r3, [r7, #4]
 8044dca:	681b      	ldr	r3, [r3, #0]
 8044dcc:	681b      	ldr	r3, [r3, #0]
 8044dce:	f003 0304 	and.w	r3, r3, #4
 8044dd2:	2b04      	cmp	r3, #4
 8044dd4:	d149      	bne.n	8044e6a <UART_CheckIdleState+0x126>
 8044dd6:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 8044dda:	9300      	str	r3, [sp, #0]
 8044ddc:	6d7b      	ldr	r3, [r7, #84]	@ 0x54
 8044dde:	2200      	movs	r2, #0
 8044de0:	f44f 0180 	mov.w	r1, #4194304	@ 0x400000
 8044de4:	6878      	ldr	r0, [r7, #4]
 8044de6:	f000 f857 	bl	8044e98 <UART_WaitOnFlagUntilTimeout>
 8044dea:	4603      	mov	r3, r0
 8044dec:	2b00      	cmp	r3, #0
 8044dee:	d03c      	beq.n	8044e6a <UART_CheckIdleState+0x126>
 8044df0:	687b      	ldr	r3, [r7, #4]
 8044df2:	681b      	ldr	r3, [r3, #0]
 8044df4:	627b      	str	r3, [r7, #36]	@ 0x24
 8044df6:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044df8:	e853 3f00 	ldrex	r3, [r3]
 8044dfc:	623b      	str	r3, [r7, #32]
 8044dfe:	6a3b      	ldr	r3, [r7, #32]
 8044e00:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 8044e04:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8044e06:	687b      	ldr	r3, [r7, #4]
 8044e08:	681b      	ldr	r3, [r3, #0]
 8044e0a:	461a      	mov	r2, r3
 8044e0c:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 8044e0e:	633b      	str	r3, [r7, #48]	@ 0x30
 8044e10:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8044e12:	6af9      	ldr	r1, [r7, #44]	@ 0x2c
 8044e14:	6b3a      	ldr	r2, [r7, #48]	@ 0x30
 8044e16:	e841 2300 	strex	r3, r2, [r1]
 8044e1a:	62bb      	str	r3, [r7, #40]	@ 0x28
 8044e1c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
 8044e1e:	2b00      	cmp	r3, #0
 8044e20:	d1e6      	bne.n	8044df0 <UART_CheckIdleState+0xac>
 8044e22:	687b      	ldr	r3, [r7, #4]
 8044e24:	681b      	ldr	r3, [r3, #0]
 8044e26:	3308      	adds	r3, #8
 8044e28:	613b      	str	r3, [r7, #16]
 8044e2a:	693b      	ldr	r3, [r7, #16]
 8044e2c:	e853 3f00 	ldrex	r3, [r3]
 8044e30:	60fb      	str	r3, [r7, #12]
 8044e32:	68fb      	ldr	r3, [r7, #12]
 8044e34:	f023 0301 	bic.w	r3, r3, #1
 8044e38:	64bb      	str	r3, [r7, #72]	@ 0x48
 8044e3a:	687b      	ldr	r3, [r7, #4]
 8044e3c:	681b      	ldr	r3, [r3, #0]
 8044e3e:	3308      	adds	r3, #8
 8044e40:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 8044e42:	61fa      	str	r2, [r7, #28]
 8044e44:	61bb      	str	r3, [r7, #24]
 8044e46:	69b9      	ldr	r1, [r7, #24]
 8044e48:	69fa      	ldr	r2, [r7, #28]
 8044e4a:	e841 2300 	strex	r3, r2, [r1]
 8044e4e:	617b      	str	r3, [r7, #20]
 8044e50:	697b      	ldr	r3, [r7, #20]
 8044e52:	2b00      	cmp	r3, #0
 8044e54:	d1e5      	bne.n	8044e22 <UART_CheckIdleState+0xde>
 8044e56:	687b      	ldr	r3, [r7, #4]
 8044e58:	2220      	movs	r2, #32
 8044e5a:	f8c3 208c 	str.w	r2, [r3, #140]	@ 0x8c
 8044e5e:	687b      	ldr	r3, [r7, #4]
 8044e60:	2200      	movs	r2, #0
 8044e62:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8044e66:	2303      	movs	r3, #3
 8044e68:	e012      	b.n	8044e90 <UART_CheckIdleState+0x14c>
 8044e6a:	687b      	ldr	r3, [r7, #4]
 8044e6c:	2220      	movs	r2, #32
 8044e6e:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8044e72:	687b      	ldr	r3, [r7, #4]
 8044e74:	2220      	movs	r2, #32
 8044e76:	f8c3 208c 	str.w	r2, [r3, #140]	@ 0x8c
 8044e7a:	687b      	ldr	r3, [r7, #4]
 8044e7c:	2200      	movs	r2, #0
 8044e7e:	66da      	str	r2, [r3, #108]	@ 0x6c
 8044e80:	687b      	ldr	r3, [r7, #4]
 8044e82:	2200      	movs	r2, #0
 8044e84:	671a      	str	r2, [r3, #112]	@ 0x70
 8044e86:	687b      	ldr	r3, [r7, #4]
 8044e88:	2200      	movs	r2, #0
 8044e8a:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8044e8e:	2300      	movs	r3, #0
 8044e90:	4618      	mov	r0, r3
 8044e92:	3758      	adds	r7, #88	@ 0x58
 8044e94:	46bd      	mov	sp, r7
 8044e96:	bd80      	pop	{r7, pc}

08044e98 <UART_WaitOnFlagUntilTimeout>:
 8044e98:	b580      	push	{r7, lr}
 8044e9a:	b084      	sub	sp, #16
 8044e9c:	af00      	add	r7, sp, #0
 8044e9e:	60f8      	str	r0, [r7, #12]
 8044ea0:	60b9      	str	r1, [r7, #8]
 8044ea2:	603b      	str	r3, [r7, #0]
 8044ea4:	4613      	mov	r3, r2
 8044ea6:	71fb      	strb	r3, [r7, #7]
 8044ea8:	e04f      	b.n	8044f4a <UART_WaitOnFlagUntilTimeout+0xb2>
 8044eaa:	69bb      	ldr	r3, [r7, #24]
 8044eac:	f1b3 3fff 	cmp.w	r3, #4294967295
 8044eb0:	d04b      	beq.n	8044f4a <UART_WaitOnFlagUntilTimeout+0xb2>
 8044eb2:	f7fc fb61 	bl	8041578 <HAL_GetTick>
 8044eb6:	4602      	mov	r2, r0
 8044eb8:	683b      	ldr	r3, [r7, #0]
 8044eba:	1ad3      	subs	r3, r2, r3
 8044ebc:	69ba      	ldr	r2, [r7, #24]
 8044ebe:	429a      	cmp	r2, r3
 8044ec0:	d302      	bcc.n	8044ec8 <UART_WaitOnFlagUntilTimeout+0x30>
 8044ec2:	69bb      	ldr	r3, [r7, #24]
 8044ec4:	2b00      	cmp	r3, #0
 8044ec6:	d101      	bne.n	8044ecc <UART_WaitOnFlagUntilTimeout+0x34>
 8044ec8:	2303      	movs	r3, #3
 8044eca:	e04e      	b.n	8044f6a <UART_WaitOnFlagUntilTimeout+0xd2>
 8044ecc:	68fb      	ldr	r3, [r7, #12]
 8044ece:	681b      	ldr	r3, [r3, #0]
 8044ed0:	681b      	ldr	r3, [r3, #0]
 8044ed2:	f003 0304 	and.w	r3, r3, #4
 8044ed6:	2b00      	cmp	r3, #0
 8044ed8:	d037      	beq.n	8044f4a <UART_WaitOnFlagUntilTimeout+0xb2>
 8044eda:	68bb      	ldr	r3, [r7, #8]
 8044edc:	2b80      	cmp	r3, #128	@ 0x80
 8044ede:	d034      	beq.n	8044f4a <UART_WaitOnFlagUntilTimeout+0xb2>
 8044ee0:	68bb      	ldr	r3, [r7, #8]
 8044ee2:	2b40      	cmp	r3, #64	@ 0x40
 8044ee4:	d031      	beq.n	8044f4a <UART_WaitOnFlagUntilTimeout+0xb2>
 8044ee6:	68fb      	ldr	r3, [r7, #12]
 8044ee8:	681b      	ldr	r3, [r3, #0]
 8044eea:	69db      	ldr	r3, [r3, #28]
 8044eec:	f003 0308 	and.w	r3, r3, #8
 8044ef0:	2b08      	cmp	r3, #8
 8044ef2:	d110      	bne.n	8044f16 <UART_WaitOnFlagUntilTimeout+0x7e>
 8044ef4:	68fb      	ldr	r3, [r7, #12]
 8044ef6:	681b      	ldr	r3, [r3, #0]
 8044ef8:	2208      	movs	r2, #8
 8044efa:	621a      	str	r2, [r3, #32]
 8044efc:	68f8      	ldr	r0, [r7, #12]
 8044efe:	f000 f838 	bl	8044f72 <UART_EndRxTransfer>
 8044f02:	68fb      	ldr	r3, [r7, #12]
 8044f04:	2208      	movs	r2, #8
 8044f06:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 8044f0a:	68fb      	ldr	r3, [r7, #12]
 8044f0c:	2200      	movs	r2, #0
 8044f0e:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8044f12:	2301      	movs	r3, #1
 8044f14:	e029      	b.n	8044f6a <UART_WaitOnFlagUntilTimeout+0xd2>
 8044f16:	68fb      	ldr	r3, [r7, #12]
 8044f18:	681b      	ldr	r3, [r3, #0]
 8044f1a:	69db      	ldr	r3, [r3, #28]
 8044f1c:	f403 6300 	and.w	r3, r3, #2048	@ 0x800
 8044f20:	f5b3 6f00 	cmp.w	r3, #2048	@ 0x800
 8044f24:	d111      	bne.n	8044f4a <UART_WaitOnFlagUntilTimeout+0xb2>
 8044f26:	68fb      	ldr	r3, [r7, #12]
 8044f28:	681b      	ldr	r3, [r3, #0]
 8044f2a:	f44f 6200 	mov.w	r2, #2048	@ 0x800
 8044f2e:	621a      	str	r2, [r3, #32]
 8044f30:	68f8      	ldr	r0, [r7, #12]
 8044f32:	f000 f81e 	bl	8044f72 <UART_EndRxTransfer>
 8044f36:	68fb      	ldr	r3, [r7, #12]
 8044f38:	2220      	movs	r2, #32
 8044f3a:	f8c3 2090 	str.w	r2, [r3, #144]	@ 0x90
 8044f3e:	68fb      	ldr	r3, [r7, #12]
 8044f40:	2200      	movs	r2, #0
 8044f42:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8044f46:	2303      	movs	r3, #3
 8044f48:	e00f      	b.n	8044f6a <UART_WaitOnFlagUntilTimeout+0xd2>
 8044f4a:	68fb      	ldr	r3, [r7, #12]
 8044f4c:	681b      	ldr	r3, [r3, #0]
 8044f4e:	69da      	ldr	r2, [r3, #28]
 8044f50:	68bb      	ldr	r3, [r7, #8]
 8044f52:	4013      	ands	r3, r2
 8044f54:	68ba      	ldr	r2, [r7, #8]
 8044f56:	429a      	cmp	r2, r3
 8044f58:	bf0c      	ite	eq
 8044f5a:	2301      	moveq	r3, #1
 8044f5c:	2300      	movne	r3, #0
 8044f5e:	b2db      	uxtb	r3, r3
 8044f60:	461a      	mov	r2, r3
 8044f62:	79fb      	ldrb	r3, [r7, #7]
 8044f64:	429a      	cmp	r2, r3
 8044f66:	d0a0      	beq.n	8044eaa <UART_WaitOnFlagUntilTimeout+0x12>
 8044f68:	2300      	movs	r3, #0
 8044f6a:	4618      	mov	r0, r3
 8044f6c:	3710      	adds	r7, #16
 8044f6e:	46bd      	mov	sp, r7
 8044f70:	bd80      	pop	{r7, pc}

08044f72 <UART_EndRxTransfer>:
 8044f72:	b480      	push	{r7}
 8044f74:	b095      	sub	sp, #84	@ 0x54
 8044f76:	af00      	add	r7, sp, #0
 8044f78:	6078      	str	r0, [r7, #4]
 8044f7a:	687b      	ldr	r3, [r7, #4]
 8044f7c:	681b      	ldr	r3, [r3, #0]
 8044f7e:	637b      	str	r3, [r7, #52]	@ 0x34
 8044f80:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
 8044f82:	e853 3f00 	ldrex	r3, [r3]
 8044f86:	633b      	str	r3, [r7, #48]	@ 0x30
 8044f88:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
 8044f8a:	f423 7390 	bic.w	r3, r3, #288	@ 0x120
 8044f8e:	64fb      	str	r3, [r7, #76]	@ 0x4c
 8044f90:	687b      	ldr	r3, [r7, #4]
 8044f92:	681b      	ldr	r3, [r3, #0]
 8044f94:	461a      	mov	r2, r3
 8044f96:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
 8044f98:	643b      	str	r3, [r7, #64]	@ 0x40
 8044f9a:	63fa      	str	r2, [r7, #60]	@ 0x3c
 8044f9c:	6bf9      	ldr	r1, [r7, #60]	@ 0x3c
 8044f9e:	6c3a      	ldr	r2, [r7, #64]	@ 0x40
 8044fa0:	e841 2300 	strex	r3, r2, [r1]
 8044fa4:	63bb      	str	r3, [r7, #56]	@ 0x38
 8044fa6:	6bbb      	ldr	r3, [r7, #56]	@ 0x38
 8044fa8:	2b00      	cmp	r3, #0
 8044faa:	d1e6      	bne.n	8044f7a <UART_EndRxTransfer+0x8>
 8044fac:	687b      	ldr	r3, [r7, #4]
 8044fae:	681b      	ldr	r3, [r3, #0]
 8044fb0:	3308      	adds	r3, #8
 8044fb2:	623b      	str	r3, [r7, #32]
 8044fb4:	6a3b      	ldr	r3, [r7, #32]
 8044fb6:	e853 3f00 	ldrex	r3, [r3]
 8044fba:	61fb      	str	r3, [r7, #28]
 8044fbc:	69fb      	ldr	r3, [r7, #28]
 8044fbe:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8044fc2:	f023 0301 	bic.w	r3, r3, #1
 8044fc6:	64bb      	str	r3, [r7, #72]	@ 0x48
 8044fc8:	687b      	ldr	r3, [r7, #4]
 8044fca:	681b      	ldr	r3, [r3, #0]
 8044fcc:	3308      	adds	r3, #8
 8044fce:	6cba      	ldr	r2, [r7, #72]	@ 0x48
 8044fd0:	62fa      	str	r2, [r7, #44]	@ 0x2c
 8044fd2:	62bb      	str	r3, [r7, #40]	@ 0x28
 8044fd4:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
 8044fd6:	6afa      	ldr	r2, [r7, #44]	@ 0x2c
 8044fd8:	e841 2300 	strex	r3, r2, [r1]
 8044fdc:	627b      	str	r3, [r7, #36]	@ 0x24
 8044fde:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
 8044fe0:	2b00      	cmp	r3, #0
 8044fe2:	d1e3      	bne.n	8044fac <UART_EndRxTransfer+0x3a>
 8044fe4:	687b      	ldr	r3, [r7, #4]
 8044fe6:	6edb      	ldr	r3, [r3, #108]	@ 0x6c
 8044fe8:	2b01      	cmp	r3, #1
 8044fea:	d118      	bne.n	804501e <UART_EndRxTransfer+0xac>
 8044fec:	687b      	ldr	r3, [r7, #4]
 8044fee:	681b      	ldr	r3, [r3, #0]
 8044ff0:	60fb      	str	r3, [r7, #12]
 8044ff2:	68fb      	ldr	r3, [r7, #12]
 8044ff4:	e853 3f00 	ldrex	r3, [r3]
 8044ff8:	60bb      	str	r3, [r7, #8]
 8044ffa:	68bb      	ldr	r3, [r7, #8]
 8044ffc:	f023 0310 	bic.w	r3, r3, #16
 8045000:	647b      	str	r3, [r7, #68]	@ 0x44
 8045002:	687b      	ldr	r3, [r7, #4]
 8045004:	681b      	ldr	r3, [r3, #0]
 8045006:	461a      	mov	r2, r3
 8045008:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
 804500a:	61bb      	str	r3, [r7, #24]
 804500c:	617a      	str	r2, [r7, #20]
 804500e:	6979      	ldr	r1, [r7, #20]
 8045010:	69ba      	ldr	r2, [r7, #24]
 8045012:	e841 2300 	strex	r3, r2, [r1]
 8045016:	613b      	str	r3, [r7, #16]
 8045018:	693b      	ldr	r3, [r7, #16]
 804501a:	2b00      	cmp	r3, #0
 804501c:	d1e6      	bne.n	8044fec <UART_EndRxTransfer+0x7a>
 804501e:	687b      	ldr	r3, [r7, #4]
 8045020:	2220      	movs	r2, #32
 8045022:	f8c3 208c 	str.w	r2, [r3, #140]	@ 0x8c
 8045026:	687b      	ldr	r3, [r7, #4]
 8045028:	2200      	movs	r2, #0
 804502a:	66da      	str	r2, [r3, #108]	@ 0x6c
 804502c:	687b      	ldr	r3, [r7, #4]
 804502e:	2200      	movs	r2, #0
 8045030:	675a      	str	r2, [r3, #116]	@ 0x74
 8045032:	bf00      	nop
 8045034:	3754      	adds	r7, #84	@ 0x54
 8045036:	46bd      	mov	sp, r7
 8045038:	f85d 7b04 	ldr.w	r7, [sp], #4
 804503c:	4770      	bx	lr

0804503e <HAL_UARTEx_DisableFifoMode>:
 804503e:	b480      	push	{r7}
 8045040:	b085      	sub	sp, #20
 8045042:	af00      	add	r7, sp, #0
 8045044:	6078      	str	r0, [r7, #4]
 8045046:	687b      	ldr	r3, [r7, #4]
 8045048:	f893 3084 	ldrb.w	r3, [r3, #132]	@ 0x84
 804504c:	2b01      	cmp	r3, #1
 804504e:	d101      	bne.n	8045054 <HAL_UARTEx_DisableFifoMode+0x16>
 8045050:	2302      	movs	r3, #2
 8045052:	e027      	b.n	80450a4 <HAL_UARTEx_DisableFifoMode+0x66>
 8045054:	687b      	ldr	r3, [r7, #4]
 8045056:	2201      	movs	r2, #1
 8045058:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804505c:	687b      	ldr	r3, [r7, #4]
 804505e:	2224      	movs	r2, #36	@ 0x24
 8045060:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8045064:	687b      	ldr	r3, [r7, #4]
 8045066:	681b      	ldr	r3, [r3, #0]
 8045068:	681b      	ldr	r3, [r3, #0]
 804506a:	60fb      	str	r3, [r7, #12]
 804506c:	687b      	ldr	r3, [r7, #4]
 804506e:	681b      	ldr	r3, [r3, #0]
 8045070:	681a      	ldr	r2, [r3, #0]
 8045072:	687b      	ldr	r3, [r7, #4]
 8045074:	681b      	ldr	r3, [r3, #0]
 8045076:	f022 0201 	bic.w	r2, r2, #1
 804507a:	601a      	str	r2, [r3, #0]
 804507c:	68fb      	ldr	r3, [r7, #12]
 804507e:	f023 5300 	bic.w	r3, r3, #536870912	@ 0x20000000
 8045082:	60fb      	str	r3, [r7, #12]
 8045084:	687b      	ldr	r3, [r7, #4]
 8045086:	2200      	movs	r2, #0
 8045088:	665a      	str	r2, [r3, #100]	@ 0x64
 804508a:	687b      	ldr	r3, [r7, #4]
 804508c:	681b      	ldr	r3, [r3, #0]
 804508e:	68fa      	ldr	r2, [r7, #12]
 8045090:	601a      	str	r2, [r3, #0]
 8045092:	687b      	ldr	r3, [r7, #4]
 8045094:	2220      	movs	r2, #32
 8045096:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 804509a:	687b      	ldr	r3, [r7, #4]
 804509c:	2200      	movs	r2, #0
 804509e:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 80450a2:	2300      	movs	r3, #0
 80450a4:	4618      	mov	r0, r3
 80450a6:	3714      	adds	r7, #20
 80450a8:	46bd      	mov	sp, r7
 80450aa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80450ae:	4770      	bx	lr

080450b0 <HAL_UARTEx_SetTxFifoThreshold>:
 80450b0:	b580      	push	{r7, lr}
 80450b2:	b084      	sub	sp, #16
 80450b4:	af00      	add	r7, sp, #0
 80450b6:	6078      	str	r0, [r7, #4]
 80450b8:	6039      	str	r1, [r7, #0]
 80450ba:	687b      	ldr	r3, [r7, #4]
 80450bc:	f893 3084 	ldrb.w	r3, [r3, #132]	@ 0x84
 80450c0:	2b01      	cmp	r3, #1
 80450c2:	d101      	bne.n	80450c8 <HAL_UARTEx_SetTxFifoThreshold+0x18>
 80450c4:	2302      	movs	r3, #2
 80450c6:	e02d      	b.n	8045124 <HAL_UARTEx_SetTxFifoThreshold+0x74>
 80450c8:	687b      	ldr	r3, [r7, #4]
 80450ca:	2201      	movs	r2, #1
 80450cc:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 80450d0:	687b      	ldr	r3, [r7, #4]
 80450d2:	2224      	movs	r2, #36	@ 0x24
 80450d4:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 80450d8:	687b      	ldr	r3, [r7, #4]
 80450da:	681b      	ldr	r3, [r3, #0]
 80450dc:	681b      	ldr	r3, [r3, #0]
 80450de:	60fb      	str	r3, [r7, #12]
 80450e0:	687b      	ldr	r3, [r7, #4]
 80450e2:	681b      	ldr	r3, [r3, #0]
 80450e4:	681a      	ldr	r2, [r3, #0]
 80450e6:	687b      	ldr	r3, [r7, #4]
 80450e8:	681b      	ldr	r3, [r3, #0]
 80450ea:	f022 0201 	bic.w	r2, r2, #1
 80450ee:	601a      	str	r2, [r3, #0]
 80450f0:	687b      	ldr	r3, [r7, #4]
 80450f2:	681b      	ldr	r3, [r3, #0]
 80450f4:	689b      	ldr	r3, [r3, #8]
 80450f6:	f023 4160 	bic.w	r1, r3, #3758096384	@ 0xe0000000
 80450fa:	687b      	ldr	r3, [r7, #4]
 80450fc:	681b      	ldr	r3, [r3, #0]
 80450fe:	683a      	ldr	r2, [r7, #0]
 8045100:	430a      	orrs	r2, r1
 8045102:	609a      	str	r2, [r3, #8]
 8045104:	6878      	ldr	r0, [r7, #4]
 8045106:	f000 f84f 	bl	80451a8 <UARTEx_SetNbDataToProcess>
 804510a:	687b      	ldr	r3, [r7, #4]
 804510c:	681b      	ldr	r3, [r3, #0]
 804510e:	68fa      	ldr	r2, [r7, #12]
 8045110:	601a      	str	r2, [r3, #0]
 8045112:	687b      	ldr	r3, [r7, #4]
 8045114:	2220      	movs	r2, #32
 8045116:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 804511a:	687b      	ldr	r3, [r7, #4]
 804511c:	2200      	movs	r2, #0
 804511e:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 8045122:	2300      	movs	r3, #0
 8045124:	4618      	mov	r0, r3
 8045126:	3710      	adds	r7, #16
 8045128:	46bd      	mov	sp, r7
 804512a:	bd80      	pop	{r7, pc}

0804512c <HAL_UARTEx_SetRxFifoThreshold>:
 804512c:	b580      	push	{r7, lr}
 804512e:	b084      	sub	sp, #16
 8045130:	af00      	add	r7, sp, #0
 8045132:	6078      	str	r0, [r7, #4]
 8045134:	6039      	str	r1, [r7, #0]
 8045136:	687b      	ldr	r3, [r7, #4]
 8045138:	f893 3084 	ldrb.w	r3, [r3, #132]	@ 0x84
 804513c:	2b01      	cmp	r3, #1
 804513e:	d101      	bne.n	8045144 <HAL_UARTEx_SetRxFifoThreshold+0x18>
 8045140:	2302      	movs	r3, #2
 8045142:	e02d      	b.n	80451a0 <HAL_UARTEx_SetRxFifoThreshold+0x74>
 8045144:	687b      	ldr	r3, [r7, #4]
 8045146:	2201      	movs	r2, #1
 8045148:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804514c:	687b      	ldr	r3, [r7, #4]
 804514e:	2224      	movs	r2, #36	@ 0x24
 8045150:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8045154:	687b      	ldr	r3, [r7, #4]
 8045156:	681b      	ldr	r3, [r3, #0]
 8045158:	681b      	ldr	r3, [r3, #0]
 804515a:	60fb      	str	r3, [r7, #12]
 804515c:	687b      	ldr	r3, [r7, #4]
 804515e:	681b      	ldr	r3, [r3, #0]
 8045160:	681a      	ldr	r2, [r3, #0]
 8045162:	687b      	ldr	r3, [r7, #4]
 8045164:	681b      	ldr	r3, [r3, #0]
 8045166:	f022 0201 	bic.w	r2, r2, #1
 804516a:	601a      	str	r2, [r3, #0]
 804516c:	687b      	ldr	r3, [r7, #4]
 804516e:	681b      	ldr	r3, [r3, #0]
 8045170:	689b      	ldr	r3, [r3, #8]
 8045172:	f023 6160 	bic.w	r1, r3, #234881024	@ 0xe000000
 8045176:	687b      	ldr	r3, [r7, #4]
 8045178:	681b      	ldr	r3, [r3, #0]
 804517a:	683a      	ldr	r2, [r7, #0]
 804517c:	430a      	orrs	r2, r1
 804517e:	609a      	str	r2, [r3, #8]
 8045180:	6878      	ldr	r0, [r7, #4]
 8045182:	f000 f811 	bl	80451a8 <UARTEx_SetNbDataToProcess>
 8045186:	687b      	ldr	r3, [r7, #4]
 8045188:	681b      	ldr	r3, [r3, #0]
 804518a:	68fa      	ldr	r2, [r7, #12]
 804518c:	601a      	str	r2, [r3, #0]
 804518e:	687b      	ldr	r3, [r7, #4]
 8045190:	2220      	movs	r2, #32
 8045192:	f8c3 2088 	str.w	r2, [r3, #136]	@ 0x88
 8045196:	687b      	ldr	r3, [r7, #4]
 8045198:	2200      	movs	r2, #0
 804519a:	f883 2084 	strb.w	r2, [r3, #132]	@ 0x84
 804519e:	2300      	movs	r3, #0
 80451a0:	4618      	mov	r0, r3
 80451a2:	3710      	adds	r7, #16
 80451a4:	46bd      	mov	sp, r7
 80451a6:	bd80      	pop	{r7, pc}

080451a8 <UARTEx_SetNbDataToProcess>:
 80451a8:	b480      	push	{r7}
 80451aa:	b085      	sub	sp, #20
 80451ac:	af00      	add	r7, sp, #0
 80451ae:	6078      	str	r0, [r7, #4]
 80451b0:	687b      	ldr	r3, [r7, #4]
 80451b2:	6e5b      	ldr	r3, [r3, #100]	@ 0x64
 80451b4:	2b00      	cmp	r3, #0
 80451b6:	d108      	bne.n	80451ca <UARTEx_SetNbDataToProcess+0x22>
 80451b8:	687b      	ldr	r3, [r7, #4]
 80451ba:	2201      	movs	r2, #1
 80451bc:	f8a3 206a 	strh.w	r2, [r3, #106]	@ 0x6a
 80451c0:	687b      	ldr	r3, [r7, #4]
 80451c2:	2201      	movs	r2, #1
 80451c4:	f8a3 2068 	strh.w	r2, [r3, #104]	@ 0x68
 80451c8:	e031      	b.n	804522e <UARTEx_SetNbDataToProcess+0x86>
 80451ca:	2308      	movs	r3, #8
 80451cc:	73fb      	strb	r3, [r7, #15]
 80451ce:	2308      	movs	r3, #8
 80451d0:	73bb      	strb	r3, [r7, #14]
 80451d2:	687b      	ldr	r3, [r7, #4]
 80451d4:	681b      	ldr	r3, [r3, #0]
 80451d6:	689b      	ldr	r3, [r3, #8]
 80451d8:	0e5b      	lsrs	r3, r3, #25
 80451da:	b2db      	uxtb	r3, r3
 80451dc:	f003 0307 	and.w	r3, r3, #7
 80451e0:	737b      	strb	r3, [r7, #13]
 80451e2:	687b      	ldr	r3, [r7, #4]
 80451e4:	681b      	ldr	r3, [r3, #0]
 80451e6:	689b      	ldr	r3, [r3, #8]
 80451e8:	0f5b      	lsrs	r3, r3, #29
 80451ea:	b2db      	uxtb	r3, r3
 80451ec:	f003 0307 	and.w	r3, r3, #7
 80451f0:	733b      	strb	r3, [r7, #12]
 80451f2:	7bbb      	ldrb	r3, [r7, #14]
 80451f4:	7b3a      	ldrb	r2, [r7, #12]
 80451f6:	4911      	ldr	r1, [pc, #68]	@ (804523c <UARTEx_SetNbDataToProcess+0x94>)
 80451f8:	5c8a      	ldrb	r2, [r1, r2]
 80451fa:	fb02 f303 	mul.w	r3, r2, r3
 80451fe:	7b3a      	ldrb	r2, [r7, #12]
 8045200:	490f      	ldr	r1, [pc, #60]	@ (8045240 <UARTEx_SetNbDataToProcess+0x98>)
 8045202:	5c8a      	ldrb	r2, [r1, r2]
 8045204:	fb93 f3f2 	sdiv	r3, r3, r2
 8045208:	b29a      	uxth	r2, r3
 804520a:	687b      	ldr	r3, [r7, #4]
 804520c:	f8a3 206a 	strh.w	r2, [r3, #106]	@ 0x6a
 8045210:	7bfb      	ldrb	r3, [r7, #15]
 8045212:	7b7a      	ldrb	r2, [r7, #13]
 8045214:	4909      	ldr	r1, [pc, #36]	@ (804523c <UARTEx_SetNbDataToProcess+0x94>)
 8045216:	5c8a      	ldrb	r2, [r1, r2]
 8045218:	fb02 f303 	mul.w	r3, r2, r3
 804521c:	7b7a      	ldrb	r2, [r7, #13]
 804521e:	4908      	ldr	r1, [pc, #32]	@ (8045240 <UARTEx_SetNbDataToProcess+0x98>)
 8045220:	5c8a      	ldrb	r2, [r1, r2]
 8045222:	fb93 f3f2 	sdiv	r3, r3, r2
 8045226:	b29a      	uxth	r2, r3
 8045228:	687b      	ldr	r3, [r7, #4]
 804522a:	f8a3 2068 	strh.w	r2, [r3, #104]	@ 0x68
 804522e:	bf00      	nop
 8045230:	3714      	adds	r7, #20
 8045232:	46bd      	mov	sp, r7
 8045234:	f85d 7b04 	ldr.w	r7, [sp], #4
 8045238:	4770      	bx	lr
 804523a:	bf00      	nop
 804523c:	08046240 	.word	0x08046240
 8045240:	08046248 	.word	0x08046248

08045244 <std>:
 8045244:	2300      	movs	r3, #0
 8045246:	b510      	push	{r4, lr}
 8045248:	4604      	mov	r4, r0
 804524a:	6083      	str	r3, [r0, #8]
 804524c:	8181      	strh	r1, [r0, #12]
 804524e:	4619      	mov	r1, r3
 8045250:	6643      	str	r3, [r0, #100]	@ 0x64
 8045252:	81c2      	strh	r2, [r0, #14]
 8045254:	2208      	movs	r2, #8
 8045256:	6183      	str	r3, [r0, #24]
 8045258:	e9c0 3300 	strd	r3, r3, [r0]
 804525c:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8045260:	305c      	adds	r0, #92	@ 0x5c
 8045262:	f000 f9f9 	bl	8045658 <memset>
 8045266:	4b0d      	ldr	r3, [pc, #52]	@ (804529c <std+0x58>)
 8045268:	6224      	str	r4, [r4, #32]
 804526a:	6263      	str	r3, [r4, #36]	@ 0x24
 804526c:	4b0c      	ldr	r3, [pc, #48]	@ (80452a0 <std+0x5c>)
 804526e:	62a3      	str	r3, [r4, #40]	@ 0x28
 8045270:	4b0c      	ldr	r3, [pc, #48]	@ (80452a4 <std+0x60>)
 8045272:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8045274:	4b0c      	ldr	r3, [pc, #48]	@ (80452a8 <std+0x64>)
 8045276:	6323      	str	r3, [r4, #48]	@ 0x30
 8045278:	4b0c      	ldr	r3, [pc, #48]	@ (80452ac <std+0x68>)
 804527a:	429c      	cmp	r4, r3
 804527c:	d006      	beq.n	804528c <std+0x48>
 804527e:	f103 0268 	add.w	r2, r3, #104	@ 0x68
 8045282:	4294      	cmp	r4, r2
 8045284:	d002      	beq.n	804528c <std+0x48>
 8045286:	33d0      	adds	r3, #208	@ 0xd0
 8045288:	429c      	cmp	r4, r3
 804528a:	d105      	bne.n	8045298 <std+0x54>
 804528c:	f104 0058 	add.w	r0, r4, #88	@ 0x58
 8045290:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8045294:	f000 ba58 	b.w	8045748 <__retarget_lock_init_recursive>
 8045298:	bd10      	pop	{r4, pc}
 804529a:	bf00      	nop
 804529c:	080454a9 	.word	0x080454a9
 80452a0:	080454cb 	.word	0x080454cb
 80452a4:	08045503 	.word	0x08045503
 80452a8:	08045527 	.word	0x08045527
 80452ac:	2001824c 	.word	0x2001824c

080452b0 <stdio_exit_handler>:
 80452b0:	4a02      	ldr	r2, [pc, #8]	@ (80452bc <stdio_exit_handler+0xc>)
 80452b2:	4903      	ldr	r1, [pc, #12]	@ (80452c0 <stdio_exit_handler+0x10>)
 80452b4:	4803      	ldr	r0, [pc, #12]	@ (80452c4 <stdio_exit_handler+0x14>)
 80452b6:	f000 b869 	b.w	804538c <_fwalk_sglue>
 80452ba:	bf00      	nop
 80452bc:	2001802c 	.word	0x2001802c
 80452c0:	08045ff1 	.word	0x08045ff1
 80452c4:	2001803c 	.word	0x2001803c

080452c8 <cleanup_stdio>:
 80452c8:	6841      	ldr	r1, [r0, #4]
 80452ca:	4b0c      	ldr	r3, [pc, #48]	@ (80452fc <cleanup_stdio+0x34>)
 80452cc:	4299      	cmp	r1, r3
 80452ce:	b510      	push	{r4, lr}
 80452d0:	4604      	mov	r4, r0
 80452d2:	d001      	beq.n	80452d8 <cleanup_stdio+0x10>
 80452d4:	f000 fe8c 	bl	8045ff0 <_fflush_r>
 80452d8:	68a1      	ldr	r1, [r4, #8]
 80452da:	4b09      	ldr	r3, [pc, #36]	@ (8045300 <cleanup_stdio+0x38>)
 80452dc:	4299      	cmp	r1, r3
 80452de:	d002      	beq.n	80452e6 <cleanup_stdio+0x1e>
 80452e0:	4620      	mov	r0, r4
 80452e2:	f000 fe85 	bl	8045ff0 <_fflush_r>
 80452e6:	68e1      	ldr	r1, [r4, #12]
 80452e8:	4b06      	ldr	r3, [pc, #24]	@ (8045304 <cleanup_stdio+0x3c>)
 80452ea:	4299      	cmp	r1, r3
 80452ec:	d004      	beq.n	80452f8 <cleanup_stdio+0x30>
 80452ee:	4620      	mov	r0, r4
 80452f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80452f4:	f000 be7c 	b.w	8045ff0 <_fflush_r>
 80452f8:	bd10      	pop	{r4, pc}
 80452fa:	bf00      	nop
 80452fc:	2001824c 	.word	0x2001824c
 8045300:	200182b4 	.word	0x200182b4
 8045304:	2001831c 	.word	0x2001831c

08045308 <global_stdio_init.part.0>:
 8045308:	b510      	push	{r4, lr}
 804530a:	4b0b      	ldr	r3, [pc, #44]	@ (8045338 <global_stdio_init.part.0+0x30>)
 804530c:	2104      	movs	r1, #4
 804530e:	4c0b      	ldr	r4, [pc, #44]	@ (804533c <global_stdio_init.part.0+0x34>)
 8045310:	4a0b      	ldr	r2, [pc, #44]	@ (8045340 <global_stdio_init.part.0+0x38>)
 8045312:	4620      	mov	r0, r4
 8045314:	601a      	str	r2, [r3, #0]
 8045316:	2200      	movs	r2, #0
 8045318:	f7ff ff94 	bl	8045244 <std>
 804531c:	f104 0068 	add.w	r0, r4, #104	@ 0x68
 8045320:	2201      	movs	r2, #1
 8045322:	2109      	movs	r1, #9
 8045324:	f7ff ff8e 	bl	8045244 <std>
 8045328:	f104 00d0 	add.w	r0, r4, #208	@ 0xd0
 804532c:	2202      	movs	r2, #2
 804532e:	2112      	movs	r1, #18
 8045330:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8045334:	f7ff bf86 	b.w	8045244 <std>
 8045338:	20018384 	.word	0x20018384
 804533c:	2001824c 	.word	0x2001824c
 8045340:	080452b1 	.word	0x080452b1

08045344 <__sfp_lock_acquire>:
 8045344:	4801      	ldr	r0, [pc, #4]	@ (804534c <__sfp_lock_acquire+0x8>)
 8045346:	f000 ba00 	b.w	804574a <__retarget_lock_acquire_recursive>
 804534a:	bf00      	nop
 804534c:	2001838d 	.word	0x2001838d

08045350 <__sfp_lock_release>:
 8045350:	4801      	ldr	r0, [pc, #4]	@ (8045358 <__sfp_lock_release+0x8>)
 8045352:	f000 b9fb 	b.w	804574c <__retarget_lock_release_recursive>
 8045356:	bf00      	nop
 8045358:	2001838d 	.word	0x2001838d

0804535c <__sinit>:
 804535c:	b510      	push	{r4, lr}
 804535e:	4604      	mov	r4, r0
 8045360:	f7ff fff0 	bl	8045344 <__sfp_lock_acquire>
 8045364:	6a23      	ldr	r3, [r4, #32]
 8045366:	b11b      	cbz	r3, 8045370 <__sinit+0x14>
 8045368:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 804536c:	f7ff bff0 	b.w	8045350 <__sfp_lock_release>
 8045370:	4b04      	ldr	r3, [pc, #16]	@ (8045384 <__sinit+0x28>)
 8045372:	6223      	str	r3, [r4, #32]
 8045374:	4b04      	ldr	r3, [pc, #16]	@ (8045388 <__sinit+0x2c>)
 8045376:	681b      	ldr	r3, [r3, #0]
 8045378:	2b00      	cmp	r3, #0
 804537a:	d1f5      	bne.n	8045368 <__sinit+0xc>
 804537c:	f7ff ffc4 	bl	8045308 <global_stdio_init.part.0>
 8045380:	e7f2      	b.n	8045368 <__sinit+0xc>
 8045382:	bf00      	nop
 8045384:	080452c9 	.word	0x080452c9
 8045388:	20018384 	.word	0x20018384

0804538c <_fwalk_sglue>:
 804538c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8045390:	4607      	mov	r7, r0
 8045392:	4688      	mov	r8, r1
 8045394:	4614      	mov	r4, r2
 8045396:	2600      	movs	r6, #0
 8045398:	e9d4 9501 	ldrd	r9, r5, [r4, #4]
 804539c:	f1b9 0901 	subs.w	r9, r9, #1
 80453a0:	d505      	bpl.n	80453ae <_fwalk_sglue+0x22>
 80453a2:	6824      	ldr	r4, [r4, #0]
 80453a4:	2c00      	cmp	r4, #0
 80453a6:	d1f7      	bne.n	8045398 <_fwalk_sglue+0xc>
 80453a8:	4630      	mov	r0, r6
 80453aa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80453ae:	89ab      	ldrh	r3, [r5, #12]
 80453b0:	2b01      	cmp	r3, #1
 80453b2:	d907      	bls.n	80453c4 <_fwalk_sglue+0x38>
 80453b4:	f9b5 300e 	ldrsh.w	r3, [r5, #14]
 80453b8:	3301      	adds	r3, #1
 80453ba:	d003      	beq.n	80453c4 <_fwalk_sglue+0x38>
 80453bc:	4629      	mov	r1, r5
 80453be:	4638      	mov	r0, r7
 80453c0:	47c0      	blx	r8
 80453c2:	4306      	orrs	r6, r0
 80453c4:	3568      	adds	r5, #104	@ 0x68
 80453c6:	e7e9      	b.n	804539c <_fwalk_sglue+0x10>

080453c8 <iprintf>:
 80453c8:	b40f      	push	{r0, r1, r2, r3}
 80453ca:	b507      	push	{r0, r1, r2, lr}
 80453cc:	4906      	ldr	r1, [pc, #24]	@ (80453e8 <iprintf+0x20>)
 80453ce:	ab04      	add	r3, sp, #16
 80453d0:	6808      	ldr	r0, [r1, #0]
 80453d2:	f853 2b04 	ldr.w	r2, [r3], #4
 80453d6:	6881      	ldr	r1, [r0, #8]
 80453d8:	9301      	str	r3, [sp, #4]
 80453da:	f000 fadb 	bl	8045994 <_vfiprintf_r>
 80453de:	b003      	add	sp, #12
 80453e0:	f85d eb04 	ldr.w	lr, [sp], #4
 80453e4:	b004      	add	sp, #16
 80453e6:	4770      	bx	lr
 80453e8:	20018038 	.word	0x20018038

080453ec <_puts_r>:
 80453ec:	6a03      	ldr	r3, [r0, #32]
 80453ee:	b570      	push	{r4, r5, r6, lr}
 80453f0:	4605      	mov	r5, r0
 80453f2:	460e      	mov	r6, r1
 80453f4:	6884      	ldr	r4, [r0, #8]
 80453f6:	b90b      	cbnz	r3, 80453fc <_puts_r+0x10>
 80453f8:	f7ff ffb0 	bl	804535c <__sinit>
 80453fc:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 80453fe:	07db      	lsls	r3, r3, #31
 8045400:	d405      	bmi.n	804540e <_puts_r+0x22>
 8045402:	89a3      	ldrh	r3, [r4, #12]
 8045404:	0598      	lsls	r0, r3, #22
 8045406:	d402      	bmi.n	804540e <_puts_r+0x22>
 8045408:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 804540a:	f000 f99e 	bl	804574a <__retarget_lock_acquire_recursive>
 804540e:	89a3      	ldrh	r3, [r4, #12]
 8045410:	0719      	lsls	r1, r3, #28
 8045412:	d502      	bpl.n	804541a <_puts_r+0x2e>
 8045414:	6923      	ldr	r3, [r4, #16]
 8045416:	2b00      	cmp	r3, #0
 8045418:	d135      	bne.n	8045486 <_puts_r+0x9a>
 804541a:	4621      	mov	r1, r4
 804541c:	4628      	mov	r0, r5
 804541e:	f000 f8c5 	bl	80455ac <__swsetup_r>
 8045422:	b380      	cbz	r0, 8045486 <_puts_r+0x9a>
 8045424:	f04f 35ff 	mov.w	r5, #4294967295
 8045428:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 804542a:	07da      	lsls	r2, r3, #31
 804542c:	d405      	bmi.n	804543a <_puts_r+0x4e>
 804542e:	89a3      	ldrh	r3, [r4, #12]
 8045430:	059b      	lsls	r3, r3, #22
 8045432:	d402      	bmi.n	804543a <_puts_r+0x4e>
 8045434:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 8045436:	f000 f989 	bl	804574c <__retarget_lock_release_recursive>
 804543a:	4628      	mov	r0, r5
 804543c:	bd70      	pop	{r4, r5, r6, pc}
 804543e:	2b00      	cmp	r3, #0
 8045440:	da04      	bge.n	804544c <_puts_r+0x60>
 8045442:	69a2      	ldr	r2, [r4, #24]
 8045444:	429a      	cmp	r2, r3
 8045446:	dc17      	bgt.n	8045478 <_puts_r+0x8c>
 8045448:	290a      	cmp	r1, #10
 804544a:	d015      	beq.n	8045478 <_puts_r+0x8c>
 804544c:	6823      	ldr	r3, [r4, #0]
 804544e:	1c5a      	adds	r2, r3, #1
 8045450:	6022      	str	r2, [r4, #0]
 8045452:	7019      	strb	r1, [r3, #0]
 8045454:	68a3      	ldr	r3, [r4, #8]
 8045456:	f816 1f01 	ldrb.w	r1, [r6, #1]!
 804545a:	3b01      	subs	r3, #1
 804545c:	60a3      	str	r3, [r4, #8]
 804545e:	2900      	cmp	r1, #0
 8045460:	d1ed      	bne.n	804543e <_puts_r+0x52>
 8045462:	2b00      	cmp	r3, #0
 8045464:	da11      	bge.n	804548a <_puts_r+0x9e>
 8045466:	4622      	mov	r2, r4
 8045468:	210a      	movs	r1, #10
 804546a:	4628      	mov	r0, r5
 804546c:	f000 f85f 	bl	804552e <__swbuf_r>
 8045470:	3001      	adds	r0, #1
 8045472:	d0d7      	beq.n	8045424 <_puts_r+0x38>
 8045474:	250a      	movs	r5, #10
 8045476:	e7d7      	b.n	8045428 <_puts_r+0x3c>
 8045478:	4622      	mov	r2, r4
 804547a:	4628      	mov	r0, r5
 804547c:	f000 f857 	bl	804552e <__swbuf_r>
 8045480:	3001      	adds	r0, #1
 8045482:	d1e7      	bne.n	8045454 <_puts_r+0x68>
 8045484:	e7ce      	b.n	8045424 <_puts_r+0x38>
 8045486:	3e01      	subs	r6, #1
 8045488:	e7e4      	b.n	8045454 <_puts_r+0x68>
 804548a:	6823      	ldr	r3, [r4, #0]
 804548c:	1c5a      	adds	r2, r3, #1
 804548e:	6022      	str	r2, [r4, #0]
 8045490:	220a      	movs	r2, #10
 8045492:	701a      	strb	r2, [r3, #0]
 8045494:	e7ee      	b.n	8045474 <_puts_r+0x88>
	...

08045498 <puts>:
 8045498:	4b02      	ldr	r3, [pc, #8]	@ (80454a4 <puts+0xc>)
 804549a:	4601      	mov	r1, r0
 804549c:	6818      	ldr	r0, [r3, #0]
 804549e:	f7ff bfa5 	b.w	80453ec <_puts_r>
 80454a2:	bf00      	nop
 80454a4:	20018038 	.word	0x20018038

080454a8 <__sread>:
 80454a8:	b510      	push	{r4, lr}
 80454aa:	460c      	mov	r4, r1
 80454ac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80454b0:	f000 f8fc 	bl	80456ac <_read_r>
 80454b4:	2800      	cmp	r0, #0
 80454b6:	bfab      	itete	ge
 80454b8:	6d63      	ldrge	r3, [r4, #84]	@ 0x54
 80454ba:	89a3      	ldrhlt	r3, [r4, #12]
 80454bc:	181b      	addge	r3, r3, r0
 80454be:	f423 5380 	biclt.w	r3, r3, #4096	@ 0x1000
 80454c2:	bfac      	ite	ge
 80454c4:	6563      	strge	r3, [r4, #84]	@ 0x54
 80454c6:	81a3      	strhlt	r3, [r4, #12]
 80454c8:	bd10      	pop	{r4, pc}

080454ca <__swrite>:
 80454ca:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80454ce:	461f      	mov	r7, r3
 80454d0:	898b      	ldrh	r3, [r1, #12]
 80454d2:	4605      	mov	r5, r0
 80454d4:	460c      	mov	r4, r1
 80454d6:	05db      	lsls	r3, r3, #23
 80454d8:	4616      	mov	r6, r2
 80454da:	d505      	bpl.n	80454e8 <__swrite+0x1e>
 80454dc:	2302      	movs	r3, #2
 80454de:	2200      	movs	r2, #0
 80454e0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80454e4:	f000 f8d0 	bl	8045688 <_lseek_r>
 80454e8:	89a3      	ldrh	r3, [r4, #12]
 80454ea:	4632      	mov	r2, r6
 80454ec:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80454f0:	4628      	mov	r0, r5
 80454f2:	f423 5380 	bic.w	r3, r3, #4096	@ 0x1000
 80454f6:	81a3      	strh	r3, [r4, #12]
 80454f8:	463b      	mov	r3, r7
 80454fa:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80454fe:	f000 b8e7 	b.w	80456d0 <_write_r>

08045502 <__sseek>:
 8045502:	b510      	push	{r4, lr}
 8045504:	460c      	mov	r4, r1
 8045506:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 804550a:	f000 f8bd 	bl	8045688 <_lseek_r>
 804550e:	1c43      	adds	r3, r0, #1
 8045510:	89a3      	ldrh	r3, [r4, #12]
 8045512:	bf15      	itete	ne
 8045514:	6560      	strne	r0, [r4, #84]	@ 0x54
 8045516:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
 804551a:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
 804551e:	81a3      	strheq	r3, [r4, #12]
 8045520:	bf18      	it	ne
 8045522:	81a3      	strhne	r3, [r4, #12]
 8045524:	bd10      	pop	{r4, pc}

08045526 <__sclose>:
 8045526:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 804552a:	f000 b89d 	b.w	8045668 <_close_r>

0804552e <__swbuf_r>:
 804552e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8045530:	460e      	mov	r6, r1
 8045532:	4614      	mov	r4, r2
 8045534:	4605      	mov	r5, r0
 8045536:	b118      	cbz	r0, 8045540 <__swbuf_r+0x12>
 8045538:	6a03      	ldr	r3, [r0, #32]
 804553a:	b90b      	cbnz	r3, 8045540 <__swbuf_r+0x12>
 804553c:	f7ff ff0e 	bl	804535c <__sinit>
 8045540:	69a3      	ldr	r3, [r4, #24]
 8045542:	60a3      	str	r3, [r4, #8]
 8045544:	89a3      	ldrh	r3, [r4, #12]
 8045546:	071a      	lsls	r2, r3, #28
 8045548:	d501      	bpl.n	804554e <__swbuf_r+0x20>
 804554a:	6923      	ldr	r3, [r4, #16]
 804554c:	b943      	cbnz	r3, 8045560 <__swbuf_r+0x32>
 804554e:	4621      	mov	r1, r4
 8045550:	4628      	mov	r0, r5
 8045552:	f000 f82b 	bl	80455ac <__swsetup_r>
 8045556:	b118      	cbz	r0, 8045560 <__swbuf_r+0x32>
 8045558:	f04f 37ff 	mov.w	r7, #4294967295
 804555c:	4638      	mov	r0, r7
 804555e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8045560:	6823      	ldr	r3, [r4, #0]
 8045562:	b2f6      	uxtb	r6, r6
 8045564:	6922      	ldr	r2, [r4, #16]
 8045566:	4637      	mov	r7, r6
 8045568:	1a98      	subs	r0, r3, r2
 804556a:	6963      	ldr	r3, [r4, #20]
 804556c:	4283      	cmp	r3, r0
 804556e:	dc05      	bgt.n	804557c <__swbuf_r+0x4e>
 8045570:	4621      	mov	r1, r4
 8045572:	4628      	mov	r0, r5
 8045574:	f000 fd3c 	bl	8045ff0 <_fflush_r>
 8045578:	2800      	cmp	r0, #0
 804557a:	d1ed      	bne.n	8045558 <__swbuf_r+0x2a>
 804557c:	68a3      	ldr	r3, [r4, #8]
 804557e:	3b01      	subs	r3, #1
 8045580:	60a3      	str	r3, [r4, #8]
 8045582:	6823      	ldr	r3, [r4, #0]
 8045584:	1c5a      	adds	r2, r3, #1
 8045586:	6022      	str	r2, [r4, #0]
 8045588:	701e      	strb	r6, [r3, #0]
 804558a:	1c43      	adds	r3, r0, #1
 804558c:	6962      	ldr	r2, [r4, #20]
 804558e:	429a      	cmp	r2, r3
 8045590:	d004      	beq.n	804559c <__swbuf_r+0x6e>
 8045592:	89a3      	ldrh	r3, [r4, #12]
 8045594:	07db      	lsls	r3, r3, #31
 8045596:	d5e1      	bpl.n	804555c <__swbuf_r+0x2e>
 8045598:	2e0a      	cmp	r6, #10
 804559a:	d1df      	bne.n	804555c <__swbuf_r+0x2e>
 804559c:	4621      	mov	r1, r4
 804559e:	4628      	mov	r0, r5
 80455a0:	f000 fd26 	bl	8045ff0 <_fflush_r>
 80455a4:	2800      	cmp	r0, #0
 80455a6:	d0d9      	beq.n	804555c <__swbuf_r+0x2e>
 80455a8:	e7d6      	b.n	8045558 <__swbuf_r+0x2a>
	...

080455ac <__swsetup_r>:
 80455ac:	b538      	push	{r3, r4, r5, lr}
 80455ae:	4b29      	ldr	r3, [pc, #164]	@ (8045654 <__swsetup_r+0xa8>)
 80455b0:	4605      	mov	r5, r0
 80455b2:	460c      	mov	r4, r1
 80455b4:	6818      	ldr	r0, [r3, #0]
 80455b6:	b118      	cbz	r0, 80455c0 <__swsetup_r+0x14>
 80455b8:	6a03      	ldr	r3, [r0, #32]
 80455ba:	b90b      	cbnz	r3, 80455c0 <__swsetup_r+0x14>
 80455bc:	f7ff fece 	bl	804535c <__sinit>
 80455c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80455c4:	0719      	lsls	r1, r3, #28
 80455c6:	d422      	bmi.n	804560e <__swsetup_r+0x62>
 80455c8:	06da      	lsls	r2, r3, #27
 80455ca:	d407      	bmi.n	80455dc <__swsetup_r+0x30>
 80455cc:	2209      	movs	r2, #9
 80455ce:	602a      	str	r2, [r5, #0]
 80455d0:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 80455d4:	f04f 30ff 	mov.w	r0, #4294967295
 80455d8:	81a3      	strh	r3, [r4, #12]
 80455da:	e033      	b.n	8045644 <__swsetup_r+0x98>
 80455dc:	0758      	lsls	r0, r3, #29
 80455de:	d512      	bpl.n	8045606 <__swsetup_r+0x5a>
 80455e0:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 80455e2:	b141      	cbz	r1, 80455f6 <__swsetup_r+0x4a>
 80455e4:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 80455e8:	4299      	cmp	r1, r3
 80455ea:	d002      	beq.n	80455f2 <__swsetup_r+0x46>
 80455ec:	4628      	mov	r0, r5
 80455ee:	f000 f8af 	bl	8045750 <_free_r>
 80455f2:	2300      	movs	r3, #0
 80455f4:	6363      	str	r3, [r4, #52]	@ 0x34
 80455f6:	89a3      	ldrh	r3, [r4, #12]
 80455f8:	f023 0324 	bic.w	r3, r3, #36	@ 0x24
 80455fc:	81a3      	strh	r3, [r4, #12]
 80455fe:	2300      	movs	r3, #0
 8045600:	6063      	str	r3, [r4, #4]
 8045602:	6923      	ldr	r3, [r4, #16]
 8045604:	6023      	str	r3, [r4, #0]
 8045606:	89a3      	ldrh	r3, [r4, #12]
 8045608:	f043 0308 	orr.w	r3, r3, #8
 804560c:	81a3      	strh	r3, [r4, #12]
 804560e:	6923      	ldr	r3, [r4, #16]
 8045610:	b94b      	cbnz	r3, 8045626 <__swsetup_r+0x7a>
 8045612:	89a3      	ldrh	r3, [r4, #12]
 8045614:	f403 7320 	and.w	r3, r3, #640	@ 0x280
 8045618:	f5b3 7f00 	cmp.w	r3, #512	@ 0x200
 804561c:	d003      	beq.n	8045626 <__swsetup_r+0x7a>
 804561e:	4621      	mov	r1, r4
 8045620:	4628      	mov	r0, r5
 8045622:	f000 fd32 	bl	804608a <__smakebuf_r>
 8045626:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 804562a:	f013 0201 	ands.w	r2, r3, #1
 804562e:	d00a      	beq.n	8045646 <__swsetup_r+0x9a>
 8045630:	2200      	movs	r2, #0
 8045632:	60a2      	str	r2, [r4, #8]
 8045634:	6962      	ldr	r2, [r4, #20]
 8045636:	4252      	negs	r2, r2
 8045638:	61a2      	str	r2, [r4, #24]
 804563a:	6922      	ldr	r2, [r4, #16]
 804563c:	b942      	cbnz	r2, 8045650 <__swsetup_r+0xa4>
 804563e:	f013 0080 	ands.w	r0, r3, #128	@ 0x80
 8045642:	d1c5      	bne.n	80455d0 <__swsetup_r+0x24>
 8045644:	bd38      	pop	{r3, r4, r5, pc}
 8045646:	0799      	lsls	r1, r3, #30
 8045648:	bf58      	it	pl
 804564a:	6962      	ldrpl	r2, [r4, #20]
 804564c:	60a2      	str	r2, [r4, #8]
 804564e:	e7f4      	b.n	804563a <__swsetup_r+0x8e>
 8045650:	2000      	movs	r0, #0
 8045652:	e7f7      	b.n	8045644 <__swsetup_r+0x98>
 8045654:	20018038 	.word	0x20018038

08045658 <memset>:
 8045658:	4402      	add	r2, r0
 804565a:	4603      	mov	r3, r0
 804565c:	4293      	cmp	r3, r2
 804565e:	d100      	bne.n	8045662 <memset+0xa>
 8045660:	4770      	bx	lr
 8045662:	f803 1b01 	strb.w	r1, [r3], #1
 8045666:	e7f9      	b.n	804565c <memset+0x4>

08045668 <_close_r>:
 8045668:	b538      	push	{r3, r4, r5, lr}
 804566a:	2300      	movs	r3, #0
 804566c:	4d05      	ldr	r5, [pc, #20]	@ (8045684 <_close_r+0x1c>)
 804566e:	4604      	mov	r4, r0
 8045670:	4608      	mov	r0, r1
 8045672:	602b      	str	r3, [r5, #0]
 8045674:	f7fb fc99 	bl	8040faa <_close>
 8045678:	1c43      	adds	r3, r0, #1
 804567a:	d102      	bne.n	8045682 <_close_r+0x1a>
 804567c:	682b      	ldr	r3, [r5, #0]
 804567e:	b103      	cbz	r3, 8045682 <_close_r+0x1a>
 8045680:	6023      	str	r3, [r4, #0]
 8045682:	bd38      	pop	{r3, r4, r5, pc}
 8045684:	20018388 	.word	0x20018388

08045688 <_lseek_r>:
 8045688:	b538      	push	{r3, r4, r5, lr}
 804568a:	4604      	mov	r4, r0
 804568c:	4d06      	ldr	r5, [pc, #24]	@ (80456a8 <_lseek_r+0x20>)
 804568e:	4608      	mov	r0, r1
 8045690:	4611      	mov	r1, r2
 8045692:	2200      	movs	r2, #0
 8045694:	602a      	str	r2, [r5, #0]
 8045696:	461a      	mov	r2, r3
 8045698:	f7fb fcae 	bl	8040ff8 <_lseek>
 804569c:	1c43      	adds	r3, r0, #1
 804569e:	d102      	bne.n	80456a6 <_lseek_r+0x1e>
 80456a0:	682b      	ldr	r3, [r5, #0]
 80456a2:	b103      	cbz	r3, 80456a6 <_lseek_r+0x1e>
 80456a4:	6023      	str	r3, [r4, #0]
 80456a6:	bd38      	pop	{r3, r4, r5, pc}
 80456a8:	20018388 	.word	0x20018388

080456ac <_read_r>:
 80456ac:	b538      	push	{r3, r4, r5, lr}
 80456ae:	4604      	mov	r4, r0
 80456b0:	4d06      	ldr	r5, [pc, #24]	@ (80456cc <_read_r+0x20>)
 80456b2:	4608      	mov	r0, r1
 80456b4:	4611      	mov	r1, r2
 80456b6:	2200      	movs	r2, #0
 80456b8:	602a      	str	r2, [r5, #0]
 80456ba:	461a      	mov	r2, r3
 80456bc:	f7fb fc3c 	bl	8040f38 <_read>
 80456c0:	1c43      	adds	r3, r0, #1
 80456c2:	d102      	bne.n	80456ca <_read_r+0x1e>
 80456c4:	682b      	ldr	r3, [r5, #0]
 80456c6:	b103      	cbz	r3, 80456ca <_read_r+0x1e>
 80456c8:	6023      	str	r3, [r4, #0]
 80456ca:	bd38      	pop	{r3, r4, r5, pc}
 80456cc:	20018388 	.word	0x20018388

080456d0 <_write_r>:
 80456d0:	b538      	push	{r3, r4, r5, lr}
 80456d2:	4604      	mov	r4, r0
 80456d4:	4d06      	ldr	r5, [pc, #24]	@ (80456f0 <_write_r+0x20>)
 80456d6:	4608      	mov	r0, r1
 80456d8:	4611      	mov	r1, r2
 80456da:	2200      	movs	r2, #0
 80456dc:	602a      	str	r2, [r5, #0]
 80456de:	461a      	mov	r2, r3
 80456e0:	f7fb fc47 	bl	8040f72 <_write>
 80456e4:	1c43      	adds	r3, r0, #1
 80456e6:	d102      	bne.n	80456ee <_write_r+0x1e>
 80456e8:	682b      	ldr	r3, [r5, #0]
 80456ea:	b103      	cbz	r3, 80456ee <_write_r+0x1e>
 80456ec:	6023      	str	r3, [r4, #0]
 80456ee:	bd38      	pop	{r3, r4, r5, pc}
 80456f0:	20018388 	.word	0x20018388

080456f4 <__errno>:
 80456f4:	4b01      	ldr	r3, [pc, #4]	@ (80456fc <__errno+0x8>)
 80456f6:	6818      	ldr	r0, [r3, #0]
 80456f8:	4770      	bx	lr
 80456fa:	bf00      	nop
 80456fc:	20018038 	.word	0x20018038

08045700 <__libc_init_array>:
 8045700:	b570      	push	{r4, r5, r6, lr}
 8045702:	4d0d      	ldr	r5, [pc, #52]	@ (8045738 <__libc_init_array+0x38>)
 8045704:	2600      	movs	r6, #0
 8045706:	4c0d      	ldr	r4, [pc, #52]	@ (804573c <__libc_init_array+0x3c>)
 8045708:	1b64      	subs	r4, r4, r5
 804570a:	10a4      	asrs	r4, r4, #2
 804570c:	42a6      	cmp	r6, r4
 804570e:	d109      	bne.n	8045724 <__libc_init_array+0x24>
 8045710:	4d0b      	ldr	r5, [pc, #44]	@ (8045740 <__libc_init_array+0x40>)
 8045712:	2600      	movs	r6, #0
 8045714:	4c0b      	ldr	r4, [pc, #44]	@ (8045744 <__libc_init_array+0x44>)
 8045716:	f000 fd35 	bl	8046184 <_init>
 804571a:	1b64      	subs	r4, r4, r5
 804571c:	10a4      	asrs	r4, r4, #2
 804571e:	42a6      	cmp	r6, r4
 8045720:	d105      	bne.n	804572e <__libc_init_array+0x2e>
 8045722:	bd70      	pop	{r4, r5, r6, pc}
 8045724:	f855 3b04 	ldr.w	r3, [r5], #4
 8045728:	3601      	adds	r6, #1
 804572a:	4798      	blx	r3
 804572c:	e7ee      	b.n	804570c <__libc_init_array+0xc>
 804572e:	f855 3b04 	ldr.w	r3, [r5], #4
 8045732:	3601      	adds	r6, #1
 8045734:	4798      	blx	r3
 8045736:	e7f2      	b.n	804571e <__libc_init_array+0x1e>
 8045738:	0804628c 	.word	0x0804628c
 804573c:	0804628c 	.word	0x0804628c
 8045740:	0804628c 	.word	0x0804628c
 8045744:	08046290 	.word	0x08046290

08045748 <__retarget_lock_init_recursive>:
 8045748:	4770      	bx	lr

0804574a <__retarget_lock_acquire_recursive>:
 804574a:	4770      	bx	lr

0804574c <__retarget_lock_release_recursive>:
 804574c:	4770      	bx	lr
	...

08045750 <_free_r>:
 8045750:	b538      	push	{r3, r4, r5, lr}
 8045752:	4605      	mov	r5, r0
 8045754:	2900      	cmp	r1, #0
 8045756:	d041      	beq.n	80457dc <_free_r+0x8c>
 8045758:	f851 3c04 	ldr.w	r3, [r1, #-4]
 804575c:	1f0c      	subs	r4, r1, #4
 804575e:	2b00      	cmp	r3, #0
 8045760:	bfb8      	it	lt
 8045762:	18e4      	addlt	r4, r4, r3
 8045764:	f000 f8e0 	bl	8045928 <__malloc_lock>
 8045768:	4a1d      	ldr	r2, [pc, #116]	@ (80457e0 <_free_r+0x90>)
 804576a:	6813      	ldr	r3, [r2, #0]
 804576c:	b933      	cbnz	r3, 804577c <_free_r+0x2c>
 804576e:	6063      	str	r3, [r4, #4]
 8045770:	6014      	str	r4, [r2, #0]
 8045772:	4628      	mov	r0, r5
 8045774:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8045778:	f000 b8dc 	b.w	8045934 <__malloc_unlock>
 804577c:	42a3      	cmp	r3, r4
 804577e:	d908      	bls.n	8045792 <_free_r+0x42>
 8045780:	6820      	ldr	r0, [r4, #0]
 8045782:	1821      	adds	r1, r4, r0
 8045784:	428b      	cmp	r3, r1
 8045786:	bf01      	itttt	eq
 8045788:	6819      	ldreq	r1, [r3, #0]
 804578a:	685b      	ldreq	r3, [r3, #4]
 804578c:	1809      	addeq	r1, r1, r0
 804578e:	6021      	streq	r1, [r4, #0]
 8045790:	e7ed      	b.n	804576e <_free_r+0x1e>
 8045792:	461a      	mov	r2, r3
 8045794:	685b      	ldr	r3, [r3, #4]
 8045796:	b10b      	cbz	r3, 804579c <_free_r+0x4c>
 8045798:	42a3      	cmp	r3, r4
 804579a:	d9fa      	bls.n	8045792 <_free_r+0x42>
 804579c:	6811      	ldr	r1, [r2, #0]
 804579e:	1850      	adds	r0, r2, r1
 80457a0:	42a0      	cmp	r0, r4
 80457a2:	d10b      	bne.n	80457bc <_free_r+0x6c>
 80457a4:	6820      	ldr	r0, [r4, #0]
 80457a6:	4401      	add	r1, r0
 80457a8:	1850      	adds	r0, r2, r1
 80457aa:	6011      	str	r1, [r2, #0]
 80457ac:	4283      	cmp	r3, r0
 80457ae:	d1e0      	bne.n	8045772 <_free_r+0x22>
 80457b0:	6818      	ldr	r0, [r3, #0]
 80457b2:	685b      	ldr	r3, [r3, #4]
 80457b4:	4408      	add	r0, r1
 80457b6:	6053      	str	r3, [r2, #4]
 80457b8:	6010      	str	r0, [r2, #0]
 80457ba:	e7da      	b.n	8045772 <_free_r+0x22>
 80457bc:	d902      	bls.n	80457c4 <_free_r+0x74>
 80457be:	230c      	movs	r3, #12
 80457c0:	602b      	str	r3, [r5, #0]
 80457c2:	e7d6      	b.n	8045772 <_free_r+0x22>
 80457c4:	6820      	ldr	r0, [r4, #0]
 80457c6:	1821      	adds	r1, r4, r0
 80457c8:	428b      	cmp	r3, r1
 80457ca:	bf02      	ittt	eq
 80457cc:	6819      	ldreq	r1, [r3, #0]
 80457ce:	685b      	ldreq	r3, [r3, #4]
 80457d0:	1809      	addeq	r1, r1, r0
 80457d2:	6063      	str	r3, [r4, #4]
 80457d4:	bf08      	it	eq
 80457d6:	6021      	streq	r1, [r4, #0]
 80457d8:	6054      	str	r4, [r2, #4]
 80457da:	e7ca      	b.n	8045772 <_free_r+0x22>
 80457dc:	bd38      	pop	{r3, r4, r5, pc}
 80457de:	bf00      	nop
 80457e0:	20018394 	.word	0x20018394

080457e4 <sbrk_aligned>:
 80457e4:	b570      	push	{r4, r5, r6, lr}
 80457e6:	4e0f      	ldr	r6, [pc, #60]	@ (8045824 <sbrk_aligned+0x40>)
 80457e8:	460c      	mov	r4, r1
 80457ea:	4605      	mov	r5, r0
 80457ec:	6831      	ldr	r1, [r6, #0]
 80457ee:	b911      	cbnz	r1, 80457f6 <sbrk_aligned+0x12>
 80457f0:	f000 fcaa 	bl	8046148 <_sbrk_r>
 80457f4:	6030      	str	r0, [r6, #0]
 80457f6:	4621      	mov	r1, r4
 80457f8:	4628      	mov	r0, r5
 80457fa:	f000 fca5 	bl	8046148 <_sbrk_r>
 80457fe:	1c43      	adds	r3, r0, #1
 8045800:	d103      	bne.n	804580a <sbrk_aligned+0x26>
 8045802:	f04f 34ff 	mov.w	r4, #4294967295
 8045806:	4620      	mov	r0, r4
 8045808:	bd70      	pop	{r4, r5, r6, pc}
 804580a:	1cc4      	adds	r4, r0, #3
 804580c:	f024 0403 	bic.w	r4, r4, #3
 8045810:	42a0      	cmp	r0, r4
 8045812:	d0f8      	beq.n	8045806 <sbrk_aligned+0x22>
 8045814:	1a21      	subs	r1, r4, r0
 8045816:	4628      	mov	r0, r5
 8045818:	f000 fc96 	bl	8046148 <_sbrk_r>
 804581c:	3001      	adds	r0, #1
 804581e:	d1f2      	bne.n	8045806 <sbrk_aligned+0x22>
 8045820:	e7ef      	b.n	8045802 <sbrk_aligned+0x1e>
 8045822:	bf00      	nop
 8045824:	20018390 	.word	0x20018390

08045828 <_malloc_r>:
 8045828:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 804582c:	1ccd      	adds	r5, r1, #3
 804582e:	4606      	mov	r6, r0
 8045830:	f025 0503 	bic.w	r5, r5, #3
 8045834:	3508      	adds	r5, #8
 8045836:	2d0c      	cmp	r5, #12
 8045838:	bf38      	it	cc
 804583a:	250c      	movcc	r5, #12
 804583c:	2d00      	cmp	r5, #0
 804583e:	db01      	blt.n	8045844 <_malloc_r+0x1c>
 8045840:	42a9      	cmp	r1, r5
 8045842:	d904      	bls.n	804584e <_malloc_r+0x26>
 8045844:	230c      	movs	r3, #12
 8045846:	6033      	str	r3, [r6, #0]
 8045848:	2000      	movs	r0, #0
 804584a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 804584e:	f8df 80d4 	ldr.w	r8, [pc, #212]	@ 8045924 <_malloc_r+0xfc>
 8045852:	f000 f869 	bl	8045928 <__malloc_lock>
 8045856:	f8d8 3000 	ldr.w	r3, [r8]
 804585a:	461c      	mov	r4, r3
 804585c:	bb44      	cbnz	r4, 80458b0 <_malloc_r+0x88>
 804585e:	4629      	mov	r1, r5
 8045860:	4630      	mov	r0, r6
 8045862:	f7ff ffbf 	bl	80457e4 <sbrk_aligned>
 8045866:	1c43      	adds	r3, r0, #1
 8045868:	4604      	mov	r4, r0
 804586a:	d158      	bne.n	804591e <_malloc_r+0xf6>
 804586c:	f8d8 4000 	ldr.w	r4, [r8]
 8045870:	4627      	mov	r7, r4
 8045872:	2f00      	cmp	r7, #0
 8045874:	d143      	bne.n	80458fe <_malloc_r+0xd6>
 8045876:	2c00      	cmp	r4, #0
 8045878:	d04b      	beq.n	8045912 <_malloc_r+0xea>
 804587a:	6823      	ldr	r3, [r4, #0]
 804587c:	4639      	mov	r1, r7
 804587e:	4630      	mov	r0, r6
 8045880:	eb04 0903 	add.w	r9, r4, r3
 8045884:	f000 fc60 	bl	8046148 <_sbrk_r>
 8045888:	4581      	cmp	r9, r0
 804588a:	d142      	bne.n	8045912 <_malloc_r+0xea>
 804588c:	6821      	ldr	r1, [r4, #0]
 804588e:	4630      	mov	r0, r6
 8045890:	1a6d      	subs	r5, r5, r1
 8045892:	4629      	mov	r1, r5
 8045894:	f7ff ffa6 	bl	80457e4 <sbrk_aligned>
 8045898:	3001      	adds	r0, #1
 804589a:	d03a      	beq.n	8045912 <_malloc_r+0xea>
 804589c:	6823      	ldr	r3, [r4, #0]
 804589e:	442b      	add	r3, r5
 80458a0:	6023      	str	r3, [r4, #0]
 80458a2:	f8d8 3000 	ldr.w	r3, [r8]
 80458a6:	685a      	ldr	r2, [r3, #4]
 80458a8:	bb62      	cbnz	r2, 8045904 <_malloc_r+0xdc>
 80458aa:	f8c8 7000 	str.w	r7, [r8]
 80458ae:	e00f      	b.n	80458d0 <_malloc_r+0xa8>
 80458b0:	6822      	ldr	r2, [r4, #0]
 80458b2:	1b52      	subs	r2, r2, r5
 80458b4:	d420      	bmi.n	80458f8 <_malloc_r+0xd0>
 80458b6:	2a0b      	cmp	r2, #11
 80458b8:	d917      	bls.n	80458ea <_malloc_r+0xc2>
 80458ba:	1961      	adds	r1, r4, r5
 80458bc:	42a3      	cmp	r3, r4
 80458be:	6025      	str	r5, [r4, #0]
 80458c0:	bf18      	it	ne
 80458c2:	6059      	strne	r1, [r3, #4]
 80458c4:	6863      	ldr	r3, [r4, #4]
 80458c6:	bf08      	it	eq
 80458c8:	f8c8 1000 	streq.w	r1, [r8]
 80458cc:	5162      	str	r2, [r4, r5]
 80458ce:	604b      	str	r3, [r1, #4]
 80458d0:	4630      	mov	r0, r6
 80458d2:	f000 f82f 	bl	8045934 <__malloc_unlock>
 80458d6:	f104 000b 	add.w	r0, r4, #11
 80458da:	1d23      	adds	r3, r4, #4
 80458dc:	f020 0007 	bic.w	r0, r0, #7
 80458e0:	1ac2      	subs	r2, r0, r3
 80458e2:	bf1c      	itt	ne
 80458e4:	1a1b      	subne	r3, r3, r0
 80458e6:	50a3      	strne	r3, [r4, r2]
 80458e8:	e7af      	b.n	804584a <_malloc_r+0x22>
 80458ea:	6862      	ldr	r2, [r4, #4]
 80458ec:	42a3      	cmp	r3, r4
 80458ee:	bf0c      	ite	eq
 80458f0:	f8c8 2000 	streq.w	r2, [r8]
 80458f4:	605a      	strne	r2, [r3, #4]
 80458f6:	e7eb      	b.n	80458d0 <_malloc_r+0xa8>
 80458f8:	4623      	mov	r3, r4
 80458fa:	6864      	ldr	r4, [r4, #4]
 80458fc:	e7ae      	b.n	804585c <_malloc_r+0x34>
 80458fe:	463c      	mov	r4, r7
 8045900:	687f      	ldr	r7, [r7, #4]
 8045902:	e7b6      	b.n	8045872 <_malloc_r+0x4a>
 8045904:	461a      	mov	r2, r3
 8045906:	685b      	ldr	r3, [r3, #4]
 8045908:	42a3      	cmp	r3, r4
 804590a:	d1fb      	bne.n	8045904 <_malloc_r+0xdc>
 804590c:	2300      	movs	r3, #0
 804590e:	6053      	str	r3, [r2, #4]
 8045910:	e7de      	b.n	80458d0 <_malloc_r+0xa8>
 8045912:	230c      	movs	r3, #12
 8045914:	4630      	mov	r0, r6
 8045916:	6033      	str	r3, [r6, #0]
 8045918:	f000 f80c 	bl	8045934 <__malloc_unlock>
 804591c:	e794      	b.n	8045848 <_malloc_r+0x20>
 804591e:	6005      	str	r5, [r0, #0]
 8045920:	e7d6      	b.n	80458d0 <_malloc_r+0xa8>
 8045922:	bf00      	nop
 8045924:	20018394 	.word	0x20018394

08045928 <__malloc_lock>:
 8045928:	4801      	ldr	r0, [pc, #4]	@ (8045930 <__malloc_lock+0x8>)
 804592a:	f7ff bf0e 	b.w	804574a <__retarget_lock_acquire_recursive>
 804592e:	bf00      	nop
 8045930:	2001838c 	.word	0x2001838c

08045934 <__malloc_unlock>:
 8045934:	4801      	ldr	r0, [pc, #4]	@ (804593c <__malloc_unlock+0x8>)
 8045936:	f7ff bf09 	b.w	804574c <__retarget_lock_release_recursive>
 804593a:	bf00      	nop
 804593c:	2001838c 	.word	0x2001838c

08045940 <__sfputc_r>:
 8045940:	6893      	ldr	r3, [r2, #8]
 8045942:	3b01      	subs	r3, #1
 8045944:	2b00      	cmp	r3, #0
 8045946:	6093      	str	r3, [r2, #8]
 8045948:	b410      	push	{r4}
 804594a:	da08      	bge.n	804595e <__sfputc_r+0x1e>
 804594c:	6994      	ldr	r4, [r2, #24]
 804594e:	42a3      	cmp	r3, r4
 8045950:	db01      	blt.n	8045956 <__sfputc_r+0x16>
 8045952:	290a      	cmp	r1, #10
 8045954:	d103      	bne.n	804595e <__sfputc_r+0x1e>
 8045956:	f85d 4b04 	ldr.w	r4, [sp], #4
 804595a:	f7ff bde8 	b.w	804552e <__swbuf_r>
 804595e:	6813      	ldr	r3, [r2, #0]
 8045960:	1c58      	adds	r0, r3, #1
 8045962:	6010      	str	r0, [r2, #0]
 8045964:	4608      	mov	r0, r1
 8045966:	7019      	strb	r1, [r3, #0]
 8045968:	f85d 4b04 	ldr.w	r4, [sp], #4
 804596c:	4770      	bx	lr

0804596e <__sfputs_r>:
 804596e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8045970:	4606      	mov	r6, r0
 8045972:	460f      	mov	r7, r1
 8045974:	4614      	mov	r4, r2
 8045976:	18d5      	adds	r5, r2, r3
 8045978:	42ac      	cmp	r4, r5
 804597a:	d101      	bne.n	8045980 <__sfputs_r+0x12>
 804597c:	2000      	movs	r0, #0
 804597e:	e007      	b.n	8045990 <__sfputs_r+0x22>
 8045980:	463a      	mov	r2, r7
 8045982:	f814 1b01 	ldrb.w	r1, [r4], #1
 8045986:	4630      	mov	r0, r6
 8045988:	f7ff ffda 	bl	8045940 <__sfputc_r>
 804598c:	1c43      	adds	r3, r0, #1
 804598e:	d1f3      	bne.n	8045978 <__sfputs_r+0xa>
 8045990:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
	...

08045994 <_vfiprintf_r>:
 8045994:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8045998:	460d      	mov	r5, r1
 804599a:	b09d      	sub	sp, #116	@ 0x74
 804599c:	4614      	mov	r4, r2
 804599e:	4698      	mov	r8, r3
 80459a0:	4606      	mov	r6, r0
 80459a2:	b118      	cbz	r0, 80459ac <_vfiprintf_r+0x18>
 80459a4:	6a03      	ldr	r3, [r0, #32]
 80459a6:	b90b      	cbnz	r3, 80459ac <_vfiprintf_r+0x18>
 80459a8:	f7ff fcd8 	bl	804535c <__sinit>
 80459ac:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 80459ae:	07d9      	lsls	r1, r3, #31
 80459b0:	d405      	bmi.n	80459be <_vfiprintf_r+0x2a>
 80459b2:	89ab      	ldrh	r3, [r5, #12]
 80459b4:	059a      	lsls	r2, r3, #22
 80459b6:	d402      	bmi.n	80459be <_vfiprintf_r+0x2a>
 80459b8:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 80459ba:	f7ff fec6 	bl	804574a <__retarget_lock_acquire_recursive>
 80459be:	89ab      	ldrh	r3, [r5, #12]
 80459c0:	071b      	lsls	r3, r3, #28
 80459c2:	d501      	bpl.n	80459c8 <_vfiprintf_r+0x34>
 80459c4:	692b      	ldr	r3, [r5, #16]
 80459c6:	b99b      	cbnz	r3, 80459f0 <_vfiprintf_r+0x5c>
 80459c8:	4629      	mov	r1, r5
 80459ca:	4630      	mov	r0, r6
 80459cc:	f7ff fdee 	bl	80455ac <__swsetup_r>
 80459d0:	b170      	cbz	r0, 80459f0 <_vfiprintf_r+0x5c>
 80459d2:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 80459d4:	07dc      	lsls	r4, r3, #31
 80459d6:	d504      	bpl.n	80459e2 <_vfiprintf_r+0x4e>
 80459d8:	f04f 30ff 	mov.w	r0, #4294967295
 80459dc:	b01d      	add	sp, #116	@ 0x74
 80459de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80459e2:	89ab      	ldrh	r3, [r5, #12]
 80459e4:	0598      	lsls	r0, r3, #22
 80459e6:	d4f7      	bmi.n	80459d8 <_vfiprintf_r+0x44>
 80459e8:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 80459ea:	f7ff feaf 	bl	804574c <__retarget_lock_release_recursive>
 80459ee:	e7f3      	b.n	80459d8 <_vfiprintf_r+0x44>
 80459f0:	2300      	movs	r3, #0
 80459f2:	f8cd 800c 	str.w	r8, [sp, #12]
 80459f6:	f04f 0901 	mov.w	r9, #1
 80459fa:	f8df 81b4 	ldr.w	r8, [pc, #436]	@ 8045bb0 <_vfiprintf_r+0x21c>
 80459fe:	9309      	str	r3, [sp, #36]	@ 0x24
 8045a00:	2320      	movs	r3, #32
 8045a02:	f88d 3029 	strb.w	r3, [sp, #41]	@ 0x29
 8045a06:	2330      	movs	r3, #48	@ 0x30
 8045a08:	f88d 302a 	strb.w	r3, [sp, #42]	@ 0x2a
 8045a0c:	4623      	mov	r3, r4
 8045a0e:	469a      	mov	sl, r3
 8045a10:	f813 2b01 	ldrb.w	r2, [r3], #1
 8045a14:	b10a      	cbz	r2, 8045a1a <_vfiprintf_r+0x86>
 8045a16:	2a25      	cmp	r2, #37	@ 0x25
 8045a18:	d1f9      	bne.n	8045a0e <_vfiprintf_r+0x7a>
 8045a1a:	ebba 0b04 	subs.w	fp, sl, r4
 8045a1e:	d00b      	beq.n	8045a38 <_vfiprintf_r+0xa4>
 8045a20:	465b      	mov	r3, fp
 8045a22:	4622      	mov	r2, r4
 8045a24:	4629      	mov	r1, r5
 8045a26:	4630      	mov	r0, r6
 8045a28:	f7ff ffa1 	bl	804596e <__sfputs_r>
 8045a2c:	3001      	adds	r0, #1
 8045a2e:	f000 80a7 	beq.w	8045b80 <_vfiprintf_r+0x1ec>
 8045a32:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 8045a34:	445a      	add	r2, fp
 8045a36:	9209      	str	r2, [sp, #36]	@ 0x24
 8045a38:	f89a 3000 	ldrb.w	r3, [sl]
 8045a3c:	2b00      	cmp	r3, #0
 8045a3e:	f000 809f 	beq.w	8045b80 <_vfiprintf_r+0x1ec>
 8045a42:	2300      	movs	r3, #0
 8045a44:	f04f 32ff 	mov.w	r2, #4294967295
 8045a48:	f10a 0a01 	add.w	sl, sl, #1
 8045a4c:	9304      	str	r3, [sp, #16]
 8045a4e:	9307      	str	r3, [sp, #28]
 8045a50:	f88d 3053 	strb.w	r3, [sp, #83]	@ 0x53
 8045a54:	931a      	str	r3, [sp, #104]	@ 0x68
 8045a56:	e9cd 2305 	strd	r2, r3, [sp, #20]
 8045a5a:	4654      	mov	r4, sl
 8045a5c:	2205      	movs	r2, #5
 8045a5e:	4854      	ldr	r0, [pc, #336]	@ (8045bb0 <_vfiprintf_r+0x21c>)
 8045a60:	f814 1b01 	ldrb.w	r1, [r4], #1
 8045a64:	f000 fb80 	bl	8046168 <memchr>
 8045a68:	9a04      	ldr	r2, [sp, #16]
 8045a6a:	b9d8      	cbnz	r0, 8045aa4 <_vfiprintf_r+0x110>
 8045a6c:	06d1      	lsls	r1, r2, #27
 8045a6e:	bf44      	itt	mi
 8045a70:	2320      	movmi	r3, #32
 8045a72:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 8045a76:	0713      	lsls	r3, r2, #28
 8045a78:	bf44      	itt	mi
 8045a7a:	232b      	movmi	r3, #43	@ 0x2b
 8045a7c:	f88d 3053 	strbmi.w	r3, [sp, #83]	@ 0x53
 8045a80:	f89a 3000 	ldrb.w	r3, [sl]
 8045a84:	2b2a      	cmp	r3, #42	@ 0x2a
 8045a86:	d015      	beq.n	8045ab4 <_vfiprintf_r+0x120>
 8045a88:	9a07      	ldr	r2, [sp, #28]
 8045a8a:	4654      	mov	r4, sl
 8045a8c:	2000      	movs	r0, #0
 8045a8e:	f04f 0c0a 	mov.w	ip, #10
 8045a92:	4621      	mov	r1, r4
 8045a94:	f811 3b01 	ldrb.w	r3, [r1], #1
 8045a98:	3b30      	subs	r3, #48	@ 0x30
 8045a9a:	2b09      	cmp	r3, #9
 8045a9c:	d94b      	bls.n	8045b36 <_vfiprintf_r+0x1a2>
 8045a9e:	b1b0      	cbz	r0, 8045ace <_vfiprintf_r+0x13a>
 8045aa0:	9207      	str	r2, [sp, #28]
 8045aa2:	e014      	b.n	8045ace <_vfiprintf_r+0x13a>
 8045aa4:	eba0 0308 	sub.w	r3, r0, r8
 8045aa8:	46a2      	mov	sl, r4
 8045aaa:	fa09 f303 	lsl.w	r3, r9, r3
 8045aae:	4313      	orrs	r3, r2
 8045ab0:	9304      	str	r3, [sp, #16]
 8045ab2:	e7d2      	b.n	8045a5a <_vfiprintf_r+0xc6>
 8045ab4:	9b03      	ldr	r3, [sp, #12]
 8045ab6:	1d19      	adds	r1, r3, #4
 8045ab8:	681b      	ldr	r3, [r3, #0]
 8045aba:	2b00      	cmp	r3, #0
 8045abc:	9103      	str	r1, [sp, #12]
 8045abe:	bfbb      	ittet	lt
 8045ac0:	425b      	neglt	r3, r3
 8045ac2:	f042 0202 	orrlt.w	r2, r2, #2
 8045ac6:	9307      	strge	r3, [sp, #28]
 8045ac8:	9307      	strlt	r3, [sp, #28]
 8045aca:	bfb8      	it	lt
 8045acc:	9204      	strlt	r2, [sp, #16]
 8045ace:	7823      	ldrb	r3, [r4, #0]
 8045ad0:	2b2e      	cmp	r3, #46	@ 0x2e
 8045ad2:	d10a      	bne.n	8045aea <_vfiprintf_r+0x156>
 8045ad4:	7863      	ldrb	r3, [r4, #1]
 8045ad6:	2b2a      	cmp	r3, #42	@ 0x2a
 8045ad8:	d132      	bne.n	8045b40 <_vfiprintf_r+0x1ac>
 8045ada:	9b03      	ldr	r3, [sp, #12]
 8045adc:	3402      	adds	r4, #2
 8045ade:	1d1a      	adds	r2, r3, #4
 8045ae0:	681b      	ldr	r3, [r3, #0]
 8045ae2:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 8045ae6:	9203      	str	r2, [sp, #12]
 8045ae8:	9305      	str	r3, [sp, #20]
 8045aea:	f8df a0d4 	ldr.w	sl, [pc, #212]	@ 8045bc0 <_vfiprintf_r+0x22c>
 8045aee:	2203      	movs	r2, #3
 8045af0:	7821      	ldrb	r1, [r4, #0]
 8045af2:	4650      	mov	r0, sl
 8045af4:	f000 fb38 	bl	8046168 <memchr>
 8045af8:	b138      	cbz	r0, 8045b0a <_vfiprintf_r+0x176>
 8045afa:	eba0 000a 	sub.w	r0, r0, sl
 8045afe:	2240      	movs	r2, #64	@ 0x40
 8045b00:	9b04      	ldr	r3, [sp, #16]
 8045b02:	3401      	adds	r4, #1
 8045b04:	4082      	lsls	r2, r0
 8045b06:	4313      	orrs	r3, r2
 8045b08:	9304      	str	r3, [sp, #16]
 8045b0a:	f814 1b01 	ldrb.w	r1, [r4], #1
 8045b0e:	2206      	movs	r2, #6
 8045b10:	4828      	ldr	r0, [pc, #160]	@ (8045bb4 <_vfiprintf_r+0x220>)
 8045b12:	f88d 1028 	strb.w	r1, [sp, #40]	@ 0x28
 8045b16:	f000 fb27 	bl	8046168 <memchr>
 8045b1a:	2800      	cmp	r0, #0
 8045b1c:	d03f      	beq.n	8045b9e <_vfiprintf_r+0x20a>
 8045b1e:	4b26      	ldr	r3, [pc, #152]	@ (8045bb8 <_vfiprintf_r+0x224>)
 8045b20:	bb1b      	cbnz	r3, 8045b6a <_vfiprintf_r+0x1d6>
 8045b22:	9b03      	ldr	r3, [sp, #12]
 8045b24:	3307      	adds	r3, #7
 8045b26:	f023 0307 	bic.w	r3, r3, #7
 8045b2a:	3308      	adds	r3, #8
 8045b2c:	9303      	str	r3, [sp, #12]
 8045b2e:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8045b30:	443b      	add	r3, r7
 8045b32:	9309      	str	r3, [sp, #36]	@ 0x24
 8045b34:	e76a      	b.n	8045a0c <_vfiprintf_r+0x78>
 8045b36:	fb0c 3202 	mla	r2, ip, r2, r3
 8045b3a:	460c      	mov	r4, r1
 8045b3c:	2001      	movs	r0, #1
 8045b3e:	e7a8      	b.n	8045a92 <_vfiprintf_r+0xfe>
 8045b40:	2300      	movs	r3, #0
 8045b42:	3401      	adds	r4, #1
 8045b44:	f04f 0c0a 	mov.w	ip, #10
 8045b48:	4619      	mov	r1, r3
 8045b4a:	9305      	str	r3, [sp, #20]
 8045b4c:	4620      	mov	r0, r4
 8045b4e:	f810 2b01 	ldrb.w	r2, [r0], #1
 8045b52:	3a30      	subs	r2, #48	@ 0x30
 8045b54:	2a09      	cmp	r2, #9
 8045b56:	d903      	bls.n	8045b60 <_vfiprintf_r+0x1cc>
 8045b58:	2b00      	cmp	r3, #0
 8045b5a:	d0c6      	beq.n	8045aea <_vfiprintf_r+0x156>
 8045b5c:	9105      	str	r1, [sp, #20]
 8045b5e:	e7c4      	b.n	8045aea <_vfiprintf_r+0x156>
 8045b60:	fb0c 2101 	mla	r1, ip, r1, r2
 8045b64:	4604      	mov	r4, r0
 8045b66:	2301      	movs	r3, #1
 8045b68:	e7f0      	b.n	8045b4c <_vfiprintf_r+0x1b8>
 8045b6a:	ab03      	add	r3, sp, #12
 8045b6c:	462a      	mov	r2, r5
 8045b6e:	a904      	add	r1, sp, #16
 8045b70:	4630      	mov	r0, r6
 8045b72:	9300      	str	r3, [sp, #0]
 8045b74:	4b11      	ldr	r3, [pc, #68]	@ (8045bbc <_vfiprintf_r+0x228>)
 8045b76:	f3af 8000 	nop.w
 8045b7a:	4607      	mov	r7, r0
 8045b7c:	1c78      	adds	r0, r7, #1
 8045b7e:	d1d6      	bne.n	8045b2e <_vfiprintf_r+0x19a>
 8045b80:	6e6b      	ldr	r3, [r5, #100]	@ 0x64
 8045b82:	07d9      	lsls	r1, r3, #31
 8045b84:	d405      	bmi.n	8045b92 <_vfiprintf_r+0x1fe>
 8045b86:	89ab      	ldrh	r3, [r5, #12]
 8045b88:	059a      	lsls	r2, r3, #22
 8045b8a:	d402      	bmi.n	8045b92 <_vfiprintf_r+0x1fe>
 8045b8c:	6da8      	ldr	r0, [r5, #88]	@ 0x58
 8045b8e:	f7ff fddd 	bl	804574c <__retarget_lock_release_recursive>
 8045b92:	89ab      	ldrh	r3, [r5, #12]
 8045b94:	065b      	lsls	r3, r3, #25
 8045b96:	f53f af1f 	bmi.w	80459d8 <_vfiprintf_r+0x44>
 8045b9a:	9809      	ldr	r0, [sp, #36]	@ 0x24
 8045b9c:	e71e      	b.n	80459dc <_vfiprintf_r+0x48>
 8045b9e:	ab03      	add	r3, sp, #12
 8045ba0:	462a      	mov	r2, r5
 8045ba2:	a904      	add	r1, sp, #16
 8045ba4:	4630      	mov	r0, r6
 8045ba6:	9300      	str	r3, [sp, #0]
 8045ba8:	4b04      	ldr	r3, [pc, #16]	@ (8045bbc <_vfiprintf_r+0x228>)
 8045baa:	f000 f87d 	bl	8045ca8 <_printf_i>
 8045bae:	e7e4      	b.n	8045b7a <_vfiprintf_r+0x1e6>
 8045bb0:	08046250 	.word	0x08046250
 8045bb4:	0804625a 	.word	0x0804625a
 8045bb8:	00000000 	.word	0x00000000
 8045bbc:	0804596f 	.word	0x0804596f
 8045bc0:	08046256 	.word	0x08046256

08045bc4 <_printf_common>:
 8045bc4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8045bc8:	4616      	mov	r6, r2
 8045bca:	4698      	mov	r8, r3
 8045bcc:	688a      	ldr	r2, [r1, #8]
 8045bce:	4607      	mov	r7, r0
 8045bd0:	690b      	ldr	r3, [r1, #16]
 8045bd2:	460c      	mov	r4, r1
 8045bd4:	f8dd 9020 	ldr.w	r9, [sp, #32]
 8045bd8:	4293      	cmp	r3, r2
 8045bda:	bfb8      	it	lt
 8045bdc:	4613      	movlt	r3, r2
 8045bde:	6033      	str	r3, [r6, #0]
 8045be0:	f891 2043 	ldrb.w	r2, [r1, #67]	@ 0x43
 8045be4:	b10a      	cbz	r2, 8045bea <_printf_common+0x26>
 8045be6:	3301      	adds	r3, #1
 8045be8:	6033      	str	r3, [r6, #0]
 8045bea:	6823      	ldr	r3, [r4, #0]
 8045bec:	0699      	lsls	r1, r3, #26
 8045bee:	bf42      	ittt	mi
 8045bf0:	6833      	ldrmi	r3, [r6, #0]
 8045bf2:	3302      	addmi	r3, #2
 8045bf4:	6033      	strmi	r3, [r6, #0]
 8045bf6:	6825      	ldr	r5, [r4, #0]
 8045bf8:	f015 0506 	ands.w	r5, r5, #6
 8045bfc:	d106      	bne.n	8045c0c <_printf_common+0x48>
 8045bfe:	f104 0a19 	add.w	sl, r4, #25
 8045c02:	68e3      	ldr	r3, [r4, #12]
 8045c04:	6832      	ldr	r2, [r6, #0]
 8045c06:	1a9b      	subs	r3, r3, r2
 8045c08:	42ab      	cmp	r3, r5
 8045c0a:	dc2b      	bgt.n	8045c64 <_printf_common+0xa0>
 8045c0c:	f894 3043 	ldrb.w	r3, [r4, #67]	@ 0x43
 8045c10:	6822      	ldr	r2, [r4, #0]
 8045c12:	3b00      	subs	r3, #0
 8045c14:	bf18      	it	ne
 8045c16:	2301      	movne	r3, #1
 8045c18:	0692      	lsls	r2, r2, #26
 8045c1a:	d430      	bmi.n	8045c7e <_printf_common+0xba>
 8045c1c:	f104 0243 	add.w	r2, r4, #67	@ 0x43
 8045c20:	4641      	mov	r1, r8
 8045c22:	4638      	mov	r0, r7
 8045c24:	47c8      	blx	r9
 8045c26:	3001      	adds	r0, #1
 8045c28:	d023      	beq.n	8045c72 <_printf_common+0xae>
 8045c2a:	6823      	ldr	r3, [r4, #0]
 8045c2c:	341a      	adds	r4, #26
 8045c2e:	f854 2c0a 	ldr.w	r2, [r4, #-10]
 8045c32:	f003 0306 	and.w	r3, r3, #6
 8045c36:	2b04      	cmp	r3, #4
 8045c38:	bf0a      	itet	eq
 8045c3a:	f854 5c0e 	ldreq.w	r5, [r4, #-14]
 8045c3e:	2500      	movne	r5, #0
 8045c40:	6833      	ldreq	r3, [r6, #0]
 8045c42:	f04f 0600 	mov.w	r6, #0
 8045c46:	bf08      	it	eq
 8045c48:	1aed      	subeq	r5, r5, r3
 8045c4a:	f854 3c12 	ldr.w	r3, [r4, #-18]
 8045c4e:	bf08      	it	eq
 8045c50:	ea25 75e5 	biceq.w	r5, r5, r5, asr #31
 8045c54:	4293      	cmp	r3, r2
 8045c56:	bfc4      	itt	gt
 8045c58:	1a9b      	subgt	r3, r3, r2
 8045c5a:	18ed      	addgt	r5, r5, r3
 8045c5c:	42b5      	cmp	r5, r6
 8045c5e:	d11a      	bne.n	8045c96 <_printf_common+0xd2>
 8045c60:	2000      	movs	r0, #0
 8045c62:	e008      	b.n	8045c76 <_printf_common+0xb2>
 8045c64:	2301      	movs	r3, #1
 8045c66:	4652      	mov	r2, sl
 8045c68:	4641      	mov	r1, r8
 8045c6a:	4638      	mov	r0, r7
 8045c6c:	47c8      	blx	r9
 8045c6e:	3001      	adds	r0, #1
 8045c70:	d103      	bne.n	8045c7a <_printf_common+0xb6>
 8045c72:	f04f 30ff 	mov.w	r0, #4294967295
 8045c76:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8045c7a:	3501      	adds	r5, #1
 8045c7c:	e7c1      	b.n	8045c02 <_printf_common+0x3e>
 8045c7e:	18e1      	adds	r1, r4, r3
 8045c80:	1c5a      	adds	r2, r3, #1
 8045c82:	2030      	movs	r0, #48	@ 0x30
 8045c84:	3302      	adds	r3, #2
 8045c86:	4422      	add	r2, r4
 8045c88:	f881 0043 	strb.w	r0, [r1, #67]	@ 0x43
 8045c8c:	f894 1045 	ldrb.w	r1, [r4, #69]	@ 0x45
 8045c90:	f882 1043 	strb.w	r1, [r2, #67]	@ 0x43
 8045c94:	e7c2      	b.n	8045c1c <_printf_common+0x58>
 8045c96:	2301      	movs	r3, #1
 8045c98:	4622      	mov	r2, r4
 8045c9a:	4641      	mov	r1, r8
 8045c9c:	4638      	mov	r0, r7
 8045c9e:	47c8      	blx	r9
 8045ca0:	3001      	adds	r0, #1
 8045ca2:	d0e6      	beq.n	8045c72 <_printf_common+0xae>
 8045ca4:	3601      	adds	r6, #1
 8045ca6:	e7d9      	b.n	8045c5c <_printf_common+0x98>

08045ca8 <_printf_i>:
 8045ca8:	e92d 47ff 	stmdb	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
 8045cac:	7e0f      	ldrb	r7, [r1, #24]
 8045cae:	4691      	mov	r9, r2
 8045cb0:	4680      	mov	r8, r0
 8045cb2:	460c      	mov	r4, r1
 8045cb4:	2f78      	cmp	r7, #120	@ 0x78
 8045cb6:	469a      	mov	sl, r3
 8045cb8:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
 8045cba:	f101 0243 	add.w	r2, r1, #67	@ 0x43
 8045cbe:	d807      	bhi.n	8045cd0 <_printf_i+0x28>
 8045cc0:	2f62      	cmp	r7, #98	@ 0x62
 8045cc2:	d80a      	bhi.n	8045cda <_printf_i+0x32>
 8045cc4:	2f00      	cmp	r7, #0
 8045cc6:	f000 80d2 	beq.w	8045e6e <_printf_i+0x1c6>
 8045cca:	2f58      	cmp	r7, #88	@ 0x58
 8045ccc:	f000 80b9 	beq.w	8045e42 <_printf_i+0x19a>
 8045cd0:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 8045cd4:	f884 7042 	strb.w	r7, [r4, #66]	@ 0x42
 8045cd8:	e03a      	b.n	8045d50 <_printf_i+0xa8>
 8045cda:	f1a7 0363 	sub.w	r3, r7, #99	@ 0x63
 8045cde:	2b15      	cmp	r3, #21
 8045ce0:	d8f6      	bhi.n	8045cd0 <_printf_i+0x28>
 8045ce2:	a101      	add	r1, pc, #4	@ (adr r1, 8045ce8 <_printf_i+0x40>)
 8045ce4:	f851 f023 	ldr.w	pc, [r1, r3, lsl #2]
 8045ce8:	08045d41 	.word	0x08045d41
 8045cec:	08045d55 	.word	0x08045d55
 8045cf0:	08045cd1 	.word	0x08045cd1
 8045cf4:	08045cd1 	.word	0x08045cd1
 8045cf8:	08045cd1 	.word	0x08045cd1
 8045cfc:	08045cd1 	.word	0x08045cd1
 8045d00:	08045d55 	.word	0x08045d55
 8045d04:	08045cd1 	.word	0x08045cd1
 8045d08:	08045cd1 	.word	0x08045cd1
 8045d0c:	08045cd1 	.word	0x08045cd1
 8045d10:	08045cd1 	.word	0x08045cd1
 8045d14:	08045e55 	.word	0x08045e55
 8045d18:	08045d7f 	.word	0x08045d7f
 8045d1c:	08045e0f 	.word	0x08045e0f
 8045d20:	08045cd1 	.word	0x08045cd1
 8045d24:	08045cd1 	.word	0x08045cd1
 8045d28:	08045e77 	.word	0x08045e77
 8045d2c:	08045cd1 	.word	0x08045cd1
 8045d30:	08045d7f 	.word	0x08045d7f
 8045d34:	08045cd1 	.word	0x08045cd1
 8045d38:	08045cd1 	.word	0x08045cd1
 8045d3c:	08045e17 	.word	0x08045e17
 8045d40:	6833      	ldr	r3, [r6, #0]
 8045d42:	1d1a      	adds	r2, r3, #4
 8045d44:	681b      	ldr	r3, [r3, #0]
 8045d46:	6032      	str	r2, [r6, #0]
 8045d48:	f104 0642 	add.w	r6, r4, #66	@ 0x42
 8045d4c:	f884 3042 	strb.w	r3, [r4, #66]	@ 0x42
 8045d50:	2301      	movs	r3, #1
 8045d52:	e09d      	b.n	8045e90 <_printf_i+0x1e8>
 8045d54:	6833      	ldr	r3, [r6, #0]
 8045d56:	6820      	ldr	r0, [r4, #0]
 8045d58:	1d19      	adds	r1, r3, #4
 8045d5a:	6031      	str	r1, [r6, #0]
 8045d5c:	0606      	lsls	r6, r0, #24
 8045d5e:	d501      	bpl.n	8045d64 <_printf_i+0xbc>
 8045d60:	681d      	ldr	r5, [r3, #0]
 8045d62:	e003      	b.n	8045d6c <_printf_i+0xc4>
 8045d64:	0645      	lsls	r5, r0, #25
 8045d66:	d5fb      	bpl.n	8045d60 <_printf_i+0xb8>
 8045d68:	f9b3 5000 	ldrsh.w	r5, [r3]
 8045d6c:	2d00      	cmp	r5, #0
 8045d6e:	da03      	bge.n	8045d78 <_printf_i+0xd0>
 8045d70:	232d      	movs	r3, #45	@ 0x2d
 8045d72:	426d      	negs	r5, r5
 8045d74:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 8045d78:	4859      	ldr	r0, [pc, #356]	@ (8045ee0 <_printf_i+0x238>)
 8045d7a:	230a      	movs	r3, #10
 8045d7c:	e011      	b.n	8045da2 <_printf_i+0xfa>
 8045d7e:	6821      	ldr	r1, [r4, #0]
 8045d80:	6833      	ldr	r3, [r6, #0]
 8045d82:	0608      	lsls	r0, r1, #24
 8045d84:	f853 5b04 	ldr.w	r5, [r3], #4
 8045d88:	d402      	bmi.n	8045d90 <_printf_i+0xe8>
 8045d8a:	0649      	lsls	r1, r1, #25
 8045d8c:	bf48      	it	mi
 8045d8e:	b2ad      	uxthmi	r5, r5
 8045d90:	2f6f      	cmp	r7, #111	@ 0x6f
 8045d92:	6033      	str	r3, [r6, #0]
 8045d94:	4852      	ldr	r0, [pc, #328]	@ (8045ee0 <_printf_i+0x238>)
 8045d96:	bf14      	ite	ne
 8045d98:	230a      	movne	r3, #10
 8045d9a:	2308      	moveq	r3, #8
 8045d9c:	2100      	movs	r1, #0
 8045d9e:	f884 1043 	strb.w	r1, [r4, #67]	@ 0x43
 8045da2:	6866      	ldr	r6, [r4, #4]
 8045da4:	2e00      	cmp	r6, #0
 8045da6:	60a6      	str	r6, [r4, #8]
 8045da8:	bfa2      	ittt	ge
 8045daa:	6821      	ldrge	r1, [r4, #0]
 8045dac:	f021 0104 	bicge.w	r1, r1, #4
 8045db0:	6021      	strge	r1, [r4, #0]
 8045db2:	b90d      	cbnz	r5, 8045db8 <_printf_i+0x110>
 8045db4:	2e00      	cmp	r6, #0
 8045db6:	d04b      	beq.n	8045e50 <_printf_i+0x1a8>
 8045db8:	4616      	mov	r6, r2
 8045dba:	fbb5 f1f3 	udiv	r1, r5, r3
 8045dbe:	fb03 5711 	mls	r7, r3, r1, r5
 8045dc2:	5dc7      	ldrb	r7, [r0, r7]
 8045dc4:	f806 7d01 	strb.w	r7, [r6, #-1]!
 8045dc8:	462f      	mov	r7, r5
 8045dca:	460d      	mov	r5, r1
 8045dcc:	42bb      	cmp	r3, r7
 8045dce:	d9f4      	bls.n	8045dba <_printf_i+0x112>
 8045dd0:	2b08      	cmp	r3, #8
 8045dd2:	d10b      	bne.n	8045dec <_printf_i+0x144>
 8045dd4:	6823      	ldr	r3, [r4, #0]
 8045dd6:	07df      	lsls	r7, r3, #31
 8045dd8:	d508      	bpl.n	8045dec <_printf_i+0x144>
 8045dda:	6923      	ldr	r3, [r4, #16]
 8045ddc:	6861      	ldr	r1, [r4, #4]
 8045dde:	4299      	cmp	r1, r3
 8045de0:	bfde      	ittt	le
 8045de2:	2330      	movle	r3, #48	@ 0x30
 8045de4:	f806 3c01 	strble.w	r3, [r6, #-1]
 8045de8:	f106 36ff 	addle.w	r6, r6, #4294967295
 8045dec:	1b92      	subs	r2, r2, r6
 8045dee:	6122      	str	r2, [r4, #16]
 8045df0:	464b      	mov	r3, r9
 8045df2:	aa03      	add	r2, sp, #12
 8045df4:	4621      	mov	r1, r4
 8045df6:	4640      	mov	r0, r8
 8045df8:	f8cd a000 	str.w	sl, [sp]
 8045dfc:	f7ff fee2 	bl	8045bc4 <_printf_common>
 8045e00:	3001      	adds	r0, #1
 8045e02:	d14a      	bne.n	8045e9a <_printf_i+0x1f2>
 8045e04:	f04f 30ff 	mov.w	r0, #4294967295
 8045e08:	b004      	add	sp, #16
 8045e0a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8045e0e:	6823      	ldr	r3, [r4, #0]
 8045e10:	f043 0320 	orr.w	r3, r3, #32
 8045e14:	6023      	str	r3, [r4, #0]
 8045e16:	2778      	movs	r7, #120	@ 0x78
 8045e18:	4832      	ldr	r0, [pc, #200]	@ (8045ee4 <_printf_i+0x23c>)
 8045e1a:	6823      	ldr	r3, [r4, #0]
 8045e1c:	f884 7045 	strb.w	r7, [r4, #69]	@ 0x45
 8045e20:	061f      	lsls	r7, r3, #24
 8045e22:	6831      	ldr	r1, [r6, #0]
 8045e24:	f851 5b04 	ldr.w	r5, [r1], #4
 8045e28:	d402      	bmi.n	8045e30 <_printf_i+0x188>
 8045e2a:	065f      	lsls	r7, r3, #25
 8045e2c:	bf48      	it	mi
 8045e2e:	b2ad      	uxthmi	r5, r5
 8045e30:	6031      	str	r1, [r6, #0]
 8045e32:	07d9      	lsls	r1, r3, #31
 8045e34:	bf44      	itt	mi
 8045e36:	f043 0320 	orrmi.w	r3, r3, #32
 8045e3a:	6023      	strmi	r3, [r4, #0]
 8045e3c:	b11d      	cbz	r5, 8045e46 <_printf_i+0x19e>
 8045e3e:	2310      	movs	r3, #16
 8045e40:	e7ac      	b.n	8045d9c <_printf_i+0xf4>
 8045e42:	4827      	ldr	r0, [pc, #156]	@ (8045ee0 <_printf_i+0x238>)
 8045e44:	e7e9      	b.n	8045e1a <_printf_i+0x172>
 8045e46:	6823      	ldr	r3, [r4, #0]
 8045e48:	f023 0320 	bic.w	r3, r3, #32
 8045e4c:	6023      	str	r3, [r4, #0]
 8045e4e:	e7f6      	b.n	8045e3e <_printf_i+0x196>
 8045e50:	4616      	mov	r6, r2
 8045e52:	e7bd      	b.n	8045dd0 <_printf_i+0x128>
 8045e54:	6833      	ldr	r3, [r6, #0]
 8045e56:	6825      	ldr	r5, [r4, #0]
 8045e58:	1d18      	adds	r0, r3, #4
 8045e5a:	6961      	ldr	r1, [r4, #20]
 8045e5c:	6030      	str	r0, [r6, #0]
 8045e5e:	062e      	lsls	r6, r5, #24
 8045e60:	681b      	ldr	r3, [r3, #0]
 8045e62:	d501      	bpl.n	8045e68 <_printf_i+0x1c0>
 8045e64:	6019      	str	r1, [r3, #0]
 8045e66:	e002      	b.n	8045e6e <_printf_i+0x1c6>
 8045e68:	0668      	lsls	r0, r5, #25
 8045e6a:	d5fb      	bpl.n	8045e64 <_printf_i+0x1bc>
 8045e6c:	8019      	strh	r1, [r3, #0]
 8045e6e:	2300      	movs	r3, #0
 8045e70:	4616      	mov	r6, r2
 8045e72:	6123      	str	r3, [r4, #16]
 8045e74:	e7bc      	b.n	8045df0 <_printf_i+0x148>
 8045e76:	6833      	ldr	r3, [r6, #0]
 8045e78:	2100      	movs	r1, #0
 8045e7a:	1d1a      	adds	r2, r3, #4
 8045e7c:	6032      	str	r2, [r6, #0]
 8045e7e:	681e      	ldr	r6, [r3, #0]
 8045e80:	6862      	ldr	r2, [r4, #4]
 8045e82:	4630      	mov	r0, r6
 8045e84:	f000 f970 	bl	8046168 <memchr>
 8045e88:	b108      	cbz	r0, 8045e8e <_printf_i+0x1e6>
 8045e8a:	1b80      	subs	r0, r0, r6
 8045e8c:	6060      	str	r0, [r4, #4]
 8045e8e:	6863      	ldr	r3, [r4, #4]
 8045e90:	6123      	str	r3, [r4, #16]
 8045e92:	2300      	movs	r3, #0
 8045e94:	f884 3043 	strb.w	r3, [r4, #67]	@ 0x43
 8045e98:	e7aa      	b.n	8045df0 <_printf_i+0x148>
 8045e9a:	6923      	ldr	r3, [r4, #16]
 8045e9c:	4632      	mov	r2, r6
 8045e9e:	4649      	mov	r1, r9
 8045ea0:	4640      	mov	r0, r8
 8045ea2:	47d0      	blx	sl
 8045ea4:	3001      	adds	r0, #1
 8045ea6:	d0ad      	beq.n	8045e04 <_printf_i+0x15c>
 8045ea8:	6823      	ldr	r3, [r4, #0]
 8045eaa:	079b      	lsls	r3, r3, #30
 8045eac:	d413      	bmi.n	8045ed6 <_printf_i+0x22e>
 8045eae:	68e0      	ldr	r0, [r4, #12]
 8045eb0:	9b03      	ldr	r3, [sp, #12]
 8045eb2:	4298      	cmp	r0, r3
 8045eb4:	bfb8      	it	lt
 8045eb6:	4618      	movlt	r0, r3
 8045eb8:	e7a6      	b.n	8045e08 <_printf_i+0x160>
 8045eba:	2301      	movs	r3, #1
 8045ebc:	4632      	mov	r2, r6
 8045ebe:	4649      	mov	r1, r9
 8045ec0:	4640      	mov	r0, r8
 8045ec2:	47d0      	blx	sl
 8045ec4:	3001      	adds	r0, #1
 8045ec6:	d09d      	beq.n	8045e04 <_printf_i+0x15c>
 8045ec8:	3501      	adds	r5, #1
 8045eca:	68e3      	ldr	r3, [r4, #12]
 8045ecc:	9903      	ldr	r1, [sp, #12]
 8045ece:	1a5b      	subs	r3, r3, r1
 8045ed0:	42ab      	cmp	r3, r5
 8045ed2:	dcf2      	bgt.n	8045eba <_printf_i+0x212>
 8045ed4:	e7eb      	b.n	8045eae <_printf_i+0x206>
 8045ed6:	2500      	movs	r5, #0
 8045ed8:	f104 0619 	add.w	r6, r4, #25
 8045edc:	e7f5      	b.n	8045eca <_printf_i+0x222>
 8045ede:	bf00      	nop
 8045ee0:	08046261 	.word	0x08046261
 8045ee4:	08046272 	.word	0x08046272

08045ee8 <__sflush_r>:
 8045ee8:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8045eec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8045ef0:	0716      	lsls	r6, r2, #28
 8045ef2:	4605      	mov	r5, r0
 8045ef4:	460c      	mov	r4, r1
 8045ef6:	d454      	bmi.n	8045fa2 <__sflush_r+0xba>
 8045ef8:	684b      	ldr	r3, [r1, #4]
 8045efa:	2b00      	cmp	r3, #0
 8045efc:	dc02      	bgt.n	8045f04 <__sflush_r+0x1c>
 8045efe:	6c0b      	ldr	r3, [r1, #64]	@ 0x40
 8045f00:	2b00      	cmp	r3, #0
 8045f02:	dd48      	ble.n	8045f96 <__sflush_r+0xae>
 8045f04:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 8045f06:	2e00      	cmp	r6, #0
 8045f08:	d045      	beq.n	8045f96 <__sflush_r+0xae>
 8045f0a:	2300      	movs	r3, #0
 8045f0c:	f412 5280 	ands.w	r2, r2, #4096	@ 0x1000
 8045f10:	682f      	ldr	r7, [r5, #0]
 8045f12:	6a21      	ldr	r1, [r4, #32]
 8045f14:	602b      	str	r3, [r5, #0]
 8045f16:	d030      	beq.n	8045f7a <__sflush_r+0x92>
 8045f18:	6d62      	ldr	r2, [r4, #84]	@ 0x54
 8045f1a:	89a3      	ldrh	r3, [r4, #12]
 8045f1c:	0759      	lsls	r1, r3, #29
 8045f1e:	d505      	bpl.n	8045f2c <__sflush_r+0x44>
 8045f20:	6863      	ldr	r3, [r4, #4]
 8045f22:	1ad2      	subs	r2, r2, r3
 8045f24:	6b63      	ldr	r3, [r4, #52]	@ 0x34
 8045f26:	b10b      	cbz	r3, 8045f2c <__sflush_r+0x44>
 8045f28:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 8045f2a:	1ad2      	subs	r2, r2, r3
 8045f2c:	2300      	movs	r3, #0
 8045f2e:	6ae6      	ldr	r6, [r4, #44]	@ 0x2c
 8045f30:	6a21      	ldr	r1, [r4, #32]
 8045f32:	4628      	mov	r0, r5
 8045f34:	47b0      	blx	r6
 8045f36:	1c43      	adds	r3, r0, #1
 8045f38:	89a3      	ldrh	r3, [r4, #12]
 8045f3a:	d106      	bne.n	8045f4a <__sflush_r+0x62>
 8045f3c:	6829      	ldr	r1, [r5, #0]
 8045f3e:	291d      	cmp	r1, #29
 8045f40:	d82b      	bhi.n	8045f9a <__sflush_r+0xb2>
 8045f42:	4a2a      	ldr	r2, [pc, #168]	@ (8045fec <__sflush_r+0x104>)
 8045f44:	410a      	asrs	r2, r1
 8045f46:	07d6      	lsls	r6, r2, #31
 8045f48:	d427      	bmi.n	8045f9a <__sflush_r+0xb2>
 8045f4a:	2200      	movs	r2, #0
 8045f4c:	04d9      	lsls	r1, r3, #19
 8045f4e:	6062      	str	r2, [r4, #4]
 8045f50:	6922      	ldr	r2, [r4, #16]
 8045f52:	6022      	str	r2, [r4, #0]
 8045f54:	d504      	bpl.n	8045f60 <__sflush_r+0x78>
 8045f56:	1c42      	adds	r2, r0, #1
 8045f58:	d101      	bne.n	8045f5e <__sflush_r+0x76>
 8045f5a:	682b      	ldr	r3, [r5, #0]
 8045f5c:	b903      	cbnz	r3, 8045f60 <__sflush_r+0x78>
 8045f5e:	6560      	str	r0, [r4, #84]	@ 0x54
 8045f60:	6b61      	ldr	r1, [r4, #52]	@ 0x34
 8045f62:	602f      	str	r7, [r5, #0]
 8045f64:	b1b9      	cbz	r1, 8045f96 <__sflush_r+0xae>
 8045f66:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 8045f6a:	4299      	cmp	r1, r3
 8045f6c:	d002      	beq.n	8045f74 <__sflush_r+0x8c>
 8045f6e:	4628      	mov	r0, r5
 8045f70:	f7ff fbee 	bl	8045750 <_free_r>
 8045f74:	2300      	movs	r3, #0
 8045f76:	6363      	str	r3, [r4, #52]	@ 0x34
 8045f78:	e00d      	b.n	8045f96 <__sflush_r+0xae>
 8045f7a:	2301      	movs	r3, #1
 8045f7c:	4628      	mov	r0, r5
 8045f7e:	47b0      	blx	r6
 8045f80:	4602      	mov	r2, r0
 8045f82:	1c50      	adds	r0, r2, #1
 8045f84:	d1c9      	bne.n	8045f1a <__sflush_r+0x32>
 8045f86:	682b      	ldr	r3, [r5, #0]
 8045f88:	2b00      	cmp	r3, #0
 8045f8a:	d0c6      	beq.n	8045f1a <__sflush_r+0x32>
 8045f8c:	2b1d      	cmp	r3, #29
 8045f8e:	d001      	beq.n	8045f94 <__sflush_r+0xac>
 8045f90:	2b16      	cmp	r3, #22
 8045f92:	d11d      	bne.n	8045fd0 <__sflush_r+0xe8>
 8045f94:	602f      	str	r7, [r5, #0]
 8045f96:	2000      	movs	r0, #0
 8045f98:	e021      	b.n	8045fde <__sflush_r+0xf6>
 8045f9a:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8045f9e:	b21b      	sxth	r3, r3
 8045fa0:	e01a      	b.n	8045fd8 <__sflush_r+0xf0>
 8045fa2:	690f      	ldr	r7, [r1, #16]
 8045fa4:	2f00      	cmp	r7, #0
 8045fa6:	d0f6      	beq.n	8045f96 <__sflush_r+0xae>
 8045fa8:	0793      	lsls	r3, r2, #30
 8045faa:	680e      	ldr	r6, [r1, #0]
 8045fac:	600f      	str	r7, [r1, #0]
 8045fae:	bf0c      	ite	eq
 8045fb0:	694b      	ldreq	r3, [r1, #20]
 8045fb2:	2300      	movne	r3, #0
 8045fb4:	eba6 0807 	sub.w	r8, r6, r7
 8045fb8:	608b      	str	r3, [r1, #8]
 8045fba:	f1b8 0f00 	cmp.w	r8, #0
 8045fbe:	ddea      	ble.n	8045f96 <__sflush_r+0xae>
 8045fc0:	4643      	mov	r3, r8
 8045fc2:	463a      	mov	r2, r7
 8045fc4:	6a21      	ldr	r1, [r4, #32]
 8045fc6:	4628      	mov	r0, r5
 8045fc8:	6aa6      	ldr	r6, [r4, #40]	@ 0x28
 8045fca:	47b0      	blx	r6
 8045fcc:	2800      	cmp	r0, #0
 8045fce:	dc08      	bgt.n	8045fe2 <__sflush_r+0xfa>
 8045fd0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8045fd4:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8045fd8:	f04f 30ff 	mov.w	r0, #4294967295
 8045fdc:	81a3      	strh	r3, [r4, #12]
 8045fde:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8045fe2:	4407      	add	r7, r0
 8045fe4:	eba8 0800 	sub.w	r8, r8, r0
 8045fe8:	e7e7      	b.n	8045fba <__sflush_r+0xd2>
 8045fea:	bf00      	nop
 8045fec:	dfbffffe 	.word	0xdfbffffe

08045ff0 <_fflush_r>:
 8045ff0:	b538      	push	{r3, r4, r5, lr}
 8045ff2:	690b      	ldr	r3, [r1, #16]
 8045ff4:	4605      	mov	r5, r0
 8045ff6:	460c      	mov	r4, r1
 8045ff8:	b913      	cbnz	r3, 8046000 <_fflush_r+0x10>
 8045ffa:	2500      	movs	r5, #0
 8045ffc:	4628      	mov	r0, r5
 8045ffe:	bd38      	pop	{r3, r4, r5, pc}
 8046000:	b118      	cbz	r0, 804600a <_fflush_r+0x1a>
 8046002:	6a03      	ldr	r3, [r0, #32]
 8046004:	b90b      	cbnz	r3, 804600a <_fflush_r+0x1a>
 8046006:	f7ff f9a9 	bl	804535c <__sinit>
 804600a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 804600e:	2b00      	cmp	r3, #0
 8046010:	d0f3      	beq.n	8045ffa <_fflush_r+0xa>
 8046012:	6e62      	ldr	r2, [r4, #100]	@ 0x64
 8046014:	07d0      	lsls	r0, r2, #31
 8046016:	d404      	bmi.n	8046022 <_fflush_r+0x32>
 8046018:	0599      	lsls	r1, r3, #22
 804601a:	d402      	bmi.n	8046022 <_fflush_r+0x32>
 804601c:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 804601e:	f7ff fb94 	bl	804574a <__retarget_lock_acquire_recursive>
 8046022:	4628      	mov	r0, r5
 8046024:	4621      	mov	r1, r4
 8046026:	f7ff ff5f 	bl	8045ee8 <__sflush_r>
 804602a:	6e63      	ldr	r3, [r4, #100]	@ 0x64
 804602c:	4605      	mov	r5, r0
 804602e:	07da      	lsls	r2, r3, #31
 8046030:	d4e4      	bmi.n	8045ffc <_fflush_r+0xc>
 8046032:	89a3      	ldrh	r3, [r4, #12]
 8046034:	059b      	lsls	r3, r3, #22
 8046036:	d4e1      	bmi.n	8045ffc <_fflush_r+0xc>
 8046038:	6da0      	ldr	r0, [r4, #88]	@ 0x58
 804603a:	f7ff fb87 	bl	804574c <__retarget_lock_release_recursive>
 804603e:	e7dd      	b.n	8045ffc <_fflush_r+0xc>

08046040 <__swhatbuf_r>:
 8046040:	b570      	push	{r4, r5, r6, lr}
 8046042:	460c      	mov	r4, r1
 8046044:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8046048:	b096      	sub	sp, #88	@ 0x58
 804604a:	4615      	mov	r5, r2
 804604c:	2900      	cmp	r1, #0
 804604e:	461e      	mov	r6, r3
 8046050:	da0c      	bge.n	804606c <__swhatbuf_r+0x2c>
 8046052:	89a3      	ldrh	r3, [r4, #12]
 8046054:	2100      	movs	r1, #0
 8046056:	f013 0f80 	tst.w	r3, #128	@ 0x80
 804605a:	bf14      	ite	ne
 804605c:	2340      	movne	r3, #64	@ 0x40
 804605e:	f44f 6380 	moveq.w	r3, #1024	@ 0x400
 8046062:	2000      	movs	r0, #0
 8046064:	6031      	str	r1, [r6, #0]
 8046066:	602b      	str	r3, [r5, #0]
 8046068:	b016      	add	sp, #88	@ 0x58
 804606a:	bd70      	pop	{r4, r5, r6, pc}
 804606c:	466a      	mov	r2, sp
 804606e:	f000 f849 	bl	8046104 <_fstat_r>
 8046072:	2800      	cmp	r0, #0
 8046074:	dbed      	blt.n	8046052 <__swhatbuf_r+0x12>
 8046076:	9901      	ldr	r1, [sp, #4]
 8046078:	f401 4170 	and.w	r1, r1, #61440	@ 0xf000
 804607c:	f5a1 5300 	sub.w	r3, r1, #8192	@ 0x2000
 8046080:	4259      	negs	r1, r3
 8046082:	4159      	adcs	r1, r3
 8046084:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8046088:	e7eb      	b.n	8046062 <__swhatbuf_r+0x22>

0804608a <__smakebuf_r>:
 804608a:	898b      	ldrh	r3, [r1, #12]
 804608c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 804608e:	079d      	lsls	r5, r3, #30
 8046090:	4606      	mov	r6, r0
 8046092:	460c      	mov	r4, r1
 8046094:	d507      	bpl.n	80460a6 <__smakebuf_r+0x1c>
 8046096:	f104 0347 	add.w	r3, r4, #71	@ 0x47
 804609a:	6023      	str	r3, [r4, #0]
 804609c:	6123      	str	r3, [r4, #16]
 804609e:	2301      	movs	r3, #1
 80460a0:	6163      	str	r3, [r4, #20]
 80460a2:	b003      	add	sp, #12
 80460a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80460a6:	ab01      	add	r3, sp, #4
 80460a8:	466a      	mov	r2, sp
 80460aa:	f7ff ffc9 	bl	8046040 <__swhatbuf_r>
 80460ae:	9f00      	ldr	r7, [sp, #0]
 80460b0:	4605      	mov	r5, r0
 80460b2:	4630      	mov	r0, r6
 80460b4:	4639      	mov	r1, r7
 80460b6:	f7ff fbb7 	bl	8045828 <_malloc_r>
 80460ba:	b948      	cbnz	r0, 80460d0 <__smakebuf_r+0x46>
 80460bc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80460c0:	059a      	lsls	r2, r3, #22
 80460c2:	d4ee      	bmi.n	80460a2 <__smakebuf_r+0x18>
 80460c4:	f023 0303 	bic.w	r3, r3, #3
 80460c8:	f043 0302 	orr.w	r3, r3, #2
 80460cc:	81a3      	strh	r3, [r4, #12]
 80460ce:	e7e2      	b.n	8046096 <__smakebuf_r+0xc>
 80460d0:	89a3      	ldrh	r3, [r4, #12]
 80460d2:	6020      	str	r0, [r4, #0]
 80460d4:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 80460d8:	81a3      	strh	r3, [r4, #12]
 80460da:	9b01      	ldr	r3, [sp, #4]
 80460dc:	e9c4 0704 	strd	r0, r7, [r4, #16]
 80460e0:	b15b      	cbz	r3, 80460fa <__smakebuf_r+0x70>
 80460e2:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80460e6:	4630      	mov	r0, r6
 80460e8:	f000 f81e 	bl	8046128 <_isatty_r>
 80460ec:	b128      	cbz	r0, 80460fa <__smakebuf_r+0x70>
 80460ee:	89a3      	ldrh	r3, [r4, #12]
 80460f0:	f023 0303 	bic.w	r3, r3, #3
 80460f4:	f043 0301 	orr.w	r3, r3, #1
 80460f8:	81a3      	strh	r3, [r4, #12]
 80460fa:	89a3      	ldrh	r3, [r4, #12]
 80460fc:	431d      	orrs	r5, r3
 80460fe:	81a5      	strh	r5, [r4, #12]
 8046100:	e7cf      	b.n	80460a2 <__smakebuf_r+0x18>
	...

08046104 <_fstat_r>:
 8046104:	b538      	push	{r3, r4, r5, lr}
 8046106:	2300      	movs	r3, #0
 8046108:	4d06      	ldr	r5, [pc, #24]	@ (8046124 <_fstat_r+0x20>)
 804610a:	4604      	mov	r4, r0
 804610c:	4608      	mov	r0, r1
 804610e:	4611      	mov	r1, r2
 8046110:	602b      	str	r3, [r5, #0]
 8046112:	f7fa ff56 	bl	8040fc2 <_fstat>
 8046116:	1c43      	adds	r3, r0, #1
 8046118:	d102      	bne.n	8046120 <_fstat_r+0x1c>
 804611a:	682b      	ldr	r3, [r5, #0]
 804611c:	b103      	cbz	r3, 8046120 <_fstat_r+0x1c>
 804611e:	6023      	str	r3, [r4, #0]
 8046120:	bd38      	pop	{r3, r4, r5, pc}
 8046122:	bf00      	nop
 8046124:	20018388 	.word	0x20018388

08046128 <_isatty_r>:
 8046128:	b538      	push	{r3, r4, r5, lr}
 804612a:	2300      	movs	r3, #0
 804612c:	4d05      	ldr	r5, [pc, #20]	@ (8046144 <_isatty_r+0x1c>)
 804612e:	4604      	mov	r4, r0
 8046130:	4608      	mov	r0, r1
 8046132:	602b      	str	r3, [r5, #0]
 8046134:	f7fa ff55 	bl	8040fe2 <_isatty>
 8046138:	1c43      	adds	r3, r0, #1
 804613a:	d102      	bne.n	8046142 <_isatty_r+0x1a>
 804613c:	682b      	ldr	r3, [r5, #0]
 804613e:	b103      	cbz	r3, 8046142 <_isatty_r+0x1a>
 8046140:	6023      	str	r3, [r4, #0]
 8046142:	bd38      	pop	{r3, r4, r5, pc}
 8046144:	20018388 	.word	0x20018388

08046148 <_sbrk_r>:
 8046148:	b538      	push	{r3, r4, r5, lr}
 804614a:	2300      	movs	r3, #0
 804614c:	4d05      	ldr	r5, [pc, #20]	@ (8046164 <_sbrk_r+0x1c>)
 804614e:	4604      	mov	r4, r0
 8046150:	4608      	mov	r0, r1
 8046152:	602b      	str	r3, [r5, #0]
 8046154:	f7fa ff5e 	bl	8041014 <_sbrk>
 8046158:	1c43      	adds	r3, r0, #1
 804615a:	d102      	bne.n	8046162 <_sbrk_r+0x1a>
 804615c:	682b      	ldr	r3, [r5, #0]
 804615e:	b103      	cbz	r3, 8046162 <_sbrk_r+0x1a>
 8046160:	6023      	str	r3, [r4, #0]
 8046162:	bd38      	pop	{r3, r4, r5, pc}
 8046164:	20018388 	.word	0x20018388

08046168 <memchr>:
 8046168:	b2c9      	uxtb	r1, r1
 804616a:	4603      	mov	r3, r0
 804616c:	4402      	add	r2, r0
 804616e:	b510      	push	{r4, lr}
 8046170:	4293      	cmp	r3, r2
 8046172:	4618      	mov	r0, r3
 8046174:	d101      	bne.n	804617a <memchr+0x12>
 8046176:	2000      	movs	r0, #0
 8046178:	e003      	b.n	8046182 <memchr+0x1a>
 804617a:	7804      	ldrb	r4, [r0, #0]
 804617c:	3301      	adds	r3, #1
 804617e:	428c      	cmp	r4, r1
 8046180:	d1f6      	bne.n	8046170 <memchr+0x8>
 8046182:	bd10      	pop	{r4, pc}

08046184 <_init>:
 8046184:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8046186:	bf00      	nop
 8046188:	bcf8      	pop	{r3, r4, r5, r6, r7}
 804618a:	bc08      	pop	{r3}
 804618c:	469e      	mov	lr, r3
 804618e:	4770      	bx	lr

08046190 <_fini>:
 8046190:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8046192:	bf00      	nop
 8046194:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8046196:	bc08      	pop	{r3}
 8046198:	469e      	mov	lr, r3
 804619a:	4770      	bx	lr
 804619c:	0000      	movs	r0, r0
	...

080461a0 <__SECURE_SystemCoreClockUpdate_veneer>:
 80461a0:	f85f f000 	ldr.w	pc, [pc]	@ 80461a4 <__SECURE_SystemCoreClockUpdate_veneer+0x4>
 80461a4:	0c03e001 	.word	0x0c03e001
