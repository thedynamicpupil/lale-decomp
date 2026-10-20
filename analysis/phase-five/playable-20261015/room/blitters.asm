
analysis/phase-five/playable-20261015/room/blitters.bin:     file format binary


Disassembly of section .data:

0000d490 <.data>:
    d490:	c8 1c 00 00          	enter  0x1c,0x0
    d494:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    d499:	8a 46 12             	mov    al,BYTE PTR [bp+0x12]
    d49c:	b4 00                	mov    ah,0x0
    d49e:	c1 e0 03             	shl    ax,0x3
    d4a1:	ba e0 16             	mov    dx,0x16e0
    d4a4:	8b d8                	mov    bx,ax
    d4a6:	8e c2                	mov    es,dx
    d4a8:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    d4ad:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
    d4b0:	8a 46 14             	mov    al,BYTE PTR [bp+0x14]
    d4b3:	b4 00                	mov    ah,0x0
    d4b5:	c1 e0 03             	shl    ax,0x3
    d4b8:	ba e0 16             	mov    dx,0x16e0
    d4bb:	8b d8                	mov    bx,ax
    d4bd:	8e c2                	mov    es,dx
    d4bf:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    d4c4:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
    d4c7:	8a 46 12             	mov    al,BYTE PTR [bp+0x12]
    d4ca:	b4 00                	mov    ah,0x0
    d4cc:	c1 e0 03             	shl    ax,0x3
    d4cf:	ba e0 16             	mov    dx,0x16e0
    d4d2:	8b d8                	mov    bx,ax
    d4d4:	8e c2                	mov    es,dx
    d4d6:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    d4db:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    d4e0:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
    d4e3:	89 56 e8             	mov    WORD PTR [bp-0x18],dx
    d4e6:	8a 46 14             	mov    al,BYTE PTR [bp+0x14]
    d4e9:	b4 00                	mov    ah,0x0
    d4eb:	c1 e0 03             	shl    ax,0x3
    d4ee:	ba e0 16             	mov    dx,0x16e0
    d4f1:	8b d8                	mov    bx,ax
    d4f3:	8e c2                	mov    es,dx
    d4f5:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    d4fa:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    d4ff:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
    d502:	89 56 e4             	mov    WORD PTR [bp-0x1c],dx
    d505:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    d509:	75 03                	jne    0xd50e
    d50b:	e9 65 01             	jmp    0xd673
    d50e:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    d512:	75 03                	jne    0xd517
    d514:	e9 5c 01             	jmp    0xd673
    d517:	1e                   	push   ds
    d518:	68 92 71             	push   0x7192
    d51b:	68 be 00             	push   0xbe
    d51e:	68 e0 16             	push   0x16e0
    d521:	68 26 de             	push   0xde26
    d524:	9a 81 0a d4 09       	call   0x9d4:0xa81
    d529:	83 c4 0a             	add    sp,0xa
    d52c:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    d531:	c7 46 f2 ff ff       	mov    WORD PTR [bp-0xe],0xffff
    d536:	c7 46 f0 ff ff       	mov    WORD PTR [bp-0x10],0xffff
    d53b:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
    d53e:	33 c9                	xor    cx,cx
    d540:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    d543:	33 d2                	xor    dx,dx
    d545:	9a 42 12 00 00       	call   0x0:0x1242
    d54a:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
    d54d:	33 c9                	xor    cx,cx
    d54f:	03 d8                	add    bx,ax
    d551:	13 ca                	adc    cx,dx
    d553:	51                   	push   cx
    d554:	53                   	push   bx
    d555:	16                   	push   ss
    d556:	8d 46 f6             	lea    ax,[bp-0xa]
    d559:	50                   	push   ax
    d55a:	16                   	push   ss
    d55b:	8d 46 f2             	lea    ax,[bp-0xe]
    d55e:	50                   	push   ax
    d55f:	16                   	push   ss
    d560:	8d 46 fc             	lea    ax,[bp-0x4]
    d563:	50                   	push   ax
    d564:	16                   	push   ss
    d565:	8d 46 e8             	lea    ax,[bp-0x18]
    d568:	50                   	push   ax
    d569:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    d56e:	83 c4 14             	add    sp,0x14
    d571:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
    d574:	33 c9                	xor    cx,cx
    d576:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
    d579:	33 d2                	xor    dx,dx
    d57b:	9a 42 12 00 00       	call   0x0:0x1242
    d580:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
    d583:	33 c9                	xor    cx,cx
    d585:	03 d8                	add    bx,ax
    d587:	13 ca                	adc    cx,dx
    d589:	51                   	push   cx
    d58a:	53                   	push   bx
    d58b:	16                   	push   ss
    d58c:	8d 46 f6             	lea    ax,[bp-0xa]
    d58f:	50                   	push   ax
    d590:	16                   	push   ss
    d591:	8d 46 f0             	lea    ax,[bp-0x10]
    d594:	50                   	push   ax
    d595:	16                   	push   ss
    d596:	8d 46 f8             	lea    ax,[bp-0x8]
    d599:	50                   	push   ax
    d59a:	16                   	push   ss
    d59b:	8d 46 e4             	lea    ax,[bp-0x1c]
    d59e:	50                   	push   ax
    d59f:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    d5a4:	83 c4 14             	add    sp,0x14
    d5a7:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d5aa:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d5ad:	33 d2                	xor    dx,dx
    d5af:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d5b2:	50                   	push   ax
    d5b3:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d5b6:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d5b9:	33 d2                	xor    dx,dx
    d5bb:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d5be:	5a                   	pop    dx
    d5bf:	3b d0                	cmp    dx,ax
    d5c1:	73 0d                	jae    0xd5d0
    d5c3:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d5c6:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d5c9:	33 d2                	xor    dx,dx
    d5cb:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d5ce:	eb 0b                	jmp    0xd5db
    d5d0:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d5d3:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d5d6:	33 d2                	xor    dx,dx
    d5d8:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d5db:	40                   	inc    ax
    d5dc:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    d5df:	73 37                	jae    0xd618
    d5e1:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d5e4:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d5e7:	33 d2                	xor    dx,dx
    d5e9:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d5ec:	50                   	push   ax
    d5ed:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d5f0:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d5f3:	33 d2                	xor    dx,dx
    d5f5:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d5f8:	5a                   	pop    dx
    d5f9:	3b d0                	cmp    dx,ax
    d5fb:	73 0d                	jae    0xd60a
    d5fd:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d600:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d603:	33 d2                	xor    dx,dx
    d605:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d608:	eb 0b                	jmp    0xd615
    d60a:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d60d:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d610:	33 d2                	xor    dx,dx
    d612:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d615:	40                   	inc    ax
    d616:	eb 03                	jmp    0xd61b
    d618:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    d61b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
    d61e:	68 fe 00             	push   0xfe
    d621:	ff 76 ec             	push   WORD PTR [bp-0x14]
    d624:	6a 00                	push   0x0
    d626:	6a 00                	push   0x0
    d628:	ff 76 fa             	push   WORD PTR [bp-0x6]
    d62b:	ff 76 f8             	push   WORD PTR [bp-0x8]
    d62e:	ff 76 ee             	push   WORD PTR [bp-0x12]
    d631:	ff 76 f4             	push   WORD PTR [bp-0xc]
    d634:	ff 76 0a             	push   WORD PTR [bp+0xa]
    d637:	6a 00                	push   0x0
    d639:	6a 00                	push   0x0
    d63b:	ff 76 fe             	push   WORD PTR [bp-0x2]
    d63e:	ff 76 fc             	push   WORD PTR [bp-0x4]
    d641:	ff 5e 16             	call   DWORD PTR [bp+0x16]
    d644:	83 c4 1a             	add    sp,0x1a
    d647:	0b c0                	or     ax,ax
    d649:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    d64c:	01 46 08             	add    WORD PTR [bp+0x8],ax
    d64f:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    d652:	01 46 10             	add    WORD PTR [bp+0x10],ax
    d655:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    d658:	29 46 0c             	sub    WORD PTR [bp+0xc],ax
    d65b:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    d65e:	0b c0                	or     ax,ax
    d660:	76 03                	jbe    0xd665
    d662:	e9 c7 fe             	jmp    0xd52c
    d665:	68 e0 16             	push   0x16e0
    d668:	68 26 de             	push   0xde26
    d66b:	9a 22 0b d4 09       	call   0x9d4:0xb22
    d670:	83 c4 04             	add    sp,0x4
    d673:	c9                   	leave
    d674:	cb                   	retf
    d675:	c8 18 00 00          	enter  0x18,0x0
    d679:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
    d67c:	b4 00                	mov    ah,0x0
    d67e:	c1 e0 03             	shl    ax,0x3
    d681:	ba e0 16             	mov    dx,0x16e0
    d684:	8b d8                	mov    bx,ax
    d686:	8e c2                	mov    es,dx
    d688:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    d68d:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    d692:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    d695:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    d698:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
    d69b:	b4 00                	mov    ah,0x0
    d69d:	c1 e0 03             	shl    ax,0x3
    d6a0:	ba e0 16             	mov    dx,0x16e0
    d6a3:	8b d8                	mov    bx,ax
    d6a5:	8e c2                	mov    es,dx
    d6a7:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    d6ac:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    d6b1:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    d6b4:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
    d6b7:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
    d6bc:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
    d6c1:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
    d6c6:	1e                   	push   ds
    d6c7:	68 a7 71             	push   0x71a7
    d6ca:	68 e3 00             	push   0xe3
    d6cd:	68 e0 16             	push   0x16e0
    d6d0:	68 26 de             	push   0xde26
    d6d3:	9a 81 0a d4 09       	call   0x9d4:0xa81
    d6d8:	83 c4 0a             	add    sp,0xa
    d6db:	c7 46 ec ff ff       	mov    WORD PTR [bp-0x14],0xffff
    d6e0:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
    d6e5:	ff 76 ea             	push   WORD PTR [bp-0x16]
    d6e8:	ff 76 e8             	push   WORD PTR [bp-0x18]
    d6eb:	16                   	push   ss
    d6ec:	8d 46 ee             	lea    ax,[bp-0x12]
    d6ef:	50                   	push   ax
    d6f0:	16                   	push   ss
    d6f1:	8d 46 ec             	lea    ax,[bp-0x14]
    d6f4:	50                   	push   ax
    d6f5:	16                   	push   ss
    d6f6:	8d 46 f4             	lea    ax,[bp-0xc]
    d6f9:	50                   	push   ax
    d6fa:	16                   	push   ss
    d6fb:	8d 46 fc             	lea    ax,[bp-0x4]
    d6fe:	50                   	push   ax
    d6ff:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    d704:	83 c4 14             	add    sp,0x14
    d707:	ff 76 ea             	push   WORD PTR [bp-0x16]
    d70a:	ff 76 e8             	push   WORD PTR [bp-0x18]
    d70d:	16                   	push   ss
    d70e:	8d 46 ee             	lea    ax,[bp-0x12]
    d711:	50                   	push   ax
    d712:	16                   	push   ss
    d713:	8d 46 ec             	lea    ax,[bp-0x14]
    d716:	50                   	push   ax
    d717:	16                   	push   ss
    d718:	8d 46 f0             	lea    ax,[bp-0x10]
    d71b:	50                   	push   ax
    d71c:	16                   	push   ss
    d71d:	8d 46 f8             	lea    ax,[bp-0x8]
    d720:	50                   	push   ax
    d721:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    d726:	83 c4 14             	add    sp,0x14
    d729:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
    d72c:	b4 00                	mov    ah,0x0
    d72e:	50                   	push   ax
    d72f:	ff 76 ec             	push   WORD PTR [bp-0x14]
    d732:	ff 76 f2             	push   WORD PTR [bp-0xe]
    d735:	ff 76 f0             	push   WORD PTR [bp-0x10]
    d738:	ff 76 f6             	push   WORD PTR [bp-0xa]
    d73b:	ff 76 f4             	push   WORD PTR [bp-0xc]
    d73e:	ff 5e 0e             	call   DWORD PTR [bp+0xe]
    d741:	83 c4 0c             	add    sp,0xc
    d744:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
    d747:	01 46 e8             	add    WORD PTR [bp-0x18],ax
    d74a:	83 56 ea 00          	adc    WORD PTR [bp-0x16],0x0
    d74e:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
    d751:	29 46 0a             	sub    WORD PTR [bp+0xa],ax
    d754:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
    d757:	0b c0                	or     ax,ax
    d759:	77 80                	ja     0xd6db
    d75b:	68 e0 16             	push   0x16e0
    d75e:	68 26 de             	push   0xde26
    d761:	9a 22 0b d4 09       	call   0x9d4:0xb22
    d766:	83 c4 04             	add    sp,0x4
    d769:	c9                   	leave
    d76a:	cb                   	retf
    d76b:	c8 1e 00 00          	enter  0x1e,0x0
    d76f:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    d774:	8a 46 12             	mov    al,BYTE PTR [bp+0x12]
    d777:	b4 00                	mov    ah,0x0
    d779:	c1 e0 03             	shl    ax,0x3
    d77c:	ba e0 16             	mov    dx,0x16e0
    d77f:	8b d8                	mov    bx,ax
    d781:	8e c2                	mov    es,dx
    d783:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    d788:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
    d78b:	8a 46 14             	mov    al,BYTE PTR [bp+0x14]
    d78e:	b4 00                	mov    ah,0x0
    d790:	c1 e0 03             	shl    ax,0x3
    d793:	ba e0 16             	mov    dx,0x16e0
    d796:	8b d8                	mov    bx,ax
    d798:	8e c2                	mov    es,dx
    d79a:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    d79f:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
    d7a2:	8a 46 12             	mov    al,BYTE PTR [bp+0x12]
    d7a5:	b4 00                	mov    ah,0x0
    d7a7:	c1 e0 03             	shl    ax,0x3
    d7aa:	ba e0 16             	mov    dx,0x16e0
    d7ad:	8b d8                	mov    bx,ax
    d7af:	8e c2                	mov    es,dx
    d7b1:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    d7b6:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    d7bb:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
    d7be:	89 56 e6             	mov    WORD PTR [bp-0x1a],dx
    d7c1:	8a 46 14             	mov    al,BYTE PTR [bp+0x14]
    d7c4:	b4 00                	mov    ah,0x0
    d7c6:	c1 e0 03             	shl    ax,0x3
    d7c9:	ba e0 16             	mov    dx,0x16e0
    d7cc:	8b d8                	mov    bx,ax
    d7ce:	8e c2                	mov    es,dx
    d7d0:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    d7d5:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    d7da:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
    d7dd:	89 56 e2             	mov    WORD PTR [bp-0x1e],dx
    d7e0:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    d7e4:	75 03                	jne    0xd7e9
    d7e6:	e9 7d 01             	jmp    0xd966
    d7e9:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    d7ed:	75 03                	jne    0xd7f2
    d7ef:	e9 74 01             	jmp    0xd966
    d7f2:	1e                   	push   ds
    d7f3:	68 bc 71             	push   0x71bc
    d7f6:	68 0e 02             	push   0x20e
    d7f9:	68 e0 16             	push   0x16e0
    d7fc:	68 26 de             	push   0xde26
    d7ff:	9a 81 0a d4 09       	call   0x9d4:0xa81
    d804:	83 c4 0a             	add    sp,0xa
    d807:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    d80c:	c7 46 f2 ff ff       	mov    WORD PTR [bp-0xe],0xffff
    d811:	c7 46 f0 ff ff       	mov    WORD PTR [bp-0x10],0xffff
    d816:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
    d819:	33 c9                	xor    cx,cx
    d81b:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    d81e:	33 d2                	xor    dx,dx
    d820:	9a 42 12 00 00       	call   0x0:0x1242
    d825:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
    d828:	33 c9                	xor    cx,cx
    d82a:	03 d8                	add    bx,ax
    d82c:	13 ca                	adc    cx,dx
    d82e:	51                   	push   cx
    d82f:	53                   	push   bx
    d830:	16                   	push   ss
    d831:	8d 46 f6             	lea    ax,[bp-0xa]
    d834:	50                   	push   ax
    d835:	16                   	push   ss
    d836:	8d 46 f2             	lea    ax,[bp-0xe]
    d839:	50                   	push   ax
    d83a:	16                   	push   ss
    d83b:	8d 46 fc             	lea    ax,[bp-0x4]
    d83e:	50                   	push   ax
    d83f:	16                   	push   ss
    d840:	8d 46 e6             	lea    ax,[bp-0x1a]
    d843:	50                   	push   ax
    d844:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    d849:	83 c4 14             	add    sp,0x14
    d84c:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
    d84f:	33 c9                	xor    cx,cx
    d851:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
    d854:	33 d2                	xor    dx,dx
    d856:	9a 42 12 00 00       	call   0x0:0x1242
    d85b:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
    d85e:	33 c9                	xor    cx,cx
    d860:	03 d8                	add    bx,ax
    d862:	13 ca                	adc    cx,dx
    d864:	51                   	push   cx
    d865:	53                   	push   bx
    d866:	16                   	push   ss
    d867:	8d 46 f6             	lea    ax,[bp-0xa]
    d86a:	50                   	push   ax
    d86b:	16                   	push   ss
    d86c:	8d 46 f0             	lea    ax,[bp-0x10]
    d86f:	50                   	push   ax
    d870:	16                   	push   ss
    d871:	8d 46 f8             	lea    ax,[bp-0x8]
    d874:	50                   	push   ax
    d875:	16                   	push   ss
    d876:	8d 46 e2             	lea    ax,[bp-0x1e]
    d879:	50                   	push   ax
    d87a:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    d87f:	83 c4 14             	add    sp,0x14
    d882:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d885:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d888:	33 d2                	xor    dx,dx
    d88a:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d88d:	50                   	push   ax
    d88e:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d891:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d894:	33 d2                	xor    dx,dx
    d896:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d899:	5a                   	pop    dx
    d89a:	3b d0                	cmp    dx,ax
    d89c:	73 0d                	jae    0xd8ab
    d89e:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d8a1:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d8a4:	33 d2                	xor    dx,dx
    d8a6:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d8a9:	eb 0b                	jmp    0xd8b6
    d8ab:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d8ae:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d8b1:	33 d2                	xor    dx,dx
    d8b3:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d8b6:	40                   	inc    ax
    d8b7:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    d8ba:	73 37                	jae    0xd8f3
    d8bc:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d8bf:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d8c2:	33 d2                	xor    dx,dx
    d8c4:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d8c7:	50                   	push   ax
    d8c8:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d8cb:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d8ce:	33 d2                	xor    dx,dx
    d8d0:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d8d3:	5a                   	pop    dx
    d8d4:	3b d0                	cmp    dx,ax
    d8d6:	73 0d                	jae    0xd8e5
    d8d8:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    d8db:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d8de:	33 d2                	xor    dx,dx
    d8e0:	f7 76 ee             	div    WORD PTR [bp-0x12]
    d8e3:	eb 0b                	jmp    0xd8f0
    d8e5:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    d8e8:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    d8eb:	33 d2                	xor    dx,dx
    d8ed:	f7 76 ec             	div    WORD PTR [bp-0x14]
    d8f0:	40                   	inc    ax
    d8f1:	eb 03                	jmp    0xd8f6
    d8f3:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    d8f6:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
    d8f9:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
    d8fe:	eb 34                	jmp    0xd934
    d900:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    d903:	50                   	push   ax
    d904:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    d907:	50                   	push   ax
    d908:	ff 76 0a             	push   WORD PTR [bp+0xa]
    d90b:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
    d90e:	f7 6e ec             	imul   WORD PTR [bp-0x14]
    d911:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
    d914:	03 d0                	add    dx,ax
    d916:	ff 76 fa             	push   WORD PTR [bp-0x6]
    d919:	52                   	push   dx
    d91a:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
    d91d:	f7 6e ee             	imul   WORD PTR [bp-0x12]
    d920:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
    d923:	03 d0                	add    dx,ax
    d925:	ff 76 fe             	push   WORD PTR [bp-0x2]
    d928:	52                   	push   dx
    d929:	9a 22 00 d4 09       	call   0x9d4:0x22
    d92e:	83 c4 0e             	add    sp,0xe
    d931:	ff 46 ea             	inc    WORD PTR [bp-0x16]
    d934:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
    d937:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
    d93a:	72 c4                	jb     0xd900
    d93c:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    d93f:	01 46 08             	add    WORD PTR [bp+0x8],ax
    d942:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    d945:	01 46 10             	add    WORD PTR [bp+0x10],ax
    d948:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    d94b:	29 46 0c             	sub    WORD PTR [bp+0xc],ax
    d94e:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    d951:	0b c0                	or     ax,ax
    d953:	76 03                	jbe    0xd958
    d955:	e9 af fe             	jmp    0xd807
    d958:	68 e0 16             	push   0x16e0
    d95b:	68 26 de             	push   0xde26
    d95e:	9a 22 0b d4 09       	call   0x9d4:0xb22
    d963:	83 c4 04             	add    sp,0x4
    d966:	c9                   	leave
    d967:	cb                   	retf
    d968:	c8 16 00 00          	enter  0x16,0x0
    d96c:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
    d971:	c7 46 f0 00 c0       	mov    WORD PTR [bp-0x10],0xc000
    d976:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
    d97b:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    d97f:	75 03                	jne    0xd984
    d981:	e9 73 02             	jmp    0xdbf7
    d984:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    d988:	75 03                	jne    0xd98d
    d98a:	e9 6a 02             	jmp    0xdbf7
    d98d:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    d990:	b4 00                	mov    ah,0x0
    d992:	c1 e0 03             	shl    ax,0x3
    d995:	ba e0 16             	mov    dx,0x16e0
    d998:	8b d8                	mov    bx,ax
    d99a:	8e c2                	mov    es,dx
    d99c:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
    d9a1:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
    d9a6:	75 15                	jne    0xd9bd
    d9a8:	6a 0c                	push   0xc
    d9aa:	6a 00                	push   0x0
    d9ac:	6a 00                	push   0x0
    d9ae:	68 ae 02             	push   0x2ae
    d9b1:	1e                   	push   ds
    d9b2:	68 d1 71             	push   0x71d1
    d9b5:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    d9ba:	83 c4 0c             	add    sp,0xc
    d9bd:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    d9c0:	b4 00                	mov    ah,0x0
    d9c2:	c1 e0 03             	shl    ax,0x3
    d9c5:	ba e0 16             	mov    dx,0x16e0
    d9c8:	8b d8                	mov    bx,ax
    d9ca:	8e c2                	mov    es,dx
    d9cc:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
    d9d1:	26 80 7f 08 01       	cmp    BYTE PTR es:[bx+0x8],0x1
    d9d6:	74 03                	je     0xd9db
    d9d8:	e9 75 01             	jmp    0xdb50
    d9db:	1e                   	push   ds
    d9dc:	68 e6 71             	push   0x71e6
    d9df:	68 be 02             	push   0x2be
    d9e2:	68 e0 16             	push   0x16e0
    d9e5:	68 26 de             	push   0xde26
    d9e8:	9a 81 0a d4 09       	call   0x9d4:0xa81
    d9ed:	83 c4 0a             	add    sp,0xa
    d9f0:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    d9f3:	b4 00                	mov    ah,0x0
    d9f5:	c1 e0 03             	shl    ax,0x3
    d9f8:	ba e0 16             	mov    dx,0x16e0
    d9fb:	8b d8                	mov    bx,ax
    d9fd:	8e c2                	mov    es,dx
    d9ff:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    da04:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    da07:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    da0a:	b4 00                	mov    ah,0x0
    da0c:	c1 e0 03             	shl    ax,0x3
    da0f:	ba e0 16             	mov    dx,0x16e0
    da12:	8b d8                	mov    bx,ax
    da14:	8e c2                	mov    es,dx
    da16:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
    da1b:	26 ff 37             	push   WORD PTR es:[bx]
    da1e:	6a 00                	push   0x0
    da20:	6a 00                	push   0x0
    da22:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    da25:	05 ff 3f             	add    ax,0x3fff
    da28:	50                   	push   ax
    da29:	9a 88 06 54 11       	call   0x1154:0x688
    da2e:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    da31:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
    da34:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
    da37:	25 ff 3f             	and    ax,0x3fff
    da3a:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
    da3d:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
    da40:	f7 6e fc             	imul   WORD PTR [bp-0x4]
    da43:	03 46 06             	add    ax,WORD PTR [bp+0x6]
    da46:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    da4b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
    da4e:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
    da53:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
    da58:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
    da5d:	e9 d4 00             	jmp    0xdb34
    da60:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
    da63:	99                   	cwd
    da64:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
    da67:	8b 4e f4             	mov    cx,WORD PTR [bp-0xc]
    da6a:	2b 4e ec             	sub    cx,WORD PTR [bp-0x14]
    da6d:	1b 5e ee             	sbb    bx,WORD PTR [bp-0x12]
    da70:	03 c8                	add    cx,ax
    da72:	13 da                	adc    bx,dx
    da74:	3b 5e f2             	cmp    bx,WORD PTR [bp-0xe]
    da77:	72 4b                	jb     0xdac4
    da79:	77 05                	ja     0xda80
    da7b:	3b 4e f0             	cmp    cx,WORD PTR [bp-0x10]
    da7e:	76 44                	jbe    0xdac4
    da80:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    da83:	b4 00                	mov    ah,0x0
    da85:	c1 e0 03             	shl    ax,0x3
    da88:	ba e0 16             	mov    dx,0x16e0
    da8b:	8b d8                	mov    bx,ax
    da8d:	8e c2                	mov    es,dx
    da8f:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
    da94:	26 ff 37             	push   WORD PTR es:[bx]
    da97:	ff 76 f6             	push   WORD PTR [bp-0xa]
    da9a:	ff 76 f4             	push   WORD PTR [bp-0xc]
    da9d:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    daa0:	05 ff 3f             	add    ax,0x3fff
    daa3:	50                   	push   ax
    daa4:	9a 88 06 54 11       	call   0x1154:0x688
    daa9:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    daac:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
    daaf:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
    dab2:	25 ff 3f             	and    ax,0x3fff
    dab5:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
    dab8:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    dabb:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
    dabe:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
    dac1:	89 56 ec             	mov    WORD PTR [bp-0x14],dx
    dac4:	ff 76 0a             	push   WORD PTR [bp+0xa]
    dac7:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    daca:	b4 00                	mov    ah,0x0
    dacc:	33 d2                	xor    dx,dx
    dace:	b1 18                	mov    cl,0x18
    dad0:	9a 8d 13 00 00       	call   0x0:0x138d
    dad5:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    dad8:	b4 00                	mov    ah,0x0
    dada:	52                   	push   dx
    dadb:	50                   	push   ax
    dadc:	5a                   	pop    dx
    dadd:	5b                   	pop    bx
    dade:	0b da                	or     bx,dx
    dae0:	8a 56 10             	mov    dl,BYTE PTR [bp+0x10]
    dae3:	b6 00                	mov    dh,0x0
    dae5:	50                   	push   ax
    dae6:	53                   	push   bx
    dae7:	52                   	push   dx
    dae8:	33 d2                	xor    dx,dx
    daea:	b1 08                	mov    cl,0x8
    daec:	58                   	pop    ax
    daed:	9a 8d 13 00 00       	call   0x0:0x138d
    daf2:	5b                   	pop    bx
    daf3:	59                   	pop    cx
    daf4:	0b c8                	or     cx,ax
    daf6:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    daf9:	b4 00                	mov    ah,0x0
    dafb:	0b c8                	or     cx,ax
    dafd:	0b da                	or     bx,dx
    daff:	53                   	push   bx
    db00:	51                   	push   cx
    db01:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
    db04:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
    db07:	8b 4e f6             	mov    cx,WORD PTR [bp-0xa]
    db0a:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
    db0d:	9a 77 14 00 00       	call   0x0:0x1477
    db12:	8b 4e ee             	mov    cx,WORD PTR [bp-0x12]
    db15:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
    db18:	9a a6 14 00 00       	call   0x0:0x14a6
    db1d:	52                   	push   dx
    db1e:	50                   	push   ax
    db1f:	9a 8f 02 99 25       	call   0x2599:0x28f
    db24:	83 c4 0a             	add    sp,0xa
    db27:	ff 46 fe             	inc    WORD PTR [bp-0x2]
    db2a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    db2d:	01 46 f4             	add    WORD PTR [bp-0xc],ax
    db30:	83 56 f6 00          	adc    WORD PTR [bp-0xa],0x0
    db34:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    db37:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    db3a:	73 03                	jae    0xdb3f
    db3c:	e9 21 ff             	jmp    0xda60
    db3f:	68 e0 16             	push   0x16e0
    db42:	68 26 de             	push   0xde26
    db45:	9a 22 0b d4 09       	call   0x9d4:0xb22
    db4a:	83 c4 04             	add    sp,0x4
    db4d:	e9 a7 00             	jmp    0xdbf7
    db50:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
    db55:	e9 94 00             	jmp    0xdbec
    db58:	ff 76 0a             	push   WORD PTR [bp+0xa]
    db5b:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    db5e:	b4 00                	mov    ah,0x0
    db60:	33 d2                	xor    dx,dx
    db62:	b1 18                	mov    cl,0x18
    db64:	9a 8d 13 00 00       	call   0x0:0x138d
    db69:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    db6c:	b4 00                	mov    ah,0x0
    db6e:	52                   	push   dx
    db6f:	50                   	push   ax
    db70:	5a                   	pop    dx
    db71:	5b                   	pop    bx
    db72:	0b da                	or     bx,dx
    db74:	8a 56 10             	mov    dl,BYTE PTR [bp+0x10]
    db77:	b6 00                	mov    dh,0x0
    db79:	50                   	push   ax
    db7a:	53                   	push   bx
    db7b:	52                   	push   dx
    db7c:	33 d2                	xor    dx,dx
    db7e:	b1 08                	mov    cl,0x8
    db80:	58                   	pop    ax
    db81:	9a 8d 13 00 00       	call   0x0:0x138d
    db86:	5b                   	pop    bx
    db87:	59                   	pop    cx
    db88:	0b c8                	or     cx,ax
    db8a:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    db8d:	b4 00                	mov    ah,0x0
    db8f:	0b c8                	or     cx,ax
    db91:	0b da                	or     bx,dx
    db93:	53                   	push   bx
    db94:	51                   	push   cx
    db95:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    db98:	b4 00                	mov    ah,0x0
    db9a:	c1 e0 03             	shl    ax,0x3
    db9d:	ba e0 16             	mov    dx,0x16e0
    dba0:	8b d8                	mov    bx,ax
    dba2:	8e c2                	mov    es,dx
    dba4:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
    dba9:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
    dbad:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    dbb0:	8a 5e 0e             	mov    bl,BYTE PTR [bp+0xe]
    dbb3:	b7 00                	mov    bh,0x0
    dbb5:	c1 e3 03             	shl    bx,0x3
    dbb8:	b9 e0 16             	mov    cx,0x16e0
    dbbb:	52                   	push   dx
    dbbc:	50                   	push   ax
    dbbd:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
    dbc0:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
    dbc3:	8e c1                	mov    es,cx
    dbc5:	26 f7 af 9b e2       	imul   WORD PTR es:[bx-0x1d65]
    dbca:	33 c9                	xor    cx,cx
    dbcc:	8b d8                	mov    bx,ax
    dbce:	58                   	pop    ax
    dbcf:	5a                   	pop    dx
    dbd0:	9a 77 14 00 00       	call   0x0:0x1477
    dbd5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
    dbd8:	33 c9                	xor    cx,cx
    dbda:	9a 77 14 00 00       	call   0x0:0x1477
    dbdf:	52                   	push   dx
    dbe0:	50                   	push   ax
    dbe1:	9a 8f 02 99 25       	call   0x2599:0x28f
    dbe6:	83 c4 0a             	add    sp,0xa
    dbe9:	ff 46 fe             	inc    WORD PTR [bp-0x2]
    dbec:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    dbef:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    dbf2:	73 03                	jae    0xdbf7
    dbf4:	e9 61 ff             	jmp    0xdb58
    dbf7:	c9                   	leave
    dbf8:	cb                   	retf
    dbf9:	55                   	push   bp
    dbfa:	8b ec                	mov    bp,sp
    dbfc:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
    dbff:	c1 e3 03             	shl    bx,0x3
    dc02:	b8 e0 16             	mov    ax,0x16e0
    dc05:	8e c0                	mov    es,ax
    dc07:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
    dc0c:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
    dc11:	75 15                	jne    0xdc28
    dc13:	6a 0d                	push   0xd
    dc15:	6a 00                	push   0x0
    dc17:	6a 00                	push   0x0
    dc19:	68 da 02             	push   0x2da
    dc1c:	1e                   	push   ds
    dc1d:	68 fb 71             	push   0x71fb
    dc20:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    dc25:	83 c4 0c             	add    sp,0xc
    dc28:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    dc2b:	50                   	push   ax
    dc2c:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    dc2f:	50                   	push   ax
    dc30:	ff 76 08             	push   WORD PTR [bp+0x8]
    dc33:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
    dc36:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
    dc39:	50                   	push   ax
    dc3a:	ff 76 08             	push   WORD PTR [bp+0x8]
    dc3d:	ff 76 06             	push   WORD PTR [bp+0x6]
    dc40:	90                   	nop
    dc41:	0e                   	push   cs
    dc42:	e8 10 08             	call   0xe455
    dc45:	83 c4 0c             	add    sp,0xc
    dc48:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    dc4b:	50                   	push   ax
    dc4c:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    dc4f:	50                   	push   ax
    dc50:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
    dc53:	03 46 0c             	add    ax,WORD PTR [bp+0xc]
    dc56:	50                   	push   ax
    dc57:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
    dc5a:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
    dc5d:	50                   	push   ax
    dc5e:	ff 76 08             	push   WORD PTR [bp+0x8]
    dc61:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
    dc64:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
    dc67:	50                   	push   ax
    dc68:	90                   	nop
    dc69:	0e                   	push   cs
    dc6a:	e8 e8 07             	call   0xe455
    dc6d:	83 c4 0c             	add    sp,0xc
    dc70:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    dc73:	50                   	push   ax
    dc74:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    dc77:	50                   	push   ax
    dc78:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
    dc7b:	03 46 0c             	add    ax,WORD PTR [bp+0xc]
    dc7e:	50                   	push   ax
    dc7f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
    dc82:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
    dc85:	50                   	push   ax
    dc86:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
    dc89:	03 46 0c             	add    ax,WORD PTR [bp+0xc]
    dc8c:	50                   	push   ax
    dc8d:	ff 76 06             	push   WORD PTR [bp+0x6]
    dc90:	90                   	nop
    dc91:	0e                   	push   cs
    dc92:	e8 c0 07             	call   0xe455
    dc95:	83 c4 0c             	add    sp,0xc
    dc98:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
    dc9b:	50                   	push   ax
    dc9c:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    dc9f:	50                   	push   ax
    dca0:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
    dca3:	03 46 0c             	add    ax,WORD PTR [bp+0xc]
    dca6:	50                   	push   ax
    dca7:	ff 76 06             	push   WORD PTR [bp+0x6]
    dcaa:	ff 76 08             	push   WORD PTR [bp+0x8]
    dcad:	ff 76 06             	push   WORD PTR [bp+0x6]
    dcb0:	90                   	nop
    dcb1:	0e                   	push   cs
    dcb2:	e8 a0 07             	call   0xe455
    dcb5:	83 c4 0c             	add    sp,0xc
    dcb8:	5d                   	pop    bp
    dcb9:	cb                   	retf
    dcba:	c8 22 00 00          	enter  0x22,0x0
    dcbe:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
    dcc3:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    dcc6:	b4 00                	mov    ah,0x0
    dcc8:	c1 e0 03             	shl    ax,0x3
    dccb:	ba e0 16             	mov    dx,0x16e0
    dcce:	8b d8                	mov    bx,ax
    dcd0:	8e c2                	mov    es,dx
    dcd2:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    dcd7:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
    dcda:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dcdd:	b4 00                	mov    ah,0x0
    dcdf:	c1 e0 03             	shl    ax,0x3
    dce2:	ba e0 16             	mov    dx,0x16e0
    dce5:	8b d8                	mov    bx,ax
    dce7:	8e c2                	mov    es,dx
    dce9:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    dcee:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
    dcf1:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    dcf4:	b4 00                	mov    ah,0x0
    dcf6:	c1 e0 03             	shl    ax,0x3
    dcf9:	ba e0 16             	mov    dx,0x16e0
    dcfc:	8b d8                	mov    bx,ax
    dcfe:	8e c2                	mov    es,dx
    dd00:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
    dd05:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
    dd08:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dd0b:	b4 00                	mov    ah,0x0
    dd0d:	c1 e0 03             	shl    ax,0x3
    dd10:	ba e0 16             	mov    dx,0x16e0
    dd13:	8b d8                	mov    bx,ax
    dd15:	8e c2                	mov    es,dx
    dd17:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
    dd1c:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
    dd1f:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    dd22:	b4 00                	mov    ah,0x0
    dd24:	c1 e0 03             	shl    ax,0x3
    dd27:	ba e0 16             	mov    dx,0x16e0
    dd2a:	8b d8                	mov    bx,ax
    dd2c:	8e c2                	mov    es,dx
    dd2e:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    dd33:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    dd38:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
    dd3b:	89 56 e2             	mov    WORD PTR [bp-0x1e],dx
    dd3e:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dd41:	b4 00                	mov    ah,0x0
    dd43:	c1 e0 03             	shl    ax,0x3
    dd46:	ba e0 16             	mov    dx,0x16e0
    dd49:	8b d8                	mov    bx,ax
    dd4b:	8e c2                	mov    es,dx
    dd4d:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    dd52:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    dd57:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
    dd5a:	89 56 de             	mov    WORD PTR [bp-0x22],dx
    dd5d:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    dd60:	b4 00                	mov    ah,0x0
    dd62:	c1 e0 03             	shl    ax,0x3
    dd65:	ba e0 16             	mov    dx,0x16e0
    dd68:	8b d8                	mov    bx,ax
    dd6a:	8e c2                	mov    es,dx
    dd6c:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
    dd71:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
    dd76:	74 1b                	je     0xdd93
    dd78:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dd7b:	b4 00                	mov    ah,0x0
    dd7d:	c1 e0 03             	shl    ax,0x3
    dd80:	ba e0 16             	mov    dx,0x16e0
    dd83:	8b d8                	mov    bx,ax
    dd85:	8e c2                	mov    es,dx
    dd87:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
    dd8c:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
    dd91:	75 15                	jne    0xdda8
    dd93:	6a 0e                	push   0xe
    dd95:	6a 00                	push   0x0
    dd97:	6a 00                	push   0x0
    dd99:	68 28 03             	push   0x328
    dd9c:	1e                   	push   ds
    dd9d:	68 10 72             	push   0x7210
    dda0:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    dda5:	83 c4 0c             	add    sp,0xc
    dda8:	1e                   	push   ds
    dda9:	68 25 72             	push   0x7225
    ddac:	68 3a 03             	push   0x33a
    ddaf:	68 e0 16             	push   0x16e0
    ddb2:	68 26 de             	push   0xde26
    ddb5:	9a 81 0a d4 09       	call   0x9d4:0xa81
    ddba:	83 c4 0a             	add    sp,0xa
    ddbd:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    ddc0:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
    ddc3:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    ddc6:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
    ddc9:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
    ddce:	c7 46 f0 ff ff       	mov    WORD PTR [bp-0x10],0xffff
    ddd3:	c7 46 ee ff ff       	mov    WORD PTR [bp-0x12],0xffff
    ddd8:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
    dddb:	33 c9                	xor    cx,cx
    dddd:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
    dde0:	33 d2                	xor    dx,dx
    dde2:	9a 42 12 00 00       	call   0x0:0x1242
    dde7:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
    ddea:	33 c9                	xor    cx,cx
    ddec:	03 d8                	add    bx,ax
    ddee:	13 ca                	adc    cx,dx
    ddf0:	51                   	push   cx
    ddf1:	53                   	push   bx
    ddf2:	16                   	push   ss
    ddf3:	8d 46 f2             	lea    ax,[bp-0xe]
    ddf6:	50                   	push   ax
    ddf7:	16                   	push   ss
    ddf8:	8d 46 f0             	lea    ax,[bp-0x10]
    ddfb:	50                   	push   ax
    ddfc:	16                   	push   ss
    ddfd:	8d 46 fc             	lea    ax,[bp-0x4]
    de00:	50                   	push   ax
    de01:	16                   	push   ss
    de02:	8d 46 e2             	lea    ax,[bp-0x1e]
    de05:	50                   	push   ax
    de06:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    de0b:	83 c4 14             	add    sp,0x14
    de0e:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
    de11:	33 c9                	xor    cx,cx
    de13:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
    de16:	33 d2                	xor    dx,dx
    de18:	9a 42 12 00 00       	call   0x0:0x1242
    de1d:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
    de20:	33 c9                	xor    cx,cx
    de22:	03 d8                	add    bx,ax
    de24:	13 ca                	adc    cx,dx
    de26:	51                   	push   cx
    de27:	53                   	push   bx
    de28:	16                   	push   ss
    de29:	8d 46 f2             	lea    ax,[bp-0xe]
    de2c:	50                   	push   ax
    de2d:	16                   	push   ss
    de2e:	8d 46 ee             	lea    ax,[bp-0x12]
    de31:	50                   	push   ax
    de32:	16                   	push   ss
    de33:	8d 46 f8             	lea    ax,[bp-0x8]
    de36:	50                   	push   ax
    de37:	16                   	push   ss
    de38:	8d 46 de             	lea    ax,[bp-0x22]
    de3b:	50                   	push   ax
    de3c:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    de41:	83 c4 14             	add    sp,0x14
    de44:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    de47:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    de4a:	33 d2                	xor    dx,dx
    de4c:	f7 76 ec             	div    WORD PTR [bp-0x14]
    de4f:	40                   	inc    ax
    de50:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    de53:	73 0e                	jae    0xde63
    de55:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    de58:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    de5b:	33 d2                	xor    dx,dx
    de5d:	f7 76 ec             	div    WORD PTR [bp-0x14]
    de60:	40                   	inc    ax
    de61:	eb 03                	jmp    0xde66
    de63:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    de66:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
    de69:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
    de6c:	33 c9                	xor    cx,cx
    de6e:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    de71:	33 d2                	xor    dx,dx
    de73:	9a 42 12 00 00       	call   0x0:0x1242
    de78:	33 d2                	xor    dx,dx
    de7a:	f7 76 0c             	div    WORD PTR [bp+0xc]
    de7d:	50                   	push   ax
    de7e:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    de81:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    de84:	33 d2                	xor    dx,dx
    de86:	f7 76 ea             	div    WORD PTR [bp-0x16]
    de89:	40                   	inc    ax
    de8a:	3b 46 14             	cmp    ax,WORD PTR [bp+0x14]
    de8d:	73 0e                	jae    0xde9d
    de8f:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    de92:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    de95:	33 d2                	xor    dx,dx
    de97:	f7 76 ea             	div    WORD PTR [bp-0x16]
    de9a:	40                   	inc    ax
    de9b:	eb 03                	jmp    0xdea0
    de9d:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    dea0:	5a                   	pop    dx
    dea1:	3b d0                	cmp    dx,ax
    dea3:	76 24                	jbe    0xdec9
    dea5:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    dea8:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    deab:	33 d2                	xor    dx,dx
    dead:	f7 76 ea             	div    WORD PTR [bp-0x16]
    deb0:	40                   	inc    ax
    deb1:	3b 46 14             	cmp    ax,WORD PTR [bp+0x14]
    deb4:	73 0e                	jae    0xdec4
    deb6:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    deb9:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    debc:	33 d2                	xor    dx,dx
    debe:	f7 76 ea             	div    WORD PTR [bp-0x16]
    dec1:	40                   	inc    ax
    dec2:	eb 03                	jmp    0xdec7
    dec4:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    dec7:	eb 14                	jmp    0xdedd
    dec9:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
    decc:	33 c9                	xor    cx,cx
    dece:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    ded1:	33 d2                	xor    dx,dx
    ded3:	9a 42 12 00 00       	call   0x0:0x1242
    ded8:	33 d2                	xor    dx,dx
    deda:	f7 76 0c             	div    WORD PTR [bp+0xc]
    dedd:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
    dee0:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
    dee3:	33 c9                	xor    cx,cx
    dee5:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    dee8:	33 d2                	xor    dx,dx
    deea:	9a 42 12 00 00       	call   0x0:0x1242
    deef:	33 d2                	xor    dx,dx
    def1:	f7 76 14             	div    WORD PTR [bp+0x14]
    def4:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
    def7:	76 05                	jbe    0xdefe
    def9:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    defc:	eb 14                	jmp    0xdf12
    defe:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
    df01:	33 c9                	xor    cx,cx
    df03:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    df06:	33 d2                	xor    dx,dx
    df08:	9a 42 12 00 00       	call   0x0:0x1242
    df0d:	33 d2                	xor    dx,dx
    df0f:	f7 76 14             	div    WORD PTR [bp+0x14]
    df12:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
    df15:	8a 46 1a             	mov    al,BYTE PTR [bp+0x1a]
    df18:	50                   	push   ax
    df19:	68 fe 00             	push   0xfe
    df1c:	ff 76 e6             	push   WORD PTR [bp-0x1a]
    df1f:	ff 76 ea             	push   WORD PTR [bp-0x16]
    df22:	ff 76 f4             	push   WORD PTR [bp-0xc]
    df25:	ff 76 12             	push   WORD PTR [bp+0x12]
    df28:	6a 00                	push   0x0
    df2a:	6a 00                	push   0x0
    df2c:	ff 76 fa             	push   WORD PTR [bp-0x6]
    df2f:	ff 76 f8             	push   WORD PTR [bp-0x8]
    df32:	ff 76 e8             	push   WORD PTR [bp-0x18]
    df35:	ff 76 ec             	push   WORD PTR [bp-0x14]
    df38:	ff 76 f6             	push   WORD PTR [bp-0xa]
    df3b:	ff 76 0a             	push   WORD PTR [bp+0xa]
    df3e:	6a 00                	push   0x0
    df40:	6a 00                	push   0x0
    df42:	ff 76 fe             	push   WORD PTR [bp-0x2]
    df45:	ff 76 fc             	push   WORD PTR [bp-0x4]
    df48:	9a 18 00 99 25       	call   0x2599:0x18
    df4d:	83 c4 24             	add    sp,0x24
    df50:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    df53:	29 46 0c             	sub    WORD PTR [bp+0xc],ax
    df56:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    df59:	29 46 14             	sub    WORD PTR [bp+0x14],ax
    df5c:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    df5f:	01 46 08             	add    WORD PTR [bp+0x8],ax
    df62:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    df65:	01 46 10             	add    WORD PTR [bp+0x10],ax
    df68:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    df6c:	74 03                	je     0xdf71
    df6e:	e9 4c fe             	jmp    0xddbd
    df71:	68 e0 16             	push   0x16e0
    df74:	68 26 de             	push   0xde26
    df77:	9a 22 0b d4 09       	call   0x9d4:0xb22
    df7c:	83 c4 04             	add    sp,0x4
    df7f:	c9                   	leave
    df80:	cb                   	retf
    df81:	c8 1e 00 00          	enter  0x1e,0x0
    df85:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    df8a:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
    df8f:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    df92:	b4 00                	mov    ah,0x0
    df94:	c1 e0 03             	shl    ax,0x3
    df97:	ba e0 16             	mov    dx,0x16e0
    df9a:	8b d8                	mov    bx,ax
    df9c:	8e c2                	mov    es,dx
    df9e:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    dfa3:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
    dfa6:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dfa9:	b4 00                	mov    ah,0x0
    dfab:	c1 e0 03             	shl    ax,0x3
    dfae:	ba e0 16             	mov    dx,0x16e0
    dfb1:	8b d8                	mov    bx,ax
    dfb3:	8e c2                	mov    es,dx
    dfb5:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    dfba:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
    dfbd:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    dfc0:	b4 00                	mov    ah,0x0
    dfc2:	c1 e0 03             	shl    ax,0x3
    dfc5:	ba e0 16             	mov    dx,0x16e0
    dfc8:	8b d8                	mov    bx,ax
    dfca:	8e c2                	mov    es,dx
    dfcc:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    dfd1:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    dfd6:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
    dfd9:	89 56 e6             	mov    WORD PTR [bp-0x1a],dx
    dfdc:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dfdf:	b4 00                	mov    ah,0x0
    dfe1:	c1 e0 03             	shl    ax,0x3
    dfe4:	ba e0 16             	mov    dx,0x16e0
    dfe7:	8b d8                	mov    bx,ax
    dfe9:	8e c2                	mov    es,dx
    dfeb:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    dff0:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    dff5:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
    dff8:	89 56 e2             	mov    WORD PTR [bp-0x1e],dx
    dffb:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    dfff:	75 03                	jne    0xe004
    e001:	e9 4b 01             	jmp    0xe14f
    e004:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    e008:	75 03                	jne    0xe00d
    e00a:	e9 42 01             	jmp    0xe14f
    e00d:	1e                   	push   ds
    e00e:	68 3a 72             	push   0x723a
    e011:	68 38 04             	push   0x438
    e014:	68 e0 16             	push   0x16e0
    e017:	68 26 de             	push   0xde26
    e01a:	9a 81 0a d4 09       	call   0x9d4:0xa81
    e01f:	83 c4 0a             	add    sp,0xa
    e022:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    e027:	c7 46 f0 ff ff       	mov    WORD PTR [bp-0x10],0xffff
    e02c:	c7 46 ee ff ff       	mov    WORD PTR [bp-0x12],0xffff
    e031:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
    e034:	33 c9                	xor    cx,cx
    e036:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
    e039:	33 d2                	xor    dx,dx
    e03b:	9a 42 12 00 00       	call   0x0:0x1242
    e040:	52                   	push   dx
    e041:	50                   	push   ax
    e042:	16                   	push   ss
    e043:	8d 46 f6             	lea    ax,[bp-0xa]
    e046:	50                   	push   ax
    e047:	16                   	push   ss
    e048:	8d 46 f0             	lea    ax,[bp-0x10]
    e04b:	50                   	push   ax
    e04c:	16                   	push   ss
    e04d:	8d 46 fc             	lea    ax,[bp-0x4]
    e050:	50                   	push   ax
    e051:	16                   	push   ss
    e052:	8d 46 e6             	lea    ax,[bp-0x1a]
    e055:	50                   	push   ax
    e056:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    e05b:	83 c4 14             	add    sp,0x14
    e05e:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
    e061:	33 c9                	xor    cx,cx
    e063:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
    e066:	33 d2                	xor    dx,dx
    e068:	9a 42 12 00 00       	call   0x0:0x1242
    e06d:	52                   	push   dx
    e06e:	50                   	push   ax
    e06f:	16                   	push   ss
    e070:	8d 46 f6             	lea    ax,[bp-0xa]
    e073:	50                   	push   ax
    e074:	16                   	push   ss
    e075:	8d 46 ee             	lea    ax,[bp-0x12]
    e078:	50                   	push   ax
    e079:	16                   	push   ss
    e07a:	8d 46 f8             	lea    ax,[bp-0x8]
    e07d:	50                   	push   ax
    e07e:	16                   	push   ss
    e07f:	8d 46 e2             	lea    ax,[bp-0x1e]
    e082:	50                   	push   ax
    e083:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    e088:	83 c4 14             	add    sp,0x14
    e08b:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e08e:	33 d2                	xor    dx,dx
    e090:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e093:	50                   	push   ax
    e094:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e097:	33 d2                	xor    dx,dx
    e099:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e09c:	5a                   	pop    dx
    e09d:	3b d0                	cmp    dx,ax
    e09f:	73 0a                	jae    0xe0ab
    e0a1:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e0a4:	33 d2                	xor    dx,dx
    e0a6:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e0a9:	eb 08                	jmp    0xe0b3
    e0ab:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e0ae:	33 d2                	xor    dx,dx
    e0b0:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e0b3:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    e0b6:	73 2a                	jae    0xe0e2
    e0b8:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e0bb:	33 d2                	xor    dx,dx
    e0bd:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e0c0:	50                   	push   ax
    e0c1:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e0c4:	33 d2                	xor    dx,dx
    e0c6:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e0c9:	5a                   	pop    dx
    e0ca:	3b d0                	cmp    dx,ax
    e0cc:	73 0a                	jae    0xe0d8
    e0ce:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e0d1:	33 d2                	xor    dx,dx
    e0d3:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e0d6:	eb 08                	jmp    0xe0e0
    e0d8:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e0db:	33 d2                	xor    dx,dx
    e0dd:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e0e0:	eb 03                	jmp    0xe0e5
    e0e2:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e0e5:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
    e0e8:	68 fe 00             	push   0xfe
    e0eb:	8a 46 14             	mov    al,BYTE PTR [bp+0x14]
    e0ee:	b4 00                	mov    ah,0x0
    e0f0:	50                   	push   ax
    e0f1:	ff 76 ea             	push   WORD PTR [bp-0x16]
    e0f4:	ff 76 12             	push   WORD PTR [bp+0x12]
    e0f7:	6a 00                	push   0x0
    e0f9:	ff 76 0e             	push   WORD PTR [bp+0xe]
    e0fc:	ff 76 fa             	push   WORD PTR [bp-0x6]
    e0ff:	ff 76 f8             	push   WORD PTR [bp-0x8]
    e102:	ff 76 ec             	push   WORD PTR [bp-0x14]
    e105:	ff 76 f2             	push   WORD PTR [bp-0xe]
    e108:	ff 76 f4             	push   WORD PTR [bp-0xc]
    e10b:	ff 76 0a             	push   WORD PTR [bp+0xa]
    e10e:	6a 00                	push   0x0
    e110:	ff 76 06             	push   WORD PTR [bp+0x6]
    e113:	ff 76 fe             	push   WORD PTR [bp-0x2]
    e116:	ff 76 fc             	push   WORD PTR [bp-0x4]
    e119:	ff 5e 1a             	call   DWORD PTR [bp+0x1a]
    e11c:	83 c4 20             	add    sp,0x20
    e11f:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e122:	01 46 08             	add    WORD PTR [bp+0x8],ax
    e125:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e128:	01 46 10             	add    WORD PTR [bp+0x10],ax
    e12b:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e12e:	01 46 f4             	add    WORD PTR [bp-0xc],ax
    e131:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e134:	29 46 0c             	sub    WORD PTR [bp+0xc],ax
    e137:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e13a:	0b c0                	or     ax,ax
    e13c:	76 03                	jbe    0xe141
    e13e:	e9 e1 fe             	jmp    0xe022
    e141:	68 e0 16             	push   0x16e0
    e144:	68 26 de             	push   0xde26
    e147:	9a 22 0b d4 09       	call   0x9d4:0xb22
    e14c:	83 c4 04             	add    sp,0x4
    e14f:	c9                   	leave
    e150:	cb                   	retf
    e151:	c8 06 00 00          	enter  0x6,0x0
    e155:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e158:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    e15b:	eb 78                	jmp    0xe1d5
    e15d:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
