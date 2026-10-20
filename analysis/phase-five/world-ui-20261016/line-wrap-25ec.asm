
analysis/phase-five/world-ui-20261016/line-wrap-25ec.bin:     file format binary


Disassembly of section .data:

0000a7ac <.data>:
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
    a91f:	eb 03                	jmp    0xa924
    a921:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    a924:	89 46 0c             	mov    WORD PTR [bp+0xc],ax
    a927:	b8 01 00             	mov    ax,0x1
    a92a:	3d 01 00             	cmp    ax,0x1
    a92d:	74 0b                	je     0xa93a
    a92f:	3d 02 00             	cmp    ax,0x2
    a932:	75 03                	jne    0xa937
    a934:	e9 cc 00             	jmp    0xaa03
    a937:	e9 b8 01             	jmp    0xaaf2
    a93a:	6a 05                	push   0x5
    a93c:	b8 e0 16             	mov    ax,0x16e0
    a93f:	8e c0                	mov    es,ax
    a941:	26 a0 68 96          	mov    al,es:0x9668
    a945:	b4 00                	mov    ah,0x0
    a947:	50                   	push   ax
    a948:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a94b:	ff 76 08             	push   WORD PTR [bp+0x8]
    a94e:	ff 76 0e             	push   WORD PTR [bp+0xe]
    a951:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    a954:	48                   	dec    ax
    a955:	50                   	push   ax
    a956:	ff 76 06             	push   WORD PTR [bp+0x6]
    a959:	9a 34 00 da 16       	call   0x16da:0x34
    a95e:	83 c4 0e             	add    sp,0xe
    a961:	6a 05                	push   0x5
    a963:	b8 e0 16             	mov    ax,0x16e0
    a966:	8e c0                	mov    es,ax
    a968:	26 a0 68 96          	mov    al,es:0x9668
    a96c:	b4 00                	mov    ah,0x0
    a96e:	50                   	push   ax
    a96f:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a972:	ff 76 08             	push   WORD PTR [bp+0x8]
    a975:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    a978:	48                   	dec    ax
    a979:	50                   	push   ax
    a97a:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a97d:	ff 76 06             	push   WORD PTR [bp+0x6]
    a980:	9a 34 00 da 16       	call   0x16da:0x34
    a985:	83 c4 0e             	add    sp,0xe
    a988:	6a 05                	push   0x5
    a98a:	6a 00                	push   0x0
    a98c:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a98f:	ff 76 08             	push   WORD PTR [bp+0x8]
    a992:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    a995:	40                   	inc    ax
    a996:	50                   	push   ax
    a997:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    a99a:	40                   	inc    ax
    a99b:	50                   	push   ax
    a99c:	ff 76 06             	push   WORD PTR [bp+0x6]
    a99f:	9a 34 00 da 16       	call   0x16da:0x34
    a9a4:	83 c4 0e             	add    sp,0xe
    a9a7:	6a 05                	push   0x5
    a9a9:	6a 00                	push   0x0
    a9ab:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a9ae:	ff 76 08             	push   WORD PTR [bp+0x8]
    a9b1:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    a9b4:	40                   	inc    ax
    a9b5:	50                   	push   ax
    a9b6:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a9b9:	ff 76 06             	push   WORD PTR [bp+0x6]
    a9bc:	9a 34 00 da 16       	call   0x16da:0x34
    a9c1:	83 c4 0e             	add    sp,0xe
    a9c4:	6a 05                	push   0x5
    a9c6:	6a 00                	push   0x0
    a9c8:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a9cb:	ff 76 08             	push   WORD PTR [bp+0x8]
    a9ce:	ff 76 0e             	push   WORD PTR [bp+0xe]
    a9d1:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    a9d4:	40                   	inc    ax
    a9d5:	50                   	push   ax
    a9d6:	ff 76 06             	push   WORD PTR [bp+0x6]
    a9d9:	9a 34 00 da 16       	call   0x16da:0x34
    a9de:	83 c4 0e             	add    sp,0xe
    a9e1:	6a 05                	push   0x5
    a9e3:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    a9e6:	b4 00                	mov    ah,0x0
    a9e8:	50                   	push   ax
    a9e9:	ff 76 0a             	push   WORD PTR [bp+0xa]
    a9ec:	ff 76 08             	push   WORD PTR [bp+0x8]
    a9ef:	ff 76 0e             	push   WORD PTR [bp+0xe]
    a9f2:	ff 76 0c             	push   WORD PTR [bp+0xc]
    a9f5:	ff 76 06             	push   WORD PTR [bp+0x6]
    a9f8:	9a 34 00 da 16       	call   0x16da:0x34
    a9fd:	83 c4 0e             	add    sp,0xe
    aa00:	e9 ef 00             	jmp    0xaaf2
    aa03:	b8 e0 16             	mov    ax,0x16e0
    aa06:	8e c0                	mov    es,ax
    aa08:	26 a0 68 96          	mov    al,es:0x9668
    aa0c:	b4 00                	mov    ah,0x0
    aa0e:	50                   	push   ax
    aa0f:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aa12:	ff 76 08             	push   WORD PTR [bp+0x8]
    aa15:	ff 76 0e             	push   WORD PTR [bp+0xe]
    aa18:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    aa1b:	48                   	dec    ax
    aa1c:	50                   	push   ax
    aa1d:	ff 76 06             	push   WORD PTR [bp+0x6]
    aa20:	9a 39 00 da 16       	call   0x16da:0x39
    aa25:	83 c4 0c             	add    sp,0xc
    aa28:	b8 e0 16             	mov    ax,0x16e0
    aa2b:	8e c0                	mov    es,ax
    aa2d:	26 a0 68 96          	mov    al,es:0x9668
    aa31:	b4 00                	mov    ah,0x0
    aa33:	50                   	push   ax
    aa34:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aa37:	ff 76 08             	push   WORD PTR [bp+0x8]
    aa3a:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    aa3d:	48                   	dec    ax
    aa3e:	50                   	push   ax
    aa3f:	ff 76 0c             	push   WORD PTR [bp+0xc]
    aa42:	ff 76 06             	push   WORD PTR [bp+0x6]
    aa45:	9a 39 00 da 16       	call   0x16da:0x39
    aa4a:	83 c4 0c             	add    sp,0xc
    aa4d:	6a 00                	push   0x0
    aa4f:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aa52:	ff 76 08             	push   WORD PTR [bp+0x8]
    aa55:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    aa58:	40                   	inc    ax
    aa59:	50                   	push   ax
    aa5a:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    aa5d:	40                   	inc    ax
    aa5e:	50                   	push   ax
    aa5f:	ff 76 06             	push   WORD PTR [bp+0x6]
    aa62:	9a 39 00 da 16       	call   0x16da:0x39
    aa67:	83 c4 0c             	add    sp,0xc
    aa6a:	6a 00                	push   0x0
    aa6c:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aa6f:	ff 76 08             	push   WORD PTR [bp+0x8]
    aa72:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    aa75:	40                   	inc    ax
    aa76:	50                   	push   ax
    aa77:	ff 76 0c             	push   WORD PTR [bp+0xc]
    aa7a:	ff 76 06             	push   WORD PTR [bp+0x6]
    aa7d:	9a 39 00 da 16       	call   0x16da:0x39
    aa82:	83 c4 0c             	add    sp,0xc
    aa85:	6a 00                	push   0x0
    aa87:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aa8a:	ff 76 08             	push   WORD PTR [bp+0x8]
    aa8d:	ff 76 0e             	push   WORD PTR [bp+0xe]
    aa90:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    aa93:	40                   	inc    ax
    aa94:	50                   	push   ax
    aa95:	eb 33                	jmp    0xaaca
    aa97:	eb 59                	jmp    0xaaf2
    aa99:	b8 01 00             	mov    ax,0x1
    aa9c:	3d 01 00             	cmp    ax,0x1
    aa9f:	74 07                	je     0xaaa8
    aaa1:	3d 02 00             	cmp    ax,0x2
    aaa4:	74 14                	je     0xaaba
    aaa6:	eb 4a                	jmp    0xaaf2
    aaa8:	6a 05                	push   0x5
    aaaa:	6a 00                	push   0x0
    aaac:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aaaf:	ff 76 08             	push   WORD PTR [bp+0x8]
    aab2:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    aab5:	40                   	inc    ax
    aab6:	50                   	push   ax
    aab7:	e9 17 ff             	jmp    0xa9d1
    aaba:	6a 00                	push   0x0
    aabc:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aabf:	ff 76 08             	push   WORD PTR [bp+0x8]
    aac2:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
    aac5:	40                   	inc    ax
    aac6:	50                   	push   ax
    aac7:	ff 76 0c             	push   WORD PTR [bp+0xc]
    aaca:	ff 76 06             	push   WORD PTR [bp+0x6]
    aacd:	9a 39 00 da 16       	call   0x16da:0x39
    aad2:	83 c4 0c             	add    sp,0xc
    aad5:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
    aad8:	b4 00                	mov    ah,0x0
    aada:	50                   	push   ax
    aadb:	ff 76 0a             	push   WORD PTR [bp+0xa]
    aade:	ff 76 08             	push   WORD PTR [bp+0x8]
    aae1:	ff 76 0e             	push   WORD PTR [bp+0xe]
    aae4:	ff 76 0c             	push   WORD PTR [bp+0xc]
    aae7:	ff 76 06             	push   WORD PTR [bp+0x6]
    aaea:	9a 39 00 da 16       	call   0x16da:0x39
    aaef:	83 c4 0c             	add    sp,0xc
    aaf2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    aaf5:	0b 46 fe             	or     ax,WORD PTR [bp-0x2]
    aaf8:	74 09                	je     0xab03
    aafa:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
    aafd:	8a 46 f6             	mov    al,BYTE PTR [bp-0xa]
    ab00:	26 88 07             	mov    BYTE PTR es:[bx],al
    ab03:	8a 46 f7             	mov    al,BYTE PTR [bp-0x9]
    ab06:	c9                   	leave
    ab07:	cb                   	retf
