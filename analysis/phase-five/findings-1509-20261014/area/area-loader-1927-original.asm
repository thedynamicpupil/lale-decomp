
analysis/phase-five/findings-1509-20261014/area/original-overlay-1670.bin:     file format binary


Disassembly of section .data:

00033837 <.data+0x1927>:
   33837:	55                   	push   bp
   33838:	8b ec                	mov    bp,sp
   3383a:	83 ec 10             	sub    sp,0x10
   3383d:	f7 06 5e 3d 20 00    	test   WORD PTR ds:0x3d5e,0x20
   33843:	74 05                	je     0x3384a
   33845:	9a 66 00 10 01       	call   0x110:0x66
   3384a:	1e                   	push   ds
   3384b:	68 3a 41             	push   0x413a
   3384e:	9a a0 1a 28 00       	call   0x28:0x1aa0
   33853:	83 c4 04             	add    sp,0x4
   33856:	b8 88 01             	mov    ax,0x188
   33859:	8e c0                	mov    es,ax
   3385b:	26 a1 3f e3          	mov    ax,es:0xe33f
   3385f:	26 0b 06 41 e3       	or     ax,WORD PTR es:0xe341
   33864:	74 15                	je     0x3387b
   33866:	1e                   	push   ds
   33867:	68 41 41             	push   0x4141
   3386a:	68 78 04             	push   0x478
   3386d:	68 88 01             	push   0x188
   33870:	68 3f e3             	push   0xe33f
   33873:	9a 2f 02 40 00       	call   0x40:0x22f
   33878:	83 c4 0a             	add    sp,0xa
   3387b:	6a 00                	push   0x0
   3387d:	6a 00                	push   0x0
   3387f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   33882:	6b db 1d             	imul   bx,bx,0x1d
   33885:	b8 88 01             	mov    ax,0x188
   33888:	8e c0                	mov    es,ax
   3388a:	26 ff b7 33 2e       	push   WORD PTR es:[bx+0x2e33]
   3388f:	26 ff b7 31 2e       	push   WORD PTR es:[bx+0x2e31]
   33894:	6a 01                	push   0x1
   33896:	9a 2f 00 48 01       	call   0x148:0x2f
   3389b:	83 c4 0a             	add    sp,0xa
   3389e:	bb 88 01             	mov    bx,0x188
   338a1:	8e c3                	mov    es,bx
   338a3:	26 89 16 41 e3       	mov    WORD PTR es:0xe341,dx
   338a8:	26 a3 3f e3          	mov    es:0xe33f,ax
   338ac:	b8 88 01             	mov    ax,0x188
   338af:	8e c0                	mov    es,ax
   338b1:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   338b6:	26 ff 37             	push   WORD PTR es:[bx]
   338b9:	6a 00                	push   0x0
   338bb:	6a 14                	push   0x14
   338bd:	b8 88 01             	mov    ax,0x188
   338c0:	8e c0                	mov    es,ax
   338c2:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   338c7:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   338cb:	2d 14 00             	sub    ax,0x14
   338ce:	50                   	push   ax
   338cf:	9a 88 06 98 00       	call   0x98:0x688
   338d4:	bb 88 01             	mov    bx,0x188
   338d7:	8e c3                	mov    es,bx
   338d9:	26 89 16 ee b9       	mov    WORD PTR es:0xb9ee,dx
   338de:	26 a3 ec b9          	mov    es:0xb9ec,ax
   338e2:	1e                   	push   ds
   338e3:	68 50 41             	push   0x4150
   338e6:	68 7e 04             	push   0x47e
   338e9:	68 88 01             	push   0x188
   338ec:	68 3b bb             	push   0xbb3b
   338ef:	9a 81 0a 20 00       	call   0x20:0xa81
   338f4:	83 c4 0a             	add    sp,0xa
   338f7:	68 88 01             	push   0x188
   338fa:	68 3b bb             	push   0xbb3b
   338fd:	9a 22 0b 20 00       	call   0x20:0xb22
   33902:	83 c4 04             	add    sp,0x4
   33905:	a1 6b bb             	mov    ax,ds:0xbb6b
   33908:	40                   	inc    ax
   33909:	50                   	push   ax
   3390a:	1e                   	push   ds
   3390b:	68 5f 41             	push   0x415f
   3390e:	16                   	push   ss
   3390f:	8d 46 f0             	lea    ax,[bp-0x10]
   33912:	50                   	push   ax
   33913:	9a b4 48 00 00       	call   0x0:0x48b4
   33918:	83 c4 0a             	add    sp,0xa
   3391b:	b8 88 01             	mov    ax,0x188
   3391e:	8e c0                	mov    es,ax
   33920:	26 a1 4f e3          	mov    ax,es:0xe34f
   33924:	26 0b 06 51 e3       	or     ax,WORD PTR es:0xe351
   33929:	74 15                	je     0x33940
   3392b:	1e                   	push   ds
   3392c:	68 65 41             	push   0x4165
   3392f:	68 88 04             	push   0x488
   33932:	68 88 01             	push   0x188
   33935:	68 4f e3             	push   0xe34f
   33938:	9a 2f 02 40 00       	call   0x40:0x22f
   3393d:	83 c4 0a             	add    sp,0xa
   33940:	6a 00                	push   0x0
   33942:	6a 00                	push   0x0
   33944:	16                   	push   ss
   33945:	8d 46 f0             	lea    ax,[bp-0x10]
   33948:	50                   	push   ax
   33949:	6a 01                	push   0x1
   3394b:	9a 2f 00 48 01       	call   0x148:0x2f
   33950:	83 c4 0a             	add    sp,0xa
   33953:	bb 88 01             	mov    bx,0x188
   33956:	8e c3                	mov    es,bx
   33958:	26 89 16 51 e3       	mov    WORD PTR es:0xe351,dx
   3395d:	26 a3 4f e3          	mov    es:0xe34f,ax
   33961:	b8 88 01             	mov    ax,0x188
   33964:	8e c0                	mov    es,ax
   33966:	26 c4 1e ec b9       	les    bx,DWORD PTR es:0xb9ec
   3396b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3396e:	ba 88 01             	mov    dx,0x188
   33971:	8e c2                	mov    es,dx
   33973:	26 a2 eb b9          	mov    es:0xb9eb,al
   33977:	b8 88 01             	mov    ax,0x188
   3397a:	8e c0                	mov    es,ax
   3397c:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33981:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33985:	33 c9                	xor    cx,cx
   33987:	bb 01 00             	mov    bx,0x1
   3398a:	9a 77 14 00 00       	call   0x0:0x1477
   3398f:	8b d8                	mov    bx,ax
   33991:	8e c2                	mov    es,dx
   33993:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   33996:	ba 88 01             	mov    dx,0x188
   33999:	8e c2                	mov    es,dx
   3399b:	26 a2 ea b9          	mov    es:0xb9ea,al
   3399f:	b8 88 01             	mov    ax,0x188
   339a2:	8e c0                	mov    es,ax
   339a4:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   339a9:	26 a1 ec b9          	mov    ax,es:0xb9ec
   339ad:	33 c9                	xor    cx,cx
   339af:	bb 02 00             	mov    bx,0x2
   339b2:	9a 77 14 00 00       	call   0x0:0x1477
   339b7:	8b d8                	mov    bx,ax
   339b9:	8e c2                	mov    es,dx
   339bb:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   339be:	b4 00                	mov    ah,0x0
   339c0:	a3 86 ba             	mov    ds:0xba86,ax
   339c3:	80 7e 08 00          	cmp    BYTE PTR [bp+0x8],0x0
   339c7:	75 03                	jne    0x339cc
   339c9:	e9 f9 01             	jmp    0x33bc5
   339cc:	b8 88 01             	mov    ax,0x188
   339cf:	8e c0                	mov    es,ax
   339d1:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   339d6:	26 a1 ec b9          	mov    ax,es:0xb9ec
   339da:	33 c9                	xor    cx,cx
   339dc:	bb 07 00             	mov    bx,0x7
   339df:	9a 77 14 00 00       	call   0x0:0x1477
   339e4:	8b d8                	mov    bx,ax
   339e6:	8e c2                	mov    es,dx
   339e8:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   339eb:	b4 00                	mov    ah,0x0
   339ed:	48                   	dec    ax
   339ee:	ba 88 01             	mov    dx,0x188
   339f1:	8e c2                	mov    es,dx
   339f3:	26 a3 f3 b9          	mov    es:0xb9f3,ax
   339f7:	b8 88 01             	mov    ax,0x188
   339fa:	8e c0                	mov    es,ax
   339fc:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33a01:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33a05:	33 c9                	xor    cx,cx
   33a07:	bb 08 00             	mov    bx,0x8
   33a0a:	9a 77 14 00 00       	call   0x0:0x1477
   33a0f:	8b d8                	mov    bx,ax
   33a11:	8e c2                	mov    es,dx
   33a13:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   33a16:	b4 00                	mov    ah,0x0
   33a18:	48                   	dec    ax
   33a19:	ba 88 01             	mov    dx,0x188
   33a1c:	8e c2                	mov    es,dx
   33a1e:	26 a3 f1 b9          	mov    es:0xb9f1,ax
   33a22:	b8 88 01             	mov    ax,0x188
   33a25:	8e c0                	mov    es,ax
   33a27:	26 a0 eb b9          	mov    al,es:0xb9eb
   33a2b:	b4 00                	mov    ah,0x0
   33a2d:	ba 88 01             	mov    dx,0x188
   33a30:	8e c2                	mov    es,dx
   33a32:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   33a37:	42                   	inc    dx
   33a38:	3b c2                	cmp    ax,dx
   33a3a:	7d 0c                	jge    0x33a48
   33a3c:	b8 88 01             	mov    ax,0x188
   33a3f:	8e c0                	mov    es,ax
   33a41:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   33a45:	48                   	dec    ax
   33a46:	eb 0a                	jmp    0x33a52
   33a48:	b8 88 01             	mov    ax,0x188
   33a4b:	8e c0                	mov    es,ax
   33a4d:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   33a51:	40                   	inc    ax
   33a52:	a3 51 bb             	mov    ds:0xbb51,ax
   33a55:	b8 88 01             	mov    ax,0x188
   33a58:	8e c0                	mov    es,ax
   33a5a:	26 a0 ea b9          	mov    al,es:0xb9ea
   33a5e:	b4 00                	mov    ah,0x0
   33a60:	ba 88 01             	mov    dx,0x188
   33a63:	8e c2                	mov    es,dx
   33a65:	26 8b 16 f1 b9       	mov    dx,WORD PTR es:0xb9f1
   33a6a:	42                   	inc    dx
   33a6b:	3b c2                	cmp    ax,dx
   33a6d:	7d 0c                	jge    0x33a7b
   33a6f:	b8 88 01             	mov    ax,0x188
   33a72:	8e c0                	mov    es,ax
   33a74:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   33a78:	48                   	dec    ax
   33a79:	eb 0a                	jmp    0x33a85
   33a7b:	b8 88 01             	mov    ax,0x188
   33a7e:	8e c0                	mov    es,ax
   33a80:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   33a84:	40                   	inc    ax
   33a85:	a3 4f bb             	mov    ds:0xbb4f,ax
   33a88:	b8 88 01             	mov    ax,0x188
   33a8b:	8e c0                	mov    es,ax
   33a8d:	26 83 3e f1 b9 03    	cmp    WORD PTR es:0xb9f1,0x3
   33a93:	7d 0d                	jge    0x33aa2
   33a95:	b8 88 01             	mov    ax,0x188
   33a98:	8e c0                	mov    es,ax
   33a9a:	26 c6 06 f0 b9 02    	mov    BYTE PTR es:0xb9f0,0x2
   33aa0:	eb 4c                	jmp    0x33aee
   33aa2:	b8 88 01             	mov    ax,0x188
   33aa5:	8e c0                	mov    es,ax
   33aa7:	26 83 3e f3 b9 03    	cmp    WORD PTR es:0xb9f3,0x3
   33aad:	7d 0d                	jge    0x33abc
   33aaf:	b8 88 01             	mov    ax,0x188
   33ab2:	8e c0                	mov    es,ax
   33ab4:	26 c6 06 f0 b9 01    	mov    BYTE PTR es:0xb9f0,0x1
   33aba:	eb 32                	jmp    0x33aee
   33abc:	b8 88 01             	mov    ax,0x188
   33abf:	8e c0                	mov    es,ax
   33ac1:	26 a0 ea b9          	mov    al,es:0xb9ea
   33ac5:	b4 00                	mov    ah,0x0
   33ac7:	05 fd ff             	add    ax,0xfffd
   33aca:	ba 88 01             	mov    dx,0x188
   33acd:	8e c2                	mov    es,dx
   33acf:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   33ad4:	7d 0d                	jge    0x33ae3
   33ad6:	b8 88 01             	mov    ax,0x188
   33ad9:	8e c0                	mov    es,ax
   33adb:	26 c6 06 f0 b9 00    	mov    BYTE PTR es:0xb9f0,0x0
   33ae1:	eb 0b                	jmp    0x33aee
   33ae3:	b8 88 01             	mov    ax,0x188
   33ae6:	8e c0                	mov    es,ax
   33ae8:	26 c6 06 f0 b9 03    	mov    BYTE PTR es:0xb9f0,0x3
   33aee:	b8 88 01             	mov    ax,0x188
   33af1:	b2 00                	mov    dl,0x0
   33af3:	8e c0                	mov    es,ax
   33af5:	26 88 16 ac bb       	mov    BYTE PTR es:0xbbac,dl
   33afa:	8a c2                	mov    al,dl
   33afc:	ba 88 01             	mov    dx,0x188
   33aff:	8e c2                	mov    es,dx
   33b01:	26 a2 b7 bb          	mov    es:0xbbb7,al
   33b05:	6a 00                	push   0x0
   33b07:	68 00 80             	push   0x8000
   33b0a:	9a 79 17 00 00       	call   0x0:0x1779
   33b0f:	99                   	cwd
   33b10:	50                   	push   ax
   33b11:	52                   	push   dx
   33b12:	33 d2                	xor    dx,dx
   33b14:	b8 64 00             	mov    ax,0x64
   33b17:	59                   	pop    cx
   33b18:	5b                   	pop    bx
   33b19:	9a 42 12 00 00       	call   0x0:0x1242
   33b1e:	52                   	push   dx
   33b1f:	50                   	push   ax
   33b20:	9a df 12 00 00       	call   0x0:0x12df
   33b25:	04 65                	add    al,0x65
   33b27:	ba 88 01             	mov    dx,0x188
   33b2a:	8e c2                	mov    es,dx
   33b2c:	26 a2 ab bb          	mov    es:0xbbab,al
   33b30:	a1 6b bb             	mov    ax,ds:0xbb6b
   33b33:	48                   	dec    ax
   33b34:	3d 0c 00             	cmp    ax,0xc
   33b37:	7c 03                	jl     0x33b3c
   33b39:	e9 89 00             	jmp    0x33bc5
   33b3c:	a1 6b bb             	mov    ax,ds:0xbb6b
   33b3f:	48                   	dec    ax
   33b40:	7e 06                	jle    0x33b48
   33b42:	a1 6b bb             	mov    ax,ds:0xbb6b
   33b45:	48                   	dec    ax
   33b46:	eb 02                	jmp    0x33b4a
   33b48:	33 c0                	xor    ax,ax
   33b4a:	ba 88 01             	mov    dx,0x188
   33b4d:	8e c2                	mov    es,dx
   33b4f:	26 a3 88 bb          	mov    es:0xbb88,ax
   33b53:	b8 88 01             	mov    ax,0x188
   33b56:	8e c0                	mov    es,ax
   33b58:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33b5d:	c1 e3 03             	shl    bx,0x3
   33b60:	b8 88 01             	mov    ax,0x188
   33b63:	8e c0                	mov    es,ax
   33b65:	26 8b 87 86 4a       	mov    ax,WORD PTR es:[bx+0x4a86]
   33b6a:	ba 88 01             	mov    dx,0x188
   33b6d:	8e c2                	mov    es,dx
   33b6f:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33b74:	c1 e3 03             	shl    bx,0x3
   33b77:	ba 88 01             	mov    dx,0x188
   33b7a:	8e c2                	mov    es,dx
   33b7c:	26 03 87 8a 4a       	add    ax,WORD PTR es:[bx+0x4a8a]
   33b81:	d1 f8                	sar    ax,1
   33b83:	ba 88 01             	mov    dx,0x188
   33b86:	8e c2                	mov    es,dx
   33b88:	26 a3 8a bb          	mov    es:0xbb8a,ax
   33b8c:	b8 88 01             	mov    ax,0x188
   33b8f:	8e c0                	mov    es,ax
   33b91:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33b96:	c1 e3 03             	shl    bx,0x3
   33b99:	b8 88 01             	mov    ax,0x188
   33b9c:	8e c0                	mov    es,ax
   33b9e:	26 8b 87 88 4a       	mov    ax,WORD PTR es:[bx+0x4a88]
   33ba3:	ba 88 01             	mov    dx,0x188
   33ba6:	8e c2                	mov    es,dx
   33ba8:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33bad:	c1 e3 03             	shl    bx,0x3
   33bb0:	ba 88 01             	mov    dx,0x188
   33bb3:	8e c2                	mov    es,dx
   33bb5:	26 03 87 8c 4a       	add    ax,WORD PTR es:[bx+0x4a8c]
   33bba:	d1 f8                	sar    ax,1
   33bbc:	ba 88 01             	mov    dx,0x188
   33bbf:	8e c2                	mov    es,dx
   33bc1:	26 a3 88 bb          	mov    es:0xbb88,ax
   33bc5:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33bca:	e9 3d 01             	jmp    0x33d0a
   33bcd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33bd0:	05 03 00             	add    ax,0x3
   33bd3:	99                   	cwd
   33bd4:	bb 88 01             	mov    bx,0x188
   33bd7:	8e c3                	mov    es,bx
   33bd9:	50                   	push   ax
   33bda:	52                   	push   dx
   33bdb:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33be0:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33be4:	59                   	pop    cx
   33be5:	5b                   	pop    bx
   33be6:	9a 77 14 00 00       	call   0x0:0x1477
   33beb:	8b d8                	mov    bx,ax
   33bed:	8e c2                	mov    es,dx
   33bef:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   33bf2:	b4 00                	mov    ah,0x0
   33bf4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33bf7:	d1 e3                	shl    bx,1
   33bf9:	ba 88 01             	mov    dx,0x188
   33bfc:	8e c2                	mov    es,dx
   33bfe:	26 89 87 10 9f       	mov    WORD PTR es:[bx-0x60f0],ax
   33c03:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c06:	6b db 0e             	imul   bx,bx,0xe
   33c09:	b8 88 01             	mov    ax,0x188
   33c0c:	8e c0                	mov    es,ax
   33c0e:	26 c7 87 e8 b3 01 00 	mov    WORD PTR es:[bx-0x4c18],0x1
   33c15:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c18:	6b db 0e             	imul   bx,bx,0xe
   33c1b:	b8 88 01             	mov    ax,0x188
   33c1e:	8e c0                	mov    es,ax
   33c20:	26 c7 87 ea b3 06 00 	mov    WORD PTR es:[bx-0x4c16],0x6
   33c27:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c2a:	6b db 0e             	imul   bx,bx,0xe
   33c2d:	b8 88 01             	mov    ax,0x188
   33c30:	8e c0                	mov    es,ax
   33c32:	26 c7 87 ec b3 00 00 	mov    WORD PTR es:[bx-0x4c14],0x0
   33c39:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c3c:	6b db 0e             	imul   bx,bx,0xe
   33c3f:	b8 88 01             	mov    ax,0x188
   33c42:	ba c8 00             	mov    dx,0xc8
   33c45:	8e c0                	mov    es,ax
   33c47:	26 89 97 f0 b3       	mov    WORD PTR es:[bx-0x4c10],dx
   33c4c:	8b c2                	mov    ax,dx
   33c4e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c51:	6b db 0e             	imul   bx,bx,0xe
   33c54:	ba 88 01             	mov    dx,0x188
   33c57:	8e c2                	mov    es,dx
   33c59:	26 89 87 ee b3       	mov    WORD PTR es:[bx-0x4c12],ax
   33c5e:	ff 76 fe             	push   WORD PTR [bp-0x2]
   33c61:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c64:	d1 e3                	shl    bx,1
   33c66:	b8 88 01             	mov    ax,0x188
   33c69:	8e c0                	mov    es,ax
   33c6b:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33c70:	6b c0 0d             	imul   ax,ax,0xd
   33c73:	05 78 29             	add    ax,0x2978
   33c76:	68 88 01             	push   0x188
   33c79:	50                   	push   ax
   33c7a:	9a 57 00 10 01       	call   0x110:0x57
   33c7f:	83 c4 06             	add    sp,0x6
   33c82:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c85:	c1 e3 03             	shl    bx,0x3
   33c88:	b8 88 01             	mov    ax,0x188
   33c8b:	8e c0                	mov    es,ax
   33c8d:	26 8b 87 5f e3       	mov    ax,WORD PTR es:[bx-0x1ca1]
   33c92:	26 0b 87 61 e3       	or     ax,WORD PTR es:[bx-0x1c9f]
   33c97:	74 1c                	je     0x33cb5
   33c99:	1e                   	push   ds
   33c9a:	68 74 41             	push   0x4174
   33c9d:	68 b5 04             	push   0x4b5
   33ca0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33ca3:	c1 e0 03             	shl    ax,0x3
   33ca6:	05 5f e3             	add    ax,0xe35f
   33ca9:	68 88 01             	push   0x188
   33cac:	50                   	push   ax
   33cad:	9a 2f 02 40 00       	call   0x40:0x22f
   33cb2:	83 c4 0a             	add    sp,0xa
   33cb5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33cb8:	05 03 00             	add    ax,0x3
   33cbb:	99                   	cwd
   33cbc:	bb 88 01             	mov    bx,0x188
   33cbf:	8e c3                	mov    es,bx
   33cc1:	50                   	push   ax
   33cc2:	52                   	push   dx
   33cc3:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33cc8:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33ccc:	59                   	pop    cx
   33ccd:	5b                   	pop    bx
   33cce:	9a 77 14 00 00       	call   0x0:0x1477
   33cd3:	8b d8                	mov    bx,ax
   33cd5:	8e c2                	mov    es,dx
   33cd7:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   33cdb:	74 2a                	je     0x33d07
   33cdd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33ce0:	05 18 00             	add    ax,0x18
   33ce3:	50                   	push   ax
   33ce4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ce7:	d1 e3                	shl    bx,1
   33ce9:	b8 88 01             	mov    ax,0x188
   33cec:	8e c0                	mov    es,ax
   33cee:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33cf3:	6b c0 0d             	imul   ax,ax,0xd
   33cf6:	05 78 29             	add    ax,0x2978
   33cf9:	68 88 01             	push   0x188
   33cfc:	50                   	push   ax
   33cfd:	6a 01                	push   0x1
   33cff:	9a 20 00 48 01       	call   0x148:0x20
   33d04:	83 c4 08             	add    sp,0x8
   33d07:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33d0a:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   33d0e:	7d 03                	jge    0x33d13
   33d10:	e9 ba fe             	jmp    0x33bcd
   33d13:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33d18:	e9 0b 01             	jmp    0x33e26
   33d1b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d1e:	6b db 0e             	imul   bx,bx,0xe
   33d21:	b8 88 01             	mov    ax,0x188
   33d24:	8e c0                	mov    es,ax
   33d26:	26 c7 87 20 b4 01 00 	mov    WORD PTR es:[bx-0x4be0],0x1
   33d2d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d30:	6b db 0e             	imul   bx,bx,0xe
   33d33:	b8 88 01             	mov    ax,0x188
   33d36:	8e c0                	mov    es,ax
   33d38:	26 c7 87 22 b4 06 00 	mov    WORD PTR es:[bx-0x4bde],0x6
   33d3f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d42:	6b db 0e             	imul   bx,bx,0xe
   33d45:	b8 88 01             	mov    ax,0x188
   33d48:	8e c0                	mov    es,ax
   33d4a:	26 c7 87 24 b4 eb 00 	mov    WORD PTR es:[bx-0x4bdc],0xeb
   33d51:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d54:	6b db 0e             	imul   bx,bx,0xe
   33d57:	b8 88 01             	mov    ax,0x188
   33d5a:	ba c8 00             	mov    dx,0xc8
   33d5d:	8e c0                	mov    es,ax
   33d5f:	26 89 97 28 b4       	mov    WORD PTR es:[bx-0x4bd8],dx
   33d64:	8b c2                	mov    ax,dx
   33d66:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d69:	6b db 0e             	imul   bx,bx,0xe
   33d6c:	ba 88 01             	mov    dx,0x188
   33d6f:	8e c2                	mov    es,dx
   33d71:	26 89 87 26 b4       	mov    WORD PTR es:[bx-0x4bda],ax
   33d76:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33d79:	05 04 00             	add    ax,0x4
   33d7c:	50                   	push   ax
   33d7d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d80:	d1 e3                	shl    bx,1
   33d82:	b8 88 01             	mov    ax,0x188
   33d85:	8e c0                	mov    es,ax
   33d87:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33d8c:	6b c0 0d             	imul   ax,ax,0xd
   33d8f:	05 fa 29             	add    ax,0x29fa
   33d92:	68 88 01             	push   0x188
   33d95:	50                   	push   ax
   33d96:	9a 57 00 10 01       	call   0x110:0x57
   33d9b:	83 c4 06             	add    sp,0x6
   33d9e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33da1:	c1 e3 03             	shl    bx,0x3
   33da4:	b8 88 01             	mov    ax,0x188
   33da7:	8e c0                	mov    es,ax
   33da9:	26 8b 87 7f e3       	mov    ax,WORD PTR es:[bx-0x1c81]
   33dae:	26 0b 87 81 e3       	or     ax,WORD PTR es:[bx-0x1c7f]
   33db3:	74 1c                	je     0x33dd1
   33db5:	1e                   	push   ds
   33db6:	68 83 41             	push   0x4183
   33db9:	68 c3 04             	push   0x4c3
   33dbc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33dbf:	c1 e0 03             	shl    ax,0x3
   33dc2:	05 7f e3             	add    ax,0xe37f
   33dc5:	68 88 01             	push   0x188
   33dc8:	50                   	push   ax
   33dc9:	9a 2f 02 40 00       	call   0x40:0x22f
   33dce:	83 c4 0a             	add    sp,0xa
   33dd1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33dd4:	05 03 00             	add    ax,0x3
   33dd7:	99                   	cwd
   33dd8:	bb 88 01             	mov    bx,0x188
   33ddb:	8e c3                	mov    es,bx
   33ddd:	50                   	push   ax
   33dde:	52                   	push   dx
   33ddf:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33de4:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33de8:	59                   	pop    cx
   33de9:	5b                   	pop    bx
   33dea:	9a 77 14 00 00       	call   0x0:0x1477
   33def:	8b d8                	mov    bx,ax
   33df1:	8e c2                	mov    es,dx
   33df3:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   33df7:	74 2a                	je     0x33e23
   33df9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33dfc:	05 1c 00             	add    ax,0x1c
   33dff:	50                   	push   ax
   33e00:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e03:	d1 e3                	shl    bx,1
   33e05:	b8 88 01             	mov    ax,0x188
   33e08:	8e c0                	mov    es,ax
   33e0a:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33e0f:	6b c0 0d             	imul   ax,ax,0xd
   33e12:	05 fa 29             	add    ax,0x29fa
   33e15:	68 88 01             	push   0x188
   33e18:	50                   	push   ax
   33e19:	6a 01                	push   0x1
   33e1b:	9a 20 00 48 01       	call   0x148:0x20
   33e20:	83 c4 08             	add    sp,0x8
   33e23:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33e26:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   33e2a:	7d 03                	jge    0x33e2f
   33e2c:	e9 ec fe             	jmp    0x33d1b
   33e2f:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33e34:	eb 72                	jmp    0x33ea8
   33e36:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e39:	c1 e3 03             	shl    bx,0x3
   33e3c:	b8 88 01             	mov    ax,0x188
   33e3f:	8e c0                	mov    es,ax
   33e41:	26 8b 87 9f e3       	mov    ax,WORD PTR es:[bx-0x1c61]
   33e46:	26 0b 87 a1 e3       	or     ax,WORD PTR es:[bx-0x1c5f]
   33e4b:	74 1c                	je     0x33e69
   33e4d:	1e                   	push   ds
   33e4e:	68 92 41             	push   0x4192
   33e51:	68 d0 04             	push   0x4d0
   33e54:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33e57:	c1 e0 03             	shl    ax,0x3
   33e5a:	05 9f e3             	add    ax,0xe39f
   33e5d:	68 88 01             	push   0x188
   33e60:	50                   	push   ax
   33e61:	9a 2f 02 40 00       	call   0x40:0x22f
   33e66:	83 c4 0a             	add    sp,0xa
   33e69:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e6c:	d1 e3                	shl    bx,1
   33e6e:	b8 88 01             	mov    ax,0x188
   33e71:	8e c0                	mov    es,ax
   33e73:	26 83 bf 10 9f 00    	cmp    WORD PTR es:[bx-0x60f0],0x0
   33e79:	74 2a                	je     0x33ea5
   33e7b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33e7e:	05 20 00             	add    ax,0x20
   33e81:	50                   	push   ax
   33e82:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e85:	d1 e3                	shl    bx,1
   33e87:	b8 88 01             	mov    ax,0x188
   33e8a:	8e c0                	mov    es,ax
   33e8c:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33e91:	6b c0 0d             	imul   ax,ax,0xd
   33e94:	05 7c 2a             	add    ax,0x2a7c
   33e97:	68 88 01             	push   0x188
   33e9a:	50                   	push   ax
   33e9b:	6a 01                	push   0x1
   33e9d:	9a 20 00 48 01       	call   0x148:0x20
   33ea2:	83 c4 08             	add    sp,0x8
   33ea5:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33ea8:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   33eac:	7c 88                	jl     0x33e36
   33eae:	9a 61 00 10 01       	call   0x110:0x61
   33eb3:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33eb8:	e9 2e 01             	jmp    0x33fe9
   33ebb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ebe:	c1 e3 03             	shl    bx,0x3
   33ec1:	b8 88 01             	mov    ax,0x188
   33ec4:	8e c0                	mov    es,ax
   33ec6:	26 8b 87 bf e3       	mov    ax,WORD PTR es:[bx-0x1c41]
   33ecb:	26 0b 87 c1 e3       	or     ax,WORD PTR es:[bx-0x1c3f]
   33ed0:	74 1c                	je     0x33eee
   33ed2:	1e                   	push   ds
   33ed3:	68 a1 41             	push   0x41a1
   33ed6:	68 d9 04             	push   0x4d9
   33ed9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33edc:	c1 e0 03             	shl    ax,0x3
   33edf:	05 bf e3             	add    ax,0xe3bf
   33ee2:	68 88 01             	push   0x188
   33ee5:	50                   	push   ax
   33ee6:	9a 2f 02 40 00       	call   0x40:0x22f
   33eeb:	83 c4 0a             	add    sp,0xa
   33eee:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ef1:	6b db 0d             	imul   bx,bx,0xd
   33ef4:	b8 88 01             	mov    ax,0x188
   33ef7:	8e c0                	mov    es,ax
   33ef9:	26 80 bf 18 2b 00    	cmp    BYTE PTR es:[bx+0x2b18],0x0
   33eff:	74 21                	je     0x33f22
   33f01:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f04:	05 24 00             	add    ax,0x24
   33f07:	50                   	push   ax
   33f08:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f0b:	6b c0 0d             	imul   ax,ax,0xd
   33f0e:	05 18 2b             	add    ax,0x2b18
   33f11:	68 88 01             	push   0x188
   33f14:	50                   	push   ax
   33f15:	6a 01                	push   0x1
   33f17:	9a 20 00 48 01       	call   0x148:0x20
   33f1c:	83 c4 08             	add    sp,0x8
   33f1f:	e9 c4 00             	jmp    0x33fe6
   33f22:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f25:	bb 05 00             	mov    bx,0x5
   33f28:	99                   	cwd
   33f29:	f7 fb                	idiv   bx
   33f2b:	3d 01 00             	cmp    ax,0x1
   33f2e:	7e 05                	jle    0x33f35
   33f30:	b8 02 00             	mov    ax,0x2
   33f33:	eb 03                	jmp    0x33f38
   33f35:	b8 01 00             	mov    ax,0x1
   33f38:	6b c0 05             	imul   ax,ax,0x5
   33f3b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f3e:	83 c3 24             	add    bx,0x24
   33f41:	2b d8                	sub    bx,ax
   33f43:	c1 e3 03             	shl    bx,0x3
   33f46:	b8 88 01             	mov    ax,0x188
   33f49:	8e c0                	mov    es,ax
   33f4b:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
   33f50:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f53:	c1 e3 03             	shl    bx,0x3
   33f56:	ba 88 01             	mov    dx,0x188
   33f59:	8e c2                	mov    es,dx
   33f5b:	26 89 87 bb e3       	mov    WORD PTR es:[bx-0x1c45],ax
   33f60:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f63:	bb 05 00             	mov    bx,0x5
   33f66:	99                   	cwd
   33f67:	f7 fb                	idiv   bx
   33f69:	3d 01 00             	cmp    ax,0x1
   33f6c:	7e 05                	jle    0x33f73
   33f6e:	b8 02 00             	mov    ax,0x2
   33f71:	eb 03                	jmp    0x33f76
   33f73:	b8 01 00             	mov    ax,0x1
   33f76:	6b c0 05             	imul   ax,ax,0x5
   33f79:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f7c:	83 c3 24             	add    bx,0x24
   33f7f:	2b d8                	sub    bx,ax
   33f81:	c1 e3 03             	shl    bx,0x3
   33f84:	b8 88 01             	mov    ax,0x188
   33f87:	8e c0                	mov    es,ax
   33f89:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   33f8e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f91:	c1 e3 03             	shl    bx,0x3
   33f94:	ba 88 01             	mov    dx,0x188
   33f97:	8e c2                	mov    es,dx
   33f99:	26 89 87 bd e3       	mov    WORD PTR es:[bx-0x1c43],ax
   33f9e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33fa1:	bb 05 00             	mov    bx,0x5
   33fa4:	99                   	cwd
   33fa5:	f7 fb                	idiv   bx
   33fa7:	3d 01 00             	cmp    ax,0x1
   33faa:	7e 05                	jle    0x33fb1
   33fac:	b8 02 00             	mov    ax,0x2
   33faf:	eb 03                	jmp    0x33fb4
   33fb1:	b8 01 00             	mov    ax,0x1
   33fb4:	6b c0 05             	imul   ax,ax,0x5
   33fb7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33fba:	83 c3 24             	add    bx,0x24
   33fbd:	2b d8                	sub    bx,ax
   33fbf:	c1 e3 03             	shl    bx,0x3
   33fc2:	b8 88 01             	mov    ax,0x188
   33fc5:	8e c0                	mov    es,ax
   33fc7:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
   33fcc:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
   33fd1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33fd4:	c1 e3 03             	shl    bx,0x3
   33fd7:	b9 88 01             	mov    cx,0x188
   33fda:	8e c1                	mov    es,cx
   33fdc:	26 89 87 c1 e3       	mov    WORD PTR es:[bx-0x1c3f],ax
   33fe1:	26 89 97 bf e3       	mov    WORD PTR es:[bx-0x1c41],dx
   33fe6:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33fe9:	83 7e fe 14          	cmp    WORD PTR [bp-0x2],0x14
   33fed:	7d 03                	jge    0x33ff2
   33fef:	e9 c9 fe             	jmp    0x33ebb
   33ff2:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33ff7:	e9 2b 01             	jmp    0x34125
   33ffa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ffd:	c1 e3 03             	shl    bx,0x3
   34000:	b8 88 01             	mov    ax,0x188
   34003:	8e c0                	mov    es,ax
   34005:	26 8b 87 5f e4       	mov    ax,WORD PTR es:[bx-0x1ba1]
   3400a:	26 0b 87 61 e4       	or     ax,WORD PTR es:[bx-0x1b9f]
   3400f:	74 1c                	je     0x3402d
   34011:	1e                   	push   ds
   34012:	68 b0 41             	push   0x41b0
   34015:	68 e6 04             	push   0x4e6
   34018:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3401b:	c1 e0 03             	shl    ax,0x3
   3401e:	05 5f e4             	add    ax,0xe45f
   34021:	68 88 01             	push   0x188
   34024:	50                   	push   ax
   34025:	9a 2f 02 40 00       	call   0x40:0x22f
   3402a:	83 c4 0a             	add    sp,0xa
   3402d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34030:	6b db 0d             	imul   bx,bx,0xd
   34033:	b8 88 01             	mov    ax,0x188
   34036:	8e c0                	mov    es,ax
   34038:	26 80 bf 1c 2c 00    	cmp    BYTE PTR es:[bx+0x2c1c],0x0
   3403e:	74 21                	je     0x34061
   34040:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34043:	05 38 00             	add    ax,0x38
   34046:	50                   	push   ax
   34047:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3404a:	6b c0 0d             	imul   ax,ax,0xd
   3404d:	05 1c 2c             	add    ax,0x2c1c
   34050:	68 88 01             	push   0x188
   34053:	50                   	push   ax
   34054:	6a 01                	push   0x1
   34056:	9a 20 00 48 01       	call   0x148:0x20
   3405b:	83 c4 08             	add    sp,0x8
   3405e:	e9 c1 00             	jmp    0x34122
   34061:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34064:	bb 02 00             	mov    bx,0x2
   34067:	99                   	cwd
   34068:	f7 fb                	idiv   bx
   3406a:	3d 01 00             	cmp    ax,0x1
   3406d:	7e 05                	jle    0x34074
   3406f:	b8 02 00             	mov    ax,0x2
   34072:	eb 03                	jmp    0x34077
   34074:	b8 01 00             	mov    ax,0x1
   34077:	d1 e0                	shl    ax,1
   34079:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3407c:	83 c3 38             	add    bx,0x38
   3407f:	2b d8                	sub    bx,ax
   34081:	c1 e3 03             	shl    bx,0x3
   34084:	b8 88 01             	mov    ax,0x188
   34087:	8e c0                	mov    es,ax
   34089:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
   3408e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34091:	c1 e3 03             	shl    bx,0x3
   34094:	ba 88 01             	mov    dx,0x188
   34097:	8e c2                	mov    es,dx
   34099:	26 89 87 5b e4       	mov    WORD PTR es:[bx-0x1ba5],ax
   3409e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   340a1:	bb 02 00             	mov    bx,0x2
   340a4:	99                   	cwd
   340a5:	f7 fb                	idiv   bx
   340a7:	3d 01 00             	cmp    ax,0x1
   340aa:	7e 05                	jle    0x340b1
   340ac:	b8 02 00             	mov    ax,0x2
   340af:	eb 03                	jmp    0x340b4
   340b1:	b8 01 00             	mov    ax,0x1
   340b4:	d1 e0                	shl    ax,1
   340b6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   340b9:	83 c3 38             	add    bx,0x38
   340bc:	2b d8                	sub    bx,ax
   340be:	c1 e3 03             	shl    bx,0x3
   340c1:	b8 88 01             	mov    ax,0x188
   340c4:	8e c0                	mov    es,ax
   340c6:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   340cb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   340ce:	c1 e3 03             	shl    bx,0x3
   340d1:	ba 88 01             	mov    dx,0x188
   340d4:	8e c2                	mov    es,dx
   340d6:	26 89 87 5d e4       	mov    WORD PTR es:[bx-0x1ba3],ax
   340db:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   340de:	bb 02 00             	mov    bx,0x2
   340e1:	99                   	cwd
   340e2:	f7 fb                	idiv   bx
   340e4:	3d 01 00             	cmp    ax,0x1
   340e7:	7e 05                	jle    0x340ee
   340e9:	b8 02 00             	mov    ax,0x2
   340ec:	eb 03                	jmp    0x340f1
   340ee:	b8 01 00             	mov    ax,0x1
   340f1:	d1 e0                	shl    ax,1
   340f3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   340f6:	83 c3 38             	add    bx,0x38
   340f9:	2b d8                	sub    bx,ax
   340fb:	c1 e3 03             	shl    bx,0x3
   340fe:	b8 88 01             	mov    ax,0x188
   34101:	8e c0                	mov    es,ax
   34103:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
   34108:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
   3410d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34110:	c1 e3 03             	shl    bx,0x3
   34113:	b9 88 01             	mov    cx,0x188
   34116:	8e c1                	mov    es,cx
   34118:	26 89 87 61 e4       	mov    WORD PTR es:[bx-0x1b9f],ax
   3411d:	26 89 97 5f e4       	mov    WORD PTR es:[bx-0x1ba1],dx
   34122:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   34125:	83 7e fe 08          	cmp    WORD PTR [bp-0x2],0x8
   34129:	7d 03                	jge    0x3412e
   3412b:	e9 cc fe             	jmp    0x33ffa
   3412e:	b8 88 01             	mov    ax,0x188
   34131:	8e c0                	mov    es,ax
   34133:	26 a1 9f e4          	mov    ax,es:0xe49f
   34137:	26 0b 06 a1 e4       	or     ax,WORD PTR es:0xe4a1
   3413c:	74 15                	je     0x34153
   3413e:	1e                   	push   ds
   3413f:	68 bf 41             	push   0x41bf
   34142:	68 f1 04             	push   0x4f1
   34145:	68 88 01             	push   0x188
   34148:	68 9f e4             	push   0xe49f
   3414b:	9a 2f 02 40 00       	call   0x40:0x22f
   34150:	83 c4 0a             	add    sp,0xa
   34153:	6a 40                	push   0x40
   34155:	90                   	nop
   34156:	0e                   	push   cs
   34157:	e8 a9 19             	call   0x35b03
   3415a:	a9 01 00             	test   ax,0x1
   3415d:	74 05                	je     0x34164
   3415f:	b8 01 00             	mov    ax,0x1
   34162:	eb 02                	jmp    0x34166
   34164:	33 c0                	xor    ax,ax
   34166:	6b c0 0d             	imul   ax,ax,0xd
   34169:	05 fe 2a             	add    ax,0x2afe
   3416c:	68 88 01             	push   0x188
   3416f:	50                   	push   ax
   34170:	6a 01                	push   0x1
   34172:	9a 20 00 48 01       	call   0x148:0x20
   34177:	83 c4 08             	add    sp,0x8
   3417a:	90                   	nop
   3417b:	0e                   	push   cs
   3417c:	e8 84 19             	call   0x35b03
   3417f:	a9 01 00             	test   ax,0x1
   34182:	75 03                	jne    0x34187
   34184:	e9 aa 00             	jmp    0x34231
   34187:	b8 88 01             	mov    ax,0x188
   3418a:	8e c0                	mov    es,ax
   3418c:	26 80 3e c2 5b 00    	cmp    BYTE PTR es:0x5bc2,0x0
   34192:	74 71                	je     0x34205
   34194:	68 80 01             	push   0x180
   34197:	6a 00                	push   0x0
   34199:	6a 00                	push   0x0
   3419b:	b8 88 01             	mov    ax,0x188
   3419e:	8e c0                	mov    es,ax
   341a0:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   341a5:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   341aa:	9a 8f 02 e0 01       	call   0x1e0:0x28f
   341af:	83 c4 0a             	add    sp,0xa
   341b2:	1e                   	push   ds
   341b3:	68 ce 41             	push   0x41ce
   341b6:	68 f6 04             	push   0x4f6
   341b9:	68 88 01             	push   0x188
   341bc:	68 26 de             	push   0xde26
   341bf:	9a 81 0a 20 00       	call   0x20:0xa81
   341c4:	83 c4 0a             	add    sp,0xa
   341c7:	6a 00                	push   0x0
   341c9:	b8 88 01             	mov    ax,0x188
   341cc:	8e c0                	mov    es,ax
   341ce:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   341d3:	26 ff 37             	push   WORD PTR es:[bx]
   341d6:	6a 00                	push   0x0
   341d8:	6a 00                	push   0x0
   341da:	68 80 7f             	push   0x7f80
   341dd:	9a 88 06 98 00       	call   0x98:0x688
   341e2:	52                   	push   dx
   341e3:	50                   	push   ax
   341e4:	9a 13 1a 28 00       	call   0x28:0x1a13
   341e9:	83 c4 06             	add    sp,0x6
   341ec:	68 88 01             	push   0x188
   341ef:	68 26 de             	push   0xde26
   341f2:	9a 22 0b 20 00       	call   0x20:0xb22
   341f7:	83 c4 04             	add    sp,0x4
   341fa:	b8 88 01             	mov    ax,0x188
   341fd:	8e c0                	mov    es,ax
   341ff:	26 c6 06 c2 5b 00    	mov    BYTE PTR es:0x5bc2,0x0
   34205:	68 fd 00             	push   0xfd
   34208:	6a 40                	push   0x40
   3420a:	b8 88 01             	mov    ax,0x188
   3420d:	8e c0                	mov    es,ax
   3420f:	26 ff 36 9d e4       	push   WORD PTR es:0xe49d
   34214:	b8 88 01             	mov    ax,0x188
   34217:	8e c0                	mov    es,ax
   34219:	26 ff 36 9b e4       	push   WORD PTR es:0xe49b
   3421e:	6a 00                	push   0x0
   34220:	6a 00                	push   0x0
   34222:	9a 51 0a 30 00       	call   0x30:0xa51
   34227:	83 c4 0c             	add    sp,0xc
   3422a:	80 0e 6d 3d 02       	or     BYTE PTR ds:0x3d6d,0x2
   3422f:	eb 05                	jmp    0x34236
   34231:	80 26 6d 3d fd       	and    BYTE PTR ds:0x3d6d,0xfd
   34236:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   3423a:	6b db 1d             	imul   bx,bx,0x1d
   3423d:	b8 88 01             	mov    ax,0x188
   34240:	8e c0                	mov    es,ax
   34242:	26 8b 87 49 2e       	mov    ax,WORD PTR es:[bx+0x2e49]
   34247:	26 0b 87 4b 2e       	or     ax,WORD PTR es:[bx+0x2e4b]
   3424c:	74 47                	je     0x34295
   3424e:	b8 88 01             	mov    ax,0x188
   34251:	8e c0                	mov    es,ax
   34253:	26 a1 17 e5          	mov    ax,es:0xe517
   34257:	26 0b 06 19 e5       	or     ax,WORD PTR es:0xe519
   3425c:	74 15                	je     0x34273
   3425e:	1e                   	push   ds
   3425f:	68 dd 41             	push   0x41dd
   34262:	68 00 05             	push   0x500
   34265:	68 88 01             	push   0x188
   34268:	68 17 e5             	push   0xe517
   3426b:	9a 2f 02 40 00       	call   0x40:0x22f
   34270:	83 c4 0a             	add    sp,0xa
   34273:	6a 4f                	push   0x4f
   34275:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   34279:	6b db 1d             	imul   bx,bx,0x1d
   3427c:	b8 88 01             	mov    ax,0x188
   3427f:	8e c0                	mov    es,ax
   34281:	26 ff b7 4b 2e       	push   WORD PTR es:[bx+0x2e4b]
   34286:	26 ff b7 49 2e       	push   WORD PTR es:[bx+0x2e49]
   3428b:	6a 01                	push   0x1
   3428d:	9a 20 00 48 01       	call   0x148:0x20
   34292:	83 c4 08             	add    sp,0x8
   34295:	6a 03                	push   0x3
   34297:	9a c5 00 10 01       	call   0x110:0xc5
   3429c:	59                   	pop    cx
   3429d:	b8 88 01             	mov    ax,0x188
   342a0:	8e c0                	mov    es,ax
   342a2:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   342a7:	26 ff 37             	push   WORD PTR es:[bx]
   342aa:	6a 00                	push   0x0
   342ac:	6a 2b                	push   0x2b
   342ae:	b8 88 01             	mov    ax,0x188
   342b1:	8e c0                	mov    es,ax
   342b3:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   342b8:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   342bc:	2d 2b 00             	sub    ax,0x2b
   342bf:	50                   	push   ax
   342c0:	9a 88 06 98 00       	call   0x98:0x688
   342c5:	bb 88 01             	mov    bx,0x188
   342c8:	8e c3                	mov    es,bx
   342ca:	26 89 16 ee b9       	mov    WORD PTR es:0xb9ee,dx
   342cf:	26 a3 ec b9          	mov    es:0xb9ec,ax
   342d3:	1e                   	push   ds
   342d4:	68 ec 41             	push   0x41ec
   342d7:	68 0c 05             	push   0x50c
   342da:	68 88 01             	push   0x188
   342dd:	68 3b bb             	push   0xbb3b
   342e0:	9a 81 0a 20 00       	call   0x20:0xa81
   342e5:	83 c4 0a             	add    sp,0xa
   342e8:	68 88 01             	push   0x188
   342eb:	68 3b bb             	push   0xbb3b
   342ee:	9a 22 0b 20 00       	call   0x20:0xb22
   342f3:	83 c4 04             	add    sp,0x4
   342f6:	83 0e 5e 3d 20       	or     WORD PTR ds:0x3d5e,0x20
   342fb:	c9                   	leave
   342fc:	cb                   	retf
   342fd:	55                   	push   bp
   342fe:	8b ec                	mov    bp,sp
   34300:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34303:	b4 00                	mov    ah,0x0
   34305:	c1 e0 03             	shl    ax,0x3
   34308:	ba 88 01             	mov    dx,0x188
   3430b:	8b d8                	mov    bx,ax
   3430d:	8e c2                	mov    es,dx
   3430f:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
   34314:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
   34319:	75 47                	jne    0x34362
   3431b:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3431e:	b4 00                	mov    ah,0x0
   34320:	50                   	push   ax
   34321:	1e                   	push   ds
   34322:	68 fb 41             	push   0x41fb
   34325:	68 88 01             	push   0x188
   34328:	68 cc ba             	push   0xbacc
   3432b:	9a b4 48 00 00       	call   0x0:0x48b4
   34330:	83 c4 0a             	add    sp,0xa
   34333:	3d 68 00             	cmp    ax,0x68
   34336:	7c 15                	jl     0x3434d
   34338:	6a 47                	push   0x47
   3433a:	6a 00                	push   0x0
   3433c:	6a 00                	push   0x0
   3433e:	68 15 05             	push   0x515
   34341:	1e                   	push   ds
   34342:	68 05 42             	push   0x4205
   34345:	9a 2a 00 58 01       	call   0x158:0x2a
   3434a:	83 c4 0c             	add    sp,0xc
   3434d:	6a 48                	push   0x48
   3434f:	6a 00                	push   0x0
   34351:	6a 00                	push   0x0
   34353:	68 17 05             	push   0x517
   34356:	1e                   	push   ds
   34357:	68 14 42             	push   0x4214
   3435a:	9a 2a 00 58 01       	call   0x158:0x2a
   3435f:	83 c4 0c             	add    sp,0xc
   34362:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34365:	b4 00                	mov    ah,0x0
   34367:	c1 e0 03             	shl    ax,0x3
   3436a:	ba 88 01             	mov    dx,0x188
   3436d:	8b d8                	mov    bx,ax
   3436f:	8e c2                	mov    es,dx
   34371:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   34376:	26 80 7f 08 01       	cmp    BYTE PTR es:[bx+0x8],0x1
   3437b:	74 47                	je     0x343c4
   3437d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34380:	b4 00                	mov    ah,0x0
   34382:	50                   	push   ax
   34383:	1e                   	push   ds
   34384:	68 23 42             	push   0x4223
   34387:	68 88 01             	push   0x188
   3438a:	68 cc ba             	push   0xbacc
   3438d:	9a b4 48 00 00       	call   0x0:0x48b4
   34392:	83 c4 0a             	add    sp,0xa
   34395:	3d 68 00             	cmp    ax,0x68
   34398:	7c 15                	jl     0x343af
   3439a:	6a 49                	push   0x49
   3439c:	6a 00                	push   0x0
   3439e:	6a 00                	push   0x0
   343a0:	68 1c 05             	push   0x51c
   343a3:	1e                   	push   ds
   343a4:	68 2d 42             	push   0x422d
   343a7:	9a 2a 00 58 01       	call   0x158:0x2a
   343ac:	83 c4 0c             	add    sp,0xc
   343af:	6a 4a                	push   0x4a
   343b1:	6a 00                	push   0x0
   343b3:	6a 00                	push   0x0
   343b5:	68 1e 05             	push   0x51e
   343b8:	1e                   	push   ds
   343b9:	68 3c 42             	push   0x423c
   343bc:	9a 2a 00 58 01       	call   0x158:0x2a
   343c1:	83 c4 0c             	add    sp,0xc
   343c4:	6a 00                	push   0x0
   343c6:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   343c9:	b4 00                	mov    ah,0x0
   343cb:	c1 e0 03             	shl    ax,0x3
   343ce:	ba 88 01             	mov    dx,0x188
   343d1:	8b d8                	mov    bx,ax
   343d3:	8e c2                	mov    es,dx
   343d5:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   343da:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   343df:	9a ab 04 20 00       	call   0x20:0x4ab
   343e4:	83 c4 06             	add    sp,0x6
   343e7:	bb 88 01             	mov    bx,0x188
   343ea:	8e c3                	mov    es,bx
   343ec:	26 89 16 59 e5       	mov    WORD PTR es:0xe559,dx
   343f1:	26 a3 57 e5          	mov    es:0xe557,ax
   343f5:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   343f8:	b4 00                	mov    ah,0x0
   343fa:	c1 e0 03             	shl    ax,0x3
   343fd:	ba 88 01             	mov    dx,0x188
   34400:	8b d8                	mov    bx,ax
   34402:	8e c2                	mov    es,dx
   34404:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
   34409:	ba 88 01             	mov    dx,0x188
   3440c:	8e c2                	mov    es,dx
   3440e:	26 a3 53 e5          	mov    es:0xe553,ax
   34412:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34415:	b4 00                	mov    ah,0x0
   34417:	c1 e0 03             	shl    ax,0x3
   3441a:	ba 88 01             	mov    dx,0x188
   3441d:	8b d8                	mov    bx,ax
   3441f:	8e                 	mov    es,dx
