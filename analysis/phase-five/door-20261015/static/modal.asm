
analysis/phase-five/door-20261015/static/modal.bin:     file format binary


Disassembly of section .data:

0000a580 <.data>:
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
    a7ac:	55                   	push   bp
    a7ad:	8b ec                	mov    bp,sp
    a7af:	83 ec 0e             	sub    sp,0xe
    a7b2:	c6 46 f7 01          	mov    BYTE PTR [bp-0x9],0x1
    a7b6:	c7 46 f4 ff ff       	mov    WORD PTR [bp-0xc],0xffff
    a7bb:	c7 46 f2 ff ff       	mov    WORD PTR [bp-0xe],0xffff
    a7c0:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a7c3:	ff 76 08             	push   WORD PTR [bp+0x8]
    a7c6:	9a cc 49 00 00       	call   0x0:0x49cc
    a7cb:	83 c4 04             	add    sp,0x4
    a7ce:	50                   	push   ax
    a7cf:	68 b6 00             	push   0xb6
    a7d2:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a7d5:	ff 76 08             	push   WORD PTR [bp+0x8]
    a7d8:	9a 81 52 00 00       	call   0x0:0x5281
    a7dd:	83 c4 08             	add    sp,0x8
    a7e0:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
    a7e3:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    a7e6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    a7e9:	0b 46 fe             	or     ax,WORD PTR [bp-0x2]
    a7ec:	74 11                	je     0xa7ff
    a7ee:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    a7f1:	33 d2                	xor    dx,dx
    a7f3:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
    a7f6:	83 da 00             	sbb    dx,0x0
    a7f9:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
    a7fc:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
    a7ff:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a802:	ff 76 08             	push   WORD PTR [bp+0x8]
    a805:	9a cc 49 00 00       	call   0x0:0x49cc
    a80a:	83 c4 04             	add    sp,0x4
    a80d:	50                   	push   ax
    a80e:	6a 0a                	push   0xa
    a810:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a813:	ff 76 08             	push   WORD PTR [bp+0x8]
    a816:	9a 81 52 00 00       	call   0x0:0x5281
    a81b:	83 c4 08             	add    sp,0x8
    a81e:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    a821:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
    a824:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
    a827:	0b 46 fa             	or     ax,WORD PTR [bp-0x6]
    a82a:	74 23                	je     0xa84f
    a82c:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
    a82f:	33 d2                	xor    dx,dx
    a831:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
    a834:	83 da 00             	sbb    dx,0x0
    a837:	3b 56 f4             	cmp    dx,WORD PTR [bp-0xc]
    a83a:	77 13                	ja     0xa84f
    a83c:	72 05                	jb     0xa843
    a83e:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
    a841:	73 0c                	jae    0xa84f
    a843:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
    a846:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
    a849:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    a84c:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    a84f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    a852:	0b 46 fe             	or     ax,WORD PTR [bp-0x2]
    a855:	74 45                	je     0xa89c
    a857:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    a85a:	33 d2                	xor    dx,dx
    a85c:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
    a85f:	83 da 00             	sbb    dx,0x0
    a862:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
    a865:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
    a868:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a86b:	ff 76 08             	push   WORD PTR [bp+0x8]
    a86e:	9a cc 49 00 00       	call   0x0:0x49cc
    a873:	83 c4 04             	add    sp,0x4
    a876:	33 d2                	xor    dx,dx
    a878:	3b 56 f4             	cmp    dx,WORD PTR [bp-0xc]
    a87b:	72 35                	jb     0xa8b2
    a87d:	77 05                	ja     0xa884
    a87f:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
    a882:	76 2e                	jbe    0xa8b2
    a884:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
    a887:	26 8a 07             	mov    al,BYTE PTR es:[bx]
    a88a:	88 46 f6             	mov    BYTE PTR [bp-0xa],al
    a88d:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
    a890:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
    a894:	c6 46 f7 00          	mov    BYTE PTR [bp-0x9],0x0
    a898:	eb 18                	jmp    0xa8b2
    a89a:	eb 16                	jmp    0xa8b2
    a89c:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a89f:	ff 76 08             	push   WORD PTR [bp+0x8]
    a8a2:	9a cc 49 00 00       	call   0x0:0x49cc
    a8a7:	83 c4 04             	add    sp,0x4
    a8aa:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
    a8af:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
    a8b2:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    a8b5:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    a8b8:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
    a8bb:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    a8be:	26 89 07             	mov    WORD PTR es:[bx],ax
    a8c1:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    a8c4:	b4 00                	mov    ah,0x0
    a8c6:	25 01 00             	and    ax,0x1
    a8c9:	3d 01 00             	cmp    ax,0x1
    a8cc:	75 24                	jne    0xa8f2
    a8ce:	6a 01                	push   0x1
    a8d0:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a8d3:	ff 76 08             	push   WORD PTR [bp+0x8]
    a8d6:	9a 48 00 da 16       	call   0x16da:0x48
    a8db:	83 c4 06             	add    sp,0x6
    a8de:	40                   	inc    ax
    a8df:	29 46 0c             	sub    WORD PTR [bp+0xc],ax
    a8e2:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    a8e6:	7d 04                	jge    0xa8ec
    a8e8:	33 c0                	xor    ax,ax
    a8ea:	eb 03                	jmp    0xa8ef
    a8ec:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    a8ef:	89 46 0c             	mov    WORD PTR [bp+0xc],ax
    a8f2:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    a8f5:	b4 00                	mov    ah,0x0
    a8f7:	25 02 00             	and    ax,0x2
    a8fa:	3d 02 00             	cmp    ax,0x2
    a8fd:	74 03                	je     0xa902
    a8ff:	e9 97 01             	jmp    0xaa99
    a902:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    a905:	b4 00                	mov    ah,0x0
    a907:	25 01 00             	and    ax,0x1
    a90a:	3d 01 00             	cmp    ax,0x1
    a90d:	75 05                	jne    0xa914
    a90f:	ff 4e 0c             	dec    WORD PTR [bp+0xc]
    a912:	eb 03                	jmp    0xa917
    a914:	ff 46 0c             	inc    WORD PTR [bp+0xc]
    a917:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    a91b:	7d 04                	jge    0xa921
    a91d:	33 c0                	xor    ax,ax
    a91f:	eb                   	.byte 0xeb
