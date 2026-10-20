
analysis/phase-five/character-ui-20261015/otopark/overlay1662-original.bin:     file format binary


Disassembly of section .data:

000314a8 <.data+0x9078>:
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
   317ef:	6a                 	push   0x72
