
lale/IST.EXE:     file format binary


Disassembly of section .data:

00028430 <.data+0x28430>:
   28430:	55                   	push   %bp
   28431:	8b ec                	mov    %sp,%bp
   28433:	83 ec 02             	sub    $0x2,%sp
   28436:	b8 88 01             	mov    $0x188,%ax
   28439:	8e c0                	mov    %ax,%es
   2843b:	26 f7 06 5e 3d 20 00 	testw  $0x20,%es:0x3d5e
   28442:	75 03                	jne    0x28447
   28444:	e9 8f 00             	jmp    0x284d6
   28447:	c7 46 fe 44 00       	movw   $0x44,-0x2(%bp)
   2844c:	eb 77                	jmp    0x284c5
   2844e:	83 7e fe 24          	cmpw   $0x24,-0x2(%bp)
   28452:	7c 36                	jl     0x2848a
   28454:	83 7e fe 40          	cmpw   $0x40,-0x2(%bp)
   28458:	7d 30                	jge    0x2848a
   2845a:	8b 5e fe             	mov    -0x2(%bp),%bx
   2845d:	6b db 0d             	imul   $0xd,%bx,%bx
   28460:	b8 88 01             	mov    $0x188,%ax
   28463:	8e c0                	mov    %ax,%es
   28465:	26 8a 87 44 29       	mov    %es:0x2944(%bx),%al
   2846a:	98                   	cbtw
   2846b:	0b c0                	or     %ax,%ax
   2846d:	75 1b                	jne    0x2848a
   2846f:	8b 5e fe             	mov    -0x2(%bp),%bx
   28472:	c1 e3 03             	shl    $0x3,%bx
   28475:	b8 88 01             	mov    $0x188,%ax
   28478:	8e c0                	mov    %ax,%es
   2847a:	26 c7 87 a1 e2 00 00 	movw   $0x0,%es:-0x1d5f(%bx)
   28481:	26 c7 87 9f e2 00 00 	movw   $0x0,%es:-0x1d61(%bx)
   28488:	eb 38                	jmp    0x284c2
   2848a:	8b 5e fe             	mov    -0x2(%bp),%bx
   2848d:	c1 e3 03             	shl    $0x3,%bx
   28490:	b8 88 01             	mov    $0x188,%ax
   28493:	8e c0                	mov    %ax,%es
   28495:	26 8b 87 9f e2       	mov    %es:-0x1d61(%bx),%ax
   2849a:	26 0b 87 a1 e2       	or     %es:-0x1d5f(%bx),%ax
   2849f:	74 21                	je     0x284c2
   284a1:	83 7e fe 15          	cmpw   $0x15,-0x2(%bp)
   284a5:	74 1b                	je     0x284c2
   284a7:	1e                   	push   %ds
   284a8:	68 0d 3b             	push   $0x3b0d
   284ab:	6a 7b                	push   $0x7b
   284ad:	8b 46 fe             	mov    -0x2(%bp),%ax
   284b0:	c1 e0 03             	shl    $0x3,%ax
   284b3:	05 9f e2             	add    $0xe29f,%ax
   284b6:	68 88 01             	push   $0x188
   284b9:	50                   	push   %ax
   284ba:	9a 2f 02 40 00       	lcall  $0x40,$0x22f
   284bf:	83 c4 0a             	add    $0xa,%sp
   284c2:	ff 4e fe             	decw   -0x2(%bp)
   284c5:	83 7e fe 14          	cmpw   $0x14,-0x2(%bp)
   284c9:	7f 83                	jg     0x2844e
   284cb:	b8 88 01             	mov    $0x188,%ax
   284ce:	8e c0                	mov    %ax,%es
   284d0:	26 83 26 5e 3d df    	andw   $0xffdf,%es:0x3d5e
   284d6:	c9                   	leave
   284d7:	cb                   	lret
   284d8:	55                   	push   %bp
   284d9:	8b ec                	mov    %sp,%bp
   284db:	9a b9 1e 10 00       	lcall  $0x10,$0x1eb9
   284e0:	6a 0e                	push   $0xe
   284e2:	9a c7 05 30 00       	lcall  $0x30,$0x5c7
   284e7:	59                   	pop    %cx
   284e8:	0a c0                	or     %al,%al
   284ea:	74 05                	je     0x284f1
   284ec:	9a 04 02 30 00       	lcall  $0x30,$0x204
   284f1:	81 3e fb 3a c8 00    	cmpw   $0xc8,0x3afb
   284f7:	75 55                	jne    0x2854e
   284f9:	81 3e ff 3a c8 00    	cmpw   $0xc8,0x3aff
   284ff:	75 4d                	jne    0x2854e
   28501:	68 e0 01             	push   $0x1e0
   28504:	68 d0 02             	push   $0x2d0
   28507:	6a 00                	push   $0x0
   28509:	8a 46 06             	mov    0x6(%bp),%al
   2850c:	50                   	push   %ax
   2850d:	6a 04                	push   $0x4
   2850f:	6a 05                	push   $0x5
   28511:	a1 01 3b             	mov    0x3b01,%ax
   28514:	05 f8 ff             	add    $0xfff8,%ax
   28517:	50                   	push   %ax
   28518:	a1 ff 3a             	mov    0x3aff,%ax
   2851b:	05 f2 ff             	add    $0xfff2,%ax
   2851e:	50                   	push   %ax
   2851f:	a1 e4 b3             	mov    0xb3e4,%ax
   28522:	f7 d8                	neg    %ax
   28524:	0b c0                	or     %ax,%ax
   28526:	7e 04                	jle    0x2852c
   28528:	33 c0                	xor    %ax,%ax
   2852a:	eb 05                	jmp    0x28531
   2852c:	a1 e4 b3             	mov    0xb3e4,%ax
   2852f:	f7 d8                	neg    %ax
   28531:	05 04 00             	add    $0x4,%ax
   28534:	50                   	push   %ax
   28535:	a1 e6 b3             	mov    0xb3e6,%ax
   28538:	f7 d8                	neg    %ax
   2853a:	0b c0                	or     %ax,%ax
   2853c:	7e 04                	jle    0x28542
   2853e:	33 c0                	xor    %ax,%ax
   28540:	eb 05                	jmp    0x28547
   28542:	a1 e6 b3             	mov    0xb3e6,%ax
   28545:	f7 d8                	neg    %ax
   28547:	05 07 00             	add    $0x7,%ax
   2854a:	50                   	push   %ax
   2854b:	e9 bd 00             	jmp    0x2860b
   2854e:	83 3e fb 3a 64       	cmpw   $0x64,0x3afb
   28553:	74 03                	je     0x28558
   28555:	e9 8f 00             	jmp    0x285e7
   28558:	81 3e ff 3a c8 00    	cmpw   $0xc8,0x3aff
   2855e:	74 03                	je     0x28563
   28560:	e9 84 00             	jmp    0x285e7
   28563:	6a 00                	push   $0x0
   28565:	6a 00                	push   $0x0
   28567:	8a 46 06             	mov    0x6(%bp),%al
   2856a:	50                   	push   %ax
   2856b:	a1 fd 3a             	mov    0x3afd,%ax
   2856e:	05 fe ff             	add    $0xfffe,%ax
   28571:	50                   	push   %ax
   28572:	a1 fb 3a             	mov    0x3afb,%ax
   28575:	05 fc ff             	add    $0xfffc,%ax
   28578:	50                   	push   %ax
   28579:	ff 76 0a             	push   0xa(%bp)
   2857c:	ff 76 08             	push   0x8(%bp)
   2857f:	a1 e4 b3             	mov    0xb3e4,%ax
   28582:	f7 d8                	neg    %ax
   28584:	0b c0                	or     %ax,%ax
   28586:	7d 04                	jge    0x2858c
   28588:	33 c0                	xor    %ax,%ax
   2858a:	eb 05                	jmp    0x28591
   2858c:	a1 e4 b3             	mov    0xb3e4,%ax
   2858f:	f7 d8                	neg    %ax
   28591:	8b 16 01 3b          	mov    0x3b01,%dx
   28595:	83 c2 fc             	add    $0xfffc,%dx
   28598:	2b d0                	sub    %ax,%dx
   2859a:	52                   	push   %dx
   2859b:	a1 e6 b3             	mov    0xb3e6,%ax
   2859e:	f7 d8                	neg    %ax
   285a0:	0b c0                	or     %ax,%ax
   285a2:	7d 04                	jge    0x285a8
   285a4:	33 c0                	xor    %ax,%ax
   285a6:	eb 05                	jmp    0x285ad
   285a8:	a1 e6 b3             	mov    0xb3e6,%ax
   285ab:	f7 d8                	neg    %ax
   285ad:	8b 16 ff 3a          	mov    0x3aff,%dx
   285b1:	83 c2 f8             	add    $0xfff8,%dx
   285b4:	2b d0                	sub    %ax,%dx
   285b6:	52                   	push   %dx
   285b7:	a1 e4 b3             	mov    0xb3e4,%ax
   285ba:	f7 d8                	neg    %ax
   285bc:	0b c0                	or     %ax,%ax
   285be:	7d 04                	jge    0x285c4
   285c0:	33 c0                	xor    %ax,%ax
   285c2:	eb 05                	jmp    0x285c9
   285c4:	a1 e4 b3             	mov    0xb3e4,%ax
   285c7:	f7 d8                	neg    %ax
   285c9:	50                   	push   %ax
   285ca:	a1 e6 b3             	mov    0xb3e6,%ax
   285cd:	f7 d8                	neg    %ax
   285cf:	0b c0                	or     %ax,%ax
   285d1:	7d 04                	jge    0x285d7
   285d3:	33 c0                	xor    %ax,%ax
   285d5:	eb 05                	jmp    0x285dc
   285d7:	a1 e6 b3             	mov    0xb3e6,%ax
   285da:	f7 d8                	neg    %ax
   285dc:	50                   	push   %ax
   285dd:	9a 5a 0c 28 00       	lcall  $0x28,$0xc5a
   285e2:	83 c4 16             	add    $0x16,%sp
   285e5:	eb 2c                	jmp    0x28613
   285e7:	68 e0 01             	push   $0x1e0
   285ea:	68 d0 02             	push   $0x2d0
   285ed:	6a 00                	push   $0x0
   285ef:	8a 46 06             	mov    0x6(%bp),%al
   285f2:	50                   	push   %ax
   285f3:	ff 76 0a             	push   0xa(%bp)
   285f6:	ff 76 08             	push   0x8(%bp)
   285f9:	a1 fd 3a             	mov    0x3afd,%ax
   285fc:	05 fe ff             	add    $0xfffe,%ax
   285ff:	50                   	push   %ax
   28600:	a1 fb 3a             	mov    0x3afb,%ax
   28603:	05 fc ff             	add    $0xfffc,%ax
   28606:	50                   	push   %ax
   28607:	6a 00                	push   $0x0
   28609:	6a 00                	push   $0x0
   2860b:	9a 30 04 28 00       	lcall  $0x28,$0x430
   28610:	83 c4 14             	add    $0x14,%sp
   28613:	68 e0 01             	push   $0x1e0
   28616:	68 41 03             	push   $0x341
   28619:	6a 00                	push   $0x0
   2861b:	6a 15                	push   $0x15
   2861d:	68 9c 00             	push   $0x9c
   28620:	68 90 00             	push   $0x90
   28623:	6a 28                	push   $0x28
   28625:	6a 2f                	push   $0x2f
   28627:	a0 f0 b9             	mov    0xb9f0,%al
   2862a:	b4 00                	mov    $0x0,%ah
   2862c:	bb 04 00             	mov    $0x4,%bx
   2862f:	99                   	cwtd
   28630:	f7 fb                	idiv   %bx
   28632:	bb 02 00             	mov    $0x2,%bx
   28635:	8b c2                	mov    %dx,%ax
   28637:	99                   	cwtd
   28638:	f7 fb                	idiv   %bx
   2863a:	6b c0 28             	imul   $0x28,%ax,%ax
   2863d:	50                   	push   %ax
   2863e:	a0 f0 b9             	mov    0xb9f0,%al
   28641:	b4 00                	mov    $0x0,%ah
   28643:	bb 02 00             	mov    $0x2,%bx
   28646:	99                   	cwtd
   28647:	f7 fb                	idiv   %bx
   28649:	6b d2 2f             	imul   $0x2f,%dx,%dx
   2864c:	52                   	push   %dx
   2864d:	9a 30 04 28 00       	lcall  $0x28,$0x430
   28652:	83 c4 14             	add    $0x14,%sp
   28655:	68 18 01             	push   $0x118
   28658:	68 84 00             	push   $0x84
   2865b:	9a a1 04 30 00       	lcall  $0x30,$0x4a1
   28660:	83 c4 04             	add    $0x4,%sp
   28663:	5d                   	pop    %bp
   28664:	cb                   	lret
