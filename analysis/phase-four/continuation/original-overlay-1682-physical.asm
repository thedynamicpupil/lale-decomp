
analysis/phase-four/continuation/original-overlay-1682.bin:     file format binary


Disassembly of section .data:

0003f5a0 <.data>:
   3f5a0:	55                   	push   bp
   3f5a1:	8b ec                	mov    bp,sp
   3f5a3:	83 ec 0e             	sub    sp,0xe
   3f5a6:	b8 88 01             	mov    ax,0x188
   3f5a9:	8e c0                	mov    es,ax
   3f5ab:	26 a1 4c e7          	mov    ax,es:0xe74c
   3f5af:	26 8b 16 4a e7       	mov    dx,WORD PTR es:0xe74a
   3f5b4:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   3f5b7:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   3f5ba:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3f5bd:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   3f5c0:	03 56 0a             	add    dx,WORD PTR [bp+0xa]
   3f5c3:	15 00 00             	adc    ax,0x0
   3f5c6:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3f5c9:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   3f5cc:	9a 45 2e 00 00       	call   0x0:0x2e45
   3f5d1:	0b c0                	or     ax,ax
   3f5d3:	74 07                	je     0x3f5dc
   3f5d5:	9a d7 29 00 00       	call   0x0:0x29d7
   3f5da:	eb 48                	jmp    0x3f624
   3f5dc:	16                   	push   ss
   3f5dd:	8d 46 f2             	lea    ax,[bp-0xe]
   3f5e0:	50                   	push   ax
   3f5e1:	16                   	push   ss
   3f5e2:	8d 46 f2             	lea    ax,[bp-0xe]
   3f5e5:	50                   	push   ax
   3f5e6:	16                   	push   ss
   3f5e7:	8d 46 f2             	lea    ax,[bp-0xe]
   3f5ea:	50                   	push   ax
   3f5eb:	9a af 04 30 00       	call   0x30:0x4af
   3f5f0:	83 c4 0c             	add    sp,0xc
   3f5f3:	0b c0                	or     ax,ax
   3f5f5:	74 05                	je     0x3f5fc
   3f5f7:	b8 20 00             	mov    ax,0x20
   3f5fa:	eb 28                	jmp    0x3f624
   3f5fc:	b8 88 01             	mov    ax,0x188
   3f5ff:	8e c0                	mov    es,ax
   3f601:	26 a1 4c e7          	mov    ax,es:0xe74c
   3f605:	26 8b 16 4a e7       	mov    dx,WORD PTR es:0xe74a
   3f60a:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   3f60d:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   3f610:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   3f613:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   3f616:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   3f619:	77 07                	ja     0x3f622
   3f61b:	72 af                	jb     0x3f5cc
   3f61d:	3b 56 f4             	cmp    dx,WORD PTR [bp-0xc]
   3f620:	72 aa                	jb     0x3f5cc
   3f622:	33 c0                	xor    ax,ax
   3f624:	c9                   	leave
   3f625:	cb                   	retf
   3f626:	55                   	push   bp
   3f627:	8b ec                	mov    bp,sp
   3f629:	83 ec 3c             	sub    sp,0x3c
   3f62c:	c6 46 fa 00          	mov    BYTE PTR [bp-0x6],0x0
   3f630:	c6 46 f9 00          	mov    BYTE PTR [bp-0x7],0x0
   3f634:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   3f637:	bb 0b 00             	mov    bx,0xb
   3f63a:	33 d2                	xor    dx,dx
   3f63c:	f7 f3                	div    bx
   3f63e:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3f641:	c6 46 f3 00          	mov    BYTE PTR [bp-0xd],0x0
   3f645:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   3f648:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   3f64d:	75 14                	jne    0x3f663
   3f64f:	c6 46 f9 01          	mov    BYTE PTR [bp-0x7],0x1
   3f653:	6a 01                	push   0x1
   3f655:	ff 76 08             	push   WORD PTR [bp+0x8]
   3f658:	ff 76 06             	push   WORD PTR [bp+0x6]
   3f65b:	9a f4 05 20 00       	call   0x20:0x5f4
   3f660:	83 c4 06             	add    sp,0x6
   3f663:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   3f666:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   3f66b:	75 16                	jne    0x3f683
   3f66d:	c6 46 fa 01          	mov    BYTE PTR [bp-0x6],0x1
   3f671:	6a 01                	push   0x1
   3f673:	ff 76 0c             	push   WORD PTR [bp+0xc]
   3f676:	ff 76 0a             	push   WORD PTR [bp+0xa]
   3f679:	9a f4 05 20 00       	call   0x20:0x5f4
   3f67e:	83 c4 06             	add    sp,0x6
   3f681:	eb 2e                	jmp    0x3f6b1
   3f683:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   3f686:	26 8b 47 06          	mov    ax,WORD PTR es:[bx+0x6]
   3f68a:	26 8b 57 04          	mov    dx,WORD PTR es:[bx+0x4]
   3f68e:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   3f691:	26 3b 47 06          	cmp    ax,WORD PTR es:[bx+0x6]
   3f695:	75 06                	jne    0x3f69d
   3f697:	26 3b 57 04          	cmp    dx,WORD PTR es:[bx+0x4]
   3f69b:	74 14                	je     0x3f6b1
   3f69d:	6a 68                	push   0x68
   3f69f:	6a 00                	push   0x0
   3f6a1:	6a 00                	push   0x0
   3f6a3:	6a 67                	push   0x67
   3f6a5:	1e                   	push   ds
   3f6a6:	68 46 4b             	push   0x4b46
   3f6a9:	9a 2a 00 58 01       	call   0x158:0x2a
   3f6ae:	83 c4 0c             	add    sp,0xc
   3f6b1:	6a 00                	push   0x0
   3f6b3:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   3f6b6:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   3f6ba:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   3f6be:	9a 64 01 20 00       	call   0x20:0x164
   3f6c3:	83 c4 06             	add    sp,0x6
   3f6c6:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   3f6c9:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3f6cc:	6a 00                	push   0x0
   3f6ce:	b8 88 01             	mov    ax,0x188
   3f6d1:	8e c0                	mov    es,ax
   3f6d3:	26 ff 36 31 e5       	push   WORD PTR es:0xe531
   3f6d8:	26 ff 36 2f e5       	push   WORD PTR es:0xe52f
   3f6dd:	9a ab 04 20 00       	call   0x20:0x4ab
   3f6e2:	83 c4 06             	add    sp,0x6
   3f6e5:	bb 88 01             	mov    bx,0x188
   3f6e8:	8e c3                	mov    es,bx
   3f6ea:	26 89 16 6e e5       	mov    WORD PTR es:0xe56e,dx
   3f6ef:	26 a3 6c e5          	mov    es:0xe56c,ax
   3f6f3:	b8 88 01             	mov    ax,0x188
   3f6f6:	8e c0                	mov    es,ax
   3f6f8:	26 c4 1e 6c e5       	les    bx,DWORD PTR es:0xe56c
   3f6fd:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   3f701:	26 ff 37             	push   WORD PTR es:[bx]
   3f704:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f707:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f70a:	ff 76 0c             	push   WORD PTR [bp+0xc]
   3f70d:	ff 76 0a             	push   WORD PTR [bp+0xa]
   3f710:	ff 76 08             	push   WORD PTR [bp+0x8]
   3f713:	ff 76 06             	push   WORD PTR [bp+0x6]
   3f716:	9a fc 08 30 00       	call   0x30:0x8fc
   3f71b:	83 c4 10             	add    sp,0x10
   3f71e:	6a 01                	push   0x1
   3f720:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f723:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f726:	9a ab 04 20 00       	call   0x20:0x4ab
   3f72b:	83 c4 06             	add    sp,0x6
   3f72e:	89 56 da             	mov    WORD PTR [bp-0x26],dx
   3f731:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   3f734:	c6 46 fb 07          	mov    BYTE PTR [bp-0x5],0x7
   3f738:	eb 55                	jmp    0x3f78f
   3f73a:	b8 88 01             	mov    ax,0x188
   3f73d:	8e c0                	mov    es,ax
   3f73f:	26 c4 1e 6c e5       	les    bx,DWORD PTR es:0xe56c
   3f744:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   3f748:	26 ff 37             	push   WORD PTR es:[bx]
   3f74b:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f74e:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f751:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f754:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f757:	ff 76 0c             	push   WORD PTR [bp+0xc]
   3f75a:	ff 76 0a             	push   WORD PTR [bp+0xa]
   3f75d:	9a fc 08 30 00       	call   0x30:0x8fc
   3f762:	83 c4 10             	add    sp,0x10
   3f765:	6a 01                	push   0x1
   3f767:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f76a:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f76d:	9a ab 04 20 00       	call   0x20:0x4ab
   3f772:	83 c4 06             	add    sp,0x6
   3f775:	50                   	push   ax
   3f776:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   3f779:	98                   	cbw
   3f77a:	c1 e0 02             	shl    ax,0x2
   3f77d:	8d 5e c4             	lea    bx,[bp-0x3c]
   3f780:	03 c3                	add    ax,bx
   3f782:	8b d8                	mov    bx,ax
   3f784:	36 89 57 02          	mov    WORD PTR ss:[bx+0x2],dx
   3f788:	58                   	pop    ax
   3f789:	36 89 07             	mov    WORD PTR ss:[bx],ax
   3f78c:	fe 46 fb             	inc    BYTE PTR [bp-0x5]
   3f78f:	80 7e fb 0b          	cmp    BYTE PTR [bp-0x5],0xb
   3f793:	7c a5                	jl     0x3f73a
   3f795:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f798:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f79b:	ff 76 da             	push   WORD PTR [bp-0x26]
   3f79e:	ff 76 d8             	push   WORD PTR [bp-0x28]
   3f7a1:	9a 8a 06 20 00       	call   0x20:0x68a
   3f7a6:	83 c4 08             	add    sp,0x8
   3f7a9:	b8 88 01             	mov    ax,0x188
   3f7ac:	8e c0                	mov    es,ax
   3f7ae:	26 c4 1e 6c e5       	les    bx,DWORD PTR es:0xe56c
   3f7b3:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   3f7b7:	26 ff 37             	push   WORD PTR es:[bx]
   3f7ba:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f7bd:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f7c0:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f7c3:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f7c6:	ff 76 e2             	push   WORD PTR [bp-0x1e]
   3f7c9:	ff 76 e0             	push   WORD PTR [bp-0x20]
   3f7cc:	9a fc 08 30 00       	call   0x30:0x8fc
   3f7d1:	83 c4 10             	add    sp,0x10
   3f7d4:	6a 01                	push   0x1
   3f7d6:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f7d9:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f7dc:	9a ab 04 20 00       	call   0x20:0x4ab
   3f7e1:	83 c4 06             	add    sp,0x6
   3f7e4:	89 56 de             	mov    WORD PTR [bp-0x22],dx
   3f7e7:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   3f7ea:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f7ed:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f7f0:	ff 76 da             	push   WORD PTR [bp-0x26]
   3f7f3:	ff 76 d8             	push   WORD PTR [bp-0x28]
   3f7f6:	9a 8a 06 20 00       	call   0x20:0x68a
   3f7fb:	83 c4 08             	add    sp,0x8
   3f7fe:	c6 46 fb 03          	mov    BYTE PTR [bp-0x5],0x3
   3f802:	eb 55                	jmp    0x3f859
   3f804:	b8 88 01             	mov    ax,0x188
   3f807:	8e c0                	mov    es,ax
   3f809:	26 c4 1e 6c e5       	les    bx,DWORD PTR es:0xe56c
   3f80e:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   3f812:	26 ff 37             	push   WORD PTR es:[bx]
   3f815:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f818:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f81b:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f81e:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f821:	ff 76 08             	push   WORD PTR [bp+0x8]
   3f824:	ff 76 06             	push   WORD PTR [bp+0x6]
   3f827:	9a fc 08 30 00       	call   0x30:0x8fc
   3f82c:	83 c4 10             	add    sp,0x10
   3f82f:	6a 01                	push   0x1
   3f831:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f834:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f837:	9a ab 04 20 00       	call   0x20:0x4ab
   3f83c:	83 c4 06             	add    sp,0x6
   3f83f:	50                   	push   ax
   3f840:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   3f843:	98                   	cbw
   3f844:	c1 e0 02             	shl    ax,0x2
   3f847:	8d 5e c4             	lea    bx,[bp-0x3c]
   3f84a:	03 c3                	add    ax,bx
   3f84c:	8b d8                	mov    bx,ax
   3f84e:	36 89 57 02          	mov    WORD PTR ss:[bx+0x2],dx
   3f852:	58                   	pop    ax
   3f853:	36 89 07             	mov    WORD PTR ss:[bx],ax
   3f856:	fe 4e fb             	dec    BYTE PTR [bp-0x5]
   3f859:	80 7e fb 00          	cmp    BYTE PTR [bp-0x5],0x0
   3f85d:	7d a5                	jge    0x3f804
   3f85f:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f862:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f865:	ff 76 da             	push   WORD PTR [bp-0x26]
   3f868:	ff 76 d8             	push   WORD PTR [bp-0x28]
   3f86b:	9a 8a 06 20 00       	call   0x20:0x68a
   3f870:	83 c4 08             	add    sp,0x8
   3f873:	b8 88 01             	mov    ax,0x188
   3f876:	8e c0                	mov    es,ax
   3f878:	26 c4 1e 6c e5       	les    bx,DWORD PTR es:0xe56c
   3f87d:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   3f881:	26 ff 37             	push   WORD PTR es:[bx]
   3f884:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f887:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f88a:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f88d:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f890:	ff 76 d2             	push   WORD PTR [bp-0x2e]
   3f893:	ff 76 d0             	push   WORD PTR [bp-0x30]
   3f896:	9a fc 08 30 00       	call   0x30:0x8fc
   3f89b:	83 c4 10             	add    sp,0x10
   3f89e:	6a 01                	push   0x1
   3f8a0:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3f8a3:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3f8a6:	9a ab 04 20 00       	call   0x20:0x4ab
   3f8ab:	83 c4 06             	add    sp,0x6
   3f8ae:	89 56 d6             	mov    WORD PTR [bp-0x2a],dx
   3f8b1:	89 46 d4             	mov    WORD PTR [bp-0x2c],ax
   3f8b4:	ff 76 14             	push   WORD PTR [bp+0x14]
   3f8b7:	8a 46 12             	mov    al,BYTE PTR [bp+0x12]
   3f8ba:	50                   	push   ax
   3f8bb:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
   3f8be:	50                   	push   ax
   3f8bf:	0e                   	push   cs
   3f8c0:	e8 dd fc             	call   0x3f5a0
   3f8c3:	83 c4 06             	add    sp,0x6
   3f8c6:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   3f8c9:	0b c0                	or     ax,ax
   3f8cb:	74 15                	je     0x3f8e2
   3f8cd:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   3f8d0:	3d 1b 00             	cmp    ax,0x1b
   3f8d3:	74 02                	je     0x3f8d7
   3f8d5:	eb 07                	jmp    0x3f8de
   3f8d7:	c6 46 f3 01          	mov    BYTE PTR [bp-0xd],0x1
   3f8db:	e9 78 01             	jmp    0x3fa56
   3f8de:	c6 46 f3 02          	mov    BYTE PTR [bp-0xd],0x2
   3f8e2:	b8 88 01             	mov    ax,0x188
   3f8e5:	8e c0                	mov    es,ax
   3f8e7:	26 a1 4a e7          	mov    ax,es:0xe74a
   3f8eb:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   3f8ee:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3f8f1:	b8 88 01             	mov    ax,0x188
   3f8f4:	8e c0                	mov    es,ax
   3f8f6:	26 a1 a1 e2          	mov    ax,es:0xe2a1
   3f8fa:	26 8b 16 9f e2       	mov    dx,WORD PTR es:0xe29f
   3f8ff:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   3f902:	75 05                	jne    0x3f909
   3f904:	3b 56 06             	cmp    dx,WORD PTR [bp+0x6]
   3f907:	74 47                	je     0x3f950
   3f909:	ba da 03             	mov    dx,0x3da
   3f90c:	ec                   	in     al,dx
   3f90d:	b4 00                	mov    ah,0x0
   3f90f:	25 08 00             	and    ax,0x8
   3f912:	3d 08 00             	cmp    ax,0x8
   3f915:	75 f2                	jne    0x3f909
   3f917:	ba da 03             	mov    dx,0x3da
   3f91a:	ec                   	in     al,dx
   3f91b:	a8 08                	test   al,0x8
   3f91d:	75 f8                	jne    0x3f917
   3f91f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   3f922:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   3f926:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   3f92a:	6a 00                	push   0x0
   3f92c:	ff 76 16             	push   WORD PTR [bp+0x16]
   3f92f:	6a 00                	push   0x0
   3f931:	6a 00                	push   0x0
   3f933:	b8 88 01             	mov    ax,0x188
   3f936:	8e c0                	mov    es,ax
   3f938:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   3f93d:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   3f942:	ff 76 08             	push   WORD PTR [bp+0x8]
   3f945:	ff 76 06             	push   WORD PTR [bp+0x6]
   3f948:	9a c9 07 20 00       	call   0x20:0x7c9
   3f94d:	83 c4 14             	add    sp,0x14
   3f950:	b8 88 01             	mov    ax,0x188
   3f953:	8e c0                	mov    es,ax
   3f955:	26 a1 4a e7          	mov    ax,es:0xe74a
   3f959:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   3f95c:	72 f2                	jb     0x3f950
   3f95e:	c6 46 fb 00          	mov    BYTE PTR [bp-0x5],0x0
   3f962:	e9 84 00             	jmp    0x3f9e9
   3f965:	b8 88 01             	mov    ax,0x188
   3f968:	8e c0                	mov    es,ax
   3f96a:	26 a1 4a e7          	mov    ax,es:0xe74a
   3f96e:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   3f971:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3f974:	ba da 03             	mov    dx,0x3da
   3f977:	ec                   	in     al,dx
   3f978:	b4 00                	mov    ah,0x0
   3f97a:	25 08 00             	and    ax,0x8
   3f97d:	3d 08 00             	cmp    ax,0x8
   3f980:	75 f2                	jne    0x3f974
   3f982:	ba da 03             	mov    dx,0x3da
   3f985:	ec                   	in     al,dx
   3f986:	a8 08                	test   al,0x8
   3f988:	75 f8                	jne    0x3f982
   3f98a:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   3f98d:	98                   	cbw
   3f98e:	c1 e0 02             	shl    ax,0x2
   3f991:	8d 56 c4             	lea    dx,[bp-0x3c]
   3f994:	03 c2                	add    ax,dx
   3f996:	8b d8                	mov    bx,ax
   3f998:	36 c4 1f             	les    bx,DWORD PTR ss:[bx]
   3f99b:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   3f99f:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   3f9a3:	6a 00                	push   0x0
   3f9a5:	ff 76 16             	push   WORD PTR [bp+0x16]
   3f9a8:	6a 00                	push   0x0
   3f9aa:	6a 00                	push   0x0
   3f9ac:	b8 88 01             	mov    ax,0x188
   3f9af:	8e c0                	mov    es,ax
   3f9b1:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   3f9b6:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   3f9bb:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   3f9be:	98                   	cbw
   3f9bf:	c1 e0 02             	shl    ax,0x2
   3f9c2:	8d 56 c4             	lea    dx,[bp-0x3c]
   3f9c5:	03 c2                	add    ax,dx
   3f9c7:	8b d8                	mov    bx,ax
   3f9c9:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   3f9cd:	36 ff 37             	push   WORD PTR ss:[bx]
   3f9d0:	9a c9 07 20 00       	call   0x20:0x7c9
   3f9d5:	83 c4 14             	add    sp,0x14
   3f9d8:	b8 88 01             	mov    ax,0x188
   3f9db:	8e c0                	mov    es,ax
   3f9dd:	26 a1 4a e7          	mov    ax,es:0xe74a
   3f9e1:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   3f9e4:	72 f2                	jb     0x3f9d8
   3f9e6:	fe 46 fb             	inc    BYTE PTR [bp-0x5]
   3f9e9:	80 7e fb 0b          	cmp    BYTE PTR [bp-0x5],0xb
   3f9ed:	7d 03                	jge    0x3f9f2
   3f9ef:	e9 73 ff             	jmp    0x3f965
   3f9f2:	b8 88 01             	mov    ax,0x188
   3f9f5:	8e c0                	mov    es,ax
   3f9f7:	26 a1 4a e7          	mov    ax,es:0xe74a
   3f9fb:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   3f9fe:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3fa01:	ba da 03             	mov    dx,0x3da
   3fa04:	ec                   	in     al,dx
   3fa05:	b4 00                	mov    ah,0x0
   3fa07:	25 08 00             	and    ax,0x8
   3fa0a:	3d 08 00             	cmp    ax,0x8
   3fa0d:	75 f2                	jne    0x3fa01
   3fa0f:	ba da 03             	mov    dx,0x3da
   3fa12:	ec                   	in     al,dx
   3fa13:	a8 08                	test   al,0x8
   3fa15:	75 f8                	jne    0x3fa0f
   3fa17:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   3fa1a:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   3fa1e:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   3fa22:	6a 00                	push   0x0
   3fa24:	ff 76 16             	push   WORD PTR [bp+0x16]
   3fa27:	6a 00                	push   0x0
   3fa29:	6a 00                	push   0x0
   3fa2b:	b8 88 01             	mov    ax,0x188
   3fa2e:	8e c0                	mov    es,ax
   3fa30:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   3fa35:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   3fa3a:	ff 76 0c             	push   WORD PTR [bp+0xc]
   3fa3d:	ff 76 0a             	push   WORD PTR [bp+0xa]
   3fa40:	9a c9 07 20 00       	call   0x20:0x7c9
   3fa45:	83 c4 14             	add    sp,0x14
   3fa48:	b8 88 01             	mov    ax,0x188
   3fa4b:	8e c0                	mov    es,ax
   3fa4d:	26 a1 4a e7          	mov    ax,es:0xe74a
   3fa51:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   3fa54:	72 f2                	jb     0x3fa48
   3fa56:	c6 46 fb 00          	mov    BYTE PTR [bp-0x5],0x0
   3fa5a:	eb 27                	jmp    0x3fa83
   3fa5c:	1e                   	push   ds
   3fa5d:	68 55 4b             	push   0x4b55
   3fa60:	68 a0 00             	push   0xa0
   3fa63:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   3fa66:	98                   	cbw
   3fa67:	c1 e0 02             	shl    ax,0x2
   3fa6a:	8d 56 c4             	lea    dx,[bp-0x3c]
   3fa6d:	03 c2                	add    ax,dx
   3fa6f:	8b d8                	mov    bx,ax
   3fa71:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   3fa75:	36 ff 37             	push   WORD PTR ss:[bx]
   3fa78:	9a 60 03 20 00       	call   0x20:0x360
   3fa7d:	83 c4 0a             	add    sp,0xa
   3fa80:	fe 46 fb             	inc    BYTE PTR [bp-0x5]
   3fa83:	80 7e fb 0b          	cmp    BYTE PTR [bp-0x5],0xb
   3fa87:	7c d3                	jl     0x3fa5c
   3fa89:	1e                   	push   ds
   3fa8a:	68 64 4b             	push   0x4b64
   3fa8d:	68 a1 00             	push   0xa1
   3fa90:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3fa93:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3fa96:	9a 60 03 20 00       	call   0x20:0x360
   3fa9b:	83 c4 0a             	add    sp,0xa
   3fa9e:	1e                   	push   ds
   3fa9f:	68 73 4b             	push   0x4b73
   3faa2:	68 a2 00             	push   0xa2
   3faa5:	b8 88 01             	mov    ax,0x188
   3faa8:	8e c0                	mov    es,ax
   3faaa:	26 ff 36 6e e5       	push   WORD PTR es:0xe56e
   3faaf:	26 ff 36 6c e5       	push   WORD PTR es:0xe56c
   3fab4:	9a 60 03 20 00       	call   0x20:0x360
   3fab9:	83 c4 0a             	add    sp,0xa
   3fabc:	80 7e fa 00          	cmp    BYTE PTR [bp-0x6],0x0
   3fac0:	74 10                	je     0x3fad2
   3fac2:	6a 00                	push   0x0
   3fac4:	ff 76 0c             	push   WORD PTR [bp+0xc]
   3fac7:	ff 76 0a             	push   WORD PTR [bp+0xa]
   3faca:	9a f4 05 20 00       	call   0x20:0x5f4
   3facf:	83 c4 06             	add    sp,0x6
   3fad2:	80 7e f9 00          	cmp    BYTE PTR [bp-0x7],0x0
   3fad6:	74 10                	je     0x3fae8
   3fad8:	6a 00                	push   0x0
   3fada:	ff 76 08             	push   WORD PTR [bp+0x8]
   3fadd:	ff 76 06             	push   WORD PTR [bp+0x6]
   3fae0:	9a f4 05 20 00       	call   0x20:0x5f4
   3fae5:	83 c4 06             	add    sp,0x6
   3fae8:	8a 46 f3             	mov    al,BYTE PTR [bp-0xd]
   3faeb:	c9                   	leave
   3faec:	cb                   	retf
   3faed:	55                   	push   bp
   3faee:	8b ec                	mov    bp,sp
   3faf0:	83 ec 0c             	sub    sp,0xc
   3faf3:	c6 46 fb 00          	mov    BYTE PTR [bp-0x5],0x0
   3faf7:	c6 46 fa 00          	mov    BYTE PTR [bp-0x6],0x0
   3fafb:	80 7e 08 c8          	cmp    BYTE PTR [bp+0x8],0xc8
   3faff:	74 11                	je     0x3fb12
   3fb01:	80 7e 08 02          	cmp    BYTE PTR [bp+0x8],0x2
   3fb05:	76 0b                	jbe    0x3fb12
   3fb07:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   3fb0a:	b4 00                	mov    ah,0x0
   3fb0c:	05 fe ff             	add    ax,0xfffe
   3fb0f:	e9 94 0b             	jmp    0x306a6
   3fb12:	b8 88 01             	mov    ax,0x188
   3fb15:	8e c0                	mov    es,ax
   3fb17:	26 c7 06 1a 73 40 00 	mov    WORD PTR es:0x731a,0x40
   3fb1e:	68 88 01             	push   0x188
   3fb21:	68 2c 96             	push   0x962c
   3fb24:	68 88 01             	push   0x188
   3fb27:	68 b4 98             	push   0x98b4
   3fb2a:	b9 48 00             	mov    cx,0x48
   3fb2d:	9a 7a 12 00 00       	call   0x0:0x127a
   3fb32:	9a e3 01 40 00       	call   0x40:0x1e3
   3fb37:	9a 3e 00 50 01       	call   0x150:0x3e
   3fb3c:	80 7e 08 c8          	cmp    BYTE PTR [bp+0x8],0xc8
   3fb40:	75 03                	jne    0x3fb45
   3fb42:	e9 f1 00             	jmp    0x3fc36
   3fb45:	1e                   	push   ds
   3fb46:	68 82 4b             	push   0x4b82
   3fb49:	9a 57 00 40 01       	call   0x140:0x57
   3fb4e:	83 c4 04             	add    sp,0x4
   3fb51:	3c 1b                	cmp    al,0x1b
   3fb53:	75 35                	jne    0x3fb8a
   3fb55:	b8 88 01             	mov    ax,0x188
   3fb58:	8e c0                	mov    es,ax
   3fb5a:	26 a1 1e 73          	mov    ax,es:0x731e
   3fb5e:	ba 88 01             	mov    dx,0x188
   3fb61:	8e c2                	mov    es,dx
   3fb63:	26 a3 18 73          	mov    es:0x7318,ax
   3fb67:	6a 00                	push   0x0
   3fb69:	b8 88 01             	mov    ax,0x188
   3fb6c:	8e c0                	mov    es,ax
   3fb6e:	26 a1 18 73          	mov    ax,es:0x7318
   3fb72:	f7 d8                	neg    ax
   3fb74:	50                   	push   ax
   3fb75:	6a 00                	push   0x0
   3fb77:	9a 3f 07 30 00       	call   0x30:0x73f
   3fb7c:	83 c4 06             	add    sp,0x6
   3fb7f:	c6 46 08 01          	mov    BYTE PTR [bp+0x8],0x1
   3fb83:	c6 46 fa 01          	mov    BYTE PTR [bp-0x6],0x1
   3fb87:	e9 96 00             	jmp    0x3fc20
   3fb8a:	b8 88 01             	mov    ax,0x188
   3fb8d:	8e c0                	mov    es,ax
   3fb8f:	26 a1 1e 73          	mov    ax,es:0x731e
   3fb93:	ba 88 01             	mov    dx,0x188
   3fb96:	8e c2                	mov    es,dx
   3fb98:	26 a3 18 73          	mov    es:0x7318,ax
   3fb9c:	6a 00                	push   0x0
   3fb9e:	b8 88 01             	mov    ax,0x188
   3fba1:	8e c0                	mov    es,ax
   3fba3:	26 a1 18 73          	mov    ax,es:0x7318
   3fba7:	f7 d8                	neg    ax
   3fba9:	50                   	push   ax
   3fbaa:	6a 00                	push   0x0
   3fbac:	9a 3f 07 30 00       	call   0x30:0x73f
   3fbb1:	83 c4 06             	add    sp,0x6
   3fbb4:	1e                   	push   ds
   3fbb5:	68 88 4b             	push   0x4b88
   3fbb8:	9a 57 00 40 01       	call   0x140:0x57
   3fbbd:	83 c4 04             	add    sp,0x4
   3fbc0:	3c 1b                	cmp    al,0x1b
   3fbc2:	75 32                	jne    0x3fbf6
   3fbc4:	b8 88 01             	mov    ax,0x188
   3fbc7:	8e c0                	mov    es,ax
   3fbc9:	26 a1 1e 73          	mov    ax,es:0x731e
   3fbcd:	ba 88 01             	mov    dx,0x188
   3fbd0:	8e c2                	mov    es,dx
   3fbd2:	26 a3 18 73          	mov    es:0x7318,ax
   3fbd6:	6a 00                	push   0x0
   3fbd8:	b8 88 01             	mov    ax,0x188
   3fbdb:	8e c0                	mov    es,ax
   3fbdd:	26 a1 18 73          	mov    ax,es:0x7318
   3fbe1:	f7 d8                	neg    ax
   3fbe3:	50                   	push   ax
   3fbe4:	6a 00                	push   0x0
   3fbe6:	9a 3f 07 30 00       	call   0x30:0x73f
   3fbeb:	83 c4 06             	add    sp,0x6
   3fbee:	c6 46 08 01          	mov    BYTE PTR [bp+0x8],0x1
   3fbf2:	c6 46 fa 01          	mov    BYTE PTR [bp-0x6],0x1
   3fbf6:	b8 88 01             	mov    ax,0x188
   3fbf9:	8e c0                	mov    es,ax
   3fbfb:	26 a1 1e 73          	mov    ax,es:0x731e
   3fbff:	ba 88 01             	mov    dx,0x188
   3fc02:	8e c2                	mov    es,dx
   3fc04:	26 a3 18 73          	mov    es:0x7318,ax
   3fc08:	6a 00                	push   0x0
   3fc0a:	b8 88 01             	mov    ax,0x188
   3fc0d:	8e c0                	mov    es,ax
   3fc0f:	26 a1 18 73          	mov    ax,es:0x7318
   3fc13:	f7 d8                	neg    ax
   3fc15:	50                   	push   ax
   3fc16:	6a 00                	push   0x0
   3fc18:	9a 3f 07 30 00       	call   0x30:0x73f
   3fc1d:	83 c4 06             	add    sp,0x6
   3fc20:	80 7e 08 01          	cmp    BYTE PTR [bp+0x8],0x1
   3fc24:	75 07                	jne    0x3fc2d
   3fc26:	c6 46 fa 01          	mov    BYTE PTR [bp-0x6],0x1
   3fc2a:	e9 aa 03             	jmp    0x3ffd7
   3fc2d:	80 7e 08 01          	cmp    BYTE PTR [bp+0x8],0x1
   3fc31:	77 03                	ja     0x3fc36
   3fc33:	e9 b6 00             	jmp    0x3fcec
   3fc36:	6a 13                	push   0x13
   3fc38:	9a 20 00 50 01       	call   0x150:0x20
   3fc3d:	59                   	pop    cx
   3fc3e:	9a 2a 00 50 01       	call   0x150:0x2a
   3fc43:	68 c7 00             	push   0xc7
   3fc46:	68 3f 01             	push   0x13f
   3fc49:	6a 00                	push   0x0
   3fc4b:	6a 00                	push   0x0
   3fc4d:	9a 4d 00 50 01       	call   0x150:0x4d
   3fc52:	83 c4 08             	add    sp,0x8
   3fc55:	9a 3e 00 50 01       	call   0x150:0x3e
   3fc5a:	c6 46 fa 01          	mov    BYTE PTR [bp-0x6],0x1
   3fc5e:	ff 76 06             	push   WORD PTR [bp+0x6]
   3fc61:	1e                   	push   ds
   3fc62:	68 90 4b             	push   0x4b90
   3fc65:	6a 01                	push   0x1
   3fc67:	9a 20 00 48 01       	call   0x148:0x20
   3fc6c:	83 c4 08             	add    sp,0x8
   3fc6f:	b8 88 01             	mov    ax,0x188
   3fc72:	8e c0                	mov    es,ax
   3fc74:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   3fc79:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   3fc7e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3fc81:	c1 e3 03             	shl    bx,0x3
   3fc84:	b8 88 01             	mov    ax,0x188
   3fc87:	8e c0                	mov    es,ax
   3fc89:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   3fc8e:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   3fc93:	9a 8a 06 20 00       	call   0x20:0x68a
   3fc98:	83 c4 08             	add    sp,0x8
   3fc9b:	1e                   	push   ds
   3fc9c:	68 9c 4b             	push   0x4b9c
   3fc9f:	68 05 01             	push   0x105
   3fca2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   3fca5:	c1 e0 03             	shl    ax,0x3
   3fca8:	05 9f e2             	add    ax,0xe29f
   3fcab:	68 88 01             	push   0x188
   3fcae:	50                   	push   ax
   3fcaf:	9a 2f 02 40 00       	call   0x40:0x22f
   3fcb4:	83 c4 0a             	add    sp,0xa
   3fcb7:	68 00 01             	push   0x100
   3fcba:	6a 00                	push   0x0
   3fcbc:	1e                   	push   ds
   3fcbd:	68 ab 4b             	push   0x4bab
   3fcc0:	9a 2a 00 48 01       	call   0x148:0x2a
   3fcc5:	83 c4 08             	add    sp,0x8
   3fcc8:	6a 00                	push   0x0
   3fcca:	b8 88 01             	mov    ax,0x188
   3fccd:	8e c0                	mov    es,ax
   3fccf:	26 a1 1e 73          	mov    ax,es:0x731e
   3fcd3:	ba 88 01             	mov    dx,0x188
   3fcd6:	8e c2                	mov    es,dx
   3fcd8:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   3fcdd:	50                   	push   ax
   3fcde:	68 40 06             	push   0x640
   3fce1:	9a 3f 07 30 00       	call   0x30:0x73f
   3fce6:	83 c4 06             	add    sp,0x6
   3fce9:	e9 cb 07             	jmp    0x304b7
   3fcec:	6a 12                	push   0x12
   3fcee:	9a 20 00 50 01       	call   0x150:0x20
   3fcf3:	59                   	pop    cx
   3fcf4:	b8 88 01             	mov    ax,0x188
   3fcf7:	8e c0                	mov    es,ax
   3fcf9:	26 c7 06 9b e2 80 02 	mov    WORD PTR es:0xe29b,0x280
   3fd00:	b8 88 01             	mov    ax,0x188
   3fd03:	8e c0                	mov    es,ax
   3fd05:	26 c7 06 9d e2 f0 00 	mov    WORD PTR es:0xe29d,0xf0
   3fd0c:	b8 88 01             	mov    ax,0x188
   3fd0f:	8e c0                	mov    es,ax
   3fd11:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   3fd16:	26 c7 47 06 02 00    	mov    WORD PTR es:[bx+0x6],0x2
   3fd1c:	26 c7 47 04 00 58    	mov    WORD PTR es:[bx+0x4],0x5800
   3fd22:	68 00 03             	push   0x300
   3fd25:	6a 00                	push   0x0
   3fd27:	6a 00                	push   0x0
   3fd29:	b8 88 01             	mov    ax,0x188
   3fd2c:	8e c0                	mov    es,ax
   3fd2e:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   3fd33:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   3fd38:	9a 8f 02 e0 01       	call   0x1e0:0x28f
   3fd3d:	83 c4 0a             	add    sp,0xa
   3fd40:	b8 88 01             	mov    ax,0x188
   3fd43:	8e c0                	mov    es,ax
   3fd45:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   3fd4a:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   3fd4f:	9a 50 00 30 00       	call   0x30:0x50
   3fd54:	83 c4 04             	add    sp,0x4
   3fd57:	68 00 01             	push   0x100
   3fd5a:	6a 00                	push   0x0
   3fd5c:	1e                   	push   ds
   3fd5d:	68 b7 4b             	push   0x4bb7
   3fd60:	9a 2a 00 48 01       	call   0x148:0x2a
   3fd65:	83 c4 08             	add    sp,0x8
   3fd68:	b8 88 01             	mov    ax,0x188
   3fd6b:	8e c0                	mov    es,ax
   3fd6d:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   3fd72:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   3fd77:	9a 5c 00 50 01       	call   0x150:0x5c
   3fd7c:	83 c4 04             	add    sp,0x4
   3fd7f:	ff 76 06             	push   WORD PTR [bp+0x6]
   3fd82:	1e                   	push   ds
   3fd83:	68 c2 4b             	push   0x4bc2
   3fd86:	6a 01                	push   0x1
   3fd88:	9a 20 00 48 01       	call   0x148:0x20
   3fd8d:	83 c4 08             	add    sp,0x8
   3fd90:	68 28 00             	push   0x28
   3fd93:	68 0a 00             	push   0xa
   3fd96:	6a 00                	push   0x0
   3fd98:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3fd9b:	50                   	push   ax
   3fd9c:	6a 00                	push   0x0
   3fd9e:	6a 00                	push   0x0
   3fda0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3fda3:	c1 e3 03             	shl    bx,0x3
   3fda6:	b8 88 01             	mov    ax,0x188
   3fda9:	8e c0                	mov    es,ax
   3fdab:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   3fdb0:	d1 e0                	shl    ax,1
   3fdb2:	50                   	push   ax
   3fdb3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3fdb6:	c1 e3 03             	shl    bx,0x3
   3fdb9:	b8 88 01             	mov    ax,0x188
   3fdbc:	8e c0                	mov    es,ax
   3fdbe:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   3fdc3:	6a 00                	push   0x0
   3fdc5:	6a 00                	push   0x0
   3fdc7:	9a c5 01 28 00       	call   0x28:0x1c5
   3fdcc:	83 c4 14             	add    sp,0x14
   3fdcf:	1e                   	push   ds
   3fdd0:	68 cd 4b             	push   0x4bcd
   3fdd3:	68 2f 01             	push   0x12f
   3fdd6:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   3fdd9:	c1 e0 03             	shl    ax,0x3
   3fddc:	05 9f e2             	add    ax,0xe29f
   3fddf:	68 88 01             	push   0x188
   3fde2:	50                   	push   ax
   3fde3:	9a 2f 02 40 00       	call   0x40:0x22f
   3fde8:	83 c4 0a             	add    sp,0xa
   3fdeb:	ff 76 06             	push   WORD PTR [bp+0x6]
   3fdee:	1e                   	push   ds
   3fdef:	68 dc 4b             	push   0x4bdc
   3fdf2:	6a 01                	push   0x1
   3fdf4:	9a 20 00 48 01       	call   0x148:0x20
   3fdf9:	83 c4 08             	add    sp,0x8
   3fdfc:	68 28 00             	push   0x28
   3fdff:	68 0a 00             	push   0xa
   3fe02:	6a 00                	push   0x0
   3fe04:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3fe07:	50                   	push   ax
   3fe08:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3fe0b:	c1 e3 03             	shl    bx,0x3
   3fe0e:	b8 88 01             	mov    ax,0x188
   3fe11:	8e c0                	mov    es,ax
   3fe13:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   3fe18:	d1 e0                	shl    ax,1
   3fe1a:	50                   	push   ax
   3fe1b:	6a 00                	push   0x0
   3fe1d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3fe20:	c1 e3 03             	shl    bx,0x3
   3fe23:	b8 88 01             	mov    ax,0x188
   3fe26:	8e c0                	mov    es,ax
   3fe28:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   3fe2d:	d1 e0                	shl    ax,1
   3fe2f:	50                   	push   ax
   3fe30:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3fe33:	c1 e3 03             	shl    bx,0x3
   3fe36:	b8 88 01             	mov    ax,0x188
   3fe39:	8e c0                	mov    es,ax
   3fe3b:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   3fe40:	6a 00                	push   0x0
   3fe42:	6a 00                	push   0x0
   3fe44:	9a c5 01 28 00       	call   0x28:0x1c5
   3fe49:	83 c4 14             	add    sp,0x14
   3fe4c:	1e                   	push   ds
   3fe4d:	68 e7 4b             	push   0x4be7
   3fe50:	68 33 01             	push   0x133
   3fe53:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   3fe56:	c1 e0 03             	shl    ax,0x3
   3fe59:	05 9f e2             	add    ax,0xe29f
   3fe5c:	68 88 01             	push   0x188
   3fe5f:	50                   	push   ax
   3fe60:	9a 2f 02 40 00       	call   0x40:0x22f
   3fe65:	83 c4 0a             	add    sp,0xa
   3fe68:	6a 00                	push   0x0
   3fe6a:	b8 88 01             	mov    ax,0x188
   3fe6d:	8e c0                	mov    es,ax
   3fe6f:	26 a1 1e 73          	mov    ax,es:0x731e
   3fe73:	ba 88 01             	mov    dx,0x188
   3fe76:	8e c2                	mov    es,dx
   3fe78:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   3fe7d:	50                   	push   ax
   3fe7e:	68 40 06             	push   0x640
   3fe81:	9a 3f 07 30 00       	call   0x30:0x73f
   3fe86:	83 c4 06             	add    sp,0x6
   3fe89:	68 b8 0b             	push   0xbb8
   3fe8c:	6a 20                	push   0x20
   3fe8e:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   3fe91:	fe 46 fb             	inc    BYTE PTR [bp-0x5]
   3fe94:	50                   	push   ax
   3fe95:	0e                   	push   cs
   3fe96:	e8 07 f7             	call   0x3f5a0
   3fe99:	83 c4 06             	add    sp,0x6
   3fe9c:	88 46 fa             	mov    BYTE PTR [bp-0x6],al
   3fe9f:	6a 00                	push   0x0
   3fea1:	b8 88 01             	mov    ax,0x188
   3fea4:	8e c0                	mov    es,ax
   3fea6:	26 a1 18 73          	mov    ax,es:0x7318
   3feaa:	f7 d8                	neg    ax
   3feac:	50                   	push   ax
   3fead:	68 40 06             	push   0x640
   3feb0:	9a 3f 07 30 00       	call   0x30:0x73f
   3feb5:	83 c4 06             	add    sp,0x6
   3feb8:	80 7e fa 1b          	cmp    BYTE PTR [bp-0x6],0x1b
   3febc:	75 03                	jne    0x3fec1
   3febe:	e9 16 01             	jmp    0x3ffd7
   3fec1:	6a 12                	push   0x12
   3fec3:	9a 20 00 50 01       	call   0x150:0x20
   3fec8:	59                   	pop    cx
   3fec9:	68 00 03             	push   0x300
   3fecc:	6a 00                	push   0x0
   3fece:	6a 00                	push   0x0
   3fed0:	b8 88 01             	mov    ax,0x188
   3fed3:	8e c0                	mov    es,ax
   3fed5:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   3feda:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   3fedf:	9a 8f 02 e0 01       	call   0x1e0:0x28f
   3fee4:	83 c4 0a             	add    sp,0xa
   3fee7:	b8 88 01             	mov    ax,0x188
   3feea:	8e c0                	mov    es,ax
   3feec:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   3fef1:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   3fef6:	9a 50 00 30 00       	call   0x30:0x50
   3fefb:	83 c4 04             	add    sp,0x4
   3fefe:	68 00 01             	push   0x100
   3ff01:	6a 00                	push   0x0
   3ff03:	1e                   	push   ds
   3ff04:	68 f6 4b             	push   0x4bf6
   3ff07:	9a 2a 00 48 01       	call   0x148:0x2a
   3ff0c:	83 c4 08             	add    sp,0x8
   3ff0f:	b8 88 01             	mov    ax,0x188
   3ff12:	8e c0                	mov    es,ax
   3ff14:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   3ff19:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   3ff1e:	9a 5c 00 50 01       	call   0x150:0x5c
   3ff23:	83 c4 04             	add    sp,0x4
   3ff26:	ff 76 06             	push   WORD PTR [bp+0x6]
   3ff29:	1e                   	push   ds
   3ff2a:	68 ff 4b             	push   0x4bff
   3ff2d:	6a 01                	push   0x1
   3ff2f:	9a 20 00 48 01       	call   0x148:0x20
   3ff34:	83 c4 08             	add    sp,0x8
   3ff37:	68 28 00             	push   0x28
   3ff3a:	68 0a 00             	push   0xa
   3ff3d:	6a 00                	push   0x0
   3ff3f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3ff42:	50                   	push   ax
   3ff43:	6a 64                	push   0x64
   3ff45:	6a 00                	push   0x0
   3ff47:	68 be 00             	push   0xbe
   3ff4a:	68 80 02             	push   0x280
   3ff4d:	6a 00                	push   0x0
   3ff4f:	6a 00                	push   0x0
   3ff51:	9a c5 01 28 00       	call   0x28:0x1c5
   3ff56:	83 c4 14             	add    sp,0x14
   3ff59:	1e                   	push   ds
   3ff5a:	68 08 4c             	push   0x4c08
   3ff5d:	68 44 01             	push   0x144
   3ff60:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   3ff63:	c1 e0 03             	shl    ax,0x3
   3ff66:	05 9f e2             	add    ax,0xe29f
   3ff69:	68 88 01             	push   0x188
   3ff6c:	50                   	push   ax
   3ff6d:	9a 2f 02 40 00       	call   0x40:0x22f
   3ff72:	83 c4 0a             	add    sp,0xa
   3ff75:	6a ff                	push   0xffff
   3ff77:	6a ff                	push   0xffff
   3ff79:	6a 02                	push   0x2
   3ff7b:	9a 34 00 78 01       	call   0x178:0x34
   3ff80:	83 c4 06             	add    sp,0x6
   3ff83:	6a 00                	push   0x0
   3ff85:	b8 88 01             	mov    ax,0x188
   3ff88:	8e c0                	mov    es,ax
   3ff8a:	26 a1 1e 73          	mov    ax,es:0x731e
   3ff8e:	ba 88 01             	mov    dx,0x188
   3ff91:	8e c2                	mov    es,dx
   3ff93:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   3ff98:	50                   	push   ax
   3ff99:	68 40 06             	push   0x640
   3ff9c:	9a 3f 07 30 00       	call   0x30:0x73f
   3ffa1:	83 c4 06             	add    sp,0x6
   3ffa4:	68 b8 0b             	push   0xbb8
   3ffa7:	6a 20                	push   0x20
   3ffa9:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   3ffac:	fe 46 fb             	inc    BYTE PTR [bp-0x5]
   3ffaf:	50                   	push   ax
   3ffb0:	0e                   	push   cs
   3ffb1:	e8 ec f5             	call   0x3f5a0
   3ffb4:	83 c4 06             	add    sp,0x6
   3ffb7:	88 46 fa             	mov    BYTE PTR [bp-0x6],al
   3ffba:	6a 00                	push   0x0
   3ffbc:	b8 88 01             	mov    ax,0x188
   3ffbf:	8e c0                	mov    es,ax
   3ffc1:	26 a1 18 73          	mov    ax,es:0x7318
   3ffc5:	f7 d8                	neg    ax
   3ffc7:	50                   	push   ax
   3ffc8:	68 40 06             	push   0x640
   3ffcb:	9a 3f 07 30 00       	call   0x30:0x73f
   3ffd0:	83 c4 06             	add    sp,0x6
   3ffd3:	80 7e fa 1b          	cmp    BYTE PTR [bp-0x6],0x1b
   3ffd7:	9a 39 00 78 01       	call   0x178:0x39
   3ffdc:	b4 00                	mov    ah,0x0
   3ffde:	0b c0                	or     ax,ax
   3ffe0:	75 0e                	jne    0x3fff0
   3ffe2:	6a ff                	push   0xffff
   3ffe4:	6a ff                	push   0xffff
   3ffe6:	6a 02                	push   0x2
   3ffe8:	9a 34 00 78 01       	call   0x178:0x34
   3ffed:	83 c4 06             	add    sp,0x6
   3fff0:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   3fff5:	eb 32                	jmp    0x40029
   3fff7:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3fffa:	03 5e fc             	add    bx,WORD PTR [bp-0x4]
   3fffd:	c1 e3 03             	shl    bx,0x3
   40000:	b8 88 01             	mov    ax,0x188
   40003:	8e c0                	mov    es,ax
   40005:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
   4000a:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
   4000f:	74 15                	je     0x40026
   40011:	6a 69                	push   0x69
   40013:	6a 00                	push   0x0
   40015:	6a 00                	push   0x0
   40017:	68 50 01             	push   0x150
   4001a:	1e                   	push   ds
   4001b:	68 17 4c             	push   0x4c17
   4001e:	9a 2a 00 58 01       	call   0x158:0x2a
   40023:	83 c4 0c             	add    sp,0xc
   40026:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   40029:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   4002d:	7c c8                	jl     0x3fff7
   4002f:	b8 88 01             	mov    ax,0x188
   40032:	8e c0                	mov    es,ax
   40034:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4003a:	74 54                	je     0x40090
   4003c:	9a 72 13 68 00       	call   0x68:0x1372
   40041:	3d 01 00             	cmp    ax,0x1
   40044:	74 4a                	je     0x40090
   40046:	1e                   	push   ds
   40047:	68 26 4c             	push   0x4c26
   4004a:	6a 00                	push   0x0
   4004c:	6a 00                	push   0x0
   4004e:	68 88 01             	push   0x188
   40051:	68 75 bb             	push   0xbb75
   40054:	9a f3 07 70 00       	call   0x70:0x7f3
   40059:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4005c:	0b c0                	or     ax,ax
   4005e:	74 30                	je     0x40090
   40060:	83 7e fe fe          	cmp    WORD PTR [bp-0x2],0xfffe
   40064:	75 0f                	jne    0x40075
   40066:	6a ff                	push   0xffff
   40068:	1e                   	push   ds
   40069:	68 3e 4c             	push   0x4c3e
   4006c:	68 53 01             	push   0x153
   4006f:	1e                   	push   ds
   40070:	68 2f 4c             	push   0x4c2f
   40073:	eb 13                	jmp    0x40088
   40075:	83 7e fe ff          	cmp    WORD PTR [bp-0x2],0xffff
   40079:	75 15                	jne    0x40090
   4007b:	6a ff                	push   0xffff
   4007d:	1e                   	push   ds
   4007e:	68 70 4c             	push   0x4c70
   40081:	68 54 01             	push   0x154
   40084:	1e                   	push   ds
   40085:	68 61 4c             	push   0x4c61
   40088:	9a 2a 00 58 01       	call   0x158:0x2a
   4008d:	83 c4 0c             	add    sp,0xc
   40090:	b8 88 01             	mov    ax,0x188
   40093:	8e c0                	mov    es,ax
   40095:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4009b:	75 03                	jne    0x400a0
   4009d:	e9 de 00             	jmp    0x4017e
   400a0:	9a 72 13 68 00       	call   0x68:0x1372
   400a5:	3d 01 00             	cmp    ax,0x1
   400a8:	75 03                	jne    0x400ad
   400aa:	e9 d1 00             	jmp    0x4017e
   400ad:	b8 88 01             	mov    ax,0x188
   400b0:	8e c0                	mov    es,ax
   400b2:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   400b7:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   400bc:	6a 00                	push   0x0
   400be:	6a 01                	push   0x1
   400c0:	9a 1f 12 68 00       	call   0x68:0x121f
   400c5:	6a ff                	push   0xffff
   400c7:	6a ff                	push   0xffff
   400c9:	6a 00                	push   0x0
   400cb:	6a 40                	push   0x40
   400cd:	9a 25 16 68 00       	call   0x68:0x1625
   400d2:	b8 88 01             	mov    ax,0x188
   400d5:	8e c0                	mov    es,ax
   400d7:	26 c4 1e 75 bb       	les    bx,DWORD PTR es:0xbb75
   400dc:	26 8a 47 29          	mov    al,BYTE PTR es:[bx+0x29]
   400e0:	b4 00                	mov    ah,0x0
   400e2:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   400e5:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   400ea:	e9 86 00             	jmp    0x40173
   400ed:	6a 00                	push   0x0
   400ef:	68 00 80             	push   0x8000
   400f2:	9a 79 17 00 00       	call   0x0:0x1779
   400f7:	99                   	cwd
   400f8:	50                   	push   ax
   400f9:	52                   	push   dx
   400fa:	33 d2                	xor    dx,dx
   400fc:	b8 15 00             	mov    ax,0x15
   400ff:	59                   	pop    cx
   40100:	5b                   	pop    bx
   40101:	9a 42 12 00 00       	call   0x0:0x1242
   40106:	52                   	push   dx
   40107:	50                   	push   ax
   40108:	9a df 12 00 00       	call   0x0:0x12df
   4010d:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   40110:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   40113:	99                   	cwd
   40114:	52                   	push   dx
   40115:	50                   	push   ax
   40116:	6a 00                	push   0x0
   40118:	68 00 80             	push   0x8000
   4011b:	9a 79 17 00 00       	call   0x0:0x1779
   40120:	99                   	cwd
   40121:	b1 02                	mov    cl,0x2
   40123:	9a 8d 13 00 00       	call   0x0:0x138d
   40128:	52                   	push   dx
   40129:	50                   	push   ax
   4012a:	9a df 12 00 00       	call   0x0:0x12df
   4012f:	50                   	push   ax
   40130:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   40133:	5a                   	pop    dx
   40134:	03 c2                	add    ax,dx
   40136:	99                   	cwd
   40137:	52                   	push   dx
   40138:	50                   	push   ax
   40139:	9a b4 01 60 00       	call   0x60:0x1b4
   4013e:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   40141:	40                   	inc    ax
   40142:	99                   	cwd
   40143:	52                   	push   dx
   40144:	50                   	push   ax
   40145:	6a 00                	push   0x0
   40147:	68 00 80             	push   0x8000
   4014a:	9a 79 17 00 00       	call   0x0:0x1779
   4014f:	99                   	cwd
   40150:	b1 02                	mov    cl,0x2
   40152:	9a 8d 13 00 00       	call   0x0:0x138d
   40157:	52                   	push   dx
   40158:	50                   	push   ax
   40159:	9a df 12 00 00       	call   0x0:0x12df
   4015e:	50                   	push   ax
   4015f:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   40162:	f7 d8                	neg    ax
   40164:	5a                   	pop    dx
   40165:	2b c2                	sub    ax,dx
   40167:	99                   	cwd
   40168:	52                   	push   dx
   40169:	50                   	push   ax
   4016a:	9a b4 01 60 00       	call   0x60:0x1b4
   4016f:	83 46 f6 02          	add    WORD PTR [bp-0xa],0x2
   40173:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   40176:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   40179:	7d 03                	jge    0x4017e
   4017b:	e9 6f ff             	jmp    0x400ed
   4017e:	6a 00                	push   0x0
   40180:	68 00 fa             	push   0xfa00
   40183:	6a 00                	push   0x0
   40185:	9a dc 16 28 00       	call   0x28:0x16dc
   4018a:	83 c4 06             	add    sp,0x6
   4018d:	6a 13                	push   0x13
   4018f:	9a 20 00 50 01       	call   0x150:0x20
   40194:	59                   	pop    cx
   40195:	9a 2a 00 50 01       	call   0x150:0x2a
   4019a:	68 c7 00             	push   0xc7
   4019d:	68 3f 01             	push   0x13f
   401a0:	6a 00                	push   0x0
   401a2:	6a 00                	push   0x0
   401a4:	9a 4d 00 50 01       	call   0x150:0x4d
   401a9:	83 c4 08             	add    sp,0x8
   401ac:	9a 3e 00 50 01       	call   0x150:0x3e
   401b1:	68 00 01             	push   0x100
   401b4:	6a 00                	push   0x0
   401b6:	1e                   	push   ds
   401b7:	68 95 4c             	push   0x4c95
   401ba:	9a 2a 00 48 01       	call   0x148:0x2a
   401bf:	83 c4 08             	add    sp,0x8
   401c2:	1e                   	push   ds
   401c3:	68 a1 4c             	push   0x4ca1
   401c6:	9a a0 1a 28 00       	call   0x28:0x1aa0
   401cb:	83 c4 04             	add    sp,0x4
   401ce:	ff 76 06             	push   WORD PTR [bp+0x6]
   401d1:	1e                   	push   ds
   401d2:	68 ad 4c             	push   0x4cad
   401d5:	6a 01                	push   0x1
   401d7:	9a 20 00 48 01       	call   0x148:0x20
   401dc:	83 c4 08             	add    sp,0x8
   401df:	b8 88 01             	mov    ax,0x188
   401e2:	8e c0                	mov    es,ax
   401e4:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   401e9:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   401ee:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   401f1:	c1 e3 03             	shl    bx,0x3
   401f4:	b8 88 01             	mov    ax,0x188
   401f7:	8e c0                	mov    es,ax
   401f9:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   401fe:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   40203:	9a 8a 06 20 00       	call   0x20:0x68a
   40208:	83 c4 08             	add    sp,0x8
   4020b:	6a 00                	push   0x0
   4020d:	b8 88 01             	mov    ax,0x188
   40210:	8e c0                	mov    es,ax
   40212:	26 a1 1e 73          	mov    ax,es:0x731e
   40216:	ba 88 01             	mov    dx,0x188
   40219:	8e c2                	mov    es,dx
   4021b:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   40220:	50                   	push   ax
   40221:	68 40 06             	push   0x640
   40224:	9a 3f 07 30 00       	call   0x30:0x73f
   40229:	83 c4 06             	add    sp,0x6
   4022c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4022f:	40                   	inc    ax
   40230:	50                   	push   ax
   40231:	1e                   	push   ds
   40232:	68 b9 4c             	push   0x4cb9
   40235:	6a 01                	push   0x1
   40237:	9a 20 00 48 01       	call   0x148:0x20
   4023c:	83 c4 08             	add    sp,0x8
   4023f:	68 e8 03             	push   0x3e8
   40242:	6a 20                	push   0x20
   40244:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   40247:	fe 46 fb             	inc    BYTE PTR [bp-0x5]
   4024a:	50                   	push   ax
   4024b:	0e                   	push   cs
   4024c:	e8 51 f3             	call   0x4f5a0
   4024f:	83 c4 06             	add    sp,0x6
   40252:	88 46 fa             	mov    BYTE PTR [bp-0x6],al
   40255:	6a 01                	push   0x1
   40257:	6a 32                	push   0x32
   40259:	68 40 01             	push   0x140
   4025c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4025f:	04 02                	add    al,0x2
   40261:	50                   	push   ax
   40262:	9a 4a 0e 20 00       	call   0x20:0xe4a
   40267:	83 c4 08             	add    sp,0x8
   4026a:	6a 00                	push   0x0
   4026c:	68 80 3e             	push   0x3e80
   4026f:	6a 00                	push   0x0
   40271:	6a 00                	push   0x0
   40273:	6a 00                	push   0x0
   40275:	6a 00                	push   0x0
   40277:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4027a:	c1 e3 03             	shl    bx,0x3
   4027d:	b8 88 01             	mov    ax,0x188
   40280:	8e c0                	mov    es,ax
   40282:	26 ff b7 b1 e2       	push   WORD PTR es:[bx-0x1d4f]
   40287:	26 ff b7 af e2       	push   WORD PTR es:[bx-0x1d51]
   4028c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4028f:	c1 e3 03             	shl    bx,0x3
   40292:	b8 88 01             	mov    ax,0x188
   40295:	8e c0                	mov    es,ax
   40297:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   4029c:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   402a1:	9a c9 07 20 00       	call   0x20:0x7c9
   402a6:	83 c4 14             	add    sp,0x14
   402a9:	6a 01                	push   0x1
   402ab:	6a 32                	push   0x32
   402ad:	68 40 01             	push   0x140
   402b0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   402b3:	04 03                	add    al,0x3
   402b5:	50                   	push   ax
   402b6:	9a 4a 0e 20 00       	call   0x20:0xe4a
   402bb:	83 c4 08             	add    sp,0x8
   402be:	6a 00                	push   0x0
   402c0:	68 80 3e             	push   0x3e80
   402c3:	6a 00                	push   0x0
   402c5:	6a 00                	push   0x0
   402c7:	6a 00                	push   0x0
   402c9:	6a 00                	push   0x0
   402cb:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   402ce:	c1 e3 03             	shl    bx,0x3
   402d1:	b8 88 01             	mov    ax,0x188
   402d4:	8e c0                	mov    es,ax
   402d6:	26 ff b7 b9 e2       	push   WORD PTR es:[bx-0x1d47]
   402db:	26 ff b7 b7 e2       	push   WORD PTR es:[bx-0x1d49]
   402e0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   402e3:	c1 e3 03             	shl    bx,0x3
   402e6:	b8 88 01             	mov    ax,0x188
   402e9:	8e c0                	mov    es,ax
   402eb:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   402f0:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   402f5:	9a c9 07 20 00       	call   0x20:0x7c9
   402fa:	83 c4 14             	add    sp,0x14
   402fd:	6a 00                	push   0x0
   402ff:	68 e8 03             	push   0x3e8
   40302:	6a 00                	push   0x0
   40304:	6a 00                	push   0x0
   40306:	68 e8 03             	push   0x3e8
   40309:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4030c:	c1 e3 03             	shl    bx,0x3
   4030f:	b8 88 01             	mov    ax,0x188
   40312:	8e c0                	mov    es,ax
   40314:	26 ff b7 b9 e2       	push   WORD PTR es:[bx-0x1d47]
   40319:	26 ff b7 b7 e2       	push   WORD PTR es:[bx-0x1d49]
   4031e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40321:	c1 e3 03             	shl    bx,0x3
   40324:	b8 88 01             	mov    ax,0x188
   40327:	8e c0                	mov    es,ax
   40329:	26 ff b7 b1 e2       	push   WORD PTR es:[bx-0x1d4f]
   4032e:	26 ff b7 af e2       	push   WORD PTR es:[bx-0x1d51]
   40333:	0e                   	push   cs
   40334:	e8 ef f2             	call   0x4f626
   40337:	83 c4 12             	add    sp,0x12
   4033a:	3c 01                	cmp    al,0x1
   4033c:	75 03                	jne    0x40341
   4033e:	e9 c4 00             	jmp    0x40405
   40341:	6a 00                	push   0x0
   40343:	68 80 3e             	push   0x3e80
   40346:	6a 00                	push   0x0
   40348:	6a 00                	push   0x0
   4034a:	6a 00                	push   0x0
   4034c:	68 80 3e             	push   0x3e80
   4034f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40352:	c1 e3 03             	shl    bx,0x3
   40355:	b8 88 01             	mov    ax,0x188
   40358:	8e c0                	mov    es,ax
   4035a:	26 ff b7 b1 e2       	push   WORD PTR es:[bx-0x1d4f]
   4035f:	26 ff b7 af e2       	push   WORD PTR es:[bx-0x1d51]
   40364:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40367:	c1 e3 03             	shl    bx,0x3
   4036a:	b8 88 01             	mov    ax,0x188
   4036d:	8e c0                	mov    es,ax
   4036f:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   40374:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   40379:	9a c9 07 20 00       	call   0x20:0x7c9
   4037e:	83 c4 14             	add    sp,0x14
   40381:	6a 00                	push   0x0
   40383:	68 80 3e             	push   0x3e80
   40386:	6a 00                	push   0x0
   40388:	6a 00                	push   0x0
   4038a:	6a 00                	push   0x0
   4038c:	68 80 3e             	push   0x3e80
   4038f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40392:	c1 e3 03             	shl    bx,0x3
   40395:	b8 88 01             	mov    ax,0x188
   40398:	8e c0                	mov    es,ax
   4039a:	26 ff b7 b9 e2       	push   WORD PTR es:[bx-0x1d47]
   4039f:	26 ff b7 b7 e2       	push   WORD PTR es:[bx-0x1d49]
   403a4:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   403a7:	c1 e3 03             	shl    bx,0x3
   403aa:	b8 88 01             	mov    ax,0x188
   403ad:	8e c0                	mov    es,ax
   403af:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   403b4:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   403b9:	9a c9 07 20 00       	call   0x20:0x7c9
   403be:	83 c4 14             	add    sp,0x14
   403c1:	68 80 3e             	push   0x3e80
   403c4:	68 e8 03             	push   0x3e8
   403c7:	6a 00                	push   0x0
   403c9:	6a 00                	push   0x0
   403cb:	68 e8 03             	push   0x3e8
   403ce:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   403d1:	c1 e3 03             	shl    bx,0x3
   403d4:	b8 88 01             	mov    ax,0x188
   403d7:	8e c0                	mov    es,ax
   403d9:	26 ff b7 b9 e2       	push   WORD PTR es:[bx-0x1d47]
   403de:	26 ff b7 b7 e2       	push   WORD PTR es:[bx-0x1d49]
   403e3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   403e6:	c1 e3 03             	shl    bx,0x3
   403e9:	b8 88 01             	mov    ax,0x188
   403ec:	8e c0                	mov    es,ax
   403ee:	26 ff b7 b1 e2       	push   WORD PTR es:[bx-0x1d4f]
   403f3:	26 ff b7 af e2       	push   WORD PTR es:[bx-0x1d51]
   403f8:	0e                   	push   cs
   403f9:	e8 2a f2             	call   0x4f626
   403fc:	83 c4 12             	add    sp,0x12
   403ff:	3c 01                	cmp    al,0x1
   40401:	74 02                	je     0x40405
   40403:	eb 00                	jmp    0x40405
   40405:	b8 88 01             	mov    ax,0x188
   40408:	8e c0                	mov    es,ax
   4040a:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   4040f:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   40414:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40417:	c1 e3 03             	shl    bx,0x3
   4041a:	b8 88 01             	mov    ax,0x188
   4041d:	8e c0                	mov    es,ax
   4041f:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   40424:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   40429:	9a 8a 06 20 00       	call   0x20:0x68a
   4042e:	83 c4 08             	add    sp,0x8
   40431:	1e                   	push   ds
   40432:	68 c5 4c             	push   0x4cc5
   40435:	68 7f 01             	push   0x17f
   40438:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4043b:	c1 e0 03             	shl    ax,0x3
   4043e:	05 af e2             	add    ax,0xe2af
   40441:	68 88 01             	push   0x188
   40444:	50                   	push   ax
   40445:	9a 2f 02 40 00       	call   0x40:0x22f
   4044a:	83 c4 0a             	add    sp,0xa
   4044d:	1e                   	push   ds
   4044e:	68 d4 4c             	push   0x4cd4
   40451:	68 80 01             	push   0x180
   40454:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40457:	c1 e0 03             	shl    ax,0x3
   4045a:	05 b7 e2             	add    ax,0xe2b7
   4045d:	68 88 01             	push   0x188
   40460:	50                   	push   ax
   40461:	9a 2f 02 40 00       	call   0x40:0x22f
   40466:	83 c4 0a             	add    sp,0xa
   40469:	68 f4 01             	push   0x1f4
   4046c:	6a 20                	push   0x20
   4046e:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   40471:	fe 46 fb             	inc    BYTE PTR [bp-0x5]
   40474:	50                   	push   ax
   40475:	0e                   	push   cs
   40476:	e8 27 f1             	call   0x4f5a0
   40479:	83 c4 06             	add    sp,0x6
   4047c:	88 46 fa             	mov    BYTE PTR [bp-0x6],al
   4047f:	1e                   	push   ds
   40480:	68 e3 4c             	push   0x4ce3
   40483:	68 ae 01             	push   0x1ae
   40486:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40489:	c1 e0 03             	shl    ax,0x3
   4048c:	05 9f e2             	add    ax,0xe29f
   4048f:	68 88 01             	push   0x188
   40492:	50                   	push   ax
   40493:	9a 2f 02 40 00       	call   0x40:0x22f
   40498:	83 c4 0a             	add    sp,0xa
   4049b:	1e                   	push   ds
   4049c:	68 f2 4c             	push   0x4cf2
   4049f:	68 af 01             	push   0x1af
   404a2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   404a5:	c1 e0 03             	shl    ax,0x3
   404a8:	05 a7 e2             	add    ax,0xe2a7
   404ab:	68 88 01             	push   0x188
   404ae:	50                   	push   ax
   404af:	9a 2f 02 40 00       	call   0x40:0x22f
   404b4:	83 c4 0a             	add    sp,0xa
   404b7:	1e                   	push   ds
   404b8:	68 01 4d             	push   0x4d01
   404bb:	68 88 01             	push   0x188
   404be:	68 3c a6             	push   0xa63c
   404c1:	9a 7a 53 00 00       	call   0x0:0x537a
   404c6:	83 c4 08             	add    sp,0x8
   404c9:	1e                   	push   ds
   404ca:	68 16 4d             	push   0x4d16
   404cd:	68 88 01             	push   0x188
   404d0:	68 a0 a6             	push   0xa6a0
   404d3:	9a 7a 53 00 00       	call   0x0:0x537a
   404d8:	83 c4 08             	add    sp,0x8
   404db:	1e                   	push   ds
   404dc:	68 2a 4d             	push   0x4d2a
   404df:	68 88 01             	push   0x188
   404e2:	68 04 a7             	push   0xa704
   404e5:	9a 7a 53 00 00       	call   0x0:0x537a
   404ea:	83 c4 08             	add    sp,0x8
   404ed:	1e                   	push   ds
   404ee:	68 3d 4d             	push   0x4d3d
   404f1:	68 88 01             	push   0x188
   404f4:	68 68 a7             	push   0xa768
   404f7:	9a 7a 53 00 00       	call   0x0:0x537a
   404fc:	83 c4 08             	add    sp,0x8
   404ff:	6a 01                	push   0x1
   40501:	6a 28                	push   0x28
   40503:	6a 78                	push   0x78
   40505:	6a 07                	push   0x7
   40507:	9a 4a 0e 20 00       	call   0x20:0xe4a
   4050c:	83 c4 08             	add    sp,0x8
   4050f:	6a 00                	push   0x0
   40511:	b8 88 01             	mov    ax,0x188
   40514:	8e c0                	mov    es,ax
   40516:	26 c4 1e d7 e2       	les    bx,DWORD PTR es:0xe2d7
   4051b:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   4051f:	6a 07                	push   0x7
   40521:	9a dc 16 28 00       	call   0x28:0x16dc
   40526:	83 c4 06             	add    sp,0x6
   40529:	b8 88 01             	mov    ax,0x188
   4052c:	8e c0                	mov    es,ax
   4052e:	26 a0 71 96          	mov    al,es:0x9671
   40532:	50                   	push   ax
   40533:	9a 6b 02 30 00       	call   0x30:0x26b
   40538:	59                   	pop    cx
   40539:	6a 01                	push   0x1
   4053b:	6a 04                	push   0x4
   4053d:	b8 88 01             	mov    ax,0x188
   40540:	8e c0                	mov    es,ax
   40542:	26 a0 67 96          	mov    al,es:0x9667
   40546:	b4 00                	mov    ah,0x0
   40548:	50                   	push   ax
   40549:	b8 88 01             	mov    ax,0x188
   4054c:	8e c0                	mov    es,ax
   4054e:	26 a0 64 96          	mov    al,es:0x9664
   40552:	b4 00                	mov    ah,0x0
   40554:	50                   	push   ax
   40555:	b8 88 01             	mov    ax,0x188
   40558:	8e c0                	mov    es,ax
   4055a:	26 a0 65 96          	mov    al,es:0x9665
   4055e:	b4 00                	mov    ah,0x0
   40560:	50                   	push   ax
   40561:	6a ff                	push   0xffff
   40563:	6a 0b                	push   0xb
   40565:	6a 04                	push   0x4
   40567:	9a 33 11 10 00       	call   0x10:0x1133
   4056c:	83 c4 10             	add    sp,0x10
   4056f:	b8 88 01             	mov    ax,0x188
   40572:	8e c0                	mov    es,ax
   40574:	26 83 3e dc d5 00    	cmp    WORD PTR es:0xd5dc,0x0
   4057a:	74 bd                	je     0x40539
   4057c:	b8 88 01             	mov    ax,0x188
   4057f:	8e c0                	mov    es,ax
   40581:	26 a1 dc d5          	mov    ax,es:0xd5dc
   40585:	bb 05 00             	mov    bx,0x5
   40588:	99                   	cwd
   40589:	f7 fb                	idiv   bx
   4058b:	0b c0                	or     ax,ax
   4058d:	75 aa                	jne    0x40539
   4058f:	1e                   	push   ds
   40590:	68 52 4d             	push   0x4d52
   40593:	68 c8 01             	push   0x1c8
   40596:	68 88 01             	push   0x188
   40599:	68 d7 e2             	push   0xe2d7
   4059c:	9a 2f 02 40 00       	call   0x40:0x22f
   405a1:	83 c4 0a             	add    sp,0xa
   405a4:	b8 88 01             	mov    ax,0x188
   405a7:	8e c0                	mov    es,ax
   405a9:	26 83 3e dc d5 02    	cmp    WORD PTR es:0xd5dc,0x2
   405af:	75 17                	jne    0x405c8
   405b1:	6a 00                	push   0x0
   405b3:	9a 93 00 18 01       	call   0x118:0x93
   405b8:	59                   	pop    cx
   405b9:	b4 00                	mov    ah,0x0
   405bb:	0b c0                	or     ax,ax
   405bd:	75 03                	jne    0x405c2
   405bf:	e9 f5 fe             	jmp    0x404b7
   405c2:	b8 02 00             	mov    ax,0x2
   405c5:	e9 de 00             	jmp    0x406a6
   405c8:	b8 88 01             	mov    ax,0x188
   405cb:	8e c0                	mov    es,ax
   405cd:	26 83 3e dc d5 01    	cmp    WORD PTR es:0xd5dc,0x1
   405d3:	75 1c                	jne    0x405f1
   405d5:	6a 00                	push   0x0
   405d7:	b8 88 01             	mov    ax,0x188
   405da:	8e c0                	mov    es,ax
   405dc:	26 a1 18 73          	mov    ax,es:0x7318
   405e0:	f7 d8                	neg    ax
   405e2:	50                   	push   ax
   405e3:	68 dc 05             	push   0x5dc
   405e6:	9a 3f 07 30 00       	call   0x30:0x73f
   405eb:	83 c4 06             	add    sp,0x6
   405ee:	e9 85 00             	jmp    0x40676
   405f1:	b8 88 01             	mov    ax,0x188
   405f4:	8e c0                	mov    es,ax
   405f6:	26 a1 1a 73          	mov    ax,es:0x731a
   405fa:	f7 d8                	neg    ax
   405fc:	50                   	push   ax
   405fd:	b8 88 01             	mov    ax,0x188
   40600:	8e c0                	mov    es,ax
   40602:	26 a1 18 73          	mov    ax,es:0x7318
   40606:	f7 d8                	neg    ax
   40608:	50                   	push   ax
   40609:	68 dc 05             	push   0x5dc
   4060c:	9a 3f 07 30 00       	call   0x30:0x73f
   40611:	83 c4 06             	add    sp,0x6
   40614:	b8 88 01             	mov    ax,0x188
   40617:	8e c0                	mov    es,ax
   40619:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4061f:	74 50                	je     0x40671
   40621:	9a 96 12 68 00       	call   0x68:0x1296
   40626:	b8 88 01             	mov    ax,0x188
   40629:	8e c0                	mov    es,ax
   4062b:	26 a1 75 bb          	mov    ax,es:0xbb75
   4062f:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   40634:	74 3b                	je     0x40671
   40636:	b8 88 01             	mov    ax,0x188
   40639:	8e c0                	mov    es,ax
   4063b:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40640:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40645:	9a 03 00 80 00       	call   0x80:0x3
   4064a:	b8 88 01             	mov    ax,0x188
   4064d:	8e c0                	mov    es,ax
   4064f:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40654:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40659:	9a da 00 58 00       	call   0x58:0xda
   4065e:	b8 88 01             	mov    ax,0x188
   40661:	8e c0                	mov    es,ax
   40663:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   4066a:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   40671:	9a 2f 00 78 01       	call   0x178:0x2f
   40676:	6a 00                	push   0x0
   40678:	6a 00                	push   0x0
   4067a:	9a 52 00 50 01       	call   0x150:0x52
   4067f:	83 c4 04             	add    sp,0x4
   40682:	68 c8 00             	push   0xc8
   40685:	9a 57 00 50 01       	call   0x150:0x57
   4068a:	59                   	pop    cx
   4068b:	68 c7 00             	push   0xc7
   4068e:	68 3f 01             	push   0x13f
   40691:	6a 00                	push   0x0
   40693:	6a 00                	push   0x0
   40695:	9a 4d 00 50 01       	call   0x150:0x4d
   4069a:	83 c4 08             	add    sp,0x8
   4069d:	b8 88 01             	mov    ax,0x188
   406a0:	8e c0                	mov    es,ax
   406a2:	26 a1 dc d5          	mov    ax,es:0xd5dc
   406a6:	c9                   	leave
   406a7:	cb                   	retf
   406a8:	55                   	push   bp
   406a9:	8b ec                	mov    bp,sp
   406ab:	81 ec 98 00          	sub    sp,0x98
   406af:	8d 46 b0             	lea    ax,[bp-0x50]
   406b2:	16                   	push   ss
   406b3:	50                   	push   ax
   406b4:	1e                   	push   ds
   406b5:	68 e6 4a             	push   0x4ae6
   406b8:	b9 28 00             	mov    cx,0x28
   406bb:	9a 7a 12 00 00       	call   0x0:0x127a
   406c0:	8d 46 f8             	lea    ax,[bp-0x8]
   406c3:	16                   	push   ss
   406c4:	50                   	push   ax
   406c5:	1e                   	push   ds
   406c6:	68 0e 4b             	push   0x4b0e
   406c9:	b9 08 00             	mov    cx,0x8
   406cc:	9a 7a 12 00 00       	call   0x0:0x127a
   406d1:	c7 46 f0 00 00       	mov    WORD PTR [bp-0x10],0x0
   406d6:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   406db:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   406e0:	8c 5e e4             	mov    WORD PTR [bp-0x1c],ds
   406e3:	c7 46 e2 5c 55       	mov    WORD PTR [bp-0x1e],0x555c
   406e8:	8c 5e e0             	mov    WORD PTR [bp-0x20],ds
   406eb:	c7 46 de 66 55       	mov    WORD PTR [bp-0x22],0x5566
   406f0:	8d 86 68 ff          	lea    ax,[bp-0x98]
   406f4:	16                   	push   ss
   406f5:	50                   	push   ax
   406f6:	68 88 01             	push   0x188
   406f9:	68 2c 96             	push   0x962c
   406fc:	b9 48 00             	mov    cx,0x48
   406ff:	9a 7a 12 00 00       	call   0x0:0x127a
   40704:	68 88 01             	push   0x188
   40707:	68 2c 96             	push   0x962c
   4070a:	68 88 01             	push   0x188
   4070d:	68 74 96             	push   0x9674
   40710:	b9 48 00             	mov    cx,0x48
   40713:	9a 7a 12 00 00       	call   0x0:0x127a
   40718:	9a e3 01 40 00       	call   0x40:0x1e3
   4071d:	1e                   	push   ds
   4071e:	68 71 55             	push   0x5571
   40721:	9a a0 1a 28 00       	call   0x28:0x1aa0
   40726:	83 c4 04             	add    sp,0x4
   40729:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   4072e:	eb 32                	jmp    0x40762
   40730:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40733:	03 5e f4             	add    bx,WORD PTR [bp-0xc]
   40736:	c1 e3 03             	shl    bx,0x3
   40739:	b8 88 01             	mov    ax,0x188
   4073c:	8e c0                	mov    es,ax
   4073e:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
   40743:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
   40748:	74 15                	je     0x4075f
   4074a:	6a 6a                	push   0x6a
   4074c:	6a 00                	push   0x0
   4074e:	6a 00                	push   0x0
   40750:	68 da 02             	push   0x2da
   40753:	1e                   	push   ds
   40754:	68 7b 55             	push   0x557b
   40757:	9a 2a 00 58 01       	call   0x158:0x2a
   4075c:	83 c4 0c             	add    sp,0xc
   4075f:	ff 46 f4             	inc    WORD PTR [bp-0xc]
   40762:	83 7e f4 03          	cmp    WORD PTR [bp-0xc],0x3
   40766:	7c c8                	jl     0x40730
   40768:	b8 88 01             	mov    ax,0x188
   4076b:	8e c0                	mov    es,ax
   4076d:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   40773:	74 2c                	je     0x407a1
   40775:	1e                   	push   ds
   40776:	68 8a 55             	push   0x558a
   40779:	6a 00                	push   0x0
   4077b:	6a 00                	push   0x0
   4077d:	68 88 01             	push   0x188
   40780:	68 75 bb             	push   0xbb75
   40783:	9a f3 07 70 00       	call   0x70:0x7f3
   40788:	0b c0                	or     ax,ax
   4078a:	74 15                	je     0x407a1
   4078c:	6a ff                	push   0xffff
   4078e:	1e                   	push   ds
   4078f:	68 a2 55             	push   0x55a2
   40792:	68 dc 02             	push   0x2dc
   40795:	1e                   	push   ds
   40796:	68 93 55             	push   0x5593
   40799:	9a 2a 00 58 01       	call   0x158:0x2a
   4079e:	83 c4 0c             	add    sp,0xc
   407a1:	9a 39 00 50 01       	call   0x150:0x39
   407a6:	9a 3e 00 50 01       	call   0x150:0x3e
   407ab:	68 00 01             	push   0x100
   407ae:	6a 00                	push   0x0
   407b0:	1e                   	push   ds
   407b1:	68 c5 55             	push   0x55c5
   407b4:	9a 2a 00 48 01       	call   0x148:0x2a
   407b9:	83 c4 08             	add    sp,0x8
   407bc:	b8 88 01             	mov    ax,0x188
   407bf:	8e c0                	mov    es,ax
   407c1:	26 c7 06 1a 73 40 00 	mov    WORD PTR es:0x731a,0x40
   407c8:	b8 88 01             	mov    ax,0x188
   407cb:	8e c0                	mov    es,ax
   407cd:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   407d3:	75 03                	jne    0x407d8
   407d5:	e9 d1 00             	jmp    0x408a9
   407d8:	b8 88 01             	mov    ax,0x188
   407db:	8e c0                	mov    es,ax
   407dd:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   407e2:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   407e7:	6a 00                	push   0x0
   407e9:	6a 01                	push   0x1
   407eb:	9a 1f 12 68 00       	call   0x68:0x121f
   407f0:	6a ff                	push   0xffff
   407f2:	6a ff                	push   0xffff
   407f4:	6a 00                	push   0x0
   407f6:	6a 40                	push   0x40
   407f8:	9a 25 16 68 00       	call   0x68:0x1625
   407fd:	b8 88 01             	mov    ax,0x188
   40800:	8e c0                	mov    es,ax
   40802:	26 c4 1e 75 bb       	les    bx,DWORD PTR es:0xbb75
   40807:	26 8a 47 29          	mov    al,BYTE PTR es:[bx+0x29]
   4080b:	b4 00                	mov    ah,0x0
   4080d:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   40810:	c7 46 da 00 00       	mov    WORD PTR [bp-0x26],0x0
   40815:	e9 86 00             	jmp    0x4089e
   40818:	6a 00                	push   0x0
   4081a:	68 00 80             	push   0x8000
   4081d:	9a 79 17 00 00       	call   0x0:0x1779
   40822:	99                   	cwd
   40823:	50                   	push   ax
   40824:	52                   	push   dx
   40825:	33 d2                	xor    dx,dx
   40827:	b8 15 00             	mov    ax,0x15
   4082a:	59                   	pop    cx
   4082b:	5b                   	pop    bx
   4082c:	9a 42 12 00 00       	call   0x0:0x1242
   40831:	52                   	push   dx
   40832:	50                   	push   ax
   40833:	9a df 12 00 00       	call   0x0:0x12df
   40838:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   4083b:	8b 46 da             	mov    ax,WORD PTR [bp-0x26]
   4083e:	99                   	cwd
   4083f:	52                   	push   dx
   40840:	50                   	push   ax
   40841:	6a 00                	push   0x0
   40843:	68 00 80             	push   0x8000
   40846:	9a 79 17 00 00       	call   0x0:0x1779
   4084b:	99                   	cwd
   4084c:	b1 02                	mov    cl,0x2
   4084e:	9a 8d 13 00 00       	call   0x0:0x138d
   40853:	52                   	push   dx
   40854:	50                   	push   ax
   40855:	9a df 12 00 00       	call   0x0:0x12df
   4085a:	50                   	push   ax
   4085b:	8b 46 dc             	mov    ax,WORD PTR [bp-0x24]
   4085e:	5a                   	pop    dx
   4085f:	03 c2                	add    ax,dx
   40861:	99                   	cwd
   40862:	52                   	push   dx
   40863:	50                   	push   ax
   40864:	9a b4 01 60 00       	call   0x60:0x1b4
   40869:	8b 46 da             	mov    ax,WORD PTR [bp-0x26]
   4086c:	40                   	inc    ax
   4086d:	99                   	cwd
   4086e:	52                   	push   dx
   4086f:	50                   	push   ax
   40870:	6a 00                	push   0x0
   40872:	68 00 80             	push   0x8000
   40875:	9a 79 17 00 00       	call   0x0:0x1779
   4087a:	99                   	cwd
   4087b:	b1 02                	mov    cl,0x2
   4087d:	9a 8d 13 00 00       	call   0x0:0x138d
   40882:	52                   	push   dx
   40883:	50                   	push   ax
   40884:	9a df 12 00 00       	call   0x0:0x12df
   40889:	50                   	push   ax
   4088a:	8b 46 dc             	mov    ax,WORD PTR [bp-0x24]
   4088d:	f7 d8                	neg    ax
   4088f:	5a                   	pop    dx
   40890:	2b c2                	sub    ax,dx
   40892:	99                   	cwd
   40893:	52                   	push   dx
   40894:	50                   	push   ax
   40895:	9a b4 01 60 00       	call   0x60:0x1b4
   4089a:	83 46 da 02          	add    WORD PTR [bp-0x26],0x2
   4089e:	8b 46 da             	mov    ax,WORD PTR [bp-0x26]
   408a1:	3b 46 d8             	cmp    ax,WORD PTR [bp-0x28]
   408a4:	7d 03                	jge    0x408a9
   408a6:	e9 6f ff             	jmp    0x40818
   408a9:	6a ff                	push   0xffff
   408ab:	6a ff                	push   0xffff
   408ad:	6a 03                	push   0x3
   408af:	9a 34 00 78 01       	call   0x178:0x34
   408b4:	83 c4 06             	add    sp,0x6
   408b7:	ff 76 06             	push   WORD PTR [bp+0x6]
   408ba:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   408bd:	ff 76 e2             	push   WORD PTR [bp-0x1e]
   408c0:	6a 01                	push   0x1
   408c2:	9a 20 00 48 01       	call   0x148:0x20
   408c7:	83 c4 08             	add    sp,0x8
   408ca:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   408cd:	c1 e3 03             	shl    bx,0x3
   408d0:	b8 88 01             	mov    ax,0x188
   408d3:	8e c0                	mov    es,ax
   408d5:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   408da:	26 ff 77 06          	push   WORD PTR es:[bx+0x6]
   408de:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   408e2:	6a 00                	push   0x0
   408e4:	6a 00                	push   0x0
   408e6:	6a 00                	push   0x0
   408e8:	6a 00                	push   0x0
   408ea:	b8 88 01             	mov    ax,0x188
   408ed:	8e c0                	mov    es,ax
   408ef:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   408f4:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   408f9:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   408fc:	c1 e3 03             	shl    bx,0x3
   408ff:	b8 88 01             	mov    ax,0x188
   40902:	8e c0                	mov    es,ax
   40904:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   40909:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   4090e:	9a c9 07 20 00       	call   0x20:0x7c9
   40913:	83 c4 14             	add    sp,0x14
   40916:	6a 00                	push   0x0
   40918:	b8 88 01             	mov    ax,0x188
   4091b:	8e c0                	mov    es,ax
   4091d:	26 a1 1e 73          	mov    ax,es:0x731e
   40921:	ba 88 01             	mov    dx,0x188
   40924:	8e c2                	mov    es,dx
   40926:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   4092b:	50                   	push   ax
   4092c:	68 80 0c             	push   0xc80
   4092f:	9a 3f 07 30 00       	call   0x30:0x73f
   40934:	83 c4 06             	add    sp,0x6
   40937:	6a 01                	push   0x1
   40939:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4093c:	c1 e3 03             	shl    bx,0x3
   4093f:	b8 88 01             	mov    ax,0x188
   40942:	8e c0                	mov    es,ax
   40944:	26 ff b7 9d e2       	push   WORD PTR es:[bx-0x1d63]
   40949:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4094c:	c1 e3 03             	shl    bx,0x3
   4094f:	b8 88 01             	mov    ax,0x188
   40952:	8e c0                	mov    es,ax
   40954:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   40959:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4095c:	fe c0                	inc    al
   4095e:	50                   	push   ax
   4095f:	9a 4a 0e 20 00       	call   0x20:0xe4a
   40964:	83 c4 08             	add    sp,0x8
   40967:	6a 01                	push   0x1
   40969:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4096c:	c1 e3 03             	shl    bx,0x3
   4096f:	b8 88 01             	mov    ax,0x188
   40972:	8e c0                	mov    es,ax
   40974:	26 ff b7 9d e2       	push   WORD PTR es:[bx-0x1d63]
   40979:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4097c:	c1 e3 03             	shl    bx,0x3
   4097f:	b8 88 01             	mov    ax,0x188
   40982:	8e c0                	mov    es,ax
   40984:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   40989:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4098c:	04 02                	add    al,0x2
   4098e:	50                   	push   ax
   4098f:	9a 4a 0e 20 00       	call   0x20:0xe4a
   40994:	83 c4 08             	add    sp,0x8
   40997:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4099a:	c1 e3 03             	shl    bx,0x3
   4099d:	b8 88 01             	mov    ax,0x188
   409a0:	8e c0                	mov    es,ax
   409a2:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   409a7:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   409ac:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   409af:	c1 e3 03             	shl    bx,0x3
   409b2:	b8 88 01             	mov    ax,0x188
   409b5:	8e c0                	mov    es,ax
   409b7:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   409bc:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   409c1:	9a 8a 06 20 00       	call   0x20:0x68a
   409c6:	83 c4 08             	add    sp,0x8
   409c9:	c7 46 f2 01 00       	mov    WORD PTR [bp-0xe],0x1
   409ce:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   409d3:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   409d8:	e9 bd 01             	jmp    0x40b98
   409db:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   409de:	03 5e f2             	add    bx,WORD PTR [bp-0xe]
   409e1:	c1 e3 03             	shl    bx,0x3
   409e4:	b8 88 01             	mov    ax,0x188
   409e7:	8e c0                	mov    es,ax
   409e9:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   409ee:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   409f3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   409f6:	c1 e3 03             	shl    bx,0x3
   409f9:	b8 88 01             	mov    ax,0x188
   409fc:	8e c0                	mov    es,ax
   409fe:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   40a03:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   40a08:	9a 8a 06 20 00       	call   0x20:0x68a
   40a0d:	83 c4 08             	add    sp,0x8
   40a10:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   40a13:	c1 e3 02             	shl    bx,0x2
   40a16:	8d 46 b0             	lea    ax,[bp-0x50]
   40a19:	03 d8                	add    bx,ax
   40a1b:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   40a1f:	36 ff 37             	push   WORD PTR ss:[bx]
   40a22:	9a 3e 00 80 01       	call   0x180:0x3e
   40a27:	83 c4 04             	add    sp,0x4
   40a2a:	c7 46 e6 00 00       	mov    WORD PTR [bp-0x1a],0x0
   40a2f:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   40a34:	eb 03                	jmp    0x40a39
   40a36:	ff 46 e8             	inc    WORD PTR [bp-0x18]
   40a39:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   40a3c:	25 01 00             	and    ax,0x1
   40a3f:	f7 d8                	neg    ax
   40a41:	1b c0                	sbb    ax,ax
   40a43:	40                   	inc    ax
   40a44:	0c 02                	or     al,0x2
   40a46:	50                   	push   ax
   40a47:	16                   	push   ss
   40a48:	8d 46 e6             	lea    ax,[bp-0x1a]
   40a4b:	50                   	push   ax
   40a4c:	68 ff 00             	push   0xff
   40a4f:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   40a52:	25 01 00             	and    ax,0x1
   40a55:	6b c0 6e             	imul   ax,ax,0x6e
   40a58:	8b 56 e8             	mov    dx,WORD PTR [bp-0x18]
   40a5b:	6b d2 0b             	imul   dx,dx,0xb
   40a5e:	03 c2                	add    ax,dx
   40a60:	40                   	inc    ax
   40a61:	50                   	push   ax
   40a62:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   40a65:	35 01 00             	xor    ax,0x1
   40a68:	25 01 00             	and    ax,0x1
   40a6b:	69 c0 3f 01          	imul   ax,ax,0x13f
   40a6f:	40                   	inc    ax
   40a70:	50                   	push   ax
   40a71:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   40a74:	c1 e3 02             	shl    bx,0x2
   40a77:	8d 46 b0             	lea    ax,[bp-0x50]
   40a7a:	03 d8                	add    bx,ax
   40a7c:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   40a7f:	8b 56 e6             	mov    dx,WORD PTR [bp-0x1a]
   40a82:	ff 46 e6             	inc    WORD PTR [bp-0x1a]
   40a85:	03 c2                	add    ax,dx
   40a87:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   40a8b:	50                   	push   ax
   40a8c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40a8f:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   40a92:	40                   	inc    ax
   40a93:	50                   	push   ax
   40a94:	9a ec 25 10 00       	call   0x10:0x25ec
   40a99:	83 c4 12             	add    sp,0x12
   40a9c:	b4 00                	mov    ah,0x0
   40a9e:	0b c0                	or     ax,ax
   40aa0:	75 06                	jne    0x40aa8
   40aa2:	83 7e e8 06          	cmp    WORD PTR [bp-0x18],0x6
   40aa6:	7c 8e                	jl     0x40a36
   40aa8:	9a e3 01 40 00       	call   0x40:0x1e3
   40aad:	6a 00                	push   0x0
   40aaf:	ff 76 ee             	push   WORD PTR [bp-0x12]
   40ab2:	6a 00                	push   0x0
   40ab4:	8a 46 f0             	mov    al,BYTE PTR [bp-0x10]
   40ab7:	50                   	push   ax
   40ab8:	68 e8 03             	push   0x3e8
   40abb:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40abe:	03 5e f2             	add    bx,WORD PTR [bp-0xe]
   40ac1:	c1 e3 03             	shl    bx,0x3
   40ac4:	b8 88 01             	mov    ax,0x188
   40ac7:	8e c0                	mov    es,ax
   40ac9:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   40ace:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   40ad3:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   40ad6:	35 01 00             	xor    ax,0x1
   40ad9:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40adc:	03 d8                	add    bx,ax
   40ade:	c1 e3 03             	shl    bx,0x3
   40ae1:	b8 88 01             	mov    ax,0x188
   40ae4:	8e c0                	mov    es,ax
   40ae6:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   40aeb:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   40af0:	0e                   	push   cs
   40af1:	e8 32 eb             	call   0x4f626
   40af4:	83 c4 12             	add    sp,0x12
   40af7:	88 46 f7             	mov    BYTE PTR [bp-0x9],al
   40afa:	0a c0                	or     al,al
   40afc:	74 09                	je     0x40b07
   40afe:	80 7e f7 02          	cmp    BYTE PTR [bp-0x9],0x2
   40b02:	74 03                	je     0x40b07
   40b04:	e9 73 03             	jmp    0x40e7a
   40b07:	6a 00                	push   0x0
   40b09:	6a 00                	push   0x0
   40b0b:	6a 00                	push   0x0
   40b0d:	6a 00                	push   0x0
   40b0f:	6a 02                	push   0x2
   40b11:	6a 21                	push   0x21
   40b13:	ff 76 e0             	push   WORD PTR [bp-0x20]
   40b16:	ff 76 de             	push   WORD PTR [bp-0x22]
   40b19:	6a 01                	push   0x1
   40b1b:	9a 25 00 60 01       	call   0x160:0x25
   40b20:	83 c4 12             	add    sp,0x12
   40b23:	88 46 f6             	mov    BYTE PTR [bp-0xa],al
   40b26:	0a c0                	or     al,al
   40b28:	74 32                	je     0x40b5c
   40b2a:	6a ff                	push   0xffff
   40b2c:	80 7e f6 01          	cmp    BYTE PTR [bp-0xa],0x1
   40b30:	75 07                	jne    0x40b39
   40b32:	8c da                	mov    dx,ds
   40b34:	b8 de 55             	mov    ax,0x55de
   40b37:	eb 12                	jmp    0x40b4b
   40b39:	80 7e f6 02          	cmp    BYTE PTR [bp-0xa],0x2
   40b3d:	75 07                	jne    0x40b46
   40b3f:	8c da                	mov    dx,ds
   40b41:	b8 f2 55             	mov    ax,0x55f2
   40b44:	eb 05                	jmp    0x40b4b
   40b46:	8c da                	mov    dx,ds
   40b48:	b8 18 56             	mov    ax,0x5618
   40b4b:	52                   	push   dx
   40b4c:	50                   	push   ax
   40b4d:	68 06 03             	push   0x306
   40b50:	1e                   	push   ds
   40b51:	68 cf 55             	push   0x55cf
   40b54:	9a 2a 00 58 01       	call   0x158:0x2a
   40b59:	83 c4 0c             	add    sp,0xc
   40b5c:	6a 00                	push   0x0
   40b5e:	6a 00                	push   0x0
   40b60:	6a 00                	push   0x0
   40b62:	68 52 4e             	push   0x4e52
   40b65:	6a 21                	push   0x21
   40b67:	9a 2d 19 10 00       	call   0x10:0x192d
   40b6c:	83 c4 0a             	add    sp,0xa
   40b6f:	6a 00                	push   0x0
   40b71:	6a 21                	push   0x21
   40b73:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   40b78:	83 c4 04             	add    sp,0x4
   40b7b:	0b c0                	or     ax,ax
   40b7d:	74 03                	je     0x40b82
   40b7f:	e9 f8 02             	jmp    0x40e7a
   40b82:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   40b87:	83 76 f2 01          	xor    WORD PTR [bp-0xe],0x1
   40b8b:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   40b8e:	c4 5e de             	les    bx,DWORD PTR [bp-0x22]
   40b91:	26 fe 47 05          	inc    BYTE PTR es:[bx+0x5]
   40b95:	ff 46 f4             	inc    WORD PTR [bp-0xc]
   40b98:	8d 46 f8             	lea    ax,[bp-0x8]
   40b9b:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   40b9e:	03 d8                	add    bx,ax
   40ba0:	36 8a 07             	mov    al,BYTE PTR ss:[bx]
   40ba3:	b4 00                	mov    ah,0x0
   40ba5:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   40ba8:	7e 03                	jle    0x40bad
   40baa:	e9 2e fe             	jmp    0x409db
   40bad:	1e                   	push   ds
   40bae:	68 32 56             	push   0x5632
   40bb1:	68 0e 03             	push   0x30e
   40bb4:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40bb7:	c1 e0 03             	shl    ax,0x3
   40bba:	05 9f e2             	add    ax,0xe29f
   40bbd:	68 88 01             	push   0x188
   40bc0:	50                   	push   ax
   40bc1:	9a 2f 02 40 00       	call   0x40:0x22f
   40bc6:	83 c4 0a             	add    sp,0xa
   40bc9:	c4 5e e2             	les    bx,DWORD PTR [bp-0x1e]
   40bcc:	26 fe 47 04          	inc    BYTE PTR es:[bx+0x4]
   40bd0:	c7 46 ea 01 00       	mov    WORD PTR [bp-0x16],0x1
   40bd5:	e9 15 02             	jmp    0x40ded
   40bd8:	ff 76 06             	push   WORD PTR [bp+0x6]
   40bdb:	ff 76 e4             	push   WORD PTR [bp-0x1c]
   40bde:	ff 76 e2             	push   WORD PTR [bp-0x1e]
   40be1:	6a 01                	push   0x1
   40be3:	9a 20 00 48 01       	call   0x148:0x20
   40be8:	83 c4 08             	add    sp,0x8
   40beb:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   40bf0:	e9 b9 01             	jmp    0x40dac
   40bf3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40bf6:	03 5e f2             	add    bx,WORD PTR [bp-0xe]
   40bf9:	c1 e3 03             	shl    bx,0x3
   40bfc:	b8 88 01             	mov    ax,0x188
   40bff:	8e c0                	mov    es,ax
   40c01:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   40c06:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   40c0b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40c0e:	c1 e3 03             	shl    bx,0x3
   40c11:	b8 88 01             	mov    ax,0x188
   40c14:	8e c0                	mov    es,ax
   40c16:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   40c1b:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   40c20:	9a 8a 06 20 00       	call   0x20:0x68a
   40c25:	83 c4 08             	add    sp,0x8
   40c28:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   40c2b:	c1 e3 02             	shl    bx,0x2
   40c2e:	8d 46 b0             	lea    ax,[bp-0x50]
   40c31:	03 d8                	add    bx,ax
   40c33:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   40c37:	36 ff 37             	push   WORD PTR ss:[bx]
   40c3a:	9a 3e 00 80 01       	call   0x180:0x3e
   40c3f:	83 c4 04             	add    sp,0x4
   40c42:	c7 46 e6 00 00       	mov    WORD PTR [bp-0x1a],0x0
   40c47:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   40c4c:	eb 03                	jmp    0x40c51
   40c4e:	ff 46 e8             	inc    WORD PTR [bp-0x18]
   40c51:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   40c54:	25 01 00             	and    ax,0x1
   40c57:	f7 d8                	neg    ax
   40c59:	1b c0                	sbb    ax,ax
   40c5b:	40                   	inc    ax
   40c5c:	0c 02                	or     al,0x2
   40c5e:	50                   	push   ax
   40c5f:	16                   	push   ss
   40c60:	8d 46 e6             	lea    ax,[bp-0x1a]
   40c63:	50                   	push   ax
   40c64:	68 ff 00             	push   0xff
   40c67:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   40c6a:	25 01 00             	and    ax,0x1
   40c6d:	6b c0 6e             	imul   ax,ax,0x6e
   40c70:	8b 56 e8             	mov    dx,WORD PTR [bp-0x18]
   40c73:	6b d2 0b             	imul   dx,dx,0xb
   40c76:	03 c2                	add    ax,dx
   40c78:	40                   	inc    ax
   40c79:	50                   	push   ax
   40c7a:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   40c7d:	25 01 00             	and    ax,0x1
   40c80:	f7 d8                	neg    ax
   40c82:	1b c0                	sbb    ax,ax
   40c84:	40                   	inc    ax
   40c85:	69 c0 40 01          	imul   ax,ax,0x140
   40c89:	50                   	push   ax
   40c8a:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   40c8d:	c1 e3 02             	shl    bx,0x2
   40c90:	8d 46 b0             	lea    ax,[bp-0x50]
   40c93:	03 d8                	add    bx,ax
   40c95:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   40c98:	8b 56 e6             	mov    dx,WORD PTR [bp-0x1a]
   40c9b:	ff 46 e6             	inc    WORD PTR [bp-0x1a]
   40c9e:	03 c2                	add    ax,dx
   40ca0:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   40ca4:	50                   	push   ax
   40ca5:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40ca8:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   40cab:	40                   	inc    ax
   40cac:	50                   	push   ax
   40cad:	9a ec 25 10 00       	call   0x10:0x25ec
   40cb2:	83 c4 12             	add    sp,0x12
   40cb5:	b4 00                	mov    ah,0x0
   40cb7:	0b c0                	or     ax,ax
   40cb9:	75 06                	jne    0x40cc1
   40cbb:	83 7e e8 06          	cmp    WORD PTR [bp-0x18],0x6
   40cbf:	7c 8d                	jl     0x40c4e
   40cc1:	9a e3 01 40 00       	call   0x40:0x1e3
   40cc6:	6a 00                	push   0x0
   40cc8:	ff 76 ee             	push   WORD PTR [bp-0x12]
   40ccb:	6a 00                	push   0x0
   40ccd:	8a 46 f0             	mov    al,BYTE PTR [bp-0x10]
   40cd0:	50                   	push   ax
   40cd1:	68 e8 03             	push   0x3e8
   40cd4:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40cd7:	03 5e f2             	add    bx,WORD PTR [bp-0xe]
   40cda:	c1 e3 03             	shl    bx,0x3
   40cdd:	b8 88 01             	mov    ax,0x188
   40ce0:	8e c0                	mov    es,ax
   40ce2:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   40ce7:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   40cec:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   40cef:	35 01 00             	xor    ax,0x1
   40cf2:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40cf5:	03 d8                	add    bx,ax
   40cf7:	c1 e3 03             	shl    bx,0x3
   40cfa:	b8 88 01             	mov    ax,0x188
   40cfd:	8e c0                	mov    es,ax
   40cff:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   40d04:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   40d09:	0e                   	push   cs
   40d0a:	e8 19 e9             	call   0x4f626
   40d0d:	83 c4 12             	add    sp,0x12
   40d10:	88 46 f7             	mov    BYTE PTR [bp-0x9],al
   40d13:	0a c0                	or     al,al
   40d15:	74 09                	je     0x40d20
   40d17:	80 7e f7 02          	cmp    BYTE PTR [bp-0x9],0x2
   40d1b:	74 03                	je     0x40d20
   40d1d:	e9 5a 01             	jmp    0x40e7a
   40d20:	6a 00                	push   0x0
   40d22:	6a 00                	push   0x0
   40d24:	6a 00                	push   0x0
   40d26:	6a 00                	push   0x0
   40d28:	6a 02                	push   0x2
   40d2a:	6a 21                	push   0x21
   40d2c:	ff 76 e0             	push   WORD PTR [bp-0x20]
   40d2f:	ff 76 de             	push   WORD PTR [bp-0x22]
   40d32:	6a 01                	push   0x1
   40d34:	9a 25 00 60 01       	call   0x160:0x25
   40d39:	83 c4 12             	add    sp,0x12
   40d3c:	88 46 f6             	mov    BYTE PTR [bp-0xa],al
   40d3f:	0a c0                	or     al,al
   40d41:	74 32                	je     0x40d75
   40d43:	6a ff                	push   0xffff
   40d45:	80 7e f6 01          	cmp    BYTE PTR [bp-0xa],0x1
   40d49:	75 07                	jne    0x40d52
   40d4b:	8c da                	mov    dx,ds
   40d4d:	b8 50 56             	mov    ax,0x5650
   40d50:	eb 12                	jmp    0x40d64
   40d52:	80 7e f6 02          	cmp    BYTE PTR [bp-0xa],0x2
   40d56:	75 07                	jne    0x40d5f
   40d58:	8c da                	mov    dx,ds
   40d5a:	b8 64 56             	mov    ax,0x5664
   40d5d:	eb 05                	jmp    0x40d64
   40d5f:	8c da                	mov    dx,ds
   40d61:	b8 8a 56             	mov    ax,0x568a
   40d64:	52                   	push   dx
   40d65:	50                   	push   ax
   40d66:	68 20 03             	push   0x320
   40d69:	1e                   	push   ds
   40d6a:	68 41 56             	push   0x5641
   40d6d:	9a 2a 00 58 01       	call   0x158:0x2a
   40d72:	83 c4 0c             	add    sp,0xc
   40d75:	6a 00                	push   0x0
   40d77:	6a 00                	push   0x0
   40d79:	6a 00                	push   0x0
   40d7b:	68 52 4e             	push   0x4e52
   40d7e:	6a 21                	push   0x21
   40d80:	9a 2d 19 10 00       	call   0x10:0x192d
   40d85:	83 c4 0a             	add    sp,0xa
   40d88:	6a 00                	push   0x0
   40d8a:	6a 21                	push   0x21
   40d8c:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   40d91:	83 c4 04             	add    sp,0x4
   40d94:	0b c0                	or     ax,ax
   40d96:	74 03                	je     0x40d9b
   40d98:	e9 df 00             	jmp    0x40e7a
   40d9b:	83 76 f2 01          	xor    WORD PTR [bp-0xe],0x1
   40d9f:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   40da2:	c4 5e de             	les    bx,DWORD PTR [bp-0x22]
   40da5:	26 fe 47 05          	inc    BYTE PTR es:[bx+0x5]
   40da9:	ff 46 f4             	inc    WORD PTR [bp-0xc]
   40dac:	8d 46 f8             	lea    ax,[bp-0x8]
   40daf:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   40db2:	03 d8                	add    bx,ax
   40db4:	36 8a 07             	mov    al,BYTE PTR ss:[bx]
   40db7:	b4 00                	mov    ah,0x0
   40db9:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   40dbc:	7e 03                	jle    0x40dc1
   40dbe:	e9 32 fe             	jmp    0x40bf3
   40dc1:	83 7e ea 07          	cmp    WORD PTR [bp-0x16],0x7
   40dc5:	7d 1c                	jge    0x40de3
   40dc7:	1e                   	push   ds
   40dc8:	68 a4 56             	push   0x56a4
   40dcb:	68 27 03             	push   0x327
   40dce:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40dd1:	c1 e0 03             	shl    ax,0x3
   40dd4:	05 9f e2             	add    ax,0xe29f
   40dd7:	68 88 01             	push   0x188
   40dda:	50                   	push   ax
   40ddb:	9a 2f 02 40 00       	call   0x40:0x22f
   40de0:	83 c4 0a             	add    sp,0xa
   40de3:	c4 5e e2             	les    bx,DWORD PTR [bp-0x1e]
   40de6:	26 fe 47 04          	inc    BYTE PTR es:[bx+0x4]
   40dea:	ff 46 ea             	inc    WORD PTR [bp-0x16]
   40ded:	83 7e ea 08          	cmp    WORD PTR [bp-0x16],0x8
   40df1:	7d 03                	jge    0x40df6
   40df3:	e9 e2 fd             	jmp    0x40bd8
   40df6:	1e                   	push   ds
   40df7:	68 b3 56             	push   0x56b3
   40dfa:	68 2a 03             	push   0x32a
   40dfd:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40e00:	c1 e0 03             	shl    ax,0x3
   40e03:	05 af e2             	add    ax,0xe2af
   40e06:	68 88 01             	push   0x188
   40e09:	50                   	push   ax
   40e0a:	9a 2f 02 40 00       	call   0x40:0x22f
   40e0f:	83 c4 0a             	add    sp,0xa
   40e12:	6a 00                	push   0x0
   40e14:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40e17:	c1 e3 03             	shl    bx,0x3
   40e1a:	b8 88 01             	mov    ax,0x188
   40e1d:	8e c0                	mov    es,ax
   40e1f:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   40e24:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   40e29:	9a f4 05 20 00       	call   0x20:0x5f4
   40e2e:	83 c4 06             	add    sp,0x6
   40e31:	6a 00                	push   0x0
   40e33:	ff 76 ee             	push   WORD PTR [bp-0x12]
   40e36:	6a 00                	push   0x0
   40e38:	8a 46 f0             	mov    al,BYTE PTR [bp-0x10]
   40e3b:	50                   	push   ax
   40e3c:	68 d0 07             	push   0x7d0
   40e3f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40e42:	c1 e3 03             	shl    bx,0x3
   40e45:	b8 88 01             	mov    ax,0x188
   40e48:	8e c0                	mov    es,ax
   40e4a:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   40e4f:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   40e54:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   40e57:	35 01 00             	xor    ax,0x1
   40e5a:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40e5d:	03 d8                	add    bx,ax
   40e5f:	c1 e3 03             	shl    bx,0x3
   40e62:	b8 88 01             	mov    ax,0x188
   40e65:	8e c0                	mov    es,ax
   40e67:	26 ff b7 a9 e2       	push   WORD PTR es:[bx-0x1d57]
   40e6c:	26 ff b7 a7 e2       	push   WORD PTR es:[bx-0x1d59]
   40e71:	0e                   	push   cs
   40e72:	e8 b1 e7             	call   0x4f626
   40e75:	83 c4 12             	add    sp,0x12
   40e78:	0a c0                	or     al,al
   40e7a:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   40e7d:	c1 e3 03             	shl    bx,0x3
   40e80:	b8 88 01             	mov    ax,0x188
   40e83:	8e c0                	mov    es,ax
   40e85:	26 8b 87 af e2       	mov    ax,WORD PTR es:[bx-0x1d51]
   40e8a:	26 0b 87 b1 e2       	or     ax,WORD PTR es:[bx-0x1d4f]
   40e8f:	74 1c                	je     0x40ead
   40e91:	1e                   	push   ds
   40e92:	68 c2 56             	push   0x56c2
   40e95:	68 30 03             	push   0x330
   40e98:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40e9b:	c1 e0 03             	shl    ax,0x3
   40e9e:	05 af e2             	add    ax,0xe2af
   40ea1:	68 88 01             	push   0x188
   40ea4:	50                   	push   ax
   40ea5:	9a 2f 02 40 00       	call   0x40:0x22f
   40eaa:	83 c4 0a             	add    sp,0xa
   40ead:	1e                   	push   ds
   40eae:	68 d1 56             	push   0x56d1
   40eb1:	68 31 03             	push   0x331
   40eb4:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40eb7:	c1 e0 03             	shl    ax,0x3
   40eba:	05 a7 e2             	add    ax,0xe2a7
   40ebd:	68 88 01             	push   0x188
   40ec0:	50                   	push   ax
   40ec1:	9a 2f 02 40 00       	call   0x40:0x22f
   40ec6:	83 c4 0a             	add    sp,0xa
   40ec9:	1e                   	push   ds
   40eca:	68 e0 56             	push   0x56e0
   40ecd:	68 32 03             	push   0x332
   40ed0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   40ed3:	c1 e0 03             	shl    ax,0x3
   40ed6:	05 9f e2             	add    ax,0xe29f
   40ed9:	68 88 01             	push   0x188
   40edc:	50                   	push   ax
   40edd:	9a 2f 02 40 00       	call   0x40:0x22f
   40ee2:	83 c4 0a             	add    sp,0xa
   40ee5:	b8 88 01             	mov    ax,0x188
   40ee8:	8e c0                	mov    es,ax
   40eea:	26 a1 1a 73          	mov    ax,es:0x731a
   40eee:	f7 d8                	neg    ax
   40ef0:	50                   	push   ax
   40ef1:	b8 88 01             	mov    ax,0x188
   40ef4:	8e c0                	mov    es,ax
   40ef6:	26 a1 18 73          	mov    ax,es:0x7318
   40efa:	f7 d8                	neg    ax
   40efc:	50                   	push   ax
   40efd:	68 dc 05             	push   0x5dc
   40f00:	9a 3f 07 30 00       	call   0x30:0x73f
   40f05:	83 c4 06             	add    sp,0x6
   40f08:	b8 88 01             	mov    ax,0x188
   40f0b:	8e c0                	mov    es,ax
   40f0d:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   40f13:	74 50                	je     0x40f65
   40f15:	9a 96 12 68 00       	call   0x68:0x1296
   40f1a:	b8 88 01             	mov    ax,0x188
   40f1d:	8e c0                	mov    es,ax
   40f1f:	26 a1 75 bb          	mov    ax,es:0xbb75
   40f23:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   40f28:	74 3b                	je     0x40f65
   40f2a:	b8 88 01             	mov    ax,0x188
   40f2d:	8e c0                	mov    es,ax
   40f2f:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40f34:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40f39:	9a 03 00 80 00       	call   0x80:0x3
   40f3e:	b8 88 01             	mov    ax,0x188
   40f41:	8e c0                	mov    es,ax
   40f43:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40f48:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40f4d:	9a da 00 58 00       	call   0x58:0xda
   40f52:	b8 88 01             	mov    ax,0x188
   40f55:	8e c0                	mov    es,ax
   40f57:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   40f5e:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   40f65:	1e                   	push   ds
   40f66:	68 ef 56             	push   0x56ef
   40f69:	9a a0 1a 28 00       	call   0x28:0x1aa0
   40f6e:	83 c4 04             	add    sp,0x4
   40f71:	9a e3 01 40 00       	call   0x40:0x1e3
   40f76:	68 88 01             	push   0x188
   40f79:	68 2c 96             	push   0x962c
   40f7c:	8d 86 68 ff          	lea    ax,[bp-0x98]
   40f80:	16                   	push   ss
   40f81:	50                   	push   ax
   40f82:	b9 48 00             	mov    cx,0x48
   40f85:	9a 7a 12 00 00       	call   0x0:0x127a
   40f8a:	9a 2f 00 78 01       	call   0x178:0x2f
   40f8f:	c9                   	leave
   40f90:	cb                   	retf
   40f91:	55                   	push   bp
   40f92:	8b ec                	mov    bp,sp
   40f94:	b8 88 01             	mov    ax,0x188
   40f97:	8e c0                	mov    es,ax
   40f99:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   40f9f:	74 50                	je     0x40ff1
   40fa1:	9a 96 12 68 00       	call   0x68:0x1296
   40fa6:	b8 88 01             	mov    ax,0x188
   40fa9:	8e c0                	mov    es,ax
   40fab:	26 a1 75 bb          	mov    ax,es:0xbb75
   40faf:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   40fb4:	74 3b                	je     0x40ff1
   40fb6:	b8 88 01             	mov    ax,0x188
   40fb9:	8e c0                	mov    es,ax
   40fbb:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40fc0:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40fc5:	9a 03 00 80 00       	call   0x80:0x3
   40fca:	b8 88 01             	mov    ax,0x188
   40fcd:	8e c0                	mov    es,ax
   40fcf:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40fd4:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40fd9:	9a da 00 58 00       	call   0x58:0xda
   40fde:	b8 88 01             	mov    ax,0x188
   40fe1:	8e c0                	mov    es,ax
   40fe3:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   40fea:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   40ff1:	6a 00                	push   0x0
   40ff3:	6a 3a                	push   0x3a
   40ff5:	9a 39 00 30 01       	call   0x130:0x39
   40ffa:	83 c4 04             	add    sp,0x4
   40ffd:	9a 66 00 10 01       	call   0x110:0x66
   41002:	6a 00                	push   0x0
   41004:	6a 00                	push   0x0
   41006:	6a 0a                	push   0xa
   41008:	90                   	nop
   41009:	0e                   	push   cs
   4100a:	e8 c5 04             	call   0x414d2
   4100d:	83 c4 06             	add    sp,0x6
   41010:	9a b9 1e 10 00       	call   0x10:0x1eb9
   41015:	6a 00                	push   0x0
   41017:	6a 01                	push   0x1
   41019:	1e                   	push   ds
   4101a:	68 f6 56             	push   0x56f6
   4101d:	9a 48 29 10 00       	call   0x10:0x2948
   41022:	83 c4 08             	add    sp,0x8
   41025:	b8 88 01             	mov    ax,0x188
   41028:	8e c0                	mov    es,ax
   4102a:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4102e:	50                   	push   ax
   4102f:	9a 6b 02 30 00       	call   0x30:0x26b
   41034:	59                   	pop    cx
   41035:	9a 72 13 68 00       	call   0x68:0x1372
   4103a:	3d 01 00             	cmp    ax,0x1
   4103d:	74 e6                	je     0x41025
   4103f:	9a b9 1e 10 00       	call   0x10:0x1eb9
   41044:	6a 00                	push   0x0
   41046:	6a 01                	push   0x1
   41048:	1e                   	push   ds
   41049:	68 40 57             	push   0x5740
   4104c:	9a 48 29 10 00       	call   0x10:0x2948
   41051:	83 c4 08             	add    sp,0x8
   41054:	1e                   	push   ds
   41055:	68 6b 57             	push   0x576b
   41058:	1e                   	push   ds
   41059:	68 66 57             	push   0x5766
   4105c:	9a 98 21 10 00       	call   0x10:0x2198
   41061:	83 c4 08             	add    sp,0x8
   41064:	9a b9 1e 10 00       	call   0x10:0x1eb9
   41069:	b8 88 01             	mov    ax,0x188
   4106c:	8e c0                	mov    es,ax
   4106e:	26 83 3e 9e bb 00    	cmp    WORD PTR es:0xbb9e,0x0
   41074:	75 03                	jne    0x41079
   41076:	e9 8a 00             	jmp    0x41103
   41079:	b8 88 01             	mov    ax,0x188
   4107c:	8e c0                	mov    es,ax
   4107e:	26 a1 1a 73          	mov    ax,es:0x731a
   41082:	f7 d8                	neg    ax
   41084:	50                   	push   ax
   41085:	b8 88 01             	mov    ax,0x188
   41088:	8e c0                	mov    es,ax
   4108a:	26 a1 18 73          	mov    ax,es:0x7318
   4108e:	f7 d8                	neg    ax
   41090:	50                   	push   ax
   41091:	68 e8 03             	push   0x3e8
   41094:	9a 3f 07 30 00       	call   0x30:0x73f
   41099:	83 c4 06             	add    sp,0x6
   4109c:	b8 88 01             	mov    ax,0x188
   4109f:	8e c0                	mov    es,ax
   410a1:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   410a7:	74 50                	je     0x410f9
   410a9:	9a 96 12 68 00       	call   0x68:0x1296
   410ae:	b8 88 01             	mov    ax,0x188
   410b1:	8e c0                	mov    es,ax
   410b3:	26 a1 75 bb          	mov    ax,es:0xbb75
   410b7:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   410bc:	74 3b                	je     0x410f9
   410be:	b8 88 01             	mov    ax,0x188
   410c1:	8e c0                	mov    es,ax
   410c3:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   410c8:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   410cd:	9a 03 00 80 00       	call   0x80:0x3
   410d2:	b8 88 01             	mov    ax,0x188
   410d5:	8e c0                	mov    es,ax
   410d7:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   410dc:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   410e1:	9a da 00 58 00       	call   0x58:0xda
   410e6:	b8 88 01             	mov    ax,0x188
   410e9:	8e c0                	mov    es,ax
   410eb:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   410f2:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   410f9:	9a 66 00 10 01       	call   0x110:0x66
   410fe:	90                   	nop
   410ff:	0e                   	push   cs
   41100:	e8 19 06             	call   0x4171c
   41103:	6a 00                	push   0x0
   41105:	9a 93 00 18 01       	call   0x118:0x93
   4110a:	59                   	pop    cx
   4110b:	b4 00                	mov    ah,0x0
   4110d:	0b c0                	or     ax,ax
   4110f:	75 03                	jne    0x41114
   41111:	e9 2b ff             	jmp    0x4103f
   41114:	5d                   	pop    bp
   41115:	cb                   	retf
   41116:	55                   	push   bp
   41117:	8b ec                	mov    bp,sp
   41119:	83 ec 08             	sub    sp,0x8
   4111c:	c7 46 fe 0b 00       	mov    WORD PTR [bp-0x2],0xb
   41121:	c7 46 fc 0c 00       	mov    WORD PTR [bp-0x4],0xc
   41126:	c7 46 fa 0d 00       	mov    WORD PTR [bp-0x6],0xd
   4112b:	c6 46 f9 00          	mov    BYTE PTR [bp-0x7],0x0
   4112f:	68 9c 00             	push   0x9c
   41132:	9a 2a 00 30 01       	call   0x130:0x2a
   41137:	59                   	pop    cx
   41138:	0a c0                	or     al,al
   4113a:	75 03                	jne    0x4113f
   4113c:	e9 91 03             	jmp    0x414d0
   4113f:	b8 88 01             	mov    ax,0x188
   41142:	8e c0                	mov    es,ax
   41144:	26 a1 1a 73          	mov    ax,es:0x731a
   41148:	f7 d8                	neg    ax
   4114a:	50                   	push   ax
   4114b:	b8 88 01             	mov    ax,0x188
   4114e:	8e c0                	mov    es,ax
   41150:	26 a1 18 73          	mov    ax,es:0x7318
   41154:	f7 d8                	neg    ax
   41156:	50                   	push   ax
   41157:	68 e8 03             	push   0x3e8
   4115a:	9a 3f 07 30 00       	call   0x30:0x73f
   4115f:	83 c4 06             	add    sp,0x6
   41162:	b8 88 01             	mov    ax,0x188
   41165:	8e c0                	mov    es,ax
   41167:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4116d:	74 50                	je     0x411bf
   4116f:	9a 96 12 68 00       	call   0x68:0x1296
   41174:	b8 88 01             	mov    ax,0x188
   41177:	8e c0                	mov    es,ax
   41179:	26 a1 75 bb          	mov    ax,es:0xbb75
   4117d:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   41182:	74 3b                	je     0x411bf
   41184:	b8 88 01             	mov    ax,0x188
   41187:	8e c0                	mov    es,ax
   41189:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   4118e:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   41193:	9a 03 00 80 00       	call   0x80:0x3
   41198:	b8 88 01             	mov    ax,0x188
   4119b:	8e c0                	mov    es,ax
   4119d:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   411a2:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   411a7:	9a da 00 58 00       	call   0x58:0xda
   411ac:	b8 88 01             	mov    ax,0x188
   411af:	8e c0                	mov    es,ax
   411b1:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   411b8:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   411bf:	9a 66 00 10 01       	call   0x110:0x66
   411c4:	68 88 01             	push   0x188
   411c7:	68 2c 96             	push   0x962c
   411ca:	68 88 01             	push   0x188
   411cd:	68 04 97             	push   0x9704
   411d0:	b9 48 00             	mov    cx,0x48
   411d3:	9a 7a 12 00 00       	call   0x0:0x127a
   411d8:	9a 8e 17 10 00       	call   0x10:0x178e
   411dd:	b8 88 01             	mov    ax,0x188
   411e0:	8e c0                	mov    es,ax
   411e2:	26 a1 1e 73          	mov    ax,es:0x731e
   411e6:	ba 88 01             	mov    dx,0x188
   411e9:	8e c2                	mov    es,dx
   411eb:	26 a3 18 73          	mov    es:0x7318,ax
   411ef:	1e                   	push   ds
   411f0:	68 71 57             	push   0x5771
   411f3:	9a 57 00 40 01       	call   0x140:0x57
   411f8:	83 c4 04             	add    sp,0x4
   411fb:	3c 1b                	cmp    al,0x1b
   411fd:	75 1d                	jne    0x4121c
   411ff:	6a 00                	push   0x0
   41201:	b8 88 01             	mov    ax,0x188
   41204:	8e c0                	mov    es,ax
   41206:	26 a1 18 73          	mov    ax,es:0x7318
   4120a:	f7 d8                	neg    ax
   4120c:	50                   	push   ax
   4120d:	68 e8 03             	push   0x3e8
   41210:	9a 3f 07 30 00       	call   0x30:0x73f
   41215:	83 c4 06             	add    sp,0x6
   41218:	c6 46 f9 01          	mov    BYTE PTR [bp-0x7],0x1
   4121c:	68 88 01             	push   0x188
   4121f:	68 2c 96             	push   0x962c
   41222:	68 88 01             	push   0x188
   41225:	68 6c 98             	push   0x986c
   41228:	b9 48 00             	mov    cx,0x48
   4122b:	9a 7a 12 00 00       	call   0x0:0x127a
   41230:	6a 00                	push   0x0
   41232:	6a 01                	push   0x1
   41234:	b8 88 01             	mov    ax,0x188
   41237:	8e c0                	mov    es,ax
   41239:	26 ff 36 4d bb       	push   WORD PTR es:0xbb4d
   4123e:	90                   	nop
   4123f:	0e                   	push   cs
   41240:	e8 8f 02             	call   0x414d2
   41243:	83 c4 06             	add    sp,0x6
   41246:	b8 88 01             	mov    ax,0x188
   41249:	8e c0                	mov    es,ax
   4124b:	26 ff 36 20 73       	push   WORD PTR es:0x7320
   41250:	6a 00                	push   0x0
   41252:	68 e8 03             	push   0x3e8
   41255:	9a 3f 07 30 00       	call   0x30:0x73f
   4125a:	83 c4 06             	add    sp,0x6
   4125d:	1e                   	push   ds
   4125e:	68 75 57             	push   0x5775
   41261:	9a a0 1a 28 00       	call   0x28:0x1aa0
   41266:	83 c4 04             	add    sp,0x4
   41269:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4126c:	1e                   	push   ds
   4126d:	68 7f 57             	push   0x577f
   41270:	6a 01                	push   0x1
   41272:	9a 20 00 48 01       	call   0x148:0x20
   41277:	83 c4 08             	add    sp,0x8
   4127a:	ff 76 fc             	push   WORD PTR [bp-0x4]
   4127d:	1e                   	push   ds
   4127e:	68 88 57             	push   0x5788
   41281:	6a 01                	push   0x1
   41283:	9a 20 00 48 01       	call   0x148:0x20
   41288:	83 c4 08             	add    sp,0x8
   4128b:	9a 04 02 30 00       	call   0x30:0x204
   41290:	80 7e f9 00          	cmp    BYTE PTR [bp-0x7],0x0
   41294:	74 05                	je     0x4129b
   41296:	9a 3e 00 50 01       	call   0x150:0x3e
   4129b:	68 00 01             	push   0x100
   4129e:	6a 00                	push   0x0
   412a0:	1e                   	push   ds
   412a1:	68 92 57             	push   0x5792
   412a4:	9a 2a 00 48 01       	call   0x148:0x2a
   412a9:	83 c4 08             	add    sp,0x8
   412ac:	80 7e f9 00          	cmp    BYTE PTR [bp-0x7],0x0
   412b0:	74 05                	je     0x412b7
   412b2:	9a 3e 00 50 01       	call   0x150:0x3e
   412b7:	68 e0 01             	push   0x1e0
   412ba:	68 d0 02             	push   0x2d0
   412bd:	6a 00                	push   0x0
   412bf:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   412c2:	50                   	push   ax
   412c3:	6a 00                	push   0x0
   412c5:	6a 00                	push   0x0
   412c7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   412ca:	c1 e3 03             	shl    bx,0x3
   412cd:	b8 88 01             	mov    ax,0x188
   412d0:	8e c0                	mov    es,ax
   412d2:	26 ff b7 9d e2       	push   WORD PTR es:[bx-0x1d63]
   412d7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   412da:	c1 e3 03             	shl    bx,0x3
   412dd:	b8 88 01             	mov    ax,0x188
   412e0:	8e c0                	mov    es,ax
   412e2:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   412e7:	6a 00                	push   0x0
   412e9:	6a 00                	push   0x0
   412eb:	9a 30 04 28 00       	call   0x28:0x430
   412f0:	83 c4 14             	add    sp,0x14
   412f3:	6a 01                	push   0x1
   412f5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   412f8:	c1 e3 03             	shl    bx,0x3
   412fb:	b8 88 01             	mov    ax,0x188
   412fe:	8e c0                	mov    es,ax
   41300:	26 ff b7 9d e2       	push   WORD PTR es:[bx-0x1d63]
   41305:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   41308:	c1 e3 03             	shl    bx,0x3
   4130b:	b8 88 01             	mov    ax,0x188
   4130e:	8e c0                	mov    es,ax
   41310:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   41315:	8a 46 fa             	mov    al,BYTE PTR [bp-0x6]
   41318:	50                   	push   ax
   41319:	9a 4a 0e 20 00       	call   0x20:0xe4a
   4131e:	83 c4 08             	add    sp,0x8
   41321:	68 e0 01             	push   0x1e0
   41324:	68 d0 02             	push   0x2d0
   41327:	8a 46 fa             	mov    al,BYTE PTR [bp-0x6]
   4132a:	50                   	push   ax
   4132b:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   4132e:	50                   	push   ax
   4132f:	6a 00                	push   0x0
   41331:	6a 00                	push   0x0
   41333:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   41336:	c1 e3 03             	shl    bx,0x3
   41339:	b8 88 01             	mov    ax,0x188
   4133c:	8e c0                	mov    es,ax
   4133e:	26 ff b7 9d e2       	push   WORD PTR es:[bx-0x1d63]
   41343:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   41346:	c1 e3 03             	shl    bx,0x3
   41349:	b8 88 01             	mov    ax,0x188
   4134c:	8e c0                	mov    es,ax
   4134e:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   41353:	6a 3e                	push   0x3e
   41355:	6a 00                	push   0x0
   41357:	9a 30 04 28 00       	call   0x28:0x430
   4135c:	83 c4 14             	add    sp,0x14
   4135f:	80 7e f9 00          	cmp    BYTE PTR [bp-0x7],0x0
   41363:	74 19                	je     0x4137e
   41365:	6a 00                	push   0x0
   41367:	b8 88 01             	mov    ax,0x188
   4136a:	8e c0                	mov    es,ax
   4136c:	26 ff 36 1e 73       	push   WORD PTR es:0x731e
   41371:	68 f4 01             	push   0x1f4
   41374:	9a 3f 07 30 00       	call   0x30:0x73f
   41379:	83 c4 06             	add    sp,0x6
   4137c:	eb 29                	jmp    0x413a7
   4137e:	68 00 03             	push   0x300
   41381:	b8 88 01             	mov    ax,0x188
   41384:	8e c0                	mov    es,ax
   41386:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   4138b:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   41390:	b8 88 01             	mov    ax,0x188
   41393:	8e c0                	mov    es,ax
   41395:	26 ff 36 ed e5       	push   WORD PTR es:0xe5ed
   4139a:	26 ff 36 eb e5       	push   WORD PTR es:0xe5eb
   4139f:	9a 01 40 00 00       	call   0x0:0x4001
   413a4:	83 c4 0a             	add    sp,0xa
   413a7:	68 e8 03             	push   0x3e8
   413aa:	9a ca 2d 10 00       	call   0x10:0x2dca
   413af:	59                   	pop    cx
   413b0:	6a 14                	push   0x14
   413b2:	1e                   	push   ds
   413b3:	68 9b 57             	push   0x579b
   413b6:	6a 01                	push   0x1
   413b8:	9a 61 00 50 01       	call   0x150:0x61
   413bd:	83 c4 08             	add    sp,0x8
   413c0:	68 80 4d             	push   0x4d80
   413c3:	6a 00                	push   0x0
   413c5:	6a 00                	push   0x0
   413c7:	6a 00                	push   0x0
   413c9:	68 e8 03             	push   0x3e8
   413cc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   413cf:	c1 e3 03             	shl    bx,0x3
   413d2:	b8 88 01             	mov    ax,0x188
   413d5:	8e c0                	mov    es,ax
   413d7:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   413dc:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   413e1:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   413e4:	c1 e3 03             	shl    bx,0x3
   413e7:	b8 88 01             	mov    ax,0x188
   413ea:	8e c0                	mov    es,ax
   413ec:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   413f1:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   413f6:	0e                   	push   cs
   413f7:	e8 2c e2             	call   0x4f626
   413fa:	83 c4 12             	add    sp,0x12
   413fd:	6a 01                	push   0x1
   413ff:	1e                   	push   ds
   41400:	68 a5 57             	push   0x57a5
   41403:	6a 01                	push   0x1
   41405:	9a 61 00 50 01       	call   0x150:0x61
   4140a:	83 c4 08             	add    sp,0x8
   4140d:	1e                   	push   ds
   4140e:	68 af 57             	push   0x57af
   41411:	68 9b 03             	push   0x39b
   41414:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   41417:	c1 e0 03             	shl    ax,0x3
   4141a:	05 9f e2             	add    ax,0xe29f
   4141d:	68 88 01             	push   0x188
   41420:	50                   	push   ax
   41421:	9a 2f 02 40 00       	call   0x40:0x22f
   41426:	83 c4 0a             	add    sp,0xa
   41429:	1e                   	push   ds
   4142a:	68 be 57             	push   0x57be
   4142d:	68 9c 03             	push   0x39c
   41430:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   41433:	c1 e0 03             	shl    ax,0x3
   41436:	05 9f e2             	add    ax,0xe29f
   41439:	68 88 01             	push   0x188
   4143c:	50                   	push   ax
   4143d:	9a 2f 02 40 00       	call   0x40:0x22f
   41442:	83 c4 0a             	add    sp,0xa
   41445:	1e                   	push   ds
   41446:	68 cd 57             	push   0x57cd
   41449:	68 9d 03             	push   0x39d
   4144c:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4144f:	c1 e0 03             	shl    ax,0x3
   41452:	05 9f e2             	add    ax,0xe29f
   41455:	68 88 01             	push   0x188
   41458:	50                   	push   ax
   41459:	9a 2f 02 40 00       	call   0x40:0x22f
   4145e:	83 c4 0a             	add    sp,0xa
   41461:	6a 64                	push   0x64
   41463:	9a ca 2d 10 00       	call   0x10:0x2dca
   41468:	59                   	pop    cx
   41469:	b8 88 01             	mov    ax,0x188
   4146c:	8e c0                	mov    es,ax
   4146e:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   41473:	50                   	push   ax
   41474:	9a 69 00 30 00       	call   0x30:0x69
   41479:	59                   	pop    cx
   4147a:	1e                   	push   ds
   4147b:	68 dc 57             	push   0x57dc
   4147e:	68 a0 03             	push   0x3a0
   41481:	68 88 01             	push   0x188
   41484:	68 d7 e4             	push   0xe4d7
   41487:	9a 2f 02 40 00       	call   0x40:0x22f
   4148c:	83 c4 0a             	add    sp,0xa
   4148f:	6a 00                	push   0x0
   41491:	6a 01                	push   0x1
   41493:	1e                   	push   ds
   41494:	68 eb 57             	push   0x57eb
   41497:	9a 48 29 10 00       	call   0x10:0x2948
   4149c:	83 c4 08             	add    sp,0x8
   4149f:	68 8c 00             	push   0x8c
   414a2:	9a ca 2d 10 00       	call   0x10:0x2dca
   414a7:	59                   	pop    cx
   414a8:	9a b9 1e 10 00       	call   0x10:0x1eb9
   414ad:	6a 01                	push   0x1
   414af:	9a 93 00 18 01       	call   0x118:0x93
   414b4:	59                   	pop    cx
   414b5:	b4 00                	mov    ah,0x0
   414b7:	0b c0                	or     ax,ax
   414b9:	74 f2                	je     0x414ad
   414bb:	6a 05                	push   0x5
   414bd:	6a 00                	push   0x0
   414bf:	6a 00                	push   0x0
   414c1:	6a 07                	push   0x7
   414c3:	9a 61 00 50 01       	call   0x150:0x61
   414c8:	83 c4 08             	add    sp,0x8
   414cb:	90                   	nop
   414cc:	0e                   	push   cs
   414cd:	e8 4c 02             	call   0x4171c
   414d0:	c9                   	leave
   414d1:	cb                   	retf
   414d2:	55                   	push   bp
   414d3:	8b ec                	mov    bp,sp
   414d5:	83 ec 0a             	sub    sp,0xa
   414d8:	c6 46 fd 00          	mov    BYTE PTR [bp-0x3],0x0
   414dc:	b8 88 01             	mov    ax,0x188
   414df:	8e c0                	mov    es,ax
   414e1:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   414e7:	75 03                	jne    0x414ec
   414e9:	e9 2e 02             	jmp    0x4171a
   414ec:	1e                   	push   ds
   414ed:	68 0c 58             	push   0x580c
   414f0:	68 c4 03             	push   0x3c4
   414f3:	68 88 01             	push   0x188
   414f6:	68 26 de             	push   0xde26
   414f9:	9a 81 0a 20 00       	call   0x20:0xa81
   414fe:	83 c4 0a             	add    sp,0xa
   41501:	b8 88 01             	mov    ax,0x188
   41504:	8e c0                	mov    es,ax
   41506:	26 83 3e 1a 73 00    	cmp    WORD PTR es:0x731a,0x0
   4150c:	74 04                	je     0x41512
   4150e:	c6 46 fd 01          	mov    BYTE PTR [bp-0x3],0x1
   41512:	80 7e fd 00          	cmp    BYTE PTR [bp-0x3],0x0
   41516:	74 18                	je     0x41530
   41518:	b8 88 01             	mov    ax,0x188
   4151b:	8e c0                	mov    es,ax
   4151d:	26 a1 1a 73          	mov    ax,es:0x731a
   41521:	f7 d8                	neg    ax
   41523:	50                   	push   ax
   41524:	6a 00                	push   0x0
   41526:	6a 64                	push   0x64
   41528:	9a 3f 07 30 00       	call   0x30:0x73f
   4152d:	83 c4 06             	add    sp,0x6
   41530:	b8 88 01             	mov    ax,0x188
   41533:	8e c0                	mov    es,ax
   41535:	26 a1 75 bb          	mov    ax,es:0xbb75
   41539:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   4153e:	75 5d                	jne    0x4159d
   41540:	b8 88 01             	mov    ax,0x188
   41543:	8e c0                	mov    es,ax
   41545:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4154b:	74 50                	je     0x4159d
   4154d:	9a 96 12 68 00       	call   0x68:0x1296
   41552:	b8 88 01             	mov    ax,0x188
   41555:	8e c0                	mov    es,ax
   41557:	26 a1 75 bb          	mov    ax,es:0xbb75
   4155b:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   41560:	74 3b                	je     0x4159d
   41562:	b8 88 01             	mov    ax,0x188
   41565:	8e c0                	mov    es,ax
   41567:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   4156c:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   41571:	9a 03 00 80 00       	call   0x80:0x3
   41576:	b8 88 01             	mov    ax,0x188
   41579:	8e c0                	mov    es,ax
   4157b:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   41580:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   41585:	9a da 00 58 00       	call   0x58:0xda
   4158a:	b8 88 01             	mov    ax,0x188
   4158d:	8e c0                	mov    es,ax
   4158f:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   41596:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   4159d:	80 7e fd 00          	cmp    BYTE PTR [bp-0x3],0x0
   415a1:	74 16                	je     0x415b9
   415a3:	b8 88 01             	mov    ax,0x188
   415a6:	8e c0                	mov    es,ax
   415a8:	26 ff 36 20 73       	push   WORD PTR es:0x7320
   415ad:	6a 00                	push   0x0
   415af:	6a 00                	push   0x0
   415b1:	9a 3f 07 30 00       	call   0x30:0x73f
   415b6:	83 c4 06             	add    sp,0x6
   415b9:	b8 88 01             	mov    ax,0x188
   415bc:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   415bf:	8e c0                	mov    es,ax
   415c1:	26 89 16 4d bb       	mov    WORD PTR es:0xbb4d,dx
   415c6:	b8 88 01             	mov    ax,0x188
   415c9:	8e c0                	mov    es,ax
   415cb:	26 a1 4d bb          	mov    ax,es:0xbb4d
   415cf:	6b c0 0d             	imul   ax,ax,0xd
   415d2:	05 91 2c             	add    ax,0x2c91
   415d5:	68 88 01             	push   0x188
   415d8:	50                   	push   ax
   415d9:	6a 00                	push   0x0
   415db:	6a 00                	push   0x0
   415dd:	68 88 01             	push   0x188
   415e0:	68 75 bb             	push   0xbb75
   415e3:	9a f3 07 70 00       	call   0x70:0x7f3
   415e8:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   415eb:	0b c0                	or     ax,ax
   415ed:	74 39                	je     0x41628
   415ef:	83 7e fe ff          	cmp    WORD PTR [bp-0x2],0xffff
   415f3:	75 1e                	jne    0x41613
   415f5:	90                   	nop
   415f6:	0e                   	push   cs
   415f7:	e8 c4 16             	call   0x42cbe
   415fa:	b4 00                	mov    ah,0x0
   415fc:	0b c0                	or     ax,ax
   415fe:	75 28                	jne    0x41628
   41600:	6a ff                	push   0xffff
   41602:	1e                   	push   ds
   41603:	68 2a 58             	push   0x582a
   41606:	68 ce 03             	push   0x3ce
   41609:	1e                   	push   ds
   4160a:	68 1b 58             	push   0x581b
   4160d:	eb 11                	jmp    0x41620
   4160f:	eb 17                	jmp    0x41628
   41611:	eb 15                	jmp    0x41628
   41613:	6a ff                	push   0xffff
   41615:	1e                   	push   ds
   41616:	68 52 58             	push   0x5852
   41619:	68 d0 03             	push   0x3d0
   4161c:	1e                   	push   ds
   4161d:	68 43 58             	push   0x5843
   41620:	9a 2a 00 58 01       	call   0x158:0x2a
   41625:	83 c4 0c             	add    sp,0xc
   41628:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   4162c:	75 98                	jne    0x415c6
   4162e:	b8 88 01             	mov    ax,0x188
   41631:	8e c0                	mov    es,ax
   41633:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   41638:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   4163d:	ff 76 0a             	push   WORD PTR [bp+0xa]
   41640:	ff 76 08             	push   WORD PTR [bp+0x8]
   41643:	9a 1f 12 68 00       	call   0x68:0x121f
   41648:	b8 88 01             	mov    ax,0x188
   4164b:	8e c0                	mov    es,ax
   4164d:	26 c4 1e 75 bb       	les    bx,DWORD PTR es:0xbb75
   41652:	26 8a 47 29          	mov    al,BYTE PTR es:[bx+0x29]
   41656:	b4 00                	mov    ah,0x0
   41658:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4165b:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   41660:	e9 86 00             	jmp    0x416e9
   41663:	6a 00                	push   0x0
   41665:	68 00 80             	push   0x8000
   41668:	9a 79 17 00 00       	call   0x0:0x1779
   4166d:	99                   	cwd
   4166e:	50                   	push   ax
   4166f:	52                   	push   dx
   41670:	33 d2                	xor    dx,dx
   41672:	b8 15 00             	mov    ax,0x15
   41675:	59                   	pop    cx
   41676:	5b                   	pop    bx
   41677:	9a 42 12 00 00       	call   0x0:0x1242
   4167c:	52                   	push   dx
   4167d:	50                   	push   ax
   4167e:	9a df 12 00 00       	call   0x0:0x12df
   41683:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   41686:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   41689:	99                   	cwd
   4168a:	52                   	push   dx
   4168b:	50                   	push   ax
   4168c:	6a 00                	push   0x0
   4168e:	68 00 80             	push   0x8000
   41691:	9a 79 17 00 00       	call   0x0:0x1779
   41696:	99                   	cwd
   41697:	b1 02                	mov    cl,0x2
   41699:	9a 8d 13 00 00       	call   0x0:0x138d
   4169e:	52                   	push   dx
   4169f:	50                   	push   ax
   416a0:	9a df 12 00 00       	call   0x0:0x12df
   416a5:	50                   	push   ax
   416a6:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   416a9:	5a                   	pop    dx
   416aa:	03 c2                	add    ax,dx
   416ac:	99                   	cwd
   416ad:	52                   	push   dx
   416ae:	50                   	push   ax
   416af:	9a b4 01 60 00       	call   0x60:0x1b4
   416b4:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   416b7:	40                   	inc    ax
   416b8:	99                   	cwd
   416b9:	52                   	push   dx
   416ba:	50                   	push   ax
   416bb:	6a 00                	push   0x0
   416bd:	68 00 80             	push   0x8000
   416c0:	9a 79 17 00 00       	call   0x0:0x1779
   416c5:	99                   	cwd
   416c6:	b1 02                	mov    cl,0x2
   416c8:	9a 8d 13 00 00       	call   0x0:0x138d
   416cd:	52                   	push   dx
   416ce:	50                   	push   ax
   416cf:	9a df 12 00 00       	call   0x0:0x12df
   416d4:	50                   	push   ax
   416d5:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   416d8:	f7 d8                	neg    ax
   416da:	5a                   	pop    dx
   416db:	2b c2                	sub    ax,dx
   416dd:	99                   	cwd
   416de:	52                   	push   dx
   416df:	50                   	push   ax
   416e0:	9a b4 01 60 00       	call   0x60:0x1b4
   416e5:	83 46 f8 02          	add    WORD PTR [bp-0x8],0x2
   416e9:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   416ec:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   416ef:	7d 03                	jge    0x416f4
   416f1:	e9 6f ff             	jmp    0x41663
   416f4:	b8 88 01             	mov    ax,0x188
   416f7:	8e c0                	mov    es,ax
   416f9:	26 a0 d7 73          	mov    al,es:0x73d7
   416fd:	b4 00                	mov    ah,0x0
   416ff:	48                   	dec    ax
   41700:	99                   	cwd
   41701:	52                   	push   dx
   41702:	50                   	push   ax
   41703:	6a 00                	push   0x0
   41705:	6a 64                	push   0x64
   41707:	9a b4 01 60 00       	call   0x60:0x1b4
   4170c:	68 88 01             	push   0x188
   4170f:	68 26 de             	push   0xde26
   41712:	9a 22 0b 20 00       	call   0x20:0xb22
   41717:	83 c4 04             	add    sp,0x4
   4171a:	c9                   	leave
   4171b:	cb                   	retf
   4171c:	55                   	push   bp
   4171d:	8b ec                	mov    bp,sp
   4171f:	83 ec 18             	sub    sp,0x18
   41722:	c6 46 ff 01          	mov    BYTE PTR [bp-0x1],0x1
   41726:	c6 46 fe 0f          	mov    BYTE PTR [bp-0x2],0xf
   4172a:	c6 46 fd ff          	mov    BYTE PTR [bp-0x3],0xff
   4172e:	c6 46 fc 00          	mov    BYTE PTR [bp-0x4],0x0
   41732:	c6 46 fb 10          	mov    BYTE PTR [bp-0x5],0x10
   41736:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   4173b:	c7 46 f4 01 00       	mov    WORD PTR [bp-0xc],0x1
   41740:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
   41745:	c7 46 ee 32 00       	mov    WORD PTR [bp-0x12],0x32
   4174a:	1e                   	push   ds
   4174b:	68 6c 58             	push   0x586c
   4174e:	6a 02                	push   0x2
   41750:	9a 25 00 70 01       	call   0x170:0x25
   41755:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   41758:	3d ff ff             	cmp    ax,0xffff
   4175b:	75 15                	jne    0x41772
   4175d:	6a ff                	push   0xffff
   4175f:	1e                   	push   ds
   41760:	68 85 58             	push   0x5885
   41763:	68 ea 03             	push   0x3ea
   41766:	1e                   	push   ds
   41767:	68 76 58             	push   0x5876
   4176a:	9a 2a 00 58 01       	call   0x158:0x2a
   4176f:	83 c4 0c             	add    sp,0xc
   41772:	b8 88 01             	mov    ax,0x188
   41775:	8e c0                	mov    es,ax
   41777:	26 83 3e 18 73 00    	cmp    WORD PTR es:0x7318,0x0
   4177d:	74 22                	je     0x417a1
   4177f:	b8 88 01             	mov    ax,0x188
   41782:	8e c0                	mov    es,ax
   41784:	26 a1 1a 73          	mov    ax,es:0x731a
   41788:	f7 d8                	neg    ax
   4178a:	50                   	push   ax
   4178b:	b8 88 01             	mov    ax,0x188
   4178e:	8e c0                	mov    es,ax
   41790:	26 a1 18 73          	mov    ax,es:0x7318
   41794:	f7 d8                	neg    ax
   41796:	50                   	push   ax
   41797:	6a 64                	push   0x64
   41799:	9a 3f 07 30 00       	call   0x30:0x73f
   4179e:	83 c4 06             	add    sp,0x6
   417a1:	68 00 01             	push   0x100
   417a4:	6a 00                	push   0x0
   417a6:	1e                   	push   ds
   417a7:	68 b0 58             	push   0x58b0
   417aa:	9a 2a 00 48 01       	call   0x148:0x2a
   417af:	83 c4 08             	add    sp,0x8
   417b2:	6a 0b                	push   0xb
   417b4:	1e                   	push   ds
   417b5:	68 b9 58             	push   0x58b9
   417b8:	6a 01                	push   0x1
   417ba:	9a 20 00 48 01       	call   0x148:0x20
   417bf:	83 c4 08             	add    sp,0x8
   417c2:	9a 04 02 30 00       	call   0x30:0x204
   417c7:	b8 88 01             	mov    ax,0x188
   417ca:	8e c0                	mov    es,ax
   417cc:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   417d1:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   417d6:	b8 88 01             	mov    ax,0x188
   417d9:	8e c0                	mov    es,ax
   417db:	26 ff 36 f9 e2       	push   WORD PTR es:0xe2f9
   417e0:	26 ff 36 f7 e2       	push   WORD PTR es:0xe2f7
   417e5:	9a 8a 06 20 00       	call   0x20:0x68a
   417ea:	83 c4 08             	add    sp,0x8
   417ed:	6a 33                	push   0x33
   417ef:	9a 69 00 30 00       	call   0x30:0x69
   417f4:	59                   	pop    cx
   417f5:	6a 00                	push   0x0
   417f7:	6a 01                	push   0x1
   417f9:	6a 0b                	push   0xb
   417fb:	0e                   	push   cs
   417fc:	e8 d3 fc             	call   0x414d2
   417ff:	83 c4 06             	add    sp,0x6
   41802:	b8 88 01             	mov    ax,0x188
   41805:	8e c0                	mov    es,ax
   41807:	26 a1 20 73          	mov    ax,es:0x7320
   4180b:	05 e2 ff             	add    ax,0xffe2
   4180e:	50                   	push   ax
   4180f:	6a 00                	push   0x0
   41811:	6a 00                	push   0x0
   41813:	9a 3f 07 30 00       	call   0x30:0x73f
   41818:	83 c4 06             	add    sp,0x6
   4181b:	6a 01                	push   0x1
   4181d:	68 c8 00             	push   0xc8
   41820:	68 e1 00             	push   0xe1
   41823:	6a 0c                	push   0xc
   41825:	9a 4a 0e 20 00       	call   0x20:0xe4a
   4182a:	83 c4 08             	add    sp,0x8
   4182d:	6a 01                	push   0x1
   4182f:	68 c8 00             	push   0xc8
   41832:	68 e1 00             	push   0xe1
   41835:	6a 0d                	push   0xd
   41837:	9a 4a 0e 20 00       	call   0x20:0xe4a
   4183c:	83 c4 08             	add    sp,0x8
   4183f:	9a e3 01 40 00       	call   0x40:0x1e3
   41844:	68 fe 00             	push   0xfe
   41847:	68 c8 af             	push   0xafc8
   4184a:	6a 0c                	push   0xc
   4184c:	9a dc 16 28 00       	call   0x28:0x16dc
   41851:	83 c4 06             	add    sp,0x6
   41854:	b8 88 01             	mov    ax,0x188
   41857:	8e c0                	mov    es,ax
   41859:	26 a1 1e 73          	mov    ax,es:0x731e
   4185d:	ba 88 01             	mov    dx,0x188
   41860:	8e c2                	mov    es,dx
   41862:	26 a3 70 3d          	mov    es:0x3d70,ax
   41866:	b8 88 01             	mov    ax,0x188
   41869:	8e c0                	mov    es,ax
   4186b:	26 c6 06 75 3d 01    	mov    BYTE PTR es:0x3d75,0x1
   41871:	b8 88 01             	mov    ax,0x188
   41874:	8e c0                	mov    es,ax
   41876:	26 c7 06 72 3d 00 00 	mov    WORD PTR es:0x3d72,0x0
   4187d:	b8 88 01             	mov    ax,0x188
   41880:	8e c0                	mov    es,ax
   41882:	26 a1 4a e7          	mov    ax,es:0xe74a
   41886:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   41889:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   4188d:	75 37                	jne    0x418c6
   4188f:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   41892:	00 46 fc             	add    BYTE PTR [bp-0x4],al
   41895:	73 14                	jae    0x418ab
   41897:	b8 88 01             	mov    ax,0x188
   4189a:	8e c0                	mov    es,ax
   4189c:	26 a0 75 3d          	mov    al,es:0x3d75
   418a0:	fe c0                	inc    al
   418a2:	ba 88 01             	mov    dx,0x188
   418a5:	8e c2                	mov    es,dx
   418a7:	26 a2 75 3d          	mov    es:0x3d75,al
   418ab:	b8 88 01             	mov    ax,0x188
   418ae:	8e c0                	mov    es,ax
   418b0:	26 83 3e 70 3d 00    	cmp    WORD PTR es:0x3d70,0x0
   418b6:	74 03                	je     0x418bb
   418b8:	e9 97 03             	jmp    0x41c52
   418bb:	c7 46 f6 05 00       	mov    WORD PTR [bp-0xa],0x5
   418c0:	e9 8f 03             	jmp    0x41c52
   418c3:	e9 8c 03             	jmp    0x41c52
   418c6:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   418ca:	74 03                	je     0x418cf
   418cc:	e9 83 03             	jmp    0x41c52
   418cf:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   418d2:	28 46 fc             	sub    BYTE PTR [bp-0x4],al
   418d5:	73 14                	jae    0x418eb
   418d7:	b8 88 01             	mov    ax,0x188
   418da:	8e c0                	mov    es,ax
   418dc:	26 a0 75 3d          	mov    al,es:0x3d75
   418e0:	fe c8                	dec    al
   418e2:	ba 88 01             	mov    dx,0x188
   418e5:	8e c2                	mov    es,dx
   418e7:	26 a2 75 3d          	mov    es:0x3d75,al
   418eb:	b8 88 01             	mov    ax,0x188
   418ee:	8e c0                	mov    es,ax
   418f0:	26 83 3e 70 3d 00    	cmp    WORD PTR es:0x3d70,0x0
   418f6:	74 03                	je     0x418fb
   418f8:	e9 57 03             	jmp    0x41c52
   418fb:	e9 c8 05             	jmp    0x41ec6
   418fe:	e9 51 03             	jmp    0x41c52
   41901:	ff 76 e8             	push   WORD PTR [bp-0x18]
   41904:	9a 3e 00 70 01       	call   0x170:0x3e
   41909:	89 56 ec             	mov    WORD PTR [bp-0x14],dx
   4190c:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   4190f:	ff 76 e8             	push   WORD PTR [bp-0x18]
   41912:	68 88 01             	push   0x188
   41915:	68 cc ba             	push   0xbacc
   41918:	6a 00                	push   0x0
   4191a:	6a 67                	push   0x67
   4191c:	9a 2f 00 70 01       	call   0x170:0x2f
   41921:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   41926:	eb 23                	jmp    0x4194b
   41928:	b8 88 01             	mov    ax,0x188
   4192b:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4192e:	8e c0                	mov    es,ax
   41930:	26 80 bf cc ba 0a    	cmp    BYTE PTR es:[bx-0x4534],0xa
   41936:	75 10                	jne    0x41948
   41938:	b8 88 01             	mov    ax,0x188
   4193b:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4193e:	8e c0                	mov    es,ax
   41940:	26 c6 87 cc ba 00    	mov    BYTE PTR es:[bx-0x4534],0x0
   41946:	eb 09                	jmp    0x41951
   41948:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   4194b:	83 7e f8 67          	cmp    WORD PTR [bp-0x8],0x67
   4194f:	7c d7                	jl     0x41928
   41951:	68 fe 00             	push   0xfe
   41954:	6a 0c                	push   0xc
   41956:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41959:	b4 00                	mov    ah,0x0
   4195b:	50                   	push   ax
   4195c:	b8 88 01             	mov    ax,0x188
   4195f:	8e c0                	mov    es,ax
   41961:	26 ff 36 fb e2       	push   WORD PTR es:0xe2fb
   41966:	b8 88 01             	mov    ax,0x188
   41969:	8e c0                	mov    es,ax
   4196b:	26 a1 fd e2          	mov    ax,es:0xe2fd
   4196f:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   41972:	50                   	push   ax
   41973:	6a 00                	push   0x0
   41975:	9a 08 09 28 00       	call   0x28:0x908
   4197a:	83 c4 0c             	add    sp,0xc
   4197d:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41980:	b4 00                	mov    ah,0x0
   41982:	29 46 f2             	sub    WORD PTR [bp-0xe],ax
   41985:	b8 88 01             	mov    ax,0x188
   41988:	8e c0                	mov    es,ax
   4198a:	26 80 3e cc ba 2d    	cmp    BYTE PTR es:0xbacc,0x2d
   41990:	75 19                	jne    0x419ab
   41992:	b8 88 01             	mov    ax,0x188
   41995:	8e c0                	mov    es,ax
   41997:	26 c6 06 cc ba 20    	mov    BYTE PTR es:0xbacc,0x20
   4199d:	c6 46 ff 01          	mov    BYTE PTR [bp-0x1],0x1
   419a1:	c6 46 fe 0f          	mov    BYTE PTR [bp-0x2],0xf
   419a5:	c6 46 fd d5          	mov    BYTE PTR [bp-0x3],0xd5
   419a9:	eb 3c                	jmp    0x419e7
   419ab:	b8 88 01             	mov    ax,0x188
   419ae:	8e c0                	mov    es,ax
   419b0:	26 a0 cc ba          	mov    al,es:0xbacc
   419b4:	50                   	push   ax
   419b5:	9a 20 00 80 01       	call   0x180:0x20
   419ba:	59                   	pop    cx
   419bb:	0b c0                	or     ax,ax
   419bd:	74 1c                	je     0x419db
   419bf:	c6 46 ff 01          	mov    BYTE PTR [bp-0x1],0x1
   419c3:	c6 46 fe 0f          	mov    BYTE PTR [bp-0x2],0xf
   419c7:	68 88 01             	push   0x188
   419ca:	68 cc ba             	push   0xbacc
   419cd:	9a 2a 00 80 01       	call   0x180:0x2a
   419d2:	83 c4 04             	add    sp,0x4
   419d5:	c6 46 fd 3c          	mov    BYTE PTR [bp-0x3],0x3c
   419d9:	eb 0c                	jmp    0x419e7
   419db:	c6 46 ff 02          	mov    BYTE PTR [bp-0x1],0x2
   419df:	c6 46 fe 0b          	mov    BYTE PTR [bp-0x2],0xb
   419e3:	c6 46 fd ff          	mov    BYTE PTR [bp-0x3],0xff
   419e7:	68 88 01             	push   0x188
   419ea:	68 cc ba             	push   0xbacc
   419ed:	9a cc 49 00 00       	call   0x0:0x49cc
   419f2:	83 c4 04             	add    sp,0x4
   419f5:	3d 02 00             	cmp    ax,0x2
   419f8:	73 04                	jae    0x419fe
   419fa:	c6 46 fe 14          	mov    BYTE PTR [bp-0x2],0x14
   419fe:	ff 76 e8             	push   WORD PTR [bp-0x18]
   41a01:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   41a04:	99                   	cwd
   41a05:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   41a08:	8b 4e ea             	mov    cx,WORD PTR [bp-0x16]
   41a0b:	03 c8                	add    cx,ax
   41a0d:	13 da                	adc    bx,dx
   41a0f:	83 c1 01             	add    cx,0x1
   41a12:	83 d3 00             	adc    bx,0x0
   41a15:	53                   	push   bx
   41a16:	51                   	push   cx
   41a17:	6a 00                	push   0x0
   41a19:	9a 39 00 70 01       	call   0x170:0x39
   41a1e:	68 88 01             	push   0x188
   41a21:	68 cc ba             	push   0xbacc
   41a24:	9a 3e 00 80 01       	call   0x180:0x3e
   41a29:	83 c4 04             	add    sp,0x4
   41a2c:	68 88 01             	push   0x188
   41a2f:	68 cc ba             	push   0xbacc
   41a32:	9a cc 49 00 00       	call   0x0:0x49cc
   41a37:	83 c4 04             	add    sp,0x4
   41a3a:	3d 68 00             	cmp    ax,0x68
   41a3d:	76 15                	jbe    0x41a54
   41a3f:	6a 6b                	push   0x6b
   41a41:	6a 00                	push   0x0
   41a43:	6a 00                	push   0x0
   41a45:	68 29 04             	push   0x429
   41a48:	1e                   	push   ds
   41a49:	68 c2 58             	push   0x58c2
   41a4c:	9a 2a 00 58 01       	call   0x158:0x2a
   41a51:	83 c4 0c             	add    sp,0xc
   41a54:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   41a57:	b4 00                	mov    ah,0x0
   41a59:	3d 01 00             	cmp    ax,0x1
   41a5c:	74 0b                	je     0x41a69
   41a5e:	3d 02 00             	cmp    ax,0x2
   41a61:	75 03                	jne    0x41a66
   41a63:	e9 ff 00             	jmp    0x41b65
   41a66:	e9 e9 01             	jmp    0x41c52
   41a69:	6a 05                	push   0x5
   41a6b:	68 fa 00             	push   0xfa
   41a6e:	68 88 01             	push   0x188
   41a71:	68 cc ba             	push   0xbacc
   41a74:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41a77:	b4 00                	mov    ah,0x0
   41a79:	ba 88 01             	mov    dx,0x188
   41a7c:	8e c2                	mov    es,dx
   41a7e:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41a83:	2b d0                	sub    dx,ax
   41a85:	52                   	push   dx
   41a86:	6a 04                	push   0x4
   41a88:	6a 0c                	push   0xc
   41a8a:	9a 34 00 80 01       	call   0x180:0x34
   41a8f:	83 c4 0e             	add    sp,0xe
   41a92:	6a 05                	push   0x5
   41a94:	68 fa 00             	push   0xfa
   41a97:	68 88 01             	push   0x188
   41a9a:	68 cc ba             	push   0xbacc
   41a9d:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41aa0:	b4 00                	mov    ah,0x0
   41aa2:	ba 88 01             	mov    dx,0x188
   41aa5:	8e c2                	mov    es,dx
   41aa7:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41aac:	2b d0                	sub    dx,ax
   41aae:	4a                   	dec    dx
   41aaf:	52                   	push   dx
   41ab0:	6a 05                	push   0x5
   41ab2:	6a 0c                	push   0xc
   41ab4:	9a 34 00 80 01       	call   0x180:0x34
   41ab9:	83 c4 0e             	add    sp,0xe
   41abc:	6a 05                	push   0x5
   41abe:	6a 00                	push   0x0
   41ac0:	68 88 01             	push   0x188
   41ac3:	68 cc ba             	push   0xbacc
   41ac6:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41ac9:	b4 00                	mov    ah,0x0
   41acb:	ba 88 01             	mov    dx,0x188
   41ace:	8e c2                	mov    es,dx
   41ad0:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41ad5:	2b d0                	sub    dx,ax
   41ad7:	42                   	inc    dx
   41ad8:	52                   	push   dx
   41ad9:	6a 06                	push   0x6
   41adb:	6a 0c                	push   0xc
   41add:	9a 34 00 80 01       	call   0x180:0x34
   41ae2:	83 c4 0e             	add    sp,0xe
   41ae5:	6a 05                	push   0x5
   41ae7:	6a 00                	push   0x0
   41ae9:	68 88 01             	push   0x188
   41aec:	68 cc ba             	push   0xbacc
   41aef:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41af2:	b4 00                	mov    ah,0x0
   41af4:	ba 88 01             	mov    dx,0x188
   41af7:	8e c2                	mov    es,dx
   41af9:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41afe:	2b d0                	sub    dx,ax
   41b00:	42                   	inc    dx
   41b01:	52                   	push   dx
   41b02:	6a 05                	push   0x5
   41b04:	6a 0c                	push   0xc
   41b06:	9a 34 00 80 01       	call   0x180:0x34
   41b0b:	83 c4 0e             	add    sp,0xe
   41b0e:	6a 05                	push   0x5
   41b10:	6a 00                	push   0x0
   41b12:	68 88 01             	push   0x188
   41b15:	68 cc ba             	push   0xbacc
   41b18:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41b1b:	b4 00                	mov    ah,0x0
   41b1d:	ba 88 01             	mov    dx,0x188
   41b20:	8e c2                	mov    es,dx
   41b22:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41b27:	2b d0                	sub    dx,ax
   41b29:	52                   	push   dx
   41b2a:	6a 06                	push   0x6
   41b2c:	6a 0c                	push   0xc
   41b2e:	9a 34 00 80 01       	call   0x180:0x34
   41b33:	83 c4 0e             	add    sp,0xe
   41b36:	6a 05                	push   0x5
   41b38:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   41b3b:	b4 00                	mov    ah,0x0
   41b3d:	50                   	push   ax
   41b3e:	68 88 01             	push   0x188
   41b41:	68 cc ba             	push   0xbacc
   41b44:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41b47:	b4 00                	mov    ah,0x0
   41b49:	ba 88 01             	mov    dx,0x188
   41b4c:	8e c2                	mov    es,dx
   41b4e:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41b53:	2b d0                	sub    dx,ax
   41b55:	52                   	push   dx
   41b56:	6a 05                	push   0x5
   41b58:	6a 0c                	push   0xc
   41b5a:	9a 34 00 80 01       	call   0x180:0x34
   41b5f:	83 c4 0e             	add    sp,0xe
   41b62:	e9 ed 00             	jmp    0x41c52
   41b65:	68 fa 00             	push   0xfa
   41b68:	68 88 01             	push   0x188
   41b6b:	68 cc ba             	push   0xbacc
   41b6e:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41b71:	b4 00                	mov    ah,0x0
   41b73:	ba 88 01             	mov    dx,0x188
   41b76:	8e c2                	mov    es,dx
   41b78:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41b7d:	2b d0                	sub    dx,ax
   41b7f:	52                   	push   dx
   41b80:	6a 04                	push   0x4
   41b82:	6a 0c                	push   0xc
   41b84:	9a 39 00 80 01       	call   0x180:0x39
   41b89:	83 c4 0c             	add    sp,0xc
   41b8c:	68 fa 00             	push   0xfa
   41b8f:	68 88 01             	push   0x188
   41b92:	68 cc ba             	push   0xbacc
   41b95:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41b98:	b4 00                	mov    ah,0x0
   41b9a:	ba 88 01             	mov    dx,0x188
   41b9d:	8e c2                	mov    es,dx
   41b9f:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41ba4:	2b d0                	sub    dx,ax
   41ba6:	4a                   	dec    dx
   41ba7:	52                   	push   dx
   41ba8:	6a 05                	push   0x5
   41baa:	6a 0c                	push   0xc
   41bac:	9a 39 00 80 01       	call   0x180:0x39
   41bb1:	83 c4 0c             	add    sp,0xc
   41bb4:	6a 00                	push   0x0
   41bb6:	68 88 01             	push   0x188
   41bb9:	68 cc ba             	push   0xbacc
   41bbc:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41bbf:	b4 00                	mov    ah,0x0
   41bc1:	ba 88 01             	mov    dx,0x188
   41bc4:	8e c2                	mov    es,dx
   41bc6:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41bcb:	2b d0                	sub    dx,ax
   41bcd:	42                   	inc    dx
   41bce:	52                   	push   dx
   41bcf:	6a 06                	push   0x6
   41bd1:	6a 0c                	push   0xc
   41bd3:	9a 39 00 80 01       	call   0x180:0x39
   41bd8:	83 c4 0c             	add    sp,0xc
   41bdb:	6a 00                	push   0x0
   41bdd:	68 88 01             	push   0x188
   41be0:	68 cc ba             	push   0xbacc
   41be3:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41be6:	b4 00                	mov    ah,0x0
   41be8:	ba 88 01             	mov    dx,0x188
   41beb:	8e c2                	mov    es,dx
   41bed:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41bf2:	2b d0                	sub    dx,ax
   41bf4:	42                   	inc    dx
   41bf5:	52                   	push   dx
   41bf6:	6a 05                	push   0x5
   41bf8:	6a 0c                	push   0xc
   41bfa:	9a 39 00 80 01       	call   0x180:0x39
   41bff:	83 c4 0c             	add    sp,0xc
   41c02:	6a 00                	push   0x0
   41c04:	68 88 01             	push   0x188
   41c07:	68 cc ba             	push   0xbacc
   41c0a:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41c0d:	b4 00                	mov    ah,0x0
   41c0f:	ba 88 01             	mov    dx,0x188
   41c12:	8e c2                	mov    es,dx
   41c14:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41c19:	2b d0                	sub    dx,ax
   41c1b:	52                   	push   dx
   41c1c:	6a 06                	push   0x6
   41c1e:	6a 0c                	push   0xc
   41c20:	9a 39 00 80 01       	call   0x180:0x39
   41c25:	83 c4 0c             	add    sp,0xc
   41c28:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   41c2b:	b4 00                	mov    ah,0x0
   41c2d:	50                   	push   ax
   41c2e:	68 88 01             	push   0x188
   41c31:	68 cc ba             	push   0xbacc
   41c34:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41c37:	b4 00                	mov    ah,0x0
   41c39:	ba 88 01             	mov    dx,0x188
   41c3c:	8e c2                	mov    es,dx
   41c3e:	26 8b 16 fd e2       	mov    dx,WORD PTR es:0xe2fd
   41c43:	2b d0                	sub    dx,ax
   41c45:	52                   	push   dx
   41c46:	6a 05                	push   0x5
   41c48:	6a 0c                	push   0xc
   41c4a:	9a 39 00 80 01       	call   0x180:0x39
   41c4f:	83 c4 0c             	add    sp,0xc
   41c52:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   41c55:	b4 00                	mov    ah,0x0
   41c57:	50                   	push   ax
   41c58:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   41c5b:	33 d2                	xor    dx,dx
   41c5d:	5b                   	pop    bx
   41c5e:	f7 f3                	div    bx
   41c60:	0b c0                	or     ax,ax
   41c62:	74 03                	je     0x41c67
   41c64:	e9 9a fc             	jmp    0x41901
   41c67:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   41c6a:	01 46 f2             	add    WORD PTR [bp-0xe],ax
   41c6d:	b8 88 01             	mov    ax,0x188
   41c70:	8e c0                	mov    es,ax
   41c72:	26 a1 fd e2          	mov    ax,es:0xe2fd
   41c76:	2b 46 f4             	sub    ax,WORD PTR [bp-0xc]
   41c79:	99                   	cwd
   41c7a:	bb 88 01             	mov    bx,0x188
   41c7d:	8e c3                	mov    es,bx
   41c7f:	50                   	push   ax
   41c80:	26 a1 fb e2          	mov    ax,es:0xe2fb
   41c84:	52                   	push   dx
   41c85:	99                   	cwd
   41c86:	59                   	pop    cx
   41c87:	5b                   	pop    bx
   41c88:	9a 42 12 00 00       	call   0x0:0x1242
   41c8d:	52                   	push   dx
   41c8e:	50                   	push   ax
   41c8f:	6a 00                	push   0x0
   41c91:	6a 00                	push   0x0
   41c93:	b8 88 01             	mov    ax,0x188
   41c96:	50                   	push   ax
   41c97:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   41c9a:	07                   	pop    es
   41c9b:	26 f7 2e fb e2       	imul   WORD PTR es:0xe2fb
   41ca0:	99                   	cwd
   41ca1:	52                   	push   dx
   41ca2:	50                   	push   ax
   41ca3:	b8 88 01             	mov    ax,0x188
   41ca6:	8e c0                	mov    es,ax
   41ca8:	26 ff 36 01 e3       	push   WORD PTR es:0xe301
   41cad:	26 ff 36 ff e2       	push   WORD PTR es:0xe2ff
   41cb2:	b8 88 01             	mov    ax,0x188
   41cb5:	8e c0                	mov    es,ax
   41cb7:	26 ff 36 01 e3       	push   WORD PTR es:0xe301
   41cbc:	26 ff 36 ff e2       	push   WORD PTR es:0xe2ff
   41cc1:	9a c9 07 20 00       	call   0x20:0x7c9
   41cc6:	83 c4 14             	add    sp,0x14
   41cc9:	68 e0 01             	push   0x1e0
   41ccc:	68 d0 02             	push   0x2d0
   41ccf:	6a 0d                	push   0xd
   41cd1:	6a 0b                	push   0xb
   41cd3:	6a 00                	push   0x0
   41cd5:	6a 00                	push   0x0
   41cd7:	b8 88 01             	mov    ax,0x188
   41cda:	8e c0                	mov    es,ax
   41cdc:	26 ff 36 fd e2       	push   WORD PTR es:0xe2fd
   41ce1:	b8 88 01             	mov    ax,0x188
   41ce4:	8e c0                	mov    es,ax
   41ce6:	26 ff 36 fb e2       	push   WORD PTR es:0xe2fb
   41ceb:	6a 00                	push   0x0
   41ced:	6a 00                	push   0x0
   41cef:	9a 30 04 28 00       	call   0x28:0x430
   41cf4:	83 c4 14             	add    sp,0x14
   41cf7:	68 20 00             	push   0x20
   41cfa:	68 4c 00             	push   0x4c
   41cfd:	68 fe 00             	push   0xfe
   41d00:	68 c8 af             	push   0xafc8
   41d03:	6a 0d                	push   0xd
   41d05:	6a 0c                	push   0xc
   41d07:	9a 15 06 28 00       	call   0x28:0x615
   41d0c:	83 c4 0c             	add    sp,0xc
   41d0f:	b8 88 01             	mov    ax,0x188
   41d12:	8e c0                	mov    es,ax
   41d14:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   41d19:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   41d1e:	b8 88 01             	mov    ax,0x188
   41d21:	8e c0                	mov    es,ax
   41d23:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
   41d28:	83 c4 04             	add    sp,0x4
   41d2b:	b8 88 01             	mov    ax,0x188
   41d2e:	8e c0                	mov    es,ax
   41d30:	26 a1 4a e7          	mov    ax,es:0xe74a
   41d34:	2b 46 f0             	sub    ax,WORD PTR [bp-0x10]
   41d37:	3b 46 ee             	cmp    ax,WORD PTR [bp-0x12]
   41d3a:	72 d3                	jb     0x41d0f
   41d3c:	9a 04 02 30 00       	call   0x30:0x204
   41d41:	68 e0 01             	push   0x1e0
   41d44:	68 d0 02             	push   0x2d0
   41d47:	6a 00                	push   0x0
   41d49:	6a 0d                	push   0xd
   41d4b:	6a 0f                	push   0xf
   41d4d:	6a 00                	push   0x0
   41d4f:	b8 88 01             	mov    ax,0x188
   41d52:	8e c0                	mov    es,ax
   41d54:	26 a1 05 e3          	mov    ax,es:0xe305
   41d58:	05 e2 ff             	add    ax,0xffe2
   41d5b:	50                   	push   ax
   41d5c:	b8 88 01             	mov    ax,0x188
   41d5f:	8e c0                	mov    es,ax
   41d61:	26 ff 36 03 e3       	push   WORD PTR es:0xe303
   41d66:	6a 0f                	push   0xf
   41d68:	6a 00                	push   0x0
   41d6a:	9a 30 04 28 00       	call   0x28:0x430
   41d6f:	83 c4 14             	add    sp,0x14
   41d72:	b8 88 01             	mov    ax,0x188
   41d75:	8e c0                	mov    es,ax
   41d77:	26 a0 e3 e5          	mov    al,es:0xe5e3
   41d7b:	50                   	push   ax
   41d7c:	9a 69 00 30 00       	call   0x30:0x69
   41d81:	59                   	pop    cx
   41d82:	9a 45 2e 00 00       	call   0x0:0x2e45
   41d87:	0b c0                	or     ax,ax
   41d89:	75 1e                	jne    0x41da9
   41d8b:	16                   	push   ss
   41d8c:	8d 46 f8             	lea    ax,[bp-0x8]
   41d8f:	50                   	push   ax
   41d90:	16                   	push   ss
   41d91:	8d 46 f8             	lea    ax,[bp-0x8]
   41d94:	50                   	push   ax
   41d95:	16                   	push   ss
   41d96:	8d 46 f8             	lea    ax,[bp-0x8]
   41d99:	50                   	push   ax
   41d9a:	9a af 04 30 00       	call   0x30:0x4af
   41d9f:	83 c4 0c             	add    sp,0xc
   41da2:	0b c0                	or     ax,ax
   41da4:	75 03                	jne    0x41da9
   41da6:	e9 d4 fa             	jmp    0x4187d
   41da9:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   41dad:	75 03                	jne    0x41db2
   41daf:	e9 cb fa             	jmp    0x4187d
   41db2:	6a 11                	push   0x11
   41db4:	6a 35                	push   0x35
   41db6:	68 9f 00             	push   0x9f
   41db9:	68 08 01             	push   0x108
   41dbc:	9a 7d 06 30 00       	call   0x30:0x67d
   41dc1:	83 c4 08             	add    sp,0x8
   41dc4:	0a c0                	or     al,al
   41dc6:	75 03                	jne    0x41dcb
   41dc8:	e9 c8 00             	jmp    0x41e93
   41dcb:	b8 88 01             	mov    ax,0x188
   41dce:	8e c0                	mov    es,ax
   41dd0:	26 a1 1a 73          	mov    ax,es:0x731a
   41dd4:	f7 d8                	neg    ax
   41dd6:	50                   	push   ax
   41dd7:	6a 00                	push   0x0
   41dd9:	68 f4 01             	push   0x1f4
   41ddc:	9a 3f 07 30 00       	call   0x30:0x73f
   41de1:	83 c4 06             	add    sp,0x6
   41de4:	b8 88 01             	mov    ax,0x188
   41de7:	8e c0                	mov    es,ax
   41de9:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   41def:	74 50                	je     0x41e41
   41df1:	9a 96 12 68 00       	call   0x68:0x1296
   41df6:	b8 88 01             	mov    ax,0x188
   41df9:	8e c0                	mov    es,ax
   41dfb:	26 a1 75 bb          	mov    ax,es:0xbb75
   41dff:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   41e04:	74 3b                	je     0x41e41
   41e06:	b8 88 01             	mov    ax,0x188
   41e09:	8e c0                	mov    es,ax
   41e0b:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   41e10:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   41e15:	9a 03 00 80 00       	call   0x80:0x3
   41e1a:	b8 88 01             	mov    ax,0x188
   41e1d:	8e c0                	mov    es,ax
   41e1f:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   41e24:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   41e29:	9a da 00 58 00       	call   0x58:0xda
   41e2e:	b8 88 01             	mov    ax,0x188
   41e31:	8e c0                	mov    es,ax
   41e33:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   41e3a:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   41e41:	68 88 01             	push   0x188
   41e44:	68 2c 96             	push   0x962c
   41e47:	68 88 01             	push   0x188
   41e4a:	68 04 97             	push   0x9704
   41e4d:	b9 48 00             	mov    cx,0x48
   41e50:	9a 7a 12 00 00       	call   0x0:0x127a
   41e55:	9a 8e 17 10 00       	call   0x10:0x178e
   41e5a:	b8 88 01             	mov    ax,0x188
   41e5d:	8e c0                	mov    es,ax
   41e5f:	26 c6 06 24 73 00    	mov    BYTE PTR es:0x7324,0x0
   41e65:	1e                   	push   ds
   41e66:	68 d1 58             	push   0x58d1
   41e69:	9a 57 00 40 01       	call   0x140:0x57
   41e6e:	83 c4 04             	add    sp,0x4
   41e71:	0a c0                	or     al,al
   41e73:	75 09                	jne    0x41e7e
   41e75:	68 8c 00             	push   0x8c
   41e78:	9a ca 2d 10 00       	call   0x10:0x2dca
   41e7d:	59                   	pop    cx
   41e7e:	6a ff                	push   0xffff
   41e80:	1e                   	push   ds
   41e81:	68 e4 58             	push   0x58e4
   41e84:	68 4e 04             	push   0x44e
   41e87:	1e                   	push   ds
   41e88:	68 d5 58             	push   0x58d5
   41e8b:	9a 2a 00 58 01       	call   0x158:0x2a
   41e90:	83 c4 0c             	add    sp,0xc
   41e93:	b8 88 01             	mov    ax,0x188
   41e96:	8e c0                	mov    es,ax
   41e98:	26 a1 18 73          	mov    ax,es:0x7318
   41e9c:	f7 d8                	neg    ax
   41e9e:	ba 88 01             	mov    dx,0x188
   41ea1:	8e c2                	mov    es,dx
   41ea3:	26 a3 70 3d          	mov    es:0x3d70,ax
   41ea7:	b8 88 01             	mov    ax,0x188
   41eaa:	8e c0                	mov    es,ax
   41eac:	26 a1 1a 73          	mov    ax,es:0x731a
   41eb0:	f7 d8                	neg    ax
   41eb2:	ba 88 01             	mov    dx,0x188
   41eb5:	8e c2                	mov    es,dx
   41eb7:	26 a3 72 3d          	mov    es:0x3d72,ax
   41ebb:	c7 46 f6 02 00       	mov    WORD PTR [bp-0xa],0x2
   41ec0:	e9 ba f9             	jmp    0x4187d
   41ec3:	e9 b7 f9             	jmp    0x4187d
   41ec6:	ff 76 e8             	push   WORD PTR [bp-0x18]
   41ec9:	9a 2a 00 70 01       	call   0x170:0x2a
   41ece:	1e                   	push   ds
   41ecf:	68 ef 58             	push   0x58ef
   41ed2:	68 56 04             	push   0x456
   41ed5:	68 88 01             	push   0x188
   41ed8:	68 f7 e2             	push   0xe2f7
   41edb:	9a 2f 02 40 00       	call   0x40:0x22f
   41ee0:	83 c4 0a             	add    sp,0xa
   41ee3:	1e                   	push   ds
   41ee4:	68 fe 58             	push   0x58fe
   41ee7:	68 57 04             	push   0x457
   41eea:	68 88 01             	push   0x188
   41eed:	68 ff e2             	push   0xe2ff
   41ef0:	9a 2f 02 40 00       	call   0x40:0x22f
   41ef5:	83 c4 0a             	add    sp,0xa
   41ef8:	1e                   	push   ds
   41ef9:	68 0d 59             	push   0x590d
   41efc:	68 58 04             	push   0x458
   41eff:	68 88 01             	push   0x188
   41f02:	68 07 e3             	push   0xe307
   41f05:	9a 2f 02 40 00       	call   0x40:0x22f
   41f0a:	83 c4 0a             	add    sp,0xa
   41f0d:	9a 45 2e 00 00       	call   0x0:0x2e45
   41f12:	0b c0                	or     ax,ax
   41f14:	74 05                	je     0x41f1b
   41f16:	9a d7 29 00 00       	call   0x0:0x29d7
   41f1b:	6a ff                	push   0xffff
   41f1d:	1e                   	push   ds
   41f1e:	68 2b 59             	push   0x592b
   41f21:	68 5c 04             	push   0x45c
   41f24:	1e                   	push   ds
   41f25:	68 1c 59             	push   0x591c
   41f28:	9a 2a 00 58 01       	call   0x158:0x2a
   41f2d:	83 c4 0c             	add    sp,0xc
   41f30:	c9                   	leave
   41f31:	cb                   	retf
   41f32:	55                   	push   bp
   41f33:	8b ec                	mov    bp,sp
   41f35:	83 ec 02             	sub    sp,0x2
   41f38:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   41f3b:	b4 00                	mov    ah,0x0
   41f3d:	c1 e0 03             	shl    ax,0x3
   41f40:	ba 88 01             	mov    dx,0x188
   41f43:	8b d8                	mov    bx,ax
   41f45:	8e c2                	mov    es,dx
   41f47:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   41f4c:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   41f4f:	7d 03                	jge    0x41f54
   41f51:	e9 f4 00             	jmp    0x42048
   41f54:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   41f57:	b4 00                	mov    ah,0x0
   41f59:	c1 e0 03             	shl    ax,0x3
   41f5c:	ba 88 01             	mov    dx,0x188
   41f5f:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   41f62:	81 c3 c8 00          	add    bx,0xc8
   41f66:	8e c2                	mov    es,dx
   41f68:	87 d8                	xchg   ax,bx
   41f6a:	26 39 87 f7 e5       	cmp    WORD PTR es:[bx-0x1a09],ax
   41f6f:	7c 03                	jl     0x41f74
   41f71:	e9 d4 00             	jmp    0x42048
   41f74:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   41f77:	b4 00                	mov    ah,0x0
   41f79:	c1 e0 03             	shl    ax,0x3
   41f7c:	ba 88 01             	mov    dx,0x188
   41f7f:	8b d8                	mov    bx,ax
   41f81:	8e c2                	mov    es,dx
   41f83:	26 8b 87 f5 e5       	mov    ax,WORD PTR es:[bx-0x1a0b]
   41f88:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   41f8b:	e9 9e 00             	jmp    0x4202c
   41f8e:	b8 88 01             	mov    ax,0x188
   41f91:	8e c0                	mov    es,ax
   41f93:	26 ff 36 9b e2       	push   WORD PTR es:0xe29b
   41f98:	b8 88 01             	mov    ax,0x188
   41f9b:	8e c0                	mov    es,ax
   41f9d:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   41fa2:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   41fa7:	75 13                	jne    0x41fbc
   41fa9:	b8 88 01             	mov    ax,0x188
   41fac:	8e c0                	mov    es,ax
   41fae:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   41fb3:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   41fb7:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   41fba:	eb 44                	jmp    0x42000
   41fbc:	b8 88 01             	mov    ax,0x188
   41fbf:	8e c0                	mov    es,ax
   41fc1:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   41fc6:	26 ff 37             	push   WORD PTR es:[bx]
   41fc9:	6a 00                	push   0x0
   41fcb:	6a 00                	push   0x0
   41fcd:	b8 88 01             	mov    ax,0x188
   41fd0:	8e c0                	mov    es,ax
   41fd2:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   41fd7:	26 83 7f 06 00       	cmp    WORD PTR es:[bx+0x6],0x0
   41fdc:	72 0e                	jb     0x41fec
   41fde:	77 07                	ja     0x41fe7
   41fe0:	26 83 7f 04 ff       	cmp    WORD PTR es:[bx+0x4],0xffff
   41fe5:	76 05                	jbe    0x41fec
   41fe7:	b8 ff ff             	mov    ax,0xffff
   41fea:	eb 0e                	jmp    0x41ffa
   41fec:	b8 88 01             	mov    ax,0x188
   41fef:	8e c0                	mov    es,ax
   41ff1:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   41ff6:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   41ffa:	50                   	push   ax
   41ffb:	9a 88 06 98 00       	call   0x98:0x688
   42000:	52                   	push   dx
   42001:	50                   	push   ax
   42002:	68 ff 00             	push   0xff
   42005:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   42008:	b4 00                	mov    ah,0x0
   4200a:	c1 e0 03             	shl    ax,0x3
   4200d:	ba 88 01             	mov    dx,0x188
   42010:	8b d8                	mov    bx,ax
   42012:	8e c2                	mov    es,dx
   42014:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   42019:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   4201c:	50                   	push   ax
   4201d:	ff 76 fe             	push   WORD PTR [bp-0x2]
   42020:	9a aa 01 28 00       	call   0x28:0x1aa
   42025:	83 c4 0c             	add    sp,0xc
   42028:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   4202c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4202f:	b4 00                	mov    ah,0x0
   42031:	c1 e0 03             	shl    ax,0x3
   42034:	ba 88 01             	mov    dx,0x188
   42037:	8b d8                	mov    bx,ax
   42039:	8e c2                	mov    es,dx
   4203b:	26 8b 87 f9 e5       	mov    ax,WORD PTR es:[bx-0x1a07]
   42040:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   42043:	7c 03                	jl     0x42048
   42045:	e9 46 ff             	jmp    0x41f8e
   42048:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4204b:	b4 00                	mov    ah,0x0
   4204d:	c1 e0 03             	shl    ax,0x3
   42050:	ba 88 01             	mov    dx,0x188
   42053:	8b d8                	mov    bx,ax
   42055:	8e c2                	mov    es,dx
   42057:	26 8b 87 f7 e5       	mov    ax,WORD PTR es:[bx-0x1a09]
   4205c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4205f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   42062:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   42065:	7d 03                	jge    0x4206a
   42067:	e9 42 01             	jmp    0x421ac
   4206a:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4206d:	05 c8 00             	add    ax,0xc8
   42070:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   42073:	7f 03                	jg     0x42078
   42075:	e9 34 01             	jmp    0x421ac
   42078:	b8 88 01             	mov    ax,0x188
   4207b:	8e c0                	mov    es,ax
   4207d:	26 ff 36 9b e2       	push   WORD PTR es:0xe29b
   42082:	b8 88 01             	mov    ax,0x188
   42085:	8e c0                	mov    es,ax
   42087:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4208c:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   42091:	75 13                	jne    0x420a6
   42093:	b8 88 01             	mov    ax,0x188
   42096:	8e c0                	mov    es,ax
   42098:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4209d:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   420a1:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   420a4:	eb 44                	jmp    0x420ea
   420a6:	b8 88 01             	mov    ax,0x188
   420a9:	8e c0                	mov    es,ax
   420ab:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   420b0:	26 ff 37             	push   WORD PTR es:[bx]
   420b3:	6a 00                	push   0x0
   420b5:	6a 00                	push   0x0
   420b7:	b8 88 01             	mov    ax,0x188
   420ba:	8e c0                	mov    es,ax
   420bc:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   420c1:	26 83 7f 06 00       	cmp    WORD PTR es:[bx+0x6],0x0
   420c6:	72 0e                	jb     0x420d6
   420c8:	77 07                	ja     0x420d1
   420ca:	26 83 7f 04 ff       	cmp    WORD PTR es:[bx+0x4],0xffff
   420cf:	76 05                	jbe    0x420d6
   420d1:	b8 ff ff             	mov    ax,0xffff
   420d4:	eb 0e                	jmp    0x420e4
   420d6:	b8 88 01             	mov    ax,0x188
   420d9:	8e c0                	mov    es,ax
   420db:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   420e0:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   420e4:	50                   	push   ax
   420e5:	9a 88 06 98 00       	call   0x98:0x688
   420ea:	52                   	push   dx
   420eb:	50                   	push   ax
   420ec:	68 ff 00             	push   0xff
   420ef:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   420f2:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   420f5:	50                   	push   ax
   420f6:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   420f9:	b4 00                	mov    ah,0x0
   420fb:	c1 e0 03             	shl    ax,0x3
   420fe:	ba 88 01             	mov    dx,0x188
   42101:	8b d8                	mov    bx,ax
   42103:	8e c2                	mov    es,dx
   42105:	26 ff b7 f5 e5       	push   WORD PTR es:[bx-0x1a0b]
   4210a:	9a aa 01 28 00       	call   0x28:0x1aa
   4210f:	83 c4 0c             	add    sp,0xc
   42112:	b8 88 01             	mov    ax,0x188
   42115:	8e c0                	mov    es,ax
   42117:	26 ff 36 9b e2       	push   WORD PTR es:0xe29b
   4211c:	b8 88 01             	mov    ax,0x188
   4211f:	8e c0                	mov    es,ax
   42121:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   42126:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   4212b:	75 13                	jne    0x42140
   4212d:	b8 88 01             	mov    ax,0x188
   42130:	8e c0                	mov    es,ax
   42132:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   42137:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   4213b:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4213e:	eb 44                	jmp    0x42184
   42140:	b8 88 01             	mov    ax,0x188
   42143:	8e c0                	mov    es,ax
   42145:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4214a:	26 ff 37             	push   WORD PTR es:[bx]
   4214d:	6a 00                	push   0x0
   4214f:	6a 00                	push   0x0
   42151:	b8 88 01             	mov    ax,0x188
   42154:	8e c0                	mov    es,ax
   42156:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4215b:	26 83 7f 06 00       	cmp    WORD PTR es:[bx+0x6],0x0
   42160:	72 0e                	jb     0x42170
   42162:	77 07                	ja     0x4216b
   42164:	26 83 7f 04 ff       	cmp    WORD PTR es:[bx+0x4],0xffff
   42169:	76 05                	jbe    0x42170
   4216b:	b8 ff ff             	mov    ax,0xffff
   4216e:	eb 0e                	jmp    0x4217e
   42170:	b8 88 01             	mov    ax,0x188
   42173:	8e c0                	mov    es,ax
   42175:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4217a:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   4217e:	50                   	push   ax
   4217f:	9a 88 06 98 00       	call   0x98:0x688
   42184:	52                   	push   dx
   42185:	50                   	push   ax
   42186:	68 ff 00             	push   0xff
   42189:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4218c:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   4218f:	50                   	push   ax
   42190:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   42193:	b4 00                	mov    ah,0x0
   42195:	c1 e0 03             	shl    ax,0x3
   42198:	ba 88 01             	mov    dx,0x188
   4219b:	8b d8                	mov    bx,ax
   4219d:	8e c2                	mov    es,dx
   4219f:	26 ff b7 f9 e5       	push   WORD PTR es:[bx-0x1a07]
   421a4:	9a aa 01 28 00       	call   0x28:0x1aa
   421a9:	83 c4 0c             	add    sp,0xc
   421ac:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   421af:	b4 00                	mov    ah,0x0
   421b1:	c1 e0 03             	shl    ax,0x3
   421b4:	ba 88 01             	mov    dx,0x188
   421b7:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   421bb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   421be:	8e c2                	mov    es,dx
   421c0:	87 d8                	xchg   ax,bx
   421c2:	26 39 87 fb e5       	cmp    WORD PTR es:[bx-0x1a05],ax
   421c7:	7c 03                	jl     0x421cc
   421c9:	e9 93 fe             	jmp    0x4205f
   421cc:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   421cf:	b4 00                	mov    ah,0x0
   421d1:	c1 e0 03             	shl    ax,0x3
   421d4:	ba 88 01             	mov    dx,0x188
   421d7:	8b d8                	mov    bx,ax
   421d9:	8e c2                	mov    es,dx
   421db:	26 8b 87 fb e5       	mov    ax,WORD PTR es:[bx-0x1a05]
   421e0:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   421e3:	7d 03                	jge    0x421e8
   421e5:	e9 f4 00             	jmp    0x422dc
   421e8:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   421eb:	b4 00                	mov    ah,0x0
   421ed:	c1 e0 03             	shl    ax,0x3
   421f0:	ba 88 01             	mov    dx,0x188
   421f3:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   421f6:	81 c3 c8 00          	add    bx,0xc8
   421fa:	8e c2                	mov    es,dx
   421fc:	87 d8                	xchg   ax,bx
   421fe:	26 39 87 fb e5       	cmp    WORD PTR es:[bx-0x1a05],ax
   42203:	7c 03                	jl     0x42208
   42205:	e9 d4 00             	jmp    0x422dc
   42208:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4220b:	b4 00                	mov    ah,0x0
   4220d:	c1 e0 03             	shl    ax,0x3
   42210:	ba 88 01             	mov    dx,0x188
   42213:	8b d8                	mov    bx,ax
   42215:	8e c2                	mov    es,dx
   42217:	26 8b 87 f5 e5       	mov    ax,WORD PTR es:[bx-0x1a0b]
   4221c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4221f:	e9 9e 00             	jmp    0x422c0
   42222:	b8 88 01             	mov    ax,0x188
   42225:	8e c0                	mov    es,ax
   42227:	26 ff 36 9b e2       	push   WORD PTR es:0xe29b
   4222c:	b8 88 01             	mov    ax,0x188
   4222f:	8e c0                	mov    es,ax
   42231:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   42236:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   4223b:	75 13                	jne    0x42250
   4223d:	b8 88 01             	mov    ax,0x188
   42240:	8e c0                	mov    es,ax
   42242:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   42247:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   4224b:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4224e:	eb 44                	jmp    0x42294
   42250:	b8 88 01             	mov    ax,0x188
   42253:	8e c0                	mov    es,ax
   42255:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4225a:	26 ff 37             	push   WORD PTR es:[bx]
   4225d:	6a 00                	push   0x0
   4225f:	6a 00                	push   0x0
   42261:	b8 88 01             	mov    ax,0x188
   42264:	8e c0                	mov    es,ax
   42266:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4226b:	26 83 7f 06 00       	cmp    WORD PTR es:[bx+0x6],0x0
   42270:	72 0e                	jb     0x42280
   42272:	77 07                	ja     0x4227b
   42274:	26 83 7f 04 ff       	cmp    WORD PTR es:[bx+0x4],0xffff
   42279:	76 05                	jbe    0x42280
   4227b:	b8 ff ff             	mov    ax,0xffff
   4227e:	eb 0e                	jmp    0x4228e
   42280:	b8 88 01             	mov    ax,0x188
   42283:	8e c0                	mov    es,ax
   42285:	26 c4 1e 9f e2       	les    bx,DWORD PTR es:0xe29f
   4228a:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   4228e:	50                   	push   ax
   4228f:	9a 88 06 98 00       	call   0x98:0x688
   42294:	52                   	push   dx
   42295:	50                   	push   ax
   42296:	68 ff 00             	push   0xff
   42299:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   4229c:	b4 00                	mov    ah,0x0
   4229e:	c1 e0 03             	shl    ax,0x3
   422a1:	ba 88 01             	mov    dx,0x188
   422a4:	8b d8                	mov    bx,ax
   422a6:	8e c2                	mov    es,dx
   422a8:	26 8b 87 fb e5       	mov    ax,WORD PTR es:[bx-0x1a05]
   422ad:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   422b0:	50                   	push   ax
   422b1:	ff 76 fe             	push   WORD PTR [bp-0x2]
   422b4:	9a aa 01 28 00       	call   0x28:0x1aa
   422b9:	83 c4 0c             	add    sp,0xc
   422bc:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   422c0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   422c3:	b4 00                	mov    ah,0x0
   422c5:	c1 e0 03             	shl    ax,0x3
   422c8:	ba 88 01             	mov    dx,0x188
   422cb:	8b d8                	mov    bx,ax
   422cd:	8e c2                	mov    es,dx
   422cf:	26 8b 87 f9 e5       	mov    ax,WORD PTR es:[bx-0x1a07]
   422d4:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   422d7:	7c 03                	jl     0x422dc
   422d9:	e9 46 ff             	jmp    0x42222
   422dc:	c9                   	leave
   422dd:	cb                   	retf
   422de:	55                   	push   bp
   422df:	8b ec                	mov    bp,sp
   422e1:	83 ec 04             	sub    sp,0x4
   422e4:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   422e7:	b4 00                	mov    ah,0x0
   422e9:	6b c0 03             	imul   ax,ax,0x3
   422ec:	ba 88 01             	mov    dx,0x188
   422ef:	8e c2                	mov    es,dx
   422f1:	26 c4 1e ef e5       	les    bx,DWORD PTR es:0xe5ef
   422f6:	03 d8                	add    bx,ax
   422f8:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   422fb:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   422fe:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   42301:	b4 00                	mov    ah,0x0
   42303:	6b c0 03             	imul   ax,ax,0x3
   42306:	ba 88 01             	mov    dx,0x188
   42309:	8e c2                	mov    es,dx
   4230b:	26 8b 16 f1 e5       	mov    dx,WORD PTR es:0xe5f1
   42310:	26 03 06 ef e5       	add    ax,WORD PTR es:0xe5ef
   42315:	8b d8                	mov    bx,ax
   42317:	8e c2                	mov    es,dx
   42319:	26 8a 47 01          	mov    al,BYTE PTR es:[bx+0x1]
   4231d:	88 46 fe             	mov    BYTE PTR [bp-0x2],al
   42320:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   42323:	b4 00                	mov    ah,0x0
   42325:	6b c0 03             	imul   ax,ax,0x3
   42328:	ba 88 01             	mov    dx,0x188
   4232b:	8e c2                	mov    es,dx
   4232d:	26 8b 16 f1 e5       	mov    dx,WORD PTR es:0xe5f1
   42332:	26 03 06 ef e5       	add    ax,WORD PTR es:0xe5ef
   42337:	8b d8                	mov    bx,ax
   42339:	8e c2                	mov    es,dx
   4233b:	26 8a 47 02          	mov    al,BYTE PTR es:[bx+0x2]
   4233f:	88 46 fd             	mov    BYTE PTR [bp-0x3],al
   42342:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   42345:	3a 46 fe             	cmp    al,BYTE PTR [bp-0x2]
   42348:	76 0c                	jbe    0x42356
   4234a:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   4234d:	3a 46 fd             	cmp    al,BYTE PTR [bp-0x3]
   42350:	76 04                	jbe    0x42356
   42352:	b0 00                	mov    al,0x0
   42354:	eb 2a                	jmp    0x42380
   42356:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   42359:	3a 46 ff             	cmp    al,BYTE PTR [bp-0x1]
   4235c:	76 0c                	jbe    0x4236a
   4235e:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   42361:	3a 46 fd             	cmp    al,BYTE PTR [bp-0x3]
   42364:	76 04                	jbe    0x4236a
   42366:	b0 01                	mov    al,0x1
   42368:	eb 16                	jmp    0x42380
   4236a:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   4236d:	3a 46 fe             	cmp    al,BYTE PTR [bp-0x2]
   42370:	76 0c                	jbe    0x4237e
   42372:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   42375:	3a 46 ff             	cmp    al,BYTE PTR [bp-0x1]
   42378:	76 04                	jbe    0x4237e
   4237a:	b0 02                	mov    al,0x2
   4237c:	eb 02                	jmp    0x42380
   4237e:	b0 04                	mov    al,0x4
   42380:	c9                   	leave
   42381:	cb                   	retf
   42382:	55                   	push   bp
   42383:	8b ec                	mov    bp,sp
   42385:	81 ec b6 00          	sub    sp,0xb6
   42389:	c6 46 e7 00          	mov    BYTE PTR [bp-0x19],0x0
   4238d:	c6 46 e1 00          	mov    BYTE PTR [bp-0x1f],0x0
   42391:	c6 46 e0 00          	mov    BYTE PTR [bp-0x20],0x0
   42395:	8d 46 ae             	lea    ax,[bp-0x52]
   42398:	16                   	push   ss
   42399:	50                   	push   ax
   4239a:	1e                   	push   ds
   4239b:	68 16 4b             	push   0x4b16
   4239e:	b9 30 00             	mov    cx,0x30
   423a1:	9a 7a 12 00 00       	call   0x0:0x127a
   423a6:	a1 8a bb             	mov    ax,ds:0xbb8a
   423a9:	05 05 00             	add    ax,0x5
   423ac:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   423af:	a1 88 bb             	mov    ax,ds:0xbb88
   423b2:	05 05 00             	add    ax,0x5
   423b5:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   423b8:	83 7e fc 5d          	cmp    WORD PTR [bp-0x4],0x5d
   423bc:	7e 14                	jle    0x423d2
   423be:	81 7e fc f7 00       	cmp    WORD PTR [bp-0x4],0xf7
   423c3:	7d 08                	jge    0x423cd
   423c5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   423c8:	05 a3 ff             	add    ax,0xffa3
   423cb:	eb 03                	jmp    0x423d0
   423cd:	b8 9a 00             	mov    ax,0x9a
   423d0:	eb 02                	jmp    0x423d4
   423d2:	33 c0                	xor    ax,ax
   423d4:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   423d7:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   423da:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   423dd:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   423e0:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   423e3:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   423e8:	eb 1d                	jmp    0x42407
   423ea:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   423ed:	c1 e3 02             	shl    bx,0x2
   423f0:	8d 46 ae             	lea    ax,[bp-0x52]
   423f3:	03 d8                	add    bx,ax
   423f5:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   423f9:	36 ff 37             	push   WORD PTR ss:[bx]
   423fc:	9a 3e 00 80 01       	call   0x180:0x3e
   42401:	83 c4 04             	add    sp,0x4
   42404:	ff 46 ea             	inc    WORD PTR [bp-0x16]
   42407:	83 7e ea 0c          	cmp    WORD PTR [bp-0x16],0xc
   4240b:	7c dd                	jl     0x423ea
   4240d:	9a 04 02 30 00       	call   0x30:0x204
   42412:	b8 88 01             	mov    ax,0x188
   42415:	8e c0                	mov    es,ax
   42417:	26 a0 24 73          	mov    al,es:0x7324
   4241b:	b4 00                	mov    ah,0x0
   4241d:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   42420:	b8 88 01             	mov    ax,0x188
   42423:	8e c0                	mov    es,ax
   42425:	26 c6 06 24 73 00    	mov    BYTE PTR es:0x7324,0x0
   4242b:	6a 00                	push   0x0
   4242d:	68 00 fa             	push   0xfa00
   42430:	6a 00                	push   0x0
   42432:	9a dc 16 28 00       	call   0x28:0x16dc
   42437:	83 c4 06             	add    sp,0x6
   4243a:	b8 88 01             	mov    ax,0x188
   4243d:	8e c0                	mov    es,ax
   4243f:	26 f7 06 5e 3d 01 00 	test   WORD PTR es:0x3d5e,0x1
   42446:	74 08                	je     0x42450
   42448:	6a 14                	push   0x14
   4244a:	1e                   	push   ds
   4244b:	68 c9 59             	push   0x59c9
   4244e:	eb 06                	jmp    0x42456
   42450:	6a 14                	push   0x14
   42452:	1e                   	push   ds
   42453:	68 d5 59             	push   0x59d5
   42456:	6a 01                	push   0x1
   42458:	9a 61 00 50 01       	call   0x150:0x61
   4245d:	83 c4 08             	add    sp,0x8
   42460:	6a 01                	push   0x1
   42462:	68 5e 01             	push   0x15e
   42465:	68 40 01             	push   0x140
   42468:	6a 06                	push   0x6
   4246a:	9a 4a 0e 20 00       	call   0x20:0xe4a
   4246f:	83 c4 08             	add    sp,0x8
   42472:	b8 88 01             	mov    ax,0x188
   42475:	8e c0                	mov    es,ax
   42477:	26 83 0e 5e 3d 10    	or     WORD PTR es:0x3d5e,0x10
   4247d:	68 bd 00             	push   0xbd
   42480:	68 d2 00             	push   0xd2
   42483:	9a 66 00 18 01       	call   0x118:0x66
   42488:	83 c4 04             	add    sp,0x4
   4248b:	b8 88 01             	mov    ax,0x188
   4248e:	8e c0                	mov    es,ax
   42490:	26 83 26 5e 3d ef    	and    WORD PTR es:0x3d5e,0xffef
   42496:	6a 57                	push   0x57
   42498:	1e                   	push   ds
   42499:	68 e0 59             	push   0x59e0
   4249c:	6a 01                	push   0x1
   4249e:	9a 20 00 48 01       	call   0x148:0x20
   424a3:	83 c4 08             	add    sp,0x8
   424a6:	6a 00                	push   0x0
   424a8:	68 00 fa             	push   0xfa00
   424ab:	6a 00                	push   0x0
   424ad:	6a 00                	push   0x0
   424af:	6a 00                	push   0x0
   424b1:	6a 00                	push   0x0
   424b3:	b8 88 01             	mov    ax,0x188
   424b6:	8e c0                	mov    es,ax
   424b8:	26 ff 36 d1 e2       	push   WORD PTR es:0xe2d1
   424bd:	26 ff 36 cf e2       	push   WORD PTR es:0xe2cf
   424c2:	b8 88 01             	mov    ax,0x188
   424c5:	8e c0                	mov    es,ax
   424c7:	26 ff 36 59 e5       	push   WORD PTR es:0xe559
   424cc:	26 ff 36 57 e5       	push   WORD PTR es:0xe557
   424d1:	9a c9 07 20 00       	call   0x20:0x7c9
   424d6:	83 c4 14             	add    sp,0x14
   424d9:	1e                   	push   ds
   424da:	68 ec 59             	push   0x59ec
   424dd:	68 cc 04             	push   0x4cc
   424e0:	68 88 01             	push   0x188
   424e3:	68 57 e5             	push   0xe557
   424e6:	9a 2f 02 40 00       	call   0x40:0x22f
   424eb:	83 c4 0a             	add    sp,0xa
   424ee:	6a 57                	push   0x57
   424f0:	1e                   	push   ds
   424f1:	68 fb 59             	push   0x59fb
   424f4:	6a 01                	push   0x1
   424f6:	9a 20 00 48 01       	call   0x148:0x20
   424fb:	83 c4 08             	add    sp,0x8
   424fe:	6a 00                	push   0x0
   42500:	68 80 bb             	push   0xbb80
   42503:	6a 00                	push   0x0
   42505:	68 00 fa             	push   0xfa00
   42508:	6a 00                	push   0x0
   4250a:	6a 00                	push   0x0
   4250c:	b8 88 01             	mov    ax,0x188
   4250f:	8e c0                	mov    es,ax
   42511:	26 ff 36 d1 e2       	push   WORD PTR es:0xe2d1
   42516:	26 ff 36 cf e2       	push   WORD PTR es:0xe2cf
   4251b:	b8 88 01             	mov    ax,0x188
   4251e:	8e c0                	mov    es,ax
   42520:	26 ff 36 59 e5       	push   WORD PTR es:0xe559
   42525:	26 ff 36 57 e5       	push   WORD PTR es:0xe557
   4252a:	9a c9 07 20 00       	call   0x20:0x7c9
   4252f:	83 c4 14             	add    sp,0x14
   42532:	1e                   	push   ds
   42533:	68 07 5a             	push   0x5a07
   42536:	68 cf 04             	push   0x4cf
   42539:	68 88 01             	push   0x188
   4253c:	68 57 e5             	push   0xe557
   4253f:	9a 2f 02 40 00       	call   0x40:0x22f
   42544:	83 c4 0a             	add    sp,0xa
   42547:	1e                   	push   ds
   42548:	68 16 5a             	push   0x5a16
   4254b:	68 d3 04             	push   0x4d3
   4254e:	68 88 01             	push   0x188
   42551:	68 26 de             	push   0xde26
   42554:	9a 81 0a 20 00       	call   0x20:0xa81
   42559:	83 c4 0a             	add    sp,0xa
   4255c:	b8 88 01             	mov    ax,0x188
   4255f:	8e c0                	mov    es,ax
   42561:	26 c4 1e cf e2       	les    bx,DWORD PTR es:0xe2cf
   42566:	26 ff 37             	push   WORD PTR es:[bx]
   42569:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4256c:	99                   	cwd
   4256d:	50                   	push   ax
   4256e:	52                   	push   dx
   4256f:	33 d2                	xor    dx,dx
   42571:	b8 40 01             	mov    ax,0x140
   42574:	59                   	pop    cx
   42575:	5b                   	pop    bx
   42576:	9a 42 12 00 00       	call   0x0:0x1242
   4257b:	50                   	push   ax
   4257c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4257f:	52                   	push   dx
   42580:	99                   	cwd
   42581:	5b                   	pop    bx
   42582:	59                   	pop    cx
   42583:	03 c8                	add    cx,ax
   42585:	13 da                	adc    bx,dx
   42587:	53                   	push   bx
   42588:	51                   	push   cx
   42589:	6a 01                	push   0x1
   4258b:	9a 88 06 98 00       	call   0x98:0x688
   42590:	89 56 e4             	mov    WORD PTR [bp-0x1c],dx
   42593:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   42596:	c4 5e e2             	les    bx,DWORD PTR [bp-0x1e]
   42599:	26 80 3f 08          	cmp    BYTE PTR es:[bx],0x8
   4259d:	72 09                	jb     0x425a8
   4259f:	c4 5e e2             	les    bx,DWORD PTR [bp-0x1e]
   425a2:	26 80 3f 10          	cmp    BYTE PTR es:[bx],0x10
   425a6:	72 12                	jb     0x425ba
   425a8:	c4 5e e2             	les    bx,DWORD PTR [bp-0x1e]
   425ab:	26 80 3f 1a          	cmp    BYTE PTR es:[bx],0x1a
   425af:	72 26                	jb     0x425d7
   425b1:	c4 5e e2             	les    bx,DWORD PTR [bp-0x1e]
   425b4:	26 80 3f 1e          	cmp    BYTE PTR es:[bx],0x1e
   425b8:	73 1d                	jae    0x425d7
   425ba:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   425bd:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   425c0:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   425c3:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   425c6:	68 88 01             	push   0x188
   425c9:	68 26 de             	push   0xde26
   425cc:	9a 22 0b 20 00       	call   0x20:0xb22
   425d1:	83 c4 04             	add    sp,0x4
   425d4:	e9 54 03             	jmp    0x4292b
   425d7:	68 88 01             	push   0x188
   425da:	68 26 de             	push   0xde26
   425dd:	9a 22 0b 20 00       	call   0x20:0xb22
   425e2:	83 c4 04             	add    sp,0x4
   425e5:	83 7e fc 5d          	cmp    WORD PTR [bp-0x4],0x5d
   425e9:	7e 14                	jle    0x425ff
   425eb:	81 7e fc f7 00       	cmp    WORD PTR [bp-0x4],0xf7
   425f0:	7d 08                	jge    0x425fa
   425f2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   425f5:	05 a3 ff             	add    ax,0xffa3
   425f8:	eb 03                	jmp    0x425fd
   425fa:	b8 9a 00             	mov    ax,0x9a
   425fd:	eb 02                	jmp    0x42601
   425ff:	33 c0                	xor    ax,ax
   42601:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   42604:	6a 00                	push   0x0
   42606:	68 80 e8             	push   0xe880
   42609:	6a 00                	push   0x0
   4260b:	6a 00                	push   0x0
   4260d:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   42610:	99                   	cwd
   42611:	50                   	push   ax
   42612:	52                   	push   dx
   42613:	33 d2                	xor    dx,dx
   42615:	b8 40 01             	mov    ax,0x140
   42618:	59                   	pop    cx
   42619:	5b                   	pop    bx
   4261a:	9a 42 12 00 00       	call   0x0:0x1242
   4261f:	52                   	push   dx
   42620:	50                   	push   ax
   42621:	b8 88 01             	mov    ax,0x188
   42624:	8e c0                	mov    es,ax
   42626:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   4262b:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   42630:	b8 88 01             	mov    ax,0x188
   42633:	8e c0                	mov    es,ax
   42635:	26 ff 36 d1 e2       	push   WORD PTR es:0xe2d1
   4263a:	26 ff 36 cf e2       	push   WORD PTR es:0xe2cf
   4263f:	9a c9 07 20 00       	call   0x20:0x7c9
   42644:	83 c4 14             	add    sp,0x14
   42647:	8a 46 e7             	mov    al,BYTE PTR [bp-0x19]
   4264a:	b4 00                	mov    ah,0x0
   4264c:	8b d8                	mov    bx,ax
   4264e:	83 fb 03             	cmp    bx,0x3
   42651:	76 03                	jbe    0x42656
   42653:	e9 07 04             	jmp    0x42a5d
   42656:	d1 e3                	shl    bx,1
   42658:	2e ff a7 16 37       	jmp    WORD PTR cs:[bx+0x3716]
   4265d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   42660:	05 fc ff             	add    ax,0xfffc
   42663:	a3 8a bb             	mov    ds:0xbb8a,ax
   42666:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   42669:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   4266c:	05 fb ff             	add    ax,0xfffb
   4266f:	a3 88 bb             	mov    ds:0xbb88,ax
   42672:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   42677:	eb 57                	jmp    0x426d0
   42679:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4267c:	05 fb ff             	add    ax,0xfffb
   4267f:	a3 8a bb             	mov    ds:0xbb8a,ax
   42682:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   42685:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   42688:	05 fb ff             	add    ax,0xfffb
   4268b:	a3 88 bb             	mov    ds:0xbb88,ax
   4268e:	c7 46 f4 0a 00       	mov    WORD PTR [bp-0xc],0xa
   42693:	eb 3b                	jmp    0x426d0
   42695:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   42698:	05 fb ff             	add    ax,0xfffb
   4269b:	a3 8a bb             	mov    ds:0xbb8a,ax
   4269e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   426a1:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   426a4:	05 fb ff             	add    ax,0xfffb
   426a7:	a3 88 bb             	mov    ds:0xbb88,ax
   426aa:	c7 46 f4 14 00       	mov    WORD PTR [bp-0xc],0x14
   426af:	eb 1f                	jmp    0x426d0
   426b1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   426b4:	05 fb ff             	add    ax,0xfffb
   426b7:	a3 8a bb             	mov    ds:0xbb8a,ax
   426ba:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   426bd:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   426c0:	05 fc ff             	add    ax,0xfffc
   426c3:	a3 88 bb             	mov    ds:0xbb88,ax
   426c6:	c7 46 f4 1e 00       	mov    WORD PTR [bp-0xc],0x1e
   426cb:	eb 03                	jmp    0x426d0
   426cd:	e9 8d 03             	jmp    0x42a5d
   426d0:	c7 46 f2 54 01       	mov    WORD PTR [bp-0xe],0x154
   426d5:	b8 0a 00             	mov    ax,0xa
   426d8:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   426db:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   426de:	83 3e 8a bb 00       	cmp    WORD PTR ds:0xbb8a,0x0
   426e3:	7d 12                	jge    0x426f7
   426e5:	a1 8a bb             	mov    ax,ds:0xbb8a
   426e8:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   426eb:	a1 8a bb             	mov    ax,ds:0xbb8a
   426ee:	01 46 f0             	add    WORD PTR [bp-0x10],ax
   426f1:	c7 06 8a bb 00 00    	mov    WORD PTR ds:0xbb8a,0x0
   426f7:	83 3e 88 bb 00       	cmp    WORD PTR ds:0xbb88,0x0
   426fc:	7d 12                	jge    0x42710
   426fe:	a1 88 bb             	mov    ax,ds:0xbb88
   42701:	29 46 f2             	sub    WORD PTR [bp-0xe],ax
   42704:	a1 88 bb             	mov    ax,ds:0xbb88
   42707:	01 46 ee             	add    WORD PTR [bp-0x12],ax
   4270a:	c7 06 88 bb 00 00    	mov    WORD PTR ds:0xbb88,0x0
   42710:	68 e0 01             	push   0x1e0
   42713:	68 41 03             	push   0x341
   42716:	6a 00                	push   0x0
   42718:	6a 06                	push   0x6
   4271a:	ff 36 88 bb          	push   WORD PTR ds:0xbb88
   4271e:	ff 36 8a bb          	push   WORD PTR ds:0xbb8a
   42722:	ff 76 ee             	push   WORD PTR [bp-0x12]
   42725:	ff 76 f0             	push   WORD PTR [bp-0x10]
   42728:	ff 76 f2             	push   WORD PTR [bp-0xe]
   4272b:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4272e:	9a 30 04 28 00       	call   0x28:0x430
   42733:	83 c4 14             	add    sp,0x14
   42736:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   42739:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4273c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4273f:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   42742:	6a 03                	push   0x3
   42744:	9a 48 00 18 01       	call   0x118:0x48
   42749:	59                   	pop    cx
   4274a:	9a 4d 00 18 01       	call   0x118:0x4d
   4274f:	89 46 de             	mov    WORD PTR [bp-0x22],ax
   42752:	f7 46 de 01 00       	test   WORD PTR [bp-0x22],0x1
   42757:	74 35                	je     0x4278e
   42759:	b8 88 01             	mov    ax,0x188
   4275c:	8e c0                	mov    es,ax
   4275e:	26 a1 5e 3d          	mov    ax,es:0x3d5e
   42762:	f7 d0                	not    ax
   42764:	a9 01 00             	test   ax,0x1
   42767:	74 61                	je     0x427ca
   42769:	eb 13                	jmp    0x4277e
   4276b:	6a 00                	push   0x0
   4276d:	6a 00                	push   0x0
   4276f:	6a 00                	push   0x0
   42771:	6a 21                	push   0x21
   42773:	9a 61 00 50 01       	call   0x150:0x61
   42778:	83 c4 08             	add    sp,0x8
   4277b:	88 46 e1             	mov    BYTE PTR [bp-0x1f],al
   4277e:	80 7e e1 00          	cmp    BYTE PTR [bp-0x1f],0x0
   42782:	75 e7                	jne    0x4276b
   42784:	6a 14                	push   0x14
   42786:	1e                   	push   ds
   42787:	68 25 5a             	push   0x5a25
   4278a:	eb 31                	jmp    0x427bd
   4278c:	eb 3c                	jmp    0x427ca
   4278e:	b8 88 01             	mov    ax,0x188
   42791:	8e c0                	mov    es,ax
   42793:	26 f7 06 5e 3d 01 00 	test   WORD PTR es:0x3d5e,0x1
   4279a:	74 2e                	je     0x427ca
   4279c:	eb 13                	jmp    0x427b1
   4279e:	6a 00                	push   0x0
   427a0:	6a 00                	push   0x0
   427a2:	6a 00                	push   0x0
   427a4:	6a 21                	push   0x21
   427a6:	9a 61 00 50 01       	call   0x150:0x61
   427ab:	83 c4 08             	add    sp,0x8
   427ae:	88 46 e1             	mov    BYTE PTR [bp-0x1f],al
   427b1:	80 7e e1 00          	cmp    BYTE PTR [bp-0x1f],0x0
   427b5:	75 e7                	jne    0x4279e
   427b7:	6a 14                	push   0x14
   427b9:	1e                   	push   ds
   427ba:	68 31 5a             	push   0x5a31
   427bd:	6a 21                	push   0x21
   427bf:	9a 61 00 50 01       	call   0x150:0x61
   427c4:	83 c4 08             	add    sp,0x8
   427c7:	88 46 e1             	mov    BYTE PTR [bp-0x1f],al
   427ca:	b8 88 01             	mov    ax,0x188
   427cd:	8b 56 de             	mov    dx,WORD PTR [bp-0x22]
   427d0:	8e c0                	mov    es,ax
   427d2:	26 89 16 5e 3d       	mov    WORD PTR es:0x3d5e,dx
   427d7:	68 bd 00             	push   0xbd
   427da:	68 d2 00             	push   0xd2
   427dd:	9a 66 00 18 01       	call   0x118:0x66
   427e2:	83 c4 04             	add    sp,0x4
   427e5:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   427ea:	c6 46 e0 00          	mov    BYTE PTR [bp-0x20],0x0
   427ee:	eb 47                	jmp    0x42837
   427f0:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   427f3:	c1 e3 03             	shl    bx,0x3
   427f6:	8b 87 86 4a          	mov    ax,WORD PTR [bx+0x4a86]
   427fa:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   427fd:	7d 35                	jge    0x42834
   427ff:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   42802:	c1 e3 03             	shl    bx,0x3
   42805:	8b 87 8a 4a          	mov    ax,WORD PTR [bx+0x4a8a]
   42809:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   4280c:	7e 26                	jle    0x42834
   4280e:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   42811:	c1 e3 03             	shl    bx,0x3
   42814:	8b 87 88 4a          	mov    ax,WORD PTR [bx+0x4a88]
   42818:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   4281b:	7d 17                	jge    0x42834
   4281d:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   42820:	c1 e3 03             	shl    bx,0x3
   42823:	8b 87 8c 4a          	mov    ax,WORD PTR [bx+0x4a8c]
   42827:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   4282a:	7e 08                	jle    0x42834
   4282c:	8a 46 ea             	mov    al,BYTE PTR [bp-0x16]
   4282f:	04 02                	add    al,0x2
   42831:	88 46 e0             	mov    BYTE PTR [bp-0x20],al
   42834:	ff 46 ea             	inc    WORD PTR [bp-0x16]
   42837:	83 7e ea 0c          	cmp    WORD PTR [bp-0x16],0xc
   4283b:	7c b3                	jl     0x427f0
   4283d:	80 7e e0 00          	cmp    BYTE PTR [bp-0x20],0x0
   42841:	75 03                	jne    0x42846
   42843:	e9 b6 00             	jmp    0x428fc
   42846:	8a 46 e0             	mov    al,BYTE PTR [bp-0x20]
   42849:	b4 00                	mov    ah,0x0
   4284b:	c1 e0 02             	shl    ax,0x2
   4284e:	8d 56 aa             	lea    dx,[bp-0x56]
   42851:	03 c2                	add    ax,dx
   42853:	8b d8                	mov    bx,ax
   42855:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   42859:	36 ff 37             	push   WORD PTR ss:[bx]
   4285c:	1e                   	push   ds
   4285d:	68 3c 5a             	push   0x5a3c
   42860:	16                   	push   ss
   42861:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   42865:	50                   	push   ax
   42866:	9a b4 48 00 00       	call   0x0:0x48b4
   4286b:	83 c4 0c             	add    sp,0xc
   4286e:	3d 64 00             	cmp    ax,0x64
   42871:	7c 15                	jl     0x42888
   42873:	6a 6c                	push   0x6c
   42875:	6a 00                	push   0x0
   42877:	6a 00                	push   0x0
   42879:	68 08 05             	push   0x508
   4287c:	1e                   	push   ds
   4287d:	68 3f 5a             	push   0x5a3f
   42880:	9a 2a 00 58 01       	call   0x158:0x2a
   42885:	83 c4 0c             	add    sp,0xc
   42888:	b8 02 00             	mov    ax,0x2
   4288b:	3d 01 00             	cmp    ax,0x1
   4288e:	74 07                	je     0x42897
   42890:	3d 02 00             	cmp    ax,0x2
   42893:	74 37                	je     0x428cc
   42895:	eb 7b                	jmp    0x42912
   42897:	6a 05                	push   0x5
   42899:	6a 00                	push   0x0
   4289b:	16                   	push   ss
   4289c:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   428a0:	50                   	push   ax
   428a1:	68 be 00             	push   0xbe
   428a4:	6a 01                	push   0x1
   428a6:	6a 00                	push   0x0
   428a8:	9a 34 00 80 01       	call   0x180:0x34
   428ad:	83 c4 0e             	add    sp,0xe
   428b0:	6a 05                	push   0x5
   428b2:	68 ff 00             	push   0xff
   428b5:	16                   	push   ss
   428b6:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   428ba:	50                   	push   ax
   428bb:	68 bd 00             	push   0xbd
   428be:	6a 00                	push   0x0
   428c0:	6a 00                	push   0x0
   428c2:	9a 34 00 80 01       	call   0x180:0x34
   428c7:	83 c4 0e             	add    sp,0xe
   428ca:	eb 46                	jmp    0x42912
   428cc:	6a 00                	push   0x0
   428ce:	16                   	push   ss
   428cf:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   428d3:	50                   	push   ax
   428d4:	68 be 00             	push   0xbe
   428d7:	6a 00                	push   0x0
   428d9:	6a 00                	push   0x0
   428db:	9a 39 00 80 01       	call   0x180:0x39
   428e0:	83 c4 0c             	add    sp,0xc
   428e3:	68 ff 00             	push   0xff
   428e6:	16                   	push   ss
   428e7:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   428eb:	50                   	push   ax
   428ec:	68 bd 00             	push   0xbd
   428ef:	6a 00                	push   0x0
   428f1:	6a 00                	push   0x0
   428f3:	9a 39 00 80 01       	call   0x180:0x39
   428f8:	eb 15                	jmp    0x4290f
   428fa:	eb 16                	jmp    0x42912
   428fc:	6a 00                	push   0x0
   428fe:	6a 00                	push   0x0
   42900:	6a 0a                	push   0xa
   42902:	68 c8 00             	push   0xc8
   42905:	68 bd 00             	push   0xbd
   42908:	6a 00                	push   0x0
   4290a:	9a 08 09 28 00       	call   0x28:0x908
   4290f:	83 c4 0c             	add    sp,0xc
   42912:	80 7e e1 00          	cmp    BYTE PTR [bp-0x1f],0x0
   42916:	74 13                	je     0x4292b
   42918:	6a 00                	push   0x0
   4291a:	6a 00                	push   0x0
   4291c:	6a 00                	push   0x0
   4291e:	6a 21                	push   0x21
   42920:	9a 61 00 50 01       	call   0x150:0x61
   42925:	83 c4 08             	add    sp,0x8
   42928:	88 46 e1             	mov    BYTE PTR [bp-0x1f],al
   4292b:	6a 00                	push   0x0
   4292d:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   42932:	59                   	pop    cx
   42933:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   42936:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   42939:	c1 fb 08             	sar    bx,0x8
   4293c:	83 eb 48             	sub    bx,0x48
   4293f:	83 fb 08             	cmp    bx,0x8
   42942:	76 03                	jbe    0x42947
   42944:	e9 fa 00             	jmp    0x42a41
   42947:	d1 e3                	shl    bx,1
   42949:	2e ff a7 04 37       	jmp    WORD PTR cs:[bx+0x3704]
   4294e:	c6 46 e7 01          	mov    BYTE PTR [bp-0x19],0x1
   42952:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   42956:	7f 03                	jg     0x4295b
   42958:	e9 e6 00             	jmp    0x42a41
   4295b:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   4295e:	e9 e6 fb             	jmp    0x42547
   42961:	e9 dd 00             	jmp    0x42a41
   42964:	c6 46 e7 02          	mov    BYTE PTR [bp-0x19],0x2
   42968:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   4296c:	7f 03                	jg     0x42971
   4296e:	e9 d0 00             	jmp    0x42a41
   42971:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   42974:	e9 d0 fb             	jmp    0x42547
   42977:	e9 c7 00             	jmp    0x42a41
   4297a:	c6 46 e7 00          	mov    BYTE PTR [bp-0x19],0x0
   4297e:	81 7e fe 36 01       	cmp    WORD PTR [bp-0x2],0x136
   42983:	7c 03                	jl     0x42988
   42985:	e9 b9 00             	jmp    0x42a41
   42988:	81 7e fe c6 00       	cmp    WORD PTR [bp-0x2],0xc6
   4298d:	7f 03                	jg     0x42992
   4298f:	e9 96 00             	jmp    0x42a28
   42992:	6a 10                	push   0x10
   42994:	9a 2a 00 30 01       	call   0x130:0x2a
   42999:	59                   	pop    cx
   4299a:	b4 00                	mov    ah,0x0
   4299c:	0b c0                	or     ax,ax
   4299e:	74 03                	je     0x429a3
   429a0:	e9 85 00             	jmp    0x42a28
   429a3:	6a 00                	push   0x0
   429a5:	6a 00                	push   0x0
   429a7:	6a 0a                	push   0xa
   429a9:	68 c8 00             	push   0xc8
   429ac:	68 bd 00             	push   0xbd
   429af:	6a 00                	push   0x0
   429b1:	9a 08 09 28 00       	call   0x28:0x908
   429b6:	83 c4 0c             	add    sp,0xc
   429b9:	b8 02 00             	mov    ax,0x2
   429bc:	3d 01 00             	cmp    ax,0x1
   429bf:	74 07                	je     0x429c8
   429c1:	3d 02 00             	cmp    ax,0x2
   429c4:	74 33                	je     0x429f9
   429c6:	eb 79                	jmp    0x42a41
   429c8:	6a 05                	push   0x5
   429ca:	6a 00                	push   0x0
   429cc:	1e                   	push   ds
   429cd:	68 4e 5a             	push   0x5a4e
   429d0:	68 be 00             	push   0xbe
   429d3:	6a 01                	push   0x1
   429d5:	6a 00                	push   0x0
   429d7:	9a 34 00 80 01       	call   0x180:0x34
   429dc:	83 c4 0e             	add    sp,0xe
   429df:	6a 05                	push   0x5
   429e1:	68 ff 00             	push   0xff
   429e4:	1e                   	push   ds
   429e5:	68 6a 5a             	push   0x5a6a
   429e8:	68 bd 00             	push   0xbd
   429eb:	6a 00                	push   0x0
   429ed:	6a 00                	push   0x0
   429ef:	9a 34 00 80 01       	call   0x180:0x34
   429f4:	83 c4 0e             	add    sp,0xe
   429f7:	eb 48                	jmp    0x42a41
   429f9:	6a 00                	push   0x0
   429fb:	1e                   	push   ds
   429fc:	68 86 5a             	push   0x5a86
   429ff:	68 be 00             	push   0xbe
   42a02:	6a 00                	push   0x0
   42a04:	6a 00                	push   0x0
   42a06:	9a 39 00 80 01       	call   0x180:0x39
   42a0b:	83 c4 0c             	add    sp,0xc
   42a0e:	68 ff 00             	push   0xff
   42a11:	1e                   	push   ds
   42a12:	68 a2 5a             	push   0x5aa2
   42a15:	68 bd 00             	push   0xbd
   42a18:	6a 00                	push   0x0
   42a1a:	6a 00                	push   0x0
   42a1c:	9a 39 00 80 01       	call   0x180:0x39
   42a21:	83 c4 0c             	add    sp,0xc
   42a24:	eb 1b                	jmp    0x42a41
   42a26:	eb 19                	jmp    0x42a41
   42a28:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   42a2b:	e9 19 fb             	jmp    0x42547
   42a2e:	eb 11                	jmp    0x42a41
   42a30:	c6 46 e7 03          	mov    BYTE PTR [bp-0x19],0x3
   42a34:	81 7e fc 53 01       	cmp    WORD PTR [bp-0x4],0x153
   42a39:	7d 06                	jge    0x42a41
   42a3b:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   42a3e:	e9 06 fb             	jmp    0x42547
   42a41:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   42a44:	25 ff 00             	and    ax,0xff
   42a47:	3d 0d 00             	cmp    ax,0xd
   42a4a:	74 03                	je     0x42a4f
   42a4c:	e9 dc fe             	jmp    0x4292b
   42a4f:	80 7e e0 00          	cmp    BYTE PTR [bp-0x20],0x0
   42a53:	75 03                	jne    0x42a58
   42a55:	e9 d3 fe             	jmp    0x4292b
   42a58:	eb 03                	jmp    0x42a5d
   42a5a:	e9 ce fe             	jmp    0x4292b
   42a5d:	6a 00                	push   0x0
   42a5f:	6a 00                	push   0x0
   42a61:	6a 0a                	push   0xa
   42a63:	68 c8 00             	push   0xc8
   42a66:	68 bd 00             	push   0xbd
   42a69:	6a 00                	push   0x0
   42a6b:	9a 08 09 28 00       	call   0x28:0x908
   42a70:	83 c4 0c             	add    sp,0xc
   42a73:	8a 46 e0             	mov    al,BYTE PTR [bp-0x20]
   42a76:	b4 00                	mov    ah,0x0
   42a78:	c1 e0 02             	shl    ax,0x2
   42a7b:	8d 56 aa             	lea    dx,[bp-0x56]
   42a7e:	03 c2                	add    ax,dx
   42a80:	8b d8                	mov    bx,ax
   42a82:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   42a86:	36 ff 37             	push   WORD PTR ss:[bx]
   42a89:	1e                   	push   ds
   42a8a:	68 be 5a             	push   0x5abe
   42a8d:	16                   	push   ss
   42a8e:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   42a92:	50                   	push   ax
   42a93:	9a b4 48 00 00       	call   0x0:0x48b4
   42a98:	83 c4 0c             	add    sp,0xc
   42a9b:	3d 64 00             	cmp    ax,0x64
   42a9e:	7c 15                	jl     0x42ab5
   42aa0:	6a 6c                	push   0x6c
   42aa2:	6a 00                	push   0x0
   42aa4:	6a 00                	push   0x0
   42aa6:	68 31 05             	push   0x531
   42aa9:	1e                   	push   ds
   42aaa:	68 da 5a             	push   0x5ada
   42aad:	9a 2a 00 58 01       	call   0x158:0x2a
   42ab2:	83 c4 0c             	add    sp,0xc
   42ab5:	b8 02 00             	mov    ax,0x2
   42ab8:	3d 01 00             	cmp    ax,0x1
   42abb:	74 07                	je     0x42ac4
   42abd:	3d 02 00             	cmp    ax,0x2
   42ac0:	74 37                	je     0x42af9
   42ac2:	eb 64                	jmp    0x42b28
   42ac4:	6a 05                	push   0x5
   42ac6:	6a 00                	push   0x0
   42ac8:	16                   	push   ss
   42ac9:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   42acd:	50                   	push   ax
   42ace:	68 be 00             	push   0xbe
   42ad1:	6a 01                	push   0x1
   42ad3:	6a 00                	push   0x0
   42ad5:	9a 34 00 80 01       	call   0x180:0x34
   42ada:	83 c4 0e             	add    sp,0xe
   42add:	6a 05                	push   0x5
   42adf:	68 ff 00             	push   0xff
   42ae2:	16                   	push   ss
   42ae3:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   42ae7:	50                   	push   ax
   42ae8:	68 bd 00             	push   0xbd
   42aeb:	6a 00                	push   0x0
   42aed:	6a 00                	push   0x0
   42aef:	9a 34 00 80 01       	call   0x180:0x34
   42af4:	83 c4 0e             	add    sp,0xe
   42af7:	eb 2f                	jmp    0x42b28
   42af9:	6a 00                	push   0x0
   42afb:	16                   	push   ss
   42afc:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   42b00:	50                   	push   ax
   42b01:	68 be 00             	push   0xbe
   42b04:	6a 00                	push   0x0
   42b06:	6a 00                	push   0x0
   42b08:	9a 39 00 80 01       	call   0x180:0x39
   42b0d:	83 c4 0c             	add    sp,0xc
   42b10:	68 ff 00             	push   0xff
   42b13:	16                   	push   ss
   42b14:	8d 86 4a ff          	lea    ax,[bp-0xb6]
   42b18:	50                   	push   ax
   42b19:	68 bd 00             	push   0xbd
   42b1c:	6a 00                	push   0x0
   42b1e:	6a 00                	push   0x0
   42b20:	9a 39 00 80 01       	call   0x180:0x39
   42b25:	83 c4 0c             	add    sp,0xc
   42b28:	6a 00                	push   0x0
   42b2a:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   42b2f:	59                   	pop    cx
   42b30:	25 ff 00             	and    ax,0xff
   42b33:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   42b36:	16                   	push   ss
   42b37:	8d 46 ec             	lea    ax,[bp-0x14]
   42b3a:	50                   	push   ax
   42b3b:	9a 2a 00 80 01       	call   0x180:0x2a
   42b40:	83 c4 04             	add    sp,0x4
   42b43:	83 7e ec 65          	cmp    WORD PTR [bp-0x14],0x65
   42b47:	74 03                	je     0x42b4c
   42b49:	e9 d6 00             	jmp    0x42c22
   42b4c:	6a 22                	push   0x22
   42b4e:	9a 2a 00 30 01       	call   0x130:0x2a
   42b53:	59                   	pop    cx
   42b54:	50                   	push   ax
   42b55:	6a 45                	push   0x45
   42b57:	9a 2a 00 30 01       	call   0x130:0x2a
   42b5c:	59                   	pop    cx
   42b5d:	5a                   	pop    dx
   42b5e:	32 d0                	xor    dl,al
   42b60:	0a d2                	or     dl,dl
   42b62:	75 03                	jne    0x42b67
   42b64:	e9 e0 00             	jmp    0x42c47
   42b67:	80 7e e0 05          	cmp    BYTE PTR [bp-0x20],0x5
   42b6b:	74 03                	je     0x42b70
   42b6d:	e9 d7 00             	jmp    0x42c47
   42b70:	6a 00                	push   0x0
   42b72:	6a 00                	push   0x0
   42b74:	6a 0a                	push   0xa
   42b76:	68 c8 00             	push   0xc8
   42b79:	68 bd 00             	push   0xbd
   42b7c:	6a 00                	push   0x0
   42b7e:	9a 08 09 28 00       	call   0x28:0x908
   42b83:	83 c4 0c             	add    sp,0xc
   42b86:	b8 02 00             	mov    ax,0x2
   42b89:	3d 01 00             	cmp    ax,0x1
   42b8c:	74 07                	je     0x42b95
   42b8e:	3d 02 00             	cmp    ax,0x2
   42b91:	74 33                	je     0x42bc6
   42b93:	eb 5c                	jmp    0x42bf1
   42b95:	6a 05                	push   0x5
   42b97:	6a 00                	push   0x0
   42b99:	1e                   	push   ds
   42b9a:	68 e9 5a             	push   0x5ae9
   42b9d:	68 be 00             	push   0xbe
   42ba0:	6a 01                	push   0x1
   42ba2:	6a 00                	push   0x0
   42ba4:	9a 34 00 80 01       	call   0x180:0x34
   42ba9:	83 c4 0e             	add    sp,0xe
   42bac:	6a 05                	push   0x5
   42bae:	68 ff 00             	push   0xff
   42bb1:	1e                   	push   ds
   42bb2:	68 0e 5b             	push   0x5b0e
   42bb5:	68 bd 00             	push   0xbd
   42bb8:	6a 00                	push   0x0
   42bba:	6a 00                	push   0x0
   42bbc:	9a 34 00 80 01       	call   0x180:0x34
   42bc1:	83 c4 0e             	add    sp,0xe
   42bc4:	eb 2b                	jmp    0x42bf1
   42bc6:	6a 00                	push   0x0
   42bc8:	1e                   	push   ds
   42bc9:	68 33 5b             	push   0x5b33
   42bcc:	68 be 00             	push   0xbe
   42bcf:	6a 00                	push   0x0
   42bd1:	6a 00                	push   0x0
   42bd3:	9a 39 00 80 01       	call   0x180:0x39
   42bd8:	83 c4 0c             	add    sp,0xc
   42bdb:	68 ff 00             	push   0xff
   42bde:	1e                   	push   ds
   42bdf:	68 58 5b             	push   0x5b58
   42be2:	68 bd 00             	push   0xbd
   42be5:	6a 00                	push   0x0
   42be7:	6a 00                	push   0x0
   42be9:	9a 39 00 80 01       	call   0x180:0x39
   42bee:	83 c4 0c             	add    sp,0xc
   42bf1:	6a 00                	push   0x0
   42bf3:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   42bf8:	59                   	pop    cx
   42bf9:	25 ff 00             	and    ax,0xff
   42bfc:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   42bff:	16                   	push   ss
   42c00:	8d 46 ec             	lea    ax,[bp-0x14]
   42c03:	50                   	push   ax
   42c04:	9a 2a 00 80 01       	call   0x180:0x2a
   42c09:	83 c4 04             	add    sp,0x4
   42c0c:	83 7e ec 73          	cmp    WORD PTR [bp-0x14],0x73
   42c10:	74 35                	je     0x42c47
   42c12:	83 7e ec 6b          	cmp    WORD PTR [bp-0x14],0x6b
   42c16:	75 d9                	jne    0x42bf1
   42c18:	c6 46 e0 0e          	mov    BYTE PTR [bp-0x20],0xe
   42c1c:	eb 29                	jmp    0x42c47
   42c1e:	eb d1                	jmp    0x42bf1
   42c20:	eb 25                	jmp    0x42c47
   42c22:	83 7e ec 68          	cmp    WORD PTR [bp-0x14],0x68
   42c26:	74 03                	je     0x42c2b
   42c28:	e9 fd fe             	jmp    0x42b28
   42c2b:	6a 00                	push   0x0
   42c2d:	6a 00                	push   0x0
   42c2f:	6a 0a                	push   0xa
   42c31:	68 c8 00             	push   0xc8
   42c34:	68 bd 00             	push   0xbd
   42c37:	6a 00                	push   0x0
   42c39:	9a 08 09 28 00       	call   0x28:0x908
   42c3e:	83 c4 0c             	add    sp,0xc
   42c41:	e9 e7 fc             	jmp    0x4292b
   42c44:	e9 e1 fe             	jmp    0x42b28
   42c47:	1e                   	push   ds
   42c48:	68 7d 5b             	push   0x5b7d
   42c4b:	68 47 05             	push   0x547
   42c4e:	68 88 01             	push   0x188
   42c51:	68 cf e2             	push   0xe2cf
   42c54:	9a 2f 02 40 00       	call   0x40:0x22f
   42c59:	83 c4 0a             	add    sp,0xa
   42c5c:	6a 00                	push   0x0
   42c5e:	b8 88 01             	mov    ax,0x188
   42c61:	8e c0                	mov    es,ax
   42c63:	26 a1 18 73          	mov    ax,es:0x7318
   42c67:	f7 d8                	neg    ax
   42c69:	50                   	push   ax
   42c6a:	6a 64                	push   0x64
   42c6c:	9a 3f 07 30 00       	call   0x30:0x73f
   42c71:	83 c4 06             	add    sp,0x6
   42c74:	9a e3 01 40 00       	call   0x40:0x1e3
   42c79:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   42c7c:	05 fb ff             	add    ax,0xfffb
   42c7f:	a3 88 bb             	mov    ds:0xbb88,ax
   42c82:	b8 88 01             	mov    ax,0x188
   42c85:	8a 56 e8             	mov    dl,BYTE PTR [bp-0x18]
   42c88:	8e c0                	mov    es,ax
   42c8a:	26 88 16 24 73       	mov    BYTE PTR es:0x7324,dl
   42c8f:	b8 88 01             	mov    ax,0x188
   42c92:	8e c0                	mov    es,ax
   42c94:	26 a0 e3 e5          	mov    al,es:0xe5e3
   42c98:	50                   	push   ax
   42c99:	9a 69 00 30 00       	call   0x30:0x69
   42c9e:	59                   	pop    cx
   42c9f:	8a 46 e0             	mov    al,BYTE PTR [bp-0x20]
   42ca2:	c9                   	leave
   42ca3:	cb                   	retf
   42ca4:	ae                   	scas   al,BYTE PTR es:[di]
   42ca5:	33 a1 34 a1          	xor    sp,WORD PTR [bx+di-0x5ecc]
   42ca9:	34 c4                	xor    al,0xc4
   42cab:	33 a1 34 da          	xor    sp,WORD PTR [bx+di-0x25cc]
   42caf:	33 a1 34 a1          	xor    sp,WORD PTR [bx+di-0x5ecc]
   42cb3:	34 90                	xor    al,0x90
   42cb5:	34 bd                	xor    al,0xbd
   42cb7:	30 d9                	xor    cl,bl
   42cb9:	30 f5                	xor    ch,dh
   42cbb:	30 11                	xor    BYTE PTR [bx+di],dl
   42cbd:	31 55 8b             	xor    WORD PTR [di-0x75],dx
   42cc0:	ec                   	in     al,dx
   42cc1:	83 ec 04             	sub    sp,0x4
   42cc4:	c6 46 fd 00          	mov    BYTE PTR [bp-0x3],0x0
   42cc8:	c7 46 fe 44 00       	mov    WORD PTR [bp-0x2],0x44
   42ccd:	eb 56                	jmp    0x42d25
   42ccf:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   42cd2:	c1 e3 03             	shl    bx,0x3
   42cd5:	b8 88 01             	mov    ax,0x188
   42cd8:	8e c0                	mov    es,ax
   42cda:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
   42cdf:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
   42ce4:	74 3c                	je     0x42d22
   42ce6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   42ce9:	c1 e3 03             	shl    bx,0x3
   42cec:	b8 88 01             	mov    ax,0x188
   42cef:	8e c0                	mov    es,ax
   42cf1:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   42cf6:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   42cfb:	75 25                	jne    0x42d22
   42cfd:	6a 01                	push   0x1
   42cff:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   42d02:	c1 e3 03             	shl    bx,0x3
   42d05:	b8 88 01             	mov    ax,0x188
   42d08:	8e c0                	mov    es,ax
   42d0a:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   42d0f:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   42d14:	9a f4 05 20 00       	call   0x20:0x5f4
   42d19:	83 c4 06             	add    sp,0x6
   42d1c:	c6 46 fd 01          	mov    BYTE PTR [bp-0x3],0x1
   42d20:	eb 09                	jmp    0x42d2b
   42d22:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   42d25:	83 7e fe 41          	cmp    WORD PTR [bp-0x2],0x41
   42d29:	7d a4                	jge    0x42ccf
   42d2b:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   42d2e:	c9                   	leave
   42d2f:	cb                   	retf
   42d30:	55                   	push   bp
   42d31:	8b ec                	mov    bp,sp
   42d33:	83 ec 0a             	sub    sp,0xa
   42d36:	6a 00                	push   0x0
   42d38:	68 e3 46             	push   0x46e3
   42d3b:	6a 00                	push   0x0
   42d3d:	6a 00                	push   0x0
   42d3f:	6a 00                	push   0x0
   42d41:	6a 2f                	push   0x2f
   42d43:	1e                   	push   ds
   42d44:	68 8c 5b             	push   0x5b8c
   42d47:	6a 01                	push   0x1
   42d49:	9a 25 00 60 01       	call   0x160:0x25
   42d4e:	83 c4 12             	add    sp,0x12
   42d51:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   42d54:	6a ff                	push   0xffff
   42d56:	6a ff                	push   0xffff
   42d58:	6a 00                	push   0x0
   42d5a:	6a 40                	push   0x40
   42d5c:	9a 25 16 68 00       	call   0x68:0x1625
   42d61:	b8 88 01             	mov    ax,0x188
   42d64:	8e c0                	mov    es,ax
   42d66:	26 a1 20 73          	mov    ax,es:0x7320
   42d6a:	ba 88 01             	mov    dx,0x188
   42d6d:	8e c2                	mov    es,dx
   42d6f:	26 a3 1a 73          	mov    es:0x731a,ax
   42d73:	b8 88 01             	mov    ax,0x188
   42d76:	8e c0                	mov    es,ax
   42d78:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   42d7e:	74 1f                	je     0x42d9f
   42d80:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   42d84:	75 19                	jne    0x42d9f
   42d86:	6a 00                	push   0x0
   42d88:	6a 00                	push   0x0
   42d8a:	6a 64                	push   0x64
   42d8c:	6a 00                	push   0x0
   42d8e:	6a 20                	push   0x20
   42d90:	6a 00                	push   0x0
   42d92:	68 34 21             	push   0x2134
   42d95:	6a 2f                	push   0x2f
   42d97:	9a 4f 01 38 00       	call   0x38:0x14f
   42d9c:	83 c4 10             	add    sp,0x10
   42d9f:	1e                   	push   ds
   42da0:	68 95 5b             	push   0x5b95
   42da3:	9a 57 00 40 01       	call   0x140:0x57
   42da8:	83 c4 04             	add    sp,0x4
   42dab:	3c 1b                	cmp    al,0x1b
   42dad:	75 03                	jne    0x42db2
   42daf:	e9 a9 01             	jmp    0x42f5b
   42db2:	b8 88 01             	mov    ax,0x188
   42db5:	8e c0                	mov    es,ax
   42db7:	26 a1 1e 73          	mov    ax,es:0x731e
   42dbb:	ba 88 01             	mov    dx,0x188
   42dbe:	8e c2                	mov    es,dx
   42dc0:	26 a3 18 73          	mov    es:0x7318,ax
   42dc4:	6a 00                	push   0x0
   42dc6:	b8 88 01             	mov    ax,0x188
   42dc9:	8e c0                	mov    es,ax
   42dcb:	26 a1 18 73          	mov    ax,es:0x7318
   42dcf:	f7 d8                	neg    ax
   42dd1:	50                   	push   ax
   42dd2:	6a 00                	push   0x0
   42dd4:	9a 3f 07 30 00       	call   0x30:0x73f
   42dd9:	83 c4 06             	add    sp,0x6
   42ddc:	1e                   	push   ds
   42ddd:	68 9a 5b             	push   0x5b9a
   42de0:	9a 57 00 40 01       	call   0x140:0x57
   42de5:	83 c4 04             	add    sp,0x4
   42de8:	3c 1b                	cmp    al,0x1b
   42dea:	75 03                	jne    0x42def
   42dec:	e9 6c 01             	jmp    0x42f5b
   42def:	b8 88 01             	mov    ax,0x188
   42df2:	8e c0                	mov    es,ax
   42df4:	26 a1 1e 73          	mov    ax,es:0x731e
   42df8:	ba 88 01             	mov    dx,0x188
   42dfb:	8e c2                	mov    es,dx
   42dfd:	26 a3 18 73          	mov    es:0x7318,ax
   42e01:	6a 00                	push   0x0
   42e03:	b8 88 01             	mov    ax,0x188
   42e06:	8e c0                	mov    es,ax
   42e08:	26 a1 18 73          	mov    ax,es:0x7318
   42e0c:	f7 d8                	neg    ax
   42e0e:	50                   	push   ax
   42e0f:	6a 00                	push   0x0
   42e11:	9a 3f 07 30 00       	call   0x30:0x73f
   42e16:	83 c4 06             	add    sp,0x6
   42e19:	1e                   	push   ds
   42e1a:	68 9f 5b             	push   0x5b9f
   42e1d:	9a 57 00 40 01       	call   0x140:0x57
   42e22:	83 c4 04             	add    sp,0x4
   42e25:	3c 1b                	cmp    al,0x1b
   42e27:	75 03                	jne    0x42e2c
   42e29:	e9 2f 01             	jmp    0x42f5b
   42e2c:	b8 88 01             	mov    ax,0x188
   42e2f:	8e c0                	mov    es,ax
   42e31:	26 a1 1e 73          	mov    ax,es:0x731e
   42e35:	ba 88 01             	mov    dx,0x188
   42e38:	8e c2                	mov    es,dx
   42e3a:	26 a3 18 73          	mov    es:0x7318,ax
   42e3e:	6a 00                	push   0x0
   42e40:	b8 88 01             	mov    ax,0x188
   42e43:	8e c0                	mov    es,ax
   42e45:	26 a1 18 73          	mov    ax,es:0x7318
   42e49:	f7 d8                	neg    ax
   42e4b:	50                   	push   ax
   42e4c:	6a 00                	push   0x0
   42e4e:	9a 3f 07 30 00       	call   0x30:0x73f
   42e53:	83 c4 06             	add    sp,0x6
   42e56:	b8 88 01             	mov    ax,0x188
   42e59:	8e c0                	mov    es,ax
   42e5b:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   42e61:	75 03                	jne    0x42e66
   42e63:	e9 81 00             	jmp    0x42ee7
   42e66:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   42e6a:	75 7b                	jne    0x42ee7
   42e6c:	b8 88 01             	mov    ax,0x188
   42e6f:	8e c0                	mov    es,ax
   42e71:	26 a1 4c e7          	mov    ax,es:0xe74c
   42e75:	26 8b 16 4a e7       	mov    dx,WORD PTR es:0xe74a
   42e7a:	81 c2 e8 03          	add    dx,0x3e8
   42e7e:	15 00 00             	adc    ax,0x0
   42e81:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   42e84:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   42e87:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   42e8c:	c7 46 f6 20 00       	mov    WORD PTR [bp-0xa],0x20
   42e91:	eb 3d                	jmp    0x42ed0
   42e93:	6a 00                	push   0x0
   42e95:	68 e8 03             	push   0x3e8
   42e98:	b8 88 01             	mov    ax,0x188
   42e9b:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   42e9e:	50                   	push   ax
   42e9f:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   42ea2:	07                   	pop    es
   42ea3:	26 2b 06 4a e7       	sub    ax,WORD PTR es:0xe74a
   42ea8:	26 1b 16 4c e7       	sbb    dx,WORD PTR es:0xe74c
   42ead:	b1 05                	mov    cl,0x5
   42eaf:	9a 8d 13 00 00       	call   0x0:0x138d
   42eb4:	52                   	push   dx
   42eb5:	50                   	push   ax
   42eb6:	9a e6 12 00 00       	call   0x0:0x12e6
   42ebb:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   42ebe:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   42ec1:	6a 00                	push   0x0
   42ec3:	6a 00                	push   0x0
   42ec5:	ff 76 f8             	push   WORD PTR [bp-0x8]
   42ec8:	ff 76 f6             	push   WORD PTR [bp-0xa]
   42ecb:	9a 0c 01 60 00       	call   0x60:0x10c
   42ed0:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   42ed4:	7f bd                	jg     0x42e93
   42ed6:	75 06                	jne    0x42ede
   42ed8:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   42edc:	77 b5                	ja     0x42e93
   42ede:	6a 00                	push   0x0
   42ee0:	6a 00                	push   0x0
   42ee2:	9a e6 00 60 00       	call   0x60:0xe6
   42ee7:	1e                   	push   ds
   42ee8:	68 a4 5b             	push   0x5ba4
   42eeb:	9a 57 00 40 01       	call   0x140:0x57
   42ef0:	83 c4 04             	add    sp,0x4
   42ef3:	3c 1b                	cmp    al,0x1b
   42ef5:	74 64                	je     0x42f5b
   42ef7:	b8 88 01             	mov    ax,0x188
   42efa:	8e c0                	mov    es,ax
   42efc:	26 a1 1e 73          	mov    ax,es:0x731e
   42f00:	ba 88 01             	mov    dx,0x188
   42f03:	8e c2                	mov    es,dx
   42f05:	26 a3 18 73          	mov    es:0x7318,ax
   42f09:	6a 00                	push   0x0
   42f0b:	b8 88 01             	mov    ax,0x188
   42f0e:	8e c0                	mov    es,ax
   42f10:	26 a1 18 73          	mov    ax,es:0x7318
   42f14:	f7 d8                	neg    ax
   42f16:	50                   	push   ax
   42f17:	6a 00                	push   0x0
   42f19:	9a 3f 07 30 00       	call   0x30:0x73f
   42f1e:	83 c4 06             	add    sp,0x6
   42f21:	1e                   	push   ds
   42f22:	68 a9 5b             	push   0x5ba9
   42f25:	9a 57 00 40 01       	call   0x140:0x57
   42f2a:	83 c4 04             	add    sp,0x4
   42f2d:	3c 1b                	cmp    al,0x1b
   42f2f:	74 2a                	je     0x42f5b
   42f31:	b8 88 01             	mov    ax,0x188
   42f34:	8e c0                	mov    es,ax
   42f36:	26 a1 1e 73          	mov    ax,es:0x731e
   42f3a:	ba 88 01             	mov    dx,0x188
   42f3d:	8e c2                	mov    es,dx
   42f3f:	26 a3 18 73          	mov    es:0x7318,ax
   42f43:	6a 00                	push   0x0
   42f45:	b8 88 01             	mov    ax,0x188
   42f48:	8e c0                	mov    es,ax
   42f4a:	26 a1 18 73          	mov    ax,es:0x7318
   42f4e:	f7 d8                	neg    ax
   42f50:	50                   	push   ax
   42f51:	6a 00                	push   0x0
   42f53:	9a 3f 07 30 00       	call   0x30:0x73f
   42f58:	83 c4 06             	add    sp,0x6
   42f5b:	b8 88 01             	mov    ax,0x188
   42f5e:	8e c0                	mov    es,ax
   42f60:	26 a1 1e 73          	mov    ax,es:0x731e
   42f64:	ba 88 01             	mov    dx,0x188
   42f67:	8e c2                	mov    es,dx
   42f69:	26 a3 18 73          	mov    es:0x7318,ax
   42f6d:	6a 00                	push   0x0
   42f6f:	b8 88 01             	mov    ax,0x188
   42f72:	8e c0                	mov    es,ax
   42f74:	26 a1 18 73          	mov    ax,es:0x7318
   42f78:	f7 d8                	neg    ax
   42f7a:	50                   	push   ax
   42f7b:	68 e8 03             	push   0x3e8
   42f7e:	9a 3f 07 30 00       	call   0x30:0x73f
   42f83:	83 c4 06             	add    sp,0x6
   42f86:	b8 88 01             	mov    ax,0x188
   42f89:	8e c0                	mov    es,ax
   42f8b:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   42f91:	74 0f                	je     0x42fa2
   42f93:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   42f97:	75 09                	jne    0x42fa2
   42f99:	6a 00                	push   0x0
   42f9b:	6a 00                	push   0x0
   42f9d:	9a e6 00 60 00       	call   0x60:0xe6
   42fa2:	b8 88 01             	mov    ax,0x188
   42fa5:	8e c0                	mov    es,ax
   42fa7:	26 a1 6d e2          	mov    ax,es:0xe26d
   42fab:	26 0b 06 6f e2       	or     ax,WORD PTR es:0xe26f
   42fb0:	74 15                	je     0x42fc7
   42fb2:	1e                   	push   ds
   42fb3:	68 ae 5b             	push   0x5bae
   42fb6:	68 8d 05             	push   0x58d
   42fb9:	68 88 01             	push   0x188
   42fbc:	68 6d e2             	push   0xe26d
   42fbf:	9a 2f 02 40 00       	call   0x40:0x22f
   42fc4:	83 c4 0a             	add    sp,0xa
   42fc7:	c9                   	leave
   42fc8:	cb                   	retf
