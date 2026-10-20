
analysis/phase-five/first-combat-20261020/battle-redraw-original.bin:     file format binary


Disassembly of section .data:

0004c371 <.data>:
   4c371:	55                   	push   bp
   4c372:	8b ec                	mov    bp,sp
   4c374:	83 ec 1e             	sub    sp,0x1e
   4c377:	b8 88 01             	mov    ax,0x188
   4c37a:	8e c0                	mov    es,ax
   4c37c:	26 a0 72 96          	mov    al,es:0x9672
   4c380:	ba 88 01             	mov    dx,0x188
   4c383:	8e c2                	mov    es,dx
   4c385:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4c38a:	74 03                	je     0x4c38f
   4c38c:	e9 3a 05             	jmp    0x4c8c9
   4c38f:	b8 88 01             	mov    ax,0x188
   4c392:	8e c0                	mov    es,ax
   4c394:	26 ff 36 d1 e2       	push   WORD PTR es:0xe2d1
   4c399:	26 ff 36 cf e2       	push   WORD PTR es:0xe2cf
   4c39e:	b8 88 01             	mov    ax,0x188
   4c3a1:	8e c0                	mov    es,ax
   4c3a3:	26 ff 36 a9 e2       	push   WORD PTR es:0xe2a9
   4c3a8:	26 ff 36 a7 e2       	push   WORD PTR es:0xe2a7
   4c3ad:	9a 8a 06 20 00       	call   0x20:0x68a
   4c3b2:	83 c4 08             	add    sp,0x8
   4c3b5:	a1 7e d5             	mov    ax,ds:0xd57e
   4c3b8:	a3 c8 d5             	mov    ds:0xd5c8,ax
   4c3bb:	e9 a3 03             	jmp    0x4c761
   4c3be:	a1 80 d5             	mov    ax,ds:0xd580
   4c3c1:	05 06 00             	add    ax,0x6
   4c3c4:	a3 ca d5             	mov    ds:0xd5ca,ax
   4c3c7:	e9 87 03             	jmp    0x4c751
   4c3ca:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c3ce:	6b db 38             	imul   bx,bx,0x38
   4c3d1:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c3d4:	d1 e0                	shl    ax,1
   4c3d6:	03 d8                	add    bx,ax
   4c3d8:	8b 87 ee c8          	mov    ax,WORD PTR [bx-0x3712]
   4c3dc:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4c3df:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c3e3:	6b db 38             	imul   bx,bx,0x38
   4c3e6:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c3e9:	d1 e0                	shl    ax,1
   4c3eb:	03 d8                	add    bx,ax
   4c3ed:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4c3f1:	a3 cc d5             	mov    ds:0xd5cc,ax
   4c3f4:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c3f7:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4c3fa:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c3fe:	6b db 38             	imul   bx,bx,0x38
   4c401:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c404:	d1 e0                	shl    ax,1
   4c406:	03 d8                	add    bx,ax
   4c408:	8b 87 06 c3          	mov    ax,WORD PTR [bx-0x3cfa]
   4c40c:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4c40f:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c413:	6b db 38             	imul   bx,bx,0x38
   4c416:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c419:	d1 e0                	shl    ax,1
   4c41b:	03 d8                	add    bx,ax
   4c41d:	8b 87 04 c3          	mov    ax,WORD PTR [bx-0x3cfc]
   4c421:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4c424:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c428:	6b db 38             	imul   bx,bx,0x38
   4c42b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c42e:	d1 e0                	shl    ax,1
   4c430:	03 d8                	add    bx,ax
   4c432:	8b 87 cc c2          	mov    ax,WORD PTR [bx-0x3d34]
   4c436:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4c439:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c43d:	6b db 38             	imul   bx,bx,0x38
   4c440:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c443:	d1 e0                	shl    ax,1
   4c445:	03 d8                	add    bx,ax
   4c447:	8b 87 02 c3          	mov    ax,WORD PTR [bx-0x3cfe]
   4c44b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4c44e:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c452:	6b db 38             	imul   bx,bx,0x38
   4c455:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c458:	d1 e0                	shl    ax,1
   4c45a:	03 d8                	add    bx,ax
   4c45c:	8b 87 00 c3          	mov    ax,WORD PTR [bx-0x3d00]
   4c460:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4c463:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c467:	6b db 28             	imul   bx,bx,0x28
   4c46a:	b8 88 01             	mov    ax,0x188
   4c46d:	8e c0                	mov    es,ax
   4c46f:	26 8b 87 8e a0       	mov    ax,WORD PTR es:[bx-0x5f72]
   4c474:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c478:	6b db 28             	imul   bx,bx,0x28
   4c47b:	ba 88 01             	mov    dx,0x188
   4c47e:	8e c2                	mov    es,dx
   4c480:	26 8b 97 90 a0       	mov    dx,WORD PTR es:[bx-0x5f70]
   4c485:	4a                   	dec    dx
   4c486:	c1 e2 03             	shl    dx,0x3
   4c489:	03 c2                	add    ax,dx
   4c48b:	7d 04                	jge    0x4c491
   4c48d:	33 c0                	xor    ax,ax
   4c48f:	eb 28                	jmp    0x4c4b9
   4c491:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c495:	6b db 28             	imul   bx,bx,0x28
   4c498:	b8 88 01             	mov    ax,0x188
   4c49b:	8e c0                	mov    es,ax
   4c49d:	26 8b 87 8e a0       	mov    ax,WORD PTR es:[bx-0x5f72]
   4c4a2:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c4a6:	6b db 28             	imul   bx,bx,0x28
   4c4a9:	ba 88 01             	mov    dx,0x188
   4c4ac:	8e c2                	mov    es,dx
   4c4ae:	26 8b 97 90 a0       	mov    dx,WORD PTR es:[bx-0x5f70]
   4c4b3:	4a                   	dec    dx
   4c4b4:	c1 e2 03             	shl    dx,0x3
   4c4b7:	03 c2                	add    ax,dx
   4c4b9:	05 11 00             	add    ax,0x11
   4c4bc:	a3 c4 d5             	mov    ds:0xd5c4,ax
   4c4bf:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   4c4c3:	75 5d                	jne    0x4c522
   4c4c5:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c4ca:	75 44                	jne    0x4c510
   4c4cc:	a1 7a d5             	mov    ax,ds:0xd57a
   4c4cf:	3b 06 ca d5          	cmp    ax,WORD PTR ds:0xd5ca
   4c4d3:	75 3b                	jne    0x4c510
   4c4d5:	a1 78 d5             	mov    ax,ds:0xd578
   4c4d8:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c4dc:	75 32                	jne    0x4c510
   4c4de:	6a 0a                	push   0xa
   4c4e0:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c4e3:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c4e7:	6b c0 0e             	imul   ax,ax,0xe
   4c4ea:	05 17 00             	add    ax,0x17
   4c4ed:	50                   	push   ax
   4c4ee:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c4f1:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c4f5:	6b c0 1e             	imul   ax,ax,0x1e
   4c4f8:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c4fc:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c500:	6b d2 0e             	imul   dx,dx,0xe
   4c503:	03 c2                	add    ax,dx
   4c505:	05 0a 00             	add    ax,0xa
   4c508:	50                   	push   ax
   4c509:	0e                   	push   cs
   4c50a:	e8 14 da             	call   0x49f21
   4c50d:	83 c4 06             	add    sp,0x6
   4c510:	83 3e cc d5 00       	cmp    WORD PTR ds:0xd5cc,0x0
   4c515:	7f 03                	jg     0x4c51a
   4c517:	e9 33 02             	jmp    0x4c74d
   4c51a:	6a 14                	push   0x14
   4c51c:	e9 28 02             	jmp    0x4c747
   4c51f:	e9 2b 02             	jmp    0x4c74d
   4c522:	83 7e fe 09          	cmp    WORD PTR [bp-0x2],0x9
   4c526:	7f 03                	jg     0x4c52b
   4c528:	e9 95 01             	jmp    0x4c6c0
   4c52b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4c52e:	d1 e3                	shl    bx,1
   4c530:	b8 88 01             	mov    ax,0x188
   4c533:	8e c0                	mov    es,ax
   4c535:	26 ff b7 16 26       	push   WORD PTR es:[bx+0x2616]
   4c53a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c53d:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c541:	6b c0 0e             	imul   ax,ax,0xe
   4c544:	05 18 00             	add    ax,0x18
   4c547:	50                   	push   ax
   4c548:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c54b:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c54f:	6b c0 1e             	imul   ax,ax,0x1e
   4c552:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c556:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c55a:	6b d2 0e             	imul   dx,dx,0xe
   4c55d:	03 c2                	add    ax,dx
   4c55f:	05 0a 00             	add    ax,0xa
   4c562:	50                   	push   ax
   4c563:	0e                   	push   cs
   4c564:	e8 ba d9             	call   0x49f21
   4c567:	83 c4 06             	add    sp,0x6
   4c56a:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c56f:	75 44                	jne    0x4c5b5
   4c571:	a1 7a d5             	mov    ax,ds:0xd57a
   4c574:	3b 06 ca d5          	cmp    ax,WORD PTR ds:0xd5ca
   4c578:	75 3b                	jne    0x4c5b5
   4c57a:	a1 78 d5             	mov    ax,ds:0xd578
   4c57d:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c581:	75 32                	jne    0x4c5b5
   4c583:	6a 0a                	push   0xa
   4c585:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c588:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c58c:	6b c0 0e             	imul   ax,ax,0xe
   4c58f:	05 17 00             	add    ax,0x17
   4c592:	50                   	push   ax
   4c593:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c596:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c59a:	6b c0 1e             	imul   ax,ax,0x1e
   4c59d:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c5a1:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c5a5:	6b d2 0e             	imul   dx,dx,0xe
   4c5a8:	03 c2                	add    ax,dx
   4c5aa:	05 0a 00             	add    ax,0xa
   4c5ad:	50                   	push   ax
   4c5ae:	0e                   	push   cs
   4c5af:	e8 6f d9             	call   0x49f21
   4c5b2:	83 c4 06             	add    sp,0x6
   4c5b5:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4c5b8:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5bc:	74 24                	je     0x4c5e2
   4c5be:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4c5c1:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5c5:	74 1b                	je     0x4c5e2
   4c5c7:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4c5ca:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5ce:	74 12                	je     0x4c5e2
   4c5d0:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4c5d3:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5d7:	74 09                	je     0x4c5e2
   4c5d9:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4c5dc:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5e0:	75 0c                	jne    0x4c5ee
   4c5e2:	83 3e 76 d5 00       	cmp    WORD PTR ds:0xd576,0x0
   4c5e7:	7e 05                	jle    0x4c5ee
   4c5e9:	b8 01 00             	mov    ax,0x1
   4c5ec:	eb 02                	jmp    0x4c5f0
   4c5ee:	33 c0                	xor    ax,ax
   4c5f0:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   4c5f3:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c5f6:	40                   	inc    ax
   4c5f7:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c5fb:	75 09                	jne    0x4c606
   4c5fd:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c600:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c604:	74 65                	je     0x4c66b
   4c606:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c609:	40                   	inc    ax
   4c60a:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c60e:	75 0a                	jne    0x4c61a
   4c610:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c613:	48                   	dec    ax
   4c614:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c618:	74 51                	je     0x4c66b
   4c61a:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c61d:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c621:	75 0a                	jne    0x4c62d
   4c623:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c626:	48                   	dec    ax
   4c627:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c62b:	74 3e                	je     0x4c66b
   4c62d:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c630:	40                   	inc    ax
   4c631:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c635:	75 0c                	jne    0x4c643
   4c637:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c63a:	05 fe ff             	add    ax,0xfffe
   4c63d:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c641:	74 28                	je     0x4c66b
   4c643:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c646:	40                   	inc    ax
   4c647:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c64b:	75 0c                	jne    0x4c659
   4c64d:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c650:	05 fd ff             	add    ax,0xfffd
   4c653:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c657:	74 12                	je     0x4c66b
   4c659:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c65c:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c660:	75 0e                	jne    0x4c670
   4c662:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c665:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c669:	75 05                	jne    0x4c670
   4c66b:	b8 01 00             	mov    ax,0x1
   4c66e:	eb 02                	jmp    0x4c672
   4c670:	33 c0                	xor    ax,ax
   4c672:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   4c675:	83 7e ee 00          	cmp    WORD PTR [bp-0x12],0x0
   4c679:	75 0d                	jne    0x4c688
   4c67b:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   4c67f:	74 34                	je     0x4c6b5
   4c681:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c686:	75 2d                	jne    0x4c6b5
   4c688:	6a 0f                	push   0xf
   4c68a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c68d:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c691:	6b c0 0e             	imul   ax,ax,0xe
   4c694:	05 f4 ff             	add    ax,0xfff4
   4c697:	50                   	push   ax
   4c698:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c69b:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c69f:	6b c0 1e             	imul   ax,ax,0x1e
   4c6a2:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c6a6:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c6aa:	6b d2 0e             	imul   dx,dx,0xe
   4c6ad:	03 c2                	add    ax,dx
   4c6af:	05 07 00             	add    ax,0x7
   4c6b2:	e9 81 00             	jmp    0x4c736
   4c6b5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4c6b8:	05 06 00             	add    ax,0x6
   4c6bb:	50                   	push   ax
   4c6bc:	eb cc                	jmp    0x4c68a
   4c6be:	eb 7e                	jmp    0x4c73e
   4c6c0:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4c6c3:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c6c6:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c6ca:	6b c0 0e             	imul   ax,ax,0xe
   4c6cd:	05 18 00             	add    ax,0x18
   4c6d0:	50                   	push   ax
   4c6d1:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c6d4:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c6d8:	6b c0 1e             	imul   ax,ax,0x1e
   4c6db:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c6df:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c6e3:	6b d2 0e             	imul   dx,dx,0xe
   4c6e6:	03 c2                	add    ax,dx
   4c6e8:	05 0a 00             	add    ax,0xa
   4c6eb:	50                   	push   ax
   4c6ec:	0e                   	push   cs
   4c6ed:	e8 31 d8             	call   0x49f21
   4c6f0:	83 c4 06             	add    sp,0x6
   4c6f3:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c6f8:	75 44                	jne    0x4c73e
   4c6fa:	a1 7a d5             	mov    ax,ds:0xd57a
   4c6fd:	3b 06 ca d5          	cmp    ax,WORD PTR ds:0xd5ca
   4c701:	75 3b                	jne    0x4c73e
   4c703:	a1 78 d5             	mov    ax,ds:0xd578
   4c706:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c70a:	75 32                	jne    0x4c73e
   4c70c:	6a 0a                	push   0xa
   4c70e:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c711:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c715:	6b c0 0e             	imul   ax,ax,0xe
   4c718:	05 17 00             	add    ax,0x17
   4c71b:	50                   	push   ax
   4c71c:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c71f:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c723:	6b c0 1e             	imul   ax,ax,0x1e
   4c726:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c72a:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c72e:	6b d2 0e             	imul   dx,dx,0xe
   4c731:	03 c2                	add    ax,dx
   4c733:	05 0a 00             	add    ax,0xa
   4c736:	50                   	push   ax
   4c737:	0e                   	push   cs
   4c738:	e8 e6 d7             	call   0x49f21
   4c73b:	83 c4 06             	add    sp,0x6
   4c73e:	83 3e cc d5 00       	cmp    WORD PTR ds:0xd5cc,0x0
   4c743:	7e 08                	jle    0x4c74d
   4c745:	6a 00                	push   0x0
   4c747:	90                   	nop
   4c748:	0e                   	push   cs
   4c749:	e8 59 0e             	call   0x4d5a5
   4c74c:	59                   	pop    cx
   4c74d:	ff 0e ca d5          	dec    WORD PTR ds:0xd5ca
   4c751:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c754:	3b 06 80 d5          	cmp    ax,WORD PTR ds:0xd580
   4c758:	7c 03                	jl     0x4c75d
   4c75a:	e9 6d fc             	jmp    0x4c3ca
   4c75d:	ff 06 c8 d5          	inc    WORD PTR ds:0xd5c8
   4c761:	a1 7e d5             	mov    ax,ds:0xd57e
   4c764:	05 06 00             	add    ax,0x6
   4c767:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c76b:	7c 03                	jl     0x4c770
   4c76d:	e9 4e fc             	jmp    0x4c3be
   4c770:	83 3e 7c d5 00       	cmp    WORD PTR ds:0xd57c,0x0
   4c775:	75 05                	jne    0x4c77c
   4c777:	a1 de d5             	mov    ax,ds:0xd5de
   4c77a:	eb 12                	jmp    0x4c78e
   4c77c:	8b 1e 7a d5          	mov    bx,WORD PTR ds:0xd57a
   4c780:	6b db 38             	imul   bx,bx,0x38
   4c783:	a1 78 d5             	mov    ax,ds:0xd578
   4c786:	d1 e0                	shl    ax,1
   4c788:	03 d8                	add    bx,ax
   4c78a:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4c78e:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4c791:	8b 5e f0             	mov    bx,WORD PTR [bp-0x10]
   4c794:	6b db 28             	imul   bx,bx,0x28
   4c797:	b8 88 01             	mov    ax,0x188
   4c79a:	8e c0                	mov    es,ax
   4c79c:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4c7a1:	48                   	dec    ax
   4c7a2:	c1 e0 03             	shl    ax,0x3
   4c7a5:	05 14 00             	add    ax,0x14
   4c7a8:	a3 c4 d5             	mov    ds:0xd5c4,ax
   4c7ab:	83 7e f0 00          	cmp    WORD PTR [bp-0x10],0x0
   4c7af:	74 31                	je     0x4c7e2
   4c7b1:	c7 46 ea 4b 00       	mov    WORD PTR [bp-0x16],0x4b
   4c7b6:	c7 46 e8 8e 00       	mov    WORD PTR [bp-0x18],0x8e
   4c7bb:	6a 03                	push   0x3
   4c7bd:	8b 5e f0             	mov    bx,WORD PTR [bp-0x10]
   4c7c0:	6b db 28             	imul   bx,bx,0x28
   4c7c3:	b8 88 01             	mov    ax,0x188
   4c7c6:	8e c0                	mov    es,ax
   4c7c8:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4c7cd:	05 0a 00             	add    ax,0xa
   4c7d0:	50                   	push   ax
   4c7d1:	16                   	push   ss
   4c7d2:	8d 46 e8             	lea    ax,[bp-0x18]
   4c7d5:	50                   	push   ax
   4c7d6:	16                   	push   ss
   4c7d7:	8d 46 ea             	lea    ax,[bp-0x16]
   4c7da:	50                   	push   ax
   4c7db:	0e                   	push   cs
   4c7dc:	e8 f8 d7             	call   0x49fd7
   4c7df:	83 c4 0c             	add    sp,0xc
   4c7e2:	0e                   	push   cs
   4c7e3:	e8 85 e1             	call   0x4a96b
   4c7e6:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4c7eb:	7e 07                	jle    0x4c7f4
   4c7ed:	90                   	nop
   4c7ee:	0e                   	push   cs
   4c7ef:	e8 d2 49             	call   0x411c4
   4c7f2:	eb 0c                	jmp    0x4c800
   4c7f4:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4c7f9:	7d 05                	jge    0x4c800
   4c7fb:	90                   	nop
   4c7fc:	0e                   	push   cs
   4c7fd:	e8 c0 48             	call   0x410c0
   4c800:	83 3e 66 d5 08       	cmp    WORD PTR ds:0xd566,0x8
   4c805:	74 09                	je     0x4c810
   4c807:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   4c80b:	0e                   	push   cs
   4c80c:	e8 8f f5             	call   0x4bd9e
   4c80f:	59                   	pop    cx
   4c810:	83 3e 1c 63 01       	cmp    WORD PTR ds:0x631c,0x1
   4c815:	75 72                	jne    0x4c889
   4c817:	c7 06 1c 63 00 00    	mov    WORD PTR ds:0x631c,0x0
   4c81d:	6a 00                	push   0x0
   4c81f:	6a 0a                	push   0xa
   4c821:	16                   	push   ss
   4c822:	8d 46 e2             	lea    ax,[bp-0x1e]
   4c825:	50                   	push   ax
   4c826:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   4c82a:	9a 58 3f 00 00       	call   0x0:0x3f58
   4c82f:	83 c4 08             	add    sp,0x8
   4c832:	52                   	push   dx
   4c833:	50                   	push   ax
   4c834:	a1 d0 d5             	mov    ax,ds:0xd5d0
   4c837:	05 0a 00             	add    ax,0xa
   4c83a:	50                   	push   ax
   4c83b:	a1 d2 d5             	mov    ax,ds:0xd5d2
   4c83e:	05 0c 00             	add    ax,0xc
   4c841:	50                   	push   ax
   4c842:	6a 02                	push   0x2
   4c844:	0e                   	push   cs
   4c845:	e8 88 df             	call   0x4a7d0
   4c848:	83 c4 0c             	add    sp,0xc
   4c84b:	b8 88 01             	mov    ax,0x188
   4c84e:	8e c0                	mov    es,ax
   4c850:	26 a0 65 96          	mov    al,es:0x9665
   4c854:	b4 00                	mov    ah,0x0
   4c856:	50                   	push   ax
   4c857:	6a 0a                	push   0xa
   4c859:	16                   	push   ss
   4c85a:	8d 46 e2             	lea    ax,[bp-0x1e]
   4c85d:	50                   	push   ax
   4c85e:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   4c862:	9a 58 3f 00 00       	call   0x0:0x3f58
   4c867:	83 c4 08             	add    sp,0x8
   4c86a:	52                   	push   dx
   4c86b:	50                   	push   ax
   4c86c:	a1 d0 d5             	mov    ax,ds:0xd5d0
   4c86f:	05 0a 00             	add    ax,0xa
   4c872:	50                   	push   ax
   4c873:	a1 d2 d5             	mov    ax,ds:0xd5d2
   4c876:	05 0c 00             	add    ax,0xc
   4c879:	50                   	push   ax
   4c87a:	6a 02                	push   0x2
   4c87c:	0e                   	push   cs
   4c87d:	e8 50 df             	call   0x4a7d0
   4c880:	83 c4 0c             	add    sp,0xc
   4c883:	c7 06 c6 d5 00 00    	mov    WORD PTR ds:0xd5c6,0x0
   4c889:	83 3e 1e 63 01       	cmp    WORD PTR ds:0x631e,0x1
   4c88e:	75 1d                	jne    0x4c8ad
   4c890:	c7 06 1e 63 00 00    	mov    WORD PTR ds:0x631e,0x0
   4c896:	ff 36 ce d5          	push   WORD PTR ds:0xd5ce
   4c89a:	68 88 01             	push   0x188
   4c89d:	68 10 a5             	push   0xa510
   4c8a0:	0e                   	push   cs
   4c8a1:	e8 97 ea             	call   0x4b33b
   4c8a4:	83 c4 06             	add    sp,0x6
   4c8a7:	c7 06 1a 63 00 00    	mov    WORD PTR ds:0x631a,0x0
   4c8ad:	6a 06                	push   0x6
   4c8af:	0e                   	push   cs
   4c8b0:	e8 7e df             	call   0x4a831
   4c8b3:	59                   	pop    cx
   4c8b4:	83 3e 18 63 01       	cmp    WORD PTR ds:0x6318,0x1
   4c8b9:	75 0e                	jne    0x4c8c9
   4c8bb:	6a 0a                	push   0xa
   4c8bd:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4c8c2:	59                   	pop    cx
   4c8c3:	c7 06 18 63 00 00    	mov    WORD PTR ds:0x6318,0x0
   4c8c9:	c9                   	leave
   4c8ca:	cb                   	retf
   4c8cb:	55                   	push   bp
   4c8cc:	8b ec                	mov    bp,sp
   4c8ce:	b8 88 01             	mov    ax,0x188
   4c8d1:	8e c0                	mov    es,ax
   4c8d3:	26 a0 72 96          	mov    al,es:0x9672
   4c8d7:	ba 88 01             	mov    dx,0x188
   4c8da:	8e c2                	mov    es,dx
   4c8dc:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4c8e1:	75 44                	jne    0x4c927
   4c8e3:	83 3e de d5 19       	cmp    WORD PTR ds:0xd5de,0x19
   4c8e8:	7d 3d                	jge    0x4c927
   4c8ea:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4c8ee:	6b db 28             	imul   bx,bx,0x28
   4c8f1:	b8 88 01             	mov    ax,0x188
   4c8f4:	8e c0                	mov    es,ax
   4c8f6:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4c8fb:	6b db 06             	imul   bx,bx,0x6
   4c8fe:	b8 88 01             	mov    ax,0x188
   4c901:	ba c0 5b             	mov    dx,0x5bc0
   4c904:	83 c2 02             	add    dx,0x2
   4c907:	03 da                	add    bx,dx
   4c909:	8e c0                	mov    es,ax
   4c90b:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
   4c90e:	83 eb 0e             	sub    bx,0xe
   4c911:	83 fb 11             	cmp    bx,0x11
   4c914:	77 11                	ja     0x4c927
   4c916:	d1 e3                	shl    bx,1
   4c918:	2e ff a7 15 2d       	jmp    WORD PTR cs:[bx+0x2d15]
   4c91d:	b8 17 00             	mov    ax,0x17
   4c920:	eb 2d                	jmp    0x4c94f
   4c922:	b8 18 00             	mov    ax,0x18
   4c925:	eb 28                	jmp    0x4c94f
   4c927:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4c92a:	83 fb 09             	cmp    bx,0x9
   4c92d:	77 1d                	ja     0x4c94c
   4c92f:	d1 e3                	shl    bx,1
   4c931:	2e ff a7 01 2d       	jmp    WORD PTR cs:[bx+0x2d01]
   4c936:	eb 14                	jmp    0x4c94c
   4c938:	b8 0c 00             	mov    ax,0xc
   4c93b:	eb 12                	jmp    0x4c94f
   4c93d:	b8 07 00             	mov    ax,0x7
   4c940:	eb 0d                	jmp    0x4c94f
   4c942:	b8 06 00             	mov    ax,0x6
   4c945:	eb 08                	jmp    0x4c94f
   4c947:	b8 0b 00             	mov    ax,0xb
   4c94a:	eb 03                	jmp    0x4c94f
   4c94c:	b8 01 00             	mov    ax,0x1
   4c94f:	5d                   	pop    bp
   4c950:	cb                   	retf
   4c951:	f2 2c e8             	repnz sub al,0xe8
   4c954:	2c f2                	sub    al,0xf2
   4c956:	2c ed                	sub    al,0xed
   4c958:	2c e6                	sub    al,0xe6
   4c95a:	2c f7                	sub    al,0xf7
   4c95c:	2c fc                	sub    al,0xfc
   4c95e:	2c e8                	sub    al,0xe8
   4c960:	2c e8                	sub    al,0xe8
   4c962:	2c e6                	sub    al,0xe6
   4c964:	2c cd                	sub    al,0xcd
   4c966:	2c d2                	sub    al,0xd2
   4c968:	2c cd                	sub    al,0xcd
   4c96a:	2c d2                	sub    al,0xd2
   4c96c:	2c d2                	sub    al,0xd2
   4c96e:	2c d7                	sub    al,0xd7
   4c970:	2c d7                	sub    al,0xd7
   4c972:	2c d7                	sub    al,0xd7
   4c974:	2c d7                	sub    al,0xd7
   4c976:	2c d7                	sub    al,0xd7
   4c978:	2c d7                	sub    al,0xd7
   4c97a:	2c d7                	sub    al,0xd7
   4c97c:	2c d7                	sub    al,0xd7
   4c97e:	2c d7                	sub    al,0xd7
   4c980:	2c d7                	sub    al,0xd7
   4c982:	2c d7                	sub    al,0xd7
   4c984:	2c d2                	sub    al,0xd2
   4c986:	2c d2                	sub    al,0xd2
   4c988:	2c 55                	sub    al,0x55
