
lale/IST.EXE:     file format binary


Disassembly of section .data:

00043d61 <.data+0x43d61>:
   43d61:	b8 88 01             	mov    ax,0x188
   43d64:	8e c0                	mov    es,ax
   43d66:	26 83 26 5e 3d fb    	and    WORD PTR es:0x3d5e,0xfffb
   43d6c:	c7 06 98 bb 14 00    	mov    WORD PTR ds:0xbb98,0x14
   43d72:	90                   	nop
   43d73:	0e                   	push   cs
   43d74:	e8 5c 47             	call   0x484d3
   43d77:	b4 00                	mov    ah,0x0
   43d79:	c1 e0 08             	shl    ax,0x8
   43d7c:	50                   	push   ax
   43d7d:	90                   	nop
   43d7e:	0e                   	push   cs
   43d7f:	e8 51 47             	call   0x484d3
   43d82:	b4 00                	mov    ah,0x0
   43d84:	5a                   	pop    dx
   43d85:	03 d0                	add    dx,ax
   43d87:	8a 46 e8             	mov    al,BYTE PTR [bp-0x18]
   43d8a:	b4 00                	mov    ah,0x0
   43d8c:	3b d0                	cmp    dx,ax
   43d8e:	73 4c                	jae    0x43ddc
   43d90:	8a 46 e8             	mov    al,BYTE PTR [bp-0x18]
   43d93:	b4 00                	mov    ah,0x0
   43d95:	50                   	push   ax
   43d96:	16                   	push   ss
   43d97:	8d 46 ea             	lea    ax,[bp-0x16]
   43d9a:	50                   	push   ax
   43d9b:	1e                   	push   ds
   43d9c:	68 40 5e             	push   0x5e40
   43d9f:	68 88 01             	push   0x188
   43da2:	68 cc ba             	push   0xbacc
   43da5:	9a b4 48 00 00       	call   0x0:0x48b4
   43daa:	83 c4 0e             	add    sp,0xe
   43dad:	3d 68 00             	cmp    ax,0x68
   43db0:	7c 15                	jl     0x43dc7
   43db2:	6a 53                	push   0x53
   43db4:	6a 00                	push   0x0
   43db6:	6a 00                	push   0x0
   43db8:	68 1c 01             	push   0x11c
   43dbb:	1e                   	push   ds
   43dbc:	68 56 5e             	push   0x5e56
   43dbf:	9a 2a 00 58 01       	call   0x158:0x2a
   43dc4:	83 c4 0c             	add    sp,0xc
   43dc7:	6a 54                	push   0x54
   43dc9:	6a 00                	push   0x0
   43dcb:	6a 00                	push   0x0
   43dcd:	68 1e 01             	push   0x11e
   43dd0:	1e                   	push   ds
   43dd1:	68 65 5e             	push   0x5e65
   43dd4:	9a 2a 00 58 01       	call   0x158:0x2a
   43dd9:	83 c4 0c             	add    sp,0xc
   43ddc:	90                   	nop
   43ddd:	0e                   	push   cs
   43dde:	e8 f2 46             	call   0x484d3
   43de1:	b4 00                	mov    ah,0x0
   43de3:	c1 e0 08             	shl    ax,0x8
   43de6:	50                   	push   ax
   43de7:	90                   	nop
   43de8:	0e                   	push   cs
   43de9:	e8 e7 46             	call   0x484d3
   43dec:	b4 00                	mov    ah,0x0
   43dee:	5a                   	pop    dx
   43def:	03 d0                	add    dx,ax
   43df1:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   43df4:	eb 22                	jmp    0x43e18
   43df6:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   43df9:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   43dfd:	90                   	nop
   43dfe:	0e                   	push   cs
   43dff:	e8 d1 46             	call   0x484d3
   43e02:	b4 00                	mov    ah,0x0
   43e04:	c1 e0 08             	shl    ax,0x8
   43e07:	50                   	push   ax
   43e08:	90                   	nop
   43e09:	0e                   	push   cs
   43e0a:	e8 c6 46             	call   0x484d3
   43e0d:	b4 00                	mov    ah,0x0
   43e0f:	5a                   	pop    dx
   43e10:	03 d0                	add    dx,ax
   43e12:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   43e15:	fe 4e e8             	dec    BYTE PTR [bp-0x18]
   43e18:	80 7e e8 00          	cmp    BYTE PTR [bp-0x18],0x0
   43e1c:	77 d8                	ja     0x43df6
   43e1e:	90                   	nop
   43e1f:	0e                   	push   cs
   43e20:	e8 b0 46             	call   0x484d3
   43e23:	c0 e0 08             	shl    al,0x8
   43e26:	50                   	push   ax
   43e27:	90                   	nop
   43e28:	0e                   	push   cs
   43e29:	e8 a7 46             	call   0x484d3
   43e2c:	5a                   	pop    dx
   43e2d:	02 d0                	add    dl,al
   43e2f:	88 16 93 bb          	mov    BYTE PTR ds:0xbb93,dl
   43e33:	80 7e 08 01          	cmp    BYTE PTR [bp+0x8],0x1
   43e37:	76 36                	jbe    0x43e6f
   43e39:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   43e3c:	b4 00                	mov    ah,0x0
   43e3e:	05 fe ff             	add    ax,0xfffe
   43e41:	d1 e0                	shl    ax,1
   43e43:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   43e47:	90                   	nop
   43e48:	0e                   	push   cs
   43e49:	e8 87 46             	call   0x484d3
   43e4c:	b4 00                	mov    ah,0x0
   43e4e:	c1 e0 08             	shl    ax,0x8
   43e51:	50                   	push   ax
   43e52:	90                   	nop
   43e53:	0e                   	push   cs
   43e54:	e8 7c 46             	call   0x484d3
   43e57:	b4 00                	mov    ah,0x0
   43e59:	5a                   	pop    dx
   43e5a:	03 d0                	add    dx,ax
   43e5c:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   43e5f:	b4 00                	mov    ah,0x0
   43e61:	d1 e0                	shl    ax,1
   43e63:	2b d0                	sub    dx,ax
   43e65:	a1 98 bb             	mov    ax,ds:0xbb98
   43e68:	03 c2                	add    ax,dx
   43e6a:	a3 98 bb             	mov    ds:0xbb98,ax
   43e6d:	eb 05                	jmp    0x43e74
   43e6f:	83 06 98 bb 06       	add    WORD PTR ds:0xbb98,0x6
   43e74:	90                   	nop
   43e75:	0e                   	push   cs
   43e76:	e8 5a 46             	call   0x484d3
   43e79:	88 46 e6             	mov    BYTE PTR [bp-0x1a],al
   43e7c:	90                   	nop
   43e7d:	0e                   	push   cs
   43e7e:	e8 52 46             	call   0x484d3
   43e81:	a2 92 bb             	mov    ds:0xbb92,al
