
analysis/phase-five/scene-layers-20261016/middle-layer-43c9.bin:     file format binary


Disassembly of section .data:

0002c7f9 <.data>:
   2c7f9:	55                   	push   bp
   2c7fa:	8b ec                	mov    bp,sp
   2c7fc:	83 ec 0c             	sub    sp,0xc
   2c7ff:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c802:	24 01                	and    al,0x1
   2c804:	8a 16 f3 b9          	mov    dl,BYTE PTR ds:0xb9f3
   2c808:	02 16 f1 b9          	add    dl,BYTE PTR ds:0xb9f1
   2c80c:	80 e2 01             	and    dl,0x1
   2c80f:	d0 e2                	shl    dl,1
   2c811:	0a c2                	or     al,dl
   2c813:	88 46 f5             	mov    BYTE PTR [bp-0xb],al
   2c816:	a0 eb b9             	mov    al,ds:0xb9eb
   2c819:	b4 00                	mov    ah,0x0
   2c81b:	8b 16 c4 b9          	mov    dx,WORD PTR ds:0xb9c4
   2c81f:	d1 e2                	shl    dx,1
   2c821:	50                   	push   ax
   2c822:	a1 f1 b9             	mov    ax,ds:0xb9f1
   2c825:	03 c2                	add    ax,dx
   2c827:	5a                   	pop    dx
   2c828:	f7 ea                	imul   dx
   2c82a:	8b 16 c6 b9          	mov    dx,WORD PTR ds:0xb9c6
   2c82e:	d1 e2                	shl    dx,1
   2c830:	8b 1e f3 b9          	mov    bx,WORD PTR ds:0xb9f3
   2c834:	03 da                	add    bx,dx
   2c836:	03 d8                	add    bx,ax
   2c838:	6b db 0f             	imul   bx,bx,0xf
   2c83b:	89 5e fc             	mov    WORD PTR [bp-0x4],bx
   2c83e:	c7 46 fe fd ff       	mov    WORD PTR [bp-0x2],0xfffd
   2c843:	e9 76 04             	jmp    0x2ccbc
   2c846:	a0 eb b9             	mov    al,ds:0xb9eb
   2c849:	b4 00                	mov    ah,0x0
   2c84b:	50                   	push   ax
   2c84c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c84f:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c853:	5a                   	pop    dx
   2c854:	f7 ea                	imul   dx
   2c856:	50                   	push   ax
   2c857:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c85a:	f7 d8                	neg    ax
   2c85c:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c860:	5a                   	pop    dx
   2c861:	03 c2                	add    ax,dx
   2c863:	6b c0 0f             	imul   ax,ax,0xf
   2c866:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c869:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c86c:	d1 e0                	shl    ax,1
   2c86e:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c872:	03 d0                	add    dx,ax
   2c874:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c877:	52                   	push   dx
   2c878:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c87c:	5a                   	pop    dx
   2c87d:	2b d0                	sub    dx,ax
   2c87f:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c882:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c885:	d1 e0                	shl    ax,1
   2c887:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c88b:	03 d0                	add    dx,ax
   2c88d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c890:	52                   	push   dx
   2c891:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c895:	5a                   	pop    dx
   2c896:	03 d0                	add    dx,ax
   2c898:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c89b:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c89f:	7d 03                	jge    0x2c8a4
   2c8a1:	e9 15 04             	jmp    0x2ccb9
   2c8a4:	a0 eb b9             	mov    al,ds:0xb9eb
   2c8a7:	b4 00                	mov    ah,0x0
   2c8a9:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c8ac:	7f 03                	jg     0x2c8b1
   2c8ae:	e9 08 04             	jmp    0x2ccb9
   2c8b1:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c8b5:	7d 03                	jge    0x2c8ba
   2c8b7:	e9 ff 03             	jmp    0x2ccb9
   2c8ba:	a0 ea b9             	mov    al,ds:0xb9ea
   2c8bd:	b4 00                	mov    ah,0x0
   2c8bf:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c8c2:	7f 03                	jg     0x2c8c7
   2c8c4:	e9 f2 03             	jmp    0x2ccb9
   2c8c7:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c8ca:	3d fd ff             	cmp    ax,0xfffd
   2c8cd:	74 13                	je     0x2c8e2
   2c8cf:	3d fe ff             	cmp    ax,0xfffe
   2c8d2:	75 03                	jne    0x2c8d7
   2c8d4:	e9 3a 01             	jmp    0x2ca11
   2c8d7:	3d ff ff             	cmp    ax,0xffff
   2c8da:	75 03                	jne    0x2c8df
   2c8dc:	e9 84 02             	jmp    0x2cb63
   2c8df:	e9 d7 03             	jmp    0x2ccb9
   2c8e2:	68 28 00             	push   0x28
   2c8e5:	68 85 11             	push   0x1185
   2c8e8:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c8eb:	50                   	push   ax
   2c8ec:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c8ef:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c8f2:	05 09 00             	add    ax,0x9
   2c8f5:	99                   	cwd
   2c8f6:	50                   	push   ax
   2c8f7:	52                   	push   dx
   2c8f8:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c8fc:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c8ff:	59                   	pop    cx
   2c900:	5b                   	pop    bx
   2c901:	9a 77 14 00 00       	call   0x0:0x1477
   2c906:	8b d8                	mov    bx,ax
   2c908:	8e c2                	mov    es,dx
   2c90a:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c90d:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2c910:	b6 00                	mov    dh,0x0
   2c912:	6b d2 05             	imul   dx,dx,0x5
   2c915:	02 c2                	add    al,dl
   2c917:	04 23                	add    al,0x23
   2c919:	50                   	push   ax
   2c91a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c91d:	99                   	cwd
   2c91e:	33 c2                	xor    ax,dx
   2c920:	2b c2                	sub    ax,dx
   2c922:	04 ff                	add    al,0xff
   2c924:	d0 e0                	shl    al,1
   2c926:	fe c0                	inc    al
   2c928:	50                   	push   ax
   2c929:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2c92d:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2c931:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c934:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2c938:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2c93c:	03 d0                	add    dx,ax
   2c93e:	52                   	push   dx
   2c93f:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2c943:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2c947:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c94b:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2c94f:	9a 21 0f 28 00       	call   0x28:0xf21
   2c954:	83 c4 18             	add    sp,0x18
   2c957:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c95a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c95d:	05 08 00             	add    ax,0x8
   2c960:	99                   	cwd
   2c961:	50                   	push   ax
   2c962:	52                   	push   dx
   2c963:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c967:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c96a:	59                   	pop    cx
   2c96b:	5b                   	pop    bx
   2c96c:	9a 77 14 00 00       	call   0x0:0x1477
   2c971:	8b d8                	mov    bx,ax
   2c973:	8e c2                	mov    es,dx
   2c975:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2c979:	74 7a                	je     0x2c9f5
   2c97b:	68 28 00             	push   0x28
   2c97e:	68 07 13             	push   0x1307
   2c981:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c984:	50                   	push   ax
   2c985:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c988:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c98b:	05 08 00             	add    ax,0x8
   2c98e:	99                   	cwd
   2c98f:	50                   	push   ax
   2c990:	52                   	push   dx
   2c991:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c995:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c998:	59                   	pop    cx
   2c999:	5b                   	pop    bx
   2c99a:	9a 77 14 00 00       	call   0x0:0x1477
   2c99f:	8b d8                	mov    bx,ax
   2c9a1:	8e c2                	mov    es,dx
   2c9a3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c9a6:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2c9a9:	d0 e2                	shl    dl,1
   2c9ab:	02 c2                	add    al,dl
   2c9ad:	04 37                	add    al,0x37
   2c9af:	50                   	push   ax
   2c9b0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c9b3:	99                   	cwd
   2c9b4:	33 c2                	xor    ax,dx
   2c9b6:	2b c2                	sub    ax,dx
   2c9b8:	04 ff                	add    al,0xff
   2c9ba:	d0 e0                	shl    al,1
   2c9bc:	fe c0                	inc    al
   2c9be:	50                   	push   ax
   2c9bf:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2c9c3:	a1 48 b9             	mov    ax,ds:0xb948
   2c9c6:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2c9ca:	50                   	push   ax
   2c9cb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c9ce:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2c9d2:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2c9d6:	03 d0                	add    dx,ax
   2c9d8:	52                   	push   dx
   2c9d9:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2c9dd:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2c9e1:	a1 50 b9             	mov    ax,ds:0xb950
   2c9e4:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2c9e8:	50                   	push   ax
   2c9e9:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2c9ed:	9a 21 0f 28 00       	call   0x28:0xf21
   2c9f2:	83 c4 18             	add    sp,0x18
   2c9f5:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c9f8:	50                   	push   ax
   2c9f9:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c9fc:	b4 00                	mov    ah,0x0
   2c9fe:	bb 04 00             	mov    bx,0x4
   2ca01:	99                   	cwd
   2ca02:	f7 fb                	idiv   bx
   2ca04:	52                   	push   dx
   2ca05:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ca08:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ca0b:	50                   	push   ax
   2ca0c:	6a 00                	push   0x0
   2ca0e:	e9 a1 02             	jmp    0x2ccb2
   2ca11:	68 28 00             	push   0x28
   2ca14:	68 85 11             	push   0x1185
   2ca17:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ca1a:	50                   	push   ax
   2ca1b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ca1e:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ca21:	05 09 00             	add    ax,0x9
   2ca24:	99                   	cwd
   2ca25:	50                   	push   ax
   2ca26:	52                   	push   dx
   2ca27:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ca2b:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ca2e:	59                   	pop    cx
   2ca2f:	5b                   	pop    bx
   2ca30:	9a 77 14 00 00       	call   0x0:0x1477
   2ca35:	8b d8                	mov    bx,ax
   2ca37:	8e c2                	mov    es,dx
   2ca39:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2ca3c:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2ca3f:	b6 00                	mov    dh,0x0
   2ca41:	6b d2 05             	imul   dx,dx,0x5
   2ca44:	02 c2                	add    al,dl
   2ca46:	04 23                	add    al,0x23
   2ca48:	50                   	push   ax
   2ca49:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ca4c:	99                   	cwd
   2ca4d:	33 c2                	xor    ax,dx
   2ca4f:	2b c2                	sub    ax,dx
   2ca51:	04 ff                	add    al,0xff
   2ca53:	d0 e0                	shl    al,1
   2ca55:	fe c0                	inc    al
   2ca57:	50                   	push   ax
   2ca58:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2ca5c:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2ca60:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ca63:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2ca67:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2ca6b:	03 d0                	add    dx,ax
   2ca6d:	52                   	push   dx
   2ca6e:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2ca72:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2ca76:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2ca7a:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2ca7e:	9a 21 0f 28 00       	call   0x28:0xf21
   2ca83:	83 c4 18             	add    sp,0x18
   2ca86:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ca89:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ca8c:	05 08 00             	add    ax,0x8
   2ca8f:	99                   	cwd
   2ca90:	50                   	push   ax
   2ca91:	52                   	push   dx
   2ca92:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ca96:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ca99:	59                   	pop    cx
   2ca9a:	5b                   	pop    bx
   2ca9b:	9a 77 14 00 00       	call   0x0:0x1477
   2caa0:	8b d8                	mov    bx,ax
   2caa2:	8e c2                	mov    es,dx
   2caa4:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2caa8:	74 7a                	je     0x2cb24
   2caaa:	68 28 00             	push   0x28
   2caad:	68 07 13             	push   0x1307
   2cab0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cab3:	50                   	push   ax
   2cab4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cab7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2caba:	05 08 00             	add    ax,0x8
   2cabd:	99                   	cwd
   2cabe:	50                   	push   ax
   2cabf:	52                   	push   dx
   2cac0:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cac4:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cac7:	59                   	pop    cx
   2cac8:	5b                   	pop    bx
   2cac9:	9a 77 14 00 00       	call   0x0:0x1477
   2cace:	8b d8                	mov    bx,ax
   2cad0:	8e c2                	mov    es,dx
   2cad2:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cad5:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cad8:	d0 e2                	shl    dl,1
   2cada:	02 c2                	add    al,dl
   2cadc:	04 37                	add    al,0x37
   2cade:	50                   	push   ax
   2cadf:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cae2:	99                   	cwd
   2cae3:	33 c2                	xor    ax,dx
   2cae5:	2b c2                	sub    ax,dx
   2cae7:	04 ff                	add    al,0xff
   2cae9:	d0 e0                	shl    al,1
   2caeb:	fe c0                	inc    al
   2caed:	50                   	push   ax
   2caee:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2caf2:	a1 48 b9             	mov    ax,ds:0xb948
   2caf5:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2caf9:	50                   	push   ax
   2cafa:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cafd:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2cb01:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2cb05:	03 d0                	add    dx,ax
   2cb07:	52                   	push   dx
   2cb08:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2cb0c:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2cb10:	a1 50 b9             	mov    ax,ds:0xb950
   2cb13:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cb17:	50                   	push   ax
   2cb18:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2cb1c:	9a 21 0f 28 00       	call   0x28:0xf21
   2cb21:	83 c4 18             	add    sp,0x18
   2cb24:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cb27:	50                   	push   ax
   2cb28:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cb2b:	b4 00                	mov    ah,0x0
   2cb2d:	05 03 00             	add    ax,0x3
   2cb30:	bb 04 00             	mov    bx,0x4
   2cb33:	99                   	cwd
   2cb34:	f7 fb                	idiv   bx
   2cb36:	52                   	push   dx
   2cb37:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cb3a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cb3d:	50                   	push   ax
   2cb3e:	6a 07                	push   0x7
   2cb40:	0e                   	push   cs
   2cb41:	e8 55 f2             	call   0x2bd99
   2cb44:	83 c4 08             	add    sp,0x8
   2cb47:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cb4a:	50                   	push   ax
   2cb4b:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cb4e:	b4 00                	mov    ah,0x0
   2cb50:	bb 04 00             	mov    bx,0x4
   2cb53:	99                   	cwd
   2cb54:	f7 fb                	idiv   bx
   2cb56:	52                   	push   dx
   2cb57:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cb5a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cb5d:	50                   	push   ax
   2cb5e:	6a 01                	push   0x1
   2cb60:	e9 4f 01             	jmp    0x2ccb2
   2cb63:	68 28 00             	push   0x28
   2cb66:	68 85 11             	push   0x1185
   2cb69:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cb6c:	50                   	push   ax
   2cb6d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cb70:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cb73:	05 09 00             	add    ax,0x9
   2cb76:	99                   	cwd
   2cb77:	50                   	push   ax
   2cb78:	52                   	push   dx
   2cb79:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cb7d:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cb80:	59                   	pop    cx
   2cb81:	5b                   	pop    bx
   2cb82:	9a 77 14 00 00       	call   0x0:0x1477
   2cb87:	8b d8                	mov    bx,ax
   2cb89:	8e c2                	mov    es,dx
   2cb8b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cb8e:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cb91:	b6 00                	mov    dh,0x0
   2cb93:	6b d2 05             	imul   dx,dx,0x5
   2cb96:	02 c2                	add    al,dl
   2cb98:	04 23                	add    al,0x23
   2cb9a:	50                   	push   ax
   2cb9b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cb9e:	99                   	cwd
   2cb9f:	33 c2                	xor    ax,dx
   2cba1:	2b c2                	sub    ax,dx
   2cba3:	04 ff                	add    al,0xff
   2cba5:	d0 e0                	shl    al,1
   2cba7:	fe c0                	inc    al
   2cba9:	50                   	push   ax
   2cbaa:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2cbae:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2cbb2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cbb5:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2cbb9:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2cbbd:	03 d0                	add    dx,ax
   2cbbf:	52                   	push   dx
   2cbc0:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2cbc4:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2cbc8:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2cbcc:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2cbd0:	9a 21 0f 28 00       	call   0x28:0xf21
   2cbd5:	83 c4 18             	add    sp,0x18
   2cbd8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cbdb:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cbde:	05 08 00             	add    ax,0x8
   2cbe1:	99                   	cwd
   2cbe2:	50                   	push   ax
   2cbe3:	52                   	push   dx
   2cbe4:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cbe8:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cbeb:	59                   	pop    cx
   2cbec:	5b                   	pop    bx
   2cbed:	9a 77 14 00 00       	call   0x0:0x1477
   2cbf2:	8b d8                	mov    bx,ax
   2cbf4:	8e c2                	mov    es,dx
   2cbf6:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2cbfa:	74 7a                	je     0x2cc76
   2cbfc:	68 28 00             	push   0x28
   2cbff:	68 07 13             	push   0x1307
   2cc02:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cc05:	50                   	push   ax
   2cc06:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cc09:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cc0c:	05 08 00             	add    ax,0x8
   2cc0f:	99                   	cwd
   2cc10:	50                   	push   ax
   2cc11:	52                   	push   dx
   2cc12:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cc16:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cc19:	59                   	pop    cx
   2cc1a:	5b                   	pop    bx
   2cc1b:	9a 77 14 00 00       	call   0x0:0x1477
   2cc20:	8b d8                	mov    bx,ax
   2cc22:	8e c2                	mov    es,dx
   2cc24:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cc27:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cc2a:	d0 e2                	shl    dl,1
   2cc2c:	02 c2                	add    al,dl
   2cc2e:	04 37                	add    al,0x37
   2cc30:	50                   	push   ax
   2cc31:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cc34:	99                   	cwd
   2cc35:	33 c2                	xor    ax,dx
   2cc37:	2b c2                	sub    ax,dx
   2cc39:	04 ff                	add    al,0xff
   2cc3b:	d0 e0                	shl    al,1
   2cc3d:	fe c0                	inc    al
   2cc3f:	50                   	push   ax
   2cc40:	ff 36 09 3b          	push   WORD PTR ds:0x3b09
   2cc44:	a1 48 b9             	mov    ax,ds:0xb948
   2cc47:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cc4b:	50                   	push   ax
   2cc4c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cc4f:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2cc53:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2cc57:	03 d0                	add    dx,ax
   2cc59:	52                   	push   dx
   2cc5a:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2cc5e:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2cc62:	a1 50 b9             	mov    ax,ds:0xb950
   2cc65:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cc69:	50                   	push   ax
   2cc6a:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2cc6e:	9a 21 0f 28 00       	call   0x28:0xf21
   2cc73:	83 c4 18             	add    sp,0x18
   2cc76:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cc79:	50                   	push   ax
   2cc7a:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cc7d:	b4 00                	mov    ah,0x0
   2cc7f:	05 03 00             	add    ax,0x3
   2cc82:	bb 04 00             	mov    bx,0x4
   2cc85:	99                   	cwd
   2cc86:	f7 fb                	idiv   bx
   2cc88:	52                   	push   dx
   2cc89:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cc8c:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cc8f:	50                   	push   ax
   2cc90:	6a 08                	push   0x8
   2cc92:	0e                   	push   cs
   2cc93:	e8 03 f1             	call   0x2bd99
   2cc96:	83 c4 08             	add    sp,0x8
   2cc99:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cc9c:	50                   	push   ax
   2cc9d:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cca0:	b4 00                	mov    ah,0x0
   2cca2:	bb 04 00             	mov    bx,0x4
   2cca5:	99                   	cwd
   2cca6:	f7 fb                	idiv   bx
   2cca8:	52                   	push   dx
   2cca9:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ccac:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ccaf:	50                   	push   ax
   2ccb0:	6a 02                	push   0x2
   2ccb2:	0e                   	push   cs
   2ccb3:	e8 e3 f0             	call   0x2bd99
   2ccb6:	83 c4 08             	add    sp,0x8
   2ccb9:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2ccbc:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2ccc0:	7d 03                	jge    0x2ccc5
   2ccc2:	e9 81 fb             	jmp    0x2c846
   2ccc5:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   2ccca:	e9 8a 04             	jmp    0x2d157
   2cccd:	a0 eb b9             	mov    al,ds:0xb9eb
   2ccd0:	b4 00                	mov    ah,0x0
   2ccd2:	50                   	push   ax
   2ccd3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ccd6:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2ccda:	5a                   	pop    dx
   2ccdb:	f7 ea                	imul   dx
   2ccdd:	50                   	push   ax
   2ccde:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cce1:	f7 d8                	neg    ax
   2cce3:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2cce7:	5a                   	pop    dx
   2cce8:	03 c2                	add    ax,dx
   2ccea:	6b c0 0f             	imul   ax,ax,0xf
   2cced:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2ccf0:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2ccf3:	d1 e0                	shl    ax,1
   2ccf5:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2ccf9:	03 d0                	add    dx,ax
   2ccfb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ccfe:	52                   	push   dx
   2ccff:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2cd03:	5a                   	pop    dx
   2cd04:	2b d0                	sub    dx,ax
   2cd06:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2cd09:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2cd0c:	d1 e0                	shl    ax,1
   2cd0e:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2cd12:	03 d0                	add    dx,ax
   2cd14:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cd17:	52                   	push   dx
   2cd18:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2cd1c:	5a                   	pop    dx
   2cd1d:	03 d0                	add    dx,ax
   2cd1f:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2cd22:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2cd26:	7d 03                	jge    0x2cd2b
   2cd28:	e9 29 04             	jmp    0x2d154
   2cd2b:	a0 eb b9             	mov    al,ds:0xb9eb
   2cd2e:	b4 00                	mov    ah,0x0
   2cd30:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2cd33:	7f 03                	jg     0x2cd38
   2cd35:	e9 1c 04             	jmp    0x2d154
   2cd38:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2cd3c:	7d 03                	jge    0x2cd41
   2cd3e:	e9 13 04             	jmp    0x2d154
   2cd41:	a0 ea b9             	mov    al,ds:0xb9ea
   2cd44:	b4 00                	mov    ah,0x0
   2cd46:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2cd49:	7f 03                	jg     0x2cd4e
   2cd4b:	e9 06 04             	jmp    0x2d154
   2cd4e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cd51:	3d 01 00             	cmp    ax,0x1
   2cd54:	75 03                	jne    0x2cd59
   2cd56:	e9 9f 02             	jmp    0x2cff8
   2cd59:	3d 02 00             	cmp    ax,0x2
   2cd5c:	75 03                	jne    0x2cd61
   2cd5e:	e9 3f 01             	jmp    0x2cea0
   2cd61:	3d 03 00             	cmp    ax,0x3
   2cd64:	74 03                	je     0x2cd69
   2cd66:	e9 eb 03             	jmp    0x2d154
   2cd69:	68 28 00             	push   0x28
   2cd6c:	68 f1 10             	push   0x10f1
   2cd6f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cd72:	50                   	push   ax
   2cd73:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cd76:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cd79:	05 09 00             	add    ax,0x9
   2cd7c:	99                   	cwd
   2cd7d:	50                   	push   ax
   2cd7e:	52                   	push   dx
   2cd7f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cd83:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cd86:	59                   	pop    cx
   2cd87:	5b                   	pop    bx
   2cd88:	9a 77 14 00 00       	call   0x0:0x1477
   2cd8d:	8b d8                	mov    bx,ax
   2cd8f:	8e c2                	mov    es,dx
   2cd91:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cd94:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cd97:	b6 00                	mov    dh,0x0
   2cd99:	6b d2 05             	imul   dx,dx,0x5
   2cd9c:	02 c2                	add    al,dl
   2cd9e:	04 23                	add    al,0x23
   2cda0:	50                   	push   ax
   2cda1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cda4:	99                   	cwd
   2cda5:	33 c2                	xor    ax,dx
   2cda7:	2b c2                	sub    ax,dx
   2cda9:	04 ff                	add    al,0xff
   2cdab:	d0 e0                	shl    al,1
   2cdad:	fe c0                	inc    al
   2cdaf:	50                   	push   ax
   2cdb0:	a1 09 3b             	mov    ax,ds:0x3b09
   2cdb3:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2cdb7:	50                   	push   ax
   2cdb8:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2cdbc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cdbf:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2cdc3:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2cdc7:	03 d0                	add    dx,ax
   2cdc9:	52                   	push   dx
   2cdca:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2cdce:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2cdd2:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2cdd6:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2cdda:	9a 21 0f 28 00       	call   0x28:0xf21
   2cddf:	83 c4 18             	add    sp,0x18
   2cde2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cde5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cde8:	05 08 00             	add    ax,0x8
   2cdeb:	99                   	cwd
   2cdec:	50                   	push   ax
   2cded:	52                   	push   dx
   2cdee:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cdf2:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cdf5:	59                   	pop    cx
   2cdf6:	5b                   	pop    bx
   2cdf7:	9a 77 14 00 00       	call   0x0:0x1477
   2cdfc:	8b d8                	mov    bx,ax
   2cdfe:	8e c2                	mov    es,dx
   2ce00:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2ce04:	74 7e                	je     0x2ce84
   2ce06:	68 28 00             	push   0x28
   2ce09:	68 61 12             	push   0x1261
   2ce0c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ce0f:	50                   	push   ax
   2ce10:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ce13:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ce16:	05 08 00             	add    ax,0x8
   2ce19:	99                   	cwd
   2ce1a:	50                   	push   ax
   2ce1b:	52                   	push   dx
   2ce1c:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ce20:	a1 ec b9             	mov    ax,ds:0xb9ec
   2ce23:	59                   	pop    cx
   2ce24:	5b                   	pop    bx
   2ce25:	9a 77 14 00 00       	call   0x0:0x1477
   2ce2a:	8b d8                	mov    bx,ax
   2ce2c:	8e c2                	mov    es,dx
   2ce2e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2ce31:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2ce34:	d0 e2                	shl    dl,1
   2ce36:	02 c2                	add    al,dl
   2ce38:	04 37                	add    al,0x37
   2ce3a:	50                   	push   ax
   2ce3b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ce3e:	99                   	cwd
   2ce3f:	33 c2                	xor    ax,dx
   2ce41:	2b c2                	sub    ax,dx
   2ce43:	04 ff                	add    al,0xff
   2ce45:	d0 e0                	shl    al,1
   2ce47:	fe c0                	inc    al
   2ce49:	50                   	push   ax
   2ce4a:	a1 09 3b             	mov    ax,ds:0x3b09
   2ce4d:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2ce51:	50                   	push   ax
   2ce52:	a1 48 b9             	mov    ax,ds:0xb948
   2ce55:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2ce59:	50                   	push   ax
   2ce5a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ce5d:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2ce61:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2ce65:	03 d0                	add    dx,ax
   2ce67:	52                   	push   dx
   2ce68:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2ce6c:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2ce70:	a1 50 b9             	mov    ax,ds:0xb950
   2ce73:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2ce77:	50                   	push   ax
   2ce78:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2ce7c:	9a 21 0f 28 00       	call   0x28:0xf21
   2ce81:	83 c4 18             	add    sp,0x18
   2ce84:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ce87:	50                   	push   ax
   2ce88:	a0 f0 b9             	mov    al,ds:0xb9f0
   2ce8b:	b4 00                	mov    ah,0x0
   2ce8d:	bb 04 00             	mov    bx,0x4
   2ce90:	99                   	cwd
   2ce91:	f7 fb                	idiv   bx
   2ce93:	52                   	push   dx
   2ce94:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2ce97:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ce9a:	50                   	push   ax
   2ce9b:	6a 06                	push   0x6
   2ce9d:	e9 ad 02             	jmp    0x2d14d
   2cea0:	68 28 00             	push   0x28
   2cea3:	68 f1 10             	push   0x10f1
   2cea6:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cea9:	50                   	push   ax
   2ceaa:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cead:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2ceb0:	05 09 00             	add    ax,0x9
   2ceb3:	99                   	cwd
   2ceb4:	50                   	push   ax
   2ceb5:	52                   	push   dx
   2ceb6:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2ceba:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cebd:	59                   	pop    cx
   2cebe:	5b                   	pop    bx
   2cebf:	9a 77 14 00 00       	call   0x0:0x1477
   2cec4:	8b d8                	mov    bx,ax
   2cec6:	8e c2                	mov    es,dx
   2cec8:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cecb:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cece:	b6 00                	mov    dh,0x0
   2ced0:	6b d2 05             	imul   dx,dx,0x5
   2ced3:	02 c2                	add    al,dl
   2ced5:	04 23                	add    al,0x23
   2ced7:	50                   	push   ax
   2ced8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cedb:	99                   	cwd
   2cedc:	33 c2                	xor    ax,dx
   2cede:	2b c2                	sub    ax,dx
   2cee0:	04 ff                	add    al,0xff
   2cee2:	d0 e0                	shl    al,1
   2cee4:	fe c0                	inc    al
   2cee6:	50                   	push   ax
   2cee7:	a1 09 3b             	mov    ax,ds:0x3b09
   2ceea:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2ceee:	50                   	push   ax
   2ceef:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2cef3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cef6:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2cefa:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2cefe:	03 d0                	add    dx,ax
   2cf00:	52                   	push   dx
   2cf01:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2cf05:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2cf09:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2cf0d:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2cf11:	9a 21 0f 28 00       	call   0x28:0xf21
   2cf16:	83 c4 18             	add    sp,0x18
   2cf19:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cf1c:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cf1f:	05 08 00             	add    ax,0x8
   2cf22:	99                   	cwd
   2cf23:	50                   	push   ax
   2cf24:	52                   	push   dx
   2cf25:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cf29:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cf2c:	59                   	pop    cx
   2cf2d:	5b                   	pop    bx
   2cf2e:	9a 77 14 00 00       	call   0x0:0x1477
   2cf33:	8b d8                	mov    bx,ax
   2cf35:	8e c2                	mov    es,dx
   2cf37:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2cf3b:	74 7e                	je     0x2cfbb
   2cf3d:	68 28 00             	push   0x28
   2cf40:	68 61 12             	push   0x1261
   2cf43:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cf46:	50                   	push   ax
   2cf47:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cf4a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cf4d:	05 08 00             	add    ax,0x8
   2cf50:	99                   	cwd
   2cf51:	50                   	push   ax
   2cf52:	52                   	push   dx
   2cf53:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2cf57:	a1 ec b9             	mov    ax,ds:0xb9ec
   2cf5a:	59                   	pop    cx
   2cf5b:	5b                   	pop    bx
   2cf5c:	9a 77 14 00 00       	call   0x0:0x1477
   2cf61:	8b d8                	mov    bx,ax
   2cf63:	8e c2                	mov    es,dx
   2cf65:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2cf68:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2cf6b:	d0 e2                	shl    dl,1
   2cf6d:	02 c2                	add    al,dl
   2cf6f:	04 37                	add    al,0x37
   2cf71:	50                   	push   ax
   2cf72:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cf75:	99                   	cwd
   2cf76:	33 c2                	xor    ax,dx
   2cf78:	2b c2                	sub    ax,dx
   2cf7a:	04 ff                	add    al,0xff
   2cf7c:	d0 e0                	shl    al,1
   2cf7e:	fe c0                	inc    al
   2cf80:	50                   	push   ax
   2cf81:	a1 09 3b             	mov    ax,ds:0x3b09
   2cf84:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2cf88:	50                   	push   ax
   2cf89:	a1 48 b9             	mov    ax,ds:0xb948
   2cf8c:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cf90:	50                   	push   ax
   2cf91:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2cf94:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2cf98:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2cf9c:	03 d0                	add    dx,ax
   2cf9e:	52                   	push   dx
   2cf9f:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2cfa3:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2cfa7:	a1 50 b9             	mov    ax,ds:0xb950
   2cfaa:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2cfae:	50                   	push   ax
   2cfaf:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2cfb3:	9a 21 0f 28 00       	call   0x28:0xf21
   2cfb8:	83 c4 18             	add    sp,0x18
   2cfbb:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cfbe:	50                   	push   ax
   2cfbf:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cfc2:	b4 00                	mov    ah,0x0
   2cfc4:	40                   	inc    ax
   2cfc5:	bb 04 00             	mov    bx,0x4
   2cfc8:	99                   	cwd
   2cfc9:	f7 fb                	idiv   bx
   2cfcb:	52                   	push   dx
   2cfcc:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cfcf:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cfd2:	50                   	push   ax
   2cfd3:	6a 0c                	push   0xc
   2cfd5:	0e                   	push   cs
   2cfd6:	e8 c0 ed             	call   0x2bd99
   2cfd9:	83 c4 08             	add    sp,0x8
   2cfdc:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2cfdf:	50                   	push   ax
   2cfe0:	a0 f0 b9             	mov    al,ds:0xb9f0
   2cfe3:	b4 00                	mov    ah,0x0
   2cfe5:	bb 04 00             	mov    bx,0x4
   2cfe8:	99                   	cwd
   2cfe9:	f7 fb                	idiv   bx
   2cfeb:	52                   	push   dx
   2cfec:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2cfef:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2cff2:	50                   	push   ax
   2cff3:	6a 05                	push   0x5
   2cff5:	e9 55 01             	jmp    0x2d14d
   2cff8:	68 28 00             	push   0x28
   2cffb:	68 f1 10             	push   0x10f1
   2cffe:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d001:	50                   	push   ax
   2d002:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d005:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d008:	05 09 00             	add    ax,0x9
   2d00b:	99                   	cwd
   2d00c:	50                   	push   ax
   2d00d:	52                   	push   dx
   2d00e:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d012:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d015:	59                   	pop    cx
   2d016:	5b                   	pop    bx
   2d017:	9a 77 14 00 00       	call   0x0:0x1477
   2d01c:	8b d8                	mov    bx,ax
   2d01e:	8e c2                	mov    es,dx
   2d020:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d023:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d026:	b6 00                	mov    dh,0x0
   2d028:	6b d2 05             	imul   dx,dx,0x5
   2d02b:	02 c2                	add    al,dl
   2d02d:	04 23                	add    al,0x23
   2d02f:	50                   	push   ax
   2d030:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d033:	99                   	cwd
   2d034:	33 c2                	xor    ax,dx
   2d036:	2b c2                	sub    ax,dx
   2d038:	04 ff                	add    al,0xff
   2d03a:	d0 e0                	shl    al,1
   2d03c:	fe c0                	inc    al
   2d03e:	50                   	push   ax
   2d03f:	a1 09 3b             	mov    ax,ds:0x3b09
   2d042:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d046:	50                   	push   ax
   2d047:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2d04b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d04e:	f7 2e 1c b9          	imul   WORD PTR ds:0xb91c
   2d052:	8b 16 10 b9          	mov    dx,WORD PTR ds:0xb910
   2d056:	03 d0                	add    dx,ax
   2d058:	52                   	push   dx
   2d059:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2d05d:	ff 36 1c b9          	push   WORD PTR ds:0xb91c
   2d061:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2d065:	ff 36 18 b9          	push   WORD PTR ds:0xb918
   2d069:	9a 21 0f 28 00       	call   0x28:0xf21
   2d06e:	83 c4 18             	add    sp,0x18
   2d071:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d074:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d077:	05 08 00             	add    ax,0x8
   2d07a:	99                   	cwd
   2d07b:	50                   	push   ax
   2d07c:	52                   	push   dx
   2d07d:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d081:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d084:	59                   	pop    cx
   2d085:	5b                   	pop    bx
   2d086:	9a 77 14 00 00       	call   0x0:0x1477
   2d08b:	8b d8                	mov    bx,ax
   2d08d:	8e c2                	mov    es,dx
   2d08f:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d093:	74 7e                	je     0x2d113
   2d095:	68 28 00             	push   0x28
   2d098:	68 61 12             	push   0x1261
   2d09b:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d09e:	50                   	push   ax
   2d09f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d0a2:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d0a5:	05 08 00             	add    ax,0x8
   2d0a8:	99                   	cwd
   2d0a9:	50                   	push   ax
   2d0aa:	52                   	push   dx
   2d0ab:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d0af:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d0b2:	59                   	pop    cx
   2d0b3:	5b                   	pop    bx
   2d0b4:	9a 77 14 00 00       	call   0x0:0x1477
   2d0b9:	8b d8                	mov    bx,ax
   2d0bb:	8e c2                	mov    es,dx
   2d0bd:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d0c0:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d0c3:	d0 e2                	shl    dl,1
   2d0c5:	02 c2                	add    al,dl
   2d0c7:	04 37                	add    al,0x37
   2d0c9:	50                   	push   ax
   2d0ca:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d0cd:	99                   	cwd
   2d0ce:	33 c2                	xor    ax,dx
   2d0d0:	2b c2                	sub    ax,dx
   2d0d2:	04 ff                	add    al,0xff
   2d0d4:	d0 e0                	shl    al,1
   2d0d6:	fe c0                	inc    al
   2d0d8:	50                   	push   ax
   2d0d9:	a1 09 3b             	mov    ax,ds:0x3b09
   2d0dc:	03 06 ff 3a          	add    ax,WORD PTR ds:0x3aff
   2d0e0:	50                   	push   ax
   2d0e1:	a1 48 b9             	mov    ax,ds:0xb948
   2d0e4:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d0e8:	50                   	push   ax
   2d0e9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2d0ec:	f7 2e 52 b9          	imul   WORD PTR ds:0xb952
   2d0f0:	8b 16 46 b9          	mov    dx,WORD PTR ds:0xb946
   2d0f4:	03 d0                	add    dx,ax
   2d0f6:	52                   	push   dx
   2d0f7:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2d0fb:	ff 36 52 b9          	push   WORD PTR ds:0xb952
   2d0ff:	a1 50 b9             	mov    ax,ds:0xb950
   2d102:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d106:	50                   	push   ax
   2d107:	ff 36 4e b9          	push   WORD PTR ds:0xb94e
   2d10b:	9a 21 0f 28 00       	call   0x28:0xf21
   2d110:	83 c4 18             	add    sp,0x18
   2d113:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d116:	50                   	push   ax
   2d117:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d11a:	b4 00                	mov    ah,0x0
   2d11c:	40                   	inc    ax
   2d11d:	bb 04 00             	mov    bx,0x4
   2d120:	99                   	cwd
   2d121:	f7 fb                	idiv   bx
   2d123:	52                   	push   dx
   2d124:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d127:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d12a:	50                   	push   ax
   2d12b:	6a 0b                	push   0xb
   2d12d:	0e                   	push   cs
   2d12e:	e8 68 ec             	call   0x2bd99
   2d131:	83 c4 08             	add    sp,0x8
   2d134:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d137:	50                   	push   ax
   2d138:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d13b:	b4 00                	mov    ah,0x0
   2d13d:	bb 04 00             	mov    bx,0x4
   2d140:	99                   	cwd
   2d141:	f7 fb                	idiv   bx
   2d143:	52                   	push   dx
   2d144:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d147:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d14a:	50                   	push   ax
   2d14b:	6a 04                	push   0x4
   2d14d:	0e                   	push   cs
   2d14e:	e8 48 ec             	call   0x2bd99
   2d151:	83 c4 08             	add    sp,0x8
   2d154:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   2d157:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2d15b:	7e 03                	jle    0x2d160
   2d15d:	e9 6d fb             	jmp    0x2cccd
   2d160:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   2d165:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2d16a:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2d16d:	d1 e0                	shl    ax,1
   2d16f:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2d173:	03 d0                	add    dx,ax
   2d175:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2d178:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2d17b:	d1 e0                	shl    ax,1
   2d17d:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2d181:	03 d0                	add    dx,ax
   2d183:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2d186:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2d18a:	7d 03                	jge    0x2d18f
   2d18c:	e9 f4 01             	jmp    0x2d383
   2d18f:	a0 eb b9             	mov    al,ds:0xb9eb
   2d192:	b4 00                	mov    ah,0x0
   2d194:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2d197:	7f 03                	jg     0x2d19c
   2d199:	e9 e7 01             	jmp    0x2d383
   2d19c:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2d1a0:	7d 03                	jge    0x2d1a5
   2d1a2:	e9 de 01             	jmp    0x2d383
   2d1a5:	a0 ea b9             	mov    al,ds:0xb9ea
   2d1a8:	b4 00                	mov    ah,0x0
   2d1aa:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2d1ad:	7f 03                	jg     0x2d1b2
   2d1af:	e9 d1 01             	jmp    0x2d383
   2d1b2:	68 e0 01             	push   0x1e0
   2d1b5:	68 41 03             	push   0x341
   2d1b8:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d1bb:	50                   	push   ax
   2d1bc:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d1bf:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d1c2:	05 09 00             	add    ax,0x9
   2d1c5:	99                   	cwd
   2d1c6:	50                   	push   ax
   2d1c7:	52                   	push   dx
   2d1c8:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d1cc:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d1cf:	59                   	pop    cx
   2d1d0:	5b                   	pop    bx
   2d1d1:	9a 77 14 00 00       	call   0x0:0x1477
   2d1d6:	8b d8                	mov    bx,ax
   2d1d8:	8e c2                	mov    es,dx
   2d1da:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d1dd:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d1e0:	b6 00                	mov    dh,0x0
   2d1e2:	6b d2 05             	imul   dx,dx,0x5
   2d1e5:	02 c2                	add    al,dl
   2d1e7:	04 23                	add    al,0x23
   2d1e9:	50                   	push   ax
   2d1ea:	ff 36 12 b9          	push   WORD PTR ds:0xb912
   2d1ee:	a1 10 b9             	mov    ax,ds:0xb910
   2d1f1:	2b 06 1c b9          	sub    ax,WORD PTR ds:0xb91c
   2d1f5:	50                   	push   ax
   2d1f6:	ff 36 1e b9          	push   WORD PTR ds:0xb91e
   2d1fa:	a1 1c b9             	mov    ax,ds:0xb91c
   2d1fd:	6b c0 03             	imul   ax,ax,0x3
   2d200:	50                   	push   ax
   2d201:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2d205:	a1 18 b9             	mov    ax,ds:0xb918
   2d208:	2b 06 1c b9          	sub    ax,WORD PTR ds:0xb91c
   2d20c:	50                   	push   ax
   2d20d:	9a 30 04 28 00       	call   0x28:0x430
   2d212:	83 c4 14             	add    sp,0x14
   2d215:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d218:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d21b:	05 08 00             	add    ax,0x8
   2d21e:	99                   	cwd
   2d21f:	50                   	push   ax
   2d220:	52                   	push   dx
   2d221:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d225:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d228:	59                   	pop    cx
   2d229:	5b                   	pop    bx
   2d22a:	9a 77 14 00 00       	call   0x0:0x1477
   2d22f:	8b d8                	mov    bx,ax
   2d231:	8e c2                	mov    es,dx
   2d233:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d237:	74 68                	je     0x2d2a1
   2d239:	68 e0 01             	push   0x1e0
   2d23c:	68 41 03             	push   0x341
   2d23f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d242:	50                   	push   ax
   2d243:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d246:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d249:	05 08 00             	add    ax,0x8
   2d24c:	99                   	cwd
   2d24d:	50                   	push   ax
   2d24e:	52                   	push   dx
   2d24f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d253:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d256:	59                   	pop    cx
   2d257:	5b                   	pop    bx
   2d258:	9a 77 14 00 00       	call   0x0:0x1477
   2d25d:	8b d8                	mov    bx,ax
   2d25f:	8e c2                	mov    es,dx
   2d261:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2d264:	8a 56 f5             	mov    dl,BYTE PTR [bp-0xb]
   2d267:	d0 e2                	shl    dl,1
   2d269:	02 c2                	add    al,dl
   2d26b:	04 37                	add    al,0x37
   2d26d:	50                   	push   ax
   2d26e:	a1 48 b9             	mov    ax,ds:0xb948
   2d271:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d275:	50                   	push   ax
   2d276:	a1 46 b9             	mov    ax,ds:0xb946
   2d279:	2b 06 52 b9          	sub    ax,WORD PTR ds:0xb952
   2d27d:	50                   	push   ax
   2d27e:	ff 36 54 b9          	push   WORD PTR ds:0xb954
   2d282:	a1 52 b9             	mov    ax,ds:0xb952
   2d285:	6b c0 03             	imul   ax,ax,0x3
   2d288:	50                   	push   ax
   2d289:	a1 50 b9             	mov    ax,ds:0xb950
   2d28c:	2b 06 54 b9          	sub    ax,WORD PTR ds:0xb954
   2d290:	50                   	push   ax
   2d291:	a1 4e b9             	mov    ax,ds:0xb94e
   2d294:	2b 06 52 b9          	sub    ax,WORD PTR ds:0xb952
   2d298:	50                   	push   ax
   2d299:	9a 30 04 28 00       	call   0x28:0x430
   2d29e:	83 c4 14             	add    sp,0x14
   2d2a1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d2a4:	50                   	push   ax
   2d2a5:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d2a8:	b4 00                	mov    ah,0x0
   2d2aa:	bb 04 00             	mov    bx,0x4
   2d2ad:	99                   	cwd
   2d2ae:	f7 fb                	idiv   bx
   2d2b0:	52                   	push   dx
   2d2b1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d2b4:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d2b7:	50                   	push   ax
   2d2b8:	6a 03                	push   0x3
   2d2ba:	0e                   	push   cs
   2d2bb:	e8 db ea             	call   0x2bd99
   2d2be:	83 c4 08             	add    sp,0x8
   2d2c1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d2c4:	50                   	push   ax
   2d2c5:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d2c8:	b4 00                	mov    ah,0x0
   2d2ca:	05 03 00             	add    ax,0x3
   2d2cd:	bb 04 00             	mov    bx,0x4
   2d2d0:	99                   	cwd
   2d2d1:	f7 fb                	idiv   bx
   2d2d3:	52                   	push   dx
   2d2d4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d2d7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d2da:	50                   	push   ax
   2d2db:	6a 09                	push   0x9
   2d2dd:	0e                   	push   cs
   2d2de:	e8 b8 ea             	call   0x2bd99
   2d2e1:	83 c4 08             	add    sp,0x8
   2d2e4:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2d2e7:	50                   	push   ax
   2d2e8:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d2eb:	b4 00                	mov    ah,0x0
   2d2ed:	40                   	inc    ax
   2d2ee:	bb 04 00             	mov    bx,0x4
   2d2f1:	99                   	cwd
   2d2f2:	f7 fb                	idiv   bx
   2d2f4:	52                   	push   dx
   2d2f5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d2f8:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d2fb:	50                   	push   ax
   2d2fc:	6a 0a                	push   0xa
   2d2fe:	0e                   	push   cs
   2d2ff:	e8 97 ea             	call   0x2bd99
   2d302:	83 c4 08             	add    sp,0x8
   2d305:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d308:	b4 00                	mov    ah,0x0
   2d30a:	05 03 00             	add    ax,0x3
   2d30d:	bb 04 00             	mov    bx,0x4
   2d310:	99                   	cwd
   2d311:	f7 fb                	idiv   bx
   2d313:	d1 e2                	shl    dx,1
   2d315:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d318:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d31b:	03 c2                	add    ax,dx
   2d31d:	40                   	inc    ax
   2d31e:	99                   	cwd
   2d31f:	50                   	push   ax
   2d320:	52                   	push   dx
   2d321:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d325:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d328:	59                   	pop    cx
   2d329:	5b                   	pop    bx
   2d32a:	9a 77 14 00 00       	call   0x0:0x1477
   2d32f:	8b d8                	mov    bx,ax
   2d331:	8e c2                	mov    es,dx
   2d333:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d337:	74 07                	je     0x2d340
   2d339:	83 0e f9 3a 01       	or     WORD PTR ds:0x3af9,0x1
   2d33e:	eb 05                	jmp    0x2d345
   2d340:	83 26 f9 3a fe       	and    WORD PTR ds:0x3af9,0xfffe
   2d345:	a0 f0 b9             	mov    al,ds:0xb9f0
   2d348:	b4 00                	mov    ah,0x0
   2d34a:	40                   	inc    ax
   2d34b:	bb 04 00             	mov    bx,0x4
   2d34e:	99                   	cwd
   2d34f:	f7 fb                	idiv   bx
   2d351:	d1 e2                	shl    dx,1
   2d353:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2d356:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2d359:	03 c2                	add    ax,dx
   2d35b:	40                   	inc    ax
   2d35c:	99                   	cwd
   2d35d:	50                   	push   ax
   2d35e:	52                   	push   dx
   2d35f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2d363:	a1 ec b9             	mov    ax,ds:0xb9ec
   2d366:	59                   	pop    cx
   2d367:	5b                   	pop    bx
   2d368:	9a 77 14 00 00       	call   0x0:0x1477
   2d36d:	8b d8                	mov    bx,ax
   2d36f:	8e c2                	mov    es,dx
   2d371:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2d375:	74 07                	je     0x2d37e
   2d377:	83 0e f9 3a 02       	or     WORD PTR ds:0x3af9,0x2
   2d37c:	eb 05                	jmp    0x2d383
   2d37e:	83 26 f9 3a fd       	and    WORD PTR ds:0x3af9,0xfffd
   2d383:	c9                   	leave
   2d384:	cb                   	retf
