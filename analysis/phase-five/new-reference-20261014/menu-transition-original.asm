
analysis/phase-four/continuation/original-overlay-1682.bin:     file format binary


Disassembly of section .data:

0003f626 <.data+0x86>:
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
