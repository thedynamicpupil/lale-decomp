
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00011468 <.data+0x1468>:
   11468:	25 0f 00             	and    ax,0xf
   1146b:	5b                   	pop    bx
   1146c:	26 89 07             	mov    WORD PTR es:[bx],ax
   1146f:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   11473:	cb                   	retf
   11474:	07                   	pop    es
   11475:	0e                   	push   cs
   11476:	06                   	push   es
   11477:	0b c9                	or     cx,cx
   11479:	7d 0c                	jge    0x11487
   1147b:	f7 d3                	not    bx
   1147d:	f7 d1                	not    cx
   1147f:	83 c3 01             	add    bx,0x1
   11482:	83 d1 00             	adc    cx,0x0
   11485:	eb 2f                	jmp    0x114b6
   11487:	03 c3                	add    ax,bx
   11489:	73 04                	jae    0x1148f
   1148b:	81 c2 00 10          	add    dx,0x1000
   1148f:	8a e9                	mov    ch,cl
   11491:	b1 04                	mov    cl,0x4
   11493:	d2 e5                	shl    ch,cl
   11495:	02 f5                	add    dh,ch
   11497:	8a e8                	mov    ch,al
   11499:	d3 e8                	shr    ax,cl
   1149b:	03 d0                	add    dx,ax
   1149d:	8a c5                	mov    al,ch
   1149f:	25 0f 00             	and    ax,0xf
   114a2:	cb                   	retf
   114a3:	07                   	pop    es
   114a4:	0e                   	push   cs
   114a5:	06                   	push   es
   114a6:	0b c9                	or     cx,cx
   114a8:	7d 0c                	jge    0x114b6
   114aa:	f7 d3                	not    bx
   114ac:	f7 d1                	not    cx
   114ae:	83 c3 01             	add    bx,0x1
   114b1:	83 d1 00             	adc    cx,0x0
   114b4:	eb d1                	jmp    0x11487
   114b6:	2b c3                	sub    ax,bx
   114b8:	73 04                	jae    0x114be
   114ba:	81 ea 00 10          	sub    dx,0x1000
   114be:	8a f9                	mov    bh,cl
   114c0:	b1 04                	mov    cl,0x4
   114c2:	d2 e7                	shl    bh,cl
   114c4:	32 db                	xor    bl,bl
   114c6:	2b d3                	sub    dx,bx
   114c8:	8a e8                	mov    ch,al
   114ca:	d3 e8                	shr    ax,cl
   114cc:	03 d0                	add    dx,ax
   114ce:	8a c5                	mov    al,ch
   114d0:	25 0f 00             	and    ax,0xf
   114d3:	cb                   	retf
   114d4:	07                   	pop    es
   114d5:	0e                   	push   cs
   114d6:	06                   	push   es
   114d7:	57                   	push   di
   114d8:	8b f9                	mov    di,cx
   114da:	8a ee                	mov    ch,dh
   114dc:	b1 04                	mov    cl,0x4
   114de:	d3 e2                	shl    dx,cl
   114e0:	d2 ed                	shr    ch,cl
   114e2:	03 d0                	add    dx,ax
   114e4:	80 d5 00             	adc    ch,0x0
   114e7:	8b c7                	mov    ax,di
   114e9:	d3 e7                	shl    di,cl
   114eb:	d2 ec                	shr    ah,cl
   114ed:	03 df                	add    bx,di
   114ef:	80 d4 00             	adc    ah,0x0
   114f2:	2b d3                	sub    dx,bx
   114f4:	1a ec                	sbb    ch,ah
   114f6:	8a c5                	mov    al,ch
   114f8:	98                   	cbw
   114f9:	92                   	xchg   dx,ax
   114fa:	5f                   	pop    di
   114fb:	cb                   	retf
   114fc:	5b                   	pop    bx
   114fd:	2b e1                	sub    sp,cx
   114ff:	0e                   	push   cs
   11500:	eb 05                	jmp    0x11507
   11502:	5b                   	pop    bx
   11503:	07                   	pop    es
   11504:	2b e1                	sub    sp,cx
   11506:	06                   	push   es
   11507:	53                   	push   bx
   11508:	57                   	push   di
   11509:	1e                   	push   ds
   1150a:	8b fc                	mov    di,sp
   1150c:	83 c7 08             	add    di,0x8
   1150f:	8c d3                	mov    bx,ss
   11511:	8e c3                	mov    es,bx
   11513:	8e da                	mov    ds,dx
   11515:	96                   	xchg   si,ax
   11516:	fc                   	cld
   11517:	d1 e9                	shr    cx,1
   11519:	f3 a5                	rep movs WORD PTR es:[di],WORD PTR ds:[si]
   1151b:	13 c9                	adc    cx,cx
   1151d:	f3 a4                	rep movs BYTE PTR es:[di],BYTE PTR ds:[si]
   1151f:	96                   	xchg   si,ax
   11520:	1f                   	pop    ds
   11521:	5f                   	pop    di
   11522:	cb                   	retf
   11523:	55                   	push   bp
   11524:	8b ec                	mov    bp,sp
   11526:	56                   	push   si
   11527:	8b 76 04             	mov    si,WORD PTR [bp+0x4]
   1152a:	0b f6                	or     si,si
   1152c:	7c 15                	jl     0x11543
   1152e:	83 fe 58             	cmp    si,0x58
   11531:	7e 03                	jle    0x11536
   11533:	be 57 00             	mov    si,0x57
   11536:	89 36 5e 94          	mov    WORD PTR ds:0x945e,si
   1153a:	8a 84 60 94          	mov    al,BYTE PTR [si-0x6ba0]
   1153e:	98                   	cbw
   1153f:	8b f0                	mov    si,ax
   11541:	eb 0d                	jmp    0x11550
   11543:	f7 de                	neg    si
   11545:	83 fe 23             	cmp    si,0x23
   11548:	7f e9                	jg     0x11533
   1154a:	c7 06 5e 94 ff ff    	mov    WORD PTR ds:0x945e,0xffff
   11550:	89 36 7f 00          	mov    WORD PTR ds:0x7f,si
   11554:	b8 ff ff             	mov    ax,0xffff
   11557:	5e                   	pop    si
   11558:	5d                   	pop    bp
   11559:	c2 02 00             	ret    0x2
   1155c:	55                   	push   bp
   1155d:	8b ec                	mov    bp,sp
   1155f:	56                   	push   si
   11560:	8b 76 04             	mov    si,WORD PTR [bp+0x4]
   11563:	56                   	push   si
   11564:	e8 bc ff             	call   0x11523
   11567:	8b c6                	mov    ax,si
   11569:	5e                   	pop    si
   1156a:	5d                   	pop    bp
   1156b:	c2 02 00             	ret    0x2
   1156e:	55                   	push   bp
   1156f:	8b ec                	mov    bp,sp
   11571:	b8 00 44             	mov    ax,0x4400
   11574:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   11577:	cd 21                	int    0x21
   11579:	92                   	xchg   dx,ax
   1157a:	25 80 00             	and    ax,0x80
   1157d:	5d                   	pop    bp
   1157e:	cb                   	retf
   1157f:	55                   	push   bp
   11580:	8b ec                	mov    bp,sp
   11582:	83 ec 22             	sub    sp,0x22
   11585:	56                   	push   si
   11586:	57                   	push   di
   11587:	06                   	push   es
   11588:	c4 7e 0a             	les    di,DWORD PTR [bp+0xa]
   1158b:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   1158e:	83 fb 24             	cmp    bx,0x24
   11591:	77 5c                	ja     0x115ef
   11593:	80 fb 02             	cmp    bl,0x2
   11596:	72 57                	jb     0x115ef
   11598:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   1159b:	8b 4e 10             	mov    cx,WORD PTR [bp+0x10]
   1159e:	0b c9                	or     cx,cx
   115a0:	7d 12                	jge    0x115b4
   115a2:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   115a6:	74 0c                	je     0x115b4
   115a8:	26 c6 05 2d          	mov    BYTE PTR es:[di],0x2d
   115ac:	47                   	inc    di
   115ad:	f7 d9                	neg    cx
   115af:	f7 d8                	neg    ax
   115b1:	83 d9 00             	sbb    cx,0x0
   115b4:	8d 76 de             	lea    si,[bp-0x22]
   115b7:	e3 10                	jcxz   0x115c9
   115b9:	91                   	xchg   cx,ax
   115ba:	2b d2                	sub    dx,dx
   115bc:	f7 f3                	div    bx
   115be:	91                   	xchg   cx,ax
   115bf:	f7 f3                	div    bx
   115c1:	36 88 14             	mov    BYTE PTR ss:[si],dl
   115c4:	46                   	inc    si
   115c5:	e3 0a                	jcxz   0x115d1
   115c7:	eb f0                	jmp    0x115b9
   115c9:	2b d2                	sub    dx,dx
   115cb:	f7 f3                	div    bx
   115cd:	36 88 14             	mov    BYTE PTR ss:[si],dl
   115d0:	46                   	inc    si
   115d1:	0b c0                	or     ax,ax
   115d3:	75 f4                	jne    0x115c9
   115d5:	8d 4e de             	lea    cx,[bp-0x22]
   115d8:	f7 d9                	neg    cx
   115da:	03 ce                	add    cx,si
   115dc:	fc                   	cld
   115dd:	4e                   	dec    si
   115de:	36 8a 04             	mov    al,BYTE PTR ss:[si]
   115e1:	2c 0a                	sub    al,0xa
   115e3:	73 04                	jae    0x115e9
   115e5:	04 3a                	add    al,0x3a
   115e7:	eb 03                	jmp    0x115ec
   115e9:	02 46 04             	add    al,BYTE PTR [bp+0x4]
   115ec:	aa                   	stos   BYTE PTR es:[di],al
   115ed:	e2 ee                	loop   0x115dd
   115ef:	b0 00                	mov    al,0x0
   115f1:	aa                   	stos   BYTE PTR es:[di],al
   115f2:	07                   	pop    es
   115f3:	8b 56 0c             	mov    dx,WORD PTR [bp+0xc]
   115f6:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   115f9:	5f                   	pop    di
   115fa:	5e                   	pop    si
   115fb:	8b e5                	mov    sp,bp
   115fd:	5d                   	pop    bp
   115fe:	c2 0e 00             	ret    0xe
   11601:	55                   	push   bp
   11602:	8b ec                	mov    bp,sp
   11604:	33 c0                	xor    ax,ax
   11606:	50                   	push   ax
   11607:	ff 76 08             	push   WORD PTR [bp+0x8]
   1160a:	ff 76 06             	push   WORD PTR [bp+0x6]
   1160d:	ff 76 04             	push   WORD PTR [bp+0x4]
   11610:	b8 0a 00             	mov    ax,0xa
   11613:	50                   	push   ax
   11614:	b0 00                	mov    al,0x0
   11616:	50                   	push   ax
   11617:	b0 61                	mov    al,0x61
   11619:	50                   	push   ax
   1161a:	e8 62 ff             	call   0x1157f
   1161d:	5d                   	pop    bp
   1161e:	c2 06 00             	ret    0x6
   11621:	55                   	push   bp
   11622:	8b ec                	mov    bp,sp
   11624:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   11627:	d1 e3                	shl    bx,1
   11629:	81 a7 30 94 ff fd    	and    WORD PTR [bx-0x6bd0],0xfdff
   1162f:	b4 42                	mov    ah,0x42
   11631:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   11634:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   11637:	8b 4e 0a             	mov    cx,WORD PTR [bp+0xa]
   1163a:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   1163d:	cd 21                	int    0x21
   1163f:	72 02                	jb     0x11643
   11641:	eb 05                	jmp    0x11648
   11643:	50                   	push   ax
   11644:	e8 dc fe             	call   0x11523
   11647:	99                   	cwd
   11648:	5d                   	pop    bp
   11649:	cb                   	retf
   1164a:	55                   	push   bp
   1164b:	8b ec                	mov    bp,sp
   1164d:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   11650:	0b 46 0c             	or     ax,WORD PTR [bp+0xc]
   11653:	75 08                	jne    0x1165d
   11655:	8c 5e 0c             	mov    WORD PTR [bp+0xc],ds
   11658:	c7 46 0a 52 ea       	mov    WORD PTR [bp+0xa],0xea52
   1165d:	ff 76 04             	push   WORD PTR [bp+0x4]
   11660:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   11663:	0b 46 08             	or     ax,WORD PTR [bp+0x8]
   11666:	75 07                	jne    0x1166f
   11668:	8c da                	mov    dx,ds
   1166a:	b8 ba 94             	mov    ax,0x94ba
   1166d:	eb 06                	jmp    0x11675
   1166f:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   11672:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   11675:	52                   	push   dx
   11676:	50                   	push   ax
   11677:	ff 76 0c             	push   WORD PTR [bp+0xc]
   1167a:	ff 76 0a             	push   WORD PTR [bp+0xa]
   1167d:	90                   	nop
   1167e:	0e                   	push   cs
   1167f:	e8 89 08             	call   0x11f0b
   11682:	83 c4 08             	add    sp,0x8
   11685:	52                   	push   dx
   11686:	50                   	push   ax
   11687:	e8 77 ff             	call   0x11601
   1168a:	1e                   	push   ds
   1168b:	b8 be 94             	mov    ax,0x94be
   1168e:	50                   	push   ax
   1168f:	ff 76 0c             	push   WORD PTR [bp+0xc]
   11692:	ff 76 0a             	push   WORD PTR [bp+0xa]
   11695:	90                   	nop
   11696:	0e                   	push   cs
   11697:	e8 5d 32             	call   0x148f7
   1169a:	83 c4 08             	add    sp,0x8
   1169d:	8b 56 0c             	mov    dx,WORD PTR [bp+0xc]
   116a0:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   116a3:	5d                   	pop    bp
   116a4:	c2 0a 00             	ret    0xa
   116a7:	55                   	push   bp
   116a8:	8b ec                	mov    bp,sp
   116aa:	83 ec 02             	sub    sp,0x2
   116ad:	ff 76 0a             	push   WORD PTR [bp+0xa]
   116b0:	ff 76 08             	push   WORD PTR [bp+0x8]
   116b3:	33 c0                	xor    ax,ax
   116b5:	50                   	push   ax
   116b6:	50                   	push   ax
   116b7:	c4 5e 04             	les    bx,DWORD PTR [bp+0x4]
   116ba:	26 83 3f ff          	cmp    WORD PTR es:[bx],0xffff
   116be:	75 05                	jne    0x116c5
   116c0:	b8 02 00             	mov    ax,0x2
   116c3:	eb 03                	jmp    0x116c8
   116c5:	b8 01 00             	mov    ax,0x1
   116c8:	c4 5e 04             	les    bx,DWORD PTR [bp+0x4]
   116cb:	26 01 07             	add    WORD PTR es:[bx],ax
   116ce:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   116d1:	50                   	push   ax
   116d2:	e8 75 ff             	call   0x1164a
   116d5:	89 56 0a             	mov    WORD PTR [bp+0xa],dx
   116d8:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   116db:	16                   	push   ss
   116dc:	8d 46 fe             	lea    ax,[bp-0x2]
   116df:	50                   	push   ax
   116e0:	ff 76 0a             	push   WORD PTR [bp+0xa]
   116e3:	ff 76 08             	push   WORD PTR [bp+0x8]
   116e6:	90                   	nop
   116e7:	0e                   	push   cs
   116e8:	e8 07 fa             	call   0x110f2
   116eb:	83 c4 08             	add    sp,0x8
   116ee:	0b c0                	or     ax,ax
   116f0:	74 bb                	je     0x116ad
   116f2:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   116f5:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   116f8:	8b e5                	mov    sp,bp
   116fa:	5d                   	pop    bp
   116fb:	c2 08 00             	ret    0x8
   116fe:	56                   	push   si
   116ff:	96                   	xchg   si,ax
   11700:	92                   	xchg   dx,ax
   11701:	85 c0                	test   ax,ax
   11703:	74 02                	je     0x11707
   11705:	f7 e3                	mul    bx
   11707:	e3 05                	jcxz   0x1170e
   11709:	91                   	xchg   cx,ax
   1170a:	f7 e6                	mul    si
   1170c:	03 c1                	add    ax,cx
   1170e:	96                   	xchg   si,ax
   1170f:	f7 e3                	mul    bx
   11711:	03 d6                	add    dx,si
   11713:	5e                   	pop    si
   11714:	c3                   	ret
   11715:	51                   	push   cx
   11716:	8a e8                	mov    ch,al
   11718:	b1 04                	mov    cl,0x4
   1171a:	d3 e8                	shr    ax,cl
   1171c:	03 d0                	add    dx,ax
   1171e:	8a c5                	mov    al,ch
   11720:	8a e3                	mov    ah,bl
   11722:	d3 eb                	shr    bx,cl
   11724:	59                   	pop    cx
   11725:	03 cb                	add    cx,bx
   11727:	8a dc                	mov    bl,ah
   11729:	25 0f 00             	and    ax,0xf
   1172c:	83 e3 0f             	and    bx,0xf
   1172f:	3b d1                	cmp    dx,cx
   11731:	75 02                	jne    0x11735
   11733:	3b c3                	cmp    ax,bx
   11735:	c3                   	ret
   11736:	55                   	push   bp
   11737:	8b ec                	mov    bp,sp
   11739:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   1173c:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   1173f:	ef                   	out    dx,ax
   11740:	5d                   	pop    bp
   11741:	cb                   	retf
   11742:	55                   	push   bp
   11743:	8b ec                	mov    bp,sp
   11745:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11748:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   1174b:	ee                   	out    dx,al
   1174c:	5d                   	pop    bp
   1174d:	cb                   	retf
   1174e:	55                   	push   bp
   1174f:	8b ec                	mov    bp,sp
   11751:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11754:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   11757:	ef                   	out    dx,ax
   11758:	5d                   	pop    bp
   11759:	cb                   	retf
   1175a:	55                   	push   bp
   1175b:	8b ec                	mov    bp,sp
   1175d:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11760:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   11763:	ee                   	out    dx,al
   11764:	32 e4                	xor    ah,ah
   11766:	5d                   	pop    bp
   11767:	cb                   	retf
   11768:	55                   	push   bp
   11769:	8b ec                	mov    bp,sp
   1176b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   1176e:	c7 06 c6 94 00 00    	mov    WORD PTR ds:0x94c6,0x0
   11774:	a3 c4 94             	mov    ds:0x94c4,ax
   11777:	5d                   	pop    bp
   11778:	cb                   	retf
   11779:	8b 0e c6 94          	mov    cx,WORD PTR ds:0x94c6
   1177d:	8b 1e c4 94          	mov    bx,WORD PTR ds:0x94c4
   11781:	ba 5a 01             	mov    dx,0x15a
   11784:	b8 35 4e             	mov    ax,0x4e35
   11787:	e8 74 ff             	call   0x116fe
   1178a:	05 01 00             	add    ax,0x1
   1178d:	83 d2 00             	adc    dx,0x0
   11790:	89 16 c6 94          	mov    WORD PTR ds:0x94c6,dx
   11794:	a3 c4 94             	mov    ds:0x94c4,ax
   11797:	a1 c6 94             	mov    ax,ds:0x94c6
   1179a:	99                   	cwd
   1179b:	25 ff 7f             	and    ax,0x7fff
   1179e:	cb                   	retf
   1179f:	55                   	push   bp
   117a0:	8b ec                	mov    bp,sp
   117a2:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   117a5:	d1 e3                	shl    bx,1
   117a7:	f7 87 30 94 02 00    	test   WORD PTR [bx-0x6bd0],0x2
   117ad:	74 06                	je     0x117b5
   117af:	b8 05 00             	mov    ax,0x5
   117b2:	50                   	push   ax
   117b3:	eb 14                	jmp    0x117c9
   117b5:	1e                   	push   ds
   117b6:	b4 3f                	mov    ah,0x3f
   117b8:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   117bb:	8b 4e 0c             	mov    cx,WORD PTR [bp+0xc]
   117be:	c5 56 08             	lds    dx,DWORD PTR [bp+0x8]
   117c1:	cd 21                	int    0x21
   117c3:	1f                   	pop    ds
   117c4:	72 02                	jb     0x117c8
   117c6:	eb 04                	jmp    0x117cc
   117c8:	50                   	push   ax
   117c9:	e8 57 fd             	call   0x11523
   117cc:	5d                   	pop    bp
   117cd:	cb                   	retf
   117ce:	55                   	push   bp
   117cf:	8b ec                	mov    bp,sp
   117d1:	56                   	push   si
   117d2:	8c c3                	mov    bx,es
   117d4:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   117d7:	26 89 1c             	mov    WORD PTR es:[si],bx
   117da:	8b 46 04             	mov    ax,WORD PTR [bp+0x4]
   117dd:	26 89 44 02          	mov    WORD PTR es:[si+0x2],ax
   117e1:	26 8c 54 04          	mov    WORD PTR es:[si+0x4],ss
   117e5:	26 8c 5c 06          	mov    WORD PTR es:[si+0x6],ds
   117e9:	8e c3                	mov    es,bx
   117eb:	5e                   	pop    si
   117ec:	5d                   	pop    bp
   117ed:	cb                   	retf
   117ee:	55                   	push   bp
   117ef:	8b ec                	mov    bp,sp
   117f1:	56                   	push   si
   117f2:	b4 2b                	mov    ah,0x2b
   117f4:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   117f7:	26 8b 0c             	mov    cx,WORD PTR es:[si]
   117fa:	26 8b 54 02          	mov    dx,WORD PTR es:[si+0x2]
   117fe:	cd 21                	int    0x21
   11800:	5e                   	pop    si
   11801:	5d                   	pop    bp
   11802:	cb                   	retf
   11803:	55                   	push   bp
   11804:	8b ec                	mov    bp,sp
   11806:	56                   	push   si
   11807:	b4 2d                	mov    ah,0x2d
   11809:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   1180c:	26 8b 0c             	mov    cx,WORD PTR es:[si]
   1180f:	26 8b 54 02          	mov    dx,WORD PTR es:[si+0x2]
   11813:	cd 21                	int    0x21
   11815:	5e                   	pop    si
   11816:	5d                   	pop    bp
   11817:	cb                   	retf
   11818:	b9 05 00             	mov    cx,0x5
   1181b:	3b 0e 2e 94          	cmp    cx,WORD PTR ds:0x942e
   1181f:	73 38                	jae    0x11859
   11821:	8b d9                	mov    bx,cx
   11823:	d1 e3                	shl    bx,1
   11825:	c7 87 30 94 00 00    	mov    WORD PTR [bx-0x6bd0],0x0
   1182b:	8b c1                	mov    ax,cx
   1182d:	ba 14 00             	mov    dx,0x14
   11830:	f7 ea                	imul   dx
   11832:	8b d8                	mov    bx,ax
   11834:	c6 87 a2 92 ff       	mov    BYTE PTR [bx-0x6d5e],0xff
   11839:	8b c1                	mov    ax,cx
   1183b:	ba 14 00             	mov    dx,0x14
   1183e:	f7 ea                	imul   dx
   11840:	05 9e 92             	add    ax,0x929e
   11843:	50                   	push   ax
   11844:	8b c1                	mov    ax,cx
   11846:	ba 14 00             	mov    dx,0x14
   11849:	f7 ea                	imul   dx
   1184b:	8b d8                	mov    bx,ax
   1184d:	58                   	pop    ax
   1184e:	89 87 b0 92          	mov    WORD PTR [bx-0x6d50],ax
   11852:	41                   	inc    cx
   11853:	3b 0e 2e 94          	cmp    cx,WORD PTR ds:0x942e
   11857:	72 c8                	jb     0x11821
   11859:	a0 a2 92             	mov    al,ds:0x92a2
   1185c:	98                   	cbw
   1185d:	50                   	push   ax
   1185e:	90                   	nop
   1185f:	0e                   	push   cs
   11860:	e8 0b fd             	call   0x1156e
   11863:	59                   	pop    cx
   11864:	0b c0                	or     ax,ax
   11866:	75 06                	jne    0x1186e
   11868:	81 26 a0 92 ff fd    	and    WORD PTR ds:0x92a0,0xfdff
   1186e:	b8 00 02             	mov    ax,0x200
   11871:	50                   	push   ax
   11872:	f7 06 a0 92 00 02    	test   WORD PTR ds:0x92a0,0x200
   11878:	74 05                	je     0x1187f
   1187a:	b8 01 00             	mov    ax,0x1
   1187d:	eb 02                	jmp    0x11881
   1187f:	33 c0                	xor    ax,ax
   11881:	50                   	push   ax
   11882:	33 c0                	xor    ax,ax
   11884:	50                   	push   ax
   11885:	50                   	push   ax
   11886:	1e                   	push   ds
   11887:	b8 9e 92             	mov    ax,0x929e
   1188a:	50                   	push   ax
   1188b:	90                   	nop
   1188c:	0e                   	push   cs
   1188d:	e8 c9 2e             	call   0x14759
   11890:	83 c4 0c             	add    sp,0xc
   11893:	a0 b6 92             	mov    al,ds:0x92b6
   11896:	98                   	cbw
   11897:	50                   	push   ax
   11898:	90                   	nop
   11899:	0e                   	push   cs
   1189a:	e8 d1 fc             	call   0x1156e
   1189d:	59                   	pop    cx
   1189e:	0b c0                	or     ax,ax
   118a0:	75 06                	jne    0x118a8
   118a2:	81 26 b4 92 ff fd    	and    WORD PTR ds:0x92b4,0xfdff
   118a8:	b8 00 02             	mov    ax,0x200
   118ab:	50                   	push   ax
   118ac:	f7 06 b4 92 00 02    	test   WORD PTR ds:0x92b4,0x200
   118b2:	74 05                	je     0x118b9
   118b4:	b8 02 00             	mov    ax,0x2
   118b7:	eb 02                	jmp    0x118bb
   118b9:	33 c0                	xor    ax,ax
   118bb:	50                   	push   ax
   118bc:	33 c0                	xor    ax,ax
   118be:	50                   	push   ax
   118bf:	50                   	push   ax
   118c0:	1e                   	push   ds
   118c1:	b8 b2 92             	mov    ax,0x92b2
   118c4:	50                   	push   ax
   118c5:	90                   	nop
   118c6:	0e                   	push   cs
   118c7:	e8 8f 2e             	call   0x14759
   118ca:	83 c4 0c             	add    sp,0xc
   118cd:	c3                   	ret
   118ce:	55                   	push   bp
   118cf:	8b ec                	mov    bp,sp
   118d1:	83 ec 08             	sub    sp,0x8
   118d4:	16                   	push   ss
   118d5:	8d 46 f8             	lea    ax,[bp-0x8]
   118d8:	50                   	push   ax
   118d9:	16                   	push   ss
   118da:	8d 46 fc             	lea    ax,[bp-0x4]
   118dd:	50                   	push   ax
   118de:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   118e1:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   118e5:	26 ff 37             	push   WORD PTR es:[bx]
   118e8:	90                   	nop
   118e9:	0e                   	push   cs
   118ea:	e8 c5 32             	call   0x14bb2
   118ed:	83 c4 0c             	add    sp,0xc
   118f0:	16                   	push   ss
   118f1:	8d 46 fc             	lea    ax,[bp-0x4]
   118f4:	50                   	push   ax
   118f5:	90                   	nop
   118f6:	0e                   	push   cs
   118f7:	e8 f4 fe             	call   0x117ee
   118fa:	59                   	pop    cx
   118fb:	59                   	pop    cx
   118fc:	16                   	push   ss
   118fd:	8d 46 f8             	lea    ax,[bp-0x8]
   11900:	50                   	push   ax
   11901:	90                   	nop
   11902:	0e                   	push   cs
   11903:	e8 fd fe             	call   0x11803
   11906:	59                   	pop    cx
   11907:	59                   	pop    cx
   11908:	33 c0                	xor    ax,ax
   1190a:	8b e5                	mov    sp,bp
   1190c:	5d                   	pop    bp
   1190d:	cb                   	retf
   1190e:	55                   	push   bp
   1190f:	8b ec                	mov    bp,sp
   11911:	83 ec 0c             	sub    sp,0xc
   11914:	16                   	push   ss
   11915:	8d 46 fc             	lea    ax,[bp-0x4]
   11918:	50                   	push   ax
   11919:	90                   	nop
   1191a:	0e                   	push   cs
   1191b:	e8 78 f9             	call   0x11296
   1191e:	59                   	pop    cx
   1191f:	59                   	pop    cx
   11920:	16                   	push   ss
   11921:	8d 46 f8             	lea    ax,[bp-0x8]
   11924:	50                   	push   ax
   11925:	90                   	nop
   11926:	0e                   	push   cs
   11927:	e8 7f f9             	call   0x112a9
   1192a:	59                   	pop    cx
   1192b:	59                   	pop    cx
   1192c:	16                   	push   ss
   1192d:	8d 46 f8             	lea    ax,[bp-0x8]
   11930:	50                   	push   ax
   11931:	16                   	push   ss
   11932:	8d 46 fc             	lea    ax,[bp-0x4]
   11935:	50                   	push   ax
   11936:	90                   	nop
   11937:	0e                   	push   cs
   11938:	e8 4d 31             	call   0x14a88
   1193b:	83 c4 08             	add    sp,0x8
   1193e:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   11941:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   11944:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   11947:	0b 46 08             	or     ax,WORD PTR [bp+0x8]
   1194a:	74 10                	je     0x1195c
   1194c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   1194f:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11952:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   11955:	26 89 47 02          	mov    WORD PTR es:[bx+0x2],ax
   11959:	26 89 17             	mov    WORD PTR es:[bx],dx
   1195c:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   1195f:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   11962:	8b e5                	mov    sp,bp
   11964:	5d                   	pop    bp
   11965:	cb                   	retf
