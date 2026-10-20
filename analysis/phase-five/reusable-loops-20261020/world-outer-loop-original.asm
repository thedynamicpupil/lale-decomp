
analysis/phase-five/reusable-loops-20261020/world-outer-loop-original.bin:     file format binary


Disassembly of section .data:

0003a434 <.data>:
   3a434:	55                   	push   bp
   3a435:	8b ec                	mov    bp,sp
   3a437:	83 ec 2e             	sub    sp,0x2e
   3a43a:	b8 88 01             	mov    ax,0x188
   3a43d:	8e c0                	mov    es,ax
   3a43f:	26 a0 71 96          	mov    al,es:0x9671
   3a443:	50                   	push   ax
   3a444:	9a 69 00 30 00       	call   0x30:0x69
   3a449:	59                   	pop    cx
   3a44a:	b8 88 01             	mov    ax,0x188
   3a44d:	8e c0                	mov    es,ax
   3a44f:	26 a1 4a e7          	mov    ax,es:0xe74a
   3a453:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3a456:	b0 00                	mov    al,0x0
   3a458:	88 46 f1             	mov    BYTE PTR [bp-0xf],al
   3a45b:	88 46 f2             	mov    BYTE PTR [bp-0xe],al
   3a45e:	88 46 f3             	mov    BYTE PTR [bp-0xd],al
   3a461:	9a e3 01 40 00       	call   0x40:0x1e3
   3a466:	68 18 01             	push   0x118
   3a469:	68 84 00             	push   0x84
   3a46c:	9a a1 04 30 00       	call   0x30:0x4a1
   3a471:	83 c4 04             	add    sp,0x4
   3a474:	9a 45 2e 00 00       	call   0x0:0x2e45
   3a479:	0b c0                	or     ax,ax
   3a47b:	75 2e                	jne    0x3a4ab
   3a47d:	b8 88 01             	mov    ax,0x188
   3a480:	8e c0                	mov    es,ax
   3a482:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   3a488:	74 21                	je     0x3a4ab
   3a48a:	b8 88 01             	mov    ax,0x188
   3a48d:	8e c0                	mov    es,ax
   3a48f:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3a493:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   3a497:	75 12                	jne    0x3a4ab
   3a499:	b8 88 01             	mov    ax,0x188
   3a49c:	8e c0                	mov    es,ax
   3a49e:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3a4a2:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   3a4a6:	75 03                	jne    0x3a4ab
   3a4a8:	e9 64 12             	jmp    0x3b70f
   3a4ab:	0e                   	push   cs
   3a4ac:	e8 5d 8a             	call   0x32f0c
   3a4af:	b8 88 01             	mov    ax,0x188
   3a4b2:	8e c0                	mov    es,ax
   3a4b4:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3a4b8:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   3a4bc:	75 12                	jne    0x3a4d0
   3a4be:	b8 88 01             	mov    ax,0x188
   3a4c1:	8e c0                	mov    es,ax
   3a4c3:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3a4c7:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   3a4cb:	75 03                	jne    0x3a4d0
   3a4cd:	e9 e3 06             	jmp    0x3abb3
   3a4d0:	6a 01                	push   0x1
   3a4d2:	0e                   	push   cs
   3a4d3:	e8 37 b4             	call   0x3590d
   3a4d6:	59                   	pop    cx
   3a4d7:	68 b2 00             	push   0xb2
   3a4da:	68 c6 00             	push   0xc6
   3a4dd:	0e                   	push   cs
   3a4de:	e8 51 c7             	call   0x36c32
   3a4e1:	83 c4 04             	add    sp,0x4
   3a4e4:	b8 88 01             	mov    ax,0x188
   3a4e7:	8e c0                	mov    es,ax
   3a4e9:	26 83 3e f3 b9 00    	cmp    WORD PTR es:0xb9f3,0x0
   3a4ef:	7c 3b                	jl     0x3a52c
   3a4f1:	b8 88 01             	mov    ax,0x188
   3a4f4:	8e c0                	mov    es,ax
   3a4f6:	26 a0 eb b9          	mov    al,es:0xb9eb
   3a4fa:	b4 00                	mov    ah,0x0
   3a4fc:	ba 88 01             	mov    dx,0x188
   3a4ff:	8e c2                	mov    es,dx
   3a501:	26 3b 06 f3 b9       	cmp    ax,WORD PTR es:0xb9f3
   3a506:	7e 24                	jle    0x3a52c
   3a508:	b8 88 01             	mov    ax,0x188
   3a50b:	8e c0                	mov    es,ax
   3a50d:	26 83 3e f1 b9 00    	cmp    WORD PTR es:0xb9f1,0x0
   3a513:	7c 17                	jl     0x3a52c
   3a515:	b8 88 01             	mov    ax,0x188
   3a518:	8e c0                	mov    es,ax
   3a51a:	26 a0 ea b9          	mov    al,es:0xb9ea
   3a51e:	b4 00                	mov    ah,0x0
   3a520:	ba 88 01             	mov    dx,0x188
   3a523:	8e c2                	mov    es,dx
   3a525:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   3a52a:	7f 10                	jg     0x3a53c
   3a52c:	0e                   	push   cs
   3a52d:	e8 3c f0             	call   0x3956c
   3a530:	b8 88 01             	mov    ax,0x188
   3a533:	8e c0                	mov    es,ax
   3a535:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3a53c:	80 3e 38 bb 00       	cmp    BYTE PTR ds:0xbb38,0x0
   3a541:	74 77                	je     0x3a5ba
   3a543:	b8 88 01             	mov    ax,0x188
   3a546:	8e c0                	mov    es,ax
   3a548:	26 a0 eb b9          	mov    al,es:0xb9eb
   3a54c:	b4 00                	mov    ah,0x0
   3a54e:	ba 88 01             	mov    dx,0x188
   3a551:	8e c2                	mov    es,dx
   3a553:	50                   	push   ax
   3a554:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3a558:	5a                   	pop    dx
   3a559:	f7 ea                	imul   dx
   3a55b:	ba 88 01             	mov    dx,0x188
   3a55e:	8e c2                	mov    es,dx
   3a560:	50                   	push   ax
   3a561:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3a565:	5a                   	pop    dx
   3a566:	03 c2                	add    ax,dx
   3a568:	6b c0 0f             	imul   ax,ax,0xf
   3a56b:	05 09 00             	add    ax,0x9
   3a56e:	99                   	cwd
   3a56f:	bb 88 01             	mov    bx,0x188
   3a572:	8e c3                	mov    es,bx
   3a574:	50                   	push   ax
   3a575:	52                   	push   dx
   3a576:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   3a57b:	26 a1 ec b9          	mov    ax,es:0xb9ec
   3a57f:	59                   	pop    cx
   3a580:	5b                   	pop    bx
   3a581:	9a 77 14 00 00       	call   0x0:0x1477
   3a586:	8b d8                	mov    bx,ax
   3a588:	8e c2                	mov    es,dx
   3a58a:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3a58d:	b4 00                	mov    ah,0x0
   3a58f:	50                   	push   ax
   3a590:	9a 42 01 38 01       	call   0x138:0x142
   3a595:	59                   	pop    cx
   3a596:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3a599:	6a 40                	push   0x40
   3a59b:	6a 00                	push   0x0
   3a59d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a5a0:	6b db 11             	imul   bx,bx,0x11
   3a5a3:	b8 88 01             	mov    ax,0x188
   3a5a6:	6a 00                	push   0x0
   3a5a8:	8e c0                	mov    es,ax
   3a5aa:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   3a5af:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3a5b2:	9a 2d 19 10 00       	call   0x10:0x192d
   3a5b7:	83 c4 0a             	add    sp,0xa
   3a5ba:	a1 64 3d             	mov    ax,ds:0x3d64
   3a5bd:	bb 0a 00             	mov    bx,0xa
   3a5c0:	99                   	cwd
   3a5c1:	f7 fb                	idiv   bx
   3a5c3:	0b d2                	or     dx,dx
   3a5c5:	74 03                	je     0x3a5ca
   3a5c7:	e9 e1 05             	jmp    0x3abab
   3a5ca:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3a5cf:	e9 cc 05             	jmp    0x3ab9e
   3a5d2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a5d5:	6b db 5c             	imul   bx,bx,0x5c
   3a5d8:	b8 88 01             	mov    ax,0x188
   3a5db:	8e c0                	mov    es,ax
   3a5dd:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   3a5e3:	7f 03                	jg     0x3a5e8
   3a5e5:	e9 b3 05             	jmp    0x3ab9b
   3a5e8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a5eb:	6b db 5c             	imul   bx,bx,0x5c
   3a5ee:	b8 88 01             	mov    ax,0x188
   3a5f1:	8e c0                	mov    es,ax
   3a5f3:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a5f8:	bb 64 00             	mov    bx,0x64
   3a5fb:	99                   	cwd
   3a5fc:	f7 fb                	idiv   bx
   3a5fe:	ba 05 00             	mov    dx,0x5
   3a601:	2b d0                	sub    dx,ax
   3a603:	83 fa 01             	cmp    dx,0x1
   3a606:	7d 05                	jge    0x3a60d
   3a608:	b8 01 00             	mov    ax,0x1
   3a60b:	eb 1d                	jmp    0x3a62a
   3a60d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a610:	6b db 5c             	imul   bx,bx,0x5c
   3a613:	b8 88 01             	mov    ax,0x188
   3a616:	8e c0                	mov    es,ax
   3a618:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a61d:	bb 64 00             	mov    bx,0x64
   3a620:	99                   	cwd
   3a621:	f7 fb                	idiv   bx
   3a623:	50                   	push   ax
   3a624:	b8 05 00             	mov    ax,0x5
   3a627:	5a                   	pop    dx
   3a628:	2b c2                	sub    ax,dx
   3a62a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a62d:	6b db 5c             	imul   bx,bx,0x5c
   3a630:	ba 88 01             	mov    dx,0x188
   3a633:	8e c2                	mov    es,dx
   3a635:	26 8b 97 c8 99       	mov    dx,WORD PTR es:[bx-0x6638]
   3a63a:	03 d0                	add    dx,ax
   3a63c:	81 fa e8 03          	cmp    dx,0x3e8
   3a640:	7e 05                	jle    0x3a647
   3a642:	b8 e8 03             	mov    ax,0x3e8
   3a645:	eb 56                	jmp    0x3a69d
   3a647:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a64a:	6b db 5c             	imul   bx,bx,0x5c
   3a64d:	b8 88 01             	mov    ax,0x188
   3a650:	8e c0                	mov    es,ax
   3a652:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a657:	bb 64 00             	mov    bx,0x64
   3a65a:	99                   	cwd
   3a65b:	f7 fb                	idiv   bx
   3a65d:	ba 05 00             	mov    dx,0x5
   3a660:	2b d0                	sub    dx,ax
   3a662:	83 fa 01             	cmp    dx,0x1
   3a665:	7d 05                	jge    0x3a66c
   3a667:	b8 01 00             	mov    ax,0x1
   3a66a:	eb 1d                	jmp    0x3a689
   3a66c:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a66f:	6b db 5c             	imul   bx,bx,0x5c
   3a672:	b8 88 01             	mov    ax,0x188
   3a675:	8e c0                	mov    es,ax
   3a677:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a67c:	bb 64 00             	mov    bx,0x64
   3a67f:	99                   	cwd
   3a680:	f7 fb                	idiv   bx
   3a682:	50                   	push   ax
   3a683:	b8 05 00             	mov    ax,0x5
   3a686:	5a                   	pop    dx
   3a687:	2b c2                	sub    ax,dx
   3a689:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a68c:	6b db 5c             	imul   bx,bx,0x5c
   3a68f:	ba 88 01             	mov    dx,0x188
   3a692:	8e c2                	mov    es,dx
   3a694:	50                   	push   ax
   3a695:	26 8b 87 c8 99       	mov    ax,WORD PTR es:[bx-0x6638]
   3a69a:	5a                   	pop    dx
   3a69b:	03 c2                	add    ax,dx
   3a69d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6a0:	6b db 5c             	imul   bx,bx,0x5c
   3a6a3:	ba 88 01             	mov    dx,0x188
   3a6a6:	8e c2                	mov    es,dx
   3a6a8:	26 89 87 c8 99       	mov    WORD PTR es:[bx-0x6638],ax
   3a6ad:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6b0:	6b db 5c             	imul   bx,bx,0x5c
   3a6b3:	b8 88 01             	mov    ax,0x188
   3a6b6:	8e c0                	mov    es,ax
   3a6b8:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   3a6bd:	bb 02 00             	mov    bx,0x2
   3a6c0:	99                   	cwd
   3a6c1:	f7 fb                	idiv   bx
   3a6c3:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6c6:	6b db 5c             	imul   bx,bx,0x5c
   3a6c9:	ba 88 01             	mov    dx,0x188
   3a6cc:	8e c2                	mov    es,dx
   3a6ce:	50                   	push   ax
   3a6cf:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a6d4:	bb 64 00             	mov    bx,0x64
   3a6d7:	99                   	cwd
   3a6d8:	f7 fb                	idiv   bx
   3a6da:	5a                   	pop    dx
   3a6db:	2b d0                	sub    dx,ax
   3a6dd:	83 fa 01             	cmp    dx,0x1
   3a6e0:	7e 34                	jle    0x3a716
   3a6e2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6e5:	6b db 5c             	imul   bx,bx,0x5c
   3a6e8:	b8 88 01             	mov    ax,0x188
   3a6eb:	8e c0                	mov    es,ax
   3a6ed:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   3a6f2:	bb 02 00             	mov    bx,0x2
   3a6f5:	99                   	cwd
   3a6f6:	f7 fb                	idiv   bx
   3a6f8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6fb:	6b db 5c             	imul   bx,bx,0x5c
   3a6fe:	ba 88 01             	mov    dx,0x188
   3a701:	8e c2                	mov    es,dx
   3a703:	50                   	push   ax
   3a704:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a709:	bb 64 00             	mov    bx,0x64
   3a70c:	99                   	cwd
   3a70d:	f7 fb                	idiv   bx
   3a70f:	8b d0                	mov    dx,ax
   3a711:	58                   	pop    ax
   3a712:	2b c2                	sub    ax,dx
   3a714:	eb 03                	jmp    0x3a719
   3a716:	b8 01 00             	mov    ax,0x1
   3a719:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   3a71c:	6a 14                	push   0x14
   3a71e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a721:	05 18 00             	add    ax,0x18
   3a724:	50                   	push   ax
   3a725:	9a 93 00 38 01       	call   0x138:0x93
   3a72a:	83 c4 04             	add    sp,0x4
   3a72d:	0b c0                	or     ax,ax
   3a72f:	74 4a                	je     0x3a77b
   3a731:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a734:	6b db 5c             	imul   bx,bx,0x5c
   3a737:	b8 88 01             	mov    ax,0x188
   3a73a:	8e c0                	mov    es,ax
   3a73c:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a741:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   3a744:	6b d2 03             	imul   dx,dx,0x3
   3a747:	03 c2                	add    ax,dx
   3a749:	3d e8 03             	cmp    ax,0x3e8
   3a74c:	7e 05                	jle    0x3a753
   3a74e:	b8 e8 03             	mov    ax,0x3e8
   3a751:	eb 18                	jmp    0x3a76b
   3a753:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a756:	6b db 5c             	imul   bx,bx,0x5c
   3a759:	b8 88 01             	mov    ax,0x188
   3a75c:	8e c0                	mov    es,ax
   3a75e:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a763:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   3a766:	6b d2 03             	imul   dx,dx,0x3
   3a769:	03 c2                	add    ax,dx
   3a76b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a76e:	6b db 5c             	imul   bx,bx,0x5c
   3a771:	ba 88 01             	mov    dx,0x188
   3a774:	8e c2                	mov    es,dx
   3a776:	26 89 87 d0 99       	mov    WORD PTR es:[bx-0x6630],ax
   3a77b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a77e:	6b db 5c             	imul   bx,bx,0x5c
   3a781:	b8 88 01             	mov    ax,0x188
   3a784:	8e c0                	mov    es,ax
   3a786:	26 81 bf c8 99 f4 01 	cmp    WORD PTR es:[bx-0x6638],0x1f4
   3a78d:	7e 40                	jle    0x3a7cf
   3a78f:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a792:	6b db 5c             	imul   bx,bx,0x5c
   3a795:	b8 88 01             	mov    ax,0x188
   3a798:	8e c0                	mov    es,ax
   3a79a:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a79f:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   3a7a2:	3d e8 03             	cmp    ax,0x3e8
   3a7a5:	7e 05                	jle    0x3a7ac
   3a7a7:	b8 e8 03             	mov    ax,0x3e8
   3a7aa:	eb 13                	jmp    0x3a7bf
   3a7ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7af:	6b db 5c             	imul   bx,bx,0x5c
   3a7b2:	b8 88 01             	mov    ax,0x188
   3a7b5:	8e c0                	mov    es,ax
   3a7b7:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a7bc:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   3a7bf:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7c2:	6b db 5c             	imul   bx,bx,0x5c
   3a7c5:	ba 88 01             	mov    dx,0x188
   3a7c8:	8e c2                	mov    es,dx
   3a7ca:	26 89 87 d0 99       	mov    WORD PTR es:[bx-0x6630],ax
   3a7cf:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7d2:	6b db 5c             	imul   bx,bx,0x5c
   3a7d5:	b8 88 01             	mov    ax,0x188
   3a7d8:	8e c0                	mov    es,ax
   3a7da:	26 81 bf c8 99 e8 03 	cmp    WORD PTR es:[bx-0x6638],0x3e8
   3a7e1:	7d 03                	jge    0x3a7e6
   3a7e3:	e9 b5 03             	jmp    0x3ab9b
   3a7e6:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7e9:	6b db 5c             	imul   bx,bx,0x5c
   3a7ec:	b8 88 01             	mov    ax,0x188
   3a7ef:	8e c0                	mov    es,ax
   3a7f1:	26 83 bf c6 99 00    	cmp    WORD PTR es:[bx-0x663a],0x0
   3a7f7:	7f 03                	jg     0x3a7fc
   3a7f9:	e9 c0 00             	jmp    0x3a8bc
   3a7fc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7ff:	6b db 5c             	imul   bx,bx,0x5c
   3a802:	b8 88 01             	mov    ax,0x188
   3a805:	8e c0                	mov    es,ax
   3a807:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a80c:	bb 64 00             	mov    bx,0x64
   3a80f:	99                   	cwd
   3a810:	f7 fb                	idiv   bx
   3a812:	ba 05 00             	mov    dx,0x5
   3a815:	2b d0                	sub    dx,ax
   3a817:	83 fa 01             	cmp    dx,0x1
   3a81a:	7d 05                	jge    0x3a821
   3a81c:	b8 01 00             	mov    ax,0x1
   3a81f:	eb 1d                	jmp    0x3a83e
   3a821:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a824:	6b db 5c             	imul   bx,bx,0x5c
   3a827:	b8 88 01             	mov    ax,0x188
   3a82a:	8e c0                	mov    es,ax
   3a82c:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a831:	bb 64 00             	mov    bx,0x64
   3a834:	99                   	cwd
   3a835:	f7 fb                	idiv   bx
   3a837:	50                   	push   ax
   3a838:	b8 05 00             	mov    ax,0x5
   3a83b:	5a                   	pop    dx
   3a83c:	2b c2                	sub    ax,dx
   3a83e:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a841:	6b db 5c             	imul   bx,bx,0x5c
   3a844:	ba 88 01             	mov    dx,0x188
   3a847:	8e c2                	mov    es,dx
   3a849:	26 8b 97 c6 99       	mov    dx,WORD PTR es:[bx-0x663a]
   3a84e:	2b d0                	sub    dx,ax
   3a850:	7d 04                	jge    0x3a856
   3a852:	33 c0                	xor    ax,ax
   3a854:	eb 56                	jmp    0x3a8ac
   3a856:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a859:	6b db 5c             	imul   bx,bx,0x5c
   3a85c:	b8 88 01             	mov    ax,0x188
   3a85f:	8e c0                	mov    es,ax
   3a861:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a866:	bb 64 00             	mov    bx,0x64
   3a869:	99                   	cwd
   3a86a:	f7 fb                	idiv   bx
   3a86c:	ba 05 00             	mov    dx,0x5
   3a86f:	2b d0                	sub    dx,ax
   3a871:	83 fa 01             	cmp    dx,0x1
   3a874:	7d 05                	jge    0x3a87b
   3a876:	b8 01 00             	mov    ax,0x1
   3a879:	eb 1d                	jmp    0x3a898
   3a87b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a87e:	6b db 5c             	imul   bx,bx,0x5c
   3a881:	b8 88 01             	mov    ax,0x188
   3a884:	8e c0                	mov    es,ax
   3a886:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a88b:	bb 64 00             	mov    bx,0x64
   3a88e:	99                   	cwd
   3a88f:	f7 fb                	idiv   bx
   3a891:	50                   	push   ax
   3a892:	b8 05 00             	mov    ax,0x5
   3a895:	5a                   	pop    dx
   3a896:	2b c2                	sub    ax,dx
   3a898:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a89b:	6b db 5c             	imul   bx,bx,0x5c
   3a89e:	ba 88 01             	mov    dx,0x188
   3a8a1:	8e c2                	mov    es,dx
   3a8a3:	50                   	push   ax
   3a8a4:	26 8b 87 c6 99       	mov    ax,WORD PTR es:[bx-0x663a]
   3a8a9:	5a                   	pop    dx
   3a8aa:	2b c2                	sub    ax,dx
   3a8ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a8af:	6b db 5c             	imul   bx,bx,0x5c
   3a8b2:	ba 88 01             	mov    dx,0x188
   3a8b5:	8e c2                	mov    es,dx
   3a8b7:	26 89 87 c6 99       	mov    WORD PTR es:[bx-0x663a],ax
   3a8bc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a8bf:	6b db 5c             	imul   bx,bx,0x5c
   3a8c2:	b8 88 01             	mov    ax,0x188
   3a8c5:	8e c0                	mov    es,ax
   3a8c7:	26 83 bf c6 99 00    	cmp    WORD PTR es:[bx-0x663a],0x0
   3a8cd:	7e 36                	jle    0x3a905
   3a8cf:	a0 6c 3d             	mov    al,ds:0x3d6c
   3a8d2:	b4 00                	mov    ah,0x0
   3a8d4:	8a 4e fc             	mov    cl,BYTE PTR [bp-0x4]
   3a8d7:	80 c1 ff             	add    cl,0xff
   3a8da:	ba 01 00             	mov    dx,0x1
   3a8dd:	d3 e2                	shl    dx,cl
   3a8df:	85 c2                	test   dx,ax
   3a8e1:	75 22                	jne    0x3a905
   3a8e3:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3a8e6:	6a 00                	push   0x0
   3a8e8:	1e                   	push   ds
   3a8e9:	68 73 47             	push   0x4773
   3a8ec:	9a 48 29 10 00       	call   0x10:0x2948
   3a8f1:	83 c4 08             	add    sp,0x8
   3a8f4:	8a 4e fc             	mov    cl,BYTE PTR [bp-0x4]
   3a8f7:	80 c1 ff             	add    cl,0xff
   3a8fa:	b0 01                	mov    al,0x1
   3a8fc:	d2 e0                	shl    al,cl
   3a8fe:	08 06 6c 3d          	or     BYTE PTR ds:0x3d6c,al
   3a902:	e9 91 02             	jmp    0x3ab96
   3a905:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a908:	6b db 5c             	imul   bx,bx,0x5c
   3a90b:	b8 88 01             	mov    ax,0x188
   3a90e:	8e c0                	mov    es,ax
   3a910:	26 83 bf c6 99 00    	cmp    WORD PTR es:[bx-0x663a],0x0
   3a916:	7e 03                	jle    0x3a91b
   3a918:	e9 80 02             	jmp    0x3ab9b
   3a91b:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3a91e:	6a 00                	push   0x0
   3a920:	1e                   	push   ds
   3a921:	68 9c 47             	push   0x479c
   3a924:	9a 48 29 10 00       	call   0x10:0x2948
   3a929:	83 c4 08             	add    sp,0x8
   3a92c:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3a931:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a934:	6b db 5c             	imul   bx,bx,0x5c
   3a937:	b8 88 01             	mov    ax,0x188
   3a93a:	8e c0                	mov    es,ax
   3a93c:	26 c7 87 e0 99 fa ff 	mov    WORD PTR es:[bx-0x6620],0xfffa
   3a943:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a946:	6b db 5c             	imul   bx,bx,0x5c
   3a949:	b8 88 01             	mov    ax,0x188
   3a94c:	8e c0                	mov    es,ax
   3a94e:	26 83 bf b2 99 00    	cmp    WORD PTR es:[bx-0x664e],0x0
   3a954:	75 03                	jne    0x3a959
   3a956:	e9 03 01             	jmp    0x3aa5c
   3a959:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a95c:	6b db 5c             	imul   bx,bx,0x5c
   3a95f:	b8 88 01             	mov    ax,0x188
   3a962:	8e c0                	mov    es,ax
   3a964:	26 ff b7 e0 99       	push   WORD PTR es:[bx-0x6620]
   3a969:	1e                   	push   ds
   3a96a:	68 bd 47             	push   0x47bd
   3a96d:	16                   	push   ss
   3a96e:	8d 46 d2             	lea    ax,[bp-0x2e]
   3a971:	50                   	push   ax
   3a972:	9a b4 48 00 00       	call   0x0:0x48b4
   3a977:	83 c4 0a             	add    sp,0xa
   3a97a:	68 e0 01             	push   0x1e0
   3a97d:	68 d0 02             	push   0x2d0
   3a980:	6a 00                	push   0x0
   3a982:	6a 50                	push   0x50
   3a984:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a987:	6b c0 26             	imul   ax,ax,0x26
   3a98a:	05 1c 00             	add    ax,0x1c
   3a98d:	50                   	push   ax
   3a98e:	68 f2 00             	push   0xf2
   3a991:	6a 06                	push   0x6
   3a993:	6a 0e                	push   0xe
   3a995:	6a 1c                	push   0x1c
   3a997:	68 0e 01             	push   0x10e
   3a99a:	9a 30 04 28 00       	call   0x28:0x430
   3a99f:	83 c4 14             	add    sp,0x14
   3a9a2:	b8 02 00             	mov    ax,0x2
   3a9a5:	3d 01 00             	cmp    ax,0x1
   3a9a8:	74 08                	je     0x3a9b2
   3a9aa:	3d 02 00             	cmp    ax,0x2
   3a9ad:	74 5b                	je     0x3aa0a
   3a9af:	e9 aa 00             	jmp    0x3aa5c
   3a9b2:	6a 05                	push   0x5
   3a9b4:	b8 88 01             	mov    ax,0x188
   3a9b7:	8e c0                	mov    es,ax
   3a9b9:	26 a0 69 96          	mov    al,es:0x9669
   3a9bd:	b4 00                	mov    ah,0x0
   3a9bf:	50                   	push   ax
   3a9c0:	16                   	push   ss
   3a9c1:	8d 46 d2             	lea    ax,[bp-0x2e]
   3a9c4:	50                   	push   ax
   3a9c5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a9c8:	48                   	dec    ax
   3a9c9:	6b c0 26             	imul   ax,ax,0x26
   3a9cc:	05 1d 00             	add    ax,0x1d
   3a9cf:	50                   	push   ax
   3a9d0:	68 f3 00             	push   0xf3
   3a9d3:	6a 00                	push   0x0
   3a9d5:	9a 34 00 80 01       	call   0x180:0x34
   3a9da:	83 c4 0e             	add    sp,0xe
   3a9dd:	6a 05                	push   0x5
   3a9df:	b8 88 01             	mov    ax,0x188
   3a9e2:	8e c0                	mov    es,ax
   3a9e4:	26 a0 6a 96          	mov    al,es:0x966a
   3a9e8:	b4 00                	mov    ah,0x0
   3a9ea:	50                   	push   ax
   3a9eb:	16                   	push   ss
   3a9ec:	8d 46 d2             	lea    ax,[bp-0x2e]
   3a9ef:	50                   	push   ax
   3a9f0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a9f3:	48                   	dec    ax
   3a9f4:	6b c0 26             	imul   ax,ax,0x26
   3a9f7:	05 1c 00             	add    ax,0x1c
   3a9fa:	50                   	push   ax
   3a9fb:	68 f2 00             	push   0xf2
   3a9fe:	6a 00                	push   0x0
   3aa00:	9a 34 00 80 01       	call   0x180:0x34
   3aa05:	83 c4 0e             	add    sp,0xe
   3aa08:	eb 52                	jmp    0x3aa5c
   3aa0a:	b8 88 01             	mov    ax,0x188
   3aa0d:	8e c0                	mov    es,ax
   3aa0f:	26 a0 69 96          	mov    al,es:0x9669
   3aa13:	b4 00                	mov    ah,0x0
   3aa15:	50                   	push   ax
   3aa16:	16                   	push   ss
   3aa17:	8d 46 d2             	lea    ax,[bp-0x2e]
   3aa1a:	50                   	push   ax
   3aa1b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3aa1e:	48                   	dec    ax
   3aa1f:	6b c0 26             	imul   ax,ax,0x26
   3aa22:	05 1d 00             	add    ax,0x1d
   3aa25:	50                   	push   ax
   3aa26:	68 f2 00             	push   0xf2
   3aa29:	6a 00                	push   0x0
   3aa2b:	9a 39 00 80 01       	call   0x180:0x39
   3aa30:	83 c4 0c             	add    sp,0xc
   3aa33:	b8 88 01             	mov    ax,0x188
   3aa36:	8e c0                	mov    es,ax
   3aa38:	26 a0 6a 96          	mov    al,es:0x966a
   3aa3c:	b4 00                	mov    ah,0x0
   3aa3e:	50                   	push   ax
   3aa3f:	16                   	push   ss
   3aa40:	8d 46 d2             	lea    ax,[bp-0x2e]
   3aa43:	50                   	push   ax
   3aa44:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3aa47:	48                   	dec    ax
   3aa48:	6b c0 26             	imul   ax,ax,0x26
   3aa4b:	05 1c 00             	add    ax,0x1c
   3aa4e:	50                   	push   ax
   3aa4f:	68 f2 00             	push   0xf2
   3aa52:	6a 00                	push   0x0
   3aa54:	9a 39 00 80 01       	call   0x180:0x39
   3aa59:	83 c4 0c             	add    sp,0xc
   3aa5c:	b8 88 01             	mov    ax,0x188
   3aa5f:	8e c0                	mov    es,ax
   3aa61:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aa65:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3aa68:	b8 88 01             	mov    ax,0x188
   3aa6b:	8e c0                	mov    es,ax
   3aa6d:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aa71:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3aa74:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   3aa77:	50                   	push   ax
   3aa78:	9a c7 05 30 00       	call   0x30:0x5c7
   3aa7d:	59                   	pop    cx
   3aa7e:	0a c0                	or     al,al
   3aa80:	75 03                	jne    0x3aa85
   3aa82:	e9 d2 00             	jmp    0x3ab57
   3aa85:	9a 04 02 30 00       	call   0x30:0x204
   3aa8a:	e9 ca 00             	jmp    0x3ab57
   3aa8d:	e9 c7 00             	jmp    0x3ab57
   3aa90:	b8 88 01             	mov    ax,0x188
   3aa93:	8e c0                	mov    es,ax
   3aa95:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aa99:	2b 46 f4             	sub    ax,WORD PTR [bp-0xc]
   3aa9c:	3d 32 00             	cmp    ax,0x32
   3aa9f:	77 03                	ja     0x3aaa4
   3aaa1:	e9 b3 00             	jmp    0x3ab57
   3aaa4:	b8 88 01             	mov    ax,0x188
   3aaa7:	8e c0                	mov    es,ax
   3aaa9:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aaad:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3aab0:	6a 00                	push   0x0
   3aab2:	68 00 80             	push   0x8000
   3aab5:	9a 79 17 00 00       	call   0x0:0x1779
   3aaba:	99                   	cwd
   3aabb:	bb 88 01             	mov    bx,0x188
   3aabe:	8e c3                	mov    es,bx
   3aac0:	50                   	push   ax
   3aac1:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aac5:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   3aac8:	bb 2c 01             	mov    bx,0x12c
   3aacb:	52                   	push   dx
   3aacc:	33 d2                	xor    dx,dx
   3aace:	f7 f3                	div    bx
   3aad0:	50                   	push   ax
   3aad1:	b8 05 00             	mov    ax,0x5
   3aad4:	5a                   	pop    dx
   3aad5:	2b c2                	sub    ax,dx
   3aad7:	33 d2                	xor    dx,dx
   3aad9:	59                   	pop    cx
   3aada:	5b                   	pop    bx
   3aadb:	9a 42 12 00 00       	call   0x0:0x1242
   3aae0:	52                   	push   dx
   3aae1:	50                   	push   ax
   3aae2:	9a df 12 00 00       	call   0x0:0x12df
   3aae7:	0b c0                	or     ax,ax
   3aae9:	74 3e                	je     0x3ab29
   3aaeb:	68 e0 01             	push   0x1e0
   3aaee:	68 d0 02             	push   0x2d0
   3aaf1:	6a 00                	push   0x0
   3aaf3:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   3aaf6:	04 46                	add    al,0x46
   3aaf8:	50                   	push   ax
   3aaf9:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3aafc:	48                   	dec    ax
   3aafd:	f7 2e 45 bb          	imul   WORD PTR ds:0xbb45
   3ab01:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3ab05:	03 d0                	add    dx,ax
   3ab07:	52                   	push   dx
   3ab08:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3ab0b:	48                   	dec    ax
   3ab0c:	f7 2e 47 bb          	imul   WORD PTR ds:0xbb47
   3ab10:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3ab14:	03 d0                	add    dx,ax
   3ab16:	52                   	push   dx
   3ab17:	6a 20                	push   0x20
   3ab19:	6a 20                	push   0x20
   3ab1b:	6a 00                	push   0x0
   3ab1d:	6a 00                	push   0x0
   3ab1f:	9a 30 04 28 00       	call   0x28:0x430
   3ab24:	83 c4 14             	add    sp,0x14
   3ab27:	eb 2e                	jmp    0x3ab57
   3ab29:	6a 00                	push   0x0
   3ab2b:	6a 00                	push   0x0
   3ab2d:	6a 20                	push   0x20
   3ab2f:	6a 20                	push   0x20
   3ab31:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3ab34:	48                   	dec    ax
   3ab35:	f7 2e 45 bb          	imul   WORD PTR ds:0xbb45
   3ab39:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3ab3d:	03 d0                	add    dx,ax
   3ab3f:	52                   	push   dx
   3ab40:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3ab43:	48                   	dec    ax
   3ab44:	f7 2e 47 bb          	imul   WORD PTR ds:0xbb47
   3ab48:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3ab4c:	03 d0                	add    dx,ax
   3ab4e:	52                   	push   dx
   3ab4f:	9a 08 09 28 00       	call   0x28:0x908
   3ab54:	83 c4 0c             	add    sp,0xc
   3ab57:	9a 45 2e 00 00       	call   0x0:0x2e45
   3ab5c:	0b c0                	or     ax,ax
   3ab5e:	75 21                	jne    0x3ab81
   3ab60:	b8 88 01             	mov    ax,0x188
   3ab63:	8e c0                	mov    es,ax
   3ab65:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   3ab6b:	75 14                	jne    0x3ab81
   3ab6d:	b8 88 01             	mov    ax,0x188
   3ab70:	8e c0                	mov    es,ax
   3ab72:	26 a1 4a e7          	mov    ax,es:0xe74a
   3ab76:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   3ab79:	3d dc 05             	cmp    ax,0x5dc
   3ab7c:	73 03                	jae    0x3ab81
   3ab7e:	e9 0f ff             	jmp    0x3aa90
   3ab81:	b8 88 01             	mov    ax,0x188
   3ab84:	8e c0                	mov    es,ax
   3ab86:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3ab8b:	50                   	push   ax
   3ab8c:	9a 69 00 30 00       	call   0x30:0x69
   3ab91:	59                   	pop    cx
   3ab92:	0e                   	push   cs
   3ab93:	e8 e3 9f             	call   0x34b79
   3ab96:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3ab9b:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3ab9e:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   3aba2:	7f 03                	jg     0x3aba7
   3aba4:	e9 2b fa             	jmp    0x3a5d2
   3aba7:	0e                   	push   cs
   3aba8:	e8 ce 9f             	call   0x34b79
   3abab:	0e                   	push   cs
   3abac:	e8 2f b0             	call   0x35bde
   3abaf:	0e                   	push   cs
   3abb0:	e8 c9 9a             	call   0x3467c
   3abb3:	b8 88 01             	mov    ax,0x188
   3abb6:	8e c0                	mov    es,ax
   3abb8:	26 a0 05 3b          	mov    al,es:0x3b05
   3abbc:	b4 00                	mov    ah,0x0
   3abbe:	0b c0                	or     ax,ax
   3abc0:	75 1d                	jne    0x3abdf
   3abc2:	b8 88 01             	mov    ax,0x188
   3abc5:	8e c0                	mov    es,ax
   3abc7:	26 ff 36 c8 b9       	push   WORD PTR es:0xb9c8
   3abcc:	0e                   	push   cs
   3abcd:	e8 f6 7a             	call   0x326c6
   3abd0:	59                   	pop    cx
   3abd1:	b8 88 01             	mov    ax,0x188
   3abd4:	8e c0                	mov    es,ax
   3abd6:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3abdd:	eb 05                	jmp    0x3abe4
   3abdf:	9a 93 00 10 01       	call   0x110:0x93
   3abe4:	b8 88 01             	mov    ax,0x188
   3abe7:	8e c0                	mov    es,ax
   3abe9:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3abed:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   3abf1:	75 12                	jne    0x3ac05
   3abf3:	b8 88 01             	mov    ax,0x188
   3abf6:	8e c0                	mov    es,ax
   3abf8:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3abfc:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   3ac00:	75 03                	jne    0x3ac05
   3ac02:	e9 10 01             	jmp    0x3ad15
   3ac05:	0e                   	push   cs
   3ac06:	e8 70 9f             	call   0x34b79
   3ac09:	83 26 5e 3d fb       	and    WORD PTR ds:0x3d5e,0xfffb
   3ac0e:	eb 09                	jmp    0x3ac19
   3ac10:	83 26 5e 3d fb       	and    WORD PTR ds:0x3d5e,0xfffb
   3ac15:	0e                   	push   cs
   3ac16:	e8 60 9f             	call   0x34b79
   3ac19:	6a 02                	push   0x2
   3ac1b:	b8 88 01             	mov    ax,0x188
   3ac1e:	8e c0                	mov    es,ax
   3ac20:	26 a0 eb b9          	mov    al,es:0xb9eb
   3ac24:	b4 00                	mov    ah,0x0
   3ac26:	ba 88 01             	mov    dx,0x188
   3ac29:	8e c2                	mov    es,dx
   3ac2b:	50                   	push   ax
   3ac2c:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3ac30:	5a                   	pop    dx
   3ac31:	f7 ea                	imul   dx
   3ac33:	ba 88 01             	mov    dx,0x188
   3ac36:	8e c2                	mov    es,dx
   3ac38:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   3ac3d:	03 d0                	add    dx,ax
   3ac3f:	6b d2 0f             	imul   dx,dx,0xf
   3ac42:	52                   	push   dx
   3ac43:	9a 20 00 30 01       	call   0x130:0x20
   3ac48:	83 c4 04             	add    sp,0x4
   3ac4b:	0a c0                	or     al,al
   3ac4d:	75 c1                	jne    0x3ac10
   3ac4f:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   3ac53:	6b db 1d             	imul   bx,bx,0x1d
   3ac56:	b8 88 01             	mov    ax,0x188
   3ac59:	8e c0                	mov    es,ax
   3ac5b:	26 80 bf 4d 2e 00    	cmp    BYTE PTR es:[bx+0x2e4d],0x0
   3ac61:	74 1e                	je     0x3ac81
   3ac63:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   3ac67:	6b db 1d             	imul   bx,bx,0x1d
   3ac6a:	b8 88 01             	mov    ax,0x188
   3ac6d:	8e c0                	mov    es,ax
   3ac6f:	26 8a 87 4d 2e       	mov    al,BYTE PTR es:[bx+0x2e4d]
   3ac74:	b4 00                	mov    ah,0x0
   3ac76:	50                   	push   ax
   3ac77:	9a 2a 00 30 01       	call   0x130:0x2a
   3ac7c:	59                   	pop    cx
   3ac7d:	0a c0                	or     al,al
   3ac7f:	75 70                	jne    0x3acf1
   3ac81:	f7 06 5e 3d 08 00    	test   WORD PTR ds:0x3d5e,0x8
   3ac87:	74 35                	je     0x3acbe
   3ac89:	6a 00                	push   0x0
   3ac8b:	68 00 80             	push   0x8000
   3ac8e:	9a 79 17 00 00       	call   0x0:0x1779
   3ac93:	99                   	cwd
   3ac94:	50                   	push   ax
   3ac95:	52                   	push   dx
   3ac96:	33 d2                	xor    dx,dx
   3ac98:	b8 c8 00             	mov    ax,0xc8
   3ac9b:	59                   	pop    cx
   3ac9c:	5b                   	pop    bx
   3ac9d:	9a 42 12 00 00       	call   0x0:0x1242
   3aca2:	52                   	push   dx
   3aca3:	50                   	push   ax
   3aca4:	9a df 12 00 00       	call   0x0:0x12df
   3aca9:	40                   	inc    ax
   3acaa:	3b 06 86 ba          	cmp    ax,WORD PTR ds:0xba86
   3acae:	7f 06                	jg     0x3acb6
   3acb0:	c7 06 6a 3d 01 00    	mov    WORD PTR ds:0x3d6a,0x1
   3acb6:	c7 06 84 ba 00 00    	mov    WORD PTR ds:0xba84,0x0
   3acbc:	eb 33                	jmp    0x3acf1
   3acbe:	6a 00                	push   0x0
   3acc0:	68 00 80             	push   0x8000
   3acc3:	9a 79 17 00 00       	call   0x0:0x1779
   3acc8:	99                   	cwd
   3acc9:	50                   	push   ax
   3acca:	52                   	push   dx
   3accb:	33 d2                	xor    dx,dx
   3accd:	b8 2c 01             	mov    ax,0x12c
   3acd0:	59                   	pop    cx
   3acd1:	5b                   	pop    bx
   3acd2:	9a 42 12 00 00       	call   0x0:0x1242
   3acd7:	52                   	push   dx
   3acd8:	50                   	push   ax
   3acd9:	9a df 12 00 00       	call   0x0:0x12df
   3acde:	40                   	inc    ax
   3acdf:	3b 06 86 ba          	cmp    ax,WORD PTR ds:0xba86
   3ace3:	7f 06                	jg     0x3aceb
   3ace5:	c7 06 6a 3d 01 00    	mov    WORD PTR ds:0x3d6a,0x1
   3aceb:	c7 06 84 ba 01 00    	mov    WORD PTR ds:0xba84,0x1
   3acf1:	b8 88 01             	mov    ax,0x188
   3acf4:	8e c0                	mov    es,ax
   3acf6:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3acfa:	a3 51 bb             	mov    ds:0xbb51,ax
   3acfd:	b8 88 01             	mov    ax,0x188
   3ad00:	8e c0                	mov    es,ax
   3ad02:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3ad06:	a3 4f bb             	mov    ds:0xbb4f,ax
   3ad09:	b8 88 01             	mov    ax,0x188
   3ad0c:	8e c0                	mov    es,ax
   3ad0e:	26 c7 06 03 3b 00 00 	mov    WORD PTR es:0x3b03,0x0
   3ad15:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3ad1a:	eb 16                	jmp    0x3ad32
   3ad1c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3ad1f:	6b db 5c             	imul   bx,bx,0x5c
   3ad22:	b8 88 01             	mov    ax,0x188
   3ad25:	8e c0                	mov    es,ax
   3ad27:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   3ad2d:	7f 09                	jg     0x3ad38
   3ad2f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3ad32:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   3ad36:	7c e4                	jl     0x3ad1c
   3ad38:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   3ad3c:	75 11                	jne    0x3ad4f
   3ad3e:	9a 2f 00 28 01       	call   0x128:0x2f
   3ad43:	b8 88 01             	mov    ax,0x188
   3ad46:	8e c0                	mov    es,ax
   3ad48:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3ad4f:	68 9c 00             	push   0x9c
   3ad52:	9a 2a 00 30 01       	call   0x130:0x2a
   3ad57:	59                   	pop    cx
   3ad58:	0a c0                	or     al,al
   3ad5a:	74 05                	je     0x3ad61
   3ad5c:	9a 34 00 28 01       	call   0x128:0x34
   3ad61:	83 3e 6a 3d 00       	cmp    WORD PTR ds:0x3d6a,0x0
   3ad66:	75 03                	jne    0x3ad6b
   3ad68:	e9 a4 09             	jmp    0x3b70f
   3ad6b:	c7 06 6a 3d 00 00    	mov    WORD PTR ds:0x3d6a,0x0
   3ad71:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   3ad76:	e9 ad 02             	jmp    0x3b026
   3ad79:	83 3e 84 ba 02       	cmp    WORD PTR ds:0xba84,0x2
   3ad7e:	75 20                	jne    0x3ada0
   3ad80:	6a 00                	push   0x0
   3ad82:	68 00 80             	push   0x8000
   3ad85:	9a 79 17 00 00       	call   0x0:0x1779
   3ad8a:	99                   	cwd
   3ad8b:	d1 e0                	shl    ax,1
   3ad8d:	d1 d2                	rcl    dx,1
   3ad8f:	52                   	push   dx
   3ad90:	50                   	push   ax
   3ad91:	9a df 12 00 00       	call   0x0:0x12df
   3ad96:	0b c0                	or     ax,ax
   3ad98:	74 06                	je     0x3ada0
   3ad9a:	c7 06 84 ba 01 00    	mov    WORD PTR ds:0xba84,0x1
   3ada0:	83 3e 84 ba 02       	cmp    WORD PTR ds:0xba84,0x2
   3ada5:	7c 03                	jl     0x3adaa
   3ada7:	e9 a8 01             	jmp    0x3af52
   3adaa:	1e                   	push   ds
   3adab:	68 c1 47             	push   0x47c1
   3adae:	68 57 0c             	push   0xc57
   3adb1:	68 88 01             	push   0x188
   3adb4:	68 26 de             	push   0xde26
   3adb7:	9a 81 0a 20 00       	call   0x20:0xa81
   3adbc:	83 c4 0a             	add    sp,0xa
   3adbf:	b8 88 01             	mov    ax,0x188
   3adc2:	8e c0                	mov    es,ax
   3adc4:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   3adc9:	26 ff 37             	push   WORD PTR es:[bx]
   3adcc:	6a 00                	push   0x0
   3adce:	68 00 80             	push   0x8000
   3add1:	9a 79 17 00 00       	call   0x0:0x1779
   3add6:	99                   	cwd
   3add7:	b1 02                	mov    cl,0x2
   3add9:	9a 8d 13 00 00       	call   0x0:0x138d
   3adde:	52                   	push   dx
   3addf:	50                   	push   ax
   3ade0:	9a df 12 00 00       	call   0x0:0x12df
   3ade5:	8b 16 84 ba          	mov    dx,WORD PTR ds:0xba84
   3ade9:	c1 e2 02             	shl    dx,0x2
   3adec:	03 c2                	add    ax,dx
   3adee:	05 1d 00             	add    ax,0x1d
   3adf1:	99                   	cwd
   3adf2:	52                   	push   dx
   3adf3:	50                   	push   ax
   3adf4:	6a 01                	push   0x1
   3adf6:	9a 88 06 98 00       	call   0x98:0x688
   3adfb:	8b d8                	mov    bx,ax
   3adfd:	8e c2                	mov    es,dx
   3adff:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3ae02:	b4 00                	mov    ah,0x0
   3ae04:	ba 88 01             	mov    dx,0x188
   3ae07:	8e c2                	mov    es,dx
   3ae09:	26 a3 e0 5b          	mov    es:0x5be0,ax
   3ae0d:	68 88 01             	push   0x188
   3ae10:	68 26 de             	push   0xde26
   3ae13:	9a 22 0b 20 00       	call   0x20:0xb22
   3ae18:	83 c4 04             	add    sp,0x4
   3ae1b:	6a 00                	push   0x0
   3ae1d:	68 00 80             	push   0x8000
   3ae20:	9a 79 17 00 00       	call   0x0:0x1779
   3ae25:	99                   	cwd
   3ae26:	bb 88 01             	mov    bx,0x188
   3ae29:	8e c3                	mov    es,bx
   3ae2b:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3ae30:	6b db 06             	imul   bx,bx,0x6
   3ae33:	b9 88 01             	mov    cx,0x188
   3ae36:	8e c1                	mov    es,cx
   3ae38:	26 8a 9f 94 28       	mov    bl,BYTE PTR es:[bx+0x2894]
   3ae3d:	b7 00                	mov    bh,0x0
   3ae3f:	81 e3 f0 00          	and    bx,0xf0
   3ae43:	c1 fb 04             	sar    bx,0x4
   3ae46:	50                   	push   ax
   3ae47:	8b c3                	mov    ax,bx
   3ae49:	52                   	push   dx
   3ae4a:	99                   	cwd
   3ae4b:	59                   	pop    cx
   3ae4c:	5b                   	pop    bx
   3ae4d:	9a 42 12 00 00       	call   0x0:0x1242
   3ae52:	52                   	push   dx
   3ae53:	50                   	push   ax
   3ae54:	9a df 12 00 00       	call   0x0:0x12df
   3ae59:	ba 88 01             	mov    dx,0x188
   3ae5c:	8e c2                	mov    es,dx
   3ae5e:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3ae63:	6b db 06             	imul   bx,bx,0x6
   3ae66:	ba 88 01             	mov    dx,0x188
   3ae69:	8e c2                	mov    es,dx
   3ae6b:	26 8a 97 94 28       	mov    dl,BYTE PTR es:[bx+0x2894]
   3ae70:	b6 00                	mov    dh,0x0
   3ae72:	03 c2                	add    ax,dx
   3ae74:	25 0f 00             	and    ax,0xf
   3ae77:	ba 88 01             	mov    dx,0x188
   3ae7a:	8e c2                	mov    es,dx
   3ae7c:	26 a3 e2 5b          	mov    es:0x5be2,ax
   3ae80:	b8 88 01             	mov    ax,0x188
   3ae83:	8e c0                	mov    es,ax
   3ae85:	26 c7 06 de 5b 01 00 	mov    WORD PTR es:0x5bde,0x1
   3ae8c:	b8 88 01             	mov    ax,0x188
   3ae8f:	8e c0                	mov    es,ax
   3ae91:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3ae96:	6b db 06             	imul   bx,bx,0x6
   3ae99:	b8 88 01             	mov    ax,0x188
   3ae9c:	8e c0                	mov    es,ax
   3ae9e:	26 8a 87 99 28       	mov    al,BYTE PTR es:[bx+0x2899]
   3aea3:	b4 00                	mov    ah,0x0
   3aea5:	ba 88 01             	mov    dx,0x188
   3aea8:	8e c2                	mov    es,dx
   3aeaa:	26 a3 e6 5b          	mov    es:0x5be6,ax
   3aeae:	0b c0                	or     ax,ax
   3aeb0:	75 03                	jne    0x3aeb5
   3aeb2:	e9 98 00             	jmp    0x3af4d
   3aeb5:	6a 00                	push   0x0
   3aeb7:	68 00 80             	push   0x8000
   3aeba:	9a 79 17 00 00       	call   0x0:0x1779
   3aebf:	99                   	cwd
   3aec0:	50                   	push   ax
   3aec1:	52                   	push   dx
   3aec2:	33 d2                	xor    dx,dx
   3aec4:	b8 03 00             	mov    ax,0x3
   3aec7:	59                   	pop    cx
   3aec8:	5b                   	pop    bx
   3aec9:	9a 42 12 00 00       	call   0x0:0x1242
   3aece:	52                   	push   dx
   3aecf:	50                   	push   ax
   3aed0:	9a df 12 00 00       	call   0x0:0x12df
   3aed5:	0b c0                	or     ax,ax
   3aed7:	74 74                	je     0x3af4d
   3aed9:	6a 00                	push   0x0
   3aedb:	68 00 80             	push   0x8000
   3aede:	9a 79 17 00 00       	call   0x0:0x1779
   3aee3:	99                   	cwd
   3aee4:	bb 88 01             	mov    bx,0x188
   3aee7:	8e c3                	mov    es,bx
   3aee9:	26 8b 1e e6 5b       	mov    bx,WORD PTR es:0x5be6
   3aeee:	6b db 06             	imul   bx,bx,0x6
   3aef1:	b9 88 01             	mov    cx,0x188
   3aef4:	8e c1                	mov    es,cx
   3aef6:	26 8a 9f 94 28       	mov    bl,BYTE PTR es:[bx+0x2894]
   3aefb:	b7 00                	mov    bh,0x0
   3aefd:	81 e3 f0 00          	and    bx,0xf0
   3af01:	c1 fb 04             	sar    bx,0x4
   3af04:	50                   	push   ax
   3af05:	8b c3                	mov    ax,bx
   3af07:	52                   	push   dx
   3af08:	99                   	cwd
   3af09:	59                   	pop    cx
   3af0a:	5b                   	pop    bx
   3af0b:	9a 42 12 00 00       	call   0x0:0x1242
   3af10:	52                   	push   dx
   3af11:	50                   	push   ax
   3af12:	9a df 12 00 00       	call   0x0:0x12df
   3af17:	ba 88 01             	mov    dx,0x188
   3af1a:	8e c2                	mov    es,dx
   3af1c:	26 8b 1e e6 5b       	mov    bx,WORD PTR es:0x5be6
   3af21:	6b db 06             	imul   bx,bx,0x6
   3af24:	ba 88 01             	mov    dx,0x188
   3af27:	8e c2                	mov    es,dx
   3af29:	26 8a 97 94 28       	mov    dl,BYTE PTR es:[bx+0x2894]
   3af2e:	b6 00                	mov    dh,0x0
   3af30:	03 c2                	add    ax,dx
   3af32:	25 0f 00             	and    ax,0xf
   3af35:	ba 88 01             	mov    dx,0x188
   3af38:	8e c2                	mov    es,dx
   3af3a:	26 a3 e8 5b          	mov    es:0x5be8,ax
   3af3e:	b8 88 01             	mov    ax,0x188
   3af41:	8e c0                	mov    es,ax
   3af43:	26 c7 06 e4 5b 01 00 	mov    WORD PTR es:0x5be4,0x1
   3af4a:	e9 96 00             	jmp    0x3afe3
   3af4d:	eb 74                	jmp    0x3afc3
   3af4f:	e9 91 00             	jmp    0x3afe3
   3af52:	b8 88 01             	mov    ax,0x188
   3af55:	8e c0                	mov    es,ax
   3af57:	26 c7 06 e0 5b 1f 00 	mov    WORD PTR es:0x5be0,0x1f
   3af5e:	6a 00                	push   0x0
   3af60:	68 00 80             	push   0x8000
   3af63:	9a 79 17 00 00       	call   0x0:0x1779
   3af68:	99                   	cwd
   3af69:	bb 88 01             	mov    bx,0x188
   3af6c:	8e c3                	mov    es,bx
   3af6e:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3af73:	6b db 06             	imul   bx,bx,0x6
   3af76:	b9 88 01             	mov    cx,0x188
   3af79:	8e c1                	mov    es,cx
   3af7b:	26 8a 9f 94 28       	mov    bl,BYTE PTR es:[bx+0x2894]
   3af80:	b7 00                	mov    bh,0x0
   3af82:	81 e3 f0 00          	and    bx,0xf0
   3af86:	c1 fb 04             	sar    bx,0x4
   3af89:	50                   	push   ax
   3af8a:	8b c3                	mov    ax,bx
   3af8c:	52                   	push   dx
   3af8d:	99                   	cwd
   3af8e:	59                   	pop    cx
   3af8f:	5b                   	pop    bx
   3af90:	9a 42 12 00 00       	call   0x0:0x1242
   3af95:	52                   	push   dx
   3af96:	50                   	push   ax
   3af97:	9a df 12 00 00       	call   0x0:0x12df
   3af9c:	ba 88 01             	mov    dx,0x188
   3af9f:	8e c2                	mov    es,dx
   3afa1:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3afa6:	6b db 06             	imul   bx,bx,0x6
   3afa9:	ba 88 01             	mov    dx,0x188
   3afac:	8e c2                	mov    es,dx
   3afae:	26 8a 97 94 28       	mov    dl,BYTE PTR es:[bx+0x2894]
   3afb3:	b6 00                	mov    dh,0x0
   3afb5:	03 c2                	add    ax,dx
   3afb7:	25 0f 00             	and    ax,0xf
   3afba:	ba 88 01             	mov    dx,0x188
   3afbd:	8e c2                	mov    es,dx
   3afbf:	26 a3 e2 5b          	mov    es:0x5be2,ax
   3afc3:	b8 88 01             	mov    ax,0x188
   3afc6:	33 d2                	xor    dx,dx
   3afc8:	8e c0                	mov    es,ax
   3afca:	26 89 16 e8 5b       	mov    WORD PTR es:0x5be8,dx
   3afcf:	8b c2                	mov    ax,dx
   3afd1:	ba 88 01             	mov    dx,0x188
   3afd4:	8e c2                	mov    es,dx
   3afd6:	26 a3 e6 5b          	mov    es:0x5be6,ax
   3afda:	ba 88 01             	mov    dx,0x188
   3afdd:	8e c2                	mov    es,dx
   3afdf:	26 a3 e4 5b          	mov    es:0x5be4,ax
   3afe3:	b8 88 01             	mov    ax,0x188
   3afe6:	33 d2                	xor    dx,dx
   3afe8:	8e c0                	mov    es,ax
   3afea:	26 89 16 ee 5b       	mov    WORD PTR es:0x5bee,dx
   3afef:	8b c2                	mov    ax,dx
   3aff1:	ba 88 01             	mov    dx,0x188
   3aff4:	8e c2                	mov    es,dx
   3aff6:	26 a3 ec 5b          	mov    es:0x5bec,ax
   3affa:	ba 88 01             	mov    dx,0x188
   3affd:	8e c2                	mov    es,dx
   3afff:	26 a3 ea 5b          	mov    es:0x5bea,ax
   3b003:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b008:	eb 16                	jmp    0x3b020
   3b00a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b00d:	6b db 06             	imul   bx,bx,0x6
   3b010:	b8 88 01             	mov    ax,0x188
   3b013:	8e c0                	mov    es,ax
   3b015:	26 83 bf da 5b 00    	cmp    WORD PTR es:[bx+0x5bda],0x0
   3b01b:	75 09                	jne    0x3b026
   3b01d:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b020:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b024:	7d e4                	jge    0x3b00a
   3b026:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   3b02a:	75 03                	jne    0x3b02f
   3b02c:	e9 4a fd             	jmp    0x3ad79
   3b02f:	6a 01                	push   0x1
   3b031:	b8 88 01             	mov    ax,0x188
   3b034:	8e c0                	mov    es,ax
   3b036:	26 a0 e0 5b          	mov    al,es:0x5be0
   3b03a:	50                   	push   ax
   3b03b:	9a 39 00 30 01       	call   0x130:0x39
   3b040:	83 c4 04             	add    sp,0x4
   3b043:	6a 01                	push   0x1
   3b045:	0e                   	push   cs
   3b046:	e8 ee b8             	call   0x36937
   3b049:	59                   	pop    cx
   3b04a:	52                   	push   dx
   3b04b:	50                   	push   ax
   3b04c:	68 88 01             	push   0x188
   3b04f:	68 cc ba             	push   0xbacc
   3b052:	9a 7a 53 00 00       	call   0x0:0x537a
   3b057:	83 c4 08             	add    sp,0x8
   3b05a:	52                   	push   dx
   3b05b:	50                   	push   ax
   3b05c:	9a cc 49 00 00       	call   0x0:0x49cc
   3b061:	83 c4 04             	add    sp,0x4
   3b064:	3d 68 00             	cmp    ax,0x68
   3b067:	72 15                	jb     0x3b07e
   3b069:	6a 4e                	push   0x4e
   3b06b:	6a 00                	push   0x0
   3b06d:	6a 00                	push   0x0
   3b06f:	68 6e 0c             	push   0xc6e
   3b072:	1e                   	push   ds
   3b073:	68 d0 47             	push   0x47d0
   3b076:	9a 2a 00 58 01       	call   0x158:0x2a
   3b07b:	83 c4 0c             	add    sp,0xc
   3b07e:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b083:	eb 63                	jmp    0x3b0e8
   3b085:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b088:	6b db 06             	imul   bx,bx,0x6
   3b08b:	b8 88 01             	mov    ax,0x188
   3b08e:	8e c0                	mov    es,ax
   3b090:	26 8b 87 da 5b       	mov    ax,WORD PTR es:[bx+0x5bda]
   3b095:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b098:	6b db 06             	imul   bx,bx,0x6
   3b09b:	ba 88 01             	mov    dx,0x188
   3b09e:	8e c2                	mov    es,dx
   3b0a0:	26 89 87 f2 5b       	mov    WORD PTR es:[bx+0x5bf2],ax
   3b0a5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0a8:	6b db 06             	imul   bx,bx,0x6
   3b0ab:	b8 88 01             	mov    ax,0x188
   3b0ae:	8e c0                	mov    es,ax
   3b0b0:	26 8b 87 dc 5b       	mov    ax,WORD PTR es:[bx+0x5bdc]
   3b0b5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0b8:	6b db 06             	imul   bx,bx,0x6
   3b0bb:	ba 88 01             	mov    dx,0x188
   3b0be:	8e c2                	mov    es,dx
   3b0c0:	26 89 87 f4 5b       	mov    WORD PTR es:[bx+0x5bf4],ax
   3b0c5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0c8:	6b db 06             	imul   bx,bx,0x6
   3b0cb:	b8 88 01             	mov    ax,0x188
   3b0ce:	8e c0                	mov    es,ax
   3b0d0:	26 8b 87 d8 5b       	mov    ax,WORD PTR es:[bx+0x5bd8]
   3b0d5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0d8:	6b db 06             	imul   bx,bx,0x6
   3b0db:	ba 88 01             	mov    dx,0x188
   3b0de:	8e c2                	mov    es,dx
   3b0e0:	26 89 87 f0 5b       	mov    WORD PTR es:[bx+0x5bf0],ax
   3b0e5:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b0e8:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b0ec:	7d 97                	jge    0x3b085
   3b0ee:	6a 00                	push   0x0
   3b0f0:	6a 01                	push   0x1
   3b0f2:	68 88 01             	push   0x188
   3b0f5:	68 cc ba             	push   0xbacc
   3b0f8:	9a 48 29 10 00       	call   0x10:0x2948
   3b0fd:	83 c4 08             	add    sp,0x8
   3b100:	6a 3c                	push   0x3c
   3b102:	9a ca 2d 10 00       	call   0x10:0x2dca
   3b107:	59                   	pop    cx
   3b108:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3b10d:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b112:	e9 f5 00             	jmp    0x3b20a
   3b115:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b118:	6b db 06             	imul   bx,bx,0x6
   3b11b:	b8 88 01             	mov    ax,0x188
   3b11e:	8e c0                	mov    es,ax
   3b120:	26 8b 87 f2 5b       	mov    ax,WORD PTR es:[bx+0x5bf2]
   3b125:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b128:	6b db 06             	imul   bx,bx,0x6
   3b12b:	ba 88 01             	mov    dx,0x188
   3b12e:	8e c2                	mov    es,dx
   3b130:	26 3b 87 da 5b       	cmp    ax,WORD PTR es:[bx+0x5bda]
   3b135:	75 47                	jne    0x3b17e
   3b137:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b13a:	6b db 06             	imul   bx,bx,0x6
   3b13d:	b8 88 01             	mov    ax,0x188
   3b140:	8e c0                	mov    es,ax
   3b142:	26 8b 87 f4 5b       	mov    ax,WORD PTR es:[bx+0x5bf4]
   3b147:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b14a:	6b db 06             	imul   bx,bx,0x6
   3b14d:	ba 88 01             	mov    dx,0x188
   3b150:	8e c2                	mov    es,dx
   3b152:	26 3b 87 dc 5b       	cmp    ax,WORD PTR es:[bx+0x5bdc]
   3b157:	75 25                	jne    0x3b17e
   3b159:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b15c:	6b db 06             	imul   bx,bx,0x6
   3b15f:	b8 88 01             	mov    ax,0x188
   3b162:	8e c0                	mov    es,ax
   3b164:	26 8b 87 f0 5b       	mov    ax,WORD PTR es:[bx+0x5bf0]
   3b169:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b16c:	6b db 06             	imul   bx,bx,0x6
   3b16f:	ba 88 01             	mov    dx,0x188
   3b172:	8e c2                	mov    es,dx
   3b174:	26 3b 87 d8 5b       	cmp    ax,WORD PTR es:[bx+0x5bd8]
   3b179:	75 03                	jne    0x3b17e
   3b17b:	e9 89 00             	jmp    0x3b207
   3b17e:	6a 03                	push   0x3
   3b180:	9a 1e 34 00 00       	call   0x0:0x341e
   3b185:	59                   	pop    cx
   3b186:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b18b:	eb 6f                	jmp    0x3b1fc
   3b18d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b190:	6b db 06             	imul   bx,bx,0x6
   3b193:	b8 88 01             	mov    ax,0x188
   3b196:	8e c0                	mov    es,ax
   3b198:	26 ff b7 d8 5b       	push   WORD PTR es:[bx+0x5bd8]
   3b19d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1a0:	6b db 06             	imul   bx,bx,0x6
   3b1a3:	b8 88 01             	mov    ax,0x188
   3b1a6:	8e c0                	mov    es,ax
   3b1a8:	26 ff b7 f0 5b       	push   WORD PTR es:[bx+0x5bf0]
   3b1ad:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1b0:	6b db 06             	imul   bx,bx,0x6
   3b1b3:	b8 88 01             	mov    ax,0x188
   3b1b6:	8e c0                	mov    es,ax
   3b1b8:	26 ff b7 dc 5b       	push   WORD PTR es:[bx+0x5bdc]
   3b1bd:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1c0:	6b db 06             	imul   bx,bx,0x6
   3b1c3:	b8 88 01             	mov    ax,0x188
   3b1c6:	8e c0                	mov    es,ax
   3b1c8:	26 ff b7 f4 5b       	push   WORD PTR es:[bx+0x5bf4]
   3b1cd:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1d0:	6b db 06             	imul   bx,bx,0x6
   3b1d3:	b8 88 01             	mov    ax,0x188
   3b1d6:	8e c0                	mov    es,ax
   3b1d8:	26 ff b7 da 5b       	push   WORD PTR es:[bx+0x5bda]
   3b1dd:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1e0:	6b db 06             	imul   bx,bx,0x6
   3b1e3:	b8 88 01             	mov    ax,0x188
   3b1e6:	8e c0                	mov    es,ax
   3b1e8:	26 ff b7 f2 5b       	push   WORD PTR es:[bx+0x5bf2]
   3b1ed:	1e                   	push   ds
   3b1ee:	68 df 47             	push   0x47df
   3b1f1:	9a 53 42 00 00       	call   0x0:0x4253
   3b1f6:	83 c4 10             	add    sp,0x10
   3b1f9:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b1fc:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b200:	7d 8b                	jge    0x3b18d
   3b202:	9a d7 29 00 00       	call   0x0:0x29d7
   3b207:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b20a:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b20e:	7c 03                	jl     0x3b213
   3b210:	e9 02 ff             	jmp    0x3b115
   3b213:	9a 66 00 10 01       	call   0x110:0x66
   3b218:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b21d:	e9 f5 00             	jmp    0x3b315
   3b220:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b223:	6b db 06             	imul   bx,bx,0x6
   3b226:	b8 88 01             	mov    ax,0x188
   3b229:	8e c0                	mov    es,ax
   3b22b:	26 8b 87 f2 5b       	mov    ax,WORD PTR es:[bx+0x5bf2]
   3b230:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b233:	6b db 06             	imul   bx,bx,0x6
   3b236:	ba 88 01             	mov    dx,0x188
   3b239:	8e c2                	mov    es,dx
   3b23b:	26 3b 87 da 5b       	cmp    ax,WORD PTR es:[bx+0x5bda]
   3b240:	75 47                	jne    0x3b289
   3b242:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b245:	6b db 06             	imul   bx,bx,0x6
   3b248:	b8 88 01             	mov    ax,0x188
   3b24b:	8e c0                	mov    es,ax
   3b24d:	26 8b 87 f4 5b       	mov    ax,WORD PTR es:[bx+0x5bf4]
   3b252:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b255:	6b db 06             	imul   bx,bx,0x6
   3b258:	ba 88 01             	mov    dx,0x188
   3b25b:	8e c2                	mov    es,dx
   3b25d:	26 3b 87 dc 5b       	cmp    ax,WORD PTR es:[bx+0x5bdc]
   3b262:	75 25                	jne    0x3b289
   3b264:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b267:	6b db 06             	imul   bx,bx,0x6
   3b26a:	b8 88 01             	mov    ax,0x188
   3b26d:	8e c0                	mov    es,ax
   3b26f:	26 8b 87 f0 5b       	mov    ax,WORD PTR es:[bx+0x5bf0]
   3b274:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b277:	6b db 06             	imul   bx,bx,0x6
   3b27a:	ba 88 01             	mov    dx,0x188
   3b27d:	8e c2                	mov    es,dx
   3b27f:	26 3b 87 d8 5b       	cmp    ax,WORD PTR es:[bx+0x5bd8]
   3b284:	75 03                	jne    0x3b289
   3b286:	e9 89 00             	jmp    0x3b312
   3b289:	6a 03                	push   0x3
   3b28b:	9a 1e 34 00 00       	call   0x0:0x341e
   3b290:	59                   	pop    cx
   3b291:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b296:	eb 6f                	jmp    0x3b307
   3b298:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b29b:	6b db 06             	imul   bx,bx,0x6
   3b29e:	b8 88 01             	mov    ax,0x188
   3b2a1:	8e c0                	mov    es,ax
   3b2a3:	26 ff b7 d8 5b       	push   WORD PTR es:[bx+0x5bd8]
   3b2a8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2ab:	6b db 06             	imul   bx,bx,0x6
   3b2ae:	b8 88 01             	mov    ax,0x188
   3b2b1:	8e c0                	mov    es,ax
   3b2b3:	26 ff b7 f0 5b       	push   WORD PTR es:[bx+0x5bf0]
   3b2b8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2bb:	6b db 06             	imul   bx,bx,0x6
   3b2be:	b8 88 01             	mov    ax,0x188
   3b2c1:	8e c0                	mov    es,ax
   3b2c3:	26 ff b7 dc 5b       	push   WORD PTR es:[bx+0x5bdc]
   3b2c8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2cb:	6b db 06             	imul   bx,bx,0x6
   3b2ce:	b8 88 01             	mov    ax,0x188
   3b2d1:	8e c0                	mov    es,ax
   3b2d3:	26 ff b7 f4 5b       	push   WORD PTR es:[bx+0x5bf4]
   3b2d8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2db:	6b db 06             	imul   bx,bx,0x6
   3b2de:	b8 88 01             	mov    ax,0x188
   3b2e1:	8e c0                	mov    es,ax
   3b2e3:	26 ff b7 da 5b       	push   WORD PTR es:[bx+0x5bda]
   3b2e8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2eb:	6b db 06             	imul   bx,bx,0x6
   3b2ee:	b8 88 01             	mov    ax,0x188
   3b2f1:	8e c0                	mov    es,ax
   3b2f3:	26 ff b7 f2 5b       	push   WORD PTR es:[bx+0x5bf2]
   3b2f8:	1e                   	push   ds
   3b2f9:	68 27 48             	push   0x4827
   3b2fc:	9a 53 42 00 00       	call   0x0:0x4253
   3b301:	83 c4 10             	add    sp,0x10
   3b304:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b307:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b30b:	7d 8b                	jge    0x3b298
   3b30d:	9a d7 29 00 00       	call   0x0:0x29d7
   3b312:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b315:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b319:	7c 03                	jl     0x3b31e
   3b31b:	e9 02 ff             	jmp    0x3b220
   3b31e:	b8 88 01             	mov    ax,0x188
   3b321:	8e c0                	mov    es,ax
   3b323:	26 a1 1a 73          	mov    ax,es:0x731a
   3b327:	f7 d8                	neg    ax
   3b329:	50                   	push   ax
   3b32a:	b8 88 01             	mov    ax,0x188
   3b32d:	8e c0                	mov    es,ax
   3b32f:	26 a1 18 73          	mov    ax,es:0x7318
   3b333:	f7 d8                	neg    ax
   3b335:	50                   	push   ax
   3b336:	68 e8 03             	push   0x3e8
   3b339:	9a 3f 07 30 00       	call   0x30:0x73f
   3b33e:	83 c4 06             	add    sp,0x6
   3b341:	b8 88 01             	mov    ax,0x188
   3b344:	8e c0                	mov    es,ax
   3b346:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3b34c:	74 34                	je     0x3b382
   3b34e:	9a 96 12 68 00       	call   0x68:0x1296
   3b353:	a1 75 bb             	mov    ax,ds:0xbb75
   3b356:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   3b35a:	74 26                	je     0x3b382
   3b35c:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3b360:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   3b364:	9a 03 00 80 00       	call   0x80:0x3
   3b369:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3b36d:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   3b371:	9a da 00 58 00       	call   0x58:0xda
   3b376:	c7 06 77 bb 00 00    	mov    WORD PTR ds:0xbb77,0x0
   3b37c:	c7 06 75 bb 00 00    	mov    WORD PTR ds:0xbb75,0x0
   3b382:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b387:	e9 f5 00             	jmp    0x3b47f
   3b38a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b38d:	6b db 06             	imul   bx,bx,0x6
   3b390:	b8 88 01             	mov    ax,0x188
   3b393:	8e c0                	mov    es,ax
   3b395:	26 8b 87 f2 5b       	mov    ax,WORD PTR es:[bx+0x5bf2]
   3b39a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b39d:	6b db 06             	imul   bx,bx,0x6
   3b3a0:	ba 88 01             	mov    dx,0x188
   3b3a3:	8e c2                	mov    es,dx
   3b3a5:	26 3b 87 da 5b       	cmp    ax,WORD PTR es:[bx+0x5bda]
   3b3aa:	75 47                	jne    0x3b3f3
   3b3ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3af:	6b db 06             	imul   bx,bx,0x6
   3b3b2:	b8 88 01             	mov    ax,0x188
   3b3b5:	8e c0                	mov    es,ax
   3b3b7:	26 8b 87 f4 5b       	mov    ax,WORD PTR es:[bx+0x5bf4]
   3b3bc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3bf:	6b db 06             	imul   bx,bx,0x6
   3b3c2:	ba 88 01             	mov    dx,0x188
   3b3c5:	8e c2                	mov    es,dx
   3b3c7:	26 3b 87 dc 5b       	cmp    ax,WORD PTR es:[bx+0x5bdc]
   3b3cc:	75 25                	jne    0x3b3f3
   3b3ce:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3d1:	6b db 06             	imul   bx,bx,0x6
   3b3d4:	b8 88 01             	mov    ax,0x188
   3b3d7:	8e c0                	mov    es,ax
   3b3d9:	26 8b 87 f0 5b       	mov    ax,WORD PTR es:[bx+0x5bf0]
   3b3de:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3e1:	6b db 06             	imul   bx,bx,0x6
   3b3e4:	ba 88 01             	mov    dx,0x188
   3b3e7:	8e c2                	mov    es,dx
   3b3e9:	26 3b 87 d8 5b       	cmp    ax,WORD PTR es:[bx+0x5bd8]
   3b3ee:	75 03                	jne    0x3b3f3
   3b3f0:	e9 89 00             	jmp    0x3b47c
   3b3f3:	6a 03                	push   0x3
   3b3f5:	9a 1e 34 00 00       	call   0x0:0x341e
   3b3fa:	59                   	pop    cx
   3b3fb:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b400:	eb 6f                	jmp    0x3b471
   3b402:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b405:	6b db 06             	imul   bx,bx,0x6
   3b408:	b8 88 01             	mov    ax,0x188
   3b40b:	8e c0                	mov    es,ax
   3b40d:	26 ff b7 d8 5b       	push   WORD PTR es:[bx+0x5bd8]
   3b412:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b415:	6b db 06             	imul   bx,bx,0x6
   3b418:	b8 88 01             	mov    ax,0x188
   3b41b:	8e c0                	mov    es,ax
   3b41d:	26 ff b7 f0 5b       	push   WORD PTR es:[bx+0x5bf0]
   3b422:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b425:	6b db 06             	imul   bx,bx,0x6
   3b428:	b8 88 01             	mov    ax,0x188
   3b42b:	8e c0                	mov    es,ax
   3b42d:	26 ff b7 dc 5b       	push   WORD PTR es:[bx+0x5bdc]
   3b432:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b435:	6b db 06             	imul   bx,bx,0x6
   3b438:	b8 88 01             	mov    ax,0x188
   3b43b:	8e c0                	mov    es,ax
   3b43d:	26 ff b7 f4 5b       	push   WORD PTR es:[bx+0x5bf4]
   3b442:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b445:	6b db 06             	imul   bx,bx,0x6
   3b448:	b8 88 01             	mov    ax,0x188
   3b44b:	8e c0                	mov    es,ax
   3b44d:	26 ff b7 da 5b       	push   WORD PTR es:[bx+0x5bda]
   3b452:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b455:	6b db 06             	imul   bx,bx,0x6
   3b458:	b8 88 01             	mov    ax,0x188
   3b45b:	8e c0                	mov    es,ax
   3b45d:	26 ff b7 f2 5b       	push   WORD PTR es:[bx+0x5bf2]
   3b462:	1e                   	push   ds
   3b463:	68 6f 48             	push   0x486f
   3b466:	9a 53 42 00 00       	call   0x0:0x4253
   3b46b:	83 c4 10             	add    sp,0x10
   3b46e:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b471:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b475:	7d 8b                	jge    0x3b402
   3b477:	9a d7 29 00 00       	call   0x0:0x29d7
   3b47c:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b47f:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b483:	7c 03                	jl     0x3b488
   3b485:	e9 02 ff             	jmp    0x3b38a
   3b488:	b8 88 01             	mov    ax,0x188
   3b48b:	8e c0                	mov    es,ax
   3b48d:	26 c7 06 2e 63 00 00 	mov    WORD PTR es:0x632e,0x0
   3b494:	9a 38 01 38 01       	call   0x138:0x138
   3b499:	6a 00                	push   0x0
   3b49b:	ff 36 6b bb          	push   WORD PTR ds:0xbb6b
   3b49f:	0e                   	push   cs
   3b4a0:	e8 94 83             	call   0x33837
   3b4a3:	83 c4 04             	add    sp,0x4
   3b4a6:	0e                   	push   cs
   3b4a7:	e8 87 8f             	call   0x34431
   3b4aa:	b8 88 01             	mov    ax,0x188
   3b4ad:	8e c0                	mov    es,ax
   3b4af:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3b4b6:	b8 88 01             	mov    ax,0x188
   3b4b9:	8e c0                	mov    es,ax
   3b4bb:	26 83 3e 2e 63 02    	cmp    WORD PTR es:0x632e,0x2
   3b4c1:	75 14                	jne    0x3b4d7
   3b4c3:	9a 2f 00 28 01       	call   0x128:0x2f
   3b4c8:	b8 88 01             	mov    ax,0x188
   3b4cb:	8e c0                	mov    es,ax
   3b4cd:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3b4d4:	e9 04 02             	jmp    0x3b6db
   3b4d7:	b8 88 01             	mov    ax,0x188
   3b4da:	33 d2                	xor    dx,dx
   3b4dc:	8e c0                	mov    es,ax
   3b4de:	26 89 16 a6 bb       	mov    WORD PTR es:0xbba6,dx
   3b4e3:	8b c2                	mov    ax,dx
   3b4e5:	ba 88 01             	mov    dx,0x188
   3b4e8:	8e c2                	mov    es,dx
   3b4ea:	26 a3 a4 bb          	mov    es:0xbba4,ax
   3b4ee:	ba 88 01             	mov    dx,0x188
   3b4f1:	8e c2                	mov    es,dx
   3b4f3:	26 a3 a2 bb          	mov    es:0xbba2,ax
   3b4f7:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3b4fc:	e9 47 01             	jmp    0x3b646
   3b4ff:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b502:	6b db 06             	imul   bx,bx,0x6
   3b505:	b8 88 01             	mov    ax,0x188
   3b508:	8e c0                	mov    es,ax
   3b50a:	26 83 bf d8 5b 00    	cmp    WORD PTR es:[bx+0x5bd8],0x0
   3b510:	75 03                	jne    0x3b515
   3b512:	e9 2e 01             	jmp    0x3b643
   3b515:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b518:	6b db 06             	imul   bx,bx,0x6
   3b51b:	b8 88 01             	mov    ax,0x188
   3b51e:	8e c0                	mov    es,ax
   3b520:	26 83 bf da 5b 64    	cmp    WORD PTR es:[bx+0x5bda],0x64
   3b526:	7c 03                	jl     0x3b52b
   3b528:	e9 18 01             	jmp    0x3b643
   3b52b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b52e:	6b db 06             	imul   bx,bx,0x6
   3b531:	b8 88 01             	mov    ax,0x188
   3b534:	8e c0                	mov    es,ax
   3b536:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b53b:	6b db 06             	imul   bx,bx,0x6
   3b53e:	b8 88 01             	mov    ax,0x188
   3b541:	ba 94 28             	mov    dx,0x2894
   3b544:	42                   	inc    dx
   3b545:	03 da                	add    bx,dx
   3b547:	8e c0                	mov    es,ax
   3b549:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3b54c:	b4 00                	mov    ah,0x0
   3b54e:	a3 57 bb             	mov    ds:0xbb57,ax
   3b551:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b554:	6b db 06             	imul   bx,bx,0x6
   3b557:	b8 88 01             	mov    ax,0x188
   3b55a:	8e c0                	mov    es,ax
   3b55c:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b561:	6b db 06             	imul   bx,bx,0x6
   3b564:	b8 88 01             	mov    ax,0x188
   3b567:	ba 94 28             	mov    dx,0x2894
   3b56a:	83 c2 02             	add    dx,0x2
   3b56d:	03 da                	add    bx,dx
   3b56f:	8e c0                	mov    es,ax
   3b571:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3b574:	b4 00                	mov    ah,0x0
   3b576:	a3 59 bb             	mov    ds:0xbb59,ax
   3b579:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b57c:	6b db 06             	imul   bx,bx,0x6
   3b57f:	b8 88 01             	mov    ax,0x188
   3b582:	8e c0                	mov    es,ax
   3b584:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b589:	6b db 06             	imul   bx,bx,0x6
   3b58c:	b8 88 01             	mov    ax,0x188
   3b58f:	ba 94 28             	mov    dx,0x2894
   3b592:	83 c2 03             	add    dx,0x3
   3b595:	03 da                	add    bx,dx
   3b597:	8e c0                	mov    es,ax
   3b599:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3b59c:	b4 00                	mov    ah,0x0
   3b59e:	a3 5b bb             	mov    ds:0xbb5b,ax
   3b5a1:	6a 00                	push   0x0
   3b5a3:	68 00 80             	push   0x8000
   3b5a6:	9a 79 17 00 00       	call   0x0:0x1779
   3b5ab:	99                   	cwd
   3b5ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b5af:	6b db 06             	imul   bx,bx,0x6
   3b5b2:	b9 88 01             	mov    cx,0x188
   3b5b5:	8e c1                	mov    es,cx
   3b5b7:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b5bc:	6b db 06             	imul   bx,bx,0x6
   3b5bf:	b9 88 01             	mov    cx,0x188
   3b5c2:	8e c1                	mov    es,cx
   3b5c4:	26 8a 9f 98 28       	mov    bl,BYTE PTR es:[bx+0x2898]
   3b5c9:	b7 00                	mov    bh,0x0
   3b5cb:	81 e3 f0 00          	and    bx,0xf0
   3b5cf:	c1 fb 04             	sar    bx,0x4
   3b5d2:	50                   	push   ax
   3b5d3:	8b c3                	mov    ax,bx
   3b5d5:	52                   	push   dx
   3b5d6:	99                   	cwd
   3b5d7:	59                   	pop    cx
   3b5d8:	5b                   	pop    bx
   3b5d9:	9a 42 12 00 00       	call   0x0:0x1242
   3b5de:	52                   	push   dx
   3b5df:	50                   	push   ax
   3b5e0:	9a df 12 00 00       	call   0x0:0x12df
   3b5e5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b5e8:	6b db 06             	imul   bx,bx,0x6
   3b5eb:	ba 88 01             	mov    dx,0x188
   3b5ee:	8e c2                	mov    es,dx
   3b5f0:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b5f5:	6b db 06             	imul   bx,bx,0x6
   3b5f8:	ba 88 01             	mov    dx,0x188
   3b5fb:	b9 94 28             	mov    cx,0x2894
   3b5fe:	83 c1 04             	add    cx,0x4
   3b601:	03 d9                	add    bx,cx
   3b603:	8e c2                	mov    es,dx
   3b605:	26 8a 17             	mov    dl,BYTE PTR es:[bx]
   3b608:	b6 00                	mov    dh,0x0
   3b60a:	03 c2                	add    ax,dx
   3b60c:	25 0f 00             	and    ax,0xf
   3b60f:	ba 88 01             	mov    dx,0x188
   3b612:	8e c2                	mov    es,dx
   3b614:	26 a3 a6 bb          	mov    es:0xbba6,ax
   3b618:	6a 00                	push   0x0
   3b61a:	68 00 80             	push   0x8000
   3b61d:	9a 79 17 00 00       	call   0x0:0x1779
   3b622:	99                   	cwd
   3b623:	d1 e0                	shl    ax,1
   3b625:	d1 d2                	rcl    dx,1
   3b627:	52                   	push   dx
   3b628:	50                   	push   ax
   3b629:	9a df 12 00 00       	call   0x0:0x12df
   3b62e:	0b c0                	or     ax,ax
   3b630:	74 11                	je     0x3b643
   3b632:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b635:	d1 e3                	shl    bx,1
   3b637:	b8 88 01             	mov    ax,0x188
   3b63a:	8e c0                	mov    es,ax
   3b63c:	26 c7 87 55 bb 00 00 	mov    WORD PTR es:[bx-0x44ab],0x0
   3b643:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b646:	83 7e fc 03          	cmp    WORD PTR [bp-0x4],0x3
   3b64a:	7f 03                	jg     0x3b64f
   3b64c:	e9 b0 fe             	jmp    0x3b4ff
   3b64f:	b8 88 01             	mov    ax,0x188
   3b652:	8e c0                	mov    es,ax
   3b654:	26 83 3e a6 bb 00    	cmp    WORD PTR es:0xbba6,0x0
   3b65a:	75 15                	jne    0x3b671
   3b65c:	83 3e 57 bb 00       	cmp    WORD PTR ds:0xbb57,0x0
   3b661:	75 0e                	jne    0x3b671
   3b663:	83 3e 59 bb 00       	cmp    WORD PTR ds:0xbb59,0x0
   3b668:	75 07                	jne    0x3b671
   3b66a:	83 3e 5b bb 00       	cmp    WORD PTR ds:0xbb5b,0x0
   3b66f:	74 08                	je     0x3b679
   3b671:	6a 00                	push   0x0
   3b673:	9a 6b 00 30 01       	call   0x130:0x6b
   3b678:	59                   	pop    cx
   3b679:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3b67e:	eb 55                	jmp    0x3b6d5
   3b680:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   3b685:	eb 1c                	jmp    0x3b6a3
   3b687:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3b68a:	6b db 28             	imul   bx,bx,0x28
   3b68d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b690:	d1 e0                	shl    ax,1
   3b692:	03 d8                	add    bx,ax
   3b694:	b8 88 01             	mov    ax,0x188
   3b697:	8e c0                	mov    es,ax
   3b699:	26 c7 87 88 a0 00 00 	mov    WORD PTR es:[bx-0x5f78],0x0
   3b6a0:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   3b6a3:	83 7e f8 1d          	cmp    WORD PTR [bp-0x8],0x1d
   3b6a7:	7c de                	jl     0x3b687
   3b6a9:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   3b6ae:	eb 1c                	jmp    0x3b6cc
   3b6b0:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3b6b3:	6b db 2e             	imul   bx,bx,0x2e
   3b6b6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b6b9:	d1 e0                	shl    ax,1
   3b6bb:	03 d8                	add    bx,ax
   3b6bd:	b8 88 01             	mov    ax,0x188
   3b6c0:	8e c0                	mov    es,ax
   3b6c2:	26 c7 87 18 9f 00 00 	mov    WORD PTR es:[bx-0x60e8],0x0
   3b6c9:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   3b6cc:	83 7e f8 08          	cmp    WORD PTR [bp-0x8],0x8
   3b6d0:	7c de                	jl     0x3b6b0
   3b6d2:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b6d5:	83 7e fc 14          	cmp    WORD PTR [bp-0x4],0x14
   3b6d9:	7c a5                	jl     0x3b680
   3b6db:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3b6e0:	eb 27                	jmp    0x3b709
   3b6e2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b6e5:	6b db 06             	imul   bx,bx,0x6
   3b6e8:	b8 88 01             	mov    ax,0x188
   3b6eb:	33 d2                	xor    dx,dx
   3b6ed:	8e c0                	mov    es,ax
   3b6ef:	26 89 97 dc 5b       	mov    WORD PTR es:[bx+0x5bdc],dx
   3b6f4:	8b c2                	mov    ax,dx
   3b6f6:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b6f9:	6b db 06             	imul   bx,bx,0x6
   3b6fc:	ba 88 01             	mov    dx,0x188
   3b6ff:	8e c2                	mov    es,dx
   3b701:	26 89 87 da 5b       	mov    WORD PTR es:[bx+0x5bda],ax
   3b706:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b709:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   3b70d:	7c d3                	jl     0x3b6e2
   3b70f:	b8 88 01             	mov    ax,0x188
   3b712:	8e c0                	mov    es,ax
   3b714:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   3b719:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   3b71e:	b8 88 01             	mov    ax,0x188
   3b721:	8e c0                	mov    es,ax
   3b723:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
   3b728:	83 c4 04             	add    sp,0x4
   3b72b:	8a 46 f2             	mov    al,BYTE PTR [bp-0xe]
   3b72e:	b4 00                	mov    ah,0x0
   3b730:	05 f4 01             	add    ax,0x1f4
   3b733:	ba 88 01             	mov    dx,0x188
   3b736:	8e c2                	mov    es,dx
   3b738:	26 8b 16 4a e7       	mov    dx,WORD PTR es:0xe74a
   3b73d:	2b 56 f6             	sub    dx,WORD PTR [bp-0xa]
   3b740:	3b c2                	cmp    ax,dx
   3b742:	72 03                	jb     0x3b747
   3b744:	e9 80 00             	jmp    0x3b7c7
   3b747:	80 7e f3 00          	cmp    BYTE PTR [bp-0xd],0x0
   3b74b:	74 7a                	je     0x3b7c7
   3b74d:	c6 46 f3 00          	mov    BYTE PTR [bp-0xd],0x0
   3b751:	b8 88 01             	mov    ax,0x188
   3b754:	8e c0                	mov    es,ax
   3b756:	26 a1 4a e7          	mov    ax,es:0xe74a
   3b75a:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3b75d:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b760:	fe c0                	inc    al
   3b762:	50                   	push   ax
   3b763:	9a c7 05 30 00       	call   0x30:0x5c7
   3b768:	59                   	pop    cx
   3b769:	0a c0                	or     al,al
   3b76b:	74 05                	je     0x3b772
   3b76d:	9a 04 02 30 00       	call   0x30:0x204
   3b772:	68 e0 01             	push   0x1e0
   3b775:	68 d0 02             	push   0x2d0
   3b778:	6a 00                	push   0x0
   3b77a:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b77d:	04 47                	add    al,0x47
   3b77f:	50                   	push   ax
   3b780:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b783:	b4 00                	mov    ah,0x0
   3b785:	50                   	push   ax
   3b786:	a1 45 bb             	mov    ax,ds:0xbb45
   3b789:	5a                   	pop    dx
   3b78a:	f7 ea                	imul   dx
   3b78c:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3b790:	03 d0                	add    dx,ax
   3b792:	52                   	push   dx
   3b793:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b796:	b4 00                	mov    ah,0x0
   3b798:	50                   	push   ax
   3b799:	a1 47 bb             	mov    ax,ds:0xbb47
   3b79c:	5a                   	pop    dx
   3b79d:	f7 ea                	imul   dx
   3b79f:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3b7a3:	03 d0                	add    dx,ax
   3b7a5:	52                   	push   dx
   3b7a6:	6a 20                	push   0x20
   3b7a8:	6a 20                	push   0x20
   3b7aa:	6a 00                	push   0x0
   3b7ac:	6a 00                	push   0x0
   3b7ae:	9a 30 04 28 00       	call   0x28:0x430
   3b7b3:	83 c4 14             	add    sp,0x14
   3b7b6:	b8 88 01             	mov    ax,0x188
   3b7b9:	8e c0                	mov    es,ax
   3b7bb:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3b7c0:	50                   	push   ax
   3b7c1:	9a 69 00 30 00       	call   0x30:0x69
   3b7c6:	59                   	pop    cx
   3b7c7:	b8 88 01             	mov    ax,0x188
   3b7ca:	8e c0                	mov    es,ax
   3b7cc:	26 a1 4a e7          	mov    ax,es:0xe74a
   3b7d0:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   3b7d3:	3d e8 03             	cmp    ax,0x3e8
   3b7d6:	77 03                	ja     0x3b7db
   3b7d8:	e9 8b ec             	jmp    0x3a466
   3b7db:	8a 46 f3             	mov    al,BYTE PTR [bp-0xd]
   3b7de:	b4 00                	mov    ah,0x0
   3b7e0:	0b c0                	or     ax,ax
   3b7e2:	74 03                	je     0x3b7e7
   3b7e4:	e9 7f ec             	jmp    0x3a466
   3b7e7:	b8 88 01             	mov    ax,0x188
   3b7ea:	8e c0                	mov    es,ax
   3b7ec:	26 a1 4a e7          	mov    ax,es:0xe74a
   3b7f0:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3b7f3:	6a 00                	push   0x0
   3b7f5:	68 00 80             	push   0x8000
   3b7f8:	9a 79 17 00 00       	call   0x0:0x1779
   3b7fd:	99                   	cwd
   3b7fe:	50                   	push   ax
   3b7ff:	52                   	push   dx
   3b800:	33 d2                	xor    dx,dx
   3b802:	b8 14 00             	mov    ax,0x14
   3b805:	59                   	pop    cx
   3b806:	5b                   	pop    bx
   3b807:	9a 42 12 00 00       	call   0x0:0x1242
   3b80c:	52                   	push   dx
   3b80d:	50                   	push   ax
   3b80e:	9a df 12 00 00       	call   0x0:0x12df
   3b813:	0b c0                	or     ax,ax
   3b815:	74 03                	je     0x3b81a
   3b817:	e9 4c ec             	jmp    0x3a466
   3b81a:	c6 46 f3 01          	mov    BYTE PTR [bp-0xd],0x1
   3b81e:	6a 00                	push   0x0
   3b820:	68 00 80             	push   0x8000
   3b823:	9a 79 17 00 00       	call   0x0:0x1779
   3b828:	99                   	cwd
   3b829:	50                   	push   ax
   3b82a:	52                   	push   dx
   3b82b:	33 d2                	xor    dx,dx
   3b82d:	b8 f4 01             	mov    ax,0x1f4
   3b830:	59                   	pop    cx
   3b831:	5b                   	pop    bx
   3b832:	9a 42 12 00 00       	call   0x0:0x1242
   3b837:	52                   	push   dx
   3b838:	50                   	push   ax
   3b839:	9a df 12 00 00       	call   0x0:0x12df
   3b83e:	88 46 f2             	mov    BYTE PTR [bp-0xe],al
   3b841:	6a 00                	push   0x0
   3b843:	68 00 80             	push   0x8000
   3b846:	9a 79 17 00 00       	call   0x0:0x1779
   3b84b:	99                   	cwd
   3b84c:	b1 02                	mov    cl,0x2
   3b84e:	9a 8d 13 00 00       	call   0x0:0x138d
   3b853:	52                   	push   dx
   3b854:	50                   	push   ax
   3b855:	9a df 12 00 00       	call   0x0:0x12df
   3b85a:	88 46 f1             	mov    BYTE PTR [bp-0xf],al
   3b85d:	b4 00                	mov    ah,0x0
   3b85f:	6b c0 5c             	imul   ax,ax,0x5c
   3b862:	ba 88 01             	mov    dx,0x188
   3b865:	8b d8                	mov    bx,ax
   3b867:	8e c2                	mov    es,dx
   3b869:	26 83 bf 3c 9a 00    	cmp    WORD PTR es:[bx-0x65c4],0x0
   3b86f:	7f 53                	jg     0x3b8c4
   3b871:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b874:	b4 00                	mov    ah,0x0
   3b876:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3b879:	eb 1e                	jmp    0x3b899
   3b87b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b87e:	bb 04 00             	mov    bx,0x4
   3b881:	99                   	cwd
   3b882:	f7 fb                	idiv   bx
   3b884:	6b d2 5c             	imul   dx,dx,0x5c
   3b887:	b8 88 01             	mov    ax,0x188
   3b88a:	8b da                	mov    bx,dx
   3b88c:	8e c0                	mov    es,ax
   3b88e:	26 83 bf 3c 9a 00    	cmp    WORD PTR es:[bx-0x65c4],0x0
   3b894:	7f 10                	jg     0x3b8a6
   3b896:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b899:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b89c:	b4 00                	mov    ah,0x0
   3b89e:	05 04 00             	add    ax,0x4
   3b8a1:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   3b8a4:	7f d5                	jg     0x3b87b
   3b8a6:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8a9:	b4 00                	mov    ah,0x0
   3b8ab:	05 04 00             	add    ax,0x4
   3b8ae:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   3b8b1:	75 05                	jne    0x3b8b8
   3b8b3:	9a 2f 00 28 01       	call   0x128:0x2f
   3b8b8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b8bb:	bb 04 00             	mov    bx,0x4
   3b8be:	99                   	cwd
   3b8bf:	f7 fb                	idiv   bx
   3b8c1:	88 56 f1             	mov    BYTE PTR [bp-0xf],dl
   3b8c4:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8c7:	fe c0                	inc    al
   3b8c9:	50                   	push   ax
   3b8ca:	9a c7 05 30 00       	call   0x30:0x5c7
   3b8cf:	59                   	pop    cx
   3b8d0:	0a c0                	or     al,al
   3b8d2:	74 05                	je     0x3b8d9
   3b8d4:	9a 04 02 30 00       	call   0x30:0x204
   3b8d9:	68 e0 01             	push   0x1e0
   3b8dc:	68 d0 02             	push   0x2d0
   3b8df:	6a 00                	push   0x0
   3b8e1:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8e4:	04 47                	add    al,0x47
   3b8e6:	50                   	push   ax
   3b8e7:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8ea:	b4 00                	mov    ah,0x0
   3b8ec:	50                   	push   ax
   3b8ed:	a1 45 bb             	mov    ax,ds:0xbb45
   3b8f0:	5a                   	pop    dx
   3b8f1:	f7 ea                	imul   dx
   3b8f3:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3b8f7:	03 d0                	add    dx,ax
   3b8f9:	52                   	push   dx
   3b8fa:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8fd:	b4 00                	mov    ah,0x0
   3b8ff:	50                   	push   ax
   3b900:	a1 47 bb             	mov    ax,ds:0xbb47
   3b903:	5a                   	pop    dx
   3b904:	f7 ea                	imul   dx
   3b906:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3b90a:	03 d0                	add    dx,ax
   3b90c:	52                   	push   dx
   3b90d:	6a 20                	push   0x20
   3b90f:	6a 20                	push   0x20
   3b911:	6a 00                	push   0x0
   3b913:	6a 00                	push   0x0
   3b915:	68 00 80             	push   0x8000
   3b918:	9a 79 17 00 00       	call   0x0:0x1779
   3b91d:	99                   	cwd
   3b91e:	50                   	push   ax
   3b91f:	52                   	push   dx
   3b920:	33 d2                	xor    dx,dx
   3b922:	b8 03 00             	mov    ax,0x3
   3b925:	59                   	pop    cx
   3b926:	5b                   	pop    bx
   3b927:	9a 42 12 00 00       	call   0x0:0x1242
   3b92c:	52                   	push   dx
   3b92d:	50                   	push   ax
   3b92e:	9a df 12 00 00       	call   0x0:0x12df
   3b933:	40                   	inc    ax
   3b934:	c1 e0 05             	shl    ax,0x5
   3b937:	50                   	push   ax
   3b938:	9a 30 04 28 00       	call   0x28:0x430
   3b93d:	83 c4 14             	add    sp,0x14
   3b940:	b8 88 01             	mov    ax,0x188
   3b943:	8e c0                	mov    es,ax
   3b945:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3b94a:	50                   	push   ax
   3b94b:	9a 69 00 30 00       	call   0x30:0x69
   3b950:	59                   	pop    cx
   3b951:	e9 12 eb             	jmp    0x3a466
   3b954:	e9 0f eb             	jmp    0x3a466
   3b957:	c9                   	leave
   3b958:	cb                   	retf
