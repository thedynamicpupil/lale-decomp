
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

000222b0 <.data+0x122b0>:
   222b0:	06                   	push   es
   222b1:	00 00                	add    BYTE PTR [bx+si],al
   222b3:	1f                   	pop    ds
   222b4:	5f                   	pop    di
   222b5:	5d                   	pop    bp
   222b6:	ca 04 00             	retf   0x4
   222b9:	26 16                	es push ss
   222bb:	e0 16                	loopne 0x222d3
   222bd:	50                   	push   ax
   222be:	41                   	inc    cx
   222bf:	54                   	push   sp
   222c0:	48                   	dec    ax
   222c1:	3d 00 00             	cmp    ax,0x0
   222c4:	55                   	push   bp
   222c5:	8b ec                	mov    bp,sp
   222c7:	83 ec 14             	sub    sp,0x14
   222ca:	1e                   	push   ds
   222cb:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   222d0:	56                   	push   si
   222d1:	57                   	push   di
   222d2:	fc                   	cld
   222d3:	83 3e 10 01 00       	cmp    WORD PTR ds:0x110,0x0
   222d8:	75 03                	jne    0x222dd
   222da:	e9 0c 01             	jmp    0x223e9
   222dd:	e8 95 01             	call   0x22475
   222e0:	73 2c                	jae    0x2230e
   222e2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   222e5:	0b 46 08             	or     ax,WORD PTR [bp+0x8]
   222e8:	75 0a                	jne    0x222f4
   222ea:	c7 46 06 e8 01       	mov    WORD PTR [bp+0x6],0x1e8
   222ef:	c7 46 08 40 16       	mov    WORD PTR [bp+0x8],0x1640
   222f4:	e8 72 01             	call   0x22469
   222f7:	73 15                	jae    0x2230e
   222f9:	e8 be 01             	call   0x224ba
   222fc:	73 10                	jae    0x2230e
   222fe:	b8 fe ff             	mov    ax,0xfffe
   22301:	e9 e7 00             	jmp    0x223eb
   22304:	b4 3e                	mov    ah,0x3e
   22306:	cd 21                	int    0x21
   22308:	b8 ff ff             	mov    ax,0xffff
   2230b:	e9 dd 00             	jmp    0x223eb
   2230e:	8b d8                	mov    bx,ax
   22310:	89 1e 28 01          	mov    WORD PTR ds:0x128,bx
   22314:	b9 14 00             	mov    cx,0x14
   22317:	e8 25 02             	call   0x2253f
   2231a:	b9 fd ff             	mov    cx,0xfffd
   2231d:	72 e5                	jb     0x22304
   2231f:	33 c0                	xor    ax,ax
   22321:	33 d2                	xor    dx,dx
   22323:	81 7e ec 4d 5a       	cmp    WORD PTR [bp-0x14],0x5a4d
   22328:	74 05                	je     0x2232f
   2232a:	b9 fc ff             	mov    cx,0xfffc
   2232d:	eb d5                	jmp    0x22304
   2232f:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   22332:	8b 4e ee             	mov    cx,WORD PTR [bp-0x12]
   22335:	e3 01                	jcxz   0x22338
   22337:	48                   	dec    ax
   22338:	ba 00 02             	mov    dx,0x200
   2233b:	f7 e2                	mul    dx
   2233d:	03 c1                	add    ax,cx
   2233f:	05 0f 00             	add    ax,0xf
   22342:	83 d2 00             	adc    dx,0x0
   22345:	25 f0 ff             	and    ax,0xfff0
   22348:	52                   	push   dx
   22349:	50                   	push   ax
   2234a:	8b ca                	mov    cx,dx
   2234c:	8b d0                	mov    dx,ax
   2234e:	b8 00 42             	mov    ax,0x4200
   22351:	cd 21                	int    0x21
   22353:	b9 10 00             	mov    cx,0x10
   22356:	e8 e6 01             	call   0x2253f
   22359:	58                   	pop    ax
   2235a:	5a                   	pop    dx
   2235b:	b9 fd ff             	mov    cx,0xfffd
   2235e:	72 a4                	jb     0x22304
   22360:	05 10 00             	add    ax,0x10
   22363:	83 d2 00             	adc    dx,0x0
   22366:	81 7e ec 46 42       	cmp    WORD PTR [bp-0x14],0x4246
   2236b:	b9 fc ff             	mov    cx,0xfffc
   2236e:	74 02                	je     0x22372
   22370:	eb 92                	jmp    0x22304
   22372:	81 7e ee 4f 56       	cmp    WORD PTR [bp-0x12],0x564f
   22377:	74 08                	je     0x22381
   22379:	03 46 f0             	add    ax,WORD PTR [bp-0x10]
   2237c:	13 56 f2             	adc    dx,WORD PTR [bp-0xe]
   2237f:	eb c7                	jmp    0x22348
   22381:	a3 14 01             	mov    ds:0x114,ax
   22384:	89 16 16 01          	mov    WORD PTR ds:0x116,dx
   22388:	2e 8e 06 0b 00       	mov    es,WORD PTR cs:0xb
   2238d:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   22390:	26 a3 8e 8f          	mov    es:0x8f8e,ax
   22394:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   22397:	26 a3 90 8f          	mov    es:0x8f90,ax
   2239b:	b4 3e                	mov    ah,0x3e
   2239d:	cd 21                	int    0x21
   2239f:	c7 06 28 01 00 00    	mov    WORD PTR ds:0x128,0x0
   223a5:	90                   	nop
   223a6:	0e                   	push   cs
   223a7:	e8 4a 00             	call   0x223f4
   223aa:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   223ad:	40                   	inc    ax
   223ae:	a3 24 01             	mov    ds:0x124,ax
   223b1:	a3 20 01             	mov    ds:0x120,ax
   223b4:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   223b7:	89 1e 26 01          	mov    WORD PTR ds:0x126,bx
   223bb:	e8 91 01             	call   0x2254f
   223be:	8b 1e 26 01          	mov    bx,WORD PTR ds:0x126
   223c2:	2b 1e 24 01          	sub    bx,WORD PTR ds:0x124
   223c6:	3b 1e 1a 01          	cmp    bx,WORD PTR ds:0x11a
   223ca:	73 06                	jae    0x223d2
   223cc:	b9 fb ff             	mov    cx,0xfffb
   223cf:	e9 32 ff             	jmp    0x22304
   223d2:	d1 eb                	shr    bx,1
   223d4:	d1 eb                	shr    bx,1
   223d6:	89 1e 18 01          	mov    WORD PTR ds:0x118,bx
   223da:	e8 f2 01             	call   0x225cf
   223dd:	73 0a                	jae    0x223e9
   223df:	8b 1e 28 01          	mov    bx,WORD PTR ds:0x128
   223e3:	b9 ff ff             	mov    cx,0xffff
   223e6:	eb 03                	jmp    0x223eb
   223e8:	90                   	nop
   223e9:	33 c0                	xor    ax,ax
   223eb:	5f                   	pop    di
   223ec:	5e                   	pop    si
   223ed:	1f                   	pop    ds
   223ee:	8b e5                	mov    sp,bp
   223f0:	5d                   	pop    bp
   223f1:	ca 08 00             	retf   0x8
   223f4:	55                   	push   bp
   223f5:	8b ec                	mov    bp,sp
   223f7:	1e                   	push   ds
   223f8:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   223fd:	a0 11 01             	mov    al,ds:0x111
   22400:	b4 35                	mov    ah,0x35
   22402:	cd 21                	int    0x21
   22404:	06                   	push   es
   22405:	53                   	push   bx
   22406:	1e                   	push   ds
   22407:	a0 11 01             	mov    al,ds:0x111
   2240a:	8b 16 02 00          	mov    dx,WORD PTR ds:0x2
   2240e:	8e 1e 04 00          	mov    ds,WORD PTR ds:0x4
   22412:	b4 25                	mov    ah,0x25
   22414:	cd 21                	int    0x21
   22416:	1f                   	pop    ds
   22417:	8f 06 02 00          	pop    WORD PTR ds:0x2
   2241b:	8f 06 04 00          	pop    WORD PTR ds:0x4
   2241f:	83 3e 28 01 00       	cmp    WORD PTR ds:0x128,0x0
   22424:	74 10                	je     0x22436
   22426:	8b 1e 28 01          	mov    bx,WORD PTR ds:0x128
   2242a:	b4 3e                	mov    ah,0x3e
   2242c:	cd 21                	int    0x21
   2242e:	c7 06 28 01 00 00    	mov    WORD PTR ds:0x128,0x0
   22434:	eb 0e                	jmp    0x22444
   22436:	8d 16 8c 00          	lea    dx,ds:0x8c
   2243a:	b4 3d                	mov    ah,0x3d
   2243c:	a0 06 00             	mov    al,ds:0x6
   2243f:	cd 21                	int    0x21
   22441:	a3 28 01             	mov    ds:0x128,ax
   22444:	1f                   	pop    ds
   22445:	5d                   	pop    bp
   22446:	cb                   	retf
   22447:	55                   	push   bp
   22448:	8b ec                	mov    bp,sp
   2244a:	1e                   	push   ds
   2244b:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   22450:	83 3e 28 01 00       	cmp    WORD PTR ds:0x128,0x0
   22455:	74 05                	je     0x2245c
   22457:	90                   	nop
   22458:	0e                   	push   cs
   22459:	e8 98 ff             	call   0x223f4
   2245c:	0e                   	push   cs
   2245d:	ff 16 84 00          	call   WORD PTR ds:0x84
   22461:	0e                   	push   cs
   22462:	ff 16 82 00          	call   WORD PTR ds:0x82
   22466:	1f                   	pop    ds
   22467:	5d                   	pop    bp
   22468:	cb                   	retf
   22469:	1e                   	push   ds
   2246a:	8d 3e 8c 00          	lea    di,ds:0x8c
   2246e:	1e                   	push   ds
   2246f:	07                   	pop    es
   22470:	e8 a4 00             	call   0x22517
   22473:	1f                   	pop    ds
   22474:	c3                   	ret
   22475:	b4 30                	mov    ah,0x30
   22477:	cd 21                	int    0x21
   22479:	3c 03                	cmp    al,0x3
   2247b:	72 3c                	jb     0x224b9
   2247d:	c6 06 06 00 20       	mov    BYTE PTR ds:0x6,0x20
   22482:	1e                   	push   ds
   22483:	b8 e0 16             	mov    ax,0x16e0
   22486:	8e d8                	mov    ds,ax
   22488:	8e 1e 77 00          	mov    ds,WORD PTR ds:0x77
   2248c:	33 f6                	xor    si,si
   2248e:	fc                   	cld
   2248f:	ac                   	lods   al,BYTE PTR ds:[si]
   22490:	0a c0                	or     al,al
   22492:	75 fb                	jne    0x2248f
   22494:	ac                   	lods   al,BYTE PTR ds:[si]
   22495:	0a c0                	or     al,al
   22497:	75 f6                	jne    0x2248f
   22499:	ad                   	lods   ax,WORD PTR ds:[si]
   2249a:	8d 3e 8c 00          	lea    di,ds:0x8c
   2249e:	b8 26 16             	mov    ax,0x1626
   224a1:	8e c0                	mov    es,ax
   224a3:	8b df                	mov    bx,di
   224a5:	ac                   	lods   al,BYTE PTR ds:[si]
   224a6:	aa                   	stos   BYTE PTR es:[di],al
   224a7:	0a c0                	or     al,al
   224a9:	74 08                	je     0x224b3
   224ab:	3c 5c                	cmp    al,0x5c
   224ad:	75 f6                	jne    0x224a5
   224af:	8b df                	mov    bx,di
   224b1:	eb f2                	jmp    0x224a5
   224b3:	8b fb                	mov    di,bx
   224b5:	e8 5f 00             	call   0x22517
   224b8:	1f                   	pop    ds
   224b9:	c3                   	ret
   224ba:	1e                   	push   ds
   224bb:	b8 e0 16             	mov    ax,0x16e0
   224be:	8e d8                	mov    ds,ax
   224c0:	8e 1e 77 00          	mov    ds,WORD PTR ds:0x77
   224c4:	33 f6                	xor    si,si
   224c6:	bf 0d 00             	mov    di,0xd
   224c9:	0e                   	push   cs
   224ca:	07                   	pop    es
   224cb:	b9 05 00             	mov    cx,0x5
   224ce:	fc                   	cld
   224cf:	f3 a6                	repz cmps BYTE PTR ds:[si],BYTE PTR es:[di]
   224d1:	74 0d                	je     0x224e0
   224d3:	4e                   	dec    si
   224d4:	ac                   	lods   al,BYTE PTR ds:[si]
   224d5:	0a c0                	or     al,al
   224d7:	75 fb                	jne    0x224d4
   224d9:	3a 04                	cmp    al,BYTE PTR [si]
   224db:	75 e9                	jne    0x224c6
   224dd:	1f                   	pop    ds
   224de:	f9                   	stc
   224df:	c3                   	ret
   224e0:	80 3c 00             	cmp    BYTE PTR [si],0x0
   224e3:	74 f8                	je     0x224dd
   224e5:	8d 3e 8c 00          	lea    di,ds:0x8c
   224e9:	b8 26 16             	mov    ax,0x1626
   224ec:	8e c0                	mov    es,ax
   224ee:	32 c0                	xor    al,al
   224f0:	8a e0                	mov    ah,al
   224f2:	ac                   	lods   al,BYTE PTR ds:[si]
   224f3:	0a c0                	or     al,al
   224f5:	74 07                	je     0x224fe
   224f7:	3c 3b                	cmp    al,0x3b
   224f9:	74 04                	je     0x224ff
   224fb:	aa                   	stos   BYTE PTR es:[di],al
   224fc:	eb f2                	jmp    0x224f0
   224fe:	4e                   	dec    si
   224ff:	80 fc 3a             	cmp    ah,0x3a
   22502:	74 08                	je     0x2250c
   22504:	80 fc 5c             	cmp    ah,0x5c
   22507:	74 03                	je     0x2250c
   22509:	b0 5c                	mov    al,0x5c
   2250b:	aa                   	stos   BYTE PTR es:[di],al
   2250c:	1e                   	push   ds
   2250d:	56                   	push   si
   2250e:	e8 06 00             	call   0x22517
   22511:	5e                   	pop    si
   22512:	1f                   	pop    ds
   22513:	72 cb                	jb     0x224e0
   22515:	1f                   	pop    ds
   22516:	c3                   	ret
   22517:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   2251a:	8c d8                	mov    ax,ds
   2251c:	0b c6                	or     ax,si
   2251e:	74 0e                	je     0x2252e
   22520:	b9 0c 00             	mov    cx,0xc
   22523:	ac                   	lods   al,BYTE PTR ds:[si]
   22524:	aa                   	stos   BYTE PTR es:[di],al
   22525:	0a c0                	or     al,al
   22527:	74 05                	je     0x2252e
   22529:	e2 f8                	loop   0x22523
   2252b:	2a c0                	sub    al,al
   2252d:	aa                   	stos   BYTE PTR es:[di],al
   2252e:	8d 16 8c 00          	lea    dx,ds:0x8c
   22532:	b8 26 16             	mov    ax,0x1626
   22535:	8e d8                	mov    ds,ax
   22537:	b4 3d                	mov    ah,0x3d
   22539:	a0 06 00             	mov    al,ds:0x6
   2253c:	cd 21                	int    0x21
   2253e:	c3                   	ret
   2253f:	1e                   	push   ds
   22540:	8d 56 ec             	lea    dx,[bp-0x14]
   22543:	16                   	push   ss
   22544:	1f                   	pop    ds
   22545:	b4 3f                	mov    ah,0x3f
   22547:	cd 21                	int    0x21
   22549:	1f                   	pop    ds
   2254a:	72 02                	jb     0x2254e
   2254c:	3b c1                	cmp    ax,cx
   2254e:	c3                   	ret
   2254f:	b8 e0 16             	mov    ax,0x16e0
   22552:	8e c0                	mov    es,ax
   22554:	26 a1 7b 00          	mov    ax,es:0x7b
   22558:	05 10 00             	add    ax,0x10
   2255b:	2e a3 12 00          	mov    cs:0x12,ax
   2255f:	b8 37 16             	mov    ax,0x1637
   22562:	8e c0                	mov    es,ax
   22564:	33 db                	xor    bx,bx
   22566:	33 ff                	xor    di,di
   22568:	8d 36 a0 01          	lea    si,ds:0x1a0
   2256c:	f7 44 04 02 00       	test   WORD PTR [si+0x4],0x2
   22571:	74 06                	je     0x22579
   22573:	83 7c 02 00          	cmp    WORD PTR [si+0x2],0x0
   22577:	75 03                	jne    0x2257c
   22579:	eb 3f                	jmp    0x225ba
   2257b:	90                   	nop
   2257c:	8b 04                	mov    ax,WORD PTR [si]
   2257e:	06                   	push   es
   2257f:	26 a3 12 00          	mov    es:0x12,ax
   22583:	8e c0                	mov    es,ax
   22585:	26 80 3e 1a 00 ff    	cmp    BYTE PTR es:0x1a,0xff
   2258b:	75 0b                	jne    0x22598
   2258d:	07                   	pop    es
   2258e:	26 c7 06 12 00 00 00 	mov    WORD PTR es:0x12,0x0
   22595:	eb 23                	jmp    0x225ba
   22597:	90                   	nop
   22598:	58                   	pop    ax
   22599:	26 c7 06 18 00 ca 04 	mov    WORD PTR es:0x18,0x4ca
   225a0:	a1 14 01             	mov    ax,ds:0x114
   225a3:	8b 16 16 01          	mov    dx,WORD PTR ds:0x116
   225a7:	26 01 06 04 00       	add    WORD PTR es:0x4,ax
   225ac:	26 11 16 06 00       	adc    WORD PTR es:0x6,dx
   225b1:	e8 ad 04             	call   0x22a61
   225b4:	3b da                	cmp    bx,dx
   225b6:	73 02                	jae    0x225ba
   225b8:	87 da                	xchg   dx,bx
   225ba:	83 c6 08             	add    si,0x8
   225bd:	81 fe 88 03          	cmp    si,0x388
   225c1:	73 02                	jae    0x225c5
   225c3:	eb a7                	jmp    0x2256c
   225c5:	33 c0                	xor    ax,ax
   225c7:	83 c3 02             	add    bx,0x2
   225ca:	89 1e 1a 01          	mov    WORD PTR ds:0x11a,bx
   225ce:	c3                   	ret
   225cf:	8b 0e 22 01          	mov    cx,WORD PTR ds:0x122
   225d3:	89 0e 2c 01          	mov    WORD PTR ds:0x12c,cx
   225d7:	8b d9                	mov    bx,cx
   225d9:	8b 36 24 01          	mov    si,WORD PTR ds:0x124
   225dd:	8b 3e 26 01          	mov    di,WORD PTR ds:0x126
   225e1:	1e                   	push   ds
   225e2:	8e d9                	mov    ds,cx
   225e4:	8b 0e 12 00          	mov    cx,WORD PTR ds:0x12
   225e8:	e3 2e                	jcxz   0x22618
   225ea:	8e c1                	mov    es,cx
   225ec:	26 a1 04 00          	mov    ax,es:0x4
   225f0:	26 8b 16 06 00       	mov    dx,WORD PTR es:0x6
   225f5:	2b 06 04 00          	sub    ax,WORD PTR ds:0x4
   225f9:	1b 16 06 00          	sbb    dx,WORD PTR ds:0x6
   225fd:	b9 10 00             	mov    cx,0x10
   22600:	f7 f1                	div    cx
   22602:	03 c6                	add    ax,si
   22604:	3b c7                	cmp    ax,di
   22606:	77 10                	ja     0x22618
   22608:	89 36 10 00          	mov    WORD PTR ds:0x10,si
   2260c:	8b f0                	mov    si,ax
   2260e:	8c c1                	mov    cx,es
   22610:	89 0e 1c 00          	mov    WORD PTR ds:0x1c,cx
   22614:	8c db                	mov    bx,ds
   22616:	eb ca                	jmp    0x225e2
   22618:	8e db                	mov    ds,bx
   2261a:	c7 06 1c 00 00 00    	mov    WORD PTR ds:0x1c,0x0
   22620:	1f                   	pop    ds
   22621:	89 36 20 01          	mov    WORD PTR ds:0x120,si
   22625:	a1 24 01             	mov    ax,ds:0x124
   22628:	2b f0                	sub    si,ax
   2262a:	75 03                	jne    0x2262f
   2262c:	eb 5f                	jmp    0x2268d
   2262e:	90                   	nop
   2262f:	b1 04                	mov    cl,0x4
   22631:	d3 c6                	rol    si,cl
   22633:	8b fe                	mov    di,si
   22635:	83 e7 0f             	and    di,0xf
   22638:	83 e6 f0             	and    si,0xfff0
   2263b:	8e 06 2c 01          	mov    es,WORD PTR ds:0x12c
   2263f:	26 8b 16 04 00       	mov    dx,WORD PTR es:0x4
   22644:	26 8b 0e 06 00       	mov    cx,WORD PTR es:0x6
   22649:	e8 50 00             	call   0x2269c
   2264c:	72 40                	jb     0x2268e
   2264e:	a1 2c 01             	mov    ax,ds:0x12c
   22651:	1e                   	push   ds
   22652:	8e c0                	mov    es,ax
   22654:	26 8b 0e 0a 00       	mov    cx,WORD PTR es:0xa
   22659:	e3 03                	jcxz   0x2265e
   2265b:	e8 77 00             	call   0x226d5
   2265e:	26 83 3e 0c 00 00    	cmp    WORD PTR es:0xc,0x0
   22664:	74 03                	je     0x22669
   22666:	e8 de 02             	call   0x22947
   22669:	26 a1 10 00          	mov    ax,es:0x10
   2266d:	48                   	dec    ax
   2266e:	8e d8                	mov    ds,ax
   22670:	8c 06 0e 00          	mov    WORD PTR ds:0xe,es
   22674:	06                   	push   es
   22675:	b8 ff ff             	mov    ax,0xffff
   22678:	8b d8                	mov    bx,ax
   2267a:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   2267f:	ff 1e 86 00          	call   DWORD PTR ds:0x86
   22683:	07                   	pop    es
   22684:	26 a1 1c 00          	mov    ax,es:0x1c
   22688:	0b c0                	or     ax,ax
   2268a:	75 c6                	jne    0x22652
   2268c:	1f                   	pop    ds
   2268d:	f8                   	clc
   2268e:	c3                   	ret
   2268f:	b1 04                	mov    cl,0x4
   22691:	d3 e8                	shr    ax,cl
   22693:	d3 ca                	ror    dx,cl
   22695:	81 e2 00 f0          	and    dx,0xf000
   22699:	0b c2                	or     ax,dx
   2269b:	c3                   	ret
   2269c:	50                   	push   ax
   2269d:	8b 1e 28 01          	mov    bx,WORD PTR ds:0x128
   226a1:	b8 00 42             	mov    ax,0x4200
   226a4:	cd 21                	int    0x21
   226a6:	58                   	pop    ax
   226a7:	1e                   	push   ds
   226a8:	8e d8                	mov    ds,ax
   226aa:	eb 07                	jmp    0x226b3
   226ac:	8c d8                	mov    ax,ds
   226ae:	05 ff 0f             	add    ax,0xfff
   226b1:	8e d8                	mov    ds,ax
   226b3:	b9 f0 ff             	mov    cx,0xfff0
   226b6:	0b ff                	or     di,di
   226b8:	75 02                	jne    0x226bc
   226ba:	8b ce                	mov    cx,si
   226bc:	33 d2                	xor    dx,dx
   226be:	b4 3f                	mov    ah,0x3f
   226c0:	cd 21                	int    0x21
   226c2:	72 0f                	jb     0x226d3
   226c4:	3b c1                	cmp    ax,cx
   226c6:	72 0b                	jb     0x226d3
   226c8:	2b f0                	sub    si,ax
   226ca:	83 df 00             	sbb    di,0x0
   226cd:	8b c6                	mov    ax,si
   226cf:	0b c7                	or     ax,di
   226d1:	75 d9                	jne    0x226ac
   226d3:	1f                   	pop    ds
   226d4:	c3                   	ret
   226d5:	1e                   	push   ds
   226d6:	06                   	push   es
   226d7:	26 a1 08 00          	mov    ax,es:0x8
   226db:	8b f0                	mov    si,ax
   226dd:	83 e6 0f             	and    si,0xf
   226e0:	d1 e8                	shr    ax,1
   226e2:	d1 e8                	shr    ax,1
   226e4:	d1 e8                	shr    ax,1
   226e6:	d1 e8                	shr    ax,1
   226e8:	26 8b 16 10 00       	mov    dx,WORD PTR es:0x10
   226ed:	03 c2                	add    ax,dx
   226ef:	8e d8                	mov    ds,ax
   226f1:	8e c2                	mov    es,dx
   226f3:	d1 e9                	shr    cx,1
   226f5:	fc                   	cld
   226f6:	ad                   	lods   ax,WORD PTR ds:[si]
   226f7:	8b d8                	mov    bx,ax
   226f9:	26 8b 3f             	mov    di,WORD PTR es:[bx]
   226fc:	1e                   	push   ds
   226fd:	b8 40 16             	mov    ax,0x1640
   22700:	8e d8                	mov    ds,ax
   22702:	8b c7                	mov    ax,di
   22704:	83 e7 f8             	and    di,0xfff8
   22707:	8b 15                	mov    dx,WORD PTR [di]
   22709:	26 89 17             	mov    WORD PTR es:[bx],dx
   2270c:	a9 01 00             	test   ax,0x1
   2270f:	74 03                	je     0x22714
   22711:	e8 06 00             	call   0x2271a
   22714:	1f                   	pop    ds
   22715:	e2 df                	loop   0x226f6
   22717:	07                   	pop    es
   22718:	1f                   	pop    ds
   22719:	c3                   	ret
   2271a:	51                   	push   cx
   2271b:	8e da                	mov    ds,dx
   2271d:	26 8a 67 ff          	mov    ah,BYTE PTR es:[bx-0x1]
   22721:	8a c4                	mov    al,ah
   22723:	25 07 f8             	and    ax,0xf807
   22726:	80 fc b8             	cmp    ah,0xb8
   22729:	75 4b                	jne    0x22776
   2272b:	8b c8                	mov    cx,ax
   2272d:	26 8a 67 02          	mov    ah,BYTE PTR es:[bx+0x2]
   22731:	8a c4                	mov    al,ah
   22733:	25 07 f8             	and    ax,0xf807
   22736:	80 fc 50             	cmp    ah,0x50
   22739:	75 3b                	jne    0x22776
   2273b:	3a c1                	cmp    al,cl
   2273d:	75 37                	jne    0x22776
   2273f:	8b d0                	mov    dx,ax
   22741:	26 8a 67 03          	mov    ah,BYTE PTR es:[bx+0x3]
   22745:	8a c4                	mov    al,ah
   22747:	25 07 f8             	and    ax,0xf807
   2274a:	3b c8                	cmp    cx,ax
   2274c:	75 28                	jne    0x22776
   2274e:	26 8a 67 06          	mov    ah,BYTE PTR es:[bx+0x6]
   22752:	8a c4                	mov    al,ah
   22754:	25 07 f8             	and    ax,0xf807
   22757:	3b c2                	cmp    ax,dx
   22759:	75 1b                	jne    0x22776
   2275b:	bf 20 00             	mov    di,0x20
   2275e:	8b 0e 0c 00          	mov    cx,WORD PTR ds:0xc
   22762:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   22766:	3b 45 02             	cmp    ax,WORD PTR [di+0x2]
   22769:	74 07                	je     0x22772
   2276b:	83 c7 05             	add    di,0x5
   2276e:	e2 f6                	loop   0x22766
   22770:	eb 06                	jmp    0x22778
   22772:	26 89 7f 04          	mov    WORD PTR es:[bx+0x4],di
   22776:	59                   	pop    cx
   22777:	c3                   	ret
   22778:	59                   	pop    cx
   22779:	c3                   	ret
   2277a:	26 8b 36 08 00       	mov    si,WORD PTR es:0x8
   2277f:	33 ff                	xor    di,di
   22781:	26 03 36 0a 00       	add    si,WORD PTR es:0xa
   22786:	83 d7 00             	adc    di,0x0
   22789:	26 8b 16 04 00       	mov    dx,WORD PTR es:0x4
   2278e:	26 8b 0e 06 00       	mov    cx,WORD PTR es:0x6
   22793:	26 a1 10 00          	mov    ax,es:0x10
   22797:	e8 02 ff             	call   0x2269c
   2279a:	72 0b                	jb     0x227a7
   2279c:	26 8b 0e 0a 00       	mov    cx,WORD PTR es:0xa
   227a1:	e3 03                	jcxz   0x227a6
   227a3:	e8 2f ff             	call   0x226d5
   227a6:	f8                   	clc
   227a7:	c3                   	ret
   227a8:	55                   	push   bp
   227a9:	8b ec                	mov    bp,sp
   227ab:	f7 c5 01 00          	test   bp,0x1
   227af:	74 05                	je     0x227b6
   227b1:	ea 7b 02 00 00       	jmp    0x0:0x27b
   227b6:	50                   	push   ax
   227b7:	53                   	push   bx
   227b8:	51                   	push   cx
   227b9:	52                   	push   dx
   227ba:	56                   	push   si
   227bb:	57                   	push   di
   227bc:	1e                   	push   ds
   227bd:	06                   	push   es
   227be:	b8 26 16             	mov    ax,0x1626
   227c1:	8e d8                	mov    ds,ax
   227c3:	fb                   	sti
   227c4:	c4 5e 02             	les    bx,DWORD PTR [bp+0x2]
   227c7:	26 ff 37             	push   WORD PTR es:[bx]
   227ca:	83 6e 02 02          	sub    WORD PTR [bp+0x2],0x2
   227ce:	75 05                	jne    0x227d5
   227d0:	e8 85 00             	call   0x22858
   227d3:	eb 18                	jmp    0x227ed
   227d5:	83 c5 06             	add    bp,0x6
   227d8:	8b 46 00             	mov    ax,WORD PTR [bp+0x0]
   227db:	87 46 fa             	xchg   WORD PTR [bp-0x6],ax
   227de:	89 46 00             	mov    WORD PTR [bp+0x0],ax
   227e1:	e8 74 00             	call   0x22858
   227e4:	8b 46 00             	mov    ax,WORD PTR [bp+0x0]
   227e7:	87 46 fa             	xchg   WORD PTR [bp-0x6],ax
   227ea:	89 46 00             	mov    WORD PTR [bp+0x0],ax
   227ed:	5b                   	pop    bx
   227ee:	26 a0 1a 00          	mov    al,es:0x1a
   227f2:	24 08                	and    al,0x8
   227f4:	26 80 26 1a 00 f7    	and    BYTE PTR es:0x1a,0xf7
   227fa:	98                   	cbw
   227fb:	2e 8e 1e 09 00       	mov    ds,WORD PTR cs:0x9
   22800:	ff 1e 86 00          	call   DWORD PTR ds:0x86
   22804:	07                   	pop    es
   22805:	1f                   	pop    ds
   22806:	5f                   	pop    di
   22807:	5e                   	pop    si
   22808:	5a                   	pop    dx
   22809:	59                   	pop    cx
   2280a:	5b                   	pop    bx
   2280b:	58                   	pop    ax
   2280c:	5d                   	pop    bp
   2280d:	cf                   	iret
   2280e:	06                   	push   es
   2280f:	ff 06 2a 01          	inc    WORD PTR ds:0x12a
   22813:	e8 4b 02             	call   0x22a61
   22816:	eb 2e                	jmp    0x22846
   22818:	9d                   	popf
   22819:	52                   	push   dx
   2281a:	73 03                	jae    0x2281f
   2281c:	e8 cc 00             	call   0x228eb
   2281f:	8e 06 2c 01          	mov    es,WORD PTR ds:0x12c
   22823:	26 a1 1c 00          	mov    ax,es:0x1c
   22827:	a3 2c 01             	mov    ds:0x12c,ax
   2282a:	26 80 3e 1b 00 00    	cmp    BYTE PTR es:0x1b,0x0
   22830:	75 08                	jne    0x2283a
   22832:	e8 9e 00             	call   0x228d3
   22835:	e8 1d 02             	call   0x22a55
   22838:	eb 0b                	jmp    0x22845
   2283a:	26 fe 0e 1b 00       	dec    BYTE PTR es:0x1b
   2283f:	e8 56 01             	call   0x22998
   22842:	e8 a4 01             	call   0x229e9
   22845:	5a                   	pop    dx
   22846:	e8 f0 01             	call   0x22a39
   22849:	9c                   	pushf
   2284a:	3b d0                	cmp    dx,ax
   2284c:	77 ca                	ja     0x22818
   2284e:	9d                   	popf
   2284f:	07                   	pop    es
   22850:	a1 20 01             	mov    ax,ds:0x120
   22853:	26 a3 10 00          	mov    es:0x10,ax
   22857:	c3                   	ret
   22858:	ff 06 1c 01          	inc    WORD PTR ds:0x11c
   2285c:	26 83 3e 10 00 00    	cmp    WORD PTR es:0x10,0x0
   22862:	74 0f                	je     0x22873
   22864:	26 c6 06 1b 00 01    	mov    BYTE PTR es:0x1b,0x1
   2286a:	26 80 0e 1a 00 04    	or     BYTE PTR es:0x1a,0x4
   22870:	eb 1d                	jmp    0x2288f
   22872:	90                   	nop
   22873:	26 80 0e 1a 00 08    	or     BYTE PTR es:0x1a,0x8
   22879:	e8 92 ff             	call   0x2280e
   2287c:	1e                   	push   ds
   2287d:	48                   	dec    ax
   2287e:	8e d8                	mov    ds,ax
   22880:	8c 06 0e 00          	mov    WORD PTR ds:0xe,es
   22884:	1f                   	pop    ds
   22885:	26 ff 16 18 00       	call   WORD PTR es:0x18
   2288a:	72 42                	jb     0x228ce
   2288c:	e8 5a 01             	call   0x229e9
   2288f:	e8 94 00             	call   0x22926
   22892:	26 a0 1a 00          	mov    al,es:0x1a
   22896:	24 03                	and    al,0x3
   22898:	26 00 06 1b 00       	add    BYTE PTR es:0x1b,al
   2289d:	06                   	push   es
   2289e:	e8 98 01             	call   0x22a39
   228a1:	8e 06 2c 01          	mov    es,WORD PTR ds:0x12c
   228a5:	26 8b 0e 1c 00       	mov    cx,WORD PTR es:0x1c
   228aa:	e3 20                	jcxz   0x228cc
   228ac:	3b 06 18 01          	cmp    ax,WORD PTR ds:0x118
   228b0:	73 1a                	jae    0x228cc
   228b2:	51                   	push   cx
   228b3:	50                   	push   ax
   228b4:	26 80 3e 1b 00 00    	cmp    BYTE PTR es:0x1b,0x0
   228ba:	74 04                	je     0x228c0
   228bc:	33 c0                	xor    ax,ax
   228be:	eb 06                	jmp    0x228c6
   228c0:	e8 a2 00             	call   0x22965
   228c3:	e8 8f 01             	call   0x22a55
   228c6:	59                   	pop    cx
   228c7:	07                   	pop    es
   228c8:	03 c1                	add    ax,cx
   228ca:	eb d9                	jmp    0x228a5
   228cc:	07                   	pop    es
   228cd:	c3                   	ret
   228ce:	ea 7b 02 00 00       	jmp    0x0:0x27b
   228d3:	e8 8f 00             	call   0x22965
   228d6:	26 81 3e 18 00 ca 04 	cmp    WORD PTR es:0x18,0x4ca
   228dd:	75 04                	jne    0x228e3
   228df:	ff 16 80 00          	call   WORD PTR ds:0x80
   228e3:	26 c7 06 10 00 00 00 	mov    WORD PTR es:0x10,0x0
   228ea:	c3                   	ret
   228eb:	a1 2c 01             	mov    ax,ds:0x12c
   228ee:	33 c9                	xor    cx,cx
   228f0:	41                   	inc    cx
   228f1:	50                   	push   ax
   228f2:	8e c0                	mov    es,ax
   228f4:	26 a1 1c 00          	mov    ax,es:0x1c
   228f8:	0b c0                	or     ax,ax
   228fa:	75 f4                	jne    0x228f0
   228fc:	a3 2c 01             	mov    ds:0x12c,ax
   228ff:	a1 26 01             	mov    ax,ds:0x126
   22902:	a3 20 01             	mov    ds:0x120,ax
   22905:	07                   	pop    es
   22906:	51                   	push   cx
   22907:	a1 2c 01             	mov    ax,ds:0x12c
   2290a:	26 a3 1c 00          	mov    es:0x1c,ax
   2290e:	8c 06 2c 01          	mov    WORD PTR ds:0x12c,es
   22912:	e8 40 01             	call   0x22a55
   22915:	29 06 20 01          	sub    WORD PTR ds:0x120,ax
   22919:	e8 7c 00             	call   0x22998
   2291c:	59                   	pop    cx
   2291d:	e2 e6                	loop   0x22905
   2291f:	a1 24 01             	mov    ax,ds:0x124
   22922:	a3 20 01             	mov    ds:0x120,ax
   22925:	c3                   	ret
   22926:	26 83 3e 0c 00 00    	cmp    WORD PTR es:0xc,0x0
   2292c:	75 01                	jne    0x2292f
   2292e:	c3                   	ret
   2292f:	26 80 3e 20 00 ea    	cmp    BYTE PTR es:0x20,0xea
   22935:	74 2d                	je     0x22964
   22937:	26 8b 0e 02 00       	mov    cx,WORD PTR es:0x2
   2293c:	e3 09                	jcxz   0x22947
   2293e:	26 a1 10 00          	mov    ax,es:0x10
   22942:	8c c2                	mov    dx,es
   22944:	e8 c0 00             	call   0x22a07
   22947:	26 8b 1e 10 00       	mov    bx,WORD PTR es:0x10
   2294c:	26 8b 0e 0c 00       	mov    cx,WORD PTR es:0xc
   22951:	bf 20 00             	mov    di,0x20
   22954:	fc                   	cld
   22955:	26 8b 55 02          	mov    dx,WORD PTR es:[di+0x2]
   22959:	b0 ea                	mov    al,0xea
   2295b:	aa                   	stos   BYTE PTR es:[di],al
   2295c:	8b c2                	mov    ax,dx
   2295e:	ab                   	stos   WORD PTR es:[di],ax
   2295f:	8b c3                	mov    ax,bx
   22961:	ab                   	stos   WORD PTR es:[di],ax
   22962:	e2 f1                	loop   0x22955
   22964:	c3                   	ret
   22965:	26 80 3e 20 00 cd    	cmp    BYTE PTR es:0x20,0xcd
   2296b:	74 2a                	je     0x22997
   2296d:	8c c0                	mov    ax,es
   2296f:	26 8b 16 10 00       	mov    dx,WORD PTR es:0x10
   22974:	33 c9                	xor    cx,cx
   22976:	e8 8e 00             	call   0x22a07
   22979:	26 89 0e 02 00       	mov    WORD PTR es:0x2,cx
   2297e:	26 8b 0e 0c 00       	mov    cx,WORD PTR es:0xc
   22983:	bf 20 00             	mov    di,0x20
   22986:	fc                   	cld
   22987:	26 8b 55 01          	mov    dx,WORD PTR es:[di+0x1]
   2298b:	a1 10 01             	mov    ax,ds:0x110
   2298e:	ab                   	stos   WORD PTR es:[di],ax
   2298f:	8b c2                	mov    ax,dx
   22991:	ab                   	stos   WORD PTR es:[di],ax
   22992:	32 c0                	xor    al,al
   22994:	aa                   	stos   BYTE PTR es:[di],al
   22995:	e2 f0                	loop   0x22987
   22997:	c3                   	ret
   22998:	a1 20 01             	mov    ax,ds:0x120
   2299b:	26 8b 16 10 00       	mov    dx,WORD PTR es:0x10
   229a0:	26 a3 10 00          	mov    es:0x10,ax
   229a4:	26 8b 0e 08 00       	mov    cx,WORD PTR es:0x8
   229a9:	41                   	inc    cx
   229aa:	d1 e9                	shr    cx,1
   229ac:	33 f6                	xor    si,si
   229ae:	fc                   	cld
   229af:	3b c2                	cmp    ax,dx
   229b1:	72 06                	jb     0x229b9
   229b3:	8b f1                	mov    si,cx
   229b5:	4e                   	dec    si
   229b6:	d1 e6                	shl    si,1
   229b8:	fd                   	std
   229b9:	8b fe                	mov    di,si
   229bb:	1e                   	push   ds
   229bc:	06                   	push   es
   229bd:	8e da                	mov    ds,dx
   229bf:	8e c0                	mov    es,ax
   229c1:	f3 a5                	rep movs WORD PTR es:[di],WORD PTR ds:[si]
   229c3:	fc                   	cld
   229c4:	48                   	dec    ax
   229c5:	8e d8                	mov    ds,ax
   229c7:	07                   	pop    es
   229c8:	8c 06 0e 00          	mov    WORD PTR ds:0xe,es
   229cc:	40                   	inc    ax
   229cd:	1f                   	pop    ds
   229ce:	26 80 3e 20 00 cd    	cmp    BYTE PTR es:0x20,0xcd
   229d4:	74 12                	je     0x229e8
   229d6:	e8 3a 00             	call   0x22a13
   229d9:	26 8b 0e 0c 00       	mov    cx,WORD PTR es:0xc
   229de:	bf 23 00             	mov    di,0x23
   229e1:	fc                   	cld
   229e2:	ab                   	stos   WORD PTR es:[di],ax
   229e3:	83 c7 03             	add    di,0x3
   229e6:	e2 fa                	loop   0x229e2
   229e8:	c3                   	ret
   229e9:	e8 69 00             	call   0x22a55
   229ec:	01 06 20 01          	add    WORD PTR ds:0x120,ax
   229f0:	1e                   	push   ds
   229f1:	b8 37 16             	mov    ax,0x1637
   229f4:	8e d8                	mov    ds,ax
   229f6:	a1 1c 00             	mov    ax,ds:0x1c
   229f9:	0b c0                	or     ax,ax
   229fb:	75 f7                	jne    0x229f4
   229fd:	8c 06 1c 00          	mov    WORD PTR ds:0x1c,es
   22a01:	26 a3 1c 00          	mov    es:0x1c,ax
   22a05:	1f                   	pop    ds
   22a06:	c3                   	ret
   22a07:	e8 09 00             	call   0x22a13
   22a0a:	0b db                	or     bx,bx
   22a0c:	74 04                	je     0x22a12
   22a0e:	36 87 4f 02          	xchg   WORD PTR ss:[bx+0x2],cx
   22a12:	c3                   	ret
   22a13:	33 db                	xor    bx,bx
   22a15:	51                   	push   cx
   22a16:	55                   	push   bp
   22a17:	eb 04                	jmp    0x22a1d
   22a19:	d1 e1                	shl    cx,1
   22a1b:	8b e9                	mov    bp,cx
   22a1d:	8b 4e 00             	mov    cx,WORD PTR [bp+0x0]
   22a20:	d1 e9                	shr    cx,1
   22a22:	74 12                	je     0x22a36
   22a24:	72 f3                	jb     0x22a19
   22a26:	3b 56 04             	cmp    dx,WORD PTR [bp+0x4]
   22a29:	75 ee                	jne    0x22a19
   22a2b:	89 46 04             	mov    WORD PTR [bp+0x4],ax
   22a2e:	0b db                	or     bx,bx
   22a30:	75 e7                	jne    0x22a19
   22a32:	8b dd                	mov    bx,bp
   22a34:	eb e3                	jmp    0x22a19
   22a36:	5d                   	pop    bp
   22a37:	59                   	pop    cx
   22a38:	c3                   	ret
   22a39:	a1 2c 01             	mov    ax,ds:0x12c
   22a3c:	0b c0                	or     ax,ax
   22a3e:	74 0c                	je     0x22a4c
   22a40:	8e c0                	mov    es,ax
   22a42:	26 a1 10 00          	mov    ax,es:0x10
   22a46:	2b 06 20 01          	sub    ax,WORD PTR ds:0x120
   22a4a:	73 08                	jae    0x22a54
   22a4c:	a1 26 01             	mov    ax,ds:0x126
