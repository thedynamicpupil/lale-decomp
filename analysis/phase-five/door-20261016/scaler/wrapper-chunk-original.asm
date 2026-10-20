
analysis/phase-five/door-20261016/scaler/wrapper-chunk-original.bin:     file format binary


Disassembly of section .data:

0000de44 <.data>:
    de44:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    de47:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    de4a:	33 d2                	xor    dx,dx
    de4c:	f7 76 ec             	div    WORD PTR [bp-0x14]
    de4f:	40                   	inc    ax
    de50:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    de53:	73 0e                	jae    0xde63
    de55:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    de58:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
    de5b:	33 d2                	xor    dx,dx
    de5d:	f7 76 ec             	div    WORD PTR [bp-0x14]
    de60:	40                   	inc    ax
    de61:	eb 03                	jmp    0xde66
    de63:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    de66:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
    de69:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
    de6c:	33 c9                	xor    cx,cx
    de6e:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    de71:	33 d2                	xor    dx,dx
    de73:	9a 42 12 00 00       	call   0x0:0x1242
    de78:	33 d2                	xor    dx,dx
    de7a:	f7 76 0c             	div    WORD PTR [bp+0xc]
    de7d:	50                   	push   ax
    de7e:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    de81:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    de84:	33 d2                	xor    dx,dx
    de86:	f7 76 ea             	div    WORD PTR [bp-0x16]
    de89:	40                   	inc    ax
    de8a:	3b 46 14             	cmp    ax,WORD PTR [bp+0x14]
    de8d:	73 0e                	jae    0xde9d
    de8f:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    de92:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    de95:	33 d2                	xor    dx,dx
    de97:	f7 76 ea             	div    WORD PTR [bp-0x16]
    de9a:	40                   	inc    ax
    de9b:	eb 03                	jmp    0xdea0
    de9d:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    dea0:	5a                   	pop    dx
    dea1:	3b d0                	cmp    dx,ax
    dea3:	76 24                	jbe    0xdec9
    dea5:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    dea8:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    deab:	33 d2                	xor    dx,dx
    dead:	f7 76 ea             	div    WORD PTR [bp-0x16]
    deb0:	40                   	inc    ax
    deb1:	3b 46 14             	cmp    ax,WORD PTR [bp+0x14]
    deb4:	73 0e                	jae    0xdec4
    deb6:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    deb9:	2b 46 12             	sub    ax,WORD PTR [bp+0x12]
    debc:	33 d2                	xor    dx,dx
    debe:	f7 76 ea             	div    WORD PTR [bp-0x16]
    dec1:	40                   	inc    ax
    dec2:	eb 03                	jmp    0xdec7
    dec4:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    dec7:	eb 14                	jmp    0xdedd
    dec9:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
    decc:	33 c9                	xor    cx,cx
    dece:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
    ded1:	33 d2                	xor    dx,dx
    ded3:	9a 42 12 00 00       	call   0x0:0x1242
    ded8:	33 d2                	xor    dx,dx
    deda:	f7 76 0c             	div    WORD PTR [bp+0xc]
    dedd:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
    dee0:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
    dee3:	33 c9                	xor    cx,cx
    dee5:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    dee8:	33 d2                	xor    dx,dx
    deea:	9a 42 12 00 00       	call   0x0:0x1242
    deef:	33 d2                	xor    dx,dx
    def1:	f7 76 14             	div    WORD PTR [bp+0x14]
    def4:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
    def7:	76 05                	jbe    0xdefe
    def9:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    defc:	eb 14                	jmp    0xdf12
    defe:	8b 5e f4             	mov    bx,WORD PTR [bp-0xc]
    df01:	33 c9                	xor    cx,cx
    df03:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    df06:	33 d2                	xor    dx,dx
    df08:	9a 42 12 00 00       	call   0x0:0x1242
    df0d:	33 d2                	xor    dx,dx
    df0f:	f7 76 14             	div    WORD PTR [bp+0x14]
    df12:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
    df15:	8a 46 1a             	mov    al,BYTE PTR [bp+0x1a]
    df18:	50                   	push   ax
    df19:	68 fe 00             	push   0xfe
    df1c:	ff 76 e6             	push   WORD PTR [bp-0x1a]
    df1f:	ff 76 ea             	push   WORD PTR [bp-0x16]
    df22:	ff 76 f4             	push   WORD PTR [bp-0xc]
    df25:	ff 76 12             	push   WORD PTR [bp+0x12]
    df28:	6a 00                	push   0x0
    df2a:	6a 00                	push   0x0
    df2c:	ff 76 fa             	push   WORD PTR [bp-0x6]
    df2f:	ff 76 f8             	push   WORD PTR [bp-0x8]
    df32:	ff 76 e8             	push   WORD PTR [bp-0x18]
    df35:	ff 76 ec             	push   WORD PTR [bp-0x14]
    df38:	ff 76 f6             	push   WORD PTR [bp-0xa]
    df3b:	ff 76 0a             	push   WORD PTR [bp+0xa]
    df3e:	6a 00                	push   0x0
    df40:	6a 00                	push   0x0
    df42:	ff 76 fe             	push   WORD PTR [bp-0x2]
    df45:	ff 76 fc             	push   WORD PTR [bp-0x4]
    df48:	9a 18 00 99 25       	call   0x2599:0x18
    df4d:	83 c4 24             	add    sp,0x24
    df50:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    df53:	29 46 0c             	sub    WORD PTR [bp+0xc],ax
    df56:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    df59:	29 46 14             	sub    WORD PTR [bp+0x14],ax
    df5c:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
    df5f:	01 46 08             	add    WORD PTR [bp+0x8],ax
    df62:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
    df65:	01 46 10             	add    WORD PTR [bp+0x10],ax
    df68:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    df6c:	74 03                	je     0xdf71
    df6e:	e9 4c fe             	jmp    0xddbd
