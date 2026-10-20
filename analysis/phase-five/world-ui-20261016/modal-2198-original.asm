
analysis/phase-five/world-ui-20261016/modal-2198-original.bin:     file format binary


Disassembly of section .data:

0000a358 <.data>:
    a358:	55                   	push   bp
    a359:	8b ec                	mov    bp,sp
    a35b:	83 ec 0e             	sub    sp,0xe
    a35e:	b8 e0 16             	mov    ax,0x16e0
    a361:	8e c0                	mov    es,ax
    a363:	26 a0 5c 96          	mov    al,es:0x965c
    a367:	50                   	push   ax
    a368:	9a c7 05 7f 0c       	call   0xc7f:0x5c7
    a36d:	59                   	pop    cx
    a36e:	0a c0                	or     al,al
    a370:	74 05                	je     0xa377
    a372:	9a 04 02 7f 0c       	call   0xc7f:0x204
    a377:	b8 e0 16             	mov    ax,0x16e0
    a37a:	8e c0                	mov    es,ax
    a37c:	26 a1 57 e3          	mov    ax,es:0xe357
    a380:	26 0b 06 59 e3       	or     ax,WORD PTR es:0xe359
    a385:	75 04                	jne    0xa38b
    a387:	0e                   	push   cs
    a388:	e8 9f fd             	call   0xa12a
    a38b:	ff 76 08             	push   WORD PTR [bp+0x8]
    a38e:	ff 76 06             	push   WORD PTR [bp+0x6]
    a391:	9a 3e 00 da 16       	call   0x16da:0x3e
    a396:	83 c4 04             	add    sp,0x4
    a399:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a39c:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a39f:	9a 3e 00 da 16       	call   0x16da:0x3e
    a3a4:	83 c4 04             	add    sp,0x4
    a3a7:	ff 76 08             	push   WORD PTR [bp+0x8]
    a3aa:	ff 76 06             	push   WORD PTR [bp+0x6]
    a3ad:	9a cc 49 00 00       	call   0x0:0x49cc
    a3b2:	83 c4 04             	add    sp,0x4
    a3b5:	6b c0 0a             	imul   ax,ax,0xa
    a3b8:	d1 e8                	shr    ax,1
    a3ba:	ba 50 00             	mov    dx,0x50
    a3bd:	2b d0                	sub    dx,ax
    a3bf:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    a3c2:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a3c5:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a3c8:	9a cc 49 00 00       	call   0x0:0x49cc
    a3cd:	83 c4 04             	add    sp,0x4
    a3d0:	6b c0 0a             	imul   ax,ax,0xa
    a3d3:	d1 e8                	shr    ax,1
    a3d5:	ba f0 00             	mov    dx,0xf0
    a3d8:	2b d0                	sub    dx,ax
    a3da:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
    a3dd:	b8 e0 16             	mov    ax,0x16e0
    a3e0:	8e c0                	mov    es,ax
    a3e2:	26 80 3e aa bb 04    	cmp    BYTE PTR es:0xbbaa,0x4
    a3e8:	73 10                	jae    0xa3fa
    a3ea:	b8 e0 16             	mov    ax,0x16e0
    a3ed:	8e c0                	mov    es,ax
    a3ef:	26 a0 aa bb          	mov    al,es:0xbbaa
    a3f3:	b4 00                	mov    ah,0x0
    a3f5:	05 02 00             	add    ax,0x2
    a3f8:	eb 0e                	jmp    0xa408
    a3fa:	b8 e0 16             	mov    ax,0x16e0
    a3fd:	8e c0                	mov    es,ax
    a3ff:	26 a0 aa bb          	mov    al,es:0xbbaa
    a403:	b4 00                	mov    ah,0x0
    a405:	05 02 00             	add    ax,0x2
    a408:	3d 06 00             	cmp    ax,0x6
    a40b:	7d 27                	jge    0xa434
    a40d:	b8 e0 16             	mov    ax,0x16e0
    a410:	8e c0                	mov    es,ax
    a412:	26 80 3e aa bb 04    	cmp    BYTE PTR es:0xbbaa,0x4
    a418:	73 0d                	jae    0xa427
    a41a:	b8 e0 16             	mov    ax,0x16e0
    a41d:	8e c0                	mov    es,ax
    a41f:	26 a0 aa bb          	mov    al,es:0xbbaa
    a423:	04 02                	add    al,0x2
    a425:	eb 0b                	jmp    0xa432
    a427:	b8 e0 16             	mov    ax,0x16e0
    a42a:	8e c0                	mov    es,ax
    a42c:	26 a0 aa bb          	mov    al,es:0xbbaa
    a430:	04 02                	add    al,0x2
    a432:	eb 02                	jmp    0xa436
    a434:	b0 06                	mov    al,0x6
    a436:	ba e0 16             	mov    dx,0x16e0
    a439:	8e c2                	mov    es,dx
    a43b:	26 a2 aa bb          	mov    es:0xbbaa,al
    a43f:	b8 e0 16             	mov    ax,0x16e0
    a442:	8e c0                	mov    es,ax
    a444:	26 a0 aa bb          	mov    al,es:0xbbaa
    a448:	b4 00                	mov    ah,0x0
    a44a:	48                   	dec    ax
    a44b:	c1 e0 03             	shl    ax,0x3
    a44e:	05 94 00             	add    ax,0x94
    a451:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
    a454:	b8 01 00             	mov    ax,0x1
    a457:	3d 01 00             	cmp    ax,0x1
    a45a:	74 08                	je     0xa464
    a45c:	3d 02 00             	cmp    ax,0x2
    a45f:	74 47                	je     0xa4a8
    a461:	e9 80 00             	jmp    0xa4e4
    a464:	6a 05                	push   0x5
    a466:	6a 00                	push   0x0
    a468:	ff 76 08             	push   WORD PTR [bp+0x8]
    a46b:	ff 76 06             	push   WORD PTR [bp+0x6]
    a46e:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a471:	40                   	inc    ax
    a472:	50                   	push   ax
    a473:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
    a476:	40                   	inc    ax
    a477:	50                   	push   ax
    a478:	6a 00                	push   0x0
    a47a:	9a 34 00 da 16       	call   0x16da:0x34
    a47f:	83 c4 0e             	add    sp,0xe
    a482:	6a 05                	push   0x5
    a484:	b8 e0 16             	mov    ax,0x16e0
    a487:	8e c0                	mov    es,ax
    a489:	26 a0 66 96          	mov    al,es:0x9666
    a48d:	b4 00                	mov    ah,0x0
    a48f:	50                   	push   ax
    a490:	ff 76 08             	push   WORD PTR [bp+0x8]
    a493:	ff 76 06             	push   WORD PTR [bp+0x6]
    a496:	ff 76 f6             	push   WORD PTR [bp-0xa]
    a499:	ff 76 fa             	push   WORD PTR [bp-0x6]
    a49c:	6a 00                	push   0x0
    a49e:	9a 34 00 da 16       	call   0x16da:0x34
    a4a3:	83 c4 0e             	add    sp,0xe
    a4a6:	eb 3c                	jmp    0xa4e4
    a4a8:	6a 00                	push   0x0
    a4aa:	ff 76 08             	push   WORD PTR [bp+0x8]
    a4ad:	ff 76 06             	push   WORD PTR [bp+0x6]
    a4b0:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a4b3:	40                   	inc    ax
    a4b4:	50                   	push   ax
    a4b5:	ff 76 fa             	push   WORD PTR [bp-0x6]
    a4b8:	6a 00                	push   0x0
    a4ba:	9a 39 00 da 16       	call   0x16da:0x39
    a4bf:	83 c4 0c             	add    sp,0xc
    a4c2:	b8 e0 16             	mov    ax,0x16e0
    a4c5:	8e c0                	mov    es,ax
    a4c7:	26 a0 66 96          	mov    al,es:0x9666
    a4cb:	b4 00                	mov    ah,0x0
    a4cd:	50                   	push   ax
    a4ce:	ff 76 08             	push   WORD PTR [bp+0x8]
    a4d1:	ff 76 06             	push   WORD PTR [bp+0x6]
    a4d4:	ff 76 f6             	push   WORD PTR [bp-0xa]
    a4d7:	ff 76 fa             	push   WORD PTR [bp-0x6]
    a4da:	6a 00                	push   0x0
    a4dc:	9a 39 00 da 16       	call   0x16da:0x39
    a4e1:	83 c4 0c             	add    sp,0xc
    a4e4:	b8 01 00             	mov    ax,0x1
    a4e7:	3d 01 00             	cmp    ax,0x1
    a4ea:	74 08                	je     0xa4f4
    a4ec:	3d 02 00             	cmp    ax,0x2
    a4ef:	74 47                	je     0xa538
    a4f1:	e9 80 00             	jmp    0xa574
    a4f4:	6a 05                	push   0x5
    a4f6:	6a 00                	push   0x0
    a4f8:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a4fb:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a4fe:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a501:	40                   	inc    ax
    a502:	50                   	push   ax
    a503:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
    a506:	40                   	inc    ax
    a507:	50                   	push   ax
    a508:	6a 00                	push   0x0
    a50a:	9a 34 00 da 16       	call   0x16da:0x34
    a50f:	83 c4 0e             	add    sp,0xe
    a512:	6a 05                	push   0x5
    a514:	b8 e0 16             	mov    ax,0x16e0
    a517:	8e c0                	mov    es,ax
    a519:	26 a0 66 96          	mov    al,es:0x9666
    a51d:	b4 00                	mov    ah,0x0
    a51f:	50                   	push   ax
    a520:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a523:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a526:	ff 76 f6             	push   WORD PTR [bp-0xa]
    a529:	ff 76 f8             	push   WORD PTR [bp-0x8]
    a52c:	6a 00                	push   0x0
    a52e:	9a 34 00 da 16       	call   0x16da:0x34
    a533:	83 c4 0e             	add    sp,0xe
    a536:	eb 3c                	jmp    0xa574
    a538:	6a 00                	push   0x0
    a53a:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a53d:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a540:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a543:	40                   	inc    ax
    a544:	50                   	push   ax
    a545:	ff 76 f8             	push   WORD PTR [bp-0x8]
    a548:	6a 00                	push   0x0
    a54a:	9a 39 00 da 16       	call   0x16da:0x39
    a54f:	83 c4 0c             	add    sp,0xc
    a552:	b8 e0 16             	mov    ax,0x16e0
    a555:	8e c0                	mov    es,ax
    a557:	26 a0 66 96          	mov    al,es:0x9666
    a55b:	b4 00                	mov    ah,0x0
    a55d:	50                   	push   ax
    a55e:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a561:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a564:	ff 76 f6             	push   WORD PTR [bp-0xa]
    a567:	ff 76 f8             	push   WORD PTR [bp-0x8]
    a56a:	6a 00                	push   0x0
    a56c:	9a 39 00 da 16       	call   0x16da:0x39
    a571:	83 c4 0c             	add    sp,0xc
    a574:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    a577:	26 8a 07             	mov    al,BYTE PTR es:[bx]
    a57a:	98                   	cbw
    a57b:	50                   	push   ax
    a57c:	1e                   	push   ds
    a57d:	68 4a 6d             	push   0x6d4a
    a580:	16                   	push   ss
    a581:	8d 46 f4             	lea    ax,[bp-0xc]
    a584:	50                   	push   ax
    a585:	9a b4 48 00 00       	call   0x0:0x48b4
    a58a:	83 c4 0a             	add    sp,0xa
    a58d:	6a 05                	push   0x5
    a58f:	b8 e0 16             	mov    ax,0x16e0
    a592:	8e c0                	mov    es,ax
    a594:	26 a0 65 96          	mov    al,es:0x9665
    a598:	b4 00                	mov    ah,0x0
    a59a:	50                   	push   ax
    a59b:	16                   	push   ss
    a59c:	8d 46 f4             	lea    ax,[bp-0xc]
    a59f:	50                   	push   ax
    a5a0:	ff 76 f6             	push   WORD PTR [bp-0xa]
    a5a3:	ff 76 fa             	push   WORD PTR [bp-0x6]
    a5a6:	6a 00                	push   0x0
    a5a8:	9a 34 00 da 16       	call   0x16da:0x34
    a5ad:	83 c4 0e             	add    sp,0xe
    a5b0:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
    a5b3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
    a5b6:	98                   	cbw
    a5b7:	50                   	push   ax
    a5b8:	1e                   	push   ds
    a5b9:	68 4d 6d             	push   0x6d4d
    a5bc:	16                   	push   ss
    a5bd:	8d 46 f2             	lea    ax,[bp-0xe]
    a5c0:	50                   	push   ax
    a5c1:	9a b4 48 00 00       	call   0x0:0x48b4
    a5c6:	83 c4 0a             	add    sp,0xa
    a5c9:	6a 05                	push   0x5
    a5cb:	b8 e0 16             	mov    ax,0x16e0
    a5ce:	8e c0                	mov    es,ax
    a5d0:	26 a0 65 96          	mov    al,es:0x9665
    a5d4:	b4 00                	mov    ah,0x0
    a5d6:	50                   	push   ax
    a5d7:	16                   	push   ss
    a5d8:	8d 46 f2             	lea    ax,[bp-0xe]
    a5db:	50                   	push   ax
    a5dc:	ff 76 f6             	push   WORD PTR [bp-0xa]
    a5df:	ff 76 f8             	push   WORD PTR [bp-0x8]
    a5e2:	6a 00                	push   0x0
    a5e4:	9a 34 00 da 16       	call   0x16da:0x34
    a5e9:	83 c4 0e             	add    sp,0xe
    a5ec:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
    a5ef:	05 fd ff             	add    ax,0xfffd
    a5f2:	ba e0 16             	mov    dx,0x16e0
    a5f5:	8e c2                	mov    es,dx
    a5f7:	26 a3 25 e6          	mov    es:0xe625,ax
    a5fb:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a5fe:	05 fd ff             	add    ax,0xfffd
    a601:	ba e0 16             	mov    dx,0x16e0
    a604:	8e c2                	mov    es,dx
    a606:	26 a3 27 e6          	mov    es:0xe627,ax
    a60a:	6a 01                	push   0x1
    a60c:	ff 76 08             	push   WORD PTR [bp+0x8]
    a60f:	ff 76 06             	push   WORD PTR [bp+0x6]
    a612:	9a 48 00 da 16       	call   0x16da:0x48
    a617:	83 c4 06             	add    sp,0x6
    a61a:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
    a61d:	03 d0                	add    dx,ax
    a61f:	83 c2 03             	add    dx,0x3
    a622:	b8 e0 16             	mov    ax,0x16e0
    a625:	8e c0                	mov    es,ax
    a627:	26 89 16 29 e6       	mov    WORD PTR es:0xe629,dx
    a62c:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a62f:	05 0d 00             	add    ax,0xd
    a632:	ba e0 16             	mov    dx,0x16e0
    a635:	8e c2                	mov    es,dx
    a637:	26 a3 2b e6          	mov    es:0xe62b,ax
    a63b:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
    a63e:	05 fd ff             	add    ax,0xfffd
    a641:	ba e0 16             	mov    dx,0x16e0
    a644:	8e c2                	mov    es,dx
    a646:	26 a3 2d e6          	mov    es:0xe62d,ax
    a64a:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a64d:	05 fd ff             	add    ax,0xfffd
    a650:	ba e0 16             	mov    dx,0x16e0
    a653:	8e c2                	mov    es,dx
    a655:	26 a3 2f e6          	mov    es:0xe62f,ax
    a659:	6a 01                	push   0x1
    a65b:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a65e:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a661:	9a 48 00 da 16       	call   0x16da:0x48
    a666:	83 c4 06             	add    sp,0x6
    a669:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
    a66c:	03 d0                	add    dx,ax
    a66e:	83 c2 03             	add    dx,0x3
    a671:	b8 e0 16             	mov    ax,0x16e0
    a674:	8e c0                	mov    es,ax
    a676:	26 89 16 31 e6       	mov    WORD PTR es:0xe631,dx
    a67b:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    a67e:	05 0d 00             	add    ax,0xd
    a681:	ba e0 16             	mov    dx,0x16e0
    a684:	8e c2                	mov    es,dx
    a686:	26 a3 33 e6          	mov    es:0xe633,ax
    a68a:	b8 e0 16             	mov    ax,0x16e0
    a68d:	8e c0                	mov    es,ax
    a68f:	26 a0 e3 e5          	mov    al,es:0xe5e3
    a693:	50                   	push   ax
    a694:	9a 69 00 7f 0c       	call   0xc7f:0x69
    a699:	59                   	pop    cx
    a69a:	8a 46 f4             	mov    al,BYTE PTR [bp-0xc]
    a69d:	50                   	push   ax
    a69e:	9a 43 00 da 16       	call   0x16da:0x43
    a6a3:	59                   	pop    cx
    a6a4:	88 46 f4             	mov    BYTE PTR [bp-0xc],al
    a6a7:	8a 46 f2             	mov    al,BYTE PTR [bp-0xe]
    a6aa:	50                   	push   ax
    a6ab:	9a 43 00 da 16       	call   0x16da:0x43
    a6b0:	59                   	pop    cx
    a6b1:	88 46 f2             	mov    BYTE PTR [bp-0xe],al
    a6b4:	b8 e0 16             	mov    ax,0x16e0
    a6b7:	8e c0                	mov    es,ax
    a6b9:	26 c7 06 9e bb 64 00 	mov    WORD PTR es:0xbb9e,0x64
    a6c0:	e9 ce 00             	jmp    0xa791
    a6c3:	b8 e0 16             	mov    ax,0x16e0
    a6c6:	8e c0                	mov    es,ax
    a6c8:	26 ff 36 62 96       	push   WORD PTR es:0x9662
    a6cd:	26 ff 36 60 96       	push   WORD PTR es:0x9660
    a6d2:	b8 e0 16             	mov    ax,0x16e0
    a6d5:	8e c0                	mov    es,ax
    a6d7:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
    a6dc:	83 c4 04             	add    sp,0x4
    a6df:	b8 e0 16             	mov    ax,0x16e0
    a6e2:	8e c0                	mov    es,ax
    a6e4:	26 83 3e f3 e5 00    	cmp    WORD PTR es:0xe5f3,0x0
    a6ea:	74 10                	je     0xa6fc
    a6ec:	b8 e0 16             	mov    ax,0x16e0
    a6ef:	8e c0                	mov    es,ax
    a6f1:	26 a0 e3 e5          	mov    al,es:0xe5e3
    a6f5:	50                   	push   ax
    a6f6:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
    a6fb:	59                   	pop    cx
    a6fc:	b8 e0 16             	mov    ax,0x16e0
    a6ff:	8e c0                	mov    es,ax
    a701:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
    a707:	75 36                	jne    0xa73f
    a709:	9a 15 05 7f 0c       	call   0xc7f:0x515
    a70e:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    a711:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    a714:	3d 06 00             	cmp    ax,0x6
    a717:	74 07                	je     0xa720
    a719:	3d 07 00             	cmp    ax,0x7
    a71c:	74 10                	je     0xa72e
    a71e:	eb 1a                	jmp    0xa73a
    a720:	b8 e0 16             	mov    ax,0x16e0
    a723:	8e c0                	mov    es,ax
    a725:	26 c7 06 9e bb 00 00 	mov    WORD PTR es:0xbb9e,0x0
    a72c:	eb 0c                	jmp    0xa73a
    a72e:	b8 e0 16             	mov    ax,0x16e0
    a731:	8e c0                	mov    es,ax
    a733:	26 c7 06 9e bb 01 00 	mov    WORD PTR es:0xbb9e,0x1
    a73a:	9a 14 07 7f 0c       	call   0xc7f:0x714
    a73f:	9a 45 2e 00 00       	call   0x0:0x2e45
    a744:	0b c0                	or     ax,ax
    a746:	74 49                	je     0xa791
    a748:	6a 00                	push   0x0
    a74a:	9a 3f 1f 00 00       	call   0x0:0x1f3f
    a74f:	59                   	pop    cx
    a750:	25 ff 00             	and    ax,0xff
    a753:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    a756:	16                   	push   ss
    a757:	8d 46 fe             	lea    ax,[bp-0x2]
    a75a:	50                   	push   ax
    a75b:	9a 2a 00 da 16       	call   0x16da:0x2a
    a760:	83 c4 04             	add    sp,0x4
    a763:	8a 46 f4             	mov    al,BYTE PTR [bp-0xc]
    a766:	b4 00                	mov    ah,0x0
    a768:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
    a76b:	75 0e                	jne    0xa77b
    a76d:	b8 e0 16             	mov    ax,0x16e0
    a770:	8e c0                	mov    es,ax
    a772:	26 c7 06 9e bb 00 00 	mov    WORD PTR es:0xbb9e,0x0
    a779:	eb 16                	jmp    0xa791
    a77b:	8a 46 f2             	mov    al,BYTE PTR [bp-0xe]
    a77e:	b4 00                	mov    ah,0x0
    a780:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
    a783:	75 0c                	jne    0xa791
    a785:	b8 e0 16             	mov    ax,0x16e0
    a788:	8e c0                	mov    es,ax
    a78a:	26 c7 06 9e bb 01 00 	mov    WORD PTR es:0xbb9e,0x1
    a791:	b8 e0 16             	mov    ax,0x16e0
    a794:	8e c0                	mov    es,ax
    a796:	26 83 3e 9e bb 64    	cmp    WORD PTR es:0xbb9e,0x64
    a79c:	75 03                	jne    0xa7a1
    a79e:	e9 22 ff             	jmp    0xa6c3
    a7a1:	9a 3e 00 70 16       	call   0x1670:0x3e
    a7a6:	0e                   	push   cs
    a7a7:	e8 cf f8             	call   0xa079
    a7aa:	c9                   	leave
    a7ab:	cb                   	retf
