
analysis/phase-five/first-combat-20261020/image-create-original.bin:     file format binary


Disassembly of section .data:

0000cf8a <.data>:
    cf8a:	c8 04 00 00          	enter  0x4,0x0
    cf8e:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
    cf91:	b4 00                	mov    ah,0x0
    cf93:	c1 e0 03             	shl    ax,0x3
    cf96:	ba e0 16             	mov    dx,0x16e0
    cf99:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
    cf9c:	8e c2                	mov    es,dx
    cf9e:	87 d8                	xchg   ax,bx
    cfa0:	26 89 87 9b e2       	mov    WORD PTR es:[bx-0x1d65],ax
    cfa5:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
    cfa8:	b4 00                	mov    ah,0x0
    cfaa:	c1 e0 03             	shl    ax,0x3
    cfad:	ba e0 16             	mov    dx,0x16e0
    cfb0:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
    cfb3:	8e c2                	mov    es,dx
    cfb5:	87 d8                	xchg   ax,bx
    cfb7:	26 89 87 9d e2       	mov    WORD PTR es:[bx-0x1d63],ax
    cfbc:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
    cfbf:	b4 00                	mov    ah,0x0
    cfc1:	c1 e0 03             	shl    ax,0x3
    cfc4:	ba e0 16             	mov    dx,0x16e0
    cfc7:	8b d8                	mov    bx,ax
    cfc9:	8e c2                	mov    es,dx
    cfcb:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
    cfd0:	99                   	cwd
    cfd1:	8a 5e 06             	mov    bl,BYTE PTR [bp+0x6]
    cfd4:	b7 00                	mov    bh,0x0
    cfd6:	c1 e3 03             	shl    bx,0x3
    cfd9:	b9 e0 16             	mov    cx,0x16e0
    cfdc:	8e c1                	mov    es,cx
    cfde:	50                   	push   ax
    cfdf:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
    cfe4:	52                   	push   dx
    cfe5:	99                   	cwd
    cfe6:	59                   	pop    cx
    cfe7:	5b                   	pop    bx
    cfe8:	9a 42 12 00 00       	call   0x0:0x1242
    cfed:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
    cff0:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    cff3:	80 7e 0c 02          	cmp    BYTE PTR [bp+0xc],0x2
    cff7:	75 47                	jne    0xd040
    cff9:	6a 00                	push   0x0
    cffb:	0e                   	push   cs
    cffc:	e8 8d f5             	call   0xc58c
    cfff:	59                   	pop    cx
    d000:	3b 56 fe             	cmp    dx,WORD PTR [bp-0x2]
    d003:	72 0d                	jb     0xd012
    d005:	75 05                	jne    0xd00c
    d007:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
    d00a:	72 06                	jb     0xd012
    d00c:	c6 46 0c 00          	mov    BYTE PTR [bp+0xc],0x0
    d010:	eb 2e                	jmp    0xd040
    d012:	6a 01                	push   0x1
    d014:	0e                   	push   cs
    d015:	e8 74 f5             	call   0xc58c
    d018:	59                   	pop    cx
    d019:	3b 56 fe             	cmp    dx,WORD PTR [bp-0x2]
    d01c:	72 0d                	jb     0xd02b
    d01e:	75 05                	jne    0xd025
    d020:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
    d023:	72 06                	jb     0xd02b
    d025:	c6 46 0c 01          	mov    BYTE PTR [bp+0xc],0x1
    d029:	eb 15                	jmp    0xd040
    d02b:	6a ff                	push   0xffff
    d02d:	1e                   	push   ds
    d02e:	68 24 71             	push   0x7124
    d031:	68 12 03             	push   0x312
    d034:	1e                   	push   ds
    d035:	68 10 71             	push   0x7110
    d038:	9a 2a 00 c1 16       	call   0x16c1:0x2a
    d03d:	83 c4 0c             	add    sp,0xc
    d040:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
    d043:	50                   	push   ax
    d044:	ff 76 fe             	push   WORD PTR [bp-0x2]
    d047:	ff 76 fc             	push   WORD PTR [bp-0x4]
    d04a:	0e                   	push   cs
    d04b:	e8 56 f2             	call   0xc2a4
    d04e:	83 c4 06             	add    sp,0x6
    d051:	8a 5e 06             	mov    bl,BYTE PTR [bp+0x6]
    d054:	b7 00                	mov    bh,0x0
    d056:	c1 e3 03             	shl    bx,0x3
    d059:	b9 e0 16             	mov    cx,0x16e0
    d05c:	8e c1                	mov    es,cx
    d05e:	26 89 97 a1 e2       	mov    WORD PTR es:[bx-0x1d5f],dx
    d063:	26 89 87 9f e2       	mov    WORD PTR es:[bx-0x1d61],ax
    d068:	c9                   	leave
    d069:	cb                   	retf
    d06a:	c8 08 00 00          	enter  0x8,0x0
    d06e:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
    d072:	c6 46 fe 00          	mov    BYTE PTR [bp-0x2],0x0
    d076:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
    d079:	25 07 00             	and    ax,0x7
    d07c:	8b 56 18             	mov    dx,WORD PTR [bp+0x18]
    d07f:	83 e2 07             	and    dx,0x7
    d082:	3b c2                	cmp    ax,dx
    d084:	74 07                	je     0xd08d
    d086:	33 d2                	xor    dx,dx
    d088:	33 c0                	xor    ax,ax
    d08a:	e9 7b 01             	jmp    0xd208
    d08d:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
    d090:	d1 e8                	shr    ax,1
    d092:	50                   	push   ax
    d093:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    d096:	5a                   	pop    dx
    d097:	f7 ea                	imul   dx
    d099:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
    d09c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
    d09f:	03 d8                	add    bx,ax
    d0a1:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
    d0a4:	c1 e8 03             	shr    ax,0x3
    d0a7:	03 d8                	add    bx,ax
    d0a9:	89 56 08             	mov    WORD PTR [bp+0x8],dx
    d0ac:	89 5e 06             	mov    WORD PTR [bp+0x6],bx
    d0af:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
    d0b2:	c1 e8 03             	shr    ax,0x3
    d0b5:	50                   	push   ax
    d0b6:	8b 46 1a             	mov    ax,WORD PTR [bp+0x1a]
    d0b9:	5a                   	pop    dx
    d0ba:	f7 ea                	imul   dx
    d0bc:	8b 56 16             	mov    dx,WORD PTR [bp+0x16]
    d0bf:	8b 5e 14             	mov    bx,WORD PTR [bp+0x14]
    d0c2:	03 5e 18             	add    bx,WORD PTR [bp+0x18]
    d0c5:	03 d8                	add    bx,ax
    d0c7:	89 56 16             	mov    WORD PTR [bp+0x16],dx
    d0ca:	89 5e 14             	mov    WORD PTR [bp+0x14],bx
    d0cd:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
    d0d0:	24 07                	and    al,0x7
    d0d2:	b1 08                	mov    cl,0x8
    d0d4:	2a c8                	sub    cl,al
    d0d6:	b0 ff                	mov    al,0xff
    d0d8:	d2 e0                	shl    al,cl
