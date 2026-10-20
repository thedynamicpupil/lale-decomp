
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00014db6 <.data+0x4db6>:
   14db6:	55                   	push   bp
   14db7:	8b ec                	mov    bp,sp
   14db9:	83 ec 04             	sub    sp,0x4
   14dbc:	56                   	push   si
   14dbd:	1e                   	push   ds
   14dbe:	b8 d4 95             	mov    ax,0x95d4
   14dc1:	50                   	push   ax
   14dc2:	90                   	nop
   14dc3:	0e                   	push   cs
   14dc4:	e8 21 f1             	call   0x13ee8
   14dc7:	59                   	pop    cx
   14dc8:	59                   	pop    cx
   14dc9:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   14dcc:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   14dcf:	0b c2                	or     ax,dx
   14dd1:	75 03                	jne    0x14dd6
   14dd3:	e9 97 00             	jmp    0x14e6d
   14dd6:	ff 76 fe             	push   WORD PTR [bp-0x2]
   14dd9:	ff 76 fc             	push   WORD PTR [bp-0x4]
   14ddc:	90                   	nop
   14ddd:	0e                   	push   cs
   14dde:	e8 eb fb             	call   0x149cc
   14de1:	59                   	pop    cx
   14de2:	59                   	pop    cx
   14de3:	3d 04 00             	cmp    ax,0x4
   14de6:	73 03                	jae    0x14deb
   14de8:	e9 82 00             	jmp    0x14e6d
   14deb:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   14dee:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   14df1:	98                   	cbw
   14df2:	8b d8                	mov    bx,ax
   14df4:	8a 87 91 91          	mov    al,BYTE PTR [bx-0x6e6f]
   14df8:	98                   	cbw
   14df9:	a9 0c 00             	test   ax,0xc
   14dfc:	74 6f                	je     0x14e6d
   14dfe:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   14e01:	26 8a 47 01          	mov    al,BYTE PTR es:[bx+0x1]
   14e05:	98                   	cbw
   14e06:	8b d8                	mov    bx,ax
   14e08:	8a 87 91 91          	mov    al,BYTE PTR [bx-0x6e6f]
   14e0c:	98                   	cbw
   14e0d:	a9 0c 00             	test   ax,0xc
   14e10:	74 5b                	je     0x14e6d
   14e12:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   14e15:	26 8a 47 02          	mov    al,BYTE PTR es:[bx+0x2]
   14e19:	98                   	cbw
   14e1a:	8b d8                	mov    bx,ax
   14e1c:	8a 87 91 91          	mov    al,BYTE PTR [bx-0x6e6f]
   14e20:	98                   	cbw
   14e21:	a9 0c 00             	test   ax,0xc
   14e24:	74 47                	je     0x14e6d
   14e26:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   14e29:	26 80 7f 03 2d       	cmp    BYTE PTR es:[bx+0x3],0x2d
   14e2e:	74 15                	je     0x14e45
   14e30:	26 80 7f 03 2b       	cmp    BYTE PTR es:[bx+0x3],0x2b
   14e35:	74 0e                	je     0x14e45
   14e37:	26 8a 47 03          	mov    al,BYTE PTR es:[bx+0x3]
   14e3b:	98                   	cbw
   14e3c:	8b d8                	mov    bx,ax
   14e3e:	f6 87 91 91 02       	test   BYTE PTR [bx-0x6e6f],0x2
   14e43:	74 28                	je     0x14e6d
   14e45:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   14e48:	26 8a 47 03          	mov    al,BYTE PTR es:[bx+0x3]
   14e4c:	98                   	cbw
   14e4d:	8b d8                	mov    bx,ax
   14e4f:	8a 87 91 91          	mov    al,BYTE PTR [bx-0x6e6f]
   14e53:	98                   	cbw
   14e54:	a9 02 00             	test   ax,0x2
   14e57:	75 53                	jne    0x14eac
   14e59:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   14e5c:	26 8a 47 04          	mov    al,BYTE PTR es:[bx+0x4]
   14e60:	98                   	cbw
   14e61:	8b d8                	mov    bx,ax
   14e63:	8a 87 91 91          	mov    al,BYTE PTR [bx-0x6e6f]
   14e67:	98                   	cbw
   14e68:	a9 02 00             	test   ax,0x2
   14e6b:	75 3f                	jne    0x14eac
   14e6d:	c7 06 d2 95 01 00    	mov    WORD PTR ds:0x95d2,0x1
   14e73:	c7 06 d0 95 00 00    	mov    WORD PTR ds:0x95d0,0x0
   14e79:	c7 06 ce 95 50 46    	mov    WORD PTR ds:0x95ce,0x4650
   14e7f:	1e                   	push   ds
   14e80:	b8 d7 95             	mov    ax,0x95d7
   14e83:	50                   	push   ax
   14e84:	ff 36 c8 95          	push   WORD PTR ds:0x95c8
   14e88:	ff 36 c6 95          	push   WORD PTR ds:0x95c6
   14e8c:	90                   	nop
   14e8d:	0e                   	push   cs
   14e8e:	e8 12 fb             	call   0x149a3
   14e91:	83 c4 08             	add    sp,0x8
   14e94:	1e                   	push   ds
   14e95:	b8 db 95             	mov    ax,0x95db
   14e98:	50                   	push   ax
   14e99:	ff 36 cc 95          	push   WORD PTR ds:0x95cc
   14e9d:	ff 36 ca 95          	push   WORD PTR ds:0x95ca
   14ea1:	90                   	nop
   14ea2:	0e                   	push   cs
   14ea3:	e8 fd fa             	call   0x149a3
   14ea6:	83 c4 08             	add    sp,0x8
   14ea9:	e9 f1 00             	jmp    0x14f9d
   14eac:	b8 04 00             	mov    ax,0x4
   14eaf:	50                   	push   ax
   14eb0:	33 c0                	xor    ax,ax
   14eb2:	50                   	push   ax
   14eb3:	ff 36 cc 95          	push   WORD PTR ds:0x95cc
   14eb7:	ff 36 ca 95          	push   WORD PTR ds:0x95ca
   14ebb:	90                   	nop
   14ebc:	0e                   	push   cs
   14ebd:	e8 89 f1             	call   0x14049
   14ec0:	83 c4 08             	add    sp,0x8
   14ec3:	b8 03 00             	mov    ax,0x3
   14ec6:	50                   	push   ax
   14ec7:	ff 76 fe             	push   WORD PTR [bp-0x2]
   14eca:	ff 76 fc             	push   WORD PTR [bp-0x4]
   14ecd:	ff 36 c8 95          	push   WORD PTR ds:0x95c8
   14ed1:	ff 36 c6 95          	push   WORD PTR ds:0x95c6
   14ed5:	90                   	nop
   14ed6:	0e                   	push   cs
   14ed7:	e8 49 fb             	call   0x14a23
   14eda:	83 c4 0a             	add    sp,0xa
   14edd:	c4 1e c6 95          	les    bx,DWORD PTR ds:0x95c6
   14ee1:	26 c6 47 03 00       	mov    BYTE PTR es:[bx+0x3],0x0
   14ee6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   14ee9:	05 03 00             	add    ax,0x3
   14eec:	ff 76 fe             	push   WORD PTR [bp-0x2]
   14eef:	50                   	push   ax
   14ef0:	90                   	nop
   14ef1:	0e                   	push   cs
   14ef2:	e8 74 e5             	call   0x13469
   14ef5:	59                   	pop    cx
   14ef6:	59                   	pop    cx
   14ef7:	50                   	push   ax
   14ef8:	52                   	push   dx
   14ef9:	33 d2                	xor    dx,dx
   14efb:	b8 10 0e             	mov    ax,0xe10
   14efe:	59                   	pop    cx
   14eff:	5b                   	pop    bx
   14f00:	e8 fb c7             	call   0x116fe
   14f03:	89 16 d0 95          	mov    WORD PTR ds:0x95d0,dx
   14f07:	a3 ce 95             	mov    ds:0x95ce,ax
   14f0a:	c7 06 d2 95 00 00    	mov    WORD PTR ds:0x95d2,0x0
   14f10:	be 03 00             	mov    si,0x3
   14f13:	eb 7c                	jmp    0x14f91
   14f15:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   14f18:	26 8a 00             	mov    al,BYTE PTR es:[bx+si]
   14f1b:	98                   	cbw
   14f1c:	8b d8                	mov    bx,ax
   14f1e:	f6 87 91 91 0c       	test   BYTE PTR [bx-0x6e6f],0xc
   14f23:	74 6b                	je     0x14f90
   14f25:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   14f28:	03 c6                	add    ax,si
   14f2a:	ff 76 fe             	push   WORD PTR [bp-0x2]
   14f2d:	50                   	push   ax
   14f2e:	90                   	nop
   14f2f:	0e                   	push   cs
   14f30:	e8 99 fa             	call   0x149cc
   14f33:	59                   	pop    cx
   14f34:	59                   	pop    cx
   14f35:	3d 03 00             	cmp    ax,0x3
   14f38:	72 63                	jb     0x14f9d
   14f3a:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   14f3d:	26 8a 40 01          	mov    al,BYTE PTR es:[bx+si+0x1]
   14f41:	98                   	cbw
   14f42:	8b d8                	mov    bx,ax
   14f44:	8a 87 91 91          	mov    al,BYTE PTR [bx-0x6e6f]
   14f48:	98                   	cbw
   14f49:	a9 0c 00             	test   ax,0xc
   14f4c:	74 4f                	je     0x14f9d
   14f4e:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   14f51:	26 8a 40 02          	mov    al,BYTE PTR es:[bx+si+0x2]
   14f55:	98                   	cbw
   14f56:	8b d8                	mov    bx,ax
   14f58:	8a 87 91 91          	mov    al,BYTE PTR [bx-0x6e6f]
   14f5c:	98                   	cbw
   14f5d:	a9 0c 00             	test   ax,0xc
   14f60:	74 3b                	je     0x14f9d
   14f62:	b8 03 00             	mov    ax,0x3
   14f65:	50                   	push   ax
   14f66:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   14f69:	03 c6                	add    ax,si
   14f6b:	ff 76 fe             	push   WORD PTR [bp-0x2]
   14f6e:	50                   	push   ax
   14f6f:	ff 36 cc 95          	push   WORD PTR ds:0x95cc
   14f73:	ff 36 ca 95          	push   WORD PTR ds:0x95ca
   14f77:	90                   	nop
   14f78:	0e                   	push   cs
   14f79:	e8 a7 fa             	call   0x14a23
   14f7c:	83 c4 0a             	add    sp,0xa
   14f7f:	c4 1e ca 95          	les    bx,DWORD PTR ds:0x95ca
   14f83:	26 c6 47 03 00       	mov    BYTE PTR es:[bx+0x3],0x0
   14f88:	c7 06 d2 95 01 00    	mov    WORD PTR ds:0x95d2,0x1
   14f8e:	eb 0d                	jmp    0x14f9d
   14f90:	46                   	inc    si
   14f91:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   14f94:	26 80 38 00          	cmp    BYTE PTR es:[bx+si],0x0
   14f98:	74 03                	je     0x14f9d
   14f9a:	e9 78 ff             	jmp    0x14f15
   14f9d:	5e                   	pop    si
   14f9e:	8b e5                	mov    sp,bp
   14fa0:	5d                   	pop    bp
   14fa1:	cb                   	retf
