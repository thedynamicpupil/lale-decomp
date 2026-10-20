
analysis/phase-five/character-ui-20261015/otopark/overlay1662-original.bin:     file format binary


Disassembly of section .data:

00028430 <.data>:
   28430:	55                   	push   bp
   28431:	8b ec                	mov    bp,sp
   28433:	83 ec 02             	sub    sp,0x2
   28436:	b8 88 01             	mov    ax,0x188
   28439:	8e c0                	mov    es,ax
   2843b:	26 f7 06 5e 3d 20 00 	test   WORD PTR es:0x3d5e,0x20
   28442:	75 03                	jne    0x28447
   28444:	e9 8f 00             	jmp    0x284d6
   28447:	c7 46 fe 44 00       	mov    WORD PTR [bp-0x2],0x44
   2844c:	eb 77                	jmp    0x284c5
   2844e:	83 7e fe 24          	cmp    WORD PTR [bp-0x2],0x24
   28452:	7c 36                	jl     0x2848a
   28454:	83 7e fe 40          	cmp    WORD PTR [bp-0x2],0x40
   28458:	7d 30                	jge    0x2848a
   2845a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2845d:	6b db 0d             	imul   bx,bx,0xd
   28460:	b8 88 01             	mov    ax,0x188
   28463:	8e c0                	mov    es,ax
   28465:	26 8a 87 44 29       	mov    al,BYTE PTR es:[bx+0x2944]
   2846a:	98                   	cbw
   2846b:	0b c0                	or     ax,ax
   2846d:	75 1b                	jne    0x2848a
   2846f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   28472:	c1 e3 03             	shl    bx,0x3
   28475:	b8 88 01             	mov    ax,0x188
   28478:	8e c0                	mov    es,ax
   2847a:	26 c7 87 a1 e2 00 00 	mov    WORD PTR es:[bx-0x1d5f],0x0
   28481:	26 c7 87 9f e2 00 00 	mov    WORD PTR es:[bx-0x1d61],0x0
   28488:	eb 38                	jmp    0x284c2
   2848a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2848d:	c1 e3 03             	shl    bx,0x3
   28490:	b8 88 01             	mov    ax,0x188
   28493:	8e c0                	mov    es,ax
   28495:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
   2849a:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
   2849f:	74 21                	je     0x284c2
   284a1:	83 7e fe 15          	cmp    WORD PTR [bp-0x2],0x15
   284a5:	74 1b                	je     0x284c2
   284a7:	1e                   	push   ds
   284a8:	68 0d 3b             	push   0x3b0d
   284ab:	6a 7b                	push   0x7b
   284ad:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   284b0:	c1 e0 03             	shl    ax,0x3
   284b3:	05 9f e2             	add    ax,0xe29f
   284b6:	68 88 01             	push   0x188
   284b9:	50                   	push   ax
   284ba:	9a 2f 02 40 00       	call   0x40:0x22f
   284bf:	83 c4 0a             	add    sp,0xa
   284c2:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   284c5:	83 7e fe 14          	cmp    WORD PTR [bp-0x2],0x14
   284c9:	7f 83                	jg     0x2844e
   284cb:	b8 88 01             	mov    ax,0x188
   284ce:	8e c0                	mov    es,ax
   284d0:	26 83 26 5e 3d df    	and    WORD PTR es:0x3d5e,0xffdf
   284d6:	c9                   	leave
   284d7:	cb                   	retf
   284d8:	55                   	push   bp
   284d9:	8b ec                	mov    bp,sp
   284db:	9a b9 1e 10 00       	call   0x10:0x1eb9
   284e0:	6a 0e                	push   0xe
   284e2:	9a c7 05 30 00       	call   0x30:0x5c7
   284e7:	59                   	pop    cx
   284e8:	0a c0                	or     al,al
   284ea:	74 05                	je     0x284f1
   284ec:	9a 04 02 30 00       	call   0x30:0x204
   284f1:	81 3e fb 3a c8 00    	cmp    WORD PTR ds:0x3afb,0xc8
   284f7:	75 55                	jne    0x2854e
   284f9:	81 3e ff 3a c8 00    	cmp    WORD PTR ds:0x3aff,0xc8
   284ff:	75 4d                	jne    0x2854e
   28501:	68 e0 01             	push   0x1e0
   28504:	68 d0 02             	push   0x2d0
   28507:	6a 00                	push   0x0
   28509:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2850c:	50                   	push   ax
   2850d:	6a 04                	push   0x4
   2850f:	6a 05                	push   0x5
   28511:	a1 01 3b             	mov    ax,ds:0x3b01
   28514:	05 f8 ff             	add    ax,0xfff8
   28517:	50                   	push   ax
   28518:	a1 ff 3a             	mov    ax,ds:0x3aff
   2851b:	05 f2 ff             	add    ax,0xfff2
   2851e:	50                   	push   ax
   2851f:	a1 e4 b3             	mov    ax,ds:0xb3e4
   28522:	f7 d8                	neg    ax
   28524:	0b c0                	or     ax,ax
   28526:	7e 04                	jle    0x2852c
   28528:	33 c0                	xor    ax,ax
   2852a:	eb 05                	jmp    0x28531
   2852c:	a1 e4 b3             	mov    ax,ds:0xb3e4
   2852f:	f7 d8                	neg    ax
   28531:	05 04 00             	add    ax,0x4
   28534:	50                   	push   ax
   28535:	a1 e6 b3             	mov    ax,ds:0xb3e6
   28538:	f7 d8                	neg    ax
   2853a:	0b c0                	or     ax,ax
   2853c:	7e 04                	jle    0x28542
   2853e:	33 c0                	xor    ax,ax
   28540:	eb 05                	jmp    0x28547
   28542:	a1 e6 b3             	mov    ax,ds:0xb3e6
   28545:	f7 d8                	neg    ax
   28547:	05 07 00             	add    ax,0x7
   2854a:	50                   	push   ax
   2854b:	e9 bd 00             	jmp    0x2860b
   2854e:	83 3e fb 3a 64       	cmp    WORD PTR ds:0x3afb,0x64
   28553:	74 03                	je     0x28558
   28555:	e9 8f 00             	jmp    0x285e7
   28558:	81 3e ff 3a c8 00    	cmp    WORD PTR ds:0x3aff,0xc8
   2855e:	74 03                	je     0x28563
   28560:	e9 84 00             	jmp    0x285e7
   28563:	6a 00                	push   0x0
   28565:	6a 00                	push   0x0
   28567:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2856a:	50                   	push   ax
   2856b:	a1 fd 3a             	mov    ax,ds:0x3afd
   2856e:	05 fe ff             	add    ax,0xfffe
   28571:	50                   	push   ax
   28572:	a1 fb 3a             	mov    ax,ds:0x3afb
   28575:	05 fc ff             	add    ax,0xfffc
   28578:	50                   	push   ax
   28579:	ff 76 0a             	push   WORD PTR [bp+0xa]
   2857c:	ff 76 08             	push   WORD PTR [bp+0x8]
   2857f:	a1 e4 b3             	mov    ax,ds:0xb3e4
   28582:	f7 d8                	neg    ax
   28584:	0b c0                	or     ax,ax
   28586:	7d 04                	jge    0x2858c
   28588:	33 c0                	xor    ax,ax
   2858a:	eb 05                	jmp    0x28591
   2858c:	a1 e4 b3             	mov    ax,ds:0xb3e4
   2858f:	f7 d8                	neg    ax
   28591:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   28595:	83 c2 fc             	add    dx,0xfffc
   28598:	2b d0                	sub    dx,ax
   2859a:	52                   	push   dx
   2859b:	a1 e6 b3             	mov    ax,ds:0xb3e6
   2859e:	f7 d8                	neg    ax
   285a0:	0b c0                	or     ax,ax
   285a2:	7d 04                	jge    0x285a8
   285a4:	33 c0                	xor    ax,ax
   285a6:	eb 05                	jmp    0x285ad
   285a8:	a1 e6 b3             	mov    ax,ds:0xb3e6
   285ab:	f7 d8                	neg    ax
   285ad:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   285b1:	83 c2 f8             	add    dx,0xfff8
   285b4:	2b d0                	sub    dx,ax
   285b6:	52                   	push   dx
   285b7:	a1 e4 b3             	mov    ax,ds:0xb3e4
   285ba:	f7 d8                	neg    ax
   285bc:	0b c0                	or     ax,ax
   285be:	7d 04                	jge    0x285c4
   285c0:	33 c0                	xor    ax,ax
   285c2:	eb 05                	jmp    0x285c9
   285c4:	a1 e4 b3             	mov    ax,ds:0xb3e4
   285c7:	f7 d8                	neg    ax
   285c9:	50                   	push   ax
   285ca:	a1 e6 b3             	mov    ax,ds:0xb3e6
   285cd:	f7 d8                	neg    ax
   285cf:	0b c0                	or     ax,ax
   285d1:	7d 04                	jge    0x285d7
   285d3:	33 c0                	xor    ax,ax
   285d5:	eb 05                	jmp    0x285dc
   285d7:	a1 e6 b3             	mov    ax,ds:0xb3e6
   285da:	f7 d8                	neg    ax
   285dc:	50                   	push   ax
   285dd:	9a 5a 0c 28 00       	call   0x28:0xc5a
   285e2:	83 c4 16             	add    sp,0x16
   285e5:	eb 2c                	jmp    0x28613
   285e7:	68 e0 01             	push   0x1e0
   285ea:	68 d0 02             	push   0x2d0
   285ed:	6a 00                	push   0x0
   285ef:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   285f2:	50                   	push   ax
   285f3:	ff 76 0a             	push   WORD PTR [bp+0xa]
   285f6:	ff 76 08             	push   WORD PTR [bp+0x8]
   285f9:	a1 fd 3a             	mov    ax,ds:0x3afd
   285fc:	05 fe ff             	add    ax,0xfffe
   285ff:	50                   	push   ax
   28600:	a1 fb 3a             	mov    ax,ds:0x3afb
   28603:	05 fc ff             	add    ax,0xfffc
   28606:	50                   	push   ax
   28607:	6a 00                	push   0x0
   28609:	6a 00                	push   0x0
   2860b:	9a 30 04 28 00       	call   0x28:0x430
   28610:	83 c4 14             	add    sp,0x14
   28613:	68 e0 01             	push   0x1e0
   28616:	68 41 03             	push   0x341
   28619:	6a 00                	push   0x0
   2861b:	6a 15                	push   0x15
   2861d:	68 9c 00             	push   0x9c
   28620:	68 90 00             	push   0x90
   28623:	6a 28                	push   0x28
   28625:	6a 2f                	push   0x2f
   28627:	a0 f0 b9             	mov    al,ds:0xb9f0
   2862a:	b4 00                	mov    ah,0x0
   2862c:	bb 04 00             	mov    bx,0x4
   2862f:	99                   	cwd
   28630:	f7 fb                	idiv   bx
   28632:	bb 02 00             	mov    bx,0x2
   28635:	8b c2                	mov    ax,dx
   28637:	99                   	cwd
   28638:	f7 fb                	idiv   bx
   2863a:	6b c0 28             	imul   ax,ax,0x28
   2863d:	50                   	push   ax
   2863e:	a0 f0 b9             	mov    al,ds:0xb9f0
   28641:	b4 00                	mov    ah,0x0
   28643:	bb 02 00             	mov    bx,0x2
   28646:	99                   	cwd
   28647:	f7 fb                	idiv   bx
   28649:	6b d2 2f             	imul   dx,dx,0x2f
   2864c:	52                   	push   dx
   2864d:	9a 30 04 28 00       	call   0x28:0x430
   28652:	83 c4 14             	add    sp,0x14
   28655:	68 18 01             	push   0x118
   28658:	68 84 00             	push   0x84
   2865b:	9a a1 04 30 00       	call   0x30:0x4a1
   28660:	83 c4 04             	add    sp,0x4
   28663:	5d                   	pop    bp
   28664:	cb                   	retf
   28665:	55                   	push   bp
   28666:	8b ec                	mov    bp,sp
   28668:	a0 f0 b9             	mov    al,ds:0xb9f0
   2866b:	b4 00                	mov    ah,0x0
   2866d:	bb 04 00             	mov    bx,0x4
   28670:	99                   	cwd
   28671:	f7 fb                	idiv   bx
   28673:	88 16 f0 b9          	mov    BYTE PTR ds:0xb9f0,dl
   28677:	8a c2                	mov    al,dl
   28679:	b4 00                	mov    ah,0x0
   2867b:	8b d8                	mov    bx,ax
   2867d:	83 fb 03             	cmp    bx,0x3
   28680:	77 3f                	ja     0x286c1
   28682:	d1 e3                	shl    bx,1
   28684:	2e ff a7 a8 02       	jmp    WORD PTR cs:[bx+0x2a8]
   28689:	c7 06 c6 b9 00 00    	mov    WORD PTR ds:0xb9c6,0x0
   2868f:	c7 06 c4 b9 ff ff    	mov    WORD PTR ds:0xb9c4,0xffff
   28695:	eb 3f                	jmp    0x286d6
   28697:	c7 06 c4 b9 00 00    	mov    WORD PTR ds:0xb9c4,0x0
   2869d:	c7 06 c6 b9 01 00    	mov    WORD PTR ds:0xb9c6,0x1
   286a3:	eb 31                	jmp    0x286d6
   286a5:	c7 06 c6 b9 00 00    	mov    WORD PTR ds:0xb9c6,0x0
   286ab:	c7 06 c4 b9 01 00    	mov    WORD PTR ds:0xb9c4,0x1
   286b1:	eb 23                	jmp    0x286d6
   286b3:	c7 06 c4 b9 00 00    	mov    WORD PTR ds:0xb9c4,0x0
   286b9:	c7 06 c6 b9 ff ff    	mov    WORD PTR ds:0xb9c6,0xffff
   286bf:	eb 15                	jmp    0x286d6
   286c1:	6a 4f                	push   0x4f
   286c3:	6a 00                	push   0x0
   286c5:	6a 00                	push   0x0
   286c7:	68 f5 00             	push   0xf5
   286ca:	1e                   	push   ds
   286cb:	68 1f 3b             	push   0x3b1f
   286ce:	9a 2a 00 58 01       	call   0x158:0x2a
   286d3:	83 c4 0c             	add    sp,0xc
   286d6:	5d                   	pop    bp
   286d7:	cb                   	retf
   286d8:	59                   	pop    cx
   286d9:	02 67 02             	add    ah,BYTE PTR [bx+0x2]
   286dc:	75 02                	jne    0x286e0
   286de:	83 02 55             	add    WORD PTR [bp+si],0x55
   286e1:	8b ec                	mov    bp,sp
   286e3:	cd 35                	int    0x35
   286e5:	46                   	inc    si
   286e6:	08 cd                	or     ch,cl
   286e8:	34 06                	xor    al,0x6
   286ea:	31 3b                	xor    WORD PTR [bp+di],di
   286ec:	9a 99 10 00 00       	call   0x0:0x1099
   286f1:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   286f4:	6b d2 12             	imul   dx,dx,0x12
   286f7:	c4 5e 18             	les    bx,DWORD PTR [bp+0x18]
   286fa:	03 da                	add    bx,dx
   286fc:	26 89 07             	mov    WORD PTR es:[bx],ax
   286ff:	cd 35                	int    0x35
   28701:	46                   	inc    si
   28702:	0c cd                	or     al,0xcd
   28704:	34 06                	xor    al,0x6
   28706:	31 3b                	xor    WORD PTR [bp+di],di
   28708:	9a 99 10 00 00       	call   0x0:0x1099
   2870d:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   28710:	6b d2 12             	imul   dx,dx,0x12
   28713:	c4 5e 18             	les    bx,DWORD PTR [bp+0x18]
   28716:	03 da                	add    bx,dx
   28718:	26 89 47 02          	mov    WORD PTR es:[bx+0x2],ax
   2871c:	cd 35                	int    0x35
   2871e:	46                   	inc    si
   2871f:	10 cd                	adc    ch,cl
   28721:	34 06                	xor    al,0x6
   28723:	31 3b                	xor    WORD PTR [bp+di],di
   28725:	9a 99 10 00 00       	call   0x0:0x1099
   2872a:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   2872d:	6b d2 12             	imul   dx,dx,0x12
   28730:	c4 5e 18             	les    bx,DWORD PTR [bp+0x18]
   28733:	03 da                	add    bx,dx
   28735:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   28739:	cd 35                	int    0x35
   2873b:	46                   	inc    si
   2873c:	14 cd                	adc    al,0xcd
   2873e:	34 06                	xor    al,0x6
   28740:	31 3b                	xor    WORD PTR [bp+di],di
   28742:	9a 99 10 00 00       	call   0x0:0x1099
   28747:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   2874a:	6b d2 12             	imul   dx,dx,0x12
   2874d:	c4 5e 18             	les    bx,DWORD PTR [bp+0x18]
   28750:	03 da                	add    bx,dx
   28752:	26 89 47 06          	mov    WORD PTR es:[bx+0x6],ax
   28756:	5d                   	pop    bp
   28757:	cb                   	retf
   28758:	55                   	push   bp
   28759:	8b ec                	mov    bp,sp
   2875b:	83 ec 0c             	sub    sp,0xc
   2875e:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   28761:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   28764:	cd 3b                	int    0x3b
   28766:	46                   	inc    si
   28767:	f4                   	hlt
   28768:	cd 34                	int    0x34
   2876a:	36 35 3b cd          	ss xor ax,0xcd3b
   2876e:	35 5e fa             	xor    ax,0xfa5e
   28771:	cd 3d                	int    0x3d
   28773:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   28776:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   28779:	cd 3b                	int    0x3b
   2877b:	46                   	inc    si
   2877c:	f4                   	hlt
   2877d:	cd 34                	int    0x34
   2877f:	36 35 3b cd          	ss xor ax,0xcd3b
   28783:	35 5e f6             	xor    ax,0xf65e
   28786:	cd 3d                	int    0x3d
   28788:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2878d:	eb 5e                	jmp    0x287ed
   2878f:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28792:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28795:	cd 35                	int    0x35
   28797:	06                   	push   es
   28798:	39 3b                	cmp    WORD PTR [bp+di],di
   2879a:	cd 34                	int    0x34
   2879c:	4e                   	dec    si
   2879d:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   287a2:	35 5e ec             	xor    ax,0xec5e
   287a5:	cd 35                	int    0x35
   287a7:	06                   	push   es
   287a8:	39 3b                	cmp    WORD PTR [bp+di],di
   287aa:	cd 34                	int    0x34
   287ac:	4e                   	dec    si
   287ad:	fa                   	cli
   287ae:	83 ec 04             	sub    sp,0x4
   287b1:	cd 35                	int    0x35
   287b3:	5e                   	pop    si
   287b4:	e8 cd 35             	call   0x2bd84
   287b7:	06                   	push   es
   287b8:	3d 3b cd             	cmp    ax,0xcd3b
   287bb:	34 4e                	xor    al,0x4e
   287bd:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   287c2:	35 5e e4             	xor    ax,0xe45e
   287c5:	cd 3d                	int    0x3d
   287c7:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   287ca:	d1 e0                	shl    ax,1
   287cc:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   287cf:	cd 3b                	int    0x3b
   287d1:	46                   	inc    si
   287d2:	f4                   	hlt
   287d3:	cd 34                	int    0x34
   287d5:	4e                   	dec    si
   287d6:	fa                   	cli
   287d7:	83 ec 04             	sub    sp,0x4
   287da:	cd 35                	int    0x35
   287dc:	5e                   	pop    si
   287dd:	e0 cd                	loopne 0x287ac
   287df:	3d ff 76             	cmp    ax,0x76ff
   287e2:	fe 0e e8 f9          	dec    BYTE PTR ds:0xf9e8
   287e6:	fe 83 c4 16          	inc    BYTE PTR [bp+di+0x16c4]
   287ea:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   287ed:	83 7e fe 07          	cmp    WORD PTR [bp-0x2],0x7
   287f1:	7c 9c                	jl     0x2878f
   287f3:	ff 76 0c             	push   WORD PTR [bp+0xc]
   287f6:	ff 76 0a             	push   WORD PTR [bp+0xa]
   287f9:	cd 35                	int    0x35
   287fb:	46                   	inc    si
   287fc:	f6 cd 38             	test   ch,0x38
   287ff:	0e                   	push   cs
   28800:	41                   	inc    cx
   28801:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28805:	cd 35                	int    0x35
   28807:	5e                   	pop    si
   28808:	ec                   	in     al,dx
   28809:	cd 35                	int    0x35
   2880b:	06                   	push   es
   2880c:	39 3b                	cmp    WORD PTR [bp+di],di
   2880e:	cd 34                	int    0x34
   28810:	4e                   	dec    si
   28811:	fa                   	cli
   28812:	83 ec 04             	sub    sp,0x4
   28815:	cd 35                	int    0x35
   28817:	5e                   	pop    si
   28818:	e8 cd 35             	call   0x2bde8
   2881b:	46                   	inc    si
   2881c:	f6 cd 38             	test   ch,0x38
   2881f:	0e                   	push   cs
   28820:	49                   	dec    cx
   28821:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28825:	cd 35                	int    0x35
   28827:	5e                   	pop    si
   28828:	e4 cd                	in     al,0xcd
   2882a:	35 ee cd             	xor    ax,0xcdee
   2882d:	3d 83 ec             	cmp    ax,0xec83
   28830:	04 cd                	add    al,0xcd
   28832:	35 5e e0             	xor    ax,0xe05e
   28835:	6a 07                	push   0x7
   28837:	cd 3d                	int    0x3d
   28839:	0e                   	push   cs
   2883a:	e8 a3 fe             	call   0x286e0
   2883d:	83 c4 16             	add    sp,0x16
   28840:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28843:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28846:	cd 35                	int    0x35
   28848:	46                   	inc    si
   28849:	f6 cd 38             	test   ch,0x38
   2884c:	0e                   	push   cs
   2884d:	41                   	inc    cx
   2884e:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28852:	cd 35                	int    0x35
   28854:	5e                   	pop    si
   28855:	ec                   	in     al,dx
   28856:	cd 35                	int    0x35
   28858:	06                   	push   es
   28859:	39 3b                	cmp    WORD PTR [bp+di],di
   2885b:	cd 34                	int    0x34
   2885d:	4e                   	dec    si
   2885e:	fa                   	cli
   2885f:	83 ec 04             	sub    sp,0x4
   28862:	cd 35                	int    0x35
   28864:	5e                   	pop    si
   28865:	e8 cd 35             	call   0x2be35
   28868:	46                   	inc    si
   28869:	f6 cd 38             	test   ch,0x38
   2886c:	0e                   	push   cs
   2886d:	49                   	dec    cx
   2886e:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28872:	cd 35                	int    0x35
   28874:	5e                   	pop    si
   28875:	e4 cd                	in     al,0xcd
   28877:	35 06 51             	xor    ax,0x5106
   2887a:	3b cd                	cmp    cx,bp
   2887c:	34 4e                	xor    al,0x4e
   2887e:	fa                   	cli
   2887f:	83 ec 04             	sub    sp,0x4
   28882:	cd 35                	int    0x35
   28884:	5e                   	pop    si
   28885:	e0 6a                	loopne 0x288f1
   28887:	0c cd                	or     al,0xcd
   28889:	3d 0e e8             	cmp    ax,0xe80e
   2888c:	52                   	push   dx
   2888d:	fe 83 c4 16          	inc    BYTE PTR [bp+di+0x16c4]
   28891:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28894:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28897:	cd 35                	int    0x35
   28899:	46                   	inc    si
   2889a:	f6 cd 38             	test   ch,0x38
   2889d:	0e                   	push   cs
   2889e:	55                   	push   bp
   2889f:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   288a3:	cd 35                	int    0x35
   288a5:	5e                   	pop    si
   288a6:	ec                   	in     al,dx
   288a7:	cd 35                	int    0x35
   288a9:	06                   	push   es
   288aa:	39 3b                	cmp    WORD PTR [bp+di],di
   288ac:	cd 34                	int    0x34
   288ae:	4e                   	dec    si
   288af:	fa                   	cli
   288b0:	83 ec 04             	sub    sp,0x4
   288b3:	cd 35                	int    0x35
   288b5:	5e                   	pop    si
   288b6:	e8 cd 35             	call   0x2be86
   288b9:	46                   	inc    si
   288ba:	f6 cd 38             	test   ch,0x38
   288bd:	0e                   	push   cs
   288be:	5d                   	pop    bp
   288bf:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   288c3:	cd 35                	int    0x35
   288c5:	5e                   	pop    si
   288c6:	e4 cd                	in     al,0xcd
   288c8:	35 06 39             	xor    ax,0x3906
   288cb:	3b cd                	cmp    cx,bp
   288cd:	34 4e                	xor    al,0x4e
   288cf:	fa                   	cli
   288d0:	83 ec 04             	sub    sp,0x4
   288d3:	cd 35                	int    0x35
   288d5:	5e                   	pop    si
   288d6:	e0 6a                	loopne 0x28942
   288d8:	08 cd                	or     ch,cl
   288da:	3d 0e e8             	cmp    ax,0xe80e
   288dd:	01 fe                	add    si,di
   288df:	83 c4 16             	add    sp,0x16
   288e2:	ff 76 0c             	push   WORD PTR [bp+0xc]
   288e5:	ff 76 0a             	push   WORD PTR [bp+0xa]
   288e8:	cd 35                	int    0x35
   288ea:	46                   	inc    si
   288eb:	f6 cd 38             	test   ch,0x38
   288ee:	0e                   	push   cs
   288ef:	55                   	push   bp
   288f0:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   288f4:	cd 35                	int    0x35
   288f6:	5e                   	pop    si
   288f7:	ec                   	in     al,dx
   288f8:	cd 35                	int    0x35
   288fa:	06                   	push   es
   288fb:	39 3b                	cmp    WORD PTR [bp+di],di
   288fd:	cd 34                	int    0x34
   288ff:	4e                   	dec    si
   28900:	fa                   	cli
   28901:	83 ec 04             	sub    sp,0x4
   28904:	cd 35                	int    0x35
   28906:	5e                   	pop    si
   28907:	e8 cd 35             	call   0x2bed7
   2890a:	46                   	inc    si
   2890b:	f6 cd 38             	test   ch,0x38
   2890e:	0e                   	push   cs
   2890f:	5d                   	pop    bp
   28910:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28914:	cd 35                	int    0x35
   28916:	5e                   	pop    si
   28917:	e4 cd                	in     al,0xcd
   28919:	35 06 65             	xor    ax,0x6506
   2891c:	3b cd                	cmp    cx,bp
   2891e:	34 4e                	xor    al,0x4e
   28920:	fa                   	cli
   28921:	83 ec 04             	sub    sp,0x4
   28924:	cd 35                	int    0x35
   28926:	5e                   	pop    si
   28927:	e0 6a                	loopne 0x28993
   28929:	0b cd                	or     cx,bp
   2892b:	3d 0e e8             	cmp    ax,0xe80e
   2892e:	b0 fd                	mov    al,0xfd
   28930:	83 c4 16             	add    sp,0x16
   28933:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28936:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28939:	cd 35                	int    0x35
   2893b:	46                   	inc    si
   2893c:	f6 cd 38             	test   ch,0x38
   2893f:	0e                   	push   cs
   28940:	55                   	push   bp
   28941:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28945:	cd 35                	int    0x35
   28947:	5e                   	pop    si
   28948:	ec                   	in     al,dx
   28949:	cd 35                	int    0x35
   2894b:	46                   	inc    si
   2894c:	fa                   	cli
   2894d:	cd 38                	int    0x38
   2894f:	0e                   	push   cs
   28950:	69 3b 83 ec          	imul   di,WORD PTR [bp+di],0xec83
   28954:	04 cd                	add    al,0xcd
   28956:	35 5e e8             	xor    ax,0xe85e
   28959:	cd 35                	int    0x35
   2895b:	46                   	inc    si
   2895c:	f6 cd 38             	test   ch,0x38
   2895f:	0e                   	push   cs
   28960:	5d                   	pop    bp
   28961:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28965:	cd 35                	int    0x35
   28967:	5e                   	pop    si
   28968:	e4 cd                	in     al,0xcd
   2896a:	35 46 fa             	xor    ax,0xfa46
   2896d:	cd 38                	int    0x38
   2896f:	0e                   	push   cs
   28970:	5d                   	pop    bp
   28971:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28975:	cd 35                	int    0x35
   28977:	5e                   	pop    si
   28978:	e0 6a                	loopne 0x289e4
   2897a:	09 cd                	or     bp,cx
   2897c:	3d 0e e8             	cmp    ax,0xe80e
   2897f:	5f                   	pop    di
   28980:	fd                   	std
   28981:	83 c4 16             	add    sp,0x16
   28984:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28987:	ff 76 0a             	push   WORD PTR [bp+0xa]
   2898a:	cd 35                	int    0x35
   2898c:	46                   	inc    si
   2898d:	f6 cd 38             	test   ch,0x38
   28990:	0e                   	push   cs
   28991:	55                   	push   bp
   28992:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28996:	cd 35                	int    0x35
   28998:	5e                   	pop    si
   28999:	ec                   	in     al,dx
   2899a:	cd 35                	int    0x35
   2899c:	46                   	inc    si
   2899d:	fa                   	cli
   2899e:	cd 38                	int    0x38
   289a0:	0e                   	push   cs
   289a1:	69 3b 83 ec          	imul   di,WORD PTR [bp+di],0xec83
   289a5:	04 cd                	add    al,0xcd
   289a7:	35 5e e8             	xor    ax,0xe85e
   289aa:	cd 35                	int    0x35
   289ac:	46                   	inc    si
   289ad:	f6 cd 38             	test   ch,0x38
   289b0:	0e                   	push   cs
   289b1:	5d                   	pop    bp
   289b2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   289b6:	cd 35                	int    0x35
   289b8:	5e                   	pop    si
   289b9:	e4 cd                	in     al,0xcd
   289bb:	35 06 71             	xor    ax,0x7106
   289be:	3b cd                	cmp    cx,bp
   289c0:	34 4e                	xor    al,0x4e
   289c2:	fa                   	cli
   289c3:	83 ec 04             	sub    sp,0x4
   289c6:	cd 35                	int    0x35
   289c8:	5e                   	pop    si
   289c9:	e0 6a                	loopne 0x28a35
   289cb:	0a cd                	or     cl,ch
   289cd:	3d 0e e8             	cmp    ax,0xe80e
   289d0:	0e                   	push   cs
   289d1:	fd                   	std
   289d2:	83 c4 16             	add    sp,0x16
   289d5:	ff 76 0c             	push   WORD PTR [bp+0xc]
   289d8:	ff 76 0a             	push   WORD PTR [bp+0xa]
   289db:	cd 35                	int    0x35
   289dd:	46                   	inc    si
   289de:	f6 cd 38             	test   ch,0x38
   289e1:	0e                   	push   cs
   289e2:	55                   	push   bp
   289e3:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   289e7:	cd 35                	int    0x35
   289e9:	5e                   	pop    si
   289ea:	ec                   	in     al,dx
   289eb:	cd 35                	int    0x35
   289ed:	06                   	push   es
   289ee:	39 3b                	cmp    WORD PTR [bp+di],di
   289f0:	cd 34                	int    0x34
   289f2:	4e                   	dec    si
   289f3:	fa                   	cli
   289f4:	83 ec 04             	sub    sp,0x4
   289f7:	cd 35                	int    0x35
   289f9:	5e                   	pop    si
   289fa:	e8 cd 35             	call   0x2bfca
   289fd:	46                   	inc    si
   289fe:	f6 cd 38             	test   ch,0x38
   28a01:	0e                   	push   cs
   28a02:	5d                   	pop    bp
   28a03:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28a07:	cd 35                	int    0x35
   28a09:	5e                   	pop    si
   28a0a:	e4 cd                	in     al,0xcd
   28a0c:	35 ee cd             	xor    ax,0xcdee
   28a0f:	3d 83 ec             	cmp    ax,0xec83
   28a12:	04 cd                	add    al,0xcd
   28a14:	35 5e e0             	xor    ax,0xe05e
   28a17:	6a 0d                	push   0xd
   28a19:	cd 3d                	int    0x3d
   28a1b:	0e                   	push   cs
   28a1c:	e8 c1 fc             	call   0x286e0
   28a1f:	83 c4 16             	add    sp,0x16
   28a22:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28a25:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28a28:	cd 35                	int    0x35
   28a2a:	46                   	inc    si
   28a2b:	f6 cd 38             	test   ch,0x38
   28a2e:	0e                   	push   cs
   28a2f:	55                   	push   bp
   28a30:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28a34:	cd 35                	int    0x35
   28a36:	5e                   	pop    si
   28a37:	ec                   	in     al,dx
   28a38:	cd 35                	int    0x35
   28a3a:	46                   	inc    si
   28a3b:	fa                   	cli
   28a3c:	cd 38                	int    0x38
   28a3e:	0e                   	push   cs
   28a3f:	55                   	push   bp
   28a40:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28a44:	cd 35                	int    0x35
   28a46:	5e                   	pop    si
   28a47:	e8 cd 35             	call   0x2c017
   28a4a:	46                   	inc    si
   28a4b:	f6 cd 38             	test   ch,0x38
   28a4e:	0e                   	push   cs
   28a4f:	5d                   	pop    bp
   28a50:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28a54:	cd 35                	int    0x35
   28a56:	5e                   	pop    si
   28a57:	e4 cd                	in     al,0xcd
   28a59:	35 06 39             	xor    ax,0x3906
   28a5c:	3b cd                	cmp    cx,bp
   28a5e:	34 4e                	xor    al,0x4e
   28a60:	fa                   	cli
   28a61:	83 ec 04             	sub    sp,0x4
   28a64:	cd 35                	int    0x35
   28a66:	5e                   	pop    si
   28a67:	e0 6a                	loopne 0x28ad3
   28a69:	0e                   	push   cs
   28a6a:	cd 3d                	int    0x3d
   28a6c:	0e                   	push   cs
   28a6d:	e8 70 fc             	call   0x286e0
   28a70:	83 c4 16             	add    sp,0x16
   28a73:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28a76:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28a79:	cd 35                	int    0x35
   28a7b:	46                   	inc    si
   28a7c:	f6 cd 38             	test   ch,0x38
   28a7f:	0e                   	push   cs
   28a80:	55                   	push   bp
   28a81:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28a85:	cd 35                	int    0x35
   28a87:	5e                   	pop    si
   28a88:	ec                   	in     al,dx
   28a89:	cd 35                	int    0x35
   28a8b:	46                   	inc    si
   28a8c:	fa                   	cli
   28a8d:	cd 38                	int    0x38
   28a8f:	0e                   	push   cs
   28a90:	55                   	push   bp
   28a91:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28a95:	cd 35                	int    0x35
   28a97:	5e                   	pop    si
   28a98:	e8 cd 35             	call   0x2c068
   28a9b:	46                   	inc    si
   28a9c:	f6 cd 38             	test   ch,0x38
   28a9f:	0e                   	push   cs
   28aa0:	5d                   	pop    bp
   28aa1:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28aa5:	cd 35                	int    0x35
   28aa7:	5e                   	pop    si
   28aa8:	e4 cd                	in     al,0xcd
   28aaa:	35 46 fa             	xor    ax,0xfa46
   28aad:	cd 38                	int    0x38
   28aaf:	0e                   	push   cs
   28ab0:	5d                   	pop    bp
   28ab1:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28ab5:	cd 35                	int    0x35
   28ab7:	5e                   	pop    si
   28ab8:	e0 6a                	loopne 0x28b24
   28aba:	0f cd                	bswap  bp
   28abc:	3d 0e e8             	cmp    ax,0xe80e
   28abf:	1f                   	pop    ds
   28ac0:	fc                   	cld
   28ac1:	83 c4 16             	add    sp,0x16
   28ac4:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28ac7:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28aca:	cd 35                	int    0x35
   28acc:	46                   	inc    si
   28acd:	f6 cd 38             	test   ch,0x38
   28ad0:	0e                   	push   cs
   28ad1:	55                   	push   bp
   28ad2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28ad6:	cd 35                	int    0x35
   28ad8:	5e                   	pop    si
   28ad9:	ec                   	in     al,dx
   28ada:	cd 35                	int    0x35
   28adc:	46                   	inc    si
   28add:	fa                   	cli
   28ade:	cd 38                	int    0x38
   28ae0:	0e                   	push   cs
   28ae1:	55                   	push   bp
   28ae2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28ae6:	cd 35                	int    0x35
   28ae8:	5e                   	pop    si
   28ae9:	e8 cd 35             	call   0x2c0b9
   28aec:	46                   	inc    si
   28aed:	f6 cd 38             	test   ch,0x38
   28af0:	0e                   	push   cs
   28af1:	5d                   	pop    bp
   28af2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28af6:	cd 35                	int    0x35
   28af8:	5e                   	pop    si
   28af9:	e4 cd                	in     al,0xcd
   28afb:	35 46 fa             	xor    ax,0xfa46
   28afe:	cd 38                	int    0x38
   28b00:	0e                   	push   cs
   28b01:	75 3b                	jne    0x28b3e
   28b03:	83 ec 04             	sub    sp,0x4
   28b06:	cd 35                	int    0x35
   28b08:	5e                   	pop    si
   28b09:	e0 6a                	loopne 0x28b75
   28b0b:	10 cd                	adc    ch,cl
   28b0d:	3d 0e e8             	cmp    ax,0xe80e
   28b10:	ce                   	into
   28b11:	fb                   	sti
   28b12:	83 c4 16             	add    sp,0x16
   28b15:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28b18:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28b1b:	cd 35                	int    0x35
   28b1d:	46                   	inc    si
   28b1e:	f6 cd 38             	test   ch,0x38
   28b21:	0e                   	push   cs
   28b22:	55                   	push   bp
   28b23:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28b27:	cd 35                	int    0x35
   28b29:	5e                   	pop    si
   28b2a:	ec                   	in     al,dx
   28b2b:	cd 35                	int    0x35
   28b2d:	06                   	push   es
   28b2e:	39 3b                	cmp    WORD PTR [bp+di],di
   28b30:	cd 34                	int    0x34
   28b32:	4e                   	dec    si
   28b33:	fa                   	cli
   28b34:	83 ec 04             	sub    sp,0x4
   28b37:	cd 35                	int    0x35
   28b39:	5e                   	pop    si
   28b3a:	e8 cd 35             	call   0x2c10a
   28b3d:	46                   	inc    si
   28b3e:	f6 cd 38             	test   ch,0x38
   28b41:	0e                   	push   cs
   28b42:	5d                   	pop    bp
   28b43:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28b47:	cd 35                	int    0x35
   28b49:	5e                   	pop    si
   28b4a:	e4 cd                	in     al,0xcd
   28b4c:	35 06 51             	xor    ax,0x5106
   28b4f:	3b cd                	cmp    cx,bp
   28b51:	34 4e                	xor    al,0x4e
   28b53:	fa                   	cli
   28b54:	83 ec 04             	sub    sp,0x4
   28b57:	cd 35                	int    0x35
   28b59:	5e                   	pop    si
   28b5a:	e0 6a                	loopne 0x28bc6
   28b5c:	11 cd                	adc    bp,cx
   28b5e:	3d 0e e8             	cmp    ax,0xe80e
   28b61:	7d fb                	jge    0x28b5e
   28b63:	83 c4 16             	add    sp,0x16
   28b66:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28b69:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28b6c:	cd 35                	int    0x35
   28b6e:	46                   	inc    si
   28b6f:	f6 cd 38             	test   ch,0x38
   28b72:	0e                   	push   cs
   28b73:	7d 3b                	jge    0x28bb0
   28b75:	83 ec 04             	sub    sp,0x4
   28b78:	cd 35                	int    0x35
   28b7a:	5e                   	pop    si
   28b7b:	ec                   	in     al,dx
   28b7c:	cd 35                	int    0x35
   28b7e:	06                   	push   es
   28b7f:	39 3b                	cmp    WORD PTR [bp+di],di
   28b81:	cd 34                	int    0x34
   28b83:	4e                   	dec    si
   28b84:	fa                   	cli
   28b85:	83 ec 04             	sub    sp,0x4
   28b88:	cd 35                	int    0x35
   28b8a:	5e                   	pop    si
   28b8b:	e8 cd 35             	call   0x2c15b
   28b8e:	46                   	inc    si
   28b8f:	f6 cd 38             	test   ch,0x38
   28b92:	0e                   	push   cs
   28b93:	85 3b                	test   WORD PTR [bp+di],di
   28b95:	83 ec 04             	sub    sp,0x4
   28b98:	cd 35                	int    0x35
   28b9a:	5e                   	pop    si
   28b9b:	e4 cd                	in     al,0xcd
   28b9d:	35 ee cd             	xor    ax,0xcdee
   28ba0:	3d 83 ec             	cmp    ax,0xec83
   28ba3:	04 cd                	add    al,0xcd
   28ba5:	35 5e e0             	xor    ax,0xe05e
   28ba8:	6a 12                	push   0x12
   28baa:	cd 3d                	int    0x3d
   28bac:	0e                   	push   cs
   28bad:	e8 30 fb             	call   0x286e0
   28bb0:	83 c4 16             	add    sp,0x16
   28bb3:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28bb6:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28bb9:	cd 35                	int    0x35
   28bbb:	46                   	inc    si
   28bbc:	f6 cd 38             	test   ch,0x38
   28bbf:	0e                   	push   cs
   28bc0:	7d 3b                	jge    0x28bfd
   28bc2:	83 ec 04             	sub    sp,0x4
   28bc5:	cd 35                	int    0x35
   28bc7:	5e                   	pop    si
   28bc8:	ec                   	in     al,dx
   28bc9:	cd 35                	int    0x35
   28bcb:	06                   	push   es
   28bcc:	39 3b                	cmp    WORD PTR [bp+di],di
   28bce:	cd 34                	int    0x34
   28bd0:	4e                   	dec    si
   28bd1:	fa                   	cli
   28bd2:	83 ec 04             	sub    sp,0x4
   28bd5:	cd 35                	int    0x35
   28bd7:	5e                   	pop    si
   28bd8:	e8 cd 35             	call   0x2c1a8
   28bdb:	46                   	inc    si
   28bdc:	f6 cd 38             	test   ch,0x38
   28bdf:	0e                   	push   cs
   28be0:	85 3b                	test   WORD PTR [bp+di],di
   28be2:	83 ec 04             	sub    sp,0x4
   28be5:	cd 35                	int    0x35
   28be7:	5e                   	pop    si
   28be8:	e4 cd                	in     al,0xcd
   28bea:	35 06 51             	xor    ax,0x5106
   28bed:	3b cd                	cmp    cx,bp
   28bef:	34 4e                	xor    al,0x4e
   28bf1:	fa                   	cli
   28bf2:	83 ec 04             	sub    sp,0x4
   28bf5:	cd 35                	int    0x35
   28bf7:	5e                   	pop    si
   28bf8:	e0 6a                	loopne 0x28c64
   28bfa:	15 cd 3d             	adc    ax,0x3dcd
   28bfd:	0e                   	push   cs
   28bfe:	e8 df fa             	call   0x286e0
   28c01:	83 c4 16             	add    sp,0x16
   28c04:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28c07:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28c0a:	cd 35                	int    0x35
   28c0c:	46                   	inc    si
   28c0d:	f6 cd 38             	test   ch,0x38
   28c10:	0e                   	push   cs
   28c11:	8d 3b                	lea    di,[bp+di]
   28c13:	83 ec 04             	sub    sp,0x4
   28c16:	cd 35                	int    0x35
   28c18:	5e                   	pop    si
   28c19:	ec                   	in     al,dx
   28c1a:	cd 35                	int    0x35
   28c1c:	46                   	inc    si
   28c1d:	fa                   	cli
   28c1e:	cd 38                	int    0x38
   28c20:	0e                   	push   cs
   28c21:	95                   	xchg   bp,ax
   28c22:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28c26:	cd 35                	int    0x35
   28c28:	5e                   	pop    si
   28c29:	e8 cd 35             	call   0x2c1f9
   28c2c:	06                   	push   es
   28c2d:	39 3b                	cmp    WORD PTR [bp+di],di
   28c2f:	cd 34                	int    0x34
   28c31:	4e                   	dec    si
   28c32:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28c37:	35 5e e4             	xor    ax,0xe45e
   28c3a:	cd 35                	int    0x35
   28c3c:	06                   	push   es
   28c3d:	39 3b                	cmp    WORD PTR [bp+di],di
   28c3f:	cd 34                	int    0x34
   28c41:	4e                   	dec    si
   28c42:	fa                   	cli
   28c43:	83 ec 04             	sub    sp,0x4
   28c46:	cd 35                	int    0x35
   28c48:	5e                   	pop    si
   28c49:	e0 6a                	loopne 0x28cb5
   28c4b:	13 cd                	adc    cx,bp
   28c4d:	3d 0e e8             	cmp    ax,0xe80e
   28c50:	8e fa                	mov    ?,dx
   28c52:	83 c4 16             	add    sp,0x16
   28c55:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28c58:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28c5b:	cd 35                	int    0x35
   28c5d:	46                   	inc    si
   28c5e:	f6 cd 38             	test   ch,0x38
   28c61:	0e                   	push   cs
   28c62:	8d 3b                	lea    di,[bp+di]
   28c64:	83 ec 04             	sub    sp,0x4
   28c67:	cd 35                	int    0x35
   28c69:	5e                   	pop    si
   28c6a:	ec                   	in     al,dx
   28c6b:	cd 35                	int    0x35
   28c6d:	46                   	inc    si
   28c6e:	fa                   	cli
   28c6f:	cd 38                	int    0x38
   28c71:	0e                   	push   cs
   28c72:	95                   	xchg   bp,ax
   28c73:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28c77:	cd 35                	int    0x35
   28c79:	5e                   	pop    si
   28c7a:	e8 cd 35             	call   0x2c24a
   28c7d:	06                   	push   es
   28c7e:	39 3b                	cmp    WORD PTR [bp+di],di
   28c80:	cd 34                	int    0x34
   28c82:	4e                   	dec    si
   28c83:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28c88:	35 5e e4             	xor    ax,0xe45e
   28c8b:	cd 35                	int    0x35
   28c8d:	46                   	inc    si
   28c8e:	fa                   	cli
   28c8f:	cd 38                	int    0x38
   28c91:	0e                   	push   cs
   28c92:	75 3b                	jne    0x28ccf
   28c94:	83 ec 04             	sub    sp,0x4
   28c97:	cd 35                	int    0x35
   28c99:	5e                   	pop    si
   28c9a:	e0 6a                	loopne 0x28d06
   28c9c:	14 cd                	adc    al,0xcd
   28c9e:	3d 0e e8             	cmp    ax,0xe80e
   28ca1:	3d fa 83             	cmp    ax,0x83fa
   28ca4:	c4 16 ff 76          	les    dx,DWORD PTR ds:0x76ff
   28ca8:	0c ff                	or     al,0xff
   28caa:	76 0a                	jbe    0x28cb6
   28cac:	cd 35                	int    0x35
   28cae:	46                   	inc    si
   28caf:	f6 cd 38             	test   ch,0x38
   28cb2:	0e                   	push   cs
   28cb3:	8d 3b                	lea    di,[bp+di]
   28cb5:	83 ec 04             	sub    sp,0x4
   28cb8:	cd 35                	int    0x35
   28cba:	5e                   	pop    si
   28cbb:	ec                   	in     al,dx
   28cbc:	cd 35                	int    0x35
   28cbe:	06                   	push   es
   28cbf:	39 3b                	cmp    WORD PTR [bp+di],di
   28cc1:	cd 34                	int    0x34
   28cc3:	4e                   	dec    si
   28cc4:	fa                   	cli
   28cc5:	83 ec 04             	sub    sp,0x4
   28cc8:	cd 35                	int    0x35
   28cca:	5e                   	pop    si
   28ccb:	e8 cd 35             	call   0x2c29b
   28cce:	06                   	push   es
   28ccf:	39 3b                	cmp    WORD PTR [bp+di],di
   28cd1:	cd 34                	int    0x34
   28cd3:	4e                   	dec    si
   28cd4:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28cd9:	35 5e e4             	xor    ax,0xe45e
   28cdc:	cd 35                	int    0x35
   28cde:	ee                   	out    dx,al
   28cdf:	cd 3d                	int    0x3d
   28ce1:	83 ec 04             	sub    sp,0x4
   28ce4:	cd 35                	int    0x35
   28ce6:	5e                   	pop    si
   28ce7:	e0 6a                	loopne 0x28d53
   28ce9:	16                   	push   ss
   28cea:	cd 3d                	int    0x3d
   28cec:	0e                   	push   cs
   28ced:	e8 f0 f9             	call   0x286e0
   28cf0:	83 c4 16             	add    sp,0x16
   28cf3:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28cf6:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28cf9:	cd 35                	int    0x35
   28cfb:	46                   	inc    si
   28cfc:	f6 cd 38             	test   ch,0x38
   28cff:	0e                   	push   cs
   28d00:	8d 3b                	lea    di,[bp+di]
   28d02:	83 ec 04             	sub    sp,0x4
   28d05:	cd 35                	int    0x35
   28d07:	5e                   	pop    si
   28d08:	ec                   	in     al,dx
   28d09:	cd 35                	int    0x35
   28d0b:	46                   	inc    si
   28d0c:	fa                   	cli
   28d0d:	cd 38                	int    0x38
   28d0f:	0e                   	push   cs
   28d10:	8d 3b                	lea    di,[bp+di]
   28d12:	83 ec 04             	sub    sp,0x4
   28d15:	cd 35                	int    0x35
   28d17:	5e                   	pop    si
   28d18:	e8 cd 35             	call   0x2c2e8
   28d1b:	06                   	push   es
   28d1c:	39 3b                	cmp    WORD PTR [bp+di],di
   28d1e:	cd 34                	int    0x34
   28d20:	4e                   	dec    si
   28d21:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28d26:	35 5e e4             	xor    ax,0xe45e
   28d29:	cd 35                	int    0x35
   28d2b:	06                   	push   es
   28d2c:	39 3b                	cmp    WORD PTR [bp+di],di
   28d2e:	cd 34                	int    0x34
   28d30:	4e                   	dec    si
   28d31:	fa                   	cli
   28d32:	83 ec 04             	sub    sp,0x4
   28d35:	cd 35                	int    0x35
   28d37:	5e                   	pop    si
   28d38:	e0 6a                	loopne 0x28da4
   28d3a:	17                   	pop    ss
   28d3b:	cd 3d                	int    0x3d
   28d3d:	0e                   	push   cs
   28d3e:	e8 9f f9             	call   0x286e0
   28d41:	83 c4 16             	add    sp,0x16
   28d44:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28d47:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28d4a:	cd 35                	int    0x35
   28d4c:	46                   	inc    si
   28d4d:	f6 cd 38             	test   ch,0x38
   28d50:	0e                   	push   cs
   28d51:	8d 3b                	lea    di,[bp+di]
   28d53:	83 ec 04             	sub    sp,0x4
   28d56:	cd 35                	int    0x35
   28d58:	5e                   	pop    si
   28d59:	ec                   	in     al,dx
   28d5a:	cd 35                	int    0x35
   28d5c:	06                   	push   es
   28d5d:	39 3b                	cmp    WORD PTR [bp+di],di
   28d5f:	cd 34                	int    0x34
   28d61:	4e                   	dec    si
   28d62:	fa                   	cli
   28d63:	83 ec 04             	sub    sp,0x4
   28d66:	cd 35                	int    0x35
   28d68:	5e                   	pop    si
   28d69:	e8 cd 35             	call   0x2c339
   28d6c:	06                   	push   es
   28d6d:	39 3b                	cmp    WORD PTR [bp+di],di
   28d6f:	cd 34                	int    0x34
   28d71:	4e                   	dec    si
   28d72:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28d77:	35 5e e4             	xor    ax,0xe45e
   28d7a:	cd 35                	int    0x35
   28d7c:	06                   	push   es
   28d7d:	51                   	push   cx
   28d7e:	3b cd                	cmp    cx,bp
   28d80:	34 4e                	xor    al,0x4e
   28d82:	fa                   	cli
   28d83:	83 ec 04             	sub    sp,0x4
   28d86:	cd 35                	int    0x35
   28d88:	5e                   	pop    si
   28d89:	e0 6a                	loopne 0x28df5
   28d8b:	18 cd                	sbb    ch,cl
   28d8d:	3d 0e e8             	cmp    ax,0xe80e
   28d90:	4e                   	dec    si
   28d91:	f9                   	stc
   28d92:	83 c4 16             	add    sp,0x16
   28d95:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28d98:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28d9b:	cd 35                	int    0x35
   28d9d:	06                   	push   es
   28d9e:	35 3b cd             	xor    ax,0xcd3b
   28da1:	34 4e                	xor    al,0x4e
   28da3:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28da8:	35 5e ec             	xor    ax,0xec5e
   28dab:	cd 35                	int    0x35
   28dad:	06                   	push   es
   28dae:	39 3b                	cmp    WORD PTR [bp+di],di
   28db0:	cd 34                	int    0x34
   28db2:	4e                   	dec    si
   28db3:	fa                   	cli
   28db4:	83 ec 04             	sub    sp,0x4
   28db7:	cd 35                	int    0x35
   28db9:	5e                   	pop    si
   28dba:	e8 cd 35             	call   0x2c38a
   28dbd:	ee                   	out    dx,al
   28dbe:	cd 3d                	int    0x3d
   28dc0:	83 ec 04             	sub    sp,0x4
   28dc3:	cd 35                	int    0x35
   28dc5:	5e                   	pop    si
   28dc6:	e4 cd                	in     al,0xcd
   28dc8:	35 ee cd             	xor    ax,0xcdee
   28dcb:	3d 83 ec             	cmp    ax,0xec83
   28dce:	04 cd                	add    al,0xcd
   28dd0:	35 5e e0             	xor    ax,0xe05e
   28dd3:	6a 19                	push   0x19
   28dd5:	cd 3d                	int    0x3d
   28dd7:	0e                   	push   cs
   28dd8:	e8 05 f9             	call   0x286e0
   28ddb:	83 c4 16             	add    sp,0x16
   28dde:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28de1:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28de4:	cd 35                	int    0x35
   28de6:	06                   	push   es
   28de7:	35 3b cd             	xor    ax,0xcd3b
   28dea:	34 4e                	xor    al,0x4e
   28dec:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28df1:	35 5e ec             	xor    ax,0xec5e
   28df4:	cd 35                	int    0x35
   28df6:	06                   	push   es
   28df7:	39 3b                	cmp    WORD PTR [bp+di],di
   28df9:	cd 34                	int    0x34
   28dfb:	4e                   	dec    si
   28dfc:	fa                   	cli
   28dfd:	83 ec 04             	sub    sp,0x4
   28e00:	cd 35                	int    0x35
   28e02:	5e                   	pop    si
   28e03:	e8 cd 35             	call   0x2c3d3
   28e06:	ee                   	out    dx,al
   28e07:	cd 3d                	int    0x3d
   28e09:	83 ec 04             	sub    sp,0x4
   28e0c:	cd 35                	int    0x35
   28e0e:	5e                   	pop    si
   28e0f:	e4 cd                	in     al,0xcd
   28e11:	35 06 51             	xor    ax,0x5106
   28e14:	3b cd                	cmp    cx,bp
   28e16:	34 4e                	xor    al,0x4e
   28e18:	fa                   	cli
   28e19:	83 ec 04             	sub    sp,0x4
   28e1c:	cd 35                	int    0x35
   28e1e:	5e                   	pop    si
   28e1f:	e0 6a                	loopne 0x28e8b
   28e21:	1a cd                	sbb    cl,ch
   28e23:	3d 0e e8             	cmp    ax,0xe80e
   28e26:	b8 f8 83             	mov    ax,0x83f8
   28e29:	c4 16 ff 76          	les    dx,DWORD PTR ds:0x76ff
   28e2d:	0c ff                	or     al,0xff
   28e2f:	76 0a                	jbe    0x28e3b
   28e31:	cd 35                	int    0x35
   28e33:	46                   	inc    si
   28e34:	f6 cd 38             	test   ch,0x38
   28e37:	0e                   	push   cs
   28e38:	9d                   	popf
   28e39:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28e3d:	cd 35                	int    0x35
   28e3f:	5e                   	pop    si
   28e40:	ec                   	in     al,dx
   28e41:	cd 35                	int    0x35
   28e43:	46                   	inc    si
   28e44:	fa                   	cli
   28e45:	cd 38                	int    0x38
   28e47:	0e                   	push   cs
   28e48:	a5                   	movs   WORD PTR es:[di],WORD PTR ds:[si]
   28e49:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28e4d:	cd 35                	int    0x35
   28e4f:	5e                   	pop    si
   28e50:	e8 cd 35             	call   0x2c420
   28e53:	06                   	push   es
   28e54:	71 3b                	jno    0x28e91
   28e56:	cd 34                	int    0x34
   28e58:	4e                   	dec    si
   28e59:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28e5e:	35 5e e4             	xor    ax,0xe45e
   28e61:	cd 35                	int    0x35
   28e63:	06                   	push   es
   28e64:	3d 3b cd             	cmp    ax,0xcd3b
   28e67:	34 4e                	xor    al,0x4e
   28e69:	fa                   	cli
   28e6a:	83 ec 04             	sub    sp,0x4
   28e6d:	cd 35                	int    0x35
   28e6f:	5e                   	pop    si
   28e70:	e0 6a                	loopne 0x28edc
   28e72:	1b cd                	sbb    cx,bp
   28e74:	3d 0e e8             	cmp    ax,0xe80e
   28e77:	67 f8                	addr32 clc
   28e79:	83 c4 16             	add    sp,0x16
   28e7c:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28e7f:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28e82:	cd 35                	int    0x35
   28e84:	46                   	inc    si
   28e85:	f6 cd 38             	test   ch,0x38
   28e88:	0e                   	push   cs
   28e89:	95                   	xchg   bp,ax
   28e8a:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28e8e:	cd 35                	int    0x35
   28e90:	5e                   	pop    si
   28e91:	ec                   	in     al,dx
   28e92:	cd 35                	int    0x35
   28e94:	06                   	push   es
   28e95:	ad                   	lods   ax,WORD PTR ds:[si]
   28e96:	3b cd                	cmp    cx,bp
   28e98:	34 4e                	xor    al,0x4e
   28e9a:	fa                   	cli
   28e9b:	83 ec 04             	sub    sp,0x4
   28e9e:	cd 35                	int    0x35
   28ea0:	5e                   	pop    si
   28ea1:	e8 cd 35             	call   0x2c471
   28ea4:	46                   	inc    si
   28ea5:	f6 cd 38             	test   ch,0x38
   28ea8:	0e                   	push   cs
   28ea9:	75 3b                	jne    0x28ee6
   28eab:	83 ec 04             	sub    sp,0x4
   28eae:	cd 35                	int    0x35
   28eb0:	5e                   	pop    si
   28eb1:	e4 cd                	in     al,0xcd
   28eb3:	35 46 fa             	xor    ax,0xfa46
   28eb6:	cd 38                	int    0x38
   28eb8:	0e                   	push   cs
   28eb9:	5d                   	pop    bp
   28eba:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28ebe:	cd 35                	int    0x35
   28ec0:	5e                   	pop    si
   28ec1:	e0 6a                	loopne 0x28f2d
   28ec3:	1c cd                	sbb    al,0xcd
   28ec5:	3d 0e e8             	cmp    ax,0xe80e
   28ec8:	16                   	push   ss
   28ec9:	f8                   	clc
   28eca:	83 c4 16             	add    sp,0x16
   28ecd:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28ed0:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28ed3:	cd 35                	int    0x35
   28ed5:	06                   	push   es
   28ed6:	39 3b                	cmp    WORD PTR [bp+di],di
   28ed8:	cd 34                	int    0x34
   28eda:	4e                   	dec    si
   28edb:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28ee0:	35 5e ec             	xor    ax,0xec5e
   28ee3:	cd 35                	int    0x35
   28ee5:	06                   	push   es
   28ee6:	65 3b cd             	gs cmp cx,bp
   28ee9:	34 4e                	xor    al,0x4e
   28eeb:	fa                   	cli
   28eec:	83 ec 04             	sub    sp,0x4
   28eef:	cd 35                	int    0x35
   28ef1:	5e                   	pop    si
   28ef2:	e8 cd 35             	call   0x2c4c2
   28ef5:	06                   	push   es
   28ef6:	51                   	push   cx
   28ef7:	3b cd                	cmp    cx,bp
   28ef9:	34 4e                	xor    al,0x4e
   28efb:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28f00:	35 5e e4             	xor    ax,0xe45e
   28f03:	cd 35                	int    0x35
   28f05:	06                   	push   es
   28f06:	39 3b                	cmp    WORD PTR [bp+di],di
   28f08:	cd 34                	int    0x34
   28f0a:	4e                   	dec    si
   28f0b:	fa                   	cli
   28f0c:	83 ec 04             	sub    sp,0x4
   28f0f:	cd 35                	int    0x35
   28f11:	5e                   	pop    si
   28f12:	e0 6a                	loopne 0x28f7e
   28f14:	1d cd 3d             	sbb    ax,0x3dcd
   28f17:	0e                   	push   cs
   28f18:	e8 c5 f7             	call   0x286e0
   28f1b:	83 c4 16             	add    sp,0x16
   28f1e:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28f21:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28f24:	cd 35                	int    0x35
   28f26:	46                   	inc    si
   28f27:	f6 cd 38             	test   ch,0x38
   28f2a:	0e                   	push   cs
   28f2b:	9d                   	popf
   28f2c:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28f30:	cd 35                	int    0x35
   28f32:	5e                   	pop    si
   28f33:	ec                   	in     al,dx
   28f34:	cd 35                	int    0x35
   28f36:	46                   	inc    si
   28f37:	fa                   	cli
   28f38:	cd 38                	int    0x38
   28f3a:	0e                   	push   cs
   28f3b:	a5                   	movs   WORD PTR es:[di],WORD PTR ds:[si]
   28f3c:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28f40:	cd 35                	int    0x35
   28f42:	5e                   	pop    si
   28f43:	e8 cd 35             	call   0x2c513
   28f46:	06                   	push   es
   28f47:	3d 3b cd             	cmp    ax,0xcd3b
   28f4a:	34 4e                	xor    al,0x4e
   28f4c:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28f51:	35 5e e4             	xor    ax,0xe45e
   28f54:	cd 35                	int    0x35
   28f56:	06                   	push   es
   28f57:	3d 3b cd             	cmp    ax,0xcd3b
   28f5a:	34 4e                	xor    al,0x4e
   28f5c:	fa                   	cli
   28f5d:	83 ec 04             	sub    sp,0x4
   28f60:	cd 35                	int    0x35
   28f62:	5e                   	pop    si
   28f63:	e0 6a                	loopne 0x28fcf
   28f65:	1e                   	push   ds
   28f66:	cd 3d                	int    0x3d
   28f68:	0e                   	push   cs
   28f69:	e8 74 f7             	call   0x286e0
   28f6c:	83 c4 16             	add    sp,0x16
   28f6f:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28f72:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28f75:	cd 35                	int    0x35
   28f77:	46                   	inc    si
   28f78:	f6 cd 38             	test   ch,0x38
   28f7b:	0e                   	push   cs
   28f7c:	95                   	xchg   bp,ax
   28f7d:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28f81:	cd 35                	int    0x35
   28f83:	5e                   	pop    si
   28f84:	ec                   	in     al,dx
   28f85:	cd 35                	int    0x35
   28f87:	06                   	push   es
   28f88:	ad                   	lods   ax,WORD PTR ds:[si]
   28f89:	3b cd                	cmp    cx,bp
   28f8b:	34 4e                	xor    al,0x4e
   28f8d:	fa                   	cli
   28f8e:	83 ec 04             	sub    sp,0x4
   28f91:	cd 35                	int    0x35
   28f93:	5e                   	pop    si
   28f94:	e8 cd 35             	call   0x2c564
   28f97:	46                   	inc    si
   28f98:	f6 cd 38             	test   ch,0x38
   28f9b:	0e                   	push   cs
   28f9c:	5d                   	pop    bp
   28f9d:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28fa1:	cd 35                	int    0x35
   28fa3:	5e                   	pop    si
   28fa4:	e4 cd                	in     al,0xcd
   28fa6:	35 46 fa             	xor    ax,0xfa46
   28fa9:	cd 38                	int    0x38
   28fab:	0e                   	push   cs
   28fac:	5d                   	pop    bp
   28fad:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   28fb1:	cd 35                	int    0x35
   28fb3:	5e                   	pop    si
   28fb4:	e0 6a                	loopne 0x29020
   28fb6:	1f                   	pop    ds
   28fb7:	cd 3d                	int    0x3d
   28fb9:	0e                   	push   cs
   28fba:	e8 23 f7             	call   0x286e0
   28fbd:	83 c4 16             	add    sp,0x16
   28fc0:	ff 76 0c             	push   WORD PTR [bp+0xc]
   28fc3:	ff 76 0a             	push   WORD PTR [bp+0xa]
   28fc6:	cd 35                	int    0x35
   28fc8:	06                   	push   es
   28fc9:	39 3b                	cmp    WORD PTR [bp+di],di
   28fcb:	cd 34                	int    0x34
   28fcd:	4e                   	dec    si
   28fce:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28fd3:	35 5e ec             	xor    ax,0xec5e
   28fd6:	cd 35                	int    0x35
   28fd8:	06                   	push   es
   28fd9:	65 3b cd             	gs cmp cx,bp
   28fdc:	34 4e                	xor    al,0x4e
   28fde:	fa                   	cli
   28fdf:	83 ec 04             	sub    sp,0x4
   28fe2:	cd 35                	int    0x35
   28fe4:	5e                   	pop    si
   28fe5:	e8 cd 35             	call   0x2c5b5
   28fe8:	06                   	push   es
   28fe9:	39 3b                	cmp    WORD PTR [bp+di],di
   28feb:	cd 34                	int    0x34
   28fed:	4e                   	dec    si
   28fee:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   28ff3:	35 5e e4             	xor    ax,0xe45e
   28ff6:	cd 35                	int    0x35
   28ff8:	06                   	push   es
   28ff9:	39 3b                	cmp    WORD PTR [bp+di],di
   28ffb:	cd 34                	int    0x34
   28ffd:	4e                   	dec    si
   28ffe:	fa                   	cli
   28fff:	83 ec 04             	sub    sp,0x4
   29002:	cd 35                	int    0x35
   29004:	5e                   	pop    si
   29005:	e0 6a                	loopne 0x29071
   29007:	20 cd                	and    ch,cl
   29009:	3d 0e e8             	cmp    ax,0xe80e
   2900c:	d2 f6                	shl    dh,cl
   2900e:	83 c4 16             	add    sp,0x16
   29011:	ff 76 0c             	push   WORD PTR [bp+0xc]
   29014:	ff 76 0a             	push   WORD PTR [bp+0xa]
   29017:	cd 35                	int    0x35
   29019:	06                   	push   es
   2901a:	39 3b                	cmp    WORD PTR [bp+di],di
   2901c:	cd 34                	int    0x34
   2901e:	4e                   	dec    si
   2901f:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   29024:	35 5e ec             	xor    ax,0xec5e
   29027:	cd 35                	int    0x35
   29029:	46                   	inc    si
   2902a:	fa                   	cli
   2902b:	83 ec 04             	sub    sp,0x4
   2902e:	cd 35                	int    0x35
   29030:	5e                   	pop    si
   29031:	e8 cd 35             	call   0x2c601
   29034:	06                   	push   es
   29035:	3d 3b cd             	cmp    ax,0xcd3b
   29038:	34 4e                	xor    al,0x4e
   2903a:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   2903f:	35 5e e4             	xor    ax,0xe45e
   29042:	cd 35                	int    0x35
   29044:	06                   	push   es
   29045:	39 3b                	cmp    WORD PTR [bp+di],di
   29047:	cd 34                	int    0x34
   29049:	4e                   	dec    si
   2904a:	fa                   	cli
   2904b:	83 ec 04             	sub    sp,0x4
   2904e:	cd 35                	int    0x35
   29050:	5e                   	pop    si
   29051:	e0 6a                	loopne 0x290bd
   29053:	21 cd                	and    bp,cx
   29055:	3d 0e e8             	cmp    ax,0xe80e
   29058:	86 f6                	xchg   dh,dh
   2905a:	83 c4 16             	add    sp,0x16
   2905d:	ff 76 0c             	push   WORD PTR [bp+0xc]
   29060:	ff 76 0a             	push   WORD PTR [bp+0xa]
   29063:	cd 35                	int    0x35
   29065:	06                   	push   es
   29066:	39 3b                	cmp    WORD PTR [bp+di],di
   29068:	cd 34                	int    0x34
   2906a:	4e                   	dec    si
   2906b:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   29070:	35 5e ec             	xor    ax,0xec5e
   29073:	cd 35                	int    0x35
   29075:	46                   	inc    si
   29076:	fa                   	cli
   29077:	83 ec 04             	sub    sp,0x4
   2907a:	cd 35                	int    0x35
   2907c:	5e                   	pop    si
   2907d:	e8 cd 35             	call   0x2c64d
   29080:	06                   	push   es
   29081:	3d 3b cd             	cmp    ax,0xcd3b
   29084:	34 4e                	xor    al,0x4e
   29086:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   2908b:	35 5e e4             	xor    ax,0xe45e
   2908e:	cd 35                	int    0x35
   29090:	06                   	push   es
   29091:	ad                   	lods   ax,WORD PTR ds:[si]
   29092:	3b cd                	cmp    cx,bp
   29094:	34 4e                	xor    al,0x4e
   29096:	fa                   	cli
   29097:	83 ec 04             	sub    sp,0x4
   2909a:	cd 35                	int    0x35
   2909c:	5e                   	pop    si
   2909d:	e0 6a                	loopne 0x29109
   2909f:	22 cd                	and    cl,ch
   290a1:	3d 0e e8             	cmp    ax,0xe80e
   290a4:	3a f6                	cmp    dh,dh
   290a6:	83 c4 16             	add    sp,0x16
   290a9:	ff 76 0c             	push   WORD PTR [bp+0xc]
   290ac:	ff 76 0a             	push   WORD PTR [bp+0xa]
   290af:	cd 35                	int    0x35
   290b1:	06                   	push   es
   290b2:	39 3b                	cmp    WORD PTR [bp+di],di
   290b4:	cd 34                	int    0x34
   290b6:	4e                   	dec    si
   290b7:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   290bc:	35 5e ec             	xor    ax,0xec5e
   290bf:	cd 35                	int    0x35
   290c1:	46                   	inc    si
   290c2:	fa                   	cli
   290c3:	83 ec 04             	sub    sp,0x4
   290c6:	cd 35                	int    0x35
   290c8:	5e                   	pop    si
   290c9:	e8 cd 35             	call   0x2c699
   290cc:	06                   	push   es
   290cd:	3d 3b cd             	cmp    ax,0xcd3b
   290d0:	34 4e                	xor    al,0x4e
   290d2:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   290d7:	35 5e e4             	xor    ax,0xe45e
   290da:	cd 35                	int    0x35
   290dc:	06                   	push   es
   290dd:	65 3b cd             	gs cmp cx,bp
   290e0:	34 4e                	xor    al,0x4e
   290e2:	fa                   	cli
   290e3:	cd 34                	int    0x34
   290e5:	26 65 3b 83 ec 04    	es cmp ax,WORD PTR gs:[bp+di+0x4ec]
   290eb:	cd 35                	int    0x35
   290ed:	5e                   	pop    si
   290ee:	e0 6a                	loopne 0x2915a
   290f0:	23 cd                	and    cx,bp
   290f2:	3d 0e e8             	cmp    ax,0xe80e
   290f5:	e9 f5 83             	jmp    0x214ed
   290f8:	c4 16 ff 76          	les    dx,DWORD PTR ds:0x76ff
   290fc:	0c ff                	or     al,0xff
   290fe:	76 0a                	jbe    0x2910a
   29100:	cd 35                	int    0x35
   29102:	06                   	push   es
   29103:	39 3b                	cmp    WORD PTR [bp+di],di
   29105:	cd 34                	int    0x34
   29107:	4e                   	dec    si
   29108:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   2910d:	35 5e ec             	xor    ax,0xec5e
   29110:	cd 35                	int    0x35
   29112:	46                   	inc    si
   29113:	fa                   	cli
   29114:	83 ec 04             	sub    sp,0x4
   29117:	cd 35                	int    0x35
   29119:	5e                   	pop    si
   2911a:	e8 cd 35             	call   0x2c6ea
   2911d:	06                   	push   es
   2911e:	3d 3b cd             	cmp    ax,0xcd3b
   29121:	34 4e                	xor    al,0x4e
   29123:	f6 83 ec 04 cd       	test   BYTE PTR [bp+di+0x4ec],0xcd
   29128:	35 5e e4             	xor    ax,0xe45e
   2912b:	cd 35                	int    0x35
   2912d:	06                   	push   es
   2912e:	51                   	push   cx
   2912f:	3b cd                	cmp    cx,bp
   29131:	34 4e                	xor    al,0x4e
   29133:	fa                   	cli
   29134:	cd 34                	int    0x34
   29136:	26 b1 3b             	es mov cl,0x3b
   29139:	83 ec 04             	sub    sp,0x4
   2913c:	cd 35                	int    0x35
   2913e:	5e                   	pop    si
   2913f:	e0 6a                	loopne 0x291ab
   29141:	24 cd                	and    al,0xcd
   29143:	3d 0e e8             	cmp    ax,0xe80e
   29146:	98                   	cbw
   29147:	f5                   	cmc
   29148:	83 c4 16             	add    sp,0x16
   2914b:	c9                   	leave
   2914c:	cb                   	retf
   2914d:	55                   	push   bp
   2914e:	8b ec                	mov    bp,sp
   29150:	cd 35                	int    0x35
   29152:	46                   	inc    si
   29153:	0c cd                	or     al,0xcd
   29155:	34 06                	xor    al,0x6
   29157:	31 3b                	xor    WORD PTR [bp+di],di
   29159:	9a 99 10 00 00       	call   0x0:0x1099
   2915e:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   29161:	6b d2 12             	imul   dx,dx,0x12
   29164:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   29167:	03 da                	add    bx,dx
   29169:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   2916d:	cd 35                	int    0x35
   2916f:	46                   	inc    si
   29170:	10 cd                	adc    ch,cl
   29172:	34 06                	xor    al,0x6
   29174:	31 3b                	xor    WORD PTR [bp+di],di
   29176:	9a 99 10 00 00       	call   0x0:0x1099
   2917b:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   2917e:	6b d2 12             	imul   dx,dx,0x12
   29181:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   29184:	03 da                	add    bx,dx
   29186:	26 89 47 0a          	mov    WORD PTR es:[bx+0xa],ax
   2918a:	cd 35                	int    0x35
   2918c:	46                   	inc    si
   2918d:	14 cd                	adc    al,0xcd
   2918f:	34 06                	xor    al,0x6
   29191:	31 3b                	xor    WORD PTR [bp+di],di
   29193:	9a 99 10 00 00       	call   0x0:0x1099
   29198:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   2919b:	6b d2 12             	imul   dx,dx,0x12
   2919e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   291a1:	03 da                	add    bx,dx
   291a3:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   291a7:	cd 35                	int    0x35
   291a9:	46                   	inc    si
   291aa:	18 cd                	sbb    ch,cl
   291ac:	34 06                	xor    al,0x6
   291ae:	31 3b                	xor    WORD PTR [bp+di],di
   291b0:	9a 99 10 00 00       	call   0x0:0x1099
   291b5:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   291b8:	6b d2 12             	imul   dx,dx,0x12
   291bb:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   291be:	03 da                	add    bx,dx
   291c0:	26 89 47 0e          	mov    WORD PTR es:[bx+0xe],ax
   291c4:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   291c7:	6b c0 12             	imul   ax,ax,0x12
   291ca:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   291cd:	03 d8                	add    bx,ax
   291cf:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
   291d2:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   291d6:	5d                   	pop    bp
   291d7:	cb                   	retf
   291d8:	55                   	push   bp
   291d9:	8b ec                	mov    bp,sp
   291db:	83 ec 08             	sub    sp,0x8
   291de:	c7 46 fc 64 00       	mov    WORD PTR [bp-0x4],0x64
   291e3:	c7 46 fa 64 00       	mov    WORD PTR [bp-0x6],0x64
   291e8:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   291ed:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   291f0:	3b 06 ff 3a          	cmp    ax,WORD PTR ds:0x3aff
   291f4:	75 09                	jne    0x291ff
   291f6:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   291f9:	3b 06 01 3b          	cmp    ax,WORD PTR ds:0x3b01
   291fd:	74 05                	je     0x29204
   291ff:	c7 46 f8 02 00       	mov    WORD PTR [bp-0x8],0x2
   29204:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   29209:	eb 47                	jmp    0x29252
   2920b:	6a 02                	push   0x2
   2920d:	cd 35                	int    0x35
   2920f:	06                   	push   es
   29210:	b5 3b                	mov    ch,0x3b
   29212:	83 ec 04             	sub    sp,0x4
   29215:	cd 35                	int    0x35
   29217:	5e                   	pop    si
   29218:	f2 cd 35             	repnz int 0x35
   2921b:	06                   	push   es
   2921c:	b5 3b                	mov    ch,0x3b
   2921e:	83 ec 04             	sub    sp,0x4
   29221:	cd 35                	int    0x35
   29223:	5e                   	pop    si
   29224:	ee                   	out    dx,al
   29225:	cd 35                	int    0x35
   29227:	ee                   	out    dx,al
   29228:	cd 3d                	int    0x3d
   2922a:	83 ec 04             	sub    sp,0x4
   2922d:	cd 35                	int    0x35
   2922f:	5e                   	pop    si
   29230:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   29235:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29239:	cd 35                	int    0x35
   2923b:	5e                   	pop    si
   2923c:	e6 cd                	out    0xcd,al
   2923e:	3d ff 76             	cmp    ax,0x76ff
   29241:	fe                   	(bad)
   29242:	68 88 01             	push   0x188
   29245:	68 2a b7             	push   0xb72a
   29248:	0e                   	push   cs
   29249:	e8 01 ff             	call   0x2914d
   2924c:	83 c4 18             	add    sp,0x18
   2924f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   29252:	83 7e fe 07          	cmp    WORD PTR [bp-0x2],0x7
   29256:	7c b3                	jl     0x2920b
   29258:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2925b:	cd 35                	int    0x35
   2925d:	06                   	push   es
   2925e:	bd 3b 83             	mov    bp,0x833b
   29261:	ec                   	in     al,dx
   29262:	04 cd                	add    al,0xcd
   29264:	35 5e f2             	xor    ax,0xf25e
   29267:	cd 35                	int    0x35
   29269:	06                   	push   es
   2926a:	c1 3b 83             	sar    WORD PTR [bp+di],0x83
   2926d:	ec                   	in     al,dx
   2926e:	04 cd                	add    al,0xcd
   29270:	35 5e ee             	xor    ax,0xee5e
   29273:	cd 35                	int    0x35
   29275:	06                   	push   es
   29276:	c5 3b                	lds    di,DWORD PTR [bp+di]
   29278:	83 ec 04             	sub    sp,0x4
   2927b:	cd 35                	int    0x35
   2927d:	5e                   	pop    si
   2927e:	ea cd 35 06 c9       	jmp    0xc906:0x35cd
   29283:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29287:	cd 35                	int    0x35
   29289:	5e                   	pop    si
   2928a:	e6 6a                	out    0x6a,al
   2928c:	07                   	pop    es
   2928d:	68 88 01             	push   0x188
   29290:	68 2a b7             	push   0xb72a
   29293:	cd 3d                	int    0x3d
   29295:	0e                   	push   cs
   29296:	e8 b4 fe             	call   0x2914d
   29299:	83 c4 18             	add    sp,0x18
   2929c:	b8 01 00             	mov    ax,0x1
   2929f:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   292a2:	50                   	push   ax
   292a3:	cd 35                	int    0x35
   292a5:	06                   	push   es
   292a6:	bd 3b 83             	mov    bp,0x833b
   292a9:	ec                   	in     al,dx
   292aa:	04 cd                	add    al,0xcd
   292ac:	35 5e f2             	xor    ax,0xf25e
   292af:	cd 35                	int    0x35
   292b1:	06                   	push   es
   292b2:	c1 3b 83             	sar    WORD PTR [bp+di],0x83
   292b5:	ec                   	in     al,dx
   292b6:	04 cd                	add    al,0xcd
   292b8:	35 5e ee             	xor    ax,0xee5e
   292bb:	cd 35                	int    0x35
   292bd:	06                   	push   es
   292be:	c5 3b                	lds    di,DWORD PTR [bp+di]
   292c0:	83 ec 04             	sub    sp,0x4
   292c3:	cd 35                	int    0x35
   292c5:	5e                   	pop    si
   292c6:	ea cd 35 06 c9       	jmp    0xc906:0x35cd
   292cb:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   292cf:	cd 35                	int    0x35
   292d1:	5e                   	pop    si
   292d2:	e6 6a                	out    0x6a,al
   292d4:	0c 68                	or     al,0x68
   292d6:	88 01                	mov    BYTE PTR [bx+di],al
   292d8:	68 2a b7             	push   0xb72a
   292db:	cd 3d                	int    0x3d
   292dd:	0e                   	push   cs
   292de:	e8 6c fe             	call   0x2914d
   292e1:	83 c4 18             	add    sp,0x18
   292e4:	ff 76 f8             	push   WORD PTR [bp-0x8]
   292e7:	cd 35                	int    0x35
   292e9:	06                   	push   es
   292ea:	cd 3b                	int    0x3b
   292ec:	83 ec 04             	sub    sp,0x4
   292ef:	cd 35                	int    0x35
   292f1:	5e                   	pop    si
   292f2:	f2 cd 35             	repnz int 0x35
   292f5:	06                   	push   es
   292f6:	35 3b 83             	xor    ax,0x833b
   292f9:	ec                   	in     al,dx
   292fa:	04 cd                	add    al,0xcd
   292fc:	35 5e ee             	xor    ax,0xee5e
   292ff:	cd 35                	int    0x35
   29301:	06                   	push   es
   29302:	d1 3b                	sar    WORD PTR [bp+di],1
   29304:	83 ec 04             	sub    sp,0x4
   29307:	cd 35                	int    0x35
   29309:	5e                   	pop    si
   2930a:	ea cd 35 06 d5       	jmp    0xd506:0x35cd
   2930f:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29313:	cd 35                	int    0x35
   29315:	5e                   	pop    si
   29316:	e6 6a                	out    0x6a,al
   29318:	08 68 88             	or     BYTE PTR [bx+si-0x78],ch
   2931b:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   2931e:	b7 cd                	mov    bh,0xcd
   29320:	3d 0e e8             	cmp    ax,0xe80e
   29323:	28 fe                	sub    dh,bh
   29325:	83 c4 18             	add    sp,0x18
   29328:	b8 01 00             	mov    ax,0x1
   2932b:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2932e:	50                   	push   ax
   2932f:	cd 35                	int    0x35
   29331:	06                   	push   es
   29332:	cd 3b                	int    0x3b
   29334:	83 ec 04             	sub    sp,0x4
   29337:	cd 35                	int    0x35
   29339:	5e                   	pop    si
   2933a:	f2 cd 35             	repnz int 0x35
   2933d:	06                   	push   es
   2933e:	35 3b 83             	xor    ax,0x833b
   29341:	ec                   	in     al,dx
   29342:	04 cd                	add    al,0xcd
   29344:	35 5e ee             	xor    ax,0xee5e
   29347:	cd 35                	int    0x35
   29349:	06                   	push   es
   2934a:	d1 3b                	sar    WORD PTR [bp+di],1
   2934c:	83 ec 04             	sub    sp,0x4
   2934f:	cd 35                	int    0x35
   29351:	5e                   	pop    si
   29352:	ea cd 35 06 d5       	jmp    0xd506:0x35cd
   29357:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2935b:	cd 35                	int    0x35
   2935d:	5e                   	pop    si
   2935e:	e6 6a                	out    0x6a,al
   29360:	0b 68 88             	or     bp,WORD PTR [bx+si-0x78]
   29363:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   29366:	b7 cd                	mov    bh,0xcd
   29368:	3d 0e e8             	cmp    ax,0xe80e
   2936b:	e0 fd                	loopne 0x2936a
   2936d:	83 c4 18             	add    sp,0x18
   29370:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29373:	cd 35                	int    0x35
   29375:	06                   	push   es
   29376:	cd 3b                	int    0x3b
   29378:	83 ec 04             	sub    sp,0x4
   2937b:	cd 35                	int    0x35
   2937d:	5e                   	pop    si
   2937e:	f2 cd 35             	repnz int 0x35
   29381:	06                   	push   es
   29382:	3d 3b 83             	cmp    ax,0x833b
   29385:	ec                   	in     al,dx
   29386:	04 cd                	add    al,0xcd
   29388:	35 5e ee             	xor    ax,0xee5e
   2938b:	cd 35                	int    0x35
   2938d:	06                   	push   es
   2938e:	d9 3b                	fnstcw WORD PTR [bp+di]
   29390:	83 ec 04             	sub    sp,0x4
   29393:	cd 35                	int    0x35
   29395:	5e                   	pop    si
   29396:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   2939b:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2939f:	cd 35                	int    0x35
   293a1:	5e                   	pop    si
   293a2:	e6 6a                	out    0x6a,al
   293a4:	09 68 88             	or     WORD PTR [bx+si-0x78],bp
   293a7:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   293aa:	b7 cd                	mov    bh,0xcd
   293ac:	3d 0e e8             	cmp    ax,0xe80e
   293af:	9c                   	pushf
   293b0:	fd                   	std
   293b1:	83 c4 18             	add    sp,0x18
   293b4:	b8 01 00             	mov    ax,0x1
   293b7:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   293ba:	50                   	push   ax
   293bb:	cd 35                	int    0x35
   293bd:	06                   	push   es
   293be:	cd 3b                	int    0x3b
   293c0:	83 ec 04             	sub    sp,0x4
   293c3:	cd 35                	int    0x35
   293c5:	5e                   	pop    si
   293c6:	f2 cd 35             	repnz int 0x35
   293c9:	06                   	push   es
   293ca:	3d 3b 83             	cmp    ax,0x833b
   293cd:	ec                   	in     al,dx
   293ce:	04 cd                	add    al,0xcd
   293d0:	35 5e ee             	xor    ax,0xee5e
   293d3:	cd 35                	int    0x35
   293d5:	06                   	push   es
   293d6:	d9 3b                	fnstcw WORD PTR [bp+di]
   293d8:	83 ec 04             	sub    sp,0x4
   293db:	cd 35                	int    0x35
   293dd:	5e                   	pop    si
   293de:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   293e3:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   293e7:	cd 35                	int    0x35
   293e9:	5e                   	pop    si
   293ea:	e6 6a                	out    0x6a,al
   293ec:	0a 68 88             	or     ch,BYTE PTR [bx+si-0x78]
   293ef:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   293f2:	b7 cd                	mov    bh,0xcd
   293f4:	3d 0e e8             	cmp    ax,0xe80e
   293f7:	54                   	push   sp
   293f8:	fd                   	std
   293f9:	83 c4 18             	add    sp,0x18
   293fc:	b8 02 00             	mov    ax,0x2
   293ff:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29402:	50                   	push   ax
   29403:	cd 35                	int    0x35
   29405:	06                   	push   es
   29406:	b5 3b                	mov    ch,0x3b
   29408:	83 ec 04             	sub    sp,0x4
   2940b:	cd 35                	int    0x35
   2940d:	5e                   	pop    si
   2940e:	f2 cd 35             	repnz int 0x35
   29411:	06                   	push   es
   29412:	dd 3b                	fnstsw WORD PTR [bp+di]
   29414:	83 ec 04             	sub    sp,0x4
   29417:	cd 35                	int    0x35
   29419:	5e                   	pop    si
   2941a:	ee                   	out    dx,al
   2941b:	cd 35                	int    0x35
   2941d:	ee                   	out    dx,al
   2941e:	cd 3d                	int    0x3d
   29420:	83 ec 04             	sub    sp,0x4
   29423:	cd 35                	int    0x35
   29425:	5e                   	pop    si
   29426:	ea cd 35 06 c5       	jmp    0xc506:0x35cd
   2942b:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2942f:	cd 35                	int    0x35
   29431:	5e                   	pop    si
   29432:	e6 6a                	out    0x6a,al
   29434:	0d 68 88             	or     ax,0x8868
   29437:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   2943a:	b7 cd                	mov    bh,0xcd
   2943c:	3d 0e e8             	cmp    ax,0xe80e
   2943f:	0c fd                	or     al,0xfd
   29441:	83 c4 18             	add    sp,0x18
   29444:	b8 02 00             	mov    ax,0x2
   29447:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2944a:	50                   	push   ax
   2944b:	cd 35                	int    0x35
   2944d:	06                   	push   es
   2944e:	b5 3b                	mov    ch,0x3b
   29450:	83 ec 04             	sub    sp,0x4
   29453:	cd 35                	int    0x35
   29455:	5e                   	pop    si
   29456:	f2 cd 35             	repnz int 0x35
   29459:	06                   	push   es
   2945a:	dd 3b                	fnstsw WORD PTR [bp+di]
   2945c:	83 ec 04             	sub    sp,0x4
   2945f:	cd 35                	int    0x35
   29461:	5e                   	pop    si
   29462:	ee                   	out    dx,al
   29463:	cd 35                	int    0x35
   29465:	ee                   	out    dx,al
   29466:	cd 3d                	int    0x3d
   29468:	83 ec 04             	sub    sp,0x4
   2946b:	cd 35                	int    0x35
   2946d:	5e                   	pop    si
   2946e:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   29473:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29477:	cd 35                	int    0x35
   29479:	5e                   	pop    si
   2947a:	e6 6a                	out    0x6a,al
   2947c:	11 68 88             	adc    WORD PTR [bx+si-0x78],bp
   2947f:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   29482:	b7 cd                	mov    bh,0xcd
   29484:	3d 0e e8             	cmp    ax,0xe80e
   29487:	c4                   	(bad)
   29488:	fc                   	cld
   29489:	83 c4 18             	add    sp,0x18
   2948c:	c7 46 fe 0e 00       	mov    WORD PTR [bp-0x2],0xe
   29491:	eb 4c                	jmp    0x294df
   29493:	b8 02 00             	mov    ax,0x2
   29496:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29499:	50                   	push   ax
   2949a:	cd 35                	int    0x35
   2949c:	06                   	push   es
   2949d:	b5 3b                	mov    ch,0x3b
   2949f:	83 ec 04             	sub    sp,0x4
   294a2:	cd 35                	int    0x35
   294a4:	5e                   	pop    si
   294a5:	f2 cd 35             	repnz int 0x35
   294a8:	06                   	push   es
   294a9:	b5 3b                	mov    ch,0x3b
   294ab:	83 ec 04             	sub    sp,0x4
   294ae:	cd 35                	int    0x35
   294b0:	5e                   	pop    si
   294b1:	ee                   	out    dx,al
   294b2:	cd 35                	int    0x35
   294b4:	ee                   	out    dx,al
   294b5:	cd 3d                	int    0x3d
   294b7:	83 ec 04             	sub    sp,0x4
   294ba:	cd 35                	int    0x35
   294bc:	5e                   	pop    si
   294bd:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   294c2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   294c6:	cd 35                	int    0x35
   294c8:	5e                   	pop    si
   294c9:	e6 cd                	out    0xcd,al
   294cb:	3d ff 76             	cmp    ax,0x76ff
   294ce:	fe                   	(bad)
   294cf:	68 88 01             	push   0x188
   294d2:	68 2a b7             	push   0xb72a
   294d5:	0e                   	push   cs
   294d6:	e8 74 fc             	call   0x2914d
   294d9:	83 c4 18             	add    sp,0x18
   294dc:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   294df:	83 7e fe 11          	cmp    WORD PTR [bp-0x2],0x11
   294e3:	7c ae                	jl     0x29493
   294e5:	ff 76 f8             	push   WORD PTR [bp-0x8]
   294e8:	cd 35                	int    0x35
   294ea:	06                   	push   es
   294eb:	e1 3b                	loope  0x29528
   294ed:	83 ec 04             	sub    sp,0x4
   294f0:	cd 35                	int    0x35
   294f2:	5e                   	pop    si
   294f3:	f2 cd 35             	repnz int 0x35
   294f6:	06                   	push   es
   294f7:	35 3b 83             	xor    ax,0x833b
   294fa:	ec                   	in     al,dx
   294fb:	04 cd                	add    al,0xcd
   294fd:	35 5e ee             	xor    ax,0xee5e
   29500:	cd 35                	int    0x35
   29502:	06                   	push   es
   29503:	c5 3b                	lds    di,DWORD PTR [bp+di]
   29505:	83 ec 04             	sub    sp,0x4
   29508:	cd 35                	int    0x35
   2950a:	5e                   	pop    si
   2950b:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   29510:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29514:	cd 35                	int    0x35
   29516:	5e                   	pop    si
   29517:	e6 6a                	out    0x6a,al
   29519:	12 68 88             	adc    ch,BYTE PTR [bx+si-0x78]
   2951c:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   2951f:	b7 cd                	mov    bh,0xcd
   29521:	3d 0e e8             	cmp    ax,0xe80e
   29524:	27                   	daa
   29525:	fc                   	cld
   29526:	83 c4 18             	add    sp,0x18
   29529:	b8 01 00             	mov    ax,0x1
   2952c:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2952f:	50                   	push   ax
   29530:	cd 35                	int    0x35
   29532:	06                   	push   es
   29533:	e1 3b                	loope  0x29570
   29535:	83 ec 04             	sub    sp,0x4
   29538:	cd 35                	int    0x35
   2953a:	5e                   	pop    si
   2953b:	f2 cd 35             	repnz int 0x35
   2953e:	06                   	push   es
   2953f:	35 3b 83             	xor    ax,0x833b
   29542:	ec                   	in     al,dx
   29543:	04 cd                	add    al,0xcd
   29545:	35 5e ee             	xor    ax,0xee5e
   29548:	cd 35                	int    0x35
   2954a:	06                   	push   es
   2954b:	c5 3b                	lds    di,DWORD PTR [bp+di]
   2954d:	83 ec 04             	sub    sp,0x4
   29550:	cd 35                	int    0x35
   29552:	5e                   	pop    si
   29553:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   29558:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2955c:	cd 35                	int    0x35
   2955e:	5e                   	pop    si
   2955f:	e6 6a                	out    0x6a,al
   29561:	15 68 88             	adc    ax,0x8868
   29564:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   29567:	b7 cd                	mov    bh,0xcd
   29569:	3d 0e e8             	cmp    ax,0xe80e
   2956c:	df fb                	(bad)
   2956e:	83 c4 18             	add    sp,0x18
   29571:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29574:	cd 35                	int    0x35
   29576:	06                   	push   es
   29577:	b5 3b                	mov    ch,0x3b
   29579:	83 ec 04             	sub    sp,0x4
   2957c:	cd 35                	int    0x35
   2957e:	5e                   	pop    si
   2957f:	f2 cd 35             	repnz int 0x35
   29582:	06                   	push   es
   29583:	cd 3b                	int    0x3b
   29585:	83 ec 04             	sub    sp,0x4
   29588:	cd 35                	int    0x35
   2958a:	5e                   	pop    si
   2958b:	ee                   	out    dx,al
   2958c:	cd 35                	int    0x35
   2958e:	06                   	push   es
   2958f:	e5 3b                	in     ax,0x3b
   29591:	83 ec 04             	sub    sp,0x4
   29594:	cd 35                	int    0x35
   29596:	5e                   	pop    si
   29597:	ea cd 35 06 35       	jmp    0x3506:0x35cd
   2959c:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   295a0:	cd 35                	int    0x35
   295a2:	5e                   	pop    si
   295a3:	e6 6a                	out    0x6a,al
   295a5:	13 68 88             	adc    bp,WORD PTR [bx+si-0x78]
   295a8:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   295ab:	b7 cd                	mov    bh,0xcd
   295ad:	3d 0e e8             	cmp    ax,0xe80e
   295b0:	9b                   	fwait
   295b1:	fb                   	sti
   295b2:	83 c4 18             	add    sp,0x18
   295b5:	b8 01 00             	mov    ax,0x1
   295b8:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   295bb:	50                   	push   ax
   295bc:	cd 35                	int    0x35
   295be:	06                   	push   es
   295bf:	b5 3b                	mov    ch,0x3b
   295c1:	83 ec 04             	sub    sp,0x4
   295c4:	cd 35                	int    0x35
   295c6:	5e                   	pop    si
   295c7:	f2 cd 35             	repnz int 0x35
   295ca:	06                   	push   es
   295cb:	cd 3b                	int    0x3b
   295cd:	83 ec 04             	sub    sp,0x4
   295d0:	cd 35                	int    0x35
   295d2:	5e                   	pop    si
   295d3:	ee                   	out    dx,al
   295d4:	cd 35                	int    0x35
   295d6:	06                   	push   es
   295d7:	e5 3b                	in     ax,0x3b
   295d9:	83 ec 04             	sub    sp,0x4
   295dc:	cd 35                	int    0x35
   295de:	5e                   	pop    si
   295df:	ea cd 35 06 35       	jmp    0x3506:0x35cd
   295e4:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   295e8:	cd 35                	int    0x35
   295ea:	5e                   	pop    si
   295eb:	e6 6a                	out    0x6a,al
   295ed:	14 68                	adc    al,0x68
   295ef:	88 01                	mov    BYTE PTR [bx+di],al
   295f1:	68 2a b7             	push   0xb72a
   295f4:	cd 3d                	int    0x3d
   295f6:	0e                   	push   cs
   295f7:	e8 53 fb             	call   0x2914d
   295fa:	83 c4 18             	add    sp,0x18
   295fd:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29600:	cd 35                	int    0x35
   29602:	06                   	push   es
   29603:	b5 3b                	mov    ch,0x3b
   29605:	83 ec 04             	sub    sp,0x4
   29608:	cd 35                	int    0x35
   2960a:	5e                   	pop    si
   2960b:	f2 cd 35             	repnz int 0x35
   2960e:	06                   	push   es
   2960f:	35 3b 83             	xor    ax,0x833b
   29612:	ec                   	in     al,dx
   29613:	04 cd                	add    al,0xcd
   29615:	35 5e ee             	xor    ax,0xee5e
   29618:	cd 35                	int    0x35
   2961a:	ee                   	out    dx,al
   2961b:	cd 3d                	int    0x3d
   2961d:	83 ec 04             	sub    sp,0x4
   29620:	cd 35                	int    0x35
   29622:	5e                   	pop    si
   29623:	ea cd 35 06 e9       	jmp    0xe906:0x35cd
   29628:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2962c:	cd 35                	int    0x35
   2962e:	5e                   	pop    si
   2962f:	e6 6a                	out    0x6a,al
   29631:	16                   	push   ss
   29632:	68 88 01             	push   0x188
   29635:	68 2a b7             	push   0xb72a
   29638:	cd 3d                	int    0x3d
   2963a:	0e                   	push   cs
   2963b:	e8 0f fb             	call   0x2914d
   2963e:	83 c4 18             	add    sp,0x18
   29641:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29644:	cd 35                	int    0x35
   29646:	06                   	push   es
   29647:	b5 3b                	mov    ch,0x3b
   29649:	83 ec 04             	sub    sp,0x4
   2964c:	cd 35                	int    0x35
   2964e:	5e                   	pop    si
   2964f:	f2 cd 35             	repnz int 0x35
   29652:	06                   	push   es
   29653:	b5 3b                	mov    ch,0x3b
   29655:	83 ec 04             	sub    sp,0x4
   29658:	cd 35                	int    0x35
   2965a:	5e                   	pop    si
   2965b:	ee                   	out    dx,al
   2965c:	cd 35                	int    0x35
   2965e:	ee                   	out    dx,al
   2965f:	cd 3d                	int    0x3d
   29661:	83 ec 04             	sub    sp,0x4
   29664:	cd 35                	int    0x35
   29666:	5e                   	pop    si
   29667:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2966c:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29670:	cd 35                	int    0x35
   29672:	5e                   	pop    si
   29673:	e6 6a                	out    0x6a,al
   29675:	17                   	pop    ss
   29676:	68 88 01             	push   0x188
   29679:	68 2a b7             	push   0xb72a
   2967c:	cd 3d                	int    0x3d
   2967e:	0e                   	push   cs
   2967f:	e8 cb fa             	call   0x2914d
   29682:	83 c4 18             	add    sp,0x18
   29685:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29688:	cd 35                	int    0x35
   2968a:	06                   	push   es
   2968b:	b5 3b                	mov    ch,0x3b
   2968d:	83 ec 04             	sub    sp,0x4
   29690:	cd 35                	int    0x35
   29692:	5e                   	pop    si
   29693:	f2 cd 35             	repnz int 0x35
   29696:	06                   	push   es
   29697:	35 3b 83             	xor    ax,0x833b
   2969a:	ec                   	in     al,dx
   2969b:	04 cd                	add    al,0xcd
   2969d:	35 5e ee             	xor    ax,0xee5e
   296a0:	cd 35                	int    0x35
   296a2:	ee                   	out    dx,al
   296a3:	cd 3d                	int    0x3d
   296a5:	83 ec 04             	sub    sp,0x4
   296a8:	cd 35                	int    0x35
   296aa:	5e                   	pop    si
   296ab:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   296b0:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   296b4:	cd 35                	int    0x35
   296b6:	5e                   	pop    si
   296b7:	e6 6a                	out    0x6a,al
   296b9:	18 68 88             	sbb    BYTE PTR [bx+si-0x78],ch
   296bc:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   296bf:	b7 cd                	mov    bh,0xcd
   296c1:	3d 0e e8             	cmp    ax,0xe80e
   296c4:	87 fa                	xchg   dx,di
   296c6:	83 c4 18             	add    sp,0x18
   296c9:	ff 76 f8             	push   WORD PTR [bp-0x8]
   296cc:	cd 35                	int    0x35
   296ce:	06                   	push   es
   296cf:	ed                   	in     ax,dx
   296d0:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   296d4:	cd 35                	int    0x35
   296d6:	5e                   	pop    si
   296d7:	f2 cd 35             	repnz int 0x35
   296da:	06                   	push   es
   296db:	35 3b 83             	xor    ax,0x833b
   296de:	ec                   	in     al,dx
   296df:	04 cd                	add    al,0xcd
   296e1:	35 5e ee             	xor    ax,0xee5e
   296e4:	cd 35                	int    0x35
   296e6:	ee                   	out    dx,al
   296e7:	cd 3d                	int    0x3d
   296e9:	83 ec 04             	sub    sp,0x4
   296ec:	cd 35                	int    0x35
   296ee:	5e                   	pop    si
   296ef:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   296f4:	3d 83 ec             	cmp    ax,0xec83
   296f7:	04 cd                	add    al,0xcd
   296f9:	35 5e e6             	xor    ax,0xe65e
   296fc:	6a 19                	push   0x19
   296fe:	68 88 01             	push   0x188
   29701:	68 2a b7             	push   0xb72a
   29704:	cd 3d                	int    0x3d
   29706:	0e                   	push   cs
   29707:	e8 43 fa             	call   0x2914d
   2970a:	83 c4 18             	add    sp,0x18
   2970d:	b8 01 00             	mov    ax,0x1
   29710:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29713:	50                   	push   ax
   29714:	cd 35                	int    0x35
   29716:	06                   	push   es
   29717:	ed                   	in     ax,dx
   29718:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2971c:	cd 35                	int    0x35
   2971e:	5e                   	pop    si
   2971f:	f2 cd 35             	repnz int 0x35
   29722:	06                   	push   es
   29723:	35 3b 83             	xor    ax,0x833b
   29726:	ec                   	in     al,dx
   29727:	04 cd                	add    al,0xcd
   29729:	35 5e ee             	xor    ax,0xee5e
   2972c:	cd 35                	int    0x35
   2972e:	ee                   	out    dx,al
   2972f:	cd 3d                	int    0x3d
   29731:	83 ec 04             	sub    sp,0x4
   29734:	cd 35                	int    0x35
   29736:	5e                   	pop    si
   29737:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   2973c:	3d 83 ec             	cmp    ax,0xec83
   2973f:	04 cd                	add    al,0xcd
   29741:	35 5e e6             	xor    ax,0xe65e
   29744:	6a 1a                	push   0x1a
   29746:	68 88 01             	push   0x188
   29749:	68 2a b7             	push   0xb72a
   2974c:	cd 3d                	int    0x3d
   2974e:	0e                   	push   cs
   2974f:	e8 fb f9             	call   0x2914d
   29752:	83 c4 18             	add    sp,0x18
   29755:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29758:	cd 35                	int    0x35
   2975a:	06                   	push   es
   2975b:	f1                   	int1
   2975c:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29760:	cd 35                	int    0x35
   29762:	5e                   	pop    si
   29763:	f2 cd 35             	repnz int 0x35
   29766:	06                   	push   es
   29767:	35 3b 83             	xor    ax,0x833b
   2976a:	ec                   	in     al,dx
   2976b:	04 cd                	add    al,0xcd
   2976d:	35 5e ee             	xor    ax,0xee5e
   29770:	cd 35                	int    0x35
   29772:	ee                   	out    dx,al
   29773:	cd 3d                	int    0x3d
   29775:	83 ec 04             	sub    sp,0x4
   29778:	cd 35                	int    0x35
   2977a:	5e                   	pop    si
   2977b:	ea cd 35 06 dd       	jmp    0xdd06:0x35cd
   29780:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29784:	cd 35                	int    0x35
   29786:	5e                   	pop    si
   29787:	e6 6a                	out    0x6a,al
   29789:	1b 68 88             	sbb    bp,WORD PTR [bx+si-0x78]
   2978c:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   2978f:	b7 cd                	mov    bh,0xcd
   29791:	3d 0e e8             	cmp    ax,0xe80e
   29794:	b7 f9                	mov    bh,0xf9
   29796:	83 c4 18             	add    sp,0x18
   29799:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2979c:	cd 35                	int    0x35
   2979e:	06                   	push   es
   2979f:	cd 3b                	int    0x3b
   297a1:	83 ec 04             	sub    sp,0x4
   297a4:	cd 35                	int    0x35
   297a6:	5e                   	pop    si
   297a7:	f2 cd 35             	repnz int 0x35
   297aa:	06                   	push   es
   297ab:	cd 3b                	int    0x3b
   297ad:	83 ec 04             	sub    sp,0x4
   297b0:	cd 35                	int    0x35
   297b2:	5e                   	pop    si
   297b3:	ee                   	out    dx,al
   297b4:	cd 35                	int    0x35
   297b6:	06                   	push   es
   297b7:	f1                   	int1
   297b8:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   297bc:	cd 35                	int    0x35
   297be:	5e                   	pop    si
   297bf:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   297c4:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   297c8:	cd 35                	int    0x35
   297ca:	5e                   	pop    si
   297cb:	e6 6a                	out    0x6a,al
   297cd:	1c 68                	sbb    al,0x68
   297cf:	88 01                	mov    BYTE PTR [bx+di],al
   297d1:	68 2a b7             	push   0xb72a
   297d4:	cd 3d                	int    0x3d
   297d6:	0e                   	push   cs
   297d7:	e8 73 f9             	call   0x2914d
   297da:	83 c4 18             	add    sp,0x18
   297dd:	ff 76 f8             	push   WORD PTR [bp-0x8]
   297e0:	cd 35                	int    0x35
   297e2:	06                   	push   es
   297e3:	35 3b 83             	xor    ax,0x833b
   297e6:	ec                   	in     al,dx
   297e7:	04 cd                	add    al,0xcd
   297e9:	35 5e f2             	xor    ax,0xf25e
   297ec:	cd 35                	int    0x35
   297ee:	06                   	push   es
   297ef:	b5 3b                	mov    ch,0x3b
   297f1:	83 ec 04             	sub    sp,0x4
   297f4:	cd 35                	int    0x35
   297f6:	5e                   	pop    si
   297f7:	ee                   	out    dx,al
   297f8:	cd 35                	int    0x35
   297fa:	06                   	push   es
   297fb:	f5                   	cmc
   297fc:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29800:	cd 35                	int    0x35
   29802:	5e                   	pop    si
   29803:	ea cd 35 06 35       	jmp    0x3506:0x35cd
   29808:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2980c:	cd 35                	int    0x35
   2980e:	5e                   	pop    si
   2980f:	e6 6a                	out    0x6a,al
   29811:	1d 68 88             	sbb    ax,0x8868
   29814:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   29817:	b7 cd                	mov    bh,0xcd
   29819:	3d 0e e8             	cmp    ax,0xe80e
   2981c:	2f                   	das
   2981d:	f9                   	stc
   2981e:	83 c4 18             	add    sp,0x18
   29821:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29824:	cd 35                	int    0x35
   29826:	06                   	push   es
   29827:	f1                   	int1
   29828:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2982c:	cd 35                	int    0x35
   2982e:	5e                   	pop    si
   2982f:	f2 cd 35             	repnz int 0x35
   29832:	06                   	push   es
   29833:	35 3b 83             	xor    ax,0x833b
   29836:	ec                   	in     al,dx
   29837:	04 cd                	add    al,0xcd
   29839:	35 5e ee             	xor    ax,0xee5e
   2983c:	cd 35                	int    0x35
   2983e:	06                   	push   es
   2983f:	dd 3b                	fnstsw WORD PTR [bp+di]
   29841:	83 ec 04             	sub    sp,0x4
   29844:	cd 35                	int    0x35
   29846:	5e                   	pop    si
   29847:	ea cd 35 06 dd       	jmp    0xdd06:0x35cd
   2984c:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29850:	cd 35                	int    0x35
   29852:	5e                   	pop    si
   29853:	e6 6a                	out    0x6a,al
   29855:	1e                   	push   ds
   29856:	68 88 01             	push   0x188
   29859:	68 2a b7             	push   0xb72a
   2985c:	cd 3d                	int    0x3d
   2985e:	0e                   	push   cs
   2985f:	e8 eb f8             	call   0x2914d
   29862:	83 c4 18             	add    sp,0x18
   29865:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29868:	cd 35                	int    0x35
   2986a:	06                   	push   es
   2986b:	cd 3b                	int    0x3b
   2986d:	83 ec 04             	sub    sp,0x4
   29870:	cd 35                	int    0x35
   29872:	5e                   	pop    si
   29873:	f2 cd 35             	repnz int 0x35
   29876:	06                   	push   es
   29877:	cd 3b                	int    0x3b
   29879:	83 ec 04             	sub    sp,0x4
   2987c:	cd 35                	int    0x35
   2987e:	5e                   	pop    si
   2987f:	ee                   	out    dx,al
   29880:	cd 35                	int    0x35
   29882:	06                   	push   es
   29883:	d9 3b                	fnstcw WORD PTR [bp+di]
   29885:	83 ec 04             	sub    sp,0x4
   29888:	cd 35                	int    0x35
   2988a:	5e                   	pop    si
   2988b:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   29890:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29894:	cd 35                	int    0x35
   29896:	5e                   	pop    si
   29897:	e6 6a                	out    0x6a,al
   29899:	1f                   	pop    ds
   2989a:	68 88 01             	push   0x188
   2989d:	68 2a b7             	push   0xb72a
   298a0:	cd 3d                	int    0x3d
   298a2:	0e                   	push   cs
   298a3:	e8 a7 f8             	call   0x2914d
   298a6:	83 c4 18             	add    sp,0x18
   298a9:	ff 76 f8             	push   WORD PTR [bp-0x8]
   298ac:	cd 35                	int    0x35
   298ae:	06                   	push   es
   298af:	35 3b 83             	xor    ax,0x833b
   298b2:	ec                   	in     al,dx
   298b3:	04 cd                	add    al,0xcd
   298b5:	35 5e f2             	xor    ax,0xf25e
   298b8:	cd 35                	int    0x35
   298ba:	06                   	push   es
   298bb:	b5 3b                	mov    ch,0x3b
   298bd:	83 ec 04             	sub    sp,0x4
   298c0:	cd 35                	int    0x35
   298c2:	5e                   	pop    si
   298c3:	ee                   	out    dx,al
   298c4:	cd 35                	int    0x35
   298c6:	06                   	push   es
   298c7:	35 3b 83             	xor    ax,0x833b
   298ca:	ec                   	in     al,dx
   298cb:	04 cd                	add    al,0xcd
   298cd:	35 5e ea             	xor    ax,0xea5e
   298d0:	cd 35                	int    0x35
   298d2:	06                   	push   es
   298d3:	35 3b 83             	xor    ax,0x833b
   298d6:	ec                   	in     al,dx
   298d7:	04 cd                	add    al,0xcd
   298d9:	35 5e e6             	xor    ax,0xe65e
   298dc:	6a 20                	push   0x20
   298de:	68 88 01             	push   0x188
   298e1:	68 2a b7             	push   0xb72a
   298e4:	cd 3d                	int    0x3d
   298e6:	0e                   	push   cs
   298e7:	e8 63 f8             	call   0x2914d
   298ea:	83 c4 18             	add    sp,0x18
   298ed:	ff 76 f8             	push   WORD PTR [bp-0x8]
   298f0:	cd 35                	int    0x35
   298f2:	06                   	push   es
   298f3:	b1 3b                	mov    cl,0x3b
   298f5:	83 ec 04             	sub    sp,0x4
   298f8:	cd 35                	int    0x35
   298fa:	5e                   	pop    si
   298fb:	f2 cd 35             	repnz int 0x35
   298fe:	06                   	push   es
   298ff:	b1 3b                	mov    cl,0x3b
   29901:	83 ec 04             	sub    sp,0x4
   29904:	cd 35                	int    0x35
   29906:	5e                   	pop    si
   29907:	ee                   	out    dx,al
   29908:	cd 35                	int    0x35
   2990a:	06                   	push   es
   2990b:	f9                   	stc
   2990c:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29910:	cd 35                	int    0x35
   29912:	5e                   	pop    si
   29913:	ea cd 35 06 e9       	jmp    0xe906:0x35cd
   29918:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2991c:	cd 35                	int    0x35
   2991e:	5e                   	pop    si
   2991f:	e6 6a                	out    0x6a,al
   29921:	21 68 88             	and    WORD PTR [bx+si-0x78],bp
   29924:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   29927:	b7 cd                	mov    bh,0xcd
   29929:	3d 0e e8             	cmp    ax,0xe80e
   2992c:	1f                   	pop    ds
   2992d:	f8                   	clc
   2992e:	83 c4 18             	add    sp,0x18
   29931:	b8 01 00             	mov    ax,0x1
   29934:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29937:	50                   	push   ax
   29938:	cd 35                	int    0x35
   2993a:	06                   	push   es
   2993b:	b1 3b                	mov    cl,0x3b
   2993d:	83 ec 04             	sub    sp,0x4
   29940:	cd 35                	int    0x35
   29942:	5e                   	pop    si
   29943:	f2 cd 35             	repnz int 0x35
   29946:	06                   	push   es
   29947:	b1 3b                	mov    cl,0x3b
   29949:	83 ec 04             	sub    sp,0x4
   2994c:	cd 35                	int    0x35
   2994e:	5e                   	pop    si
   2994f:	ee                   	out    dx,al
   29950:	cd 35                	int    0x35
   29952:	06                   	push   es
   29953:	f9                   	stc
   29954:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29958:	cd 35                	int    0x35
   2995a:	5e                   	pop    si
   2995b:	ea cd 35 06 e9       	jmp    0xe906:0x35cd
   29960:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29964:	cd 35                	int    0x35
   29966:	5e                   	pop    si
   29967:	e6 6a                	out    0x6a,al
   29969:	24 68                	and    al,0x68
   2996b:	88 01                	mov    BYTE PTR [bx+di],al
   2996d:	68 2a b7             	push   0xb72a
   29970:	cd 3d                	int    0x3d
   29972:	0e                   	push   cs
   29973:	e8 d7 f7             	call   0x2914d
   29976:	83 c4 18             	add    sp,0x18
   29979:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2997c:	cd 35                	int    0x35
   2997e:	06                   	push   es
   2997f:	b1 3b                	mov    cl,0x3b
   29981:	83 ec 04             	sub    sp,0x4
   29984:	cd 35                	int    0x35
   29986:	5e                   	pop    si
   29987:	f2 cd 35             	repnz int 0x35
   2998a:	06                   	push   es
   2998b:	65 3b 83 ec 04       	cmp    ax,WORD PTR gs:[bp+di+0x4ec]
   29990:	cd 35                	int    0x35
   29992:	5e                   	pop    si
   29993:	ee                   	out    dx,al
   29994:	cd 35                	int    0x35
   29996:	06                   	push   es
   29997:	fd                   	std
   29998:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2999c:	cd 35                	int    0x35
   2999e:	5e                   	pop    si
   2999f:	ea cd 35 06 01       	jmp    0x106:0x35cd
   299a4:	3c 83                	cmp    al,0x83
   299a6:	ec                   	in     al,dx
   299a7:	04 cd                	add    al,0xcd
   299a9:	35 5e e6             	xor    ax,0xe65e
   299ac:	6a 22                	push   0x22
   299ae:	68 88 01             	push   0x188
   299b1:	68 2a b7             	push   0xb72a
   299b4:	cd 3d                	int    0x3d
   299b6:	0e                   	push   cs
   299b7:	e8 93 f7             	call   0x2914d
   299ba:	83 c4 18             	add    sp,0x18
   299bd:	b8 01 00             	mov    ax,0x1
   299c0:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   299c3:	50                   	push   ax
   299c4:	cd 35                	int    0x35
   299c6:	06                   	push   es
   299c7:	b1 3b                	mov    cl,0x3b
   299c9:	83 ec 04             	sub    sp,0x4
   299cc:	cd 35                	int    0x35
   299ce:	5e                   	pop    si
   299cf:	f2 cd 35             	repnz int 0x35
   299d2:	06                   	push   es
   299d3:	65 3b 83 ec 04       	cmp    ax,WORD PTR gs:[bp+di+0x4ec]
   299d8:	cd 35                	int    0x35
   299da:	5e                   	pop    si
   299db:	ee                   	out    dx,al
   299dc:	cd 35                	int    0x35
   299de:	06                   	push   es
   299df:	fd                   	std
   299e0:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   299e4:	cd 35                	int    0x35
   299e6:	5e                   	pop    si
   299e7:	ea cd 35 06 01       	jmp    0x106:0x35cd
   299ec:	3c 83                	cmp    al,0x83
   299ee:	ec                   	in     al,dx
   299ef:	04 cd                	add    al,0xcd
   299f1:	35 5e e6             	xor    ax,0xe65e
   299f4:	6a 23                	push   0x23
   299f6:	68 88 01             	push   0x188
   299f9:	68 2a b7             	push   0xb72a
   299fc:	cd 3d                	int    0x3d
   299fe:	0e                   	push   cs
   299ff:	e8 4b f7             	call   0x2914d
   29a02:	83 c4 18             	add    sp,0x18
   29a05:	c9                   	leave
   29a06:	cb                   	retf
   29a07:	55                   	push   bp
   29a08:	8b ec                	mov    bp,sp
   29a0a:	83 ec 08             	sub    sp,0x8
   29a0d:	c7 46 fc c8 00       	mov    WORD PTR [bp-0x4],0xc8
   29a12:	c7 46 fa c8 00       	mov    WORD PTR [bp-0x6],0xc8
   29a17:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   29a1c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   29a1f:	3b 06 ff 3a          	cmp    ax,WORD PTR ds:0x3aff
   29a23:	75 09                	jne    0x29a2e
   29a25:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   29a28:	3b 06 01 3b          	cmp    ax,WORD PTR ds:0x3b01
   29a2c:	74 05                	je     0x29a33
   29a2e:	c7 46 f8 02 00       	mov    WORD PTR [bp-0x8],0x2
   29a33:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   29a38:	eb 47                	jmp    0x29a81
   29a3a:	6a 02                	push   0x2
   29a3c:	cd 35                	int    0x35
   29a3e:	06                   	push   es
   29a3f:	05 3c 83             	add    ax,0x833c
   29a42:	ec                   	in     al,dx
   29a43:	04 cd                	add    al,0xcd
   29a45:	35 5e f2             	xor    ax,0xf25e
   29a48:	cd 35                	int    0x35
   29a4a:	06                   	push   es
   29a4b:	05 3c 83             	add    ax,0x833c
   29a4e:	ec                   	in     al,dx
   29a4f:	04 cd                	add    al,0xcd
   29a51:	35 5e ee             	xor    ax,0xee5e
   29a54:	cd 35                	int    0x35
   29a56:	ee                   	out    dx,al
   29a57:	cd 3d                	int    0x3d
   29a59:	83 ec 04             	sub    sp,0x4
   29a5c:	cd 35                	int    0x35
   29a5e:	5e                   	pop    si
   29a5f:	ea cd 35 06 09       	jmp    0x906:0x35cd
   29a64:	3c 83                	cmp    al,0x83
   29a66:	ec                   	in     al,dx
   29a67:	04 cd                	add    al,0xcd
   29a69:	35 5e e6             	xor    ax,0xe65e
   29a6c:	cd 3d                	int    0x3d
   29a6e:	ff 76 fe             	push   WORD PTR [bp-0x2]
   29a71:	68 88 01             	push   0x188
   29a74:	68 2a b7             	push   0xb72a
   29a77:	0e                   	push   cs
   29a78:	e8 d2 f6             	call   0x2914d
   29a7b:	83 c4 18             	add    sp,0x18
   29a7e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   29a81:	83 7e fe 07          	cmp    WORD PTR [bp-0x2],0x7
   29a85:	7c b3                	jl     0x29a3a
   29a87:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29a8a:	cd 35                	int    0x35
   29a8c:	06                   	push   es
   29a8d:	d9 3b                	fnstcw WORD PTR [bp+di]
   29a8f:	83 ec 04             	sub    sp,0x4
   29a92:	cd 35                	int    0x35
   29a94:	5e                   	pop    si
   29a95:	f2 cd 35             	repnz int 0x35
   29a98:	06                   	push   es
   29a99:	0d 3c 83             	or     ax,0x833c
   29a9c:	ec                   	in     al,dx
   29a9d:	04 cd                	add    al,0xcd
   29a9f:	35 5e ee             	xor    ax,0xee5e
   29aa2:	cd 35                	int    0x35
   29aa4:	06                   	push   es
   29aa5:	11 3c                	adc    WORD PTR [si],di
   29aa7:	83 ec 04             	sub    sp,0x4
   29aaa:	cd 35                	int    0x35
   29aac:	5e                   	pop    si
   29aad:	ea cd 35 06 15       	jmp    0x1506:0x35cd
   29ab2:	3c 83                	cmp    al,0x83
   29ab4:	ec                   	in     al,dx
   29ab5:	04 cd                	add    al,0xcd
   29ab7:	35 5e e6             	xor    ax,0xe65e
   29aba:	6a 07                	push   0x7
   29abc:	68 88 01             	push   0x188
   29abf:	68 2a b7             	push   0xb72a
   29ac2:	cd 3d                	int    0x3d
   29ac4:	0e                   	push   cs
   29ac5:	e8 85 f6             	call   0x2914d
   29ac8:	83 c4 18             	add    sp,0x18
   29acb:	b8 01 00             	mov    ax,0x1
   29ace:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29ad1:	50                   	push   ax
   29ad2:	cd 35                	int    0x35
   29ad4:	06                   	push   es
   29ad5:	d9 3b                	fnstcw WORD PTR [bp+di]
   29ad7:	83 ec 04             	sub    sp,0x4
   29ada:	cd 35                	int    0x35
   29adc:	5e                   	pop    si
   29add:	f2 cd 35             	repnz int 0x35
   29ae0:	06                   	push   es
   29ae1:	0d 3c 83             	or     ax,0x833c
   29ae4:	ec                   	in     al,dx
   29ae5:	04 cd                	add    al,0xcd
   29ae7:	35 5e ee             	xor    ax,0xee5e
   29aea:	cd 35                	int    0x35
   29aec:	06                   	push   es
   29aed:	11 3c                	adc    WORD PTR [si],di
   29aef:	83 ec 04             	sub    sp,0x4
   29af2:	cd 35                	int    0x35
   29af4:	5e                   	pop    si
   29af5:	ea cd 35 06 15       	jmp    0x1506:0x35cd
   29afa:	3c 83                	cmp    al,0x83
   29afc:	ec                   	in     al,dx
   29afd:	04 cd                	add    al,0xcd
   29aff:	35 5e e6             	xor    ax,0xe65e
   29b02:	6a 0c                	push   0xc
   29b04:	68 88 01             	push   0x188
   29b07:	68 2a b7             	push   0xb72a
   29b0a:	cd 3d                	int    0x3d
   29b0c:	0e                   	push   cs
   29b0d:	e8 3d f6             	call   0x2914d
   29b10:	83 c4 18             	add    sp,0x18
   29b13:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29b16:	cd 35                	int    0x35
   29b18:	06                   	push   es
   29b19:	19 3c                	sbb    WORD PTR [si],di
   29b1b:	83 ec 04             	sub    sp,0x4
   29b1e:	cd 35                	int    0x35
   29b20:	5e                   	pop    si
   29b21:	f2 cd 35             	repnz int 0x35
   29b24:	06                   	push   es
   29b25:	1d 3c 83             	sbb    ax,0x833c
   29b28:	ec                   	in     al,dx
   29b29:	04 cd                	add    al,0xcd
   29b2b:	35 5e ee             	xor    ax,0xee5e
   29b2e:	cd 35                	int    0x35
   29b30:	06                   	push   es
   29b31:	21 3c                	and    WORD PTR [si],di
   29b33:	83 ec 04             	sub    sp,0x4
   29b36:	cd 35                	int    0x35
   29b38:	5e                   	pop    si
   29b39:	ea cd 35 06 25       	jmp    0x2506:0x35cd
   29b3e:	3c 83                	cmp    al,0x83
   29b40:	ec                   	in     al,dx
   29b41:	04 cd                	add    al,0xcd
   29b43:	35 5e e6             	xor    ax,0xe65e
   29b46:	6a 08                	push   0x8
   29b48:	68 88 01             	push   0x188
   29b4b:	68 2a b7             	push   0xb72a
   29b4e:	cd 3d                	int    0x3d
   29b50:	0e                   	push   cs
   29b51:	e8 f9 f5             	call   0x2914d
   29b54:	83 c4 18             	add    sp,0x18
   29b57:	b8 01 00             	mov    ax,0x1
   29b5a:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29b5d:	50                   	push   ax
   29b5e:	cd 35                	int    0x35
   29b60:	06                   	push   es
   29b61:	19 3c                	sbb    WORD PTR [si],di
   29b63:	83 ec 04             	sub    sp,0x4
   29b66:	cd 35                	int    0x35
   29b68:	5e                   	pop    si
   29b69:	f2 cd 35             	repnz int 0x35
   29b6c:	06                   	push   es
   29b6d:	1d 3c 83             	sbb    ax,0x833c
   29b70:	ec                   	in     al,dx
   29b71:	04 cd                	add    al,0xcd
   29b73:	35 5e ee             	xor    ax,0xee5e
   29b76:	cd 35                	int    0x35
   29b78:	06                   	push   es
   29b79:	21 3c                	and    WORD PTR [si],di
   29b7b:	83 ec 04             	sub    sp,0x4
   29b7e:	cd 35                	int    0x35
   29b80:	5e                   	pop    si
   29b81:	ea cd 35 06 25       	jmp    0x2506:0x35cd
   29b86:	3c 83                	cmp    al,0x83
   29b88:	ec                   	in     al,dx
   29b89:	04 cd                	add    al,0xcd
   29b8b:	35 5e e6             	xor    ax,0xe65e
   29b8e:	6a 0b                	push   0xb
   29b90:	68 88 01             	push   0x188
   29b93:	68 2a b7             	push   0xb72a
   29b96:	cd 3d                	int    0x3d
   29b98:	0e                   	push   cs
   29b99:	e8 b1 f5             	call   0x2914d
   29b9c:	83 c4 18             	add    sp,0x18
   29b9f:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29ba2:	cd 35                	int    0x35
   29ba4:	06                   	push   es
   29ba5:	29 3c                	sub    WORD PTR [si],di
   29ba7:	83 ec 04             	sub    sp,0x4
   29baa:	cd 35                	int    0x35
   29bac:	5e                   	pop    si
   29bad:	f2 cd 35             	repnz int 0x35
   29bb0:	06                   	push   es
   29bb1:	51                   	push   cx
   29bb2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29bb6:	cd 35                	int    0x35
   29bb8:	5e                   	pop    si
   29bb9:	ee                   	out    dx,al
   29bba:	cd 35                	int    0x35
   29bbc:	06                   	push   es
   29bbd:	2d 3c 83             	sub    ax,0x833c
   29bc0:	ec                   	in     al,dx
   29bc1:	04 cd                	add    al,0xcd
   29bc3:	35 5e ea             	xor    ax,0xea5e
   29bc6:	cd 35                	int    0x35
   29bc8:	06                   	push   es
   29bc9:	2d 3c 83             	sub    ax,0x833c
   29bcc:	ec                   	in     al,dx
   29bcd:	04 cd                	add    al,0xcd
   29bcf:	35 5e e6             	xor    ax,0xe65e
   29bd2:	6a 09                	push   0x9
   29bd4:	68 88 01             	push   0x188
   29bd7:	68 2a b7             	push   0xb72a
   29bda:	cd 3d                	int    0x3d
   29bdc:	0e                   	push   cs
   29bdd:	e8 6d f5             	call   0x2914d
   29be0:	83 c4 18             	add    sp,0x18
   29be3:	b8 01 00             	mov    ax,0x1
   29be6:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29be9:	50                   	push   ax
   29bea:	cd 35                	int    0x35
   29bec:	06                   	push   es
   29bed:	29 3c                	sub    WORD PTR [si],di
   29bef:	83 ec 04             	sub    sp,0x4
   29bf2:	cd 35                	int    0x35
   29bf4:	5e                   	pop    si
   29bf5:	f2 cd 35             	repnz int 0x35
   29bf8:	06                   	push   es
   29bf9:	51                   	push   cx
   29bfa:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   29bfe:	cd 35                	int    0x35
   29c00:	5e                   	pop    si
   29c01:	ee                   	out    dx,al
   29c02:	cd 35                	int    0x35
   29c04:	06                   	push   es
   29c05:	2d 3c 83             	sub    ax,0x833c
   29c08:	ec                   	in     al,dx
   29c09:	04 cd                	add    al,0xcd
   29c0b:	35 5e ea             	xor    ax,0xea5e
   29c0e:	cd 35                	int    0x35
   29c10:	06                   	push   es
   29c11:	2d 3c 83             	sub    ax,0x833c
   29c14:	ec                   	in     al,dx
   29c15:	04 cd                	add    al,0xcd
   29c17:	35 5e e6             	xor    ax,0xe65e
   29c1a:	6a 0a                	push   0xa
   29c1c:	68 88 01             	push   0x188
   29c1f:	68 2a b7             	push   0xb72a
   29c22:	cd 3d                	int    0x3d
   29c24:	0e                   	push   cs
   29c25:	e8 25 f5             	call   0x2914d
   29c28:	83 c4 18             	add    sp,0x18
   29c2b:	b8 02 00             	mov    ax,0x2
   29c2e:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29c31:	50                   	push   ax
   29c32:	cd 35                	int    0x35
   29c34:	06                   	push   es
   29c35:	05 3c 83             	add    ax,0x833c
   29c38:	ec                   	in     al,dx
   29c39:	04 cd                	add    al,0xcd
   29c3b:	35 5e f2             	xor    ax,0xf25e
   29c3e:	cd 35                	int    0x35
   29c40:	06                   	push   es
   29c41:	31 3c                	xor    WORD PTR [si],di
   29c43:	83 ec 04             	sub    sp,0x4
   29c46:	cd 35                	int    0x35
   29c48:	5e                   	pop    si
   29c49:	ee                   	out    dx,al
   29c4a:	cd 35                	int    0x35
   29c4c:	ee                   	out    dx,al
   29c4d:	cd 3d                	int    0x3d
   29c4f:	83 ec 04             	sub    sp,0x4
   29c52:	cd 35                	int    0x35
   29c54:	5e                   	pop    si
   29c55:	ea cd 35 06 11       	jmp    0x1106:0x35cd
   29c5a:	3c 83                	cmp    al,0x83
   29c5c:	ec                   	in     al,dx
   29c5d:	04 cd                	add    al,0xcd
   29c5f:	35 5e e6             	xor    ax,0xe65e
   29c62:	6a 0d                	push   0xd
   29c64:	68 88 01             	push   0x188
   29c67:	68 2a b7             	push   0xb72a
   29c6a:	cd 3d                	int    0x3d
   29c6c:	0e                   	push   cs
   29c6d:	e8 dd f4             	call   0x2914d
   29c70:	83 c4 18             	add    sp,0x18
   29c73:	b8 02 00             	mov    ax,0x2
   29c76:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29c79:	50                   	push   ax
   29c7a:	cd 35                	int    0x35
   29c7c:	06                   	push   es
   29c7d:	05 3c 83             	add    ax,0x833c
   29c80:	ec                   	in     al,dx
   29c81:	04 cd                	add    al,0xcd
   29c83:	35 5e f2             	xor    ax,0xf25e
   29c86:	cd 35                	int    0x35
   29c88:	06                   	push   es
   29c89:	31 3c                	xor    WORD PTR [si],di
   29c8b:	83 ec 04             	sub    sp,0x4
   29c8e:	cd 35                	int    0x35
   29c90:	5e                   	pop    si
   29c91:	ee                   	out    dx,al
   29c92:	cd 35                	int    0x35
   29c94:	ee                   	out    dx,al
   29c95:	cd 3d                	int    0x3d
   29c97:	83 ec 04             	sub    sp,0x4
   29c9a:	cd 35                	int    0x35
   29c9c:	5e                   	pop    si
   29c9d:	ea cd 35 06 09       	jmp    0x906:0x35cd
   29ca2:	3c 83                	cmp    al,0x83
   29ca4:	ec                   	in     al,dx
   29ca5:	04 cd                	add    al,0xcd
   29ca7:	35 5e e6             	xor    ax,0xe65e
   29caa:	6a 11                	push   0x11
   29cac:	68 88 01             	push   0x188
   29caf:	68 2a b7             	push   0xb72a
   29cb2:	cd 3d                	int    0x3d
   29cb4:	0e                   	push   cs
   29cb5:	e8 95 f4             	call   0x2914d
   29cb8:	83 c4 18             	add    sp,0x18
   29cbb:	c7 46 fe 0e 00       	mov    WORD PTR [bp-0x2],0xe
   29cc0:	eb 4c                	jmp    0x29d0e
   29cc2:	b8 02 00             	mov    ax,0x2
   29cc5:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29cc8:	50                   	push   ax
   29cc9:	cd 35                	int    0x35
   29ccb:	06                   	push   es
   29ccc:	05 3c 83             	add    ax,0x833c
   29ccf:	ec                   	in     al,dx
   29cd0:	04 cd                	add    al,0xcd
   29cd2:	35 5e f2             	xor    ax,0xf25e
   29cd5:	cd 35                	int    0x35
   29cd7:	06                   	push   es
   29cd8:	05 3c 83             	add    ax,0x833c
   29cdb:	ec                   	in     al,dx
   29cdc:	04 cd                	add    al,0xcd
   29cde:	35 5e ee             	xor    ax,0xee5e
   29ce1:	cd 35                	int    0x35
   29ce3:	ee                   	out    dx,al
   29ce4:	cd 3d                	int    0x3d
   29ce6:	83 ec 04             	sub    sp,0x4
   29ce9:	cd 35                	int    0x35
   29ceb:	5e                   	pop    si
   29cec:	ea cd 35 06 09       	jmp    0x906:0x35cd
   29cf1:	3c 83                	cmp    al,0x83
   29cf3:	ec                   	in     al,dx
   29cf4:	04 cd                	add    al,0xcd
   29cf6:	35 5e e6             	xor    ax,0xe65e
   29cf9:	cd 3d                	int    0x3d
   29cfb:	ff 76 fe             	push   WORD PTR [bp-0x2]
   29cfe:	68 88 01             	push   0x188
   29d01:	68 2a b7             	push   0xb72a
   29d04:	0e                   	push   cs
   29d05:	e8 45 f4             	call   0x2914d
   29d08:	83 c4 18             	add    sp,0x18
   29d0b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   29d0e:	83 7e fe 11          	cmp    WORD PTR [bp-0x2],0x11
   29d12:	7c ae                	jl     0x29cc2
   29d14:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29d17:	cd 35                	int    0x35
   29d19:	06                   	push   es
   29d1a:	35 3c 83             	xor    ax,0x833c
   29d1d:	ec                   	in     al,dx
   29d1e:	04 cd                	add    al,0xcd
   29d20:	35 5e f2             	xor    ax,0xf25e
   29d23:	cd 35                	int    0x35
   29d25:	06                   	push   es
   29d26:	1d 3c 83             	sbb    ax,0x833c
   29d29:	ec                   	in     al,dx
   29d2a:	04 cd                	add    al,0xcd
   29d2c:	35 5e ee             	xor    ax,0xee5e
   29d2f:	cd 35                	int    0x35
   29d31:	06                   	push   es
   29d32:	05 3c 83             	add    ax,0x833c
   29d35:	ec                   	in     al,dx
   29d36:	04 cd                	add    al,0xcd
   29d38:	35 5e ea             	xor    ax,0xea5e
   29d3b:	cd 35                	int    0x35
   29d3d:	06                   	push   es
   29d3e:	09 3c                	or     WORD PTR [si],di
   29d40:	83 ec 04             	sub    sp,0x4
   29d43:	cd 35                	int    0x35
   29d45:	5e                   	pop    si
   29d46:	e6 6a                	out    0x6a,al
   29d48:	12 68 88             	adc    ch,BYTE PTR [bx+si-0x78]
   29d4b:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   29d4e:	b7 cd                	mov    bh,0xcd
   29d50:	3d 0e e8             	cmp    ax,0xe80e
   29d53:	f8                   	clc
   29d54:	f3 83 c4 18          	repz add sp,0x18
   29d58:	b8 01 00             	mov    ax,0x1
   29d5b:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29d5e:	50                   	push   ax
   29d5f:	cd 35                	int    0x35
   29d61:	06                   	push   es
   29d62:	35 3c 83             	xor    ax,0x833c
   29d65:	ec                   	in     al,dx
   29d66:	04 cd                	add    al,0xcd
   29d68:	35 5e f2             	xor    ax,0xf25e
   29d6b:	cd 35                	int    0x35
   29d6d:	06                   	push   es
   29d6e:	1d 3c 83             	sbb    ax,0x833c
   29d71:	ec                   	in     al,dx
   29d72:	04 cd                	add    al,0xcd
   29d74:	35 5e ee             	xor    ax,0xee5e
   29d77:	cd 35                	int    0x35
   29d79:	06                   	push   es
   29d7a:	05 3c 83             	add    ax,0x833c
   29d7d:	ec                   	in     al,dx
   29d7e:	04 cd                	add    al,0xcd
   29d80:	35 5e ea             	xor    ax,0xea5e
   29d83:	cd 35                	int    0x35
   29d85:	06                   	push   es
   29d86:	09 3c                	or     WORD PTR [si],di
   29d88:	83 ec 04             	sub    sp,0x4
   29d8b:	cd 35                	int    0x35
   29d8d:	5e                   	pop    si
   29d8e:	e6 6a                	out    0x6a,al
   29d90:	15 68 88             	adc    ax,0x8868
   29d93:	01 68 2a             	add    WORD PTR [bx+si+0x2a],bp
   29d96:	b7 cd                	mov    bh,0xcd
   29d98:	3d 0e e8             	cmp    ax,0xe80e
   29d9b:	b0 f3                	mov    al,0xf3
   29d9d:	83 c4 18             	add    sp,0x18
   29da0:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29da3:	cd 35                	int    0x35
   29da5:	06                   	push   es
   29da6:	05 3c 83             	add    ax,0x833c
   29da9:	ec                   	in     al,dx
   29daa:	04 cd                	add    al,0xcd
   29dac:	35 5e f2             	xor    ax,0xf25e
   29daf:	cd 35                	int    0x35
   29db1:	06                   	push   es
   29db2:	29 3c                	sub    WORD PTR [si],di
   29db4:	83 ec 04             	sub    sp,0x4
   29db7:	cd 35                	int    0x35
   29db9:	5e                   	pop    si
   29dba:	ee                   	out    dx,al
   29dbb:	cd 35                	int    0x35
   29dbd:	06                   	push   es
   29dbe:	39 3c                	cmp    WORD PTR [si],di
   29dc0:	83 ec 04             	sub    sp,0x4
   29dc3:	cd 35                	int    0x35
   29dc5:	5e                   	pop    si
   29dc6:	ea cd 35 06 1d       	jmp    0x1d06:0x35cd
   29dcb:	3c 83                	cmp    al,0x83
   29dcd:	ec                   	in     al,dx
   29dce:	04 cd                	add    al,0xcd
   29dd0:	35 5e e6             	xor    ax,0xe65e
   29dd3:	6a 13                	push   0x13
   29dd5:	68 88 01             	push   0x188
   29dd8:	68 2a b7             	push   0xb72a
   29ddb:	cd 3d                	int    0x3d
   29ddd:	0e                   	push   cs
   29dde:	e8 6c f3             	call   0x2914d
   29de1:	83 c4 18             	add    sp,0x18
   29de4:	b8 01 00             	mov    ax,0x1
   29de7:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29dea:	50                   	push   ax
   29deb:	cd 35                	int    0x35
   29ded:	06                   	push   es
   29dee:	05 3c 83             	add    ax,0x833c
   29df1:	ec                   	in     al,dx
   29df2:	04 cd                	add    al,0xcd
   29df4:	35 5e f2             	xor    ax,0xf25e
   29df7:	cd 35                	int    0x35
   29df9:	06                   	push   es
   29dfa:	29 3c                	sub    WORD PTR [si],di
   29dfc:	83 ec 04             	sub    sp,0x4
   29dff:	cd 35                	int    0x35
   29e01:	5e                   	pop    si
   29e02:	ee                   	out    dx,al
   29e03:	cd 35                	int    0x35
   29e05:	06                   	push   es
   29e06:	39 3c                	cmp    WORD PTR [si],di
   29e08:	83 ec 04             	sub    sp,0x4
   29e0b:	cd 35                	int    0x35
   29e0d:	5e                   	pop    si
   29e0e:	ea cd 35 06 1d       	jmp    0x1d06:0x35cd
   29e13:	3c 83                	cmp    al,0x83
   29e15:	ec                   	in     al,dx
   29e16:	04 cd                	add    al,0xcd
   29e18:	35 5e e6             	xor    ax,0xe65e
   29e1b:	6a 14                	push   0x14
   29e1d:	68 88 01             	push   0x188
   29e20:	68 2a b7             	push   0xb72a
   29e23:	cd 3d                	int    0x3d
   29e25:	0e                   	push   cs
   29e26:	e8 24 f3             	call   0x2914d
   29e29:	83 c4 18             	add    sp,0x18
   29e2c:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29e2f:	cd 35                	int    0x35
   29e31:	06                   	push   es
   29e32:	05 3c 83             	add    ax,0x833c
   29e35:	ec                   	in     al,dx
   29e36:	04 cd                	add    al,0xcd
   29e38:	35 5e f2             	xor    ax,0xf25e
   29e3b:	cd 35                	int    0x35
   29e3d:	06                   	push   es
   29e3e:	1d 3c 83             	sbb    ax,0x833c
   29e41:	ec                   	in     al,dx
   29e42:	04 cd                	add    al,0xcd
   29e44:	35 5e ee             	xor    ax,0xee5e
   29e47:	cd 35                	int    0x35
   29e49:	ee                   	out    dx,al
   29e4a:	cd 3d                	int    0x3d
   29e4c:	83 ec 04             	sub    sp,0x4
   29e4f:	cd 35                	int    0x35
   29e51:	5e                   	pop    si
   29e52:	ea cd 35 06 3d       	jmp    0x3d06:0x35cd
   29e57:	3c 83                	cmp    al,0x83
   29e59:	ec                   	in     al,dx
   29e5a:	04 cd                	add    al,0xcd
   29e5c:	35 5e e6             	xor    ax,0xe65e
   29e5f:	6a 16                	push   0x16
   29e61:	68 88 01             	push   0x188
   29e64:	68 2a b7             	push   0xb72a
   29e67:	cd 3d                	int    0x3d
   29e69:	0e                   	push   cs
   29e6a:	e8 e0 f2             	call   0x2914d
   29e6d:	83 c4 18             	add    sp,0x18
   29e70:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29e73:	cd 35                	int    0x35
   29e75:	06                   	push   es
   29e76:	05 3c 83             	add    ax,0x833c
   29e79:	ec                   	in     al,dx
   29e7a:	04 cd                	add    al,0xcd
   29e7c:	35 5e f2             	xor    ax,0xf25e
   29e7f:	cd 35                	int    0x35
   29e81:	06                   	push   es
   29e82:	05 3c 83             	add    ax,0x833c
   29e85:	ec                   	in     al,dx
   29e86:	04 cd                	add    al,0xcd
   29e88:	35 5e ee             	xor    ax,0xee5e
   29e8b:	cd 35                	int    0x35
   29e8d:	ee                   	out    dx,al
   29e8e:	cd 3d                	int    0x3d
   29e90:	83 ec 04             	sub    sp,0x4
   29e93:	cd 35                	int    0x35
   29e95:	5e                   	pop    si
   29e96:	ea cd 35 06 09       	jmp    0x906:0x35cd
   29e9b:	3c 83                	cmp    al,0x83
   29e9d:	ec                   	in     al,dx
   29e9e:	04 cd                	add    al,0xcd
   29ea0:	35 5e e6             	xor    ax,0xe65e
   29ea3:	6a 17                	push   0x17
   29ea5:	68 88 01             	push   0x188
   29ea8:	68 2a b7             	push   0xb72a
   29eab:	cd 3d                	int    0x3d
   29ead:	0e                   	push   cs
   29eae:	e8 9c f2             	call   0x2914d
   29eb1:	83 c4 18             	add    sp,0x18
   29eb4:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29eb7:	cd 35                	int    0x35
   29eb9:	06                   	push   es
   29eba:	05 3c 83             	add    ax,0x833c
   29ebd:	ec                   	in     al,dx
   29ebe:	04 cd                	add    al,0xcd
   29ec0:	35 5e f2             	xor    ax,0xf25e
   29ec3:	cd 35                	int    0x35
   29ec5:	06                   	push   es
   29ec6:	1d 3c 83             	sbb    ax,0x833c
   29ec9:	ec                   	in     al,dx
   29eca:	04 cd                	add    al,0xcd
   29ecc:	35 5e ee             	xor    ax,0xee5e
   29ecf:	cd 35                	int    0x35
   29ed1:	ee                   	out    dx,al
   29ed2:	cd 3d                	int    0x3d
   29ed4:	83 ec 04             	sub    sp,0x4
   29ed7:	cd 35                	int    0x35
   29ed9:	5e                   	pop    si
   29eda:	ea cd 35 06 09       	jmp    0x906:0x35cd
   29edf:	3c 83                	cmp    al,0x83
   29ee1:	ec                   	in     al,dx
   29ee2:	04 cd                	add    al,0xcd
   29ee4:	35 5e e6             	xor    ax,0xe65e
   29ee7:	6a 18                	push   0x18
   29ee9:	68 88 01             	push   0x188
   29eec:	68 2a b7             	push   0xb72a
   29eef:	cd 3d                	int    0x3d
   29ef1:	0e                   	push   cs
   29ef2:	e8 58 f2             	call   0x2914d
   29ef5:	83 c4 18             	add    sp,0x18
   29ef8:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29efb:	cd 35                	int    0x35
   29efd:	06                   	push   es
   29efe:	41                   	inc    cx
   29eff:	3c 83                	cmp    al,0x83
   29f01:	ec                   	in     al,dx
   29f02:	04 cd                	add    al,0xcd
   29f04:	35 5e f2             	xor    ax,0xf25e
   29f07:	cd 35                	int    0x35
   29f09:	06                   	push   es
   29f0a:	1d 3c 83             	sbb    ax,0x833c
   29f0d:	ec                   	in     al,dx
   29f0e:	04 cd                	add    al,0xcd
   29f10:	35 5e ee             	xor    ax,0xee5e
   29f13:	cd 35                	int    0x35
   29f15:	ee                   	out    dx,al
   29f16:	cd 3d                	int    0x3d
   29f18:	83 ec 04             	sub    sp,0x4
   29f1b:	cd 35                	int    0x35
   29f1d:	5e                   	pop    si
   29f1e:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   29f23:	3d 83 ec             	cmp    ax,0xec83
   29f26:	04 cd                	add    al,0xcd
   29f28:	35 5e e6             	xor    ax,0xe65e
   29f2b:	6a 19                	push   0x19
   29f2d:	68 88 01             	push   0x188
   29f30:	68 2a b7             	push   0xb72a
   29f33:	cd 3d                	int    0x3d
   29f35:	0e                   	push   cs
   29f36:	e8 14 f2             	call   0x2914d
   29f39:	83 c4 18             	add    sp,0x18
   29f3c:	b8 01 00             	mov    ax,0x1
   29f3f:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   29f42:	50                   	push   ax
   29f43:	cd 35                	int    0x35
   29f45:	06                   	push   es
   29f46:	41                   	inc    cx
   29f47:	3c 83                	cmp    al,0x83
   29f49:	ec                   	in     al,dx
   29f4a:	04 cd                	add    al,0xcd
   29f4c:	35 5e f2             	xor    ax,0xf25e
   29f4f:	cd 35                	int    0x35
   29f51:	06                   	push   es
   29f52:	1d 3c 83             	sbb    ax,0x833c
   29f55:	ec                   	in     al,dx
   29f56:	04 cd                	add    al,0xcd
   29f58:	35 5e ee             	xor    ax,0xee5e
   29f5b:	cd 35                	int    0x35
   29f5d:	ee                   	out    dx,al
   29f5e:	cd 3d                	int    0x3d
   29f60:	83 ec 04             	sub    sp,0x4
   29f63:	cd 35                	int    0x35
   29f65:	5e                   	pop    si
   29f66:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   29f6b:	3d 83 ec             	cmp    ax,0xec83
   29f6e:	04 cd                	add    al,0xcd
   29f70:	35 5e e6             	xor    ax,0xe65e
   29f73:	6a 1a                	push   0x1a
   29f75:	68 88 01             	push   0x188
   29f78:	68 2a b7             	push   0xb72a
   29f7b:	cd 3d                	int    0x3d
   29f7d:	0e                   	push   cs
   29f7e:	e8 cc f1             	call   0x2914d
   29f81:	83 c4 18             	add    sp,0x18
   29f84:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29f87:	cd 35                	int    0x35
   29f89:	06                   	push   es
   29f8a:	65 3b 83 ec 04       	cmp    ax,WORD PTR gs:[bp+di+0x4ec]
   29f8f:	cd 35                	int    0x35
   29f91:	5e                   	pop    si
   29f92:	f2 cd 35             	repnz int 0x35
   29f95:	06                   	push   es
   29f96:	1d 3c 83             	sbb    ax,0x833c
   29f99:	ec                   	in     al,dx
   29f9a:	04 cd                	add    al,0xcd
   29f9c:	35 5e ee             	xor    ax,0xee5e
   29f9f:	cd 35                	int    0x35
   29fa1:	e8 cd 3d             	call   0x2dd71
   29fa4:	83 ec 04             	sub    sp,0x4
   29fa7:	cd 35                	int    0x35
   29fa9:	5e                   	pop    si
   29faa:	ea cd 35 06 31       	jmp    0x3106:0x35cd
   29faf:	3c 83                	cmp    al,0x83
   29fb1:	ec                   	in     al,dx
   29fb2:	04 cd                	add    al,0xcd
   29fb4:	35 5e e6             	xor    ax,0xe65e
   29fb7:	6a 1b                	push   0x1b
   29fb9:	68 88 01             	push   0x188
   29fbc:	68 2a b7             	push   0xb72a
   29fbf:	cd 3d                	int    0x3d
   29fc1:	0e                   	push   cs
   29fc2:	e8 88 f1             	call   0x2914d
   29fc5:	83 c4 18             	add    sp,0x18
   29fc8:	ff 76 f8             	push   WORD PTR [bp-0x8]
   29fcb:	cd 35                	int    0x35
   29fcd:	06                   	push   es
   29fce:	29 3c                	sub    WORD PTR [si],di
   29fd0:	83 ec 04             	sub    sp,0x4
   29fd3:	cd 35                	int    0x35
   29fd5:	5e                   	pop    si
   29fd6:	f2 cd 35             	repnz int 0x35
   29fd9:	06                   	push   es
   29fda:	29 3c                	sub    WORD PTR [si],di
   29fdc:	83 ec 04             	sub    sp,0x4
   29fdf:	cd 35                	int    0x35
   29fe1:	5e                   	pop    si
   29fe2:	ee                   	out    dx,al
   29fe3:	cd 35                	int    0x35
   29fe5:	06                   	push   es
   29fe6:	45                   	inc    bp
   29fe7:	3c 83                	cmp    al,0x83
   29fe9:	ec                   	in     al,dx
   29fea:	04 cd                	add    al,0xcd
   29fec:	35 5e ea             	xor    ax,0xea5e
   29fef:	cd 35                	int    0x35
   29ff1:	06                   	push   es
   29ff2:	2d 3c 83             	sub    ax,0x833c
   29ff5:	ec                   	in     al,dx
   29ff6:	04 cd                	add    al,0xcd
   29ff8:	35 5e e6             	xor    ax,0xe65e
   29ffb:	6a 1c                	push   0x1c
   29ffd:	68 88 01             	push   0x188
   2a000:	68 2a b7             	push   0xb72a
   2a003:	cd 3d                	int    0x3d
   2a005:	0e                   	push   cs
   2a006:	e8 44 f1             	call   0x2914d
   2a009:	83 c4 18             	add    sp,0x18
   2a00c:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a00f:	cd 35                	int    0x35
   2a011:	06                   	push   es
   2a012:	1d 3c 83             	sbb    ax,0x833c
   2a015:	ec                   	in     al,dx
   2a016:	04 cd                	add    al,0xcd
   2a018:	35 5e f2             	xor    ax,0xf25e
   2a01b:	cd 35                	int    0x35
   2a01d:	06                   	push   es
   2a01e:	05 3c 83             	add    ax,0x833c
   2a021:	ec                   	in     al,dx
   2a022:	04 cd                	add    al,0xcd
   2a024:	35 5e ee             	xor    ax,0xee5e
   2a027:	cd 35                	int    0x35
   2a029:	06                   	push   es
   2a02a:	49                   	dec    cx
   2a02b:	3c 83                	cmp    al,0x83
   2a02d:	ec                   	in     al,dx
   2a02e:	04 cd                	add    al,0xcd
   2a030:	35 5e ea             	xor    ax,0xea5e
   2a033:	cd 35                	int    0x35
   2a035:	06                   	push   es
   2a036:	1d 3c 83             	sbb    ax,0x833c
   2a039:	ec                   	in     al,dx
   2a03a:	04 cd                	add    al,0xcd
   2a03c:	35 5e e6             	xor    ax,0xe65e
   2a03f:	6a 1d                	push   0x1d
   2a041:	68 88 01             	push   0x188
   2a044:	68 2a b7             	push   0xb72a
   2a047:	cd 3d                	int    0x3d
   2a049:	0e                   	push   cs
   2a04a:	e8 00 f1             	call   0x2914d
   2a04d:	83 c4 18             	add    sp,0x18
   2a050:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a053:	cd 35                	int    0x35
   2a055:	06                   	push   es
   2a056:	45                   	inc    bp
   2a057:	3c 83                	cmp    al,0x83
   2a059:	ec                   	in     al,dx
   2a05a:	04 cd                	add    al,0xcd
   2a05c:	35 5e f2             	xor    ax,0xf25e
   2a05f:	cd 35                	int    0x35
   2a061:	06                   	push   es
   2a062:	4d                   	dec    bp
   2a063:	3c 83                	cmp    al,0x83
   2a065:	ec                   	in     al,dx
   2a066:	04 cd                	add    al,0xcd
   2a068:	35 5e ee             	xor    ax,0xee5e
   2a06b:	cd 35                	int    0x35
   2a06d:	06                   	push   es
   2a06e:	c9                   	leave
   2a06f:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a073:	cd 35                	int    0x35
   2a075:	5e                   	pop    si
   2a076:	ea cd 35 06 c9       	jmp    0xc906:0x35cd
   2a07b:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a07f:	cd 35                	int    0x35
   2a081:	5e                   	pop    si
   2a082:	e6 6a                	out    0x6a,al
   2a084:	1e                   	push   ds
   2a085:	68 88 01             	push   0x188
   2a088:	68 2a b7             	push   0xb72a
   2a08b:	cd 3d                	int    0x3d
   2a08d:	0e                   	push   cs
   2a08e:	e8 bc f0             	call   0x2914d
   2a091:	83 c4 18             	add    sp,0x18
   2a094:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a097:	cd 35                	int    0x35
   2a099:	06                   	push   es
   2a09a:	29 3c                	sub    WORD PTR [si],di
   2a09c:	83 ec 04             	sub    sp,0x4
   2a09f:	cd 35                	int    0x35
   2a0a1:	5e                   	pop    si
   2a0a2:	f2 cd 35             	repnz int 0x35
   2a0a5:	06                   	push   es
   2a0a6:	29 3c                	sub    WORD PTR [si],di
   2a0a8:	83 ec 04             	sub    sp,0x4
   2a0ab:	cd 35                	int    0x35
   2a0ad:	5e                   	pop    si
   2a0ae:	ee                   	out    dx,al
   2a0af:	cd 35                	int    0x35
   2a0b1:	06                   	push   es
   2a0b2:	2d 3c 83             	sub    ax,0x833c
   2a0b5:	ec                   	in     al,dx
   2a0b6:	04 cd                	add    al,0xcd
   2a0b8:	35 5e ea             	xor    ax,0xea5e
   2a0bb:	cd 35                	int    0x35
   2a0bd:	06                   	push   es
   2a0be:	2d 3c 83             	sub    ax,0x833c
   2a0c1:	ec                   	in     al,dx
   2a0c2:	04 cd                	add    al,0xcd
   2a0c4:	35 5e e6             	xor    ax,0xe65e
   2a0c7:	6a 1f                	push   0x1f
   2a0c9:	68 88 01             	push   0x188
   2a0cc:	68 2a b7             	push   0xb72a
   2a0cf:	cd 3d                	int    0x3d
   2a0d1:	0e                   	push   cs
   2a0d2:	e8 78 f0             	call   0x2914d
   2a0d5:	83 c4 18             	add    sp,0x18
   2a0d8:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a0db:	cd 35                	int    0x35
   2a0dd:	06                   	push   es
   2a0de:	1d 3c 83             	sbb    ax,0x833c
   2a0e1:	ec                   	in     al,dx
   2a0e2:	04 cd                	add    al,0xcd
   2a0e4:	35 5e f2             	xor    ax,0xf25e
   2a0e7:	cd 35                	int    0x35
   2a0e9:	06                   	push   es
   2a0ea:	05 3c 83             	add    ax,0x833c
   2a0ed:	ec                   	in     al,dx
   2a0ee:	04 cd                	add    al,0xcd
   2a0f0:	35 5e ee             	xor    ax,0xee5e
   2a0f3:	cd 35                	int    0x35
   2a0f5:	06                   	push   es
   2a0f6:	1d 3c 83             	sbb    ax,0x833c
   2a0f9:	ec                   	in     al,dx
   2a0fa:	04 cd                	add    al,0xcd
   2a0fc:	35 5e ea             	xor    ax,0xea5e
   2a0ff:	cd 35                	int    0x35
   2a101:	06                   	push   es
   2a102:	1d 3c 83             	sbb    ax,0x833c
   2a105:	ec                   	in     al,dx
   2a106:	04 cd                	add    al,0xcd
   2a108:	35 5e e6             	xor    ax,0xe65e
   2a10b:	6a 20                	push   0x20
   2a10d:	68 88 01             	push   0x188
   2a110:	68 2a b7             	push   0xb72a
   2a113:	cd 3d                	int    0x3d
   2a115:	0e                   	push   cs
   2a116:	e8 34 f0             	call   0x2914d
   2a119:	83 c4 18             	add    sp,0x18
   2a11c:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a11f:	cd 35                	int    0x35
   2a121:	06                   	push   es
   2a122:	39 3c                	cmp    WORD PTR [si],di
   2a124:	83 ec 04             	sub    sp,0x4
   2a127:	cd 35                	int    0x35
   2a129:	5e                   	pop    si
   2a12a:	f2 cd 35             	repnz int 0x35
   2a12d:	06                   	push   es
   2a12e:	f5                   	cmc
   2a12f:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a133:	cd 35                	int    0x35
   2a135:	5e                   	pop    si
   2a136:	ee                   	out    dx,al
   2a137:	cd 35                	int    0x35
   2a139:	06                   	push   es
   2a13a:	51                   	push   cx
   2a13b:	3c 83                	cmp    al,0x83
   2a13d:	ec                   	in     al,dx
   2a13e:	04 cd                	add    al,0xcd
   2a140:	35 5e ea             	xor    ax,0xea5e
   2a143:	cd 35                	int    0x35
   2a145:	06                   	push   es
   2a146:	55                   	push   bp
   2a147:	3c 83                	cmp    al,0x83
   2a149:	ec                   	in     al,dx
   2a14a:	04 cd                	add    al,0xcd
   2a14c:	35 5e e6             	xor    ax,0xe65e
   2a14f:	6a 21                	push   0x21
   2a151:	68 88 01             	push   0x188
   2a154:	68 2a b7             	push   0xb72a
   2a157:	cd 3d                	int    0x3d
   2a159:	0e                   	push   cs
   2a15a:	e8 f0 ef             	call   0x2914d
   2a15d:	83 c4 18             	add    sp,0x18
   2a160:	b8 01 00             	mov    ax,0x1
   2a163:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2a166:	50                   	push   ax
   2a167:	cd 35                	int    0x35
   2a169:	06                   	push   es
   2a16a:	39 3c                	cmp    WORD PTR [si],di
   2a16c:	83 ec 04             	sub    sp,0x4
   2a16f:	cd 35                	int    0x35
   2a171:	5e                   	pop    si
   2a172:	f2 cd 35             	repnz int 0x35
   2a175:	06                   	push   es
   2a176:	f5                   	cmc
   2a177:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a17b:	cd 35                	int    0x35
   2a17d:	5e                   	pop    si
   2a17e:	ee                   	out    dx,al
   2a17f:	cd 35                	int    0x35
   2a181:	06                   	push   es
   2a182:	51                   	push   cx
   2a183:	3c 83                	cmp    al,0x83
   2a185:	ec                   	in     al,dx
   2a186:	04 cd                	add    al,0xcd
   2a188:	35 5e ea             	xor    ax,0xea5e
   2a18b:	cd 35                	int    0x35
   2a18d:	06                   	push   es
   2a18e:	55                   	push   bp
   2a18f:	3c 83                	cmp    al,0x83
   2a191:	ec                   	in     al,dx
   2a192:	04 cd                	add    al,0xcd
   2a194:	35 5e e6             	xor    ax,0xe65e
   2a197:	6a 24                	push   0x24
   2a199:	68 88 01             	push   0x188
   2a19c:	68 2a b7             	push   0xb72a
   2a19f:	cd 3d                	int    0x3d
   2a1a1:	0e                   	push   cs
   2a1a2:	e8 a8 ef             	call   0x2914d
   2a1a5:	83 c4 18             	add    sp,0x18
   2a1a8:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a1ab:	cd 35                	int    0x35
   2a1ad:	06                   	push   es
   2a1ae:	59                   	pop    cx
   2a1af:	3c 83                	cmp    al,0x83
   2a1b1:	ec                   	in     al,dx
   2a1b2:	04 cd                	add    al,0xcd
   2a1b4:	35 5e f2             	xor    ax,0xf25e
   2a1b7:	cd 35                	int    0x35
   2a1b9:	06                   	push   es
   2a1ba:	5d                   	pop    bp
   2a1bb:	3c 83                	cmp    al,0x83
   2a1bd:	ec                   	in     al,dx
   2a1be:	04 cd                	add    al,0xcd
   2a1c0:	35 5e ee             	xor    ax,0xee5e
   2a1c3:	cd 35                	int    0x35
   2a1c5:	06                   	push   es
   2a1c6:	61                   	popa
   2a1c7:	3c 83                	cmp    al,0x83
   2a1c9:	ec                   	in     al,dx
   2a1ca:	04 cd                	add    al,0xcd
   2a1cc:	35 5e ea             	xor    ax,0xea5e
   2a1cf:	cd 35                	int    0x35
   2a1d1:	06                   	push   es
   2a1d2:	65 3c 83             	gs cmp al,0x83
   2a1d5:	ec                   	in     al,dx
   2a1d6:	04 cd                	add    al,0xcd
   2a1d8:	35 5e e6             	xor    ax,0xe65e
   2a1db:	6a 22                	push   0x22
   2a1dd:	68 88 01             	push   0x188
   2a1e0:	68 2a b7             	push   0xb72a
   2a1e3:	cd 3d                	int    0x3d
   2a1e5:	0e                   	push   cs
   2a1e6:	e8 64 ef             	call   0x2914d
   2a1e9:	83 c4 18             	add    sp,0x18
   2a1ec:	b8 01 00             	mov    ax,0x1
   2a1ef:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2a1f2:	50                   	push   ax
   2a1f3:	cd 35                	int    0x35
   2a1f5:	06                   	push   es
   2a1f6:	59                   	pop    cx
   2a1f7:	3c 83                	cmp    al,0x83
   2a1f9:	ec                   	in     al,dx
   2a1fa:	04 cd                	add    al,0xcd
   2a1fc:	35 5e f2             	xor    ax,0xf25e
   2a1ff:	cd 35                	int    0x35
   2a201:	06                   	push   es
   2a202:	5d                   	pop    bp
   2a203:	3c 83                	cmp    al,0x83
   2a205:	ec                   	in     al,dx
   2a206:	04 cd                	add    al,0xcd
   2a208:	35 5e ee             	xor    ax,0xee5e
   2a20b:	cd 35                	int    0x35
   2a20d:	06                   	push   es
   2a20e:	61                   	popa
   2a20f:	3c 83                	cmp    al,0x83
   2a211:	ec                   	in     al,dx
   2a212:	04 cd                	add    al,0xcd
   2a214:	35 5e ea             	xor    ax,0xea5e
   2a217:	cd 35                	int    0x35
   2a219:	06                   	push   es
   2a21a:	65 3c 83             	gs cmp al,0x83
   2a21d:	ec                   	in     al,dx
   2a21e:	04 cd                	add    al,0xcd
   2a220:	35 5e e6             	xor    ax,0xe65e
   2a223:	6a 23                	push   0x23
   2a225:	68 88 01             	push   0x188
   2a228:	68 2a b7             	push   0xb72a
   2a22b:	cd 3d                	int    0x3d
   2a22d:	0e                   	push   cs
   2a22e:	e8 1c ef             	call   0x2914d
   2a231:	83 c4 18             	add    sp,0x18
   2a234:	c9                   	leave
   2a235:	cb                   	retf
   2a236:	55                   	push   bp
   2a237:	8b ec                	mov    bp,sp
   2a239:	81 ec 3a 02          	sub    sp,0x23a
   2a23d:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
   2a241:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a244:	6b db 0e             	imul   bx,bx,0xe
   2a247:	b8 88 01             	mov    ax,0x188
   2a24a:	8e c0                	mov    es,ax
   2a24c:	26 8b 87 f2 b3       	mov    ax,WORD PTR es:[bx-0x4c0e]
   2a251:	26 0b 87 f4 b3       	or     ax,WORD PTR es:[bx-0x4c0c]
   2a256:	74 57                	je     0x2a2af
   2a258:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a25b:	6b db 0e             	imul   bx,bx,0xe
   2a25e:	b8 88 01             	mov    ax,0x188
   2a261:	8e c0                	mov    es,ax
   2a263:	26 81 bf f4 b3 88 01 	cmp    WORD PTR es:[bx-0x4c0c],0x188
   2a26a:	75 09                	jne    0x2a275
   2a26c:	26 81 bf f2 b3 2a b7 	cmp    WORD PTR es:[bx-0x4c0e],0xb72a
   2a273:	74 3a                	je     0x2a2af
   2a275:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a278:	6b db 0e             	imul   bx,bx,0xe
   2a27b:	b8 88 01             	mov    ax,0x188
   2a27e:	8e c0                	mov    es,ax
   2a280:	26 81 bf f4 b3 88 01 	cmp    WORD PTR es:[bx-0x4c0c],0x188
   2a287:	75 09                	jne    0x2a292
   2a289:	26 81 bf f2 b3 90 b4 	cmp    WORD PTR es:[bx-0x4c0e],0xb490
   2a290:	74 1d                	je     0x2a2af
   2a292:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a295:	6b db 0e             	imul   bx,bx,0xe
   2a298:	b8 88 01             	mov    ax,0x188
   2a29b:	8e c0                	mov    es,ax
   2a29d:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2a2a2:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2a2a7:	9a c2 24 00 00       	call   0x0:0x24c2
   2a2ac:	83 c4 04             	add    sp,0x4
   2a2af:	6a 00                	push   0x0
   2a2b1:	68 9a 02             	push   0x29a
   2a2b4:	9a 1d 0a 20 00       	call   0x20:0xa1d
   2a2b9:	83 c4 04             	add    sp,0x4
   2a2bc:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a2bf:	6b db 0e             	imul   bx,bx,0xe
   2a2c2:	b9 88 01             	mov    cx,0x188
   2a2c5:	8e c1                	mov    es,cx
   2a2c7:	26 89 97 f4 b3       	mov    WORD PTR es:[bx-0x4c0c],dx
   2a2cc:	26 89 87 f2 b3       	mov    WORD PTR es:[bx-0x4c0e],ax
   2a2d1:	1e                   	push   ds
   2a2d2:	68 69 3c             	push   0x3c69
   2a2d5:	ff 76 08             	push   WORD PTR [bp+0x8]
   2a2d8:	ff 76 06             	push   WORD PTR [bp+0x6]
   2a2db:	9a 34 00 48 01       	call   0x148:0x34
   2a2e0:	83 c4 08             	add    sp,0x8
   2a2e3:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   2a2e6:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2a2e9:	52                   	push   dx
   2a2ea:	50                   	push   ax
   2a2eb:	6a 02                	push   0x2
   2a2ed:	9a 25 00 70 01       	call   0x170:0x25
   2a2f2:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2a2f5:	3d ff ff             	cmp    ax,0xffff
   2a2f8:	75 66                	jne    0x2a360
   2a2fa:	ff 76 fc             	push   WORD PTR [bp-0x4]
   2a2fd:	ff 76 fa             	push   WORD PTR [bp-0x6]
   2a300:	9a c2 24 00 00       	call   0x0:0x24c2
   2a305:	83 c4 04             	add    sp,0x4
   2a308:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a30b:	6b db 0e             	imul   bx,bx,0xe
   2a30e:	b8 88 01             	mov    ax,0x188
   2a311:	8e c0                	mov    es,ax
   2a313:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2a318:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2a31d:	9a c2 24 00 00       	call   0x0:0x24c2
   2a322:	83 c4 04             	add    sp,0x4
   2a325:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a328:	6b db 0e             	imul   bx,bx,0xe
   2a32b:	b8 88 01             	mov    ax,0x188
   2a32e:	8e c0                	mov    es,ax
   2a330:	26 83 bf ec b3 00    	cmp    WORD PTR es:[bx-0x4c14],0x0
   2a336:	74 02                	je     0x2a33a
   2a338:	eb 00                	jmp    0x2a33a
   2a33a:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a33d:	6b db 0e             	imul   bx,bx,0xe
   2a340:	b8 88 01             	mov    ax,0x188
   2a343:	8e c0                	mov    es,ax
   2a345:	26 c7 87 f4 b3 88 01 	mov    WORD PTR es:[bx-0x4c0c],0x188
   2a34c:	26 c7 87 f2 b3 2a b7 	mov    WORD PTR es:[bx-0x4c0e],0xb72a
   2a353:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a356:	9a 2a 00 70 01       	call   0x170:0x2a
   2a35b:	33 c0                	xor    ax,ax
   2a35d:	e9 e1 04             	jmp    0x2a841
   2a360:	ff 76 fc             	push   WORD PTR [bp-0x4]
   2a363:	ff 76 fa             	push   WORD PTR [bp-0x6]
   2a366:	9a c2 24 00 00       	call   0x0:0x24c2
   2a36b:	83 c4 04             	add    sp,0x4
   2a36e:	68 9a 02             	push   0x29a
   2a371:	68 88 01             	push   0x188
   2a374:	68 2a b7             	push   0xb72a
   2a377:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a37a:	6b db 0e             	imul   bx,bx,0xe
   2a37d:	b8 88 01             	mov    ax,0x188
   2a380:	8e c0                	mov    es,ax
   2a382:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2a387:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2a38c:	9a a4 52 00 00       	call   0x0:0x52a4
   2a391:	83 c4 0a             	add    sp,0xa
   2a394:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a397:	1e                   	push   ds
   2a398:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   2a39b:	6b c0 0e             	imul   ax,ax,0xe
   2a39e:	05 e8 b3             	add    ax,0xb3e8
   2a3a1:	50                   	push   ax
   2a3a2:	6a 00                	push   0x0
   2a3a4:	6a 02                	push   0x2
   2a3a6:	9a 2f 00 70 01       	call   0x170:0x2f
   2a3ab:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a3ae:	6b db 0e             	imul   bx,bx,0xe
   2a3b1:	b8 88 01             	mov    ax,0x188
   2a3b4:	8e c0                	mov    es,ax
   2a3b6:	26 8b 87 e8 b3       	mov    ax,WORD PTR es:[bx-0x4c18]
   2a3bb:	3d 01 00             	cmp    ax,0x1
   2a3be:	74 03                	je     0x2a3c3
   2a3c0:	e9 bc 00             	jmp    0x2a47f
   2a3c3:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a3c6:	1e                   	push   ds
   2a3c7:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   2a3ca:	6b c0 0e             	imul   ax,ax,0xe
   2a3cd:	05 ea b3             	add    ax,0xb3ea
   2a3d0:	50                   	push   ax
   2a3d1:	6a 00                	push   0x0
   2a3d3:	6a 02                	push   0x2
   2a3d5:	9a 2f 00 70 01       	call   0x170:0x2f
   2a3da:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a3dd:	1e                   	push   ds
   2a3de:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   2a3e1:	6b c0 0e             	imul   ax,ax,0xe
   2a3e4:	05 ec b3             	add    ax,0xb3ec
   2a3e7:	50                   	push   ax
   2a3e8:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a3eb:	6b db 0e             	imul   bx,bx,0xe
   2a3ee:	b8 88 01             	mov    ax,0x188
   2a3f1:	6a 00                	push   0x0
   2a3f3:	8e c0                	mov    es,ax
   2a3f5:	26 ff b7 ea b3       	push   WORD PTR es:[bx-0x4c16]
   2a3fa:	9a 2f 00 70 01       	call   0x170:0x2f
   2a3ff:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a402:	9a 25 00 48 01       	call   0x148:0x25
   2a407:	59                   	pop    cx
   2a408:	2d 04 00             	sub    ax,0x4
   2a40b:	83 da 00             	sbb    dx,0x0
   2a40e:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a411:	6b db 0e             	imul   bx,bx,0xe
   2a414:	b9 88 01             	mov    cx,0x188
   2a417:	0b d2                	or     dx,dx
   2a419:	8e c1                	mov    es,cx
   2a41b:	72 1f                	jb     0x2a43c
   2a41d:	77 07                	ja     0x2a426
   2a41f:	26 3b 87 ea b3       	cmp    ax,WORD PTR es:[bx-0x4c16]
   2a424:	76 16                	jbe    0x2a43c
   2a426:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a429:	16                   	push   ss
   2a42a:	8d 86 e6 fd          	lea    ax,[bp-0x21a]
   2a42e:	50                   	push   ax
   2a42f:	6a 00                	push   0x0
   2a431:	68 06 02             	push   0x206
   2a434:	9a 2f 00 70 01       	call   0x170:0x2f
   2a439:	e9 89 00             	jmp    0x2a4c5
   2a43c:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a43f:	9a 2a 00 70 01       	call   0x170:0x2a
   2a444:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a447:	6b db 0e             	imul   bx,bx,0xe
   2a44a:	b8 88 01             	mov    ax,0x188
   2a44d:	8e c0                	mov    es,ax
   2a44f:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2a454:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2a459:	9a c2 24 00 00       	call   0x0:0x24c2
   2a45e:	83 c4 04             	add    sp,0x4
   2a461:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a464:	6b db 0e             	imul   bx,bx,0xe
   2a467:	b8 88 01             	mov    ax,0x188
   2a46a:	8e c0                	mov    es,ax
   2a46c:	26 c7 87 f4 b3 88 01 	mov    WORD PTR es:[bx-0x4c0c],0x188
   2a473:	26 c7 87 f2 b3 2a b7 	mov    WORD PTR es:[bx-0x4c0e],0xb72a
   2a47a:	e9 c1 03             	jmp    0x2a83e
   2a47d:	eb 46                	jmp    0x2a4c5
   2a47f:	ff 76 fc             	push   WORD PTR [bp-0x4]
   2a482:	ff 76 fa             	push   WORD PTR [bp-0x6]
   2a485:	1e                   	push   ds
   2a486:	68 6e 3c             	push   0x3c6e
   2a489:	68 88 01             	push   0x188
   2a48c:	68 cc ba             	push   0xbacc
   2a48f:	9a b4 48 00 00       	call   0x0:0x48b4
   2a494:	83 c4 0c             	add    sp,0xc
   2a497:	3d 68 00             	cmp    ax,0x68
   2a49a:	7e 12                	jle    0x2a4ae
   2a49c:	1e                   	push   ds
   2a49d:	68 b5 3c             	push   0x3cb5
   2a4a0:	68 88 01             	push   0x188
   2a4a3:	68 cc ba             	push   0xbacc
   2a4a6:	9a a3 49 00 00       	call   0x0:0x49a3
   2a4ab:	83 c4 08             	add    sp,0x8
   2a4ae:	6a ff                	push   0xffff
   2a4b0:	68 88 01             	push   0x188
   2a4b3:	68 cc ba             	push   0xbacc
   2a4b6:	68 f7 01             	push   0x1f7
   2a4b9:	1e                   	push   ds
   2a4ba:	68 bd 3c             	push   0x3cbd
   2a4bd:	9a 2a 00 58 01       	call   0x158:0x2a
   2a4c2:	83 c4 0c             	add    sp,0xc
   2a4c5:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a4c8:	6b db 0e             	imul   bx,bx,0xe
   2a4cb:	b8 88 01             	mov    ax,0x188
   2a4ce:	8e c0                	mov    es,ax
   2a4d0:	26 8b 87 ee b3       	mov    ax,WORD PTR es:[bx-0x4c12]
   2a4d5:	3b 06 ff 3a          	cmp    ax,WORD PTR ds:0x3aff
   2a4d9:	75 16                	jne    0x2a4f1
   2a4db:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a4de:	6b db 0e             	imul   bx,bx,0xe
   2a4e1:	b8 88 01             	mov    ax,0x188
   2a4e4:	8e c0                	mov    es,ax
   2a4e6:	26 8b 87 f0 b3       	mov    ax,WORD PTR es:[bx-0x4c10]
   2a4eb:	3b 06 01 3b          	cmp    ax,WORD PTR ds:0x3b01
   2a4ef:	74 04                	je     0x2a4f5
   2a4f1:	80 4e ff 02          	or     BYTE PTR [bp-0x1],0x2
   2a4f5:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   2a4fa:	e9 30 03             	jmp    0x2a82d
   2a4fd:	8d 86 d8 fd          	lea    ax,[bp-0x228]
   2a501:	16                   	push   ss
   2a502:	50                   	push   ax
   2a503:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2a506:	6b c0 0e             	imul   ax,ax,0xe
   2a509:	8d 96 e6 fd          	lea    dx,[bp-0x21a]
   2a50d:	03 c2                	add    ax,dx
   2a50f:	16                   	push   ss
   2a510:	50                   	push   ax
   2a511:	b9 0e 00             	mov    cx,0xe
   2a514:	9a 7a 12 00 00       	call   0x0:0x127a
   2a519:	8d 86 c6 fd          	lea    ax,[bp-0x23a]
   2a51d:	16                   	push   ss
   2a51e:	50                   	push   ax
   2a51f:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a522:	6b db 0e             	imul   bx,bx,0xe
   2a525:	b8 88 01             	mov    ax,0x188
   2a528:	8e c0                	mov    es,ax
   2a52a:	26 8b 87 f2 b3       	mov    ax,WORD PTR es:[bx-0x4c0e]
   2a52f:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   2a532:	6b d2 12             	imul   dx,dx,0x12
   2a535:	03 c2                	add    ax,dx
   2a537:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2a53c:	50                   	push   ax
   2a53d:	b9 12 00             	mov    cx,0x12
   2a540:	9a 7a 12 00 00       	call   0x0:0x127a
   2a545:	8b 86 d8 fd          	mov    ax,WORD PTR [bp-0x228]
   2a549:	89 86 ce fd          	mov    WORD PTR [bp-0x232],ax
   2a54d:	8b 86 da fd          	mov    ax,WORD PTR [bp-0x226]
   2a551:	89 86 d0 fd          	mov    WORD PTR [bp-0x230],ax
   2a555:	8b 86 dc fd          	mov    ax,WORD PTR [bp-0x224]
   2a559:	89 86 d2 fd          	mov    WORD PTR [bp-0x22e],ax
   2a55d:	8b 86 de fd          	mov    ax,WORD PTR [bp-0x222]
   2a561:	89 86 d4 fd          	mov    WORD PTR [bp-0x22c],ax
   2a565:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   2a568:	b4 00                	mov    ah,0x0
   2a56a:	8b 96 e4 fd          	mov    dx,WORD PTR [bp-0x21c]
   2a56e:	0b d0                	or     dx,ax
   2a570:	89 96 d6 fd          	mov    WORD PTR [bp-0x22a],dx
   2a574:	f7 86 d6 fd 02 00    	test   WORD PTR [bp-0x22a],0x2
   2a57a:	75 03                	jne    0x2a57f
   2a57c:	e9 e5 01             	jmp    0x2a764
   2a57f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   2a582:	6b db 12             	imul   bx,bx,0x12
   2a585:	b8 88 01             	mov    ax,0x188
   2a588:	8e c0                	mov    es,ax
   2a58a:	26 8b 87 2e b7       	mov    ax,WORD PTR es:[bx-0x48d2]
   2a58f:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a592:	cd 3b                	int    0x3b
   2a594:	46                   	inc    si
   2a595:	ec                   	in     al,dx
   2a596:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   2a599:	6b db 12             	imul   bx,bx,0x12
   2a59c:	b8 88 01             	mov    ax,0x188
   2a59f:	8e c0                	mov    es,ax
   2a5a1:	26 8b 87 36 b7       	mov    ax,WORD PTR es:[bx-0x48ca]
   2a5a6:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a5a9:	cd 3b                	int    0x3b
   2a5ab:	46                   	inc    si
   2a5ac:	ec                   	in     al,dx
   2a5ad:	cd 3a                	int    0x3a
   2a5af:	f9                   	stc
   2a5b0:	cd 35                	int    0x35
   2a5b2:	5e                   	pop    si
   2a5b3:	f0 cd 3d             	lock int 0x3d
   2a5b6:	8b 86 dc fd          	mov    ax,WORD PTR [bp-0x224]
   2a5ba:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a5bd:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   2a5c2:	cd 37                	int    0x37
   2a5c4:	46                   	inc    si
   2a5c5:	ec                   	in     al,dx
   2a5c6:	cd 34                	int    0x34
   2a5c8:	4e                   	dec    si
   2a5c9:	f0 cd 34             	lock int 0x34
   2a5cc:	06                   	push   es
   2a5cd:	31 3b                	xor    WORD PTR [bp+di],di
   2a5cf:	9a 99 10 00 00       	call   0x0:0x1099
   2a5d4:	89 86 ca fd          	mov    WORD PTR [bp-0x236],ax
   2a5d8:	8b 86 e0 fd          	mov    ax,WORD PTR [bp-0x220]
   2a5dc:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a5df:	cd 3b                	int    0x3b
   2a5e1:	46                   	inc    si
   2a5e2:	ec                   	in     al,dx
   2a5e3:	cd 34                	int    0x34
   2a5e5:	4e                   	dec    si
   2a5e6:	f0 cd 34             	lock int 0x34
   2a5e9:	06                   	push   es
   2a5ea:	31 3b                	xor    WORD PTR [bp+di],di
   2a5ec:	9a 99 10 00 00       	call   0x0:0x1099
   2a5f1:	01 86 c6 fd          	add    WORD PTR [bp-0x23a],ax
   2a5f5:	8b 86 c6 fd          	mov    ax,WORD PTR [bp-0x23a]
   2a5f9:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2a5fc:	0b c0                	or     ax,ax
   2a5fe:	7d 33                	jge    0x2a633
   2a600:	c7 86 c6 fd 00 00    	mov    WORD PTR [bp-0x23a],0x0
   2a606:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a609:	01 86 ca fd          	add    WORD PTR [bp-0x236],ax
   2a60d:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a610:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a613:	cd 3b                	int    0x3b
   2a615:	46                   	inc    si
   2a616:	ec                   	in     al,dx
   2a617:	cd 34                	int    0x34
   2a619:	76 f0                	jbe    0x2a60b
   2a61b:	cd 34                	int    0x34
   2a61d:	06                   	push   es
   2a61e:	31 3b                	xor    WORD PTR [bp+di],di
   2a620:	9a 99 10 00 00       	call   0x0:0x1099
   2a625:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2a628:	29 86 ce fd          	sub    WORD PTR [bp-0x232],ax
   2a62c:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a62f:	01 86 d2 fd          	add    WORD PTR [bp-0x22e],ax
   2a633:	8b 86 c6 fd          	mov    ax,WORD PTR [bp-0x23a]
   2a637:	03 86 ca fd          	add    ax,WORD PTR [bp-0x236]
   2a63b:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2a63f:	2b d0                	sub    dx,ax
   2a641:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2a644:	8b c2                	mov    ax,dx
   2a646:	0b c0                	or     ax,ax
   2a648:	7d 23                	jge    0x2a66d
   2a64a:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a64d:	01 86 ca fd          	add    WORD PTR [bp-0x236],ax
   2a651:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a654:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a657:	cd 3b                	int    0x3b
   2a659:	46                   	inc    si
   2a65a:	ec                   	in     al,dx
   2a65b:	cd 34                	int    0x34
   2a65d:	4e                   	dec    si
   2a65e:	f0 cd 34             	lock int 0x34
   2a661:	06                   	push   es
   2a662:	31 3b                	xor    WORD PTR [bp+di],di
   2a664:	9a 99 10 00 00       	call   0x0:0x1099
   2a669:	01 86 d2 fd          	add    WORD PTR [bp-0x22e],ax
   2a66d:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   2a670:	6b db 12             	imul   bx,bx,0x12
   2a673:	b8 88 01             	mov    ax,0x188
   2a676:	8e c0                	mov    es,ax
   2a678:	26 8b 87 30 b7       	mov    ax,WORD PTR es:[bx-0x48d0]
   2a67d:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a680:	cd 3b                	int    0x3b
   2a682:	46                   	inc    si
   2a683:	ec                   	in     al,dx
   2a684:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   2a687:	6b db 12             	imul   bx,bx,0x12
   2a68a:	b8 88 01             	mov    ax,0x188
   2a68d:	8e c0                	mov    es,ax
   2a68f:	26 8b 87 38 b7       	mov    ax,WORD PTR es:[bx-0x48c8]
   2a694:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a697:	cd 3b                	int    0x3b
   2a699:	46                   	inc    si
   2a69a:	ec                   	in     al,dx
   2a69b:	cd 3a                	int    0x3a
   2a69d:	f9                   	stc
   2a69e:	cd 35                	int    0x35
   2a6a0:	5e                   	pop    si
   2a6a1:	f0 cd 3d             	lock int 0x3d
   2a6a4:	8b 86 de fd          	mov    ax,WORD PTR [bp-0x222]
   2a6a8:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a6ab:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   2a6b0:	cd 37                	int    0x37
   2a6b2:	46                   	inc    si
   2a6b3:	ec                   	in     al,dx
   2a6b4:	cd 34                	int    0x34
   2a6b6:	4e                   	dec    si
   2a6b7:	f0 cd 34             	lock int 0x34
   2a6ba:	06                   	push   es
   2a6bb:	31 3b                	xor    WORD PTR [bp+di],di
   2a6bd:	9a 99 10 00 00       	call   0x0:0x1099
   2a6c2:	89 86 cc fd          	mov    WORD PTR [bp-0x234],ax
   2a6c6:	8b 86 e2 fd          	mov    ax,WORD PTR [bp-0x21e]
   2a6ca:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a6cd:	cd 3b                	int    0x3b
   2a6cf:	46                   	inc    si
   2a6d0:	ec                   	in     al,dx
   2a6d1:	cd 34                	int    0x34
   2a6d3:	4e                   	dec    si
   2a6d4:	f0 cd 34             	lock int 0x34
   2a6d7:	06                   	push   es
   2a6d8:	31 3b                	xor    WORD PTR [bp+di],di
   2a6da:	9a 99 10 00 00       	call   0x0:0x1099
   2a6df:	01 86 c8 fd          	add    WORD PTR [bp-0x238],ax
   2a6e3:	8b 86 c8 fd          	mov    ax,WORD PTR [bp-0x238]
   2a6e7:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2a6ea:	0b c0                	or     ax,ax
   2a6ec:	7d 33                	jge    0x2a721
   2a6ee:	c7 86 c8 fd 00 00    	mov    WORD PTR [bp-0x238],0x0
   2a6f4:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a6f7:	01 86 cc fd          	add    WORD PTR [bp-0x234],ax
   2a6fb:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a6fe:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a701:	cd 3b                	int    0x3b
   2a703:	46                   	inc    si
   2a704:	ec                   	in     al,dx
   2a705:	cd 34                	int    0x34
   2a707:	76 f0                	jbe    0x2a6f9
   2a709:	cd 34                	int    0x34
   2a70b:	06                   	push   es
   2a70c:	31 3b                	xor    WORD PTR [bp+di],di
   2a70e:	9a 99 10 00 00       	call   0x0:0x1099
   2a713:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2a716:	29 86 d0 fd          	sub    WORD PTR [bp-0x230],ax
   2a71a:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a71d:	01 86 d4 fd          	add    WORD PTR [bp-0x22c],ax
   2a721:	8b 86 c8 fd          	mov    ax,WORD PTR [bp-0x238]
   2a725:	03 86 cc fd          	add    ax,WORD PTR [bp-0x234]
   2a729:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2a72d:	2b d0                	sub    dx,ax
   2a72f:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2a732:	8b c2                	mov    ax,dx
   2a734:	0b c0                	or     ax,ax
   2a736:	7c 03                	jl     0x2a73b
   2a738:	e9 c3 00             	jmp    0x2a7fe
   2a73b:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a73e:	01 86 cc fd          	add    WORD PTR [bp-0x234],ax
   2a742:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a745:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2a748:	cd 3b                	int    0x3b
   2a74a:	46                   	inc    si
   2a74b:	ec                   	in     al,dx
   2a74c:	cd 34                	int    0x34
   2a74e:	4e                   	dec    si
   2a74f:	f0 cd 34             	lock int 0x34
   2a752:	06                   	push   es
   2a753:	31 3b                	xor    WORD PTR [bp+di],di
   2a755:	9a 99 10 00 00       	call   0x0:0x1099
   2a75a:	01 86 d4 fd          	add    WORD PTR [bp-0x22c],ax
   2a75e:	e9 9d 00             	jmp    0x2a7fe
   2a761:	e9 9a 00             	jmp    0x2a7fe
   2a764:	8b 86 dc fd          	mov    ax,WORD PTR [bp-0x224]
   2a768:	89 86 ca fd          	mov    WORD PTR [bp-0x236],ax
   2a76c:	8b 86 e0 fd          	mov    ax,WORD PTR [bp-0x220]
   2a770:	01 86 c6 fd          	add    WORD PTR [bp-0x23a],ax
   2a774:	8b 86 c6 fd          	mov    ax,WORD PTR [bp-0x23a]
   2a778:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2a77b:	0b c0                	or     ax,ax
   2a77d:	7d 14                	jge    0x2a793
   2a77f:	c7 86 c6 fd 00 00    	mov    WORD PTR [bp-0x23a],0x0
   2a785:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a788:	29 86 ce fd          	sub    WORD PTR [bp-0x232],ax
   2a78c:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a78f:	01 86 ca fd          	add    WORD PTR [bp-0x236],ax
   2a793:	8b 86 c6 fd          	mov    ax,WORD PTR [bp-0x23a]
   2a797:	03 86 ca fd          	add    ax,WORD PTR [bp-0x236]
   2a79b:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2a79f:	2b d0                	sub    dx,ax
   2a7a1:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2a7a4:	8b c2                	mov    ax,dx
   2a7a6:	0b c0                	or     ax,ax
   2a7a8:	7d 07                	jge    0x2a7b1
   2a7aa:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a7ad:	01 86 ca fd          	add    WORD PTR [bp-0x236],ax
   2a7b1:	8b 86 de fd          	mov    ax,WORD PTR [bp-0x222]
   2a7b5:	89 86 cc fd          	mov    WORD PTR [bp-0x234],ax
   2a7b9:	8b 86 e2 fd          	mov    ax,WORD PTR [bp-0x21e]
   2a7bd:	01 86 c8 fd          	add    WORD PTR [bp-0x238],ax
   2a7c1:	8b 86 c8 fd          	mov    ax,WORD PTR [bp-0x238]
   2a7c5:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2a7c8:	0b c0                	or     ax,ax
   2a7ca:	7d 14                	jge    0x2a7e0
   2a7cc:	c7 86 c8 fd 00 00    	mov    WORD PTR [bp-0x238],0x0
   2a7d2:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a7d5:	29 86 d0 fd          	sub    WORD PTR [bp-0x230],ax
   2a7d9:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a7dc:	01 86 cc fd          	add    WORD PTR [bp-0x234],ax
   2a7e0:	8b 86 c6 fd          	mov    ax,WORD PTR [bp-0x23a]
   2a7e4:	03 86 ca fd          	add    ax,WORD PTR [bp-0x236]
   2a7e8:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2a7ec:	2b d0                	sub    dx,ax
   2a7ee:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2a7f1:	8b c2                	mov    ax,dx
   2a7f3:	0b c0                	or     ax,ax
   2a7f5:	7d 07                	jge    0x2a7fe
   2a7f7:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2a7fa:	29 86 cc fd          	sub    WORD PTR [bp-0x234],ax
   2a7fe:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   2a801:	6b db 0e             	imul   bx,bx,0xe
   2a804:	b8 88 01             	mov    ax,0x188
   2a807:	8e c0                	mov    es,ax
   2a809:	26 8b 87 f2 b3       	mov    ax,WORD PTR es:[bx-0x4c0e]
   2a80e:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   2a811:	6b d2 12             	imul   dx,dx,0x12
   2a814:	03 c2                	add    ax,dx
   2a816:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2a81b:	50                   	push   ax
   2a81c:	8d 86 c6 fd          	lea    ax,[bp-0x23a]
   2a820:	16                   	push   ss
   2a821:	50                   	push   ax
   2a822:	b9 12 00             	mov    cx,0x12
   2a825:	9a 7a 12 00 00       	call   0x0:0x127a
   2a82a:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   2a82d:	83 7e f8 25          	cmp    WORD PTR [bp-0x8],0x25
   2a831:	7d 03                	jge    0x2a836
   2a833:	e9 c7 fc             	jmp    0x2a4fd
   2a836:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2a839:	9a 2a 00 70 01       	call   0x170:0x2a
   2a83e:	b8 01 00             	mov    ax,0x1
   2a841:	c9                   	leave
   2a842:	cb                   	retf
   2a843:	55                   	push   bp
   2a844:	8b ec                	mov    bp,sp
   2a846:	83 ec 08             	sub    sp,0x8
   2a849:	c7 46 fc 64 00       	mov    WORD PTR [bp-0x4],0x64
   2a84e:	c7 46 fa 64 00       	mov    WORD PTR [bp-0x6],0x64
   2a853:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   2a858:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2a85b:	3b 06 ff 3a          	cmp    ax,WORD PTR ds:0x3aff
   2a85f:	75 09                	jne    0x2a86a
   2a861:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2a864:	3b 06 01 3b          	cmp    ax,WORD PTR ds:0x3b01
   2a868:	74 05                	je     0x2a86f
   2a86a:	c7 46 f8 02 00       	mov    WORD PTR [bp-0x8],0x2
   2a86f:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2a874:	eb 47                	jmp    0x2a8bd
   2a876:	6a 02                	push   0x2
   2a878:	cd 35                	int    0x35
   2a87a:	06                   	push   es
   2a87b:	b5 3b                	mov    ch,0x3b
   2a87d:	83 ec 04             	sub    sp,0x4
   2a880:	cd 35                	int    0x35
   2a882:	5e                   	pop    si
   2a883:	f2 cd 35             	repnz int 0x35
   2a886:	06                   	push   es
   2a887:	b5 3b                	mov    ch,0x3b
   2a889:	83 ec 04             	sub    sp,0x4
   2a88c:	cd 35                	int    0x35
   2a88e:	5e                   	pop    si
   2a88f:	ee                   	out    dx,al
   2a890:	cd 35                	int    0x35
   2a892:	ee                   	out    dx,al
   2a893:	cd 3d                	int    0x3d
   2a895:	83 ec 04             	sub    sp,0x4
   2a898:	cd 35                	int    0x35
   2a89a:	5e                   	pop    si
   2a89b:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2a8a0:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a8a4:	cd 35                	int    0x35
   2a8a6:	5e                   	pop    si
   2a8a7:	e6 cd                	out    0xcd,al
   2a8a9:	3d ff 76             	cmp    ax,0x76ff
   2a8ac:	fe                   	(bad)
   2a8ad:	68 88 01             	push   0x188
   2a8b0:	68 90 b4             	push   0xb490
   2a8b3:	0e                   	push   cs
   2a8b4:	e8 96 e8             	call   0x2914d
   2a8b7:	83 c4 18             	add    sp,0x18
   2a8ba:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2a8bd:	83 7e fe 07          	cmp    WORD PTR [bp-0x2],0x7
   2a8c1:	7c b3                	jl     0x2a876
   2a8c3:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a8c6:	cd 35                	int    0x35
   2a8c8:	06                   	push   es
   2a8c9:	bd 3b 83             	mov    bp,0x833b
   2a8cc:	ec                   	in     al,dx
   2a8cd:	04 cd                	add    al,0xcd
   2a8cf:	35 5e f2             	xor    ax,0xf25e
   2a8d2:	cd 35                	int    0x35
   2a8d4:	06                   	push   es
   2a8d5:	c1 3b 83             	sar    WORD PTR [bp+di],0x83
   2a8d8:	ec                   	in     al,dx
   2a8d9:	04 cd                	add    al,0xcd
   2a8db:	35 5e ee             	xor    ax,0xee5e
   2a8de:	cd 35                	int    0x35
   2a8e0:	06                   	push   es
   2a8e1:	c5 3b                	lds    di,DWORD PTR [bp+di]
   2a8e3:	83 ec 04             	sub    sp,0x4
   2a8e6:	cd 35                	int    0x35
   2a8e8:	5e                   	pop    si
   2a8e9:	ea cd 35 06 c9       	jmp    0xc906:0x35cd
   2a8ee:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a8f2:	cd 35                	int    0x35
   2a8f4:	5e                   	pop    si
   2a8f5:	e6 6a                	out    0x6a,al
   2a8f7:	07                   	pop    es
   2a8f8:	68 88 01             	push   0x188
   2a8fb:	68 90 b4             	push   0xb490
   2a8fe:	cd 3d                	int    0x3d
   2a900:	0e                   	push   cs
   2a901:	e8 49 e8             	call   0x2914d
   2a904:	83 c4 18             	add    sp,0x18
   2a907:	b8 01 00             	mov    ax,0x1
   2a90a:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2a90d:	50                   	push   ax
   2a90e:	cd 35                	int    0x35
   2a910:	06                   	push   es
   2a911:	bd 3b 83             	mov    bp,0x833b
   2a914:	ec                   	in     al,dx
   2a915:	04 cd                	add    al,0xcd
   2a917:	35 5e f2             	xor    ax,0xf25e
   2a91a:	cd 35                	int    0x35
   2a91c:	06                   	push   es
   2a91d:	c1 3b 83             	sar    WORD PTR [bp+di],0x83
   2a920:	ec                   	in     al,dx
   2a921:	04 cd                	add    al,0xcd
   2a923:	35 5e ee             	xor    ax,0xee5e
   2a926:	cd 35                	int    0x35
   2a928:	06                   	push   es
   2a929:	c5 3b                	lds    di,DWORD PTR [bp+di]
   2a92b:	83 ec 04             	sub    sp,0x4
   2a92e:	cd 35                	int    0x35
   2a930:	5e                   	pop    si
   2a931:	ea cd 35 06 c9       	jmp    0xc906:0x35cd
   2a936:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a93a:	cd 35                	int    0x35
   2a93c:	5e                   	pop    si
   2a93d:	e6 6a                	out    0x6a,al
   2a93f:	0c 68                	or     al,0x68
   2a941:	88 01                	mov    BYTE PTR [bx+di],al
   2a943:	68 90 b4             	push   0xb490
   2a946:	cd 3d                	int    0x3d
   2a948:	0e                   	push   cs
   2a949:	e8 01 e8             	call   0x2914d
   2a94c:	83 c4 18             	add    sp,0x18
   2a94f:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a952:	cd 35                	int    0x35
   2a954:	06                   	push   es
   2a955:	cd 3b                	int    0x3b
   2a957:	83 ec 04             	sub    sp,0x4
   2a95a:	cd 35                	int    0x35
   2a95c:	5e                   	pop    si
   2a95d:	f2 cd 35             	repnz int 0x35
   2a960:	06                   	push   es
   2a961:	35 3b 83             	xor    ax,0x833b
   2a964:	ec                   	in     al,dx
   2a965:	04 cd                	add    al,0xcd
   2a967:	35 5e ee             	xor    ax,0xee5e
   2a96a:	cd 35                	int    0x35
   2a96c:	06                   	push   es
   2a96d:	d1 3b                	sar    WORD PTR [bp+di],1
   2a96f:	83 ec 04             	sub    sp,0x4
   2a972:	cd 35                	int    0x35
   2a974:	5e                   	pop    si
   2a975:	ea cd 35 06 d5       	jmp    0xd506:0x35cd
   2a97a:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a97e:	cd 35                	int    0x35
   2a980:	5e                   	pop    si
   2a981:	e6 6a                	out    0x6a,al
   2a983:	08 68 88             	or     BYTE PTR [bx+si-0x78],ch
   2a986:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2a989:	b4 cd                	mov    ah,0xcd
   2a98b:	3d 0e e8             	cmp    ax,0xe80e
   2a98e:	bd e7 83             	mov    bp,0x83e7
   2a991:	c4 18                	les    bx,DWORD PTR [bx+si]
   2a993:	b8 01 00             	mov    ax,0x1
   2a996:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2a999:	50                   	push   ax
   2a99a:	cd 35                	int    0x35
   2a99c:	06                   	push   es
   2a99d:	cd 3b                	int    0x3b
   2a99f:	83 ec 04             	sub    sp,0x4
   2a9a2:	cd 35                	int    0x35
   2a9a4:	5e                   	pop    si
   2a9a5:	f2 cd 35             	repnz int 0x35
   2a9a8:	06                   	push   es
   2a9a9:	35 3b 83             	xor    ax,0x833b
   2a9ac:	ec                   	in     al,dx
   2a9ad:	04 cd                	add    al,0xcd
   2a9af:	35 5e ee             	xor    ax,0xee5e
   2a9b2:	cd 35                	int    0x35
   2a9b4:	06                   	push   es
   2a9b5:	d1 3b                	sar    WORD PTR [bp+di],1
   2a9b7:	83 ec 04             	sub    sp,0x4
   2a9ba:	cd 35                	int    0x35
   2a9bc:	5e                   	pop    si
   2a9bd:	ea cd 35 06 d5       	jmp    0xd506:0x35cd
   2a9c2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2a9c6:	cd 35                	int    0x35
   2a9c8:	5e                   	pop    si
   2a9c9:	e6 6a                	out    0x6a,al
   2a9cb:	0b 68 88             	or     bp,WORD PTR [bx+si-0x78]
   2a9ce:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2a9d1:	b4 cd                	mov    ah,0xcd
   2a9d3:	3d 0e e8             	cmp    ax,0xe80e
   2a9d6:	75 e7                	jne    0x2a9bf
   2a9d8:	83 c4 18             	add    sp,0x18
   2a9db:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2a9de:	cd 35                	int    0x35
   2a9e0:	06                   	push   es
   2a9e1:	cd 3b                	int    0x3b
   2a9e3:	83 ec 04             	sub    sp,0x4
   2a9e6:	cd 35                	int    0x35
   2a9e8:	5e                   	pop    si
   2a9e9:	f2 cd 35             	repnz int 0x35
   2a9ec:	06                   	push   es
   2a9ed:	3d 3b 83             	cmp    ax,0x833b
   2a9f0:	ec                   	in     al,dx
   2a9f1:	04 cd                	add    al,0xcd
   2a9f3:	35 5e ee             	xor    ax,0xee5e
   2a9f6:	cd 35                	int    0x35
   2a9f8:	06                   	push   es
   2a9f9:	d9 3b                	fnstcw WORD PTR [bp+di]
   2a9fb:	83 ec 04             	sub    sp,0x4
   2a9fe:	cd 35                	int    0x35
   2aa00:	5e                   	pop    si
   2aa01:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   2aa06:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2aa0a:	cd 35                	int    0x35
   2aa0c:	5e                   	pop    si
   2aa0d:	e6 6a                	out    0x6a,al
   2aa0f:	09 68 88             	or     WORD PTR [bx+si-0x78],bp
   2aa12:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2aa15:	b4 cd                	mov    ah,0xcd
   2aa17:	3d 0e e8             	cmp    ax,0xe80e
   2aa1a:	31 e7                	xor    di,sp
   2aa1c:	83 c4 18             	add    sp,0x18
   2aa1f:	b8 01 00             	mov    ax,0x1
   2aa22:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2aa25:	50                   	push   ax
   2aa26:	cd 35                	int    0x35
   2aa28:	06                   	push   es
   2aa29:	cd 3b                	int    0x3b
   2aa2b:	83 ec 04             	sub    sp,0x4
   2aa2e:	cd 35                	int    0x35
   2aa30:	5e                   	pop    si
   2aa31:	f2 cd 35             	repnz int 0x35
   2aa34:	06                   	push   es
   2aa35:	3d 3b 83             	cmp    ax,0x833b
   2aa38:	ec                   	in     al,dx
   2aa39:	04 cd                	add    al,0xcd
   2aa3b:	35 5e ee             	xor    ax,0xee5e
   2aa3e:	cd 35                	int    0x35
   2aa40:	06                   	push   es
   2aa41:	d9 3b                	fnstcw WORD PTR [bp+di]
   2aa43:	83 ec 04             	sub    sp,0x4
   2aa46:	cd 35                	int    0x35
   2aa48:	5e                   	pop    si
   2aa49:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   2aa4e:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2aa52:	cd 35                	int    0x35
   2aa54:	5e                   	pop    si
   2aa55:	e6 6a                	out    0x6a,al
   2aa57:	0a 68 88             	or     ch,BYTE PTR [bx+si-0x78]
   2aa5a:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2aa5d:	b4 cd                	mov    ah,0xcd
   2aa5f:	3d 0e e8             	cmp    ax,0xe80e
   2aa62:	e9 e6 83             	jmp    0x22e4b
   2aa65:	c4 18                	les    bx,DWORD PTR [bx+si]
   2aa67:	b8 02 00             	mov    ax,0x2
   2aa6a:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2aa6d:	50                   	push   ax
   2aa6e:	cd 35                	int    0x35
   2aa70:	06                   	push   es
   2aa71:	b5 3b                	mov    ch,0x3b
   2aa73:	83 ec 04             	sub    sp,0x4
   2aa76:	cd 35                	int    0x35
   2aa78:	5e                   	pop    si
   2aa79:	f2 cd 35             	repnz int 0x35
   2aa7c:	06                   	push   es
   2aa7d:	dd 3b                	fnstsw WORD PTR [bp+di]
   2aa7f:	83 ec 04             	sub    sp,0x4
   2aa82:	cd 35                	int    0x35
   2aa84:	5e                   	pop    si
   2aa85:	ee                   	out    dx,al
   2aa86:	cd 35                	int    0x35
   2aa88:	ee                   	out    dx,al
   2aa89:	cd 3d                	int    0x3d
   2aa8b:	83 ec 04             	sub    sp,0x4
   2aa8e:	cd 35                	int    0x35
   2aa90:	5e                   	pop    si
   2aa91:	ea cd 35 06 c5       	jmp    0xc506:0x35cd
   2aa96:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2aa9a:	cd 35                	int    0x35
   2aa9c:	5e                   	pop    si
   2aa9d:	e6 6a                	out    0x6a,al
   2aa9f:	0d 68 88             	or     ax,0x8868
   2aaa2:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2aaa5:	b4 cd                	mov    ah,0xcd
   2aaa7:	3d 0e e8             	cmp    ax,0xe80e
   2aaaa:	a1 e6 83             	mov    ax,ds:0x83e6
   2aaad:	c4 18                	les    bx,DWORD PTR [bx+si]
   2aaaf:	b8 02 00             	mov    ax,0x2
   2aab2:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2aab5:	50                   	push   ax
   2aab6:	cd 35                	int    0x35
   2aab8:	06                   	push   es
   2aab9:	b5 3b                	mov    ch,0x3b
   2aabb:	83 ec 04             	sub    sp,0x4
   2aabe:	cd 35                	int    0x35
   2aac0:	5e                   	pop    si
   2aac1:	f2 cd 35             	repnz int 0x35
   2aac4:	06                   	push   es
   2aac5:	dd 3b                	fnstsw WORD PTR [bp+di]
   2aac7:	83 ec 04             	sub    sp,0x4
   2aaca:	cd 35                	int    0x35
   2aacc:	5e                   	pop    si
   2aacd:	ee                   	out    dx,al
   2aace:	cd 35                	int    0x35
   2aad0:	ee                   	out    dx,al
   2aad1:	cd 3d                	int    0x3d
   2aad3:	83 ec 04             	sub    sp,0x4
   2aad6:	cd 35                	int    0x35
   2aad8:	5e                   	pop    si
   2aad9:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2aade:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2aae2:	cd 35                	int    0x35
   2aae4:	5e                   	pop    si
   2aae5:	e6 6a                	out    0x6a,al
   2aae7:	11 68 88             	adc    WORD PTR [bx+si-0x78],bp
   2aaea:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2aaed:	b4 cd                	mov    ah,0xcd
   2aaef:	3d 0e e8             	cmp    ax,0xe80e
   2aaf2:	59                   	pop    cx
   2aaf3:	e6 83                	out    0x83,al
   2aaf5:	c4 18                	les    bx,DWORD PTR [bx+si]
   2aaf7:	c7 46 fe 0e 00       	mov    WORD PTR [bp-0x2],0xe
   2aafc:	eb 4c                	jmp    0x2ab4a
   2aafe:	b8 02 00             	mov    ax,0x2
   2ab01:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2ab04:	50                   	push   ax
   2ab05:	cd 35                	int    0x35
   2ab07:	06                   	push   es
   2ab08:	b5 3b                	mov    ch,0x3b
   2ab0a:	83 ec 04             	sub    sp,0x4
   2ab0d:	cd 35                	int    0x35
   2ab0f:	5e                   	pop    si
   2ab10:	f2 cd 35             	repnz int 0x35
   2ab13:	06                   	push   es
   2ab14:	b5 3b                	mov    ch,0x3b
   2ab16:	83 ec 04             	sub    sp,0x4
   2ab19:	cd 35                	int    0x35
   2ab1b:	5e                   	pop    si
   2ab1c:	ee                   	out    dx,al
   2ab1d:	cd 35                	int    0x35
   2ab1f:	ee                   	out    dx,al
   2ab20:	cd 3d                	int    0x3d
   2ab22:	83 ec 04             	sub    sp,0x4
   2ab25:	cd 35                	int    0x35
   2ab27:	5e                   	pop    si
   2ab28:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2ab2d:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ab31:	cd 35                	int    0x35
   2ab33:	5e                   	pop    si
   2ab34:	e6 cd                	out    0xcd,al
   2ab36:	3d ff 76             	cmp    ax,0x76ff
   2ab39:	fe                   	(bad)
   2ab3a:	68 88 01             	push   0x188
   2ab3d:	68 90 b4             	push   0xb490
   2ab40:	0e                   	push   cs
   2ab41:	e8 09 e6             	call   0x2914d
   2ab44:	83 c4 18             	add    sp,0x18
   2ab47:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2ab4a:	83 7e fe 11          	cmp    WORD PTR [bp-0x2],0x11
   2ab4e:	7c ae                	jl     0x2aafe
   2ab50:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2ab53:	cd 35                	int    0x35
   2ab55:	06                   	push   es
   2ab56:	e1 3b                	loope  0x2ab93
   2ab58:	83 ec 04             	sub    sp,0x4
   2ab5b:	cd 35                	int    0x35
   2ab5d:	5e                   	pop    si
   2ab5e:	f2 cd 35             	repnz int 0x35
   2ab61:	06                   	push   es
   2ab62:	35 3b 83             	xor    ax,0x833b
   2ab65:	ec                   	in     al,dx
   2ab66:	04 cd                	add    al,0xcd
   2ab68:	35 5e ee             	xor    ax,0xee5e
   2ab6b:	cd 35                	int    0x35
   2ab6d:	06                   	push   es
   2ab6e:	c5 3b                	lds    di,DWORD PTR [bp+di]
   2ab70:	83 ec 04             	sub    sp,0x4
   2ab73:	cd 35                	int    0x35
   2ab75:	5e                   	pop    si
   2ab76:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2ab7b:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ab7f:	cd 35                	int    0x35
   2ab81:	5e                   	pop    si
   2ab82:	e6 6a                	out    0x6a,al
   2ab84:	12 68 88             	adc    ch,BYTE PTR [bx+si-0x78]
   2ab87:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2ab8a:	b4 cd                	mov    ah,0xcd
   2ab8c:	3d 0e e8             	cmp    ax,0xe80e
   2ab8f:	bc e5 83             	mov    sp,0x83e5
   2ab92:	c4 18                	les    bx,DWORD PTR [bx+si]
   2ab94:	b8 01 00             	mov    ax,0x1
   2ab97:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2ab9a:	50                   	push   ax
   2ab9b:	cd 35                	int    0x35
   2ab9d:	06                   	push   es
   2ab9e:	e1 3b                	loope  0x2abdb
   2aba0:	83 ec 04             	sub    sp,0x4
   2aba3:	cd 35                	int    0x35
   2aba5:	5e                   	pop    si
   2aba6:	f2 cd 35             	repnz int 0x35
   2aba9:	06                   	push   es
   2abaa:	35 3b 83             	xor    ax,0x833b
   2abad:	ec                   	in     al,dx
   2abae:	04 cd                	add    al,0xcd
   2abb0:	35 5e ee             	xor    ax,0xee5e
   2abb3:	cd 35                	int    0x35
   2abb5:	06                   	push   es
   2abb6:	c5 3b                	lds    di,DWORD PTR [bp+di]
   2abb8:	83 ec 04             	sub    sp,0x4
   2abbb:	cd 35                	int    0x35
   2abbd:	5e                   	pop    si
   2abbe:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2abc3:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2abc7:	cd 35                	int    0x35
   2abc9:	5e                   	pop    si
   2abca:	e6 6a                	out    0x6a,al
   2abcc:	15 68 88             	adc    ax,0x8868
   2abcf:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2abd2:	b4 cd                	mov    ah,0xcd
   2abd4:	3d 0e e8             	cmp    ax,0xe80e
   2abd7:	74 e5                	je     0x2abbe
   2abd9:	83 c4 18             	add    sp,0x18
   2abdc:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2abdf:	cd 35                	int    0x35
   2abe1:	06                   	push   es
   2abe2:	b5 3b                	mov    ch,0x3b
   2abe4:	83 ec 04             	sub    sp,0x4
   2abe7:	cd 35                	int    0x35
   2abe9:	5e                   	pop    si
   2abea:	f2 cd 35             	repnz int 0x35
   2abed:	06                   	push   es
   2abee:	cd 3b                	int    0x3b
   2abf0:	83 ec 04             	sub    sp,0x4
   2abf3:	cd 35                	int    0x35
   2abf5:	5e                   	pop    si
   2abf6:	ee                   	out    dx,al
   2abf7:	cd 35                	int    0x35
   2abf9:	06                   	push   es
   2abfa:	e5 3b                	in     ax,0x3b
   2abfc:	83 ec 04             	sub    sp,0x4
   2abff:	cd 35                	int    0x35
   2ac01:	5e                   	pop    si
   2ac02:	ea cd 35 06 35       	jmp    0x3506:0x35cd
   2ac07:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ac0b:	cd 35                	int    0x35
   2ac0d:	5e                   	pop    si
   2ac0e:	e6 6a                	out    0x6a,al
   2ac10:	13 68 88             	adc    bp,WORD PTR [bx+si-0x78]
   2ac13:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2ac16:	b4 cd                	mov    ah,0xcd
   2ac18:	3d 0e e8             	cmp    ax,0xe80e
   2ac1b:	30 e5                	xor    ch,ah
   2ac1d:	83 c4 18             	add    sp,0x18
   2ac20:	b8 01 00             	mov    ax,0x1
   2ac23:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2ac26:	50                   	push   ax
   2ac27:	cd 35                	int    0x35
   2ac29:	06                   	push   es
   2ac2a:	b5 3b                	mov    ch,0x3b
   2ac2c:	83 ec 04             	sub    sp,0x4
   2ac2f:	cd 35                	int    0x35
   2ac31:	5e                   	pop    si
   2ac32:	f2 cd 35             	repnz int 0x35
   2ac35:	06                   	push   es
   2ac36:	cd 3b                	int    0x3b
   2ac38:	83 ec 04             	sub    sp,0x4
   2ac3b:	cd 35                	int    0x35
   2ac3d:	5e                   	pop    si
   2ac3e:	ee                   	out    dx,al
   2ac3f:	cd 35                	int    0x35
   2ac41:	06                   	push   es
   2ac42:	e5 3b                	in     ax,0x3b
   2ac44:	83 ec 04             	sub    sp,0x4
   2ac47:	cd 35                	int    0x35
   2ac49:	5e                   	pop    si
   2ac4a:	ea cd 35 06 35       	jmp    0x3506:0x35cd
   2ac4f:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ac53:	cd 35                	int    0x35
   2ac55:	5e                   	pop    si
   2ac56:	e6 6a                	out    0x6a,al
   2ac58:	14 68                	adc    al,0x68
   2ac5a:	88 01                	mov    BYTE PTR [bx+di],al
   2ac5c:	68 90 b4             	push   0xb490
   2ac5f:	cd 3d                	int    0x3d
   2ac61:	0e                   	push   cs
   2ac62:	e8 e8 e4             	call   0x2914d
   2ac65:	83 c4 18             	add    sp,0x18
   2ac68:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2ac6b:	cd 35                	int    0x35
   2ac6d:	06                   	push   es
   2ac6e:	b5 3b                	mov    ch,0x3b
   2ac70:	83 ec 04             	sub    sp,0x4
   2ac73:	cd 35                	int    0x35
   2ac75:	5e                   	pop    si
   2ac76:	f2 cd 35             	repnz int 0x35
   2ac79:	06                   	push   es
   2ac7a:	35 3b 83             	xor    ax,0x833b
   2ac7d:	ec                   	in     al,dx
   2ac7e:	04 cd                	add    al,0xcd
   2ac80:	35 5e ee             	xor    ax,0xee5e
   2ac83:	cd 35                	int    0x35
   2ac85:	ee                   	out    dx,al
   2ac86:	cd 3d                	int    0x3d
   2ac88:	83 ec 04             	sub    sp,0x4
   2ac8b:	cd 35                	int    0x35
   2ac8d:	5e                   	pop    si
   2ac8e:	ea cd 35 06 e9       	jmp    0xe906:0x35cd
   2ac93:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ac97:	cd 35                	int    0x35
   2ac99:	5e                   	pop    si
   2ac9a:	e6 6a                	out    0x6a,al
   2ac9c:	16                   	push   ss
   2ac9d:	68 88 01             	push   0x188
   2aca0:	68 90 b4             	push   0xb490
   2aca3:	cd 3d                	int    0x3d
   2aca5:	0e                   	push   cs
   2aca6:	e8 a4 e4             	call   0x2914d
   2aca9:	83 c4 18             	add    sp,0x18
   2acac:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2acaf:	cd 35                	int    0x35
   2acb1:	06                   	push   es
   2acb2:	b5 3b                	mov    ch,0x3b
   2acb4:	83 ec 04             	sub    sp,0x4
   2acb7:	cd 35                	int    0x35
   2acb9:	5e                   	pop    si
   2acba:	f2 cd 35             	repnz int 0x35
   2acbd:	06                   	push   es
   2acbe:	b5 3b                	mov    ch,0x3b
   2acc0:	83 ec 04             	sub    sp,0x4
   2acc3:	cd 35                	int    0x35
   2acc5:	5e                   	pop    si
   2acc6:	ee                   	out    dx,al
   2acc7:	cd 35                	int    0x35
   2acc9:	ee                   	out    dx,al
   2acca:	cd 3d                	int    0x3d
   2accc:	83 ec 04             	sub    sp,0x4
   2accf:	cd 35                	int    0x35
   2acd1:	5e                   	pop    si
   2acd2:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2acd7:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2acdb:	cd 35                	int    0x35
   2acdd:	5e                   	pop    si
   2acde:	e6 6a                	out    0x6a,al
   2ace0:	17                   	pop    ss
   2ace1:	68 88 01             	push   0x188
   2ace4:	68 90 b4             	push   0xb490
   2ace7:	cd 3d                	int    0x3d
   2ace9:	0e                   	push   cs
   2acea:	e8 60 e4             	call   0x2914d
   2aced:	83 c4 18             	add    sp,0x18
   2acf0:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2acf3:	cd 35                	int    0x35
   2acf5:	06                   	push   es
   2acf6:	b5 3b                	mov    ch,0x3b
   2acf8:	83 ec 04             	sub    sp,0x4
   2acfb:	cd 35                	int    0x35
   2acfd:	5e                   	pop    si
   2acfe:	f2 cd 35             	repnz int 0x35
   2ad01:	06                   	push   es
   2ad02:	35 3b 83             	xor    ax,0x833b
   2ad05:	ec                   	in     al,dx
   2ad06:	04 cd                	add    al,0xcd
   2ad08:	35 5e ee             	xor    ax,0xee5e
   2ad0b:	cd 35                	int    0x35
   2ad0d:	ee                   	out    dx,al
   2ad0e:	cd 3d                	int    0x3d
   2ad10:	83 ec 04             	sub    sp,0x4
   2ad13:	cd 35                	int    0x35
   2ad15:	5e                   	pop    si
   2ad16:	ea cd 35 06 b9       	jmp    0xb906:0x35cd
   2ad1b:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ad1f:	cd 35                	int    0x35
   2ad21:	5e                   	pop    si
   2ad22:	e6 6a                	out    0x6a,al
   2ad24:	18 68 88             	sbb    BYTE PTR [bx+si-0x78],ch
   2ad27:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2ad2a:	b4 cd                	mov    ah,0xcd
   2ad2c:	3d 0e e8             	cmp    ax,0xe80e
   2ad2f:	1c e4                	sbb    al,0xe4
   2ad31:	83 c4 18             	add    sp,0x18
   2ad34:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2ad37:	cd 35                	int    0x35
   2ad39:	06                   	push   es
   2ad3a:	ed                   	in     ax,dx
   2ad3b:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ad3f:	cd 35                	int    0x35
   2ad41:	5e                   	pop    si
   2ad42:	f2 cd 35             	repnz int 0x35
   2ad45:	06                   	push   es
   2ad46:	35 3b 83             	xor    ax,0x833b
   2ad49:	ec                   	in     al,dx
   2ad4a:	04 cd                	add    al,0xcd
   2ad4c:	35 5e ee             	xor    ax,0xee5e
   2ad4f:	cd 35                	int    0x35
   2ad51:	ee                   	out    dx,al
   2ad52:	cd 3d                	int    0x3d
   2ad54:	83 ec 04             	sub    sp,0x4
   2ad57:	cd 35                	int    0x35
   2ad59:	5e                   	pop    si
   2ad5a:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   2ad5f:	3d 83 ec             	cmp    ax,0xec83
   2ad62:	04 cd                	add    al,0xcd
   2ad64:	35 5e e6             	xor    ax,0xe65e
   2ad67:	6a 19                	push   0x19
   2ad69:	68 88 01             	push   0x188
   2ad6c:	68 90 b4             	push   0xb490
   2ad6f:	cd 3d                	int    0x3d
   2ad71:	0e                   	push   cs
   2ad72:	e8 d8 e3             	call   0x2914d
   2ad75:	83 c4 18             	add    sp,0x18
   2ad78:	b8 01 00             	mov    ax,0x1
   2ad7b:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2ad7e:	50                   	push   ax
   2ad7f:	cd 35                	int    0x35
   2ad81:	06                   	push   es
   2ad82:	ed                   	in     ax,dx
   2ad83:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ad87:	cd 35                	int    0x35
   2ad89:	5e                   	pop    si
   2ad8a:	f2 cd 35             	repnz int 0x35
   2ad8d:	06                   	push   es
   2ad8e:	35 3b 83             	xor    ax,0x833b
   2ad91:	ec                   	in     al,dx
   2ad92:	04 cd                	add    al,0xcd
   2ad94:	35 5e ee             	xor    ax,0xee5e
   2ad97:	cd 35                	int    0x35
   2ad99:	ee                   	out    dx,al
   2ad9a:	cd 3d                	int    0x3d
   2ad9c:	83 ec 04             	sub    sp,0x4
   2ad9f:	cd 35                	int    0x35
   2ada1:	5e                   	pop    si
   2ada2:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   2ada7:	3d 83 ec             	cmp    ax,0xec83
   2adaa:	04 cd                	add    al,0xcd
   2adac:	35 5e e6             	xor    ax,0xe65e
   2adaf:	6a 1a                	push   0x1a
   2adb1:	68 88 01             	push   0x188
   2adb4:	68 90 b4             	push   0xb490
   2adb7:	cd 3d                	int    0x3d
   2adb9:	0e                   	push   cs
   2adba:	e8 90 e3             	call   0x2914d
   2adbd:	83 c4 18             	add    sp,0x18
   2adc0:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2adc3:	cd 35                	int    0x35
   2adc5:	06                   	push   es
   2adc6:	f1                   	int1
   2adc7:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2adcb:	cd 35                	int    0x35
   2adcd:	5e                   	pop    si
   2adce:	f2 cd 35             	repnz int 0x35
   2add1:	06                   	push   es
   2add2:	35 3b 83             	xor    ax,0x833b
   2add5:	ec                   	in     al,dx
   2add6:	04 cd                	add    al,0xcd
   2add8:	35 5e ee             	xor    ax,0xee5e
   2addb:	cd 35                	int    0x35
   2addd:	ee                   	out    dx,al
   2adde:	cd 3d                	int    0x3d
   2ade0:	83 ec 04             	sub    sp,0x4
   2ade3:	cd 35                	int    0x35
   2ade5:	5e                   	pop    si
   2ade6:	ea cd 35 06 dd       	jmp    0xdd06:0x35cd
   2adeb:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2adef:	cd 35                	int    0x35
   2adf1:	5e                   	pop    si
   2adf2:	e6 6a                	out    0x6a,al
   2adf4:	1b 68 88             	sbb    bp,WORD PTR [bx+si-0x78]
   2adf7:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2adfa:	b4 cd                	mov    ah,0xcd
   2adfc:	3d 0e e8             	cmp    ax,0xe80e
   2adff:	4c                   	dec    sp
   2ae00:	e3 83                	jcxz   0x2ad85
   2ae02:	c4 18                	les    bx,DWORD PTR [bx+si]
   2ae04:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2ae07:	cd 35                	int    0x35
   2ae09:	06                   	push   es
   2ae0a:	cd 3b                	int    0x3b
   2ae0c:	83 ec 04             	sub    sp,0x4
   2ae0f:	cd 35                	int    0x35
   2ae11:	5e                   	pop    si
   2ae12:	f2 cd 35             	repnz int 0x35
   2ae15:	06                   	push   es
   2ae16:	cd 3b                	int    0x3b
   2ae18:	83 ec 04             	sub    sp,0x4
   2ae1b:	cd 35                	int    0x35
   2ae1d:	5e                   	pop    si
   2ae1e:	ee                   	out    dx,al
   2ae1f:	cd 35                	int    0x35
   2ae21:	06                   	push   es
   2ae22:	f1                   	int1
   2ae23:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ae27:	cd 35                	int    0x35
   2ae29:	5e                   	pop    si
   2ae2a:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   2ae2f:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ae33:	cd 35                	int    0x35
   2ae35:	5e                   	pop    si
   2ae36:	e6 6a                	out    0x6a,al
   2ae38:	1c 68                	sbb    al,0x68
   2ae3a:	88 01                	mov    BYTE PTR [bx+di],al
   2ae3c:	68 90 b4             	push   0xb490
   2ae3f:	cd 3d                	int    0x3d
   2ae41:	0e                   	push   cs
   2ae42:	e8 08 e3             	call   0x2914d
   2ae45:	83 c4 18             	add    sp,0x18
   2ae48:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2ae4b:	cd 35                	int    0x35
   2ae4d:	06                   	push   es
   2ae4e:	35 3b 83             	xor    ax,0x833b
   2ae51:	ec                   	in     al,dx
   2ae52:	04 cd                	add    al,0xcd
   2ae54:	35 5e f2             	xor    ax,0xf25e
   2ae57:	cd 35                	int    0x35
   2ae59:	06                   	push   es
   2ae5a:	b5 3b                	mov    ch,0x3b
   2ae5c:	83 ec 04             	sub    sp,0x4
   2ae5f:	cd 35                	int    0x35
   2ae61:	5e                   	pop    si
   2ae62:	ee                   	out    dx,al
   2ae63:	cd 35                	int    0x35
   2ae65:	06                   	push   es
   2ae66:	f5                   	cmc
   2ae67:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ae6b:	cd 35                	int    0x35
   2ae6d:	5e                   	pop    si
   2ae6e:	ea cd 35 06 35       	jmp    0x3506:0x35cd
   2ae73:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ae77:	cd 35                	int    0x35
   2ae79:	5e                   	pop    si
   2ae7a:	e6 6a                	out    0x6a,al
   2ae7c:	1d 68 88             	sbb    ax,0x8868
   2ae7f:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2ae82:	b4 cd                	mov    ah,0xcd
   2ae84:	3d 0e e8             	cmp    ax,0xe80e
   2ae87:	c4 e2 83 c4          	(bad)
   2ae8b:	18 ff                	sbb    bh,bh
   2ae8d:	76 f8                	jbe    0x2ae87
   2ae8f:	cd 35                	int    0x35
   2ae91:	06                   	push   es
   2ae92:	f1                   	int1
   2ae93:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2ae97:	cd 35                	int    0x35
   2ae99:	5e                   	pop    si
   2ae9a:	f2 cd 35             	repnz int 0x35
   2ae9d:	06                   	push   es
   2ae9e:	35 3b 83             	xor    ax,0x833b
   2aea1:	ec                   	in     al,dx
   2aea2:	04 cd                	add    al,0xcd
   2aea4:	35 5e ee             	xor    ax,0xee5e
   2aea7:	cd 35                	int    0x35
   2aea9:	06                   	push   es
   2aeaa:	dd 3b                	fnstsw WORD PTR [bp+di]
   2aeac:	83 ec 04             	sub    sp,0x4
   2aeaf:	cd 35                	int    0x35
   2aeb1:	5e                   	pop    si
   2aeb2:	ea cd 35 06 dd       	jmp    0xdd06:0x35cd
   2aeb7:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2aebb:	cd 35                	int    0x35
   2aebd:	5e                   	pop    si
   2aebe:	e6 6a                	out    0x6a,al
   2aec0:	1e                   	push   ds
   2aec1:	68 88 01             	push   0x188
   2aec4:	68 90 b4             	push   0xb490
   2aec7:	cd 3d                	int    0x3d
   2aec9:	0e                   	push   cs
   2aeca:	e8 80 e2             	call   0x2914d
   2aecd:	83 c4 18             	add    sp,0x18
   2aed0:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2aed3:	cd 35                	int    0x35
   2aed5:	06                   	push   es
   2aed6:	cd 3b                	int    0x3b
   2aed8:	83 ec 04             	sub    sp,0x4
   2aedb:	cd 35                	int    0x35
   2aedd:	5e                   	pop    si
   2aede:	f2 cd 35             	repnz int 0x35
   2aee1:	06                   	push   es
   2aee2:	cd 3b                	int    0x3b
   2aee4:	83 ec 04             	sub    sp,0x4
   2aee7:	cd 35                	int    0x35
   2aee9:	5e                   	pop    si
   2aeea:	ee                   	out    dx,al
   2aeeb:	cd 35                	int    0x35
   2aeed:	06                   	push   es
   2aeee:	d9 3b                	fnstcw WORD PTR [bp+di]
   2aef0:	83 ec 04             	sub    sp,0x4
   2aef3:	cd 35                	int    0x35
   2aef5:	5e                   	pop    si
   2aef6:	ea cd 35 06 d9       	jmp    0xd906:0x35cd
   2aefb:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2aeff:	cd 35                	int    0x35
   2af01:	5e                   	pop    si
   2af02:	e6 6a                	out    0x6a,al
   2af04:	1f                   	pop    ds
   2af05:	68 88 01             	push   0x188
   2af08:	68 90 b4             	push   0xb490
   2af0b:	cd 3d                	int    0x3d
   2af0d:	0e                   	push   cs
   2af0e:	e8 3c e2             	call   0x2914d
   2af11:	83 c4 18             	add    sp,0x18
   2af14:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2af17:	cd 35                	int    0x35
   2af19:	06                   	push   es
   2af1a:	35 3b 83             	xor    ax,0x833b
   2af1d:	ec                   	in     al,dx
   2af1e:	04 cd                	add    al,0xcd
   2af20:	35 5e f2             	xor    ax,0xf25e
   2af23:	cd 35                	int    0x35
   2af25:	06                   	push   es
   2af26:	b5 3b                	mov    ch,0x3b
   2af28:	83 ec 04             	sub    sp,0x4
   2af2b:	cd 35                	int    0x35
   2af2d:	5e                   	pop    si
   2af2e:	ee                   	out    dx,al
   2af2f:	cd 35                	int    0x35
   2af31:	06                   	push   es
   2af32:	35 3b 83             	xor    ax,0x833b
   2af35:	ec                   	in     al,dx
   2af36:	04 cd                	add    al,0xcd
   2af38:	35 5e ea             	xor    ax,0xea5e
   2af3b:	cd 35                	int    0x35
   2af3d:	06                   	push   es
   2af3e:	35 3b 83             	xor    ax,0x833b
   2af41:	ec                   	in     al,dx
   2af42:	04 cd                	add    al,0xcd
   2af44:	35 5e e6             	xor    ax,0xe65e
   2af47:	6a 20                	push   0x20
   2af49:	68 88 01             	push   0x188
   2af4c:	68 90 b4             	push   0xb490
   2af4f:	cd 3d                	int    0x3d
   2af51:	0e                   	push   cs
   2af52:	e8 f8 e1             	call   0x2914d
   2af55:	83 c4 18             	add    sp,0x18
   2af58:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2af5b:	cd 35                	int    0x35
   2af5d:	06                   	push   es
   2af5e:	b1 3b                	mov    cl,0x3b
   2af60:	83 ec 04             	sub    sp,0x4
   2af63:	cd 35                	int    0x35
   2af65:	5e                   	pop    si
   2af66:	f2 cd 35             	repnz int 0x35
   2af69:	06                   	push   es
   2af6a:	b1 3b                	mov    cl,0x3b
   2af6c:	83 ec 04             	sub    sp,0x4
   2af6f:	cd 35                	int    0x35
   2af71:	5e                   	pop    si
   2af72:	ee                   	out    dx,al
   2af73:	cd 35                	int    0x35
   2af75:	06                   	push   es
   2af76:	f9                   	stc
   2af77:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2af7b:	cd 35                	int    0x35
   2af7d:	5e                   	pop    si
   2af7e:	ea cd 35 06 e9       	jmp    0xe906:0x35cd
   2af83:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2af87:	cd 35                	int    0x35
   2af89:	5e                   	pop    si
   2af8a:	e6 6a                	out    0x6a,al
   2af8c:	21 68 88             	and    WORD PTR [bx+si-0x78],bp
   2af8f:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2af92:	b4 cd                	mov    ah,0xcd
   2af94:	3d 0e e8             	cmp    ax,0xe80e
   2af97:	b4 e1                	mov    ah,0xe1
   2af99:	83 c4 18             	add    sp,0x18
   2af9c:	b8 01 00             	mov    ax,0x1
   2af9f:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2afa2:	50                   	push   ax
   2afa3:	cd 35                	int    0x35
   2afa5:	06                   	push   es
   2afa6:	b1 3b                	mov    cl,0x3b
   2afa8:	83 ec 04             	sub    sp,0x4
   2afab:	cd 35                	int    0x35
   2afad:	5e                   	pop    si
   2afae:	f2 cd 35             	repnz int 0x35
   2afb1:	06                   	push   es
   2afb2:	b1 3b                	mov    cl,0x3b
   2afb4:	83 ec 04             	sub    sp,0x4
   2afb7:	cd 35                	int    0x35
   2afb9:	5e                   	pop    si
   2afba:	ee                   	out    dx,al
   2afbb:	cd 35                	int    0x35
   2afbd:	06                   	push   es
   2afbe:	f9                   	stc
   2afbf:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2afc3:	cd 35                	int    0x35
   2afc5:	5e                   	pop    si
   2afc6:	ea cd 35 06 e9       	jmp    0xe906:0x35cd
   2afcb:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2afcf:	cd 35                	int    0x35
   2afd1:	5e                   	pop    si
   2afd2:	e6 6a                	out    0x6a,al
   2afd4:	24 68                	and    al,0x68
   2afd6:	88 01                	mov    BYTE PTR [bx+di],al
   2afd8:	68 90 b4             	push   0xb490
   2afdb:	cd 3d                	int    0x3d
   2afdd:	0e                   	push   cs
   2afde:	e8 6c e1             	call   0x2914d
   2afe1:	83 c4 18             	add    sp,0x18
   2afe4:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2afe7:	cd 35                	int    0x35
   2afe9:	06                   	push   es
   2afea:	b1 3b                	mov    cl,0x3b
   2afec:	83 ec 04             	sub    sp,0x4
   2afef:	cd 35                	int    0x35
   2aff1:	5e                   	pop    si
   2aff2:	f2 cd 35             	repnz int 0x35
   2aff5:	06                   	push   es
   2aff6:	65 3b 83 ec 04       	cmp    ax,WORD PTR gs:[bp+di+0x4ec]
   2affb:	cd 35                	int    0x35
   2affd:	5e                   	pop    si
   2affe:	ee                   	out    dx,al
   2afff:	cd 35                	int    0x35
   2b001:	06                   	push   es
   2b002:	fd                   	std
   2b003:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b007:	cd 35                	int    0x35
   2b009:	5e                   	pop    si
   2b00a:	ea cd 35 06 01       	jmp    0x106:0x35cd
   2b00f:	3c 83                	cmp    al,0x83
   2b011:	ec                   	in     al,dx
   2b012:	04 cd                	add    al,0xcd
   2b014:	35 5e e6             	xor    ax,0xe65e
   2b017:	6a 22                	push   0x22
   2b019:	68 88 01             	push   0x188
   2b01c:	68 90 b4             	push   0xb490
   2b01f:	cd 3d                	int    0x3d
   2b021:	0e                   	push   cs
   2b022:	e8 28 e1             	call   0x2914d
   2b025:	83 c4 18             	add    sp,0x18
   2b028:	b8 01 00             	mov    ax,0x1
   2b02b:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b02e:	50                   	push   ax
   2b02f:	cd 35                	int    0x35
   2b031:	06                   	push   es
   2b032:	b1 3b                	mov    cl,0x3b
   2b034:	83 ec 04             	sub    sp,0x4
   2b037:	cd 35                	int    0x35
   2b039:	5e                   	pop    si
   2b03a:	f2 cd 35             	repnz int 0x35
   2b03d:	06                   	push   es
   2b03e:	65 3b 83 ec 04       	cmp    ax,WORD PTR gs:[bp+di+0x4ec]
   2b043:	cd 35                	int    0x35
   2b045:	5e                   	pop    si
   2b046:	ee                   	out    dx,al
   2b047:	cd 35                	int    0x35
   2b049:	06                   	push   es
   2b04a:	fd                   	std
   2b04b:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b04f:	cd 35                	int    0x35
   2b051:	5e                   	pop    si
   2b052:	ea cd 35 06 01       	jmp    0x106:0x35cd
   2b057:	3c 83                	cmp    al,0x83
   2b059:	ec                   	in     al,dx
   2b05a:	04 cd                	add    al,0xcd
   2b05c:	35 5e e6             	xor    ax,0xe65e
   2b05f:	6a 23                	push   0x23
   2b061:	68 88 01             	push   0x188
   2b064:	68 90 b4             	push   0xb490
   2b067:	cd 3d                	int    0x3d
   2b069:	0e                   	push   cs
   2b06a:	e8 e0 e0             	call   0x2914d
   2b06d:	83 c4 18             	add    sp,0x18
   2b070:	c9                   	leave
   2b071:	cb                   	retf
   2b072:	55                   	push   bp
   2b073:	8b ec                	mov    bp,sp
   2b075:	83 ec 08             	sub    sp,0x8
   2b078:	c7 46 fc c8 00       	mov    WORD PTR [bp-0x4],0xc8
   2b07d:	c7 46 fa c8 00       	mov    WORD PTR [bp-0x6],0xc8
   2b082:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   2b087:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2b08a:	3b 06 ff 3a          	cmp    ax,WORD PTR ds:0x3aff
   2b08e:	75 09                	jne    0x2b099
   2b090:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2b093:	3b 06 01 3b          	cmp    ax,WORD PTR ds:0x3b01
   2b097:	74 05                	je     0x2b09e
   2b099:	c7 46 f8 02 00       	mov    WORD PTR [bp-0x8],0x2
   2b09e:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2b0a3:	eb 47                	jmp    0x2b0ec
   2b0a5:	6a 02                	push   0x2
   2b0a7:	cd 35                	int    0x35
   2b0a9:	06                   	push   es
   2b0aa:	05 3c 83             	add    ax,0x833c
   2b0ad:	ec                   	in     al,dx
   2b0ae:	04 cd                	add    al,0xcd
   2b0b0:	35 5e f2             	xor    ax,0xf25e
   2b0b3:	cd 35                	int    0x35
   2b0b5:	06                   	push   es
   2b0b6:	05 3c 83             	add    ax,0x833c
   2b0b9:	ec                   	in     al,dx
   2b0ba:	04 cd                	add    al,0xcd
   2b0bc:	35 5e ee             	xor    ax,0xee5e
   2b0bf:	cd 35                	int    0x35
   2b0c1:	ee                   	out    dx,al
   2b0c2:	cd 3d                	int    0x3d
   2b0c4:	83 ec 04             	sub    sp,0x4
   2b0c7:	cd 35                	int    0x35
   2b0c9:	5e                   	pop    si
   2b0ca:	ea cd 35 06 09       	jmp    0x906:0x35cd
   2b0cf:	3c 83                	cmp    al,0x83
   2b0d1:	ec                   	in     al,dx
   2b0d2:	04 cd                	add    al,0xcd
   2b0d4:	35 5e e6             	xor    ax,0xe65e
   2b0d7:	cd 3d                	int    0x3d
   2b0d9:	ff 76 fe             	push   WORD PTR [bp-0x2]
   2b0dc:	68 88 01             	push   0x188
   2b0df:	68 90 b4             	push   0xb490
   2b0e2:	0e                   	push   cs
   2b0e3:	e8 67 e0             	call   0x2914d
   2b0e6:	83 c4 18             	add    sp,0x18
   2b0e9:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2b0ec:	83 7e fe 07          	cmp    WORD PTR [bp-0x2],0x7
   2b0f0:	7c b3                	jl     0x2b0a5
   2b0f2:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b0f5:	cd 35                	int    0x35
   2b0f7:	06                   	push   es
   2b0f8:	d9 3b                	fnstcw WORD PTR [bp+di]
   2b0fa:	83 ec 04             	sub    sp,0x4
   2b0fd:	cd 35                	int    0x35
   2b0ff:	5e                   	pop    si
   2b100:	f2 cd 35             	repnz int 0x35
   2b103:	06                   	push   es
   2b104:	0d 3c 83             	or     ax,0x833c
   2b107:	ec                   	in     al,dx
   2b108:	04 cd                	add    al,0xcd
   2b10a:	35 5e ee             	xor    ax,0xee5e
   2b10d:	cd 35                	int    0x35
   2b10f:	06                   	push   es
   2b110:	11 3c                	adc    WORD PTR [si],di
   2b112:	83 ec 04             	sub    sp,0x4
   2b115:	cd 35                	int    0x35
   2b117:	5e                   	pop    si
   2b118:	ea cd 35 06 15       	jmp    0x1506:0x35cd
   2b11d:	3c 83                	cmp    al,0x83
   2b11f:	ec                   	in     al,dx
   2b120:	04 cd                	add    al,0xcd
   2b122:	35 5e e6             	xor    ax,0xe65e
   2b125:	6a 07                	push   0x7
   2b127:	68 88 01             	push   0x188
   2b12a:	68 90 b4             	push   0xb490
   2b12d:	cd 3d                	int    0x3d
   2b12f:	0e                   	push   cs
   2b130:	e8 1a e0             	call   0x2914d
   2b133:	83 c4 18             	add    sp,0x18
   2b136:	b8 01 00             	mov    ax,0x1
   2b139:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b13c:	50                   	push   ax
   2b13d:	cd 35                	int    0x35
   2b13f:	06                   	push   es
   2b140:	d9 3b                	fnstcw WORD PTR [bp+di]
   2b142:	83 ec 04             	sub    sp,0x4
   2b145:	cd 35                	int    0x35
   2b147:	5e                   	pop    si
   2b148:	f2 cd 35             	repnz int 0x35
   2b14b:	06                   	push   es
   2b14c:	0d 3c 83             	or     ax,0x833c
   2b14f:	ec                   	in     al,dx
   2b150:	04 cd                	add    al,0xcd
   2b152:	35 5e ee             	xor    ax,0xee5e
   2b155:	cd 35                	int    0x35
   2b157:	06                   	push   es
   2b158:	11 3c                	adc    WORD PTR [si],di
   2b15a:	83 ec 04             	sub    sp,0x4
   2b15d:	cd 35                	int    0x35
   2b15f:	5e                   	pop    si
   2b160:	ea cd 35 06 15       	jmp    0x1506:0x35cd
   2b165:	3c 83                	cmp    al,0x83
   2b167:	ec                   	in     al,dx
   2b168:	04 cd                	add    al,0xcd
   2b16a:	35 5e e6             	xor    ax,0xe65e
   2b16d:	6a 0c                	push   0xc
   2b16f:	68 88 01             	push   0x188
   2b172:	68 90 b4             	push   0xb490
   2b175:	cd 3d                	int    0x3d
   2b177:	0e                   	push   cs
   2b178:	e8 d2 df             	call   0x2914d
   2b17b:	83 c4 18             	add    sp,0x18
   2b17e:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b181:	cd 35                	int    0x35
   2b183:	06                   	push   es
   2b184:	19 3c                	sbb    WORD PTR [si],di
   2b186:	83 ec 04             	sub    sp,0x4
   2b189:	cd 35                	int    0x35
   2b18b:	5e                   	pop    si
   2b18c:	f2 cd 35             	repnz int 0x35
   2b18f:	06                   	push   es
   2b190:	1d 3c 83             	sbb    ax,0x833c
   2b193:	ec                   	in     al,dx
   2b194:	04 cd                	add    al,0xcd
   2b196:	35 5e ee             	xor    ax,0xee5e
   2b199:	cd 35                	int    0x35
   2b19b:	06                   	push   es
   2b19c:	21 3c                	and    WORD PTR [si],di
   2b19e:	83 ec 04             	sub    sp,0x4
   2b1a1:	cd 35                	int    0x35
   2b1a3:	5e                   	pop    si
   2b1a4:	ea cd 35 06 25       	jmp    0x2506:0x35cd
   2b1a9:	3c 83                	cmp    al,0x83
   2b1ab:	ec                   	in     al,dx
   2b1ac:	04 cd                	add    al,0xcd
   2b1ae:	35 5e e6             	xor    ax,0xe65e
   2b1b1:	6a 08                	push   0x8
   2b1b3:	68 88 01             	push   0x188
   2b1b6:	68 90 b4             	push   0xb490
   2b1b9:	cd 3d                	int    0x3d
   2b1bb:	0e                   	push   cs
   2b1bc:	e8 8e df             	call   0x2914d
   2b1bf:	83 c4 18             	add    sp,0x18
   2b1c2:	b8 01 00             	mov    ax,0x1
   2b1c5:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b1c8:	50                   	push   ax
   2b1c9:	cd 35                	int    0x35
   2b1cb:	06                   	push   es
   2b1cc:	19 3c                	sbb    WORD PTR [si],di
   2b1ce:	83 ec 04             	sub    sp,0x4
   2b1d1:	cd 35                	int    0x35
   2b1d3:	5e                   	pop    si
   2b1d4:	f2 cd 35             	repnz int 0x35
   2b1d7:	06                   	push   es
   2b1d8:	1d 3c 83             	sbb    ax,0x833c
   2b1db:	ec                   	in     al,dx
   2b1dc:	04 cd                	add    al,0xcd
   2b1de:	35 5e ee             	xor    ax,0xee5e
   2b1e1:	cd 35                	int    0x35
   2b1e3:	06                   	push   es
   2b1e4:	21 3c                	and    WORD PTR [si],di
   2b1e6:	83 ec 04             	sub    sp,0x4
   2b1e9:	cd 35                	int    0x35
   2b1eb:	5e                   	pop    si
   2b1ec:	ea cd 35 06 25       	jmp    0x2506:0x35cd
   2b1f1:	3c 83                	cmp    al,0x83
   2b1f3:	ec                   	in     al,dx
   2b1f4:	04 cd                	add    al,0xcd
   2b1f6:	35 5e e6             	xor    ax,0xe65e
   2b1f9:	6a 0b                	push   0xb
   2b1fb:	68 88 01             	push   0x188
   2b1fe:	68 90 b4             	push   0xb490
   2b201:	cd 3d                	int    0x3d
   2b203:	0e                   	push   cs
   2b204:	e8 46 df             	call   0x2914d
   2b207:	83 c4 18             	add    sp,0x18
   2b20a:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b20d:	cd 35                	int    0x35
   2b20f:	06                   	push   es
   2b210:	29 3c                	sub    WORD PTR [si],di
   2b212:	83 ec 04             	sub    sp,0x4
   2b215:	cd 35                	int    0x35
   2b217:	5e                   	pop    si
   2b218:	f2 cd 35             	repnz int 0x35
   2b21b:	06                   	push   es
   2b21c:	51                   	push   cx
   2b21d:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b221:	cd 35                	int    0x35
   2b223:	5e                   	pop    si
   2b224:	ee                   	out    dx,al
   2b225:	cd 35                	int    0x35
   2b227:	06                   	push   es
   2b228:	2d 3c 83             	sub    ax,0x833c
   2b22b:	ec                   	in     al,dx
   2b22c:	04 cd                	add    al,0xcd
   2b22e:	35 5e ea             	xor    ax,0xea5e
   2b231:	cd 35                	int    0x35
   2b233:	06                   	push   es
   2b234:	2d 3c 83             	sub    ax,0x833c
   2b237:	ec                   	in     al,dx
   2b238:	04 cd                	add    al,0xcd
   2b23a:	35 5e e6             	xor    ax,0xe65e
   2b23d:	6a 09                	push   0x9
   2b23f:	68 88 01             	push   0x188
   2b242:	68 90 b4             	push   0xb490
   2b245:	cd 3d                	int    0x3d
   2b247:	0e                   	push   cs
   2b248:	e8 02 df             	call   0x2914d
   2b24b:	83 c4 18             	add    sp,0x18
   2b24e:	b8 01 00             	mov    ax,0x1
   2b251:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b254:	50                   	push   ax
   2b255:	cd 35                	int    0x35
   2b257:	06                   	push   es
   2b258:	29 3c                	sub    WORD PTR [si],di
   2b25a:	83 ec 04             	sub    sp,0x4
   2b25d:	cd 35                	int    0x35
   2b25f:	5e                   	pop    si
   2b260:	f2 cd 35             	repnz int 0x35
   2b263:	06                   	push   es
   2b264:	51                   	push   cx
   2b265:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b269:	cd 35                	int    0x35
   2b26b:	5e                   	pop    si
   2b26c:	ee                   	out    dx,al
   2b26d:	cd 35                	int    0x35
   2b26f:	06                   	push   es
   2b270:	2d 3c 83             	sub    ax,0x833c
   2b273:	ec                   	in     al,dx
   2b274:	04 cd                	add    al,0xcd
   2b276:	35 5e ea             	xor    ax,0xea5e
   2b279:	cd 35                	int    0x35
   2b27b:	06                   	push   es
   2b27c:	2d 3c 83             	sub    ax,0x833c
   2b27f:	ec                   	in     al,dx
   2b280:	04 cd                	add    al,0xcd
   2b282:	35 5e e6             	xor    ax,0xe65e
   2b285:	6a 0a                	push   0xa
   2b287:	68 88 01             	push   0x188
   2b28a:	68 90 b4             	push   0xb490
   2b28d:	cd 3d                	int    0x3d
   2b28f:	0e                   	push   cs
   2b290:	e8 ba de             	call   0x2914d
   2b293:	83 c4 18             	add    sp,0x18
   2b296:	b8 02 00             	mov    ax,0x2
   2b299:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b29c:	50                   	push   ax
   2b29d:	cd 35                	int    0x35
   2b29f:	06                   	push   es
   2b2a0:	05 3c 83             	add    ax,0x833c
   2b2a3:	ec                   	in     al,dx
   2b2a4:	04 cd                	add    al,0xcd
   2b2a6:	35 5e f2             	xor    ax,0xf25e
   2b2a9:	cd 35                	int    0x35
   2b2ab:	06                   	push   es
   2b2ac:	31 3c                	xor    WORD PTR [si],di
   2b2ae:	83 ec 04             	sub    sp,0x4
   2b2b1:	cd 35                	int    0x35
   2b2b3:	5e                   	pop    si
   2b2b4:	ee                   	out    dx,al
   2b2b5:	cd 35                	int    0x35
   2b2b7:	ee                   	out    dx,al
   2b2b8:	cd 3d                	int    0x3d
   2b2ba:	83 ec 04             	sub    sp,0x4
   2b2bd:	cd 35                	int    0x35
   2b2bf:	5e                   	pop    si
   2b2c0:	ea cd 35 06 11       	jmp    0x1106:0x35cd
   2b2c5:	3c 83                	cmp    al,0x83
   2b2c7:	ec                   	in     al,dx
   2b2c8:	04 cd                	add    al,0xcd
   2b2ca:	35 5e e6             	xor    ax,0xe65e
   2b2cd:	6a 0d                	push   0xd
   2b2cf:	68 88 01             	push   0x188
   2b2d2:	68 90 b4             	push   0xb490
   2b2d5:	cd 3d                	int    0x3d
   2b2d7:	0e                   	push   cs
   2b2d8:	e8 72 de             	call   0x2914d
   2b2db:	83 c4 18             	add    sp,0x18
   2b2de:	b8 02 00             	mov    ax,0x2
   2b2e1:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b2e4:	50                   	push   ax
   2b2e5:	cd 35                	int    0x35
   2b2e7:	06                   	push   es
   2b2e8:	05 3c 83             	add    ax,0x833c
   2b2eb:	ec                   	in     al,dx
   2b2ec:	04 cd                	add    al,0xcd
   2b2ee:	35 5e f2             	xor    ax,0xf25e
   2b2f1:	cd 35                	int    0x35
   2b2f3:	06                   	push   es
   2b2f4:	31 3c                	xor    WORD PTR [si],di
   2b2f6:	83 ec 04             	sub    sp,0x4
   2b2f9:	cd 35                	int    0x35
   2b2fb:	5e                   	pop    si
   2b2fc:	ee                   	out    dx,al
   2b2fd:	cd 35                	int    0x35
   2b2ff:	ee                   	out    dx,al
   2b300:	cd 3d                	int    0x3d
   2b302:	83 ec 04             	sub    sp,0x4
   2b305:	cd 35                	int    0x35
   2b307:	5e                   	pop    si
   2b308:	ea cd 35 06 09       	jmp    0x906:0x35cd
   2b30d:	3c 83                	cmp    al,0x83
   2b30f:	ec                   	in     al,dx
   2b310:	04 cd                	add    al,0xcd
   2b312:	35 5e e6             	xor    ax,0xe65e
   2b315:	6a 11                	push   0x11
   2b317:	68 88 01             	push   0x188
   2b31a:	68 90 b4             	push   0xb490
   2b31d:	cd 3d                	int    0x3d
   2b31f:	0e                   	push   cs
   2b320:	e8 2a de             	call   0x2914d
   2b323:	83 c4 18             	add    sp,0x18
   2b326:	c7 46 fe 0e 00       	mov    WORD PTR [bp-0x2],0xe
   2b32b:	eb 4c                	jmp    0x2b379
   2b32d:	b8 02 00             	mov    ax,0x2
   2b330:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b333:	50                   	push   ax
   2b334:	cd 35                	int    0x35
   2b336:	06                   	push   es
   2b337:	05 3c 83             	add    ax,0x833c
   2b33a:	ec                   	in     al,dx
   2b33b:	04 cd                	add    al,0xcd
   2b33d:	35 5e f2             	xor    ax,0xf25e
   2b340:	cd 35                	int    0x35
   2b342:	06                   	push   es
   2b343:	05 3c 83             	add    ax,0x833c
   2b346:	ec                   	in     al,dx
   2b347:	04 cd                	add    al,0xcd
   2b349:	35 5e ee             	xor    ax,0xee5e
   2b34c:	cd 35                	int    0x35
   2b34e:	ee                   	out    dx,al
   2b34f:	cd 3d                	int    0x3d
   2b351:	83 ec 04             	sub    sp,0x4
   2b354:	cd 35                	int    0x35
   2b356:	5e                   	pop    si
   2b357:	ea cd 35 06 09       	jmp    0x906:0x35cd
   2b35c:	3c 83                	cmp    al,0x83
   2b35e:	ec                   	in     al,dx
   2b35f:	04 cd                	add    al,0xcd
   2b361:	35 5e e6             	xor    ax,0xe65e
   2b364:	cd 3d                	int    0x3d
   2b366:	ff 76 fe             	push   WORD PTR [bp-0x2]
   2b369:	68 88 01             	push   0x188
   2b36c:	68 90 b4             	push   0xb490
   2b36f:	0e                   	push   cs
   2b370:	e8 da dd             	call   0x2914d
   2b373:	83 c4 18             	add    sp,0x18
   2b376:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2b379:	83 7e fe 11          	cmp    WORD PTR [bp-0x2],0x11
   2b37d:	7c ae                	jl     0x2b32d
   2b37f:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b382:	cd 35                	int    0x35
   2b384:	06                   	push   es
   2b385:	35 3c 83             	xor    ax,0x833c
   2b388:	ec                   	in     al,dx
   2b389:	04 cd                	add    al,0xcd
   2b38b:	35 5e f2             	xor    ax,0xf25e
   2b38e:	cd 35                	int    0x35
   2b390:	06                   	push   es
   2b391:	1d 3c 83             	sbb    ax,0x833c
   2b394:	ec                   	in     al,dx
   2b395:	04 cd                	add    al,0xcd
   2b397:	35 5e ee             	xor    ax,0xee5e
   2b39a:	cd 35                	int    0x35
   2b39c:	06                   	push   es
   2b39d:	05 3c 83             	add    ax,0x833c
   2b3a0:	ec                   	in     al,dx
   2b3a1:	04 cd                	add    al,0xcd
   2b3a3:	35 5e ea             	xor    ax,0xea5e
   2b3a6:	cd 35                	int    0x35
   2b3a8:	06                   	push   es
   2b3a9:	09 3c                	or     WORD PTR [si],di
   2b3ab:	83 ec 04             	sub    sp,0x4
   2b3ae:	cd 35                	int    0x35
   2b3b0:	5e                   	pop    si
   2b3b1:	e6 6a                	out    0x6a,al
   2b3b3:	12 68 88             	adc    ch,BYTE PTR [bx+si-0x78]
   2b3b6:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2b3b9:	b4 cd                	mov    ah,0xcd
   2b3bb:	3d 0e e8             	cmp    ax,0xe80e
   2b3be:	8d                   	lea    bx,(bad)
   2b3bf:	dd 83 c4 18          	fld    QWORD PTR [bp+di+0x18c4]
   2b3c3:	b8 01 00             	mov    ax,0x1
   2b3c6:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b3c9:	50                   	push   ax
   2b3ca:	cd 35                	int    0x35
   2b3cc:	06                   	push   es
   2b3cd:	35 3c 83             	xor    ax,0x833c
   2b3d0:	ec                   	in     al,dx
   2b3d1:	04 cd                	add    al,0xcd
   2b3d3:	35 5e f2             	xor    ax,0xf25e
   2b3d6:	cd 35                	int    0x35
   2b3d8:	06                   	push   es
   2b3d9:	1d 3c 83             	sbb    ax,0x833c
   2b3dc:	ec                   	in     al,dx
   2b3dd:	04 cd                	add    al,0xcd
   2b3df:	35 5e ee             	xor    ax,0xee5e
   2b3e2:	cd 35                	int    0x35
   2b3e4:	06                   	push   es
   2b3e5:	05 3c 83             	add    ax,0x833c
   2b3e8:	ec                   	in     al,dx
   2b3e9:	04 cd                	add    al,0xcd
   2b3eb:	35 5e ea             	xor    ax,0xea5e
   2b3ee:	cd 35                	int    0x35
   2b3f0:	06                   	push   es
   2b3f1:	09 3c                	or     WORD PTR [si],di
   2b3f3:	83 ec 04             	sub    sp,0x4
   2b3f6:	cd 35                	int    0x35
   2b3f8:	5e                   	pop    si
   2b3f9:	e6 6a                	out    0x6a,al
   2b3fb:	15 68 88             	adc    ax,0x8868
   2b3fe:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2b401:	b4 cd                	mov    ah,0xcd
   2b403:	3d 0e e8             	cmp    ax,0xe80e
   2b406:	45                   	inc    bp
   2b407:	dd 83 c4 18          	fld    QWORD PTR [bp+di+0x18c4]
   2b40b:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b40e:	cd 35                	int    0x35
   2b410:	06                   	push   es
   2b411:	05 3c 83             	add    ax,0x833c
   2b414:	ec                   	in     al,dx
   2b415:	04 cd                	add    al,0xcd
   2b417:	35 5e f2             	xor    ax,0xf25e
   2b41a:	cd 35                	int    0x35
   2b41c:	06                   	push   es
   2b41d:	29 3c                	sub    WORD PTR [si],di
   2b41f:	83 ec 04             	sub    sp,0x4
   2b422:	cd 35                	int    0x35
   2b424:	5e                   	pop    si
   2b425:	ee                   	out    dx,al
   2b426:	cd 35                	int    0x35
   2b428:	06                   	push   es
   2b429:	39 3c                	cmp    WORD PTR [si],di
   2b42b:	83 ec 04             	sub    sp,0x4
   2b42e:	cd 35                	int    0x35
   2b430:	5e                   	pop    si
   2b431:	ea cd 35 06 1d       	jmp    0x1d06:0x35cd
   2b436:	3c 83                	cmp    al,0x83
   2b438:	ec                   	in     al,dx
   2b439:	04 cd                	add    al,0xcd
   2b43b:	35 5e e6             	xor    ax,0xe65e
   2b43e:	6a 13                	push   0x13
   2b440:	68 88 01             	push   0x188
   2b443:	68 90 b4             	push   0xb490
   2b446:	cd 3d                	int    0x3d
   2b448:	0e                   	push   cs
   2b449:	e8 01 dd             	call   0x2914d
   2b44c:	83 c4 18             	add    sp,0x18
   2b44f:	b8 01 00             	mov    ax,0x1
   2b452:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b455:	50                   	push   ax
   2b456:	cd 35                	int    0x35
   2b458:	06                   	push   es
   2b459:	05 3c 83             	add    ax,0x833c
   2b45c:	ec                   	in     al,dx
   2b45d:	04 cd                	add    al,0xcd
   2b45f:	35 5e f2             	xor    ax,0xf25e
   2b462:	cd 35                	int    0x35
   2b464:	06                   	push   es
   2b465:	29 3c                	sub    WORD PTR [si],di
   2b467:	83 ec 04             	sub    sp,0x4
   2b46a:	cd 35                	int    0x35
   2b46c:	5e                   	pop    si
   2b46d:	ee                   	out    dx,al
   2b46e:	cd 35                	int    0x35
   2b470:	06                   	push   es
   2b471:	39 3c                	cmp    WORD PTR [si],di
   2b473:	83 ec 04             	sub    sp,0x4
   2b476:	cd 35                	int    0x35
   2b478:	5e                   	pop    si
   2b479:	ea cd 35 06 1d       	jmp    0x1d06:0x35cd
   2b47e:	3c 83                	cmp    al,0x83
   2b480:	ec                   	in     al,dx
   2b481:	04 cd                	add    al,0xcd
   2b483:	35 5e e6             	xor    ax,0xe65e
   2b486:	6a 14                	push   0x14
   2b488:	68 88 01             	push   0x188
   2b48b:	68 90 b4             	push   0xb490
   2b48e:	cd 3d                	int    0x3d
   2b490:	0e                   	push   cs
   2b491:	e8 b9 dc             	call   0x2914d
   2b494:	83 c4 18             	add    sp,0x18
   2b497:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b49a:	cd 35                	int    0x35
   2b49c:	06                   	push   es
   2b49d:	05 3c 83             	add    ax,0x833c
   2b4a0:	ec                   	in     al,dx
   2b4a1:	04 cd                	add    al,0xcd
   2b4a3:	35 5e f2             	xor    ax,0xf25e
   2b4a6:	cd 35                	int    0x35
   2b4a8:	06                   	push   es
   2b4a9:	1d 3c 83             	sbb    ax,0x833c
   2b4ac:	ec                   	in     al,dx
   2b4ad:	04 cd                	add    al,0xcd
   2b4af:	35 5e ee             	xor    ax,0xee5e
   2b4b2:	cd 35                	int    0x35
   2b4b4:	ee                   	out    dx,al
   2b4b5:	cd 3d                	int    0x3d
   2b4b7:	83 ec 04             	sub    sp,0x4
   2b4ba:	cd 35                	int    0x35
   2b4bc:	5e                   	pop    si
   2b4bd:	ea cd 35 06 3d       	jmp    0x3d06:0x35cd
   2b4c2:	3c 83                	cmp    al,0x83
   2b4c4:	ec                   	in     al,dx
   2b4c5:	04 cd                	add    al,0xcd
   2b4c7:	35 5e e6             	xor    ax,0xe65e
   2b4ca:	6a 16                	push   0x16
   2b4cc:	68 88 01             	push   0x188
   2b4cf:	68 90 b4             	push   0xb490
   2b4d2:	cd 3d                	int    0x3d
   2b4d4:	0e                   	push   cs
   2b4d5:	e8 75 dc             	call   0x2914d
   2b4d8:	83 c4 18             	add    sp,0x18
   2b4db:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b4de:	cd 35                	int    0x35
   2b4e0:	06                   	push   es
   2b4e1:	05 3c 83             	add    ax,0x833c
   2b4e4:	ec                   	in     al,dx
   2b4e5:	04 cd                	add    al,0xcd
   2b4e7:	35 5e f2             	xor    ax,0xf25e
   2b4ea:	cd 35                	int    0x35
   2b4ec:	06                   	push   es
   2b4ed:	05 3c 83             	add    ax,0x833c
   2b4f0:	ec                   	in     al,dx
   2b4f1:	04 cd                	add    al,0xcd
   2b4f3:	35 5e ee             	xor    ax,0xee5e
   2b4f6:	cd 35                	int    0x35
   2b4f8:	ee                   	out    dx,al
   2b4f9:	cd 3d                	int    0x3d
   2b4fb:	83 ec 04             	sub    sp,0x4
   2b4fe:	cd 35                	int    0x35
   2b500:	5e                   	pop    si
   2b501:	ea cd 35 06 09       	jmp    0x906:0x35cd
   2b506:	3c 83                	cmp    al,0x83
   2b508:	ec                   	in     al,dx
   2b509:	04 cd                	add    al,0xcd
   2b50b:	35 5e e6             	xor    ax,0xe65e
   2b50e:	6a 17                	push   0x17
   2b510:	68 88 01             	push   0x188
   2b513:	68 90 b4             	push   0xb490
   2b516:	cd 3d                	int    0x3d
   2b518:	0e                   	push   cs
   2b519:	e8 31 dc             	call   0x2914d
   2b51c:	83 c4 18             	add    sp,0x18
   2b51f:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b522:	cd 35                	int    0x35
   2b524:	06                   	push   es
   2b525:	05 3c 83             	add    ax,0x833c
   2b528:	ec                   	in     al,dx
   2b529:	04 cd                	add    al,0xcd
   2b52b:	35 5e f2             	xor    ax,0xf25e
   2b52e:	cd 35                	int    0x35
   2b530:	06                   	push   es
   2b531:	1d 3c 83             	sbb    ax,0x833c
   2b534:	ec                   	in     al,dx
   2b535:	04 cd                	add    al,0xcd
   2b537:	35 5e ee             	xor    ax,0xee5e
   2b53a:	cd 35                	int    0x35
   2b53c:	ee                   	out    dx,al
   2b53d:	cd 3d                	int    0x3d
   2b53f:	83 ec 04             	sub    sp,0x4
   2b542:	cd 35                	int    0x35
   2b544:	5e                   	pop    si
   2b545:	ea cd 35 06 09       	jmp    0x906:0x35cd
   2b54a:	3c 83                	cmp    al,0x83
   2b54c:	ec                   	in     al,dx
   2b54d:	04 cd                	add    al,0xcd
   2b54f:	35 5e e6             	xor    ax,0xe65e
   2b552:	6a 18                	push   0x18
   2b554:	68 88 01             	push   0x188
   2b557:	68 90 b4             	push   0xb490
   2b55a:	cd 3d                	int    0x3d
   2b55c:	0e                   	push   cs
   2b55d:	e8 ed db             	call   0x2914d
   2b560:	83 c4 18             	add    sp,0x18
   2b563:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b566:	cd 35                	int    0x35
   2b568:	06                   	push   es
   2b569:	41                   	inc    cx
   2b56a:	3c 83                	cmp    al,0x83
   2b56c:	ec                   	in     al,dx
   2b56d:	04 cd                	add    al,0xcd
   2b56f:	35 5e f2             	xor    ax,0xf25e
   2b572:	cd 35                	int    0x35
   2b574:	06                   	push   es
   2b575:	1d 3c 83             	sbb    ax,0x833c
   2b578:	ec                   	in     al,dx
   2b579:	04 cd                	add    al,0xcd
   2b57b:	35 5e ee             	xor    ax,0xee5e
   2b57e:	cd 35                	int    0x35
   2b580:	ee                   	out    dx,al
   2b581:	cd 3d                	int    0x3d
   2b583:	83 ec 04             	sub    sp,0x4
   2b586:	cd 35                	int    0x35
   2b588:	5e                   	pop    si
   2b589:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   2b58e:	3d 83 ec             	cmp    ax,0xec83
   2b591:	04 cd                	add    al,0xcd
   2b593:	35 5e e6             	xor    ax,0xe65e
   2b596:	6a 19                	push   0x19
   2b598:	68 88 01             	push   0x188
   2b59b:	68 90 b4             	push   0xb490
   2b59e:	cd 3d                	int    0x3d
   2b5a0:	0e                   	push   cs
   2b5a1:	e8 a9 db             	call   0x2914d
   2b5a4:	83 c4 18             	add    sp,0x18
   2b5a7:	b8 01 00             	mov    ax,0x1
   2b5aa:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b5ad:	50                   	push   ax
   2b5ae:	cd 35                	int    0x35
   2b5b0:	06                   	push   es
   2b5b1:	41                   	inc    cx
   2b5b2:	3c 83                	cmp    al,0x83
   2b5b4:	ec                   	in     al,dx
   2b5b5:	04 cd                	add    al,0xcd
   2b5b7:	35 5e f2             	xor    ax,0xf25e
   2b5ba:	cd 35                	int    0x35
   2b5bc:	06                   	push   es
   2b5bd:	1d 3c 83             	sbb    ax,0x833c
   2b5c0:	ec                   	in     al,dx
   2b5c1:	04 cd                	add    al,0xcd
   2b5c3:	35 5e ee             	xor    ax,0xee5e
   2b5c6:	cd 35                	int    0x35
   2b5c8:	ee                   	out    dx,al
   2b5c9:	cd 3d                	int    0x3d
   2b5cb:	83 ec 04             	sub    sp,0x4
   2b5ce:	cd 35                	int    0x35
   2b5d0:	5e                   	pop    si
   2b5d1:	ea cd 35 ee cd       	jmp    0xcdee:0x35cd
   2b5d6:	3d 83 ec             	cmp    ax,0xec83
   2b5d9:	04 cd                	add    al,0xcd
   2b5db:	35 5e e6             	xor    ax,0xe65e
   2b5de:	6a 1a                	push   0x1a
   2b5e0:	68 88 01             	push   0x188
   2b5e3:	68 90 b4             	push   0xb490
   2b5e6:	cd 3d                	int    0x3d
   2b5e8:	0e                   	push   cs
   2b5e9:	e8 61 db             	call   0x2914d
   2b5ec:	83 c4 18             	add    sp,0x18
   2b5ef:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b5f2:	cd 35                	int    0x35
   2b5f4:	06                   	push   es
   2b5f5:	65 3b 83 ec 04       	cmp    ax,WORD PTR gs:[bp+di+0x4ec]
   2b5fa:	cd 35                	int    0x35
   2b5fc:	5e                   	pop    si
   2b5fd:	f2 cd 35             	repnz int 0x35
   2b600:	06                   	push   es
   2b601:	cf                   	iret
   2b602:	3c 83                	cmp    al,0x83
   2b604:	ec                   	in     al,dx
   2b605:	04 cd                	add    al,0xcd
   2b607:	35 5e ee             	xor    ax,0xee5e
   2b60a:	cd 35                	int    0x35
   2b60c:	e8 cd 3d             	call   0x2f3dc
   2b60f:	83 ec 04             	sub    sp,0x4
   2b612:	cd 35                	int    0x35
   2b614:	5e                   	pop    si
   2b615:	ea cd 35 06 c9       	jmp    0xc906:0x35cd
   2b61a:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b61e:	cd 35                	int    0x35
   2b620:	5e                   	pop    si
   2b621:	e6 6a                	out    0x6a,al
   2b623:	1b 68 88             	sbb    bp,WORD PTR [bx+si-0x78]
   2b626:	01 68 90             	add    WORD PTR [bx+si-0x70],bp
   2b629:	b4 cd                	mov    ah,0xcd
   2b62b:	3d 0e e8             	cmp    ax,0xe80e
   2b62e:	1d db 83             	sbb    ax,0x83db
   2b631:	c4 18                	les    bx,DWORD PTR [bx+si]
   2b633:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b636:	cd 35                	int    0x35
   2b638:	06                   	push   es
   2b639:	29 3c                	sub    WORD PTR [si],di
   2b63b:	83 ec 04             	sub    sp,0x4
   2b63e:	cd 35                	int    0x35
   2b640:	5e                   	pop    si
   2b641:	f2 cd 35             	repnz int 0x35
   2b644:	06                   	push   es
   2b645:	29 3c                	sub    WORD PTR [si],di
   2b647:	83 ec 04             	sub    sp,0x4
   2b64a:	cd 35                	int    0x35
   2b64c:	5e                   	pop    si
   2b64d:	ee                   	out    dx,al
   2b64e:	cd 35                	int    0x35
   2b650:	06                   	push   es
   2b651:	45                   	inc    bp
   2b652:	3c 83                	cmp    al,0x83
   2b654:	ec                   	in     al,dx
   2b655:	04 cd                	add    al,0xcd
   2b657:	35 5e ea             	xor    ax,0xea5e
   2b65a:	cd 35                	int    0x35
   2b65c:	06                   	push   es
   2b65d:	2d 3c 83             	sub    ax,0x833c
   2b660:	ec                   	in     al,dx
   2b661:	04 cd                	add    al,0xcd
   2b663:	35 5e e6             	xor    ax,0xe65e
   2b666:	6a 1c                	push   0x1c
   2b668:	68 88 01             	push   0x188
   2b66b:	68 90 b4             	push   0xb490
   2b66e:	cd 3d                	int    0x3d
   2b670:	0e                   	push   cs
   2b671:	e8 d9 da             	call   0x2914d
   2b674:	83 c4 18             	add    sp,0x18
   2b677:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b67a:	cd 35                	int    0x35
   2b67c:	06                   	push   es
   2b67d:	1d 3c 83             	sbb    ax,0x833c
   2b680:	ec                   	in     al,dx
   2b681:	04 cd                	add    al,0xcd
   2b683:	35 5e f2             	xor    ax,0xf25e
   2b686:	cd 35                	int    0x35
   2b688:	06                   	push   es
   2b689:	05 3c 83             	add    ax,0x833c
   2b68c:	ec                   	in     al,dx
   2b68d:	04 cd                	add    al,0xcd
   2b68f:	35 5e ee             	xor    ax,0xee5e
   2b692:	cd 35                	int    0x35
   2b694:	06                   	push   es
   2b695:	49                   	dec    cx
   2b696:	3c 83                	cmp    al,0x83
   2b698:	ec                   	in     al,dx
   2b699:	04 cd                	add    al,0xcd
   2b69b:	35 5e ea             	xor    ax,0xea5e
   2b69e:	cd 35                	int    0x35
   2b6a0:	06                   	push   es
   2b6a1:	1d 3c 83             	sbb    ax,0x833c
   2b6a4:	ec                   	in     al,dx
   2b6a5:	04 cd                	add    al,0xcd
   2b6a7:	35 5e e6             	xor    ax,0xe65e
   2b6aa:	6a 1d                	push   0x1d
   2b6ac:	68 88 01             	push   0x188
   2b6af:	68 90 b4             	push   0xb490
   2b6b2:	cd 3d                	int    0x3d
   2b6b4:	0e                   	push   cs
   2b6b5:	e8 95 da             	call   0x2914d
   2b6b8:	83 c4 18             	add    sp,0x18
   2b6bb:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b6be:	cd 35                	int    0x35
   2b6c0:	06                   	push   es
   2b6c1:	45                   	inc    bp
   2b6c2:	3c 83                	cmp    al,0x83
   2b6c4:	ec                   	in     al,dx
   2b6c5:	04 cd                	add    al,0xcd
   2b6c7:	35 5e f2             	xor    ax,0xf25e
   2b6ca:	cd 35                	int    0x35
   2b6cc:	06                   	push   es
   2b6cd:	4d                   	dec    bp
   2b6ce:	3c 83                	cmp    al,0x83
   2b6d0:	ec                   	in     al,dx
   2b6d1:	04 cd                	add    al,0xcd
   2b6d3:	35 5e ee             	xor    ax,0xee5e
   2b6d6:	cd 35                	int    0x35
   2b6d8:	06                   	push   es
   2b6d9:	c9                   	leave
   2b6da:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b6de:	cd 35                	int    0x35
   2b6e0:	5e                   	pop    si
   2b6e1:	ea cd 35 06 c9       	jmp    0xc906:0x35cd
   2b6e6:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b6ea:	cd 35                	int    0x35
   2b6ec:	5e                   	pop    si
   2b6ed:	e6 6a                	out    0x6a,al
   2b6ef:	1e                   	push   ds
   2b6f0:	68 88 01             	push   0x188
   2b6f3:	68 90 b4             	push   0xb490
   2b6f6:	cd 3d                	int    0x3d
   2b6f8:	0e                   	push   cs
   2b6f9:	e8 51 da             	call   0x2914d
   2b6fc:	83 c4 18             	add    sp,0x18
   2b6ff:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b702:	cd 35                	int    0x35
   2b704:	06                   	push   es
   2b705:	29 3c                	sub    WORD PTR [si],di
   2b707:	83 ec 04             	sub    sp,0x4
   2b70a:	cd 35                	int    0x35
   2b70c:	5e                   	pop    si
   2b70d:	f2 cd 35             	repnz int 0x35
   2b710:	06                   	push   es
   2b711:	29 3c                	sub    WORD PTR [si],di
   2b713:	83 ec 04             	sub    sp,0x4
   2b716:	cd 35                	int    0x35
   2b718:	5e                   	pop    si
   2b719:	ee                   	out    dx,al
   2b71a:	cd 35                	int    0x35
   2b71c:	06                   	push   es
   2b71d:	2d 3c 83             	sub    ax,0x833c
   2b720:	ec                   	in     al,dx
   2b721:	04 cd                	add    al,0xcd
   2b723:	35 5e ea             	xor    ax,0xea5e
   2b726:	cd 35                	int    0x35
   2b728:	06                   	push   es
   2b729:	2d 3c 83             	sub    ax,0x833c
   2b72c:	ec                   	in     al,dx
   2b72d:	04 cd                	add    al,0xcd
   2b72f:	35 5e e6             	xor    ax,0xe65e
   2b732:	6a 1f                	push   0x1f
   2b734:	68 88 01             	push   0x188
   2b737:	68 90 b4             	push   0xb490
   2b73a:	cd 3d                	int    0x3d
   2b73c:	0e                   	push   cs
   2b73d:	e8 0d da             	call   0x2914d
   2b740:	83 c4 18             	add    sp,0x18
   2b743:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b746:	cd 35                	int    0x35
   2b748:	06                   	push   es
   2b749:	1d 3c 83             	sbb    ax,0x833c
   2b74c:	ec                   	in     al,dx
   2b74d:	04 cd                	add    al,0xcd
   2b74f:	35 5e f2             	xor    ax,0xf25e
   2b752:	cd 35                	int    0x35
   2b754:	06                   	push   es
   2b755:	05 3c 83             	add    ax,0x833c
   2b758:	ec                   	in     al,dx
   2b759:	04 cd                	add    al,0xcd
   2b75b:	35 5e ee             	xor    ax,0xee5e
   2b75e:	cd 35                	int    0x35
   2b760:	06                   	push   es
   2b761:	1d 3c 83             	sbb    ax,0x833c
   2b764:	ec                   	in     al,dx
   2b765:	04 cd                	add    al,0xcd
   2b767:	35 5e ea             	xor    ax,0xea5e
   2b76a:	cd 35                	int    0x35
   2b76c:	06                   	push   es
   2b76d:	1d 3c 83             	sbb    ax,0x833c
   2b770:	ec                   	in     al,dx
   2b771:	04 cd                	add    al,0xcd
   2b773:	35 5e e6             	xor    ax,0xe65e
   2b776:	6a 20                	push   0x20
   2b778:	68 88 01             	push   0x188
   2b77b:	68 90 b4             	push   0xb490
   2b77e:	cd 3d                	int    0x3d
   2b780:	0e                   	push   cs
   2b781:	e8 c9 d9             	call   0x2914d
   2b784:	83 c4 18             	add    sp,0x18
   2b787:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b78a:	cd 35                	int    0x35
   2b78c:	06                   	push   es
   2b78d:	39 3c                	cmp    WORD PTR [si],di
   2b78f:	83 ec 04             	sub    sp,0x4
   2b792:	cd 35                	int    0x35
   2b794:	5e                   	pop    si
   2b795:	f2 cd 35             	repnz int 0x35
   2b798:	06                   	push   es
   2b799:	f5                   	cmc
   2b79a:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b79e:	cd 35                	int    0x35
   2b7a0:	5e                   	pop    si
   2b7a1:	ee                   	out    dx,al
   2b7a2:	cd 35                	int    0x35
   2b7a4:	06                   	push   es
   2b7a5:	51                   	push   cx
   2b7a6:	3c 83                	cmp    al,0x83
   2b7a8:	ec                   	in     al,dx
   2b7a9:	04 cd                	add    al,0xcd
   2b7ab:	35 5e ea             	xor    ax,0xea5e
   2b7ae:	cd 35                	int    0x35
   2b7b0:	06                   	push   es
   2b7b1:	55                   	push   bp
   2b7b2:	3c 83                	cmp    al,0x83
   2b7b4:	ec                   	in     al,dx
   2b7b5:	04 cd                	add    al,0xcd
   2b7b7:	35 5e e6             	xor    ax,0xe65e
   2b7ba:	6a 21                	push   0x21
   2b7bc:	68 88 01             	push   0x188
   2b7bf:	68 90 b4             	push   0xb490
   2b7c2:	cd 3d                	int    0x3d
   2b7c4:	0e                   	push   cs
   2b7c5:	e8 85 d9             	call   0x2914d
   2b7c8:	83 c4 18             	add    sp,0x18
   2b7cb:	b8 01 00             	mov    ax,0x1
   2b7ce:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b7d1:	50                   	push   ax
   2b7d2:	cd 35                	int    0x35
   2b7d4:	06                   	push   es
   2b7d5:	39 3c                	cmp    WORD PTR [si],di
   2b7d7:	83 ec 04             	sub    sp,0x4
   2b7da:	cd 35                	int    0x35
   2b7dc:	5e                   	pop    si
   2b7dd:	f2 cd 35             	repnz int 0x35
   2b7e0:	06                   	push   es
   2b7e1:	f5                   	cmc
   2b7e2:	3b 83 ec 04          	cmp    ax,WORD PTR [bp+di+0x4ec]
   2b7e6:	cd 35                	int    0x35
   2b7e8:	5e                   	pop    si
   2b7e9:	ee                   	out    dx,al
   2b7ea:	cd 35                	int    0x35
   2b7ec:	06                   	push   es
   2b7ed:	51                   	push   cx
   2b7ee:	3c 83                	cmp    al,0x83
   2b7f0:	ec                   	in     al,dx
   2b7f1:	04 cd                	add    al,0xcd
   2b7f3:	35 5e ea             	xor    ax,0xea5e
   2b7f6:	cd 35                	int    0x35
   2b7f8:	06                   	push   es
   2b7f9:	55                   	push   bp
   2b7fa:	3c 83                	cmp    al,0x83
   2b7fc:	ec                   	in     al,dx
   2b7fd:	04 cd                	add    al,0xcd
   2b7ff:	35 5e e6             	xor    ax,0xe65e
   2b802:	6a 24                	push   0x24
   2b804:	68 88 01             	push   0x188
   2b807:	68 90 b4             	push   0xb490
   2b80a:	cd 3d                	int    0x3d
   2b80c:	0e                   	push   cs
   2b80d:	e8 3d d9             	call   0x2914d
   2b810:	83 c4 18             	add    sp,0x18
   2b813:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2b816:	cd 35                	int    0x35
   2b818:	06                   	push   es
   2b819:	59                   	pop    cx
   2b81a:	3c 83                	cmp    al,0x83
   2b81c:	ec                   	in     al,dx
   2b81d:	04 cd                	add    al,0xcd
   2b81f:	35 5e f2             	xor    ax,0xf25e
   2b822:	cd 35                	int    0x35
   2b824:	06                   	push   es
   2b825:	5d                   	pop    bp
   2b826:	3c 83                	cmp    al,0x83
   2b828:	ec                   	in     al,dx
   2b829:	04 cd                	add    al,0xcd
   2b82b:	35 5e ee             	xor    ax,0xee5e
   2b82e:	cd 35                	int    0x35
   2b830:	06                   	push   es
   2b831:	61                   	popa
   2b832:	3c 83                	cmp    al,0x83
   2b834:	ec                   	in     al,dx
   2b835:	04 cd                	add    al,0xcd
   2b837:	35 5e ea             	xor    ax,0xea5e
   2b83a:	cd 35                	int    0x35
   2b83c:	06                   	push   es
   2b83d:	65 3c 83             	gs cmp al,0x83
   2b840:	ec                   	in     al,dx
   2b841:	04 cd                	add    al,0xcd
   2b843:	35 5e e6             	xor    ax,0xe65e
   2b846:	6a 22                	push   0x22
   2b848:	68 88 01             	push   0x188
   2b84b:	68 90 b4             	push   0xb490
   2b84e:	cd 3d                	int    0x3d
   2b850:	0e                   	push   cs
   2b851:	e8 f9 d8             	call   0x2914d
   2b854:	83 c4 18             	add    sp,0x18
   2b857:	b8 01 00             	mov    ax,0x1
   2b85a:	0b 46 f8             	or     ax,WORD PTR [bp-0x8]
   2b85d:	50                   	push   ax
   2b85e:	cd 35                	int    0x35
   2b860:	06                   	push   es
   2b861:	59                   	pop    cx
   2b862:	3c 83                	cmp    al,0x83
   2b864:	ec                   	in     al,dx
   2b865:	04 cd                	add    al,0xcd
   2b867:	35 5e f2             	xor    ax,0xf25e
   2b86a:	cd 35                	int    0x35
   2b86c:	06                   	push   es
   2b86d:	5d                   	pop    bp
   2b86e:	3c 83                	cmp    al,0x83
   2b870:	ec                   	in     al,dx
   2b871:	04 cd                	add    al,0xcd
   2b873:	35 5e ee             	xor    ax,0xee5e
   2b876:	cd 35                	int    0x35
   2b878:	06                   	push   es
   2b879:	61                   	popa
   2b87a:	3c 83                	cmp    al,0x83
   2b87c:	ec                   	in     al,dx
   2b87d:	04 cd                	add    al,0xcd
   2b87f:	35 5e ea             	xor    ax,0xea5e
   2b882:	cd 35                	int    0x35
   2b884:	06                   	push   es
   2b885:	65 3c 83             	gs cmp al,0x83
   2b888:	ec                   	in     al,dx
   2b889:	04 cd                	add    al,0xcd
   2b88b:	35 5e e6             	xor    ax,0xe65e
   2b88e:	6a 23                	push   0x23
   2b890:	68 88 01             	push   0x188
   2b893:	68 90 b4             	push   0xb490
   2b896:	cd 3d                	int    0x3d
   2b898:	0e                   	push   cs
   2b899:	e8 b1 d8             	call   0x2914d
   2b89c:	83 c4 18             	add    sp,0x18
   2b89f:	c9                   	leave
   2b8a0:	cb                   	retf
   2b8a1:	55                   	push   bp
   2b8a2:	8b ec                	mov    bp,sp
   2b8a4:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2b8a7:	b4 00                	mov    ah,0x0
   2b8a9:	0b c0                	or     ax,ax
   2b8ab:	75 03                	jne    0x2b8b0
   2b8ad:	e9 7d 01             	jmp    0x2ba2d
   2b8b0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b8b3:	6b c0 12             	imul   ax,ax,0x12
   2b8b6:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b8b9:	03 d8                	add    bx,ax
   2b8bb:	26 83 7f 10 00       	cmp    WORD PTR es:[bx+0x10],0x0
   2b8c0:	75 7c                	jne    0x2b93e
   2b8c2:	68 e0 01             	push   0x1e0
   2b8c5:	68 41 03             	push   0x341
   2b8c8:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2b8cb:	50                   	push   ax
   2b8cc:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2b8cf:	50                   	push   ax
   2b8d0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b8d3:	6b c0 12             	imul   ax,ax,0x12
   2b8d6:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b8d9:	03 d8                	add    bx,ax
   2b8db:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   2b8df:	03 06 0b 3b          	add    ax,WORD PTR ds:0x3b0b
   2b8e3:	50                   	push   ax
   2b8e4:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b8e7:	6b c0 12             	imul   ax,ax,0x12
   2b8ea:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b8ed:	03 d8                	add    bx,ax
   2b8ef:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   2b8f2:	03 06 09 3b          	add    ax,WORD PTR ds:0x3b09
   2b8f6:	50                   	push   ax
   2b8f7:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b8fa:	6b c0 12             	imul   ax,ax,0x12
   2b8fd:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b900:	03 d8                	add    bx,ax
   2b902:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   2b906:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b909:	6b c0 12             	imul   ax,ax,0x12
   2b90c:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b90f:	03 d8                	add    bx,ax
   2b911:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   2b915:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b918:	6b c0 12             	imul   ax,ax,0x12
   2b91b:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b91e:	03 d8                	add    bx,ax
   2b920:	26 ff 77 0a          	push   WORD PTR es:[bx+0xa]
   2b924:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b927:	6b c0 12             	imul   ax,ax,0x12
   2b92a:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b92d:	03 d8                	add    bx,ax
   2b92f:	26 ff 77 08          	push   WORD PTR es:[bx+0x8]
   2b933:	9a 30 04 28 00       	call   0x28:0x430
   2b938:	83 c4 14             	add    sp,0x14
   2b93b:	e9 ef 00             	jmp    0x2ba2d
   2b93e:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b941:	6b c0 12             	imul   ax,ax,0x12
   2b944:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b947:	03 d8                	add    bx,ax
   2b949:	26 f7 47 10 02 00    	test   WORD PTR es:[bx+0x10],0x2
   2b94f:	74 17                	je     0x2b968
   2b951:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b954:	6b c0 12             	imul   ax,ax,0x12
   2b957:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b95a:	03 d8                	add    bx,ax
   2b95c:	26 f7 47 10 01 00    	test   WORD PTR es:[bx+0x10],0x1
   2b962:	74 04                	je     0x2b968
   2b964:	6a 01                	push   0x1
   2b966:	eb 34                	jmp    0x2b99c
   2b968:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b96b:	6b c0 12             	imul   ax,ax,0x12
   2b96e:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b971:	03 d8                	add    bx,ax
   2b973:	26 f7 47 10 01 00    	test   WORD PTR es:[bx+0x10],0x1
   2b979:	74 09                	je     0x2b984
   2b97b:	68 e0 01             	push   0x1e0
   2b97e:	68 c4 03             	push   0x3c4
   2b981:	e9 44 ff             	jmp    0x2b8c8
   2b984:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b987:	6b c0 12             	imul   ax,ax,0x12
   2b98a:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b98d:	03 d8                	add    bx,ax
   2b98f:	26 f7 47 10 02 00    	test   WORD PTR es:[bx+0x10],0x2
   2b995:	75 03                	jne    0x2b99a
   2b997:	e9 93 00             	jmp    0x2ba2d
   2b99a:	6a 00                	push   0x0
   2b99c:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2b99f:	50                   	push   ax
   2b9a0:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2b9a3:	50                   	push   ax
   2b9a4:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b9a7:	6b c0 12             	imul   ax,ax,0x12
   2b9aa:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b9ad:	03 d8                	add    bx,ax
   2b9af:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   2b9b3:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b9b6:	6b c0 12             	imul   ax,ax,0x12
   2b9b9:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b9bc:	03 d8                	add    bx,ax
   2b9be:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   2b9c2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b9c5:	6b c0 12             	imul   ax,ax,0x12
   2b9c8:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b9cb:	03 d8                	add    bx,ax
   2b9cd:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   2b9d1:	03 06 0b 3b          	add    ax,WORD PTR ds:0x3b0b
   2b9d5:	50                   	push   ax
   2b9d6:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b9d9:	6b c0 12             	imul   ax,ax,0x12
   2b9dc:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b9df:	03 d8                	add    bx,ax
   2b9e1:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   2b9e4:	03 06 09 3b          	add    ax,WORD PTR ds:0x3b09
   2b9e8:	50                   	push   ax
   2b9e9:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b9ec:	6b c0 12             	imul   ax,ax,0x12
   2b9ef:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2b9f2:	03 d8                	add    bx,ax
   2b9f4:	26 ff 77 0e          	push   WORD PTR es:[bx+0xe]
   2b9f8:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2b9fb:	6b c0 12             	imul   ax,ax,0x12
   2b9fe:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2ba01:	03 d8                	add    bx,ax
   2ba03:	26 ff 77 0c          	push   WORD PTR es:[bx+0xc]
   2ba07:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2ba0a:	6b c0 12             	imul   ax,ax,0x12
   2ba0d:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2ba10:	03 d8                	add    bx,ax
   2ba12:	26 ff 77 0a          	push   WORD PTR es:[bx+0xa]
   2ba16:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2ba19:	6b c0 12             	imul   ax,ax,0x12
   2ba1c:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2ba1f:	03 d8                	add    bx,ax
   2ba21:	26 ff 77 08          	push   WORD PTR es:[bx+0x8]
   2ba25:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2ba2a:	83 c4 16             	add    sp,0x16
   2ba2d:	5d                   	pop    bp
   2ba2e:	cb                   	retf
   2ba2f:	55                   	push   bp
   2ba30:	8b ec                	mov    bp,sp
   2ba32:	83 ec 02             	sub    sp,0x2
   2ba35:	83 7e 06 09          	cmp    WORD PTR [bp+0x6],0x9
   2ba39:	74 1e                	je     0x2ba59
   2ba3b:	83 7e 06 0a          	cmp    WORD PTR [bp+0x6],0xa
   2ba3f:	74 18                	je     0x2ba59
   2ba41:	83 7e 06 13          	cmp    WORD PTR [bp+0x6],0x13
   2ba45:	74 12                	je     0x2ba59
   2ba47:	83 7e 06 14          	cmp    WORD PTR [bp+0x6],0x14
   2ba4b:	74 0c                	je     0x2ba59
   2ba4d:	83 7e 06 19          	cmp    WORD PTR [bp+0x6],0x19
   2ba51:	74 06                	je     0x2ba59
   2ba53:	83 7e 06 1a          	cmp    WORD PTR [bp+0x6],0x1a
   2ba57:	75 2a                	jne    0x2ba83
   2ba59:	a0 f0 b9             	mov    al,ds:0xb9f0
   2ba5c:	b4 00                	mov    ah,0x0
   2ba5e:	bb 04 00             	mov    bx,0x4
   2ba61:	99                   	cwd
   2ba62:	f7 fb                	idiv   bx
   2ba64:	0b d2                	or     dx,dx
   2ba66:	74 10                	je     0x2ba78
   2ba68:	a0 f0 b9             	mov    al,ds:0xb9f0
   2ba6b:	b4 00                	mov    ah,0x0
   2ba6d:	bb 04 00             	mov    bx,0x4
   2ba70:	99                   	cwd
   2ba71:	f7 fb                	idiv   bx
   2ba73:	83 fa 03             	cmp    dx,0x3
   2ba76:	75 07                	jne    0x2ba7f
   2ba78:	c7 46 fe eb 00       	mov    WORD PTR [bp-0x2],0xeb
   2ba7d:	eb 09                	jmp    0x2ba88
   2ba7f:	eb 02                	jmp    0x2ba83
   2ba81:	eb 05                	jmp    0x2ba88
   2ba83:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2ba88:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2ba8b:	b4 00                	mov    ah,0x0
   2ba8d:	0b c0                	or     ax,ax
   2ba8f:	75 03                	jne    0x2ba94
   2ba91:	e9 88 01             	jmp    0x2bc1c
   2ba94:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2ba97:	6b c0 12             	imul   ax,ax,0x12
   2ba9a:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2ba9d:	03 d8                	add    bx,ax
   2ba9f:	26 83 7f 10 00       	cmp    WORD PTR es:[bx+0x10],0x0
   2baa4:	74 03                	je     0x2baa9
   2baa6:	e9 80 00             	jmp    0x2bb29
   2baa9:	68 e0 01             	push   0x1e0
   2baac:	68 41 03             	push   0x341
   2baaf:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2bab2:	50                   	push   ax
   2bab3:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2bab6:	50                   	push   ax
   2bab7:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2baba:	6b c0 12             	imul   ax,ax,0x12
   2babd:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bac0:	03 d8                	add    bx,ax
   2bac2:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   2bac6:	03 06 0b 3b          	add    ax,WORD PTR ds:0x3b0b
   2baca:	50                   	push   ax
   2bacb:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bace:	6b c0 12             	imul   ax,ax,0x12
   2bad1:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bad4:	03 d8                	add    bx,ax
   2bad6:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   2bad9:	03 06 09 3b          	add    ax,WORD PTR ds:0x3b09
   2badd:	50                   	push   ax
   2bade:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bae1:	6b c0 12             	imul   ax,ax,0x12
   2bae4:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bae7:	03 d8                	add    bx,ax
   2bae9:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   2baed:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2baf0:	6b c0 12             	imul   ax,ax,0x12
   2baf3:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2baf6:	03 d8                	add    bx,ax
   2baf8:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   2bafc:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2baff:	6b c0 12             	imul   ax,ax,0x12
   2bb02:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb05:	03 d8                	add    bx,ax
   2bb07:	26 ff 77 0a          	push   WORD PTR es:[bx+0xa]
   2bb0b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb0e:	6b c0 12             	imul   ax,ax,0x12
   2bb11:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb14:	03 d8                	add    bx,ax
   2bb16:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   2bb1a:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   2bb1d:	50                   	push   ax
   2bb1e:	9a 30 04 28 00       	call   0x28:0x430
   2bb23:	83 c4 14             	add    sp,0x14
   2bb26:	e9 f3 00             	jmp    0x2bc1c
   2bb29:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb2c:	6b c0 12             	imul   ax,ax,0x12
   2bb2f:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb32:	03 d8                	add    bx,ax
   2bb34:	26 f7 47 10 02 00    	test   WORD PTR es:[bx+0x10],0x2
   2bb3a:	74 17                	je     0x2bb53
   2bb3c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb3f:	6b c0 12             	imul   ax,ax,0x12
   2bb42:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb45:	03 d8                	add    bx,ax
   2bb47:	26 f7 47 10 01 00    	test   WORD PTR es:[bx+0x10],0x1
   2bb4d:	74 04                	je     0x2bb53
   2bb4f:	6a 01                	push   0x1
   2bb51:	eb 34                	jmp    0x2bb87
   2bb53:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb56:	6b c0 12             	imul   ax,ax,0x12
   2bb59:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb5c:	03 d8                	add    bx,ax
   2bb5e:	26 f7 47 10 01 00    	test   WORD PTR es:[bx+0x10],0x1
   2bb64:	74 09                	je     0x2bb6f
   2bb66:	68 e0 01             	push   0x1e0
   2bb69:	68 c4 03             	push   0x3c4
   2bb6c:	e9 40 ff             	jmp    0x2baaf
   2bb6f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb72:	6b c0 12             	imul   ax,ax,0x12
   2bb75:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb78:	03 d8                	add    bx,ax
   2bb7a:	26 f7 47 10 02 00    	test   WORD PTR es:[bx+0x10],0x2
   2bb80:	75 03                	jne    0x2bb85
   2bb82:	e9 97 00             	jmp    0x2bc1c
   2bb85:	6a 00                	push   0x0
   2bb87:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2bb8a:	50                   	push   ax
   2bb8b:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   2bb8e:	50                   	push   ax
   2bb8f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bb92:	6b c0 12             	imul   ax,ax,0x12
   2bb95:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bb98:	03 d8                	add    bx,ax
   2bb9a:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   2bb9e:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bba1:	6b c0 12             	imul   ax,ax,0x12
   2bba4:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bba7:	03 d8                	add    bx,ax
   2bba9:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   2bbad:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbb0:	6b c0 12             	imul   ax,ax,0x12
   2bbb3:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbb6:	03 d8                	add    bx,ax
   2bbb8:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   2bbbc:	03 06 0b 3b          	add    ax,WORD PTR ds:0x3b0b
   2bbc0:	50                   	push   ax
   2bbc1:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbc4:	6b c0 12             	imul   ax,ax,0x12
   2bbc7:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbca:	03 d8                	add    bx,ax
   2bbcc:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   2bbcf:	03 06 09 3b          	add    ax,WORD PTR ds:0x3b09
   2bbd3:	50                   	push   ax
   2bbd4:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbd7:	6b c0 12             	imul   ax,ax,0x12
   2bbda:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbdd:	03 d8                	add    bx,ax
   2bbdf:	26 ff 77 0e          	push   WORD PTR es:[bx+0xe]
   2bbe3:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbe6:	6b c0 12             	imul   ax,ax,0x12
   2bbe9:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbec:	03 d8                	add    bx,ax
   2bbee:	26 ff 77 0c          	push   WORD PTR es:[bx+0xc]
   2bbf2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bbf5:	6b c0 12             	imul   ax,ax,0x12
   2bbf8:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bbfb:	03 d8                	add    bx,ax
   2bbfd:	26 ff 77 0a          	push   WORD PTR es:[bx+0xa]
   2bc01:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bc04:	6b c0 12             	imul   ax,ax,0x12
   2bc07:	c4 5e 0c             	les    bx,DWORD PTR [bp+0xc]
   2bc0a:	03 d8                	add    bx,ax
   2bc0c:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   2bc10:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   2bc13:	50                   	push   ax
   2bc14:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2bc19:	83 c4 16             	add    sp,0x16
   2bc1c:	c9                   	leave
   2bc1d:	cb                   	retf
   2bc1e:	55                   	push   bp
   2bc1f:	8b ec                	mov    bp,sp
   2bc21:	83 ec 06             	sub    sp,0x6
   2bc24:	a1 ff 3a             	mov    ax,ds:0x3aff
   2bc27:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   2bc2a:	a1 01 3b             	mov    ax,ds:0x3b01
   2bc2d:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2bc30:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2bc35:	e9 1f 01             	jmp    0x2bd57
   2bc38:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc3b:	c1 e3 03             	shl    bx,0x3
   2bc3e:	b8 88 01             	mov    ax,0x188
   2bc41:	8e c0                	mov    es,ax
   2bc43:	26 8b 87 9b e3       	mov    ax,WORD PTR es:[bx-0x1c65]
   2bc48:	bb 04 00             	mov    bx,0x4
   2bc4b:	99                   	cwd
   2bc4c:	f7 fb                	idiv   bx
   2bc4e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc51:	6b db 0e             	imul   bx,bx,0xe
   2bc54:	ba 88 01             	mov    dx,0x188
   2bc57:	8e c2                	mov    es,dx
   2bc59:	26 89 87 60 b4       	mov    WORD PTR es:[bx-0x4ba0],ax
   2bc5e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc61:	c1 e3 03             	shl    bx,0x3
   2bc64:	b8 88 01             	mov    ax,0x188
   2bc67:	8e c0                	mov    es,ax
   2bc69:	26 8b 87 9d e3       	mov    ax,WORD PTR es:[bx-0x1c63]
   2bc6e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc71:	6b db 0e             	imul   bx,bx,0xe
   2bc74:	ba 88 01             	mov    dx,0x188
   2bc77:	8e c2                	mov    es,dx
   2bc79:	26 89 87 62 b4       	mov    WORD PTR es:[bx-0x4b9e],ax
   2bc7e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc81:	6b db 0e             	imul   bx,bx,0xe
   2bc84:	b8 88 01             	mov    ax,0x188
   2bc87:	53                   	push   bx
   2bc88:	50                   	push   ax
   2bc89:	a1 ff 3a             	mov    ax,ds:0x3aff
   2bc8c:	07                   	pop    es
   2bc8d:	5b                   	pop    bx
   2bc8e:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   2bc93:	99                   	cwd
   2bc94:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2bc97:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bc9a:	6b db 0e             	imul   bx,bx,0xe
   2bc9d:	ba 88 01             	mov    dx,0x188
   2bca0:	8e c2                	mov    es,dx
   2bca2:	26 89 87 58 b4       	mov    WORD PTR es:[bx-0x4ba8],ax
   2bca7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcaa:	6b db 0e             	imul   bx,bx,0xe
   2bcad:	b8 88 01             	mov    ax,0x188
   2bcb0:	53                   	push   bx
   2bcb1:	50                   	push   ax
   2bcb2:	a1 01 3b             	mov    ax,ds:0x3b01
   2bcb5:	07                   	pop    es
   2bcb6:	5b                   	pop    bx
   2bcb7:	26 f7 af 62 b4       	imul   WORD PTR es:[bx-0x4b9e]
   2bcbc:	99                   	cwd
   2bcbd:	f7 7e fa             	idiv   WORD PTR [bp-0x6]
   2bcc0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcc3:	6b db 0e             	imul   bx,bx,0xe
   2bcc6:	ba 88 01             	mov    dx,0x188
   2bcc9:	8e c2                	mov    es,dx
   2bccb:	26 89 87 5a b4       	mov    WORD PTR es:[bx-0x4ba6],ax
   2bcd0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcd3:	6b db 0e             	imul   bx,bx,0xe
   2bcd6:	b8 88 01             	mov    ax,0x188
   2bcd9:	53                   	push   bx
   2bcda:	50                   	push   ax
   2bcdb:	a1 cc b8             	mov    ax,ds:0xb8cc
   2bcde:	07                   	pop    es
   2bcdf:	5b                   	pop    bx
   2bce0:	26 2b 87 58 b4       	sub    ax,WORD PTR es:[bx-0x4ba8]
   2bce5:	bb 02 00             	mov    bx,0x2
   2bce8:	99                   	cwd
   2bce9:	f7 fb                	idiv   bx
   2bceb:	8b 16 c8 b8          	mov    dx,WORD PTR ds:0xb8c8
   2bcef:	03 d0                	add    dx,ax
   2bcf1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bcf4:	6b db 0e             	imul   bx,bx,0xe
   2bcf7:	b8 88 01             	mov    ax,0x188
   2bcfa:	8e c0                	mov    es,ax
   2bcfc:	26 89 97 5c b4       	mov    WORD PTR es:[bx-0x4ba4],dx
   2bd01:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd04:	6b db 0e             	imul   bx,bx,0xe
   2bd07:	b8 88 01             	mov    ax,0x188
   2bd0a:	53                   	push   bx
   2bd0b:	50                   	push   ax
   2bd0c:	a1 ff 3a             	mov    ax,ds:0x3aff
   2bd0f:	07                   	pop    es
   2bd10:	5b                   	pop    bx
   2bd11:	26 2b 87 58 b4       	sub    ax,WORD PTR es:[bx-0x4ba8]
   2bd16:	bb 02 00             	mov    bx,0x2
   2bd19:	99                   	cwd
   2bd1a:	f7 fb                	idiv   bx
   2bd1c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd1f:	6b db 0e             	imul   bx,bx,0xe
   2bd22:	b8 88 01             	mov    ax,0x188
   2bd25:	8e c0                	mov    es,ax
   2bd27:	26 89 97 64 b4       	mov    WORD PTR es:[bx-0x4b9c],dx
   2bd2c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd2f:	6b db 0e             	imul   bx,bx,0xe
   2bd32:	b8 88 01             	mov    ax,0x188
   2bd35:	8b 16 ca b8          	mov    dx,WORD PTR ds:0xb8ca
   2bd39:	03 16 ce b8          	add    dx,WORD PTR ds:0xb8ce
   2bd3d:	8e c0                	mov    es,ax
   2bd3f:	26 2b 97 5a b4       	sub    dx,WORD PTR es:[bx-0x4ba6]
   2bd44:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2bd47:	6b db 0e             	imul   bx,bx,0xe
   2bd4a:	b8 88 01             	mov    ax,0x188
   2bd4d:	8e c0                	mov    es,ax
   2bd4f:	26 89 97 5e b4       	mov    WORD PTR es:[bx-0x4ba2],dx
   2bd54:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2bd57:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   2bd5b:	7d 03                	jge    0x2bd60
   2bd5d:	e9 d8 fe             	jmp    0x2bc38
   2bd60:	c9                   	leave
   2bd61:	cb                   	retf
   2bd62:	55                   	push   bp
   2bd63:	8b ec                	mov    bp,sp
   2bd65:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2bd68:	50                   	push   ax
   2bd69:	90                   	nop
   2bd6a:	0e                   	push   cs
   2bd6b:	e8 9f 03             	call   0x2c10d
   2bd6e:	59                   	pop    cx
   2bd6f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2bd72:	50                   	push   ax
   2bd73:	90                   	nop
   2bd74:	0e                   	push   cs
   2bd75:	e8 81 0a             	call   0x2c7f9
   2bd78:	59                   	pop    cx
   2bd79:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2bd7c:	50                   	push   ax
   2bd7d:	90                   	nop
   2bd7e:	0e                   	push   cs
   2bd7f:	e8 03 16             	call   0x2d385
   2bd82:	59                   	pop    cx
   2bd83:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2bd86:	50                   	push   ax
   2bd87:	90                   	nop
   2bd88:	0e                   	push   cs
   2bd89:	e8 84 1d             	call   0x2db10
   2bd8c:	59                   	pop    cx
   2bd8d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2bd90:	50                   	push   ax
   2bd91:	90                   	nop
   2bd92:	0e                   	push   cs
   2bd93:	e8 7c 1f             	call   0x2dd12
   2bd96:	59                   	pop    cx
   2bd97:	5d                   	pop    bp
   2bd98:	cb                   	retf
   2bd99:	55                   	push   bp
   2bd9a:	8b ec                	mov    bp,sp
   2bd9c:	83 ec 18             	sub    sp,0x18
   2bd9f:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2bda2:	b4 00                	mov    ah,0x0
   2bda4:	d1 e0                	shl    ax,1
   2bda6:	50                   	push   ax
   2bda7:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   2bdaa:	5a                   	pop    dx
   2bdab:	03 c2                	add    ax,dx
   2bdad:	40                   	inc    ax
   2bdae:	99                   	cwd
   2bdaf:	50                   	push   ax
   2bdb0:	52                   	push   dx
   2bdb1:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2bdb5:	a1 ec b9             	mov    ax,ds:0xb9ec
   2bdb8:	59                   	pop    cx
   2bdb9:	5b                   	pop    bx
   2bdba:	9a 77 14 00 00       	call   0x0:0x1477
   2bdbf:	8b d8                	mov    bx,ax
   2bdc1:	8e c2                	mov    es,dx
   2bdc3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2bdc6:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   2bdc9:	0a c0                	or     al,al
   2bdcb:	75 03                	jne    0x2bdd0
   2bdcd:	e9 23 03             	jmp    0x2c0f3
   2bdd0:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   2bdd3:	b4 00                	mov    ah,0x0
   2bdd5:	d1 e0                	shl    ax,1
   2bdd7:	50                   	push   ax
   2bdd8:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   2bddb:	5a                   	pop    dx
   2bddc:	03 c2                	add    ax,dx
   2bdde:	99                   	cwd
   2bddf:	50                   	push   ax
   2bde0:	52                   	push   dx
   2bde1:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2bde5:	a1 ec b9             	mov    ax,ds:0xb9ec
   2bde8:	59                   	pop    cx
   2bde9:	5b                   	pop    bx
   2bdea:	9a 77 14 00 00       	call   0x0:0x1477
   2bdef:	8b d8                	mov    bx,ax
   2bdf1:	8e c2                	mov    es,dx
   2bdf3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2bdf6:	b4 00                	mov    ah,0x0
   2bdf8:	48                   	dec    ax
   2bdf9:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   2bdfc:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   2be00:	7d 12                	jge    0x2be14
   2be02:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2be05:	d1 e3                	shl    bx,1
   2be07:	b8 88 01             	mov    ax,0x188
   2be0a:	8e c0                	mov    es,ax
   2be0c:	26 83 bf 10 9f 00    	cmp    WORD PTR es:[bx-0x60f0],0x0
   2be12:	75 16                	jne    0x2be2a
   2be14:	ff 76 08             	push   WORD PTR [bp+0x8]
   2be17:	1e                   	push   ds
   2be18:	68 d3 3c             	push   0x3cd3
   2be1b:	1e                   	push   ds
   2be1c:	68 94 b3             	push   0xb394
   2be1f:	9a b4 48 00 00       	call   0x0:0x48b4
   2be24:	83 c4 0a             	add    sp,0xa
   2be27:	e9 c9 02             	jmp    0x2c0f3
   2be2a:	ff 76 06             	push   WORD PTR [bp+0x6]
   2be2d:	1e                   	push   ds
   2be2e:	68 fc 3c             	push   0x3cfc
   2be31:	1e                   	push   ds
   2be32:	68 94 b3             	push   0xb394
   2be35:	9a b4 48 00 00       	call   0x0:0x48b4
   2be3a:	83 c4 0a             	add    sp,0xa
   2be3d:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   2be40:	b4 00                	mov    ah,0x0
   2be42:	3d 01 00             	cmp    ax,0x1
   2be45:	74 14                	je     0x2be5b
   2be47:	3d 02 00             	cmp    ax,0x2
   2be4a:	74 0b                	je     0x2be57
   2be4c:	3d 03 00             	cmp    ax,0x3
   2be4f:	75 03                	jne    0x2be54
   2be51:	e9 11 02             	jmp    0x2c065
   2be54:	e9 9c 02             	jmp    0x2c0f3
   2be57:	83 46 fc 04          	add    WORD PTR [bp-0x4],0x4
   2be5b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2be5e:	6b db 0e             	imul   bx,bx,0xe
   2be61:	b8 88 01             	mov    ax,0x188
   2be64:	8e c0                	mov    es,ax
   2be66:	26 83 bf ec b3 00    	cmp    WORD PTR es:[bx-0x4c14],0x0
   2be6c:	75 03                	jne    0x2be71
   2be6e:	e9 c8 01             	jmp    0x2c039
   2be71:	80 7e 0a 01          	cmp    BYTE PTR [bp+0xa],0x1
   2be75:	77 03                	ja     0x2be7a
   2be77:	e9 93 01             	jmp    0x2c00d
   2be7a:	a0 f0 b9             	mov    al,ds:0xb9f0
   2be7d:	3a 46 0a             	cmp    al,BYTE PTR [bp+0xa]
   2be80:	74 03                	je     0x2be85
   2be82:	e9 88 01             	jmp    0x2c00d
   2be85:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2be88:	6b db 0e             	imul   bx,bx,0xe
   2be8b:	b8 88 01             	mov    ax,0x188
   2be8e:	8e c0                	mov    es,ax
   2be90:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2be95:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2be98:	6b c0 12             	imul   ax,ax,0x12
   2be9b:	03 d8                	add    bx,ax
   2be9d:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   2bea1:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   2bea4:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bea7:	6b db 0e             	imul   bx,bx,0xe
   2beaa:	b8 88 01             	mov    ax,0x188
   2bead:	8e c0                	mov    es,ax
   2beaf:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2beb4:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2beb7:	6b c0 12             	imul   ax,ax,0x12
   2beba:	03 d8                	add    bx,ax
   2bebc:	26 8b 47 0a          	mov    ax,WORD PTR es:[bx+0xa]
   2bec0:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   2bec3:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bec6:	6b db 0e             	imul   bx,bx,0xe
   2bec9:	b8 88 01             	mov    ax,0x188
   2becc:	8e c0                	mov    es,ax
   2bece:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bed3:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bed6:	6b c0 12             	imul   ax,ax,0x12
   2bed9:	03 d8                	add    bx,ax
   2bedb:	26 8a 47 10          	mov    al,BYTE PTR es:[bx+0x10]
   2bedf:	88 46 fe             	mov    BYTE PTR [bp-0x2],al
   2bee2:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2bee5:	83 eb 0d             	sub    bx,0xd
   2bee8:	83 fb 0b             	cmp    bx,0xb
   2beeb:	77 23                	ja     0x2bf10
   2beed:	d1 e3                	shl    bx,1
   2beef:	2e ff a7 c5 3c       	jmp    WORD PTR cs:[bx+0x3cc5]
   2bef4:	c7 46 fa 11 00       	mov    WORD PTR [bp-0x6],0x11
   2bef9:	eb 1b                	jmp    0x2bf16
   2befb:	c7 46 fa 0d 00       	mov    WORD PTR [bp-0x6],0xd
   2bf00:	eb 14                	jmp    0x2bf16
   2bf02:	c7 46 fa 18 00       	mov    WORD PTR [bp-0x6],0x18
   2bf07:	eb 0d                	jmp    0x2bf16
   2bf09:	c7 46 fa 16 00       	mov    WORD PTR [bp-0x6],0x16
   2bf0e:	eb 06                	jmp    0x2bf16
   2bf10:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bf13:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2bf16:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bf19:	6b db 0e             	imul   bx,bx,0xe
   2bf1c:	b8 88 01             	mov    ax,0x188
   2bf1f:	8e c0                	mov    es,ax
   2bf21:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bf26:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2bf29:	6b c0 12             	imul   ax,ax,0x12
   2bf2c:	03 d8                	add    bx,ax
   2bf2e:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   2bf32:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bf35:	6b db 0e             	imul   bx,bx,0xe
   2bf38:	ba 88 01             	mov    dx,0x188
   2bf3b:	8e c2                	mov    es,dx
   2bf3d:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bf42:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   2bf45:	6b d2 12             	imul   dx,dx,0x12
   2bf48:	03 da                	add    bx,dx
   2bf4a:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   2bf4e:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bf51:	6b db 0e             	imul   bx,bx,0xe
   2bf54:	b8 88 01             	mov    ax,0x188
   2bf57:	8e c0                	mov    es,ax
   2bf59:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bf5e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2bf61:	6b c0 12             	imul   ax,ax,0x12
   2bf64:	03 d8                	add    bx,ax
   2bf66:	26 8b 47 0a          	mov    ax,WORD PTR es:[bx+0xa]
   2bf6a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bf6d:	6b db 0e             	imul   bx,bx,0xe
   2bf70:	ba 88 01             	mov    dx,0x188
   2bf73:	8e c2                	mov    es,dx
   2bf75:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bf7a:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   2bf7d:	6b d2 12             	imul   dx,dx,0x12
   2bf80:	03 da                	add    bx,dx
   2bf82:	26 89 47 0a          	mov    WORD PTR es:[bx+0xa],ax
   2bf86:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bf89:	6b db 0e             	imul   bx,bx,0xe
   2bf8c:	b8 88 01             	mov    ax,0x188
   2bf8f:	8e c0                	mov    es,ax
   2bf91:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bf96:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bf99:	6b c0 12             	imul   ax,ax,0x12
   2bf9c:	03 d8                	add    bx,ax
   2bf9e:	26 83 4f 10 01       	or     WORD PTR es:[bx+0x10],0x1
   2bfa3:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bfa6:	6b db 0e             	imul   bx,bx,0xe
   2bfa9:	b8 88 01             	mov    ax,0x188
   2bfac:	8e c0                	mov    es,ax
   2bfae:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2bfb3:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2bfb8:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   2bfbb:	50                   	push   ax
   2bfbc:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   2bfbf:	04 18                	add    al,0x18
   2bfc1:	50                   	push   ax
   2bfc2:	ff 76 06             	push   WORD PTR [bp+0x6]
   2bfc5:	0e                   	push   cs
   2bfc6:	e8 66 fa             	call   0x2ba2f
   2bfc9:	83 c4 0a             	add    sp,0xa
   2bfcc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bfcf:	6b db 0e             	imul   bx,bx,0xe
   2bfd2:	b8 88 01             	mov    ax,0x188
   2bfd5:	8e c0                	mov    es,ax
   2bfd7:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bfdc:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bfdf:	6b c0 12             	imul   ax,ax,0x12
   2bfe2:	03 d8                	add    bx,ax
   2bfe4:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   2bfe7:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   2bfeb:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2bfee:	6b db 0e             	imul   bx,bx,0xe
   2bff1:	b8 88 01             	mov    ax,0x188
   2bff4:	8e c0                	mov    es,ax
   2bff6:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2bffb:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2bffe:	6b c0 12             	imul   ax,ax,0x12
   2c001:	03 d8                	add    bx,ax
   2c003:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   2c006:	26 89 47 0a          	mov    WORD PTR es:[bx+0xa],ax
   2c00a:	e9 c3 00             	jmp    0x2c0d0
   2c00d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2c010:	6b db 0e             	imul   bx,bx,0xe
   2c013:	b8 88 01             	mov    ax,0x188
   2c016:	8e c0                	mov    es,ax
   2c018:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2c01d:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2c022:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   2c025:	50                   	push   ax
   2c026:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   2c029:	04 18                	add    al,0x18
   2c02b:	50                   	push   ax
   2c02c:	ff 76 06             	push   WORD PTR [bp+0x6]
   2c02f:	0e                   	push   cs
   2c030:	e8 fc f9             	call   0x2ba2f
   2c033:	e9 ee fd             	jmp    0x2be24
   2c036:	e9 ba 00             	jmp    0x2c0f3
   2c039:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2c03c:	6b db 0e             	imul   bx,bx,0xe
   2c03f:	b8 88 01             	mov    ax,0x188
   2c042:	8e c0                	mov    es,ax
   2c044:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2c049:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2c04e:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   2c051:	50                   	push   ax
   2c052:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   2c055:	04 18                	add    al,0x18
   2c057:	50                   	push   ax
   2c058:	ff 76 06             	push   WORD PTR [bp+0x6]
   2c05b:	0e                   	push   cs
   2c05c:	e8 42 f8             	call   0x2b8a1
   2c05f:	e9 c2 fd             	jmp    0x2be24
   2c062:	e9 8e 00             	jmp    0x2c0f3
   2c065:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2c068:	6b db 0e             	imul   bx,bx,0xe
   2c06b:	b8 88 01             	mov    ax,0x188
   2c06e:	8e c0                	mov    es,ax
   2c070:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2c075:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2c078:	6b c0 12             	imul   ax,ax,0x12
   2c07b:	03 d8                	add    bx,ax
   2c07d:	26 8a 47 10          	mov    al,BYTE PTR es:[bx+0x10]
   2c081:	88 46 fe             	mov    BYTE PTR [bp-0x2],al
   2c084:	83 7e 06 17          	cmp    WORD PTR [bp+0x6],0x17
   2c088:	75 1d                	jne    0x2c0a7
   2c08a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2c08d:	6b db 0e             	imul   bx,bx,0xe
   2c090:	b8 88 01             	mov    ax,0x188
   2c093:	8e c0                	mov    es,ax
   2c095:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2c09a:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   2c09d:	6b c0 12             	imul   ax,ax,0x12
   2c0a0:	03 d8                	add    bx,ax
   2c0a2:	26 83 4f 10 01       	or     WORD PTR es:[bx+0x10],0x1
   2c0a7:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2c0aa:	6b db 0e             	imul   bx,bx,0xe
   2c0ad:	b8 88 01             	mov    ax,0x188
   2c0b0:	8e c0                	mov    es,ax
   2c0b2:	26 ff b7 f4 b3       	push   WORD PTR es:[bx-0x4c0c]
   2c0b7:	26 ff b7 f2 b3       	push   WORD PTR es:[bx-0x4c0e]
   2c0bc:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   2c0bf:	50                   	push   ax
   2c0c0:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   2c0c3:	04 18                	add    al,0x18
   2c0c5:	50                   	push   ax
   2c0c6:	ff 76 06             	push   WORD PTR [bp+0x6]
   2c0c9:	0e                   	push   cs
   2c0ca:	e8 d4 f7             	call   0x2b8a1
   2c0cd:	83 c4 0a             	add    sp,0xa
   2c0d0:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   2c0d3:	b4 00                	mov    ah,0x0
   2c0d5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   2c0d8:	6b db 0e             	imul   bx,bx,0xe
   2c0db:	ba 88 01             	mov    dx,0x188
   2c0de:	8e c2                	mov    es,dx
   2c0e0:	26 c4 9f f2 b3       	les    bx,DWORD PTR es:[bx-0x4c0e]
   2c0e5:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   2c0e8:	6b d2 12             	imul   dx,dx,0x12
   2c0eb:	03 da                	add    bx,dx
   2c0ed:	26 89 47 10          	mov    WORD PTR es:[bx+0x10],ax
   2c0f1:	eb 00                	jmp    0x2c0f3
   2c0f3:	c9                   	leave
   2c0f4:	cb                   	retf
   2c0f5:	c4 3a                	les    di,DWORD PTR [bp+si]
   2c0f7:	e0 3a                	loopne 0x2c133
   2c0f9:	e0 3a                	loopne 0x2c135
   2c0fb:	e0 3a                	loopne 0x2c137
   2c0fd:	cb                   	retf
   2c0fe:	3a e0                	cmp    ah,al
   2c100:	3a e0                	cmp    ah,al
   2c102:	3a e0                	cmp    ah,al
   2c104:	3a e0                	cmp    ah,al
   2c106:	3a d2                	cmp    dl,dl
   2c108:	3a e0                	cmp    ah,al
   2c10a:	3a d9                	cmp    bl,cl
   2c10c:	3a 55 8b             	cmp    dl,BYTE PTR [di-0x75]
   2c10f:	ec                   	in     al,dx
   2c110:	83 ec 0c             	sub    sp,0xc
   2c113:	c6 46 f5 00          	mov    BYTE PTR [bp-0xb],0x0
   2c117:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c11a:	6b c0 03             	imul   ax,ax,0x3
   2c11d:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c121:	03 d0                	add    dx,ax
   2c123:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c126:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c129:	6b c0 03             	imul   ax,ax,0x3
   2c12c:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c130:	03 d0                	add    dx,ax
   2c132:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c135:	a0 eb b9             	mov    al,ds:0xb9eb
   2c138:	b4 00                	mov    ah,0x0
   2c13a:	50                   	push   ax
   2c13b:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2c13e:	5a                   	pop    dx
   2c13f:	f7 ea                	imul   dx
   2c141:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   2c144:	03 d0                	add    dx,ax
   2c146:	6b d2 0f             	imul   dx,dx,0xf
   2c149:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   2c14c:	a0 eb b9             	mov    al,ds:0xb9eb
   2c14f:	b4 00                	mov    ah,0x0
   2c151:	50                   	push   ax
   2c152:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c155:	5a                   	pop    dx
   2c156:	f7 ea                	imul   dx
   2c158:	6b c0 fe             	imul   ax,ax,0xfffe
   2c15b:	8b 16 c4 b9          	mov    dx,WORD PTR ds:0xb9c4
   2c15f:	d1 e2                	shl    dx,1
   2c161:	03 d0                	add    dx,ax
   2c163:	6b d2 0f             	imul   dx,dx,0xf
   2c166:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2c169:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c16c:	6b c0 03             	imul   ax,ax,0x3
   2c16f:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c173:	03 d0                	add    dx,ax
   2c175:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c178:	d1 e0                	shl    ax,1
   2c17a:	03 d0                	add    dx,ax
   2c17c:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c17f:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c182:	6b c0 03             	imul   ax,ax,0x3
   2c185:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c189:	03 d0                	add    dx,ax
   2c18b:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c18e:	d1 e0                	shl    ax,1
   2c190:	2b d0                	sub    dx,ax
   2c192:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c195:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c199:	7d 03                	jge    0x2c19e
   2c19b:	e9 d7 00             	jmp    0x2c275
   2c19e:	a0 eb b9             	mov    al,ds:0xb9eb
   2c1a1:	b4 00                	mov    ah,0x0
   2c1a3:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c1a6:	7f 03                	jg     0x2c1ab
   2c1a8:	e9 ca 00             	jmp    0x2c275
   2c1ab:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c1af:	7d 03                	jge    0x2c1b4
   2c1b1:	e9 c1 00             	jmp    0x2c275
   2c1b4:	a0 ea b9             	mov    al,ds:0xb9ea
   2c1b7:	b4 00                	mov    ah,0x0
   2c1b9:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c1bc:	7f 03                	jg     0x2c1c1
   2c1be:	e9 b4 00             	jmp    0x2c275
   2c1c1:	68 e0 01             	push   0x1e0
   2c1c4:	68 41 03             	push   0x341
   2c1c7:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c1ca:	50                   	push   ax
   2c1cb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c1ce:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c1d1:	05 09 00             	add    ax,0x9
   2c1d4:	99                   	cwd
   2c1d5:	50                   	push   ax
   2c1d6:	52                   	push   dx
   2c1d7:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c1db:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c1de:	59                   	pop    cx
   2c1df:	5b                   	pop    bx
   2c1e0:	9a 77 14 00 00       	call   0x0:0x1477
   2c1e5:	8b d8                	mov    bx,ax
   2c1e7:	8e c2                	mov    es,dx
   2c1e9:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c1ec:	04 23                	add    al,0x23
   2c1ee:	50                   	push   ax
   2c1ef:	a1 30 b7             	mov    ax,ds:0xb730
   2c1f2:	bb 02 00             	mov    bx,0x2
   2c1f5:	99                   	cwd
   2c1f6:	f7 fb                	idiv   bx
   2c1f8:	8b 16 12 b9          	mov    dx,WORD PTR ds:0xb912
   2c1fc:	2b d0                	sub    dx,ax
   2c1fe:	52                   	push   dx
   2c1ff:	6a 00                	push   0x0
   2c201:	a1 30 b7             	mov    ax,ds:0xb730
   2c204:	bb 02 00             	mov    bx,0x2
   2c207:	99                   	cwd
   2c208:	f7 fb                	idiv   bx
   2c20a:	50                   	push   ax
   2c20b:	6a 02                	push   0x2
   2c20d:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c211:	6a 00                	push   0x0
   2c213:	9a 30 04 28 00       	call   0x28:0x430
   2c218:	83 c4 14             	add    sp,0x14
   2c21b:	68 e0 01             	push   0x1e0
   2c21e:	68 41 03             	push   0x341
   2c221:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c224:	50                   	push   ax
   2c225:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c228:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c22b:	05 08 00             	add    ax,0x8
   2c22e:	99                   	cwd
   2c22f:	50                   	push   ax
   2c230:	52                   	push   dx
   2c231:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c235:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c238:	59                   	pop    cx
   2c239:	5b                   	pop    bx
   2c23a:	9a 77 14 00 00       	call   0x0:0x1477
   2c23f:	8b d8                	mov    bx,ax
   2c241:	8e c2                	mov    es,dx
   2c243:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c246:	04 37                	add    al,0x37
   2c248:	50                   	push   ax
   2c249:	ff 36 48 b9          	push   WORD PTR ds:0xb948
   2c24d:	6a 00                	push   0x0
   2c24f:	a1 30 b7             	mov    ax,ds:0xb730
   2c252:	bb 02 00             	mov    bx,0x2
   2c255:	99                   	cwd
   2c256:	f7 fb                	idiv   bx
   2c258:	50                   	push   ax
   2c259:	6a 02                	push   0x2
   2c25b:	a1 30 b7             	mov    ax,ds:0xb730
   2c25e:	bb 02 00             	mov    bx,0x2
   2c261:	99                   	cwd
   2c262:	f7 fb                	idiv   bx
   2c264:	8b 16 50 b9          	mov    dx,WORD PTR ds:0xb950
   2c268:	2b d0                	sub    dx,ax
   2c26a:	52                   	push   dx
   2c26b:	6a 00                	push   0x0
   2c26d:	9a 30 04 28 00       	call   0x28:0x430
   2c272:	83 c4 14             	add    sp,0x14
   2c275:	a0 eb b9             	mov    al,ds:0xb9eb
   2c278:	b4 00                	mov    ah,0x0
   2c27a:	50                   	push   ax
   2c27b:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c27e:	d1 e0                	shl    ax,1
   2c280:	5a                   	pop    dx
   2c281:	f7 ea                	imul   dx
   2c283:	8b 16 c4 b9          	mov    dx,WORD PTR ds:0xb9c4
   2c287:	6b d2 fe             	imul   dx,dx,0xfffe
   2c28a:	03 d0                	add    dx,ax
   2c28c:	6b d2 0f             	imul   dx,dx,0xf
   2c28f:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2c292:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c295:	6b c0 03             	imul   ax,ax,0x3
   2c298:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c29c:	03 d0                	add    dx,ax
   2c29e:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c2a1:	d1 e0                	shl    ax,1
   2c2a3:	2b d0                	sub    dx,ax
   2c2a5:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c2a8:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c2ab:	6b c0 03             	imul   ax,ax,0x3
   2c2ae:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c2b2:	03 d0                	add    dx,ax
   2c2b4:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c2b7:	d1 e0                	shl    ax,1
   2c2b9:	03 d0                	add    dx,ax
   2c2bb:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c2be:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c2c2:	7d 03                	jge    0x2c2c7
   2c2c4:	e9 e1 00             	jmp    0x2c3a8
   2c2c7:	a0 eb b9             	mov    al,ds:0xb9eb
   2c2ca:	b4 00                	mov    ah,0x0
   2c2cc:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c2cf:	7f 03                	jg     0x2c2d4
   2c2d1:	e9 d4 00             	jmp    0x2c3a8
   2c2d4:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c2d8:	7d 03                	jge    0x2c2dd
   2c2da:	e9 cb 00             	jmp    0x2c3a8
   2c2dd:	a0 ea b9             	mov    al,ds:0xb9ea
   2c2e0:	b4 00                	mov    ah,0x0
   2c2e2:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c2e5:	7f 03                	jg     0x2c2ea
   2c2e7:	e9 be 00             	jmp    0x2c3a8
   2c2ea:	68 e0 01             	push   0x1e0
   2c2ed:	68 41 03             	push   0x341
   2c2f0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c2f3:	50                   	push   ax
   2c2f4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c2f7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c2fa:	05 09 00             	add    ax,0x9
   2c2fd:	99                   	cwd
   2c2fe:	50                   	push   ax
   2c2ff:	52                   	push   dx
   2c300:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c304:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c307:	59                   	pop    cx
   2c308:	5b                   	pop    bx
   2c309:	9a 77 14 00 00       	call   0x0:0x1477
   2c30e:	8b d8                	mov    bx,ax
   2c310:	8e c2                	mov    es,dx
   2c312:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c315:	04 23                	add    al,0x23
   2c317:	50                   	push   ax
   2c318:	a1 30 b7             	mov    ax,ds:0xb730
   2c31b:	bb 02 00             	mov    bx,0x2
   2c31e:	99                   	cwd
   2c31f:	f7 fb                	idiv   bx
   2c321:	8b 16 12 b9          	mov    dx,WORD PTR ds:0xb912
   2c325:	2b d0                	sub    dx,ax
   2c327:	52                   	push   dx
   2c328:	a1 ff 3a             	mov    ax,ds:0x3aff
   2c32b:	05 fe ff             	add    ax,0xfffe
   2c32e:	50                   	push   ax
   2c32f:	a1 30 b7             	mov    ax,ds:0xb730
   2c332:	bb 02 00             	mov    bx,0x2
   2c335:	99                   	cwd
   2c336:	f7 fb                	idiv   bx
   2c338:	50                   	push   ax
   2c339:	6a 02                	push   0x2
   2c33b:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c33f:	6a 00                	push   0x0
   2c341:	9a 30 04 28 00       	call   0x28:0x430
   2c346:	83 c4 14             	add    sp,0x14
   2c349:	68 e0 01             	push   0x1e0
   2c34c:	68 41 03             	push   0x341
   2c34f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c352:	50                   	push   ax
   2c353:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c356:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c359:	05 08 00             	add    ax,0x8
   2c35c:	99                   	cwd
   2c35d:	50                   	push   ax
   2c35e:	52                   	push   dx
   2c35f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c363:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c366:	59                   	pop    cx
   2c367:	5b                   	pop    bx
   2c368:	9a 77 14 00 00       	call   0x0:0x1477
   2c36d:	8b d8                	mov    bx,ax
   2c36f:	8e c2                	mov    es,dx
   2c371:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c374:	04 37                	add    al,0x37
   2c376:	50                   	push   ax
   2c377:	ff 36 48 b9          	push   WORD PTR ds:0xb948
   2c37b:	a1 ff 3a             	mov    ax,ds:0x3aff
   2c37e:	05 fe ff             	add    ax,0xfffe
   2c381:	50                   	push   ax
   2c382:	a1 30 b7             	mov    ax,ds:0xb730
   2c385:	bb 02 00             	mov    bx,0x2
   2c388:	99                   	cwd
   2c389:	f7 fb                	idiv   bx
   2c38b:	50                   	push   ax
   2c38c:	6a 02                	push   0x2
   2c38e:	a1 30 b7             	mov    ax,ds:0xb730
   2c391:	bb 02 00             	mov    bx,0x2
   2c394:	99                   	cwd
   2c395:	f7 fb                	idiv   bx
   2c397:	8b 16 50 b9          	mov    dx,WORD PTR ds:0xb950
   2c39b:	2b d0                	sub    dx,ax
   2c39d:	52                   	push   dx
   2c39e:	6a 00                	push   0x0
   2c3a0:	9a 30 04 28 00       	call   0x28:0x430
   2c3a5:	83 c4 14             	add    sp,0x14
   2c3a8:	b8 88 01             	mov    ax,0x188
   2c3ab:	8e c0                	mov    es,ax
   2c3ad:	26 a1 17 e5          	mov    ax,es:0xe517
   2c3b1:	26 0b 06 19 e5       	or     ax,WORD PTR es:0xe519
   2c3b6:	75 03                	jne    0x2c3bb
   2c3b8:	e9 f6 01             	jmp    0x2c5b1
   2c3bb:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2c3c0:	a0 eb b9             	mov    al,ds:0xb9eb
   2c3c3:	b4 00                	mov    ah,0x0
   2c3c5:	50                   	push   ax
   2c3c6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c3c9:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c3cd:	2b 06 c4 b9          	sub    ax,WORD PTR ds:0xb9c4
   2c3d1:	5a                   	pop    dx
   2c3d2:	f7 ea                	imul   dx
   2c3d4:	50                   	push   ax
   2c3d5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c3d8:	f7 d8                	neg    ax
   2c3da:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c3de:	2b 06 c6 b9          	sub    ax,WORD PTR ds:0xb9c6
   2c3e2:	5a                   	pop    dx
   2c3e3:	03 c2                	add    ax,dx
   2c3e5:	6b c0 0f             	imul   ax,ax,0xf
   2c3e8:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c3eb:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c3ee:	d1 e0                	shl    ax,1
   2c3f0:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c3f4:	03 d0                	add    dx,ax
   2c3f6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c3f9:	52                   	push   dx
   2c3fa:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c3fe:	5a                   	pop    dx
   2c3ff:	2b d0                	sub    dx,ax
   2c401:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c404:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c407:	d1 e0                	shl    ax,1
   2c409:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c40d:	03 d0                	add    dx,ax
   2c40f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c412:	52                   	push   dx
   2c413:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c417:	5a                   	pop    dx
   2c418:	03 d0                	add    dx,ax
   2c41a:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c41d:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c421:	7c 1a                	jl     0x2c43d
   2c423:	a0 eb b9             	mov    al,ds:0xb9eb
   2c426:	b4 00                	mov    ah,0x0
   2c428:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c42b:	7e 10                	jle    0x2c43d
   2c42d:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c431:	7c 0a                	jl     0x2c43d
   2c433:	a0 ea b9             	mov    al,ds:0xb9ea
   2c436:	b4 00                	mov    ah,0x0
   2c438:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c43b:	7f 0b                	jg     0x2c448
   2c43d:	b8 88 01             	mov    ax,0x188
   2c440:	8e c0                	mov    es,ax
   2c442:	26 a0 15 e5          	mov    al,es:0xe515
   2c446:	eb 2c                	jmp    0x2c474
   2c448:	a1 01 3b             	mov    ax,ds:0x3b01
   2c44b:	bb 02 00             	mov    bx,0x2
   2c44e:	99                   	cwd
   2c44f:	f7 fb                	idiv   bx
   2c451:	40                   	inc    ax
   2c452:	ba 88 01             	mov    dx,0x188
   2c455:	8e c2                	mov    es,dx
   2c457:	26 3b 06 15 e5       	cmp    ax,WORD PTR es:0xe515
   2c45c:	7e 0b                	jle    0x2c469
   2c45e:	b8 88 01             	mov    ax,0x188
   2c461:	8e c0                	mov    es,ax
   2c463:	26 a0 15 e5          	mov    al,es:0xe515
   2c467:	eb 0b                	jmp    0x2c474
   2c469:	a1 01 3b             	mov    ax,ds:0x3b01
   2c46c:	bb 02 00             	mov    bx,0x2
   2c46f:	99                   	cwd
   2c470:	f7 fb                	idiv   bx
   2c472:	fe c0                	inc    al
   2c474:	88 46 f5             	mov    BYTE PTR [bp-0xb],al
   2c477:	c7 46 fe fd ff       	mov    WORD PTR [bp-0x2],0xfffd
   2c47c:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c47f:	6b c0 03             	imul   ax,ax,0x3
   2c482:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c486:	03 d0                	add    dx,ax
   2c488:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c48b:	52                   	push   dx
   2c48c:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c490:	5a                   	pop    dx
   2c491:	2b d0                	sub    dx,ax
   2c493:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c496:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c499:	6b c0 03             	imul   ax,ax,0x3
   2c49c:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c4a0:	03 d0                	add    dx,ax
   2c4a2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c4a5:	52                   	push   dx
   2c4a6:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c4aa:	5a                   	pop    dx
   2c4ab:	03 d0                	add    dx,ax
   2c4ad:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c4b0:	a0 eb b9             	mov    al,ds:0xb9eb
   2c4b3:	b4 00                	mov    ah,0x0
   2c4b5:	50                   	push   ax
   2c4b6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c4b9:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c4bd:	5a                   	pop    dx
   2c4be:	f7 ea                	imul   dx
   2c4c0:	50                   	push   ax
   2c4c1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c4c4:	f7 d8                	neg    ax
   2c4c6:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c4ca:	5a                   	pop    dx
   2c4cb:	03 c2                	add    ax,dx
   2c4cd:	6b c0 0f             	imul   ax,ax,0xf
   2c4d0:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c4d3:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c4d7:	7c 1a                	jl     0x2c4f3
   2c4d9:	a0 eb b9             	mov    al,ds:0xb9eb
   2c4dc:	b4 00                	mov    ah,0x0
   2c4de:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c4e1:	7e 10                	jle    0x2c4f3
   2c4e3:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c4e7:	7c 0a                	jl     0x2c4f3
   2c4e9:	a0 ea b9             	mov    al,ds:0xb9ea
   2c4ec:	b4 00                	mov    ah,0x0
   2c4ee:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c4f1:	7f 02                	jg     0x2c4f5
   2c4f3:	eb 7c                	jmp    0x2c571
   2c4f5:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   2c4fa:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c4fd:	6b c0 03             	imul   ax,ax,0x3
   2c500:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c504:	03 d0                	add    dx,ax
   2c506:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c509:	52                   	push   dx
   2c50a:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c50e:	5a                   	pop    dx
   2c50f:	2b d0                	sub    dx,ax
   2c511:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c514:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c517:	6b c0 03             	imul   ax,ax,0x3
   2c51a:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c51e:	03 d0                	add    dx,ax
   2c520:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c523:	52                   	push   dx
   2c524:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c528:	5a                   	pop    dx
   2c529:	03 d0                	add    dx,ax
   2c52b:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c52e:	a0 eb b9             	mov    al,ds:0xb9eb
   2c531:	b4 00                	mov    ah,0x0
   2c533:	50                   	push   ax
   2c534:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c537:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c53b:	5a                   	pop    dx
   2c53c:	f7 ea                	imul   dx
   2c53e:	50                   	push   ax
   2c53f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c542:	f7 d8                	neg    ax
   2c544:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c548:	5a                   	pop    dx
   2c549:	03 c2                	add    ax,dx
   2c54b:	6b c0 0f             	imul   ax,ax,0xf
   2c54e:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c551:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c555:	7c 1a                	jl     0x2c571
   2c557:	a0 eb b9             	mov    al,ds:0xb9eb
   2c55a:	b4 00                	mov    ah,0x0
   2c55c:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c55f:	7e 10                	jle    0x2c571
   2c561:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c565:	7c 0a                	jl     0x2c571
   2c567:	a0 ea b9             	mov    al,ds:0xb9ea
   2c56a:	b4 00                	mov    ah,0x0
   2c56c:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c56f:	7f 40                	jg     0x2c5b1
   2c571:	68 e0 01             	push   0x1e0
   2c574:	68 41 03             	push   0x341
   2c577:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c57a:	50                   	push   ax
   2c57b:	6a 4f                	push   0x4f
   2c57d:	8a 46 f5             	mov    al,BYTE PTR [bp-0xb]
   2c580:	b4 00                	mov    ah,0x0
   2c582:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2c586:	2b d0                	sub    dx,ax
   2c588:	52                   	push   dx
   2c589:	6a 00                	push   0x0
   2c58b:	8a 46 f5             	mov    al,BYTE PTR [bp-0xb]
   2c58e:	b4 00                	mov    ah,0x0
   2c590:	50                   	push   ax
   2c591:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2c595:	8a 46 f5             	mov    al,BYTE PTR [bp-0xb]
   2c598:	b4 00                	mov    ah,0x0
   2c59a:	ba 88 01             	mov    dx,0x188
   2c59d:	8e c2                	mov    es,dx
   2c59f:	26 8b 16 15 e5       	mov    dx,WORD PTR es:0xe515
   2c5a4:	2b d0                	sub    dx,ax
   2c5a6:	52                   	push   dx
   2c5a7:	6a 00                	push   0x0
   2c5a9:	9a 30 04 28 00       	call   0x28:0x430
   2c5ae:	83 c4 14             	add    sp,0x14
   2c5b1:	c7 46 fe fd ff       	mov    WORD PTR [bp-0x2],0xfffd
   2c5b6:	e9 2b 02             	jmp    0x2c7e4
   2c5b9:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2c5bd:	7e 09                	jle    0x2c5c8
   2c5bf:	b8 04 00             	mov    ax,0x4
   2c5c2:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   2c5c5:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2c5c8:	a0 eb b9             	mov    al,ds:0xb9eb
   2c5cb:	b4 00                	mov    ah,0x0
   2c5cd:	50                   	push   ax
   2c5ce:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c5d1:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c5d5:	5a                   	pop    dx
   2c5d6:	f7 ea                	imul   dx
   2c5d8:	50                   	push   ax
   2c5d9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c5dc:	f7 d8                	neg    ax
   2c5de:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c5e2:	5a                   	pop    dx
   2c5e3:	03 c2                	add    ax,dx
   2c5e5:	6b c0 0f             	imul   ax,ax,0xf
   2c5e8:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c5eb:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c5ee:	6b c0 03             	imul   ax,ax,0x3
   2c5f1:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c5f5:	03 d0                	add    dx,ax
   2c5f7:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c5fa:	52                   	push   dx
   2c5fb:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c5ff:	5a                   	pop    dx
   2c600:	2b d0                	sub    dx,ax
   2c602:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c605:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c608:	6b c0 03             	imul   ax,ax,0x3
   2c60b:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c60f:	03 d0                	add    dx,ax
   2c611:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c614:	52                   	push   dx
   2c615:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c619:	5a                   	pop    dx
   2c61a:	03 d0                	add    dx,ax
   2c61c:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c61f:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c623:	7d 03                	jge    0x2c628
   2c625:	e9 aa 01             	jmp    0x2c7d2
   2c628:	a0 eb b9             	mov    al,ds:0xb9eb
   2c62b:	b4 00                	mov    ah,0x0
   2c62d:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c630:	7f 03                	jg     0x2c635
   2c632:	e9 9d 01             	jmp    0x2c7d2
   2c635:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c639:	7d 03                	jge    0x2c63e
   2c63b:	e9 94 01             	jmp    0x2c7d2
   2c63e:	a0 ea b9             	mov    al,ds:0xb9ea
   2c641:	b4 00                	mov    ah,0x0
   2c643:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c646:	7f 03                	jg     0x2c64b
   2c648:	e9 87 01             	jmp    0x2c7d2
   2c64b:	68 e0 01             	push   0x1e0
   2c64e:	68 41 03             	push   0x341
   2c651:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c654:	50                   	push   ax
   2c655:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c658:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c65b:	05 09 00             	add    ax,0x9
   2c65e:	99                   	cwd
   2c65f:	50                   	push   ax
   2c660:	52                   	push   dx
   2c661:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c665:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c668:	59                   	pop    cx
   2c669:	5b                   	pop    bx
   2c66a:	9a 77 14 00 00       	call   0x0:0x1477
   2c66f:	8b d8                	mov    bx,ax
   2c671:	8e c2                	mov    es,dx
   2c673:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c676:	04 23                	add    al,0x23
   2c678:	50                   	push   ax
   2c679:	a1 30 b7             	mov    ax,ds:0xb730
   2c67c:	bb 02 00             	mov    bx,0x2
   2c67f:	99                   	cwd
   2c680:	f7 fb                	idiv   bx
   2c682:	8b 16 12 b9          	mov    dx,WORD PTR ds:0xb912
   2c686:	2b d0                	sub    dx,ax
   2c688:	52                   	push   dx
   2c689:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2c68c:	6b db 12             	imul   bx,bx,0x12
   2c68f:	b8 88 01             	mov    ax,0x188
   2c692:	8e c0                	mov    es,ax
   2c694:	26 ff b7 60 b7       	push   WORD PTR es:[bx-0x48a0]
   2c699:	a1 30 b7             	mov    ax,ds:0xb730
   2c69c:	bb 02 00             	mov    bx,0x2
   2c69f:	99                   	cwd
   2c6a0:	f7 fb                	idiv   bx
   2c6a2:	40                   	inc    ax
   2c6a3:	50                   	push   ax
   2c6a4:	ff 36 2e b7          	push   WORD PTR ds:0xb72e
   2c6a8:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c6ac:	6a 00                	push   0x0
   2c6ae:	9a 30 04 28 00       	call   0x28:0x430
   2c6b3:	83 c4 14             	add    sp,0x14
   2c6b6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c6b9:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c6bc:	05 08 00             	add    ax,0x8
   2c6bf:	99                   	cwd
   2c6c0:	50                   	push   ax
   2c6c1:	52                   	push   dx
   2c6c2:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c6c6:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c6c9:	59                   	pop    cx
   2c6ca:	5b                   	pop    bx
   2c6cb:	9a 77 14 00 00       	call   0x0:0x1477
   2c6d0:	8b d8                	mov    bx,ax
   2c6d2:	8e c2                	mov    es,dx
   2c6d4:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2c6d8:	74 6a                	je     0x2c744
   2c6da:	68 e0 01             	push   0x1e0
   2c6dd:	68 41 03             	push   0x341
   2c6e0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c6e3:	50                   	push   ax
   2c6e4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c6e7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c6ea:	05 08 00             	add    ax,0x8
   2c6ed:	99                   	cwd
   2c6ee:	50                   	push   ax
   2c6ef:	52                   	push   dx
   2c6f0:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c6f4:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c6f7:	59                   	pop    cx
   2c6f8:	5b                   	pop    bx
   2c6f9:	9a 77 14 00 00       	call   0x0:0x1477
   2c6fe:	8b d8                	mov    bx,ax
   2c700:	8e c2                	mov    es,dx
   2c702:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c705:	04 37                	add    al,0x37
   2c707:	50                   	push   ax
   2c708:	ff 36 48 b9          	push   WORD PTR ds:0xb948
   2c70c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2c70f:	6b db 12             	imul   bx,bx,0x12
   2c712:	b8 88 01             	mov    ax,0x188
   2c715:	8e c0                	mov    es,ax
   2c717:	26 ff b7 60 b7       	push   WORD PTR es:[bx-0x48a0]
   2c71c:	a1 30 b7             	mov    ax,ds:0xb730
   2c71f:	bb 02 00             	mov    bx,0x2
   2c722:	99                   	cwd
   2c723:	f7 fb                	idiv   bx
   2c725:	50                   	push   ax
   2c726:	ff 36 2e b7          	push   WORD PTR ds:0xb72e
   2c72a:	a1 30 b7             	mov    ax,ds:0xb730
   2c72d:	bb 02 00             	mov    bx,0x2
   2c730:	99                   	cwd
   2c731:	f7 fb                	idiv   bx
   2c733:	8b 16 50 b9          	mov    dx,WORD PTR ds:0xb950
   2c737:	2b d0                	sub    dx,ax
   2c739:	52                   	push   dx
   2c73a:	6a 00                	push   0x0
   2c73c:	9a 30 04 28 00       	call   0x28:0x430
   2c741:	83 c4 14             	add    sp,0x14
   2c744:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2c747:	83 eb fe             	sub    bx,0xfffe
   2c74a:	83 fb 04             	cmp    bx,0x4
   2c74d:	76 03                	jbe    0x2c752
   2c74f:	e9 80 00             	jmp    0x2c7d2
   2c752:	d1 e3                	shl    bx,1
   2c754:	2e ff a7 bf 43       	jmp    WORD PTR cs:[bx+0x43bf]
   2c759:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c75c:	50                   	push   ax
   2c75d:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c760:	b4 00                	mov    ah,0x0
   2c762:	05 03 00             	add    ax,0x3
   2c765:	bb 04 00             	mov    bx,0x4
   2c768:	99                   	cwd
   2c769:	f7 fb                	idiv   bx
   2c76b:	52                   	push   dx
   2c76c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c76f:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c772:	50                   	push   ax
   2c773:	6a 21                	push   0x21
   2c775:	eb 54                	jmp    0x2c7cb
   2c777:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c77a:	50                   	push   ax
   2c77b:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c77e:	b4 00                	mov    ah,0x0
   2c780:	05 03 00             	add    ax,0x3
   2c783:	bb 04 00             	mov    bx,0x4
   2c786:	99                   	cwd
   2c787:	f7 fb                	idiv   bx
   2c789:	52                   	push   dx
   2c78a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c78d:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c790:	50                   	push   ax
   2c791:	6a 22                	push   0x22
   2c793:	eb 36                	jmp    0x2c7cb
   2c795:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c798:	50                   	push   ax
   2c799:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c79c:	b4 00                	mov    ah,0x0
   2c79e:	40                   	inc    ax
   2c79f:	bb 04 00             	mov    bx,0x4
   2c7a2:	99                   	cwd
   2c7a3:	f7 fb                	idiv   bx
   2c7a5:	52                   	push   dx
   2c7a6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c7a9:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c7ac:	50                   	push   ax
   2c7ad:	6a 23                	push   0x23
   2c7af:	eb 1a                	jmp    0x2c7cb
   2c7b1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c7b4:	50                   	push   ax
   2c7b5:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c7b8:	b4 00                	mov    ah,0x0
   2c7ba:	40                   	inc    ax
   2c7bb:	bb 04 00             	mov    bx,0x4
   2c7be:	99                   	cwd
   2c7bf:	f7 fb                	idiv   bx
   2c7c1:	52                   	push   dx
   2c7c2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c7c5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c7c8:	50                   	push   ax
   2c7c9:	6a 24                	push   0x24
   2c7cb:	0e                   	push   cs
   2c7cc:	e8 ca f5             	call   0x2bd99
   2c7cf:	83 c4 08             	add    sp,0x8
   2c7d2:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2c7d6:	7e 09                	jle    0x2c7e1
   2c7d8:	b8 04 00             	mov    ax,0x4
   2c7db:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   2c7de:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2c7e1:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2c7e4:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   2c7e8:	7d 03                	jge    0x2c7ed
   2c7ea:	e9 cc fd             	jmp    0x2c5b9
   2c7ed:	c9                   	leave
   2c7ee:	cb                   	retf
   2c7ef:	29 43 47             	sub    WORD PTR [bp+di+0x47],ax
   2c7f2:	43                   	inc    bx
   2c7f3:	a2 43 65             	mov    ds:0x6543,al
   2c7f6:	43                   	inc    bx
   2c7f7:	81 43 55 8b ec       	add    WORD PTR [bp+di+0x55],0xec8b
   2c7fc:	83 ec 0c             	sub    sp,0xc
   2c7ff:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c802:	24 01                	and    al,0x1
   2c804:	8a 16 f3 b9          	mov    dl,BYTE PTR ds:0xb9f3
   2c808:	02 16 f1 b9          	add    dl,BYTE PTR ds:0xb9f1
   2c80c:	80 e2 01             	and    dl,0x1
   2c80f:	d0 e2                	shl    dl,1
   2c811:	0a c2                	or     al,dl
   2c813:	88 46 f5             	mov    BYTE PTR [bp-0xb],al
   2c816:	a0 eb b9             	mov    al,ds:0xb9eb
   2c819:	b4 00                	mov    ah,0x0
   2c81b:	8b 16 c4 b9          	mov    dx,WORD PTR ds:0xb9c4
   2c81f:	d1 e2                	shl    dx,1
   2c821:	50                   	push   ax
   2c822:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2c825:	03 c2                	add    ax,dx
   2c827:	5a                   	pop    dx
   2c828:	f7 ea                	imul   dx
   2c82a:	8b 16 c6 b9          	mov    dx,WORD PTR ds:0xb9c6
   2c82e:	d1 e2                	shl    dx,1
   2c830:	8b 1e f3 b9          	mov    bx,WORD PTR ds:0xb9f3
   2c834:	03 da                	add    bx,dx
   2c836:	03 d8                	add    bx,ax
   2c838:	6b db 0f             	imul   bx,bx,0xf
   2c83b:	89 5e fc             	mov    WORD PTR [bp-0x4],bx
   2c83e:	c7 46 fe fd ff       	mov    WORD PTR [bp-0x2],0xfffd
   2c843:	e9 76 04             	jmp    0x2ccbc
   2c846:	a0 eb b9             	mov    al,ds:0xb9eb
   2c849:	b4 00                	mov    ah,0x0
   2c84b:	50                   	push   ax
   2c84c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c84f:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c853:	5a                   	pop    dx
   2c854:	f7 ea                	imul   dx
   2c856:	50                   	push   ax
   2c857:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c85a:	f7 d8                	neg    ax
   2c85c:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c860:	5a                   	pop    dx
   2c861:	03 c2                	add    ax,dx
   2c863:	6b c0 0f             	imul   ax,ax,0xf
   2c866:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c869:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c86c:	d1 e0                	shl    ax,1
   2c86e:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c872:	03 d0                	add    dx,ax
   2c874:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c877:	52                   	push   dx
   2c878:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c87c:	5a                   	pop    dx
   2c87d:	2b d0                	sub    dx,ax
   2c87f:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c882:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c885:	d1 e0                	shl    ax,1
   2c887:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c88b:	03 d0                	add    dx,ax
   2c88d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c890:	52                   	push   dx
   2c891:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c895:	5a                   	pop    dx
   2c896:	03 d0                	add    dx,ax
   2c898:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c89b:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c89f:	7d 03                	jge    0x2c8a4
   2c8a1:	e9 15 04             	jmp    0x2ccb9
   2c8a4:	a0 eb b9             	mov    al,ds:0xb9eb
   2c8a7:	b4 00                	mov    ah,0x0
   2c8a9:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c8ac:	7f 03                	jg     0x2c8b1
   2c8ae:	e9 08 04             	jmp    0x2ccb9
   2c8b1:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c8b5:	7d 03                	jge    0x2c8ba
   2c8b7:	e9 ff 03             	jmp    0x2ccb9
   2c8ba:	a0 ea b9             	mov    al,ds:0xb9ea
   2c8bd:	b4 00                	mov    ah,0x0
   2c8bf:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c8c2:	7f 03                	jg     0x2c8c7
   2c8c4:	e9 f2 03             	jmp    0x2ccb9
   2c8c7:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c8ca:	3d fd ff             	cmp    ax,0xfffd
   2c8cd:	74 13                	je     0x2c8e2
   2c8cf:	3d fe ff             	cmp    ax,0xfffe
   2c8d2:	75 03                	jne    0x2c8d7
   2c8d4:	e9 3a 01             	jmp    0x2ca11
   2c8d7:	3d ff ff             	cmp    ax,0xffff
   2c8da:	75 03                	jne    0x2c8df
   2c8dc:	e9 84 02             	jmp    0x2cb63
   2c8df:	e9 d7 03             	jmp    0x2ccb9
   2c8e2:	68 28 00             	push   0x28
   2c8e5:	68 85 11             	push   0x1185
   2c8e8:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c8eb:	50                   	push   ax
   2c8ec:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c8ef:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c8f2:	05 09 00             	add    ax,0x9
   2c8f5:	99                   	cwd
   2c8f6:	50                   	push   ax
   2c8f7:	52                   	push   dx
   2c8f8:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c8fc:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c8ff:	59                   	pop    cx
   2c900:	5b                   	pop    bx
   2c901:	9a 77 14 00 00       	call   0x0:0x1477
   2c906:	8b d8                	mov    bx,ax
   2c908:	8e c2                	mov    es,dx
   2c90a:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c90d:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2c910:	b6 00                	mov    dh,0x0
   2c912:	6b d2 05             	imul   dx,dx,0x5
   2c915:	02 c2                	add    al,dl
   2c917:	04 23                	add    al,0x23
   2c919:	50                   	push   ax
   2c91a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c91d:	99                   	cwd
   2c91e:	33 c2                	xor    ax,dx
   2c920:	2b c2                	sub    ax,dx
   2c922:	04 ff                	add    al,0xff
   2c924:	d0 e0                	shl    al,1
   2c926:	fe c0                	inc    al
   2c928:	50                   	push   ax
   2c929:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2c92d:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2c931:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c934:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2c938:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2c93c:	03 d0                	add    dx,ax
   2c93e:	52                   	push   dx
   2c93f:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2c943:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2c947:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c94b:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2c94f:	9a 21 0f 28 00       	call   0x28:0xf21
   2c954:	83 c4 18             	add    sp,0x18
   2c957:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c95a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c95d:	05 08 00             	add    ax,0x8
   2c960:	99                   	cwd
   2c961:	50                   	push   ax
   2c962:	52                   	push   dx
   2c963:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c967:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c96a:	59                   	pop    cx
   2c96b:	5b                   	pop    bx
   2c96c:	9a 77 14 00 00       	call   0x0:0x1477
   2c971:	8b d8                	mov    bx,ax
   2c973:	8e c2                	mov    es,dx
   2c975:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2c979:	74 7a                	je     0x2c9f5
   2c97b:	68 28 00             	push   0x28
   2c97e:	68 07 13             	push   0x1307
   2c981:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c984:	50                   	push   ax
   2c985:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c988:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c98b:	05 08 00             	add    ax,0x8
   2c98e:	99                   	cwd
   2c98f:	50                   	push   ax
   2c990:	52                   	push   dx
   2c991:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c995:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c998:	59                   	pop    cx
   2c999:	5b                   	pop    bx
   2c99a:	9a 77 14 00 00       	call   0x0:0x1477
   2c99f:	8b d8                	mov    bx,ax
   2c9a1:	8e c2                	mov    es,dx
   2c9a3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c9a6:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2c9a9:	d0 e2                	shl    dl,1
   2c9ab:	02 c2                	add    al,dl
   2c9ad:	04 37                	add    al,0x37
   2c9af:	50                   	push   ax
   2c9b0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c9b3:	99                   	cwd
   2c9b4:	33 c2                	xor    ax,dx
   2c9b6:	2b c2                	sub    ax,dx
   2c9b8:	04 ff                	add    al,0xff
   2c9ba:	d0 e0                	shl    al,1
   2c9bc:	fe c0                	inc    al
   2c9be:	50                   	push   ax
   2c9bf:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2c9c3:	a1 48 b9             	mov    ax,ds:0xb948
   2c9c6:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2c9ca:	50                   	push   ax
   2c9cb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c9ce:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2c9d2:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2c9d6:	03 d0                	add    dx,ax
   2c9d8:	52                   	push   dx
   2c9d9:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2c9dd:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2c9e1:	a1 50 b9             	mov    ax,ds:0xb950
   2c9e4:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2c9e8:	50                   	push   ax
   2c9e9:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2c9ed:	9a 21 0f 28 00       	call   0x28:0xf21
   2c9f2:	83 c4 18             	add    sp,0x18
   2c9f5:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c9f8:	50                   	push   ax
   2c9f9:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c9fc:	b4 00                	mov    ah,0x0
   2c9fe:	bb 04 00             	mov    bx,0x4
   2ca01:	99                   	cwd
   2ca02:	f7 fb                	idiv   bx
   2ca04:	52                   	push   dx
   2ca05:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ca08:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ca0b:	50                   	push   ax
   2ca0c:	6a 00                	push   0x0
   2ca0e:	e9 a1 02             	jmp    0x2ccb2
   2ca11:	68 28 00             	push   0x28
   2ca14:	68 85 11             	push   0x1185
   2ca17:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ca1a:	50                   	push   ax
   2ca1b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ca1e:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ca21:	05 09 00             	add    ax,0x9
   2ca24:	99                   	cwd
   2ca25:	50                   	push   ax
   2ca26:	52                   	push   dx
   2ca27:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ca2b:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ca2e:	59                   	pop    cx
   2ca2f:	5b                   	pop    bx
   2ca30:	9a 77 14 00 00       	call   0x0:0x1477
   2ca35:	8b d8                	mov    bx,ax
   2ca37:	8e c2                	mov    es,dx
   2ca39:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2ca3c:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2ca3f:	b6 00                	mov    dh,0x0
   2ca41:	6b d2 05             	imul   dx,dx,0x5
   2ca44:	02 c2                	add    al,dl
   2ca46:	04 23                	add    al,0x23
   2ca48:	50                   	push   ax
   2ca49:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ca4c:	99                   	cwd
   2ca4d:	33 c2                	xor    ax,dx
   2ca4f:	2b c2                	sub    ax,dx
   2ca51:	04 ff                	add    al,0xff
   2ca53:	d0 e0                	shl    al,1
   2ca55:	fe c0                	inc    al
   2ca57:	50                   	push   ax
   2ca58:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2ca5c:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2ca60:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ca63:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2ca67:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2ca6b:	03 d0                	add    dx,ax
   2ca6d:	52                   	push   dx
   2ca6e:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2ca72:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2ca76:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2ca7a:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2ca7e:	9a 21 0f 28 00       	call   0x28:0xf21
   2ca83:	83 c4 18             	add    sp,0x18
   2ca86:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ca89:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ca8c:	05 08 00             	add    ax,0x8
   2ca8f:	99                   	cwd
   2ca90:	50                   	push   ax
   2ca91:	52                   	push   dx
   2ca92:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ca96:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ca99:	59                   	pop    cx
   2ca9a:	5b                   	pop    bx
   2ca9b:	9a 77 14 00 00       	call   0x0:0x1477
   2caa0:	8b d8                	mov    bx,ax
   2caa2:	8e c2                	mov    es,dx
   2caa4:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2caa8:	74 7a                	je     0x2cb24
   2caaa:	68 28 00             	push   0x28
   2caad:	68 07 13             	push   0x1307
   2cab0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cab3:	50                   	push   ax
   2cab4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cab7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2caba:	05 08 00             	add    ax,0x8
   2cabd:	99                   	cwd
   2cabe:	50                   	push   ax
   2cabf:	52                   	push   dx
   2cac0:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cac4:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cac7:	59                   	pop    cx
   2cac8:	5b                   	pop    bx
   2cac9:	9a 77 14 00 00       	call   0x0:0x1477
   2cace:	8b d8                	mov    bx,ax
   2cad0:	8e c2                	mov    es,dx
   2cad2:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cad5:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cad8:	d0 e2                	shl    dl,1
   2cada:	02 c2                	add    al,dl
   2cadc:	04 37                	add    al,0x37
   2cade:	50                   	push   ax
   2cadf:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cae2:	99                   	cwd
   2cae3:	33 c2                	xor    ax,dx
   2cae5:	2b c2                	sub    ax,dx
   2cae7:	04 ff                	add    al,0xff
   2cae9:	d0 e0                	shl    al,1
   2caeb:	fe c0                	inc    al
   2caed:	50                   	push   ax
   2caee:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2caf2:	a1 48 b9             	mov    ax,ds:0xb948
   2caf5:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2caf9:	50                   	push   ax
   2cafa:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cafd:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2cb01:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2cb05:	03 d0                	add    dx,ax
   2cb07:	52                   	push   dx
   2cb08:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2cb0c:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2cb10:	a1 50 b9             	mov    ax,ds:0xb950
   2cb13:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cb17:	50                   	push   ax
   2cb18:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2cb1c:	9a 21 0f 28 00       	call   0x28:0xf21
   2cb21:	83 c4 18             	add    sp,0x18
   2cb24:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cb27:	50                   	push   ax
   2cb28:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cb2b:	b4 00                	mov    ah,0x0
   2cb2d:	05 03 00             	add    ax,0x3
   2cb30:	bb 04 00             	mov    bx,0x4
   2cb33:	99                   	cwd
   2cb34:	f7 fb                	idiv   bx
   2cb36:	52                   	push   dx
   2cb37:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cb3a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cb3d:	50                   	push   ax
   2cb3e:	6a 07                	push   0x7
   2cb40:	0e                   	push   cs
   2cb41:	e8 55 f2             	call   0x2bd99
   2cb44:	83 c4 08             	add    sp,0x8
   2cb47:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cb4a:	50                   	push   ax
   2cb4b:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cb4e:	b4 00                	mov    ah,0x0
   2cb50:	bb 04 00             	mov    bx,0x4
   2cb53:	99                   	cwd
   2cb54:	f7 fb                	idiv   bx
   2cb56:	52                   	push   dx
   2cb57:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cb5a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cb5d:	50                   	push   ax
   2cb5e:	6a 01                	push   0x1
   2cb60:	e9 4f 01             	jmp    0x2ccb2
   2cb63:	68 28 00             	push   0x28
   2cb66:	68 85 11             	push   0x1185
   2cb69:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cb6c:	50                   	push   ax
   2cb6d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cb70:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cb73:	05 09 00             	add    ax,0x9
   2cb76:	99                   	cwd
   2cb77:	50                   	push   ax
   2cb78:	52                   	push   dx
   2cb79:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cb7d:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cb80:	59                   	pop    cx
   2cb81:	5b                   	pop    bx
   2cb82:	9a 77 14 00 00       	call   0x0:0x1477
   2cb87:	8b d8                	mov    bx,ax
   2cb89:	8e c2                	mov    es,dx
   2cb8b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cb8e:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cb91:	b6 00                	mov    dh,0x0
   2cb93:	6b d2 05             	imul   dx,dx,0x5
   2cb96:	02 c2                	add    al,dl
   2cb98:	04 23                	add    al,0x23
   2cb9a:	50                   	push   ax
   2cb9b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cb9e:	99                   	cwd
   2cb9f:	33 c2                	xor    ax,dx
   2cba1:	2b c2                	sub    ax,dx
   2cba3:	04 ff                	add    al,0xff
   2cba5:	d0 e0                	shl    al,1
   2cba7:	fe c0                	inc    al
   2cba9:	50                   	push   ax
   2cbaa:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2cbae:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2cbb2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cbb5:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2cbb9:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2cbbd:	03 d0                	add    dx,ax
   2cbbf:	52                   	push   dx
   2cbc0:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2cbc4:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2cbc8:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2cbcc:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2cbd0:	9a 21 0f 28 00       	call   0x28:0xf21
   2cbd5:	83 c4 18             	add    sp,0x18
   2cbd8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cbdb:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cbde:	05 08 00             	add    ax,0x8
   2cbe1:	99                   	cwd
   2cbe2:	50                   	push   ax
   2cbe3:	52                   	push   dx
   2cbe4:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cbe8:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cbeb:	59                   	pop    cx
   2cbec:	5b                   	pop    bx
   2cbed:	9a 77 14 00 00       	call   0x0:0x1477
   2cbf2:	8b d8                	mov    bx,ax
   2cbf4:	8e c2                	mov    es,dx
   2cbf6:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2cbfa:	74 7a                	je     0x2cc76
   2cbfc:	68 28 00             	push   0x28
   2cbff:	68 07 13             	push   0x1307
   2cc02:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cc05:	50                   	push   ax
   2cc06:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cc09:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cc0c:	05 08 00             	add    ax,0x8
   2cc0f:	99                   	cwd
   2cc10:	50                   	push   ax
   2cc11:	52                   	push   dx
   2cc12:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cc16:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cc19:	59                   	pop    cx
   2cc1a:	5b                   	pop    bx
   2cc1b:	9a 77 14 00 00       	call   0x0:0x1477
   2cc20:	8b d8                	mov    bx,ax
   2cc22:	8e c2                	mov    es,dx
   2cc24:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cc27:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cc2a:	d0 e2                	shl    dl,1
   2cc2c:	02 c2                	add    al,dl
   2cc2e:	04 37                	add    al,0x37
   2cc30:	50                   	push   ax
   2cc31:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cc34:	99                   	cwd
   2cc35:	33 c2                	xor    ax,dx
   2cc37:	2b c2                	sub    ax,dx
   2cc39:	04 ff                	add    al,0xff
   2cc3b:	d0 e0                	shl    al,1
   2cc3d:	fe c0                	inc    al
   2cc3f:	50                   	push   ax
   2cc40:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2cc44:	a1 48 b9             	mov    ax,ds:0xb948
   2cc47:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cc4b:	50                   	push   ax
   2cc4c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cc4f:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2cc53:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2cc57:	03 d0                	add    dx,ax
   2cc59:	52                   	push   dx
   2cc5a:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2cc5e:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2cc62:	a1 50 b9             	mov    ax,ds:0xb950
   2cc65:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cc69:	50                   	push   ax
   2cc6a:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2cc6e:	9a 21 0f 28 00       	call   0x28:0xf21
   2cc73:	83 c4 18             	add    sp,0x18
   2cc76:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cc79:	50                   	push   ax
   2cc7a:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cc7d:	b4 00                	mov    ah,0x0
   2cc7f:	05 03 00             	add    ax,0x3
   2cc82:	bb 04 00             	mov    bx,0x4
   2cc85:	99                   	cwd
   2cc86:	f7 fb                	idiv   bx
   2cc88:	52                   	push   dx
   2cc89:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cc8c:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cc8f:	50                   	push   ax
   2cc90:	6a 08                	push   0x8
   2cc92:	0e                   	push   cs
   2cc93:	e8 03 f1             	call   0x2bd99
   2cc96:	83 c4 08             	add    sp,0x8
   2cc99:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cc9c:	50                   	push   ax
   2cc9d:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cca0:	b4 00                	mov    ah,0x0
   2cca2:	bb 04 00             	mov    bx,0x4
   2cca5:	99                   	cwd
   2cca6:	f7 fb                	idiv   bx
   2cca8:	52                   	push   dx
   2cca9:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ccac:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ccaf:	50                   	push   ax
   2ccb0:	6a 02                	push   0x2
   2ccb2:	0e                   	push   cs
   2ccb3:	e8 e3 f0             	call   0x2bd99
   2ccb6:	83 c4 08             	add    sp,0x8
   2ccb9:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2ccbc:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2ccc0:	7d 03                	jge    0x2ccc5
   2ccc2:	e9 81 fb             	jmp    0x2c846
   2ccc5:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   2ccca:	e9 8a 04             	jmp    0x2d157
   2cccd:	a0 eb b9             	mov    al,ds:0xb9eb
   2ccd0:	b4 00                	mov    ah,0x0
   2ccd2:	50                   	push   ax
   2ccd3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ccd6:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2ccda:	5a                   	pop    dx
   2ccdb:	f7 ea                	imul   dx
   2ccdd:	50                   	push   ax
   2ccde:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cce1:	f7 d8                	neg    ax
   2cce3:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2cce7:	5a                   	pop    dx
   2cce8:	03 c2                	add    ax,dx
   2ccea:	6b c0 0f             	imul   ax,ax,0xf
   2cced:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2ccf0:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2ccf3:	d1 e0                	shl    ax,1
   2ccf5:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2ccf9:	03 d0                	add    dx,ax
   2ccfb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ccfe:	52                   	push   dx
   2ccff:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2cd03:	5a                   	pop    dx
   2cd04:	2b d0                	sub    dx,ax
   2cd06:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2cd09:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2cd0c:	d1 e0                	shl    ax,1
   2cd0e:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2cd12:	03 d0                	add    dx,ax
   2cd14:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cd17:	52                   	push   dx
   2cd18:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2cd1c:	5a                   	pop    dx
   2cd1d:	03 d0                	add    dx,ax
   2cd1f:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2cd22:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2cd26:	7d 03                	jge    0x2cd2b
   2cd28:	e9 29 04             	jmp    0x2d154
   2cd2b:	a0 eb b9             	mov    al,ds:0xb9eb
   2cd2e:	b4 00                	mov    ah,0x0
   2cd30:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2cd33:	7f 03                	jg     0x2cd38
   2cd35:	e9 1c 04             	jmp    0x2d154
   2cd38:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2cd3c:	7d 03                	jge    0x2cd41
   2cd3e:	e9 13 04             	jmp    0x2d154
   2cd41:	a0 ea b9             	mov    al,ds:0xb9ea
   2cd44:	b4 00                	mov    ah,0x0
   2cd46:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2cd49:	7f 03                	jg     0x2cd4e
   2cd4b:	e9 06 04             	jmp    0x2d154
   2cd4e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cd51:	3d 01 00             	cmp    ax,0x1
   2cd54:	75 03                	jne    0x2cd59
   2cd56:	e9 9f 02             	jmp    0x2cff8
   2cd59:	3d 02 00             	cmp    ax,0x2
   2cd5c:	75 03                	jne    0x2cd61
   2cd5e:	e9 3f 01             	jmp    0x2cea0
   2cd61:	3d 03 00             	cmp    ax,0x3
   2cd64:	74 03                	je     0x2cd69
   2cd66:	e9 eb 03             	jmp    0x2d154
   2cd69:	68 28 00             	push   0x28
   2cd6c:	68 f1 10             	push   0x10f1
   2cd6f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cd72:	50                   	push   ax
   2cd73:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cd76:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cd79:	05 09 00             	add    ax,0x9
   2cd7c:	99                   	cwd
   2cd7d:	50                   	push   ax
   2cd7e:	52                   	push   dx
   2cd7f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cd83:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cd86:	59                   	pop    cx
   2cd87:	5b                   	pop    bx
   2cd88:	9a 77 14 00 00       	call   0x0:0x1477
   2cd8d:	8b d8                	mov    bx,ax
   2cd8f:	8e c2                	mov    es,dx
   2cd91:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cd94:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cd97:	b6 00                	mov    dh,0x0
   2cd99:	6b d2 05             	imul   dx,dx,0x5
   2cd9c:	02 c2                	add    al,dl
   2cd9e:	04 23                	add    al,0x23
   2cda0:	50                   	push   ax
   2cda1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cda4:	99                   	cwd
   2cda5:	33 c2                	xor    ax,dx
   2cda7:	2b c2                	sub    ax,dx
   2cda9:	04 ff                	add    al,0xff
   2cdab:	d0 e0                	shl    al,1
   2cdad:	fe c0                	inc    al
   2cdaf:	50                   	push   ax
   2cdb0:	a1 09 3b             	mov    ax,ds:0x3b09
   2cdb3:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2cdb7:	50                   	push   ax
   2cdb8:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2cdbc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cdbf:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2cdc3:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2cdc7:	03 d0                	add    dx,ax
   2cdc9:	52                   	push   dx
   2cdca:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2cdce:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2cdd2:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2cdd6:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2cdda:	9a 21 0f 28 00       	call   0x28:0xf21
   2cddf:	83 c4 18             	add    sp,0x18
   2cde2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cde5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cde8:	05 08 00             	add    ax,0x8
   2cdeb:	99                   	cwd
   2cdec:	50                   	push   ax
   2cded:	52                   	push   dx
   2cdee:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cdf2:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cdf5:	59                   	pop    cx
   2cdf6:	5b                   	pop    bx
   2cdf7:	9a 77 14 00 00       	call   0x0:0x1477
   2cdfc:	8b d8                	mov    bx,ax
   2cdfe:	8e c2                	mov    es,dx
   2ce00:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2ce04:	74 7e                	je     0x2ce84
   2ce06:	68 28 00             	push   0x28
   2ce09:	68 61 12             	push   0x1261
   2ce0c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ce0f:	50                   	push   ax
   2ce10:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ce13:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ce16:	05 08 00             	add    ax,0x8
   2ce19:	99                   	cwd
   2ce1a:	50                   	push   ax
   2ce1b:	52                   	push   dx
   2ce1c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ce20:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ce23:	59                   	pop    cx
   2ce24:	5b                   	pop    bx
   2ce25:	9a 77 14 00 00       	call   0x0:0x1477
   2ce2a:	8b d8                	mov    bx,ax
   2ce2c:	8e c2                	mov    es,dx
   2ce2e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2ce31:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2ce34:	d0 e2                	shl    dl,1
   2ce36:	02 c2                	add    al,dl
   2ce38:	04 37                	add    al,0x37
   2ce3a:	50                   	push   ax
   2ce3b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ce3e:	99                   	cwd
   2ce3f:	33 c2                	xor    ax,dx
   2ce41:	2b c2                	sub    ax,dx
   2ce43:	04 ff                	add    al,0xff
   2ce45:	d0 e0                	shl    al,1
   2ce47:	fe c0                	inc    al
   2ce49:	50                   	push   ax
   2ce4a:	a1 09 3b             	mov    ax,ds:0x3b09
   2ce4d:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2ce51:	50                   	push   ax
   2ce52:	a1 48 b9             	mov    ax,ds:0xb948
   2ce55:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2ce59:	50                   	push   ax
   2ce5a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ce5d:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2ce61:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2ce65:	03 d0                	add    dx,ax
   2ce67:	52                   	push   dx
   2ce68:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2ce6c:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2ce70:	a1 50 b9             	mov    ax,ds:0xb950
   2ce73:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2ce77:	50                   	push   ax
   2ce78:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2ce7c:	9a 21 0f 28 00       	call   0x28:0xf21
   2ce81:	83 c4 18             	add    sp,0x18
   2ce84:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ce87:	50                   	push   ax
   2ce88:	a0 f0 b9             	mov    al,ds:0xb9f0
   2ce8b:	b4 00                	mov    ah,0x0
   2ce8d:	bb 04 00             	mov    bx,0x4
   2ce90:	99                   	cwd
   2ce91:	f7 fb                	idiv   bx
   2ce93:	52                   	push   dx
   2ce94:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ce97:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ce9a:	50                   	push   ax
   2ce9b:	6a 06                	push   0x6
   2ce9d:	e9 ad 02             	jmp    0x2d14d
   2cea0:	68 28 00             	push   0x28
   2cea3:	68 f1 10             	push   0x10f1
   2cea6:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cea9:	50                   	push   ax
   2ceaa:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cead:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ceb0:	05 09 00             	add    ax,0x9
   2ceb3:	99                   	cwd
   2ceb4:	50                   	push   ax
   2ceb5:	52                   	push   dx
   2ceb6:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ceba:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cebd:	59                   	pop    cx
   2cebe:	5b                   	pop    bx
   2cebf:	9a 77 14 00 00       	call   0x0:0x1477
   2cec4:	8b d8                	mov    bx,ax
   2cec6:	8e c2                	mov    es,dx
   2cec8:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cecb:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cece:	b6 00                	mov    dh,0x0
   2ced0:	6b d2 05             	imul   dx,dx,0x5
   2ced3:	02 c2                	add    al,dl
   2ced5:	04 23                	add    al,0x23
   2ced7:	50                   	push   ax
   2ced8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cedb:	99                   	cwd
   2cedc:	33 c2                	xor    ax,dx
   2cede:	2b c2                	sub    ax,dx
   2cee0:	04 ff                	add    al,0xff
   2cee2:	d0 e0                	shl    al,1
   2cee4:	fe c0                	inc    al
   2cee6:	50                   	push   ax
   2cee7:	a1 09 3b             	mov    ax,ds:0x3b09
   2ceea:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2ceee:	50                   	push   ax
   2ceef:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2cef3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cef6:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2cefa:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2cefe:	03 d0                	add    dx,ax
   2cf00:	52                   	push   dx
   2cf01:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2cf05:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2cf09:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2cf0d:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2cf11:	9a 21 0f 28 00       	call   0x28:0xf21
   2cf16:	83 c4 18             	add    sp,0x18
   2cf19:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cf1c:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cf1f:	05 08 00             	add    ax,0x8
   2cf22:	99                   	cwd
   2cf23:	50                   	push   ax
   2cf24:	52                   	push   dx
   2cf25:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cf29:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cf2c:	59                   	pop    cx
   2cf2d:	5b                   	pop    bx
   2cf2e:	9a 77 14 00 00       	call   0x0:0x1477
   2cf33:	8b d8                	mov    bx,ax
   2cf35:	8e c2                	mov    es,dx
   2cf37:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2cf3b:	74 7e                	je     0x2cfbb
   2cf3d:	68 28 00             	push   0x28
   2cf40:	68 61 12             	push   0x1261
   2cf43:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cf46:	50                   	push   ax
   2cf47:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cf4a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cf4d:	05 08 00             	add    ax,0x8
   2cf50:	99                   	cwd
   2cf51:	50                   	push   ax
   2cf52:	52                   	push   dx
   2cf53:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cf57:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cf5a:	59                   	pop    cx
   2cf5b:	5b                   	pop    bx
   2cf5c:	9a 77 14 00 00       	call   0x0:0x1477
   2cf61:	8b d8                	mov    bx,ax
   2cf63:	8e c2                	mov    es,dx
   2cf65:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cf68:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cf6b:	d0 e2                	shl    dl,1
   2cf6d:	02 c2                	add    al,dl
   2cf6f:	04 37                	add    al,0x37
   2cf71:	50                   	push   ax
   2cf72:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cf75:	99                   	cwd
   2cf76:	33 c2                	xor    ax,dx
   2cf78:	2b c2                	sub    ax,dx
   2cf7a:	04 ff                	add    al,0xff
   2cf7c:	d0 e0                	shl    al,1
   2cf7e:	fe c0                	inc    al
   2cf80:	50                   	push   ax
   2cf81:	a1 09 3b             	mov    ax,ds:0x3b09
   2cf84:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2cf88:	50                   	push   ax
   2cf89:	a1 48 b9             	mov    ax,ds:0xb948
   2cf8c:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cf90:	50                   	push   ax
   2cf91:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cf94:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2cf98:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2cf9c:	03 d0                	add    dx,ax
   2cf9e:	52                   	push   dx
   2cf9f:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2cfa3:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2cfa7:	a1 50 b9             	mov    ax,ds:0xb950
   2cfaa:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cfae:	50                   	push   ax
   2cfaf:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2cfb3:	9a 21 0f 28 00       	call   0x28:0xf21
   2cfb8:	83 c4 18             	add    sp,0x18
   2cfbb:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cfbe:	50                   	push   ax
   2cfbf:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cfc2:	b4 00                	mov    ah,0x0
   2cfc4:	40                   	inc    ax
   2cfc5:	bb 04 00             	mov    bx,0x4
   2cfc8:	99                   	cwd
   2cfc9:	f7 fb                	idiv   bx
   2cfcb:	52                   	push   dx
   2cfcc:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cfcf:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cfd2:	50                   	push   ax
   2cfd3:	6a 0c                	push   0xc
   2cfd5:	0e                   	push   cs
   2cfd6:	e8 c0 ed             	call   0x2bd99
   2cfd9:	83 c4 08             	add    sp,0x8
   2cfdc:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cfdf:	50                   	push   ax
   2cfe0:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cfe3:	b4 00                	mov    ah,0x0
   2cfe5:	bb 04 00             	mov    bx,0x4
   2cfe8:	99                   	cwd
   2cfe9:	f7 fb                	idiv   bx
   2cfeb:	52                   	push   dx
   2cfec:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cfef:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cff2:	50                   	push   ax
   2cff3:	6a 05                	push   0x5
   2cff5:	e9 55 01             	jmp    0x2d14d
   2cff8:	68 28 00             	push   0x28
   2cffb:	68 f1 10             	push   0x10f1
   2cffe:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d001:	50                   	push   ax
   2d002:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d005:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d008:	05 09 00             	add    ax,0x9
   2d00b:	99                   	cwd
   2d00c:	50                   	push   ax
   2d00d:	52                   	push   dx
   2d00e:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d012:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d015:	59                   	pop    cx
   2d016:	5b                   	pop    bx
   2d017:	9a 77 14 00 00       	call   0x0:0x1477
   2d01c:	8b d8                	mov    bx,ax
   2d01e:	8e c2                	mov    es,dx
   2d020:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d023:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d026:	b6 00                	mov    dh,0x0
   2d028:	6b d2 05             	imul   dx,dx,0x5
   2d02b:	02 c2                	add    al,dl
   2d02d:	04 23                	add    al,0x23
   2d02f:	50                   	push   ax
   2d030:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d033:	99                   	cwd
   2d034:	33 c2                	xor    ax,dx
   2d036:	2b c2                	sub    ax,dx
   2d038:	04 ff                	add    al,0xff
   2d03a:	d0 e0                	shl    al,1
   2d03c:	fe c0                	inc    al
   2d03e:	50                   	push   ax
   2d03f:	a1 09 3b             	mov    ax,ds:0x3b09
   2d042:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d046:	50                   	push   ax
   2d047:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2d04b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d04e:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2d052:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2d056:	03 d0                	add    dx,ax
   2d058:	52                   	push   dx
   2d059:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2d05d:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2d061:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2d065:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2d069:	9a 21 0f 28 00       	call   0x28:0xf21
   2d06e:	83 c4 18             	add    sp,0x18
   2d071:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d074:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d077:	05 08 00             	add    ax,0x8
   2d07a:	99                   	cwd
   2d07b:	50                   	push   ax
   2d07c:	52                   	push   dx
   2d07d:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d081:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d084:	59                   	pop    cx
   2d085:	5b                   	pop    bx
   2d086:	9a 77 14 00 00       	call   0x0:0x1477
   2d08b:	8b d8                	mov    bx,ax
   2d08d:	8e c2                	mov    es,dx
   2d08f:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d093:	74 7e                	je     0x2d113
   2d095:	68 28 00             	push   0x28
   2d098:	68 61 12             	push   0x1261
   2d09b:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d09e:	50                   	push   ax
   2d09f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d0a2:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d0a5:	05 08 00             	add    ax,0x8
   2d0a8:	99                   	cwd
   2d0a9:	50                   	push   ax
   2d0aa:	52                   	push   dx
   2d0ab:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d0af:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d0b2:	59                   	pop    cx
   2d0b3:	5b                   	pop    bx
   2d0b4:	9a 77 14 00 00       	call   0x0:0x1477
   2d0b9:	8b d8                	mov    bx,ax
   2d0bb:	8e c2                	mov    es,dx
   2d0bd:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d0c0:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d0c3:	d0 e2                	shl    dl,1
   2d0c5:	02 c2                	add    al,dl
   2d0c7:	04 37                	add    al,0x37
   2d0c9:	50                   	push   ax
   2d0ca:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d0cd:	99                   	cwd
   2d0ce:	33 c2                	xor    ax,dx
   2d0d0:	2b c2                	sub    ax,dx
   2d0d2:	04 ff                	add    al,0xff
   2d0d4:	d0 e0                	shl    al,1
   2d0d6:	fe c0                	inc    al
   2d0d8:	50                   	push   ax
   2d0d9:	a1 09 3b             	mov    ax,ds:0x3b09
   2d0dc:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d0e0:	50                   	push   ax
   2d0e1:	a1 48 b9             	mov    ax,ds:0xb948
   2d0e4:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d0e8:	50                   	push   ax
   2d0e9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d0ec:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2d0f0:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2d0f4:	03 d0                	add    dx,ax
   2d0f6:	52                   	push   dx
   2d0f7:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2d0fb:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2d0ff:	a1 50 b9             	mov    ax,ds:0xb950
   2d102:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d106:	50                   	push   ax
   2d107:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2d10b:	9a 21 0f 28 00       	call   0x28:0xf21
   2d110:	83 c4 18             	add    sp,0x18
   2d113:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d116:	50                   	push   ax
   2d117:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d11a:	b4 00                	mov    ah,0x0
   2d11c:	40                   	inc    ax
   2d11d:	bb 04 00             	mov    bx,0x4
   2d120:	99                   	cwd
   2d121:	f7 fb                	idiv   bx
   2d123:	52                   	push   dx
   2d124:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d127:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d12a:	50                   	push   ax
   2d12b:	6a 0b                	push   0xb
   2d12d:	0e                   	push   cs
   2d12e:	e8 68 ec             	call   0x2bd99
   2d131:	83 c4 08             	add    sp,0x8
   2d134:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d137:	50                   	push   ax
   2d138:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d13b:	b4 00                	mov    ah,0x0
   2d13d:	bb 04 00             	mov    bx,0x4
   2d140:	99                   	cwd
   2d141:	f7 fb                	idiv   bx
   2d143:	52                   	push   dx
   2d144:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d147:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d14a:	50                   	push   ax
   2d14b:	6a 04                	push   0x4
   2d14d:	0e                   	push   cs
   2d14e:	e8 48 ec             	call   0x2bd99
   2d151:	83 c4 08             	add    sp,0x8
   2d154:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   2d157:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2d15b:	7e 03                	jle    0x2d160
   2d15d:	e9 6d fb             	jmp    0x2cccd
   2d160:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2d165:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2d16a:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2d16d:	d1 e0                	shl    ax,1
   2d16f:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2d173:	03 d0                	add    dx,ax
   2d175:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2d178:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2d17b:	d1 e0                	shl    ax,1
   2d17d:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2d181:	03 d0                	add    dx,ax
   2d183:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2d186:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2d18a:	7d 03                	jge    0x2d18f
   2d18c:	e9 f4 01             	jmp    0x2d383
   2d18f:	a0 eb b9             	mov    al,ds:0xb9eb
   2d192:	b4 00                	mov    ah,0x0
   2d194:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2d197:	7f 03                	jg     0x2d19c
   2d199:	e9 e7 01             	jmp    0x2d383
   2d19c:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2d1a0:	7d 03                	jge    0x2d1a5
   2d1a2:	e9 de 01             	jmp    0x2d383
   2d1a5:	a0 ea b9             	mov    al,ds:0xb9ea
   2d1a8:	b4 00                	mov    ah,0x0
   2d1aa:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2d1ad:	7f 03                	jg     0x2d1b2
   2d1af:	e9 d1 01             	jmp    0x2d383
   2d1b2:	68 e0 01             	push   0x1e0
   2d1b5:	68 41 03             	push   0x341
   2d1b8:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d1bb:	50                   	push   ax
   2d1bc:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d1bf:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d1c2:	05 09 00             	add    ax,0x9
   2d1c5:	99                   	cwd
   2d1c6:	50                   	push   ax
   2d1c7:	52                   	push   dx
   2d1c8:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d1cc:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d1cf:	59                   	pop    cx
   2d1d0:	5b                   	pop    bx
   2d1d1:	9a 77 14 00 00       	call   0x0:0x1477
   2d1d6:	8b d8                	mov    bx,ax
   2d1d8:	8e c2                	mov    es,dx
   2d1da:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d1dd:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d1e0:	b6 00                	mov    dh,0x0
   2d1e2:	6b d2 05             	imul   dx,dx,0x5
   2d1e5:	02 c2                	add    al,dl
   2d1e7:	04 23                	add    al,0x23
   2d1e9:	50                   	push   ax
   2d1ea:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2d1ee:	a1 10 b9             	mov    ax,ds:0xb910
   2d1f1:	2b 06 1c b9          	sub    ax,WORD PTR ds:0xb91c
   2d1f5:	50                   	push   ax
   2d1f6:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2d1fa:	a1 1c b9             	mov    ax,ds:0xb91c
   2d1fd:	6b c0 03             	imul   ax,ax,0x3
   2d200:	50                   	push   ax
   2d201:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2d205:	a1 18 b9             	mov    ax,ds:0xb918
   2d208:	2b 06 1c b9          	sub    ax,WORD PTR ds:0xb91c
   2d20c:	50                   	push   ax
   2d20d:	9a 30 04 28 00       	call   0x28:0x430
   2d212:	83 c4 14             	add    sp,0x14
   2d215:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d218:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d21b:	05 08 00             	add    ax,0x8
   2d21e:	99                   	cwd
   2d21f:	50                   	push   ax
   2d220:	52                   	push   dx
   2d221:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d225:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d228:	59                   	pop    cx
   2d229:	5b                   	pop    bx
   2d22a:	9a 77 14 00 00       	call   0x0:0x1477
   2d22f:	8b d8                	mov    bx,ax
   2d231:	8e c2                	mov    es,dx
   2d233:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d237:	74 68                	je     0x2d2a1
   2d239:	68 e0 01             	push   0x1e0
   2d23c:	68 41 03             	push   0x341
   2d23f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d242:	50                   	push   ax
   2d243:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d246:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d249:	05 08 00             	add    ax,0x8
   2d24c:	99                   	cwd
   2d24d:	50                   	push   ax
   2d24e:	52                   	push   dx
   2d24f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d253:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d256:	59                   	pop    cx
   2d257:	5b                   	pop    bx
   2d258:	9a 77 14 00 00       	call   0x0:0x1477
   2d25d:	8b d8                	mov    bx,ax
   2d25f:	8e c2                	mov    es,dx
   2d261:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d264:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d267:	d0 e2                	shl    dl,1
   2d269:	02 c2                	add    al,dl
   2d26b:	04 37                	add    al,0x37
   2d26d:	50                   	push   ax
   2d26e:	a1 48 b9             	mov    ax,ds:0xb948
   2d271:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d275:	50                   	push   ax
   2d276:	a1 46 b9             	mov    ax,ds:0xb946
   2d279:	2b 06 52 b9          	sub    ax,WORD PTR ds:0xb952
   2d27d:	50                   	push   ax
   2d27e:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2d282:	a1 52 b9             	mov    ax,ds:0xb952
   2d285:	6b c0 03             	imul   ax,ax,0x3
   2d288:	50                   	push   ax
   2d289:	a1 50 b9             	mov    ax,ds:0xb950
   2d28c:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d290:	50                   	push   ax
   2d291:	a1 4e b9             	mov    ax,ds:0xb94e
   2d294:	2b 06 52 b9          	sub    ax,WORD PTR ds:0xb952
   2d298:	50                   	push   ax
   2d299:	9a 30 04 28 00       	call   0x28:0x430
   2d29e:	83 c4 14             	add    sp,0x14
   2d2a1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d2a4:	50                   	push   ax
   2d2a5:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d2a8:	b4 00                	mov    ah,0x0
   2d2aa:	bb 04 00             	mov    bx,0x4
   2d2ad:	99                   	cwd
   2d2ae:	f7 fb                	idiv   bx
   2d2b0:	52                   	push   dx
   2d2b1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d2b4:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d2b7:	50                   	push   ax
   2d2b8:	6a 03                	push   0x3
   2d2ba:	0e                   	push   cs
   2d2bb:	e8 db ea             	call   0x2bd99
   2d2be:	83 c4 08             	add    sp,0x8
   2d2c1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d2c4:	50                   	push   ax
   2d2c5:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d2c8:	b4 00                	mov    ah,0x0
   2d2ca:	05 03 00             	add    ax,0x3
   2d2cd:	bb 04 00             	mov    bx,0x4
   2d2d0:	99                   	cwd
   2d2d1:	f7 fb                	idiv   bx
   2d2d3:	52                   	push   dx
   2d2d4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d2d7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d2da:	50                   	push   ax
   2d2db:	6a 09                	push   0x9
   2d2dd:	0e                   	push   cs
   2d2de:	e8 b8 ea             	call   0x2bd99
   2d2e1:	83 c4 08             	add    sp,0x8
   2d2e4:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d2e7:	50                   	push   ax
   2d2e8:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d2eb:	b4 00                	mov    ah,0x0
   2d2ed:	40                   	inc    ax
   2d2ee:	bb 04 00             	mov    bx,0x4
   2d2f1:	99                   	cwd
   2d2f2:	f7 fb                	idiv   bx
   2d2f4:	52                   	push   dx
   2d2f5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d2f8:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d2fb:	50                   	push   ax
   2d2fc:	6a 0a                	push   0xa
   2d2fe:	0e                   	push   cs
   2d2ff:	e8 97 ea             	call   0x2bd99
   2d302:	83 c4 08             	add    sp,0x8
   2d305:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d308:	b4 00                	mov    ah,0x0
   2d30a:	05 03 00             	add    ax,0x3
   2d30d:	bb 04 00             	mov    bx,0x4
   2d310:	99                   	cwd
   2d311:	f7 fb                	idiv   bx
   2d313:	d1 e2                	shl    dx,1
   2d315:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d318:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d31b:	03 c2                	add    ax,dx
   2d31d:	40                   	inc    ax
   2d31e:	99                   	cwd
   2d31f:	50                   	push   ax
   2d320:	52                   	push   dx
   2d321:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d325:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d328:	59                   	pop    cx
   2d329:	5b                   	pop    bx
   2d32a:	9a 77 14 00 00       	call   0x0:0x1477
   2d32f:	8b d8                	mov    bx,ax
   2d331:	8e c2                	mov    es,dx
   2d333:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d337:	74 07                	je     0x2d340
   2d339:	83 0e f9 3a 01       	or     WORD PTR ds:0x3af9,0x1
   2d33e:	eb 05                	jmp    0x2d345
   2d340:	83 26 f9 3a fe       	and    WORD PTR ds:0x3af9,0xfffe
   2d345:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d348:	b4 00                	mov    ah,0x0
   2d34a:	40                   	inc    ax
   2d34b:	bb 04 00             	mov    bx,0x4
   2d34e:	99                   	cwd
   2d34f:	f7 fb                	idiv   bx
   2d351:	d1 e2                	shl    dx,1
   2d353:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d356:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d359:	03 c2                	add    ax,dx
   2d35b:	40                   	inc    ax
   2d35c:	99                   	cwd
   2d35d:	50                   	push   ax
   2d35e:	52                   	push   dx
   2d35f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d363:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d366:	59                   	pop    cx
   2d367:	5b                   	pop    bx
   2d368:	9a 77 14 00 00       	call   0x0:0x1477
   2d36d:	8b d8                	mov    bx,ax
   2d36f:	8e c2                	mov    es,dx
   2d371:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d375:	74 07                	je     0x2d37e
   2d377:	83 0e f9 3a 02       	or     WORD PTR ds:0x3af9,0x2
   2d37c:	eb 05                	jmp    0x2d383
   2d37e:	83 26 f9 3a fd       	and    WORD PTR ds:0x3af9,0xfffd
   2d383:	c9                   	leave
   2d384:	cb                   	retf
   2d385:	55                   	push   bp
   2d386:	8b ec                	mov    bp,sp
   2d388:	83 ec 0c             	sub    sp,0xc
   2d38b:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d38e:	24 01                	and    al,0x1
   2d390:	8a 16 f3 b9          	mov    dl,BYTE PTR ds:0xb9f3
   2d394:	02 16 f1 b9          	add    dl,BYTE PTR ds:0xb9f1
   2d398:	80 e2 01             	and    dl,0x1
   2d39b:	d0 e2                	shl    dl,1
   2d39d:	0a c2                	or     al,dl
   2d39f:	88 46 f9             	mov    BYTE PTR [bp-0x7],al
   2d3a2:	a0 eb b9             	mov    al,ds:0xb9eb
   2d3a5:	b4 00                	mov    ah,0x0
   2d3a7:	50                   	push   ax
   2d3a8:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2d3ab:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   2d3af:	5a                   	pop    dx
   2d3b0:	f7 ea                	imul   dx
   2d3b2:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2d3b6:	03 16 c6 b9          	add    dx,WORD PTR ds:0xb9c6
   2d3ba:	03 d0                	add    dx,ax
   2d3bc:	6b d2 0f             	imul   dx,dx,0xf
   2d3bf:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   2d3c2:	c7 46 fe fe ff       	mov    WORD PTR [bp-0x2],0xfffe
   2d3c7:	e9 de 02             	jmp    0x2d6a8
   2d3ca:	a0 eb b9             	mov    al,ds:0xb9eb
   2d3cd:	b4 00                	mov    ah,0x0
   2d3cf:	50                   	push   ax
   2d3d0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d3d3:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2d3d7:	5a                   	pop    dx
   2d3d8:	f7 ea                	imul   dx
   2d3da:	50                   	push   ax
   2d3db:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d3de:	f7 d8                	neg    ax
   2d3e0:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2d3e4:	5a                   	pop    dx
   2d3e5:	03 c2                	add    ax,dx
   2d3e7:	6b c0 0f             	imul   ax,ax,0xf
   2d3ea:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2d3ed:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d3f0:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2d3f4:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2d3f8:	03 16 c6 b9          	add    dx,WORD PTR ds:0xb9c6
   2d3fc:	2b d0                	sub    dx,ax
   2d3fe:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2d401:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d404:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2d408:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2d40c:	03 16 c4 b9          	add    dx,WORD PTR ds:0xb9c4
   2d410:	03 d0                	add    dx,ax
   2d412:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2d415:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2d419:	7d 03                	jge    0x2d41e
   2d41b:	e9 87 02             	jmp    0x2d6a5
   2d41e:	a0 eb b9             	mov    al,ds:0xb9eb
   2d421:	b4 00                	mov    ah,0x0
   2d423:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2d426:	7f 03                	jg     0x2d42b
   2d428:	e9 7a 02             	jmp    0x2d6a5
   2d42b:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   2d42f:	7d 03                	jge    0x2d434
   2d431:	e9 71 02             	jmp    0x2d6a5
   2d434:	a0 ea b9             	mov    al,ds:0xb9ea
   2d437:	b4 00                	mov    ah,0x0
   2d439:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   2d43c:	7f 03                	jg     0x2d441
   2d43e:	e9 64 02             	jmp    0x2d6a5
   2d441:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d444:	3d fe ff             	cmp    ax,0xfffe
   2d447:	74 0b                	je     0x2d454
   2d449:	3d ff ff             	cmp    ax,0xffff
   2d44c:	75 03                	jne    0x2d451
   2d44e:	e9 1c 01             	jmp    0x2d56d
   2d451:	e9 51 02             	jmp    0x2d6a5
   2d454:	68 28 00             	push   0x28
   2d457:	68 85 11             	push   0x1185
   2d45a:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d45d:	50                   	push   ax
   2d45e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d461:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d464:	05 09 00             	add    ax,0x9
   2d467:	99                   	cwd
   2d468:	50                   	push   ax
   2d469:	52                   	push   dx
   2d46a:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d46e:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d471:	59                   	pop    cx
   2d472:	5b                   	pop    bx
   2d473:	9a 77 14 00 00       	call   0x0:0x1477
   2d478:	8b d8                	mov    bx,ax
   2d47a:	8e c2                	mov    es,dx
   2d47c:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d47f:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d482:	b6 00                	mov    dh,0x0
   2d484:	6b d2 05             	imul   dx,dx,0x5
   2d487:	02 c2                	add    al,dl
   2d489:	04 23                	add    al,0x23
   2d48b:	50                   	push   ax
   2d48c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d48f:	99                   	cwd
   2d490:	33 c2                	xor    ax,dx
   2d492:	2b c2                	sub    ax,dx
   2d494:	04 ff                	add    al,0xff
   2d496:	d0 e0                	shl    al,1
   2d498:	fe c0                	inc    al
   2d49a:	50                   	push   ax
   2d49b:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2d49f:	ff 36 24 b9          	push   WORD PTR ds:0xb924
   2d4a3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d4a6:	f7 2e 2e b9          	imul   WORD PTR ds:0xb92e
   2d4aa:	8b 16 22 b9          	mov    dx,WORD PTR ds:0xb922
   2d4ae:	03 d0                	add    dx,ax
   2d4b0:	52                   	push   dx
   2d4b1:	ff 36 30 b9          	push   WORD PTR ds:0xb930
   2d4b5:	ff 36 2e b9          	push   WORD PTR ds:0xb92e
   2d4b9:	ff 36 2c b9          	push   WORD PTR ds:0xb92c
   2d4bd:	ff 36 2a b9          	push   WORD PTR ds:0xb92a
   2d4c1:	9a 21 0f 28 00       	call   0x28:0xf21
   2d4c6:	83 c4 18             	add    sp,0x18
   2d4c9:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d4cc:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d4cf:	05 08 00             	add    ax,0x8
   2d4d2:	99                   	cwd
   2d4d3:	50                   	push   ax
   2d4d4:	52                   	push   dx
   2d4d5:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d4d9:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d4dc:	59                   	pop    cx
   2d4dd:	5b                   	pop    bx
   2d4de:	9a 77 14 00 00       	call   0x0:0x1477
   2d4e3:	8b d8                	mov    bx,ax
   2d4e5:	8e c2                	mov    es,dx
   2d4e7:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d4eb:	74 7d                	je     0x2d56a
   2d4ed:	68 28 00             	push   0x28
   2d4f0:	68 07 13             	push   0x1307
   2d4f3:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d4f6:	50                   	push   ax
   2d4f7:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d4fa:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d4fd:	05 08 00             	add    ax,0x8
   2d500:	99                   	cwd
   2d501:	50                   	push   ax
   2d502:	52                   	push   dx
   2d503:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d507:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d50a:	59                   	pop    cx
   2d50b:	5b                   	pop    bx
   2d50c:	9a 77 14 00 00       	call   0x0:0x1477
   2d511:	8b d8                	mov    bx,ax
   2d513:	8e c2                	mov    es,dx
   2d515:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d518:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d51b:	d0 e2                	shl    dl,1
   2d51d:	02 c2                	add    al,dl
   2d51f:	04 37                	add    al,0x37
   2d521:	50                   	push   ax
   2d522:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d525:	99                   	cwd
   2d526:	33 c2                	xor    ax,dx
   2d528:	2b c2                	sub    ax,dx
   2d52a:	04 ff                	add    al,0xff
   2d52c:	d0 e0                	shl    al,1
   2d52e:	fe c0                	inc    al
   2d530:	50                   	push   ax
   2d531:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2d535:	a1 5a b9             	mov    ax,ds:0xb95a
   2d538:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d53c:	50                   	push   ax
   2d53d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d540:	f7 2e 64 b9          	imul   WORD PTR ds:0xb964
   2d544:	8b 16 58 b9          	mov    dx,WORD PTR ds:0xb958
   2d548:	03 d0                	add    dx,ax
   2d54a:	52                   	push   dx
   2d54b:	ff 36 66 b9          	push   WORD PTR ds:0xb966
   2d54f:	ff 36 64 b9          	push   WORD PTR ds:0xb964
   2d553:	a1 62 b9             	mov    ax,ds:0xb962
   2d556:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d55a:	50                   	push   ax
   2d55b:	ff 36 60 b9          	push   WORD PTR ds:0xb960
   2d55f:	9a 21 0f 28 00       	call   0x28:0xf21
   2d564:	83 c4 18             	add    sp,0x18
   2d567:	e9 16 01             	jmp    0x2d680
   2d56a:	e9 13 01             	jmp    0x2d680
   2d56d:	68 28 00             	push   0x28
   2d570:	68 85 11             	push   0x1185
   2d573:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d576:	50                   	push   ax
   2d577:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d57a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d57d:	05 09 00             	add    ax,0x9
   2d580:	99                   	cwd
   2d581:	50                   	push   ax
   2d582:	52                   	push   dx
   2d583:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d587:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d58a:	59                   	pop    cx
   2d58b:	5b                   	pop    bx
   2d58c:	9a 77 14 00 00       	call   0x0:0x1477
   2d591:	8b d8                	mov    bx,ax
   2d593:	8e c2                	mov    es,dx
   2d595:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d598:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d59b:	b6 00                	mov    dh,0x0
   2d59d:	6b d2 05             	imul   dx,dx,0x5
   2d5a0:	02 c2                	add    al,dl
   2d5a2:	04 23                	add    al,0x23
   2d5a4:	50                   	push   ax
   2d5a5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d5a8:	99                   	cwd
   2d5a9:	33 c2                	xor    ax,dx
   2d5ab:	2b c2                	sub    ax,dx
   2d5ad:	04 ff                	add    al,0xff
   2d5af:	d0 e0                	shl    al,1
   2d5b1:	fe c0                	inc    al
   2d5b3:	50                   	push   ax
   2d5b4:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2d5b8:	ff 36 24 b9          	push   WORD PTR ds:0xb924
   2d5bc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d5bf:	f7 2e 2e b9          	imul   WORD PTR ds:0xb92e
   2d5c3:	8b 16 22 b9          	mov    dx,WORD PTR ds:0xb922
   2d5c7:	03 d0                	add    dx,ax
   2d5c9:	52                   	push   dx
   2d5ca:	ff 36 30 b9          	push   WORD PTR ds:0xb930
   2d5ce:	ff 36 2e b9          	push   WORD PTR ds:0xb92e
   2d5d2:	ff 36 2c b9          	push   WORD PTR ds:0xb92c
   2d5d6:	ff 36 2a b9          	push   WORD PTR ds:0xb92a
   2d5da:	9a 21 0f 28 00       	call   0x28:0xf21
   2d5df:	83 c4 18             	add    sp,0x18
   2d5e2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d5e5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d5e8:	05 08 00             	add    ax,0x8
   2d5eb:	99                   	cwd
   2d5ec:	50                   	push   ax
   2d5ed:	52                   	push   dx
   2d5ee:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d5f2:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d5f5:	59                   	pop    cx
   2d5f6:	5b                   	pop    bx
   2d5f7:	9a 77 14 00 00       	call   0x0:0x1477
   2d5fc:	8b d8                	mov    bx,ax
   2d5fe:	8e c2                	mov    es,dx
   2d600:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d604:	74 7a                	je     0x2d680
   2d606:	68 28 00             	push   0x28
   2d609:	68 07 13             	push   0x1307
   2d60c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d60f:	50                   	push   ax
   2d610:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d613:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d616:	05 08 00             	add    ax,0x8
   2d619:	99                   	cwd
   2d61a:	50                   	push   ax
   2d61b:	52                   	push   dx
   2d61c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d620:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d623:	59                   	pop    cx
   2d624:	5b                   	pop    bx
   2d625:	9a 77 14 00 00       	call   0x0:0x1477
   2d62a:	8b d8                	mov    bx,ax
   2d62c:	8e c2                	mov    es,dx
   2d62e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d631:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d634:	d0 e2                	shl    dl,1
   2d636:	02 c2                	add    al,dl
   2d638:	04 37                	add    al,0x37
   2d63a:	50                   	push   ax
   2d63b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d63e:	99                   	cwd
   2d63f:	33 c2                	xor    ax,dx
   2d641:	2b c2                	sub    ax,dx
   2d643:	04 ff                	add    al,0xff
   2d645:	d0 e0                	shl    al,1
   2d647:	fe c0                	inc    al
   2d649:	50                   	push   ax
   2d64a:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2d64e:	a1 5a b9             	mov    ax,ds:0xb95a
   2d651:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d655:	50                   	push   ax
   2d656:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d659:	f7 2e 64 b9          	imul   WORD PTR ds:0xb964
   2d65d:	8b 16 58 b9          	mov    dx,WORD PTR ds:0xb958
   2d661:	03 d0                	add    dx,ax
   2d663:	52                   	push   dx
   2d664:	ff 36 66 b9          	push   WORD PTR ds:0xb966
   2d668:	ff 36 64 b9          	push   WORD PTR ds:0xb964
   2d66c:	a1 62 b9             	mov    ax,ds:0xb962
   2d66f:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d673:	50                   	push   ax
   2d674:	ff 36 60 b9          	push   WORD PTR ds:0xb960
   2d678:	9a 21 0f 28 00       	call   0x28:0xf21
   2d67d:	83 c4 18             	add    sp,0x18
   2d680:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d683:	50                   	push   ax
   2d684:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d687:	b4 00                	mov    ah,0x0
   2d689:	bb 04 00             	mov    bx,0x4
   2d68c:	99                   	cwd
   2d68d:	f7 fb                	idiv   bx
   2d68f:	52                   	push   dx
   2d690:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d693:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d696:	50                   	push   ax
   2d697:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d69a:	05 0f 00             	add    ax,0xf
   2d69d:	50                   	push   ax
   2d69e:	0e                   	push   cs
   2d69f:	e8 f7 e6             	call   0x2bd99
   2d6a2:	83 c4 08             	add    sp,0x8
   2d6a5:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2d6a8:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2d6ac:	7d 03                	jge    0x2d6b1
   2d6ae:	e9 19 fd             	jmp    0x2d3ca
   2d6b1:	c7 46 fe 02 00       	mov    WORD PTR [bp-0x2],0x2
   2d6b6:	e9 f1 02             	jmp    0x2d9aa
   2d6b9:	a0 eb b9             	mov    al,ds:0xb9eb
   2d6bc:	b4 00                	mov    ah,0x0
   2d6be:	50                   	push   ax
   2d6bf:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d6c2:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2d6c6:	5a                   	pop    dx
   2d6c7:	f7 ea                	imul   dx
   2d6c9:	50                   	push   ax
   2d6ca:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d6cd:	f7 d8                	neg    ax
   2d6cf:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2d6d3:	5a                   	pop    dx
   2d6d4:	03 c2                	add    ax,dx
   2d6d6:	6b c0 0f             	imul   ax,ax,0xf
   2d6d9:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2d6dc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d6df:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2d6e3:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2d6e7:	03 16 c6 b9          	add    dx,WORD PTR ds:0xb9c6
   2d6eb:	2b d0                	sub    dx,ax
   2d6ed:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2d6f0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d6f3:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2d6f7:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2d6fb:	03 16 c4 b9          	add    dx,WORD PTR ds:0xb9c4
   2d6ff:	03 d0                	add    dx,ax
   2d701:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2d704:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2d708:	7d 03                	jge    0x2d70d
   2d70a:	e9 9a 02             	jmp    0x2d9a7
   2d70d:	a0 eb b9             	mov    al,ds:0xb9eb
   2d710:	b4 00                	mov    ah,0x0
   2d712:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2d715:	7f 03                	jg     0x2d71a
   2d717:	e9 8d 02             	jmp    0x2d9a7
   2d71a:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   2d71e:	7d 03                	jge    0x2d723
   2d720:	e9 84 02             	jmp    0x2d9a7
   2d723:	a0 ea b9             	mov    al,ds:0xb9ea
   2d726:	b4 00                	mov    ah,0x0
   2d728:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   2d72b:	7f 03                	jg     0x2d730
   2d72d:	e9 77 02             	jmp    0x2d9a7
   2d730:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d733:	3d 01 00             	cmp    ax,0x1
   2d736:	75 03                	jne    0x2d73b
   2d738:	e9 2c 01             	jmp    0x2d867
   2d73b:	3d 02 00             	cmp    ax,0x2
   2d73e:	74 03                	je     0x2d743
   2d740:	e9 64 02             	jmp    0x2d9a7
   2d743:	68 28 00             	push   0x28
   2d746:	68 f1 10             	push   0x10f1
   2d749:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d74c:	50                   	push   ax
   2d74d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d750:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d753:	05 09 00             	add    ax,0x9
   2d756:	99                   	cwd
   2d757:	50                   	push   ax
   2d758:	52                   	push   dx
   2d759:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d75d:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d760:	59                   	pop    cx
   2d761:	5b                   	pop    bx
   2d762:	9a 77 14 00 00       	call   0x0:0x1477
   2d767:	8b d8                	mov    bx,ax
   2d769:	8e c2                	mov    es,dx
   2d76b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d76e:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d771:	b6 00                	mov    dh,0x0
   2d773:	6b d2 05             	imul   dx,dx,0x5
   2d776:	02 c2                	add    al,dl
   2d778:	04 23                	add    al,0x23
   2d77a:	50                   	push   ax
   2d77b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d77e:	99                   	cwd
   2d77f:	33 c2                	xor    ax,dx
   2d781:	2b c2                	sub    ax,dx
   2d783:	04 ff                	add    al,0xff
   2d785:	d0 e0                	shl    al,1
   2d787:	fe c0                	inc    al
   2d789:	50                   	push   ax
   2d78a:	a1 09 3b             	mov    ax,ds:0x3b09
   2d78d:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d791:	50                   	push   ax
   2d792:	ff 36 24 b9          	push   WORD PTR ds:0xb924
   2d796:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d799:	f7 2e 2e b9          	imul   WORD PTR ds:0xb92e
   2d79d:	8b 16 22 b9          	mov    dx,WORD PTR ds:0xb922
   2d7a1:	03 d0                	add    dx,ax
   2d7a3:	52                   	push   dx
   2d7a4:	ff 36 30 b9          	push   WORD PTR ds:0xb930
   2d7a8:	ff 36 2e b9          	push   WORD PTR ds:0xb92e
   2d7ac:	ff 36 2c b9          	push   WORD PTR ds:0xb92c
   2d7b0:	ff 36 2a b9          	push   WORD PTR ds:0xb92a
   2d7b4:	9a 21 0f 28 00       	call   0x28:0xf21
   2d7b9:	83 c4 18             	add    sp,0x18
   2d7bc:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d7bf:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d7c2:	05 08 00             	add    ax,0x8
   2d7c5:	99                   	cwd
   2d7c6:	50                   	push   ax
   2d7c7:	52                   	push   dx
   2d7c8:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d7cc:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d7cf:	59                   	pop    cx
   2d7d0:	5b                   	pop    bx
   2d7d1:	9a 77 14 00 00       	call   0x0:0x1477
   2d7d6:	8b d8                	mov    bx,ax
   2d7d8:	8e c2                	mov    es,dx
   2d7da:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d7de:	75 03                	jne    0x2d7e3
   2d7e0:	e9 81 00             	jmp    0x2d864
   2d7e3:	68 28 00             	push   0x28
   2d7e6:	68 61 12             	push   0x1261
   2d7e9:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d7ec:	50                   	push   ax
   2d7ed:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d7f0:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d7f3:	05 08 00             	add    ax,0x8
   2d7f6:	99                   	cwd
   2d7f7:	50                   	push   ax
   2d7f8:	52                   	push   dx
   2d7f9:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d7fd:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d800:	59                   	pop    cx
   2d801:	5b                   	pop    bx
   2d802:	9a 77 14 00 00       	call   0x0:0x1477
   2d807:	8b d8                	mov    bx,ax
   2d809:	8e c2                	mov    es,dx
   2d80b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d80e:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d811:	d0 e2                	shl    dl,1
   2d813:	02 c2                	add    al,dl
   2d815:	04 37                	add    al,0x37
   2d817:	50                   	push   ax
   2d818:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d81b:	99                   	cwd
   2d81c:	33 c2                	xor    ax,dx
   2d81e:	2b c2                	sub    ax,dx
   2d820:	04 ff                	add    al,0xff
   2d822:	d0 e0                	shl    al,1
   2d824:	fe c0                	inc    al
   2d826:	50                   	push   ax
   2d827:	a1 09 3b             	mov    ax,ds:0x3b09
   2d82a:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d82e:	50                   	push   ax
   2d82f:	a1 5a b9             	mov    ax,ds:0xb95a
   2d832:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d836:	50                   	push   ax
   2d837:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d83a:	f7 2e 64 b9          	imul   WORD PTR ds:0xb964
   2d83e:	8b 16 58 b9          	mov    dx,WORD PTR ds:0xb958
   2d842:	03 d0                	add    dx,ax
   2d844:	52                   	push   dx
   2d845:	ff 36 66 b9          	push   WORD PTR ds:0xb966
   2d849:	ff 36 64 b9          	push   WORD PTR ds:0xb964
   2d84d:	a1 62 b9             	mov    ax,ds:0xb962
   2d850:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d854:	50                   	push   ax
   2d855:	ff 36 60 b9          	push   WORD PTR ds:0xb960
   2d859:	9a 21 0f 28 00       	call   0x28:0xf21
   2d85e:	83 c4 18             	add    sp,0x18
   2d861:	e9 1e 01             	jmp    0x2d982
   2d864:	e9 1b 01             	jmp    0x2d982
   2d867:	68 28 00             	push   0x28
   2d86a:	68 f1 10             	push   0x10f1
   2d86d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d870:	50                   	push   ax
   2d871:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d874:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d877:	05 09 00             	add    ax,0x9
   2d87a:	99                   	cwd
   2d87b:	50                   	push   ax
   2d87c:	52                   	push   dx
   2d87d:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d881:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d884:	59                   	pop    cx
   2d885:	5b                   	pop    bx
   2d886:	9a 77 14 00 00       	call   0x0:0x1477
   2d88b:	8b d8                	mov    bx,ax
   2d88d:	8e c2                	mov    es,dx
   2d88f:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d892:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d895:	b6 00                	mov    dh,0x0
   2d897:	6b d2 05             	imul   dx,dx,0x5
   2d89a:	02 c2                	add    al,dl
   2d89c:	04 23                	add    al,0x23
   2d89e:	50                   	push   ax
   2d89f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d8a2:	99                   	cwd
   2d8a3:	33 c2                	xor    ax,dx
   2d8a5:	2b c2                	sub    ax,dx
   2d8a7:	04 ff                	add    al,0xff
   2d8a9:	d0 e0                	shl    al,1
   2d8ab:	fe c0                	inc    al
   2d8ad:	50                   	push   ax
   2d8ae:	a1 09 3b             	mov    ax,ds:0x3b09
   2d8b1:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d8b5:	50                   	push   ax
   2d8b6:	ff 36 24 b9          	push   WORD PTR ds:0xb924
   2d8ba:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d8bd:	f7 2e 2e b9          	imul   WORD PTR ds:0xb92e
   2d8c1:	8b 16 22 b9          	mov    dx,WORD PTR ds:0xb922
   2d8c5:	03 d0                	add    dx,ax
   2d8c7:	52                   	push   dx
   2d8c8:	ff 36 30 b9          	push   WORD PTR ds:0xb930
   2d8cc:	ff 36 2e b9          	push   WORD PTR ds:0xb92e
   2d8d0:	ff 36 2c b9          	push   WORD PTR ds:0xb92c
   2d8d4:	ff 36 2a b9          	push   WORD PTR ds:0xb92a
   2d8d8:	9a 21 0f 28 00       	call   0x28:0xf21
   2d8dd:	83 c4 18             	add    sp,0x18
   2d8e0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d8e3:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d8e6:	05 08 00             	add    ax,0x8
   2d8e9:	99                   	cwd
   2d8ea:	50                   	push   ax
   2d8eb:	52                   	push   dx
   2d8ec:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d8f0:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d8f3:	59                   	pop    cx
   2d8f4:	5b                   	pop    bx
   2d8f5:	9a 77 14 00 00       	call   0x0:0x1477
   2d8fa:	8b d8                	mov    bx,ax
   2d8fc:	8e c2                	mov    es,dx
   2d8fe:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d902:	74 7e                	je     0x2d982
   2d904:	68 28 00             	push   0x28
   2d907:	68 61 12             	push   0x1261
   2d90a:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d90d:	50                   	push   ax
   2d90e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d911:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d914:	05 08 00             	add    ax,0x8
   2d917:	99                   	cwd
   2d918:	50                   	push   ax
   2d919:	52                   	push   dx
   2d91a:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d91e:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d921:	59                   	pop    cx
   2d922:	5b                   	pop    bx
   2d923:	9a 77 14 00 00       	call   0x0:0x1477
   2d928:	8b d8                	mov    bx,ax
   2d92a:	8e c2                	mov    es,dx
   2d92c:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d92f:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2d932:	d0 e2                	shl    dl,1
   2d934:	02 c2                	add    al,dl
   2d936:	04 37                	add    al,0x37
   2d938:	50                   	push   ax
   2d939:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d93c:	99                   	cwd
   2d93d:	33 c2                	xor    ax,dx
   2d93f:	2b c2                	sub    ax,dx
   2d941:	04 ff                	add    al,0xff
   2d943:	d0 e0                	shl    al,1
   2d945:	fe c0                	inc    al
   2d947:	50                   	push   ax
   2d948:	a1 09 3b             	mov    ax,ds:0x3b09
   2d94b:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d94f:	50                   	push   ax
   2d950:	a1 5a b9             	mov    ax,ds:0xb95a
   2d953:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d957:	50                   	push   ax
   2d958:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d95b:	f7 2e 64 b9          	imul   WORD PTR ds:0xb964
   2d95f:	8b 16 58 b9          	mov    dx,WORD PTR ds:0xb958
   2d963:	03 d0                	add    dx,ax
   2d965:	52                   	push   dx
   2d966:	ff 36 66 b9          	push   WORD PTR ds:0xb966
   2d96a:	ff 36 64 b9          	push   WORD PTR ds:0xb964
   2d96e:	a1 62 b9             	mov    ax,ds:0xb962
   2d971:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2d975:	50                   	push   ax
   2d976:	ff 36 60 b9          	push   WORD PTR ds:0xb960
   2d97a:	9a 21 0f 28 00       	call   0x28:0xf21
   2d97f:	83 c4 18             	add    sp,0x18
   2d982:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d985:	50                   	push   ax
   2d986:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d989:	b4 00                	mov    ah,0x0
   2d98b:	bb 04 00             	mov    bx,0x4
   2d98e:	99                   	cwd
   2d98f:	f7 fb                	idiv   bx
   2d991:	52                   	push   dx
   2d992:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d995:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d998:	50                   	push   ax
   2d999:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d99c:	05 0f 00             	add    ax,0xf
   2d99f:	50                   	push   ax
   2d9a0:	0e                   	push   cs
   2d9a1:	e8 f5 e3             	call   0x2bd99
   2d9a4:	83 c4 08             	add    sp,0x8
   2d9a7:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   2d9aa:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2d9ae:	7e 03                	jle    0x2d9b3
   2d9b0:	e9 06 fd             	jmp    0x2d6b9
   2d9b3:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2d9b8:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2d9bd:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2d9c0:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   2d9c4:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2d9c7:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2d9ca:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   2d9ce:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2d9d1:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2d9d5:	7d 03                	jge    0x2d9da
   2d9d7:	e9 34 01             	jmp    0x2db0e
   2d9da:	a0 eb b9             	mov    al,ds:0xb9eb
   2d9dd:	b4 00                	mov    ah,0x0
   2d9df:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2d9e2:	7f 03                	jg     0x2d9e7
   2d9e4:	e9 27 01             	jmp    0x2db0e
   2d9e7:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   2d9eb:	7d 03                	jge    0x2d9f0
   2d9ed:	e9 1e 01             	jmp    0x2db0e
   2d9f0:	a0 ea b9             	mov    al,ds:0xb9ea
   2d9f3:	b4 00                	mov    ah,0x0
   2d9f5:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   2d9f8:	7f 03                	jg     0x2d9fd
   2d9fa:	e9 11 01             	jmp    0x2db0e
   2d9fd:	68 e0 01             	push   0x1e0
   2da00:	68 41 03             	push   0x341
   2da03:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2da06:	50                   	push   ax
   2da07:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2da0a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2da0d:	05 09 00             	add    ax,0x9
   2da10:	99                   	cwd
   2da11:	50                   	push   ax
   2da12:	52                   	push   dx
   2da13:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2da17:	a1 ec b9             	mov    ax,ds:0xb9ec
   2da1a:	59                   	pop    cx
   2da1b:	5b                   	pop    bx
   2da1c:	9a 77 14 00 00       	call   0x0:0x1477
   2da21:	8b d8                	mov    bx,ax
   2da23:	8e c2                	mov    es,dx
   2da25:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2da28:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2da2b:	b6 00                	mov    dh,0x0
   2da2d:	6b d2 05             	imul   dx,dx,0x5
   2da30:	02 c2                	add    al,dl
   2da32:	04 23                	add    al,0x23
   2da34:	50                   	push   ax
   2da35:	ff 36 24 b9          	push   WORD PTR ds:0xb924
   2da39:	a1 22 b9             	mov    ax,ds:0xb922
   2da3c:	2b 06 2e b9          	sub    ax,WORD PTR ds:0xb92e
   2da40:	50                   	push   ax
   2da41:	ff 36 30 b9          	push   WORD PTR ds:0xb930
   2da45:	a1 2e b9             	mov    ax,ds:0xb92e
   2da48:	6b c0 03             	imul   ax,ax,0x3
   2da4b:	50                   	push   ax
   2da4c:	ff 36 2c b9          	push   WORD PTR ds:0xb92c
   2da50:	a1 2a b9             	mov    ax,ds:0xb92a
   2da53:	2b 06 2e b9          	sub    ax,WORD PTR ds:0xb92e
   2da57:	50                   	push   ax
   2da58:	9a 30 04 28 00       	call   0x28:0x430
   2da5d:	83 c4 14             	add    sp,0x14
   2da60:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2da63:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2da66:	05 08 00             	add    ax,0x8
   2da69:	99                   	cwd
   2da6a:	50                   	push   ax
   2da6b:	52                   	push   dx
   2da6c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2da70:	a1 ec b9             	mov    ax,ds:0xb9ec
   2da73:	59                   	pop    cx
   2da74:	5b                   	pop    bx
   2da75:	9a 77 14 00 00       	call   0x0:0x1477
   2da7a:	8b d8                	mov    bx,ax
   2da7c:	8e c2                	mov    es,dx
   2da7e:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2da82:	74 6a                	je     0x2daee
   2da84:	68 e0 01             	push   0x1e0
   2da87:	68 41 03             	push   0x341
   2da8a:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2da8d:	50                   	push   ax
   2da8e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2da91:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2da94:	05 08 00             	add    ax,0x8
   2da97:	99                   	cwd
   2da98:	50                   	push   ax
   2da99:	52                   	push   dx
   2da9a:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2da9e:	a1 ec b9             	mov    ax,ds:0xb9ec
   2daa1:	59                   	pop    cx
   2daa2:	5b                   	pop    bx
   2daa3:	9a 77 14 00 00       	call   0x0:0x1477
   2daa8:	8b d8                	mov    bx,ax
   2daaa:	8e c2                	mov    es,dx
   2daac:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2daaf:	8a 56 f9             	mov    dl,BYTE PTR [bp-0x7]
   2dab2:	d0 e2                	shl    dl,1
   2dab4:	02 c2                	add    al,dl
   2dab6:	04 37                	add    al,0x37
   2dab8:	50                   	push   ax
   2dab9:	a1 5a b9             	mov    ax,ds:0xb95a
   2dabc:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2dac0:	40                   	inc    ax
   2dac1:	50                   	push   ax
   2dac2:	a1 58 b9             	mov    ax,ds:0xb958
   2dac5:	2b 06 64 b9          	sub    ax,WORD PTR ds:0xb964
   2dac9:	50                   	push   ax
   2daca:	ff 36 66 b9          	push   WORD PTR ds:0xb966
   2dace:	a1 64 b9             	mov    ax,ds:0xb964
   2dad1:	6b c0 03             	imul   ax,ax,0x3
   2dad4:	50                   	push   ax
   2dad5:	a1 62 b9             	mov    ax,ds:0xb962
   2dad8:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2dadc:	40                   	inc    ax
   2dadd:	50                   	push   ax
   2dade:	a1 60 b9             	mov    ax,ds:0xb960
   2dae1:	2b 06 64 b9          	sub    ax,WORD PTR ds:0xb964
   2dae5:	50                   	push   ax
   2dae6:	9a 30 04 28 00       	call   0x28:0x430
   2daeb:	83 c4 14             	add    sp,0x14
   2daee:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2daf1:	50                   	push   ax
   2daf2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2daf5:	b4 00                	mov    ah,0x0
   2daf7:	bb 04 00             	mov    bx,0x4
   2dafa:	99                   	cwd
   2dafb:	f7 fb                	idiv   bx
   2dafd:	52                   	push   dx
   2dafe:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2db01:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2db04:	50                   	push   ax
   2db05:	6a 0f                	push   0xf
   2db07:	0e                   	push   cs
   2db08:	e8 8e e2             	call   0x2bd99
   2db0b:	83 c4 08             	add    sp,0x8
   2db0e:	c9                   	leave
   2db0f:	cb                   	retf
   2db10:	55                   	push   bp
   2db11:	8b ec                	mov    bp,sp
   2db13:	83 ec 0a             	sub    sp,0xa
   2db16:	a0 eb b9             	mov    al,ds:0xb9eb
   2db19:	b4 00                	mov    ah,0x0
   2db1b:	50                   	push   ax
   2db1c:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2db1f:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   2db23:	5a                   	pop    dx
   2db24:	f7 ea                	imul   dx
   2db26:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2db2a:	03 16 c6 b9          	add    dx,WORD PTR ds:0xb9c6
   2db2e:	03 d0                	add    dx,ax
   2db30:	6b d2 0f             	imul   dx,dx,0xf
   2db33:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   2db36:	c7 46 fe ff ff       	mov    WORD PTR [bp-0x2],0xffff
   2db3b:	e9 bd 00             	jmp    0x2dbfb
   2db3e:	a0 eb b9             	mov    al,ds:0xb9eb
   2db41:	b4 00                	mov    ah,0x0
   2db43:	50                   	push   ax
   2db44:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2db47:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2db4b:	5a                   	pop    dx
   2db4c:	f7 ea                	imul   dx
   2db4e:	50                   	push   ax
   2db4f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2db52:	f7 d8                	neg    ax
   2db54:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2db58:	5a                   	pop    dx
   2db59:	03 c2                	add    ax,dx
   2db5b:	6b c0 0f             	imul   ax,ax,0xf
   2db5e:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2db61:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2db64:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2db68:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2db6c:	03 16 c6 b9          	add    dx,WORD PTR ds:0xb9c6
   2db70:	2b d0                	sub    dx,ax
   2db72:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2db75:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2db78:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2db7c:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2db80:	03 16 c4 b9          	add    dx,WORD PTR ds:0xb9c4
   2db84:	03 d0                	add    dx,ax
   2db86:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2db89:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2db8d:	7c 68                	jl     0x2dbf7
   2db8f:	a0 eb b9             	mov    al,ds:0xb9eb
   2db92:	b4 00                	mov    ah,0x0
   2db94:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2db97:	7e 5e                	jle    0x2dbf7
   2db99:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2db9d:	7c 58                	jl     0x2dbf7
   2db9f:	a0 ea b9             	mov    al,ds:0xb9ea
   2dba2:	b4 00                	mov    ah,0x0
   2dba4:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2dba7:	7e 4e                	jle    0x2dbf7
   2dba9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dbac:	3d ff ff             	cmp    ax,0xffff
   2dbaf:	74 07                	je     0x2dbb8
   2dbb1:	3d 01 00             	cmp    ax,0x1
   2dbb4:	74 20                	je     0x2dbd6
   2dbb6:	eb 3f                	jmp    0x2dbf7
   2dbb8:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dbbb:	50                   	push   ax
   2dbbc:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dbbf:	b4 00                	mov    ah,0x0
   2dbc1:	05 03 00             	add    ax,0x3
   2dbc4:	bb 04 00             	mov    bx,0x4
   2dbc7:	99                   	cwd
   2dbc8:	f7 fb                	idiv   bx
   2dbca:	52                   	push   dx
   2dbcb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dbce:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dbd1:	50                   	push   ax
   2dbd2:	6a 12                	push   0x12
   2dbd4:	eb 1a                	jmp    0x2dbf0
   2dbd6:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dbd9:	50                   	push   ax
   2dbda:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dbdd:	b4 00                	mov    ah,0x0
   2dbdf:	40                   	inc    ax
   2dbe0:	bb 04 00             	mov    bx,0x4
   2dbe3:	99                   	cwd
   2dbe4:	f7 fb                	idiv   bx
   2dbe6:	52                   	push   dx
   2dbe7:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dbea:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dbed:	50                   	push   ax
   2dbee:	6a 15                	push   0x15
   2dbf0:	0e                   	push   cs
   2dbf1:	e8 a5 e1             	call   0x2bd99
   2dbf4:	83 c4 08             	add    sp,0x8
   2dbf7:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   2dbfb:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   2dbff:	7d 03                	jge    0x2dc04
   2dc01:	e9 3a ff             	jmp    0x2db3e
   2dc04:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2dc09:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2dc0e:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2dc11:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   2dc15:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   2dc18:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2dc1b:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   2dc1f:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2dc22:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2dc26:	7d 03                	jge    0x2dc2b
   2dc28:	e9 e5 00             	jmp    0x2dd10
   2dc2b:	a0 eb b9             	mov    al,ds:0xb9eb
   2dc2e:	b4 00                	mov    ah,0x0
   2dc30:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2dc33:	7f 03                	jg     0x2dc38
   2dc35:	e9 d8 00             	jmp    0x2dd10
   2dc38:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2dc3c:	7d 03                	jge    0x2dc41
   2dc3e:	e9 cf 00             	jmp    0x2dd10
   2dc41:	a0 ea b9             	mov    al,ds:0xb9ea
   2dc44:	b4 00                	mov    ah,0x0
   2dc46:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2dc49:	7f 03                	jg     0x2dc4e
   2dc4b:	e9 c2 00             	jmp    0x2dd10
   2dc4e:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dc51:	50                   	push   ax
   2dc52:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dc55:	b4 00                	mov    ah,0x0
   2dc57:	40                   	inc    ax
   2dc58:	bb 04 00             	mov    bx,0x4
   2dc5b:	99                   	cwd
   2dc5c:	f7 fb                	idiv   bx
   2dc5e:	52                   	push   dx
   2dc5f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dc62:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dc65:	50                   	push   ax
   2dc66:	6a 14                	push   0x14
   2dc68:	0e                   	push   cs
   2dc69:	e8 2d e1             	call   0x2bd99
   2dc6c:	83 c4 08             	add    sp,0x8
   2dc6f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dc72:	50                   	push   ax
   2dc73:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dc76:	b4 00                	mov    ah,0x0
   2dc78:	05 03 00             	add    ax,0x3
   2dc7b:	bb 04 00             	mov    bx,0x4
   2dc7e:	99                   	cwd
   2dc7f:	f7 fb                	idiv   bx
   2dc81:	52                   	push   dx
   2dc82:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dc85:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dc88:	50                   	push   ax
   2dc89:	6a 13                	push   0x13
   2dc8b:	0e                   	push   cs
   2dc8c:	e8 0a e1             	call   0x2bd99
   2dc8f:	83 c4 08             	add    sp,0x8
   2dc92:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dc95:	b4 00                	mov    ah,0x0
   2dc97:	05 03 00             	add    ax,0x3
   2dc9a:	bb 04 00             	mov    bx,0x4
   2dc9d:	99                   	cwd
   2dc9e:	f7 fb                	idiv   bx
   2dca0:	d1 e2                	shl    dx,1
   2dca2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dca5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dca8:	03 c2                	add    ax,dx
   2dcaa:	40                   	inc    ax
   2dcab:	99                   	cwd
   2dcac:	50                   	push   ax
   2dcad:	52                   	push   dx
   2dcae:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2dcb2:	a1 ec b9             	mov    ax,ds:0xb9ec
   2dcb5:	59                   	pop    cx
   2dcb6:	5b                   	pop    bx
   2dcb7:	9a 77 14 00 00       	call   0x0:0x1477
   2dcbc:	8b d8                	mov    bx,ax
   2dcbe:	8e c2                	mov    es,dx
   2dcc0:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2dcc4:	74 07                	je     0x2dccd
   2dcc6:	83 0e f9 3a 04       	or     WORD PTR ds:0x3af9,0x4
   2dccb:	eb 05                	jmp    0x2dcd2
   2dccd:	83 26 f9 3a fb       	and    WORD PTR ds:0x3af9,0xfffb
   2dcd2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dcd5:	b4 00                	mov    ah,0x0
   2dcd7:	40                   	inc    ax
   2dcd8:	bb 04 00             	mov    bx,0x4
   2dcdb:	99                   	cwd
   2dcdc:	f7 fb                	idiv   bx
   2dcde:	d1 e2                	shl    dx,1
   2dce0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dce3:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dce6:	03 c2                	add    ax,dx
   2dce8:	40                   	inc    ax
   2dce9:	99                   	cwd
   2dcea:	50                   	push   ax
   2dceb:	52                   	push   dx
   2dcec:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2dcf0:	a1 ec b9             	mov    ax,ds:0xb9ec
   2dcf3:	59                   	pop    cx
   2dcf4:	5b                   	pop    bx
   2dcf5:	9a 77 14 00 00       	call   0x0:0x1477
   2dcfa:	8b d8                	mov    bx,ax
   2dcfc:	8e c2                	mov    es,dx
   2dcfe:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2dd02:	74 07                	je     0x2dd0b
   2dd04:	83 0e f9 3a 08       	or     WORD PTR ds:0x3af9,0x8
   2dd09:	eb 05                	jmp    0x2dd10
   2dd0b:	83 26 f9 3a f7       	and    WORD PTR ds:0x3af9,0xfff7
   2dd10:	c9                   	leave
   2dd11:	cb                   	retf
   2dd12:	55                   	push   bp
   2dd13:	8b ec                	mov    bp,sp
   2dd15:	83 ec 0c             	sub    sp,0xc
   2dd18:	a0 f0 b9             	mov    al,ds:0xb9f0
   2dd1b:	b4 00                	mov    ah,0x0
   2dd1d:	bb 02 00             	mov    bx,0x2
   2dd20:	99                   	cwd
   2dd21:	f7 fb                	idiv   bx
   2dd23:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2dd26:	03 06 f1 b9          	add    ax,WORD PTR ds:0xb9f1
   2dd2a:	bb 02 00             	mov    bx,0x2
   2dd2d:	52                   	push   dx
   2dd2e:	99                   	cwd
   2dd2f:	f7 fb                	idiv   bx
   2dd31:	d0 e2                	shl    dl,1
   2dd33:	58                   	pop    ax
   2dd34:	0a c2                	or     al,dl
   2dd36:	88 46 f5             	mov    BYTE PTR [bp-0xb],al
   2dd39:	a0 eb b9             	mov    al,ds:0xb9eb
   2dd3c:	b4 00                	mov    ah,0x0
   2dd3e:	50                   	push   ax
   2dd3f:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2dd42:	5a                   	pop    dx
   2dd43:	f7 ea                	imul   dx
   2dd45:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2dd49:	03 d0                	add    dx,ax
   2dd4b:	6b d2 0f             	imul   dx,dx,0xf
   2dd4e:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   2dd51:	c7 46 fe ff ff       	mov    WORD PTR [bp-0x2],0xffff
   2dd56:	e9 f0 02             	jmp    0x2e049
   2dd59:	a0 eb b9             	mov    al,ds:0xb9eb
   2dd5c:	b4 00                	mov    ah,0x0
   2dd5e:	50                   	push   ax
   2dd5f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd62:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2dd66:	5a                   	pop    dx
   2dd67:	f7 ea                	imul   dx
   2dd69:	50                   	push   ax
   2dd6a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd6d:	f7 d8                	neg    ax
   2dd6f:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2dd73:	5a                   	pop    dx
   2dd74:	03 c2                	add    ax,dx
   2dd76:	6b c0 0f             	imul   ax,ax,0xf
   2dd79:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2dd7c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd7f:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2dd83:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2dd87:	2b d0                	sub    dx,ax
   2dd89:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2dd8c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dd8f:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2dd93:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2dd97:	03 d0                	add    dx,ax
   2dd99:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2dd9c:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2dda0:	7d 03                	jge    0x2dda5
   2dda2:	e9 a0 02             	jmp    0x2e045
   2dda5:	a0 eb b9             	mov    al,ds:0xb9eb
   2dda8:	b4 00                	mov    ah,0x0
   2ddaa:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2ddad:	7f 03                	jg     0x2ddb2
   2ddaf:	e9 93 02             	jmp    0x2e045
   2ddb2:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2ddb6:	7d 03                	jge    0x2ddbb
   2ddb8:	e9 8a 02             	jmp    0x2e045
   2ddbb:	a0 ea b9             	mov    al,ds:0xb9ea
   2ddbe:	b4 00                	mov    ah,0x0
   2ddc0:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2ddc3:	7f 03                	jg     0x2ddc8
   2ddc5:	e9 7d 02             	jmp    0x2e045
   2ddc8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ddcb:	3d ff ff             	cmp    ax,0xffff
   2ddce:	74 0b                	je     0x2dddb
   2ddd0:	3d 01 00             	cmp    ax,0x1
   2ddd3:	75 03                	jne    0x2ddd8
   2ddd5:	e9 32 01             	jmp    0x2df0a
   2ddd8:	e9 6a 02             	jmp    0x2e045
   2dddb:	68 28 00             	push   0x28
   2ddde:	68 85 11             	push   0x1185
   2dde1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dde4:	50                   	push   ax
   2dde5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dde8:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ddeb:	05 09 00             	add    ax,0x9
   2ddee:	99                   	cwd
   2ddef:	50                   	push   ax
   2ddf0:	52                   	push   dx
   2ddf1:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ddf5:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ddf8:	59                   	pop    cx
   2ddf9:	5b                   	pop    bx
   2ddfa:	9a 77 14 00 00       	call   0x0:0x1477
   2ddff:	8b d8                	mov    bx,ax
   2de01:	8e c2                	mov    es,dx
   2de03:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2de06:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2de09:	b6 00                	mov    dh,0x0
   2de0b:	6b d2 05             	imul   dx,dx,0x5
   2de0e:	02 c2                	add    al,dl
   2de10:	04 23                	add    al,0x23
   2de12:	50                   	push   ax
   2de13:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2de16:	99                   	cwd
   2de17:	33 c2                	xor    ax,dx
   2de19:	2b c2                	sub    ax,dx
   2de1b:	04 ff                	add    al,0xff
   2de1d:	d0 e0                	shl    al,1
   2de1f:	fe c0                	inc    al
   2de21:	50                   	push   ax
   2de22:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2de26:	ff 36 36 b9          	push   WORD PTR ds:0xb936
   2de2a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2de2d:	f7 2e 40 b9          	imul   WORD PTR ds:0xb940
   2de31:	8b 16 34 b9          	mov    dx,WORD PTR ds:0xb934
   2de35:	03 d0                	add    dx,ax
   2de37:	52                   	push   dx
   2de38:	ff 36 42 b9          	push   WORD PTR ds:0xb942
   2de3c:	ff 36 40 b9          	push   WORD PTR ds:0xb940
   2de40:	ff 36 3e b9          	push   WORD PTR ds:0xb93e
   2de44:	ff 36 3c b9          	push   WORD PTR ds:0xb93c
   2de48:	9a 21 0f 28 00       	call   0x28:0xf21
   2de4d:	83 c4 18             	add    sp,0x18
   2de50:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2de53:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2de56:	05 08 00             	add    ax,0x8
   2de59:	99                   	cwd
   2de5a:	50                   	push   ax
   2de5b:	52                   	push   dx
   2de5c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2de60:	a1 ec b9             	mov    ax,ds:0xb9ec
   2de63:	59                   	pop    cx
   2de64:	5b                   	pop    bx
   2de65:	9a 77 14 00 00       	call   0x0:0x1477
   2de6a:	8b d8                	mov    bx,ax
   2de6c:	8e c2                	mov    es,dx
   2de6e:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2de72:	74 7a                	je     0x2deee
   2de74:	68 28 00             	push   0x28
   2de77:	68 07 13             	push   0x1307
   2de7a:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2de7d:	50                   	push   ax
   2de7e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2de81:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2de84:	05 08 00             	add    ax,0x8
   2de87:	99                   	cwd
   2de88:	50                   	push   ax
   2de89:	52                   	push   dx
   2de8a:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2de8e:	a1 ec b9             	mov    ax,ds:0xb9ec
   2de91:	59                   	pop    cx
   2de92:	5b                   	pop    bx
   2de93:	9a 77 14 00 00       	call   0x0:0x1477
   2de98:	8b d8                	mov    bx,ax
   2de9a:	8e c2                	mov    es,dx
   2de9c:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2de9f:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2dea2:	d0 e2                	shl    dl,1
   2dea4:	02 c2                	add    al,dl
   2dea6:	04 37                	add    al,0x37
   2dea8:	50                   	push   ax
   2dea9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2deac:	99                   	cwd
   2dead:	33 c2                	xor    ax,dx
   2deaf:	2b c2                	sub    ax,dx
   2deb1:	04 ff                	add    al,0xff
   2deb3:	d0 e0                	shl    al,1
   2deb5:	fe c0                	inc    al
   2deb7:	50                   	push   ax
   2deb8:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2debc:	a1 6c b9             	mov    ax,ds:0xb96c
   2debf:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2dec3:	50                   	push   ax
   2dec4:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dec7:	f7 2e 76 b9          	imul   WORD PTR ds:0xb976
   2decb:	8b 16 6a b9          	mov    dx,WORD PTR ds:0xb96a
   2decf:	03 d0                	add    dx,ax
   2ded1:	52                   	push   dx
   2ded2:	ff 36 78 b9          	push   WORD PTR ds:0xb978
   2ded6:	ff 36 76 b9          	push   WORD PTR ds:0xb976
   2deda:	a1 74 b9             	mov    ax,ds:0xb974
   2dedd:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2dee1:	50                   	push   ax
   2dee2:	ff 36 72 b9          	push   WORD PTR ds:0xb972
   2dee6:	9a 21 0f 28 00       	call   0x28:0xf21
   2deeb:	83 c4 18             	add    sp,0x18
   2deee:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2def1:	50                   	push   ax
   2def2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2def5:	b4 00                	mov    ah,0x0
   2def7:	bb 04 00             	mov    bx,0x4
   2defa:	99                   	cwd
   2defb:	f7 fb                	idiv   bx
   2defd:	52                   	push   dx
   2defe:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2df01:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2df04:	50                   	push   ax
   2df05:	6a 16                	push   0x16
   2df07:	e9 34 01             	jmp    0x2e03e
   2df0a:	68 28 00             	push   0x28
   2df0d:	68 f1 10             	push   0x10f1
   2df10:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2df13:	50                   	push   ax
   2df14:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2df17:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2df1a:	05 09 00             	add    ax,0x9
   2df1d:	99                   	cwd
   2df1e:	50                   	push   ax
   2df1f:	52                   	push   dx
   2df20:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2df24:	a1 ec b9             	mov    ax,ds:0xb9ec
   2df27:	59                   	pop    cx
   2df28:	5b                   	pop    bx
   2df29:	9a 77 14 00 00       	call   0x0:0x1477
   2df2e:	8b d8                	mov    bx,ax
   2df30:	8e c2                	mov    es,dx
   2df32:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2df35:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2df38:	b6 00                	mov    dh,0x0
   2df3a:	6b d2 05             	imul   dx,dx,0x5
   2df3d:	02 c2                	add    al,dl
   2df3f:	04 23                	add    al,0x23
   2df41:	50                   	push   ax
   2df42:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2df45:	99                   	cwd
   2df46:	33 c2                	xor    ax,dx
   2df48:	2b c2                	sub    ax,dx
   2df4a:	04 ff                	add    al,0xff
   2df4c:	d0 e0                	shl    al,1
   2df4e:	fe c0                	inc    al
   2df50:	50                   	push   ax
   2df51:	a1 09 3b             	mov    ax,ds:0x3b09
   2df54:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2df58:	50                   	push   ax
   2df59:	ff 36 36 b9          	push   WORD PTR ds:0xb936
   2df5d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2df60:	f7 2e 40 b9          	imul   WORD PTR ds:0xb940
   2df64:	8b 16 34 b9          	mov    dx,WORD PTR ds:0xb934
   2df68:	03 d0                	add    dx,ax
   2df6a:	52                   	push   dx
   2df6b:	ff 36 42 b9          	push   WORD PTR ds:0xb942
   2df6f:	ff 36 40 b9          	push   WORD PTR ds:0xb940
   2df73:	ff 36 3e b9          	push   WORD PTR ds:0xb93e
   2df77:	ff 36 3c b9          	push   WORD PTR ds:0xb93c
   2df7b:	9a 21 0f 28 00       	call   0x28:0xf21
   2df80:	83 c4 18             	add    sp,0x18
   2df83:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2df86:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2df89:	05 08 00             	add    ax,0x8
   2df8c:	99                   	cwd
   2df8d:	50                   	push   ax
   2df8e:	52                   	push   dx
   2df8f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2df93:	a1 ec b9             	mov    ax,ds:0xb9ec
   2df96:	59                   	pop    cx
   2df97:	5b                   	pop    bx
   2df98:	9a 77 14 00 00       	call   0x0:0x1477
   2df9d:	8b d8                	mov    bx,ax
   2df9f:	8e c2                	mov    es,dx
   2dfa1:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2dfa5:	74 7e                	je     0x2e025
   2dfa7:	68 28 00             	push   0x28
   2dfaa:	68 61 12             	push   0x1261
   2dfad:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2dfb0:	50                   	push   ax
   2dfb1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2dfb4:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2dfb7:	05 08 00             	add    ax,0x8
   2dfba:	99                   	cwd
   2dfbb:	50                   	push   ax
   2dfbc:	52                   	push   dx
   2dfbd:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2dfc1:	a1 ec b9             	mov    ax,ds:0xb9ec
   2dfc4:	59                   	pop    cx
   2dfc5:	5b                   	pop    bx
   2dfc6:	9a 77 14 00 00       	call   0x0:0x1477
   2dfcb:	8b d8                	mov    bx,ax
   2dfcd:	8e c2                	mov    es,dx
   2dfcf:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2dfd2:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2dfd5:	d0 e2                	shl    dl,1
   2dfd7:	02 c2                	add    al,dl
   2dfd9:	04 37                	add    al,0x37
   2dfdb:	50                   	push   ax
   2dfdc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dfdf:	99                   	cwd
   2dfe0:	33 c2                	xor    ax,dx
   2dfe2:	2b c2                	sub    ax,dx
   2dfe4:	04 ff                	add    al,0xff
   2dfe6:	d0 e0                	shl    al,1
   2dfe8:	fe c0                	inc    al
   2dfea:	50                   	push   ax
   2dfeb:	a1 09 3b             	mov    ax,ds:0x3b09
   2dfee:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2dff2:	50                   	push   ax
   2dff3:	a1 6c b9             	mov    ax,ds:0xb96c
   2dff6:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2dffa:	50                   	push   ax
   2dffb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2dffe:	f7 2e 76 b9          	imul   WORD PTR ds:0xb976
   2e002:	8b 16 6a b9          	mov    dx,WORD PTR ds:0xb96a
   2e006:	03 d0                	add    dx,ax
   2e008:	52                   	push   dx
   2e009:	ff 36 78 b9          	push   WORD PTR ds:0xb978
   2e00d:	ff 36 76 b9          	push   WORD PTR ds:0xb976
   2e011:	a1 74 b9             	mov    ax,ds:0xb974
   2e014:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2e018:	50                   	push   ax
   2e019:	ff 36 72 b9          	push   WORD PTR ds:0xb972
   2e01d:	9a 21 0f 28 00       	call   0x28:0xf21
   2e022:	83 c4 18             	add    sp,0x18
   2e025:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e028:	50                   	push   ax
   2e029:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e02c:	b4 00                	mov    ah,0x0
   2e02e:	bb 04 00             	mov    bx,0x4
   2e031:	99                   	cwd
   2e032:	f7 fb                	idiv   bx
   2e034:	52                   	push   dx
   2e035:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e038:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e03b:	50                   	push   ax
   2e03c:	6a 18                	push   0x18
   2e03e:	0e                   	push   cs
   2e03f:	e8 57 dd             	call   0x2bd99
   2e042:	83 c4 08             	add    sp,0x8
   2e045:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   2e049:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   2e04d:	7d 03                	jge    0x2e052
   2e04f:	e9 07 fd             	jmp    0x2dd59
   2e052:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2e057:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2e05c:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2e05f:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   2e062:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2e065:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2e068:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2e06c:	7d 03                	jge    0x2e071
   2e06e:	e9 3c 02             	jmp    0x2e2ad
   2e071:	a0 eb b9             	mov    al,ds:0xb9eb
   2e074:	b4 00                	mov    ah,0x0
   2e076:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2e079:	7f 03                	jg     0x2e07e
   2e07b:	e9 2f 02             	jmp    0x2e2ad
   2e07e:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2e082:	7d 03                	jge    0x2e087
   2e084:	e9 26 02             	jmp    0x2e2ad
   2e087:	a0 ea b9             	mov    al,ds:0xb9ea
   2e08a:	b4 00                	mov    ah,0x0
   2e08c:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2e08f:	7f 03                	jg     0x2e094
   2e091:	e9 19 02             	jmp    0x2e2ad
   2e094:	68 e0 01             	push   0x1e0
   2e097:	68 41 03             	push   0x341
   2e09a:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e09d:	50                   	push   ax
   2e09e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e0a1:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e0a4:	05 09 00             	add    ax,0x9
   2e0a7:	99                   	cwd
   2e0a8:	50                   	push   ax
   2e0a9:	52                   	push   dx
   2e0aa:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e0ae:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e0b1:	59                   	pop    cx
   2e0b2:	5b                   	pop    bx
   2e0b3:	9a 77 14 00 00       	call   0x0:0x1477
   2e0b8:	8b d8                	mov    bx,ax
   2e0ba:	8e c2                	mov    es,dx
   2e0bc:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e0bf:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2e0c2:	b6 00                	mov    dh,0x0
   2e0c4:	6b d2 05             	imul   dx,dx,0x5
   2e0c7:	02 c2                	add    al,dl
   2e0c9:	04 23                	add    al,0x23
   2e0cb:	50                   	push   ax
   2e0cc:	ff 36 36 b9          	push   WORD PTR ds:0xb936
   2e0d0:	a1 34 b9             	mov    ax,ds:0xb934
   2e0d3:	2b 06 42 b9          	sub    ax,WORD PTR ds:0xb942
   2e0d7:	50                   	push   ax
   2e0d8:	ff 36 42 b9          	push   WORD PTR ds:0xb942
   2e0dc:	a1 42 b9             	mov    ax,ds:0xb942
   2e0df:	d1 e0                	shl    ax,1
   2e0e1:	8b 16 40 b9          	mov    dx,WORD PTR ds:0xb940
   2e0e5:	03 d0                	add    dx,ax
   2e0e7:	52                   	push   dx
   2e0e8:	ff 36 3e b9          	push   WORD PTR ds:0xb93e
   2e0ec:	a1 3c b9             	mov    ax,ds:0xb93c
   2e0ef:	2b 06 42 b9          	sub    ax,WORD PTR ds:0xb942
   2e0f3:	50                   	push   ax
   2e0f4:	9a 30 04 28 00       	call   0x28:0x430
   2e0f9:	83 c4 14             	add    sp,0x14
   2e0fc:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e0ff:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e102:	05 08 00             	add    ax,0x8
   2e105:	99                   	cwd
   2e106:	50                   	push   ax
   2e107:	52                   	push   dx
   2e108:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e10c:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e10f:	59                   	pop    cx
   2e110:	5b                   	pop    bx
   2e111:	9a 77 14 00 00       	call   0x0:0x1477
   2e116:	8b d8                	mov    bx,ax
   2e118:	8e c2                	mov    es,dx
   2e11a:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e11e:	74 69                	je     0x2e189
   2e120:	c6 06 f8 3a 01       	mov    BYTE PTR ds:0x3af8,0x1
   2e125:	68 e0 01             	push   0x1e0
   2e128:	68 41 03             	push   0x341
   2e12b:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e12e:	50                   	push   ax
   2e12f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e132:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e135:	05 08 00             	add    ax,0x8
   2e138:	99                   	cwd
   2e139:	50                   	push   ax
   2e13a:	52                   	push   dx
   2e13b:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e13f:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e142:	59                   	pop    cx
   2e143:	5b                   	pop    bx
   2e144:	9a 77 14 00 00       	call   0x0:0x1477
   2e149:	8b d8                	mov    bx,ax
   2e14b:	8e c2                	mov    es,dx
   2e14d:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e150:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2e153:	d0 e2                	shl    dl,1
   2e155:	02 c2                	add    al,dl
   2e157:	04 37                	add    al,0x37
   2e159:	50                   	push   ax
   2e15a:	6a 00                	push   0x0
   2e15c:	6a 00                	push   0x0
   2e15e:	a1 78 b9             	mov    ax,ds:0xb978
   2e161:	40                   	inc    ax
   2e162:	50                   	push   ax
   2e163:	a1 78 b9             	mov    ax,ds:0xb978
   2e166:	d1 e0                	shl    ax,1
   2e168:	8b 16 76 b9          	mov    dx,WORD PTR ds:0xb976
   2e16c:	03 d0                	add    dx,ax
   2e16e:	52                   	push   dx
   2e16f:	a1 74 b9             	mov    ax,ds:0xb974
   2e172:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2e176:	50                   	push   ax
   2e177:	a1 72 b9             	mov    ax,ds:0xb972
   2e17a:	2b 06 78 b9          	sub    ax,WORD PTR ds:0xb978
   2e17e:	50                   	push   ax
   2e17f:	9a 30 04 28 00       	call   0x28:0x430
   2e184:	83 c4 14             	add    sp,0x14
   2e187:	eb 05                	jmp    0x2e18e
   2e189:	c6 06 f8 3a 00       	mov    BYTE PTR ds:0x3af8,0x0
   2e18e:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e191:	50                   	push   ax
   2e192:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e195:	b4 00                	mov    ah,0x0
   2e197:	bb 04 00             	mov    bx,0x4
   2e19a:	99                   	cwd
   2e19b:	f7 fb                	idiv   bx
   2e19d:	52                   	push   dx
   2e19e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e1a1:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e1a4:	50                   	push   ax
   2e1a5:	6a 17                	push   0x17
   2e1a7:	0e                   	push   cs
   2e1a8:	e8 ee db             	call   0x2bd99
   2e1ab:	83 c4 08             	add    sp,0x8
   2e1ae:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e1b1:	50                   	push   ax
   2e1b2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e1b5:	b4 00                	mov    ah,0x0
   2e1b7:	40                   	inc    ax
   2e1b8:	bb 04 00             	mov    bx,0x4
   2e1bb:	99                   	cwd
   2e1bc:	f7 fb                	idiv   bx
   2e1be:	52                   	push   dx
   2e1bf:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e1c2:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e1c5:	50                   	push   ax
   2e1c6:	6a 1a                	push   0x1a
   2e1c8:	0e                   	push   cs
   2e1c9:	e8 cd db             	call   0x2bd99
   2e1cc:	83 c4 08             	add    sp,0x8
   2e1cf:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2e1d2:	50                   	push   ax
   2e1d3:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e1d6:	b4 00                	mov    ah,0x0
   2e1d8:	05 03 00             	add    ax,0x3
   2e1db:	bb 04 00             	mov    bx,0x4
   2e1de:	99                   	cwd
   2e1df:	f7 fb                	idiv   bx
   2e1e1:	52                   	push   dx
   2e1e2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e1e5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e1e8:	50                   	push   ax
   2e1e9:	6a 19                	push   0x19
   2e1eb:	0e                   	push   cs
   2e1ec:	e8 aa db             	call   0x2bd99
   2e1ef:	83 c4 08             	add    sp,0x8
   2e1f2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e1f5:	b4 00                	mov    ah,0x0
   2e1f7:	05 03 00             	add    ax,0x3
   2e1fa:	bb 04 00             	mov    bx,0x4
   2e1fd:	99                   	cwd
   2e1fe:	f7 fb                	idiv   bx
   2e200:	d1 e2                	shl    dx,1
   2e202:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e205:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e208:	03 c2                	add    ax,dx
   2e20a:	40                   	inc    ax
   2e20b:	99                   	cwd
   2e20c:	50                   	push   ax
   2e20d:	52                   	push   dx
   2e20e:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e212:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e215:	59                   	pop    cx
   2e216:	5b                   	pop    bx
   2e217:	9a 77 14 00 00       	call   0x0:0x1477
   2e21c:	8b d8                	mov    bx,ax
   2e21e:	8e c2                	mov    es,dx
   2e220:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e224:	74 07                	je     0x2e22d
   2e226:	83 0e f9 3a 10       	or     WORD PTR ds:0x3af9,0x10
   2e22b:	eb 05                	jmp    0x2e232
   2e22d:	83 26 f9 3a ef       	and    WORD PTR ds:0x3af9,0xffef
   2e232:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e235:	b4 00                	mov    ah,0x0
   2e237:	40                   	inc    ax
   2e238:	bb 04 00             	mov    bx,0x4
   2e23b:	99                   	cwd
   2e23c:	f7 fb                	idiv   bx
   2e23e:	d1 e2                	shl    dx,1
   2e240:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e243:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e246:	03 c2                	add    ax,dx
   2e248:	40                   	inc    ax
   2e249:	99                   	cwd
   2e24a:	50                   	push   ax
   2e24b:	52                   	push   dx
   2e24c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e250:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e253:	59                   	pop    cx
   2e254:	5b                   	pop    bx
   2e255:	9a 77 14 00 00       	call   0x0:0x1477
   2e25a:	8b d8                	mov    bx,ax
   2e25c:	8e c2                	mov    es,dx
   2e25e:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e262:	74 07                	je     0x2e26b
   2e264:	83 0e f9 3a 20       	or     WORD PTR ds:0x3af9,0x20
   2e269:	eb 05                	jmp    0x2e270
   2e26b:	83 26 f9 3a df       	and    WORD PTR ds:0x3af9,0xffdf
   2e270:	a0 f0 b9             	mov    al,ds:0xb9f0
   2e273:	b4 00                	mov    ah,0x0
   2e275:	bb 04 00             	mov    bx,0x4
   2e278:	99                   	cwd
   2e279:	f7 fb                	idiv   bx
   2e27b:	d1 e2                	shl    dx,1
   2e27d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e280:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2e283:	03 c2                	add    ax,dx
   2e285:	40                   	inc    ax
   2e286:	99                   	cwd
   2e287:	50                   	push   ax
   2e288:	52                   	push   dx
   2e289:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e28d:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e290:	59                   	pop    cx
   2e291:	5b                   	pop    bx
   2e292:	9a 77 14 00 00       	call   0x0:0x1477
   2e297:	8b d8                	mov    bx,ax
   2e299:	8e c2                	mov    es,dx
   2e29b:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e29f:	74 07                	je     0x2e2a8
   2e2a1:	83 0e f9 3a 40       	or     WORD PTR ds:0x3af9,0x40
   2e2a6:	eb 05                	jmp    0x2e2ad
   2e2a8:	83 26 f9 3a bf       	and    WORD PTR ds:0x3af9,0xffbf
   2e2ad:	c9                   	leave
   2e2ae:	cb                   	retf
   2e2af:	55                   	push   bp
   2e2b0:	8b ec                	mov    bp,sp
   2e2b2:	83 ec 02             	sub    sp,0x2
   2e2b5:	c7 46 fe fd ff       	mov    WORD PTR [bp-0x2],0xfffd
   2e2ba:	e9 95 00             	jmp    0x2e352
   2e2bd:	68 28 00             	push   0x28
   2e2c0:	68 85 11             	push   0x1185
   2e2c3:	6a 00                	push   0x0
   2e2c5:	6a 24                	push   0x24
   2e2c7:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e2ca:	99                   	cwd
   2e2cb:	33 c2                	xor    ax,dx
   2e2cd:	2b c2                	sub    ax,dx
   2e2cf:	04 ff                	add    al,0xff
   2e2d1:	d0 e0                	shl    al,1
   2e2d3:	fe c0                	inc    al
   2e2d5:	50                   	push   ax
   2e2d6:	6a 00                	push   0x0
   2e2d8:	ff 36 24 b9          	push   WORD PTR ds:0xb924
   2e2dc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e2df:	f7 2e 2e b9          	imul   WORD PTR ds:0xb92e
   2e2e3:	8b 16 22 b9          	mov    dx,WORD PTR ds:0xb922
   2e2e7:	03 d0                	add    dx,ax
   2e2e9:	52                   	push   dx
   2e2ea:	ff 36 30 b9          	push   WORD PTR ds:0xb930
   2e2ee:	ff 36 2e b9          	push   WORD PTR ds:0xb92e
   2e2f2:	ff 36 2c b9          	push   WORD PTR ds:0xb92c
   2e2f6:	ff 36 2a b9          	push   WORD PTR ds:0xb92a
   2e2fa:	9a 21 0f 28 00       	call   0x28:0xf21
   2e2ff:	83 c4 18             	add    sp,0x18
   2e302:	68 28 00             	push   0x28
   2e305:	68 07 13             	push   0x1307
   2e308:	6a 00                	push   0x0
   2e30a:	6a 38                	push   0x38
   2e30c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e30f:	99                   	cwd
   2e310:	33 c2                	xor    ax,dx
   2e312:	2b c2                	sub    ax,dx
   2e314:	04 ff                	add    al,0xff
   2e316:	d0 e0                	shl    al,1
   2e318:	fe c0                	inc    al
   2e31a:	50                   	push   ax
   2e31b:	6a 00                	push   0x0
   2e31d:	a1 5a b9             	mov    ax,ds:0xb95a
   2e320:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2e324:	50                   	push   ax
   2e325:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e328:	f7 2e 64 b9          	imul   WORD PTR ds:0xb964
   2e32c:	8b 16 58 b9          	mov    dx,WORD PTR ds:0xb958
   2e330:	03 d0                	add    dx,ax
   2e332:	52                   	push   dx
   2e333:	ff 36 66 b9          	push   WORD PTR ds:0xb966
   2e337:	ff 36 64 b9          	push   WORD PTR ds:0xb964
   2e33b:	a1 62 b9             	mov    ax,ds:0xb962
   2e33e:	2b 06 66 b9          	sub    ax,WORD PTR ds:0xb966
   2e342:	50                   	push   ax
   2e343:	ff 36 60 b9          	push   WORD PTR ds:0xb960
   2e347:	9a 21 0f 28 00       	call   0x28:0xf21
   2e34c:	83 c4 18             	add    sp,0x18
   2e34f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2e352:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2e356:	7d 03                	jge    0x2e35b
   2e358:	e9 62 ff             	jmp    0x2e2bd
   2e35b:	9a d7 29 00 00       	call   0x0:0x29d7
   2e360:	c9                   	leave
   2e361:	cb                   	retf
   2e362:	55                   	push   bp
   2e363:	8b ec                	mov    bp,sp
   2e365:	83 ec 12             	sub    sp,0x12
   2e368:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2e36d:	68 fe 00             	push   0xfe
   2e370:	68 00 fa             	push   0xfa00
   2e373:	6a 00                	push   0x0
   2e375:	9a dc 16 28 00       	call   0x28:0x16dc
   2e37a:	83 c4 06             	add    sp,0x6
   2e37d:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2e382:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   2e387:	e9 64 02             	jmp    0x2e5ee
   2e38a:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2e38f:	e9 4c 02             	jmp    0x2e5de
   2e392:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e395:	40                   	inc    ax
   2e396:	99                   	cwd
   2e397:	50                   	push   ax
   2e398:	52                   	push   dx
   2e399:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e39d:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e3a0:	59                   	pop    cx
   2e3a1:	5b                   	pop    bx
   2e3a2:	9a 77 14 00 00       	call   0x0:0x1477
   2e3a7:	8b d8                	mov    bx,ax
   2e3a9:	8e c2                	mov    es,dx
   2e3ab:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e3af:	74 6a                	je     0x2e41b
   2e3b1:	6a 00                	push   0x0
   2e3b3:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e3b6:	40                   	inc    ax
   2e3b7:	99                   	cwd
   2e3b8:	50                   	push   ax
   2e3b9:	52                   	push   dx
   2e3ba:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e3be:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e3c1:	59                   	pop    cx
   2e3c2:	5b                   	pop    bx
   2e3c3:	9a 77 14 00 00       	call   0x0:0x1477
   2e3c8:	8b d8                	mov    bx,ax
   2e3ca:	8e c2                	mov    es,dx
   2e3cc:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e3cf:	04 ff                	add    al,0xff
   2e3d1:	c0 e0 02             	shl    al,0x2
   2e3d4:	50                   	push   ax
   2e3d5:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e3d8:	99                   	cwd
   2e3d9:	50                   	push   ax
   2e3da:	52                   	push   dx
   2e3db:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e3df:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e3e2:	59                   	pop    cx
   2e3e3:	5b                   	pop    bx
   2e3e4:	9a 77 14 00 00       	call   0x0:0x1477
   2e3e9:	8b d8                	mov    bx,ax
   2e3eb:	8e c2                	mov    es,dx
   2e3ed:	58                   	pop    ax
   2e3ee:	26 02 07             	add    al,BYTE PTR es:[bx]
   2e3f1:	04 80                	add    al,0x80
   2e3f3:	50                   	push   ax
   2e3f4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e3f7:	6b c0 05             	imul   ax,ax,0x5
   2e3fa:	50                   	push   ax
   2e3fb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e3fe:	6b c0 05             	imul   ax,ax,0x5
   2e401:	05 04 00             	add    ax,0x4
   2e404:	50                   	push   ax
   2e405:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e408:	6b c0 05             	imul   ax,ax,0x5
   2e40b:	50                   	push   ax
   2e40c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e40f:	6b c0 05             	imul   ax,ax,0x5
   2e412:	50                   	push   ax
   2e413:	9a f5 13 28 00       	call   0x28:0x13f5
   2e418:	83 c4 0c             	add    sp,0xc
   2e41b:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e41e:	05 03 00             	add    ax,0x3
   2e421:	99                   	cwd
   2e422:	50                   	push   ax
   2e423:	52                   	push   dx
   2e424:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e428:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e42b:	59                   	pop    cx
   2e42c:	5b                   	pop    bx
   2e42d:	9a 77 14 00 00       	call   0x0:0x1477
   2e432:	8b d8                	mov    bx,ax
   2e434:	8e c2                	mov    es,dx
   2e436:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e43a:	74 75                	je     0x2e4b1
   2e43c:	6a 00                	push   0x0
   2e43e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e441:	05 03 00             	add    ax,0x3
   2e444:	99                   	cwd
   2e445:	50                   	push   ax
   2e446:	52                   	push   dx
   2e447:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e44b:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e44e:	59                   	pop    cx
   2e44f:	5b                   	pop    bx
   2e450:	9a 77 14 00 00       	call   0x0:0x1477
   2e455:	8b d8                	mov    bx,ax
   2e457:	8e c2                	mov    es,dx
   2e459:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e45c:	04 ff                	add    al,0xff
   2e45e:	c0 e0 02             	shl    al,0x2
   2e461:	50                   	push   ax
   2e462:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e465:	05 02 00             	add    ax,0x2
   2e468:	99                   	cwd
   2e469:	50                   	push   ax
   2e46a:	52                   	push   dx
   2e46b:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e46f:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e472:	59                   	pop    cx
   2e473:	5b                   	pop    bx
   2e474:	9a 77 14 00 00       	call   0x0:0x1477
   2e479:	8b d8                	mov    bx,ax
   2e47b:	8e c2                	mov    es,dx
   2e47d:	58                   	pop    ax
   2e47e:	26 02 07             	add    al,BYTE PTR es:[bx]
   2e481:	04 80                	add    al,0x80
   2e483:	50                   	push   ax
   2e484:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e487:	6b c0 05             	imul   ax,ax,0x5
   2e48a:	05 04 00             	add    ax,0x4
   2e48d:	50                   	push   ax
   2e48e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e491:	6b c0 05             	imul   ax,ax,0x5
   2e494:	05 04 00             	add    ax,0x4
   2e497:	50                   	push   ax
   2e498:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e49b:	6b c0 05             	imul   ax,ax,0x5
   2e49e:	50                   	push   ax
   2e49f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e4a2:	6b c0 05             	imul   ax,ax,0x5
   2e4a5:	05 04 00             	add    ax,0x4
   2e4a8:	50                   	push   ax
   2e4a9:	9a f5 13 28 00       	call   0x28:0x13f5
   2e4ae:	83 c4 0c             	add    sp,0xc
   2e4b1:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e4b4:	05 05 00             	add    ax,0x5
   2e4b7:	99                   	cwd
   2e4b8:	50                   	push   ax
   2e4b9:	52                   	push   dx
   2e4ba:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e4be:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e4c1:	59                   	pop    cx
   2e4c2:	5b                   	pop    bx
   2e4c3:	9a 77 14 00 00       	call   0x0:0x1477
   2e4c8:	8b d8                	mov    bx,ax
   2e4ca:	8e c2                	mov    es,dx
   2e4cc:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e4d0:	74 75                	je     0x2e547
   2e4d2:	6a 00                	push   0x0
   2e4d4:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e4d7:	05 05 00             	add    ax,0x5
   2e4da:	99                   	cwd
   2e4db:	50                   	push   ax
   2e4dc:	52                   	push   dx
   2e4dd:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e4e1:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e4e4:	59                   	pop    cx
   2e4e5:	5b                   	pop    bx
   2e4e6:	9a 77 14 00 00       	call   0x0:0x1477
   2e4eb:	8b d8                	mov    bx,ax
   2e4ed:	8e c2                	mov    es,dx
   2e4ef:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e4f2:	04 ff                	add    al,0xff
   2e4f4:	c0 e0 02             	shl    al,0x2
   2e4f7:	50                   	push   ax
   2e4f8:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e4fb:	05 04 00             	add    ax,0x4
   2e4fe:	99                   	cwd
   2e4ff:	50                   	push   ax
   2e500:	52                   	push   dx
   2e501:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e505:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e508:	59                   	pop    cx
   2e509:	5b                   	pop    bx
   2e50a:	9a 77 14 00 00       	call   0x0:0x1477
   2e50f:	8b d8                	mov    bx,ax
   2e511:	8e c2                	mov    es,dx
   2e513:	58                   	pop    ax
   2e514:	26 02 07             	add    al,BYTE PTR es:[bx]
   2e517:	04 80                	add    al,0x80
   2e519:	50                   	push   ax
   2e51a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e51d:	6b c0 05             	imul   ax,ax,0x5
   2e520:	05 04 00             	add    ax,0x4
   2e523:	50                   	push   ax
   2e524:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e527:	6b c0 05             	imul   ax,ax,0x5
   2e52a:	05 04 00             	add    ax,0x4
   2e52d:	50                   	push   ax
   2e52e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e531:	6b c0 05             	imul   ax,ax,0x5
   2e534:	05 04 00             	add    ax,0x4
   2e537:	50                   	push   ax
   2e538:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e53b:	6b c0 05             	imul   ax,ax,0x5
   2e53e:	50                   	push   ax
   2e53f:	9a f5 13 28 00       	call   0x28:0x13f5
   2e544:	83 c4 0c             	add    sp,0xc
   2e547:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e54a:	05 07 00             	add    ax,0x7
   2e54d:	99                   	cwd
   2e54e:	50                   	push   ax
   2e54f:	52                   	push   dx
   2e550:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e554:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e557:	59                   	pop    cx
   2e558:	5b                   	pop    bx
   2e559:	9a 77 14 00 00       	call   0x0:0x1477
   2e55e:	8b d8                	mov    bx,ax
   2e560:	8e c2                	mov    es,dx
   2e562:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2e566:	74 6f                	je     0x2e5d7
   2e568:	6a 00                	push   0x0
   2e56a:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e56d:	05 07 00             	add    ax,0x7
   2e570:	99                   	cwd
   2e571:	50                   	push   ax
   2e572:	52                   	push   dx
   2e573:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e577:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e57a:	59                   	pop    cx
   2e57b:	5b                   	pop    bx
   2e57c:	9a 77 14 00 00       	call   0x0:0x1477
   2e581:	8b d8                	mov    bx,ax
   2e583:	8e c2                	mov    es,dx
   2e585:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2e588:	04 ff                	add    al,0xff
   2e58a:	c0 e0 02             	shl    al,0x2
   2e58d:	50                   	push   ax
   2e58e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2e591:	05 06 00             	add    ax,0x6
   2e594:	99                   	cwd
   2e595:	50                   	push   ax
   2e596:	52                   	push   dx
   2e597:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2e59b:	a1 ec b9             	mov    ax,ds:0xb9ec
   2e59e:	59                   	pop    cx
   2e59f:	5b                   	pop    bx
   2e5a0:	9a 77 14 00 00       	call   0x0:0x1477
   2e5a5:	8b d8                	mov    bx,ax
   2e5a7:	8e c2                	mov    es,dx
   2e5a9:	58                   	pop    ax
   2e5aa:	26 02 07             	add    al,BYTE PTR es:[bx]
   2e5ad:	04 80                	add    al,0x80
   2e5af:	50                   	push   ax
   2e5b0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e5b3:	6b c0 05             	imul   ax,ax,0x5
   2e5b6:	05 04 00             	add    ax,0x4
   2e5b9:	50                   	push   ax
   2e5ba:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e5bd:	6b c0 05             	imul   ax,ax,0x5
   2e5c0:	50                   	push   ax
   2e5c1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2e5c4:	6b c0 05             	imul   ax,ax,0x5
   2e5c7:	50                   	push   ax
   2e5c8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2e5cb:	6b c0 05             	imul   ax,ax,0x5
   2e5ce:	50                   	push   ax
   2e5cf:	9a f5 13 28 00       	call   0x28:0x13f5
   2e5d4:	83 c4 0c             	add    sp,0xc
   2e5d7:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2e5da:	83 46 fa 0f          	add    WORD PTR [bp-0x6],0xf
   2e5de:	a0 eb b9             	mov    al,ds:0xb9eb
   2e5e1:	b4 00                	mov    ah,0x0
   2e5e3:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   2e5e6:	7e 03                	jle    0x2e5eb
   2e5e8:	e9 a7 fd             	jmp    0x2e392
   2e5eb:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   2e5ee:	a0 ea b9             	mov    al,ds:0xb9ea
   2e5f1:	b4 00                	mov    ah,0x0
   2e5f3:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   2e5f6:	7e 03                	jle    0x2e5fb
   2e5f8:	e9 8f fd             	jmp    0x2e38a
   2e5fb:	6a 00                	push   0x0
   2e5fd:	68 ff 00             	push   0xff
   2e600:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2e603:	6b c0 05             	imul   ax,ax,0x5
   2e606:	8b 16 c4 b9          	mov    dx,WORD PTR ds:0xb9c4
   2e60a:	d1 e2                	shl    dx,1
   2e60c:	03 c2                	add    ax,dx
   2e60e:	05 03 00             	add    ax,0x3
   2e611:	50                   	push   ax
   2e612:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2e615:	6b c0 05             	imul   ax,ax,0x5
   2e618:	8b 16 c6 b9          	mov    dx,WORD PTR ds:0xb9c6
   2e61c:	d1 e2                	shl    dx,1
   2e61e:	03 c2                	add    ax,dx
   2e620:	05 03 00             	add    ax,0x3
   2e623:	50                   	push   ax
   2e624:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2e627:	6b c0 05             	imul   ax,ax,0x5
   2e62a:	05 03 00             	add    ax,0x3
   2e62d:	50                   	push   ax
   2e62e:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2e631:	6b c0 05             	imul   ax,ax,0x5
   2e634:	05 03 00             	add    ax,0x3
   2e637:	50                   	push   ax
   2e638:	9a f5 13 28 00       	call   0x28:0x13f5
   2e63d:	83 c4 0c             	add    sp,0xc
   2e640:	ff 36 f1 b9          	push   WORD PTR ds:0xb9f1
   2e644:	ff 36 f3 b9          	push   WORD PTR ds:0xb9f3
   2e648:	1e                   	push   ds
   2e649:	68 0a 3d             	push   0x3d0a
   2e64c:	16                   	push   ss
   2e64d:	8d 46 ee             	lea    ax,[bp-0x12]
   2e650:	50                   	push   ax
   2e651:	9a b4 48 00 00       	call   0x0:0x48b4
   2e656:	83 c4 0c             	add    sp,0xc
   2e659:	3d 0c 00             	cmp    ax,0xc
   2e65c:	7c 01                	jl     0x2e65f
   2e65e:	90                   	nop
   2e65f:	6a 05                	push   0x5
   2e661:	68 ff 00             	push   0xff
   2e664:	16                   	push   ss
   2e665:	8d 46 ee             	lea    ax,[bp-0x12]
   2e668:	50                   	push   ax
   2e669:	68 b9 00             	push   0xb9
   2e66c:	6a 0a                	push   0xa
   2e66e:	6a 00                	push   0x0
   2e670:	9a 34 00 80 01       	call   0x180:0x34
   2e675:	83 c4 0e             	add    sp,0xe
   2e678:	c9                   	leave
   2e679:	cb                   	retf
   2e67a:	55                   	push   bp
   2e67b:	8b ec                	mov    bp,sp
   2e67d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e680:	26 ff 87 90 00       	inc    WORD PTR es:[bx+0x90]
   2e685:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e688:	26 ff 87 44 01       	inc    WORD PTR es:[bx+0x144]
   2e68d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e690:	26 ff 87 82 00       	inc    WORD PTR es:[bx+0x82]
   2e695:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e698:	26 ff 87 4a 01       	inc    WORD PTR es:[bx+0x14a]
   2e69d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6a0:	26 ff 47 16          	inc    WORD PTR es:[bx+0x16]
   2e6a4:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6a7:	26 ff 47 4c          	inc    WORD PTR es:[bx+0x4c]
   2e6ab:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6ae:	26 ff 8f c6 00       	dec    WORD PTR es:[bx+0xc6]
   2e6b3:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6b6:	26 ff 8f 7a 01       	dec    WORD PTR es:[bx+0x17a]
   2e6bb:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6be:	26 ff 8f d8 00       	dec    WORD PTR es:[bx+0xd8]
   2e6c3:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6c6:	26 ff 87 dc 00       	inc    WORD PTR es:[bx+0xdc]
   2e6cb:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6ce:	26 ff 8f 44 01       	dec    WORD PTR es:[bx+0x144]
   2e6d3:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6d6:	26 ff 87 ca 00       	inc    WORD PTR es:[bx+0xca]
   2e6db:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6de:	26 ff 8f 90 00       	dec    WORD PTR es:[bx+0x90]
   2e6e3:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6e6:	26 ff 87 94 00       	inc    WORD PTR es:[bx+0x94]
   2e6eb:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6ee:	26 ff 4f 6c          	dec    WORD PTR es:[bx+0x6c]
   2e6f2:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6f5:	26 ff 8f 32 01       	dec    WORD PTR es:[bx+0x132]
   2e6fa:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e6fd:	26 ff 87 36 01       	inc    WORD PTR es:[bx+0x136]
   2e702:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e705:	26 ff 87 7e 01       	inc    WORD PTR es:[bx+0x17e]
   2e70a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e70d:	26 ff 87 58 01       	inc    WORD PTR es:[bx+0x158]
   2e712:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e715:	26 ff 87 6a 01       	inc    WORD PTR es:[bx+0x16a]
   2e71a:	5d                   	pop    bp
   2e71b:	cb                   	retf
   2e71c:	55                   	push   bp
   2e71d:	8b ec                	mov    bp,sp
   2e71f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e722:	26 ff 87 90 00       	inc    WORD PTR es:[bx+0x90]
   2e727:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e72a:	26 ff 87 82 00       	inc    WORD PTR es:[bx+0x82]
   2e72f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e732:	26 ff 87 4a 01       	inc    WORD PTR es:[bx+0x14a]
   2e737:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e73a:	26 ff 47 16          	inc    WORD PTR es:[bx+0x16]
   2e73e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e741:	26 ff 47 4c          	inc    WORD PTR es:[bx+0x4c]
   2e745:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e748:	26 ff 8f c6 00       	dec    WORD PTR es:[bx+0xc6]
   2e74d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e750:	26 ff 8f 7a 01       	dec    WORD PTR es:[bx+0x17a]
   2e755:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e758:	26 ff 8f d8 00       	dec    WORD PTR es:[bx+0xd8]
   2e75d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e760:	26 ff 87 dc 00       	inc    WORD PTR es:[bx+0xdc]
   2e765:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e768:	26 ff 87 ca 00       	inc    WORD PTR es:[bx+0xca]
   2e76d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e770:	26 ff 8f 90 00       	dec    WORD PTR es:[bx+0x90]
   2e775:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e778:	26 ff 87 94 00       	inc    WORD PTR es:[bx+0x94]
   2e77d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e780:	26 ff 4f 6c          	dec    WORD PTR es:[bx+0x6c]
   2e784:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e787:	26 ff 8f 32 01       	dec    WORD PTR es:[bx+0x132]
   2e78c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e78f:	26 ff 87 36 01       	inc    WORD PTR es:[bx+0x136]
   2e794:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e797:	26 ff 87 7e 01       	inc    WORD PTR es:[bx+0x17e]
   2e79c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e79f:	26 ff 87 58 01       	inc    WORD PTR es:[bx+0x158]
   2e7a4:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7a7:	26 ff 87 6a 01       	inc    WORD PTR es:[bx+0x16a]
   2e7ac:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7af:	26 ff 87 12 01       	inc    WORD PTR es:[bx+0x112]
   2e7b4:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7b7:	26 ff 8f e8 01       	dec    WORD PTR es:[bx+0x1e8]
   2e7bc:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7bf:	26 ff 8f fa 01       	dec    WORD PTR es:[bx+0x1fa]
   2e7c4:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7c7:	26 ff 8f 0a 02       	dec    WORD PTR es:[bx+0x20a]
   2e7cc:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7cf:	26 83 af 46 01 02    	sub    WORD PTR es:[bx+0x146],0x2
   2e7d5:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7d8:	26 83 af 7c 01 02    	sub    WORD PTR es:[bx+0x17c],0x2
   2e7de:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7e1:	26 83 af 80 00 02    	sub    WORD PTR es:[bx+0x80],0x2
   2e7e7:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7ea:	26 83 af da 00 02    	sub    WORD PTR es:[bx+0xda],0x2
   2e7f0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7f3:	26 83 87 4a 01 02    	add    WORD PTR es:[bx+0x14a],0x2
   2e7f9:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e7fc:	26 83 87 80 01 02    	add    WORD PTR es:[bx+0x180],0x2
   2e802:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e805:	26 83 af 94 00 02    	sub    WORD PTR es:[bx+0x94],0x2
   2e80b:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e80e:	26 83 af ca 00 02    	sub    WORD PTR es:[bx+0xca],0x2
   2e814:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e817:	26 ff 87 96 00       	inc    WORD PTR es:[bx+0x96]
   2e81c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e81f:	26 ff 87 cc 00       	inc    WORD PTR es:[bx+0xcc]
   2e824:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e827:	26 ff 8f 42 02       	dec    WORD PTR es:[bx+0x242]
   2e82c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e82f:	26 ff 8f 40 02       	dec    WORD PTR es:[bx+0x240]
   2e834:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e837:	26 ff 87 1c 02       	inc    WORD PTR es:[bx+0x21c]
   2e83c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e83f:	26 ff 87 1e 02       	inc    WORD PTR es:[bx+0x21e]
   2e844:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e847:	26 83 af 66 02 04    	sub    WORD PTR es:[bx+0x266],0x4
   2e84d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e850:	26 83 af 78 02 04    	sub    WORD PTR es:[bx+0x278],0x4
   2e856:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e859:	26 83 87 6a 02 02    	add    WORD PTR es:[bx+0x26a],0x2
   2e85f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e862:	26 83 87 7c 02 02    	add    WORD PTR es:[bx+0x27c],0x2
   2e868:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e86b:	26 83 af 76 02 04    	sub    WORD PTR es:[bx+0x276],0x4
   2e871:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e874:	26 83 6f 16 02       	sub    WORD PTR es:[bx+0x16],0x2
   2e879:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e87c:	26 ff 87 a6 00       	inc    WORD PTR es:[bx+0xa6]
   2e881:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e884:	26 ff 87 b8 00       	inc    WORD PTR es:[bx+0xb8]
   2e889:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e88c:	26 ff 8f 92 00       	dec    WORD PTR es:[bx+0x92]
   2e891:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e894:	26 ff 8f c8 00       	dec    WORD PTR es:[bx+0xc8]
   2e899:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e89c:	26 ff 87 98 01       	inc    WORD PTR es:[bx+0x198]
   2e8a1:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   2e8a4:	26 ff 87 ce 01       	inc    WORD PTR es:[bx+0x1ce]
   2e8a9:	5d                   	pop    bp
   2e8aa:	cb                   	retf
   2e8ab:	55                   	push   bp
   2e8ac:	8b ec                	mov    bp,sp
   2e8ae:	83 ec 22             	sub    sp,0x22
   2e8b1:	b8 88 01             	mov    ax,0x188
   2e8b4:	8e c0                	mov    es,ax
   2e8b6:	26 83 3e 74 6d 00    	cmp    WORD PTR es:0x6d74,0x0
   2e8bc:	75 0b                	jne    0x2e8c9
   2e8be:	6a 01                	push   0x1
   2e8c0:	9a 2f 00 18 01       	call   0x118:0x2f
   2e8c5:	59                   	pop    cx
   2e8c6:	e9 47 05             	jmp    0x2ee10
   2e8c9:	80 3e f8 3a 00       	cmp    BYTE PTR ds:0x3af8,0x0
   2e8ce:	74 0e                	je     0x2e8de
   2e8d0:	a1 01 3b             	mov    ax,ds:0x3b01
   2e8d3:	bb 03 00             	mov    bx,0x3
   2e8d6:	99                   	cwd
   2e8d7:	f7 fb                	idiv   bx
   2e8d9:	05 fd ff             	add    ax,0xfffd
   2e8dc:	eb 0c                	jmp    0x2e8ea
   2e8de:	a1 01 3b             	mov    ax,ds:0x3b01
   2e8e1:	bb 03 00             	mov    bx,0x3
   2e8e4:	99                   	cwd
   2e8e5:	f7 fb                	idiv   bx
   2e8e7:	05 02 00             	add    ax,0x2
   2e8ea:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   2e8ed:	a1 01 3b             	mov    ax,ds:0x3b01
   2e8f0:	bb 03 00             	mov    bx,0x3
   2e8f3:	99                   	cwd
   2e8f4:	f7 fb                	idiv   bx
   2e8f6:	05 fd ff             	add    ax,0xfffd
   2e8f9:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   2e8fc:	6a 01                	push   0x1
   2e8fe:	90                   	nop
   2e8ff:	0e                   	push   cs
   2e900:	e8 51 2b             	call   0x21454
   2e903:	59                   	pop    cx
   2e904:	6a 0e                	push   0xe
   2e906:	90                   	nop
   2e907:	0e                   	push   cs
   2e908:	e8 f9 2a             	call   0x21404
   2e90b:	59                   	pop    cx
   2e90c:	a0 06 3b             	mov    al,ds:0x3b06
   2e90f:	b4 00                	mov    ah,0x0
   2e911:	0b c0                	or     ax,ax
   2e913:	74 03                	je     0x2e918
   2e915:	e9 30 01             	jmp    0x2ea48
   2e918:	68 fe 00             	push   0xfe
   2e91b:	a1 01 3b             	mov    ax,ds:0x3b01
   2e91e:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2e922:	50                   	push   ax
   2e923:	6a 43                	push   0x43
   2e925:	9a dc 16 28 00       	call   0x28:0x16dc
   2e92a:	83 c4 06             	add    sp,0x6
   2e92d:	68 fe 00             	push   0xfe
   2e930:	a1 01 3b             	mov    ax,ds:0x3b01
   2e933:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2e937:	50                   	push   ax
   2e938:	6a 44                	push   0x44
   2e93a:	9a dc 16 28 00       	call   0x28:0x16dc
   2e93f:	83 c4 06             	add    sp,0x6
   2e942:	6a 44                	push   0x44
   2e944:	0e                   	push   cs
   2e945:	e8 c5 d7             	call   0x2c10d
   2e948:	59                   	pop    cx
   2e949:	6a 44                	push   0x44
   2e94b:	0e                   	push   cs
   2e94c:	e8 aa de             	call   0x2c7f9
   2e94f:	59                   	pop    cx
   2e950:	6a 43                	push   0x43
   2e952:	0e                   	push   cs
   2e953:	e8 2f ea             	call   0x2d385
   2e956:	59                   	pop    cx
   2e957:	68 e0 01             	push   0x1e0
   2e95a:	68 41 03             	push   0x341
   2e95d:	6a 44                	push   0x44
   2e95f:	6a 43                	push   0x43
   2e961:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2e964:	6a 00                	push   0x0
   2e966:	a1 01 3b             	mov    ax,ds:0x3b01
   2e969:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2e96c:	2b 46 e2             	sub    ax,WORD PTR [bp-0x1e]
   2e96f:	50                   	push   ax
   2e970:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2e974:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2e977:	6a 00                	push   0x0
   2e979:	9a 30 04 28 00       	call   0x28:0x430
   2e97e:	83 c4 14             	add    sp,0x14
   2e981:	68 fe 00             	push   0xfe
   2e984:	6a 43                	push   0x43
   2e986:	a1 01 3b             	mov    ax,ds:0x3b01
   2e989:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2e98c:	2b 46 e2             	sub    ax,WORD PTR [bp-0x1e]
   2e98f:	50                   	push   ax
   2e990:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2e994:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2e997:	6a 00                	push   0x0
   2e999:	9a 08 09 28 00       	call   0x28:0x908
   2e99e:	83 c4 0c             	add    sp,0xc
   2e9a1:	6a 43                	push   0x43
   2e9a3:	0e                   	push   cs
   2e9a4:	e8 69 f1             	call   0x2db10
   2e9a7:	59                   	pop    cx
   2e9a8:	68 e0 01             	push   0x1e0
   2e9ab:	68 41 03             	push   0x341
   2e9ae:	6a 44                	push   0x44
   2e9b0:	6a 43                	push   0x43
   2e9b2:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2e9b5:	a1 84 b8             	mov    ax,ds:0xb884
   2e9b8:	6b c0 03             	imul   ax,ax,0x3
   2e9bb:	bb 04 00             	mov    bx,0x4
   2e9be:	99                   	cwd
   2e9bf:	f7 fb                	idiv   bx
   2e9c1:	8b 16 80 b8          	mov    dx,WORD PTR ds:0xb880
   2e9c5:	03 d0                	add    dx,ax
   2e9c7:	52                   	push   dx
   2e9c8:	a1 01 3b             	mov    ax,ds:0x3b01
   2e9cb:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2e9ce:	2b 46 e2             	sub    ax,WORD PTR [bp-0x1e]
   2e9d1:	50                   	push   ax
   2e9d2:	a1 84 b8             	mov    ax,ds:0xb884
   2e9d5:	d1 e0                	shl    ax,1
   2e9d7:	bb 04 00             	mov    bx,0x4
   2e9da:	99                   	cwd
   2e9db:	f7 fb                	idiv   bx
   2e9dd:	8b 16 3c b8          	mov    dx,WORD PTR ds:0xb83c
   2e9e1:	03 d0                	add    dx,ax
   2e9e3:	52                   	push   dx
   2e9e4:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2e9e7:	a1 84 b8             	mov    ax,ds:0xb884
   2e9ea:	6b c0 03             	imul   ax,ax,0x3
   2e9ed:	bb 04 00             	mov    bx,0x4
   2e9f0:	99                   	cwd
   2e9f1:	f7 fb                	idiv   bx
   2e9f3:	8b 16 80 b8          	mov    dx,WORD PTR ds:0xb880
   2e9f7:	03 d0                	add    dx,ax
   2e9f9:	52                   	push   dx
   2e9fa:	9a 30 04 28 00       	call   0x28:0x430
   2e9ff:	83 c4 14             	add    sp,0x14
   2ea02:	68 fe 00             	push   0xfe
   2ea05:	6a 43                	push   0x43
   2ea07:	a1 01 3b             	mov    ax,ds:0x3b01
   2ea0a:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2ea0d:	2b 46 e2             	sub    ax,WORD PTR [bp-0x1e]
   2ea10:	50                   	push   ax
   2ea11:	a1 84 b8             	mov    ax,ds:0xb884
   2ea14:	d1 e0                	shl    ax,1
   2ea16:	bb 04 00             	mov    bx,0x4
   2ea19:	99                   	cwd
   2ea1a:	f7 fb                	idiv   bx
   2ea1c:	8b 16 3c b8          	mov    dx,WORD PTR ds:0xb83c
   2ea20:	03 d0                	add    dx,ax
   2ea22:	52                   	push   dx
   2ea23:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2ea26:	a1 84 b8             	mov    ax,ds:0xb884
   2ea29:	6b c0 03             	imul   ax,ax,0x3
   2ea2c:	bb 04 00             	mov    bx,0x4
   2ea2f:	99                   	cwd
   2ea30:	f7 fb                	idiv   bx
   2ea32:	8b 16 80 b8          	mov    dx,WORD PTR ds:0xb880
   2ea36:	03 d0                	add    dx,ax
   2ea38:	52                   	push   dx
   2ea39:	9a 08 09 28 00       	call   0x28:0x908
   2ea3e:	83 c4 0c             	add    sp,0xc
   2ea41:	6a 43                	push   0x43
   2ea43:	0e                   	push   cs
   2ea44:	e8 cb f2             	call   0x2dd12
   2ea47:	59                   	pop    cx
   2ea48:	6a 01                	push   0x1
   2ea4a:	90                   	nop
   2ea4b:	0e                   	push   cs
   2ea4c:	e8 b5 29             	call   0x21404
   2ea4f:	59                   	pop    cx
   2ea50:	f7 06 f9 3a 10 00    	test   WORD PTR ds:0x3af9,0x10
   2ea56:	75 08                	jne    0x2ea60
   2ea58:	f7 06 f9 3a 04 00    	test   WORD PTR ds:0x3af9,0x4
   2ea5e:	74 10                	je     0x2ea70
   2ea60:	f7 06 f9 3a 02 00    	test   WORD PTR ds:0x3af9,0x2
   2ea66:	75 10                	jne    0x2ea78
   2ea68:	f7 06 f9 3a 08 00    	test   WORD PTR ds:0x3af9,0x8
   2ea6e:	75 08                	jne    0x2ea78
   2ea70:	f7 06 f9 3a 40 00    	test   WORD PTR ds:0x3af9,0x40
   2ea76:	74 0b                	je     0x2ea83
   2ea78:	b8 88 01             	mov    ax,0x188
   2ea7b:	8e c0                	mov    es,ax
   2ea7d:	26 a1 74 6d          	mov    ax,es:0x6d74
   2ea81:	eb 0f                	jmp    0x2ea92
   2ea83:	b8 88 01             	mov    ax,0x188
   2ea86:	8e c0                	mov    es,ax
   2ea88:	26 a1 74 6d          	mov    ax,es:0x6d74
   2ea8c:	bb 02 00             	mov    bx,0x2
   2ea8f:	99                   	cwd
   2ea90:	f7 fb                	idiv   bx
   2ea92:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   2ea95:	a1 ff 3a             	mov    ax,ds:0x3aff
   2ea98:	bb 03 00             	mov    bx,0x3
   2ea9b:	99                   	cwd
   2ea9c:	f7 fb                	idiv   bx
   2ea9e:	40                   	inc    ax
   2ea9f:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2eaa2:	a1 01 3b             	mov    ax,ds:0x3b01
   2eaa5:	bb 0a 00             	mov    bx,0xa
   2eaa8:	99                   	cwd
   2eaa9:	f7 fb                	idiv   bx
   2eaab:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   2eaae:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   2eab2:	74 0d                	je     0x2eac1
   2eab4:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2eab7:	6b c0 64             	imul   ax,ax,0x64
   2eaba:	99                   	cwd
   2eabb:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2eabe:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2eac1:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   2eac5:	74 0d                	je     0x2ead4
   2eac7:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
   2eaca:	6b c0 64             	imul   ax,ax,0x64
   2eacd:	99                   	cwd
   2eace:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2ead1:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   2ead4:	a1 ff 3a             	mov    ax,ds:0x3aff
   2ead7:	bb 05 00             	mov    bx,0x5
   2eada:	99                   	cwd
   2eadb:	f7 fb                	idiv   bx
   2eadd:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   2eae0:	a0 07 3b             	mov    al,ds:0x3b07
   2eae3:	b4 00                	mov    ah,0x0
   2eae5:	0b c0                	or     ax,ax
   2eae7:	75 2d                	jne    0x2eb16
   2eae9:	68 fe 00             	push   0xfe
   2eaec:	6a 42                	push   0x42
   2eaee:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2eaf1:	d1 e0                	shl    ax,1
   2eaf3:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2eaf7:	2b d0                	sub    dx,ax
   2eaf9:	4a                   	dec    dx
   2eafa:	52                   	push   dx
   2eafb:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2eafe:	d1 e0                	shl    ax,1
   2eb00:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2eb04:	2b d0                	sub    dx,ax
   2eb06:	4a                   	dec    dx
   2eb07:	52                   	push   dx
   2eb08:	ff 76 ec             	push   WORD PTR [bp-0x14]
   2eb0b:	ff 76 ec             	push   WORD PTR [bp-0x14]
   2eb0e:	9a 08 09 28 00       	call   0x28:0x908
   2eb13:	83 c4 0c             	add    sp,0xc
   2eb16:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   2eb1b:	b8 88 01             	mov    ax,0x188
   2eb1e:	8e c0                	mov    es,ax
   2eb20:	26 a1 4a e7          	mov    ax,es:0xe74a
   2eb24:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   2eb27:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2eb2c:	e9 22 02             	jmp    0x2ed51
   2eb2f:	9a e3 01 40 00       	call   0x40:0x1e3
   2eb34:	68 fe 00             	push   0xfe
   2eb37:	6a 41                	push   0x41
   2eb39:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2eb3d:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2eb41:	6a 00                	push   0x0
   2eb43:	6a 00                	push   0x0
   2eb45:	9a 08 09 28 00       	call   0x28:0x908
   2eb4a:	83 c4 0c             	add    sp,0xc
   2eb4d:	6a 41                	push   0x41
   2eb4f:	6a 40                	push   0x40
   2eb51:	a0 f0 b9             	mov    al,ds:0xb9f0
   2eb54:	b4 00                	mov    ah,0x0
   2eb56:	bb 04 00             	mov    bx,0x4
   2eb59:	99                   	cwd
   2eb5a:	f7 fb                	idiv   bx
   2eb5c:	89 56 de             	mov    WORD PTR [bp-0x22],dx
   2eb5f:	cd 3b                	int    0x3b
   2eb61:	46                   	inc    si
   2eb62:	de 83 ec 04          	fiadd  WORD PTR [bp+di+0x4ec]
   2eb66:	cd 35                	int    0x35
   2eb68:	5e                   	pop    si
   2eb69:	d6                   	salc
   2eb6a:	cd 3d                	int    0x3d
   2eb6c:	90                   	nop
   2eb6d:	0e                   	push   cs
   2eb6e:	e8 37 29             	call   0x214a8
   2eb71:	83 c4 08             	add    sp,0x8
   2eb74:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2eb77:	d1 e0                	shl    ax,1
   2eb79:	f7 6e f4             	imul   WORD PTR [bp-0xc]
   2eb7c:	bb 64 00             	mov    bx,0x64
   2eb7f:	99                   	cwd
   2eb80:	f7 fb                	idiv   bx
   2eb82:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2eb86:	2b d0                	sub    dx,ax
   2eb88:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2eb8b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2eb8e:	d1 e0                	shl    ax,1
   2eb90:	f7 6e f4             	imul   WORD PTR [bp-0xc]
   2eb93:	bb 64 00             	mov    bx,0x64
   2eb96:	99                   	cwd
   2eb97:	f7 fb                	idiv   bx
   2eb99:	50                   	push   ax
   2eb9a:	a1 ff 3a             	mov    ax,ds:0x3aff
   2eb9d:	5a                   	pop    dx
   2eb9e:	2b c2                	sub    ax,dx
   2eba0:	99                   	cwd
   2eba1:	52                   	push   dx
   2eba2:	50                   	push   ax
   2eba3:	a1 ff 3a             	mov    ax,ds:0x3aff
   2eba6:	99                   	cwd
   2eba7:	50                   	push   ax
   2eba8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ebab:	52                   	push   dx
   2ebac:	f7 6e f4             	imul   WORD PTR [bp-0xc]
   2ebaf:	bb 64 00             	mov    bx,0x64
   2ebb2:	99                   	cwd
   2ebb3:	f7 fb                	idiv   bx
   2ebb5:	50                   	push   ax
   2ebb6:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2ebb9:	5a                   	pop    dx
   2ebba:	2b c2                	sub    ax,dx
   2ebbc:	99                   	cwd
   2ebbd:	59                   	pop    cx
   2ebbe:	5b                   	pop    bx
   2ebbf:	9a 42 12 00 00       	call   0x0:0x1242
   2ebc4:	52                   	push   dx
   2ebc5:	50                   	push   ax
   2ebc6:	9a df 12 00 00       	call   0x0:0x12df
   2ebcb:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2ebce:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   2ebd1:	d1 e0                	shl    ax,1
   2ebd3:	50                   	push   ax
   2ebd4:	a1 ff 3a             	mov    ax,ds:0x3aff
   2ebd7:	5a                   	pop    dx
   2ebd8:	2b c2                	sub    ax,dx
   2ebda:	50                   	push   ax
   2ebdb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ebde:	d1 e0                	shl    ax,1
   2ebe0:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2ebe3:	bb 64 00             	mov    bx,0x64
   2ebe6:	99                   	cwd
   2ebe7:	f7 fb                	idiv   bx
   2ebe9:	8b d0                	mov    dx,ax
   2ebeb:	58                   	pop    ax
   2ebec:	2b c2                	sub    ax,dx
   2ebee:	99                   	cwd
   2ebef:	52                   	push   dx
   2ebf0:	50                   	push   ax
   2ebf1:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   2ebf4:	d1 e0                	shl    ax,1
   2ebf6:	50                   	push   ax
   2ebf7:	a1 ff 3a             	mov    ax,ds:0x3aff
   2ebfa:	5a                   	pop    dx
   2ebfb:	2b c2                	sub    ax,dx
   2ebfd:	99                   	cwd
   2ebfe:	50                   	push   ax
   2ebff:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ec02:	52                   	push   dx
   2ec03:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2ec06:	bb 64 00             	mov    bx,0x64
   2ec09:	99                   	cwd
   2ec0a:	f7 fb                	idiv   bx
   2ec0c:	50                   	push   ax
   2ec0d:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
   2ec10:	5a                   	pop    dx
   2ec11:	2b c2                	sub    ax,dx
   2ec13:	99                   	cwd
   2ec14:	59                   	pop    cx
   2ec15:	5b                   	pop    bx
   2ec16:	9a 42 12 00 00       	call   0x0:0x1242
   2ec1b:	52                   	push   dx
   2ec1c:	50                   	push   ax
   2ec1d:	9a df 12 00 00       	call   0x0:0x12df
   2ec22:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   2ec25:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   2ec28:	d1 e0                	shl    ax,1
   2ec2a:	50                   	push   ax
   2ec2b:	a1 ff 3a             	mov    ax,ds:0x3aff
   2ec2e:	5a                   	pop    dx
   2ec2f:	2b c2                	sub    ax,dx
   2ec31:	99                   	cwd
   2ec32:	52                   	push   dx
   2ec33:	50                   	push   ax
   2ec34:	a1 ff 3a             	mov    ax,ds:0x3aff
   2ec37:	99                   	cwd
   2ec38:	50                   	push   ax
   2ec39:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2ec3c:	2b 46 e8             	sub    ax,WORD PTR [bp-0x18]
   2ec3f:	52                   	push   dx
   2ec40:	99                   	cwd
   2ec41:	59                   	pop    cx
   2ec42:	5b                   	pop    bx
   2ec43:	9a 42 12 00 00       	call   0x0:0x1242
   2ec48:	52                   	push   dx
   2ec49:	50                   	push   ax
   2ec4a:	9a df 12 00 00       	call   0x0:0x12df
   2ec4f:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   2ec52:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2ec55:	d1 e0                	shl    ax,1
   2ec57:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2ec5b:	2b d0                	sub    dx,ax
   2ec5d:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   2ec60:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2ec63:	d1 e0                	shl    ax,1
   2ec65:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2ec69:	2b d0                	sub    dx,ax
   2ec6b:	89 56 ee             	mov    WORD PTR [bp-0x12],dx
   2ec6e:	6a 00                	push   0x0
   2ec70:	6a 41                	push   0x41
   2ec72:	6a 44                	push   0x44
   2ec74:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2ec77:	d1 e0                	shl    ax,1
   2ec79:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2ec7d:	2b d0                	sub    dx,ax
   2ec7f:	52                   	push   dx
   2ec80:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2ec83:	d1 e0                	shl    ax,1
   2ec85:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2ec89:	2b d0                	sub    dx,ax
   2ec8b:	52                   	push   dx
   2ec8c:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2ec8f:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2ec92:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   2ec95:	d1 e0                	shl    ax,1
   2ec97:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2ec9b:	2b d0                	sub    dx,ax
   2ec9d:	52                   	push   dx
   2ec9e:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   2eca1:	d1 e0                	shl    ax,1
   2eca3:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2eca7:	2b d0                	sub    dx,ax
   2eca9:	52                   	push   dx
   2ecaa:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2ecad:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2ecb0:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2ecb5:	83 c4 16             	add    sp,0x16
   2ecb8:	6a 00                	push   0x0
   2ecba:	6a 41                	push   0x41
   2ecbc:	6a 43                	push   0x43
   2ecbe:	ff 76 ee             	push   WORD PTR [bp-0x12]
   2ecc1:	ff 76 f0             	push   WORD PTR [bp-0x10]
   2ecc4:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2ecc7:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2ecca:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2ecce:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2ecd2:	6a 00                	push   0x0
   2ecd4:	6a 00                	push   0x0
   2ecd6:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2ecdb:	83 c4 16             	add    sp,0x16
   2ecde:	6a 00                	push   0x0
   2ece0:	6a 41                	push   0x41
   2ece2:	6a 42                	push   0x42
   2ece4:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2ece8:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2ecec:	6a 00                	push   0x0
   2ecee:	6a 00                	push   0x0
   2ecf0:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2ecf3:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2ecf6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ecf9:	f7 6e f4             	imul   WORD PTR [bp-0xc]
   2ecfc:	bb 64 00             	mov    bx,0x64
   2ecff:	99                   	cwd
   2ed00:	f7 fb                	idiv   bx
   2ed02:	50                   	push   ax
   2ed03:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ed06:	f7 6e f4             	imul   WORD PTR [bp-0xc]
   2ed09:	bb 64 00             	mov    bx,0x64
   2ed0c:	99                   	cwd
   2ed0d:	f7 fb                	idiv   bx
   2ed0f:	50                   	push   ax
   2ed10:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2ed15:	83 c4 16             	add    sp,0x16
   2ed18:	6a 34                	push   0x34
   2ed1a:	6a 30                	push   0x30
   2ed1c:	6a 41                	push   0x41
   2ed1e:	0e                   	push   cs
   2ed1f:	e8 b6 97             	call   0x284d8
   2ed22:	83 c4 06             	add    sp,0x6
   2ed25:	6a 00                	push   0x0
   2ed27:	68 e8 03             	push   0x3e8
   2ed2a:	b8 88 01             	mov    ax,0x188
   2ed2d:	8e c0                	mov    es,ax
   2ed2f:	26 8b 1e 4a e7       	mov    bx,WORD PTR es:0xe74a
   2ed34:	2b 5e e0             	sub    bx,WORD PTR [bp-0x20]
   2ed37:	33 c9                	xor    cx,cx
   2ed39:	33 d2                	xor    dx,dx
   2ed3b:	b8 1e 00             	mov    ax,0x1e
   2ed3e:	9a 42 12 00 00       	call   0x0:0x1242
   2ed43:	52                   	push   dx
   2ed44:	50                   	push   ax
   2ed45:	9a df 12 00 00       	call   0x0:0x12df
   2ed4a:	40                   	inc    ax
   2ed4b:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2ed4e:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   2ed51:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ed54:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   2ed57:	7d 03                	jge    0x2ed5c
   2ed59:	e9 d3 fd             	jmp    0x2eb2f
   2ed5c:	6a 03                	push   0x3
   2ed5e:	90                   	nop
   2ed5f:	0e                   	push   cs
   2ed60:	e8 a1 26             	call   0x21404
   2ed63:	59                   	pop    cx
   2ed64:	68 20 00             	push   0x20
   2ed67:	68 06 00             	push   0x6
   2ed6a:	6a 00                	push   0x0
   2ed6c:	a1 01 3b             	mov    ax,ds:0x3b01
   2ed6f:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2ed73:	50                   	push   ax
   2ed74:	6a 42                	push   0x42
   2ed76:	6a 44                	push   0x44
   2ed78:	9a 15 06 28 00       	call   0x28:0x615
   2ed7d:	83 c4 0c             	add    sp,0xc
   2ed80:	68 20 00             	push   0x20
   2ed83:	68 4c 00             	push   0x4c
   2ed86:	68 fe 00             	push   0xfe
   2ed89:	a1 01 3b             	mov    ax,ds:0x3b01
   2ed8c:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2ed90:	50                   	push   ax
   2ed91:	6a 42                	push   0x42
   2ed93:	6a 43                	push   0x43
   2ed95:	9a 15 06 28 00       	call   0x28:0x615
   2ed9a:	83 c4 0c             	add    sp,0xc
   2ed9d:	68 fe 00             	push   0xfe
   2eda0:	a1 01 3b             	mov    ax,ds:0x3b01
   2eda3:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2eda7:	50                   	push   ax
   2eda8:	6a 41                	push   0x41
   2edaa:	9a dc 16 28 00       	call   0x28:0x16dc
   2edaf:	83 c4 06             	add    sp,0x6
   2edb2:	6a 41                	push   0x41
   2edb4:	6a 40                	push   0x40
   2edb6:	a0 f0 b9             	mov    al,ds:0xb9f0
   2edb9:	b4 00                	mov    ah,0x0
   2edbb:	bb 04 00             	mov    bx,0x4
   2edbe:	99                   	cwd
   2edbf:	f7 fb                	idiv   bx
   2edc1:	89 56 de             	mov    WORD PTR [bp-0x22],dx
   2edc4:	cd 3b                	int    0x3b
   2edc6:	46                   	inc    si
   2edc7:	de 83 ec 04          	fiadd  WORD PTR [bp+di+0x4ec]
   2edcb:	cd 35                	int    0x35
   2edcd:	5e                   	pop    si
   2edce:	d6                   	salc
   2edcf:	cd 3d                	int    0x3d
   2edd1:	90                   	nop
   2edd2:	0e                   	push   cs
   2edd3:	e8 d2 26             	call   0x214a8
   2edd6:	83 c4 08             	add    sp,0x8
   2edd9:	68 20 00             	push   0x20
   2eddc:	68 4c 00             	push   0x4c
   2eddf:	68 fe 00             	push   0xfe
   2ede2:	a1 01 3b             	mov    ax,ds:0x3b01
   2ede5:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2ede9:	50                   	push   ax
   2edea:	6a 41                	push   0x41
   2edec:	6a 42                	push   0x42
   2edee:	9a 15 06 28 00       	call   0x28:0x615
   2edf3:	83 c4 0c             	add    sp,0xc
   2edf6:	6a 34                	push   0x34
   2edf8:	6a 30                	push   0x30
   2edfa:	6a 41                	push   0x41
   2edfc:	0e                   	push   cs
   2edfd:	e8 d8 96             	call   0x284d8
   2ee00:	83 c4 06             	add    sp,0x6
   2ee03:	6a 0c                	push   0xc
   2ee05:	90                   	nop
   2ee06:	0e                   	push   cs
   2ee07:	e8 4a 26             	call   0x21454
   2ee0a:	59                   	pop    cx
   2ee0b:	c6 06 07 3b 00       	mov    BYTE PTR ds:0x3b07,0x0
   2ee10:	c9                   	leave
   2ee11:	cb                   	retf
   2ee12:	55                   	push   bp
   2ee13:	8b ec                	mov    bp,sp
   2ee15:	83 ec 20             	sub    sp,0x20
   2ee18:	b8 88 01             	mov    ax,0x188
   2ee1b:	8e c0                	mov    es,ax
   2ee1d:	26 83 3e 74 6d 00    	cmp    WORD PTR es:0x6d74,0x0
   2ee23:	75 0a                	jne    0x2ee2f
   2ee25:	6a 01                	push   0x1
   2ee27:	9a 2f 00 18 01       	call   0x118:0x2f
   2ee2c:	e9 16 05             	jmp    0x2f345
   2ee2f:	80 3e f8 3a 00       	cmp    BYTE PTR ds:0x3af8,0x0
   2ee34:	74 0e                	je     0x2ee44
   2ee36:	a1 01 3b             	mov    ax,ds:0x3b01
   2ee39:	bb 03 00             	mov    bx,0x3
   2ee3c:	99                   	cwd
   2ee3d:	f7 fb                	idiv   bx
   2ee3f:	05 fd ff             	add    ax,0xfffd
   2ee42:	eb 0c                	jmp    0x2ee50
   2ee44:	a1 01 3b             	mov    ax,ds:0x3b01
   2ee47:	bb 03 00             	mov    bx,0x3
   2ee4a:	99                   	cwd
   2ee4b:	f7 fb                	idiv   bx
   2ee4d:	05 02 00             	add    ax,0x2
   2ee50:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   2ee53:	a1 01 3b             	mov    ax,ds:0x3b01
   2ee56:	bb 03 00             	mov    bx,0x3
   2ee59:	99                   	cwd
   2ee5a:	f7 fb                	idiv   bx
   2ee5c:	05 fd ff             	add    ax,0xfffd
   2ee5f:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   2ee62:	6a 01                	push   0x1
   2ee64:	90                   	nop
   2ee65:	0e                   	push   cs
   2ee66:	e8 eb 25             	call   0x21454
   2ee69:	59                   	pop    cx
   2ee6a:	6a 0e                	push   0xe
   2ee6c:	90                   	nop
   2ee6d:	0e                   	push   cs
   2ee6e:	e8 93 25             	call   0x21404
   2ee71:	59                   	pop    cx
   2ee72:	68 fe 00             	push   0xfe
   2ee75:	a1 01 3b             	mov    ax,ds:0x3b01
   2ee78:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2ee7c:	50                   	push   ax
   2ee7d:	6a 43                	push   0x43
   2ee7f:	9a dc 16 28 00       	call   0x28:0x16dc
   2ee84:	83 c4 06             	add    sp,0x6
   2ee87:	6a 43                	push   0x43
   2ee89:	0e                   	push   cs
   2ee8a:	e8 d5 ce             	call   0x2bd62
   2ee8d:	59                   	pop    cx
   2ee8e:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2ee91:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   2ee95:	a3 f3 b9             	mov    ds:0xb9f3,ax
   2ee98:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2ee9b:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   2ee9f:	a3 f1 b9             	mov    ds:0xb9f1,ax
   2eea2:	68 fe 00             	push   0xfe
   2eea5:	a1 01 3b             	mov    ax,ds:0x3b01
   2eea8:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2eeac:	50                   	push   ax
   2eead:	6a 42                	push   0x42
   2eeaf:	9a dc 16 28 00       	call   0x28:0x16dc
   2eeb4:	83 c4 06             	add    sp,0x6
   2eeb7:	68 fe 00             	push   0xfe
   2eeba:	a1 01 3b             	mov    ax,ds:0x3b01
   2eebd:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2eec1:	50                   	push   ax
   2eec2:	6a 44                	push   0x44
   2eec4:	9a dc 16 28 00       	call   0x28:0x16dc
   2eec9:	83 c4 06             	add    sp,0x6
   2eecc:	6a 44                	push   0x44
   2eece:	0e                   	push   cs
   2eecf:	e8 3b d2             	call   0x2c10d
   2eed2:	59                   	pop    cx
   2eed3:	6a 44                	push   0x44
   2eed5:	0e                   	push   cs
   2eed6:	e8 20 d9             	call   0x2c7f9
   2eed9:	59                   	pop    cx
   2eeda:	6a 42                	push   0x42
   2eedc:	0e                   	push   cs
   2eedd:	e8 a5 e4             	call   0x2d385
   2eee0:	59                   	pop    cx
   2eee1:	68 e0 01             	push   0x1e0
   2eee4:	68 41 03             	push   0x341
   2eee7:	6a 44                	push   0x44
   2eee9:	6a 42                	push   0x42
   2eeeb:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2eeee:	6a 00                	push   0x0
   2eef0:	a1 01 3b             	mov    ax,ds:0x3b01
   2eef3:	2b 46 e6             	sub    ax,WORD PTR [bp-0x1a]
   2eef6:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2eef9:	50                   	push   ax
   2eefa:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2eefe:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2ef01:	6a 00                	push   0x0
   2ef03:	9a 30 04 28 00       	call   0x28:0x430
   2ef08:	83 c4 14             	add    sp,0x14
   2ef0b:	68 fe 00             	push   0xfe
   2ef0e:	6a 42                	push   0x42
   2ef10:	a1 01 3b             	mov    ax,ds:0x3b01
   2ef13:	2b 46 e6             	sub    ax,WORD PTR [bp-0x1a]
   2ef16:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2ef19:	50                   	push   ax
   2ef1a:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2ef1e:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2ef21:	6a 00                	push   0x0
   2ef23:	9a 08 09 28 00       	call   0x28:0x908
   2ef28:	83 c4 0c             	add    sp,0xc
   2ef2b:	6a 42                	push   0x42
   2ef2d:	0e                   	push   cs
   2ef2e:	e8 df eb             	call   0x2db10
   2ef31:	59                   	pop    cx
   2ef32:	68 e0 01             	push   0x1e0
   2ef35:	68 41 03             	push   0x341
   2ef38:	6a 44                	push   0x44
   2ef3a:	6a 42                	push   0x42
   2ef3c:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2ef3f:	a1 84 b8             	mov    ax,ds:0xb884
   2ef42:	6b c0 03             	imul   ax,ax,0x3
   2ef45:	bb 04 00             	mov    bx,0x4
   2ef48:	99                   	cwd
   2ef49:	f7 fb                	idiv   bx
   2ef4b:	8b 16 80 b8          	mov    dx,WORD PTR ds:0xb880
   2ef4f:	03 d0                	add    dx,ax
   2ef51:	52                   	push   dx
   2ef52:	a1 01 3b             	mov    ax,ds:0x3b01
   2ef55:	2b 46 e6             	sub    ax,WORD PTR [bp-0x1a]
   2ef58:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2ef5b:	50                   	push   ax
   2ef5c:	a1 84 b8             	mov    ax,ds:0xb884
   2ef5f:	d1 e0                	shl    ax,1
   2ef61:	bb 04 00             	mov    bx,0x4
   2ef64:	99                   	cwd
   2ef65:	f7 fb                	idiv   bx
   2ef67:	8b 16 3c b8          	mov    dx,WORD PTR ds:0xb83c
   2ef6b:	03 d0                	add    dx,ax
   2ef6d:	52                   	push   dx
   2ef6e:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2ef71:	a1 84 b8             	mov    ax,ds:0xb884
   2ef74:	6b c0 03             	imul   ax,ax,0x3
   2ef77:	bb 04 00             	mov    bx,0x4
   2ef7a:	99                   	cwd
   2ef7b:	f7 fb                	idiv   bx
   2ef7d:	8b 16 80 b8          	mov    dx,WORD PTR ds:0xb880
   2ef81:	03 d0                	add    dx,ax
   2ef83:	52                   	push   dx
   2ef84:	9a 30 04 28 00       	call   0x28:0x430
   2ef89:	83 c4 14             	add    sp,0x14
   2ef8c:	68 fe 00             	push   0xfe
   2ef8f:	6a 42                	push   0x42
   2ef91:	a1 01 3b             	mov    ax,ds:0x3b01
   2ef94:	2b 46 e6             	sub    ax,WORD PTR [bp-0x1a]
   2ef97:	2b 46 e4             	sub    ax,WORD PTR [bp-0x1c]
   2ef9a:	50                   	push   ax
   2ef9b:	a1 84 b8             	mov    ax,ds:0xb884
   2ef9e:	d1 e0                	shl    ax,1
   2efa0:	bb 04 00             	mov    bx,0x4
   2efa3:	99                   	cwd
   2efa4:	f7 fb                	idiv   bx
   2efa6:	8b 16 3c b8          	mov    dx,WORD PTR ds:0xb83c
   2efaa:	03 d0                	add    dx,ax
   2efac:	52                   	push   dx
   2efad:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2efb0:	a1 84 b8             	mov    ax,ds:0xb884
   2efb3:	6b c0 03             	imul   ax,ax,0x3
   2efb6:	bb 04 00             	mov    bx,0x4
   2efb9:	99                   	cwd
   2efba:	f7 fb                	idiv   bx
   2efbc:	8b 16 80 b8          	mov    dx,WORD PTR ds:0xb880
   2efc0:	03 d0                	add    dx,ax
   2efc2:	52                   	push   dx
   2efc3:	9a 08 09 28 00       	call   0x28:0x908
   2efc8:	83 c4 0c             	add    sp,0xc
   2efcb:	6a 42                	push   0x42
   2efcd:	0e                   	push   cs
   2efce:	e8 41 ed             	call   0x2dd12
   2efd1:	59                   	pop    cx
   2efd2:	6a 01                	push   0x1
   2efd4:	90                   	nop
   2efd5:	0e                   	push   cs
   2efd6:	e8 2b 24             	call   0x21404
   2efd9:	59                   	pop    cx
   2efda:	f7 06 f9 3a 10 00    	test   WORD PTR ds:0x3af9,0x10
   2efe0:	75 08                	jne    0x2efea
   2efe2:	f7 06 f9 3a 04 00    	test   WORD PTR ds:0x3af9,0x4
   2efe8:	74 10                	je     0x2effa
   2efea:	f7 06 f9 3a 02 00    	test   WORD PTR ds:0x3af9,0x2
   2eff0:	75 10                	jne    0x2f002
   2eff2:	f7 06 f9 3a 08 00    	test   WORD PTR ds:0x3af9,0x8
   2eff8:	75 08                	jne    0x2f002
   2effa:	f7 06 f9 3a 40 00    	test   WORD PTR ds:0x3af9,0x40
   2f000:	74 0b                	je     0x2f00d
   2f002:	b8 88 01             	mov    ax,0x188
   2f005:	8e c0                	mov    es,ax
   2f007:	26 a1 74 6d          	mov    ax,es:0x6d74
   2f00b:	eb 0f                	jmp    0x2f01c
   2f00d:	b8 88 01             	mov    ax,0x188
   2f010:	8e c0                	mov    es,ax
   2f012:	26 a1 74 6d          	mov    ax,es:0x6d74
   2f016:	bb 02 00             	mov    bx,0x2
   2f019:	99                   	cwd
   2f01a:	f7 fb                	idiv   bx
   2f01c:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   2f01f:	a1 01 3b             	mov    ax,ds:0x3b01
   2f022:	bb 03 00             	mov    bx,0x3
   2f025:	99                   	cwd
   2f026:	f7 fb                	idiv   bx
   2f028:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   2f02b:	a1 01 3b             	mov    ax,ds:0x3b01
   2f02e:	bb 0a 00             	mov    bx,0xa
   2f031:	99                   	cwd
   2f032:	f7 fb                	idiv   bx
   2f034:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   2f037:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   2f03b:	74 0d                	je     0x2f04a
   2f03d:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   2f040:	6b c0 64             	imul   ax,ax,0x64
   2f043:	99                   	cwd
   2f044:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2f047:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2f04a:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   2f04e:	74 0d                	je     0x2f05d
   2f050:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2f053:	6b c0 64             	imul   ax,ax,0x64
   2f056:	99                   	cwd
   2f057:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2f05a:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   2f05d:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f060:	bb 05 00             	mov    bx,0x5
   2f063:	99                   	cwd
   2f064:	f7 fb                	idiv   bx
   2f066:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   2f069:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2f06c:	2b 06 c6 b9          	sub    ax,WORD PTR ds:0xb9c6
   2f070:	a3 f3 b9             	mov    ds:0xb9f3,ax
   2f073:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2f076:	2b 06 c4 b9          	sub    ax,WORD PTR ds:0xb9c4
   2f07a:	a3 f1 b9             	mov    ds:0xb9f1,ax
   2f07d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2f080:	48                   	dec    ax
   2f081:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2f084:	b8 88 01             	mov    ax,0x188
   2f087:	8e c0                	mov    es,ax
   2f089:	26 a1 4a e7          	mov    ax,es:0xe74a
   2f08d:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   2f090:	e9 20 02             	jmp    0x2f2b3
   2f093:	9a e3 01 40 00       	call   0x40:0x1e3
   2f098:	68 fe 00             	push   0xfe
   2f09b:	a1 01 3b             	mov    ax,ds:0x3b01
   2f09e:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f0a2:	50                   	push   ax
   2f0a3:	6a 41                	push   0x41
   2f0a5:	9a dc 16 28 00       	call   0x28:0x16dc
   2f0aa:	83 c4 06             	add    sp,0x6
   2f0ad:	6a 41                	push   0x41
   2f0af:	6a 40                	push   0x40
   2f0b1:	a0 f0 b9             	mov    al,ds:0xb9f0
   2f0b4:	b4 00                	mov    ah,0x0
   2f0b6:	bb 04 00             	mov    bx,0x4
   2f0b9:	99                   	cwd
   2f0ba:	f7 fb                	idiv   bx
   2f0bc:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   2f0bf:	cd 3b                	int    0x3b
   2f0c1:	46                   	inc    si
   2f0c2:	e0 83                	loopne 0x2f047
   2f0c4:	ec                   	in     al,dx
   2f0c5:	04 cd                	add    al,0xcd
   2f0c7:	35 5e d8             	xor    ax,0xd85e
   2f0ca:	cd 3d                	int    0x3d
   2f0cc:	90                   	nop
   2f0cd:	0e                   	push   cs
   2f0ce:	e8 d7 23             	call   0x214a8
   2f0d1:	83 c4 08             	add    sp,0x8
   2f0d4:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f0d7:	d1 e0                	shl    ax,1
   2f0d9:	f7 6e fa             	imul   WORD PTR [bp-0x6]
   2f0dc:	bb 64 00             	mov    bx,0x64
   2f0df:	99                   	cwd
   2f0e0:	f7 fb                	idiv   bx
   2f0e2:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f0e6:	2b d0                	sub    dx,ax
   2f0e8:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2f0eb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f0ee:	d1 e0                	shl    ax,1
   2f0f0:	f7 6e fa             	imul   WORD PTR [bp-0x6]
   2f0f3:	bb 64 00             	mov    bx,0x64
   2f0f6:	99                   	cwd
   2f0f7:	f7 fb                	idiv   bx
   2f0f9:	50                   	push   ax
   2f0fa:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f0fd:	5a                   	pop    dx
   2f0fe:	2b c2                	sub    ax,dx
   2f100:	99                   	cwd
   2f101:	52                   	push   dx
   2f102:	50                   	push   ax
   2f103:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f106:	99                   	cwd
   2f107:	50                   	push   ax
   2f108:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f10b:	52                   	push   dx
   2f10c:	f7 6e fa             	imul   WORD PTR [bp-0x6]
   2f10f:	bb 64 00             	mov    bx,0x64
   2f112:	99                   	cwd
   2f113:	f7 fb                	idiv   bx
   2f115:	50                   	push   ax
   2f116:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   2f119:	5a                   	pop    dx
   2f11a:	2b c2                	sub    ax,dx
   2f11c:	99                   	cwd
   2f11d:	59                   	pop    cx
   2f11e:	5b                   	pop    bx
   2f11f:	9a 42 12 00 00       	call   0x0:0x1242
   2f124:	52                   	push   dx
   2f125:	50                   	push   ax
   2f126:	9a df 12 00 00       	call   0x0:0x12df
   2f12b:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2f12e:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   2f131:	d1 e0                	shl    ax,1
   2f133:	50                   	push   ax
   2f134:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f137:	5a                   	pop    dx
   2f138:	2b c2                	sub    ax,dx
   2f13a:	50                   	push   ax
   2f13b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f13e:	d1 e0                	shl    ax,1
   2f140:	f7 6e f4             	imul   WORD PTR [bp-0xc]
   2f143:	bb 64 00             	mov    bx,0x64
   2f146:	99                   	cwd
   2f147:	f7 fb                	idiv   bx
   2f149:	8b d0                	mov    dx,ax
   2f14b:	58                   	pop    ax
   2f14c:	2b c2                	sub    ax,dx
   2f14e:	99                   	cwd
   2f14f:	52                   	push   dx
   2f150:	50                   	push   ax
   2f151:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   2f154:	d1 e0                	shl    ax,1
   2f156:	50                   	push   ax
   2f157:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f15a:	5a                   	pop    dx
   2f15b:	2b c2                	sub    ax,dx
   2f15d:	99                   	cwd
   2f15e:	50                   	push   ax
   2f15f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f162:	52                   	push   dx
   2f163:	f7 6e f4             	imul   WORD PTR [bp-0xc]
   2f166:	bb 64 00             	mov    bx,0x64
   2f169:	99                   	cwd
   2f16a:	f7 fb                	idiv   bx
   2f16c:	50                   	push   ax
   2f16d:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2f170:	5a                   	pop    dx
   2f171:	2b c2                	sub    ax,dx
   2f173:	99                   	cwd
   2f174:	59                   	pop    cx
   2f175:	5b                   	pop    bx
   2f176:	9a 42 12 00 00       	call   0x0:0x1242
   2f17b:	52                   	push   dx
   2f17c:	50                   	push   ax
   2f17d:	9a df 12 00 00       	call   0x0:0x12df
   2f182:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   2f185:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
   2f188:	d1 e0                	shl    ax,1
   2f18a:	50                   	push   ax
   2f18b:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f18e:	5a                   	pop    dx
   2f18f:	2b c2                	sub    ax,dx
   2f191:	99                   	cwd
   2f192:	52                   	push   dx
   2f193:	50                   	push   ax
   2f194:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f197:	99                   	cwd
   2f198:	50                   	push   ax
   2f199:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2f19c:	2b 46 ea             	sub    ax,WORD PTR [bp-0x16]
   2f19f:	52                   	push   dx
   2f1a0:	99                   	cwd
   2f1a1:	59                   	pop    cx
   2f1a2:	5b                   	pop    bx
   2f1a3:	9a 42 12 00 00       	call   0x0:0x1242
   2f1a8:	52                   	push   dx
   2f1a9:	50                   	push   ax
   2f1aa:	9a df 12 00 00       	call   0x0:0x12df
   2f1af:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   2f1b2:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2f1b5:	d1 e0                	shl    ax,1
   2f1b7:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f1bb:	2b d0                	sub    dx,ax
   2f1bd:	89 56 f2             	mov    WORD PTR [bp-0xe],dx
   2f1c0:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2f1c3:	d1 e0                	shl    ax,1
   2f1c5:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2f1c9:	2b d0                	sub    dx,ax
   2f1cb:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   2f1ce:	6a 00                	push   0x0
   2f1d0:	6a 41                	push   0x41
   2f1d2:	6a 43                	push   0x43
   2f1d4:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f1d8:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f1dc:	6a 00                	push   0x0
   2f1de:	6a 00                	push   0x0
   2f1e0:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2f1e3:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2f1e6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f1e9:	f7 6e fa             	imul   WORD PTR [bp-0x6]
   2f1ec:	bb 64 00             	mov    bx,0x64
   2f1ef:	99                   	cwd
   2f1f0:	f7 fb                	idiv   bx
   2f1f2:	50                   	push   ax
   2f1f3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f1f6:	f7 6e fa             	imul   WORD PTR [bp-0x6]
   2f1f9:	bb 64 00             	mov    bx,0x64
   2f1fc:	99                   	cwd
   2f1fd:	f7 fb                	idiv   bx
   2f1ff:	50                   	push   ax
   2f200:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f205:	83 c4 16             	add    sp,0x16
   2f208:	6a 00                	push   0x0
   2f20a:	6a 41                	push   0x41
   2f20c:	6a 44                	push   0x44
   2f20e:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2f211:	d1 e0                	shl    ax,1
   2f213:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2f217:	2b d0                	sub    dx,ax
   2f219:	52                   	push   dx
   2f21a:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2f21d:	d1 e0                	shl    ax,1
   2f21f:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f223:	2b d0                	sub    dx,ax
   2f225:	52                   	push   dx
   2f226:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2f229:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2f22c:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   2f22f:	d1 e0                	shl    ax,1
   2f231:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2f235:	2b d0                	sub    dx,ax
   2f237:	52                   	push   dx
   2f238:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   2f23b:	d1 e0                	shl    ax,1
   2f23d:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f241:	2b d0                	sub    dx,ax
   2f243:	52                   	push   dx
   2f244:	ff 76 e8             	push   WORD PTR [bp-0x18]
   2f247:	ff 76 e8             	push   WORD PTR [bp-0x18]
   2f24a:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f24f:	83 c4 16             	add    sp,0x16
   2f252:	6a 00                	push   0x0
   2f254:	6a 41                	push   0x41
   2f256:	6a 42                	push   0x42
   2f258:	ff 76 f0             	push   WORD PTR [bp-0x10]
   2f25b:	ff 76 f2             	push   WORD PTR [bp-0xe]
   2f25e:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2f261:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2f264:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f268:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f26c:	6a 00                	push   0x0
   2f26e:	6a 00                	push   0x0
   2f270:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f275:	83 c4 16             	add    sp,0x16
   2f278:	6a 34                	push   0x34
   2f27a:	6a 30                	push   0x30
   2f27c:	6a 41                	push   0x41
   2f27e:	0e                   	push   cs
   2f27f:	e8 56 92             	call   0x284d8
   2f282:	83 c4 06             	add    sp,0x6
   2f285:	6a 00                	push   0x0
   2f287:	68 e8 03             	push   0x3e8
   2f28a:	b8 88 01             	mov    ax,0x188
   2f28d:	8e c0                	mov    es,ax
   2f28f:	26 8b 1e 4a e7       	mov    bx,WORD PTR es:0xe74a
   2f294:	2b 5e e2             	sub    bx,WORD PTR [bp-0x1e]
   2f297:	33 c9                	xor    cx,cx
   2f299:	33 d2                	xor    dx,dx
   2f29b:	b8 1e 00             	mov    ax,0x1e
   2f29e:	9a 42 12 00 00       	call   0x0:0x1242
   2f2a3:	52                   	push   dx
   2f2a4:	50                   	push   ax
   2f2a5:	9a df 12 00 00       	call   0x0:0x12df
   2f2aa:	40                   	inc    ax
   2f2ab:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   2f2ae:	2b d0                	sub    dx,ax
   2f2b0:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   2f2b3:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2f2b7:	7e 03                	jle    0x2f2bc
   2f2b9:	e9 d7 fd             	jmp    0x2f093
   2f2bc:	68 20 00             	push   0x20
   2f2bf:	68 06 00             	push   0x6
   2f2c2:	6a 00                	push   0x0
   2f2c4:	a1 01 3b             	mov    ax,ds:0x3b01
   2f2c7:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f2cb:	50                   	push   ax
   2f2cc:	6a 42                	push   0x42
   2f2ce:	6a 43                	push   0x43
   2f2d0:	9a 15 06 28 00       	call   0x28:0x615
   2f2d5:	83 c4 0c             	add    sp,0xc
   2f2d8:	68 fe 00             	push   0xfe
   2f2db:	a1 01 3b             	mov    ax,ds:0x3b01
   2f2de:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f2e2:	50                   	push   ax
   2f2e3:	6a 41                	push   0x41
   2f2e5:	9a dc 16 28 00       	call   0x28:0x16dc
   2f2ea:	83 c4 06             	add    sp,0x6
   2f2ed:	6a 41                	push   0x41
   2f2ef:	6a 40                	push   0x40
   2f2f1:	a0 f0 b9             	mov    al,ds:0xb9f0
   2f2f4:	b4 00                	mov    ah,0x0
   2f2f6:	bb 04 00             	mov    bx,0x4
   2f2f9:	99                   	cwd
   2f2fa:	f7 fb                	idiv   bx
   2f2fc:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   2f2ff:	cd 3b                	int    0x3b
   2f301:	46                   	inc    si
   2f302:	e0 83                	loopne 0x2f287
   2f304:	ec                   	in     al,dx
   2f305:	04 cd                	add    al,0xcd
   2f307:	35 5e d8             	xor    ax,0xd85e
   2f30a:	cd 3d                	int    0x3d
   2f30c:	90                   	nop
   2f30d:	0e                   	push   cs
   2f30e:	e8 97 21             	call   0x214a8
   2f311:	83 c4 08             	add    sp,0x8
   2f314:	68 20 00             	push   0x20
   2f317:	68 4c 00             	push   0x4c
   2f31a:	68 fe 00             	push   0xfe
   2f31d:	a1 01 3b             	mov    ax,ds:0x3b01
   2f320:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f324:	50                   	push   ax
   2f325:	6a 41                	push   0x41
   2f327:	6a 42                	push   0x42
   2f329:	9a 15 06 28 00       	call   0x28:0x615
   2f32e:	83 c4 0c             	add    sp,0xc
   2f331:	6a 34                	push   0x34
   2f333:	6a 30                	push   0x30
   2f335:	6a 41                	push   0x41
   2f337:	0e                   	push   cs
   2f338:	e8 9d 91             	call   0x284d8
   2f33b:	83 c4 06             	add    sp,0x6
   2f33e:	6a 0c                	push   0xc
   2f340:	90                   	nop
   2f341:	0e                   	push   cs
   2f342:	e8 0f 21             	call   0x21454
   2f345:	59                   	pop    cx
   2f346:	c9                   	leave
   2f347:	cb                   	retf
   2f348:	55                   	push   bp
   2f349:	8b ec                	mov    bp,sp
   2f34b:	83 ec 14             	sub    sp,0x14
   2f34e:	a0 08 3b             	mov    al,ds:0x3b08
   2f351:	b4 00                	mov    ah,0x0
   2f353:	0b c0                	or     ax,ax
   2f355:	75 0a                	jne    0x2f361
   2f357:	6a 01                	push   0x1
   2f359:	9a 2f 00 18 01       	call   0x118:0x2f
   2f35e:	e9 a4 04             	jmp    0x2f805
   2f361:	c7 46 fc 12 00       	mov    WORD PTR [bp-0x4],0x12
   2f366:	a1 01 3b             	mov    ax,ds:0x3b01
   2f369:	bb 03 00             	mov    bx,0x3
   2f36c:	99                   	cwd
   2f36d:	f7 fb                	idiv   bx
   2f36f:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   2f372:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   2f376:	74 0d                	je     0x2f385
   2f378:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   2f37b:	6b c0 64             	imul   ax,ax,0x64
   2f37e:	99                   	cwd
   2f37f:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2f382:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2f385:	6a 0b                	push   0xb
   2f387:	90                   	nop
   2f388:	0e                   	push   cs
   2f389:	e8 78 20             	call   0x21404
   2f38c:	59                   	pop    cx
   2f38d:	68 e0 01             	push   0x1e0
   2f390:	68 d0 02             	push   0x2d0
   2f393:	6a 44                	push   0x44
   2f395:	6a 51                	push   0x51
   2f397:	6a 44                	push   0x44
   2f399:	6a 00                	push   0x0
   2f39b:	6a 20                	push   0x20
   2f39d:	6a 3c                	push   0x3c
   2f39f:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2f3a4:	75 05                	jne    0x2f3ab
   2f3a6:	b8 94 00             	mov    ax,0x94
   2f3a9:	eb 03                	jmp    0x2f3ae
   2f3ab:	b8 14 00             	mov    ax,0x14
   2f3ae:	50                   	push   ax
   2f3af:	a0 06 3b             	mov    al,ds:0x3b06
   2f3b2:	b4 00                	mov    ah,0x0
   2f3b4:	48                   	dec    ax
   2f3b5:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f3b9:	05 46 00             	add    ax,0x46
   2f3bc:	50                   	push   ax
   2f3bd:	9a 30 04 28 00       	call   0x28:0x430
   2f3c2:	83 c4 14             	add    sp,0x14
   2f3c5:	68 fe 00             	push   0xfe
   2f3c8:	6a 51                	push   0x51
   2f3ca:	6a 20                	push   0x20
   2f3cc:	6a 3c                	push   0x3c
   2f3ce:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2f3d3:	75 05                	jne    0x2f3da
   2f3d5:	b8 94 00             	mov    ax,0x94
   2f3d8:	eb 03                	jmp    0x2f3dd
   2f3da:	b8 14 00             	mov    ax,0x14
   2f3dd:	50                   	push   ax
   2f3de:	a0 06 3b             	mov    al,ds:0x3b06
   2f3e1:	b4 00                	mov    ah,0x0
   2f3e3:	48                   	dec    ax
   2f3e4:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f3e8:	05 46 00             	add    ax,0x46
   2f3eb:	50                   	push   ax
   2f3ec:	9a 08 09 28 00       	call   0x28:0x908
   2f3f1:	83 c4 0c             	add    sp,0xc
   2f3f4:	6a 04                	push   0x4
   2f3f6:	90                   	nop
   2f3f7:	0e                   	push   cs
   2f3f8:	e8 09 20             	call   0x21404
   2f3fb:	59                   	pop    cx
   2f3fc:	68 fe 00             	push   0xfe
   2f3ff:	a1 01 3b             	mov    ax,ds:0x3b01
   2f402:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f406:	50                   	push   ax
   2f407:	6a 43                	push   0x43
   2f409:	9a dc 16 28 00       	call   0x28:0x16dc
   2f40e:	83 c4 06             	add    sp,0x6
   2f411:	6a 43                	push   0x43
   2f413:	0e                   	push   cs
   2f414:	e8 4b c9             	call   0x2bd62
   2f417:	59                   	pop    cx
   2f418:	68 e0 01             	push   0x1e0
   2f41b:	68 d0 02             	push   0x2d0
   2f41e:	6a 42                	push   0x42
   2f420:	6a 51                	push   0x51
   2f422:	6a 00                	push   0x0
   2f424:	6a 00                	push   0x0
   2f426:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f42a:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f42e:	6a 00                	push   0x0
   2f430:	a0 06 3b             	mov    al,ds:0x3b06
   2f433:	b4 00                	mov    ah,0x0
   2f435:	48                   	dec    ax
   2f436:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f43a:	50                   	push   ax
   2f43b:	9a 30 04 28 00       	call   0x28:0x430
   2f440:	83 c4 14             	add    sp,0x14
   2f443:	a0 06 3b             	mov    al,ds:0x3b06
   2f446:	b4 00                	mov    ah,0x0
   2f448:	3d 01 00             	cmp    ax,0x1
   2f44b:	75 03                	jne    0x2f450
   2f44d:	e9 6b 01             	jmp    0x2f5bb
   2f450:	3d 02 00             	cmp    ax,0x2
   2f453:	74 03                	je     0x2f458
   2f455:	e9 cf 02             	jmp    0x2f727
   2f458:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   2f45d:	b8 88 01             	mov    ax,0x188
   2f460:	8e c0                	mov    es,ax
   2f462:	26 a1 4a e7          	mov    ax,es:0xe74a
   2f466:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   2f469:	e9 41 01             	jmp    0x2f5ad
   2f46c:	9a e3 01 40 00       	call   0x40:0x1e3
   2f471:	68 fe 00             	push   0xfe
   2f474:	a1 01 3b             	mov    ax,ds:0x3b01
   2f477:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f47b:	50                   	push   ax
   2f47c:	6a 41                	push   0x41
   2f47e:	9a dc 16 28 00       	call   0x28:0x16dc
   2f483:	83 c4 06             	add    sp,0x6
   2f486:	6a 41                	push   0x41
   2f488:	6a 40                	push   0x40
   2f48a:	a0 f0 b9             	mov    al,ds:0xb9f0
   2f48d:	b4 00                	mov    ah,0x0
   2f48f:	bb 04 00             	mov    bx,0x4
   2f492:	99                   	cwd
   2f493:	f7 fb                	idiv   bx
   2f495:	89 56 ec             	mov    WORD PTR [bp-0x14],dx
   2f498:	cd 3b                	int    0x3b
   2f49a:	46                   	inc    si
   2f49b:	ec                   	in     al,dx
   2f49c:	83 ec 04             	sub    sp,0x4
   2f49f:	cd 35                	int    0x35
   2f4a1:	5e                   	pop    si
   2f4a2:	e4 cd                	in     al,0xcd
   2f4a4:	3d 90 0e             	cmp    ax,0xe90
   2f4a7:	e8 fe 1f             	call   0x214a8
   2f4aa:	83 c4 08             	add    sp,0x8
   2f4ad:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f4b0:	d1 e0                	shl    ax,1
   2f4b2:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f4b5:	bb 64 00             	mov    bx,0x64
   2f4b8:	99                   	cwd
   2f4b9:	f7 fb                	idiv   bx
   2f4bb:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f4bf:	2b d0                	sub    dx,ax
   2f4c1:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2f4c4:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f4c7:	d1 e0                	shl    ax,1
   2f4c9:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f4cc:	bb 64 00             	mov    bx,0x64
   2f4cf:	99                   	cwd
   2f4d0:	f7 fb                	idiv   bx
   2f4d2:	50                   	push   ax
   2f4d3:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f4d6:	5a                   	pop    dx
   2f4d7:	2b c2                	sub    ax,dx
   2f4d9:	99                   	cwd
   2f4da:	52                   	push   dx
   2f4db:	50                   	push   ax
   2f4dc:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f4df:	99                   	cwd
   2f4e0:	50                   	push   ax
   2f4e1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f4e4:	52                   	push   dx
   2f4e5:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f4e8:	bb 64 00             	mov    bx,0x64
   2f4eb:	99                   	cwd
   2f4ec:	f7 fb                	idiv   bx
   2f4ee:	50                   	push   ax
   2f4ef:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   2f4f2:	5a                   	pop    dx
   2f4f3:	2b c2                	sub    ax,dx
   2f4f5:	99                   	cwd
   2f4f6:	59                   	pop    cx
   2f4f7:	5b                   	pop    bx
   2f4f8:	9a 42 12 00 00       	call   0x0:0x1242
   2f4fd:	52                   	push   dx
   2f4fe:	50                   	push   ax
   2f4ff:	9a df 12 00 00       	call   0x0:0x12df
   2f504:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   2f507:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2f50a:	d1 e0                	shl    ax,1
   2f50c:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f510:	2b d0                	sub    dx,ax
   2f512:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2f515:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2f518:	d1 e0                	shl    ax,1
   2f51a:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2f51e:	2b d0                	sub    dx,ax
   2f520:	89 56 f2             	mov    WORD PTR [bp-0xe],dx
   2f523:	6a 00                	push   0x0
   2f525:	6a 41                	push   0x41
   2f527:	6a 43                	push   0x43
   2f529:	ff 76 f2             	push   WORD PTR [bp-0xe]
   2f52c:	ff 76 f4             	push   WORD PTR [bp-0xc]
   2f52f:	6a 00                	push   0x0
   2f531:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2f534:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f538:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f53c:	6a 00                	push   0x0
   2f53e:	6a 00                	push   0x0
   2f540:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f545:	83 c4 16             	add    sp,0x16
   2f548:	6a 00                	push   0x0
   2f54a:	6a 41                	push   0x41
   2f54c:	6a 42                	push   0x42
   2f54e:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f552:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f556:	6a 00                	push   0x0
   2f558:	6a 00                	push   0x0
   2f55a:	ff 76 fa             	push   WORD PTR [bp-0x6]
   2f55d:	ff 76 fa             	push   WORD PTR [bp-0x6]
   2f560:	6a 00                	push   0x0
   2f562:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f565:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f568:	bb 64 00             	mov    bx,0x64
   2f56b:	99                   	cwd
   2f56c:	f7 fb                	idiv   bx
   2f56e:	50                   	push   ax
   2f56f:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f574:	83 c4 16             	add    sp,0x16
   2f577:	6a 34                	push   0x34
   2f579:	6a 30                	push   0x30
   2f57b:	6a 41                	push   0x41
   2f57d:	0e                   	push   cs
   2f57e:	e8 57 8f             	call   0x284d8
   2f581:	83 c4 06             	add    sp,0x6
   2f584:	6a 00                	push   0x0
   2f586:	68 e8 03             	push   0x3e8
   2f589:	b8 88 01             	mov    ax,0x188
   2f58c:	8e c0                	mov    es,ax
   2f58e:	26 8b 1e 4a e7       	mov    bx,WORD PTR es:0xe74a
   2f593:	2b 5e ee             	sub    bx,WORD PTR [bp-0x12]
   2f596:	33 c9                	xor    cx,cx
   2f598:	33 d2                	xor    dx,dx
   2f59a:	b8 1e 00             	mov    ax,0x1e
   2f59d:	9a 42 12 00 00       	call   0x0:0x1242
   2f5a2:	52                   	push   dx
   2f5a3:	50                   	push   ax
   2f5a4:	9a df 12 00 00       	call   0x0:0x12df
   2f5a9:	40                   	inc    ax
   2f5aa:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2f5ad:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f5b0:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   2f5b3:	7f 03                	jg     0x2f5b8
   2f5b5:	e9 b4 fe             	jmp    0x2f46c
   2f5b8:	e9 81 01             	jmp    0x2f73c
   2f5bb:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   2f5c0:	b8 88 01             	mov    ax,0x188
   2f5c3:	8e c0                	mov    es,ax
   2f5c5:	26 a1 4a e7          	mov    ax,es:0xe74a
   2f5c9:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   2f5cc:	e9 4b 01             	jmp    0x2f71a
   2f5cf:	9a e3 01 40 00       	call   0x40:0x1e3
   2f5d4:	68 fe 00             	push   0xfe
   2f5d7:	a1 01 3b             	mov    ax,ds:0x3b01
   2f5da:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f5de:	50                   	push   ax
   2f5df:	6a 41                	push   0x41
   2f5e1:	9a dc 16 28 00       	call   0x28:0x16dc
   2f5e6:	83 c4 06             	add    sp,0x6
   2f5e9:	6a 41                	push   0x41
   2f5eb:	6a 40                	push   0x40
   2f5ed:	a0 f0 b9             	mov    al,ds:0xb9f0
   2f5f0:	b4 00                	mov    ah,0x0
   2f5f2:	bb 04 00             	mov    bx,0x4
   2f5f5:	99                   	cwd
   2f5f6:	f7 fb                	idiv   bx
   2f5f8:	89 56 ec             	mov    WORD PTR [bp-0x14],dx
   2f5fb:	cd 3b                	int    0x3b
   2f5fd:	46                   	inc    si
   2f5fe:	ec                   	in     al,dx
   2f5ff:	83 ec 04             	sub    sp,0x4
   2f602:	cd 35                	int    0x35
   2f604:	5e                   	pop    si
   2f605:	e4 cd                	in     al,0xcd
   2f607:	3d 90 0e             	cmp    ax,0xe90
   2f60a:	e8 9b 1e             	call   0x214a8
   2f60d:	83 c4 08             	add    sp,0x8
   2f610:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f613:	d1 e0                	shl    ax,1
   2f615:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f618:	bb 64 00             	mov    bx,0x64
   2f61b:	99                   	cwd
   2f61c:	f7 fb                	idiv   bx
   2f61e:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f622:	2b d0                	sub    dx,ax
   2f624:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2f627:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f62a:	d1 e0                	shl    ax,1
   2f62c:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f62f:	bb 64 00             	mov    bx,0x64
   2f632:	99                   	cwd
   2f633:	f7 fb                	idiv   bx
   2f635:	50                   	push   ax
   2f636:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f639:	5a                   	pop    dx
   2f63a:	2b c2                	sub    ax,dx
   2f63c:	99                   	cwd
   2f63d:	52                   	push   dx
   2f63e:	50                   	push   ax
   2f63f:	a1 ff 3a             	mov    ax,ds:0x3aff
   2f642:	99                   	cwd
   2f643:	50                   	push   ax
   2f644:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f647:	52                   	push   dx
   2f648:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f64b:	bb 64 00             	mov    bx,0x64
   2f64e:	99                   	cwd
   2f64f:	f7 fb                	idiv   bx
   2f651:	50                   	push   ax
   2f652:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   2f655:	5a                   	pop    dx
   2f656:	2b c2                	sub    ax,dx
   2f658:	99                   	cwd
   2f659:	59                   	pop    cx
   2f65a:	5b                   	pop    bx
   2f65b:	9a 42 12 00 00       	call   0x0:0x1242
   2f660:	52                   	push   dx
   2f661:	50                   	push   ax
   2f662:	9a df 12 00 00       	call   0x0:0x12df
   2f667:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   2f66a:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2f66d:	d1 e0                	shl    ax,1
   2f66f:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f673:	2b d0                	sub    dx,ax
   2f675:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2f678:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2f67b:	d1 e0                	shl    ax,1
   2f67d:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2f681:	2b d0                	sub    dx,ax
   2f683:	89 56 f2             	mov    WORD PTR [bp-0xe],dx
   2f686:	6a 00                	push   0x0
   2f688:	6a 41                	push   0x41
   2f68a:	6a 43                	push   0x43
   2f68c:	ff 76 f2             	push   WORD PTR [bp-0xe]
   2f68f:	ff 76 f4             	push   WORD PTR [bp-0xc]
   2f692:	a1 01 3b             	mov    ax,ds:0x3b01
   2f695:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   2f698:	50                   	push   ax
   2f699:	ff 76 f8             	push   WORD PTR [bp-0x8]
   2f69c:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f6a0:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f6a4:	6a 00                	push   0x0
   2f6a6:	6a 00                	push   0x0
   2f6a8:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f6ad:	83 c4 16             	add    sp,0x16
   2f6b0:	6a 00                	push   0x0
   2f6b2:	6a 41                	push   0x41
   2f6b4:	6a 42                	push   0x42
   2f6b6:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f6ba:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f6be:	6a 00                	push   0x0
   2f6c0:	6a 00                	push   0x0
   2f6c2:	ff 76 fa             	push   WORD PTR [bp-0x6]
   2f6c5:	ff 76 fa             	push   WORD PTR [bp-0x6]
   2f6c8:	a1 01 3b             	mov    ax,ds:0x3b01
   2f6cb:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   2f6ce:	50                   	push   ax
   2f6cf:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f6d2:	f7 6e f6             	imul   WORD PTR [bp-0xa]
   2f6d5:	bb 64 00             	mov    bx,0x64
   2f6d8:	99                   	cwd
   2f6d9:	f7 fb                	idiv   bx
   2f6db:	50                   	push   ax
   2f6dc:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f6e1:	83 c4 16             	add    sp,0x16
   2f6e4:	6a 34                	push   0x34
   2f6e6:	6a 30                	push   0x30
   2f6e8:	6a 41                	push   0x41
   2f6ea:	0e                   	push   cs
   2f6eb:	e8 ea 8d             	call   0x284d8
   2f6ee:	83 c4 06             	add    sp,0x6
   2f6f1:	6a 00                	push   0x0
   2f6f3:	68 e8 03             	push   0x3e8
   2f6f6:	b8 88 01             	mov    ax,0x188
   2f6f9:	8e c0                	mov    es,ax
   2f6fb:	26 8b 1e 4a e7       	mov    bx,WORD PTR es:0xe74a
   2f700:	2b 5e ee             	sub    bx,WORD PTR [bp-0x12]
   2f703:	33 c9                	xor    cx,cx
   2f705:	33 d2                	xor    dx,dx
   2f707:	b8 1e 00             	mov    ax,0x1e
   2f70a:	9a 42 12 00 00       	call   0x0:0x1242
   2f70f:	52                   	push   dx
   2f710:	50                   	push   ax
   2f711:	9a df 12 00 00       	call   0x0:0x12df
   2f716:	40                   	inc    ax
   2f717:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2f71a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f71d:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   2f720:	7f 03                	jg     0x2f725
   2f722:	e9 aa fe             	jmp    0x2f5cf
   2f725:	eb 15                	jmp    0x2f73c
   2f727:	6a 50                	push   0x50
   2f729:	6a 00                	push   0x0
   2f72b:	6a 00                	push   0x0
   2f72d:	68 50 07             	push   0x750
   2f730:	1e                   	push   ds
   2f731:	68 15 3d             	push   0x3d15
   2f734:	9a 2a 00 58 01       	call   0x158:0x2a
   2f739:	83 c4 0c             	add    sp,0xc
   2f73c:	68 fe 00             	push   0xfe
   2f73f:	a1 01 3b             	mov    ax,ds:0x3b01
   2f742:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f746:	50                   	push   ax
   2f747:	6a 41                	push   0x41
   2f749:	9a dc 16 28 00       	call   0x28:0x16dc
   2f74e:	83 c4 06             	add    sp,0x6
   2f751:	6a 41                	push   0x41
   2f753:	6a 40                	push   0x40
   2f755:	a0 f0 b9             	mov    al,ds:0xb9f0
   2f758:	b4 00                	mov    ah,0x0
   2f75a:	bb 04 00             	mov    bx,0x4
   2f75d:	99                   	cwd
   2f75e:	f7 fb                	idiv   bx
   2f760:	89 56 ec             	mov    WORD PTR [bp-0x14],dx
   2f763:	cd 3b                	int    0x3b
   2f765:	46                   	inc    si
   2f766:	ec                   	in     al,dx
   2f767:	83 ec 04             	sub    sp,0x4
   2f76a:	cd 35                	int    0x35
   2f76c:	5e                   	pop    si
   2f76d:	e4 cd                	in     al,0xcd
   2f76f:	3d 90 0e             	cmp    ax,0xe90
   2f772:	e8 33 1d             	call   0x214a8
   2f775:	83 c4 08             	add    sp,0x8
   2f778:	68 20 00             	push   0x20
   2f77b:	68 4c 00             	push   0x4c
   2f77e:	68 fe 00             	push   0xfe
   2f781:	a1 01 3b             	mov    ax,ds:0x3b01
   2f784:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f788:	50                   	push   ax
   2f789:	6a 41                	push   0x41
   2f78b:	6a 43                	push   0x43
   2f78d:	9a 15 06 28 00       	call   0x28:0x615
   2f792:	83 c4 0c             	add    sp,0xc
   2f795:	6a 34                	push   0x34
   2f797:	6a 30                	push   0x30
   2f799:	6a 41                	push   0x41
   2f79b:	0e                   	push   cs
   2f79c:	e8 39 8d             	call   0x284d8
   2f79f:	83 c4 06             	add    sp,0x6
   2f7a2:	68 20 00             	push   0x20
   2f7a5:	68 06 00             	push   0x6
   2f7a8:	6a 00                	push   0x0
   2f7aa:	a1 01 3b             	mov    ax,ds:0x3b01
   2f7ad:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f7b1:	50                   	push   ax
   2f7b2:	6a 42                	push   0x42
   2f7b4:	6a 43                	push   0x43
   2f7b6:	9a 15 06 28 00       	call   0x28:0x615
   2f7bb:	83 c4 0c             	add    sp,0xc
   2f7be:	6a 04                	push   0x4
   2f7c0:	90                   	nop
   2f7c1:	0e                   	push   cs
   2f7c2:	e8 8f 1c             	call   0x21454
   2f7c5:	59                   	pop    cx
   2f7c6:	68 e0 01             	push   0x1e0
   2f7c9:	68 d0 02             	push   0x2d0
   2f7cc:	6a 51                	push   0x51
   2f7ce:	6a 44                	push   0x44
   2f7d0:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2f7d5:	75 05                	jne    0x2f7dc
   2f7d7:	b8 94 00             	mov    ax,0x94
   2f7da:	eb 03                	jmp    0x2f7df
   2f7dc:	b8 14 00             	mov    ax,0x14
   2f7df:	50                   	push   ax
   2f7e0:	a0 06 3b             	mov    al,ds:0x3b06
   2f7e3:	b4 00                	mov    ah,0x0
   2f7e5:	48                   	dec    ax
   2f7e6:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f7ea:	05 46 00             	add    ax,0x46
   2f7ed:	50                   	push   ax
   2f7ee:	6a 20                	push   0x20
   2f7f0:	6a 3c                	push   0x3c
   2f7f2:	6a 44                	push   0x44
   2f7f4:	6a 00                	push   0x0
   2f7f6:	9a 30 04 28 00       	call   0x28:0x430
   2f7fb:	83 c4 14             	add    sp,0x14
   2f7fe:	6a 08                	push   0x8
   2f800:	90                   	nop
   2f801:	0e                   	push   cs
   2f802:	e8 4f 1c             	call   0x21454
   2f805:	59                   	pop    cx
   2f806:	c9                   	leave
   2f807:	cb                   	retf
   2f808:	55                   	push   bp
   2f809:	8b ec                	mov    bp,sp
   2f80b:	83 ec 2c             	sub    sp,0x2c
   2f80e:	b8 88 01             	mov    ax,0x188
   2f811:	8e c0                	mov    es,ax
   2f813:	26 83 3e 74 6d 00    	cmp    WORD PTR es:0x6d74,0x0
   2f819:	75 17                	jne    0x2f832
   2f81b:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2f81e:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   2f822:	a3 f3 b9             	mov    ds:0xb9f3,ax
   2f825:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2f828:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   2f82c:	a3 f1 b9             	mov    ds:0xb9f1,ax
   2f82f:	e9 88 05             	jmp    0x2fdba
   2f832:	b8 88 01             	mov    ax,0x188
   2f835:	8e c0                	mov    es,ax
   2f837:	26 a1 74 6d          	mov    ax,es:0x6d74
   2f83b:	bb 02 00             	mov    bx,0x2
   2f83e:	99                   	cwd
   2f83f:	f7 fb                	idiv   bx
   2f841:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   2f844:	c7 46 ec 1e 00       	mov    WORD PTR [bp-0x14],0x1e
   2f849:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   2f84d:	74 0d                	je     0x2f85c
   2f84f:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2f852:	6b c0 64             	imul   ax,ax,0x64
   2f855:	99                   	cwd
   2f856:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2f859:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   2f85c:	c7 46 e8 20 00       	mov    WORD PTR [bp-0x18],0x20
   2f861:	6a 01                	push   0x1
   2f863:	90                   	nop
   2f864:	0e                   	push   cs
   2f865:	e8 ec 1b             	call   0x21454
   2f868:	59                   	pop    cx
   2f869:	6a 0e                	push   0xe
   2f86b:	90                   	nop
   2f86c:	0e                   	push   cs
   2f86d:	e8 94 1b             	call   0x21404
   2f870:	59                   	pop    cx
   2f871:	68 fe 00             	push   0xfe
   2f874:	a1 01 3b             	mov    ax,ds:0x3b01
   2f877:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f87b:	50                   	push   ax
   2f87c:	6a 43                	push   0x43
   2f87e:	9a dc 16 28 00       	call   0x28:0x16dc
   2f883:	83 c4 06             	add    sp,0x6
   2f886:	68 fe 00             	push   0xfe
   2f889:	a1 01 3b             	mov    ax,ds:0x3b01
   2f88c:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f890:	50                   	push   ax
   2f891:	6a 44                	push   0x44
   2f893:	9a dc 16 28 00       	call   0x28:0x16dc
   2f898:	83 c4 06             	add    sp,0x6
   2f89b:	a1 f3 b9             	mov    ax,ds:0xb9f3
   2f89e:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   2f8a2:	a3 f3 b9             	mov    ds:0xb9f3,ax
   2f8a5:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2f8a8:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   2f8ac:	a3 f1 b9             	mov    ds:0xb9f1,ax
   2f8af:	6a 43                	push   0x43
   2f8b1:	0e                   	push   cs
   2f8b2:	e8 ad c4             	call   0x2bd62
   2f8b5:	59                   	pop    cx
   2f8b6:	6a 00                	push   0x0
   2f8b8:	6a 44                	push   0x44
   2f8ba:	6a 43                	push   0x43
   2f8bc:	6a 44                	push   0x44
   2f8be:	6a 44                	push   0x44
   2f8c0:	6a 00                	push   0x0
   2f8c2:	6a 00                	push   0x0
   2f8c4:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f8c8:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f8cc:	6a 00                	push   0x0
   2f8ce:	6a 00                	push   0x0
   2f8d0:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2f8d5:	83 c4 16             	add    sp,0x16
   2f8d8:	68 e0 01             	push   0x1e0
   2f8db:	68 d0 02             	push   0x2d0
   2f8de:	6a 44                	push   0x44
   2f8e0:	6a 51                	push   0x51
   2f8e2:	6a 44                	push   0x44
   2f8e4:	6a 00                	push   0x0
   2f8e6:	6a 20                	push   0x20
   2f8e8:	6a 3c                	push   0x3c
   2f8ea:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2f8ef:	75 05                	jne    0x2f8f6
   2f8f1:	b8 94 00             	mov    ax,0x94
   2f8f4:	eb 03                	jmp    0x2f8f9
   2f8f6:	b8 14 00             	mov    ax,0x14
   2f8f9:	50                   	push   ax
   2f8fa:	a0 06 3b             	mov    al,ds:0x3b06
   2f8fd:	b4 00                	mov    ah,0x0
   2f8ff:	48                   	dec    ax
   2f900:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f904:	05 46 00             	add    ax,0x46
   2f907:	50                   	push   ax
   2f908:	9a 30 04 28 00       	call   0x28:0x430
   2f90d:	83 c4 14             	add    sp,0x14
   2f910:	68 fe 00             	push   0xfe
   2f913:	6a 51                	push   0x51
   2f915:	6a 20                	push   0x20
   2f917:	6a 3c                	push   0x3c
   2f919:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2f91e:	75 05                	jne    0x2f925
   2f920:	b8 94 00             	mov    ax,0x94
   2f923:	eb 03                	jmp    0x2f928
   2f925:	b8 14 00             	mov    ax,0x14
   2f928:	50                   	push   ax
   2f929:	a0 06 3b             	mov    al,ds:0x3b06
   2f92c:	b4 00                	mov    ah,0x0
   2f92e:	48                   	dec    ax
   2f92f:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f933:	05 46 00             	add    ax,0x46
   2f936:	50                   	push   ax
   2f937:	9a 08 09 28 00       	call   0x28:0x908
   2f93c:	83 c4 0c             	add    sp,0xc
   2f93f:	68 fe 00             	push   0xfe
   2f942:	a1 01 3b             	mov    ax,ds:0x3b01
   2f945:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f949:	50                   	push   ax
   2f94a:	6a 43                	push   0x43
   2f94c:	9a dc 16 28 00       	call   0x28:0x16dc
   2f951:	83 c4 06             	add    sp,0x6
   2f954:	68 e0 01             	push   0x1e0
   2f957:	68 d0 02             	push   0x2d0
   2f95a:	6a 43                	push   0x43
   2f95c:	6a 51                	push   0x51
   2f95e:	6a 00                	push   0x0
   2f960:	6a 00                	push   0x0
   2f962:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2f966:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2f96a:	6a 00                	push   0x0
   2f96c:	a0 06 3b             	mov    al,ds:0x3b06
   2f96f:	b4 00                	mov    ah,0x0
   2f971:	48                   	dec    ax
   2f972:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f976:	50                   	push   ax
   2f977:	9a 30 04 28 00       	call   0x28:0x430
   2f97c:	83 c4 14             	add    sp,0x14
   2f97f:	6a 01                	push   0x1
   2f981:	90                   	nop
   2f982:	0e                   	push   cs
   2f983:	e8 7e 1a             	call   0x21404
   2f986:	59                   	pop    cx
   2f987:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   2f98c:	b8 88 01             	mov    ax,0x188
   2f98f:	8e c0                	mov    es,ax
   2f991:	26 a1 4a e7          	mov    ax,es:0xe74a
   2f995:	89 46 d6             	mov    WORD PTR [bp-0x2a],ax
   2f998:	e9 4f 03             	jmp    0x2fcea
   2f99b:	9a e3 01 40 00       	call   0x40:0x1e3
   2f9a0:	68 fe 00             	push   0xfe
   2f9a3:	a1 01 3b             	mov    ax,ds:0x3b01
   2f9a6:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2f9aa:	50                   	push   ax
   2f9ab:	6a 41                	push   0x41
   2f9ad:	9a dc 16 28 00       	call   0x28:0x16dc
   2f9b2:	83 c4 06             	add    sp,0x6
   2f9b5:	6a 41                	push   0x41
   2f9b7:	6a 40                	push   0x40
   2f9b9:	a0 f0 b9             	mov    al,ds:0xb9f0
   2f9bc:	b4 00                	mov    ah,0x0
   2f9be:	bb 04 00             	mov    bx,0x4
   2f9c1:	99                   	cwd
   2f9c2:	f7 fb                	idiv   bx
   2f9c4:	89 56 d4             	mov    WORD PTR [bp-0x2c],dx
   2f9c7:	cd 3b                	int    0x3b
   2f9c9:	46                   	inc    si
   2f9ca:	d4 83                	aam    0x83
   2f9cc:	ec                   	in     al,dx
   2f9cd:	04 cd                	add    al,0xcd
   2f9cf:	35 5e cc             	xor    ax,0xcc5e
   2f9d2:	cd 3d                	int    0x3d
   2f9d4:	90                   	nop
   2f9d5:	0e                   	push   cs
   2f9d6:	e8 cf 1a             	call   0x214a8
   2f9d9:	83 c4 08             	add    sp,0x8
   2f9dc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f9df:	d1 e0                	shl    ax,1
   2f9e1:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2f9e4:	bb 64 00             	mov    bx,0x64
   2f9e7:	99                   	cwd
   2f9e8:	f7 fb                	idiv   bx
   2f9ea:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2f9ee:	2b d0                	sub    dx,ax
   2f9f0:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2f9f3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2f9f6:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2f9f9:	bb 64 00             	mov    bx,0x64
   2f9fc:	99                   	cwd
   2f9fd:	f7 fb                	idiv   bx
   2f9ff:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   2fa02:	2b d0                	sub    dx,ax
   2fa04:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2fa07:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fa0a:	d1 e0                	shl    ax,1
   2fa0c:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fa0f:	bb 64 00             	mov    bx,0x64
   2fa12:	99                   	cwd
   2fa13:	f7 fb                	idiv   bx
   2fa15:	50                   	push   ax
   2fa16:	a1 ff 3a             	mov    ax,ds:0x3aff
   2fa19:	5a                   	pop    dx
   2fa1a:	2b c2                	sub    ax,dx
   2fa1c:	99                   	cwd
   2fa1d:	52                   	push   dx
   2fa1e:	50                   	push   ax
   2fa1f:	a1 ff 3a             	mov    ax,ds:0x3aff
   2fa22:	99                   	cwd
   2fa23:	50                   	push   ax
   2fa24:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fa27:	52                   	push   dx
   2fa28:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fa2b:	bb 64 00             	mov    bx,0x64
   2fa2e:	99                   	cwd
   2fa2f:	f7 fb                	idiv   bx
   2fa31:	50                   	push   ax
   2fa32:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2fa35:	5a                   	pop    dx
   2fa36:	2b c2                	sub    ax,dx
   2fa38:	99                   	cwd
   2fa39:	59                   	pop    cx
   2fa3a:	5b                   	pop    bx
   2fa3b:	9a 42 12 00 00       	call   0x0:0x1242
   2fa40:	52                   	push   dx
   2fa41:	50                   	push   ax
   2fa42:	9a df 12 00 00       	call   0x0:0x12df
   2fa47:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   2fa4a:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2fa4d:	d1 e0                	shl    ax,1
   2fa4f:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2fa53:	2b d0                	sub    dx,ax
   2fa55:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   2fa58:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fa5b:	d1 e0                	shl    ax,1
   2fa5d:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2fa61:	2b d0                	sub    dx,ax
   2fa63:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   2fa66:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fa69:	d1 e0                	shl    ax,1
   2fa6b:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2fa6f:	2b d0                	sub    dx,ax
   2fa71:	89 56 ee             	mov    WORD PTR [bp-0x12],dx
   2fa74:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fa77:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fa7a:	bb 64 00             	mov    bx,0x64
   2fa7d:	99                   	cwd
   2fa7e:	f7 fb                	idiv   bx
   2fa80:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   2fa83:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fa86:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fa89:	bb 64 00             	mov    bx,0x64
   2fa8c:	99                   	cwd
   2fa8d:	f7 fb                	idiv   bx
   2fa8f:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   2fa92:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2fa95:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   2fa98:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2fa9b:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   2fa9e:	c7 46 de 00 00       	mov    WORD PTR [bp-0x22],0x0
   2faa3:	c7 46 dc 00 00       	mov    WORD PTR [bp-0x24],0x0
   2faa8:	a1 ff 3a             	mov    ax,ds:0x3aff
   2faab:	89 46 da             	mov    WORD PTR [bp-0x26],ax
   2faae:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fab1:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   2fab4:	6a 00                	push   0x0
   2fab6:	6a 41                	push   0x41
   2fab8:	6a 42                	push   0x42
   2faba:	ff 76 d8             	push   WORD PTR [bp-0x28]
   2fabd:	ff 76 da             	push   WORD PTR [bp-0x26]
   2fac0:	ff 76 dc             	push   WORD PTR [bp-0x24]
   2fac3:	ff 76 de             	push   WORD PTR [bp-0x22]
   2fac6:	ff 76 e0             	push   WORD PTR [bp-0x20]
   2fac9:	ff 76 e2             	push   WORD PTR [bp-0x1e]
   2facc:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2facf:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2fad2:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2fad7:	83 c4 16             	add    sp,0x16
   2fada:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fadd:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fae0:	bb 64 00             	mov    bx,0x64
   2fae3:	99                   	cwd
   2fae4:	f7 fb                	idiv   bx
   2fae6:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   2fae9:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2faec:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   2faef:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2faf2:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   2faf5:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2faf8:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   2fafb:	c7 46 de 00 00       	mov    WORD PTR [bp-0x22],0x0
   2fb00:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fb03:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   2fb06:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fb09:	89 46 da             	mov    WORD PTR [bp-0x26],ax
   2fb0c:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   2fb0f:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   2fb12:	6a 00                	push   0x0
   2fb14:	6a 41                	push   0x41
   2fb16:	6a 42                	push   0x42
   2fb18:	ff 76 d8             	push   WORD PTR [bp-0x28]
   2fb1b:	ff 76 da             	push   WORD PTR [bp-0x26]
   2fb1e:	ff 76 dc             	push   WORD PTR [bp-0x24]
   2fb21:	ff 76 de             	push   WORD PTR [bp-0x22]
   2fb24:	ff 76 e0             	push   WORD PTR [bp-0x20]
   2fb27:	ff 76 e2             	push   WORD PTR [bp-0x1e]
   2fb2a:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2fb2d:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2fb30:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2fb35:	83 c4 16             	add    sp,0x16
   2fb38:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fb3b:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fb3e:	bb 64 00             	mov    bx,0x64
   2fb41:	99                   	cwd
   2fb42:	f7 fb                	idiv   bx
   2fb44:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   2fb48:	2b d0                	sub    dx,ax
   2fb4a:	2b 56 f8             	sub    dx,WORD PTR [bp-0x8]
   2fb4d:	89 56 e6             	mov    WORD PTR [bp-0x1a],dx
   2fb50:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   2fb53:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   2fb56:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2fb59:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   2fb5c:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   2fb5f:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   2fb62:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   2fb65:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   2fb68:	89 46 de             	mov    WORD PTR [bp-0x22],ax
   2fb6b:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fb6e:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   2fb71:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fb74:	89 46 da             	mov    WORD PTR [bp-0x26],ax
   2fb77:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   2fb7a:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   2fb7d:	6a 00                	push   0x0
   2fb7f:	6a 41                	push   0x41
   2fb81:	6a 42                	push   0x42
   2fb83:	ff 76 d8             	push   WORD PTR [bp-0x28]
   2fb86:	ff 76 da             	push   WORD PTR [bp-0x26]
   2fb89:	ff 76 dc             	push   WORD PTR [bp-0x24]
   2fb8c:	ff 76 de             	push   WORD PTR [bp-0x22]
   2fb8f:	ff 76 e0             	push   WORD PTR [bp-0x20]
   2fb92:	ff 76 e2             	push   WORD PTR [bp-0x1e]
   2fb95:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2fb98:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2fb9b:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2fba0:	83 c4 16             	add    sp,0x16
   2fba3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fba6:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fba9:	bb 64 00             	mov    bx,0x64
   2fbac:	99                   	cwd
   2fbad:	f7 fb                	idiv   bx
   2fbaf:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   2fbb2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fbb5:	f7 6e f2             	imul   WORD PTR [bp-0xe]
   2fbb8:	bb 64 00             	mov    bx,0x64
   2fbbb:	99                   	cwd
   2fbbc:	f7 fb                	idiv   bx
   2fbbe:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2fbc2:	2b d0                	sub    dx,ax
   2fbc4:	2b 56 f8             	sub    dx,WORD PTR [bp-0x8]
   2fbc7:	89 56 e4             	mov    WORD PTR [bp-0x1c],dx
   2fbca:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   2fbcd:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   2fbd0:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   2fbd3:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   2fbd6:	c7 46 de 00 00       	mov    WORD PTR [bp-0x22],0x0
   2fbdb:	a1 01 3b             	mov    ax,ds:0x3b01
   2fbde:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   2fbe1:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   2fbe4:	a1 ff 3a             	mov    ax,ds:0x3aff
   2fbe7:	89 46 da             	mov    WORD PTR [bp-0x26],ax
   2fbea:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2fbed:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   2fbf0:	6a 00                	push   0x0
   2fbf2:	6a 41                	push   0x41
   2fbf4:	6a 42                	push   0x42
   2fbf6:	ff 76 d8             	push   WORD PTR [bp-0x28]
   2fbf9:	ff 76 da             	push   WORD PTR [bp-0x26]
   2fbfc:	ff 76 dc             	push   WORD PTR [bp-0x24]
   2fbff:	ff 76 de             	push   WORD PTR [bp-0x22]
   2fc02:	ff 76 e0             	push   WORD PTR [bp-0x20]
   2fc05:	ff 76 e2             	push   WORD PTR [bp-0x1e]
   2fc08:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   2fc0b:	ff 76 e6             	push   WORD PTR [bp-0x1a]
   2fc0e:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2fc13:	83 c4 16             	add    sp,0x16
   2fc16:	68 e0 01             	push   0x1e0
   2fc19:	68 d0 02             	push   0x2d0
   2fc1c:	6a 43                	push   0x43
   2fc1e:	6a 44                	push   0x44
   2fc20:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2fc25:	75 05                	jne    0x2fc2c
   2fc27:	b8 94 00             	mov    ax,0x94
   2fc2a:	eb 03                	jmp    0x2fc2f
   2fc2c:	b8 14 00             	mov    ax,0x14
   2fc2f:	50                   	push   ax
   2fc30:	6a 46                	push   0x46
   2fc32:	6a 20                	push   0x20
   2fc34:	6a 3c                	push   0x3c
   2fc36:	6a 14                	push   0x14
   2fc38:	6a 06                	push   0x6
   2fc3a:	9a 30 04 28 00       	call   0x28:0x430
   2fc3f:	83 c4 14             	add    sp,0x14
   2fc42:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   2fc45:	6b c0 64             	imul   ax,ax,0x64
   2fc48:	99                   	cwd
   2fc49:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   2fc4c:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   2fc4f:	bb 64 00             	mov    bx,0x64
   2fc52:	99                   	cwd
   2fc53:	f7 fb                	idiv   bx
   2fc55:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   2fc58:	68 e0 01             	push   0x1e0
   2fc5b:	68 d0 02             	push   0x2d0
   2fc5e:	6a 43                	push   0x43
   2fc60:	6a 44                	push   0x44
   2fc62:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2fc67:	75 05                	jne    0x2fc6e
   2fc69:	b8 94 00             	mov    ax,0x94
   2fc6c:	eb 03                	jmp    0x2fc71
   2fc6e:	b8 14 00             	mov    ax,0x14
   2fc71:	50                   	push   ax
   2fc72:	6a 45                	push   0x45
   2fc74:	b8 20 00             	mov    ax,0x20
   2fc77:	2b 46 ea             	sub    ax,WORD PTR [bp-0x16]
   2fc7a:	50                   	push   ax
   2fc7b:	6a 3c                	push   0x3c
   2fc7d:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
   2fc80:	05 44 00             	add    ax,0x44
   2fc83:	50                   	push   ax
   2fc84:	6a 00                	push   0x0
   2fc86:	9a 30 04 28 00       	call   0x28:0x430
   2fc8b:	83 c4 14             	add    sp,0x14
   2fc8e:	6a 00                	push   0x0
   2fc90:	6a 41                	push   0x41
   2fc92:	6a 43                	push   0x43
   2fc94:	ff 76 ee             	push   WORD PTR [bp-0x12]
   2fc97:	ff 76 f0             	push   WORD PTR [bp-0x10]
   2fc9a:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2fc9d:	ff 76 f6             	push   WORD PTR [bp-0xa]
   2fca0:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   2fca4:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2fca8:	6a 00                	push   0x0
   2fcaa:	6a 00                	push   0x0
   2fcac:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2fcb1:	83 c4 16             	add    sp,0x16
   2fcb4:	6a 34                	push   0x34
   2fcb6:	6a 30                	push   0x30
   2fcb8:	6a 41                	push   0x41
   2fcba:	0e                   	push   cs
   2fcbb:	e8 1a 88             	call   0x284d8
   2fcbe:	83 c4 06             	add    sp,0x6
   2fcc1:	6a 00                	push   0x0
   2fcc3:	68 e8 03             	push   0x3e8
   2fcc6:	b8 88 01             	mov    ax,0x188
   2fcc9:	8e c0                	mov    es,ax
   2fccb:	26 8b 1e 4a e7       	mov    bx,WORD PTR es:0xe74a
   2fcd0:	2b 5e d6             	sub    bx,WORD PTR [bp-0x2a]
   2fcd3:	33 c9                	xor    cx,cx
   2fcd5:	33 d2                	xor    dx,dx
   2fcd7:	b8 1e 00             	mov    ax,0x1e
   2fcda:	9a 42 12 00 00       	call   0x0:0x1242
   2fcdf:	52                   	push   dx
   2fce0:	50                   	push   ax
   2fce1:	9a df 12 00 00       	call   0x0:0x12df
   2fce6:	40                   	inc    ax
   2fce7:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2fcea:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2fced:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   2fcf0:	7d 03                	jge    0x2fcf5
   2fcf2:	e9 a6 fc             	jmp    0x2f99b
   2fcf5:	6a 41                	push   0x41
   2fcf7:	6a 40                	push   0x40
   2fcf9:	a0 f0 b9             	mov    al,ds:0xb9f0
   2fcfc:	b4 00                	mov    ah,0x0
   2fcfe:	bb 04 00             	mov    bx,0x4
   2fd01:	99                   	cwd
   2fd02:	f7 fb                	idiv   bx
   2fd04:	89 56 d4             	mov    WORD PTR [bp-0x2c],dx
   2fd07:	cd 3b                	int    0x3b
   2fd09:	46                   	inc    si
   2fd0a:	d4 83                	aam    0x83
   2fd0c:	ec                   	in     al,dx
   2fd0d:	04 cd                	add    al,0xcd
   2fd0f:	35 5e cc             	xor    ax,0xcc5e
   2fd12:	cd 3d                	int    0x3d
   2fd14:	90                   	nop
   2fd15:	0e                   	push   cs
   2fd16:	e8 8f 17             	call   0x214a8
   2fd19:	83 c4 08             	add    sp,0x8
   2fd1c:	68 e0 01             	push   0x1e0
   2fd1f:	68 d0 02             	push   0x2d0
   2fd22:	6a 43                	push   0x43
   2fd24:	6a 44                	push   0x44
   2fd26:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2fd2b:	75 05                	jne    0x2fd32
   2fd2d:	b8 94 00             	mov    ax,0x94
   2fd30:	eb 03                	jmp    0x2fd35
   2fd32:	b8 14 00             	mov    ax,0x14
   2fd35:	50                   	push   ax
   2fd36:	6a 46                	push   0x46
   2fd38:	6a 20                	push   0x20
   2fd3a:	6a 3c                	push   0x3c
   2fd3c:	6a 14                	push   0x14
   2fd3e:	6a 06                	push   0x6
   2fd40:	9a 30 04 28 00       	call   0x28:0x430
   2fd45:	83 c4 14             	add    sp,0x14
   2fd48:	68 20 00             	push   0x20
   2fd4b:	68 4c 00             	push   0x4c
   2fd4e:	68 fe 00             	push   0xfe
   2fd51:	a1 01 3b             	mov    ax,ds:0x3b01
   2fd54:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fd58:	50                   	push   ax
   2fd59:	6a 41                	push   0x41
   2fd5b:	6a 43                	push   0x43
   2fd5d:	9a 15 06 28 00       	call   0x28:0x615
   2fd62:	83 c4 0c             	add    sp,0xc
   2fd65:	6a 34                	push   0x34
   2fd67:	6a 30                	push   0x30
   2fd69:	6a 41                	push   0x41
   2fd6b:	0e                   	push   cs
   2fd6c:	e8 69 87             	call   0x284d8
   2fd6f:	83 c4 06             	add    sp,0x6
   2fd72:	6a 04                	push   0x4
   2fd74:	90                   	nop
   2fd75:	0e                   	push   cs
   2fd76:	e8 db 16             	call   0x21454
   2fd79:	59                   	pop    cx
   2fd7a:	68 e0 01             	push   0x1e0
   2fd7d:	68 d0 02             	push   0x2d0
   2fd80:	6a 51                	push   0x51
   2fd82:	6a 44                	push   0x44
   2fd84:	80 3e 06 3b 01       	cmp    BYTE PTR ds:0x3b06,0x1
   2fd89:	75 05                	jne    0x2fd90
   2fd8b:	b8 94 00             	mov    ax,0x94
   2fd8e:	eb 03                	jmp    0x2fd93
   2fd90:	b8 14 00             	mov    ax,0x14
   2fd93:	50                   	push   ax
   2fd94:	a0 06 3b             	mov    al,ds:0x3b06
   2fd97:	b4 00                	mov    ah,0x0
   2fd99:	48                   	dec    ax
   2fd9a:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fd9e:	05 46 00             	add    ax,0x46
   2fda1:	50                   	push   ax
   2fda2:	6a 20                	push   0x20
   2fda4:	6a 3c                	push   0x3c
   2fda6:	6a 44                	push   0x44
   2fda8:	6a 00                	push   0x0
   2fdaa:	9a 30 04 28 00       	call   0x28:0x430
   2fdaf:	83 c4 14             	add    sp,0x14
   2fdb2:	6a 08                	push   0x8
   2fdb4:	90                   	nop
   2fdb5:	0e                   	push   cs
   2fdb6:	e8 9b 16             	call   0x21454
   2fdb9:	59                   	pop    cx
   2fdba:	c9                   	leave
   2fdbb:	cb                   	retf
   2fdbc:	55                   	push   bp
   2fdbd:	8b ec                	mov    bp,sp
   2fdbf:	83 ec 06             	sub    sp,0x6
   2fdc2:	6a 03                	push   0x3
   2fdc4:	90                   	nop
   2fdc5:	0e                   	push   cs
   2fdc6:	e8 3b 16             	call   0x21404
   2fdc9:	59                   	pop    cx
   2fdca:	68 fe 00             	push   0xfe
   2fdcd:	a1 01 3b             	mov    ax,ds:0x3b01
   2fdd0:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fdd4:	50                   	push   ax
   2fdd5:	6a 42                	push   0x42
   2fdd7:	9a dc 16 28 00       	call   0x28:0x16dc
   2fddc:	83 c4 06             	add    sp,0x6
   2fddf:	68 fe 00             	push   0xfe
   2fde2:	a1 01 3b             	mov    ax,ds:0x3b01
   2fde5:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fde9:	50                   	push   ax
   2fdea:	6a 41                	push   0x41
   2fdec:	9a dc 16 28 00       	call   0x28:0x16dc
   2fdf1:	83 c4 06             	add    sp,0x6
   2fdf4:	6a 42                	push   0x42
   2fdf6:	6a 40                	push   0x40
   2fdf8:	a0 f0 b9             	mov    al,ds:0xb9f0
   2fdfb:	b4 00                	mov    ah,0x0
   2fdfd:	bb 04 00             	mov    bx,0x4
   2fe00:	99                   	cwd
   2fe01:	f7 fb                	idiv   bx
   2fe03:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2fe06:	cd 3b                	int    0x3b
   2fe08:	46                   	inc    si
   2fe09:	fa                   	cli
   2fe0a:	83 ec 04             	sub    sp,0x4
   2fe0d:	cd 35                	int    0x35
   2fe0f:	5e                   	pop    si
   2fe10:	f2 cd 3d             	repnz int 0x3d
   2fe13:	90                   	nop
   2fe14:	0e                   	push   cs
   2fe15:	e8 90 16             	call   0x214a8
   2fe18:	83 c4 08             	add    sp,0x8
   2fe1b:	6a 42                	push   0x42
   2fe1d:	0e                   	push   cs
   2fe1e:	e8 ec c2             	call   0x2c10d
   2fe21:	59                   	pop    cx
   2fe22:	6a 42                	push   0x42
   2fe24:	0e                   	push   cs
   2fe25:	e8 d1 c9             	call   0x2c7f9
   2fe28:	59                   	pop    cx
   2fe29:	6a 42                	push   0x42
   2fe2b:	0e                   	push   cs
   2fe2c:	e8 56 d5             	call   0x2d385
   2fe2f:	59                   	pop    cx
   2fe30:	6a 42                	push   0x42
   2fe32:	0e                   	push   cs
   2fe33:	e8 da dc             	call   0x2db10
   2fe36:	59                   	pop    cx
   2fe37:	c6 06 07 3b 01       	mov    BYTE PTR ds:0x3b07,0x1
   2fe3c:	6a 41                	push   0x41
   2fe3e:	0e                   	push   cs
   2fe3f:	e8 d0 de             	call   0x2dd12
   2fe42:	59                   	pop    cx
   2fe43:	68 fe 00             	push   0xfe
   2fe46:	6a 41                	push   0x41
   2fe48:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe4b:	6b db 0e             	imul   bx,bx,0xe
   2fe4e:	b8 88 01             	mov    ax,0x188
   2fe51:	8e c0                	mov    es,ax
   2fe53:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   2fe58:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe5b:	6b db 0e             	imul   bx,bx,0xe
   2fe5e:	b8 88 01             	mov    ax,0x188
   2fe61:	8e c0                	mov    es,ax
   2fe63:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   2fe68:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe6b:	6b db 0e             	imul   bx,bx,0xe
   2fe6e:	b8 88 01             	mov    ax,0x188
   2fe71:	8e c0                	mov    es,ax
   2fe73:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   2fe78:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe7b:	6b db 0e             	imul   bx,bx,0xe
   2fe7e:	b8 88 01             	mov    ax,0x188
   2fe81:	8e c0                	mov    es,ax
   2fe83:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   2fe88:	9a 08 09 28 00       	call   0x28:0x908
   2fe8d:	83 c4 0c             	add    sp,0xc
   2fe90:	68 20 00             	push   0x20
   2fe93:	68 4c 00             	push   0x4c
   2fe96:	68 fe 00             	push   0xfe
   2fe99:	a1 01 3b             	mov    ax,ds:0x3b01
   2fe9c:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fea0:	50                   	push   ax
   2fea1:	6a 42                	push   0x42
   2fea3:	6a 41                	push   0x41
   2fea5:	9a 15 06 28 00       	call   0x28:0x615
   2feaa:	83 c4 0c             	add    sp,0xc
   2fead:	b8 88 01             	mov    ax,0x188
   2feb0:	8e c0                	mov    es,ax
   2feb2:	26 83 3e 74 6d 00    	cmp    WORD PTR es:0x6d74,0x0
   2feb8:	75 03                	jne    0x2febd
   2feba:	e9 f3 01             	jmp    0x200b0
   2febd:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   2fec2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2fec5:	b4 00                	mov    ah,0x0
   2fec7:	bb 04 00             	mov    bx,0x4
   2feca:	99                   	cwd
   2fecb:	f7 fb                	idiv   bx
   2fecd:	83 fa 01             	cmp    dx,0x1
   2fed0:	74 25                	je     0x2fef7
   2fed2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2fed5:	b4 00                	mov    ah,0x0
   2fed7:	bb 04 00             	mov    bx,0x4
   2feda:	99                   	cwd
   2fedb:	f7 fb                	idiv   bx
   2fedd:	0b d2                	or     dx,dx
   2fedf:	74 16                	je     0x2fef7
   2fee1:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fee4:	6b db 0e             	imul   bx,bx,0xe
   2fee7:	b8 88 01             	mov    ax,0x188
   2feea:	8e c0                	mov    es,ax
   2feec:	26 83 bf 24 b4 00    	cmp    WORD PTR es:[bx-0x4bdc],0x0
   2fef2:	74 03                	je     0x2fef7
   2fef4:	e9 cc 00             	jmp    0x2ffc3
   2fef7:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   2fefd:	75 03                	jne    0x2ff02
   2feff:	e9 8d 00             	jmp    0x2ff8f
   2ff02:	6a 00                	push   0x0
   2ff04:	6a 42                	push   0x42
   2ff06:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ff09:	04 20                	add    al,0x20
   2ff0b:	50                   	push   ax
   2ff0c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff0f:	6b db 0e             	imul   bx,bx,0xe
   2ff12:	b8 88 01             	mov    ax,0x188
   2ff15:	8e c0                	mov    es,ax
   2ff17:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   2ff1c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff1f:	6b db 0e             	imul   bx,bx,0xe
   2ff22:	b8 88 01             	mov    ax,0x188
   2ff25:	8e c0                	mov    es,ax
   2ff27:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   2ff2c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff2f:	6b db 0e             	imul   bx,bx,0xe
   2ff32:	b8 88 01             	mov    ax,0x188
   2ff35:	8e c0                	mov    es,ax
   2ff37:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   2ff3c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff3f:	6b db 0e             	imul   bx,bx,0xe
   2ff42:	b8 88 01             	mov    ax,0x188
   2ff45:	8e c0                	mov    es,ax
   2ff47:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   2ff4c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff4f:	6b db 0e             	imul   bx,bx,0xe
   2ff52:	b8 88 01             	mov    ax,0x188
   2ff55:	8e c0                	mov    es,ax
   2ff57:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   2ff5c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff5f:	6b db 0e             	imul   bx,bx,0xe
   2ff62:	b8 88 01             	mov    ax,0x188
   2ff65:	8e c0                	mov    es,ax
   2ff67:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   2ff6c:	6a 00                	push   0x0
   2ff6e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff71:	6b db 0e             	imul   bx,bx,0xe
   2ff74:	b8 88 01             	mov    ax,0x188
   2ff77:	53                   	push   bx
   2ff78:	50                   	push   ax
   2ff79:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ff7c:	07                   	pop    es
   2ff7d:	5b                   	pop    bx
   2ff7e:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   2ff83:	50                   	push   ax
   2ff84:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2ff89:	83 c4 16             	add    sp,0x16
   2ff8c:	e9 21 01             	jmp    0x200b0
   2ff8f:	68 e0 01             	push   0x1e0
   2ff92:	68 41 03             	push   0x341
   2ff95:	6a 42                	push   0x42
   2ff97:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ff9a:	04 20                	add    al,0x20
   2ff9c:	50                   	push   ax
   2ff9d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffa0:	6b db 0e             	imul   bx,bx,0xe
   2ffa3:	b8 88 01             	mov    ax,0x188
   2ffa6:	8e c0                	mov    es,ax
   2ffa8:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   2ffad:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffb0:	6b db 0e             	imul   bx,bx,0xe
   2ffb3:	b8 88 01             	mov    ax,0x188
   2ffb6:	8e c0                	mov    es,ax
   2ffb8:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   2ffbd:	e9 b0 00             	jmp    0x20070
   2ffc0:	e9 ed 00             	jmp    0x200b0
   2ffc3:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   2ffc9:	74 62                	je     0x3002d
   2ffcb:	6a 01                	push   0x1
   2ffcd:	6a 42                	push   0x42
   2ffcf:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ffd2:	04 20                	add    al,0x20
   2ffd4:	50                   	push   ax
   2ffd5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffd8:	6b db 0e             	imul   bx,bx,0xe
   2ffdb:	b8 88 01             	mov    ax,0x188
   2ffde:	8e c0                	mov    es,ax
   2ffe0:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   2ffe5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffe8:	6b db 0e             	imul   bx,bx,0xe
   2ffeb:	b8 88 01             	mov    ax,0x188
   2ffee:	8e c0                	mov    es,ax
   2fff0:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   2fff5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fff8:	6b db 0e             	imul   bx,bx,0xe
   2fffb:	b8 88 01             	mov    ax,0x188
   2fffe:	8e c0                	mov    es,ax
   30000:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30005:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30008:	6b db 0e             	imul   bx,bx,0xe
   3000b:	b8 88 01             	mov    ax,0x188
   3000e:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   30012:	8e c0                	mov    es,ax
   30014:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   30019:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3001c:	6b db 0e             	imul   bx,bx,0xe
   3001f:	b8 88 01             	mov    ax,0x188
   30022:	8e c0                	mov    es,ax
   30024:	26 2b 97 58 b4       	sub    dx,WORD PTR es:[bx-0x4ba8]
   30029:	52                   	push   dx
   3002a:	e9 1f ff             	jmp    0x3ff4c
   3002d:	68 e0 01             	push   0x1e0
   30030:	68 c4 03             	push   0x3c4
   30033:	6a 42                	push   0x42
   30035:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30038:	04 20                	add    al,0x20
   3003a:	50                   	push   ax
   3003b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3003e:	6b db 0e             	imul   bx,bx,0xe
   30041:	b8 88 01             	mov    ax,0x188
   30044:	8e c0                	mov    es,ax
   30046:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   3004b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3004e:	6b db 0e             	imul   bx,bx,0xe
   30051:	b8 88 01             	mov    ax,0x188
   30054:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   30058:	8e c0                	mov    es,ax
   3005a:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   3005f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30062:	6b db 0e             	imul   bx,bx,0xe
   30065:	b8 88 01             	mov    ax,0x188
   30068:	8e c0                	mov    es,ax
   3006a:	26 2b 97 60 b4       	sub    dx,WORD PTR es:[bx-0x4ba0]
   3006f:	52                   	push   dx
   30070:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30073:	6b db 0e             	imul   bx,bx,0xe
   30076:	b8 88 01             	mov    ax,0x188
   30079:	8e c0                	mov    es,ax
   3007b:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   30080:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30083:	6b db 0e             	imul   bx,bx,0xe
   30086:	b8 88 01             	mov    ax,0x188
   30089:	8e c0                	mov    es,ax
   3008b:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   30090:	6a 00                	push   0x0
   30092:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30095:	6b db 0e             	imul   bx,bx,0xe
   30098:	b8 88 01             	mov    ax,0x188
   3009b:	53                   	push   bx
   3009c:	50                   	push   ax
   3009d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   300a0:	07                   	pop    es
   300a1:	5b                   	pop    bx
   300a2:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   300a7:	50                   	push   ax
   300a8:	9a 30 04 28 00       	call   0x28:0x430
   300ad:	83 c4 14             	add    sp,0x14
   300b0:	b8 88 01             	mov    ax,0x188
   300b3:	8e c0                	mov    es,ax
   300b5:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   300bb:	74 3d                	je     0x300fa
   300bd:	6a 00                	push   0x0
   300bf:	6a 00                	push   0x0
   300c1:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   300c4:	d1 e3                	shl    bx,1
   300c6:	b8 88 01             	mov    ax,0x188
   300c9:	8e c0                	mov    es,ax
   300cb:	26 8b 9f 10 9f       	mov    bx,WORD PTR es:[bx-0x60f0]
   300d0:	6b db 11             	imul   bx,bx,0x11
   300d3:	b8 88 01             	mov    ax,0x188
   300d6:	6a 00                	push   0x0
   300d8:	8e c0                	mov    es,ax
   300da:	26 ff b7 c5 23       	push   WORD PTR es:[bx+0x23c5]
   300df:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   300e2:	d1 e3                	shl    bx,1
   300e4:	b8 88 01             	mov    ax,0x188
   300e7:	8e c0                	mov    es,ax
   300e9:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   300ee:	05 0d 00             	add    ax,0xd
   300f1:	50                   	push   ax
   300f2:	9a 2d 19 10 00       	call   0x10:0x192d
   300f7:	83 c4 0a             	add    sp,0xa
   300fa:	80 3e 08 3b 00       	cmp    BYTE PTR ds:0x3b08,0x0
   300ff:	75 03                	jne    0x30104
   30101:	e9 12 02             	jmp    0x30316
   30104:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   30109:	e9 fe 01             	jmp    0x3030a
   3010c:	b8 88 01             	mov    ax,0x188
   3010f:	8e c0                	mov    es,ax
   30111:	26 a1 4a e7          	mov    ax,es:0xe74a
   30115:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   30118:	9a e3 01 40 00       	call   0x40:0x1e3
   3011d:	68 20 00             	push   0x20
   30120:	68 06 00             	push   0x6
   30123:	6a 00                	push   0x0
   30125:	a1 01 3b             	mov    ax,ds:0x3b01
   30128:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3012c:	50                   	push   ax
   3012d:	6a 41                	push   0x41
   3012f:	6a 42                	push   0x42
   30131:	9a 15 06 28 00       	call   0x28:0x615
   30136:	83 c4 0c             	add    sp,0xc
   30139:	a0 f0 b9             	mov    al,ds:0xb9f0
   3013c:	b4 00                	mov    ah,0x0
   3013e:	bb 04 00             	mov    bx,0x4
   30141:	99                   	cwd
   30142:	f7 fb                	idiv   bx
   30144:	83 fa 01             	cmp    dx,0x1
   30147:	74 25                	je     0x3016e
   30149:	a0 f0 b9             	mov    al,ds:0xb9f0
   3014c:	b4 00                	mov    ah,0x0
   3014e:	bb 04 00             	mov    bx,0x4
   30151:	99                   	cwd
   30152:	f7 fb                	idiv   bx
   30154:	0b d2                	or     dx,dx
   30156:	74 16                	je     0x3016e
   30158:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3015b:	6b db 0e             	imul   bx,bx,0xe
   3015e:	b8 88 01             	mov    ax,0x188
   30161:	8e c0                	mov    es,ax
   30163:	26 83 bf 24 b4 00    	cmp    WORD PTR es:[bx-0x4bdc],0x0
   30169:	74 03                	je     0x3016e
   3016b:	e9 a3 00             	jmp    0x30211
   3016e:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   30174:	75 03                	jne    0x30179
   30176:	e9 8d 00             	jmp    0x30206
   30179:	6a 00                	push   0x0
   3017b:	6a 41                	push   0x41
   3017d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30180:	04 20                	add    al,0x20
   30182:	50                   	push   ax
   30183:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30186:	6b db 0e             	imul   bx,bx,0xe
   30189:	b8 88 01             	mov    ax,0x188
   3018c:	8e c0                	mov    es,ax
   3018e:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   30193:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30196:	6b db 0e             	imul   bx,bx,0xe
   30199:	b8 88 01             	mov    ax,0x188
   3019c:	8e c0                	mov    es,ax
   3019e:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   301a3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301a6:	6b db 0e             	imul   bx,bx,0xe
   301a9:	b8 88 01             	mov    ax,0x188
   301ac:	8e c0                	mov    es,ax
   301ae:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   301b3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301b6:	6b db 0e             	imul   bx,bx,0xe
   301b9:	b8 88 01             	mov    ax,0x188
   301bc:	8e c0                	mov    es,ax
   301be:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   301c3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301c6:	6b db 0e             	imul   bx,bx,0xe
   301c9:	b8 88 01             	mov    ax,0x188
   301cc:	8e c0                	mov    es,ax
   301ce:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   301d3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301d6:	6b db 0e             	imul   bx,bx,0xe
   301d9:	b8 88 01             	mov    ax,0x188
   301dc:	8e c0                	mov    es,ax
   301de:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   301e3:	6a 00                	push   0x0
   301e5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301e8:	6b db 0e             	imul   bx,bx,0xe
   301eb:	b8 88 01             	mov    ax,0x188
   301ee:	53                   	push   bx
   301ef:	50                   	push   ax
   301f0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   301f3:	07                   	pop    es
   301f4:	5b                   	pop    bx
   301f5:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   301fa:	50                   	push   ax
   301fb:	9a 5a 0c 28 00       	call   0x28:0xc5a
   30200:	83 c4 16             	add    sp,0x16
   30203:	e9 e3 00             	jmp    0x302e9
   30206:	68 e0 01             	push   0x1e0
   30209:	68 41 03             	push   0x341
   3020c:	eb 73                	jmp    0x30281
   3020e:	e9 d8 00             	jmp    0x302e9
   30211:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   30217:	74 62                	je     0x3027b
   30219:	6a 01                	push   0x1
   3021b:	6a 41                	push   0x41
   3021d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30220:	04 20                	add    al,0x20
   30222:	50                   	push   ax
   30223:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30226:	6b db 0e             	imul   bx,bx,0xe
   30229:	b8 88 01             	mov    ax,0x188
   3022c:	8e c0                	mov    es,ax
   3022e:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   30233:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30236:	6b db 0e             	imul   bx,bx,0xe
   30239:	b8 88 01             	mov    ax,0x188
   3023c:	8e c0                	mov    es,ax
   3023e:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   30243:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30246:	6b db 0e             	imul   bx,bx,0xe
   30249:	b8 88 01             	mov    ax,0x188
   3024c:	8e c0                	mov    es,ax
   3024e:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30253:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30256:	6b db 0e             	imul   bx,bx,0xe
   30259:	b8 88 01             	mov    ax,0x188
   3025c:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   30260:	8e c0                	mov    es,ax
   30262:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   30267:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3026a:	6b db 0e             	imul   bx,bx,0xe
   3026d:	b8 88 01             	mov    ax,0x188
   30270:	8e c0                	mov    es,ax
   30272:	26 2b 97 58 b4       	sub    dx,WORD PTR es:[bx-0x4ba8]
   30277:	52                   	push   dx
   30278:	e9 48 ff             	jmp    0x301c3
   3027b:	68 e0 01             	push   0x1e0
   3027e:	68 c4 03             	push   0x3c4
   30281:	6a 41                	push   0x41
   30283:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30286:	04 20                	add    al,0x20
   30288:	50                   	push   ax
   30289:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3028c:	6b db 0e             	imul   bx,bx,0xe
   3028f:	b8 88 01             	mov    ax,0x188
   30292:	8e c0                	mov    es,ax
   30294:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30299:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3029c:	6b db 0e             	imul   bx,bx,0xe
   3029f:	b8 88 01             	mov    ax,0x188
   302a2:	8e c0                	mov    es,ax
   302a4:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   302a9:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   302ac:	6b db 0e             	imul   bx,bx,0xe
   302af:	b8 88 01             	mov    ax,0x188
   302b2:	8e c0                	mov    es,ax
   302b4:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   302b9:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   302bc:	6b db 0e             	imul   bx,bx,0xe
   302bf:	b8 88 01             	mov    ax,0x188
   302c2:	8e c0                	mov    es,ax
   302c4:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   302c9:	6a 00                	push   0x0
   302cb:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   302ce:	6b db 0e             	imul   bx,bx,0xe
   302d1:	b8 88 01             	mov    ax,0x188
   302d4:	53                   	push   bx
   302d5:	50                   	push   ax
   302d6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   302d9:	07                   	pop    es
   302da:	5b                   	pop    bx
   302db:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   302e0:	50                   	push   ax
   302e1:	9a 30 04 28 00       	call   0x28:0x430
   302e6:	83 c4 14             	add    sp,0x14
   302e9:	6a 34                	push   0x34
   302eb:	6a 30                	push   0x30
   302ed:	6a 41                	push   0x41
   302ef:	0e                   	push   cs
   302f0:	e8 e5 81             	call   0x384d8
   302f3:	83 c4 06             	add    sp,0x6
   302f6:	b8 88 01             	mov    ax,0x188
   302f9:	8e c0                	mov    es,ax
   302fb:	26 a1 4a e7          	mov    ax,es:0xe74a
   302ff:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   30302:	3d 96 00             	cmp    ax,0x96
   30305:	72 ef                	jb     0x302f6
   30307:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3030a:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3030e:	7d 03                	jge    0x30313
   30310:	e9 f9 fd             	jmp    0x3010c
   30313:	e9 cb 01             	jmp    0x304e1
   30316:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   3031b:	68 20 00             	push   0x20
   3031e:	68 06 00             	push   0x6
   30321:	6a 00                	push   0x0
   30323:	a1 01 3b             	mov    ax,ds:0x3b01
   30326:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3032a:	50                   	push   ax
   3032b:	6a 41                	push   0x41
   3032d:	6a 42                	push   0x42
   3032f:	9a 15 06 28 00       	call   0x28:0x615
   30334:	83 c4 0c             	add    sp,0xc
   30337:	a0 f0 b9             	mov    al,ds:0xb9f0
   3033a:	b4 00                	mov    ah,0x0
   3033c:	bb 04 00             	mov    bx,0x4
   3033f:	99                   	cwd
   30340:	f7 fb                	idiv   bx
   30342:	83 fa 01             	cmp    dx,0x1
   30345:	74 12                	je     0x30359
   30347:	a0 f0 b9             	mov    al,ds:0xb9f0
   3034a:	b4 00                	mov    ah,0x0
   3034c:	bb 04 00             	mov    bx,0x4
   3034f:	99                   	cwd
   30350:	f7 fb                	idiv   bx
   30352:	0b d2                	or     dx,dx
   30354:	74 03                	je     0x30359
   30356:	e9 a3 00             	jmp    0x303fc
   30359:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   3035f:	75 03                	jne    0x30364
   30361:	e9 8d 00             	jmp    0x303f1
   30364:	6a 00                	push   0x0
   30366:	6a 41                	push   0x41
   30368:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3036b:	04 20                	add    al,0x20
   3036d:	50                   	push   ax
   3036e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30371:	6b db 0e             	imul   bx,bx,0xe
   30374:	b8 88 01             	mov    ax,0x188
   30377:	8e c0                	mov    es,ax
   30379:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   3037e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30381:	6b db 0e             	imul   bx,bx,0xe
   30384:	b8 88 01             	mov    ax,0x188
   30387:	8e c0                	mov    es,ax
   30389:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   3038e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30391:	6b db 0e             	imul   bx,bx,0xe
   30394:	b8 88 01             	mov    ax,0x188
   30397:	8e c0                	mov    es,ax
   30399:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   3039e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303a1:	6b db 0e             	imul   bx,bx,0xe
   303a4:	b8 88 01             	mov    ax,0x188
   303a7:	8e c0                	mov    es,ax
   303a9:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   303ae:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303b1:	6b db 0e             	imul   bx,bx,0xe
   303b4:	b8 88 01             	mov    ax,0x188
   303b7:	8e c0                	mov    es,ax
   303b9:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   303be:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303c1:	6b db 0e             	imul   bx,bx,0xe
   303c4:	b8 88 01             	mov    ax,0x188
   303c7:	8e c0                	mov    es,ax
   303c9:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   303ce:	6a 00                	push   0x0
   303d0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303d3:	6b db 0e             	imul   bx,bx,0xe
   303d6:	b8 88 01             	mov    ax,0x188
   303d9:	53                   	push   bx
   303da:	50                   	push   ax
   303db:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   303de:	07                   	pop    es
   303df:	5b                   	pop    bx
   303e0:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   303e5:	50                   	push   ax
   303e6:	9a 5a 0c 28 00       	call   0x28:0xc5a
   303eb:	83 c4 16             	add    sp,0x16
   303ee:	e9 e3 00             	jmp    0x304d4
   303f1:	68 e0 01             	push   0x1e0
   303f4:	68 41 03             	push   0x341
   303f7:	eb 73                	jmp    0x3046c
   303f9:	e9 d8 00             	jmp    0x304d4
   303fc:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   30402:	74 62                	je     0x30466
   30404:	6a 01                	push   0x1
   30406:	6a 41                	push   0x41
   30408:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3040b:	04 20                	add    al,0x20
   3040d:	50                   	push   ax
   3040e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30411:	6b db 0e             	imul   bx,bx,0xe
   30414:	b8 88 01             	mov    ax,0x188
   30417:	8e c0                	mov    es,ax
   30419:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   3041e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30421:	6b db 0e             	imul   bx,bx,0xe
   30424:	b8 88 01             	mov    ax,0x188
   30427:	8e c0                	mov    es,ax
   30429:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   3042e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30431:	6b db 0e             	imul   bx,bx,0xe
   30434:	b8 88 01             	mov    ax,0x188
   30437:	8e c0                	mov    es,ax
   30439:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   3043e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30441:	6b db 0e             	imul   bx,bx,0xe
   30444:	b8 88 01             	mov    ax,0x188
   30447:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   3044b:	8e c0                	mov    es,ax
   3044d:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   30452:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30455:	6b db 0e             	imul   bx,bx,0xe
   30458:	b8 88 01             	mov    ax,0x188
   3045b:	8e c0                	mov    es,ax
   3045d:	26 2b 97 58 b4       	sub    dx,WORD PTR es:[bx-0x4ba8]
   30462:	52                   	push   dx
   30463:	e9 48 ff             	jmp    0x303ae
   30466:	68 e0 01             	push   0x1e0
   30469:	68 c4 03             	push   0x3c4
   3046c:	6a 41                	push   0x41
   3046e:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30471:	04 20                	add    al,0x20
   30473:	50                   	push   ax
   30474:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30477:	6b db 0e             	imul   bx,bx,0xe
   3047a:	b8 88 01             	mov    ax,0x188
   3047d:	8e c0                	mov    es,ax
   3047f:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30484:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30487:	6b db 0e             	imul   bx,bx,0xe
   3048a:	b8 88 01             	mov    ax,0x188
   3048d:	8e c0                	mov    es,ax
   3048f:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   30494:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30497:	6b db 0e             	imul   bx,bx,0xe
   3049a:	b8 88 01             	mov    ax,0x188
   3049d:	8e c0                	mov    es,ax
   3049f:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   304a4:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   304a7:	6b db 0e             	imul   bx,bx,0xe
   304aa:	b8 88 01             	mov    ax,0x188
   304ad:	8e c0                	mov    es,ax
   304af:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   304b4:	6a 00                	push   0x0
   304b6:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   304b9:	6b db 0e             	imul   bx,bx,0xe
   304bc:	b8 88 01             	mov    ax,0x188
   304bf:	53                   	push   bx
   304c0:	50                   	push   ax
   304c1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   304c4:	07                   	pop    es
   304c5:	5b                   	pop    bx
   304c6:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   304cb:	50                   	push   ax
   304cc:	9a 30 04 28 00       	call   0x28:0x430
   304d1:	83 c4 14             	add    sp,0x14
   304d4:	6a 34                	push   0x34
   304d6:	6a 30                	push   0x30
   304d8:	6a 41                	push   0x41
   304da:	0e                   	push   cs
   304db:	e8 fa 7f             	call   0x384d8
   304de:	83 c4 06             	add    sp,0x6
   304e1:	a0 06 3b             	mov    al,ds:0x3b06
   304e4:	b4 00                	mov    ah,0x0
   304e6:	0b c0                	or     ax,ax
   304e8:	75 14                	jne    0x304fe
   304ea:	a1 f3 b9             	mov    ax,ds:0xb9f3
   304ed:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   304f1:	a3 f3 b9             	mov    ds:0xb9f3,ax
   304f4:	a1 f1 b9             	mov    ax,ds:0xb9f1
   304f7:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   304fb:	a3 f1 b9             	mov    ds:0xb9f1,ax
   304fe:	c9                   	leave
   304ff:	cb                   	retf
   30500:	55                   	push   bp
   30501:	8b ec                	mov    bp,sp
   30503:	83 ec 02             	sub    sp,0x2
   30506:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30509:	b4 00                	mov    ah,0x0
   3050b:	05 14 00             	add    ax,0x14
   3050e:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   30511:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30514:	a2 06 3b             	mov    ds:0x3b06,al
   30517:	b8 88 01             	mov    ax,0x188
   3051a:	8e c0                	mov    es,ax
   3051c:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   30522:	74 21                	je     0x30545
   30524:	6a 00                	push   0x0
   30526:	6a 40                	push   0x40
   30528:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3052b:	6b db 11             	imul   bx,bx,0x11
   3052e:	b8 88 01             	mov    ax,0x188
   30531:	6a 00                	push   0x0
   30533:	8e c0                	mov    es,ax
   30535:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   3053a:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3053d:	9a 2d 19 10 00       	call   0x10:0x192d
   30542:	83 c4 0a             	add    sp,0xa
   30545:	a0 06 3b             	mov    al,ds:0x3b06
   30548:	b4 00                	mov    ah,0x0
   3054a:	3d 01 00             	cmp    ax,0x1
   3054d:	74 09                	je     0x30558
   3054f:	3d 02 00             	cmp    ax,0x2
   30552:	74 02                	je     0x30556
   30554:	eb 0f                	jmp    0x30565
   30556:	eb 00                	jmp    0x30558
   30558:	0e                   	push   cs
   30559:	e8 ac f2             	call   0x3f808
   3055c:	0e                   	push   cs
   3055d:	e8 e8 ed             	call   0x3f348
   30560:	c6 06 06 3b 00       	mov    BYTE PTR ds:0x3b06,0x0
   30565:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   30568:	6b db 17             	imul   bx,bx,0x17
   3056b:	b8 88 01             	mov    ax,0x188
   3056e:	8e c0                	mov    es,ax
   30570:	26 8b 87 34 de       	mov    ax,WORD PTR es:[bx-0x21cc]
   30575:	26 0b 87 36 de       	or     ax,WORD PTR es:[bx-0x21ca]
   3057a:	74 44                	je     0x305c0
   3057c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3057f:	6b db 11             	imul   bx,bx,0x11
   30582:	b8 88 01             	mov    ax,0x188
   30585:	8e c0                	mov    es,ax
   30587:	26 f7 87 ea 22 01 00 	test   WORD PTR es:[bx+0x22ea],0x1
   3058e:	75 30                	jne    0x305c0
   30590:	b8 88 01             	mov    ax,0x188
   30593:	8e c0                	mov    es,ax
   30595:	26 a0 d7 73          	mov    al,es:0x73d7
   30599:	b4 00                	mov    ah,0x0
   3059b:	48                   	dec    ax
   3059c:	99                   	cwd
   3059d:	52                   	push   dx
   3059e:	50                   	push   ax
   3059f:	9a e6 00 60 00       	call   0x60:0xe6
   305a4:	1e                   	push   ds
   305a5:	68 27 3d             	push   0x3d27
   305a8:	68 3f 08             	push   0x83f
   305ab:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   305ae:	6b c0 17             	imul   ax,ax,0x17
   305b1:	05 34 de             	add    ax,0xde34
   305b4:	68 88 01             	push   0x188
   305b7:	50                   	push   ax
   305b8:	9a 2f 02 40 00       	call   0x40:0x22f
   305bd:	83 c4 0a             	add    sp,0xa
   305c0:	c6 06 06 3b 00       	mov    BYTE PTR ds:0x3b06,0x0
   305c5:	c9                   	leave
   305c6:	cb                   	retf
   305c7:	55                   	push   bp
   305c8:	8b ec                	mov    bp,sp
   305ca:	83 ec 20             	sub    sp,0x20
   305cd:	b8 88 01             	mov    ax,0x188
   305d0:	8e c0                	mov    es,ax
   305d2:	26 83 3e 74 6d 00    	cmp    WORD PTR es:0x6d74,0x0
   305d8:	75 0a                	jne    0x305e4
   305da:	6a 01                	push   0x1
   305dc:	9a 2f 00 18 01       	call   0x118:0x2f
   305e1:	e9 dc 06             	jmp    0x30cc0
   305e4:	6a 07                	push   0x7
   305e6:	90                   	nop
   305e7:	0e                   	push   cs
   305e8:	e8 19 0e             	call   0x31404
   305eb:	59                   	pop    cx
   305ec:	68 fe 00             	push   0xfe
   305ef:	a1 01 3b             	mov    ax,ds:0x3b01
   305f2:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   305f6:	50                   	push   ax
   305f7:	6a 43                	push   0x43
   305f9:	9a dc 16 28 00       	call   0x28:0x16dc
   305fe:	83 c4 06             	add    sp,0x6
   30601:	6a 43                	push   0x43
   30603:	0e                   	push   cs
   30604:	e8 5b b7             	call   0x3bd62
   30607:	59                   	pop    cx
   30608:	83 3e fb 3a 64       	cmp    WORD PTR ds:0x3afb,0x64
   3060d:	74 03                	je     0x30612
   3060f:	e9 d7 00             	jmp    0x306e9
   30612:	83 3e fd 3a 64       	cmp    WORD PTR ds:0x3afd,0x64
   30617:	74 03                	je     0x3061c
   30619:	e9 cd 00             	jmp    0x306e9
   3061c:	c7 46 ec 01 00       	mov    WORD PTR [bp-0x14],0x1
   30621:	e9 a0 00             	jmp    0x306c4
   30624:	68 fe 00             	push   0xfe
   30627:	6a 41                	push   0x41
   30629:	ff 36 fd 3a          	push   WORD PTR ds:0x3afd
   3062d:	ff 36 fb 3a          	push   WORD PTR ds:0x3afb
   30631:	6a 00                	push   0x0
   30633:	6a 00                	push   0x0
   30635:	9a 08 09 28 00       	call   0x28:0x908
   3063a:	83 c4 0c             	add    sp,0xc
   3063d:	6a 00                	push   0x0
   3063f:	6a 41                	push   0x41
   30641:	8a 46 ec             	mov    al,BYTE PTR [bp-0x14]
   30644:	04 41                	add    al,0x41
   30646:	50                   	push   ax
   30647:	ff 36 fd 3a          	push   WORD PTR ds:0x3afd
   3064b:	ff 36 fb 3a          	push   WORD PTR ds:0x3afb
   3064f:	6a 00                	push   0x0
   30651:	6a 00                	push   0x0
   30653:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   30657:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   3065b:	6a 00                	push   0x0
   3065d:	6a 00                	push   0x0
   3065f:	9a 5a 0c 28 00       	call   0x28:0xc5a
   30664:	83 c4 16             	add    sp,0x16
   30667:	b0 01                	mov    al,0x1
   30669:	8a 4e ec             	mov    cl,BYTE PTR [bp-0x14]
   3066c:	d2 e0                	shl    al,cl
   3066e:	50                   	push   ax
   3066f:	90                   	nop
   30670:	0e                   	push   cs
   30671:	e8 e0 0d             	call   0x31454
   30674:	59                   	pop    cx
   30675:	c7 06 ff 3a 64 00    	mov    WORD PTR ds:0x3aff,0x64
   3067b:	c7 06 01 3b 64 00    	mov    WORD PTR ds:0x3b01,0x64
   30681:	b0 01                	mov    al,0x1
   30683:	8a 4e ec             	mov    cl,BYTE PTR [bp-0x14]
   30686:	d2 e0                	shl    al,cl
   30688:	50                   	push   ax
   30689:	90                   	nop
   3068a:	0e                   	push   cs
   3068b:	e8 76 0d             	call   0x31404
   3068e:	59                   	pop    cx
   3068f:	c7 06 ff 3a c8 00    	mov    WORD PTR ds:0x3aff,0xc8
   30695:	c7 06 01 3b c8 00    	mov    WORD PTR ds:0x3b01,0xc8
   3069b:	68 e0 01             	push   0x1e0
   3069e:	68 d0 02             	push   0x2d0
   306a1:	8a 46 ec             	mov    al,BYTE PTR [bp-0x14]
   306a4:	04 41                	add    al,0x41
   306a6:	50                   	push   ax
   306a7:	6a 41                	push   0x41
   306a9:	6a 00                	push   0x0
   306ab:	6a 00                	push   0x0
   306ad:	ff 36 fd 3a          	push   WORD PTR ds:0x3afd
   306b1:	ff 36 fb 3a          	push   WORD PTR ds:0x3afb
   306b5:	6a 00                	push   0x0
   306b7:	6a 00                	push   0x0
   306b9:	9a 30 04 28 00       	call   0x28:0x430
   306be:	83 c4 14             	add    sp,0x14
   306c1:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   306c4:	83 7e ec 03          	cmp    WORD PTR [bp-0x14],0x3
   306c8:	7d 03                	jge    0x306cd
   306ca:	e9 57 ff             	jmp    0x30624
   306cd:	c7 06 ff 3a 64 00    	mov    WORD PTR ds:0x3aff,0x64
   306d3:	c7 06 01 3b 64 00    	mov    WORD PTR ds:0x3b01,0x64
   306d9:	6a 01                	push   0x1
   306db:	90                   	nop
   306dc:	0e                   	push   cs
   306dd:	e8 74 0d             	call   0x31454
   306e0:	59                   	pop    cx
   306e1:	6a 01                	push   0x1
   306e3:	90                   	nop
   306e4:	0e                   	push   cs
   306e5:	e8 1c 0d             	call   0x31404
   306e8:	59                   	pop    cx
   306e9:	c7 46 fc 32 00       	mov    WORD PTR [bp-0x4],0x32
   306ee:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   306f3:	a1 ff 3a             	mov    ax,ds:0x3aff
   306f6:	05 2c 01             	add    ax,0x12c
   306f9:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   306fc:	a1 ff 3a             	mov    ax,ds:0x3aff
   306ff:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   30702:	a1 01 3b             	mov    ax,ds:0x3b01
   30705:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   30708:	c7 46 f2 0f 00       	mov    WORD PTR [bp-0xe],0xf
   3070d:	c7 46 ea cf ff       	mov    WORD PTR [bp-0x16],0xffcf
   30712:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   30717:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   3071a:	bb 02 00             	mov    bx,0x2
   3071d:	99                   	cwd
   3071e:	f7 fb                	idiv   bx
   30720:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   30723:	03 d0                	add    dx,ax
   30725:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   30728:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   3072b:	bb 02 00             	mov    bx,0x2
   3072e:	99                   	cwd
   3072f:	f7 fb                	idiv   bx
   30731:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   30734:	2b d0                	sub    dx,ax
   30736:	89 56 ee             	mov    WORD PTR [bp-0x12],dx
   30739:	b8 88 01             	mov    ax,0x188
   3073c:	8e c0                	mov    es,ax
   3073e:	26 a1 74 6d          	mov    ax,es:0x6d74
   30742:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   30745:	c7 46 e2 0f 00       	mov    WORD PTR [bp-0x1e],0xf
   3074a:	68 88 01             	push   0x188
   3074d:	68 68 d9             	push   0xd968
   30750:	ff 76 f4             	push   WORD PTR [bp-0xc]
   30753:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30756:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   30759:	50                   	push   ax
   3075a:	6a 00                	push   0x0
   3075c:	6a 00                	push   0x0
   3075e:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   30761:	05 fe ff             	add    ax,0xfffe
   30764:	50                   	push   ax
   30765:	ff 76 fa             	push   WORD PTR [bp-0x6]
   30768:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3076b:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   3076e:	50                   	push   ax
   3076f:	9a 49 0d 18 00       	call   0x18:0xd49
   30774:	83 c4 12             	add    sp,0x12
   30777:	68 88 01             	push   0x188
   3077a:	68 38 d9             	push   0xd938
   3077d:	ff 76 f4             	push   WORD PTR [bp-0xc]
   30780:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30783:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   30786:	40                   	inc    ax
   30787:	50                   	push   ax
   30788:	6a 00                	push   0x0
   3078a:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   3078d:	48                   	dec    ax
   3078e:	50                   	push   ax
   3078f:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   30792:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   30795:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   30798:	50                   	push   ax
   30799:	ff 76 fa             	push   WORD PTR [bp-0x6]
   3079c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3079f:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   307a2:	48                   	dec    ax
   307a3:	50                   	push   ax
   307a4:	9a f9 0d 18 00       	call   0x18:0xdf9
   307a9:	83 c4 12             	add    sp,0x12
   307ac:	c7 46 ec 01 00       	mov    WORD PTR [bp-0x14],0x1
   307b1:	b8 88 01             	mov    ax,0x188
   307b4:	8e c0                	mov    es,ax
   307b6:	26 a1 4a e7          	mov    ax,es:0xe74a
   307ba:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   307bd:	e9 5e 02             	jmp    0x30a1e
   307c0:	9a e3 01 40 00       	call   0x40:0x1e3
   307c5:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   307c8:	40                   	inc    ax
   307c9:	50                   	push   ax
   307ca:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   307cd:	d1 e0                	shl    ax,1
   307cf:	40                   	inc    ax
   307d0:	69 c0 e8 03          	imul   ax,ax,0x3e8
   307d4:	33 d2                	xor    dx,dx
   307d6:	f7 76 e6             	div    WORD PTR [bp-0x1a]
   307d9:	8b d0                	mov    dx,ax
   307db:	58                   	pop    ax
   307dc:	f7 ea                	imul   dx
   307de:	8b 56 e2             	mov    dx,WORD PTR [bp-0x1e]
   307e1:	69 d2 e8 03          	imul   dx,dx,0x3e8
   307e5:	2b d0                	sub    dx,ax
   307e7:	89 56 e4             	mov    WORD PTR [bp-0x1c],dx
   307ea:	b8 88 01             	mov    ax,0x188
   307ed:	8e c0                	mov    es,ax
   307ef:	26 ff 36 78 6d       	push   WORD PTR es:0x6d78
   307f4:	bb e8 03             	mov    bx,0x3e8
   307f7:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   307fa:	99                   	cwd
   307fb:	f7 fb                	idiv   bx
   307fd:	99                   	cwd
   307fe:	33 c2                	xor    ax,dx
   30800:	2b c2                	sub    ax,dx
   30802:	ba 88 01             	mov    dx,0x188
   30805:	8e c2                	mov    es,dx
   30807:	26 8b 16 76 6d       	mov    dx,WORD PTR es:0x6d76
   3080c:	03 d0                	add    dx,ax
   3080e:	52                   	push   dx
   3080f:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   30812:	bb 02 00             	mov    bx,0x2
   30815:	99                   	cwd
   30816:	f7 fb                	idiv   bx
   30818:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   3081b:	03 d0                	add    dx,ax
   3081d:	52                   	push   dx
   3081e:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30821:	bb 02 00             	mov    bx,0x2
   30824:	99                   	cwd
   30825:	f7 fb                	idiv   bx
   30827:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   3082a:	03 d0                	add    dx,ax
   3082c:	52                   	push   dx
   3082d:	9a 2c 0d 18 00       	call   0x18:0xd2c
   30832:	83 c4 08             	add    sp,0x8
   30835:	68 fe 00             	push   0xfe
   30838:	a1 01 3b             	mov    ax,ds:0x3b01
   3083b:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3083f:	50                   	push   ax
   30840:	6a 41                	push   0x41
   30842:	9a dc 16 28 00       	call   0x28:0x16dc
   30847:	83 c4 06             	add    sp,0x6
   3084a:	6a 41                	push   0x41
   3084c:	6a 40                	push   0x40
   3084e:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   30851:	2b 46 ec             	sub    ax,WORD PTR [bp-0x14]
   30854:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   30857:	cd 3b                	int    0x3b
   30859:	46                   	inc    si
   3085a:	e0 8b                	loopne 0x307e7
   3085c:	46                   	inc    si
   3085d:	e6 89                	out    0x89,al
   3085f:	46                   	inc    si
   30860:	e0 cd                	loopne 0x3082f
   30862:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   30865:	cd 3a                	int    0x3a
   30867:	f9                   	stc
   30868:	a0 f0 b9             	mov    al,ds:0xb9f0
   3086b:	b4 00                	mov    ah,0x0
   3086d:	bb 04 00             	mov    bx,0x4
   30870:	99                   	cwd
   30871:	f7 fb                	idiv   bx
   30873:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   30876:	cd 3b                	int    0x3b
   30878:	46                   	inc    si
   30879:	e0 cd                	loopne 0x30848
   3087b:	3a c1                	cmp    al,cl
   3087d:	83 ec 04             	sub    sp,0x4
   30880:	cd 35                	int    0x35
   30882:	5e                   	pop    si
   30883:	d8 cd                	fmul   st,st(5)
   30885:	3d 90 0e             	cmp    ax,0xe90
   30888:	e8 1d 0c             	call   0x314a8
   3088b:	83 c4 08             	add    sp,0x8
   3088e:	b8 38 d9             	mov    ax,0xd938
   30891:	ba 88 01             	mov    dx,0x188
   30894:	b9 30 00             	mov    cx,0x30
   30897:	9a 02 15 00 00       	call   0x0:0x1502
   3089c:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   3089f:	f7 d8                	neg    ax
   308a1:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   308a4:	cd 3b                	int    0x3b
   308a6:	46                   	inc    si
   308a7:	e0 8b                	loopne 0x30834
   308a9:	46                   	inc    si
   308aa:	e6 89                	out    0x89,al
   308ac:	46                   	inc    si
   308ad:	e0 cd                	loopne 0x3087c
   308af:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   308b2:	cd 34                	int    0x34
   308b4:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   308b7:	cd 3a                	int    0x3a
   308b9:	c9                   	leave
   308ba:	83 ec 04             	sub    sp,0x4
   308bd:	cd 35                	int    0x35
   308bf:	5e                   	pop    si
   308c0:	ac                   	lods   al,BYTE PTR ds:[si]
   308c1:	cd 3d                	int    0x3d
   308c3:	ff 76 ee             	push   WORD PTR [bp-0x12]
   308c6:	ff 76 f0             	push   WORD PTR [bp-0x10]
   308c9:	68 88 01             	push   0x188
   308cc:	68 c8 d9             	push   0xd9c8
   308cf:	9a a9 0e 18 00       	call   0x18:0xea9
   308d4:	83 c4 3c             	add    sp,0x3c
   308d7:	68 88 01             	push   0x188
   308da:	68 c8 d9             	push   0xd9c8
   308dd:	9a 8c 09 18 00       	call   0x18:0x98c
   308e2:	83 c4 04             	add    sp,0x4
   308e5:	a1 01 3b             	mov    ax,ds:0x3b01
   308e8:	48                   	dec    ax
   308e9:	50                   	push   ax
   308ea:	a1 ff 3a             	mov    ax,ds:0x3aff
   308ed:	48                   	dec    ax
   308ee:	50                   	push   ax
   308ef:	6a 00                	push   0x0
   308f1:	6a 00                	push   0x0
   308f3:	6a 41                	push   0x41
   308f5:	6a 42                	push   0x42
   308f7:	b8 c8 d9             	mov    ax,0xd9c8
   308fa:	ba 88 01             	mov    dx,0x188
   308fd:	b9 30 00             	mov    cx,0x30
   30900:	9a 02 15 00 00       	call   0x0:0x1502
   30905:	ff 76 e8             	push   WORD PTR [bp-0x18]
   30908:	ff 76 ea             	push   WORD PTR [bp-0x16]
   3090b:	b8 88 01             	mov    ax,0x188
   3090e:	8e c0                	mov    es,ax
   30910:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   30915:	b8 88 01             	mov    ax,0x188
   30918:	8e c0                	mov    es,ax
   3091a:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   3091f:	b8 88 01             	mov    ax,0x188
   30922:	8e c0                	mov    es,ax
   30924:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   30929:	b8 88 01             	mov    ax,0x188
   3092c:	8e c0                	mov    es,ax
   3092e:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   30933:	9a 0c 00 18 00       	call   0x18:0xc
   30938:	83 c4 48             	add    sp,0x48
   3093b:	b8 68 d9             	mov    ax,0xd968
   3093e:	ba 88 01             	mov    dx,0x188
   30941:	b9 30 00             	mov    cx,0x30
   30944:	9a 02 15 00 00       	call   0x0:0x1502
   30949:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   3094c:	f7 d8                	neg    ax
   3094e:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   30951:	cd 3b                	int    0x3b
   30953:	46                   	inc    si
   30954:	e0 8b                	loopne 0x308e1
   30956:	46                   	inc    si
   30957:	e6 89                	out    0x89,al
   30959:	46                   	inc    si
   3095a:	e0 cd                	loopne 0x30929
   3095c:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   3095f:	cd 34                	int    0x34
   30961:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   30964:	cd 3a                	int    0x3a
   30966:	c9                   	leave
   30967:	83 ec 04             	sub    sp,0x4
   3096a:	cd 35                	int    0x35
   3096c:	5e                   	pop    si
   3096d:	ac                   	lods   al,BYTE PTR ds:[si]
   3096e:	cd 3d                	int    0x3d
   30970:	ff 76 ee             	push   WORD PTR [bp-0x12]
   30973:	ff 76 f0             	push   WORD PTR [bp-0x10]
   30976:	68 88 01             	push   0x188
   30979:	68 c8 d9             	push   0xd9c8
   3097c:	9a a9 0e 18 00       	call   0x18:0xea9
   30981:	83 c4 3c             	add    sp,0x3c
   30984:	68 88 01             	push   0x188
   30987:	68 c8 d9             	push   0xd9c8
   3098a:	9a 8c 09 18 00       	call   0x18:0x98c
   3098f:	83 c4 04             	add    sp,0x4
   30992:	a1 01 3b             	mov    ax,ds:0x3b01
   30995:	48                   	dec    ax
   30996:	50                   	push   ax
   30997:	a1 ff 3a             	mov    ax,ds:0x3aff
   3099a:	48                   	dec    ax
   3099b:	50                   	push   ax
   3099c:	6a 00                	push   0x0
   3099e:	6a 00                	push   0x0
   309a0:	6a 41                	push   0x41
   309a2:	6a 43                	push   0x43
   309a4:	b8 c8 d9             	mov    ax,0xd9c8
   309a7:	ba 88 01             	mov    dx,0x188
   309aa:	b9 30 00             	mov    cx,0x30
   309ad:	9a 02 15 00 00       	call   0x0:0x1502
   309b2:	ff 76 e8             	push   WORD PTR [bp-0x18]
   309b5:	ff 76 ea             	push   WORD PTR [bp-0x16]
   309b8:	b8 88 01             	mov    ax,0x188
   309bb:	8e c0                	mov    es,ax
   309bd:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   309c2:	b8 88 01             	mov    ax,0x188
   309c5:	8e c0                	mov    es,ax
   309c7:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   309cc:	b8 88 01             	mov    ax,0x188
   309cf:	8e c0                	mov    es,ax
   309d1:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   309d6:	b8 88 01             	mov    ax,0x188
   309d9:	8e c0                	mov    es,ax
   309db:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   309e0:	9a 0c 00 18 00       	call   0x18:0xc
   309e5:	83 c4 48             	add    sp,0x48
   309e8:	6a 34                	push   0x34
   309ea:	6a 30                	push   0x30
   309ec:	6a 41                	push   0x41
   309ee:	0e                   	push   cs
   309ef:	e8 e6 7a             	call   0x384d8
   309f2:	83 c4 06             	add    sp,0x6
   309f5:	6a 00                	push   0x0
   309f7:	68 e8 03             	push   0x3e8
   309fa:	b8 88 01             	mov    ax,0x188
   309fd:	8e c0                	mov    es,ax
   309ff:	26 8b 1e 4a e7       	mov    bx,WORD PTR es:0xe74a
   30a04:	2b 5e fe             	sub    bx,WORD PTR [bp-0x2]
   30a07:	33 c9                	xor    cx,cx
   30a09:	33 d2                	xor    dx,dx
   30a0b:	b8 1e 00             	mov    ax,0x1e
   30a0e:	9a 42 12 00 00       	call   0x0:0x1242
   30a13:	52                   	push   dx
   30a14:	50                   	push   ax
   30a15:	9a df 12 00 00       	call   0x0:0x12df
   30a1a:	40                   	inc    ax
   30a1b:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   30a1e:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   30a21:	3b 46 e6             	cmp    ax,WORD PTR [bp-0x1a]
   30a24:	7d 03                	jge    0x30a29
   30a26:	e9 97 fd             	jmp    0x307c0
   30a29:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   30a2c:	48                   	dec    ax
   30a2d:	3b 46 ec             	cmp    ax,WORD PTR [bp-0x14]
   30a30:	7f 03                	jg     0x30a35
   30a32:	e9 aa 01             	jmp    0x30bdf
   30a35:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   30a38:	48                   	dec    ax
   30a39:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   30a3c:	68 fe 00             	push   0xfe
   30a3f:	a1 01 3b             	mov    ax,ds:0x3b01
   30a42:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   30a46:	50                   	push   ax
   30a47:	6a 41                	push   0x41
   30a49:	9a dc 16 28 00       	call   0x28:0x16dc
   30a4e:	83 c4 06             	add    sp,0x6
   30a51:	6a 41                	push   0x41
   30a53:	6a 40                	push   0x40
   30a55:	a0 f0 b9             	mov    al,ds:0xb9f0
   30a58:	b4 00                	mov    ah,0x0
   30a5a:	bb 04 00             	mov    bx,0x4
   30a5d:	99                   	cwd
   30a5e:	f7 fb                	idiv   bx
   30a60:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   30a63:	cd 3b                	int    0x3b
   30a65:	46                   	inc    si
   30a66:	e0 83                	loopne 0x309eb
   30a68:	ec                   	in     al,dx
   30a69:	04 cd                	add    al,0xcd
   30a6b:	35 5e d8             	xor    ax,0xd85e
   30a6e:	cd 3d                	int    0x3d
   30a70:	90                   	nop
   30a71:	0e                   	push   cs
   30a72:	e8 33 0a             	call   0x314a8
   30a75:	83 c4 08             	add    sp,0x8
   30a78:	b8 38 d9             	mov    ax,0xd938
   30a7b:	ba 88 01             	mov    dx,0x188
   30a7e:	b9 30 00             	mov    cx,0x30
   30a81:	9a 02 15 00 00       	call   0x0:0x1502
   30a86:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   30a89:	f7 d8                	neg    ax
   30a8b:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   30a8e:	cd 3b                	int    0x3b
   30a90:	46                   	inc    si
   30a91:	e0 8b                	loopne 0x30a1e
   30a93:	46                   	inc    si
   30a94:	e6 89                	out    0x89,al
   30a96:	46                   	inc    si
   30a97:	e0 cd                	loopne 0x30a66
   30a99:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   30a9c:	cd 34                	int    0x34
   30a9e:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   30aa1:	cd 3a                	int    0x3a
   30aa3:	c9                   	leave
   30aa4:	83 ec 04             	sub    sp,0x4
   30aa7:	cd 35                	int    0x35
   30aa9:	5e                   	pop    si
   30aaa:	ac                   	lods   al,BYTE PTR ds:[si]
   30aab:	cd 3d                	int    0x3d
   30aad:	ff 76 ee             	push   WORD PTR [bp-0x12]
   30ab0:	ff 76 f0             	push   WORD PTR [bp-0x10]
   30ab3:	68 88 01             	push   0x188
   30ab6:	68 c8 d9             	push   0xd9c8
   30ab9:	9a a9 0e 18 00       	call   0x18:0xea9
   30abe:	83 c4 3c             	add    sp,0x3c
   30ac1:	68 88 01             	push   0x188
   30ac4:	68 c8 d9             	push   0xd9c8
   30ac7:	9a 8c 09 18 00       	call   0x18:0x98c
   30acc:	83 c4 04             	add    sp,0x4
   30acf:	a1 01 3b             	mov    ax,ds:0x3b01
   30ad2:	48                   	dec    ax
   30ad3:	50                   	push   ax
   30ad4:	a1 ff 3a             	mov    ax,ds:0x3aff
   30ad7:	48                   	dec    ax
   30ad8:	50                   	push   ax
   30ad9:	6a 00                	push   0x0
   30adb:	6a 00                	push   0x0
   30add:	6a 41                	push   0x41
   30adf:	6a 42                	push   0x42
   30ae1:	b8 c8 d9             	mov    ax,0xd9c8
   30ae4:	ba 88 01             	mov    dx,0x188
   30ae7:	b9 30 00             	mov    cx,0x30
   30aea:	9a 02 15 00 00       	call   0x0:0x1502
   30aef:	ff 76 e8             	push   WORD PTR [bp-0x18]
   30af2:	ff 76 ea             	push   WORD PTR [bp-0x16]
   30af5:	b8 88 01             	mov    ax,0x188
   30af8:	8e c0                	mov    es,ax
   30afa:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   30aff:	b8 88 01             	mov    ax,0x188
   30b02:	8e c0                	mov    es,ax
   30b04:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   30b09:	b8 88 01             	mov    ax,0x188
   30b0c:	8e c0                	mov    es,ax
   30b0e:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   30b13:	b8 88 01             	mov    ax,0x188
   30b16:	8e c0                	mov    es,ax
   30b18:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   30b1d:	9a 0c 00 18 00       	call   0x18:0xc
   30b22:	83 c4 48             	add    sp,0x48
   30b25:	b8 68 d9             	mov    ax,0xd968
   30b28:	ba 88 01             	mov    dx,0x188
   30b2b:	b9 30 00             	mov    cx,0x30
   30b2e:	9a 02 15 00 00       	call   0x0:0x1502
   30b33:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   30b36:	f7 d8                	neg    ax
   30b38:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   30b3b:	cd 3b                	int    0x3b
   30b3d:	46                   	inc    si
   30b3e:	e0 8b                	loopne 0x30acb
   30b40:	46                   	inc    si
   30b41:	e6 89                	out    0x89,al
   30b43:	46                   	inc    si
   30b44:	e0 cd                	loopne 0x30b13
   30b46:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   30b49:	cd 34                	int    0x34
   30b4b:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   30b4e:	cd 3a                	int    0x3a
   30b50:	c9                   	leave
   30b51:	83 ec 04             	sub    sp,0x4
   30b54:	cd 35                	int    0x35
   30b56:	5e                   	pop    si
   30b57:	ac                   	lods   al,BYTE PTR ds:[si]
   30b58:	cd 3d                	int    0x3d
   30b5a:	ff 76 ee             	push   WORD PTR [bp-0x12]
   30b5d:	ff 76 f0             	push   WORD PTR [bp-0x10]
   30b60:	68 88 01             	push   0x188
   30b63:	68 c8 d9             	push   0xd9c8
   30b66:	9a a9 0e 18 00       	call   0x18:0xea9
   30b6b:	83 c4 3c             	add    sp,0x3c
   30b6e:	68 88 01             	push   0x188
   30b71:	68 c8 d9             	push   0xd9c8
   30b74:	9a 8c 09 18 00       	call   0x18:0x98c
   30b79:	83 c4 04             	add    sp,0x4
   30b7c:	a1 01 3b             	mov    ax,ds:0x3b01
   30b7f:	48                   	dec    ax
   30b80:	50                   	push   ax
   30b81:	a1 ff 3a             	mov    ax,ds:0x3aff
   30b84:	48                   	dec    ax
   30b85:	50                   	push   ax
   30b86:	6a 00                	push   0x0
   30b88:	6a 00                	push   0x0
   30b8a:	6a 41                	push   0x41
   30b8c:	6a 43                	push   0x43
   30b8e:	b8 c8 d9             	mov    ax,0xd9c8
   30b91:	ba 88 01             	mov    dx,0x188
   30b94:	b9 30 00             	mov    cx,0x30
   30b97:	9a 02 15 00 00       	call   0x0:0x1502
   30b9c:	ff 76 e8             	push   WORD PTR [bp-0x18]
   30b9f:	ff 76 ea             	push   WORD PTR [bp-0x16]
   30ba2:	b8 88 01             	mov    ax,0x188
   30ba5:	8e c0                	mov    es,ax
   30ba7:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   30bac:	b8 88 01             	mov    ax,0x188
   30baf:	8e c0                	mov    es,ax
   30bb1:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   30bb6:	b8 88 01             	mov    ax,0x188
   30bb9:	8e c0                	mov    es,ax
   30bbb:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   30bc0:	b8 88 01             	mov    ax,0x188
   30bc3:	8e c0                	mov    es,ax
   30bc5:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   30bca:	9a 0c 00 18 00       	call   0x18:0xc
   30bcf:	83 c4 48             	add    sp,0x48
   30bd2:	6a 34                	push   0x34
   30bd4:	6a 30                	push   0x30
   30bd6:	6a 41                	push   0x41
   30bd8:	0e                   	push   cs
   30bd9:	e8 fc 78             	call   0x384d8
   30bdc:	83 c4 06             	add    sp,0x6
   30bdf:	83 3e fb 3a 64       	cmp    WORD PTR ds:0x3afb,0x64
   30be4:	75 51                	jne    0x30c37
   30be6:	83 3e fd 3a 64       	cmp    WORD PTR ds:0x3afd,0x64
   30beb:	75 4a                	jne    0x30c37
   30bed:	c7 06 ff 3a c8 00    	mov    WORD PTR ds:0x3aff,0xc8
   30bf3:	c7 06 01 3b c8 00    	mov    WORD PTR ds:0x3b01,0xc8
   30bf9:	6a 02                	push   0x2
   30bfb:	90                   	nop
   30bfc:	0e                   	push   cs
   30bfd:	e8 54 08             	call   0x31454
   30c00:	59                   	pop    cx
   30c01:	6a 02                	push   0x2
   30c03:	90                   	nop
   30c04:	0e                   	push   cs
   30c05:	e8 fc 07             	call   0x31404
   30c08:	59                   	pop    cx
   30c09:	6a 01                	push   0x1
   30c0b:	90                   	nop
   30c0c:	0e                   	push   cs
   30c0d:	e8 44 08             	call   0x31454
   30c10:	59                   	pop    cx
   30c11:	6a 01                	push   0x1
   30c13:	90                   	nop
   30c14:	0e                   	push   cs
   30c15:	e8 ec 07             	call   0x31404
   30c18:	59                   	pop    cx
   30c19:	68 fe 00             	push   0xfe
   30c1c:	a1 01 3b             	mov    ax,ds:0x3b01
   30c1f:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   30c23:	50                   	push   ax
   30c24:	6a 42                	push   0x42
   30c26:	9a dc 16 28 00       	call   0x28:0x16dc
   30c2b:	83 c4 06             	add    sp,0x6
   30c2e:	6a 42                	push   0x42
   30c30:	0e                   	push   cs
   30c31:	e8 2e b1             	call   0x3bd62
   30c34:	59                   	pop    cx
   30c35:	eb 1c                	jmp    0x30c53
   30c37:	68 20 00             	push   0x20
   30c3a:	68 06 00             	push   0x6
   30c3d:	6a 00                	push   0x0
   30c3f:	a1 01 3b             	mov    ax,ds:0x3b01
   30c42:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   30c46:	50                   	push   ax
   30c47:	6a 42                	push   0x42
   30c49:	6a 43                	push   0x43
   30c4b:	9a 15 06 28 00       	call   0x28:0x615
   30c50:	83 c4 0c             	add    sp,0xc
   30c53:	68 fe 00             	push   0xfe
   30c56:	a1 01 3b             	mov    ax,ds:0x3b01
   30c59:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   30c5d:	50                   	push   ax
   30c5e:	6a 41                	push   0x41
   30c60:	9a dc 16 28 00       	call   0x28:0x16dc
   30c65:	83 c4 06             	add    sp,0x6
   30c68:	6a 41                	push   0x41
   30c6a:	6a 40                	push   0x40
   30c6c:	a0 f0 b9             	mov    al,ds:0xb9f0
   30c6f:	b4 00                	mov    ah,0x0
   30c71:	bb 04 00             	mov    bx,0x4
   30c74:	99                   	cwd
   30c75:	f7 fb                	idiv   bx
   30c77:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   30c7a:	cd 3b                	int    0x3b
   30c7c:	46                   	inc    si
   30c7d:	e0 83                	loopne 0x30c02
   30c7f:	ec                   	in     al,dx
   30c80:	04 cd                	add    al,0xcd
   30c82:	35 5e d8             	xor    ax,0xd85e
   30c85:	cd 3d                	int    0x3d
   30c87:	90                   	nop
   30c88:	0e                   	push   cs
   30c89:	e8 1c 08             	call   0x314a8
   30c8c:	83 c4 08             	add    sp,0x8
   30c8f:	68 20 00             	push   0x20
   30c92:	68 4c 00             	push   0x4c
   30c95:	68 fe 00             	push   0xfe
   30c98:	a1 01 3b             	mov    ax,ds:0x3b01
   30c9b:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   30c9f:	50                   	push   ax
   30ca0:	6a 41                	push   0x41
   30ca2:	6a 42                	push   0x42
   30ca4:	9a 15 06 28 00       	call   0x28:0x615
   30ca9:	83 c4 0c             	add    sp,0xc
   30cac:	6a 34                	push   0x34
   30cae:	6a 30                	push   0x30
   30cb0:	6a 41                	push   0x41
   30cb2:	0e                   	push   cs
   30cb3:	e8 22 78             	call   0x384d8
   30cb6:	83 c4 06             	add    sp,0x6
   30cb9:	6a 04                	push   0x4
   30cbb:	90                   	nop
   30cbc:	0e                   	push   cs
   30cbd:	e8 94 07             	call   0x31454
   30cc0:	59                   	pop    cx
   30cc1:	b8 01 00             	mov    ax,0x1
   30cc4:	c9                   	leave
   30cc5:	cb                   	retf
   30cc6:	55                   	push   bp
   30cc7:	8b ec                	mov    bp,sp
   30cc9:	83 ec 20             	sub    sp,0x20
   30ccc:	b8 88 01             	mov    ax,0x188
   30ccf:	8e c0                	mov    es,ax
   30cd1:	26 83 3e 74 6d 00    	cmp    WORD PTR es:0x6d74,0x0
   30cd7:	75 0a                	jne    0x30ce3
   30cd9:	6a 01                	push   0x1
   30cdb:	9a 2f 00 18 01       	call   0x118:0x2f
   30ce0:	e9 1b 07             	jmp    0x313fe
   30ce3:	6a 07                	push   0x7
   30ce5:	90                   	nop
   30ce6:	0e                   	push   cs
   30ce7:	e8 1a 07             	call   0x31404
   30cea:	59                   	pop    cx
   30ceb:	68 fe 00             	push   0xfe
   30cee:	a1 01 3b             	mov    ax,ds:0x3b01
   30cf1:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   30cf5:	50                   	push   ax
   30cf6:	6a 43                	push   0x43
   30cf8:	9a dc 16 28 00       	call   0x28:0x16dc
   30cfd:	83 c4 06             	add    sp,0x6
   30d00:	6a 43                	push   0x43
   30d02:	0e                   	push   cs
   30d03:	e8 5c b0             	call   0x3bd62
   30d06:	59                   	pop    cx
   30d07:	83 3e fb 3a 64       	cmp    WORD PTR ds:0x3afb,0x64
   30d0c:	74 03                	je     0x30d11
   30d0e:	e9 d7 00             	jmp    0x30de8
   30d11:	83 3e fd 3a 64       	cmp    WORD PTR ds:0x3afd,0x64
   30d16:	74 03                	je     0x30d1b
   30d18:	e9 cd 00             	jmp    0x30de8
   30d1b:	c7 46 ec 01 00       	mov    WORD PTR [bp-0x14],0x1
   30d20:	e9 a0 00             	jmp    0x30dc3
   30d23:	68 fe 00             	push   0xfe
   30d26:	6a 41                	push   0x41
   30d28:	ff 36 fd 3a          	push   WORD PTR ds:0x3afd
   30d2c:	ff 36 fb 3a          	push   WORD PTR ds:0x3afb
   30d30:	6a 00                	push   0x0
   30d32:	6a 00                	push   0x0
   30d34:	9a 08 09 28 00       	call   0x28:0x908
   30d39:	83 c4 0c             	add    sp,0xc
   30d3c:	6a 00                	push   0x0
   30d3e:	6a 41                	push   0x41
   30d40:	8a 46 ec             	mov    al,BYTE PTR [bp-0x14]
   30d43:	04 41                	add    al,0x41
   30d45:	50                   	push   ax
   30d46:	ff 36 fd 3a          	push   WORD PTR ds:0x3afd
   30d4a:	ff 36 fb 3a          	push   WORD PTR ds:0x3afb
   30d4e:	6a 00                	push   0x0
   30d50:	6a 00                	push   0x0
   30d52:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   30d56:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   30d5a:	6a 00                	push   0x0
   30d5c:	6a 00                	push   0x0
   30d5e:	9a 5a 0c 28 00       	call   0x28:0xc5a
   30d63:	83 c4 16             	add    sp,0x16
   30d66:	b0 01                	mov    al,0x1
   30d68:	8a 4e ec             	mov    cl,BYTE PTR [bp-0x14]
   30d6b:	d2 e0                	shl    al,cl
   30d6d:	50                   	push   ax
   30d6e:	90                   	nop
   30d6f:	0e                   	push   cs
   30d70:	e8 e1 06             	call   0x31454
   30d73:	59                   	pop    cx
   30d74:	c7 06 ff 3a 64 00    	mov    WORD PTR ds:0x3aff,0x64
   30d7a:	c7 06 01 3b 64 00    	mov    WORD PTR ds:0x3b01,0x64
   30d80:	b0 01                	mov    al,0x1
   30d82:	8a 4e ec             	mov    cl,BYTE PTR [bp-0x14]
   30d85:	d2 e0                	shl    al,cl
   30d87:	50                   	push   ax
   30d88:	90                   	nop
   30d89:	0e                   	push   cs
   30d8a:	e8 77 06             	call   0x31404
   30d8d:	59                   	pop    cx
   30d8e:	c7 06 ff 3a c8 00    	mov    WORD PTR ds:0x3aff,0xc8
   30d94:	c7 06 01 3b c8 00    	mov    WORD PTR ds:0x3b01,0xc8
   30d9a:	68 e0 01             	push   0x1e0
   30d9d:	68 d0 02             	push   0x2d0
   30da0:	8a 46 ec             	mov    al,BYTE PTR [bp-0x14]
   30da3:	04 41                	add    al,0x41
   30da5:	50                   	push   ax
   30da6:	6a 41                	push   0x41
   30da8:	6a 00                	push   0x0
   30daa:	6a 00                	push   0x0
   30dac:	ff 36 fd 3a          	push   WORD PTR ds:0x3afd
   30db0:	ff 36 fb 3a          	push   WORD PTR ds:0x3afb
   30db4:	6a 00                	push   0x0
   30db6:	6a 00                	push   0x0
   30db8:	9a 30 04 28 00       	call   0x28:0x430
   30dbd:	83 c4 14             	add    sp,0x14
   30dc0:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   30dc3:	83 7e ec 03          	cmp    WORD PTR [bp-0x14],0x3
   30dc7:	7d 03                	jge    0x30dcc
   30dc9:	e9 57 ff             	jmp    0x30d23
   30dcc:	c7 06 ff 3a 64 00    	mov    WORD PTR ds:0x3aff,0x64
   30dd2:	c7 06 01 3b 64 00    	mov    WORD PTR ds:0x3b01,0x64
   30dd8:	6a 01                	push   0x1
   30dda:	90                   	nop
   30ddb:	0e                   	push   cs
   30ddc:	e8 75 06             	call   0x31454
   30ddf:	59                   	pop    cx
   30de0:	6a 01                	push   0x1
   30de2:	90                   	nop
   30de3:	0e                   	push   cs
   30de4:	e8 1d 06             	call   0x31404
   30de7:	59                   	pop    cx
   30de8:	a1 ff 3a             	mov    ax,ds:0x3aff
   30deb:	bb 02 00             	mov    bx,0x2
   30dee:	99                   	cwd
   30def:	f7 fb                	idiv   bx
   30df1:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   30df4:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   30df9:	a1 ff 3a             	mov    ax,ds:0x3aff
   30dfc:	05 2c 01             	add    ax,0x12c
   30dff:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   30e02:	a1 ff 3a             	mov    ax,ds:0x3aff
   30e05:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   30e08:	a1 01 3b             	mov    ax,ds:0x3b01
   30e0b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   30e0e:	c7 46 f2 0f 00       	mov    WORD PTR [bp-0xe],0xf
   30e13:	a1 ff 3a             	mov    ax,ds:0x3aff
   30e16:	f7 d8                	neg    ax
   30e18:	bb 02 00             	mov    bx,0x2
   30e1b:	99                   	cwd
   30e1c:	f7 fb                	idiv   bx
   30e1e:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   30e21:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   30e26:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30e29:	bb 02 00             	mov    bx,0x2
   30e2c:	99                   	cwd
   30e2d:	f7 fb                	idiv   bx
   30e2f:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   30e32:	03 d0                	add    dx,ax
   30e34:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   30e37:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   30e3a:	bb 02 00             	mov    bx,0x2
   30e3d:	99                   	cwd
   30e3e:	f7 fb                	idiv   bx
   30e40:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   30e43:	2b d0                	sub    dx,ax
   30e45:	89 56 ee             	mov    WORD PTR [bp-0x12],dx
   30e48:	b8 88 01             	mov    ax,0x188
   30e4b:	8e c0                	mov    es,ax
   30e4d:	26 a1 74 6d          	mov    ax,es:0x6d74
   30e51:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   30e54:	c7 46 e2 0f 00       	mov    WORD PTR [bp-0x1e],0xf
   30e59:	68 88 01             	push   0x188
   30e5c:	68 38 d9             	push   0xd938
   30e5f:	ff 76 f4             	push   WORD PTR [bp-0xc]
   30e62:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30e65:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   30e68:	50                   	push   ax
   30e69:	6a 00                	push   0x0
   30e6b:	ff 76 f2             	push   WORD PTR [bp-0xe]
   30e6e:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   30e71:	05 02 00             	add    ax,0x2
   30e74:	50                   	push   ax
   30e75:	ff 76 fa             	push   WORD PTR [bp-0x6]
   30e78:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   30e7b:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   30e7e:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   30e81:	50                   	push   ax
   30e82:	9a 49 0d 18 00       	call   0x18:0xd49
   30e87:	83 c4 12             	add    sp,0x12
   30e8a:	b8 38 d9             	mov    ax,0xd938
   30e8d:	ba 88 01             	mov    dx,0x188
   30e90:	b9 30 00             	mov    cx,0x30
   30e93:	9a 02 15 00 00       	call   0x0:0x1502
   30e98:	cd 35                	int    0x35
   30e9a:	06                   	push   es
   30e9b:	3d 3d 83             	cmp    ax,0x833d
   30e9e:	ec                   	in     al,dx
   30e9f:	04 cd                	add    al,0xcd
   30ea1:	35 5e ac             	xor    ax,0xac5e
   30ea4:	cd 3d                	int    0x3d
   30ea6:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30ea9:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   30eac:	bb 02 00             	mov    bx,0x2
   30eaf:	99                   	cwd
   30eb0:	f7 fb                	idiv   bx
   30eb2:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   30eb5:	2b d0                	sub    dx,ax
   30eb7:	52                   	push   dx
   30eb8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   30ebb:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   30ebe:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   30ec1:	50                   	push   ax
   30ec2:	68 88 01             	push   0x188
   30ec5:	68 38 d9             	push   0xd938
   30ec8:	9a a9 0e 18 00       	call   0x18:0xea9
   30ecd:	83 c4 3c             	add    sp,0x3c
   30ed0:	68 88 01             	push   0x188
   30ed3:	68 68 d9             	push   0xd968
   30ed6:	ff 76 f4             	push   WORD PTR [bp-0xc]
   30ed9:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30edc:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   30edf:	50                   	push   ax
   30ee0:	6a 00                	push   0x0
   30ee2:	6a 00                	push   0x0
   30ee4:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   30ee7:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   30eea:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   30eed:	50                   	push   ax
   30eee:	ff 76 fa             	push   WORD PTR [bp-0x6]
   30ef1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   30ef4:	40                   	inc    ax
   30ef5:	50                   	push   ax
   30ef6:	9a f9 0d 18 00       	call   0x18:0xdf9
   30efb:	83 c4 12             	add    sp,0x12
   30efe:	c7 46 ec 01 00       	mov    WORD PTR [bp-0x14],0x1
   30f03:	b8 88 01             	mov    ax,0x188
   30f06:	8e c0                	mov    es,ax
   30f08:	26 a1 4a e7          	mov    ax,es:0xe74a
   30f0c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   30f0f:	e9 56 02             	jmp    0x31168
   30f12:	9a e3 01 40 00       	call   0x40:0x1e3
   30f17:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   30f1a:	40                   	inc    ax
   30f1b:	50                   	push   ax
   30f1c:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   30f1f:	d1 e0                	shl    ax,1
   30f21:	40                   	inc    ax
   30f22:	69 c0 e8 03          	imul   ax,ax,0x3e8
   30f26:	33 d2                	xor    dx,dx
   30f28:	f7 76 e6             	div    WORD PTR [bp-0x1a]
   30f2b:	8b d0                	mov    dx,ax
   30f2d:	58                   	pop    ax
   30f2e:	f7 ea                	imul   dx
   30f30:	8b 56 e2             	mov    dx,WORD PTR [bp-0x1e]
   30f33:	69 d2 e8 03          	imul   dx,dx,0x3e8
   30f37:	2b d0                	sub    dx,ax
   30f39:	89 56 e4             	mov    WORD PTR [bp-0x1c],dx
   30f3c:	b8 88 01             	mov    ax,0x188
   30f3f:	8e c0                	mov    es,ax
   30f41:	26 ff 36 78 6d       	push   WORD PTR es:0x6d78
   30f46:	bb e8 03             	mov    bx,0x3e8
   30f49:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   30f4c:	99                   	cwd
   30f4d:	f7 fb                	idiv   bx
   30f4f:	99                   	cwd
   30f50:	33 c2                	xor    ax,dx
   30f52:	2b c2                	sub    ax,dx
   30f54:	ba 88 01             	mov    dx,0x188
   30f57:	8e c2                	mov    es,dx
   30f59:	26 8b 16 76 6d       	mov    dx,WORD PTR es:0x6d76
   30f5e:	03 d0                	add    dx,ax
   30f60:	52                   	push   dx
   30f61:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   30f64:	bb 02 00             	mov    bx,0x2
   30f67:	99                   	cwd
   30f68:	f7 fb                	idiv   bx
   30f6a:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   30f6d:	03 d0                	add    dx,ax
   30f6f:	52                   	push   dx
   30f70:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   30f73:	bb 02 00             	mov    bx,0x2
   30f76:	99                   	cwd
   30f77:	f7 fb                	idiv   bx
   30f79:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   30f7c:	03 d0                	add    dx,ax
   30f7e:	52                   	push   dx
   30f7f:	9a 2c 0d 18 00       	call   0x18:0xd2c
   30f84:	83 c4 08             	add    sp,0x8
   30f87:	68 fe 00             	push   0xfe
   30f8a:	a1 01 3b             	mov    ax,ds:0x3b01
   30f8d:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   30f91:	50                   	push   ax
   30f92:	6a 41                	push   0x41
   30f94:	9a dc 16 28 00       	call   0x28:0x16dc
   30f99:	83 c4 06             	add    sp,0x6
   30f9c:	6a 41                	push   0x41
   30f9e:	6a 40                	push   0x40
   30fa0:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   30fa3:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   30fa6:	cd 3b                	int    0x3b
   30fa8:	46                   	inc    si
   30fa9:	e0 8b                	loopne 0x30f36
   30fab:	46                   	inc    si
   30fac:	e6 89                	out    0x89,al
   30fae:	46                   	inc    si
   30faf:	e0 cd                	loopne 0x30f7e
   30fb1:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   30fb4:	cd 3a                	int    0x3a
   30fb6:	f9                   	stc
   30fb7:	a0 f0 b9             	mov    al,ds:0xb9f0
   30fba:	b4 00                	mov    ah,0x0
   30fbc:	05 03 00             	add    ax,0x3
   30fbf:	bb 04 00             	mov    bx,0x4
   30fc2:	99                   	cwd
   30fc3:	f7 fb                	idiv   bx
   30fc5:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   30fc8:	cd 3b                	int    0x3b
   30fca:	46                   	inc    si
   30fcb:	e0 cd                	loopne 0x30f9a
   30fcd:	3a c1                	cmp    al,cl
   30fcf:	83 ec 04             	sub    sp,0x4
   30fd2:	cd 35                	int    0x35
   30fd4:	5e                   	pop    si
   30fd5:	d8 cd                	fmul   st,st(5)
   30fd7:	3d 90 0e             	cmp    ax,0xe90
   30fda:	e8 cb 04             	call   0x314a8
   30fdd:	83 c4 08             	add    sp,0x8
   30fe0:	b8 68 d9             	mov    ax,0xd968
   30fe3:	ba 88 01             	mov    dx,0x188
   30fe6:	b9 30 00             	mov    cx,0x30
   30fe9:	9a 02 15 00 00       	call   0x0:0x1502
   30fee:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   30ff1:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   30ff4:	cd 3b                	int    0x3b
   30ff6:	46                   	inc    si
   30ff7:	e0 8b                	loopne 0x30f84
   30ff9:	46                   	inc    si
   30ffa:	e6 89                	out    0x89,al
   30ffc:	46                   	inc    si
   30ffd:	e0 cd                	loopne 0x30fcc
   30fff:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   31002:	cd 34                	int    0x34
   31004:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   31007:	cd 3a                	int    0x3a
   31009:	c9                   	leave
   3100a:	83 ec 04             	sub    sp,0x4
   3100d:	cd 35                	int    0x35
   3100f:	5e                   	pop    si
   31010:	ac                   	lods   al,BYTE PTR ds:[si]
   31011:	cd 3d                	int    0x3d
   31013:	ff 76 ee             	push   WORD PTR [bp-0x12]
   31016:	ff 76 f0             	push   WORD PTR [bp-0x10]
   31019:	68 88 01             	push   0x188
   3101c:	68 c8 d9             	push   0xd9c8
   3101f:	9a a9 0e 18 00       	call   0x18:0xea9
   31024:	83 c4 3c             	add    sp,0x3c
   31027:	68 88 01             	push   0x188
   3102a:	68 c8 d9             	push   0xd9c8
   3102d:	9a 8c 09 18 00       	call   0x18:0x98c
   31032:	83 c4 04             	add    sp,0x4
   31035:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   31039:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   3103d:	6a 00                	push   0x0
   3103f:	6a 00                	push   0x0
   31041:	6a 41                	push   0x41
   31043:	6a 42                	push   0x42
   31045:	b8 c8 d9             	mov    ax,0xd9c8
   31048:	ba 88 01             	mov    dx,0x188
   3104b:	b9 30 00             	mov    cx,0x30
   3104e:	9a 02 15 00 00       	call   0x0:0x1502
   31053:	ff 76 e8             	push   WORD PTR [bp-0x18]
   31056:	ff 76 ea             	push   WORD PTR [bp-0x16]
   31059:	b8 88 01             	mov    ax,0x188
   3105c:	8e c0                	mov    es,ax
   3105e:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   31063:	b8 88 01             	mov    ax,0x188
   31066:	8e c0                	mov    es,ax
   31068:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   3106d:	b8 88 01             	mov    ax,0x188
   31070:	8e c0                	mov    es,ax
   31072:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   31077:	b8 88 01             	mov    ax,0x188
   3107a:	8e c0                	mov    es,ax
   3107c:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   31081:	9a 0c 00 18 00       	call   0x18:0xc
   31086:	83 c4 48             	add    sp,0x48
   31089:	b8 38 d9             	mov    ax,0xd938
   3108c:	ba 88 01             	mov    dx,0x188
   3108f:	b9 30 00             	mov    cx,0x30
   31092:	9a 02 15 00 00       	call   0x0:0x1502
   31097:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   3109a:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   3109d:	cd 3b                	int    0x3b
   3109f:	46                   	inc    si
   310a0:	e0 8b                	loopne 0x3102d
   310a2:	46                   	inc    si
   310a3:	e6 89                	out    0x89,al
   310a5:	46                   	inc    si
   310a6:	e0 cd                	loopne 0x31075
   310a8:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   310ab:	cd 34                	int    0x34
   310ad:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   310b0:	cd 3a                	int    0x3a
   310b2:	c9                   	leave
   310b3:	83 ec 04             	sub    sp,0x4
   310b6:	cd 35                	int    0x35
   310b8:	5e                   	pop    si
   310b9:	ac                   	lods   al,BYTE PTR ds:[si]
   310ba:	cd 3d                	int    0x3d
   310bc:	ff 76 ee             	push   WORD PTR [bp-0x12]
   310bf:	ff 76 f0             	push   WORD PTR [bp-0x10]
   310c2:	68 88 01             	push   0x188
   310c5:	68 c8 d9             	push   0xd9c8
   310c8:	9a a9 0e 18 00       	call   0x18:0xea9
   310cd:	83 c4 3c             	add    sp,0x3c
   310d0:	68 88 01             	push   0x188
   310d3:	68 c8 d9             	push   0xd9c8
   310d6:	9a 8c 09 18 00       	call   0x18:0x98c
   310db:	83 c4 04             	add    sp,0x4
   310de:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   310e2:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   310e6:	6a 00                	push   0x0
   310e8:	6a 00                	push   0x0
   310ea:	6a 41                	push   0x41
   310ec:	6a 43                	push   0x43
   310ee:	b8 c8 d9             	mov    ax,0xd9c8
   310f1:	ba 88 01             	mov    dx,0x188
   310f4:	b9 30 00             	mov    cx,0x30
   310f7:	9a 02 15 00 00       	call   0x0:0x1502
   310fc:	ff 76 e8             	push   WORD PTR [bp-0x18]
   310ff:	ff 76 ea             	push   WORD PTR [bp-0x16]
   31102:	b8 88 01             	mov    ax,0x188
   31105:	8e c0                	mov    es,ax
   31107:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   3110c:	b8 88 01             	mov    ax,0x188
   3110f:	8e c0                	mov    es,ax
   31111:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   31116:	b8 88 01             	mov    ax,0x188
   31119:	8e c0                	mov    es,ax
   3111b:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   31120:	b8 88 01             	mov    ax,0x188
   31123:	8e c0                	mov    es,ax
   31125:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   3112a:	9a 0c 00 18 00       	call   0x18:0xc
   3112f:	83 c4 48             	add    sp,0x48
   31132:	6a 34                	push   0x34
   31134:	6a 30                	push   0x30
   31136:	6a 41                	push   0x41
   31138:	0e                   	push   cs
   31139:	e8 9c 73             	call   0x384d8
   3113c:	83 c4 06             	add    sp,0x6
   3113f:	6a 00                	push   0x0
   31141:	68 e8 03             	push   0x3e8
   31144:	b8 88 01             	mov    ax,0x188
   31147:	8e c0                	mov    es,ax
   31149:	26 8b 1e 4a e7       	mov    bx,WORD PTR es:0xe74a
   3114e:	2b 5e fe             	sub    bx,WORD PTR [bp-0x2]
   31151:	33 c9                	xor    cx,cx
   31153:	33 d2                	xor    dx,dx
   31155:	b8 1e 00             	mov    ax,0x1e
   31158:	9a 42 12 00 00       	call   0x0:0x1242
   3115d:	52                   	push   dx
   3115e:	50                   	push   ax
   3115f:	9a df 12 00 00       	call   0x0:0x12df
   31164:	40                   	inc    ax
   31165:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   31168:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   3116b:	3b 46 e6             	cmp    ax,WORD PTR [bp-0x1a]
   3116e:	7d 03                	jge    0x31173
   31170:	e9 9f fd             	jmp    0x30f12
   31173:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   31176:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   31179:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   3117d:	75 03                	jne    0x31182
   3117f:	e9 9b 01             	jmp    0x3131d
   31182:	68 fe 00             	push   0xfe
   31185:	a1 01 3b             	mov    ax,ds:0x3b01
   31188:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3118c:	50                   	push   ax
   3118d:	6a 41                	push   0x41
   3118f:	9a dc 16 28 00       	call   0x28:0x16dc
   31194:	83 c4 06             	add    sp,0x6
   31197:	6a 41                	push   0x41
   31199:	6a 40                	push   0x40
   3119b:	a0 f0 b9             	mov    al,ds:0xb9f0
   3119e:	b4 00                	mov    ah,0x0
   311a0:	bb 04 00             	mov    bx,0x4
   311a3:	99                   	cwd
   311a4:	f7 fb                	idiv   bx
   311a6:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   311a9:	cd 3b                	int    0x3b
   311ab:	46                   	inc    si
   311ac:	e0 83                	loopne 0x31131
   311ae:	ec                   	in     al,dx
   311af:	04 cd                	add    al,0xcd
   311b1:	35 5e d8             	xor    ax,0xd85e
   311b4:	cd 3d                	int    0x3d
   311b6:	90                   	nop
   311b7:	0e                   	push   cs
   311b8:	e8 ed 02             	call   0x314a8
   311bb:	83 c4 08             	add    sp,0x8
   311be:	b8 68 d9             	mov    ax,0xd968
   311c1:	ba 88 01             	mov    dx,0x188
   311c4:	b9 30 00             	mov    cx,0x30
   311c7:	9a 02 15 00 00       	call   0x0:0x1502
   311cc:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   311cf:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   311d2:	cd 3b                	int    0x3b
   311d4:	46                   	inc    si
   311d5:	e0 8b                	loopne 0x31162
   311d7:	46                   	inc    si
   311d8:	e6 89                	out    0x89,al
   311da:	46                   	inc    si
   311db:	e0 cd                	loopne 0x311aa
   311dd:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   311e0:	cd 34                	int    0x34
   311e2:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   311e5:	cd 3a                	int    0x3a
   311e7:	c9                   	leave
   311e8:	83 ec 04             	sub    sp,0x4
   311eb:	cd 35                	int    0x35
   311ed:	5e                   	pop    si
   311ee:	ac                   	lods   al,BYTE PTR ds:[si]
   311ef:	cd 3d                	int    0x3d
   311f1:	ff 76 ee             	push   WORD PTR [bp-0x12]
   311f4:	ff 76 f0             	push   WORD PTR [bp-0x10]
   311f7:	68 88 01             	push   0x188
   311fa:	68 c8 d9             	push   0xd9c8
   311fd:	9a a9 0e 18 00       	call   0x18:0xea9
   31202:	83 c4 3c             	add    sp,0x3c
   31205:	68 88 01             	push   0x188
   31208:	68 c8 d9             	push   0xd9c8
   3120b:	9a 8c 09 18 00       	call   0x18:0x98c
   31210:	83 c4 04             	add    sp,0x4
   31213:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   31217:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   3121b:	6a 00                	push   0x0
   3121d:	6a 00                	push   0x0
   3121f:	6a 41                	push   0x41
   31221:	6a 42                	push   0x42
   31223:	b8 c8 d9             	mov    ax,0xd9c8
   31226:	ba 88 01             	mov    dx,0x188
   31229:	b9 30 00             	mov    cx,0x30
   3122c:	9a 02 15 00 00       	call   0x0:0x1502
   31231:	ff 76 e8             	push   WORD PTR [bp-0x18]
   31234:	ff 76 ea             	push   WORD PTR [bp-0x16]
   31237:	b8 88 01             	mov    ax,0x188
   3123a:	8e c0                	mov    es,ax
   3123c:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   31241:	b8 88 01             	mov    ax,0x188
   31244:	8e c0                	mov    es,ax
   31246:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   3124b:	b8 88 01             	mov    ax,0x188
   3124e:	8e c0                	mov    es,ax
   31250:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   31255:	b8 88 01             	mov    ax,0x188
   31258:	8e c0                	mov    es,ax
   3125a:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   3125f:	9a 0c 00 18 00       	call   0x18:0xc
   31264:	83 c4 48             	add    sp,0x48
   31267:	b8 38 d9             	mov    ax,0xd938
   3126a:	ba 88 01             	mov    dx,0x188
   3126d:	b9 30 00             	mov    cx,0x30
   31270:	9a 02 15 00 00       	call   0x0:0x1502
   31275:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   31278:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   3127b:	cd 3b                	int    0x3b
   3127d:	46                   	inc    si
   3127e:	e0 8b                	loopne 0x3120b
   31280:	46                   	inc    si
   31281:	e6 89                	out    0x89,al
   31283:	46                   	inc    si
   31284:	e0 cd                	loopne 0x31253
   31286:	3b 46 e0             	cmp    ax,WORD PTR [bp-0x20]
   31289:	cd 34                	int    0x34
   3128b:	3e 39 3d             	cmp    WORD PTR ds:[di],di
   3128e:	cd 3a                	int    0x3a
   31290:	c9                   	leave
   31291:	83 ec 04             	sub    sp,0x4
   31294:	cd 35                	int    0x35
   31296:	5e                   	pop    si
   31297:	ac                   	lods   al,BYTE PTR ds:[si]
   31298:	cd 3d                	int    0x3d
   3129a:	ff 76 ee             	push   WORD PTR [bp-0x12]
   3129d:	ff 76 f0             	push   WORD PTR [bp-0x10]
   312a0:	68 88 01             	push   0x188
   312a3:	68 c8 d9             	push   0xd9c8
   312a6:	9a a9 0e 18 00       	call   0x18:0xea9
   312ab:	83 c4 3c             	add    sp,0x3c
   312ae:	68 88 01             	push   0x188
   312b1:	68 c8 d9             	push   0xd9c8
   312b4:	9a 8c 09 18 00       	call   0x18:0x98c
   312b9:	83 c4 04             	add    sp,0x4
   312bc:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   312c0:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   312c4:	6a 00                	push   0x0
   312c6:	6a 00                	push   0x0
   312c8:	6a 41                	push   0x41
   312ca:	6a 43                	push   0x43
   312cc:	b8 c8 d9             	mov    ax,0xd9c8
   312cf:	ba 88 01             	mov    dx,0x188
   312d2:	b9 30 00             	mov    cx,0x30
   312d5:	9a 02 15 00 00       	call   0x0:0x1502
   312da:	ff 76 e8             	push   WORD PTR [bp-0x18]
   312dd:	ff 76 ea             	push   WORD PTR [bp-0x16]
   312e0:	b8 88 01             	mov    ax,0x188
   312e3:	8e c0                	mov    es,ax
   312e5:	26 ff 36 ce d9       	push   WORD PTR es:0xd9ce
   312ea:	b8 88 01             	mov    ax,0x188
   312ed:	8e c0                	mov    es,ax
   312ef:	26 ff 36 cc d9       	push   WORD PTR es:0xd9cc
   312f4:	b8 88 01             	mov    ax,0x188
   312f7:	8e c0                	mov    es,ax
   312f9:	26 ff 36 ca d9       	push   WORD PTR es:0xd9ca
   312fe:	b8 88 01             	mov    ax,0x188
   31301:	8e c0                	mov    es,ax
   31303:	26 ff 36 c8 d9       	push   WORD PTR es:0xd9c8
   31308:	9a 0c 00 18 00       	call   0x18:0xc
   3130d:	83 c4 48             	add    sp,0x48
   31310:	6a 34                	push   0x34
   31312:	6a 30                	push   0x30
   31314:	6a 41                	push   0x41
   31316:	0e                   	push   cs
   31317:	e8 be 71             	call   0x384d8
   3131a:	83 c4 06             	add    sp,0x6
   3131d:	83 3e fb 3a 64       	cmp    WORD PTR ds:0x3afb,0x64
   31322:	75 51                	jne    0x31375
   31324:	83 3e fd 3a 64       	cmp    WORD PTR ds:0x3afd,0x64
   31329:	75 4a                	jne    0x31375
   3132b:	c7 06 ff 3a c8 00    	mov    WORD PTR ds:0x3aff,0xc8
   31331:	c7 06 01 3b c8 00    	mov    WORD PTR ds:0x3b01,0xc8
   31337:	6a 02                	push   0x2
   31339:	90                   	nop
   3133a:	0e                   	push   cs
   3133b:	e8 16 01             	call   0x31454
   3133e:	59                   	pop    cx
   3133f:	6a 02                	push   0x2
   31341:	90                   	nop
   31342:	0e                   	push   cs
   31343:	e8 be 00             	call   0x31404
   31346:	59                   	pop    cx
   31347:	6a 01                	push   0x1
   31349:	90                   	nop
   3134a:	0e                   	push   cs
   3134b:	e8 06 01             	call   0x31454
   3134e:	59                   	pop    cx
   3134f:	6a 01                	push   0x1
   31351:	90                   	nop
   31352:	0e                   	push   cs
   31353:	e8 ae 00             	call   0x31404
   31356:	59                   	pop    cx
   31357:	68 fe 00             	push   0xfe
   3135a:	a1 01 3b             	mov    ax,ds:0x3b01
   3135d:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   31361:	50                   	push   ax
   31362:	6a 42                	push   0x42
   31364:	9a dc 16 28 00       	call   0x28:0x16dc
   31369:	83 c4 06             	add    sp,0x6
   3136c:	6a 42                	push   0x42
   3136e:	0e                   	push   cs
   3136f:	e8 f0 a9             	call   0x3bd62
   31372:	59                   	pop    cx
   31373:	eb 1c                	jmp    0x31391
   31375:	68 20 00             	push   0x20
   31378:	68 06 00             	push   0x6
   3137b:	6a 00                	push   0x0
   3137d:	a1 01 3b             	mov    ax,ds:0x3b01
   31380:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   31384:	50                   	push   ax
   31385:	6a 42                	push   0x42
   31387:	6a 43                	push   0x43
   31389:	9a 15 06 28 00       	call   0x28:0x615
   3138e:	83 c4 0c             	add    sp,0xc
   31391:	68 fe 00             	push   0xfe
   31394:	a1 01 3b             	mov    ax,ds:0x3b01
   31397:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3139b:	50                   	push   ax
   3139c:	6a 41                	push   0x41
   3139e:	9a dc 16 28 00       	call   0x28:0x16dc
   313a3:	83 c4 06             	add    sp,0x6
   313a6:	6a 41                	push   0x41
   313a8:	6a 40                	push   0x40
   313aa:	a0 f0 b9             	mov    al,ds:0xb9f0
   313ad:	b4 00                	mov    ah,0x0
   313af:	bb 04 00             	mov    bx,0x4
   313b2:	99                   	cwd
   313b3:	f7 fb                	idiv   bx
   313b5:	89 56 e0             	mov    WORD PTR [bp-0x20],dx
   313b8:	cd 3b                	int    0x3b
   313ba:	46                   	inc    si
   313bb:	e0 83                	loopne 0x31340
   313bd:	ec                   	in     al,dx
   313be:	04 cd                	add    al,0xcd
   313c0:	35 5e d8             	xor    ax,0xd85e
   313c3:	cd 3d                	int    0x3d
   313c5:	90                   	nop
   313c6:	0e                   	push   cs
   313c7:	e8 de 00             	call   0x314a8
   313ca:	83 c4 08             	add    sp,0x8
   313cd:	68 20 00             	push   0x20
   313d0:	68 4c 00             	push   0x4c
   313d3:	68 fe 00             	push   0xfe
   313d6:	a1 01 3b             	mov    ax,ds:0x3b01
   313d9:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   313dd:	50                   	push   ax
   313de:	6a 41                	push   0x41
   313e0:	6a 42                	push   0x42
   313e2:	9a 15 06 28 00       	call   0x28:0x615
   313e7:	83 c4 0c             	add    sp,0xc
   313ea:	6a 34                	push   0x34
   313ec:	6a 30                	push   0x30
   313ee:	6a 41                	push   0x41
   313f0:	0e                   	push   cs
   313f1:	e8 e4 70             	call   0x384d8
   313f4:	83 c4 06             	add    sp,0x6
   313f7:	6a 04                	push   0x4
   313f9:	90                   	nop
   313fa:	0e                   	push   cs
   313fb:	e8 56 00             	call   0x31454
   313fe:	59                   	pop    cx
   313ff:	b8 01 00             	mov    ax,0x1
   31402:	c9                   	leave
   31403:	cb                   	retf
   31404:	55                   	push   bp
   31405:	8b ec                	mov    bp,sp
   31407:	83 ec 02             	sub    sp,0x2
   3140a:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   3140f:	eb 3b                	jmp    0x3144c
   31411:	f6 46 06 01          	test   BYTE PTR [bp+0x6],0x1
   31415:	74 2f                	je     0x31446
   31417:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3141a:	c1 e3 03             	shl    bx,0x3
   3141d:	b8 88 01             	mov    ax,0x188
   31420:	8e c0                	mov    es,ax
   31422:	26 8b 87 a7 e4       	mov    ax,WORD PTR es:[bx-0x1b59]
   31427:	26 0b 87 a9 e4       	or     ax,WORD PTR es:[bx-0x1b57]
   3142c:	75 18                	jne    0x31446
   3142e:	6a 01                	push   0x1
   31430:	ff 36 01 3b          	push   WORD PTR ds:0x3b01
   31434:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   31438:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   3143b:	04 41                	add    al,0x41
   3143d:	50                   	push   ax
   3143e:	9a 4a 0e 20 00       	call   0x20:0xe4a
   31443:	83 c4 08             	add    sp,0x8
   31446:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   31449:	d0 6e 06             	shr    BYTE PTR [bp+0x6],1
   3144c:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   31450:	7c bf                	jl     0x31411
   31452:	c9                   	leave
   31453:	cb                   	retf
   31454:	55                   	push   bp
   31455:	8b ec                	mov    bp,sp
   31457:	83 ec 02             	sub    sp,0x2
   3145a:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   3145f:	eb 3f                	jmp    0x314a0
   31461:	f6 46 06 01          	test   BYTE PTR [bp+0x6],0x1
   31465:	74 33                	je     0x3149a
   31467:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3146a:	c1 e3 03             	shl    bx,0x3
   3146d:	b8 88 01             	mov    ax,0x188
   31470:	8e c0                	mov    es,ax
   31472:	26 8b 87 a7 e4       	mov    ax,WORD PTR es:[bx-0x1b59]
   31477:	26 0b 87 a9 e4       	or     ax,WORD PTR es:[bx-0x1b57]
   3147c:	74 1c                	je     0x3149a
   3147e:	1e                   	push   ds
   3147f:	68 41 3d             	push   0x3d41
   31482:	68 31 09             	push   0x931
   31485:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   31488:	c1 e0 03             	shl    ax,0x3
   3148b:	05 a7 e4             	add    ax,0xe4a7
   3148e:	68 88 01             	push   0x188
   31491:	50                   	push   ax
   31492:	9a 2f 02 40 00       	call   0x40:0x22f
   31497:	83 c4 0a             	add    sp,0xa
   3149a:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3149d:	d0 6e 06             	shr    BYTE PTR [bp+0x6],1
   314a0:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   314a4:	7c bb                	jl     0x31461
   314a6:	c9                   	leave
   314a7:	cb                   	retf
   314a8:	55                   	push   bp
   314a9:	8b ec                	mov    bp,sp
   314ab:	83 ec 06             	sub    sp,0x6
   314ae:	cd 35                	int    0x35
   314b0:	46                   	inc    si
   314b1:	06                   	push   es
   314b2:	cd 34                	int    0x34
   314b4:	0e                   	push   cs
   314b5:	53                   	push   bx
   314b6:	3d 9a 99             	cmp    ax,0x999a
   314b9:	10 00                	adc    BYTE PTR [bx+si],al
   314bb:	00 89 46 fc          	add    BYTE PTR [bx+di-0x3ba],cl
   314bf:	81 3e ff 3a c8 00    	cmp    WORD PTR ds:0x3aff,0xc8
   314c5:	74 03                	je     0x314ca
   314c7:	e9 2b 02             	jmp    0x316f5
   314ca:	81 3e 01 3b c8 00    	cmp    WORD PTR ds:0x3b01,0xc8
   314d0:	74 03                	je     0x314d5
   314d2:	e9 20 02             	jmp    0x316f5
   314d5:	b8 88 01             	mov    ax,0x188
   314d8:	8e c0                	mov    es,ax
   314da:	26 a1 51 bb          	mov    ax,es:0xbb51
   314de:	3b 06 f3 b9          	cmp    ax,WORD PTR ds:0xb9f3
   314e2:	75 0f                	jne    0x314f3
   314e4:	b8 88 01             	mov    ax,0x188
   314e7:	8e c0                	mov    es,ax
   314e9:	26 a1 4f bb          	mov    ax,es:0xbb4f
   314ed:	3b 06 f1 b9          	cmp    ax,WORD PTR ds:0xb9f1
   314f1:	74 3f                	je     0x31532
   314f3:	83 3e 03 3b 00       	cmp    WORD PTR ds:0x3b03,0x0
   314f8:	75 38                	jne    0x31532
   314fa:	6a 00                	push   0x0
   314fc:	68 00 80             	push   0x8000
   314ff:	9a 79 17 00 00       	call   0x0:0x1779
   31504:	99                   	cwd
   31505:	d1 e0                	shl    ax,1
   31507:	d1 d2                	rcl    dx,1
   31509:	52                   	push   dx
   3150a:	50                   	push   ax
   3150b:	9a df 12 00 00       	call   0x0:0x12df
   31510:	a3 e6 b3             	mov    ds:0xb3e6,ax
   31513:	6a 00                	push   0x0
   31515:	68 00 80             	push   0x8000
   31518:	9a 79 17 00 00       	call   0x0:0x1779
   3151d:	99                   	cwd
   3151e:	d1 e0                	shl    ax,1
   31520:	d1 d2                	rcl    dx,1
   31522:	52                   	push   dx
   31523:	50                   	push   ax
   31524:	9a df 12 00 00       	call   0x0:0x12df
   31529:	a3 e4 b3             	mov    ds:0xb3e4,ax
   3152c:	c7 06 03 3b 01 00    	mov    WORD PTR ds:0x3b03,0x1
   31532:	cd 35                	int    0x35
   31534:	46                   	inc    si
   31535:	06                   	push   es
   31536:	cd 34                	int    0x34
   31538:	1e                   	push   ds
   31539:	57                   	push   di
   3153a:	3d cd 39             	cmp    ax,0x39cd
   3153d:	7e fa                	jle    0x31539
   3153f:	cd 3d                	int    0x3d
   31541:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   31544:	9e                   	sahf
   31545:	76 03                	jbe    0x3154a
   31547:	e9 87 00             	jmp    0x315d1
   3154a:	68 e0 01             	push   0x1e0
   3154d:	68 d0 02             	push   0x2d0
   31550:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   31553:	50                   	push   ax
   31554:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31557:	50                   	push   ax
   31558:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   3155d:	7e 04                	jle    0x31563
   3155f:	33 c0                	xor    ax,ax
   31561:	eb 03                	jmp    0x31566
   31563:	a1 e4 b3             	mov    ax,ds:0xb3e4
   31566:	f7 d8                	neg    ax
   31568:	50                   	push   ax
   31569:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   3156e:	7e 04                	jle    0x31574
   31570:	33 c0                	xor    ax,ax
   31572:	eb 03                	jmp    0x31577
   31574:	a1 e6 b3             	mov    ax,ds:0xb3e6
   31577:	f7 d8                	neg    ax
   31579:	50                   	push   ax
   3157a:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   3157f:	7d 04                	jge    0x31585
   31581:	33 c0                	xor    ax,ax
   31583:	eb 03                	jmp    0x31588
   31585:	a1 e4 b3             	mov    ax,ds:0xb3e4
   31588:	ba 72 00             	mov    dx,0x72
   3158b:	2b d0                	sub    dx,ax
   3158d:	52                   	push   dx
   3158e:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   31593:	7d 04                	jge    0x31599
   31595:	33 c0                	xor    ax,ax
   31597:	eb 03                	jmp    0x3159c
   31599:	a1 e6 b3             	mov    ax,ds:0xb3e6
   3159c:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   315a0:	2b d0                	sub    dx,ax
   315a2:	52                   	push   dx
   315a3:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   315a8:	7d 04                	jge    0x315ae
   315aa:	33 c0                	xor    ax,ax
   315ac:	eb 03                	jmp    0x315b1
   315ae:	a1 e4 b3             	mov    ax,ds:0xb3e4
   315b1:	50                   	push   ax
   315b2:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   315b7:	7d 04                	jge    0x315bd
   315b9:	33 c0                	xor    ax,ax
   315bb:	eb 03                	jmp    0x315c0
   315bd:	a1 e6 b3             	mov    ax,ds:0xb3e6
   315c0:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   315c3:	03 d0                	add    dx,ax
   315c5:	52                   	push   dx
   315c6:	9a 30 04 28 00       	call   0x28:0x430
   315cb:	83 c4 14             	add    sp,0x14
   315ce:	e9 33 02             	jmp    0x31804
   315d1:	cd 35                	int    0x35
   315d3:	06                   	push   es
   315d4:	ad                   	lods   ax,WORD PTR ds:[si]
   315d5:	3b cd                	cmp    cx,bp
   315d7:	34 66                	xor    al,0x66
   315d9:	06                   	push   es
   315da:	cd 34                	int    0x34
   315dc:	0e                   	push   cs
   315dd:	53                   	push   bx
   315de:	3d 9a 99             	cmp    ax,0x999a
   315e1:	10 00                	adc    BYTE PTR [bx+si],al
   315e3:	00 89 46 fe          	add    BYTE PTR [bx+di-0x1ba],cl
   315e7:	68 e0 01             	push   0x1e0
   315ea:	68 d0 02             	push   0x2d0
   315ed:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   315f0:	50                   	push   ax
   315f1:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   315f4:	50                   	push   ax
   315f5:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   315fa:	7e 04                	jle    0x31600
   315fc:	33 c0                	xor    ax,ax
   315fe:	eb 03                	jmp    0x31603
   31600:	a1 e4 b3             	mov    ax,ds:0xb3e4
   31603:	f7 d8                	neg    ax
   31605:	50                   	push   ax
   31606:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   3160b:	7e 04                	jle    0x31611
   3160d:	33 c0                	xor    ax,ax
   3160f:	eb 03                	jmp    0x31614
   31611:	a1 e6 b3             	mov    ax,ds:0xb3e6
   31614:	f7 d8                	neg    ax
   31616:	50                   	push   ax
   31617:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   3161c:	7d 04                	jge    0x31622
   3161e:	33 c0                	xor    ax,ax
   31620:	eb 03                	jmp    0x31625
   31622:	a1 e4 b3             	mov    ax,ds:0xb3e4
   31625:	ba 72 00             	mov    dx,0x72
   31628:	2b d0                	sub    dx,ax
   3162a:	52                   	push   dx
   3162b:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   31630:	7d 04                	jge    0x31636
   31632:	33 c0                	xor    ax,ax
   31634:	eb 03                	jmp    0x31639
   31636:	a1 e6 b3             	mov    ax,ds:0xb3e6
   31639:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3163c:	2b d0                	sub    dx,ax
   3163e:	52                   	push   dx
   3163f:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   31644:	7d 04                	jge    0x3164a
   31646:	33 c0                	xor    ax,ax
   31648:	eb 03                	jmp    0x3164d
   3164a:	a1 e4 b3             	mov    ax,ds:0xb3e4
   3164d:	50                   	push   ax
   3164e:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   31653:	7d 04                	jge    0x31659
   31655:	33 c0                	xor    ax,ax
   31657:	eb 03                	jmp    0x3165c
   31659:	a1 e6 b3             	mov    ax,ds:0xb3e6
   3165c:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   3165f:	03 d0                	add    dx,ax
   31661:	52                   	push   dx
   31662:	9a 30 04 28 00       	call   0x28:0x430
   31667:	83 c4 14             	add    sp,0x14
   3166a:	68 e0 01             	push   0x1e0
   3166d:	68 d0 02             	push   0x2d0
   31670:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   31673:	50                   	push   ax
   31674:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31677:	50                   	push   ax
   31678:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   3167d:	7e 04                	jle    0x31683
   3167f:	33 c0                	xor    ax,ax
   31681:	eb 03                	jmp    0x31686
   31683:	a1 e4 b3             	mov    ax,ds:0xb3e4
   31686:	f7 d8                	neg    ax
   31688:	50                   	push   ax
   31689:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   3168e:	7e 04                	jle    0x31694
   31690:	33 c0                	xor    ax,ax
   31692:	eb 03                	jmp    0x31697
   31694:	a1 e6 b3             	mov    ax,ds:0xb3e6
   31697:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3169a:	2b d0                	sub    dx,ax
   3169c:	52                   	push   dx
   3169d:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   316a2:	7d 04                	jge    0x316a8
   316a4:	33 c0                	xor    ax,ax
   316a6:	eb 03                	jmp    0x316ab
   316a8:	a1 e4 b3             	mov    ax,ds:0xb3e4
   316ab:	ba 72 00             	mov    dx,0x72
   316ae:	2b d0                	sub    dx,ax
   316b0:	52                   	push   dx
   316b1:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   316b6:	7d 04                	jge    0x316bc
   316b8:	33 c0                	xor    ax,ax
   316ba:	eb 03                	jmp    0x316bf
   316bc:	a1 e6 b3             	mov    ax,ds:0xb3e6
   316bf:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   316c3:	2b 56 fe             	sub    dx,WORD PTR [bp-0x2]
   316c6:	2b d0                	sub    dx,ax
   316c8:	52                   	push   dx
   316c9:	83 3e e4 b3 00       	cmp    WORD PTR ds:0xb3e4,0x0
   316ce:	7d 04                	jge    0x316d4
   316d0:	33 c0                	xor    ax,ax
   316d2:	eb 03                	jmp    0x316d7
   316d4:	a1 e4 b3             	mov    ax,ds:0xb3e4
   316d7:	50                   	push   ax
   316d8:	83 3e e6 b3 00       	cmp    WORD PTR ds:0xb3e6,0x0
   316dd:	7d 04                	jge    0x316e3
   316df:	33 c0                	xor    ax,ax
   316e1:	eb 03                	jmp    0x316e6
   316e3:	a1 e6 b3             	mov    ax,ds:0xb3e6
   316e6:	50                   	push   ax
   316e7:	9a 30 04 28 00       	call   0x28:0x430
   316ec:	83 c4 14             	add    sp,0x14
   316ef:	e9 12 01             	jmp    0x31804
   316f2:	e9 0f 01             	jmp    0x31804
   316f5:	cd 35                	int    0x35
   316f7:	46                   	inc    si
   316f8:	06                   	push   es
   316f9:	cd 34                	int    0x34
   316fb:	1e                   	push   ds
   316fc:	57                   	push   di
   316fd:	3d cd 39             	cmp    ax,0x39cd
   31700:	7e fa                	jle    0x316fc
   31702:	cd 3d                	int    0x3d
   31704:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   31707:	9e                   	sahf
   31708:	77 3c                	ja     0x31746
   3170a:	6a 00                	push   0x0
   3170c:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   3170f:	50                   	push   ax
   31710:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31713:	50                   	push   ax
   31714:	a1 ff 3a             	mov    ax,ds:0x3aff
   31717:	99                   	cwd
   31718:	50                   	push   ax
   31719:	52                   	push   dx
   3171a:	33 d2                	xor    dx,dx
   3171c:	b8 72 00             	mov    ax,0x72
   3171f:	59                   	pop    cx
   31720:	5b                   	pop    bx
   31721:	9a 42 12 00 00       	call   0x0:0x1242
   31726:	bb c8 00             	mov    bx,0xc8
   31729:	33 d2                	xor    dx,dx
   3172b:	f7 f3                	div    bx
   3172d:	05 02 00             	add    ax,0x2
   31730:	50                   	push   ax
   31731:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   31735:	6a 00                	push   0x0
   31737:	6a 00                	push   0x0
   31739:	6a 72                	push   0x72
   3173b:	68 c8 00             	push   0xc8
   3173e:	6a 00                	push   0x0
   31740:	ff 76 fc             	push   WORD PTR [bp-0x4]
   31743:	e9 b6 00             	jmp    0x317fc
   31746:	cd 35                	int    0x35
   31748:	06                   	push   es
   31749:	ad                   	lods   ax,WORD PTR ds:[si]
   3174a:	3b cd                	cmp    cx,bp
   3174c:	34 66                	xor    al,0x66
   3174e:	06                   	push   es
   3174f:	cd 34                	int    0x34
   31751:	0e                   	push   cs
   31752:	53                   	push   bx
   31753:	3d 9a 99             	cmp    ax,0x999a
   31756:	10 00                	adc    BYTE PTR [bx+si],al
   31758:	00 89 46 fe          	add    BYTE PTR [bx+di-0x1ba],cl
   3175c:	6a 00                	push   0x0
   3175e:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   31761:	50                   	push   ax
   31762:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31765:	50                   	push   ax
   31766:	a1 ff 3a             	mov    ax,ds:0x3aff
   31769:	99                   	cwd
   3176a:	50                   	push   ax
   3176b:	52                   	push   dx
   3176c:	33 d2                	xor    dx,dx
   3176e:	b8 72 00             	mov    ax,0x72
   31771:	59                   	pop    cx
   31772:	5b                   	pop    bx
   31773:	9a 42 12 00 00       	call   0x0:0x1242
   31778:	bb c8 00             	mov    bx,0xc8
   3177b:	33 d2                	xor    dx,dx
   3177d:	f7 f3                	div    bx
   3177f:	05 02 00             	add    ax,0x2
   31782:	50                   	push   ax
   31783:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   31786:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3178a:	bb c8 00             	mov    bx,0xc8
   3178d:	99                   	cwd
   3178e:	f7 fb                	idiv   bx
   31790:	50                   	push   ax
   31791:	6a 00                	push   0x0
   31793:	6a 00                	push   0x0
   31795:	6a 72                	push   0x72
   31797:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3179a:	6a 00                	push   0x0
   3179c:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3179f:	9a 5a 0c 28 00       	call   0x28:0xc5a
   317a4:	83 c4 16             	add    sp,0x16
   317a7:	6a 00                	push   0x0
   317a9:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   317ac:	50                   	push   ax
   317ad:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   317b0:	50                   	push   ax
   317b1:	a1 ff 3a             	mov    ax,ds:0x3aff
   317b4:	99                   	cwd
   317b5:	50                   	push   ax
   317b6:	52                   	push   dx
   317b7:	33 d2                	xor    dx,dx
   317b9:	b8 72 00             	mov    ax,0x72
   317bc:	59                   	pop    cx
   317bd:	5b                   	pop    bx
   317be:	9a 42 12 00 00       	call   0x0:0x1242
   317c3:	bb c8 00             	mov    bx,0xc8
   317c6:	33 d2                	xor    dx,dx
   317c8:	f7 f3                	div    bx
   317ca:	05 02 00             	add    ax,0x2
   317cd:	50                   	push   ax
   317ce:	b8 c8 00             	mov    ax,0xc8
   317d1:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   317d4:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   317d8:	bb c8 00             	mov    bx,0xc8
   317db:	99                   	cwd
   317dc:	f7 fb                	idiv   bx
   317de:	50                   	push   ax
   317df:	6a 00                	push   0x0
   317e1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   317e4:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   317e8:	bb c8 00             	mov    bx,0xc8
   317eb:	99                   	cwd
   317ec:	f7 fb                	idiv   bx
   317ee:	50                   	push   ax
   317ef:	6a 72                	push   0x72
   317f1:	b8 c8 00             	mov    ax,0xc8
   317f4:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   317f7:	50                   	push   ax
   317f8:	6a 00                	push   0x0
   317fa:	6a 00                	push   0x0
   317fc:	9a 5a 0c 28 00       	call   0x28:0xc5a
   31801:	83 c4 16             	add    sp,0x16
   31804:	c9                   	leave
   31805:	cb                   	retf
