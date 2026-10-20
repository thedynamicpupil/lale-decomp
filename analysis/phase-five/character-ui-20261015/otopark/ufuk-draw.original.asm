
analysis/phase-five/character-ui-20261015/otopark/ufuk-draw.original.bin:     file format binary


Disassembly of section .data:

0002c3a8 <.data>:
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
