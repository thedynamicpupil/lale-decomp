
analysis/phase-five/scene-layers-20261016/crop-wrapper.bin:     file format binary


Disassembly of section .data:

0000df81 <.data>:
    df81:	c8 1e 00 00          	enter  0x1e,0x0
    df85:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    df8a:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
    df8f:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    df92:	b4 00                	mov    ah,0x0
    df94:	c1 e0 03             	shl    ax,0x3
    df97:	ba e0 16             	mov    dx,0x16e0
    df9a:	8b d8                	mov    bx,ax
    df9c:	8e c2                	mov    es,dx
    df9e:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    dfa3:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
    dfa6:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dfa9:	b4 00                	mov    ah,0x0
    dfab:	c1 e0 03             	shl    ax,0x3
    dfae:	ba e0 16             	mov    dx,0x16e0
    dfb1:	8b d8                	mov    bx,ax
    dfb3:	8e c2                	mov    es,dx
    dfb5:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    dfba:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
    dfbd:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
    dfc0:	b4 00                	mov    ah,0x0
    dfc2:	c1 e0 03             	shl    ax,0x3
    dfc5:	ba e0 16             	mov    dx,0x16e0
    dfc8:	8b d8                	mov    bx,ax
    dfca:	8e c2                	mov    es,dx
    dfcc:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    dfd1:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    dfd6:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
    dfd9:	89 56 e6             	mov    WORD PTR [bp-0x1a],dx
    dfdc:	8a 46 18             	mov    al,BYTE PTR [bp+0x18]
    dfdf:	b4 00                	mov    ah,0x0
    dfe1:	c1 e0 03             	shl    ax,0x3
    dfe4:	ba e0 16             	mov    dx,0x16e0
    dfe7:	8b d8                	mov    bx,ax
    dfe9:	8e c2                	mov    es,dx
    dfeb:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
    dff0:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
    dff5:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
    dff8:	89 56 e2             	mov    WORD PTR [bp-0x1e],dx
    dffb:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
    dfff:	75 03                	jne    0xe004
    e001:	e9 4b 01             	jmp    0xe14f
    e004:	83 7e 0c 00          	cmp    WORD PTR [bp+0xc],0x0
    e008:	75 03                	jne    0xe00d
    e00a:	e9 42 01             	jmp    0xe14f
    e00d:	1e                   	push   ds
    e00e:	68 3a 72             	push   0x723a
    e011:	68 38 04             	push   0x438
    e014:	68 e0 16             	push   0x16e0
    e017:	68 26 de             	push   0xde26
    e01a:	9a 81 0a d4 09       	call   0x9d4:0xa81
    e01f:	83 c4 0a             	add    sp,0xa
    e022:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
    e027:	c7 46 f0 ff ff       	mov    WORD PTR [bp-0x10],0xffff
    e02c:	c7 46 ee ff ff       	mov    WORD PTR [bp-0x12],0xffff
    e031:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
    e034:	33 c9                	xor    cx,cx
    e036:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
    e039:	33 d2                	xor    dx,dx
    e03b:	9a 42 12 00 00       	call   0x0:0x1242
    e040:	52                   	push   dx
    e041:	50                   	push   ax
    e042:	16                   	push   ss
    e043:	8d 46 f6             	lea    ax,[bp-0xa]
    e046:	50                   	push   ax
    e047:	16                   	push   ss
    e048:	8d 46 f0             	lea    ax,[bp-0x10]
    e04b:	50                   	push   ax
    e04c:	16                   	push   ss
    e04d:	8d 46 fc             	lea    ax,[bp-0x4]
    e050:	50                   	push   ax
    e051:	16                   	push   ss
    e052:	8d 46 e6             	lea    ax,[bp-0x1a]
    e055:	50                   	push   ax
    e056:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    e05b:	83 c4 14             	add    sp,0x14
    e05e:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
    e061:	33 c9                	xor    cx,cx
    e063:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
    e066:	33 d2                	xor    dx,dx
    e068:	9a 42 12 00 00       	call   0x0:0x1242
    e06d:	52                   	push   dx
    e06e:	50                   	push   ax
    e06f:	16                   	push   ss
    e070:	8d 46 f6             	lea    ax,[bp-0xa]
    e073:	50                   	push   ax
    e074:	16                   	push   ss
    e075:	8d 46 ee             	lea    ax,[bp-0x12]
    e078:	50                   	push   ax
    e079:	16                   	push   ss
    e07a:	8d 46 f8             	lea    ax,[bp-0x8]
    e07d:	50                   	push   ax
    e07e:	16                   	push   ss
    e07f:	8d 46 e2             	lea    ax,[bp-0x1e]
    e082:	50                   	push   ax
    e083:	9a b4 0b d4 09       	call   0x9d4:0xbb4
    e088:	83 c4 14             	add    sp,0x14
    e08b:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e08e:	33 d2                	xor    dx,dx
    e090:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e093:	50                   	push   ax
    e094:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e097:	33 d2                	xor    dx,dx
    e099:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e09c:	5a                   	pop    dx
    e09d:	3b d0                	cmp    dx,ax
    e09f:	73 0a                	jae    0xe0ab
    e0a1:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e0a4:	33 d2                	xor    dx,dx
    e0a6:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e0a9:	eb 08                	jmp    0xe0b3
    e0ab:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e0ae:	33 d2                	xor    dx,dx
    e0b0:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e0b3:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
    e0b6:	73 2a                	jae    0xe0e2
    e0b8:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e0bb:	33 d2                	xor    dx,dx
    e0bd:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e0c0:	50                   	push   ax
    e0c1:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e0c4:	33 d2                	xor    dx,dx
    e0c6:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e0c9:	5a                   	pop    dx
    e0ca:	3b d0                	cmp    dx,ax
    e0cc:	73 0a                	jae    0xe0d8
    e0ce:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
    e0d1:	33 d2                	xor    dx,dx
    e0d3:	f7 76 ec             	div    WORD PTR [bp-0x14]
    e0d6:	eb 08                	jmp    0xe0e0
    e0d8:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
    e0db:	33 d2                	xor    dx,dx
    e0dd:	f7 76 ea             	div    WORD PTR [bp-0x16]
    e0e0:	eb 03                	jmp    0xe0e5
    e0e2:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e0e5:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
    e0e8:	68 fe 00             	push   0xfe
    e0eb:	8a 46 14             	mov    al,BYTE PTR [bp+0x14]
    e0ee:	b4 00                	mov    ah,0x0
    e0f0:	50                   	push   ax
    e0f1:	ff 76 ea             	push   WORD PTR [bp-0x16]
    e0f4:	ff 76 12             	push   WORD PTR [bp+0x12]
    e0f7:	6a 00                	push   0x0
    e0f9:	ff 76 0e             	push   WORD PTR [bp+0xe]
    e0fc:	ff 76 fa             	push   WORD PTR [bp-0x6]
    e0ff:	ff 76 f8             	push   WORD PTR [bp-0x8]
    e102:	ff 76 ec             	push   WORD PTR [bp-0x14]
    e105:	ff 76 f2             	push   WORD PTR [bp-0xe]
    e108:	ff 76 f4             	push   WORD PTR [bp-0xc]
    e10b:	ff 76 0a             	push   WORD PTR [bp+0xa]
    e10e:	6a 00                	push   0x0
    e110:	ff 76 06             	push   WORD PTR [bp+0x6]
    e113:	ff 76 fe             	push   WORD PTR [bp-0x2]
    e116:	ff 76 fc             	push   WORD PTR [bp-0x4]
    e119:	ff 5e 1a             	call   DWORD PTR [bp+0x1a]
    e11c:	83 c4 20             	add    sp,0x20
    e11f:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e122:	01 46 08             	add    WORD PTR [bp+0x8],ax
    e125:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e128:	01 46 10             	add    WORD PTR [bp+0x10],ax
    e12b:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e12e:	01 46 f4             	add    WORD PTR [bp-0xc],ax
    e131:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
    e134:	29 46 0c             	sub    WORD PTR [bp+0xc],ax
    e137:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e13a:	0b c0                	or     ax,ax
    e13c:	76 03                	jbe    0xe141
    e13e:	e9 e1 fe             	jmp    0xe022
    e141:	68 e0 16             	push   0x16e0
    e144:	68 26 de             	push   0xde26
    e147:	9a 22 0b d4 09       	call   0x9d4:0xb22
    e14c:	83 c4 04             	add    sp,0x4
    e14f:	c9                   	leave
    e150:	cb                   	retf
    e151:	c8 06 00 00          	enter  0x6,0x0
    e155:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e158:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    e15b:	eb 78                	jmp    0xe1d5
    e15d:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e160:	b4 00                	mov    ah,0x0
    e162:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e165:	8b 56 1a             	mov    dx,WORD PTR [bp+0x1a]
    e168:	03 d0                	add    dx,ax
    e16a:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    e16d:	8b c2                	mov    ax,dx
    e16f:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
    e172:	d1 e2                	shl    dx,1
    e174:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
    e177:	03 da                	add    bx,dx
    e179:	89 5e fa             	mov    WORD PTR [bp-0x6],bx
    e17c:	8b d3                	mov    dx,bx
    e17e:	03 c2                	add    ax,dx
    e180:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e183:	76 11                	jbe    0xe196
    e185:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    e188:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e18b:	73 56                	jae    0xe1e3
    e18d:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
    e190:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
    e193:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    e196:	8a 46 24             	mov    al,BYTE PTR [bp+0x24]
    e199:	50                   	push   ax
    e19a:	ff 76 fa             	push   WORD PTR [bp-0x6]
    e19d:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
    e1a0:	03                   	.byte 0x3
