
analysis/phase-five/door-20261016/scaler/bank-resolution-original.bin:     file format binary


Disassembly of section .data:

0000a8f4 <.data>:
    a8f4:	c8 06 00 00          	enter  0x6,0x0
    a8f8:	56                   	push   si
    a8f9:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    a8fc:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    a8ff:	26 80 7f 08 01       	cmp    BYTE PTR es:[bx+0x8],0x1
    a904:	74 03                	je     0xa909
    a906:	e9 c4 01             	jmp    0xaacd
    a909:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    a90c:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    a90f:	26 ff 37             	push   WORD PTR es:[bx]
    a912:	ff 76 18             	push   WORD PTR [bp+0x18]
    a915:	ff 76 16             	push   WORD PTR [bp+0x16]
    a918:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    a91b:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    a91e:	26 8b 47 06          	mov    ax,WORD PTR es:[bx+0x6]
    a922:	26 8b 57 04          	mov    dx,WORD PTR es:[bx+0x4]
    a926:	2b 56 16             	sub    dx,WORD PTR [bp+0x16]
    a929:	1b 46 18             	sbb    ax,WORD PTR [bp+0x18]
    a92c:	0b c0                	or     ax,ax
    a92e:	77 16                	ja     0xa946
    a930:	72 05                	jb     0xa937
    a932:	83 fa ff             	cmp    dx,0xffff
    a935:	73 0f                	jae    0xa946
    a937:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    a93a:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    a93d:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
    a941:	2b 46 16             	sub    ax,WORD PTR [bp+0x16]
    a944:	eb 03                	jmp    0xa949
    a946:	b8 ff ff             	mov    ax,0xffff
    a949:	50                   	push   ax
    a94a:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    a94d:	26 ff 37             	push   WORD PTR es:[bx]
    a950:	9a f4 07 54 11       	call   0x1154:0x7f4
    a955:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
    a958:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
    a95c:	26 89 07             	mov    WORD PTR es:[bx],ax
    a95f:	0b c2                	or     ax,dx
    a961:	75 4e                	jne    0xa9b1
    a963:	b8 e0 16             	mov    ax,0x16e0
    a966:	8e c0                	mov    es,ax
    a968:	26 ff 36 fe 86       	push   WORD PTR es:0x86fe
    a96d:	b8 e0 16             	mov    ax,0x16e0
    a970:	8e c0                	mov    es,ax
    a972:	26 ff 36 fc 86       	push   WORD PTR es:0x86fc
    a977:	b8 e0 16             	mov    ax,0x16e0
    a97a:	8e c0                	mov    es,ax
    a97c:	26 ff 36 fa 86       	push   WORD PTR es:0x86fa
    a981:	b8 e0 16             	mov    ax,0x16e0
    a984:	8e c0                	mov    es,ax
    a986:	26 ff 36 f8 86       	push   WORD PTR es:0x86f8
    a98b:	1e                   	push   ds
    a98c:	68 c1 70             	push   0x70c1
    a98f:	9a 53 42 00 00       	call   0x0:0x4253
    a994:	83 c4 0c             	add    sp,0xc
    a997:	9a d7 29 00 00       	call   0x0:0x29d7
    a99c:	6a 10                	push   0x10
    a99e:	6a 00                	push   0x0
    a9a0:	6a 00                	push   0x0
    a9a2:	68 ec 02             	push   0x2ec
    a9a5:	1e                   	push   ds
    a9a6:	68 d4 70             	push   0x70d4
    a9a9:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    a9ae:	83 c4 0c             	add    sp,0xc
    a9b1:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
    a9b4:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    a9b7:	25 ff 3f             	and    ax,0x3fff
    a9ba:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    a9bd:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    a9c0:	b8 04 00             	mov    ax,0x4
    a9c3:	26 2b 07             	sub    ax,WORD PTR es:[bx]
    a9c6:	c1 e0 0e             	shl    ax,0xe
    a9c9:	48                   	dec    ax
    a9ca:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
    a9cf:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    a9d2:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    a9d5:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    a9d8:	26 8b 47 06          	mov    ax,WORD PTR es:[bx+0x6]
    a9dc:	26 8b 57 04          	mov    dx,WORD PTR es:[bx+0x4]
    a9e0:	2b 56 16             	sub    dx,WORD PTR [bp+0x16]
    a9e3:	1b 46 18             	sbb    ax,WORD PTR [bp+0x18]
    a9e6:	03 56 fe             	add    dx,WORD PTR [bp-0x2]
    a9e9:	15 00 00             	adc    ax,0x0
    a9ec:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
    a9ef:	72 13                	jb     0xaa04
    a9f1:	77 05                	ja     0xa9f8
    a9f3:	3b 56 fa             	cmp    dx,WORD PTR [bp-0x6]
    a9f6:	76 0c                	jbe    0xaa04
    a9f8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    a9fb:	29 46 fa             	sub    WORD PTR [bp-0x6],ax
    a9fe:	83 5e fc 00          	sbb    WORD PTR [bp-0x4],0x0
    aa02:	eb 1a                	jmp    0xaa1e
    aa04:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    aa07:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    aa0a:	26 8b 47 06          	mov    ax,WORD PTR es:[bx+0x6]
    aa0e:	26 8b 57 04          	mov    dx,WORD PTR es:[bx+0x4]
    aa12:	2b 56 16             	sub    dx,WORD PTR [bp+0x16]
    aa15:	1b 46 18             	sbb    ax,WORD PTR [bp+0x18]
    aa18:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    aa1b:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    aa1e:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aa21:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
    aa24:	6b db 07             	imul   bx,bx,0x7
    aa27:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    aa2a:	8b 56 0e             	mov    dx,WORD PTR [bp+0xe]
    aa2d:	89 87 2e da          	mov    WORD PTR [bx-0x25d2],ax
    aa31:	89 97 2c da          	mov    WORD PTR [bx-0x25d4],dx
    aa35:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aa38:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
    aa3b:	6b db 07             	imul   bx,bx,0x7
    aa3e:	c4 9f 2c da          	les    bx,DWORD PTR [bx-0x25d4]
    aa42:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
    aa45:	26 89 07             	mov    WORD PTR es:[bx],ax
    aa48:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aa4b:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
    aa4e:	6b db 07             	imul   bx,bx,0x7
    aa51:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    aa54:	89 87 30 da          	mov    WORD PTR [bx-0x25d0],ax
    aa58:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aa5b:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
    aa5e:	6b db 07             	imul   bx,bx,0x7
    aa61:	c4 76 12             	les    si,DWORD PTR [bp+0x12]
    aa64:	26 8a 04             	mov    al,BYTE PTR es:[si]
    aa67:	88 87 32 da          	mov    BYTE PTR [bx-0x25ce],al
    aa6b:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aa6e:	26 83 3f 00          	cmp    WORD PTR es:[bx],0x0
    aa72:	74 33                	je     0xaaa7
    aa74:	a0 32 da             	mov    al,ds:0xda32
    aa77:	b4 00                	mov    ah,0x0
    aa79:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aa7c:	26 8b 17             	mov    dx,WORD PTR es:[bx]
    aa7f:	2b d0                	sub    dx,ax
    aa81:	c1 e2 0e             	shl    dx,0xe
    aa84:	c4 1e 2c da          	les    bx,DWORD PTR ds:0xda2c
    aa88:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    aa8b:	03 06 30 da          	add    ax,WORD PTR ds:0xda30
    aa8f:	3b d0                	cmp    dx,ax
    aa91:	73 14                	jae    0xaaa7
    aa93:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aa96:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    aa99:	c1 e0 0e             	shl    ax,0xe
    aa9c:	2b 06 30 da          	sub    ax,WORD PTR ds:0xda30
    aaa0:	c4 1e 2c da          	les    bx,DWORD PTR ds:0xda2c
    aaa4:	26 89 07             	mov    WORD PTR es:[bx],ax
    aaa7:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aaaa:	26 83 3f 04          	cmp    WORD PTR es:[bx],0x4
    aaae:	73 0a                	jae    0xaaba
    aab0:	c4 5e 12             	les    bx,DWORD PTR [bp+0x12]
    aab3:	26 83 07 02          	add    WORD PTR es:[bx],0x2
    aab7:	e9 a8 00             	jmp    0xab62
    aaba:	6a 28                	push   0x28
    aabc:	6a 00                	push   0x0
    aabe:	6a 00                	push   0x0
    aac0:	68 00 03             	push   0x300
    aac3:	1e                   	push   ds
    aac4:	68 e8 70             	push   0x70e8
    aac7:	e9 90 00             	jmp    0xab5a
    aaca:	e9 95 00             	jmp    0xab62
    aacd:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    aad0:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    aad3:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
    aad8:	75 73                	jne    0xab4d
    aada:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    aadd:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    aae0:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
    aae4:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    aae7:	8b 4e 18             	mov    cx,WORD PTR [bp+0x18]
    aaea:	8b 5e 16             	mov    bx,WORD PTR [bp+0x16]
    aaed:	9a 77 14 00 00       	call   0x0:0x1477
    aaf2:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
    aaf5:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
    aaf9:	26 89 07             	mov    WORD PTR es:[bx],ax
    aafc:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
    aaff:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    ab02:	25 ff 3f             	and    ax,0x3fff
    ab05:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    ab08:	b8 ff ff             	mov    ax,0xffff
    ab0b:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    ab0e:	33 d2                	xor    dx,dx
    ab10:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    ab13:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    ab16:	26 8b 4f 06          	mov    cx,WORD PTR es:[bx+0x6]
    ab1a:	26 8b 5f 04          	mov    bx,WORD PTR es:[bx+0x4]
    ab1e:	2b 5e 16             	sub    bx,WORD PTR [bp+0x16]
    ab21:	1b 4e 18             	sbb    cx,WORD PTR [bp+0x18]
    ab24:	3b d1                	cmp    dx,cx
    ab26:	72 15                	jb     0xab3d
    ab28:	77 04                	ja     0xab2e
    ab2a:	3b c3                	cmp    ax,bx
    ab2c:	76 0f                	jbe    0xab3d
    ab2e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
    ab31:	26 c4 1f             	les    bx,DWORD PTR es:[bx]
    ab34:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
    ab38:	2b 46 16             	sub    ax,WORD PTR [bp+0x16]
    ab3b:	eb 06                	jmp    0xab43
    ab3d:	b8 ff ff             	mov    ax,0xffff
    ab40:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    ab43:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
    ab48:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    ab4b:	eb 15                	jmp    0xab62
    ab4d:	6a 32                	push   0x32
    ab4f:	6a 00                	push   0x0
    ab51:	6a 00                	push   0x0
    ab53:	68 05 03             	push   0x305
    ab56:	1e                   	push   ds
    ab57:	68 fc 70             	push   0x70fc
    ab5a:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    ab5f:	83 c4 0c             	add    sp,0xc
    ab62:	c4 5e 0e             	les    bx,DWORD PTR [bp+0xe]
    ab65:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    ab68:	33 d2                	xor    dx,dx
    ab6a:	3b 56 fc             	cmp    dx,WORD PTR [bp-0x4]
    ab6d:	77 0f                	ja     0xab7e
    ab6f:	72 05                	jb     0xab76
    ab71:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
    ab74:	73 08                	jae    0xab7e
    ab76:	c4 5e 0e             	les    bx,DWORD PTR [bp+0xe]
    ab79:	26 8b 07             	mov    ax,WORD PTR es:[bx]
    ab7c:	eb 03                	jmp    0xab81
    ab7e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
    ab81:	c4 5e 0e             	les    bx,DWORD PTR [bp+0xe]
    ab84:	26 89 07             	mov    WORD PTR es:[bx],ax
    ab87:	5e                   	pop    si
    ab88:	c9                   	leave
    ab89:	cb                   	retf
    ab8a:	c8 04 00 00          	enter  0x4,0x0
    ab8e:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
    ab91:	b4 00                	mov    ah,0x0
    ab93:	c1 e0 03             	shl    ax,0x3
    ab96:	ba e0 16             	mov    dx,0x16e0
    ab99:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
    ab9c:	8e c2                	mov    es,dx
    ab9e:	87 d8                	xchg   ax,bx
    aba0:	26 89 87 9b e2       	mov    WORD PTR es:[bx-0x1d65],ax
    aba5:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
    aba8:	b4 00                	mov    ah,0x0
    abaa:	c1 e0 03             	shl    ax,0x3
    abad:	ba e0 16             	mov    dx,0x16e0
    abb0:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
    abb3:	8e c2                	mov    es,dx
    abb5:	87 d8                	xchg   ax,bx
    abb7:	26 89 87 9d e2       	mov    WORD PTR es:[bx-0x1d63],ax
    abbc:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
    abbf:	b4 00                	mov    ah,0x0
    abc1:	c1 e0 03             	shl    ax,0x3
    abc4:	ba e0 16             	mov    dx,0x16e0
    abc7:	8b d8                	mov    bx,ax
    abc9:	8e c2                	mov    es,dx
    abcb:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    abd0:	99                   	cwd
    abd1:	8a 5e 06             	mov    bl,BYTE PTR [bp+0x6]
    abd4:	b7 00                	mov    bh,0x0
    abd6:	c1 e3 03             	shl    bx,0x3
    abd9:	b9 e0 16             	mov    cx,0x16e0
    abdc:	8e c1                	mov    es,cx
    abde:	50                   	push   ax
    abdf:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
    abe4:	52                   	push   dx
    abe5:	99                   	cwd
    abe6:	59                   	pop    cx
    abe7:	5b                   	pop    bx
    abe8:	9a 42 12 00 00       	call   0x0:0x1242
    abed:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
    abf0:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    abf3:	80 7e 0c 02          	cmp    BYTE PTR [bp+0xc],0x2
    abf7:	75 47                	jne    0xac40
    abf9:	6a 00                	push   0x0
    abfb:	0e                   	push   cs
    abfc:	e8 8d f5             	call   0xa18c
    abff:	59                   	pop    cx
    ac00:	3b 56 fe             	cmp    dx,WORD PTR [bp-0x2]
    ac03:	72 0d                	jb     0xac12
    ac05:	75 05                	jne    0xac0c
    ac07:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
    ac0a:	72 06                	jb     0xac12
    ac0c:	c6 46 0c 00          	mov    BYTE PTR [bp+0xc],0x0
    ac10:	eb 2e                	jmp    0xac40
    ac12:	6a 01                	push   0x1
    ac14:	0e                   	push   cs
    ac15:	e8 74 f5             	call   0xa18c
    ac18:	59                   	pop    cx
    ac19:	3b 56 fe             	cmp    dx,WORD PTR [bp-0x2]
    ac1c:	72 0d                	jb     0xac2b
    ac1e:	75 05                	jne    0xac25
    ac20:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
    ac23:	72 06                	jb     0xac2b
    ac25:	c6 46 0c 01          	mov    BYTE PTR [bp+0xc],0x1
    ac29:	eb 15                	jmp    0xac40
    ac2b:	6a ff                	push   0xffff
    ac2d:	1e                   	push   ds
    ac2e:	68 24 71             	push   0x7124
    ac31:	68 12 03             	push   0x312
    ac34:	1e                   	push   ds
    ac35:	68 10 71             	push   0x7110
    ac38:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    ac3d:	83 c4 0c             	add    sp,0xc
    ac40:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
    ac43:	50                   	push   ax
    ac44:	ff 76 fe             	push   WORD PTR [bp-0x2]
    ac47:	ff 76 fc             	push   WORD PTR [bp-0x4]
    ac4a:	0e                   	push   cs
    ac4b:	e8 56 f2             	call   0x9ea4
    ac4e:	83 c4 06             	add    sp,0x6
    ac51:	8a 5e 06             	mov    bl,BYTE PTR [bp+0x6]
    ac54:	b7 00                	mov    bh,0x0
    ac56:	c1 e3 03             	shl    bx,0x3
    ac59:	b9 e0 16             	mov    cx,0x16e0
    ac5c:	8e c1                	mov    es,cx
    ac5e:	26 89 97 a1 e2       	mov    WORD PTR es:[bx-0x1d5f],dx
    ac63:	26 89 87 9f e2       	mov    WORD PTR es:[bx-0x1d61],ax
    ac68:	c9                   	leave
    ac69:	cb                   	retf
    ac6a:	c8 08 00 00          	enter  0x8,0x0
    ac6e:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
    ac72:	c6 46 fe 00          	mov    BYTE PTR [bp-0x2],0x0
    ac76:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
    ac79:	25 07 00             	and    ax,0x7
    ac7c:	8b 56 18             	mov    dx,WORD PTR [bp+0x18]
    ac7f:	83 e2 07             	and    dx,0x7
    ac82:	3b c2                	cmp    ax,dx
    ac84:	74 07                	je     0xac8d
    ac86:	33 d2                	xor    dx,dx
    ac88:	33 c0                	xor    ax,ax
    ac8a:	e9 7b 01             	jmp    0xae08
    ac8d:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
    ac90:	d1 e8                	shr    ax,1
    ac92:	50                   	push   ax
    ac93:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    ac96:	5a                   	pop    dx
    ac97:	f7 ea                	imul   dx
    ac99:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
    ac9c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
    ac9f:	03 d8                	add    bx,ax
    aca1:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
    aca4:	c1 e8 03             	shr    ax,0x3
    aca7:	03 d8                	add    bx,ax
    aca9:	89 56 08             	mov    WORD PTR [bp+0x8],dx
    acac:	89 5e 06             	mov    WORD PTR [bp+0x6],bx
    acaf:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
    acb2:	c1 e8 03             	shr    ax,0x3
    acb5:	50                   	push   ax
    acb6:	8b 46 1a             	mov    ax,WORD PTR [bp+0x1a]
    acb9:	5a                   	pop    dx
    acba:	f7 ea                	imul   dx
    acbc:	8b 56 16             	mov    dx,WORD PTR [bp+0x16]
    acbf:	8b 5e 14             	mov    bx,WORD PTR [bp+0x14]
    acc2:	03 5e 18             	add    bx,WORD PTR [bp+0x18]
    acc5:	03 d8                	add    bx,ax
    acc7:	89 56 16             	mov    WORD PTR [bp+0x16],dx
    acca:	89 5e 14             	mov    WORD PTR [bp+0x14],bx
    accd:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
    acd0:	24 07                	and    al,0x7
    acd2:	b1 08                	mov    cl,0x8
    acd4:	2a                   	.byte 0x2a
