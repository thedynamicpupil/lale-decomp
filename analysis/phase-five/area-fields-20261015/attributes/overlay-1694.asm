
analysis/phase-five/area-fields-20261015/attributes/overlay-1694.bin:     file format binary


Disassembly of section .data:

00049c50 <.data>:
   49c50:	55                   	push   bp
   49c51:	8b ec                	mov    bp,sp
   49c53:	83 ec 02             	sub    sp,0x2
   49c56:	c7 46 fe 13 00       	mov    WORD PTR [bp-0x2],0x13
   49c5b:	eb 1f                	jmp    0x49c7c
   49c5d:	1e                   	push   ds
   49c5e:	68 2f 64             	push   0x642f
   49c61:	68 9b 00             	push   0x9b
   49c64:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   49c67:	c1 e0 03             	shl    ax,0x3
   49c6a:	05 9f e2             	add    ax,0xe29f
   49c6d:	68 88 01             	push   0x188
   49c70:	50                   	push   ax
   49c71:	9a 2f 02 40 00       	call   0x40:0x22f
   49c76:	83 c4 0a             	add    sp,0xa
   49c79:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   49c7c:	83 7e fe 0b          	cmp    WORD PTR [bp-0x2],0xb
   49c80:	7d db                	jge    0x49c5d
   49c82:	1e                   	push   ds
   49c83:	68 3f 64             	push   0x643f
   49c86:	68 9c 00             	push   0x9c
   49c89:	68 88 01             	push   0x188
   49c8c:	68 d7 e2             	push   0xe2d7
   49c8f:	9a 2f 02 40 00       	call   0x40:0x22f
   49c94:	83 c4 0a             	add    sp,0xa
   49c97:	1e                   	push   ds
   49c98:	68 4f 64             	push   0x644f
   49c9b:	68 9e 00             	push   0x9e
   49c9e:	68 88 01             	push   0x188
   49ca1:	68 cf e2             	push   0xe2cf
   49ca4:	9a 2f 02 40 00       	call   0x40:0x22f
   49ca9:	83 c4 0a             	add    sp,0xa
   49cac:	c7 46 fe 02 00       	mov    WORD PTR [bp-0x2],0x2
   49cb1:	eb 1f                	jmp    0x49cd2
   49cb3:	1e                   	push   ds
   49cb4:	68 5f 64             	push   0x645f
   49cb7:	68 a0 00             	push   0xa0
   49cba:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   49cbd:	c1 e0 03             	shl    ax,0x3
   49cc0:	05 9f e2             	add    ax,0xe29f
   49cc3:	68 88 01             	push   0x188
   49cc6:	50                   	push   ax
   49cc7:	9a 2f 02 40 00       	call   0x40:0x22f
   49ccc:	83 c4 0a             	add    sp,0xa
   49ccf:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   49cd2:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   49cd6:	7d db                	jge    0x49cb3
   49cd8:	c9                   	leave
   49cd9:	cb                   	retf
   49cda:	55                   	push   bp
   49cdb:	8b ec                	mov    bp,sp
   49cdd:	6a 06                	push   0x6
   49cdf:	90                   	nop
   49ce0:	0e                   	push   cs
   49ce1:	e8 4d 0b             	call   0x4a831
   49ce4:	59                   	pop    cx
   49ce5:	5d                   	pop    bp
   49ce6:	cb                   	retf
   49ce7:	55                   	push   bp
   49ce8:	8b ec                	mov    bp,sp
   49cea:	6a 06                	push   0x6
   49cec:	90                   	nop
   49ced:	0e                   	push   cs
   49cee:	e8 40 0b             	call   0x4a831
   49cf1:	59                   	pop    cx
   49cf2:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   49cf5:	48                   	dec    ax
   49cf6:	c1 e0 03             	shl    ax,0x3
   49cf9:	ba 88 01             	mov    dx,0x188
   49cfc:	8e c2                	mov    es,dx
   49cfe:	26 a3 25 e7          	mov    es:0xe725,ax
   49d02:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   49d05:	40                   	inc    ax
   49d06:	f7 6e 0a             	imul   WORD PTR [bp+0xa]
   49d09:	05 08 00             	add    ax,0x8
   49d0c:	ba 88 01             	mov    dx,0x188
   49d0f:	8e c2                	mov    es,dx
   49d11:	26 a3 27 e7          	mov    es:0xe727,ax
   49d15:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   49d18:	48                   	dec    ax
   49d19:	c1 e0 03             	shl    ax,0x3
   49d1c:	05 09 00             	add    ax,0x9
   49d1f:	ba 88 01             	mov    dx,0x188
   49d22:	8e c2                	mov    es,dx
   49d24:	26 a3 29 e7          	mov    es:0xe729,ax
   49d28:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   49d2b:	40                   	inc    ax
   49d2c:	f7 6e 0a             	imul   WORD PTR [bp+0xa]
   49d2f:	05 1d 00             	add    ax,0x1d
   49d32:	ba 88 01             	mov    dx,0x188
   49d35:	8e c2                	mov    es,dx
   49d37:	26 a3 2b e7          	mov    es:0xe72b,ax
   49d3b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   49d3e:	48                   	dec    ax
   49d3f:	c1 e0 03             	shl    ax,0x3
   49d42:	ba 88 01             	mov    dx,0x188
   49d45:	8e c2                	mov    es,dx
   49d47:	26 a3 2d e7          	mov    es:0xe72d,ax
   49d4b:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   49d4e:	40                   	inc    ax
   49d4f:	f7 6e 0a             	imul   WORD PTR [bp+0xa]
   49d52:	05 1e 00             	add    ax,0x1e
   49d55:	ba 88 01             	mov    dx,0x188
   49d58:	8e c2                	mov    es,dx
   49d5a:	26 a3 2f e7          	mov    es:0xe72f,ax
   49d5e:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   49d61:	48                   	dec    ax
   49d62:	c1 e0 03             	shl    ax,0x3
   49d65:	05 09 00             	add    ax,0x9
   49d68:	ba 88 01             	mov    dx,0x188
   49d6b:	8e c2                	mov    es,dx
   49d6d:	26 a3 31 e7          	mov    es:0xe731,ax
   49d71:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   49d74:	40                   	inc    ax
   49d75:	f7 6e 0a             	imul   WORD PTR [bp+0xa]
   49d78:	05 33 00             	add    ax,0x33
   49d7b:	ba 88 01             	mov    dx,0x188
   49d7e:	8e c2                	mov    es,dx
   49d80:	26 a3 33 e7          	mov    es:0xe733,ax
   49d84:	5d                   	pop    bp
   49d85:	cb                   	retf
   49d86:	55                   	push   bp
   49d87:	8b ec                	mov    bp,sp
   49d89:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   49d8c:	88 46 0c             	mov    BYTE PTR [bp+0xc],al
   49d8f:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   49d92:	40                   	inc    ax
   49d93:	f7 6e 0a             	imul   WORD PTR [bp+0xa]
   49d96:	05 03 00             	add    ax,0x3
   49d99:	50                   	push   ax
   49d9a:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   49d9d:	48                   	dec    ax
   49d9e:	c1 e0 03             	shl    ax,0x3
   49da1:	05 f8 ff             	add    ax,0xfff8
   49da4:	50                   	push   ax
   49da5:	6a 07                	push   0x7
   49da7:	90                   	nop
   49da8:	0e                   	push   cs
   49da9:	e8 32 01             	call   0x49ede
   49dac:	83 c4 06             	add    sp,0x6
   49daf:	80 7e 0c 00          	cmp    BYTE PTR [bp+0xc],0x0
   49db3:	74 38                	je     0x49ded
   49db5:	68 e0 01             	push   0x1e0
   49db8:	68 41 03             	push   0x341
   49dbb:	6a 06                	push   0x6
   49dbd:	6a 4e                	push   0x4e
   49dbf:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   49dc2:	40                   	inc    ax
   49dc3:	f7 6e 0a             	imul   WORD PTR [bp+0xa]
   49dc6:	05 0f 00             	add    ax,0xf
   49dc9:	50                   	push   ax
   49dca:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   49dcd:	48                   	dec    ax
   49dce:	c1 e0 03             	shl    ax,0x3
   49dd1:	05 fc ff             	add    ax,0xfffc
   49dd4:	50                   	push   ax
   49dd5:	6a 20                	push   0x20
   49dd7:	6a 0c                	push   0xc
   49dd9:	6a 00                	push   0x0
   49ddb:	b8 88 01             	mov    ax,0x188
   49dde:	8e c0                	mov    es,ax
   49de0:	26 ff 36 5e 96       	push   WORD PTR es:0x965e
   49de5:	9a 30 04 28 00       	call   0x28:0x430
   49dea:	83 c4 14             	add    sp,0x14
   49ded:	5d                   	pop    bp
   49dee:	cb                   	retf
   49def:	55                   	push   bp
   49df0:	8b ec                	mov    bp,sp
   49df2:	83 ec 02             	sub    sp,0x2
   49df5:	83 7e 10 07          	cmp    WORD PTR [bp+0x10],0x7
   49df9:	75 07                	jne    0x49e02
   49dfb:	c7 46 fe 02 00       	mov    WORD PTR [bp-0x2],0x2
   49e00:	eb 05                	jmp    0x49e07
   49e02:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   49e07:	6a 00                	push   0x0
   49e09:	ff 76 08             	push   WORD PTR [bp+0x8]
   49e0c:	ff 76 06             	push   WORD PTR [bp+0x6]
   49e0f:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   49e12:	f7 6e 10             	imul   WORD PTR [bp+0x10]
   49e15:	05 09 00             	add    ax,0x9
   49e18:	50                   	push   ax
   49e19:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   49e1c:	c1 e0 03             	shl    ax,0x3
   49e1f:	50                   	push   ax
   49e20:	ff 76 fe             	push   WORD PTR [bp-0x2]
   49e23:	90                   	nop
   49e24:	0e                   	push   cs
   49e25:	e8 a8 09             	call   0x4a7d0
   49e28:	83 c4 0c             	add    sp,0xc
   49e2b:	ff 76 0e             	push   WORD PTR [bp+0xe]
   49e2e:	ff 76 08             	push   WORD PTR [bp+0x8]
   49e31:	ff 76 06             	push   WORD PTR [bp+0x6]
   49e34:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   49e37:	f7 6e 10             	imul   WORD PTR [bp+0x10]
   49e3a:	05 08 00             	add    ax,0x8
   49e3d:	50                   	push   ax
   49e3e:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   49e41:	c1 e0 03             	shl    ax,0x3
   49e44:	50                   	push   ax
   49e45:	ff 76 fe             	push   WORD PTR [bp-0x2]
   49e48:	90                   	nop
   49e49:	0e                   	push   cs
   49e4a:	e8 83 09             	call   0x4a7d0
   49e4d:	83 c4 0c             	add    sp,0xc
   49e50:	c9                   	leave
   49e51:	cb                   	retf
   49e52:	55                   	push   bp
   49e53:	8b ec                	mov    bp,sp
   49e55:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e58:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   49e5b:	26 01 07             	add    WORD PTR es:[bx],ax
   49e5e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e61:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   49e64:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
   49e67:	7d 09                	jge    0x49e72
   49e69:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e6c:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   49e6f:	26 89 07             	mov    WORD PTR es:[bx],ax
   49e72:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e75:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   49e78:	3b 46 0e             	cmp    ax,WORD PTR [bp+0xe]
   49e7b:	7e 09                	jle    0x49e86
   49e7d:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49e80:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   49e83:	26 89 07             	mov    WORD PTR es:[bx],ax
   49e86:	5d                   	pop    bp
   49e87:	cb                   	retf
   49e88:	55                   	push   bp
   49e89:	8b ec                	mov    bp,sp
   49e8b:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   49e8f:	7e 05                	jle    0x49e96
   49e91:	b8 01 00             	mov    ax,0x1
   49e94:	eb 0d                	jmp    0x49ea3
   49e96:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   49e9a:	7d 05                	jge    0x49ea1
   49e9c:	b8 ff ff             	mov    ax,0xffff
   49e9f:	eb 02                	jmp    0x49ea3
   49ea1:	33 c0                	xor    ax,ax
   49ea3:	5d                   	pop    bp
   49ea4:	cb                   	retf
   49ea5:	55                   	push   bp
   49ea6:	8b ec                	mov    bp,sp
   49ea8:	83 ec 04             	sub    sp,0x4
   49eab:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   49eb0:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   49eb5:	eb 0e                	jmp    0x49ec5
   49eb7:	ba 02 00             	mov    dx,0x2
   49eba:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   49ebd:	f7 ea                	imul   dx
   49ebf:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   49ec2:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   49ec5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   49ec8:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   49ecb:	76 ea                	jbe    0x49eb7
   49ecd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   49ed0:	85 46 08             	test   WORD PTR [bp+0x8],ax
   49ed3:	75 04                	jne    0x49ed9
   49ed5:	33 c0                	xor    ax,ax
   49ed7:	eb 03                	jmp    0x49edc
   49ed9:	b8 ff ff             	mov    ax,0xffff
   49edc:	c9                   	leave
   49edd:	cb                   	retf
   49ede:	55                   	push   bp
   49edf:	8b ec                	mov    bp,sp
   49ee1:	68 e0 01             	push   0x1e0
   49ee4:	68 d0 02             	push   0x2d0
   49ee7:	6a 06                	push   0x6
   49ee9:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   49eec:	50                   	push   ax
   49eed:	ff 76 0a             	push   WORD PTR [bp+0xa]
   49ef0:	ff 76 08             	push   WORD PTR [bp+0x8]
   49ef3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   49ef6:	c1 e3 03             	shl    bx,0x3
   49ef9:	b8 88 01             	mov    ax,0x188
   49efc:	8e c0                	mov    es,ax
   49efe:	26 ff b7 9d e2       	push   WORD PTR es:[bx-0x1d63]
   49f03:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   49f06:	c1 e3 03             	shl    bx,0x3
   49f09:	b8 88 01             	mov    ax,0x188
   49f0c:	8e c0                	mov    es,ax
   49f0e:	26 ff b7 9b e2       	push   WORD PTR es:[bx-0x1d65]
   49f13:	6a 00                	push   0x0
   49f15:	6a 00                	push   0x0
   49f17:	9a 30 04 28 00       	call   0x28:0x430
   49f1c:	83 c4 14             	add    sp,0x14
   49f1f:	5d                   	pop    bp
   49f20:	cb                   	retf
   49f21:	55                   	push   bp
   49f22:	8b ec                	mov    bp,sp
   49f24:	83 ec 02             	sub    sp,0x2
   49f27:	83 7e 0a 0e          	cmp    WORD PTR [bp+0xa],0xe
   49f2b:	7d 17                	jge    0x49f44
   49f2d:	68 e0 01             	push   0x1e0
   49f30:	68 41 03             	push   0x341
   49f33:	6a 06                	push   0x6
   49f35:	6a 02                	push   0x2
   49f37:	ff 76 08             	push   WORD PTR [bp+0x8]
   49f3a:	ff 76 06             	push   WORD PTR [bp+0x6]
   49f3d:	6a 23                	push   0x23
   49f3f:	6a 2b                	push   0x2b
   49f41:	e9 7f 00             	jmp    0x49fc3
   49f44:	83 6e 0a 0d          	sub    WORD PTR [bp+0xa],0xd
   49f48:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   49f4c:	7d 24                	jge    0x49f72
   49f4e:	68 e0 01             	push   0x1e0
   49f51:	68 41 03             	push   0x341
   49f54:	6a 06                	push   0x6
   49f56:	6a 12                	push   0x12
   49f58:	6a 00                	push   0x0
   49f5a:	ff 76 06             	push   WORD PTR [bp+0x6]
   49f5d:	33 c0                	xor    ax,ax
   49f5f:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   49f62:	ba 3c 00             	mov    dx,0x3c
   49f65:	2b d0                	sub    dx,ax
   49f67:	52                   	push   dx
   49f68:	6a 32                	push   0x32
   49f6a:	33 c0                	xor    ax,ax
   49f6c:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   49f6f:	50                   	push   ax
   49f70:	eb 53                	jmp    0x49fc5
   49f72:	c7 46 fe 32 00       	mov    WORD PTR [bp-0x2],0x32
   49f77:	b8 88 01             	mov    ax,0x188
   49f7a:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   49f7d:	8e c0                	mov    es,ax
   49f7f:	26 03 16 cb e2       	add    dx,WORD PTR es:0xe2cb
   49f84:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   49f87:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   49f8a:	2b d0                	sub    dx,ax
   49f8c:	3b 56 fe             	cmp    dx,WORD PTR [bp-0x2]
   49f8f:	76 05                	jbe    0x49f96
   49f91:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   49f94:	eb 15                	jmp    0x49fab
   49f96:	b8 88 01             	mov    ax,0x188
   49f99:	50                   	push   ax
   49f9a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   49f9d:	07                   	pop    es
   49f9e:	26 03 06 cb e2       	add    ax,WORD PTR es:0xe2cb
   49fa3:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   49fa6:	03 56 fe             	add    dx,WORD PTR [bp-0x2]
   49fa9:	2b c2                	sub    ax,dx
   49fab:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   49fae:	68 e0 01             	push   0x1e0
   49fb1:	68 41 03             	push   0x341
   49fb4:	6a 06                	push   0x6
   49fb6:	6a 12                	push   0x12
   49fb8:	ff 76 08             	push   WORD PTR [bp+0x8]
   49fbb:	ff 76 06             	push   WORD PTR [bp+0x6]
   49fbe:	6a 3c                	push   0x3c
   49fc0:	ff 76 fe             	push   WORD PTR [bp-0x2]
   49fc3:	6a 00                	push   0x0
   49fc5:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   49fc8:	48                   	dec    ax
   49fc9:	6b c0 32             	imul   ax,ax,0x32
   49fcc:	50                   	push   ax
   49fcd:	9a 30 04 28 00       	call   0x28:0x430
   49fd2:	83 c4 14             	add    sp,0x14
   49fd5:	c9                   	leave
   49fd6:	cb                   	retf
   49fd7:	55                   	push   bp
   49fd8:	8b ec                	mov    bp,sp
   49fda:	83 ec 12             	sub    sp,0x12
   49fdd:	c6 46 f2 00          	mov    BYTE PTR [bp-0xe],0x0
   49fe1:	1e                   	push   ds
   49fe2:	68 6f 64             	push   0x646f
   49fe5:	68 04 01             	push   0x104
   49fe8:	68 88 01             	push   0x188
   49feb:	68 26 de             	push   0xde26
   49fee:	9a 81 0a 20 00       	call   0x20:0xa81
   49ff3:	83 c4 0a             	add    sp,0xa
   49ff6:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   49ff9:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   49ffc:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   49fff:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   4a002:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4a005:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4a008:	83 7e 10 64          	cmp    WORD PTR [bp+0x10],0x64
   4a00c:	7c 07                	jl     0x4a015
   4a00e:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
   4a011:	04 9c                	add    al,0x9c
   4a013:	eb 03                	jmp    0x4a018
   4a015:	8a 46 10             	mov    al,BYTE PTR [bp+0x10]
   4a018:	04 ff                	add    al,0xff
   4a01a:	88 46 f3             	mov    BYTE PTR [bp-0xd],al
   4a01d:	80 7e f3 03          	cmp    BYTE PTR [bp-0xd],0x3
   4a021:	75 06                	jne    0x4a029
   4a023:	c6 46 f3 01          	mov    BYTE PTR [bp-0xd],0x1
   4a027:	eb 1b                	jmp    0x4a044
   4a029:	80 7e f3 03          	cmp    BYTE PTR [bp-0xd],0x3
   4a02d:	76 0b                	jbe    0x4a03a
   4a02f:	80 7e f3 07          	cmp    BYTE PTR [bp-0xd],0x7
   4a033:	73 05                	jae    0x4a03a
   4a035:	fe 4e f3             	dec    BYTE PTR [bp-0xd]
   4a038:	eb 0d                	jmp    0x4a047
   4a03a:	80 7e f3 07          	cmp    BYTE PTR [bp-0xd],0x7
   4a03e:	75 07                	jne    0x4a047
   4a040:	c6 46 f3 04          	mov    BYTE PTR [bp-0xd],0x4
   4a044:	fe 46 f2             	inc    BYTE PTR [bp-0xe]
   4a047:	b8 88 01             	mov    ax,0x188
   4a04a:	8e c0                	mov    es,ax
   4a04c:	26 c4 1e 37 e3       	les    bx,DWORD PTR es:0xe337
   4a051:	26 80 7f 08 01       	cmp    BYTE PTR es:[bx+0x8],0x1
   4a056:	75 32                	jne    0x4a08a
   4a058:	b8 88 01             	mov    ax,0x188
   4a05b:	8e c0                	mov    es,ax
   4a05d:	26 c4 1e 37 e3       	les    bx,DWORD PTR es:0xe337
   4a062:	26 ff 37             	push   WORD PTR es:[bx]
   4a065:	8a 46 f3             	mov    al,BYTE PTR [bp-0xd]
   4a068:	b4 00                	mov    ah,0x0
   4a06a:	8b 56 0e             	mov    dx,WORD PTR [bp+0xe]
   4a06d:	83 c2 f5             	add    dx,0xfff5
   4a070:	6b d2 06             	imul   dx,dx,0x6
   4a073:	03 d0                	add    dx,ax
   4a075:	6b d2 0c             	imul   dx,dx,0xc
   4a078:	6a 00                	push   0x0
   4a07a:	52                   	push   dx
   4a07b:	6a 0c                	push   0xc
   4a07d:	9a 88 06 98 00       	call   0x98:0x688
   4a082:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   4a085:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   4a088:	eb 2c                	jmp    0x4a0b6
   4a08a:	8a 46 f3             	mov    al,BYTE PTR [bp-0xd]
   4a08d:	b4 00                	mov    ah,0x0
   4a08f:	8b 56 0e             	mov    dx,WORD PTR [bp+0xe]
   4a092:	83 c2 f5             	add    dx,0xfff5
   4a095:	6b d2 06             	imul   dx,dx,0x6
   4a098:	03 d0                	add    dx,ax
   4a09a:	6b d2 0c             	imul   dx,dx,0xc
   4a09d:	b8 88 01             	mov    ax,0x188
   4a0a0:	8e c0                	mov    es,ax
   4a0a2:	26 c4 1e 37 e3       	les    bx,DWORD PTR es:0xe337
   4a0a7:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   4a0ab:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
   4a0ae:	03 da                	add    bx,dx
   4a0b0:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4a0b3:	89 5e ee             	mov    WORD PTR [bp-0x12],bx
   4a0b6:	8a 46 f3             	mov    al,BYTE PTR [bp-0xd]
   4a0b9:	b4 00                	mov    ah,0x0
   4a0bb:	6b c0 06             	imul   ax,ax,0x6
   4a0be:	88 46 f3             	mov    BYTE PTR [bp-0xd],al
   4a0c1:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   4a0c4:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4a0c7:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4a0ca:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   4a0cd:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   4a0d1:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4a0d4:	80 7e f2 00          	cmp    BYTE PTR [bp-0xe],0x0
   4a0d8:	74 0f                	je     0x4a0e9
   4a0da:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   4a0dd:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4a0e0:	05 04 00             	add    ax,0x4
   4a0e3:	26 2b 47 08          	sub    ax,WORD PTR es:[bx+0x8]
   4a0e7:	eb 0d                	jmp    0x4a0f6
   4a0e9:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   4a0ec:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   4a0f0:	05 04 00             	add    ax,0x4
   4a0f3:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4a0f6:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   4a0f9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a0fc:	48                   	dec    ax
   4a0fd:	29 46 fa             	sub    WORD PTR [bp-0x6],ax
   4a100:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   4a103:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   4a107:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4a10a:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   4a10d:	26 8b 47 06          	mov    ax,WORD PTR es:[bx+0x6]
   4a111:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4a114:	c4 5e ee             	les    bx,DWORD PTR [bp-0x12]
   4a117:	26 8b 47 0a          	mov    ax,WORD PTR es:[bx+0xa]
   4a11b:	05 08 00             	add    ax,0x8
   4a11e:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   4a121:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   4a124:	68 88 01             	push   0x188
   4a127:	68 26 de             	push   0xde26
   4a12a:	9a 22 0b 20 00       	call   0x20:0xb22
   4a12f:	83 c4 04             	add    sp,0x4
   4a132:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4a135:	48                   	dec    ax
   4a136:	29 46 f8             	sub    WORD PTR [bp-0x8],ax
   4a139:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4a13c:	bb 02 00             	mov    bx,0x2
   4a13f:	99                   	cwd
   4a140:	f7 fb                	idiv   bx
   4a142:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   4a145:	03 d0                	add    dx,ax
   4a147:	83 c2 f3             	add    dx,0xfff3
   4a14a:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   4a14d:	26 89 17             	mov    WORD PTR es:[bx],dx
   4a150:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4a153:	bb 02 00             	mov    bx,0x2
   4a156:	99                   	cwd
   4a157:	f7 fb                	idiv   bx
   4a159:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   4a15c:	03 d0                	add    dx,ax
   4a15e:	83 c2 f3             	add    dx,0xfff3
   4a161:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4a164:	26 89 17             	mov    WORD PTR es:[bx],dx
   4a167:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   4a16b:	7d 17                	jge    0x4a184
   4a16d:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4a170:	29 46 fc             	sub    WORD PTR [bp-0x4],ax
   4a173:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4a176:	01 46 f8             	add    WORD PTR [bp-0x8],ax
   4a179:	33 c0                	xor    ax,ax
   4a17b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4a17e:	c4 5e 0a             	les    bx,DWORD PTR [bp+0xa]
   4a181:	26 89 07             	mov    WORD PTR es:[bx],ax
   4a184:	83 7e 10 64          	cmp    WORD PTR [bp+0x10],0x64
   4a188:	7d 34                	jge    0x4a1be
   4a18a:	80 7e f2 00          	cmp    BYTE PTR [bp-0xe],0x0
   4a18e:	74 08                	je     0x4a198
   4a190:	68 e0 01             	push   0x1e0
   4a193:	68 c4 03             	push   0x3c4
   4a196:	eb 06                	jmp    0x4a19e
   4a198:	68 e0 01             	push   0x1e0
   4a19b:	68 41 03             	push   0x341
   4a19e:	6a 06                	push   0x6
   4a1a0:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   4a1a3:	50                   	push   ax
   4a1a4:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4a1a7:	ff 76 f6             	push   WORD PTR [bp-0xa]
   4a1aa:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4a1ad:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4a1b0:	ff 76 fc             	push   WORD PTR [bp-0x4]
   4a1b3:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4a1b6:	9a 30 04 28 00       	call   0x28:0x430
   4a1bb:	83 c4 14             	add    sp,0x14
   4a1be:	c9                   	leave
   4a1bf:	cb                   	retf
   4a1c0:	55                   	push   bp
   4a1c1:	8b ec                	mov    bp,sp
   4a1c3:	83 ec 1a             	sub    sp,0x1a
   4a1c6:	56                   	push   si
   4a1c7:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a1ca:	16                   	push   ss
   4a1cb:	50                   	push   ax
   4a1cc:	1e                   	push   ds
   4a1cd:	68 32 63             	push   0x6332
   4a1d0:	b9 0d 00             	mov    cx,0xd
   4a1d3:	9a 7a 12 00 00       	call   0x0:0x127a
   4a1d8:	6a 01                	push   0x1
   4a1da:	1e                   	push   ds
   4a1db:	68 7f 64             	push   0x647f
   4a1de:	6a 01                	push   0x1
   4a1e0:	9a 20 00 48 01       	call   0x148:0x20
   4a1e5:	83 c4 08             	add    sp,0x8
   4a1e8:	6a 02                	push   0x2
   4a1ea:	1e                   	push   ds
   4a1eb:	68 8a 64             	push   0x648a
   4a1ee:	6a 01                	push   0x1
   4a1f0:	9a 20 00 48 01       	call   0x148:0x20
   4a1f5:	83 c4 08             	add    sp,0x8
   4a1f8:	6a 07                	push   0x7
   4a1fa:	1e                   	push   ds
   4a1fb:	68 96 64             	push   0x6496
   4a1fe:	6a 01                	push   0x1
   4a200:	9a 20 00 48 01       	call   0x148:0x20
   4a205:	83 c4 08             	add    sp,0x8
   4a208:	6a 02                	push   0x2
   4a20a:	68 c8 00             	push   0xc8
   4a20d:	68 40 01             	push   0x140
   4a210:	6a 06                	push   0x6
   4a212:	9a 4a 0e 20 00       	call   0x20:0xe4a
   4a217:	83 c4 08             	add    sp,0x8
   4a21a:	6a 00                	push   0x0
   4a21c:	6a 00                	push   0x0
   4a21e:	68 f8 01             	push   0x1f8
   4a221:	9a 64 01 20 00       	call   0x20:0x164
   4a226:	83 c4 06             	add    sp,0x6
   4a229:	bb 88 01             	mov    bx,0x188
   4a22c:	8e c3                	mov    es,bx
   4a22e:	26 89 16 39 e3       	mov    WORD PTR es:0xe339,dx
   4a233:	26 a3 37 e3          	mov    es:0xe337,ax
   4a237:	b8 88 01             	mov    ax,0x188
   4a23a:	8e c0                	mov    es,ax
   4a23c:	26 c4 1e 37 e3       	les    bx,DWORD PTR es:0xe337
   4a241:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   4a245:	26 8b 17             	mov    dx,WORD PTR es:[bx]
   4a248:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4a24b:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   4a24e:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4a253:	e9 12 01             	jmp    0x4a368
   4a256:	68 8d 00             	push   0x8d
   4a259:	9a 2a 00 30 01       	call   0x130:0x2a
   4a25e:	59                   	pop    cx
   4a25f:	0a c0                	or     al,al
   4a261:	74 66                	je     0x4a2c9
   4a263:	68 8f 00             	push   0x8f
   4a266:	9a 2a 00 30 01       	call   0x130:0x2a
   4a26b:	59                   	pop    cx
   4a26c:	b4 00                	mov    ah,0x0
   4a26e:	0b c0                	or     ax,ax
   4a270:	75 57                	jne    0x4a2c9
   4a272:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a275:	05 0b 00             	add    ax,0xb
   4a278:	50                   	push   ax
   4a279:	1e                   	push   ds
   4a27a:	68 a3 64             	push   0x64a3
   4a27d:	6a 01                	push   0x1
   4a27f:	9a 20 00 48 01       	call   0x148:0x20
   4a284:	83 c4 08             	add    sp,0x8
   4a287:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a28a:	6b c0 06             	imul   ax,ax,0x6
   4a28d:	6b c0 0c             	imul   ax,ax,0xc
   4a290:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   4a293:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4a296:	03 d8                	add    bx,ax
   4a298:	b8 88 01             	mov    ax,0x188
   4a29b:	8e c0                	mov    es,ax
   4a29d:	26 c4 36 37 e3       	les    si,DWORD PTR es:0xe337
   4a2a2:	26 89 54 02          	mov    WORD PTR es:[si+0x2],dx
   4a2a6:	26 89 1c             	mov    WORD PTR es:[si],bx
   4a2a9:	b8 88 01             	mov    ax,0x188
   4a2ac:	8e c0                	mov    es,ax
   4a2ae:	26 ff 36 39 e3       	push   WORD PTR es:0xe339
   4a2b3:	26 ff 36 37 e3       	push   WORD PTR es:0xe337
   4a2b8:	1e                   	push   ds
   4a2b9:	68 ae 64             	push   0x64ae
   4a2bc:	6a 00                	push   0x0
   4a2be:	9a 2f 00 48 01       	call   0x148:0x2f
   4a2c3:	83 c4 0a             	add    sp,0xa
   4a2c6:	e9 9c 00             	jmp    0x4a365
   4a2c9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a2cc:	05 0b 00             	add    ax,0xb
   4a2cf:	50                   	push   ax
   4a2d0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a2d3:	6b db 5c             	imul   bx,bx,0x5c
   4a2d6:	b8 88 01             	mov    ax,0x188
   4a2d9:	8e c0                	mov    es,ax
   4a2db:	26 8b 87 44 9a       	mov    ax,WORD PTR es:[bx-0x65bc]
   4a2e0:	6b c0 0d             	imul   ax,ax,0xd
   4a2e3:	05 9b 26             	add    ax,0x269b
   4a2e6:	68 88 01             	push   0x188
   4a2e9:	50                   	push   ax
   4a2ea:	16                   	push   ss
   4a2eb:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a2ee:	50                   	push   ax
   4a2ef:	9a a3 49 00 00       	call   0x0:0x49a3
   4a2f4:	83 c4 08             	add    sp,0x8
   4a2f7:	52                   	push   dx
   4a2f8:	50                   	push   ax
   4a2f9:	6a 01                	push   0x1
   4a2fb:	9a 20 00 48 01       	call   0x148:0x20
   4a300:	83 c4 08             	add    sp,0x8
   4a303:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a306:	6b c0 06             	imul   ax,ax,0x6
   4a309:	6b c0 0c             	imul   ax,ax,0xc
   4a30c:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   4a30f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4a312:	03 d8                	add    bx,ax
   4a314:	b8 88 01             	mov    ax,0x188
   4a317:	8e c0                	mov    es,ax
   4a319:	26 c4 36 37 e3       	les    si,DWORD PTR es:0xe337
   4a31e:	26 89 54 02          	mov    WORD PTR es:[si+0x2],dx
   4a322:	26 89 1c             	mov    WORD PTR es:[si],bx
   4a325:	b8 88 01             	mov    ax,0x188
   4a328:	8e c0                	mov    es,ax
   4a32a:	26 ff 36 39 e3       	push   WORD PTR es:0xe339
   4a32f:	26 ff 36 37 e3       	push   WORD PTR es:0xe337
   4a334:	1e                   	push   ds
   4a335:	68 b9 64             	push   0x64b9
   4a338:	16                   	push   ss
   4a339:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a33c:	50                   	push   ax
   4a33d:	9a 34 00 48 01       	call   0x148:0x34
   4a342:	83 c4 08             	add    sp,0x8
   4a345:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   4a348:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4a34b:	52                   	push   dx
   4a34c:	50                   	push   ax
   4a34d:	6a 00                	push   0x0
   4a34f:	9a 2f 00 48 01       	call   0x148:0x2f
   4a354:	83 c4 0a             	add    sp,0xa
   4a357:	ff 76 f6             	push   WORD PTR [bp-0xa]
   4a35a:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4a35d:	9a c2 24 00 00       	call   0x0:0x24c2
   4a362:	83 c4 04             	add    sp,0x4
   4a365:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4a368:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   4a36c:	7f 03                	jg     0x4a371
   4a36e:	e9 e5 fe             	jmp    0x4a256
   4a371:	c7 46 fe 04 00       	mov    WORD PTR [bp-0x2],0x4
   4a376:	e9 ea 00             	jmp    0x4a463
   4a379:	1e                   	push   ds
   4a37a:	68 bd 64             	push   0x64bd
   4a37d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a380:	6b db 06             	imul   bx,bx,0x6
   4a383:	b8 88 01             	mov    ax,0x188
   4a386:	8e c0                	mov    es,ax
   4a388:	26 8b 87 c8 5b       	mov    ax,WORD PTR es:[bx+0x5bc8]
   4a38d:	bb 64 00             	mov    bx,0x64
   4a390:	99                   	cwd
   4a391:	f7 fb                	idiv   bx
   4a393:	6b d2 09             	imul   dx,dx,0x9
   4a396:	81 c2 85 21          	add    dx,0x2185
   4a39a:	68 88 01             	push   0x188
   4a39d:	52                   	push   dx
   4a39e:	16                   	push   ss
   4a39f:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a3a2:	50                   	push   ax
   4a3a3:	9a a3 49 00 00       	call   0x0:0x49a3
   4a3a8:	83 c4 08             	add    sp,0x8
   4a3ab:	52                   	push   dx
   4a3ac:	50                   	push   ax
   4a3ad:	9a f7 48 00 00       	call   0x0:0x48f7
   4a3b2:	83 c4 08             	add    sp,0x8
   4a3b5:	16                   	push   ss
   4a3b6:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a3b9:	50                   	push   ax
   4a3ba:	9a cc 49 00 00       	call   0x0:0x49cc
   4a3bf:	83 c4 04             	add    sp,0x4
   4a3c2:	3d 05 00             	cmp    ax,0x5
   4a3c5:	73 21                	jae    0x4a3e8
   4a3c7:	1e                   	push   ds
   4a3c8:	68 c3 64             	push   0x64c3
   4a3cb:	68 88 01             	push   0x188
   4a3ce:	68 85 21             	push   0x2185
   4a3d1:	16                   	push   ss
   4a3d2:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a3d5:	50                   	push   ax
   4a3d6:	9a a3 49 00 00       	call   0x0:0x49a3
   4a3db:	83 c4 08             	add    sp,0x8
   4a3de:	52                   	push   dx
   4a3df:	50                   	push   ax
   4a3e0:	9a f7 48 00 00       	call   0x0:0x48f7
   4a3e5:	83 c4 08             	add    sp,0x8
   4a3e8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a3eb:	05 0b 00             	add    ax,0xb
   4a3ee:	50                   	push   ax
   4a3ef:	16                   	push   ss
   4a3f0:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a3f3:	50                   	push   ax
   4a3f4:	6a 01                	push   0x1
   4a3f6:	9a 20 00 48 01       	call   0x148:0x20
   4a3fb:	83 c4 08             	add    sp,0x8
   4a3fe:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a401:	6b c0 06             	imul   ax,ax,0x6
   4a404:	6b c0 0c             	imul   ax,ax,0xc
   4a407:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   4a40a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4a40d:	03 d8                	add    bx,ax
   4a40f:	b8 88 01             	mov    ax,0x188
   4a412:	8e c0                	mov    es,ax
   4a414:	26 c4 36 37 e3       	les    si,DWORD PTR es:0xe337
   4a419:	26 89 54 02          	mov    WORD PTR es:[si+0x2],dx
   4a41d:	26 89 1c             	mov    WORD PTR es:[si],bx
   4a420:	b8 88 01             	mov    ax,0x188
   4a423:	8e c0                	mov    es,ax
   4a425:	26 ff 36 39 e3       	push   WORD PTR es:0xe339
   4a42a:	26 ff 36 37 e3       	push   WORD PTR es:0xe337
   4a42f:	1e                   	push   ds
   4a430:	68 c9 64             	push   0x64c9
   4a433:	16                   	push   ss
   4a434:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a437:	50                   	push   ax
   4a438:	9a 34 00 48 01       	call   0x148:0x34
   4a43d:	83 c4 08             	add    sp,0x8
   4a440:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   4a443:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4a446:	52                   	push   dx
   4a447:	50                   	push   ax
   4a448:	6a 00                	push   0x0
   4a44a:	9a 2f 00 48 01       	call   0x148:0x2f
   4a44f:	83 c4 0a             	add    sp,0xa
   4a452:	ff 76 f6             	push   WORD PTR [bp-0xa]
   4a455:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4a458:	9a c2 24 00 00       	call   0x0:0x24c2
   4a45d:	83 c4 04             	add    sp,0x4
   4a460:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4a463:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   4a467:	7f 03                	jg     0x4a46c
   4a469:	e9 0d ff             	jmp    0x4a379
   4a46c:	b8 88 01             	mov    ax,0x188
   4a46f:	8e c0                	mov    es,ax
   4a471:	26 c4 1e 37 e3       	les    bx,DWORD PTR es:0xe337
   4a476:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4a479:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   4a47c:	26 89 47 02          	mov    WORD PTR es:[bx+0x2],ax
   4a480:	26 89 17             	mov    WORD PTR es:[bx],dx
   4a483:	6a 01                	push   0x1
   4a485:	b8 88 01             	mov    ax,0x188
   4a488:	8e c0                	mov    es,ax
   4a48a:	26 ff 36 39 e3       	push   WORD PTR es:0xe339
   4a48f:	26 ff 36 37 e3       	push   WORD PTR es:0xe337
   4a494:	9a f4 05 20 00       	call   0x20:0x5f4
   4a499:	83 c4 06             	add    sp,0x6
   4a49c:	6a 00                	push   0x0
   4a49e:	6a 00                	push   0x0
   4a4a0:	68 50 46             	push   0x4650
   4a4a3:	9a 64 01 20 00       	call   0x20:0x164
   4a4a8:	83 c4 06             	add    sp,0x6
   4a4ab:	bb 88 01             	mov    bx,0x188
   4a4ae:	8e c3                	mov    es,bx
   4a4b0:	26 89 16 31 e3       	mov    WORD PTR es:0xe331,dx
   4a4b5:	26 a3 2f e3          	mov    es:0xe32f,ax
   4a4b9:	b8 88 01             	mov    ax,0x188
   4a4bc:	8e c0                	mov    es,ax
   4a4be:	26 c7 06 2b e3 2c 01 	mov    WORD PTR es:0xe32b,0x12c
   4a4c5:	b8 88 01             	mov    ax,0x188
   4a4c8:	8e c0                	mov    es,ax
   4a4ca:	26 c7 06 2d e3 3c 00 	mov    WORD PTR es:0xe32d,0x3c
   4a4d1:	1e                   	push   ds
   4a4d2:	68 cd 64             	push   0x64cd
   4a4d5:	16                   	push   ss
   4a4d6:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a4d9:	50                   	push   ax
   4a4da:	9a b4 48 00 00       	call   0x0:0x48b4
   4a4df:	83 c4 08             	add    sp,0x8
   4a4e2:	6a 57                	push   0x57
   4a4e4:	16                   	push   ss
   4a4e5:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a4e8:	50                   	push   ax
   4a4e9:	6a 00                	push   0x0
   4a4eb:	9a 20 00 48 01       	call   0x148:0x20
   4a4f0:	83 c4 08             	add    sp,0x8
   4a4f3:	68 e0 01             	push   0x1e0
   4a4f6:	68 d0 02             	push   0x2d0
   4a4f9:	6a 12                	push   0x12
   4a4fb:	6a 57                	push   0x57
   4a4fd:	6a 00                	push   0x0
   4a4ff:	6a 00                	push   0x0
   4a501:	b8 88 01             	mov    ax,0x188
   4a504:	8e c0                	mov    es,ax
   4a506:	26 ff 36 55 e5       	push   WORD PTR es:0xe555
   4a50b:	b8 88 01             	mov    ax,0x188
   4a50e:	8e c0                	mov    es,ax
   4a510:	26 ff 36 53 e5       	push   WORD PTR es:0xe553
   4a515:	6a 00                	push   0x0
   4a517:	6a 00                	push   0x0
   4a519:	9a 30 04 28 00       	call   0x28:0x430
   4a51e:	83 c4 14             	add    sp,0x14
   4a521:	1e                   	push   ds
   4a522:	68 db 64             	push   0x64db
   4a525:	68 aa 01             	push   0x1aa
   4a528:	68 88 01             	push   0x188
   4a52b:	68 57 e5             	push   0xe557
   4a52e:	9a 2f 02 40 00       	call   0x40:0x22f
   4a533:	83 c4 0a             	add    sp,0xa
   4a536:	1e                   	push   ds
   4a537:	68 eb 64             	push   0x64eb
   4a53a:	16                   	push   ss
   4a53b:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a53e:	50                   	push   ax
   4a53f:	9a b4 48 00 00       	call   0x0:0x48b4
   4a544:	83 c4 08             	add    sp,0x8
   4a547:	6a 57                	push   0x57
   4a549:	16                   	push   ss
   4a54a:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a54d:	50                   	push   ax
   4a54e:	6a 00                	push   0x0
   4a550:	9a 20 00 48 01       	call   0x148:0x20
   4a555:	83 c4 08             	add    sp,0x8
   4a558:	68 e0 01             	push   0x1e0
   4a55b:	68 d0 02             	push   0x2d0
   4a55e:	6a 12                	push   0x12
   4a560:	6a 57                	push   0x57
   4a562:	6a 00                	push   0x0
   4a564:	6a 32                	push   0x32
   4a566:	b8 88 01             	mov    ax,0x188
   4a569:	8e c0                	mov    es,ax
   4a56b:	26 ff 36 55 e5       	push   WORD PTR es:0xe555
   4a570:	b8 88 01             	mov    ax,0x188
   4a573:	8e c0                	mov    es,ax
   4a575:	26 ff 36 53 e5       	push   WORD PTR es:0xe553
   4a57a:	6a 00                	push   0x0
   4a57c:	6a 00                	push   0x0
   4a57e:	9a 30 04 28 00       	call   0x28:0x430
   4a583:	83 c4 14             	add    sp,0x14
   4a586:	1e                   	push   ds
   4a587:	68 f9 64             	push   0x64f9
   4a58a:	68 ab 01             	push   0x1ab
   4a58d:	68 88 01             	push   0x188
   4a590:	68 57 e5             	push   0xe557
   4a593:	9a 2f 02 40 00       	call   0x40:0x22f
   4a598:	83 c4 0a             	add    sp,0xa
   4a59b:	c7 46 fe 02 00       	mov    WORD PTR [bp-0x2],0x2
   4a5a0:	eb 29                	jmp    0x4a5cb
   4a5a2:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a5a5:	d1 e3                	shl    bx,1
   4a5a7:	b8 88 01             	mov    ax,0x188
   4a5aa:	8e c0                	mov    es,ax
   4a5ac:	26 83 bf 0c 9f 00    	cmp    WORD PTR es:[bx-0x60f4],0x0
   4a5b2:	74 14                	je     0x4a5c8
   4a5b4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a5b7:	d1 e3                	shl    bx,1
   4a5b9:	b8 88 01             	mov    ax,0x188
   4a5bc:	8e c0                	mov    es,ax
   4a5be:	26 8b 87 0c 9f       	mov    ax,WORD PTR es:[bx-0x60f4]
   4a5c3:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4a5c6:	eb 09                	jmp    0x4a5d1
   4a5c8:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4a5cb:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   4a5cf:	7c d1                	jl     0x4a5a2
   4a5d1:	c7 46 fe 02 00       	mov    WORD PTR [bp-0x2],0x2
   4a5d6:	e9 bd 01             	jmp    0x4a796
   4a5d9:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a5dc:	d1 e3                	shl    bx,1
   4a5de:	b8 88 01             	mov    ax,0x188
   4a5e1:	8e c0                	mov    es,ax
   4a5e3:	26 83 bf 0c 9f 00    	cmp    WORD PTR es:[bx-0x60f4],0x0
   4a5e9:	75 05                	jne    0x4a5f0
   4a5eb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4a5ee:	eb 0f                	jmp    0x4a5ff
   4a5f0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a5f3:	d1 e3                	shl    bx,1
   4a5f5:	b8 88 01             	mov    ax,0x188
   4a5f8:	8e c0                	mov    es,ax
   4a5fa:	26 8b 87 0c 9f       	mov    ax,WORD PTR es:[bx-0x60f4]
   4a5ff:	50                   	push   ax
   4a600:	1e                   	push   ds
   4a601:	68 09 65             	push   0x6509
   4a604:	16                   	push   ss
   4a605:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a608:	50                   	push   ax
   4a609:	9a b4 48 00 00       	call   0x0:0x48b4
   4a60e:	83 c4 0a             	add    sp,0xa
   4a611:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a614:	d1 e3                	shl    bx,1
   4a616:	b8 88 01             	mov    ax,0x188
   4a619:	8e c0                	mov    es,ax
   4a61b:	26 8b 9f 0c 9f       	mov    bx,WORD PTR es:[bx-0x60f4]
   4a620:	4b                   	dec    bx
   4a621:	83 fb 07             	cmp    bx,0x7
   4a624:	76 03                	jbe    0x4a629
   4a626:	e9 11 01             	jmp    0x4a73a
   4a629:	d1 e3                	shl    bx,1
   4a62b:	2e ff a7 70 0b       	jmp    WORD PTR cs:[bx+0xb70]
   4a630:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a633:	d1 e3                	shl    bx,1
   4a635:	b8 88 01             	mov    ax,0x188
   4a638:	8e c0                	mov    es,ax
   4a63a:	26 c7 87 26 26 02 00 	mov    WORD PTR es:[bx+0x2626],0x2
   4a641:	b8 88 01             	mov    ax,0x188
   4a644:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a647:	8e c0                	mov    es,ax
   4a649:	26 c6 87 24 26 b7    	mov    BYTE PTR es:[bx+0x2624],0xb7
   4a64f:	e9 e8 00             	jmp    0x4a73a
   4a652:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a655:	d1 e3                	shl    bx,1
   4a657:	b8 88 01             	mov    ax,0x188
   4a65a:	8e c0                	mov    es,ax
   4a65c:	26 c7 87 26 26 03 00 	mov    WORD PTR es:[bx+0x2626],0x3
   4a663:	b8 88 01             	mov    ax,0x188
   4a666:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a669:	8e c0                	mov    es,ax
   4a66b:	26 c6 87 24 26 f8    	mov    BYTE PTR es:[bx+0x2624],0xf8
   4a671:	e9 c6 00             	jmp    0x4a73a
   4a674:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a677:	d1 e3                	shl    bx,1
   4a679:	b8 88 01             	mov    ax,0x188
   4a67c:	8e c0                	mov    es,ax
   4a67e:	26 c7 87 26 26 03 00 	mov    WORD PTR es:[bx+0x2626],0x3
   4a685:	b8 88 01             	mov    ax,0x188
   4a688:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a68b:	8e c0                	mov    es,ax
   4a68d:	26 c6 87 24 26 f3    	mov    BYTE PTR es:[bx+0x2624],0xf3
   4a693:	e9 a4 00             	jmp    0x4a73a
   4a696:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a699:	d1 e3                	shl    bx,1
   4a69b:	b8 88 01             	mov    ax,0x188
   4a69e:	8e c0                	mov    es,ax
   4a6a0:	26 c7 87 26 26 01 00 	mov    WORD PTR es:[bx+0x2626],0x1
   4a6a7:	b8 88 01             	mov    ax,0x188
   4a6aa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a6ad:	8e c0                	mov    es,ax
   4a6af:	26 c6 87 24 26 93    	mov    BYTE PTR es:[bx+0x2624],0x93
   4a6b5:	e9 82 00             	jmp    0x4a73a
   4a6b8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a6bb:	d1 e3                	shl    bx,1
   4a6bd:	b8 88 01             	mov    ax,0x188
   4a6c0:	8e c0                	mov    es,ax
   4a6c2:	26 c7 87 26 26 05 00 	mov    WORD PTR es:[bx+0x2626],0x5
   4a6c9:	b8 88 01             	mov    ax,0x188
   4a6cc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a6cf:	8e c0                	mov    es,ax
   4a6d1:	26 c6 87 24 26 ee    	mov    BYTE PTR es:[bx+0x2624],0xee
   4a6d7:	eb 61                	jmp    0x4a73a
   4a6d9:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a6dc:	d1 e3                	shl    bx,1
   4a6de:	b8 88 01             	mov    ax,0x188
   4a6e1:	8e c0                	mov    es,ax
   4a6e3:	26 c7 87 26 26 09 00 	mov    WORD PTR es:[bx+0x2626],0x9
   4a6ea:	b8 88 01             	mov    ax,0x188
   4a6ed:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a6f0:	8e c0                	mov    es,ax
   4a6f2:	26 c6 87 24 26 94    	mov    BYTE PTR es:[bx+0x2624],0x94
   4a6f8:	eb 40                	jmp    0x4a73a
   4a6fa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a6fd:	d1 e3                	shl    bx,1
   4a6ff:	b8 88 01             	mov    ax,0x188
   4a702:	8e c0                	mov    es,ax
   4a704:	26 c7 87 26 26 04 00 	mov    WORD PTR es:[bx+0x2626],0x4
   4a70b:	b8 88 01             	mov    ax,0x188
   4a70e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a711:	8e c0                	mov    es,ax
   4a713:	26 c6 87 24 26 af    	mov    BYTE PTR es:[bx+0x2624],0xaf
   4a719:	eb 1f                	jmp    0x4a73a
   4a71b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a71e:	d1 e3                	shl    bx,1
   4a720:	b8 88 01             	mov    ax,0x188
   4a723:	8e c0                	mov    es,ax
   4a725:	26 c7 87 26 26 06 00 	mov    WORD PTR es:[bx+0x2626],0x6
   4a72c:	b8 88 01             	mov    ax,0x188
   4a72f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4a732:	8e c0                	mov    es,ax
   4a734:	26 c6 87 24 26 88    	mov    BYTE PTR es:[bx+0x2624],0x88
   4a73a:	6a 57                	push   0x57
   4a73c:	16                   	push   ss
   4a73d:	8d 46 e6             	lea    ax,[bp-0x1a]
   4a740:	50                   	push   ax
   4a741:	6a 01                	push   0x1
   4a743:	9a 20 00 48 01       	call   0x148:0x20
   4a748:	83 c4 08             	add    sp,0x8
   4a74b:	68 e0 01             	push   0x1e0
   4a74e:	68 d0 02             	push   0x2d0
   4a751:	6a 12                	push   0x12
   4a753:	6a 57                	push   0x57
   4a755:	6a 00                	push   0x0
   4a757:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4a75a:	6b c0 32             	imul   ax,ax,0x32
   4a75d:	50                   	push   ax
   4a75e:	b8 88 01             	mov    ax,0x188
   4a761:	8e c0                	mov    es,ax
   4a763:	26 ff 36 55 e5       	push   WORD PTR es:0xe555
   4a768:	b8 88 01             	mov    ax,0x188
   4a76b:	8e c0                	mov    es,ax
   4a76d:	26 ff 36 53 e5       	push   WORD PTR es:0xe553
   4a772:	6a 00                	push   0x0
   4a774:	6a 00                	push   0x0
   4a776:	9a 30 04 28 00       	call   0x28:0x430
   4a77b:	83 c4 14             	add    sp,0x14
   4a77e:	1e                   	push   ds
   4a77f:	68 18 65             	push   0x6518
   4a782:	68 be 01             	push   0x1be
   4a785:	68 88 01             	push   0x188
   4a788:	68 57 e5             	push   0xe557
   4a78b:	9a 2f 02 40 00       	call   0x40:0x22f
   4a790:	83 c4 0a             	add    sp,0xa
   4a793:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4a796:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   4a79a:	7d 03                	jge    0x4a79f
   4a79c:	e9 3a fe             	jmp    0x4a5d9
   4a79f:	6a 01                	push   0x1
   4a7a1:	b8 88 01             	mov    ax,0x188
   4a7a4:	8e c0                	mov    es,ax
   4a7a6:	26 ff 36 31 e3       	push   WORD PTR es:0xe331
   4a7ab:	26 ff 36 2f e3       	push   WORD PTR es:0xe32f
   4a7b0:	9a f4 05 20 00       	call   0x20:0x5f4
   4a7b5:	83 c4 06             	add    sp,0x6
   4a7b8:	90                   	nop
   4a7b9:	0e                   	push   cs
   4a7ba:	e8 e3 66             	call   0x40ea0
   4a7bd:	5e                   	pop    si
   4a7be:	c9                   	leave
   4a7bf:	cb                   	retf
   4a7c0:	e0 09                	loopne 0x4a7cb
   4a7c2:	02 0a                	add    cl,BYTE PTR [bp+si]
   4a7c4:	24 0a                	and    al,0xa
   4a7c6:	46                   	inc    si
   4a7c7:	0a 68 0a             	or     ch,BYTE PTR [bx+si+0xa]
   4a7ca:	89 0a                	mov    WORD PTR [bp+si],cx
   4a7cc:	aa                   	stos   BYTE PTR es:[di],al
   4a7cd:	0a cb                	or     cl,bl
   4a7cf:	0a 55 8b             	or     dl,BYTE PTR [di-0x75]
   4a7d2:	ec                   	in     al,dx
   4a7d3:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   4a7d7:	7d 04                	jge    0x4a7dd
   4a7d9:	33 c0                	xor    ax,ax
   4a7db:	eb 03                	jmp    0x4a7e0
   4a7dd:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4a7e0:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4a7e3:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
   4a7e7:	7d 04                	jge    0x4a7ed
   4a7e9:	33 c0                	xor    ax,ax
   4a7eb:	eb 03                	jmp    0x4a7f0
   4a7ed:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4a7f0:	89 46 0a             	mov    WORD PTR [bp+0xa],ax
   4a7f3:	83 7e 06 01          	cmp    WORD PTR [bp+0x6],0x1
   4a7f7:	75 1d                	jne    0x4a816
   4a7f9:	6a 05                	push   0x5
   4a7fb:	ff 76 10             	push   WORD PTR [bp+0x10]
   4a7fe:	ff 76 0e             	push   WORD PTR [bp+0xe]
   4a801:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4a804:	ff 76 0a             	push   WORD PTR [bp+0xa]
   4a807:	ff 76 08             	push   WORD PTR [bp+0x8]
   4a80a:	6a 06                	push   0x6
   4a80c:	9a 34 00 80 01       	call   0x180:0x34
   4a811:	83 c4 0e             	add    sp,0xe
   4a814:	eb 19                	jmp    0x4a82f
   4a816:	ff 76 10             	push   WORD PTR [bp+0x10]
   4a819:	ff 76 0e             	push   WORD PTR [bp+0xe]
   4a81c:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4a81f:	ff 76 0a             	push   WORD PTR [bp+0xa]
   4a822:	ff 76 08             	push   WORD PTR [bp+0x8]
   4a825:	6a 06                	push   0x6
   4a827:	9a 39 00 80 01       	call   0x180:0x39
   4a82c:	83 c4 0c             	add    sp,0xc
   4a82f:	5d                   	pop    bp
   4a830:	cb                   	retf
   4a831:	55                   	push   bp
   4a832:	8b ec                	mov    bp,sp
   4a834:	9a 04 02 30 00       	call   0x30:0x204
   4a839:	b8 88 01             	mov    ax,0x188
   4a83c:	8e c0                	mov    es,ax
   4a83e:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   4a843:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   4a848:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a84b:	c1 e3 03             	shl    bx,0x3
   4a84e:	b8 88 01             	mov    ax,0x188
   4a851:	8e c0                	mov    es,ax
   4a853:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   4a858:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   4a85d:	9a 8a 06 20 00       	call   0x20:0x68a
   4a862:	83 c4 08             	add    sp,0x8
   4a865:	b8 88 01             	mov    ax,0x188
   4a868:	8e c0                	mov    es,ax
   4a86a:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4a86e:	50                   	push   ax
   4a86f:	9a 69 00 30 00       	call   0x30:0x69
   4a874:	59                   	pop    cx
   4a875:	5d                   	pop    bp
   4a876:	cb                   	retf
   4a877:	55                   	push   bp
   4a878:	8b ec                	mov    bp,sp
   4a87a:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a87d:	6b db 38             	imul   bx,bx,0x38
   4a880:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4a883:	d1 e0                	shl    ax,1
   4a885:	03 d8                	add    bx,ax
   4a887:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4a88a:	89 87 ce c2          	mov    WORD PTR [bx-0x3d32],ax
   4a88e:	5d                   	pop    bp
   4a88f:	cb                   	retf
   4a890:	55                   	push   bp
   4a891:	8b ec                	mov    bp,sp
   4a893:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a896:	6b db 28             	imul   bx,bx,0x28
   4a899:	b8 88 01             	mov    ax,0x188
   4a89c:	8e c0                	mov    es,ax
   4a89e:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4a8a3:	05 fd ff             	add    ax,0xfffd
   4a8a6:	3d 14 00             	cmp    ax,0x14
   4a8a9:	7d 15                	jge    0x4a8c0
   4a8ab:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a8ae:	6b db 28             	imul   bx,bx,0x28
   4a8b1:	b8 88 01             	mov    ax,0x188
   4a8b4:	8e c0                	mov    es,ax
   4a8b6:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4a8bb:	05 fd ff             	add    ax,0xfffd
   4a8be:	eb 03                	jmp    0x4a8c3
   4a8c0:	b8 14 00             	mov    ax,0x14
   4a8c3:	0b c0                	or     ax,ax
   4a8c5:	7d 04                	jge    0x4a8cb
   4a8c7:	33 c0                	xor    ax,ax
   4a8c9:	eb 30                	jmp    0x4a8fb
   4a8cb:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a8ce:	6b db 28             	imul   bx,bx,0x28
   4a8d1:	b8 88 01             	mov    ax,0x188
   4a8d4:	8e c0                	mov    es,ax
   4a8d6:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4a8db:	05 fd ff             	add    ax,0xfffd
   4a8de:	3d 14 00             	cmp    ax,0x14
   4a8e1:	7d 15                	jge    0x4a8f8
   4a8e3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a8e6:	6b db 28             	imul   bx,bx,0x28
   4a8e9:	b8 88 01             	mov    ax,0x188
   4a8ec:	8e c0                	mov    es,ax
   4a8ee:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4a8f3:	05 fd ff             	add    ax,0xfffd
   4a8f6:	eb 03                	jmp    0x4a8fb
   4a8f8:	b8 14 00             	mov    ax,0x14
   4a8fb:	a3 80 d5             	mov    ds:0xd580,ax
   4a8fe:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a901:	6b db 28             	imul   bx,bx,0x28
   4a904:	b8 88 01             	mov    ax,0x188
   4a907:	8e c0                	mov    es,ax
   4a909:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4a90e:	05 fd ff             	add    ax,0xfffd
   4a911:	3d 14 00             	cmp    ax,0x14
   4a914:	7d 15                	jge    0x4a92b
   4a916:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a919:	6b db 28             	imul   bx,bx,0x28
   4a91c:	b8 88 01             	mov    ax,0x188
   4a91f:	8e c0                	mov    es,ax
   4a921:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4a926:	05 fd ff             	add    ax,0xfffd
   4a929:	eb 03                	jmp    0x4a92e
   4a92b:	b8 14 00             	mov    ax,0x14
   4a92e:	0b c0                	or     ax,ax
   4a930:	7d 04                	jge    0x4a936
   4a932:	33 c0                	xor    ax,ax
   4a934:	eb 30                	jmp    0x4a966
   4a936:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a939:	6b db 28             	imul   bx,bx,0x28
   4a93c:	b8 88 01             	mov    ax,0x188
   4a93f:	8e c0                	mov    es,ax
   4a941:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4a946:	05 fd ff             	add    ax,0xfffd
   4a949:	3d 14 00             	cmp    ax,0x14
   4a94c:	7d 15                	jge    0x4a963
   4a94e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a951:	6b db 28             	imul   bx,bx,0x28
   4a954:	b8 88 01             	mov    ax,0x188
   4a957:	8e c0                	mov    es,ax
   4a959:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4a95e:	05 fd ff             	add    ax,0xfffd
   4a961:	eb 03                	jmp    0x4a966
   4a963:	b8 14 00             	mov    ax,0x14
   4a966:	a3 7e d5             	mov    ds:0xd57e,ax
   4a969:	5d                   	pop    bp
   4a96a:	cb                   	retf
   4a96b:	55                   	push   bp
   4a96c:	8b ec                	mov    bp,sp
   4a96e:	83 ec 0c             	sub    sp,0xc
   4a971:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4a976:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   4a97b:	e9 b5 00             	jmp    0x4aa33
   4a97e:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   4a983:	e9 9e 00             	jmp    0x4aa24
   4a986:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4a989:	6b db 38             	imul   bx,bx,0x38
   4a98c:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4a98f:	d1 e0                	shl    ax,1
   4a991:	03 d8                	add    bx,ax
   4a993:	83 bf ee c8 0a       	cmp    WORD PTR [bx-0x3712],0xa
   4a998:	7c 44                	jl     0x4a9de
   4a99a:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4a99d:	6b db 38             	imul   bx,bx,0x38
   4a9a0:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4a9a3:	d1 e0                	shl    ax,1
   4a9a5:	03 d8                	add    bx,ax
   4a9a7:	83 bf ee c8 0d       	cmp    WORD PTR [bx-0x3712],0xd
   4a9ac:	7f 30                	jg     0x4a9de
   4a9ae:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4a9b1:	6b db 38             	imul   bx,bx,0x38
   4a9b4:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4a9b7:	d1 e0                	shl    ax,1
   4a9b9:	03 d8                	add    bx,ax
   4a9bb:	8b 9f ee c8          	mov    bx,WORD PTR [bx-0x3712]
   4a9bf:	b8 88 01             	mov    ax,0x188
   4a9c2:	8e c0                	mov    es,ax
   4a9c4:	26 8a 87 1c 26       	mov    al,BYTE PTR es:[bx+0x261c]
   4a9c9:	b4 00                	mov    ah,0x0
   4a9cb:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4a9ce:	6b db 36             	imul   bx,bx,0x36
   4a9d1:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   4a9d4:	d1 e2                	shl    dx,1
   4a9d6:	03 da                	add    bx,dx
   4a9d8:	89 87 0e cf          	mov    WORD PTR [bx-0x30f2],ax
   4a9dc:	eb 13                	jmp    0x4a9f1
   4a9de:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4a9e1:	6b db 36             	imul   bx,bx,0x36
   4a9e4:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4a9e7:	d1 e0                	shl    ax,1
   4a9e9:	03 d8                	add    bx,ax
   4a9eb:	c7 87 0e cf 00 00    	mov    WORD PTR [bx-0x30f2],0x0
   4a9f1:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4a9f4:	6b db 38             	imul   bx,bx,0x38
   4a9f7:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4a9fa:	d1 e0                	shl    ax,1
   4a9fc:	03 d8                	add    bx,ax
   4a9fe:	83 bf ee c8 06       	cmp    WORD PTR [bx-0x3712],0x6
   4aa03:	75 1c                	jne    0x4aa21
   4aa05:	b8 88 01             	mov    ax,0x188
   4aa08:	8e c0                	mov    es,ax
   4aa0a:	26 a0 69 96          	mov    al,es:0x9669
   4aa0e:	b4 00                	mov    ah,0x0
   4aa10:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4aa13:	6b db 36             	imul   bx,bx,0x36
   4aa16:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   4aa19:	d1 e2                	shl    dx,1
   4aa1b:	03 da                	add    bx,dx
   4aa1d:	89 87 0e cf          	mov    WORD PTR [bx-0x30f2],ax
   4aa21:	ff 46 f6             	inc    WORD PTR [bp-0xa]
   4aa24:	83 7e f6 1b          	cmp    WORD PTR [bp-0xa],0x1b
   4aa28:	7d 03                	jge    0x4aa2d
   4aa2a:	e9 59 ff             	jmp    0x4a986
   4aa2d:	ff 46 f4             	inc    WORD PTR [bp-0xc]
   4aa30:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4aa33:	83 7e f4 1b          	cmp    WORD PTR [bp-0xc],0x1b
   4aa37:	7d 03                	jge    0x4aa3c
   4aa39:	e9 42 ff             	jmp    0x4a97e
   4aa3c:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4aa41:	e9 93 00             	jmp    0x4aad7
   4aa44:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4aa47:	6b db 28             	imul   bx,bx,0x28
   4aa4a:	b8 88 01             	mov    ax,0x188
   4aa4d:	8e c0                	mov    es,ax
   4aa4f:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4aa55:	7e 7d                	jle    0x4aad4
   4aa57:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4aa5a:	6b db 28             	imul   bx,bx,0x28
   4aa5d:	b8 88 01             	mov    ax,0x188
   4aa60:	8e c0                	mov    es,ax
   4aa62:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4aa67:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4aa6a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4aa6d:	6b db 28             	imul   bx,bx,0x28
   4aa70:	b8 88 01             	mov    ax,0x188
   4aa73:	8e c0                	mov    es,ax
   4aa75:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4aa7a:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4aa7d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4aa80:	6b db 28             	imul   bx,bx,0x28
   4aa83:	b8 88 01             	mov    ax,0x188
   4aa86:	8e c0                	mov    es,ax
   4aa88:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   4aa8e:	75 0b                	jne    0x4aa9b
   4aa90:	b8 88 01             	mov    ax,0x188
   4aa93:	8e c0                	mov    es,ax
   4aa95:	26 a0 64 96          	mov    al,es:0x9664
   4aa99:	eb 09                	jmp    0x4aaa4
   4aa9b:	b8 88 01             	mov    ax,0x188
   4aa9e:	8e c0                	mov    es,ax
   4aaa0:	26 a0 6a 96          	mov    al,es:0x966a
   4aaa4:	b4 00                	mov    ah,0x0
   4aaa6:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4aaa9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4aaac:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   4aab0:	75 0e                	jne    0x4aac0
   4aab2:	b8 88 01             	mov    ax,0x188
   4aab5:	8e c0                	mov    es,ax
   4aab7:	26 a0 65 96          	mov    al,es:0x9665
   4aabb:	b4 00                	mov    ah,0x0
   4aabd:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4aac0:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   4aac3:	6b db 36             	imul   bx,bx,0x36
   4aac6:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4aac9:	d1 e0                	shl    ax,1
   4aacb:	03 d8                	add    bx,ax
   4aacd:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4aad0:	89 87 0e cf          	mov    WORD PTR [bx-0x30f2],ax
   4aad4:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4aad7:	83 7e fe 1c          	cmp    WORD PTR [bp-0x2],0x1c
   4aadb:	7f 03                	jg     0x4aae0
   4aadd:	e9 64 ff             	jmp    0x4aa44
   4aae0:	83 3e 7c d5 00       	cmp    WORD PTR ds:0xd57c,0x0
   4aae5:	74 1e                	je     0x4ab05
   4aae7:	b8 88 01             	mov    ax,0x188
   4aaea:	8e c0                	mov    es,ax
   4aaec:	26 a0 6b 96          	mov    al,es:0x966b
   4aaf0:	b4 00                	mov    ah,0x0
   4aaf2:	8b 1e 7a d5          	mov    bx,WORD PTR ds:0xd57a
   4aaf6:	6b db 36             	imul   bx,bx,0x36
   4aaf9:	8b 16 78 d5          	mov    dx,WORD PTR ds:0xd578
   4aafd:	d1 e2                	shl    dx,1
   4aaff:	03 da                	add    bx,dx
   4ab01:	89 87 0e cf          	mov    WORD PTR [bx-0x30f2],ax
   4ab05:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4ab0a:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   4ab0f:	e9 b9 00             	jmp    0x4abcb
   4ab12:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   4ab17:	e9 a2 00             	jmp    0x4abbc
   4ab1a:	b8 88 01             	mov    ax,0x188
   4ab1d:	8e c0                	mov    es,ax
   4ab1f:	26 ff 36 cb e2       	push   WORD PTR es:0xe2cb
   4ab24:	b8 88 01             	mov    ax,0x188
   4ab27:	8e c0                	mov    es,ax
   4ab29:	26 c4 1e cf e2       	les    bx,DWORD PTR es:0xe2cf
   4ab2e:	26 80 7f 08 00       	cmp    BYTE PTR es:[bx+0x8],0x0
   4ab33:	75 13                	jne    0x4ab48
   4ab35:	b8 88 01             	mov    ax,0x188
   4ab38:	8e c0                	mov    es,ax
   4ab3a:	26 c4 1e cf e2       	les    bx,DWORD PTR es:0xe2cf
   4ab3f:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   4ab43:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4ab46:	eb 44                	jmp    0x4ab8c
   4ab48:	b8 88 01             	mov    ax,0x188
   4ab4b:	8e c0                	mov    es,ax
   4ab4d:	26 c4 1e cf e2       	les    bx,DWORD PTR es:0xe2cf
   4ab52:	26 ff 37             	push   WORD PTR es:[bx]
   4ab55:	6a 00                	push   0x0
   4ab57:	6a 00                	push   0x0
   4ab59:	b8 88 01             	mov    ax,0x188
   4ab5c:	8e c0                	mov    es,ax
   4ab5e:	26 c4 1e cf e2       	les    bx,DWORD PTR es:0xe2cf
   4ab63:	26 83 7f 06 00       	cmp    WORD PTR es:[bx+0x6],0x0
   4ab68:	72 0e                	jb     0x4ab78
   4ab6a:	77 07                	ja     0x4ab73
   4ab6c:	26 83 7f 04 ff       	cmp    WORD PTR es:[bx+0x4],0xffff
   4ab71:	76 05                	jbe    0x4ab78
   4ab73:	b8 ff ff             	mov    ax,0xffff
   4ab76:	eb 0e                	jmp    0x4ab86
   4ab78:	b8 88 01             	mov    ax,0x188
   4ab7b:	8e c0                	mov    es,ax
   4ab7d:	26 c4 1e cf e2       	les    bx,DWORD PTR es:0xe2cf
   4ab82:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   4ab86:	50                   	push   ax
   4ab87:	9a 88 06 98 00       	call   0x98:0x688
   4ab8c:	52                   	push   dx
   4ab8d:	50                   	push   ax
   4ab8e:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4ab91:	6b db 36             	imul   bx,bx,0x36
   4ab94:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4ab97:	d1 e0                	shl    ax,1
   4ab99:	03 d8                	add    bx,ax
   4ab9b:	8a 87 0e cf          	mov    al,BYTE PTR [bx-0x30f2]
   4ab9f:	50                   	push   ax
   4aba0:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4aba3:	05 7e 00             	add    ax,0x7e
   4aba6:	50                   	push   ax
   4aba7:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4abaa:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4abad:	05 05 00             	add    ax,0x5
   4abb0:	50                   	push   ax
   4abb1:	9a aa 01 28 00       	call   0x28:0x1aa
   4abb6:	83 c4 0c             	add    sp,0xc
   4abb9:	ff 46 f6             	inc    WORD PTR [bp-0xa]
   4abbc:	83 7e f6 1b          	cmp    WORD PTR [bp-0xa],0x1b
   4abc0:	7d 03                	jge    0x4abc5
   4abc2:	e9 55 ff             	jmp    0x4ab1a
   4abc5:	ff 46 f4             	inc    WORD PTR [bp-0xc]
   4abc8:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4abcb:	83 7e f4 1b          	cmp    WORD PTR [bp-0xc],0x1b
   4abcf:	7d 03                	jge    0x4abd4
   4abd1:	e9 3e ff             	jmp    0x4ab12
   4abd4:	c9                   	leave
   4abd5:	cb                   	retf
   4abd6:	55                   	push   bp
   4abd7:	8b ec                	mov    bp,sp
   4abd9:	83 ec 14             	sub    sp,0x14
   4abdc:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4abdf:	6b db 28             	imul   bx,bx,0x28
   4abe2:	b8 88 01             	mov    ax,0x188
   4abe5:	8e c0                	mov    es,ax
   4abe7:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4abec:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4abef:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4abf2:	6b db 28             	imul   bx,bx,0x28
   4abf5:	b8 88 01             	mov    ax,0x188
   4abf8:	8e c0                	mov    es,ax
   4abfa:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4abff:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4ac02:	c7 06 60 d5 01 00    	mov    WORD PTR ds:0xd560,0x1
   4ac08:	c7 06 64 d5 01 00    	mov    WORD PTR ds:0xd564,0x1
   4ac0e:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4ac11:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   4ac14:	75 0b                	jne    0x4ac21
   4ac16:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4ac19:	3b 46 0a             	cmp    ax,WORD PTR [bp+0xa]
   4ac1c:	75 03                	jne    0x4ac21
   4ac1e:	e9 66 01             	jmp    0x4ad87
   4ac21:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4ac24:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   4ac27:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4ac2a:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4ac2d:	2b 46 f0             	sub    ax,WORD PTR [bp-0x10]
   4ac30:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4ac33:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ac36:	99                   	cwd
   4ac37:	33 c2                	xor    ax,dx
   4ac39:	2b c2                	sub    ax,dx
   4ac3b:	50                   	push   ax
   4ac3c:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ac3f:	99                   	cwd
   4ac40:	33 c2                	xor    ax,dx
   4ac42:	2b c2                	sub    ax,dx
   4ac44:	5a                   	pop    dx
   4ac45:	3b d0                	cmp    dx,ax
   4ac47:	7d 03                	jge    0x4ac4c
   4ac49:	e9 94 00             	jmp    0x4ace0
   4ac4c:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ac4f:	6b c0 64             	imul   ax,ax,0x64
   4ac52:	99                   	cwd
   4ac53:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   4ac56:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4ac59:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   4ac5d:	7e 05                	jle    0x4ac64
   4ac5f:	b8 01 00             	mov    ax,0x1
   4ac62:	eb 03                	jmp    0x4ac67
   4ac64:	b8 ff ff             	mov    ax,0xffff
   4ac67:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4ac6a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ac6d:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4ac70:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ac73:	6b c0 64             	imul   ax,ax,0x64
   4ac76:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4ac79:	eb 5c                	jmp    0x4acd7
   4ac7b:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4ac7e:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   4ac81:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   4ac84:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4ac87:	bb 64 00             	mov    bx,0x64
   4ac8a:	99                   	cwd
   4ac8b:	f7 fb                	idiv   bx
   4ac8d:	03 46 f0             	add    ax,WORD PTR [bp-0x10]
   4ac90:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   4ac93:	ff 06 64 d5          	inc    WORD PTR ds:0xd564
   4ac97:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   4ac9a:	6b db 38             	imul   bx,bx,0x38
   4ac9d:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   4aca0:	d1 e0                	shl    ax,1
   4aca2:	03 d8                	add    bx,ax
   4aca4:	83 bf ee c8 0a       	cmp    WORD PTR [bx-0x3712],0xa
   4aca9:	7c 1d                	jl     0x4acc8
   4acab:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   4acae:	6b db 38             	imul   bx,bx,0x38
   4acb1:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   4acb4:	d1 e0                	shl    ax,1
   4acb6:	03 d8                	add    bx,ax
   4acb8:	83 bf ee c8 0d       	cmp    WORD PTR [bx-0x3712],0xd
   4acbd:	7f 09                	jg     0x4acc8
   4acbf:	c7 06 60 d5 00 00    	mov    WORD PTR ds:0xd560,0x0
   4acc5:	e9 a5 00             	jmp    0x4ad6d
   4acc8:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4accb:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   4acce:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4acd1:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   4acd4:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   4acd7:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   4acdb:	75 9e                	jne    0x4ac7b
   4acdd:	e9 8d 00             	jmp    0x4ad6d
   4ace0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ace3:	6b c0 64             	imul   ax,ax,0x64
   4ace6:	99                   	cwd
   4ace7:	f7 7e fa             	idiv   WORD PTR [bp-0x6]
   4acea:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4aced:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   4acf1:	7e 05                	jle    0x4acf8
   4acf3:	b8 01 00             	mov    ax,0x1
   4acf6:	eb 03                	jmp    0x4acfb
   4acf8:	b8 ff ff             	mov    ax,0xffff
   4acfb:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4acfe:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ad01:	6b c0 64             	imul   ax,ax,0x64
   4ad04:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4ad07:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ad0a:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4ad0d:	eb 58                	jmp    0x4ad67
   4ad0f:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4ad12:	bb 64 00             	mov    bx,0x64
   4ad15:	99                   	cwd
   4ad16:	f7 fb                	idiv   bx
   4ad18:	8b 56 f2             	mov    dx,WORD PTR [bp-0xe]
   4ad1b:	03 d0                	add    dx,ax
   4ad1d:	89 56 ee             	mov    WORD PTR [bp-0x12],dx
   4ad20:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4ad23:	03 46 f0             	add    ax,WORD PTR [bp-0x10]
   4ad26:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   4ad29:	ff 06 64 d5          	inc    WORD PTR ds:0xd564
   4ad2d:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   4ad30:	6b db 38             	imul   bx,bx,0x38
   4ad33:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   4ad36:	d1 e0                	shl    ax,1
   4ad38:	03 d8                	add    bx,ax
   4ad3a:	83 bf ee c8 0a       	cmp    WORD PTR [bx-0x3712],0xa
   4ad3f:	7c 17                	jl     0x4ad58
   4ad41:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   4ad44:	6b db 38             	imul   bx,bx,0x38
   4ad47:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   4ad4a:	d1 e0                	shl    ax,1
   4ad4c:	03 d8                	add    bx,ax
   4ad4e:	83 bf ee c8 0d       	cmp    WORD PTR [bx-0x3712],0xd
   4ad53:	7f 03                	jg     0x4ad58
   4ad55:	e9 67 ff             	jmp    0x4acbf
   4ad58:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ad5b:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   4ad5e:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   4ad61:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4ad64:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   4ad67:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   4ad6b:	75 a2                	jne    0x4ad0f
   4ad6d:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4ad70:	6b db 38             	imul   bx,bx,0x38
   4ad73:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4ad76:	d1 e0                	shl    ax,1
   4ad78:	03 d8                	add    bx,ax
   4ad7a:	83 bf ee c8 00       	cmp    WORD PTR [bx-0x3712],0x0
   4ad7f:	75 06                	jne    0x4ad87
   4ad81:	c7 06 60 d5 00 00    	mov    WORD PTR ds:0xd560,0x0
   4ad87:	c9                   	leave
   4ad88:	cb                   	retf
   4ad89:	55                   	push   bp
   4ad8a:	8b ec                	mov    bp,sp
   4ad8c:	83 ec 16             	sub    sp,0x16
   4ad8f:	c6 46 ef 00          	mov    BYTE PTR [bp-0x11],0x0
   4ad93:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   4ad98:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   4ad9d:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4ada0:	3b 46 0a             	cmp    ax,WORD PTR [bp+0xa]
   4ada3:	75 0b                	jne    0x4adb0
   4ada5:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4ada8:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
   4adab:	75 03                	jne    0x4adb0
   4adad:	e9 78 03             	jmp    0x4b128
   4adb0:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4adb3:	2b 46 06             	sub    ax,WORD PTR [bp+0x6]
   4adb6:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4adb9:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   4adbc:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   4adbf:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4adc2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4adc5:	99                   	cwd
   4adc6:	33 c2                	xor    ax,dx
   4adc8:	2b c2                	sub    ax,dx
   4adca:	50                   	push   ax
   4adcb:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4adce:	99                   	cwd
   4adcf:	33 c2                	xor    ax,dx
   4add1:	2b c2                	sub    ax,dx
   4add3:	5a                   	pop    dx
   4add4:	3b d0                	cmp    dx,ax
   4add6:	7d 03                	jge    0x4addb
   4add8:	e9 a7 01             	jmp    0x4af82
   4addb:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4adde:	6b c0 64             	imul   ax,ax,0x64
   4ade1:	99                   	cwd
   4ade2:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   4ade5:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4ade8:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   4adec:	7e 05                	jle    0x4adf3
   4adee:	b8 01 00             	mov    ax,0x1
   4adf1:	eb 03                	jmp    0x4adf6
   4adf3:	b8 ff ff             	mov    ax,0xffff
   4adf6:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4adf9:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4adfc:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4adff:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ae02:	6b c0 64             	imul   ax,ax,0x64
   4ae05:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4ae08:	e9 6b 01             	jmp    0x4af76
   4ae0b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4ae0e:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   4ae11:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4ae14:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4ae17:	bb 64 00             	mov    bx,0x64
   4ae1a:	99                   	cwd
   4ae1b:	f7 fb                	idiv   bx
   4ae1d:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   4ae20:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4ae23:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4ae26:	6b db 38             	imul   bx,bx,0x38
   4ae29:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4ae2c:	d1 e0                	shl    ax,1
   4ae2e:	03 d8                	add    bx,ax
   4ae30:	83 bf ee c8 0a       	cmp    WORD PTR [bx-0x3712],0xa
   4ae35:	7c 17                	jl     0x4ae4e
   4ae37:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4ae3a:	6b db 38             	imul   bx,bx,0x38
   4ae3d:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4ae40:	d1 e0                	shl    ax,1
   4ae42:	03 d8                	add    bx,ax
   4ae44:	83 bf ee c8 0d       	cmp    WORD PTR [bx-0x3712],0xd
   4ae49:	7f 03                	jg     0x4ae4e
   4ae4b:	e9 da 02             	jmp    0x4b128
   4ae4e:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4ae51:	05 fd ff             	add    ax,0xfffd
   4ae54:	3d 14 00             	cmp    ax,0x14
   4ae57:	7d 08                	jge    0x4ae61
   4ae59:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4ae5c:	05 fd ff             	add    ax,0xfffd
   4ae5f:	eb 03                	jmp    0x4ae64
   4ae61:	b8 14 00             	mov    ax,0x14
   4ae64:	0b c0                	or     ax,ax
   4ae66:	7d 04                	jge    0x4ae6c
   4ae68:	33 c0                	xor    ax,ax
   4ae6a:	eb 16                	jmp    0x4ae82
   4ae6c:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4ae6f:	05 fd ff             	add    ax,0xfffd
   4ae72:	3d 14 00             	cmp    ax,0x14
   4ae75:	7d 08                	jge    0x4ae7f
   4ae77:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4ae7a:	05 fd ff             	add    ax,0xfffd
   4ae7d:	eb 03                	jmp    0x4ae82
   4ae7f:	b8 14 00             	mov    ax,0x14
   4ae82:	a3 80 d5             	mov    ds:0xd580,ax
   4ae85:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4ae88:	05 fd ff             	add    ax,0xfffd
   4ae8b:	3d 14 00             	cmp    ax,0x14
   4ae8e:	7d 08                	jge    0x4ae98
   4ae90:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4ae93:	05 fd ff             	add    ax,0xfffd
   4ae96:	eb 03                	jmp    0x4ae9b
   4ae98:	b8 14 00             	mov    ax,0x14
   4ae9b:	0b c0                	or     ax,ax
   4ae9d:	7d 04                	jge    0x4aea3
   4ae9f:	33 c0                	xor    ax,ax
   4aea1:	eb 16                	jmp    0x4aeb9
   4aea3:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4aea6:	05 fd ff             	add    ax,0xfffd
   4aea9:	3d 14 00             	cmp    ax,0x14
   4aeac:	7d 08                	jge    0x4aeb6
   4aeae:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4aeb1:	05 fd ff             	add    ax,0xfffd
   4aeb4:	eb 03                	jmp    0x4aeb9
   4aeb6:	b8 14 00             	mov    ax,0x14
   4aeb9:	a3 7e d5             	mov    ds:0xd57e,ax
   4aebc:	90                   	nop
   4aebd:	0e                   	push   cs
   4aebe:	e8 b0 14             	call   0x4c371
   4aec1:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4aec5:	6b db 28             	imul   bx,bx,0x28
   4aec8:	b8 88 01             	mov    ax,0x188
   4aecb:	8e c0                	mov    es,ax
   4aecd:	26 8b 9f 8e a0       	mov    bx,WORD PTR es:[bx-0x5f72]
   4aed2:	83 eb 05             	sub    bx,0x5
   4aed5:	83 fb 03             	cmp    bx,0x3
   4aed8:	77 30                	ja     0x4af0a
   4aeda:	d1 e3                	shl    bx,1
   4aedc:	2e ff a7 e2 14       	jmp    WORD PTR cs:[bx+0x14e2]
   4aee1:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   4aee6:	c7 46 ea f6 ff       	mov    WORD PTR [bp-0x16],0xfff6
   4aeeb:	eb 1d                	jmp    0x4af0a
   4aeed:	c7 46 ec f6 ff       	mov    WORD PTR [bp-0x14],0xfff6
   4aef2:	eb 11                	jmp    0x4af05
   4aef4:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   4aef9:	c7 46 ea 0a 00       	mov    WORD PTR [bp-0x16],0xa
   4aefe:	eb 0a                	jmp    0x4af0a
   4af00:	c7 46 ec 0a 00       	mov    WORD PTR [bp-0x14],0xa
   4af05:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   4af0a:	80 76 ef 01          	xor    BYTE PTR [bp-0x11],0x1
   4af0e:	8a 46 ef             	mov    al,BYTE PTR [bp-0x11]
   4af11:	0a c0                	or     al,al
   4af13:	74 04                	je     0x4af19
   4af15:	6a 01                	push   0x1
   4af17:	eb 02                	jmp    0x4af1b
   4af19:	6a 00                	push   0x0
   4af1b:	6a 00                	push   0x0
   4af1d:	6a 4b                	push   0x4b
   4af1f:	6a 08                	push   0x8
   4af21:	6a 08                	push   0x8
   4af23:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4af26:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4af2a:	6b c0 0e             	imul   ax,ax,0xe
   4af2d:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4af30:	05 0d 00             	add    ax,0xd
   4af33:	50                   	push   ax
   4af34:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4af37:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4af3b:	6b c0 1e             	imul   ax,ax,0x1e
   4af3e:	8b 56 f0             	mov    dx,WORD PTR [bp-0x10]
   4af41:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4af45:	6b d2 0e             	imul   dx,dx,0xe
   4af48:	03 c2                	add    ax,dx
   4af4a:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4af4d:	05 14 00             	add    ax,0x14
   4af50:	50                   	push   ax
   4af51:	6a 0f                	push   0xf
   4af53:	6a 0f                	push   0xf
   4af55:	6a 00                	push   0x0
   4af57:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   4af5a:	48                   	dec    ax
   4af5b:	6b c0 0f             	imul   ax,ax,0xf
   4af5e:	50                   	push   ax
   4af5f:	9a 5a 0c 28 00       	call   0x28:0xc5a
   4af64:	83 c4 16             	add    sp,0x16
   4af67:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4af6a:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   4af6d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4af70:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   4af73:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   4af76:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   4af7a:	74 03                	je     0x4af7f
   4af7c:	e9 8c fe             	jmp    0x4ae0b
   4af7f:	e9 a6 01             	jmp    0x4b128
   4af82:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4af85:	6b c0 64             	imul   ax,ax,0x64
   4af88:	99                   	cwd
   4af89:	f7 7e fa             	idiv   WORD PTR [bp-0x6]
   4af8c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4af8f:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   4af93:	7e 05                	jle    0x4af9a
   4af95:	b8 01 00             	mov    ax,0x1
   4af98:	eb 03                	jmp    0x4af9d
   4af9a:	b8 ff ff             	mov    ax,0xffff
   4af9d:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4afa0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4afa3:	6b c0 64             	imul   ax,ax,0x64
   4afa6:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4afa9:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4afac:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4afaf:	e9 6d 01             	jmp    0x4b11f
   4afb2:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4afb5:	bb 64 00             	mov    bx,0x64
   4afb8:	99                   	cwd
   4afb9:	f7 fb                	idiv   bx
   4afbb:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4afbe:	03 d0                	add    dx,ax
   4afc0:	89 56 f2             	mov    WORD PTR [bp-0xe],dx
   4afc3:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4afc6:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   4afc9:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4afcc:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4afcf:	6b db 38             	imul   bx,bx,0x38
   4afd2:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4afd5:	d1 e0                	shl    ax,1
   4afd7:	03 d8                	add    bx,ax
   4afd9:	83 bf ee c8 0a       	cmp    WORD PTR [bx-0x3712],0xa
   4afde:	7c 17                	jl     0x4aff7
   4afe0:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4afe3:	6b db 38             	imul   bx,bx,0x38
   4afe6:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4afe9:	d1 e0                	shl    ax,1
   4afeb:	03 d8                	add    bx,ax
   4afed:	83 bf ee c8 0d       	cmp    WORD PTR [bx-0x3712],0xd
   4aff2:	7f 03                	jg     0x4aff7
   4aff4:	e9 31 01             	jmp    0x4b128
   4aff7:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4affa:	05 fd ff             	add    ax,0xfffd
   4affd:	3d 14 00             	cmp    ax,0x14
   4b000:	7d 08                	jge    0x4b00a
   4b002:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b005:	05 fd ff             	add    ax,0xfffd
   4b008:	eb 03                	jmp    0x4b00d
   4b00a:	b8 14 00             	mov    ax,0x14
   4b00d:	0b c0                	or     ax,ax
   4b00f:	7d 04                	jge    0x4b015
   4b011:	33 c0                	xor    ax,ax
   4b013:	eb 16                	jmp    0x4b02b
   4b015:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b018:	05 fd ff             	add    ax,0xfffd
   4b01b:	3d 14 00             	cmp    ax,0x14
   4b01e:	7d 08                	jge    0x4b028
   4b020:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b023:	05 fd ff             	add    ax,0xfffd
   4b026:	eb 03                	jmp    0x4b02b
   4b028:	b8 14 00             	mov    ax,0x14
   4b02b:	a3 80 d5             	mov    ds:0xd580,ax
   4b02e:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b031:	05 fd ff             	add    ax,0xfffd
   4b034:	3d 14 00             	cmp    ax,0x14
   4b037:	7d 08                	jge    0x4b041
   4b039:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b03c:	05 fd ff             	add    ax,0xfffd
   4b03f:	eb 03                	jmp    0x4b044
   4b041:	b8 14 00             	mov    ax,0x14
   4b044:	0b c0                	or     ax,ax
   4b046:	7d 04                	jge    0x4b04c
   4b048:	33 c0                	xor    ax,ax
   4b04a:	eb 16                	jmp    0x4b062
   4b04c:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b04f:	05 fd ff             	add    ax,0xfffd
   4b052:	3d 14 00             	cmp    ax,0x14
   4b055:	7d 08                	jge    0x4b05f
   4b057:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b05a:	05 fd ff             	add    ax,0xfffd
   4b05d:	eb 03                	jmp    0x4b062
   4b05f:	b8 14 00             	mov    ax,0x14
   4b062:	a3 7e d5             	mov    ds:0xd57e,ax
   4b065:	90                   	nop
   4b066:	0e                   	push   cs
   4b067:	e8 07 13             	call   0x4c371
   4b06a:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4b06e:	6b db 28             	imul   bx,bx,0x28
   4b071:	b8 88 01             	mov    ax,0x188
   4b074:	8e c0                	mov    es,ax
   4b076:	26 8b 9f 8e a0       	mov    bx,WORD PTR es:[bx-0x5f72]
   4b07b:	83 eb 05             	sub    bx,0x5
   4b07e:	83 fb 03             	cmp    bx,0x3
   4b081:	77 30                	ja     0x4b0b3
   4b083:	d1 e3                	shl    bx,1
   4b085:	2e ff a7 da 14       	jmp    WORD PTR cs:[bx+0x14da]
   4b08a:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   4b08f:	c7 46 ea f6 ff       	mov    WORD PTR [bp-0x16],0xfff6
   4b094:	eb 1d                	jmp    0x4b0b3
   4b096:	c7 46 ec f6 ff       	mov    WORD PTR [bp-0x14],0xfff6
   4b09b:	eb 11                	jmp    0x4b0ae
   4b09d:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   4b0a2:	c7 46 ea 0a 00       	mov    WORD PTR [bp-0x16],0xa
   4b0a7:	eb 0a                	jmp    0x4b0b3
   4b0a9:	c7 46 ec 0a 00       	mov    WORD PTR [bp-0x14],0xa
   4b0ae:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   4b0b3:	80 76 ef 01          	xor    BYTE PTR [bp-0x11],0x1
   4b0b7:	8a 46 ef             	mov    al,BYTE PTR [bp-0x11]
   4b0ba:	0a c0                	or     al,al
   4b0bc:	74 04                	je     0x4b0c2
   4b0be:	6a 01                	push   0x1
   4b0c0:	eb 02                	jmp    0x4b0c4
   4b0c2:	6a 00                	push   0x0
   4b0c4:	6a 00                	push   0x0
   4b0c6:	6a 4b                	push   0x4b
   4b0c8:	6a 08                	push   0x8
   4b0ca:	6a 08                	push   0x8
   4b0cc:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b0cf:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4b0d3:	6b c0 0e             	imul   ax,ax,0xe
   4b0d6:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4b0d9:	05 0d 00             	add    ax,0xd
   4b0dc:	50                   	push   ax
   4b0dd:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b0e0:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4b0e4:	6b c0 1e             	imul   ax,ax,0x1e
   4b0e7:	8b 56 f0             	mov    dx,WORD PTR [bp-0x10]
   4b0ea:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4b0ee:	6b d2 0e             	imul   dx,dx,0xe
   4b0f1:	03 c2                	add    ax,dx
   4b0f3:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4b0f6:	05 14 00             	add    ax,0x14
   4b0f9:	50                   	push   ax
   4b0fa:	6a 0f                	push   0xf
   4b0fc:	6a 0f                	push   0xf
   4b0fe:	6a 00                	push   0x0
   4b100:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   4b103:	48                   	dec    ax
   4b104:	6b c0 0f             	imul   ax,ax,0xf
   4b107:	50                   	push   ax
   4b108:	9a 5a 0c 28 00       	call   0x28:0xc5a
   4b10d:	83 c4 16             	add    sp,0x16
   4b110:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4b113:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   4b116:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   4b119:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4b11c:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   4b11f:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   4b123:	74 03                	je     0x4b128
   4b125:	e9 8a fe             	jmp    0x4afb2
   4b128:	c9                   	leave
   4b129:	cb                   	retf
   4b12a:	3a 14                	cmp    dl,BYTE PTR [si]
   4b12c:	46                   	inc    si
   4b12d:	14 4d                	adc    al,0x4d
   4b12f:	14 59                	adc    al,0x59
   4b131:	14 91                	adc    al,0x91
   4b133:	12 9d 12 a4          	adc    bl,BYTE PTR [di-0x5bee]
   4b137:	12 b0 12 55          	adc    dh,BYTE PTR [bx+si+0x5512]
   4b13b:	8b ec                	mov    bp,sp
   4b13d:	83 ec 10             	sub    sp,0x10
   4b140:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4b143:	3b 46 0a             	cmp    ax,WORD PTR [bp+0xa]
   4b146:	75 0b                	jne    0x4b153
   4b148:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b14b:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
   4b14e:	75 03                	jne    0x4b153
   4b150:	e9 e6 01             	jmp    0x4b339
   4b153:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4b156:	2b 46 06             	sub    ax,WORD PTR [bp+0x6]
   4b159:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4b15c:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   4b15f:	2b 46 08             	sub    ax,WORD PTR [bp+0x8]
   4b162:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4b165:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4b168:	99                   	cwd
   4b169:	33 c2                	xor    ax,dx
   4b16b:	2b c2                	sub    ax,dx
   4b16d:	50                   	push   ax
   4b16e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4b171:	99                   	cwd
   4b172:	33 c2                	xor    ax,dx
   4b174:	2b c2                	sub    ax,dx
   4b176:	5a                   	pop    dx
   4b177:	3b d0                	cmp    dx,ax
   4b179:	7d 03                	jge    0x4b17e
   4b17b:	e9 de 00             	jmp    0x4b25c
   4b17e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4b181:	6b c0 64             	imul   ax,ax,0x64
   4b184:	99                   	cwd
   4b185:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   4b188:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4b18b:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   4b18f:	7e 05                	jle    0x4b196
   4b191:	b8 01 00             	mov    ax,0x1
   4b194:	eb 03                	jmp    0x4b199
   4b196:	b8 ff ff             	mov    ax,0xffff
   4b199:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4b19c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4b19f:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4b1a2:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4b1a5:	6b c0 64             	imul   ax,ax,0x64
   4b1a8:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4b1ab:	e9 a2 00             	jmp    0x4b250
   4b1ae:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4b1b1:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   4b1b4:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4b1b7:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4b1ba:	bb 64 00             	mov    bx,0x64
   4b1bd:	99                   	cwd
   4b1be:	f7 fb                	idiv   bx
   4b1c0:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   4b1c3:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4b1c6:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b1c9:	05 fd ff             	add    ax,0xfffd
   4b1cc:	3d 14 00             	cmp    ax,0x14
   4b1cf:	7d 08                	jge    0x4b1d9
   4b1d1:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b1d4:	05 fd ff             	add    ax,0xfffd
   4b1d7:	eb 03                	jmp    0x4b1dc
   4b1d9:	b8 14 00             	mov    ax,0x14
   4b1dc:	0b c0                	or     ax,ax
   4b1de:	7d 04                	jge    0x4b1e4
   4b1e0:	33 c0                	xor    ax,ax
   4b1e2:	eb 16                	jmp    0x4b1fa
   4b1e4:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b1e7:	05 fd ff             	add    ax,0xfffd
   4b1ea:	3d 14 00             	cmp    ax,0x14
   4b1ed:	7d 08                	jge    0x4b1f7
   4b1ef:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b1f2:	05 fd ff             	add    ax,0xfffd
   4b1f5:	eb 03                	jmp    0x4b1fa
   4b1f7:	b8 14 00             	mov    ax,0x14
   4b1fa:	a3 80 d5             	mov    ds:0xd580,ax
   4b1fd:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b200:	05 fd ff             	add    ax,0xfffd
   4b203:	3d 14 00             	cmp    ax,0x14
   4b206:	7d 08                	jge    0x4b210
   4b208:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b20b:	05 fd ff             	add    ax,0xfffd
   4b20e:	eb 03                	jmp    0x4b213
   4b210:	b8 14 00             	mov    ax,0x14
   4b213:	0b c0                	or     ax,ax
   4b215:	7d 04                	jge    0x4b21b
   4b217:	33 c0                	xor    ax,ax
   4b219:	eb 16                	jmp    0x4b231
   4b21b:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b21e:	05 fd ff             	add    ax,0xfffd
   4b221:	3d 14 00             	cmp    ax,0x14
   4b224:	7d 08                	jge    0x4b22e
   4b226:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b229:	05 fd ff             	add    ax,0xfffd
   4b22c:	eb 03                	jmp    0x4b231
   4b22e:	b8 14 00             	mov    ax,0x14
   4b231:	a3 7e d5             	mov    ds:0xd57e,ax
   4b234:	90                   	nop
   4b235:	0e                   	push   cs
   4b236:	e8 38 11             	call   0x4c371
   4b239:	6a 02                	push   0x2
   4b23b:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4b240:	59                   	pop    cx
   4b241:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4b244:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   4b247:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4b24a:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   4b24d:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   4b250:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   4b254:	74 03                	je     0x4b259
   4b256:	e9 55 ff             	jmp    0x4b1ae
   4b259:	e9 dd 00             	jmp    0x4b339
   4b25c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4b25f:	6b c0 64             	imul   ax,ax,0x64
   4b262:	99                   	cwd
   4b263:	f7 7e fa             	idiv   WORD PTR [bp-0x6]
   4b266:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4b269:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   4b26d:	7e 05                	jle    0x4b274
   4b26f:	b8 01 00             	mov    ax,0x1
   4b272:	eb 03                	jmp    0x4b277
   4b274:	b8 ff ff             	mov    ax,0xffff
   4b277:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4b27a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4b27d:	6b c0 64             	imul   ax,ax,0x64
   4b280:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4b283:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4b286:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4b289:	e9 a4 00             	jmp    0x4b330
   4b28c:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4b28f:	bb 64 00             	mov    bx,0x64
   4b292:	99                   	cwd
   4b293:	f7 fb                	idiv   bx
   4b295:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b298:	03 d0                	add    dx,ax
   4b29a:	89 56 f2             	mov    WORD PTR [bp-0xe],dx
   4b29d:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4b2a0:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   4b2a3:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4b2a6:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b2a9:	05 fd ff             	add    ax,0xfffd
   4b2ac:	3d 14 00             	cmp    ax,0x14
   4b2af:	7d 08                	jge    0x4b2b9
   4b2b1:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b2b4:	05 fd ff             	add    ax,0xfffd
   4b2b7:	eb 03                	jmp    0x4b2bc
   4b2b9:	b8 14 00             	mov    ax,0x14
   4b2bc:	0b c0                	or     ax,ax
   4b2be:	7d 04                	jge    0x4b2c4
   4b2c0:	33 c0                	xor    ax,ax
   4b2c2:	eb 16                	jmp    0x4b2da
   4b2c4:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b2c7:	05 fd ff             	add    ax,0xfffd
   4b2ca:	3d 14 00             	cmp    ax,0x14
   4b2cd:	7d 08                	jge    0x4b2d7
   4b2cf:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4b2d2:	05 fd ff             	add    ax,0xfffd
   4b2d5:	eb 03                	jmp    0x4b2da
   4b2d7:	b8 14 00             	mov    ax,0x14
   4b2da:	a3 80 d5             	mov    ds:0xd580,ax
   4b2dd:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b2e0:	05 fd ff             	add    ax,0xfffd
   4b2e3:	3d 14 00             	cmp    ax,0x14
   4b2e6:	7d 08                	jge    0x4b2f0
   4b2e8:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b2eb:	05 fd ff             	add    ax,0xfffd
   4b2ee:	eb 03                	jmp    0x4b2f3
   4b2f0:	b8 14 00             	mov    ax,0x14
   4b2f3:	0b c0                	or     ax,ax
   4b2f5:	7d 04                	jge    0x4b2fb
   4b2f7:	33 c0                	xor    ax,ax
   4b2f9:	eb 16                	jmp    0x4b311
   4b2fb:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b2fe:	05 fd ff             	add    ax,0xfffd
   4b301:	3d 14 00             	cmp    ax,0x14
   4b304:	7d 08                	jge    0x4b30e
   4b306:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4b309:	05 fd ff             	add    ax,0xfffd
   4b30c:	eb 03                	jmp    0x4b311
   4b30e:	b8 14 00             	mov    ax,0x14
   4b311:	a3 7e d5             	mov    ds:0xd57e,ax
   4b314:	90                   	nop
   4b315:	0e                   	push   cs
   4b316:	e8 58 10             	call   0x4c371
   4b319:	6a 02                	push   0x2
   4b31b:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4b320:	59                   	pop    cx
   4b321:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4b324:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   4b327:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   4b32a:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4b32d:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   4b330:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   4b334:	74 03                	je     0x4b339
   4b336:	e9 53 ff             	jmp    0x4b28c
   4b339:	c9                   	leave
   4b33a:	cb                   	retf
   4b33b:	55                   	push   bp
   4b33c:	8b ec                	mov    bp,sp
   4b33e:	83 ec 5c             	sub    sp,0x5c
   4b341:	8d 46 a4             	lea    ax,[bp-0x5c]
   4b344:	16                   	push   ss
   4b345:	50                   	push   ax
   4b346:	1e                   	push   ds
   4b347:	68 3f 63             	push   0x633f
   4b34a:	b9 54 00             	mov    cx,0x54
   4b34d:	9a 7a 12 00 00       	call   0x0:0x127a
   4b352:	83 3e a2 d5 00       	cmp    WORD PTR ds:0xd5a2,0x0
   4b357:	74 03                	je     0x4b35c
   4b359:	e9 27 02             	jmp    0x4b583
   4b35c:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b35f:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   4b363:	75 03                	jne    0x4b368
   4b365:	e9 1b 02             	jmp    0x4b583
   4b368:	83 3e ba d5 00       	cmp    WORD PTR ds:0xd5ba,0x0
   4b36d:	74 36                	je     0x4b3a5
   4b36f:	1e                   	push   ds
   4b370:	68 28 65             	push   0x6528
   4b373:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b376:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b379:	9a a3 49 00 00       	call   0x0:0x49a3
   4b37e:	83 c4 08             	add    sp,0x8
   4b381:	16                   	push   ss
   4b382:	a1 b0 d5             	mov    ax,ds:0xd5b0
   4b385:	6b c0 0c             	imul   ax,ax,0xc
   4b388:	8d 56 a4             	lea    dx,[bp-0x5c]
   4b38b:	03 c2                	add    ax,dx
   4b38d:	50                   	push   ax
   4b38e:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b391:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b394:	9a f7 48 00 00       	call   0x0:0x48f7
   4b399:	83 c4 08             	add    sp,0x8
   4b39c:	a1 b0 d5             	mov    ax,ds:0xd5b0
   4b39f:	05 32 00             	add    ax,0x32
   4b3a2:	a3 1a 63             	mov    ds:0x631a,ax
   4b3a5:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   4b3a8:	6b db 28             	imul   bx,bx,0x28
   4b3ab:	b8 88 01             	mov    ax,0x188
   4b3ae:	8e c0                	mov    es,ax
   4b3b0:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4b3b5:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4b3b8:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   4b3bb:	6b db 28             	imul   bx,bx,0x28
   4b3be:	b8 88 01             	mov    ax,0x188
   4b3c1:	8e c0                	mov    es,ax
   4b3c3:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4b3c8:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4b3cb:	6a 01                	push   0x1
   4b3cd:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b3d0:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b3d3:	9a 48 00 80 01       	call   0x180:0x48
   4b3d8:	83 c4 06             	add    sp,0x6
   4b3db:	bb 02 00             	mov    bx,0x2
   4b3de:	99                   	cwd
   4b3df:	f7 fb                	idiv   bx
   4b3e1:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4b3e4:	83 7e 0a 18          	cmp    WORD PTR [bp+0xa],0x18
   4b3e8:	7e 08                	jle    0x4b3f2
   4b3ea:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4b3ed:	05 28 00             	add    ax,0x28
   4b3f0:	eb 1d                	jmp    0x4b40f
   4b3f2:	8b 5e 0a             	mov    bx,WORD PTR [bp+0xa]
   4b3f5:	6b db 28             	imul   bx,bx,0x28
   4b3f8:	b8 88 01             	mov    ax,0x188
   4b3fb:	8e c0                	mov    es,ax
   4b3fd:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4b402:	6b db 06             	imul   bx,bx,0x6
   4b405:	b8 88 01             	mov    ax,0x188
   4b408:	8e c0                	mov    es,ax
   4b40a:	26 8b 87 c2 5b       	mov    ax,WORD PTR es:[bx+0x5bc2]
   4b40f:	a3 20 63             	mov    ds:0x6320,ax
   4b412:	b8 88 01             	mov    ax,0x188
   4b415:	8e c0                	mov    es,ax
   4b417:	26 a0 72 96          	mov    al,es:0x9672
   4b41b:	ba 88 01             	mov    dx,0x188
   4b41e:	8e c2                	mov    es,dx
   4b420:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4b425:	74 03                	je     0x4b42a
   4b427:	e9 cd 00             	jmp    0x4b4f7
   4b42a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4b42d:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4b431:	6b c0 1e             	imul   ax,ax,0x1e
   4b434:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   4b437:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4b43b:	6b d2 0e             	imul   dx,dx,0xe
   4b43e:	03 c2                	add    ax,dx
   4b440:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   4b443:	05 21 00             	add    ax,0x21
   4b446:	3d 40 01             	cmp    ax,0x140
   4b449:	7d 22                	jge    0x4b46d
   4b44b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4b44e:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4b452:	6b c0 1e             	imul   ax,ax,0x1e
   4b455:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   4b458:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4b45c:	6b d2 0e             	imul   dx,dx,0xe
   4b45f:	03 c2                	add    ax,dx
   4b461:	05 21 00             	add    ax,0x21
   4b464:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   4b467:	48                   	dec    ax
   4b468:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4b46b:	eb 0e                	jmp    0x4b47b
   4b46d:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4b470:	d1 e0                	shl    ax,1
   4b472:	ba 40 01             	mov    dx,0x140
   4b475:	2b d0                	sub    dx,ax
   4b477:	4a                   	dec    dx
   4b478:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   4b47b:	6a 00                	push   0x0
   4b47d:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b480:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b483:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4b486:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4b48a:	6b c0 0e             	imul   ax,ax,0xe
   4b48d:	05 07 00             	add    ax,0x7
   4b490:	50                   	push   ax
   4b491:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4b494:	6a 01                	push   0x1
   4b496:	0e                   	push   cs
   4b497:	e8 36 f3             	call   0x4a7d0
   4b49a:	83 c4 0c             	add    sp,0xc
   4b49d:	b8 88 01             	mov    ax,0x188
   4b4a0:	8e c0                	mov    es,ax
   4b4a2:	26 a0 65 96          	mov    al,es:0x9665
   4b4a6:	b4 00                	mov    ah,0x0
   4b4a8:	50                   	push   ax
   4b4a9:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b4ac:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b4af:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4b4b2:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4b4b6:	6b c0 0e             	imul   ax,ax,0xe
   4b4b9:	05 06 00             	add    ax,0x6
   4b4bc:	50                   	push   ax
   4b4bd:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4b4c0:	6a 01                	push   0x1
   4b4c2:	0e                   	push   cs
   4b4c3:	e8 0a f3             	call   0x4a7d0
   4b4c6:	83 c4 0c             	add    sp,0xc
   4b4c9:	83 3e 1a 63 00       	cmp    WORD PTR ds:0x631a,0x0
   4b4ce:	75 0a                	jne    0x4b4da
   4b4d0:	6a 06                	push   0x6
   4b4d2:	0e                   	push   cs
   4b4d3:	e8 5b f3             	call   0x4a831
   4b4d6:	59                   	pop    cx
   4b4d7:	e9 a9 00             	jmp    0x4b583
   4b4da:	6a 06                	push   0x6
   4b4dc:	0e                   	push   cs
   4b4dd:	e8 51 f3             	call   0x4a831
   4b4e0:	59                   	pop    cx
   4b4e1:	ff 36 1a 63          	push   WORD PTR ds:0x631a
   4b4e5:	90                   	nop
   4b4e6:	0e                   	push   cs
   4b4e7:	e8 c1 0a             	call   0x4bfab
   4b4ea:	59                   	pop    cx
   4b4eb:	c7 06 1a 63 00 00    	mov    WORD PTR ds:0x631a,0x0
   4b4f1:	e9 8f 00             	jmp    0x4b583
   4b4f4:	e9 8c 00             	jmp    0x4b583
   4b4f7:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b4fa:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b4fd:	9a cc 49 00 00       	call   0x0:0x49cc
   4b502:	83 c4 04             	add    sp,0x4
   4b505:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4b508:	eb 0d                	jmp    0x4b517
   4b50a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b50d:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   4b510:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   4b514:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   4b517:	6a 01                	push   0x1
   4b519:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b51c:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b51f:	9a 48 00 80 01       	call   0x180:0x48
   4b524:	83 c4 06             	add    sp,0x6
   4b527:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4b52a:	81 7e fa 82 00       	cmp    WORD PTR [bp-0x6],0x82
   4b52f:	7f d9                	jg     0x4b50a
   4b531:	1e                   	push   ds
   4b532:	68 33 65             	push   0x6533
   4b535:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b538:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b53b:	9a f7 48 00 00       	call   0x0:0x48f7
   4b540:	83 c4 08             	add    sp,0x8
   4b543:	b8 88 01             	mov    ax,0x188
   4b546:	8e c0                	mov    es,ax
   4b548:	26 a0 64 96          	mov    al,es:0x9664
   4b54c:	b4 00                	mov    ah,0x0
   4b54e:	50                   	push   ax
   4b54f:	68 d9 00             	push   0xd9
   4b552:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b555:	ff 76 06             	push   WORD PTR [bp+0x6]
   4b558:	90                   	nop
   4b559:	0e                   	push   cs
   4b55a:	e8 1c 66             	call   0x41b79
   4b55d:	83 c4 08             	add    sp,0x8
   4b560:	83 3e ba d5 00       	cmp    WORD PTR ds:0xd5ba,0x0
   4b565:	74 10                	je     0x4b577
   4b567:	ff 36 1a 63          	push   WORD PTR ds:0x631a
   4b56b:	90                   	nop
   4b56c:	0e                   	push   cs
   4b56d:	e8 3b 0a             	call   0x4bfab
   4b570:	59                   	pop    cx
   4b571:	c7 06 1a 63 00 00    	mov    WORD PTR ds:0x631a,0x0
   4b577:	b8 88 01             	mov    ax,0x188
   4b57a:	8e c0                	mov    es,ax
   4b57c:	26 a1 4a e7          	mov    ax,es:0xe74a
   4b580:	a3 d4 d5             	mov    ds:0xd5d4,ax
   4b583:	c9                   	leave
   4b584:	cb                   	retf
   4b585:	55                   	push   bp
   4b586:	8b ec                	mov    bp,sp
   4b588:	83 ec 78             	sub    sp,0x78
   4b58b:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4b590:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b593:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b596:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4b599:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b59c:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b59f:	83 c2 02             	add    dx,0x2
   4b5a2:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5a5:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5a8:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5ab:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5ae:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4b5b1:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5b4:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5b7:	83 c2 02             	add    dx,0x2
   4b5ba:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5bd:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5c0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5c3:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5c6:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4b5c9:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5cc:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5cf:	83 c2 02             	add    dx,0x2
   4b5d2:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5d5:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5d8:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5db:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5de:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4b5e1:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5e4:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5e7:	83 c2 02             	add    dx,0x2
   4b5ea:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5ed:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5f0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5f3:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5f6:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4b5f9:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5fc:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5ff:	83 c2 02             	add    dx,0x2
   4b602:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b605:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b608:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b60b:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b60e:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4b611:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b614:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b617:	83 c2 02             	add    dx,0x2
   4b61a:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b61d:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b620:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b623:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b626:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4b629:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b62c:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b62f:	83 c2 02             	add    dx,0x2
   4b632:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b635:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b638:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   4b63c:	7c 06                	jl     0x4b644
   4b63e:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   4b642:	7e 29                	jle    0x4b66d
   4b644:	ff 76 fc             	push   WORD PTR [bp-0x4]
   4b647:	1e                   	push   ds
   4b648:	68 37 65             	push   0x6537
   4b64b:	16                   	push   ss
   4b64c:	8d 46 88             	lea    ax,[bp-0x78]
   4b64f:	50                   	push   ax
   4b650:	9a b4 48 00 00       	call   0x0:0x48b4
   4b655:	83 c4 0a             	add    sp,0xa
   4b658:	6a ff                	push   0xffff
   4b65a:	1e                   	push   ds
   4b65b:	68 4e 65             	push   0x654e
   4b65e:	68 c8 02             	push   0x2c8
   4b661:	1e                   	push   ds
   4b662:	68 3e 65             	push   0x653e
   4b665:	9a 2a 00 58 01       	call   0x158:0x2a
   4b66a:	83 c4 0c             	add    sp,0xc
   4b66d:	b8 88 01             	mov    ax,0x188
   4b670:	8e c0                	mov    es,ax
   4b672:	26 a1 4a e7          	mov    ax,es:0xe74a
   4b676:	2b 06 c4 bb          	sub    ax,WORD PTR ds:0xbbc4
   4b67a:	3d 96 00             	cmp    ax,0x96
   4b67d:	73 03                	jae    0x4b682
   4b67f:	e9 9a 00             	jmp    0x4b71c
   4b682:	b8 88 01             	mov    ax,0x188
   4b685:	8e c0                	mov    es,ax
   4b687:	26 a1 4a e7          	mov    ax,es:0xe74a
   4b68b:	a3 c4 bb             	mov    ds:0xbbc4,ax
   4b68e:	6a 20                	push   0x20
   4b690:	6a 20                	push   0x20
   4b692:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4b695:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4b698:	9a 7d 06 30 00       	call   0x30:0x67d
   4b69d:	83 c4 08             	add    sp,0x8
   4b6a0:	0a c0                	or     al,al
   4b6a2:	74 05                	je     0x4b6a9
   4b6a4:	9a 04 02 30 00       	call   0x30:0x204
   4b6a9:	68 e0 01             	push   0x1e0
   4b6ac:	68 d0 02             	push   0x2d0
   4b6af:	6a 00                	push   0x0
   4b6b1:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   4b6b4:	04 46                	add    al,0x46
   4b6b6:	50                   	push   ax
   4b6b7:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4b6ba:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4b6bd:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4b6c0:	ff 76 f6             	push   WORD PTR [bp-0xa]
   4b6c3:	ff 76 f0             	push   WORD PTR [bp-0x10]
   4b6c6:	6a 00                	push   0x0
   4b6c8:	68 00 80             	push   0x8000
   4b6cb:	9a 79 17 00 00       	call   0x0:0x1779
   4b6d0:	99                   	cwd
   4b6d1:	d1 e0                	shl    ax,1
   4b6d3:	d1 d2                	rcl    dx,1
   4b6d5:	52                   	push   dx
   4b6d6:	50                   	push   ax
   4b6d7:	9a df 12 00 00       	call   0x0:0x12df
   4b6dc:	0b c0                	or     ax,ax
   4b6de:	74 04                	je     0x4b6e4
   4b6e0:	33 c0                	xor    ax,ax
   4b6e2:	eb 1c                	jmp    0x4b700
   4b6e4:	6a 00                	push   0x0
   4b6e6:	68 00 80             	push   0x8000
   4b6e9:	9a 79 17 00 00       	call   0x0:0x1779
   4b6ee:	99                   	cwd
   4b6ef:	d1 e0                	shl    ax,1
   4b6f1:	d1 d2                	rcl    dx,1
   4b6f3:	52                   	push   dx
   4b6f4:	50                   	push   ax
   4b6f5:	9a df 12 00 00       	call   0x0:0x12df
   4b6fa:	05 03 00             	add    ax,0x3
   4b6fd:	c1 e0 05             	shl    ax,0x5
   4b700:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   4b703:	50                   	push   ax
   4b704:	9a 30 04 28 00       	call   0x28:0x430
   4b709:	83 c4 14             	add    sp,0x14
   4b70c:	b8 88 01             	mov    ax,0x188
   4b70f:	8e c0                	mov    es,ax
   4b711:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4b715:	50                   	push   ax
   4b716:	9a 69 00 30 00       	call   0x30:0x69
   4b71b:	59                   	pop    cx
   4b71c:	c9                   	leave
   4b71d:	cb                   	retf
   4b71e:	55                   	push   bp
   4b71f:	8b ec                	mov    bp,sp
   4b721:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   4b725:	7f 0a                	jg     0x4b731
   4b727:	83 3e 9c d5 00       	cmp    WORD PTR ds:0xd59c,0x0
   4b72c:	7f 03                	jg     0x4b731
   4b72e:	e9 8a 00             	jmp    0x4b7bb
   4b731:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b734:	6b db 28             	imul   bx,bx,0x28
   4b737:	b8 88 01             	mov    ax,0x188
   4b73a:	8e c0                	mov    es,ax
   4b73c:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4b741:	6b db 2e             	imul   bx,bx,0x2e
   4b744:	b8 88 01             	mov    ax,0x188
   4b747:	8e c0                	mov    es,ax
   4b749:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   4b74f:	7e 6a                	jle    0x4b7bb
   4b751:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b754:	6b db 28             	imul   bx,bx,0x28
   4b757:	b8 88 01             	mov    ax,0x188
   4b75a:	8e c0                	mov    es,ax
   4b75c:	26 c7 87 ae a0 01 00 	mov    WORD PTR es:[bx-0x5f52],0x1
   4b763:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b766:	6b db 28             	imul   bx,bx,0x28
   4b769:	b8 88 01             	mov    ax,0x188
   4b76c:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b76f:	8e c0                	mov    es,ax
   4b771:	26 29 97 8a a0       	sub    WORD PTR es:[bx-0x5f76],dx
   4b776:	c7 06 66 d5 09 00    	mov    WORD PTR ds:0xd566,0x9
   4b77c:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b77f:	a3 76 d5             	mov    ds:0xd576,ax
   4b782:	c7 06 74 d5 04 00    	mov    WORD PTR ds:0xd574,0x4
   4b788:	ff 76 08             	push   WORD PTR [bp+0x8]
   4b78b:	0e                   	push   cs
   4b78c:	e8 01 f1             	call   0x4a890
   4b78f:	59                   	pop    cx
   4b790:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   4b793:	6b db 28             	imul   bx,bx,0x28
   4b796:	b8 88 01             	mov    ax,0x188
   4b799:	8e c0                	mov    es,ax
   4b79b:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4b7a1:	7d 18                	jge    0x4b7bb
   4b7a3:	c7 06 66 d5 02 00    	mov    WORD PTR ds:0xd566,0x2
   4b7a9:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b7ac:	a3 76 d5             	mov    ds:0xd576,ax
   4b7af:	c7 06 74 d5 02 00    	mov    WORD PTR ds:0xd574,0x2
   4b7b5:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b7b8:	a3 6c d5             	mov    ds:0xd56c,ax
   4b7bb:	5d                   	pop    bp
   4b7bc:	cb                   	retf
   4b7bd:	55                   	push   bp
   4b7be:	8b ec                	mov    bp,sp
   4b7c0:	83 ec 06             	sub    sp,0x6
   4b7c3:	c7 06 24 63 01 00    	mov    WORD PTR ds:0x6324,0x1
   4b7c9:	b8 88 01             	mov    ax,0x188
   4b7cc:	8e c0                	mov    es,ax
   4b7ce:	26 c7 06 34 26 00 00 	mov    WORD PTR es:0x2634,0x0
   4b7d5:	b8 88 01             	mov    ax,0x188
   4b7d8:	8e c0                	mov    es,ax
   4b7da:	26 c7 06 36 26 00 00 	mov    WORD PTR es:0x2636,0x0
   4b7e1:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4b7e6:	eb 34                	jmp    0x4b81c
   4b7e8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4b7eb:	6b db 28             	imul   bx,bx,0x28
   4b7ee:	b8 88 01             	mov    ax,0x188
   4b7f1:	8e c0                	mov    es,ax
   4b7f3:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4b7f9:	7e 1e                	jle    0x4b819
   4b7fb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4b7fe:	6b db 28             	imul   bx,bx,0x28
   4b801:	b8 88 01             	mov    ax,0x188
   4b804:	8e c0                	mov    es,ax
   4b806:	26 8b 9f 98 a0       	mov    bx,WORD PTR es:[bx-0x5f68]
   4b80b:	d1 e3                	shl    bx,1
   4b80d:	b8 88 01             	mov    ax,0x188
   4b810:	8e c0                	mov    es,ax
   4b812:	26 c7 87 32 26 01 00 	mov    WORD PTR es:[bx+0x2632],0x1
   4b819:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4b81c:	83 7e fe 1c          	cmp    WORD PTR [bp-0x2],0x1c
   4b820:	7e c6                	jle    0x4b7e8
   4b822:	b8 88 01             	mov    ax,0x188
   4b825:	8e c0                	mov    es,ax
   4b827:	26 83 3e 34 26 00    	cmp    WORD PTR es:0x2634,0x0
   4b82d:	74 0d                	je     0x4b83c
   4b82f:	b8 88 01             	mov    ax,0x188
   4b832:	8e c0                	mov    es,ax
   4b834:	26 83 3e 36 26 00    	cmp    WORD PTR es:0x2636,0x0
   4b83a:	75 26                	jne    0x4b862
   4b83c:	b8 88 01             	mov    ax,0x188
   4b83f:	8e c0                	mov    es,ax
   4b841:	26 83 3e 36 26 00    	cmp    WORD PTR es:0x2636,0x0
   4b847:	75 08                	jne    0x4b851
   4b849:	c7 06 2e 63 01 00    	mov    WORD PTR ds:0x632e,0x1
   4b84f:	eb 06                	jmp    0x4b857
   4b851:	c7 06 2e 63 02 00    	mov    WORD PTR ds:0x632e,0x2
   4b857:	9a 04 02 30 00       	call   0x30:0x204
   4b85c:	b8 ff ff             	mov    ax,0xffff
   4b85f:	e9 61 02             	jmp    0x4bac3
   4b862:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4b866:	6b db 28             	imul   bx,bx,0x28
   4b869:	b8 88 01             	mov    ax,0x188
   4b86c:	8e c0                	mov    es,ax
   4b86e:	26 c7 87 ae a0 00 00 	mov    WORD PTR es:[bx-0x5f52],0x0
   4b875:	83 3e 22 63 00       	cmp    WORD PTR ds:0x6322,0x0
   4b87a:	75 0b                	jne    0x4b887
   4b87c:	c7 06 22 63 01 00    	mov    WORD PTR ds:0x6322,0x1
   4b882:	90                   	nop
   4b883:	0e                   	push   cs
   4b884:	e8 3e 02             	call   0x4bac5
   4b887:	ff 06 30 63          	inc    WORD PTR ds:0x6330
   4b88b:	83 3e 30 63 1c       	cmp    WORD PTR ds:0x6330,0x1c
   4b890:	7e 20                	jle    0x4b8b2
   4b892:	c7 06 30 63 01 00    	mov    WORD PTR ds:0x6330,0x1
   4b898:	ff 06 4a d5          	inc    WORD PTR ds:0xd54a
   4b89c:	6a 01                	push   0x1
   4b89e:	9a 48 00 18 01       	call   0x118:0x48
   4b8a3:	59                   	pop    cx
   4b8a4:	c7 06 50 d5 00 00    	mov    WORD PTR ds:0xd550,0x0
   4b8aa:	c7 06 4e d5 00 00    	mov    WORD PTR ds:0xd54e,0x0
   4b8b0:	eb d0                	jmp    0x4b882
   4b8b2:	8b 1e 30 63          	mov    bx,WORD PTR ds:0x6330
   4b8b6:	d1 e3                	shl    bx,1
   4b8b8:	8b 87 c0 d4          	mov    ax,WORD PTR [bx-0x2b40]
   4b8bc:	a3 de d5             	mov    ds:0xd5de,ax
   4b8bf:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4b8c3:	6b db 28             	imul   bx,bx,0x28
   4b8c6:	b8 88 01             	mov    ax,0x188
   4b8c9:	8e c0                	mov    es,ax
   4b8cb:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4b8d1:	7e b4                	jle    0x4b887
   4b8d3:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4b8d7:	6b db 28             	imul   bx,bx,0x28
   4b8da:	b8 88 01             	mov    ax,0x188
   4b8dd:	8e c0                	mov    es,ax
   4b8df:	26 83 bf ac a0 00    	cmp    WORD PTR es:[bx-0x5f54],0x0
   4b8e5:	7e 13                	jle    0x4b8fa
   4b8e7:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4b8eb:	6b db 28             	imul   bx,bx,0x28
   4b8ee:	b8 88 01             	mov    ax,0x188
   4b8f1:	8e c0                	mov    es,ax
   4b8f3:	26 ff 8f ac a0       	dec    WORD PTR es:[bx-0x5f54]
   4b8f8:	eb 8d                	jmp    0x4b887
   4b8fa:	a1 de d5             	mov    ax,ds:0xd5de
   4b8fd:	a3 76 d5             	mov    ds:0xd576,ax
   4b900:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   4b906:	c7 06 5a d5 00 00    	mov    WORD PTR ds:0xd55a,0x0
   4b90c:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4b910:	6b db 28             	imul   bx,bx,0x28
   4b913:	b8 88 01             	mov    ax,0x188
   4b916:	8e c0                	mov    es,ax
   4b918:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4b91d:	6b db 2e             	imul   bx,bx,0x2e
   4b920:	b8 88 01             	mov    ax,0x188
   4b923:	8e c0                	mov    es,ax
   4b925:	26 8b 87 24 9f       	mov    ax,WORD PTR es:[bx-0x60dc]
   4b92a:	a3 4c d5             	mov    ds:0xd54c,ax
   4b92d:	6a 15                	push   0x15
   4b92f:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4b933:	90                   	nop
   4b934:	0e                   	push   cs
   4b935:	e8 f8 03             	call   0x4bd30
   4b938:	83 c4 04             	add    sp,0x4
   4b93b:	0b c0                	or     ax,ax
   4b93d:	74 19                	je     0x4b958
   4b93f:	a1 4c d5             	mov    ax,ds:0xd54c
   4b942:	05 fd ff             	add    ax,0xfffd
   4b945:	3d 03 00             	cmp    ax,0x3
   4b948:	7d 05                	jge    0x4b94f
   4b94a:	b8 03 00             	mov    ax,0x3
   4b94d:	eb 06                	jmp    0x4b955
   4b94f:	a1 4c d5             	mov    ax,ds:0xd54c
   4b952:	05 fd ff             	add    ax,0xfffd
   4b955:	a3 4c d5             	mov    ds:0xd54c,ax
   4b958:	6a 1c                	push   0x1c
   4b95a:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4b95e:	90                   	nop
   4b95f:	0e                   	push   cs
   4b960:	e8 cd 03             	call   0x4bd30
   4b963:	83 c4 04             	add    sp,0x4
   4b966:	0b c0                	or     ax,ax
   4b968:	74 0b                	je     0x4b975
   4b96a:	ba 02 00             	mov    dx,0x2
   4b96d:	a1 4c d5             	mov    ax,ds:0xd54c
   4b970:	f7 ea                	imul   dx
   4b972:	a3 4c d5             	mov    ds:0xd54c,ax
   4b975:	a1 de d5             	mov    ax,ds:0xd5de
   4b978:	05 e8 ff             	add    ax,0xffe8
   4b97b:	7e 0f                	jle    0x4b98c
   4b97d:	a1 de d5             	mov    ax,ds:0xd5de
   4b980:	05 e8 ff             	add    ax,0xffe8
   4b983:	ba 88 01             	mov    dx,0x188
   4b986:	8e c2                	mov    es,dx
   4b988:	26 a3 98 28          	mov    es:0x2898,ax
   4b98c:	c7 06 7c d5 01 00    	mov    WORD PTR ds:0xd57c,0x1
   4b992:	a1 7a d5             	mov    ax,ds:0xd57a
   4b995:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4b998:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4b99c:	6b db 28             	imul   bx,bx,0x28
   4b99f:	b8 88 01             	mov    ax,0x188
   4b9a2:	8e c0                	mov    es,ax
   4b9a4:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4b9a9:	a3 7a d5             	mov    ds:0xd57a,ax
   4b9ac:	a1 78 d5             	mov    ax,ds:0xd578
   4b9af:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4b9b2:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4b9b6:	6b db 28             	imul   bx,bx,0x28
   4b9b9:	b8 88 01             	mov    ax,0x188
   4b9bc:	8e c0                	mov    es,ax
   4b9be:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4b9c3:	a3 78 d5             	mov    ds:0xd578,ax
   4b9c6:	81 3e 80 d5 c8 fe    	cmp    WORD PTR ds:0xd580,0xfec8
   4b9cc:	74 45                	je     0x4ba13
   4b9ce:	81 3e 7e d5 c8 fe    	cmp    WORD PTR ds:0xd57e,0xfec8
   4b9d4:	74 3d                	je     0x4ba13
   4b9d6:	a1 7e d5             	mov    ax,ds:0xd57e
   4b9d9:	05 03 00             	add    ax,0x3
   4b9dc:	3d 14 00             	cmp    ax,0x14
   4b9df:	7d 08                	jge    0x4b9e9
   4b9e1:	a1 7e d5             	mov    ax,ds:0xd57e
   4b9e4:	05 03 00             	add    ax,0x3
   4b9e7:	eb 03                	jmp    0x4b9ec
   4b9e9:	b8 14 00             	mov    ax,0x14
   4b9ec:	50                   	push   ax
   4b9ed:	a1 80 d5             	mov    ax,ds:0xd580
   4b9f0:	05 03 00             	add    ax,0x3
   4b9f3:	3d 14 00             	cmp    ax,0x14
   4b9f6:	7d 08                	jge    0x4ba00
   4b9f8:	a1 80 d5             	mov    ax,ds:0xd580
   4b9fb:	05 03 00             	add    ax,0x3
   4b9fe:	eb 03                	jmp    0x4ba03
   4ba00:	b8 14 00             	mov    ax,0x14
   4ba03:	50                   	push   ax
   4ba04:	ff 36 78 d5          	push   WORD PTR ds:0xd578
   4ba08:	ff 36 7a d5          	push   WORD PTR ds:0xd57a
   4ba0c:	0e                   	push   cs
   4ba0d:	e8 2a f7             	call   0x4b13a
   4ba10:	83 c4 08             	add    sp,0x8
   4ba13:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4ba17:	0e                   	push   cs
   4ba18:	e8 75 ee             	call   0x4a890
   4ba1b:	59                   	pop    cx
   4ba1c:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   4ba21:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ba25:	6b db 28             	imul   bx,bx,0x28
   4ba28:	b8 88 01             	mov    ax,0x188
   4ba2b:	8e c0                	mov    es,ax
   4ba2d:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   4ba33:	75 68                	jne    0x4ba9d
   4ba35:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4ba3a:	7e 57                	jle    0x4ba93
   4ba3c:	b8 88 01             	mov    ax,0x188
   4ba3f:	8e c0                	mov    es,ax
   4ba41:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   4ba46:	6b db 5c             	imul   bx,bx,0x5c
   4ba49:	b8 88 01             	mov    ax,0x188
   4ba4c:	8e c0                	mov    es,ax
   4ba4e:	26 83 bf aa 99 01    	cmp    WORD PTR es:[bx-0x6656],0x1
   4ba54:	75 1e                	jne    0x4ba74
   4ba56:	6a 00                	push   0x0
   4ba58:	68 00 80             	push   0x8000
   4ba5b:	9a 79 17 00 00       	call   0x0:0x1779
   4ba60:	99                   	cwd
   4ba61:	b1 02                	mov    cl,0x2
   4ba63:	9a 8d 13 00 00       	call   0x0:0x138d
   4ba68:	52                   	push   dx
   4ba69:	50                   	push   ax
   4ba6a:	9a df 12 00 00       	call   0x0:0x12df
   4ba6f:	05 19 00             	add    ax,0x19
   4ba72:	eb 1c                	jmp    0x4ba90
   4ba74:	6a 00                	push   0x0
   4ba76:	68 00 80             	push   0x8000
   4ba79:	9a 79 17 00 00       	call   0x0:0x1779
   4ba7e:	99                   	cwd
   4ba7f:	b1 02                	mov    cl,0x2
   4ba81:	9a 8d 13 00 00       	call   0x0:0x138d
   4ba86:	52                   	push   dx
   4ba87:	50                   	push   ax
   4ba88:	9a df 12 00 00       	call   0x0:0x12df
   4ba8d:	05 1d 00             	add    ax,0x1d
   4ba90:	a3 66 d5             	mov    ds:0xd566,ax
   4ba93:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   4ba97:	90                   	nop
   4ba98:	0e                   	push   cs
   4ba99:	e8 02 03             	call   0x4bd9e
   4ba9c:	59                   	pop    cx
   4ba9d:	90                   	nop
   4ba9e:	0e                   	push   cs
   4ba9f:	e8 cf 08             	call   0x4c371
   4baa2:	6a 0a                	push   0xa
   4baa4:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4baa9:	59                   	pop    cx
   4baaa:	c7 06 7c d5 00 00    	mov    WORD PTR ds:0xd57c,0x0
   4bab0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4bab3:	a3 7a d5             	mov    ds:0xd57a,ax
   4bab6:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4bab9:	a3 78 d5             	mov    ds:0xd578,ax
   4babc:	9a e3 01 40 00       	call   0x40:0x1e3
   4bac1:	33 c0                	xor    ax,ax
   4bac3:	c9                   	leave
   4bac4:	cb                   	retf
   4bac5:	55                   	push   bp
   4bac6:	8b ec                	mov    bp,sp
   4bac8:	83 ec 0c             	sub    sp,0xc
   4bacb:	33 c0                	xor    ax,ax
   4bacd:	a3 30 63             	mov    ds:0x6330,ax
   4bad0:	a3 4e d5             	mov    ds:0xd54e,ax
   4bad3:	a3 50 d5             	mov    ds:0xd550,ax
   4bad6:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4badb:	e9 d8 00             	jmp    0x4bbb6
   4bade:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bae1:	d1 e3                	shl    bx,1
   4bae3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4bae6:	89 87 c0 d4          	mov    WORD PTR [bx-0x2b40],ax
   4baea:	6a 00                	push   0x0
   4baec:	68 00 80             	push   0x8000
   4baef:	9a 79 17 00 00       	call   0x0:0x1779
   4baf4:	99                   	cwd
   4baf5:	50                   	push   ax
   4baf6:	52                   	push   dx
   4baf7:	33 d2                	xor    dx,dx
   4baf9:	b8 06 00             	mov    ax,0x6
   4bafc:	59                   	pop    cx
   4bafd:	5b                   	pop    bx
   4bafe:	9a 42 12 00 00       	call   0x0:0x1242
   4bb03:	52                   	push   dx
   4bb04:	50                   	push   ax
   4bb05:	9a df 12 00 00       	call   0x0:0x12df
   4bb0a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bb0d:	6b db 28             	imul   bx,bx,0x28
   4bb10:	ba 88 01             	mov    dx,0x188
   4bb13:	8e c2                	mov    es,dx
   4bb15:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4bb1a:	6b db 2e             	imul   bx,bx,0x2e
   4bb1d:	ba 88 01             	mov    dx,0x188
   4bb20:	8e c2                	mov    es,dx
   4bb22:	26 03 87 26 9f       	add    ax,WORD PTR es:[bx-0x60da]
   4bb27:	05 0a 00             	add    ax,0xa
   4bb2a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bb2d:	6b db 28             	imul   bx,bx,0x28
   4bb30:	ba 88 01             	mov    dx,0x188
   4bb33:	8e c2                	mov    es,dx
   4bb35:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4bb3a:	6b db 2e             	imul   bx,bx,0x2e
   4bb3d:	ba 88 01             	mov    dx,0x188
   4bb40:	8e c2                	mov    es,dx
   4bb42:	26 2b 87 20 9f       	sub    ax,WORD PTR es:[bx-0x60e0]
   4bb47:	7d 04                	jge    0x4bb4d
   4bb49:	33 c0                	xor    ax,ax
   4bb4b:	eb 5d                	jmp    0x4bbaa
   4bb4d:	6a 00                	push   0x0
   4bb4f:	68 00 80             	push   0x8000
   4bb52:	9a 79 17 00 00       	call   0x0:0x1779
   4bb57:	99                   	cwd
   4bb58:	50                   	push   ax
   4bb59:	52                   	push   dx
   4bb5a:	33 d2                	xor    dx,dx
   4bb5c:	b8 06 00             	mov    ax,0x6
   4bb5f:	59                   	pop    cx
   4bb60:	5b                   	pop    bx
   4bb61:	9a 42 12 00 00       	call   0x0:0x1242
   4bb66:	52                   	push   dx
   4bb67:	50                   	push   ax
   4bb68:	9a df 12 00 00       	call   0x0:0x12df
   4bb6d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bb70:	6b db 28             	imul   bx,bx,0x28
   4bb73:	ba 88 01             	mov    dx,0x188
   4bb76:	8e c2                	mov    es,dx
   4bb78:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4bb7d:	6b db 2e             	imul   bx,bx,0x2e
   4bb80:	ba 88 01             	mov    dx,0x188
   4bb83:	8e c2                	mov    es,dx
   4bb85:	26 03 87 26 9f       	add    ax,WORD PTR es:[bx-0x60da]
   4bb8a:	05 0a 00             	add    ax,0xa
   4bb8d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bb90:	6b db 28             	imul   bx,bx,0x28
   4bb93:	ba 88 01             	mov    dx,0x188
   4bb96:	8e c2                	mov    es,dx
   4bb98:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4bb9d:	6b db 2e             	imul   bx,bx,0x2e
   4bba0:	ba 88 01             	mov    dx,0x188
   4bba3:	8e c2                	mov    es,dx
   4bba5:	26 2b 87 20 9f       	sub    ax,WORD PTR es:[bx-0x60e0]
   4bbaa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bbad:	d1 e3                	shl    bx,1
   4bbaf:	89 87 fa d4          	mov    WORD PTR [bx-0x2b06],ax
   4bbb3:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4bbb6:	83 7e fe 1c          	cmp    WORD PTR [bp-0x2],0x1c
   4bbba:	7f 03                	jg     0x4bbbf
   4bbbc:	e9 1f ff             	jmp    0x4bade
   4bbbf:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   4bbc4:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4bbc9:	eb 70                	jmp    0x4bc3b
   4bbcb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bbce:	d1 e3                	shl    bx,1
   4bbd0:	8b 87 fa d4          	mov    ax,WORD PTR [bx-0x2b06]
   4bbd4:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4bbd7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bbda:	d1 e3                	shl    bx,1
   4bbdc:	8b 87 fc d4          	mov    ax,WORD PTR [bx-0x2b04]
   4bbe0:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4bbe3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bbe6:	d1 e3                	shl    bx,1
   4bbe8:	8b 87 c0 d4          	mov    ax,WORD PTR [bx-0x2b40]
   4bbec:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4bbef:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bbf2:	d1 e3                	shl    bx,1
   4bbf4:	8b 87 c2 d4          	mov    ax,WORD PTR [bx-0x2b3e]
   4bbf8:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4bbfb:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4bbfe:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
   4bc01:	7d 35                	jge    0x4bc38
   4bc03:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bc06:	d1 e3                	shl    bx,1
   4bc08:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4bc0b:	89 87 fa d4          	mov    WORD PTR [bx-0x2b06],ax
   4bc0f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bc12:	d1 e3                	shl    bx,1
   4bc14:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4bc17:	89 87 fc d4          	mov    WORD PTR [bx-0x2b04],ax
   4bc1b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bc1e:	d1 e3                	shl    bx,1
   4bc20:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4bc23:	89 87 c0 d4          	mov    WORD PTR [bx-0x2b40],ax
   4bc27:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4bc2a:	d1 e3                	shl    bx,1
   4bc2c:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4bc2f:	89 87 c2 d4          	mov    WORD PTR [bx-0x2b3e],ax
   4bc33:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   4bc38:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4bc3b:	83 7e fe 1b          	cmp    WORD PTR [bp-0x2],0x1b
   4bc3f:	7e 8a                	jle    0x4bbcb
   4bc41:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   4bc45:	74 03                	je     0x4bc4a
   4bc47:	e9 75 ff             	jmp    0x4bbbf
   4bc4a:	c9                   	leave
   4bc4b:	cb                   	retf
   4bc4c:	55                   	push   bp
   4bc4d:	8b ec                	mov    bp,sp
   4bc4f:	83 ec 06             	sub    sp,0x6
   4bc52:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4bc55:	6b c0 3c             	imul   ax,ax,0x3c
   4bc58:	89 46 0a             	mov    WORD PTR [bp+0xa],ax
   4bc5b:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4bc60:	eb 29                	jmp    0x4bc8b
   4bc62:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bc65:	6b db 28             	imul   bx,bx,0x28
   4bc68:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4bc6b:	d1 e0                	shl    ax,1
   4bc6d:	03 d8                	add    bx,ax
   4bc6f:	b8 88 01             	mov    ax,0x188
   4bc72:	8e c0                	mov    es,ax
   4bc74:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   4bc79:	bb 64 00             	mov    bx,0x64
   4bc7c:	33 d2                	xor    dx,dx
   4bc7e:	f7 f3                	div    bx
   4bc80:	3b 56 08             	cmp    dx,WORD PTR [bp+0x8]
   4bc83:	75 03                	jne    0x4bc88
   4bc85:	e9 a6 00             	jmp    0x4bd2e
   4bc88:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4bc8b:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   4bc8f:	7e d1                	jle    0x4bc62
   4bc91:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   4bc96:	eb 1d                	jmp    0x4bcb5
   4bc98:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bc9b:	6b db 28             	imul   bx,bx,0x28
   4bc9e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4bca1:	d1 e0                	shl    ax,1
   4bca3:	03 d8                	add    bx,ax
   4bca5:	b8 88 01             	mov    ax,0x188
   4bca8:	8e c0                	mov    es,ax
   4bcaa:	26 83 bf 9e a0 00    	cmp    WORD PTR es:[bx-0x5f62],0x0
   4bcb0:	74 09                	je     0x4bcbb
   4bcb2:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   4bcb5:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   4bcb9:	7e dd                	jle    0x4bc98
   4bcbb:	83 7e fc 06          	cmp    WORD PTR [bp-0x4],0x6
   4bcbf:	75 45                	jne    0x4bd06
   4bcc1:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4bcc6:	eb 31                	jmp    0x4bcf9
   4bcc8:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bccb:	6b db 28             	imul   bx,bx,0x28
   4bcce:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4bcd1:	d1 e0                	shl    ax,1
   4bcd3:	03 d8                	add    bx,ax
   4bcd5:	b8 88 01             	mov    ax,0x188
   4bcd8:	8e c0                	mov    es,ax
   4bcda:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   4bcdf:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bce2:	6b db 28             	imul   bx,bx,0x28
   4bce5:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   4bce8:	d1 e2                	shl    dx,1
   4bcea:	03 da                	add    bx,dx
   4bcec:	ba 88 01             	mov    dx,0x188
   4bcef:	8e c2                	mov    es,dx
   4bcf1:	26 89 87 9c a0       	mov    WORD PTR es:[bx-0x5f64],ax
   4bcf6:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4bcf9:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   4bcfd:	7e c9                	jle    0x4bcc8
   4bcff:	c7 46 fa 05 00       	mov    WORD PTR [bp-0x6],0x5
   4bd04:	eb 06                	jmp    0x4bd0c
   4bd06:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4bd09:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4bd0c:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4bd0f:	6b c0 64             	imul   ax,ax,0x64
   4bd12:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   4bd15:	03 d0                	add    dx,ax
   4bd17:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bd1a:	6b db 28             	imul   bx,bx,0x28
   4bd1d:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4bd20:	d1 e0                	shl    ax,1
   4bd22:	03 d8                	add    bx,ax
   4bd24:	b8 88 01             	mov    ax,0x188
   4bd27:	8e c0                	mov    es,ax
   4bd29:	26 89 97 9e a0       	mov    WORD PTR es:[bx-0x5f62],dx
   4bd2e:	c9                   	leave
   4bd2f:	cb                   	retf
   4bd30:	55                   	push   bp
   4bd31:	8b ec                	mov    bp,sp
   4bd33:	83 ec 04             	sub    sp,0x4
   4bd36:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4bd3b:	eb 44                	jmp    0x4bd81
   4bd3d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bd40:	6b db 28             	imul   bx,bx,0x28
   4bd43:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4bd46:	d1 e0                	shl    ax,1
   4bd48:	03 d8                	add    bx,ax
   4bd4a:	b8 88 01             	mov    ax,0x188
   4bd4d:	8e c0                	mov    es,ax
   4bd4f:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   4bd54:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bd57:	6b db 28             	imul   bx,bx,0x28
   4bd5a:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   4bd5d:	d1 e2                	shl    dx,1
   4bd5f:	03 da                	add    bx,dx
   4bd61:	ba 88 01             	mov    dx,0x188
   4bd64:	8e c2                	mov    es,dx
   4bd66:	50                   	push   ax
   4bd67:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   4bd6c:	bb 64 00             	mov    bx,0x64
   4bd6f:	33 d2                	xor    dx,dx
   4bd71:	f7 f3                	div    bx
   4bd73:	6b c0 64             	imul   ax,ax,0x64
   4bd76:	5a                   	pop    dx
   4bd77:	2b d0                	sub    dx,ax
   4bd79:	3b 56 08             	cmp    dx,WORD PTR [bp+0x8]
   4bd7c:	74 09                	je     0x4bd87
   4bd7e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4bd81:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   4bd85:	7e b6                	jle    0x4bd3d
   4bd87:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   4bd8b:	75 07                	jne    0x4bd94
   4bd8d:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   4bd92:	eb 05                	jmp    0x4bd99
   4bd94:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   4bd99:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4bd9c:	c9                   	leave
   4bd9d:	cb                   	retf
   4bd9e:	55                   	push   bp
   4bd9f:	8b ec                	mov    bp,sp
   4bda1:	83 ec 02             	sub    sp,0x2
   4bda4:	b8 88 01             	mov    ax,0x188
   4bda7:	8e c0                	mov    es,ax
   4bda9:	26 a0 72 96          	mov    al,es:0x9672
   4bdad:	ba 88 01             	mov    dx,0x188
   4bdb0:	8e c2                	mov    es,dx
   4bdb2:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4bdb7:	74 03                	je     0x4bdbc
   4bdb9:	e9 21 01             	jmp    0x4bedd
   4bdbc:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   4bdc0:	75 03                	jne    0x4bdc5
   4bdc2:	e9 12 01             	jmp    0x4bed7
   4bdc5:	b8 88 01             	mov    ax,0x188
   4bdc8:	8e c0                	mov    es,ax
   4bdca:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   4bdd0:	75 03                	jne    0x4bdd5
   4bdd2:	e9 02 01             	jmp    0x4bed7
   4bdd5:	b8 88 01             	mov    ax,0x188
   4bdd8:	8e c0                	mov    es,ax
   4bdda:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4bde0:	75 03                	jne    0x4bde5
   4bde2:	e9 f2 00             	jmp    0x4bed7
   4bde5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bde8:	6b db 11             	imul   bx,bx,0x11
   4bdeb:	b8 88 01             	mov    ax,0x188
   4bdee:	8e c0                	mov    es,ax
   4bdf0:	26 f7 87 ea 22 20 00 	test   WORD PTR es:[bx+0x22ea],0x20
   4bdf7:	75 03                	jne    0x4bdfc
   4bdf9:	e9 b9 00             	jmp    0x4beb5
   4bdfc:	83 7e 06 02          	cmp    WORD PTR [bp+0x6],0x2
   4be00:	75 51                	jne    0x4be53
   4be02:	83 3e 6c d5 18       	cmp    WORD PTR ds:0xd56c,0x18
   4be07:	7e 08                	jle    0x4be11
   4be09:	a1 6c d5             	mov    ax,ds:0xd56c
   4be0c:	05 28 00             	add    ax,0x28
   4be0f:	eb 24                	jmp    0x4be35
   4be11:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4be15:	6b db 28             	imul   bx,bx,0x28
   4be18:	b8 88 01             	mov    ax,0x188
   4be1b:	8e c0                	mov    es,ax
   4be1d:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4be22:	6b db 06             	imul   bx,bx,0x6
   4be25:	b8 88 01             	mov    ax,0x188
   4be28:	ba c0 5b             	mov    dx,0x5bc0
   4be2b:	83 c2 02             	add    dx,0x2
   4be2e:	03 da                	add    bx,dx
   4be30:	8e c0                	mov    es,ax
   4be32:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4be35:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4be38:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4be3b:	83 eb 0e             	sub    bx,0xe
   4be3e:	83 fb 11             	cmp    bx,0x11
   4be41:	77 46                	ja     0x4be89
   4be43:	d1 e3                	shl    bx,1
   4be45:	2e ff a7 8f 22       	jmp    WORD PTR cs:[bx+0x228f]
   4be4a:	c7 46 06 0d 00       	mov    WORD PTR [bp+0x6],0xd
   4be4f:	eb 38                	jmp    0x4be89
   4be51:	eb 36                	jmp    0x4be89
   4be53:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4be58:	7e 08                	jle    0x4be62
   4be5a:	a1 de d5             	mov    ax,ds:0xd5de
   4be5d:	05 28 00             	add    ax,0x28
   4be60:	eb 24                	jmp    0x4be86
   4be62:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4be66:	6b db 28             	imul   bx,bx,0x28
   4be69:	b8 88 01             	mov    ax,0x188
   4be6c:	8e c0                	mov    es,ax
   4be6e:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4be73:	6b db 06             	imul   bx,bx,0x6
   4be76:	b8 88 01             	mov    ax,0x188
   4be79:	ba c0 5b             	mov    dx,0x5bc0
   4be7c:	83 c2 02             	add    dx,0x2
   4be7f:	03 da                	add    bx,dx
   4be81:	8e c0                	mov    es,ax
   4be83:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4be86:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4be89:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4be8c:	6b db 11             	imul   bx,bx,0x11
   4be8f:	b8 88 01             	mov    ax,0x188
   4be92:	6a 00                	push   0x0
   4be94:	8e c0                	mov    es,ax
   4be96:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   4be9b:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4be9e:	90                   	nop
   4be9f:	0e                   	push   cs
   4bea0:	e8 08 03             	call   0x4c1ab
   4bea3:	83 c4 06             	add    sp,0x6
   4bea6:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4bea9:	6a 00                	push   0x0
   4beab:	68 f4 01             	push   0x1f4
   4beae:	6a 00                	push   0x0
   4beb0:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4beb3:	eb 17                	jmp    0x4becc
   4beb5:	6a 00                	push   0x0
   4beb7:	68 f4 01             	push   0x1f4
   4beba:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4bebd:	6b db 11             	imul   bx,bx,0x11
   4bec0:	b8 88 01             	mov    ax,0x188
   4bec3:	6a 00                	push   0x0
   4bec5:	8e c0                	mov    es,ax
   4bec7:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   4becc:	ff 76 06             	push   WORD PTR [bp+0x6]
   4becf:	9a 2d 19 10 00       	call   0x10:0x192d
   4bed4:	83 c4 0a             	add    sp,0xa
   4bed7:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   4bedd:	c9                   	leave
   4bede:	cb                   	retf
   4bedf:	fa                   	cli
   4bee0:	21 fa                	and    dx,di
   4bee2:	21 fa                	and    dx,di
   4bee4:	21 fa                	and    dx,di
   4bee6:	21 39                	and    WORD PTR [bx+di],di
   4bee8:	22 39                	and    bh,BYTE PTR [bx+di]
   4beea:	22 39                	and    bh,BYTE PTR [bx+di]
   4beec:	22 39                	and    bh,BYTE PTR [bx+di]
   4beee:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef0:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef2:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef4:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef6:	22 39                	and    bh,BYTE PTR [bx+di]
   4bef8:	22 39                	and    bh,BYTE PTR [bx+di]
   4befa:	22 39                	and    bh,BYTE PTR [bx+di]
   4befc:	22 39                	and    bh,BYTE PTR [bx+di]
   4befe:	22 fa                	and    bh,dl
   4bf00:	21 fa                	and    dx,di
   4bf02:	21 55 8b             	and    WORD PTR [di-0x75],dx
   4bf05:	ec                   	in     al,dx
   4bf06:	6a 00                	push   0x0
   4bf08:	6a 0e                	push   0xe
   4bf0a:	9a 1d 0a 20 00       	call   0x20:0xa1d
   4bf0f:	83 c4 04             	add    sp,0x4
   4bf12:	bb 88 01             	mov    bx,0x188
   4bf15:	8e c3                	mov    es,bx
   4bf17:	26 89 16 62 96       	mov    WORD PTR es:0x9662,dx
   4bf1c:	26 a3 60 96          	mov    es:0x9660,ax
   4bf20:	b8 88 01             	mov    ax,0x188
   4bf23:	8e c0                	mov    es,ax
   4bf25:	26 c7 06 4e 96 38 01 	mov    WORD PTR es:0x964e,0x138
   4bf2c:	26 c7 06 4c 96 7a 00 	mov    WORD PTR es:0x964c,0x7a
   4bf33:	b8 88 01             	mov    ax,0x188
   4bf36:	8e c0                	mov    es,ax
   4bf38:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf3d:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4bf40:	26 89 07             	mov    WORD PTR es:[bx],ax
   4bf43:	b8 88 01             	mov    ax,0x188
   4bf46:	8e c0                	mov    es,ax
   4bf48:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf4d:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4bf50:	26 89 47 02          	mov    WORD PTR es:[bx+0x2],ax
   4bf54:	b8 88 01             	mov    ax,0x188
   4bf57:	8e c0                	mov    es,ax
   4bf59:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf5e:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4bf61:	26 89 47 04          	mov    WORD PTR es:[bx+0x4],ax
   4bf65:	b8 88 01             	mov    ax,0x188
   4bf68:	8e c0                	mov    es,ax
   4bf6a:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf6f:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   4bf72:	26 89 47 06          	mov    WORD PTR es:[bx+0x6],ax
   4bf76:	b8 88 01             	mov    ax,0x188
   4bf79:	8e c0                	mov    es,ax
   4bf7b:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf80:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   4bf83:	26 89 47 08          	mov    WORD PTR es:[bx+0x8],ax
   4bf87:	b8 88 01             	mov    ax,0x188
   4bf8a:	8e c0                	mov    es,ax
   4bf8c:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf91:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
   4bf94:	26 89 47 0a          	mov    WORD PTR es:[bx+0xa],ax
   4bf98:	b8 88 01             	mov    ax,0x188
   4bf9b:	8e c0                	mov    es,ax
   4bf9d:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bfa2:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   4bfa5:	26 89 47 0c          	mov    WORD PTR es:[bx+0xc],ax
   4bfa9:	5d                   	pop    bp
   4bfaa:	cb                   	retf
   4bfab:	55                   	push   bp
   4bfac:	8b ec                	mov    bp,sp
   4bfae:	83 ec 14             	sub    sp,0x14
   4bfb1:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
   4bfb5:	c6 46 fd 02          	mov    BYTE PTR [bp-0x3],0x2
   4bfb9:	83 3e 1a 63 00       	cmp    WORD PTR ds:0x631a,0x0
   4bfbe:	75 0a                	jne    0x4bfca
   4bfc0:	83 3e ba d5 01       	cmp    WORD PTR ds:0xd5ba,0x1
   4bfc5:	75 03                	jne    0x4bfca
   4bfc7:	e9 df 01             	jmp    0x4c1a9
   4bfca:	ff 76 06             	push   WORD PTR [bp+0x6]
   4bfcd:	16                   	push   ss
   4bfce:	8d 46 ec             	lea    ax,[bp-0x14]
   4bfd1:	50                   	push   ax
   4bfd2:	ff 36 20 63          	push   WORD PTR ds:0x6320
   4bfd6:	90                   	nop
   4bfd7:	0e                   	push   cs
   4bfd8:	e8 98 02             	call   0x4c273
   4bfdb:	83 c4 08             	add    sp,0x8
   4bfde:	83 3e 1a 63 1d       	cmp    WORD PTR ds:0x631a,0x1d
   4bfe3:	74 14                	je     0x4bff9
   4bfe5:	83 3e 1a 63 2c       	cmp    WORD PTR ds:0x631a,0x2c
   4bfea:	7d 0d                	jge    0x4bff9
   4bfec:	a1 bc d5             	mov    ax,ds:0xd5bc
   4bfef:	3b 06 56 d5          	cmp    ax,WORD PTR ds:0xd556
   4bff3:	7e 04                	jle    0x4bff9
   4bff5:	c6 46 fd 01          	mov    BYTE PTR [bp-0x3],0x1
   4bff9:	6a 00                	push   0x0
   4bffb:	68 44 ac             	push   0xac44
   4bffe:	ff 36 20 63          	push   WORD PTR ds:0x6320
   4c002:	90                   	nop
   4c003:	0e                   	push   cs
   4c004:	e8 a4 01             	call   0x4c1ab
   4c007:	83 c4 06             	add    sp,0x6
   4c00a:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4c00d:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   4c012:	b8 88 01             	mov    ax,0x188
   4c015:	8e c0                	mov    es,ax
   4c017:	26 a1 2b e1          	mov    ax,es:0xe12b
   4c01b:	26 0b 06 2d e1       	or     ax,WORD PTR es:0xe12d
   4c020:	74 15                	je     0x4c037
   4c022:	1e                   	push   ds
   4c023:	68 75 65             	push   0x6575
   4c026:	68 9f 03             	push   0x39f
   4c029:	68 88 01             	push   0x188
   4c02c:	68 2b e1             	push   0xe12b
   4c02f:	9a 2f 02 40 00       	call   0x40:0x22f
   4c034:	83 c4 0a             	add    sp,0xa
   4c037:	b8 88 01             	mov    ax,0x188
   4c03a:	8e c0                	mov    es,ax
   4c03c:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4c042:	74 63                	je     0x4c0a7
   4c044:	b8 88 01             	mov    ax,0x188
   4c047:	8e c0                	mov    es,ax
   4c049:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   4c04f:	74 56                	je     0x4c0a7
   4c051:	6a 00                	push   0x0
   4c053:	6a 00                	push   0x0
   4c055:	6a 00                	push   0x0
   4c057:	6a 00                	push   0x0
   4c059:	8a 46 fd             	mov    al,BYTE PTR [bp-0x3]
   4c05c:	50                   	push   ax
   4c05d:	6a 21                	push   0x21
   4c05f:	16                   	push   ss
   4c060:	8d 46 ec             	lea    ax,[bp-0x14]
   4c063:	50                   	push   ax
   4c064:	6a 01                	push   0x1
   4c066:	9a 25 00 60 01       	call   0x160:0x25
   4c06b:	83 c4 12             	add    sp,0x12
   4c06e:	88 46 fe             	mov    BYTE PTR [bp-0x2],al
   4c071:	0a c0                	or     al,al
   4c073:	74 32                	je     0x4c0a7
   4c075:	6a ff                	push   0xffff
   4c077:	80 7e fe 01          	cmp    BYTE PTR [bp-0x2],0x1
   4c07b:	75 07                	jne    0x4c084
   4c07d:	8c da                	mov    dx,ds
   4c07f:	b8 95 65             	mov    ax,0x6595
   4c082:	eb 12                	jmp    0x4c096
   4c084:	80 7e fe 02          	cmp    BYTE PTR [bp-0x2],0x2
   4c088:	75 07                	jne    0x4c091
   4c08a:	8c da                	mov    dx,ds
   4c08c:	b8 a9 65             	mov    ax,0x65a9
   4c08f:	eb 05                	jmp    0x4c096
   4c091:	8c da                	mov    dx,ds
   4c093:	b8 cf 65             	mov    ax,0x65cf
   4c096:	52                   	push   dx
   4c097:	50                   	push   ax
   4c098:	68 a3 03             	push   0x3a3
   4c09b:	1e                   	push   ds
   4c09c:	68 85 65             	push   0x6585
   4c09f:	9a 2a 00 58 01       	call   0x158:0x2a
   4c0a4:	83 c4 0c             	add    sp,0xc
   4c0a7:	b8 88 01             	mov    ax,0x188
   4c0aa:	8e c0                	mov    es,ax
   4c0ac:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4c0b2:	74 0d                	je     0x4c0c1
   4c0b4:	b8 88 01             	mov    ax,0x188
   4c0b7:	8e c0                	mov    es,ax
   4c0b9:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   4c0bf:	75 0a                	jne    0x4c0cb
   4c0c1:	6a 14                	push   0x14
   4c0c3:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4c0c8:	59                   	pop    cx
   4c0c9:	eb 14                	jmp    0x4c0df
   4c0cb:	6a 00                	push   0x0
   4c0cd:	68 f4 01             	push   0x1f4
   4c0d0:	6a 00                	push   0x0
   4c0d2:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4c0d5:	6a 21                	push   0x21
   4c0d7:	9a 2d 19 10 00       	call   0x10:0x192d
   4c0dc:	83 c4 0a             	add    sp,0xa
   4c0df:	b8 88 01             	mov    ax,0x188
   4c0e2:	8e c0                	mov    es,ax
   4c0e4:	26 a0 72 96          	mov    al,es:0x9672
   4c0e8:	ba 88 01             	mov    dx,0x188
   4c0eb:	8e c2                	mov    es,dx
   4c0ed:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4c0f2:	75 1f                	jne    0x4c113
   4c0f4:	83 3e 20 63 28       	cmp    WORD PTR ds:0x6320,0x28
   4c0f9:	7e 6c                	jle    0x4c167
   4c0fb:	83 3e 1a 63 1a       	cmp    WORD PTR ds:0x631a,0x1a
   4c100:	74 65                	je     0x4c167
   4c102:	6a 00                	push   0x0
   4c104:	6a 00                	push   0x0
   4c106:	6a 20                	push   0x20
   4c108:	6a 20                	push   0x20
   4c10a:	68 a5 00             	push   0xa5
   4c10d:	6a 19                	push   0x19
   4c10f:	eb 44                	jmp    0x4c155
   4c111:	eb 54                	jmp    0x4c167
   4c113:	83 3e 1a 63 00       	cmp    WORD PTR ds:0x631a,0x0
   4c118:	74 28                	je     0x4c142
   4c11a:	83 3e 1a 63 1a       	cmp    WORD PTR ds:0x631a,0x1a
   4c11f:	74 46                	je     0x4c167
   4c121:	6a 01                	push   0x1
   4c123:	6a 01                	push   0x1
   4c125:	6a 1e                	push   0x1e
   4c127:	6a 1e                	push   0x1e
   4c129:	6a 15                	push   0x15
   4c12b:	a1 e0 d5             	mov    ax,ds:0xd5e0
   4c12e:	05 e7 ff             	add    ax,0xffe7
   4c131:	6b c0 23             	imul   ax,ax,0x23
   4c134:	05 9d 00             	add    ax,0x9d
   4c137:	50                   	push   ax
   4c138:	a1 e0 d5             	mov    ax,ds:0xd5e0
   4c13b:	05 e8 ff             	add    ax,0xffe8
   4c13e:	eb 1b                	jmp    0x4c15b
   4c140:	eb 25                	jmp    0x4c167
   4c142:	83 3e 20 63 28       	cmp    WORD PTR ds:0x6320,0x28
   4c147:	7e 1e                	jle    0x4c167
   4c149:	6a 00                	push   0x0
   4c14b:	6a 00                	push   0x0
   4c14d:	6a 20                	push   0x20
   4c14f:	6a 20                	push   0x20
   4c151:	6a 15                	push   0x15
   4c153:	6a 07                	push   0x7
   4c155:	a1 20 63             	mov    ax,ds:0x6320
   4c158:	05 c0 ff             	add    ax,0xffc0
   4c15b:	50                   	push   ax
   4c15c:	0e                   	push   cs
   4c15d:	e8 a3 fd             	call   0x4bf03
   4c160:	83 c4 0e             	add    sp,0xe
   4c163:	c6 46 ff 01          	mov    BYTE PTR [bp-0x1],0x1
   4c167:	6a 08                	push   0x8
   4c169:	6a 21                	push   0x21
   4c16b:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   4c170:	83 c4 04             	add    sp,0x4
   4c173:	80 7e ff 00          	cmp    BYTE PTR [bp-0x1],0x0
   4c177:	74 2a                	je     0x4c1a3
   4c179:	b8 88 01             	mov    ax,0x188
   4c17c:	8e c0                	mov    es,ax
   4c17e:	26 c7 06 4e 96 10 00 	mov    WORD PTR es:0x964e,0x10
   4c185:	26 c7 06 4c 96 cd 00 	mov    WORD PTR es:0x964c,0xcd
   4c18c:	b8 88 01             	mov    ax,0x188
   4c18f:	8e c0                	mov    es,ax
   4c191:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   4c196:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   4c19b:	9a c2 24 00 00       	call   0x0:0x24c2
   4c1a0:	83 c4 04             	add    sp,0x4
   4c1a3:	c7 06 20 63 ff 00    	mov    WORD PTR ds:0x6320,0xff
   4c1a9:	c9                   	leave
   4c1aa:	cb                   	retf
   4c1ab:	55                   	push   bp
   4c1ac:	8b ec                	mov    bp,sp
   4c1ae:	83 ec 02             	sub    sp,0x2
   4c1b1:	83 7e 06 28          	cmp    WORD PTR [bp+0x6],0x28
   4c1b5:	7e 07                	jle    0x4c1be
   4c1b7:	c7 46 fe 4c 1d       	mov    WORD PTR [bp-0x2],0x1d4c
   4c1bc:	eb 57                	jmp    0x4c215
   4c1be:	b8 88 01             	mov    ax,0x188
   4c1c1:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4c1c4:	8e c0                	mov    es,ax
   4c1c6:	26 8a 87 8d 1e       	mov    al,BYTE PTR es:[bx+0x1e8d]
   4c1cb:	b4 00                	mov    ah,0x0
   4c1cd:	8b d8                	mov    bx,ax
   4c1cf:	83 fb 09             	cmp    bx,0x9
   4c1d2:	77 3c                	ja     0x4c210
   4c1d4:	d1 e3                	shl    bx,1
   4c1d6:	2e ff a7 0f 26       	jmp    WORD PTR cs:[bx+0x260f]
   4c1db:	c7 46 fe 94 11       	mov    WORD PTR [bp-0x2],0x1194
   4c1e0:	eb 33                	jmp    0x4c215
   4c1e2:	eb 07                	jmp    0x4c1eb
   4c1e4:	c7 46 fe 64 19       	mov    WORD PTR [bp-0x2],0x1964
   4c1e9:	eb 2a                	jmp    0x4c215
   4c1eb:	c7 46 fe 70 17       	mov    WORD PTR [bp-0x2],0x1770
   4c1f0:	eb 23                	jmp    0x4c215
   4c1f2:	c7 46 fe 58 1b       	mov    WORD PTR [bp-0x2],0x1b58
   4c1f7:	eb 1c                	jmp    0x4c215
   4c1f9:	eb bc                	jmp    0x4c1b7
   4c1fb:	c7 46 fe 20 4e       	mov    WORD PTR [bp-0x2],0x4e20
   4c200:	eb 13                	jmp    0x4c215
   4c202:	c7 46 fe 34 21       	mov    WORD PTR [bp-0x2],0x2134
   4c207:	eb 0c                	jmp    0x4c215
   4c209:	c7 46 fe e0 ab       	mov    WORD PTR [bp-0x2],0xabe0
   4c20e:	eb 05                	jmp    0x4c215
   4c210:	c7 46 fe f0 55       	mov    WORD PTR [bp-0x2],0x55f0
   4c215:	6a 00                	push   0x0
   4c217:	68 4c 1d             	push   0x1d4c
   4c21a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4c21d:	33 c9                	xor    cx,cx
   4c21f:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   4c222:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4c225:	9a 42 12 00 00       	call   0x0:0x1242
   4c22a:	52                   	push   dx
   4c22b:	50                   	push   ax
   4c22c:	9a e6 12 00 00       	call   0x0:0x12e6
   4c231:	0b d2                	or     dx,dx
   4c233:	77 25                	ja     0x4c25a
   4c235:	72 05                	jb     0x4c23c
   4c237:	3d ff ff             	cmp    ax,0xffff
   4c23a:	73 1e                	jae    0x4c25a
   4c23c:	6a 00                	push   0x0
   4c23e:	68 4c 1d             	push   0x1d4c
   4c241:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4c244:	33 c9                	xor    cx,cx
   4c246:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   4c249:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4c24c:	9a 42 12 00 00       	call   0x0:0x1242
   4c251:	52                   	push   dx
   4c252:	50                   	push   ax
   4c253:	9a e6 12 00 00       	call   0x0:0x12e6
   4c258:	eb 03                	jmp    0x4c25d
   4c25a:	b8 ff ff             	mov    ax,0xffff
   4c25d:	c9                   	leave
   4c25e:	cb                   	retf
   4c25f:	92                   	xchg   dx,ax
   4c260:	25 a9 25             	and    ax,0x25a9
   4c263:	9b                   	fwait
   4c264:	25 a2 25             	and    ax,0x25a2
   4c267:	94                   	xchg   sp,ax
   4c268:	25 8b 25             	and    ax,0x258b
   4c26b:	ab                   	stos   WORD PTR es:[di],ax
   4c26c:	25 b2 25             	and    ax,0x25b2
   4c26f:	c0 25 b9             	shl    BYTE PTR [di],0xb9
   4c272:	25 55 8b             	and    ax,0x8b55
   4c275:	ec                   	in     al,dx
   4c276:	83 3e 1a 63 00       	cmp    WORD PTR ds:0x631a,0x0
   4c27b:	75 71                	jne    0x4c2ee
   4c27d:	83 7e 06 28          	cmp    WORD PTR [bp+0x6],0x28
   4c281:	7e 37                	jle    0x4c2ba
   4c283:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4c286:	6b db 5c             	imul   bx,bx,0x5c
   4c289:	b8 88 01             	mov    ax,0x188
   4c28c:	8e c0                	mov    es,ax
   4c28e:	26 83 bf aa 82 01    	cmp    WORD PTR es:[bx-0x7d56],0x1
   4c294:	75 18                	jne    0x4c2ae
   4c296:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c299:	1e                   	push   ds
   4c29a:	68 e9 65             	push   0x65e9
   4c29d:	ff 76 0a             	push   WORD PTR [bp+0xa]
   4c2a0:	ff 76 08             	push   WORD PTR [bp+0x8]
   4c2a3:	9a b4 48 00 00       	call   0x0:0x48b4
   4c2a8:	83 c4 0a             	add    sp,0xa
   4c2ab:	e9 a1 00             	jmp    0x4c34f
   4c2ae:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c2b1:	1e                   	push   ds
   4c2b2:	68 f8 65             	push   0x65f8
   4c2b5:	eb e6                	jmp    0x4c29d
   4c2b7:	e9 95 00             	jmp    0x4c34f
   4c2ba:	b8 88 01             	mov    ax,0x188
   4c2bd:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4c2c0:	8e c0                	mov    es,ax
   4c2c2:	26 8a 87 8d 1e       	mov    al,BYTE PTR es:[bx+0x1e8d]
   4c2c7:	b4 00                	mov    ah,0x0
   4c2c9:	2d 02 00             	sub    ax,0x2
   4c2cc:	8b d8                	mov    bx,ax
   4c2ce:	83 fb 07             	cmp    bx,0x7
   4c2d1:	77 07                	ja     0x4c2da
   4c2d3:	d1 e3                	shl    bx,1
   4c2d5:	2e ff a7 11 27       	jmp    WORD PTR cs:[bx+0x2711]
   4c2da:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c2dd:	1e                   	push   ds
   4c2de:	68 07 66             	push   0x6607
   4c2e1:	eb ba                	jmp    0x4c29d
   4c2e3:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c2e6:	1e                   	push   ds
   4c2e7:	68 16 66             	push   0x6616
   4c2ea:	eb b1                	jmp    0x4c29d
   4c2ec:	eb 61                	jmp    0x4c34f
   4c2ee:	83 7e 06 28          	cmp    WORD PTR [bp+0x6],0x28
   4c2f2:	7e 27                	jle    0x4c31b
   4c2f4:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4c2f7:	6b db 5c             	imul   bx,bx,0x5c
   4c2fa:	b8 88 01             	mov    ax,0x188
   4c2fd:	8e c0                	mov    es,ax
   4c2ff:	26 83 bf aa 82 01    	cmp    WORD PTR es:[bx-0x7d56],0x1
   4c305:	75 09                	jne    0x4c310
   4c307:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c30a:	1e                   	push   ds
   4c30b:	68 25 66             	push   0x6625
   4c30e:	eb 8d                	jmp    0x4c29d
   4c310:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c313:	1e                   	push   ds
   4c314:	68 33 66             	push   0x6633
   4c317:	eb 84                	jmp    0x4c29d
   4c319:	eb 34                	jmp    0x4c34f
   4c31b:	b8 88 01             	mov    ax,0x188
   4c31e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4c321:	8e c0                	mov    es,ax
   4c323:	26 8a 87 8d 1e       	mov    al,BYTE PTR es:[bx+0x1e8d]
   4c328:	b4 00                	mov    ah,0x0
   4c32a:	2d 02 00             	sub    ax,0x2
   4c32d:	8b d8                	mov    bx,ax
   4c32f:	83 fb 07             	cmp    bx,0x7
   4c332:	77 07                	ja     0x4c33b
   4c334:	d1 e3                	shl    bx,1
   4c336:	2e ff a7 01 27       	jmp    WORD PTR cs:[bx+0x2701]
   4c33b:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c33e:	1e                   	push   ds
   4c33f:	68 41 66             	push   0x6641
   4c342:	e9 58 ff             	jmp    0x4c29d
   4c345:	ff 76 0c             	push   WORD PTR [bp+0xc]
   4c348:	1e                   	push   ds
   4c349:	68 4f 66             	push   0x664f
   4c34c:	e9 4e ff             	jmp    0x4c29d
   4c34f:	5d                   	pop    bp
   4c350:	cb                   	retf
   4c351:	f5                   	cmc
   4c352:	26 f5                	es cmc
   4c354:	26 eb 26             	es jmp 0x4c37d
   4c357:	eb 26                	jmp    0x4c37f
   4c359:	f5                   	cmc
   4c35a:	26 eb 26             	es jmp 0x4c383
   4c35d:	eb 26                	jmp    0x4c385
   4c35f:	f5                   	cmc
   4c360:	26 93                	es xchg bx,ax
   4c362:	26 93                	es xchg bx,ax
   4c364:	26 8a 26 8a 26       	mov    ah,BYTE PTR es:0x268a
   4c369:	93                   	xchg   bx,ax
   4c36a:	26 8a 26 8a 26       	mov    ah,BYTE PTR es:0x268a
   4c36f:	93                   	xchg   bx,ax
   4c370:	26 55                	es push bp
   4c372:	8b ec                	mov    bp,sp
   4c374:	83 ec 1e             	sub    sp,0x1e
   4c377:	b8 88 01             	mov    ax,0x188
   4c37a:	8e c0                	mov    es,ax
   4c37c:	26 a0 72 96          	mov    al,es:0x9672
   4c380:	ba 88 01             	mov    dx,0x188
   4c383:	8e c2                	mov    es,dx
   4c385:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4c38a:	74 03                	je     0x4c38f
   4c38c:	e9 3a 05             	jmp    0x4c8c9
   4c38f:	b8 88 01             	mov    ax,0x188
   4c392:	8e c0                	mov    es,ax
   4c394:	26 ff 36 d1 e2       	push   WORD PTR es:0xe2d1
   4c399:	26 ff 36 cf e2       	push   WORD PTR es:0xe2cf
   4c39e:	b8 88 01             	mov    ax,0x188
   4c3a1:	8e c0                	mov    es,ax
   4c3a3:	26 ff 36 a9 e2       	push   WORD PTR es:0xe2a9
   4c3a8:	26 ff 36 a7 e2       	push   WORD PTR es:0xe2a7
   4c3ad:	9a 8a 06 20 00       	call   0x20:0x68a
   4c3b2:	83 c4 08             	add    sp,0x8
   4c3b5:	a1 7e d5             	mov    ax,ds:0xd57e
   4c3b8:	a3 c8 d5             	mov    ds:0xd5c8,ax
   4c3bb:	e9 a3 03             	jmp    0x4c761
   4c3be:	a1 80 d5             	mov    ax,ds:0xd580
   4c3c1:	05 06 00             	add    ax,0x6
   4c3c4:	a3 ca d5             	mov    ds:0xd5ca,ax
   4c3c7:	e9 87 03             	jmp    0x4c751
   4c3ca:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c3ce:	6b db 38             	imul   bx,bx,0x38
   4c3d1:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c3d4:	d1 e0                	shl    ax,1
   4c3d6:	03 d8                	add    bx,ax
   4c3d8:	8b 87 ee c8          	mov    ax,WORD PTR [bx-0x3712]
   4c3dc:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4c3df:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c3e3:	6b db 38             	imul   bx,bx,0x38
   4c3e6:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c3e9:	d1 e0                	shl    ax,1
   4c3eb:	03 d8                	add    bx,ax
   4c3ed:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4c3f1:	a3 cc d5             	mov    ds:0xd5cc,ax
   4c3f4:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c3f7:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4c3fa:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c3fe:	6b db 38             	imul   bx,bx,0x38
   4c401:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c404:	d1 e0                	shl    ax,1
   4c406:	03 d8                	add    bx,ax
   4c408:	8b 87 06 c3          	mov    ax,WORD PTR [bx-0x3cfa]
   4c40c:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4c40f:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c413:	6b db 38             	imul   bx,bx,0x38
   4c416:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c419:	d1 e0                	shl    ax,1
   4c41b:	03 d8                	add    bx,ax
   4c41d:	8b 87 04 c3          	mov    ax,WORD PTR [bx-0x3cfc]
   4c421:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4c424:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c428:	6b db 38             	imul   bx,bx,0x38
   4c42b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c42e:	d1 e0                	shl    ax,1
   4c430:	03 d8                	add    bx,ax
   4c432:	8b 87 cc c2          	mov    ax,WORD PTR [bx-0x3d34]
   4c436:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4c439:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c43d:	6b db 38             	imul   bx,bx,0x38
   4c440:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c443:	d1 e0                	shl    ax,1
   4c445:	03 d8                	add    bx,ax
   4c447:	8b 87 02 c3          	mov    ax,WORD PTR [bx-0x3cfe]
   4c44b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4c44e:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4c452:	6b db 38             	imul   bx,bx,0x38
   4c455:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4c458:	d1 e0                	shl    ax,1
   4c45a:	03 d8                	add    bx,ax
   4c45c:	8b 87 00 c3          	mov    ax,WORD PTR [bx-0x3d00]
   4c460:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4c463:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c467:	6b db 28             	imul   bx,bx,0x28
   4c46a:	b8 88 01             	mov    ax,0x188
   4c46d:	8e c0                	mov    es,ax
   4c46f:	26 8b 87 8e a0       	mov    ax,WORD PTR es:[bx-0x5f72]
   4c474:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c478:	6b db 28             	imul   bx,bx,0x28
   4c47b:	ba 88 01             	mov    dx,0x188
   4c47e:	8e c2                	mov    es,dx
   4c480:	26 8b 97 90 a0       	mov    dx,WORD PTR es:[bx-0x5f70]
   4c485:	4a                   	dec    dx
   4c486:	c1 e2 03             	shl    dx,0x3
   4c489:	03 c2                	add    ax,dx
   4c48b:	7d 04                	jge    0x4c491
   4c48d:	33 c0                	xor    ax,ax
   4c48f:	eb 28                	jmp    0x4c4b9
   4c491:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c495:	6b db 28             	imul   bx,bx,0x28
   4c498:	b8 88 01             	mov    ax,0x188
   4c49b:	8e c0                	mov    es,ax
   4c49d:	26 8b 87 8e a0       	mov    ax,WORD PTR es:[bx-0x5f72]
   4c4a2:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4c4a6:	6b db 28             	imul   bx,bx,0x28
   4c4a9:	ba 88 01             	mov    dx,0x188
   4c4ac:	8e c2                	mov    es,dx
   4c4ae:	26 8b 97 90 a0       	mov    dx,WORD PTR es:[bx-0x5f70]
   4c4b3:	4a                   	dec    dx
   4c4b4:	c1 e2 03             	shl    dx,0x3
   4c4b7:	03 c2                	add    ax,dx
   4c4b9:	05 11 00             	add    ax,0x11
   4c4bc:	a3 c4 d5             	mov    ds:0xd5c4,ax
   4c4bf:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   4c4c3:	75 5d                	jne    0x4c522
   4c4c5:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c4ca:	75 44                	jne    0x4c510
   4c4cc:	a1 7a d5             	mov    ax,ds:0xd57a
   4c4cf:	3b 06 ca d5          	cmp    ax,WORD PTR ds:0xd5ca
   4c4d3:	75 3b                	jne    0x4c510
   4c4d5:	a1 78 d5             	mov    ax,ds:0xd578
   4c4d8:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c4dc:	75 32                	jne    0x4c510
   4c4de:	6a 0a                	push   0xa
   4c4e0:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c4e3:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c4e7:	6b c0 0e             	imul   ax,ax,0xe
   4c4ea:	05 17 00             	add    ax,0x17
   4c4ed:	50                   	push   ax
   4c4ee:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c4f1:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c4f5:	6b c0 1e             	imul   ax,ax,0x1e
   4c4f8:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c4fc:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c500:	6b d2 0e             	imul   dx,dx,0xe
   4c503:	03 c2                	add    ax,dx
   4c505:	05 0a 00             	add    ax,0xa
   4c508:	50                   	push   ax
   4c509:	0e                   	push   cs
   4c50a:	e8 14 da             	call   0x49f21
   4c50d:	83 c4 06             	add    sp,0x6
   4c510:	83 3e cc d5 00       	cmp    WORD PTR ds:0xd5cc,0x0
   4c515:	7f 03                	jg     0x4c51a
   4c517:	e9 33 02             	jmp    0x4c74d
   4c51a:	6a 14                	push   0x14
   4c51c:	e9 28 02             	jmp    0x4c747
   4c51f:	e9 2b 02             	jmp    0x4c74d
   4c522:	83 7e fe 09          	cmp    WORD PTR [bp-0x2],0x9
   4c526:	7f 03                	jg     0x4c52b
   4c528:	e9 95 01             	jmp    0x4c6c0
   4c52b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4c52e:	d1 e3                	shl    bx,1
   4c530:	b8 88 01             	mov    ax,0x188
   4c533:	8e c0                	mov    es,ax
   4c535:	26 ff b7 16 26       	push   WORD PTR es:[bx+0x2616]
   4c53a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c53d:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c541:	6b c0 0e             	imul   ax,ax,0xe
   4c544:	05 18 00             	add    ax,0x18
   4c547:	50                   	push   ax
   4c548:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c54b:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c54f:	6b c0 1e             	imul   ax,ax,0x1e
   4c552:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c556:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c55a:	6b d2 0e             	imul   dx,dx,0xe
   4c55d:	03 c2                	add    ax,dx
   4c55f:	05 0a 00             	add    ax,0xa
   4c562:	50                   	push   ax
   4c563:	0e                   	push   cs
   4c564:	e8 ba d9             	call   0x49f21
   4c567:	83 c4 06             	add    sp,0x6
   4c56a:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c56f:	75 44                	jne    0x4c5b5
   4c571:	a1 7a d5             	mov    ax,ds:0xd57a
   4c574:	3b 06 ca d5          	cmp    ax,WORD PTR ds:0xd5ca
   4c578:	75 3b                	jne    0x4c5b5
   4c57a:	a1 78 d5             	mov    ax,ds:0xd578
   4c57d:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c581:	75 32                	jne    0x4c5b5
   4c583:	6a 0a                	push   0xa
   4c585:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c588:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c58c:	6b c0 0e             	imul   ax,ax,0xe
   4c58f:	05 17 00             	add    ax,0x17
   4c592:	50                   	push   ax
   4c593:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c596:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c59a:	6b c0 1e             	imul   ax,ax,0x1e
   4c59d:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c5a1:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c5a5:	6b d2 0e             	imul   dx,dx,0xe
   4c5a8:	03 c2                	add    ax,dx
   4c5aa:	05 0a 00             	add    ax,0xa
   4c5ad:	50                   	push   ax
   4c5ae:	0e                   	push   cs
   4c5af:	e8 6f d9             	call   0x49f21
   4c5b2:	83 c4 06             	add    sp,0x6
   4c5b5:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4c5b8:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5bc:	74 24                	je     0x4c5e2
   4c5be:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4c5c1:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5c5:	74 1b                	je     0x4c5e2
   4c5c7:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4c5ca:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5ce:	74 12                	je     0x4c5e2
   4c5d0:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4c5d3:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5d7:	74 09                	je     0x4c5e2
   4c5d9:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4c5dc:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4c5e0:	75 0c                	jne    0x4c5ee
   4c5e2:	83 3e 76 d5 00       	cmp    WORD PTR ds:0xd576,0x0
   4c5e7:	7e 05                	jle    0x4c5ee
   4c5e9:	b8 01 00             	mov    ax,0x1
   4c5ec:	eb 02                	jmp    0x4c5f0
   4c5ee:	33 c0                	xor    ax,ax
   4c5f0:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   4c5f3:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c5f6:	40                   	inc    ax
   4c5f7:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c5fb:	75 09                	jne    0x4c606
   4c5fd:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c600:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c604:	74 65                	je     0x4c66b
   4c606:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c609:	40                   	inc    ax
   4c60a:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c60e:	75 0a                	jne    0x4c61a
   4c610:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c613:	48                   	dec    ax
   4c614:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c618:	74 51                	je     0x4c66b
   4c61a:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c61d:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c621:	75 0a                	jne    0x4c62d
   4c623:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c626:	48                   	dec    ax
   4c627:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c62b:	74 3e                	je     0x4c66b
   4c62d:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c630:	40                   	inc    ax
   4c631:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c635:	75 0c                	jne    0x4c643
   4c637:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c63a:	05 fe ff             	add    ax,0xfffe
   4c63d:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c641:	74 28                	je     0x4c66b
   4c643:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c646:	40                   	inc    ax
   4c647:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c64b:	75 0c                	jne    0x4c659
   4c64d:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c650:	05 fd ff             	add    ax,0xfffd
   4c653:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c657:	74 12                	je     0x4c66b
   4c659:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c65c:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4c660:	75 0e                	jne    0x4c670
   4c662:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c665:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4c669:	75 05                	jne    0x4c670
   4c66b:	b8 01 00             	mov    ax,0x1
   4c66e:	eb 02                	jmp    0x4c672
   4c670:	33 c0                	xor    ax,ax
   4c672:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   4c675:	83 7e ee 00          	cmp    WORD PTR [bp-0x12],0x0
   4c679:	75 0d                	jne    0x4c688
   4c67b:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   4c67f:	74 34                	je     0x4c6b5
   4c681:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c686:	75 2d                	jne    0x4c6b5
   4c688:	6a 0f                	push   0xf
   4c68a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c68d:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c691:	6b c0 0e             	imul   ax,ax,0xe
   4c694:	05 f4 ff             	add    ax,0xfff4
   4c697:	50                   	push   ax
   4c698:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c69b:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c69f:	6b c0 1e             	imul   ax,ax,0x1e
   4c6a2:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c6a6:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c6aa:	6b d2 0e             	imul   dx,dx,0xe
   4c6ad:	03 c2                	add    ax,dx
   4c6af:	05 07 00             	add    ax,0x7
   4c6b2:	e9 81 00             	jmp    0x4c736
   4c6b5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4c6b8:	05 06 00             	add    ax,0x6
   4c6bb:	50                   	push   ax
   4c6bc:	eb cc                	jmp    0x4c68a
   4c6be:	eb 7e                	jmp    0x4c73e
   4c6c0:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4c6c3:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c6c6:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c6ca:	6b c0 0e             	imul   ax,ax,0xe
   4c6cd:	05 18 00             	add    ax,0x18
   4c6d0:	50                   	push   ax
   4c6d1:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c6d4:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c6d8:	6b c0 1e             	imul   ax,ax,0x1e
   4c6db:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c6df:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c6e3:	6b d2 0e             	imul   dx,dx,0xe
   4c6e6:	03 c2                	add    ax,dx
   4c6e8:	05 0a 00             	add    ax,0xa
   4c6eb:	50                   	push   ax
   4c6ec:	0e                   	push   cs
   4c6ed:	e8 31 d8             	call   0x49f21
   4c6f0:	83 c4 06             	add    sp,0x6
   4c6f3:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4c6f8:	75 44                	jne    0x4c73e
   4c6fa:	a1 7a d5             	mov    ax,ds:0xd57a
   4c6fd:	3b 06 ca d5          	cmp    ax,WORD PTR ds:0xd5ca
   4c701:	75 3b                	jne    0x4c73e
   4c703:	a1 78 d5             	mov    ax,ds:0xd578
   4c706:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c70a:	75 32                	jne    0x4c73e
   4c70c:	6a 0a                	push   0xa
   4c70e:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4c711:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4c715:	6b c0 0e             	imul   ax,ax,0xe
   4c718:	05 17 00             	add    ax,0x17
   4c71b:	50                   	push   ax
   4c71c:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c71f:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4c723:	6b c0 1e             	imul   ax,ax,0x1e
   4c726:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4c72a:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4c72e:	6b d2 0e             	imul   dx,dx,0xe
   4c731:	03 c2                	add    ax,dx
   4c733:	05 0a 00             	add    ax,0xa
   4c736:	50                   	push   ax
   4c737:	0e                   	push   cs
   4c738:	e8 e6 d7             	call   0x49f21
   4c73b:	83 c4 06             	add    sp,0x6
   4c73e:	83 3e cc d5 00       	cmp    WORD PTR ds:0xd5cc,0x0
   4c743:	7e 08                	jle    0x4c74d
   4c745:	6a 00                	push   0x0
   4c747:	90                   	nop
   4c748:	0e                   	push   cs
   4c749:	e8 59 0e             	call   0x4d5a5
   4c74c:	59                   	pop    cx
   4c74d:	ff 0e ca d5          	dec    WORD PTR ds:0xd5ca
   4c751:	a1 ca d5             	mov    ax,ds:0xd5ca
   4c754:	3b 06 80 d5          	cmp    ax,WORD PTR ds:0xd580
   4c758:	7c 03                	jl     0x4c75d
   4c75a:	e9 6d fc             	jmp    0x4c3ca
   4c75d:	ff 06 c8 d5          	inc    WORD PTR ds:0xd5c8
   4c761:	a1 7e d5             	mov    ax,ds:0xd57e
   4c764:	05 06 00             	add    ax,0x6
   4c767:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4c76b:	7c 03                	jl     0x4c770
   4c76d:	e9 4e fc             	jmp    0x4c3be
   4c770:	83 3e 7c d5 00       	cmp    WORD PTR ds:0xd57c,0x0
   4c775:	75 05                	jne    0x4c77c
   4c777:	a1 de d5             	mov    ax,ds:0xd5de
   4c77a:	eb 12                	jmp    0x4c78e
   4c77c:	8b 1e 7a d5          	mov    bx,WORD PTR ds:0xd57a
   4c780:	6b db 38             	imul   bx,bx,0x38
   4c783:	a1 78 d5             	mov    ax,ds:0xd578
   4c786:	d1 e0                	shl    ax,1
   4c788:	03 d8                	add    bx,ax
   4c78a:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4c78e:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4c791:	8b 5e f0             	mov    bx,WORD PTR [bp-0x10]
   4c794:	6b db 28             	imul   bx,bx,0x28
   4c797:	b8 88 01             	mov    ax,0x188
   4c79a:	8e c0                	mov    es,ax
   4c79c:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4c7a1:	48                   	dec    ax
   4c7a2:	c1 e0 03             	shl    ax,0x3
   4c7a5:	05 14 00             	add    ax,0x14
   4c7a8:	a3 c4 d5             	mov    ds:0xd5c4,ax
   4c7ab:	83 7e f0 00          	cmp    WORD PTR [bp-0x10],0x0
   4c7af:	74 31                	je     0x4c7e2
   4c7b1:	c7 46 ea 4b 00       	mov    WORD PTR [bp-0x16],0x4b
   4c7b6:	c7 46 e8 8e 00       	mov    WORD PTR [bp-0x18],0x8e
   4c7bb:	6a 03                	push   0x3
   4c7bd:	8b 5e f0             	mov    bx,WORD PTR [bp-0x10]
   4c7c0:	6b db 28             	imul   bx,bx,0x28
   4c7c3:	b8 88 01             	mov    ax,0x188
   4c7c6:	8e c0                	mov    es,ax
   4c7c8:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4c7cd:	05 0a 00             	add    ax,0xa
   4c7d0:	50                   	push   ax
   4c7d1:	16                   	push   ss
   4c7d2:	8d 46 e8             	lea    ax,[bp-0x18]
   4c7d5:	50                   	push   ax
   4c7d6:	16                   	push   ss
   4c7d7:	8d 46 ea             	lea    ax,[bp-0x16]
   4c7da:	50                   	push   ax
   4c7db:	0e                   	push   cs
   4c7dc:	e8 f8 d7             	call   0x49fd7
   4c7df:	83 c4 0c             	add    sp,0xc
   4c7e2:	0e                   	push   cs
   4c7e3:	e8 85 e1             	call   0x4a96b
   4c7e6:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4c7eb:	7e 07                	jle    0x4c7f4
   4c7ed:	90                   	nop
   4c7ee:	0e                   	push   cs
   4c7ef:	e8 d2 49             	call   0x411c4
   4c7f2:	eb 0c                	jmp    0x4c800
   4c7f4:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4c7f9:	7d 05                	jge    0x4c800
   4c7fb:	90                   	nop
   4c7fc:	0e                   	push   cs
   4c7fd:	e8 c0 48             	call   0x410c0
   4c800:	83 3e 66 d5 08       	cmp    WORD PTR ds:0xd566,0x8
   4c805:	74 09                	je     0x4c810
   4c807:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   4c80b:	0e                   	push   cs
   4c80c:	e8 8f f5             	call   0x4bd9e
   4c80f:	59                   	pop    cx
   4c810:	83 3e 1c 63 01       	cmp    WORD PTR ds:0x631c,0x1
   4c815:	75 72                	jne    0x4c889
   4c817:	c7 06 1c 63 00 00    	mov    WORD PTR ds:0x631c,0x0
   4c81d:	6a 00                	push   0x0
   4c81f:	6a 0a                	push   0xa
   4c821:	16                   	push   ss
   4c822:	8d 46 e2             	lea    ax,[bp-0x1e]
   4c825:	50                   	push   ax
   4c826:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   4c82a:	9a 58 3f 00 00       	call   0x0:0x3f58
   4c82f:	83 c4 08             	add    sp,0x8
   4c832:	52                   	push   dx
   4c833:	50                   	push   ax
   4c834:	a1 d0 d5             	mov    ax,ds:0xd5d0
   4c837:	05 0a 00             	add    ax,0xa
   4c83a:	50                   	push   ax
   4c83b:	a1 d2 d5             	mov    ax,ds:0xd5d2
   4c83e:	05 0c 00             	add    ax,0xc
   4c841:	50                   	push   ax
   4c842:	6a 02                	push   0x2
   4c844:	0e                   	push   cs
   4c845:	e8 88 df             	call   0x4a7d0
   4c848:	83 c4 0c             	add    sp,0xc
   4c84b:	b8 88 01             	mov    ax,0x188
   4c84e:	8e c0                	mov    es,ax
   4c850:	26 a0 65 96          	mov    al,es:0x9665
   4c854:	b4 00                	mov    ah,0x0
   4c856:	50                   	push   ax
   4c857:	6a 0a                	push   0xa
   4c859:	16                   	push   ss
   4c85a:	8d 46 e2             	lea    ax,[bp-0x1e]
   4c85d:	50                   	push   ax
   4c85e:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   4c862:	9a 58 3f 00 00       	call   0x0:0x3f58
   4c867:	83 c4 08             	add    sp,0x8
   4c86a:	52                   	push   dx
   4c86b:	50                   	push   ax
   4c86c:	a1 d0 d5             	mov    ax,ds:0xd5d0
   4c86f:	05 0a 00             	add    ax,0xa
   4c872:	50                   	push   ax
   4c873:	a1 d2 d5             	mov    ax,ds:0xd5d2
   4c876:	05 0c 00             	add    ax,0xc
   4c879:	50                   	push   ax
   4c87a:	6a 02                	push   0x2
   4c87c:	0e                   	push   cs
   4c87d:	e8 50 df             	call   0x4a7d0
   4c880:	83 c4 0c             	add    sp,0xc
   4c883:	c7 06 c6 d5 00 00    	mov    WORD PTR ds:0xd5c6,0x0
   4c889:	83 3e 1e 63 01       	cmp    WORD PTR ds:0x631e,0x1
   4c88e:	75 1d                	jne    0x4c8ad
   4c890:	c7 06 1e 63 00 00    	mov    WORD PTR ds:0x631e,0x0
   4c896:	ff 36 ce d5          	push   WORD PTR ds:0xd5ce
   4c89a:	68 88 01             	push   0x188
   4c89d:	68 10 a5             	push   0xa510
   4c8a0:	0e                   	push   cs
   4c8a1:	e8 97 ea             	call   0x4b33b
   4c8a4:	83 c4 06             	add    sp,0x6
   4c8a7:	c7 06 1a 63 00 00    	mov    WORD PTR ds:0x631a,0x0
   4c8ad:	6a 06                	push   0x6
   4c8af:	0e                   	push   cs
   4c8b0:	e8 7e df             	call   0x4a831
   4c8b3:	59                   	pop    cx
   4c8b4:	83 3e 18 63 01       	cmp    WORD PTR ds:0x6318,0x1
   4c8b9:	75 0e                	jne    0x4c8c9
   4c8bb:	6a 0a                	push   0xa
   4c8bd:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4c8c2:	59                   	pop    cx
   4c8c3:	c7 06 18 63 00 00    	mov    WORD PTR ds:0x6318,0x0
   4c8c9:	c9                   	leave
   4c8ca:	cb                   	retf
   4c8cb:	55                   	push   bp
   4c8cc:	8b ec                	mov    bp,sp
   4c8ce:	b8 88 01             	mov    ax,0x188
   4c8d1:	8e c0                	mov    es,ax
   4c8d3:	26 a0 72 96          	mov    al,es:0x9672
   4c8d7:	ba 88 01             	mov    dx,0x188
   4c8da:	8e c2                	mov    es,dx
   4c8dc:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4c8e1:	75 44                	jne    0x4c927
   4c8e3:	83 3e de d5 19       	cmp    WORD PTR ds:0xd5de,0x19
   4c8e8:	7d 3d                	jge    0x4c927
   4c8ea:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4c8ee:	6b db 28             	imul   bx,bx,0x28
   4c8f1:	b8 88 01             	mov    ax,0x188
   4c8f4:	8e c0                	mov    es,ax
   4c8f6:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4c8fb:	6b db 06             	imul   bx,bx,0x6
   4c8fe:	b8 88 01             	mov    ax,0x188
   4c901:	ba c0 5b             	mov    dx,0x5bc0
   4c904:	83 c2 02             	add    dx,0x2
   4c907:	03 da                	add    bx,dx
   4c909:	8e c0                	mov    es,ax
   4c90b:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
   4c90e:	83 eb 0e             	sub    bx,0xe
   4c911:	83 fb 11             	cmp    bx,0x11
   4c914:	77 11                	ja     0x4c927
   4c916:	d1 e3                	shl    bx,1
   4c918:	2e ff a7 15 2d       	jmp    WORD PTR cs:[bx+0x2d15]
   4c91d:	b8 17 00             	mov    ax,0x17
   4c920:	eb 2d                	jmp    0x4c94f
   4c922:	b8 18 00             	mov    ax,0x18
   4c925:	eb 28                	jmp    0x4c94f
   4c927:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4c92a:	83 fb 09             	cmp    bx,0x9
   4c92d:	77 1d                	ja     0x4c94c
   4c92f:	d1 e3                	shl    bx,1
   4c931:	2e ff a7 01 2d       	jmp    WORD PTR cs:[bx+0x2d01]
   4c936:	eb 14                	jmp    0x4c94c
   4c938:	b8 0c 00             	mov    ax,0xc
   4c93b:	eb 12                	jmp    0x4c94f
   4c93d:	b8 07 00             	mov    ax,0x7
   4c940:	eb 0d                	jmp    0x4c94f
   4c942:	b8 06 00             	mov    ax,0x6
   4c945:	eb 08                	jmp    0x4c94f
   4c947:	b8 0b 00             	mov    ax,0xb
   4c94a:	eb 03                	jmp    0x4c94f
   4c94c:	b8 01 00             	mov    ax,0x1
   4c94f:	5d                   	pop    bp
   4c950:	cb                   	retf
   4c951:	f2 2c e8             	repnz sub al,0xe8
   4c954:	2c f2                	sub    al,0xf2
   4c956:	2c ed                	sub    al,0xed
   4c958:	2c e6                	sub    al,0xe6
   4c95a:	2c f7                	sub    al,0xf7
   4c95c:	2c fc                	sub    al,0xfc
   4c95e:	2c e8                	sub    al,0xe8
   4c960:	2c e8                	sub    al,0xe8
   4c962:	2c e6                	sub    al,0xe6
   4c964:	2c cd                	sub    al,0xcd
   4c966:	2c d2                	sub    al,0xd2
   4c968:	2c cd                	sub    al,0xcd
   4c96a:	2c d2                	sub    al,0xd2
   4c96c:	2c d2                	sub    al,0xd2
   4c96e:	2c d7                	sub    al,0xd7
   4c970:	2c d7                	sub    al,0xd7
   4c972:	2c d7                	sub    al,0xd7
   4c974:	2c d7                	sub    al,0xd7
   4c976:	2c d7                	sub    al,0xd7
   4c978:	2c d7                	sub    al,0xd7
   4c97a:	2c d7                	sub    al,0xd7
   4c97c:	2c d7                	sub    al,0xd7
   4c97e:	2c d7                	sub    al,0xd7
   4c980:	2c d7                	sub    al,0xd7
   4c982:	2c d7                	sub    al,0xd7
   4c984:	2c d2                	sub    al,0xd2
   4c986:	2c d2                	sub    al,0xd2
   4c988:	2c 55                	sub    al,0x55
   4c98a:	8b ec                	mov    bp,sp
   4c98c:	83 ec 1c             	sub    sp,0x1c
   4c98f:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   4c994:	9a 04 02 30 00       	call   0x30:0x204
   4c999:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   4c99e:	75 03                	jne    0x4c9a3
   4c9a0:	e9 12 03             	jmp    0x4ccb5
   4c9a3:	8b 1e d6 d5          	mov    bx,WORD PTR ds:0xd5d6
   4c9a7:	83 eb 47             	sub    bx,0x47
   4c9aa:	83 fb 0a             	cmp    bx,0xa
   4c9ad:	76 03                	jbe    0x4c9b2
   4c9af:	e9 03 03             	jmp    0x4ccb5
   4c9b2:	d1 e3                	shl    bx,1
   4c9b4:	2e ff a7 3f 39       	jmp    WORD PTR cs:[bx+0x393f]
   4c9b9:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   4c9bf:	c7 06 c8 d5 00 00    	mov    WORD PTR ds:0xd5c8,0x0
   4c9c5:	c7 06 5e d5 02 00    	mov    WORD PTR ds:0xd55e,0x2
   4c9cb:	6a 00                	push   0x0
   4c9cd:	68 f8 00             	push   0xf8
   4c9d0:	6a 59                	push   0x59
   4c9d2:	6a 14                	push   0x14
   4c9d4:	6a 59                	push   0x59
   4c9d6:	6a 0a                	push   0xa
   4c9d8:	9a f5 13 28 00       	call   0x28:0x13f5
   4c9dd:	83 c4 0c             	add    sp,0xc
   4c9e0:	6a 00                	push   0x0
   4c9e2:	68 f8 00             	push   0xf8
   4c9e5:	6a 63                	push   0x63
   4c9e7:	6a 14                	push   0x14
   4c9e9:	6a 59                	push   0x59
   4c9eb:	6a 0a                	push   0xa
   4c9ed:	9a f5 13 28 00       	call   0x28:0x13f5
   4c9f2:	83 c4 0c             	add    sp,0xc
   4c9f5:	6a 00                	push   0x0
   4c9f7:	6a 06                	push   0x6
   4c9f9:	6a 64                	push   0x64
   4c9fb:	6a 20                	push   0x20
   4c9fd:	6a 64                	push   0x64
   4c9ff:	6a 15                	push   0x15
   4ca01:	9a f5 13 28 00       	call   0x28:0x13f5
   4ca06:	83 c4 0c             	add    sp,0xc
   4ca09:	6a 00                	push   0x0
   4ca0b:	6a 06                	push   0x6
   4ca0d:	6a 64                	push   0x64
   4ca0f:	6a 20                	push   0x20
   4ca11:	6a 59                	push   0x59
   4ca13:	6a 15                	push   0x15
   4ca15:	e9 95 02             	jmp    0x4ccad
   4ca18:	c7 06 ca d5 00 00    	mov    WORD PTR ds:0xd5ca,0x0
   4ca1e:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   4ca24:	c7 06 5e d5 01 00    	mov    WORD PTR ds:0xd55e,0x1
   4ca2a:	6a 00                	push   0x0
   4ca2c:	68 f8 00             	push   0xf8
   4ca2f:	6a 4d                	push   0x4d
   4ca31:	6a 16                	push   0x16
   4ca33:	6a 4d                	push   0x4d
   4ca35:	6a 0a                	push   0xa
   4ca37:	9a f5 13 28 00       	call   0x28:0x13f5
   4ca3c:	83 c4 0c             	add    sp,0xc
   4ca3f:	6a 00                	push   0x0
   4ca41:	68 f8 00             	push   0xf8
   4ca44:	6a 56                	push   0x56
   4ca46:	6a 13                	push   0x13
   4ca48:	6a 4d                	push   0x4d
   4ca4a:	6a 0a                	push   0xa
   4ca4c:	9a f5 13 28 00       	call   0x28:0x13f5
   4ca51:	83 c4 0c             	add    sp,0xc
   4ca54:	6a 00                	push   0x0
   4ca56:	6a 06                	push   0x6
   4ca58:	6a 57                	push   0x57
   4ca5a:	6a 21                	push   0x21
   4ca5c:	6a 57                	push   0x57
   4ca5e:	6a 14                	push   0x14
   4ca60:	9a f5 13 28 00       	call   0x28:0x13f5
   4ca65:	83 c4 0c             	add    sp,0xc
   4ca68:	6a 00                	push   0x0
   4ca6a:	6a 06                	push   0x6
   4ca6c:	6a 57                	push   0x57
   4ca6e:	6a 21                	push   0x21
   4ca70:	6a 4d                	push   0x4d
   4ca72:	6a 17                	push   0x17
   4ca74:	e9 36 02             	jmp    0x4ccad
   4ca77:	c7 06 ca d5 01 00    	mov    WORD PTR ds:0xd5ca,0x1
   4ca7d:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   4ca83:	c7 06 5e d5 04 00    	mov    WORD PTR ds:0xd55e,0x4
   4ca89:	6a 00                	push   0x0
   4ca8b:	68 f8 00             	push   0xf8
   4ca8e:	6a 4d                	push   0x4d
   4ca90:	6a 23                	push   0x23
   4ca92:	6a 4d                	push   0x4d
   4ca94:	6a 19                	push   0x19
   4ca96:	9a f5 13 28 00       	call   0x28:0x13f5
   4ca9b:	83 c4 0c             	add    sp,0xc
   4ca9e:	6a 00                	push   0x0
   4caa0:	68 f8 00             	push   0xf8
   4caa3:	6a 56                	push   0x56
   4caa5:	6a 22                	push   0x22
   4caa7:	6a 4d                	push   0x4d
   4caa9:	6a 19                	push   0x19
   4caab:	9a f5 13 28 00       	call   0x28:0x13f5
   4cab0:	83 c4 0c             	add    sp,0xc
   4cab3:	6a 00                	push   0x0
   4cab5:	6a 06                	push   0x6
   4cab7:	6a 57                	push   0x57
   4cab9:	6a 2e                	push   0x2e
   4cabb:	6a 57                	push   0x57
   4cabd:	6a 23                	push   0x23
   4cabf:	9a f5 13 28 00       	call   0x28:0x13f5
   4cac4:	83 c4 0c             	add    sp,0xc
   4cac7:	6a 00                	push   0x0
   4cac9:	6a 06                	push   0x6
   4cacb:	6a 57                	push   0x57
   4cacd:	6a 2e                	push   0x2e
   4cacf:	6a 4d                	push   0x4d
   4cad1:	6a 24                	push   0x24
   4cad3:	e9 d7 01             	jmp    0x4ccad
   4cad6:	c7 06 ca d5 00 00    	mov    WORD PTR ds:0xd5ca,0x0
   4cadc:	c7 06 c8 d5 01 00    	mov    WORD PTR ds:0xd5c8,0x1
   4cae2:	c7 06 5e d5 03 00    	mov    WORD PTR ds:0xd55e,0x3
   4cae8:	6a 00                	push   0x0
   4caea:	68 f8 00             	push   0xf8
   4caed:	6a 66                	push   0x66
   4caef:	6a 30                	push   0x30
   4caf1:	6a 66                	push   0x66
   4caf3:	6a 24                	push   0x24
   4caf5:	9a f5 13 28 00       	call   0x28:0x13f5
   4cafa:	83 c4 0c             	add    sp,0xc
   4cafd:	6a 00                	push   0x0
   4caff:	68 f8 00             	push   0xf8
   4cb02:	6a 6e                	push   0x6e
   4cb04:	6a 2c                	push   0x2c
   4cb06:	6a 66                	push   0x66
   4cb08:	6a 24                	push   0x24
   4cb0a:	9a f5 13 28 00       	call   0x28:0x13f5
   4cb0f:	83 c4 0c             	add    sp,0xc
   4cb12:	6a 00                	push   0x0
   4cb14:	6a 06                	push   0x6
   4cb16:	6a 6f                	push   0x6f
   4cb18:	6a 3a                	push   0x3a
   4cb1a:	6a 6f                	push   0x6f
   4cb1c:	6a 2d                	push   0x2d
   4cb1e:	9a f5 13 28 00       	call   0x28:0x13f5
   4cb23:	83 c4 0c             	add    sp,0xc
   4cb26:	6a 00                	push   0x0
   4cb28:	6a 06                	push   0x6
   4cb2a:	6a 6f                	push   0x6f
   4cb2c:	6a 3a                	push   0x3a
   4cb2e:	6a 66                	push   0x66
   4cb30:	6a 31                	push   0x31
   4cb32:	e9 78 01             	jmp    0x4ccad
   4cb35:	c7 06 ca d5 01 00    	mov    WORD PTR ds:0xd5ca,0x1
   4cb3b:	c7 06 c8 d5 01 00    	mov    WORD PTR ds:0xd5c8,0x1
   4cb41:	c7 06 5e d5 04 00    	mov    WORD PTR ds:0xd55e,0x4
   4cb47:	6a 00                	push   0x0
   4cb49:	68 f8 00             	push   0xf8
   4cb4c:	6a 66                	push   0x66
   4cb4e:	6a 3c                	push   0x3c
   4cb50:	6a 66                	push   0x66
   4cb52:	6a 33                	push   0x33
   4cb54:	9a f5 13 28 00       	call   0x28:0x13f5
   4cb59:	83 c4 0c             	add    sp,0xc
   4cb5c:	6a 00                	push   0x0
   4cb5e:	68 f8 00             	push   0xf8
   4cb61:	6a 6e                	push   0x6e
   4cb63:	6a 3b                	push   0x3b
   4cb65:	6a 66                	push   0x66
   4cb67:	6a 33                	push   0x33
   4cb69:	9a f5 13 28 00       	call   0x28:0x13f5
   4cb6e:	83 c4 0c             	add    sp,0xc
   4cb71:	6a 00                	push   0x0
   4cb73:	6a 06                	push   0x6
   4cb75:	6a 6f                	push   0x6f
   4cb77:	6a 46                	push   0x46
   4cb79:	6a 6f                	push   0x6f
   4cb7b:	6a 3c                	push   0x3c
   4cb7d:	9a f5 13 28 00       	call   0x28:0x13f5
   4cb82:	83 c4 0c             	add    sp,0xc
   4cb85:	6a 00                	push   0x0
   4cb87:	6a 06                	push   0x6
   4cb89:	6a 6f                	push   0x6f
   4cb8b:	6a 46                	push   0x46
   4cb8d:	6a 66                	push   0x66
   4cb8f:	6a 3d                	push   0x3d
   4cb91:	e9 19 01             	jmp    0x4ccad
   4cb94:	c7 06 ca d5 01 00    	mov    WORD PTR ds:0xd5ca,0x1
   4cb9a:	c7 06 c8 d5 00 00    	mov    WORD PTR ds:0xd5c8,0x0
   4cba0:	c7 06 5e d5 04 00    	mov    WORD PTR ds:0xd55e,0x4
   4cba6:	6a 00                	push   0x0
   4cba8:	68 f8 00             	push   0xf8
   4cbab:	6a 59                	push   0x59
   4cbad:	6a 30                	push   0x30
   4cbaf:	6a 59                	push   0x59
   4cbb1:	6a 25                	push   0x25
   4cbb3:	9a f5 13 28 00       	call   0x28:0x13f5
   4cbb8:	83 c4 0c             	add    sp,0xc
   4cbbb:	6a 00                	push   0x0
   4cbbd:	68 f8 00             	push   0xf8
   4cbc0:	6a 63                	push   0x63
   4cbc2:	6a 2f                	push   0x2f
   4cbc4:	6a 59                	push   0x59
   4cbc6:	6a 25                	push   0x25
   4cbc8:	9a f5 13 28 00       	call   0x28:0x13f5
   4cbcd:	83 c4 0c             	add    sp,0xc
   4cbd0:	6a 00                	push   0x0
   4cbd2:	6a 06                	push   0x6
   4cbd4:	6a 64                	push   0x64
   4cbd6:	6a 3b                	push   0x3b
   4cbd8:	6a 64                	push   0x64
   4cbda:	6a 30                	push   0x30
   4cbdc:	9a f5 13 28 00       	call   0x28:0x13f5
   4cbe1:	83 c4 0c             	add    sp,0xc
   4cbe4:	6a 00                	push   0x0
   4cbe6:	6a 06                	push   0x6
   4cbe8:	6a 64                	push   0x64
   4cbea:	6a 3b                	push   0x3b
   4cbec:	6a 59                	push   0x59
   4cbee:	6a 30                	push   0x30
   4cbf0:	e9 ba 00             	jmp    0x4ccad
   4cbf3:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   4cbf9:	c7 06 c8 d5 01 00    	mov    WORD PTR ds:0xd5c8,0x1
   4cbff:	c7 06 5e d5 02 00    	mov    WORD PTR ds:0xd55e,0x2
   4cc05:	6a 00                	push   0x0
   4cc07:	68 f8 00             	push   0xf8
   4cc0a:	6a 66                	push   0x66
   4cc0c:	6a 21                	push   0x21
   4cc0e:	6a 66                	push   0x66
   4cc10:	6a 17                	push   0x17
   4cc12:	9a f5 13 28 00       	call   0x28:0x13f5
   4cc17:	83 c4 0c             	add    sp,0xc
   4cc1a:	6a 00                	push   0x0
   4cc1c:	68 f8 00             	push   0xf8
   4cc1f:	6a 6e                	push   0x6e
   4cc21:	6a 1f                	push   0x1f
   4cc23:	6a 66                	push   0x66
   4cc25:	6a 17                	push   0x17
   4cc27:	9a f5 13 28 00       	call   0x28:0x13f5
   4cc2c:	83 c4 0c             	add    sp,0xc
   4cc2f:	6a 00                	push   0x0
   4cc31:	6a 06                	push   0x6
   4cc33:	6a 6f                	push   0x6f
   4cc35:	6a 2b                	push   0x2b
   4cc37:	6a 6f                	push   0x6f
   4cc39:	6a 20                	push   0x20
   4cc3b:	9a f5 13 28 00       	call   0x28:0x13f5
   4cc40:	83 c4 0c             	add    sp,0xc
   4cc43:	6a 00                	push   0x0
   4cc45:	6a 06                	push   0x6
   4cc47:	6a 6f                	push   0x6f
   4cc49:	6a 2b                	push   0x2b
   4cc4b:	6a 66                	push   0x66
   4cc4d:	6a 22                	push   0x22
   4cc4f:	eb 5c                	jmp    0x4ccad
   4cc51:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   4cc57:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   4cc5d:	c7 06 5e d5 02 00    	mov    WORD PTR ds:0xd55e,0x2
   4cc63:	6a 00                	push   0x0
   4cc65:	68 f8 00             	push   0xf8
   4cc68:	6a 4d                	push   0x4d
   4cc6a:	6a 07                	push   0x7
   4cc6c:	6a 4d                	push   0x4d
   4cc6e:	6a 00                	push   0x0
   4cc70:	9a f5 13 28 00       	call   0x28:0x13f5
   4cc75:	83 c4 0c             	add    sp,0xc
   4cc78:	6a 00                	push   0x0
   4cc7a:	68 f8 00             	push   0xf8
   4cc7d:	6a 57                	push   0x57
   4cc7f:	6a 08                	push   0x8
   4cc81:	6a 4f                	push   0x4f
   4cc83:	6a 00                	push   0x0
   4cc85:	9a f5 13 28 00       	call   0x28:0x13f5
   4cc8a:	83 c4 0c             	add    sp,0xc
   4cc8d:	6a 00                	push   0x0
   4cc8f:	6a 06                	push   0x6
   4cc91:	6a 57                	push   0x57
   4cc93:	6a 12                	push   0x12
   4cc95:	6a 4d                	push   0x4d
   4cc97:	6a 08                	push   0x8
   4cc99:	9a f5 13 28 00       	call   0x28:0x13f5
   4cc9e:	83 c4 0c             	add    sp,0xc
   4cca1:	6a 00                	push   0x0
   4cca3:	6a 06                	push   0x6
   4cca5:	6a 57                	push   0x57
   4cca7:	6a 12                	push   0x12
   4cca9:	6a 57                	push   0x57
   4ccab:	6a 09                	push   0x9
   4ccad:	9a f5 13 28 00       	call   0x28:0x13f5
   4ccb2:	83 c4 0c             	add    sp,0xc
   4ccb5:	b8 88 01             	mov    ax,0x188
   4ccb8:	8e c0                	mov    es,ax
   4ccba:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4ccbe:	50                   	push   ax
   4ccbf:	9a 69 00 30 00       	call   0x30:0x69
   4ccc4:	59                   	pop    cx
   4ccc5:	9a 14 07 30 00       	call   0x30:0x714
   4ccca:	83 3e 7c d5 01       	cmp    WORD PTR ds:0xd57c,0x1
   4cccf:	74 03                	je     0x4ccd4
   4ccd1:	e9 08 01             	jmp    0x4cddc
   4ccd4:	a1 7a d5             	mov    ax,ds:0xd57a
   4ccd7:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ccdb:	3d 1a 00             	cmp    ax,0x1a
   4ccde:	7d 09                	jge    0x4cce9
   4cce0:	a1 7a d5             	mov    ax,ds:0xd57a
   4cce3:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cce7:	eb 03                	jmp    0x4ccec
   4cce9:	b8 1a 00             	mov    ax,0x1a
   4ccec:	0b c0                	or     ax,ax
   4ccee:	7d 04                	jge    0x4ccf4
   4ccf0:	33 c0                	xor    ax,ax
   4ccf2:	eb 18                	jmp    0x4cd0c
   4ccf4:	a1 7a d5             	mov    ax,ds:0xd57a
   4ccf7:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ccfb:	3d 1a 00             	cmp    ax,0x1a
   4ccfe:	7d 09                	jge    0x4cd09
   4cd00:	a1 7a d5             	mov    ax,ds:0xd57a
   4cd03:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cd07:	eb 03                	jmp    0x4cd0c
   4cd09:	b8 1a 00             	mov    ax,0x1a
   4cd0c:	a3 7a d5             	mov    ds:0xd57a,ax
   4cd0f:	a1 78 d5             	mov    ax,ds:0xd578
   4cd12:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cd16:	3d 1a 00             	cmp    ax,0x1a
   4cd19:	7d 09                	jge    0x4cd24
   4cd1b:	a1 78 d5             	mov    ax,ds:0xd578
   4cd1e:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cd22:	eb 03                	jmp    0x4cd27
   4cd24:	b8 1a 00             	mov    ax,0x1a
   4cd27:	0b c0                	or     ax,ax
   4cd29:	7d 04                	jge    0x4cd2f
   4cd2b:	33 c0                	xor    ax,ax
   4cd2d:	eb 18                	jmp    0x4cd47
   4cd2f:	a1 78 d5             	mov    ax,ds:0xd578
   4cd32:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cd36:	3d 1a 00             	cmp    ax,0x1a
   4cd39:	7d 09                	jge    0x4cd44
   4cd3b:	a1 78 d5             	mov    ax,ds:0xd578
   4cd3e:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cd42:	eb 03                	jmp    0x4cd47
   4cd44:	b8 1a 00             	mov    ax,0x1a
   4cd47:	a3 78 d5             	mov    ds:0xd578,ax
   4cd4a:	a1 80 d5             	mov    ax,ds:0xd580
   4cd4d:	05 04 00             	add    ax,0x4
   4cd50:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4cd54:	7d 19                	jge    0x4cd6f
   4cd56:	a1 80 d5             	mov    ax,ds:0xd580
   4cd59:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4cd5c:	3d 14 00             	cmp    ax,0x14
   4cd5f:	7e 05                	jle    0x4cd66
   4cd61:	b8 14 00             	mov    ax,0x14
   4cd64:	eb 06                	jmp    0x4cd6c
   4cd66:	a1 80 d5             	mov    ax,ds:0xd580
   4cd69:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4cd6c:	a3 80 d5             	mov    ds:0xd580,ax
   4cd6f:	a1 80 d5             	mov    ax,ds:0xd580
   4cd72:	05 02 00             	add    ax,0x2
   4cd75:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   4cd79:	7e 15                	jle    0x4cd90
   4cd7b:	a1 80 d5             	mov    ax,ds:0xd580
   4cd7e:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4cd81:	7d 04                	jge    0x4cd87
   4cd83:	33 c0                	xor    ax,ax
   4cd85:	eb 06                	jmp    0x4cd8d
   4cd87:	a1 80 d5             	mov    ax,ds:0xd580
   4cd8a:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4cd8d:	a3 80 d5             	mov    ds:0xd580,ax
   4cd90:	a1 7e d5             	mov    ax,ds:0xd57e
   4cd93:	05 04 00             	add    ax,0x4
   4cd96:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4cd9a:	7d 19                	jge    0x4cdb5
   4cd9c:	a1 7e d5             	mov    ax,ds:0xd57e
   4cd9f:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4cda2:	3d 14 00             	cmp    ax,0x14
   4cda5:	7e 05                	jle    0x4cdac
   4cda7:	b8 14 00             	mov    ax,0x14
   4cdaa:	eb 06                	jmp    0x4cdb2
   4cdac:	a1 7e d5             	mov    ax,ds:0xd57e
   4cdaf:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4cdb2:	a3 7e d5             	mov    ds:0xd57e,ax
   4cdb5:	a1 7e d5             	mov    ax,ds:0xd57e
   4cdb8:	05 02 00             	add    ax,0x2
   4cdbb:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   4cdbf:	7e 18                	jle    0x4cdd9
   4cdc1:	a1 7e d5             	mov    ax,ds:0xd57e
   4cdc4:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4cdc7:	7d 04                	jge    0x4cdcd
   4cdc9:	33 c0                	xor    ax,ax
   4cdcb:	eb 06                	jmp    0x4cdd3
   4cdcd:	a1 7e d5             	mov    ax,ds:0xd57e
   4cdd0:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4cdd3:	a3 7e d5             	mov    ds:0xd57e,ax
   4cdd6:	e9 a9 07             	jmp    0x4d582
   4cdd9:	e9 a6 07             	jmp    0x4d582
   4cddc:	c7 06 6c d5 00 00    	mov    WORD PTR ds:0xd56c,0x0
   4cde2:	c7 06 b2 d5 01 00    	mov    WORD PTR ds:0xd5b2,0x1
   4cde8:	c7 06 b4 d5 00 00    	mov    WORD PTR ds:0xd5b4,0x0
   4cdee:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4cdf2:	6b db 28             	imul   bx,bx,0x28
   4cdf5:	b8 88 01             	mov    ax,0x188
   4cdf8:	8e c0                	mov    es,ax
   4cdfa:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4cdff:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4ce02:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ce06:	6b db 28             	imul   bx,bx,0x28
   4ce09:	b8 88 01             	mov    ax,0x188
   4ce0c:	8e c0                	mov    es,ax
   4ce0e:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4ce13:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4ce16:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ce1a:	6b db 28             	imul   bx,bx,0x28
   4ce1d:	b8 88 01             	mov    ax,0x188
   4ce20:	8b 16 5e d5          	mov    dx,WORD PTR ds:0xd55e
   4ce24:	8e c0                	mov    es,ax
   4ce26:	26 89 97 8e a0       	mov    WORD PTR es:[bx-0x5f72],dx
   4ce2b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ce2e:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ce32:	3d 1a 00             	cmp    ax,0x1a
   4ce35:	7d 09                	jge    0x4ce40
   4ce37:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ce3a:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ce3e:	eb 03                	jmp    0x4ce43
   4ce40:	b8 1a 00             	mov    ax,0x1a
   4ce43:	0b c0                	or     ax,ax
   4ce45:	7d 04                	jge    0x4ce4b
   4ce47:	33 c0                	xor    ax,ax
   4ce49:	eb 18                	jmp    0x4ce63
   4ce4b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ce4e:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ce52:	3d 1a 00             	cmp    ax,0x1a
   4ce55:	7d 09                	jge    0x4ce60
   4ce57:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ce5a:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ce5e:	eb 03                	jmp    0x4ce63
   4ce60:	b8 1a 00             	mov    ax,0x1a
   4ce63:	6b c0 38             	imul   ax,ax,0x38
   4ce66:	50                   	push   ax
   4ce67:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ce6a:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4ce6e:	3d 1a 00             	cmp    ax,0x1a
   4ce71:	7d 09                	jge    0x4ce7c
   4ce73:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ce76:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4ce7a:	eb 03                	jmp    0x4ce7f
   4ce7c:	b8 1a 00             	mov    ax,0x1a
   4ce7f:	0b c0                	or     ax,ax
   4ce81:	7d 04                	jge    0x4ce87
   4ce83:	33 c0                	xor    ax,ax
   4ce85:	eb 18                	jmp    0x4ce9f
   4ce87:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ce8a:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4ce8e:	3d 1a 00             	cmp    ax,0x1a
   4ce91:	7d 09                	jge    0x4ce9c
   4ce93:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ce96:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4ce9a:	eb 03                	jmp    0x4ce9f
   4ce9c:	b8 1a 00             	mov    ax,0x1a
   4ce9f:	d1 e0                	shl    ax,1
   4cea1:	5b                   	pop    bx
   4cea2:	03 d8                	add    bx,ax
   4cea4:	8b 87 ee c8          	mov    ax,WORD PTR [bx-0x3712]
   4cea8:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4ceab:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ceae:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ceb2:	3d 1a 00             	cmp    ax,0x1a
   4ceb5:	7d 09                	jge    0x4cec0
   4ceb7:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ceba:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cebe:	eb 03                	jmp    0x4cec3
   4cec0:	b8 1a 00             	mov    ax,0x1a
   4cec3:	0b c0                	or     ax,ax
   4cec5:	7d 04                	jge    0x4cecb
   4cec7:	33 c0                	xor    ax,ax
   4cec9:	eb 18                	jmp    0x4cee3
   4cecb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4cece:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4ced2:	3d 1a 00             	cmp    ax,0x1a
   4ced5:	7d 09                	jge    0x4cee0
   4ced7:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ceda:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cede:	eb 03                	jmp    0x4cee3
   4cee0:	b8 1a 00             	mov    ax,0x1a
   4cee3:	6b c0 38             	imul   ax,ax,0x38
   4cee6:	50                   	push   ax
   4cee7:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4ceea:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4ceee:	3d 1a 00             	cmp    ax,0x1a
   4cef1:	7d 09                	jge    0x4cefc
   4cef3:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4cef6:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cefa:	eb 03                	jmp    0x4ceff
   4cefc:	b8 1a 00             	mov    ax,0x1a
   4ceff:	0b c0                	or     ax,ax
   4cf01:	7d 04                	jge    0x4cf07
   4cf03:	33 c0                	xor    ax,ax
   4cf05:	eb 18                	jmp    0x4cf1f
   4cf07:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4cf0a:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cf0e:	3d 1a 00             	cmp    ax,0x1a
   4cf11:	7d 09                	jge    0x4cf1c
   4cf13:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4cf16:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cf1a:	eb 03                	jmp    0x4cf1f
   4cf1c:	b8 1a 00             	mov    ax,0x1a
   4cf1f:	d1 e0                	shl    ax,1
   4cf21:	5b                   	pop    bx
   4cf22:	03 d8                	add    bx,ax
   4cf24:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4cf28:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4cf2b:	83 7e f4 0a          	cmp    WORD PTR [bp-0xc],0xa
   4cf2f:	7d 17                	jge    0x4cf48
   4cf31:	83 7e f4 06          	cmp    WORD PTR [bp-0xc],0x6
   4cf35:	74 11                	je     0x4cf48
   4cf37:	83 7e f4 08          	cmp    WORD PTR [bp-0xc],0x8
   4cf3b:	74 0b                	je     0x4cf48
   4cf3d:	83 7e f2 00          	cmp    WORD PTR [bp-0xe],0x0
   4cf41:	75 05                	jne    0x4cf48
   4cf43:	b8 01 00             	mov    ax,0x1
   4cf46:	eb 02                	jmp    0x4cf4a
   4cf48:	33 c0                	xor    ax,ax
   4cf4a:	a3 b8 d5             	mov    ds:0xd5b8,ax
   4cf4d:	83 7e f2 00          	cmp    WORD PTR [bp-0xe],0x0
   4cf51:	7e 4d                	jle    0x4cfa0
   4cf53:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   4cf56:	6b db 28             	imul   bx,bx,0x28
   4cf59:	b8 88 01             	mov    ax,0x188
   4cf5c:	8e c0                	mov    es,ax
   4cf5e:	26 8b 87 98 a0       	mov    ax,WORD PTR es:[bx-0x5f68]
   4cf63:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4cf67:	6b db 28             	imul   bx,bx,0x28
   4cf6a:	ba 88 01             	mov    dx,0x188
   4cf6d:	8e c2                	mov    es,dx
   4cf6f:	26 3b 87 98 a0       	cmp    ax,WORD PTR es:[bx-0x5f68]
   4cf74:	74 2a                	je     0x4cfa0
   4cf76:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4cf7a:	6b db 28             	imul   bx,bx,0x28
   4cf7d:	b8 88 01             	mov    ax,0x188
   4cf80:	8e c0                	mov    es,ax
   4cf82:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   4cf88:	75 22                	jne    0x4cfac
   4cf8a:	a1 de d5             	mov    ax,ds:0xd5de
   4cf8d:	a3 6e d5             	mov    ds:0xd56e,ax
   4cf90:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4cf93:	a3 6c d5             	mov    ds:0xd56c,ax
   4cf96:	90                   	nop
   4cf97:	0e                   	push   cs
   4cf98:	e8 10 0c             	call   0x4dbab
   4cf9b:	e9 e4 05             	jmp    0x4d582
   4cf9e:	eb 0c                	jmp    0x4cfac
   4cfa0:	a1 de d5             	mov    ax,ds:0xd5de
   4cfa3:	a3 76 d5             	mov    ds:0xd576,ax
   4cfa6:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   4cfac:	83 3e b8 d5 00       	cmp    WORD PTR ds:0xd5b8,0x0
   4cfb1:	75 03                	jne    0x4cfb6
   4cfb3:	e9 cc 05             	jmp    0x4d582
   4cfb6:	ff 0e 4c d5          	dec    WORD PTR ds:0xd54c
   4cfba:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4cfbd:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cfc1:	3d 1a 00             	cmp    ax,0x1a
   4cfc4:	7d 09                	jge    0x4cfcf
   4cfc6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4cfc9:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cfcd:	eb 03                	jmp    0x4cfd2
   4cfcf:	b8 1a 00             	mov    ax,0x1a
   4cfd2:	0b c0                	or     ax,ax
   4cfd4:	7d 04                	jge    0x4cfda
   4cfd6:	33 c0                	xor    ax,ax
   4cfd8:	eb 18                	jmp    0x4cff2
   4cfda:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4cfdd:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cfe1:	3d 1a 00             	cmp    ax,0x1a
   4cfe4:	7d 09                	jge    0x4cfef
   4cfe6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4cfe9:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   4cfed:	eb 03                	jmp    0x4cff2
   4cfef:	b8 1a 00             	mov    ax,0x1a
   4cff2:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4cff5:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4cff8:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4cffc:	3d 1a 00             	cmp    ax,0x1a
   4cfff:	7d 09                	jge    0x4d00a
   4d001:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d004:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4d008:	eb 03                	jmp    0x4d00d
   4d00a:	b8 1a 00             	mov    ax,0x1a
   4d00d:	0b c0                	or     ax,ax
   4d00f:	7d 04                	jge    0x4d015
   4d011:	33 c0                	xor    ax,ax
   4d013:	eb 18                	jmp    0x4d02d
   4d015:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d018:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4d01c:	3d 1a 00             	cmp    ax,0x1a
   4d01f:	7d 09                	jge    0x4d02a
   4d021:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d024:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4d028:	eb 03                	jmp    0x4d02d
   4d02a:	b8 1a 00             	mov    ax,0x1a
   4d02d:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   4d030:	c7 46 ec ff ff       	mov    WORD PTR [bp-0x14],0xffff
   4d035:	e9 bb 01             	jmp    0x4d1f3
   4d038:	c7 46 ea ff ff       	mov    WORD PTR [bp-0x16],0xffff
   4d03d:	e9 a7 01             	jmp    0x4d1e7
   4d040:	c7 06 b4 d5 00 00    	mov    WORD PTR ds:0xd5b4,0x0
   4d046:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4d049:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4d04c:	3d 1b 00             	cmp    ax,0x1b
   4d04f:	7f 21                	jg     0x4d072
   4d051:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4d054:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4d057:	3d 01 00             	cmp    ax,0x1
   4d05a:	7c 16                	jl     0x4d072
   4d05c:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d05f:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4d062:	3d 01 00             	cmp    ax,0x1
   4d065:	7c 0b                	jl     0x4d072
   4d067:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d06a:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4d06d:	3d 1b 00             	cmp    ax,0x1b
   4d070:	7e 08                	jle    0x4d07a
   4d072:	c7 06 36 d5 00 00    	mov    WORD PTR ds:0xd536,0x0
   4d078:	eb 34                	jmp    0x4d0ae
   4d07a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4d07d:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4d080:	7d 04                	jge    0x4d086
   4d082:	33 c0                	xor    ax,ax
   4d084:	eb 06                	jmp    0x4d08c
   4d086:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4d089:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4d08c:	6b c0 38             	imul   ax,ax,0x38
   4d08f:	50                   	push   ax
   4d090:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d093:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4d096:	7d 04                	jge    0x4d09c
   4d098:	33 c0                	xor    ax,ax
   4d09a:	eb 06                	jmp    0x4d0a2
   4d09c:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d09f:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4d0a2:	d1 e0                	shl    ax,1
   4d0a4:	5b                   	pop    bx
   4d0a5:	03 d8                	add    bx,ax
   4d0a7:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4d0ab:	a3 36 d5             	mov    ds:0xd536,ax
   4d0ae:	83 3e 36 d5 00       	cmp    WORD PTR ds:0xd536,0x0
   4d0b3:	7f 03                	jg     0x4d0b8
   4d0b5:	e9 2c 01             	jmp    0x4d1e4
   4d0b8:	a1 36 d5             	mov    ax,ds:0xd536
   4d0bb:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   4d0bf:	75 03                	jne    0x4d0c4
   4d0c1:	e9 20 01             	jmp    0x4d1e4
   4d0c4:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d0c8:	6b db 28             	imul   bx,bx,0x28
   4d0cb:	b8 88 01             	mov    ax,0x188
   4d0ce:	8e c0                	mov    es,ax
   4d0d0:	26 83 bf ac a0 00    	cmp    WORD PTR es:[bx-0x5f54],0x0
   4d0d6:	74 03                	je     0x4d0db
   4d0d8:	e9 09 01             	jmp    0x4d1e4
   4d0db:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d0df:	6b db 28             	imul   bx,bx,0x28
   4d0e2:	b8 88 01             	mov    ax,0x188
   4d0e5:	8e c0                	mov    es,ax
   4d0e7:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4d0ec:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4d0ef:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d0f3:	6b db 28             	imul   bx,bx,0x28
   4d0f6:	b8 88 01             	mov    ax,0x188
   4d0f9:	8e c0                	mov    es,ax
   4d0fb:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4d100:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4d103:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d107:	6b db 28             	imul   bx,bx,0x28
   4d10a:	b8 88 01             	mov    ax,0x188
   4d10d:	8e c0                	mov    es,ax
   4d10f:	26 8b 87 98 a0       	mov    ax,WORD PTR es:[bx-0x5f68]
   4d114:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d118:	6b db 28             	imul   bx,bx,0x28
   4d11b:	ba 88 01             	mov    dx,0x188
   4d11e:	8e c2                	mov    es,dx
   4d120:	26 3b 87 98 a0       	cmp    ax,WORD PTR es:[bx-0x5f68]
   4d125:	75 03                	jne    0x4d12a
   4d127:	e9 ba 00             	jmp    0x4d1e4
   4d12a:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4d12d:	2b 46 f0             	sub    ax,WORD PTR [bp-0x10]
   4d130:	99                   	cwd
   4d131:	33 c2                	xor    ax,dx
   4d133:	2b c2                	sub    ax,dx
   4d135:	3d 01 00             	cmp    ax,0x1
   4d138:	7f 13                	jg     0x4d14d
   4d13a:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4d13d:	2b 46 ee             	sub    ax,WORD PTR [bp-0x12]
   4d140:	99                   	cwd
   4d141:	33 c2                	xor    ax,dx
   4d143:	2b c2                	sub    ax,dx
   4d145:	3d 01 00             	cmp    ax,0x1
   4d148:	7f 03                	jg     0x4d14d
   4d14a:	e9 97 00             	jmp    0x4d1e4
   4d14d:	a1 36 d5             	mov    ax,ds:0xd536
   4d150:	a3 6e d5             	mov    ds:0xd56e,ax
   4d153:	a1 de d5             	mov    ax,ds:0xd5de
   4d156:	a3 6c d5             	mov    ds:0xd56c,ax
   4d159:	c7 06 a4 d5 01 00    	mov    WORD PTR ds:0xd5a4,0x1
   4d15f:	c7 06 b4 d5 01 00    	mov    WORD PTR ds:0xd5b4,0x1
   4d165:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4d168:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   4d16b:	7d 15                	jge    0x4d182
   4d16d:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d171:	6b db 28             	imul   bx,bx,0x28
   4d174:	b8 88 01             	mov    ax,0x188
   4d177:	8e c0                	mov    es,ax
   4d179:	26 c7 87 8e a0 02 00 	mov    WORD PTR es:[bx-0x5f72],0x2
   4d180:	eb 4d                	jmp    0x4d1cf
   4d182:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4d185:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   4d188:	7e 15                	jle    0x4d19f
   4d18a:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d18e:	6b db 28             	imul   bx,bx,0x28
   4d191:	b8 88 01             	mov    ax,0x188
   4d194:	8e c0                	mov    es,ax
   4d196:	26 c7 87 8e a0 04 00 	mov    WORD PTR es:[bx-0x5f72],0x4
   4d19d:	eb 30                	jmp    0x4d1cf
   4d19f:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d1a2:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   4d1a5:	7d 15                	jge    0x4d1bc
   4d1a7:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d1ab:	6b db 28             	imul   bx,bx,0x28
   4d1ae:	b8 88 01             	mov    ax,0x188
   4d1b1:	8e c0                	mov    es,ax
   4d1b3:	26 c7 87 8e a0 01 00 	mov    WORD PTR es:[bx-0x5f72],0x1
   4d1ba:	eb 13                	jmp    0x4d1cf
   4d1bc:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d1c0:	6b db 28             	imul   bx,bx,0x28
   4d1c3:	b8 88 01             	mov    ax,0x188
   4d1c6:	8e c0                	mov    es,ax
   4d1c8:	26 c7 87 8e a0 03 00 	mov    WORD PTR es:[bx-0x5f72],0x3
   4d1cf:	90                   	nop
   4d1d0:	0e                   	push   cs
   4d1d1:	e8 d7 09             	call   0x4dbab
   4d1d4:	a1 6c d5             	mov    ax,ds:0xd56c
   4d1d7:	a3 76 d5             	mov    ds:0xd576,ax
   4d1da:	0e                   	push   cs
   4d1db:	e8 93 f1             	call   0x4c371
   4d1de:	c7 06 a4 d5 00 00    	mov    WORD PTR ds:0xd5a4,0x0
   4d1e4:	ff 46 ea             	inc    WORD PTR [bp-0x16]
   4d1e7:	83 7e ea 01          	cmp    WORD PTR [bp-0x16],0x1
   4d1eb:	7f 03                	jg     0x4d1f0
   4d1ed:	e9 50 fe             	jmp    0x4d040
   4d1f0:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   4d1f3:	83 7e ec 01          	cmp    WORD PTR [bp-0x14],0x1
   4d1f7:	7f 03                	jg     0x4d1fc
   4d1f9:	e9 3c fe             	jmp    0x4d038
   4d1fc:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d200:	6b db 28             	imul   bx,bx,0x28
   4d203:	b8 88 01             	mov    ax,0x188
   4d206:	8e c0                	mov    es,ax
   4d208:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4d20e:	7f 03                	jg     0x4d213
   4d210:	e9 69 03             	jmp    0x4d57c
   4d213:	6a 00                	push   0x0
   4d215:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4d218:	ff 76 fc             	push   WORD PTR [bp-0x4]
   4d21b:	0e                   	push   cs
   4d21c:	e8 58 d6             	call   0x4a877
   4d21f:	83 c4 06             	add    sp,0x6
   4d222:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4d226:	ff 76 ee             	push   WORD PTR [bp-0x12]
   4d229:	ff 76 f0             	push   WORD PTR [bp-0x10]
   4d22c:	0e                   	push   cs
   4d22d:	e8 47 d6             	call   0x4a877
   4d230:	83 c4 06             	add    sp,0x6
   4d233:	a1 80 d5             	mov    ax,ds:0xd580
   4d236:	05 04 00             	add    ax,0x4
   4d239:	3b 46 f0             	cmp    ax,WORD PTR [bp-0x10]
   4d23c:	7d 19                	jge    0x4d257
   4d23e:	a1 80 d5             	mov    ax,ds:0xd580
   4d241:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4d244:	3d 14 00             	cmp    ax,0x14
   4d247:	7e 05                	jle    0x4d24e
   4d249:	b8 14 00             	mov    ax,0x14
   4d24c:	eb 06                	jmp    0x4d254
   4d24e:	a1 80 d5             	mov    ax,ds:0xd580
   4d251:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4d254:	a3 80 d5             	mov    ds:0xd580,ax
   4d257:	a1 80 d5             	mov    ax,ds:0xd580
   4d25a:	05 02 00             	add    ax,0x2
   4d25d:	3b 46 f0             	cmp    ax,WORD PTR [bp-0x10]
   4d260:	7e 15                	jle    0x4d277
   4d262:	a1 80 d5             	mov    ax,ds:0xd580
   4d265:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4d268:	7d 04                	jge    0x4d26e
   4d26a:	33 c0                	xor    ax,ax
   4d26c:	eb 06                	jmp    0x4d274
   4d26e:	a1 80 d5             	mov    ax,ds:0xd580
   4d271:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4d274:	a3 80 d5             	mov    ds:0xd580,ax
   4d277:	a1 7e d5             	mov    ax,ds:0xd57e
   4d27a:	05 04 00             	add    ax,0x4
   4d27d:	3b 46 ee             	cmp    ax,WORD PTR [bp-0x12]
   4d280:	7d 19                	jge    0x4d29b
   4d282:	a1 7e d5             	mov    ax,ds:0xd57e
   4d285:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4d288:	3d 14 00             	cmp    ax,0x14
   4d28b:	7e 05                	jle    0x4d292
   4d28d:	b8 14 00             	mov    ax,0x14
   4d290:	eb 06                	jmp    0x4d298
   4d292:	a1 7e d5             	mov    ax,ds:0xd57e
   4d295:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   4d298:	a3 7e d5             	mov    ds:0xd57e,ax
   4d29b:	a1 7e d5             	mov    ax,ds:0xd57e
   4d29e:	05 02 00             	add    ax,0x2
   4d2a1:	3b 46 ee             	cmp    ax,WORD PTR [bp-0x12]
   4d2a4:	7e 15                	jle    0x4d2bb
   4d2a6:	a1 7e d5             	mov    ax,ds:0xd57e
   4d2a9:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4d2ac:	7d 04                	jge    0x4d2b2
   4d2ae:	33 c0                	xor    ax,ax
   4d2b0:	eb 06                	jmp    0x4d2b8
   4d2b2:	a1 7e d5             	mov    ax,ds:0xd57e
   4d2b5:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   4d2b8:	a3 7e d5             	mov    ds:0xd57e,ax
   4d2bb:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d2bf:	6b db 28             	imul   bx,bx,0x28
   4d2c2:	b8 88 01             	mov    ax,0x188
   4d2c5:	8b 56 f0             	mov    dx,WORD PTR [bp-0x10]
   4d2c8:	8e c0                	mov    es,ax
   4d2ca:	26 89 97 92 a0       	mov    WORD PTR es:[bx-0x5f6e],dx
   4d2cf:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d2d3:	6b db 28             	imul   bx,bx,0x28
   4d2d6:	b8 88 01             	mov    ax,0x188
   4d2d9:	8b 56 ee             	mov    dx,WORD PTR [bp-0x12]
   4d2dc:	8e c0                	mov    es,ax
   4d2de:	26 89 97 94 a0       	mov    WORD PTR es:[bx-0x5f6c],dx
   4d2e3:	8b 5e f0             	mov    bx,WORD PTR [bp-0x10]
   4d2e6:	6b db 38             	imul   bx,bx,0x38
   4d2e9:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   4d2ec:	d1 e0                	shl    ax,1
   4d2ee:	03 d8                	add    bx,ax
   4d2f0:	ff b7 ee c8          	push   WORD PTR [bx-0x3712]
   4d2f4:	0e                   	push   cs
   4d2f5:	e8 d3 f5             	call   0x4c8cb
   4d2f8:	59                   	pop    cx
   4d2f9:	a3 66 d5             	mov    ds:0xd566,ax
   4d2fc:	c7 46 ec ff ff       	mov    WORD PTR [bp-0x14],0xffff
   4d301:	e9 6d 02             	jmp    0x4d571
   4d304:	c7 46 ea ff ff       	mov    WORD PTR [bp-0x16],0xffff
   4d309:	e9 59 02             	jmp    0x4d565
   4d30c:	c7 06 b2 d5 01 00    	mov    WORD PTR ds:0xd5b2,0x1
   4d312:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4d315:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4d318:	3d 1b 00             	cmp    ax,0x1b
   4d31b:	7f 21                	jg     0x4d33e
   4d31d:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4d320:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4d323:	3d 01 00             	cmp    ax,0x1
   4d326:	7c 16                	jl     0x4d33e
   4d328:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   4d32b:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4d32e:	3d 01 00             	cmp    ax,0x1
   4d331:	7c 0b                	jl     0x4d33e
   4d333:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   4d336:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4d339:	3d 1b 00             	cmp    ax,0x1b
   4d33c:	7e 08                	jle    0x4d346
   4d33e:	c7 06 36 d5 00 00    	mov    WORD PTR ds:0xd536,0x0
   4d344:	eb 1a                	jmp    0x4d360
   4d346:	8b 5e f0             	mov    bx,WORD PTR [bp-0x10]
   4d349:	03 5e ea             	add    bx,WORD PTR [bp-0x16]
   4d34c:	6b db 38             	imul   bx,bx,0x38
   4d34f:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   4d352:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4d355:	d1 e0                	shl    ax,1
   4d357:	03 d8                	add    bx,ax
   4d359:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4d35d:	a3 36 d5             	mov    ds:0xd536,ax
   4d360:	83 3e 36 d5 00       	cmp    WORD PTR ds:0xd536,0x0
   4d365:	7f 03                	jg     0x4d36a
   4d367:	e9 f8 01             	jmp    0x4d562
   4d36a:	a1 36 d5             	mov    ax,ds:0xd536
   4d36d:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   4d371:	75 03                	jne    0x4d376
   4d373:	e9 ec 01             	jmp    0x4d562
   4d376:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d37a:	6b db 28             	imul   bx,bx,0x28
   4d37d:	b8 88 01             	mov    ax,0x188
   4d380:	8e c0                	mov    es,ax
   4d382:	26 83 bf ac a0 00    	cmp    WORD PTR es:[bx-0x5f54],0x0
   4d388:	74 03                	je     0x4d38d
   4d38a:	e9 d5 01             	jmp    0x4d562
   4d38d:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d391:	6b db 28             	imul   bx,bx,0x28
   4d394:	b8 88 01             	mov    ax,0x188
   4d397:	8e c0                	mov    es,ax
   4d399:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4d39e:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4d3a1:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d3a5:	6b db 28             	imul   bx,bx,0x28
   4d3a8:	b8 88 01             	mov    ax,0x188
   4d3ab:	8e c0                	mov    es,ax
   4d3ad:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4d3b2:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4d3b5:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d3b9:	6b db 28             	imul   bx,bx,0x28
   4d3bc:	b8 88 01             	mov    ax,0x188
   4d3bf:	8e c0                	mov    es,ax
   4d3c1:	26 8b 87 98 a0       	mov    ax,WORD PTR es:[bx-0x5f68]
   4d3c6:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d3ca:	6b db 28             	imul   bx,bx,0x28
   4d3cd:	ba 88 01             	mov    dx,0x188
   4d3d0:	8e c2                	mov    es,dx
   4d3d2:	26 3b 87 98 a0       	cmp    ax,WORD PTR es:[bx-0x5f68]
   4d3d7:	75 03                	jne    0x4d3dc
   4d3d9:	e9 86 01             	jmp    0x4d562
   4d3dc:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4d3df:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   4d3e2:	99                   	cwd
   4d3e3:	33 c2                	xor    ax,dx
   4d3e5:	2b c2                	sub    ax,dx
   4d3e7:	3d 01 00             	cmp    ax,0x1
   4d3ea:	7f 13                	jg     0x4d3ff
   4d3ec:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4d3ef:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   4d3f2:	99                   	cwd
   4d3f3:	33 c2                	xor    ax,dx
   4d3f5:	2b c2                	sub    ax,dx
   4d3f7:	3d 01 00             	cmp    ax,0x1
   4d3fa:	7f 03                	jg     0x4d3ff
   4d3fc:	e9 63 01             	jmp    0x4d562
   4d3ff:	c7 46 e8 ff ff       	mov    WORD PTR [bp-0x18],0xffff
   4d404:	e9 a7 00             	jmp    0x4d4ae
   4d407:	c7 46 e6 ff ff       	mov    WORD PTR [bp-0x1a],0xffff
   4d40c:	e9 93 00             	jmp    0x4d4a2
   4d40f:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4d412:	03 46 e6             	add    ax,WORD PTR [bp-0x1a]
   4d415:	3d 1b 00             	cmp    ax,0x1b
   4d418:	7f 21                	jg     0x4d43b
   4d41a:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4d41d:	03 46 e6             	add    ax,WORD PTR [bp-0x1a]
   4d420:	3d 01 00             	cmp    ax,0x1
   4d423:	7c 16                	jl     0x4d43b
   4d425:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4d428:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   4d42b:	3d 01 00             	cmp    ax,0x1
   4d42e:	7c 0b                	jl     0x4d43b
   4d430:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4d433:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   4d436:	3d 1b 00             	cmp    ax,0x1b
   4d439:	7e 07                	jle    0x4d442
   4d43b:	c7 46 e4 00 00       	mov    WORD PTR [bp-0x1c],0x0
   4d440:	eb 1a                	jmp    0x4d45c
   4d442:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4d445:	03 5e e6             	add    bx,WORD PTR [bp-0x1a]
   4d448:	6b db 38             	imul   bx,bx,0x38
   4d44b:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4d44e:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   4d451:	d1 e0                	shl    ax,1
   4d453:	03 d8                	add    bx,ax
   4d455:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4d459:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   4d45c:	83 7e e4 00          	cmp    WORD PTR [bp-0x1c],0x0
   4d460:	7e 3d                	jle    0x4d49f
   4d462:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   4d465:	3b 06 36 d5          	cmp    ax,WORD PTR ds:0xd536
   4d469:	74 34                	je     0x4d49f
   4d46b:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   4d46e:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   4d472:	74 2b                	je     0x4d49f
   4d474:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   4d478:	6b db 28             	imul   bx,bx,0x28
   4d47b:	b8 88 01             	mov    ax,0x188
   4d47e:	8e c0                	mov    es,ax
   4d480:	26 8b 87 98 a0       	mov    ax,WORD PTR es:[bx-0x5f68]
   4d485:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   4d488:	6b db 28             	imul   bx,bx,0x28
   4d48b:	ba 88 01             	mov    dx,0x188
   4d48e:	8e c2                	mov    es,dx
   4d490:	26 3b 87 98 a0       	cmp    ax,WORD PTR es:[bx-0x5f68]
   4d495:	74 08                	je     0x4d49f
   4d497:	c7 06 b2 d5 00 00    	mov    WORD PTR ds:0xd5b2,0x0
   4d49d:	eb 18                	jmp    0x4d4b7
   4d49f:	ff 46 e6             	inc    WORD PTR [bp-0x1a]
   4d4a2:	83 7e e6 01          	cmp    WORD PTR [bp-0x1a],0x1
   4d4a6:	7f 03                	jg     0x4d4ab
   4d4a8:	e9 64 ff             	jmp    0x4d40f
   4d4ab:	ff 46 e8             	inc    WORD PTR [bp-0x18]
   4d4ae:	83 7e e8 01          	cmp    WORD PTR [bp-0x18],0x1
   4d4b2:	7f 03                	jg     0x4d4b7
   4d4b4:	e9 50 ff             	jmp    0x4d407
   4d4b7:	83 3e b2 d5 00       	cmp    WORD PTR ds:0xd5b2,0x0
   4d4bc:	75 03                	jne    0x4d4c1
   4d4be:	e9 a1 00             	jmp    0x4d562
   4d4c1:	a1 36 d5             	mov    ax,ds:0xd536
   4d4c4:	a3 6e d5             	mov    ds:0xd56e,ax
   4d4c7:	a1 de d5             	mov    ax,ds:0xd5de
   4d4ca:	a3 6c d5             	mov    ds:0xd56c,ax
   4d4cd:	c7 06 a4 d5 01 00    	mov    WORD PTR ds:0xd5a4,0x1
   4d4d3:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4d4d6:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   4d4d9:	7d 15                	jge    0x4d4f0
   4d4db:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d4df:	6b db 28             	imul   bx,bx,0x28
   4d4e2:	b8 88 01             	mov    ax,0x188
   4d4e5:	8e c0                	mov    es,ax
   4d4e7:	26 c7 87 8e a0 02 00 	mov    WORD PTR es:[bx-0x5f72],0x2
   4d4ee:	eb 4d                	jmp    0x4d53d
   4d4f0:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4d4f3:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   4d4f6:	7e 15                	jle    0x4d50d
   4d4f8:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d4fc:	6b db 28             	imul   bx,bx,0x28
   4d4ff:	b8 88 01             	mov    ax,0x188
   4d502:	8e c0                	mov    es,ax
   4d504:	26 c7 87 8e a0 04 00 	mov    WORD PTR es:[bx-0x5f72],0x4
   4d50b:	eb 30                	jmp    0x4d53d
   4d50d:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   4d510:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   4d513:	7d 15                	jge    0x4d52a
   4d515:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d519:	6b db 28             	imul   bx,bx,0x28
   4d51c:	b8 88 01             	mov    ax,0x188
   4d51f:	8e c0                	mov    es,ax
   4d521:	26 c7 87 8e a0 01 00 	mov    WORD PTR es:[bx-0x5f72],0x1
   4d528:	eb 13                	jmp    0x4d53d
   4d52a:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4d52e:	6b db 28             	imul   bx,bx,0x28
   4d531:	b8 88 01             	mov    ax,0x188
   4d534:	8e c0                	mov    es,ax
   4d536:	26 c7 87 8e a0 03 00 	mov    WORD PTR es:[bx-0x5f72],0x3
   4d53d:	90                   	nop
   4d53e:	0e                   	push   cs
   4d53f:	e8 69 06             	call   0x4dbab
   4d542:	c7 06 a4 d5 00 00    	mov    WORD PTR ds:0xd5a4,0x0
   4d548:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d54c:	6b db 28             	imul   bx,bx,0x28
   4d54f:	b8 88 01             	mov    ax,0x188
   4d552:	8e c0                	mov    es,ax
   4d554:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4d55a:	7d 06                	jge    0x4d562
   4d55c:	c7 06 4c d5 00 00    	mov    WORD PTR ds:0xd54c,0x0
   4d562:	ff 46 ea             	inc    WORD PTR [bp-0x16]
   4d565:	83 7e ea 01          	cmp    WORD PTR [bp-0x16],0x1
   4d569:	7f 03                	jg     0x4d56e
   4d56b:	e9 9e fd             	jmp    0x4d30c
   4d56e:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   4d571:	83 7e ec 01          	cmp    WORD PTR [bp-0x14],0x1
   4d575:	7f 03                	jg     0x4d57a
   4d577:	e9 8a fd             	jmp    0x4d304
   4d57a:	eb 06                	jmp    0x4d582
   4d57c:	c7 06 4c d5 00 00    	mov    WORD PTR ds:0xd54c,0x0
   4d582:	33 c0                	xor    ax,ax
   4d584:	a3 5e d5             	mov    ds:0xd55e,ax
   4d587:	a3 c8 d5             	mov    ds:0xd5c8,ax
   4d58a:	a3 ca d5             	mov    ds:0xd5ca,ax
   4d58d:	c9                   	leave
   4d58e:	cb                   	retf
   4d58f:	01 30                	add    WORD PTR [bx+si],si
   4d591:	c8 2d 27 2e          	enter  0x272d,0x2e
   4d595:	65 30 69 2d          	xor    BYTE PTR gs:[bx+di+0x2d],ch
   4d599:	65 30 44 2f          	xor    BYTE PTR gs:[si+0x2f],al
   4d59d:	65 30 a3 2f 86       	xor    BYTE PTR gs:[bp+di-0x79d1],ah
   4d5a2:	2e e5 2e             	cs in  ax,0x2e
   4d5a5:	55                   	push   bp
   4d5a6:	8b ec                	mov    bp,sp
   4d5a8:	81 ec 8a 00          	sub    sp,0x8a
   4d5ac:	8d 86 76 ff          	lea    ax,[bp-0x8a]
   4d5b0:	16                   	push   ss
   4d5b1:	50                   	push   ax
   4d5b2:	1e                   	push   ds
   4d5b3:	68 93 63             	push   0x6393
   4d5b6:	b9 82 00             	mov    cx,0x82
   4d5b9:	9a 7a 12 00 00       	call   0x0:0x127a
   4d5be:	a1 76 d5             	mov    ax,ds:0xd576
   4d5c1:	3b 06 cc d5          	cmp    ax,WORD PTR ds:0xd5cc
   4d5c5:	74 03                	je     0x4d5ca
   4d5c7:	e9 78 05             	jmp    0x4db42
   4d5ca:	83 3e 74 d5 04       	cmp    WORD PTR ds:0xd574,0x4
   4d5cf:	75 15                	jne    0x4d5e6
   4d5d1:	83 3e 70 d5 00       	cmp    WORD PTR ds:0xd570,0x0
   4d5d6:	7f 1f                	jg     0x4d5f7
   4d5d8:	83 3e 72 d5 01       	cmp    WORD PTR ds:0xd572,0x1
   4d5dd:	75 07                	jne    0x4d5e6
   4d5df:	83 3e 9c d5 00       	cmp    WORD PTR ds:0xd59c,0x0
   4d5e4:	7f 11                	jg     0x4d5f7
   4d5e6:	83 3e 74 d5 05       	cmp    WORD PTR ds:0xd574,0x5
   4d5eb:	74 0a                	je     0x4d5f7
   4d5ed:	83 3e 74 d5 02       	cmp    WORD PTR ds:0xd574,0x2
   4d5f2:	74 03                	je     0x4d5f7
   4d5f4:	e9 a3 00             	jmp    0x4d69a
   4d5f7:	a1 bc d5             	mov    ax,ds:0xd5bc
   4d5fa:	bb 3c 00             	mov    bx,0x3c
   4d5fd:	99                   	cwd
   4d5fe:	f7 fb                	idiv   bx
   4d600:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4d603:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d607:	6b db 28             	imul   bx,bx,0x28
   4d60a:	b8 88 01             	mov    ax,0x188
   4d60d:	8e c0                	mov    es,ax
   4d60f:	26 83 bf 90 a0 05    	cmp    WORD PTR es:[bx-0x5f70],0x5
   4d615:	7c 03                	jl     0x4d61a
   4d617:	e9 80 00             	jmp    0x4d69a
   4d61a:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d61e:	6b db 28             	imul   bx,bx,0x28
   4d621:	b8 88 01             	mov    ax,0x188
   4d624:	8e c0                	mov    es,ax
   4d626:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4d62b:	6b db 5c             	imul   bx,bx,0x5c
   4d62e:	b8 88 01             	mov    ax,0x188
   4d631:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   4d634:	6b d2 0a             	imul   dx,dx,0xa
   4d637:	83 c2 0a             	add    dx,0xa
   4d63a:	8e c0                	mov    es,ax
   4d63c:	26 01 97 ac 99       	add    WORD PTR es:[bx-0x6654],dx
   4d641:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d645:	6b db 28             	imul   bx,bx,0x28
   4d648:	b8 88 01             	mov    ax,0x188
   4d64b:	8e c0                	mov    es,ax
   4d64d:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4d652:	6b db 24             	imul   bx,bx,0x24
   4d655:	b8 88 01             	mov    ax,0x188
   4d658:	8e c0                	mov    es,ax
   4d65a:	26 8b 87 7c 9b       	mov    ax,WORD PTR es:[bx-0x6484]
   4d65f:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   4d662:	05 03 00             	add    ax,0x3
   4d665:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d669:	6b db 28             	imul   bx,bx,0x28
   4d66c:	ba 88 01             	mov    dx,0x188
   4d66f:	8e c2                	mov    es,dx
   4d671:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4d676:	6b db 5c             	imul   bx,bx,0x5c
   4d679:	ba 88 01             	mov    dx,0x188
   4d67c:	8e c2                	mov    es,dx
   4d67e:	26 01 87 b0 99       	add    WORD PTR es:[bx-0x6650],ax
   4d683:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4d687:	6b db 28             	imul   bx,bx,0x28
   4d68a:	b8 88 01             	mov    ax,0x188
   4d68d:	8e c0                	mov    es,ax
   4d68f:	26 ff b7 90 a0       	push   WORD PTR es:[bx-0x5f70]
   4d694:	90                   	nop
   4d695:	0e                   	push   cs
   4d696:	e8 65 70             	call   0x446fe
   4d699:	59                   	pop    cx
   4d69a:	83 3e 74 d5 02       	cmp    WORD PTR ds:0xd574,0x2
   4d69f:	74 03                	je     0x4d6a4
   4d6a1:	e9 a4 01             	jmp    0x4d848
   4d6a4:	c7 06 a6 d5 01 00    	mov    WORD PTR ds:0xd5a6,0x1
   4d6aa:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d6ae:	6b db 28             	imul   bx,bx,0x28
   4d6b1:	b8 88 01             	mov    ax,0x188
   4d6b4:	8e c0                	mov    es,ax
   4d6b6:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   4d6bc:	75 08                	jne    0x4d6c6
   4d6be:	c7 06 4e d5 01 00    	mov    WORD PTR ds:0xd54e,0x1
   4d6c4:	eb 1a                	jmp    0x4d6e0
   4d6c6:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d6ca:	6b db 28             	imul   bx,bx,0x28
   4d6cd:	b8 88 01             	mov    ax,0x188
   4d6d0:	8e c0                	mov    es,ax
   4d6d2:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   4d6d8:	75 06                	jne    0x4d6e0
   4d6da:	c7 06 50 d5 01 00    	mov    WORD PTR ds:0xd550,0x1
   4d6e0:	a1 ca d5             	mov    ax,ds:0xd5ca
   4d6e3:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4d6e7:	6b c0 1e             	imul   ax,ax,0x1e
   4d6ea:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4d6ee:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4d6f2:	6b d2 0e             	imul   dx,dx,0xe
   4d6f5:	03 c2                	add    ax,dx
   4d6f7:	05 22 00             	add    ax,0x22
   4d6fa:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4d6fd:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4d700:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4d704:	6b c0 0e             	imul   ax,ax,0xe
   4d707:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4d70a:	05 28 00             	add    ax,0x28
   4d70d:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4d710:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d714:	6b db 28             	imul   bx,bx,0x28
   4d717:	b8 88 01             	mov    ax,0x188
   4d71a:	8e c0                	mov    es,ax
   4d71c:	26 8b 87 8e a0       	mov    ax,WORD PTR es:[bx-0x5f72]
   4d721:	05 64 00             	add    ax,0x64
   4d724:	50                   	push   ax
   4d725:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d729:	6b db 28             	imul   bx,bx,0x28
   4d72c:	b8 88 01             	mov    ax,0x188
   4d72f:	8e c0                	mov    es,ax
   4d731:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4d736:	05 0a 00             	add    ax,0xa
   4d739:	50                   	push   ax
   4d73a:	16                   	push   ss
   4d73b:	8d 46 f8             	lea    ax,[bp-0x8]
   4d73e:	50                   	push   ax
   4d73f:	16                   	push   ss
   4d740:	8d 46 fa             	lea    ax,[bp-0x6]
   4d743:	50                   	push   ax
   4d744:	0e                   	push   cs
   4d745:	e8 8f c8             	call   0x49fd7
   4d748:	83 c4 0c             	add    sp,0xc
   4d74b:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d74f:	6b db 28             	imul   bx,bx,0x28
   4d752:	b8 88 01             	mov    ax,0x188
   4d755:	8e c0                	mov    es,ax
   4d757:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4d75c:	c1 e3 03             	shl    bx,0x3
   4d75f:	b8 88 01             	mov    ax,0x188
   4d762:	8e c0                	mov    es,ax
   4d764:	26 83 bf ed e2 1c    	cmp    WORD PTR es:[bx-0x1d13],0x1c
   4d76a:	7d 15                	jge    0x4d781
   4d76c:	6a 0b                	push   0xb
   4d76e:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4d771:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4d775:	6b c0 0e             	imul   ax,ax,0xe
   4d778:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4d77b:	05 07 00             	add    ax,0x7
   4d77e:	50                   	push   ax
   4d77f:	eb 05                	jmp    0x4d786
   4d781:	6a 0b                	push   0xb
   4d783:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4d786:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4d789:	0e                   	push   cs
   4d78a:	e8 94 c7             	call   0x49f21
   4d78d:	83 c4 06             	add    sp,0x6
   4d790:	c7 06 18 63 01 00    	mov    WORD PTR ds:0x6318,0x1
   4d796:	b8 88 01             	mov    ax,0x188
   4d799:	8e c0                	mov    es,ax
   4d79b:	26 c7 06 34 26 00 00 	mov    WORD PTR es:0x2634,0x0
   4d7a2:	b8 88 01             	mov    ax,0x188
   4d7a5:	8e c0                	mov    es,ax
   4d7a7:	26 c7 06 36 26 00 00 	mov    WORD PTR es:0x2636,0x0
   4d7ae:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4d7b3:	eb 64                	jmp    0x4d819
   4d7b5:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4d7b8:	6b db 28             	imul   bx,bx,0x28
   4d7bb:	b8 88 01             	mov    ax,0x188
   4d7be:	8e c0                	mov    es,ax
   4d7c0:	26 8b 87 9a a0       	mov    ax,WORD PTR es:[bx-0x5f66]
   4d7c5:	3b 06 76 d5          	cmp    ax,WORD PTR ds:0xd576
   4d7c9:	75 1a                	jne    0x4d7e5
   4d7cb:	6a 02                	push   0x2
   4d7cd:	6a 01                	push   0x1
   4d7cf:	6a 01                	push   0x1
   4d7d1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4d7d4:	6b c0 28             	imul   ax,ax,0x28
   4d7d7:	05 98 a0             	add    ax,0xa098
   4d7da:	68 88 01             	push   0x188
   4d7dd:	50                   	push   ax
   4d7de:	0e                   	push   cs
   4d7df:	e8 70 c6             	call   0x49e52
   4d7e2:	83 c4 0a             	add    sp,0xa
   4d7e5:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4d7e8:	6b db 28             	imul   bx,bx,0x28
   4d7eb:	b8 88 01             	mov    ax,0x188
   4d7ee:	8e c0                	mov    es,ax
   4d7f0:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4d7f6:	7c 1e                	jl     0x4d816
   4d7f8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4d7fb:	6b db 28             	imul   bx,bx,0x28
   4d7fe:	b8 88 01             	mov    ax,0x188
   4d801:	8e c0                	mov    es,ax
   4d803:	26 8b 9f 98 a0       	mov    bx,WORD PTR es:[bx-0x5f68]
   4d808:	d1 e3                	shl    bx,1
   4d80a:	b8 88 01             	mov    ax,0x188
   4d80d:	8e c0                	mov    es,ax
   4d80f:	26 c7 87 32 26 01 00 	mov    WORD PTR es:[bx+0x2632],0x1
   4d816:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4d819:	83 7e fe 1c          	cmp    WORD PTR [bp-0x2],0x1c
   4d81d:	7e 96                	jle    0x4d7b5
   4d81f:	b8 88 01             	mov    ax,0x188
   4d822:	8e c0                	mov    es,ax
   4d824:	26 83 3e 34 26 00    	cmp    WORD PTR es:0x2634,0x0
   4d82a:	74 10                	je     0x4d83c
   4d82c:	b8 88 01             	mov    ax,0x188
   4d82f:	8e c0                	mov    es,ax
   4d831:	26 83 3e 36 26 00    	cmp    WORD PTR es:0x2636,0x0
   4d837:	74 03                	je     0x4d83c
   4d839:	e9 6d 03             	jmp    0x4dba9
   4d83c:	c7 06 2e 63 01 00    	mov    WORD PTR ds:0x632e,0x1
   4d842:	e9 64 03             	jmp    0x4dba9
   4d845:	e9 61 03             	jmp    0x4dba9
   4d848:	83 3e 74 d5 03       	cmp    WORD PTR ds:0xd574,0x3
   4d84d:	74 0a                	je     0x4d859
   4d84f:	83 3e 74 d5 04       	cmp    WORD PTR ds:0xd574,0x4
   4d854:	74 03                	je     0x4d859
   4d856:	e9 3e 01             	jmp    0x4d997
   4d859:	83 3e 70 d5 00       	cmp    WORD PTR ds:0xd570,0x0
   4d85e:	7f 1e                	jg     0x4d87e
   4d860:	83 3e 72 d5 01       	cmp    WORD PTR ds:0xd572,0x1
   4d865:	74 03                	je     0x4d86a
   4d867:	e9 2d 01             	jmp    0x4d997
   4d86a:	83 3e 9c d5 00       	cmp    WORD PTR ds:0xd59c,0x0
   4d86f:	7f 03                	jg     0x4d874
   4d871:	e9 23 01             	jmp    0x4d997
   4d874:	83 3e 74 d5 04       	cmp    WORD PTR ds:0xd574,0x4
   4d879:	74 03                	je     0x4d87e
   4d87b:	e9 19 01             	jmp    0x4d997
   4d87e:	a1 ca d5             	mov    ax,ds:0xd5ca
   4d881:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4d885:	6b c0 1e             	imul   ax,ax,0x1e
   4d888:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4d88c:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4d890:	6b d2 0e             	imul   dx,dx,0xe
   4d893:	03 c2                	add    ax,dx
   4d895:	05 22 00             	add    ax,0x22
   4d898:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4d89b:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4d89e:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4d8a2:	6b c0 0e             	imul   ax,ax,0xe
   4d8a5:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4d8a8:	05 28 00             	add    ax,0x28
   4d8ab:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4d8ae:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d8b2:	6b db 28             	imul   bx,bx,0x28
   4d8b5:	b8 88 01             	mov    ax,0x188
   4d8b8:	8e c0                	mov    es,ax
   4d8ba:	26 ff b7 8e a0       	push   WORD PTR es:[bx-0x5f72]
   4d8bf:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d8c3:	6b db 28             	imul   bx,bx,0x28
   4d8c6:	b8 88 01             	mov    ax,0x188
   4d8c9:	8e c0                	mov    es,ax
   4d8cb:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4d8d0:	05 0a 00             	add    ax,0xa
   4d8d3:	50                   	push   ax
   4d8d4:	16                   	push   ss
   4d8d5:	8d 46 f8             	lea    ax,[bp-0x8]
   4d8d8:	50                   	push   ax
   4d8d9:	16                   	push   ss
   4d8da:	8d 46 fa             	lea    ax,[bp-0x6]
   4d8dd:	50                   	push   ax
   4d8de:	0e                   	push   cs
   4d8df:	e8 f5 c6             	call   0x49fd7
   4d8e2:	83 c4 0c             	add    sp,0xc
   4d8e5:	8b 1e 76 d5          	mov    bx,WORD PTR ds:0xd576
   4d8e9:	6b db 28             	imul   bx,bx,0x28
   4d8ec:	b8 88 01             	mov    ax,0x188
   4d8ef:	8e c0                	mov    es,ax
   4d8f1:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4d8f6:	c1 e3 03             	shl    bx,0x3
   4d8f9:	b8 88 01             	mov    ax,0x188
   4d8fc:	8e c0                	mov    es,ax
   4d8fe:	26 83 bf ed e2 1c    	cmp    WORD PTR es:[bx-0x1d13],0x1c
   4d904:	7d 3a                	jge    0x4d940
   4d906:	a1 74 d5             	mov    ax,ds:0xd574
   4d909:	05 09 00             	add    ax,0x9
   4d90c:	50                   	push   ax
   4d90d:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4d910:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4d914:	6b c0 0e             	imul   ax,ax,0xe
   4d917:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4d91a:	05 07 00             	add    ax,0x7
   4d91d:	50                   	push   ax
   4d91e:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4d921:	0e                   	push   cs
   4d922:	e8 fc c5             	call   0x49f21
   4d925:	83 c4 06             	add    sp,0x6
   4d928:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d92b:	a3 d2 d5             	mov    ds:0xd5d2,ax
   4d92e:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4d931:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4d935:	6b c0 0e             	imul   ax,ax,0xe
   4d938:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4d93b:	05 07 00             	add    ax,0x7
   4d93e:	eb 1d                	jmp    0x4d95d
   4d940:	a1 74 d5             	mov    ax,ds:0xd574
   4d943:	05 09 00             	add    ax,0x9
   4d946:	50                   	push   ax
   4d947:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4d94a:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4d94d:	0e                   	push   cs
   4d94e:	e8 d0 c5             	call   0x49f21
   4d951:	83 c4 06             	add    sp,0x6
   4d954:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   4d957:	a3 d2 d5             	mov    ds:0xd5d2,ax
   4d95a:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4d95d:	a3 d0 d5             	mov    ds:0xd5d0,ax
   4d960:	83 3e 74 d5 04       	cmp    WORD PTR ds:0xd574,0x4
   4d965:	75 0f                	jne    0x4d976
   4d967:	a1 9c d5             	mov    ax,ds:0xd59c
   4d96a:	3b 06 70 d5          	cmp    ax,WORD PTR ds:0xd570
   4d96e:	7e 06                	jle    0x4d976
   4d970:	a1 9c d5             	mov    ax,ds:0xd59c
   4d973:	a3 70 d5             	mov    ds:0xd570,ax
   4d976:	c7 06 1c 63 01 00    	mov    WORD PTR ds:0x631c,0x1
   4d97c:	a1 cc d5             	mov    ax,ds:0xd5cc
   4d97f:	a3 ce d5             	mov    ds:0xd5ce,ax
   4d982:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4d985:	a3 c6 d5             	mov    ds:0xd5c6,ax
   4d988:	c7 06 18 63 01 00    	mov    WORD PTR ds:0x6318,0x1
   4d98e:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   4d994:	e9 12 02             	jmp    0x4dba9
   4d997:	83 3e 74 d5 05       	cmp    WORD PTR ds:0xd574,0x5
   4d99c:	74 03                	je     0x4d9a1
   4d99e:	e9 ba 00             	jmp    0x4da5b
   4d9a1:	a1 ca d5             	mov    ax,ds:0xd5ca
   4d9a4:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4d9a8:	6b c0 1e             	imul   ax,ax,0x1e
   4d9ab:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4d9af:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4d9b3:	6b d2 0e             	imul   dx,dx,0xe
   4d9b6:	03 c2                	add    ax,dx
   4d9b8:	05 22 00             	add    ax,0x22
   4d9bb:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4d9be:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4d9c1:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4d9c5:	6b c0 0e             	imul   ax,ax,0xe
   4d9c8:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4d9cb:	05 28 00             	add    ax,0x28
   4d9ce:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4d9d1:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4d9d5:	6b db 28             	imul   bx,bx,0x28
   4d9d8:	b8 88 01             	mov    ax,0x188
   4d9db:	8e c0                	mov    es,ax
   4d9dd:	26 ff b7 8e a0       	push   WORD PTR es:[bx-0x5f72]
   4d9e2:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4d9e6:	6b db 28             	imul   bx,bx,0x28
   4d9e9:	b8 88 01             	mov    ax,0x188
   4d9ec:	8e c0                	mov    es,ax
   4d9ee:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4d9f3:	05 0a 00             	add    ax,0xa
   4d9f6:	50                   	push   ax
   4d9f7:	16                   	push   ss
   4d9f8:	8d 46 f8             	lea    ax,[bp-0x8]
   4d9fb:	50                   	push   ax
   4d9fc:	16                   	push   ss
   4d9fd:	8d 46 fa             	lea    ax,[bp-0x6]
   4da00:	50                   	push   ax
   4da01:	0e                   	push   cs
   4da02:	e8 d2 c5             	call   0x49fd7
   4da05:	83 c4 0c             	add    sp,0xc
   4da08:	a1 74 d5             	mov    ax,ds:0xd574
   4da0b:	05 09 00             	add    ax,0x9
   4da0e:	50                   	push   ax
   4da0f:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4da12:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4da16:	6b c0 0e             	imul   ax,ax,0xe
   4da19:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4da1c:	05 f4 ff             	add    ax,0xfff4
   4da1f:	50                   	push   ax
   4da20:	a1 ca d5             	mov    ax,ds:0xd5ca
   4da23:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4da27:	6b c0 1e             	imul   ax,ax,0x1e
   4da2a:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4da2e:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4da32:	6b d2 0e             	imul   dx,dx,0xe
   4da35:	03 c2                	add    ax,dx
   4da37:	05 0b 00             	add    ax,0xb
   4da3a:	50                   	push   ax
   4da3b:	0e                   	push   cs
   4da3c:	e8 e2 c4             	call   0x49f21
   4da3f:	83 c4 06             	add    sp,0x6
   4da42:	83 3e 1a 63 00       	cmp    WORD PTR ds:0x631a,0x0
   4da47:	74 0f                	je     0x4da58
   4da49:	a1 cc d5             	mov    ax,ds:0xd5cc
   4da4c:	a3 ce d5             	mov    ds:0xd5ce,ax
   4da4f:	c7 06 1e 63 01 00    	mov    WORD PTR ds:0x631e,0x1
   4da55:	e9 d8 00             	jmp    0x4db30
   4da58:	e9 d5 00             	jmp    0x4db30
   4da5b:	83 3e 74 d5 04       	cmp    WORD PTR ds:0xd574,0x4
   4da60:	75 07                	jne    0x4da69
   4da62:	83 3e 70 d5 00       	cmp    WORD PTR ds:0xd570,0x0
   4da67:	74 0a                	je     0x4da73
   4da69:	83 3e 74 d5 06       	cmp    WORD PTR ds:0xd574,0x6
   4da6e:	74 03                	je     0x4da73
   4da70:	e9 cb 00             	jmp    0x4db3e
   4da73:	83 3e 72 d5 00       	cmp    WORD PTR ds:0xd572,0x0
   4da78:	74 03                	je     0x4da7d
   4da7a:	e9 c1 00             	jmp    0x4db3e
   4da7d:	a1 ca d5             	mov    ax,ds:0xd5ca
   4da80:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4da84:	6b c0 1e             	imul   ax,ax,0x1e
   4da87:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4da8b:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4da8f:	6b d2 0e             	imul   dx,dx,0xe
   4da92:	03 c2                	add    ax,dx
   4da94:	05 22 00             	add    ax,0x22
   4da97:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4da9a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4da9d:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4daa1:	6b c0 0e             	imul   ax,ax,0xe
   4daa4:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4daa7:	05 28 00             	add    ax,0x28
   4daaa:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4daad:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4dab1:	6b db 28             	imul   bx,bx,0x28
   4dab4:	b8 88 01             	mov    ax,0x188
   4dab7:	8e c0                	mov    es,ax
   4dab9:	26 ff b7 8e a0       	push   WORD PTR es:[bx-0x5f72]
   4dabe:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4dac2:	6b db 28             	imul   bx,bx,0x28
   4dac5:	b8 88 01             	mov    ax,0x188
   4dac8:	8e c0                	mov    es,ax
   4daca:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4dacf:	05 0a 00             	add    ax,0xa
   4dad2:	50                   	push   ax
   4dad3:	16                   	push   ss
   4dad4:	8d 46 f8             	lea    ax,[bp-0x8]
   4dad7:	50                   	push   ax
   4dad8:	16                   	push   ss
   4dad9:	8d 46 fa             	lea    ax,[bp-0x6]
   4dadc:	50                   	push   ax
   4dadd:	0e                   	push   cs
   4dade:	e8 f6 c4             	call   0x49fd7
   4dae1:	83 c4 0c             	add    sp,0xc
   4dae4:	6a 00                	push   0x0
   4dae6:	68 00 80             	push   0x8000
   4dae9:	9a 79 17 00 00       	call   0x0:0x1779
   4daee:	99                   	cwd
   4daef:	50                   	push   ax
   4daf0:	52                   	push   dx
   4daf1:	33 d2                	xor    dx,dx
   4daf3:	b8 0a 00             	mov    ax,0xa
   4daf6:	59                   	pop    cx
   4daf7:	5b                   	pop    bx
   4daf8:	9a 42 12 00 00       	call   0x0:0x1242
   4dafd:	52                   	push   dx
   4dafe:	50                   	push   ax
   4daff:	9a df 12 00 00       	call   0x0:0x12df
   4db04:	40                   	inc    ax
   4db05:	a3 1a 63             	mov    ds:0x631a,ax
   4db08:	16                   	push   ss
   4db09:	a1 1a 63             	mov    ax,ds:0x631a
   4db0c:	6b c0 0d             	imul   ax,ax,0xd
   4db0f:	8d 96 69 ff          	lea    dx,[bp-0x97]
   4db13:	03 c2                	add    ax,dx
   4db15:	50                   	push   ax
   4db16:	68 88 01             	push   0x188
   4db19:	68 10 a5             	push   0xa510
   4db1c:	9a a3 49 00 00       	call   0x0:0x49a3
   4db21:	83 c4 08             	add    sp,0x8
   4db24:	c7 06 1e 63 01 00    	mov    WORD PTR ds:0x631e,0x1
   4db2a:	a1 cc d5             	mov    ax,ds:0xd5cc
   4db2d:	a3 ce d5             	mov    ds:0xd5ce,ax
   4db30:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   4db36:	c7 06 18 63 01 00    	mov    WORD PTR ds:0x6318,0x1
   4db3c:	eb 6b                	jmp    0x4dba9
   4db3e:	eb 02                	jmp    0x4db42
   4db40:	eb 67                	jmp    0x4dba9
   4db42:	a1 ca d5             	mov    ax,ds:0xd5ca
   4db45:	2b 06 80 d5          	sub    ax,WORD PTR ds:0xd580
   4db49:	6b c0 1e             	imul   ax,ax,0x1e
   4db4c:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   4db50:	2b 16 7e d5          	sub    dx,WORD PTR ds:0xd57e
   4db54:	6b d2 0e             	imul   dx,dx,0xe
   4db57:	03 c2                	add    ax,dx
   4db59:	05 22 00             	add    ax,0x22
   4db5c:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4db5f:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4db62:	2b 06 7e d5          	sub    ax,WORD PTR ds:0xd57e
   4db66:	6b c0 0e             	imul   ax,ax,0xe
   4db69:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   4db6c:	05 28 00             	add    ax,0x28
   4db6f:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4db72:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4db76:	6b db 28             	imul   bx,bx,0x28
   4db79:	b8 88 01             	mov    ax,0x188
   4db7c:	8e c0                	mov    es,ax
   4db7e:	26 ff b7 8e a0       	push   WORD PTR es:[bx-0x5f72]
   4db83:	8b 1e cc d5          	mov    bx,WORD PTR ds:0xd5cc
   4db87:	6b db 28             	imul   bx,bx,0x28
   4db8a:	b8 88 01             	mov    ax,0x188
   4db8d:	8e c0                	mov    es,ax
   4db8f:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4db94:	05 0a 00             	add    ax,0xa
   4db97:	50                   	push   ax
   4db98:	16                   	push   ss
   4db99:	8d 46 f8             	lea    ax,[bp-0x8]
   4db9c:	50                   	push   ax
   4db9d:	16                   	push   ss
   4db9e:	8d 46 fa             	lea    ax,[bp-0x6]
   4dba1:	50                   	push   ax
   4dba2:	0e                   	push   cs
   4dba3:	e8 31 c4             	call   0x49fd7
   4dba6:	83 c4 0c             	add    sp,0xc
   4dba9:	c9                   	leave
   4dbaa:	cb                   	retf
   4dbab:	55                   	push   bp
   4dbac:	8b ec                	mov    bp,sp
   4dbae:	83 ec 1c             	sub    sp,0x1c
   4dbb1:	83 3e 6e d5 00       	cmp    WORD PTR ds:0xd56e,0x0
   4dbb6:	7f 03                	jg     0x4dbbb
   4dbb8:	e9 c0 08             	jmp    0x4e47b
   4dbbb:	83 3e 6c d5 00       	cmp    WORD PTR ds:0xd56c,0x0
   4dbc0:	7f 03                	jg     0x4dbc5
   4dbc2:	e9 b6 08             	jmp    0x4e47b
   4dbc5:	c7 06 72 d5 00 00    	mov    WORD PTR ds:0xd572,0x0
   4dbcb:	c7 06 6a d5 00 00    	mov    WORD PTR ds:0xd56a,0x0
   4dbd1:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4dbd5:	6b db 28             	imul   bx,bx,0x28
   4dbd8:	b8 88 01             	mov    ax,0x188
   4dbdb:	8e c0                	mov    es,ax
   4dbdd:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4dbe2:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4dbe5:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4dbe9:	6b db 28             	imul   bx,bx,0x28
   4dbec:	b8 88 01             	mov    ax,0x188
   4dbef:	8e c0                	mov    es,ax
   4dbf1:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4dbf6:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4dbf9:	c7 06 9c d5 00 00    	mov    WORD PTR ds:0xd59c,0x0
   4dbff:	c7 06 b6 d5 01 00    	mov    WORD PTR ds:0xd5b6,0x1
   4dc05:	e9 f1 07             	jmp    0x4e3f9
   4dc08:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dc0b:	6b db 2e             	imul   bx,bx,0x2e
   4dc0e:	a1 b6 d5             	mov    ax,ds:0xd5b6
   4dc11:	d1 e0                	shl    ax,1
   4dc13:	03 d8                	add    bx,ax
   4dc15:	b8 88 01             	mov    ax,0x188
   4dc18:	8e c0                	mov    es,ax
   4dc1a:	26 8b 87 24 9f       	mov    ax,WORD PTR es:[bx-0x60dc]
   4dc1f:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4dc22:	83 7e fa 64          	cmp    WORD PTR [bp-0x6],0x64
   4dc26:	7e 04                	jle    0x4dc2c
   4dc28:	83 6e fa 64          	sub    WORD PTR [bp-0x6],0x64
   4dc2c:	83 3e b6 d5 01       	cmp    WORD PTR ds:0xd5b6,0x1
   4dc31:	75 0b                	jne    0x4dc3e
   4dc33:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   4dc37:	75 05                	jne    0x4dc3e
   4dc39:	c7 46 fa 01 00       	mov    WORD PTR [bp-0x6],0x1
   4dc3e:	83 3e a4 d5 00       	cmp    WORD PTR ds:0xd5a4,0x0
   4dc43:	75 14                	jne    0x4dc59
   4dc45:	a1 4c d5             	mov    ax,ds:0xd54c
   4dc48:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
   4dc4b:	7c 05                	jl     0x4dc52
   4dc4d:	b8 01 00             	mov    ax,0x1
   4dc50:	eb 02                	jmp    0x4dc54
   4dc52:	33 c0                	xor    ax,ax
   4dc54:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4dc57:	eb 05                	jmp    0x4dc5e
   4dc59:	c7 46 f0 01 00       	mov    WORD PTR [bp-0x10],0x1
   4dc5e:	83 3e b6 d5 02       	cmp    WORD PTR ds:0xd5b6,0x2
   4dc63:	75 10                	jne    0x4dc75
   4dc65:	83 7e f0 00          	cmp    WORD PTR [bp-0x10],0x0
   4dc69:	75 0a                	jne    0x4dc75
   4dc6b:	83 3e 5a d5 01       	cmp    WORD PTR ds:0xd55a,0x1
   4dc70:	75 03                	jne    0x4dc75
   4dc72:	e9 a2 05             	jmp    0x4e217
   4dc75:	83 7e f0 00          	cmp    WORD PTR [bp-0x10],0x0
   4dc79:	75 03                	jne    0x4dc7e
   4dc7b:	e9 77 07             	jmp    0x4e3f5
   4dc7e:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   4dc82:	7f 03                	jg     0x4dc87
   4dc84:	e9 6e 07             	jmp    0x4e3f5
   4dc87:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4dc8b:	6b db 28             	imul   bx,bx,0x28
   4dc8e:	b8 88 01             	mov    ax,0x188
   4dc91:	8e c0                	mov    es,ax
   4dc93:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4dc99:	7f 03                	jg     0x4dc9e
   4dc9b:	e9 57 07             	jmp    0x4e3f5
   4dc9e:	a1 6c d5             	mov    ax,ds:0xd56c
   4dca1:	a3 76 d5             	mov    ds:0xd576,ax
   4dca4:	c7 06 74 d5 03 00    	mov    WORD PTR ds:0xd574,0x3
   4dcaa:	c7 06 70 d5 00 00    	mov    WORD PTR ds:0xd570,0x0
   4dcb0:	33 c0                	xor    ax,ax
   4dcb2:	a3 9e d5             	mov    ds:0xd59e,ax
   4dcb5:	a3 a0 d5             	mov    ds:0xd5a0,ax
   4dcb8:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   4dcbc:	7c 03                	jl     0x4dcc1
   4dcbe:	e9 12 01             	jmp    0x4ddd3
   4dcc1:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   4dcc5:	75 03                	jne    0x4dcca
   4dcc7:	e9 09 01             	jmp    0x4ddd3
   4dcca:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   4dcce:	7f 03                	jg     0x4dcd3
   4dcd0:	e9 00 01             	jmp    0x4ddd3
   4dcd3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dcd6:	6b db 5c             	imul   bx,bx,0x5c
   4dcd9:	a1 b6 d5             	mov    ax,ds:0xd5b6
   4dcdc:	d1 e0                	shl    ax,1
   4dcde:	03 d8                	add    bx,ax
   4dce0:	b8 88 01             	mov    ax,0x188
   4dce3:	8e c0                	mov    es,ax
   4dce5:	26 83 bf e0 99 1a    	cmp    WORD PTR es:[bx-0x6620],0x1a
   4dceb:	7d 79                	jge    0x4dd66
   4dced:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dcf0:	6b db 5c             	imul   bx,bx,0x5c
   4dcf3:	a1 b6 d5             	mov    ax,ds:0xd5b6
   4dcf6:	d1 e0                	shl    ax,1
   4dcf8:	03 d8                	add    bx,ax
   4dcfa:	b8 88 01             	mov    ax,0x188
   4dcfd:	8e c0                	mov    es,ax
   4dcff:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   4dd05:	7e 5f                	jle    0x4dd66
   4dd07:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dd0a:	6b db 5c             	imul   bx,bx,0x5c
   4dd0d:	a1 b6 d5             	mov    ax,ds:0xd5b6
   4dd10:	d1 e0                	shl    ax,1
   4dd12:	03 d8                	add    bx,ax
   4dd14:	b8 88 01             	mov    ax,0x188
   4dd17:	8e c0                	mov    es,ax
   4dd19:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   4dd1e:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4dd21:	83 7e f6 2b          	cmp    WORD PTR [bp-0xa],0x2b
   4dd25:	75 05                	jne    0x4dd2c
   4dd27:	c7 46 f6 1a 00       	mov    WORD PTR [bp-0xa],0x1a
   4dd2c:	8b 5e f6             	mov    bx,WORD PTR [bp-0xa]
   4dd2f:	6b db 0e             	imul   bx,bx,0xe
   4dd32:	b8 88 01             	mov    ax,0x188
   4dd35:	8e c0                	mov    es,ax
   4dd37:	26 8b 87 7f 0e       	mov    ax,WORD PTR es:[bx+0xe7f]
   4dd3c:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   4dd3f:	a1 6c d5             	mov    ax,ds:0xd56c
   4dd42:	48                   	dec    ax
   4dd43:	bb 08 00             	mov    bx,0x8
   4dd46:	99                   	cwd
   4dd47:	f7 fb                	idiv   bx
   4dd49:	6b c0 06             	imul   ax,ax,0x6
   4dd4c:	ba 88 01             	mov    dx,0x188
   4dd4f:	8b d8                	mov    bx,ax
   4dd51:	8e c2                	mov    es,dx
   4dd53:	26 8b 87 e0 5b       	mov    ax,WORD PTR es:[bx+0x5be0]
   4dd58:	3b 46 ee             	cmp    ax,WORD PTR [bp-0x12]
   4dd5b:	75 09                	jne    0x4dd66
   4dd5d:	ff 06 a0 d5          	inc    WORD PTR ds:0xd5a0
   4dd61:	83 06 9e d5 02       	add    WORD PTR ds:0xd59e,0x2
   4dd66:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dd69:	6b db 24             	imul   bx,bx,0x24
   4dd6c:	b8 88 01             	mov    ax,0x188
   4dd6f:	8e c0                	mov    es,ax
   4dd71:	26 8b 87 92 9b       	mov    ax,WORD PTR es:[bx-0x646e]
   4dd76:	50                   	push   ax
   4dd77:	a1 6c d5             	mov    ax,ds:0xd56c
   4dd7a:	48                   	dec    ax
   4dd7b:	bb 08 00             	mov    bx,0x8
   4dd7e:	99                   	cwd
   4dd7f:	f7 fb                	idiv   bx
   4dd81:	6b c0 06             	imul   ax,ax,0x6
   4dd84:	ba 88 01             	mov    dx,0x188
   4dd87:	8b d8                	mov    bx,ax
   4dd89:	8e c2                	mov    es,dx
   4dd8b:	58                   	pop    ax
   4dd8c:	26 3b 87 e0 5b       	cmp    ax,WORD PTR es:[bx+0x5be0]
   4dd91:	75 0a                	jne    0x4dd9d
   4dd93:	83 06 a0 d5 02       	add    WORD PTR ds:0xd5a0,0x2
   4dd98:	83 06 9e d5 03       	add    WORD PTR ds:0xd59e,0x3
   4dd9d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dda0:	6b db 24             	imul   bx,bx,0x24
   4dda3:	b8 88 01             	mov    ax,0x188
   4dda6:	8e c0                	mov    es,ax
   4dda8:	26 8b 87 94 9b       	mov    ax,WORD PTR es:[bx-0x646c]
   4ddad:	50                   	push   ax
   4ddae:	a1 6c d5             	mov    ax,ds:0xd56c
   4ddb1:	48                   	dec    ax
   4ddb2:	bb 08 00             	mov    bx,0x8
   4ddb5:	99                   	cwd
   4ddb6:	f7 fb                	idiv   bx
   4ddb8:	6b c0 06             	imul   ax,ax,0x6
   4ddbb:	ba 88 01             	mov    dx,0x188
   4ddbe:	8b d8                	mov    bx,ax
   4ddc0:	8e c2                	mov    es,dx
   4ddc2:	58                   	pop    ax
   4ddc3:	26 3b 87 e0 5b       	cmp    ax,WORD PTR es:[bx+0x5be0]
   4ddc8:	75 09                	jne    0x4ddd3
   4ddca:	ff 0e a0 d5          	dec    WORD PTR ds:0xd5a0
   4ddce:	83 2e 9e d5 02       	sub    WORD PTR ds:0xd59e,0x2
   4ddd3:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4ddd7:	6b db 28             	imul   bx,bx,0x28
   4ddda:	b8 88 01             	mov    ax,0x188
   4dddd:	8e c0                	mov    es,ax
   4dddf:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   4dde4:	a3 48 d5             	mov    ds:0xd548,ax
   4dde7:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4ddea:	6b db 2e             	imul   bx,bx,0x2e
   4dded:	b8 88 01             	mov    ax,0x188
   4ddf0:	8e c0                	mov    es,ax
   4ddf2:	26 8b 87 22 9f       	mov    ax,WORD PTR es:[bx-0x60de]
   4ddf7:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4ddfa:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ddfe:	6b db 28             	imul   bx,bx,0x28
   4de01:	b8 88 01             	mov    ax,0x188
   4de04:	8e c0                	mov    es,ax
   4de06:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   4de0b:	2b 06 c2 d5          	sub    ax,WORD PTR ds:0xd5c2
   4de0f:	03 06 a0 d5          	add    ax,WORD PTR ds:0xd5a0
   4de13:	a3 da d5             	mov    ds:0xd5da,ax
   4de16:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4de19:	6b db 2e             	imul   bx,bx,0x2e
   4de1c:	b8 88 01             	mov    ax,0x188
   4de1f:	8e c0                	mov    es,ax
   4de21:	26 8b 87 1c 9f       	mov    ax,WORD PTR es:[bx-0x60e4]
   4de26:	bb 64 00             	mov    bx,0x64
   4de29:	99                   	cwd
   4de2a:	f7 fb                	idiv   bx
   4de2c:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4de2f:	6a 00                	push   0x0
   4de31:	68 00 80             	push   0x8000
   4de34:	9a 79 17 00 00       	call   0x0:0x1779
   4de39:	99                   	cwd
   4de3a:	50                   	push   ax
   4de3b:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4de3e:	40                   	inc    ax
   4de3f:	52                   	push   dx
   4de40:	99                   	cwd
   4de41:	59                   	pop    cx
   4de42:	5b                   	pop    bx
   4de43:	9a 42 12 00 00       	call   0x0:0x1242
   4de48:	52                   	push   dx
   4de49:	50                   	push   ax
   4de4a:	9a df 12 00 00       	call   0x0:0x12df
   4de4f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4de52:	6b db 2e             	imul   bx,bx,0x2e
   4de55:	ba 88 01             	mov    dx,0x188
   4de58:	8e c2                	mov    es,dx
   4de5a:	26 03 87 1c 9f       	add    ax,WORD PTR es:[bx-0x60e4]
   4de5f:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   4de62:	6b d2 64             	imul   dx,dx,0x64
   4de65:	2b c2                	sub    ax,dx
   4de67:	03 06 9e d5          	add    ax,WORD PTR ds:0xd59e
   4de6b:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4de6e:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4de72:	6b db 28             	imul   bx,bx,0x28
   4de75:	b8 88 01             	mov    ax,0x188
   4de78:	8e c0                	mov    es,ax
   4de7a:	26 83 bf ac a0 00    	cmp    WORD PTR es:[bx-0x5f54],0x0
   4de80:	7e 17                	jle    0x4de99
   4de82:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4de86:	6b db 28             	imul   bx,bx,0x28
   4de89:	b8 88 01             	mov    ax,0x188
   4de8c:	8e c0                	mov    es,ax
   4de8e:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   4de93:	03 46 f8             	add    ax,WORD PTR [bp-0x8]
   4de96:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4de99:	83 3e b6 d5 02       	cmp    WORD PTR ds:0xd5b6,0x2
   4de9e:	75 47                	jne    0x4dee7
   4dea0:	0e                   	push   cs
   4dea1:	e8 cd e4             	call   0x4c371
   4dea4:	83 3e 6e d5 18       	cmp    WORD PTR ds:0xd56e,0x18
   4dea9:	7e 3c                	jle    0x4dee7
   4deab:	90                   	nop
   4deac:	0e                   	push   cs
   4dead:	e8 c8 25             	call   0x40478
   4deb0:	a1 aa d5             	mov    ax,ds:0xd5aa
   4deb3:	bb 64 00             	mov    bx,0x64
   4deb6:	99                   	cwd
   4deb7:	f7 fb                	idiv   bx
   4deb9:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4debc:	6a 00                	push   0x0
   4debe:	68 00 80             	push   0x8000
   4dec1:	9a 79 17 00 00       	call   0x0:0x1779
   4dec6:	99                   	cwd
   4dec7:	50                   	push   ax
   4dec8:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4decb:	40                   	inc    ax
   4decc:	52                   	push   dx
   4decd:	99                   	cwd
   4dece:	59                   	pop    cx
   4decf:	5b                   	pop    bx
   4ded0:	9a 42 12 00 00       	call   0x0:0x1242
   4ded5:	52                   	push   dx
   4ded6:	50                   	push   ax
   4ded7:	9a df 12 00 00       	call   0x0:0x12df
   4dedc:	03 06 a8 d5          	add    ax,WORD PTR ds:0xd5a8
   4dee0:	03 06 9e d5          	add    ax,WORD PTR ds:0xd59e
   4dee4:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4dee7:	83 3e a4 d5 00       	cmp    WORD PTR ds:0xd5a4,0x0
   4deec:	75 15                	jne    0x4df03
   4deee:	a1 4c d5             	mov    ax,ds:0xd54c
   4def1:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   4def4:	7d 04                	jge    0x4defa
   4def6:	33 c0                	xor    ax,ax
   4def8:	eb 06                	jmp    0x4df00
   4defa:	a1 4c d5             	mov    ax,ds:0xd54c
   4defd:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   4df00:	a3 4c d5             	mov    ds:0xd54c,ax
   4df03:	6a 00                	push   0x0
   4df05:	68 00 80             	push   0x8000
   4df08:	9a 79 17 00 00       	call   0x0:0x1779
   4df0d:	99                   	cwd
   4df0e:	50                   	push   ax
   4df0f:	a1 48 d5             	mov    ax,ds:0xd548
   4df12:	05 05 00             	add    ax,0x5
   4df15:	52                   	push   dx
   4df16:	99                   	cwd
   4df17:	59                   	pop    cx
   4df18:	5b                   	pop    bx
   4df19:	9a 42 12 00 00       	call   0x0:0x1242
   4df1e:	52                   	push   dx
   4df1f:	50                   	push   ax
   4df20:	9a df 12 00 00       	call   0x0:0x12df
   4df25:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4df28:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4df2c:	6b db 28             	imul   bx,bx,0x28
   4df2f:	b8 88 01             	mov    ax,0x188
   4df32:	8b 16 6c d5          	mov    dx,WORD PTR ds:0xd56c
   4df36:	8e c0                	mov    es,ax
   4df38:	26 89 97 96 a0       	mov    WORD PTR es:[bx-0x5f6a],dx
   4df3d:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4df41:	6b db 28             	imul   bx,bx,0x28
   4df44:	b8 88 01             	mov    ax,0x188
   4df47:	8e c0                	mov    es,ax
   4df49:	26 83 bf ac a0 00    	cmp    WORD PTR es:[bx-0x5f54],0x0
   4df4f:	7e 05                	jle    0x4df56
   4df51:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
   4df56:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4df59:	3b 06 da d5          	cmp    ax,WORD PTR ds:0xd5da
   4df5d:	7e 03                	jle    0x4df62
   4df5f:	e9 94 02             	jmp    0x4e1f6
   4df62:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4df65:	2b 46 f8             	sub    ax,WORD PTR [bp-0x8]
   4df68:	7d 04                	jge    0x4df6e
   4df6a:	33 c0                	xor    ax,ax
   4df6c:	eb 06                	jmp    0x4df74
   4df6e:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4df71:	2b 46 f8             	sub    ax,WORD PTR [bp-0x8]
   4df74:	a3 70 d5             	mov    ds:0xd570,ax
   4df77:	c7 06 5a d5 00 00    	mov    WORD PTR ds:0xd55a,0x0
   4df7d:	83 3e 70 d5 00       	cmp    WORD PTR ds:0xd570,0x0
   4df82:	7f 03                	jg     0x4df87
   4df84:	e9 f5 00             	jmp    0x4e07c
   4df87:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4df8b:	6b db 28             	imul   bx,bx,0x28
   4df8e:	b8 88 01             	mov    ax,0x188
   4df91:	8e c0                	mov    es,ax
   4df93:	26 c7 87 ae a0 01 00 	mov    WORD PTR es:[bx-0x5f52],0x1
   4df9a:	6a 0f                	push   0xf
   4df9c:	ff 36 6c d5          	push   WORD PTR ds:0xd56c
   4dfa0:	0e                   	push   cs
   4dfa1:	e8 8c dd             	call   0x4bd30
   4dfa4:	83 c4 04             	add    sp,0x4
   4dfa7:	0b c0                	or     ax,ax
   4dfa9:	74 0d                	je     0x4dfb8
   4dfab:	83 3e c2 d5 00       	cmp    WORD PTR ds:0xd5c2,0x0
   4dfb0:	75 06                	jne    0x4dfb8
   4dfb2:	c7 06 72 d5 01 00    	mov    WORD PTR ds:0xd572,0x1
   4dfb8:	6a 13                	push   0x13
   4dfba:	ff 36 6e d5          	push   WORD PTR ds:0xd56e
   4dfbe:	0e                   	push   cs
   4dfbf:	e8 6e dd             	call   0x4bd30
   4dfc2:	83 c4 04             	add    sp,0x4
   4dfc5:	0b c0                	or     ax,ax
   4dfc7:	74 0d                	je     0x4dfd6
   4dfc9:	83 3e c2 d5 00       	cmp    WORD PTR ds:0xd5c2,0x0
   4dfce:	75 06                	jne    0x4dfd6
   4dfd0:	c7 06 6a d5 01 00    	mov    WORD PTR ds:0xd56a,0x1
   4dfd6:	83 3e 6e d5 18       	cmp    WORD PTR ds:0xd56e,0x18
   4dfdb:	7f 03                	jg     0x4dfe0
   4dfdd:	e9 87 00             	jmp    0x4e067
   4dfe0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dfe3:	6b db 5c             	imul   bx,bx,0x5c
   4dfe6:	b8 88 01             	mov    ax,0x188
   4dfe9:	8e c0                	mov    es,ax
   4dfeb:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   4dff0:	d1 e0                	shl    ax,1
   4dff2:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4dff5:	6b db 5c             	imul   bx,bx,0x5c
   4dff8:	03 d8                	add    bx,ax
   4dffa:	b8 88 01             	mov    ax,0x188
   4dffd:	8e c0                	mov    es,ax
   4dfff:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   4e004:	bb 64 00             	mov    bx,0x64
   4e007:	99                   	cwd
   4e008:	f7 fb                	idiv   bx
   4e00a:	83 fa 19             	cmp    dx,0x19
   4e00d:	75 58                	jne    0x4e067
   4e00f:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4e012:	6b db 2e             	imul   bx,bx,0x2e
   4e015:	b8 88 01             	mov    ax,0x188
   4e018:	8e c0                	mov    es,ax
   4e01a:	26 83 bf 2a 9f 0a    	cmp    WORD PTR es:[bx-0x60d6],0xa
   4e020:	7d 45                	jge    0x4e067
   4e022:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4e025:	6b db 2e             	imul   bx,bx,0x2e
   4e028:	b8 88 01             	mov    ax,0x188
   4e02b:	8e c0                	mov    es,ax
   4e02d:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   4e033:	7d 32                	jge    0x4e067
   4e035:	6a 00                	push   0x0
   4e037:	68 00 80             	push   0x8000
   4e03a:	9a 79 17 00 00       	call   0x0:0x1779
   4e03f:	99                   	cwd
   4e040:	50                   	push   ax
   4e041:	52                   	push   dx
   4e042:	33 d2                	xor    dx,dx
   4e044:	b8 64 00             	mov    ax,0x64
   4e047:	59                   	pop    cx
   4e048:	5b                   	pop    bx
   4e049:	9a 42 12 00 00       	call   0x0:0x1242
   4e04e:	52                   	push   dx
   4e04f:	50                   	push   ax
   4e050:	9a df 12 00 00       	call   0x0:0x12df
   4e055:	40                   	inc    ax
   4e056:	3d 50 00             	cmp    ax,0x50
   4e059:	7d 0c                	jge    0x4e067
   4e05b:	c7 06 9a d5 01 00    	mov    WORD PTR ds:0xd59a,0x1
   4e061:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   4e067:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   4e06d:	c7 06 66 d5 03 00    	mov    WORD PTR ds:0xd566,0x3
   4e073:	a1 70 d5             	mov    ax,ds:0xd570
   4e076:	01 06 9c d5          	add    WORD PTR ds:0xd59c,ax
   4e07a:	eb 06                	jmp    0x4e082
   4e07c:	c7 06 66 d5 04 00    	mov    WORD PTR ds:0xd566,0x4
   4e082:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e086:	6b db 28             	imul   bx,bx,0x28
   4e089:	b8 88 01             	mov    ax,0x188
   4e08c:	8b 16 70 d5          	mov    dx,WORD PTR ds:0xd570
   4e090:	8e c0                	mov    es,ax
   4e092:	26 29 97 8a a0       	sub    WORD PTR es:[bx-0x5f76],dx
   4e097:	6a 01                	push   0x1
   4e099:	ff 36 6e d5          	push   WORD PTR ds:0xd56e
   4e09d:	90                   	nop
   4e09e:	0e                   	push   cs
   4e09f:	e8 0e 66             	call   0x446b0
   4e0a2:	83 c4 04             	add    sp,0x4
   4e0a5:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e0a9:	6b db 28             	imul   bx,bx,0x28
   4e0ac:	b8 88 01             	mov    ax,0x188
   4e0af:	8e c0                	mov    es,ax
   4e0b1:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4e0b7:	7c 03                	jl     0x4e0bc
   4e0b9:	e9 a2 01             	jmp    0x4e25e
   4e0bc:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e0c0:	6b db 28             	imul   bx,bx,0x28
   4e0c3:	b8 88 01             	mov    ax,0x188
   4e0c6:	8e c0                	mov    es,ax
   4e0c8:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4e0cd:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   4e0d0:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   4e0d3:	6b db 2e             	imul   bx,bx,0x2e
   4e0d6:	b8 88 01             	mov    ax,0x188
   4e0d9:	8e c0                	mov    es,ax
   4e0db:	26 ff b7 38 9f       	push   WORD PTR es:[bx-0x60c8]
   4e0e0:	0e                   	push   cs
   4e0e1:	e8 a4 bd             	call   0x49e88
   4e0e4:	59                   	pop    cx
   4e0e5:	6b c0 05             	imul   ax,ax,0x5
   4e0e8:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   4e0eb:	6b db 2e             	imul   bx,bx,0x2e
   4e0ee:	ba 88 01             	mov    dx,0x188
   4e0f1:	8e c2                	mov    es,dx
   4e0f3:	26 8b 97 1a 9f       	mov    dx,WORD PTR es:[bx-0x60e6]
   4e0f8:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   4e0fb:	6b db 2e             	imul   bx,bx,0x2e
   4e0fe:	b9 88 01             	mov    cx,0x188
   4e101:	8e c1                	mov    es,cx
   4e103:	50                   	push   ax
   4e104:	26 8b 87 2a 9f       	mov    ax,WORD PTR es:[bx-0x60d6]
   4e109:	bb 0a 00             	mov    bx,0xa
   4e10c:	52                   	push   dx
   4e10d:	99                   	cwd
   4e10e:	f7 fb                	idiv   bx
   4e110:	5a                   	pop    dx
   4e111:	03 d0                	add    dx,ax
   4e113:	58                   	pop    ax
   4e114:	03 d0                	add    dx,ax
   4e116:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   4e119:	6b db 2e             	imul   bx,bx,0x2e
   4e11c:	b8 88 01             	mov    ax,0x188
   4e11f:	8e c0                	mov    es,ax
   4e121:	26 03 97 1e 9f       	add    dx,WORD PTR es:[bx-0x60e2]
   4e126:	52                   	push   dx
   4e127:	8b 5e ec             	mov    bx,WORD PTR [bp-0x14]
   4e12a:	6b db 2e             	imul   bx,bx,0x2e
   4e12d:	b8 88 01             	mov    ax,0x188
   4e130:	8e c0                	mov    es,ax
   4e132:	26 ff b7 2e 9f       	push   WORD PTR es:[bx-0x60d2]
   4e137:	0e                   	push   cs
   4e138:	e8 4d bd             	call   0x49e88
   4e13b:	59                   	pop    cx
   4e13c:	6b c0 03             	imul   ax,ax,0x3
   4e13f:	5a                   	pop    dx
   4e140:	03 d0                	add    dx,ax
   4e142:	89 56 ea             	mov    WORD PTR [bp-0x16],dx
   4e145:	c7 06 74 d5 02 00    	mov    WORD PTR ds:0xd574,0x2
   4e14b:	c7 06 66 d5 02 00    	mov    WORD PTR ds:0xd566,0x2
   4e151:	6a 0a                	push   0xa
   4e153:	ff 36 6e d5          	push   WORD PTR ds:0xd56e
   4e157:	90                   	nop
   4e158:	0e                   	push   cs
   4e159:	e8 54 65             	call   0x446b0
   4e15c:	83 c4 04             	add    sp,0x4
   4e15f:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e163:	6b db 28             	imul   bx,bx,0x28
   4e166:	b8 88 01             	mov    ax,0x188
   4e169:	8e c0                	mov    es,ax
   4e16b:	26 83 bf 90 a0 05    	cmp    WORD PTR es:[bx-0x5f70],0x5
   4e171:	7d 36                	jge    0x4e1a9
   4e173:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e177:	6b db 28             	imul   bx,bx,0x28
   4e17a:	b8 88 01             	mov    ax,0x188
   4e17d:	8e c0                	mov    es,ax
   4e17f:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4e184:	6b db 5c             	imul   bx,bx,0x5c
   4e187:	b8 88 01             	mov    ax,0x188
   4e18a:	8e c0                	mov    es,ax
   4e18c:	26 83 87 ac 99 0a    	add    WORD PTR es:[bx-0x6654],0xa
   4e192:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e196:	6b db 28             	imul   bx,bx,0x28
   4e199:	b8 88 01             	mov    ax,0x188
   4e19c:	8e c0                	mov    es,ax
   4e19e:	26 ff b7 90 a0       	push   WORD PTR es:[bx-0x5f70]
   4e1a3:	90                   	nop
   4e1a4:	0e                   	push   cs
   4e1a5:	e8 56 65             	call   0x446fe
   4e1a8:	59                   	pop    cx
   4e1a9:	c7 46 e8 19 00       	mov    WORD PTR [bp-0x18],0x19
   4e1ae:	eb 3e                	jmp    0x4e1ee
   4e1b0:	8b 5e e8             	mov    bx,WORD PTR [bp-0x18]
   4e1b3:	6b db 28             	imul   bx,bx,0x28
   4e1b6:	b8 88 01             	mov    ax,0x188
   4e1b9:	8e c0                	mov    es,ax
   4e1bb:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4e1c1:	7e 28                	jle    0x4e1eb
   4e1c3:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
   4e1c6:	bb 0a 00             	mov    bx,0xa
   4e1c9:	99                   	cwd
   4e1ca:	f7 fb                	idiv   bx
   4e1cc:	3d 01 00             	cmp    ax,0x1
   4e1cf:	7d 05                	jge    0x4e1d6
   4e1d1:	b8 01 00             	mov    ax,0x1
   4e1d4:	eb 09                	jmp    0x4e1df
   4e1d6:	8b 46 ea             	mov    ax,WORD PTR [bp-0x16]
   4e1d9:	bb 0a 00             	mov    bx,0xa
   4e1dc:	99                   	cwd
   4e1dd:	f7 fb                	idiv   bx
   4e1df:	50                   	push   ax
   4e1e0:	ff 76 e8             	push   WORD PTR [bp-0x18]
   4e1e3:	90                   	nop
   4e1e4:	0e                   	push   cs
   4e1e5:	e8 c8 64             	call   0x446b0
   4e1e8:	83 c4 04             	add    sp,0x4
   4e1eb:	ff 46 e8             	inc    WORD PTR [bp-0x18]
   4e1ee:	83 7e e8 1c          	cmp    WORD PTR [bp-0x18],0x1c
   4e1f2:	7e bc                	jle    0x4e1b0
   4e1f4:	eb 68                	jmp    0x4e25e
   4e1f6:	83 3e b6 d5 02       	cmp    WORD PTR ds:0xd5b6,0x2
   4e1fb:	75 07                	jne    0x4e204
   4e1fd:	83 3e 5a d5 01       	cmp    WORD PTR ds:0xd55a,0x1
   4e202:	74 13                	je     0x4e217
   4e204:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4e207:	6b db 2e             	imul   bx,bx,0x2e
   4e20a:	b8 88 01             	mov    ax,0x188
   4e20d:	8e c0                	mov    es,ax
   4e20f:	26 83 bf 28 9f 00    	cmp    WORD PTR es:[bx-0x60d8],0x0
   4e215:	75 3b                	jne    0x4e252
   4e217:	83 3e a4 d5 00       	cmp    WORD PTR ds:0xd5a4,0x0
   4e21c:	75 06                	jne    0x4e224
   4e21e:	c7 06 4c d5 00 00    	mov    WORD PTR ds:0xd54c,0x0
   4e224:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   4e227:	05 fb ff             	add    ax,0xfffb
   4e22a:	3b 06 da d5          	cmp    ax,WORD PTR ds:0xd5da
   4e22e:	7e 22                	jle    0x4e252
   4e230:	83 3e 68 d5 00       	cmp    WORD PTR ds:0xd568,0x0
   4e235:	75 1b                	jne    0x4e252
   4e237:	83 3e b4 d5 00       	cmp    WORD PTR ds:0xd5b4,0x0
   4e23c:	75 14                	jne    0x4e252
   4e23e:	83 3e b2 d5 01       	cmp    WORD PTR ds:0xd5b2,0x1
   4e243:	75 0d                	jne    0x4e252
   4e245:	83 3e c2 d5 00       	cmp    WORD PTR ds:0xd5c2,0x0
   4e24a:	75 06                	jne    0x4e252
   4e24c:	c7 06 68 d5 01 00    	mov    WORD PTR ds:0xd568,0x1
   4e252:	c7 06 66 d5 05 00    	mov    WORD PTR ds:0xd566,0x5
   4e258:	c7 06 5a d5 01 00    	mov    WORD PTR ds:0xd55a,0x1
   4e25e:	83 3e b4 d5 00       	cmp    WORD PTR ds:0xd5b4,0x0
   4e263:	75 52                	jne    0x4e2b7
   4e265:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4e269:	6b db 28             	imul   bx,bx,0x28
   4e26c:	b8 88 01             	mov    ax,0x188
   4e26f:	8e c0                	mov    es,ax
   4e271:	26 8b 87 8e a0       	mov    ax,WORD PTR es:[bx-0x5f72]
   4e276:	05 02 00             	add    ax,0x2
   4e279:	bb 04 00             	mov    bx,0x4
   4e27c:	99                   	cwd
   4e27d:	f7 fb                	idiv   bx
   4e27f:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e283:	6b db 28             	imul   bx,bx,0x28
   4e286:	b8 88 01             	mov    ax,0x188
   4e289:	8e c0                	mov    es,ax
   4e28b:	26 89 97 8e a0       	mov    WORD PTR es:[bx-0x5f72],dx
   4e290:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e294:	6b db 28             	imul   bx,bx,0x28
   4e297:	b8 88 01             	mov    ax,0x188
   4e29a:	8e c0                	mov    es,ax
   4e29c:	26 83 bf 8e a0 00    	cmp    WORD PTR es:[bx-0x5f72],0x0
   4e2a2:	75 13                	jne    0x4e2b7
   4e2a4:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e2a8:	6b db 28             	imul   bx,bx,0x28
   4e2ab:	b8 88 01             	mov    ax,0x188
   4e2ae:	8e c0                	mov    es,ax
   4e2b0:	26 c7 87 8e a0 04 00 	mov    WORD PTR es:[bx-0x5f72],0x4
   4e2b7:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4e2bb:	6b db 28             	imul   bx,bx,0x28
   4e2be:	b8 88 01             	mov    ax,0x188
   4e2c1:	8e c0                	mov    es,ax
   4e2c3:	26 83 87 8e a0 04    	add    WORD PTR es:[bx-0x5f72],0x4
   4e2c9:	0e                   	push   cs
   4e2ca:	e8 a4 e0             	call   0x4c371
   4e2cd:	83 3e 70 d5 00       	cmp    WORD PTR ds:0xd570,0x0
   4e2d2:	7f 03                	jg     0x4e2d7
   4e2d4:	e9 b3 00             	jmp    0x4e38a
   4e2d7:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4e2db:	6b db 28             	imul   bx,bx,0x28
   4e2de:	b8 88 01             	mov    ax,0x188
   4e2e1:	8e c0                	mov    es,ax
   4e2e3:	26 83 bf aa a0 00    	cmp    WORD PTR es:[bx-0x5f56],0x0
   4e2e9:	75 03                	jne    0x4e2ee
   4e2eb:	e9 9c 00             	jmp    0x4e38a
   4e2ee:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e2f2:	6b db 28             	imul   bx,bx,0x28
   4e2f5:	b8 88 01             	mov    ax,0x188
   4e2f8:	8e c0                	mov    es,ax
   4e2fa:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4e300:	7f 03                	jg     0x4e305
   4e302:	e9 85 00             	jmp    0x4e38a
   4e305:	a1 de d5             	mov    ax,ds:0xd5de
   4e308:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   4e30b:	a1 e0 d5             	mov    ax,ds:0xd5e0
   4e30e:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   4e311:	c7 06 a2 d5 01 00    	mov    WORD PTR ds:0xd5a2,0x1
   4e317:	a1 6e d5             	mov    ax,ds:0xd56e
   4e31a:	a3 de d5             	mov    ds:0xd5de,ax
   4e31d:	a1 6c d5             	mov    ax,ds:0xd56c
   4e320:	a3 e0 d5             	mov    ds:0xd5e0,ax
   4e323:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4e327:	6b db 28             	imul   bx,bx,0x28
   4e32a:	b8 88 01             	mov    ax,0x188
   4e32d:	8e c0                	mov    es,ax
   4e32f:	26 8b 87 aa a0       	mov    ax,WORD PTR es:[bx-0x5f56]
   4e334:	a3 e2 d5             	mov    ds:0xd5e2,ax
   4e337:	90                   	nop
   4e338:	0e                   	push   cs
   4e339:	e8 fd 3d             	call   0x42139
   4e33c:	83 3e 74 d5 06       	cmp    WORD PTR ds:0xd574,0x6
   4e341:	74 29                	je     0x4e36c
   4e343:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e347:	6b db 28             	imul   bx,bx,0x28
   4e34a:	b8 88 01             	mov    ax,0x188
   4e34d:	8e c0                	mov    es,ax
   4e34f:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4e355:	7d 15                	jge    0x4e36c
   4e357:	0e                   	push   cs
   4e358:	e8 16 e0             	call   0x4c371
   4e35b:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   4e35f:	0e                   	push   cs
   4e360:	e8 3b da             	call   0x4bd9e
   4e363:	59                   	pop    cx
   4e364:	6a 0a                	push   0xa
   4e366:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4e36b:	59                   	pop    cx
   4e36c:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   4e36f:	a3 e0 d5             	mov    ds:0xd5e0,ax
   4e372:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   4e375:	a3 de d5             	mov    ds:0xd5de,ax
   4e378:	a1 de d5             	mov    ax,ds:0xd5de
   4e37b:	a3 76 d5             	mov    ds:0xd576,ax
   4e37e:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   4e384:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   4e38a:	c7 06 a2 d5 00 00    	mov    WORD PTR ds:0xd5a2,0x0
   4e390:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e394:	6b db 28             	imul   bx,bx,0x28
   4e397:	b8 88 01             	mov    ax,0x188
   4e39a:	8e c0                	mov    es,ax
   4e39c:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4e3a2:	7d 2b                	jge    0x4e3cf
   4e3a4:	6a 00                	push   0x0
   4e3a6:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e3aa:	6b db 28             	imul   bx,bx,0x28
   4e3ad:	b8 88 01             	mov    ax,0x188
   4e3b0:	8e c0                	mov    es,ax
   4e3b2:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   4e3b7:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4e3bb:	6b db 28             	imul   bx,bx,0x28
   4e3be:	b8 88 01             	mov    ax,0x188
   4e3c1:	8e c0                	mov    es,ax
   4e3c3:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   4e3c8:	0e                   	push   cs
   4e3c9:	e8 ab c4             	call   0x4a877
   4e3cc:	83 c4 06             	add    sp,0x6
   4e3cf:	6a 0a                	push   0xa
   4e3d1:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4e3d6:	59                   	pop    cx
   4e3d7:	a1 6e d5             	mov    ax,ds:0xd56e
   4e3da:	a3 76 d5             	mov    ds:0xd576,ax
   4e3dd:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   4e3e3:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4e3e7:	6b db 28             	imul   bx,bx,0x28
   4e3ea:	b8 88 01             	mov    ax,0x188
   4e3ed:	8e c0                	mov    es,ax
   4e3ef:	26 83 af 8e a0 04    	sub    WORD PTR es:[bx-0x5f72],0x4
   4e3f5:	ff 06 b6 d5          	inc    WORD PTR ds:0xd5b6
   4e3f9:	83 3e b6 d5 02       	cmp    WORD PTR ds:0xd5b6,0x2
   4e3fe:	7f 03                	jg     0x4e403
   4e400:	e9 05 f8             	jmp    0x4dc08
   4e403:	b8 88 01             	mov    ax,0x188
   4e406:	33 d2                	xor    dx,dx
   4e408:	8e c0                	mov    es,ax
   4e40a:	26 89 16 36 26       	mov    WORD PTR es:0x2636,dx
   4e40f:	8b c2                	mov    ax,dx
   4e411:	ba 88 01             	mov    dx,0x188
   4e414:	8e c2                	mov    es,dx
   4e416:	26 a3 34 26          	mov    es:0x2634,ax
   4e41a:	c7 46 e8 01 00       	mov    WORD PTR [bp-0x18],0x1
   4e41f:	eb 34                	jmp    0x4e455
   4e421:	8b 5e e8             	mov    bx,WORD PTR [bp-0x18]
   4e424:	6b db 28             	imul   bx,bx,0x28
   4e427:	b8 88 01             	mov    ax,0x188
   4e42a:	8e c0                	mov    es,ax
   4e42c:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   4e432:	7c 1e                	jl     0x4e452
   4e434:	8b 5e e8             	mov    bx,WORD PTR [bp-0x18]
   4e437:	6b db 28             	imul   bx,bx,0x28
   4e43a:	b8 88 01             	mov    ax,0x188
   4e43d:	8e c0                	mov    es,ax
   4e43f:	26 8b 9f 98 a0       	mov    bx,WORD PTR es:[bx-0x5f68]
   4e444:	d1 e3                	shl    bx,1
   4e446:	b8 88 01             	mov    ax,0x188
   4e449:	8e c0                	mov    es,ax
   4e44b:	26 c7 87 32 26 01 00 	mov    WORD PTR es:[bx+0x2632],0x1
   4e452:	ff 46 e8             	inc    WORD PTR [bp-0x18]
   4e455:	83 7e e8 1c          	cmp    WORD PTR [bp-0x18],0x1c
   4e459:	7e c6                	jle    0x4e421
   4e45b:	b8 88 01             	mov    ax,0x188
   4e45e:	8e c0                	mov    es,ax
   4e460:	26 83 3e 34 26 00    	cmp    WORD PTR es:0x2634,0x0
   4e466:	74 0d                	je     0x4e475
   4e468:	b8 88 01             	mov    ax,0x188
   4e46b:	8e c0                	mov    es,ax
   4e46d:	26 83 3e 36 26 00    	cmp    WORD PTR es:0x2636,0x0
   4e473:	75 06                	jne    0x4e47b
   4e475:	c7 06 2e 63 01 00    	mov    WORD PTR ds:0x632e,0x1
   4e47b:	c9                   	leave
   4e47c:	cb                   	retf
   4e47d:	55                   	push   bp
   4e47e:	8b ec                	mov    bp,sp
   4e480:	83 ec 0a             	sub    sp,0xa
   4e483:	c7 06 7c d5 01 00    	mov    WORD PTR ds:0xd57c,0x1
   4e489:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4e48d:	6b db 28             	imul   bx,bx,0x28
   4e490:	b8 88 01             	mov    ax,0x188
   4e493:	8e c0                	mov    es,ax
   4e495:	26 8b 9f 96 a0       	mov    bx,WORD PTR es:[bx-0x5f6a]
   4e49a:	6b db 28             	imul   bx,bx,0x28
   4e49d:	b8 88 01             	mov    ax,0x188
   4e4a0:	8e c0                	mov    es,ax
   4e4a2:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4e4a8:	7e 3c                	jle    0x4e4e6
   4e4aa:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4e4ae:	6b db 28             	imul   bx,bx,0x28
   4e4b1:	b8 88 01             	mov    ax,0x188
   4e4b4:	8e c0                	mov    es,ax
   4e4b6:	26 8b 87 96 a0       	mov    ax,WORD PTR es:[bx-0x5f6a]
   4e4bb:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4e4be:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4e4c1:	6b db 28             	imul   bx,bx,0x28
   4e4c4:	b8 88 01             	mov    ax,0x188
   4e4c7:	8e c0                	mov    es,ax
   4e4c9:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4e4ce:	a3 7a d5             	mov    ds:0xd57a,ax
   4e4d1:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4e4d4:	6b db 28             	imul   bx,bx,0x28
   4e4d7:	b8 88 01             	mov    ax,0x188
   4e4da:	8e c0                	mov    es,ax
   4e4dc:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4e4e1:	a3 78 d5             	mov    ds:0xd578,ax
   4e4e4:	eb 2e                	jmp    0x4e514
   4e4e6:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4e4ea:	6b db 28             	imul   bx,bx,0x28
   4e4ed:	b8 88 01             	mov    ax,0x188
   4e4f0:	8e c0                	mov    es,ax
   4e4f2:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4e4f7:	a3 7a d5             	mov    ds:0xd57a,ax
   4e4fa:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4e4fe:	6b db 28             	imul   bx,bx,0x28
   4e501:	b8 88 01             	mov    ax,0x188
   4e504:	8e c0                	mov    es,ax
   4e506:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4e50b:	a3 78 d5             	mov    ds:0xd578,ax
   4e50e:	a1 de d5             	mov    ax,ds:0xd5de
   4e511:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4e514:	c7 06 e0 d5 00 00    	mov    WORD PTR ds:0xd5e0,0x0
   4e51a:	ff 76 fc             	push   WORD PTR [bp-0x4]
   4e51d:	0e                   	push   cs
   4e51e:	e8 6f c3             	call   0x4a890
   4e521:	59                   	pop    cx
   4e522:	0e                   	push   cs
   4e523:	e8 4b de             	call   0x4c371
   4e526:	6a 01                	push   0x1
   4e528:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   4e52d:	59                   	pop    cx
   4e52e:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4e531:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4e534:	c1 f8 08             	sar    ax,0x8
   4e537:	a3 d6 d5             	mov    ds:0xd5d6,ax
   4e53a:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4e53d:	25 ff 00             	and    ax,0xff
   4e540:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4e543:	16                   	push   ss
   4e544:	8d 46 f6             	lea    ax,[bp-0xa]
   4e547:	50                   	push   ax
   4e548:	9a 2a 00 80 01       	call   0x180:0x2a
   4e54d:	83 c4 04             	add    sp,0x4
   4e550:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   4e555:	74 05                	je     0x4e55c
   4e557:	9a e3 01 40 00       	call   0x40:0x1e3
   4e55c:	b8 88 01             	mov    ax,0x188
   4e55f:	8e c0                	mov    es,ax
   4e561:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4e565:	50                   	push   ax
   4e566:	9a 6b 02 30 00       	call   0x30:0x26b
   4e56b:	59                   	pop    cx
   4e56c:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   4e571:	77 16                	ja     0x4e589
   4e573:	9a 15 05 30 00       	call   0x30:0x515
   4e578:	0b c0                	or     ax,ax
   4e57a:	74 aa                	je     0x4e526
   4e57c:	b8 88 01             	mov    ax,0x188
   4e57f:	8e c0                	mov    es,ax
   4e581:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   4e587:	74 9d                	je     0x4e526
   4e589:	9a 15 05 30 00       	call   0x30:0x515
   4e58e:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4e591:	83 3e d6 d5 47       	cmp    WORD PTR ds:0xd5d6,0x47
   4e596:	74 4d                	je     0x4e5e5
   4e598:	83 3e d6 d5 48       	cmp    WORD PTR ds:0xd5d6,0x48
   4e59d:	74 46                	je     0x4e5e5
   4e59f:	83 3e d6 d5 49       	cmp    WORD PTR ds:0xd5d6,0x49
   4e5a4:	74 3f                	je     0x4e5e5
   4e5a6:	83 3e d6 d5 4b       	cmp    WORD PTR ds:0xd5d6,0x4b
   4e5ab:	74 38                	je     0x4e5e5
   4e5ad:	83 3e d6 d5 4d       	cmp    WORD PTR ds:0xd5d6,0x4d
   4e5b2:	74 31                	je     0x4e5e5
   4e5b4:	83 3e d6 d5 4f       	cmp    WORD PTR ds:0xd5d6,0x4f
   4e5b9:	74 2a                	je     0x4e5e5
   4e5bb:	83 3e d6 d5 50       	cmp    WORD PTR ds:0xd5d6,0x50
   4e5c0:	74 23                	je     0x4e5e5
   4e5c2:	83 3e d6 d5 51       	cmp    WORD PTR ds:0xd5d6,0x51
   4e5c7:	74 1c                	je     0x4e5e5
   4e5c9:	83 7e fe 14          	cmp    WORD PTR [bp-0x2],0x14
   4e5cd:	7f 03                	jg     0x4e5d2
   4e5cf:	e9 84 00             	jmp    0x4e656
   4e5d2:	83 7e fe 1d          	cmp    WORD PTR [bp-0x2],0x1d
   4e5d6:	7d 7e                	jge    0x4e656
   4e5d8:	b8 88 01             	mov    ax,0x188
   4e5db:	8e c0                	mov    es,ax
   4e5dd:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   4e5e3:	75 71                	jne    0x4e656
   4e5e5:	83 7e fe 14          	cmp    WORD PTR [bp-0x2],0x14
   4e5e9:	7e 64                	jle    0x4e64f
   4e5eb:	83 7e fe 1d          	cmp    WORD PTR [bp-0x2],0x1d
   4e5ef:	7d 5e                	jge    0x4e64f
   4e5f1:	b8 88 01             	mov    ax,0x188
   4e5f4:	8e c0                	mov    es,ax
   4e5f6:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   4e5fc:	74 51                	je     0x4e64f
   4e5fe:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4e601:	83 c3 ec             	add    bx,0xffec
   4e604:	4b                   	dec    bx
   4e605:	83 fb 07             	cmp    bx,0x7
   4e608:	77 45                	ja     0x4e64f
   4e60a:	d1 e3                	shl    bx,1
   4e60c:	2e ff a7 a8 4d       	jmp    WORD PTR cs:[bx+0x4da8]
   4e611:	c7 06 d6 d5 47 00    	mov    WORD PTR ds:0xd5d6,0x47
   4e617:	eb 36                	jmp    0x4e64f
   4e619:	c7 06 d6 d5 48 00    	mov    WORD PTR ds:0xd5d6,0x48
   4e61f:	eb 2e                	jmp    0x4e64f
   4e621:	c7 06 d6 d5 49 00    	mov    WORD PTR ds:0xd5d6,0x49
   4e627:	eb 26                	jmp    0x4e64f
   4e629:	c7 06 d6 d5 4b 00    	mov    WORD PTR ds:0xd5d6,0x4b
   4e62f:	eb 1e                	jmp    0x4e64f
   4e631:	c7 06 d6 d5 4d 00    	mov    WORD PTR ds:0xd5d6,0x4d
   4e637:	eb 16                	jmp    0x4e64f
   4e639:	c7 06 d6 d5 4f 00    	mov    WORD PTR ds:0xd5d6,0x4f
   4e63f:	eb 0e                	jmp    0x4e64f
   4e641:	c7 06 d6 d5 50 00    	mov    WORD PTR ds:0xd5d6,0x50
   4e647:	eb 06                	jmp    0x4e64f
   4e649:	c7 06 d6 d5 51 00    	mov    WORD PTR ds:0xd5d6,0x51
   4e64f:	0e                   	push   cs
   4e650:	e8 36 e3             	call   0x4c989
   4e653:	e9 cc fe             	jmp    0x4e522
   4e656:	83 7e fe 20          	cmp    WORD PTR [bp-0x2],0x20
   4e65a:	74 06                	je     0x4e662
   4e65c:	83 7e fe 21          	cmp    WORD PTR [bp-0x2],0x21
   4e660:	75 0d                	jne    0x4e66f
   4e662:	b8 88 01             	mov    ax,0x188
   4e665:	8e c0                	mov    es,ax
   4e667:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   4e66d:	74 0f                	je     0x4e67e
   4e66f:	83 7e f6 73          	cmp    WORD PTR [bp-0xa],0x73
   4e673:	74 09                	je     0x4e67e
   4e675:	83 7e f6 6f          	cmp    WORD PTR [bp-0xa],0x6f
   4e679:	74 03                	je     0x4e67e
   4e67b:	e9 da 01             	jmp    0x4e858
   4e67e:	83 7e fe 20          	cmp    WORD PTR [bp-0x2],0x20
   4e682:	74 09                	je     0x4e68d
   4e684:	83 7e f6 73          	cmp    WORD PTR [bp-0xa],0x73
   4e688:	74 03                	je     0x4e68d
   4e68a:	e9 9d 00             	jmp    0x4e72a
   4e68d:	c7 06 d6 d5 1f 00    	mov    WORD PTR ds:0xd5d6,0x1f
   4e693:	9a 04 02 30 00       	call   0x30:0x204
   4e698:	6a 00                	push   0x0
   4e69a:	68 f8 00             	push   0xf8
   4e69d:	68 92 00             	push   0x92
   4e6a0:	68 1b 01             	push   0x11b
   4e6a3:	68 92 00             	push   0x92
   4e6a6:	68 f7 00             	push   0xf7
   4e6a9:	9a f5 13 28 00       	call   0x28:0x13f5
   4e6ae:	83 c4 0c             	add    sp,0xc
   4e6b1:	6a 00                	push   0x0
   4e6b3:	68 f8 00             	push   0xf8
   4e6b6:	68 9f 00             	push   0x9f
   4e6b9:	68 04 01             	push   0x104
   4e6bc:	68 92 00             	push   0x92
   4e6bf:	68 f7 00             	push   0xf7
   4e6c2:	9a f5 13 28 00       	call   0x28:0x13f5
   4e6c7:	83 c4 0c             	add    sp,0xc
   4e6ca:	6a 00                	push   0x0
   4e6cc:	6a 06                	push   0x6
   4e6ce:	68 a0 00             	push   0xa0
   4e6d1:	68 2a 01             	push   0x12a
   4e6d4:	68 a0 00             	push   0xa0
   4e6d7:	68 05 01             	push   0x105
   4e6da:	9a f5 13 28 00       	call   0x28:0x13f5
   4e6df:	83 c4 0c             	add    sp,0xc
   4e6e2:	6a 00                	push   0x0
   4e6e4:	6a 06                	push   0x6
   4e6e6:	68 a0 00             	push   0xa0
   4e6e9:	68 2a 01             	push   0x12a
   4e6ec:	68 92 00             	push   0x92
   4e6ef:	68 1c 01             	push   0x11c
   4e6f2:	9a f5 13 28 00       	call   0x28:0x13f5
   4e6f7:	83 c4 0c             	add    sp,0xc
   4e6fa:	b8 88 01             	mov    ax,0x188
   4e6fd:	8e c0                	mov    es,ax
   4e6ff:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4e703:	50                   	push   ax
   4e704:	9a 69 00 30 00       	call   0x30:0x69
   4e709:	59                   	pop    cx
   4e70a:	b8 88 01             	mov    ax,0x188
   4e70d:	8e c0                	mov    es,ax
   4e70f:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4e713:	50                   	push   ax
   4e714:	9a 6b 02 30 00       	call   0x30:0x26b
   4e719:	59                   	pop    cx
   4e71a:	b8 88 01             	mov    ax,0x188
   4e71d:	8e c0                	mov    es,ax
   4e71f:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   4e725:	75 e3                	jne    0x4e70a
   4e727:	e9 91 00             	jmp    0x4e7bb
   4e72a:	83 7e fe 21          	cmp    WORD PTR [bp-0x2],0x21
   4e72e:	74 09                	je     0x4e739
   4e730:	83 7e f6 6f          	cmp    WORD PTR [bp-0xa],0x6f
   4e734:	74 03                	je     0x4e739
   4e736:	e9 82 00             	jmp    0x4e7bb
   4e739:	c7 06 d6 d5 18 00    	mov    WORD PTR ds:0xd5d6,0x18
   4e73f:	9a 04 02 30 00       	call   0x30:0x204
   4e744:	6a 00                	push   0x0
   4e746:	68 f8 00             	push   0xf8
   4e749:	68 92 00             	push   0x92
   4e74c:	68 40 01             	push   0x140
   4e74f:	68 92 00             	push   0x92
   4e752:	68 1e 01             	push   0x11e
   4e755:	9a f5 13 28 00       	call   0x28:0x13f5
   4e75a:	83 c4 0c             	add    sp,0xc
   4e75d:	6a 00                	push   0x0
   4e75f:	68 f8 00             	push   0xf8
   4e762:	68 9f 00             	push   0x9f
   4e765:	68 2b 01             	push   0x12b
   4e768:	68 92 00             	push   0x92
   4e76b:	68 1e 01             	push   0x11e
   4e76e:	9a f5 13 28 00       	call   0x28:0x13f5
   4e773:	83 c4 0c             	add    sp,0xc
   4e776:	6a 00                	push   0x0
   4e778:	6a 06                	push   0x6
   4e77a:	68 a0 00             	push   0xa0
   4e77d:	68 40 01             	push   0x140
   4e780:	68 a0 00             	push   0xa0
   4e783:	68 2c 01             	push   0x12c
   4e786:	9a f5 13 28 00       	call   0x28:0x13f5
   4e78b:	83 c4 0c             	add    sp,0xc
   4e78e:	b8 88 01             	mov    ax,0x188
   4e791:	8e c0                	mov    es,ax
   4e793:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4e797:	50                   	push   ax
   4e798:	9a 69 00 30 00       	call   0x30:0x69
   4e79d:	59                   	pop    cx
   4e79e:	b8 88 01             	mov    ax,0x188
   4e7a1:	8e c0                	mov    es,ax
   4e7a3:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4e7a7:	50                   	push   ax
   4e7a8:	9a 6b 02 30 00       	call   0x30:0x26b
   4e7ad:	59                   	pop    cx
   4e7ae:	b8 88 01             	mov    ax,0x188
   4e7b1:	8e c0                	mov    es,ax
   4e7b3:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   4e7b9:	75 e3                	jne    0x4e79e
   4e7bb:	b8 1e 00             	mov    ax,0x1e
   4e7be:	2b 06 d6 d5          	sub    ax,WORD PTR ds:0xd5d6
   4e7c2:	50                   	push   ax
   4e7c3:	0e                   	push   cs
   4e7c4:	e8 c1 b6             	call   0x49e88
   4e7c7:	59                   	pop    cx
   4e7c8:	6b c0 ff             	imul   ax,ax,0xffff
   4e7cb:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4e7ce:	8b 1e 7a d5          	mov    bx,WORD PTR ds:0xd57a
   4e7d2:	6b db 38             	imul   bx,bx,0x38
   4e7d5:	a1 78 d5             	mov    ax,ds:0xd578
   4e7d8:	d1 e0                	shl    ax,1
   4e7da:	03 d8                	add    bx,ax
   4e7dc:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4e7e0:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4e7e3:	6a 18                	push   0x18
   4e7e5:	6a 01                	push   0x1
   4e7e7:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4e7ea:	16                   	push   ss
   4e7eb:	8d 46 f8             	lea    ax,[bp-0x8]
   4e7ee:	50                   	push   ax
   4e7ef:	0e                   	push   cs
   4e7f0:	e8 5f b6             	call   0x49e52
   4e7f3:	83 c4 0a             	add    sp,0xa
   4e7f6:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4e7f9:	6b db 28             	imul   bx,bx,0x28
   4e7fc:	b8 88 01             	mov    ax,0x188
   4e7ff:	8e c0                	mov    es,ax
   4e801:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   4e807:	7e 13                	jle    0x4e81c
   4e809:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4e80c:	6b db 28             	imul   bx,bx,0x28
   4e80f:	b8 88 01             	mov    ax,0x188
   4e812:	8e c0                	mov    es,ax
   4e814:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   4e81a:	74 07                	je     0x4e823
   4e81c:	83 3e 2e 63 00       	cmp    WORD PTR ds:0x632e,0x0
   4e821:	74 c0                	je     0x4e7e3
   4e823:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4e826:	6b db 28             	imul   bx,bx,0x28
   4e829:	b8 88 01             	mov    ax,0x188
   4e82c:	8e c0                	mov    es,ax
   4e82e:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   4e833:	a3 7a d5             	mov    ds:0xd57a,ax
   4e836:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4e839:	6b db 28             	imul   bx,bx,0x28
   4e83c:	b8 88 01             	mov    ax,0x188
   4e83f:	8e c0                	mov    es,ax
   4e841:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   4e846:	a3 78 d5             	mov    ds:0xd578,ax
   4e849:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4e84c:	0e                   	push   cs
   4e84d:	e8 40 c0             	call   0x4a890
   4e850:	59                   	pop    cx
   4e851:	0e                   	push   cs
   4e852:	e8 1c db             	call   0x4c371
   4e855:	e9 ca fc             	jmp    0x4e522
   4e858:	83 3e d6 d5 01       	cmp    WORD PTR ds:0xd5d6,0x1
   4e85d:	74 0d                	je     0x4e86c
   4e85f:	b8 88 01             	mov    ax,0x188
   4e862:	8e c0                	mov    es,ax
   4e864:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   4e86a:	75 09                	jne    0x4e875
   4e86c:	c7 06 e0 d5 ff ff    	mov    WORD PTR ds:0xd5e0,0xffff
   4e872:	e9 63 01             	jmp    0x4e9d8
   4e875:	83 3e d6 d5 1c       	cmp    WORD PTR ds:0xd5d6,0x1c
   4e87a:	74 1f                	je     0x4e89b
   4e87c:	83 7e fe 1f          	cmp    WORD PTR [bp-0x2],0x1f
   4e880:	74 09                	je     0x4e88b
   4e882:	83 7e fe 22          	cmp    WORD PTR [bp-0x2],0x22
   4e886:	74 03                	je     0x4e88b
   4e888:	e9 9b fc             	jmp    0x4e526
   4e88b:	b8 88 01             	mov    ax,0x188
   4e88e:	8e c0                	mov    es,ax
   4e890:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   4e896:	74 03                	je     0x4e89b
   4e898:	e9 8b fc             	jmp    0x4e526
   4e89b:	83 7e fe 1f          	cmp    WORD PTR [bp-0x2],0x1f
   4e89f:	74 09                	je     0x4e8aa
   4e8a1:	83 7e fe 22          	cmp    WORD PTR [bp-0x2],0x22
   4e8a5:	74 03                	je     0x4e8aa
   4e8a7:	e9 f6 00             	jmp    0x4e9a0
   4e8aa:	b8 88 01             	mov    ax,0x188
   4e8ad:	8e c0                	mov    es,ax
   4e8af:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   4e8b5:	74 03                	je     0x4e8ba
   4e8b7:	e9 e6 00             	jmp    0x4e9a0
   4e8ba:	9a 04 02 30 00       	call   0x30:0x204
   4e8bf:	83 7e fe 1f          	cmp    WORD PTR [bp-0x2],0x1f
   4e8c3:	75 5c                	jne    0x4e921
   4e8c5:	6a 00                	push   0x0
   4e8c7:	68 f8 00             	push   0xf8
   4e8ca:	68 92 00             	push   0x92
   4e8cd:	68 f4 00             	push   0xf4
   4e8d0:	68 92 00             	push   0x92
   4e8d3:	68 d0 00             	push   0xd0
   4e8d6:	9a f5 13 28 00       	call   0x28:0x13f5
   4e8db:	83 c4 0c             	add    sp,0xc
   4e8de:	6a 00                	push   0x0
   4e8e0:	68 f8 00             	push   0xf8
   4e8e3:	68 9f 00             	push   0x9f
   4e8e6:	68 dd 00             	push   0xdd
   4e8e9:	68 92 00             	push   0x92
   4e8ec:	68 d0 00             	push   0xd0
   4e8ef:	9a f5 13 28 00       	call   0x28:0x13f5
   4e8f4:	83 c4 0c             	add    sp,0xc
   4e8f7:	6a 00                	push   0x0
   4e8f9:	6a 06                	push   0x6
   4e8fb:	68 a0 00             	push   0xa0
   4e8fe:	68 03 01             	push   0x103
   4e901:	68 a0 00             	push   0xa0
   4e904:	68 de 00             	push   0xde
   4e907:	9a f5 13 28 00       	call   0x28:0x13f5
   4e90c:	83 c4 0c             	add    sp,0xc
   4e90f:	6a 00                	push   0x0
   4e911:	6a 06                	push   0x6
   4e913:	68 a0 00             	push   0xa0
   4e916:	68 03 01             	push   0x103
   4e919:	68 92 00             	push   0x92
   4e91c:	68 f5 00             	push   0xf5
   4e91f:	eb 4a                	jmp    0x4e96b
   4e921:	6a 00                	push   0x0
   4e923:	68 f8 00             	push   0xf8
   4e926:	6a 59                	push   0x59
   4e928:	6a 22                	push   0x22
   4e92a:	6a 59                	push   0x59
   4e92c:	6a 17                	push   0x17
   4e92e:	9a f5 13 28 00       	call   0x28:0x13f5
   4e933:	83 c4 0c             	add    sp,0xc
   4e936:	6a 00                	push   0x0
   4e938:	68 f8 00             	push   0xf8
   4e93b:	6a 63                	push   0x63
   4e93d:	6a 21                	push   0x21
   4e93f:	6a 59                	push   0x59
   4e941:	6a 17                	push   0x17
   4e943:	9a f5 13 28 00       	call   0x28:0x13f5
   4e948:	83 c4 0c             	add    sp,0xc
   4e94b:	6a 00                	push   0x0
   4e94d:	6a 06                	push   0x6
   4e94f:	6a 64                	push   0x64
   4e951:	6a 2d                	push   0x2d
   4e953:	6a 64                	push   0x64
   4e955:	6a 23                	push   0x23
   4e957:	9a f5 13 28 00       	call   0x28:0x13f5
   4e95c:	83 c4 0c             	add    sp,0xc
   4e95f:	6a 00                	push   0x0
   4e961:	6a 06                	push   0x6
   4e963:	6a 64                	push   0x64
   4e965:	6a 2e                	push   0x2e
   4e967:	6a 59                	push   0x59
   4e969:	6a 23                	push   0x23
   4e96b:	9a f5 13 28 00       	call   0x28:0x13f5
   4e970:	83 c4 0c             	add    sp,0xc
   4e973:	b8 88 01             	mov    ax,0x188
   4e976:	8e c0                	mov    es,ax
   4e978:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4e97c:	50                   	push   ax
   4e97d:	9a 69 00 30 00       	call   0x30:0x69
   4e982:	59                   	pop    cx
   4e983:	b8 88 01             	mov    ax,0x188
   4e986:	8e c0                	mov    es,ax
   4e988:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4e98c:	50                   	push   ax
   4e98d:	9a 6b 02 30 00       	call   0x30:0x26b
   4e992:	59                   	pop    cx
   4e993:	b8 88 01             	mov    ax,0x188
   4e996:	8e c0                	mov    es,ax
   4e998:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   4e99e:	75 e3                	jne    0x4e983
   4e9a0:	8b 1e 7a d5          	mov    bx,WORD PTR ds:0xd57a
   4e9a4:	6b db 38             	imul   bx,bx,0x38
   4e9a7:	a1 78 d5             	mov    ax,ds:0xd578
   4e9aa:	d1 e0                	shl    ax,1
   4e9ac:	03 d8                	add    bx,ax
   4e9ae:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   4e9b2:	a3 36 d5             	mov    ds:0xd536,ax
   4e9b5:	a1 36 d5             	mov    ax,ds:0xd536
   4e9b8:	a3 e0 d5             	mov    ds:0xd5e0,ax
   4e9bb:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4e9bf:	6b db 28             	imul   bx,bx,0x28
   4e9c2:	b8 88 01             	mov    ax,0x188
   4e9c5:	8b 16 36 d5          	mov    dx,WORD PTR ds:0xd536
   4e9c9:	8e c0                	mov    es,ax
   4e9cb:	26 89 97 96 a0       	mov    WORD PTR es:[bx-0x5f6a],dx
   4e9d0:	eb 06                	jmp    0x4e9d8
   4e9d2:	e9 51 fb             	jmp    0x4e526
   4e9d5:	e9 4a fb             	jmp    0x4e522
   4e9d8:	a1 e0 d5             	mov    ax,ds:0xd5e0
   4e9db:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   4e9df:	75 06                	jne    0x4e9e7
   4e9e1:	c7 06 e0 d5 ff ff    	mov    WORD PTR ds:0xd5e0,0xffff
   4e9e7:	c7 06 7c d5 00 00    	mov    WORD PTR ds:0xd57c,0x0
   4e9ed:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4e9f1:	0e                   	push   cs
   4e9f2:	e8 9b be             	call   0x4a890
   4e9f5:	59                   	pop    cx
   4e9f6:	c9                   	leave
   4e9f7:	cb                   	retf
   4e9f8:	c1 49 c9 49          	ror    WORD PTR [bx+di-0x37],0x49
   4e9fc:	d1 49 d9             	ror    WORD PTR [bx+di-0x27],1
   4e9ff:	49                   	dec    cx
   4ea00:	e1 49                	loope  0x4ea4b
   4ea02:	e9 49 f1             	jmp    0x4db4e
   4ea05:	49                   	dec    cx
   4ea06:	f9                   	stc
   4ea07:	49                   	dec    cx
   4ea08:	55                   	push   bp
   4ea09:	8b ec                	mov    bp,sp
   4ea0b:	83 ec 02             	sub    sp,0x2
   4ea0e:	83 3e e0 d5 01       	cmp    WORD PTR ds:0xd5e0,0x1
   4ea13:	7d 03                	jge    0x4ea18
   4ea15:	e9 f3 02             	jmp    0x4ed0b
   4ea18:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ea1c:	6b db 28             	imul   bx,bx,0x28
   4ea1f:	b8 88 01             	mov    ax,0x188
   4ea22:	8e c0                	mov    es,ax
   4ea24:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4ea29:	6b db 2e             	imul   bx,bx,0x2e
   4ea2c:	b8 88 01             	mov    ax,0x188
   4ea2f:	8e c0                	mov    es,ax
   4ea31:	26 83 bf 26 9f 64    	cmp    WORD PTR es:[bx-0x60da],0x64
   4ea37:	7d 03                	jge    0x4ea3c
   4ea39:	e9 cf 02             	jmp    0x4ed0b
   4ea3c:	ff 36 78 d5          	push   WORD PTR ds:0xd578
   4ea40:	ff 36 7a d5          	push   WORD PTR ds:0xd57a
   4ea44:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4ea48:	0e                   	push   cs
   4ea49:	e8 8a c1             	call   0x4abd6
   4ea4c:	83 c4 06             	add    sp,0x6
   4ea4f:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ea53:	6b db 28             	imul   bx,bx,0x28
   4ea56:	b8 88 01             	mov    ax,0x188
   4ea59:	8e c0                	mov    es,ax
   4ea5b:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4ea60:	6b db 2e             	imul   bx,bx,0x2e
   4ea63:	b8 88 01             	mov    ax,0x188
   4ea66:	8e c0                	mov    es,ax
   4ea68:	26 8b 87 26 9f       	mov    ax,WORD PTR es:[bx-0x60da]
   4ea6d:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   4ea70:	83 7e fe 64          	cmp    WORD PTR [bp-0x2],0x64
   4ea74:	7e 04                	jle    0x4ea7a
   4ea76:	83 6e fe 64          	sub    WORD PTR [bp-0x2],0x64
   4ea7a:	83 3e 60 d5 00       	cmp    WORD PTR ds:0xd560,0x0
   4ea7f:	7e 2c                	jle    0x4eaad
   4ea81:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ea85:	6b db 28             	imul   bx,bx,0x28
   4ea88:	b8 88 01             	mov    ax,0x188
   4ea8b:	8e c0                	mov    es,ax
   4ea8d:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4ea92:	6b db 2e             	imul   bx,bx,0x2e
   4ea95:	b8 88 01             	mov    ax,0x188
   4ea98:	8e c0                	mov    es,ax
   4ea9a:	26 8b 87 3a 9f       	mov    ax,WORD PTR es:[bx-0x60c6]
   4ea9f:	3b 06 64 d5          	cmp    ax,WORD PTR ds:0xd564
   4eaa3:	7c 08                	jl     0x4eaad
   4eaa5:	a1 4c d5             	mov    ax,ds:0xd54c
   4eaa8:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   4eaab:	7d 15                	jge    0x4eac2
   4eaad:	83 3e 64 d5 00       	cmp    WORD PTR ds:0xd564,0x0
   4eab2:	74 03                	je     0x4eab7
   4eab4:	e9 00 01             	jmp    0x4ebb7
   4eab7:	a1 4c d5             	mov    ax,ds:0xd54c
   4eaba:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   4eabd:	7d 03                	jge    0x4eac2
   4eabf:	e9 f5 00             	jmp    0x4ebb7
   4eac2:	a1 de d5             	mov    ax,ds:0xd5de
   4eac5:	a3 6e d5             	mov    ds:0xd56e,ax
   4eac8:	a1 e0 d5             	mov    ax,ds:0xd5e0
   4eacb:	a3 6c d5             	mov    ds:0xd56c,ax
   4eace:	ff 36 6e d5          	push   WORD PTR ds:0xd56e
   4ead2:	0e                   	push   cs
   4ead3:	e8 ba bd             	call   0x4a890
   4ead6:	59                   	pop    cx
   4ead7:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4eadb:	6b db 28             	imul   bx,bx,0x28
   4eade:	b8 88 01             	mov    ax,0x188
   4eae1:	8e c0                	mov    es,ax
   4eae3:	26 83 87 8e a0 04    	add    WORD PTR es:[bx-0x5f72],0x4
   4eae9:	0e                   	push   cs
   4eaea:	e8 84 d8             	call   0x4c371
   4eaed:	6a 08                	push   0x8
   4eaef:	0e                   	push   cs
   4eaf0:	e8 ab d2             	call   0x4bd9e
   4eaf3:	59                   	pop    cx
   4eaf4:	6a 0a                	push   0xa
   4eaf6:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4eafb:	59                   	pop    cx
   4eafc:	b8 88 01             	mov    ax,0x188
   4eaff:	8e c0                	mov    es,ax
   4eb01:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   4eb06:	6b db 5c             	imul   bx,bx,0x5c
   4eb09:	b8 88 01             	mov    ax,0x188
   4eb0c:	8e c0                	mov    es,ax
   4eb0e:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   4eb13:	d1 e0                	shl    ax,1
   4eb15:	ba 88 01             	mov    dx,0x188
   4eb18:	8e c2                	mov    es,dx
   4eb1a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   4eb1f:	6b db 5c             	imul   bx,bx,0x5c
   4eb22:	03 d8                	add    bx,ax
   4eb24:	b8 88 01             	mov    ax,0x188
   4eb27:	8e c0                	mov    es,ax
   4eb29:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   4eb2e:	bb 64 00             	mov    bx,0x64
   4eb31:	99                   	cwd
   4eb32:	f7 fb                	idiv   bx
   4eb34:	52                   	push   dx
   4eb35:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4eb39:	6b db 28             	imul   bx,bx,0x28
   4eb3c:	b8 88 01             	mov    ax,0x188
   4eb3f:	8e c0                	mov    es,ax
   4eb41:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   4eb46:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4eb4a:	6b db 28             	imul   bx,bx,0x28
   4eb4d:	b8 88 01             	mov    ax,0x188
   4eb50:	8e c0                	mov    es,ax
   4eb52:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   4eb57:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4eb5b:	6b db 28             	imul   bx,bx,0x28
   4eb5e:	b8 88 01             	mov    ax,0x188
   4eb61:	8e c0                	mov    es,ax
   4eb63:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   4eb68:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   4eb6c:	6b db 28             	imul   bx,bx,0x28
   4eb6f:	b8 88 01             	mov    ax,0x188
   4eb72:	8e c0                	mov    es,ax
   4eb74:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   4eb79:	0e                   	push   cs
   4eb7a:	e8 0c c2             	call   0x4ad89
   4eb7d:	83 c4 0a             	add    sp,0xa
   4eb80:	ff 36 6c d5          	push   WORD PTR ds:0xd56c
   4eb84:	0e                   	push   cs
   4eb85:	e8 08 bd             	call   0x4a890
   4eb88:	59                   	pop    cx
   4eb89:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   4eb8d:	6b db 28             	imul   bx,bx,0x28
   4eb90:	b8 88 01             	mov    ax,0x188
   4eb93:	8e c0                	mov    es,ax
   4eb95:	26 83 af 8e a0 04    	sub    WORD PTR es:[bx-0x5f72],0x4
   4eb9b:	c7 06 c2 d5 01 00    	mov    WORD PTR ds:0xd5c2,0x1
   4eba1:	0e                   	push   cs
   4eba2:	e8 06 f0             	call   0x4dbab
   4eba5:	c7 06 c2 d5 00 00    	mov    WORD PTR ds:0xd5c2,0x0
   4ebab:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4ebaf:	0e                   	push   cs
   4ebb0:	e8 dd bc             	call   0x4a890
   4ebb3:	59                   	pop    cx
   4ebb4:	e9 54 01             	jmp    0x4ed0b
   4ebb7:	83 3e 60 d5 00       	cmp    WORD PTR ds:0xd560,0x0
   4ebbc:	75 61                	jne    0x4ec1f
   4ebbe:	0e                   	push   cs
   4ebbf:	e8 af d7             	call   0x4c371
   4ebc2:	c7 06 1a 63 1e 00    	mov    WORD PTR ds:0x631a,0x1e
   4ebc8:	1e                   	push   ds
   4ebc9:	68 5d 66             	push   0x665d
   4ebcc:	68 88 01             	push   0x188
   4ebcf:	68 74 a5             	push   0xa574
   4ebd2:	9a a3 49 00 00       	call   0x0:0x49a3
   4ebd7:	83 c4 08             	add    sp,0x8
   4ebda:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4ebde:	68 88 01             	push   0x188
   4ebe1:	68 74 a5             	push   0xa574
   4ebe4:	0e                   	push   cs
   4ebe5:	e8 53 c7             	call   0x4b33b
   4ebe8:	83 c4 06             	add    sp,0x6
   4ebeb:	6a 06                	push   0x6
   4ebed:	0e                   	push   cs
   4ebee:	e8 40 bc             	call   0x4a831
   4ebf1:	59                   	pop    cx
   4ebf2:	6a 0a                	push   0xa
   4ebf4:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4ebf9:	59                   	pop    cx
   4ebfa:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   4ebff:	b8 88 01             	mov    ax,0x188
   4ec02:	8e c0                	mov    es,ax
   4ec04:	26 a1 2b e1          	mov    ax,es:0xe12b
   4ec08:	26 0b 06 2d e1       	or     ax,WORD PTR es:0xe12d
   4ec0d:	75 03                	jne    0x4ec12
   4ec0f:	e9 f9 00             	jmp    0x4ed0b
   4ec12:	1e                   	push   ds
   4ec13:	68 6b 66             	push   0x666b
   4ec16:	68 cb 06             	push   0x6cb
   4ec19:	e9 e1 00             	jmp    0x4ecfd
   4ec1c:	e9 ec 00             	jmp    0x4ed0b
   4ec1f:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ec23:	6b db 28             	imul   bx,bx,0x28
   4ec26:	b8 88 01             	mov    ax,0x188
   4ec29:	8e c0                	mov    es,ax
   4ec2b:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4ec30:	6b db 2e             	imul   bx,bx,0x2e
   4ec33:	b8 88 01             	mov    ax,0x188
   4ec36:	8e c0                	mov    es,ax
   4ec38:	26 8b 87 3a 9f       	mov    ax,WORD PTR es:[bx-0x60c6]
   4ec3d:	3b 06 64 d5          	cmp    ax,WORD PTR ds:0xd564
   4ec41:	7d 62                	jge    0x4eca5
   4ec43:	0e                   	push   cs
   4ec44:	e8 2a d7             	call   0x4c371
   4ec47:	c7 06 1a 63 1f 00    	mov    WORD PTR ds:0x631a,0x1f
   4ec4d:	1e                   	push   ds
   4ec4e:	68 7b 66             	push   0x667b
   4ec51:	68 88 01             	push   0x188
   4ec54:	68 74 a5             	push   0xa574
   4ec57:	9a a3 49 00 00       	call   0x0:0x49a3
   4ec5c:	83 c4 08             	add    sp,0x8
   4ec5f:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4ec63:	68 88 01             	push   0x188
   4ec66:	68 74 a5             	push   0xa574
   4ec69:	0e                   	push   cs
   4ec6a:	e8 ce c6             	call   0x4b33b
   4ec6d:	83 c4 06             	add    sp,0x6
   4ec70:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   4ec76:	6a 06                	push   0x6
   4ec78:	0e                   	push   cs
   4ec79:	e8 b5 bb             	call   0x4a831
   4ec7c:	59                   	pop    cx
   4ec7d:	6a 0a                	push   0xa
   4ec7f:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4ec84:	59                   	pop    cx
   4ec85:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   4ec8a:	b8 88 01             	mov    ax,0x188
   4ec8d:	8e c0                	mov    es,ax
   4ec8f:	26 a1 2b e1          	mov    ax,es:0xe12b
   4ec93:	26 0b 06 2d e1       	or     ax,WORD PTR es:0xe12d
   4ec98:	74 71                	je     0x4ed0b
   4ec9a:	1e                   	push   ds
   4ec9b:	68 90 66             	push   0x6690
   4ec9e:	68 d7 06             	push   0x6d7
   4eca1:	eb 5a                	jmp    0x4ecfd
   4eca3:	eb 66                	jmp    0x4ed0b
   4eca5:	0e                   	push   cs
   4eca6:	e8 c8 d6             	call   0x4c371
   4eca9:	c7 06 1a 63 20 00    	mov    WORD PTR ds:0x631a,0x20
   4ecaf:	1e                   	push   ds
   4ecb0:	68 a0 66             	push   0x66a0
   4ecb3:	68 88 01             	push   0x188
   4ecb6:	68 74 a5             	push   0xa574
   4ecb9:	9a a3 49 00 00       	call   0x0:0x49a3
   4ecbe:	83 c4 08             	add    sp,0x8
   4ecc1:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4ecc5:	68 88 01             	push   0x188
   4ecc8:	68 74 a5             	push   0xa574
   4eccb:	0e                   	push   cs
   4eccc:	e8 6c c6             	call   0x4b33b
   4eccf:	83 c4 06             	add    sp,0x6
   4ecd2:	6a 06                	push   0x6
   4ecd4:	0e                   	push   cs
   4ecd5:	e8 59 bb             	call   0x4a831
   4ecd8:	59                   	pop    cx
   4ecd9:	6a 0a                	push   0xa
   4ecdb:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4ece0:	59                   	pop    cx
   4ece1:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   4ece6:	b8 88 01             	mov    ax,0x188
   4ece9:	8e c0                	mov    es,ax
   4eceb:	26 a1 2b e1          	mov    ax,es:0xe12b
   4ecef:	26 0b 06 2d e1       	or     ax,WORD PTR es:0xe12d
   4ecf4:	74 15                	je     0x4ed0b
   4ecf6:	1e                   	push   ds
   4ecf7:	68 bb 66             	push   0x66bb
   4ecfa:	68 df 06             	push   0x6df
   4ecfd:	68 88 01             	push   0x188
   4ed00:	68 2b e1             	push   0xe12b
   4ed03:	9a 2f 02 40 00       	call   0x40:0x22f
   4ed08:	83 c4 0a             	add    sp,0xa
   4ed0b:	c9                   	leave
   4ed0c:	cb                   	retf
   4ed0d:	55                   	push   bp
   4ed0e:	8b ec                	mov    bp,sp
   4ed10:	83 ec 06             	sub    sp,0x6
   4ed13:	a1 15 64             	mov    ax,ds:0x6415
   4ed16:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4ed19:	b8 88 01             	mov    ax,0x188
   4ed1c:	8e c0                	mov    es,ax
   4ed1e:	26 a0 72 96          	mov    al,es:0x9672
   4ed22:	ba 88 01             	mov    dx,0x188
   4ed25:	8e c2                	mov    es,dx
   4ed27:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4ed2c:	75 5d                	jne    0x4ed8b
   4ed2e:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ed32:	6b db 28             	imul   bx,bx,0x28
   4ed35:	b8 88 01             	mov    ax,0x188
   4ed38:	8e c0                	mov    es,ax
   4ed3a:	26 8b 87 90 a0       	mov    ax,WORD PTR es:[bx-0x5f70]
   4ed3f:	ba 88 01             	mov    dx,0x188
   4ed42:	8e c2                	mov    es,dx
   4ed44:	26 a3 98 28          	mov    es:0x2898,ax
   4ed48:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4ed4c:	6b db 28             	imul   bx,bx,0x28
   4ed4f:	b8 88 01             	mov    ax,0x188
   4ed52:	8e c0                	mov    es,ax
   4ed54:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   4ed59:	a3 56 d5             	mov    ds:0xd556,ax
   4ed5c:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   4ed61:	7e 02                	jle    0x4ed65
   4ed63:	eb 40                	jmp    0x4eda5
   4ed65:	6a 22                	push   0x22
   4ed67:	b8 88 01             	mov    ax,0x188
   4ed6a:	8e c0                	mov    es,ax
   4ed6c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   4ed71:	6b db 06             	imul   bx,bx,0x6
   4ed74:	b8 88 01             	mov    ax,0x188
   4ed77:	8e c0                	mov    es,ax
   4ed79:	26 8b 87 c2 5b       	mov    ax,WORD PTR es:[bx+0x5bc2]
   4ed7e:	6b c0 23             	imul   ax,ax,0x23
   4ed81:	05 5c 19             	add    ax,0x195c
   4ed84:	68 88 01             	push   0x188
   4ed87:	eb 31                	jmp    0x4edba
   4ed89:	eb 3e                	jmp    0x4edc9
   4ed8b:	b8 88 01             	mov    ax,0x188
   4ed8e:	8e c0                	mov    es,ax
   4ed90:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   4ed95:	6b db 5c             	imul   bx,bx,0x5c
   4ed98:	b8 88 01             	mov    ax,0x188
   4ed9b:	8e c0                	mov    es,ax
   4ed9d:	26 8b 87 de 99       	mov    ax,WORD PTR es:[bx-0x6622]
   4eda2:	a3 56 d5             	mov    ds:0xd556,ax
   4eda5:	6a 23                	push   0x23
   4eda7:	b8 88 01             	mov    ax,0x188
   4edaa:	8e c0                	mov    es,ax
   4edac:	26 a1 98 28          	mov    ax,es:0x2898
   4edb0:	69 c0 94 00          	imul   ax,ax,0x94
   4edb4:	05 95 9c             	add    ax,0x9c95
   4edb7:	68 88 01             	push   0x188
   4edba:	50                   	push   ax
   4edbb:	68 88 01             	push   0x188
   4edbe:	68 10 a5             	push   0xa510
   4edc1:	9a 23 4a 00 00       	call   0x0:0x4a23
   4edc6:	83 c4 0a             	add    sp,0xa
   4edc9:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4edce:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   4edd3:	e9 b3 00             	jmp    0x4ee89
   4edd6:	6a 01                	push   0x1
   4edd8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4eddb:	05 0f a5             	add    ax,0xa50f
   4edde:	68 88 01             	push   0x188
   4ede1:	50                   	push   ax
   4ede2:	16                   	push   ss
   4ede3:	8d 46 fa             	lea    ax,[bp-0x6]
   4ede6:	50                   	push   ax
   4ede7:	9a 23 4a 00 00       	call   0x0:0x4a23
   4edec:	83 c4 0a             	add    sp,0xa
   4edef:	52                   	push   dx
   4edf0:	50                   	push   ax
   4edf1:	9a 69 34 00 00       	call   0x0:0x3469
   4edf6:	83 c4 04             	add    sp,0x4
   4edf9:	3d 01 00             	cmp    ax,0x1
   4edfc:	74 03                	je     0x4ee01
   4edfe:	e9 85 00             	jmp    0x4ee86
   4ee01:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4ee04:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ee07:	6b c0 1f             	imul   ax,ax,0x1f
   4ee0a:	05 61 03             	add    ax,0x361
   4ee0d:	68 88 01             	push   0x188
   4ee10:	50                   	push   ax
   4ee11:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ee14:	6b c0 64             	imul   ax,ax,0x64
   4ee17:	05 d8 a5             	add    ax,0xa5d8
   4ee1a:	68 88 01             	push   0x188
   4ee1d:	50                   	push   ax
   4ee1e:	9a a3 49 00 00       	call   0x0:0x49a3
   4ee23:	83 c4 08             	add    sp,0x8
   4ee26:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4ee29:	d1 e3                	shl    bx,1
   4ee2b:	b8 88 01             	mov    ax,0x188
   4ee2e:	8e c0                	mov    es,ax
   4ee30:	26 8b 87 86 0c       	mov    ax,WORD PTR es:[bx+0xc86]
   4ee35:	a3 bc d5             	mov    ds:0xd5bc,ax
   4ee38:	a1 bc d5             	mov    ax,ds:0xd5bc
   4ee3b:	3b 06 56 d5          	cmp    ax,WORD PTR ds:0xd556
   4ee3f:	7e 2c                	jle    0x4ee6d
   4ee41:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ee44:	6b c0 64             	imul   ax,ax,0x64
   4ee47:	05 d8 a5             	add    ax,0xa5d8
   4ee4a:	68 88 01             	push   0x188
   4ee4d:	50                   	push   ax
   4ee4e:	9a 54 4a 00 00       	call   0x0:0x4a54
   4ee53:	83 c4 04             	add    sp,0x4
   4ee56:	52                   	push   dx
   4ee57:	50                   	push   ax
   4ee58:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ee5b:	6b c0 64             	imul   ax,ax,0x64
   4ee5e:	05 d8 a5             	add    ax,0xa5d8
   4ee61:	68 88 01             	push   0x188
   4ee64:	50                   	push   ax
   4ee65:	9a a3 49 00 00       	call   0x0:0x49a3
   4ee6a:	83 c4 08             	add    sp,0x8
   4ee6d:	1e                   	push   ds
   4ee6e:	68 cb 66             	push   0x66cb
   4ee71:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ee74:	6b c0 64             	imul   ax,ax,0x64
   4ee77:	05 d8 a5             	add    ax,0xa5d8
   4ee7a:	68 88 01             	push   0x188
   4ee7d:	50                   	push   ax
   4ee7e:	9a f7 48 00 00       	call   0x0:0x48f7
   4ee83:	83 c4 08             	add    sp,0x8
   4ee86:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   4ee89:	83 7e fc 22          	cmp    WORD PTR [bp-0x4],0x22
   4ee8d:	7f 03                	jg     0x4ee92
   4ee8f:	e9 44 ff             	jmp    0x4edd6
   4ee92:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   4ee96:	74 03                	je     0x4ee9b
   4ee98:	e9 a3 00             	jmp    0x4ef3e
   4ee9b:	b8 88 01             	mov    ax,0x188
   4ee9e:	8e c0                	mov    es,ax
   4eea0:	26 a0 72 96          	mov    al,es:0x9672
   4eea4:	ba 88 01             	mov    dx,0x188
   4eea7:	8e c2                	mov    es,dx
   4eea9:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4eeae:	75 3c                	jne    0x4eeec
   4eeb0:	6a 5b                	push   0x5b
   4eeb2:	6a 20                	push   0x20
   4eeb4:	6a 07                	push   0x7
   4eeb6:	0e                   	push   cs
   4eeb7:	e8 24 b0             	call   0x49ede
   4eeba:	83 c4 06             	add    sp,0x6
   4eebd:	6a 0b                	push   0xb
   4eebf:	b8 88 01             	mov    ax,0x188
   4eec2:	8e c0                	mov    es,ax
   4eec4:	26 a0 65 96          	mov    al,es:0x9665
   4eec8:	b4 00                	mov    ah,0x0
   4eeca:	50                   	push   ax
   4eecb:	6a 09                	push   0x9
   4eecd:	6a 07                	push   0x7
   4eecf:	1e                   	push   ds
   4eed0:	68 cd 66             	push   0x66cd
   4eed3:	0e                   	push   cs
   4eed4:	e8 18 af             	call   0x49def
   4eed7:	83 c4 0c             	add    sp,0xc
   4eeda:	6a 06                	push   0x6
   4eedc:	0e                   	push   cs
   4eedd:	e8 51 b9             	call   0x4a831
   4eee0:	59                   	pop    cx
   4eee1:	9a d7 29 00 00       	call   0x0:0x29d7
   4eee6:	0e                   	push   cs
   4eee7:	e8 87 d4             	call   0x4c371
   4eeea:	eb 49                	jmp    0x4ef35
   4eeec:	b8 88 01             	mov    ax,0x188
   4eeef:	8e c0                	mov    es,ax
   4eef1:	26 a0 64 96          	mov    al,es:0x9664
   4eef5:	b4 00                	mov    ah,0x0
   4eef7:	50                   	push   ax
   4eef8:	68 d9 00             	push   0xd9
   4eefb:	1e                   	push   ds
   4eefc:	68 e6 66             	push   0x66e6
   4eeff:	90                   	nop
   4ef00:	0e                   	push   cs
   4ef01:	e8 75 2c             	call   0x41b79
   4ef04:	83 c4 08             	add    sp,0x8
   4ef07:	b8 88 01             	mov    ax,0x188
   4ef0a:	8e c0                	mov    es,ax
   4ef0c:	26 a1 4a e7          	mov    ax,es:0xe74a
   4ef10:	a3 d4 d5             	mov    ds:0xd5d4,ax
   4ef13:	b8 88 01             	mov    ax,0x188
   4ef16:	8e c0                	mov    es,ax
   4ef18:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4ef1c:	50                   	push   ax
   4ef1d:	9a 6b 02 30 00       	call   0x30:0x26b
   4ef22:	59                   	pop    cx
   4ef23:	b8 88 01             	mov    ax,0x188
   4ef26:	8e c0                	mov    es,ax
   4ef28:	26 a1 4a e7          	mov    ax,es:0xe74a
   4ef2c:	2b 06 d4 d5          	sub    ax,WORD PTR ds:0xd5d4
   4ef30:	3d d0 07             	cmp    ax,0x7d0
   4ef33:	72 de                	jb     0x4ef13
   4ef35:	c7 06 e2 d5 00 00    	mov    WORD PTR ds:0xd5e2,0x0
   4ef3b:	e9 f8 01             	jmp    0x4f136
   4ef3e:	b8 88 01             	mov    ax,0x188
   4ef41:	8e c0                	mov    es,ax
   4ef43:	26 a0 72 96          	mov    al,es:0x9672
   4ef47:	ba 88 01             	mov    dx,0x188
   4ef4a:	8e c2                	mov    es,dx
   4ef4c:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4ef51:	75 39                	jne    0x4ef8c
   4ef53:	6a 01                	push   0x1
   4ef55:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   4ef59:	7e 05                	jle    0x4ef60
   4ef5b:	b8 04 00             	mov    ax,0x4
   4ef5e:	eb 03                	jmp    0x4ef63
   4ef60:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ef63:	50                   	push   ax
   4ef64:	68 d9 00             	push   0xd9
   4ef67:	b8 88 01             	mov    ax,0x188
   4ef6a:	8e c0                	mov    es,ax
   4ef6c:	26 a0 64 96          	mov    al,es:0x9664
   4ef70:	b4 00                	mov    ah,0x0
   4ef72:	50                   	push   ax
   4ef73:	68 86 00             	push   0x86
   4ef76:	6a 07                	push   0x7
   4ef78:	6a 05                	push   0x5
   4ef7a:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4ef7d:	9a 33 11 10 00       	call   0x10:0x1133
   4ef82:	83 c4 10             	add    sp,0x10
   4ef85:	90                   	nop
   4ef86:	0e                   	push   cs
   4ef87:	e8 16 1f             	call   0x40ea0
   4ef8a:	eb 44                	jmp    0x4efd0
   4ef8c:	6a 02                	push   0x2
   4ef8e:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   4ef92:	7e 05                	jle    0x4ef99
   4ef94:	b8 06 00             	mov    ax,0x6
   4ef97:	eb 03                	jmp    0x4ef9c
   4ef99:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ef9c:	50                   	push   ax
   4ef9d:	b8 88 01             	mov    ax,0x188
   4efa0:	8e c0                	mov    es,ax
   4efa2:	26 a0 6a 96          	mov    al,es:0x966a
   4efa6:	b4 00                	mov    ah,0x0
   4efa8:	50                   	push   ax
   4efa9:	b8 88 01             	mov    ax,0x188
   4efac:	8e c0                	mov    es,ax
   4efae:	26 a0 66 96          	mov    al,es:0x9666
   4efb2:	b4 00                	mov    ah,0x0
   4efb4:	50                   	push   ax
   4efb5:	b8 88 01             	mov    ax,0x188
   4efb8:	8e c0                	mov    es,ax
   4efba:	26 a0 6b 96          	mov    al,es:0x966b
   4efbe:	b4 00                	mov    ah,0x0
   4efc0:	50                   	push   ax
   4efc1:	6a 13                	push   0x13
   4efc3:	6a 03                	push   0x3
   4efc5:	ff 76 fe             	push   WORD PTR [bp-0x2]
   4efc8:	9a 33 11 10 00       	call   0x10:0x1133
   4efcd:	83 c4 10             	add    sp,0x10
   4efd0:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   4efd5:	b8 88 01             	mov    ax,0x188
   4efd8:	8e c0                	mov    es,ax
   4efda:	26 c7 06 53 bb 00 00 	mov    WORD PTR es:0xbb53,0x0
   4efe1:	c7 06 e2 d5 00 00    	mov    WORD PTR ds:0xd5e2,0x0
   4efe7:	83 3e dc d5 00       	cmp    WORD PTR ds:0xd5dc,0x0
   4efec:	7f 03                	jg     0x4eff1
   4efee:	e9 24 01             	jmp    0x4f115
   4eff1:	b8 88 01             	mov    ax,0x188
   4eff4:	8e c0                	mov    es,ax
   4eff6:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   4effb:	6a 01                	push   0x1
   4effd:	b8 88 01             	mov    ax,0x188
   4f000:	8e c0                	mov    es,ax
   4f002:	26 a1 53 bb          	mov    ax,es:0xbb53
   4f006:	05 0f a5             	add    ax,0xa50f
   4f009:	68 88 01             	push   0x188
   4f00c:	50                   	push   ax
   4f00d:	16                   	push   ss
   4f00e:	8d 46 fa             	lea    ax,[bp-0x6]
   4f011:	50                   	push   ax
   4f012:	9a 23 4a 00 00       	call   0x0:0x4a23
   4f017:	83 c4 0a             	add    sp,0xa
   4f01a:	52                   	push   dx
   4f01b:	50                   	push   ax
   4f01c:	9a 69 34 00 00       	call   0x0:0x3469
   4f021:	83 c4 04             	add    sp,0x4
   4f024:	3d 01 00             	cmp    ax,0x1
   4f027:	75 c8                	jne    0x4eff1
   4f029:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   4f02c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4f02f:	3b 06 dc d5          	cmp    ax,WORD PTR ds:0xd5dc
   4f033:	75 bc                	jne    0x4eff1
   4f035:	b8 88 01             	mov    ax,0x188
   4f038:	8e c0                	mov    es,ax
   4f03a:	26 a1 53 bb          	mov    ax,es:0xbb53
   4f03e:	a3 e2 d5             	mov    ds:0xd5e2,ax
   4f041:	a1 dc d5             	mov    ax,ds:0xd5dc
   4f044:	6b c0 64             	imul   ax,ax,0x64
   4f047:	05 d8 a5             	add    ax,0xa5d8
   4f04a:	68 88 01             	push   0x188
   4f04d:	50                   	push   ax
   4f04e:	68 88 01             	push   0x188
   4f051:	68 74 a5             	push   0xa574
   4f054:	9a a3 49 00 00       	call   0x0:0x49a3
   4f059:	83 c4 08             	add    sp,0x8
   4f05c:	eb 02                	jmp    0x4f060
   4f05e:	eb 91                	jmp    0x4eff1
   4f060:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   4f064:	d1 e3                	shl    bx,1
   4f066:	b8 88 01             	mov    ax,0x188
   4f069:	8e c0                	mov    es,ax
   4f06b:	26 8b 87 86 0c       	mov    ax,WORD PTR es:[bx+0xc86]
   4f070:	a3 bc d5             	mov    ds:0xd5bc,ax
   4f073:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4f077:	6b db 28             	imul   bx,bx,0x28
   4f07a:	b8 88 01             	mov    ax,0x188
   4f07d:	8e c0                	mov    es,ax
   4f07f:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4f084:	6b db 2e             	imul   bx,bx,0x2e
   4f087:	b8 88 01             	mov    ax,0x188
   4f08a:	8e c0                	mov    es,ax
   4f08c:	26 8b 87 2a 9f       	mov    ax,WORD PTR es:[bx-0x60d6]
   4f091:	bb 32 00             	mov    bx,0x32
   4f094:	99                   	cwd
   4f095:	f7 fb                	idiv   bx
   4f097:	a3 be d5             	mov    ds:0xd5be,ax
   4f09a:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   4f09e:	4b                   	dec    bx
   4f09f:	83 fb 21             	cmp    bx,0x21
   4f0a2:	77 5c                	ja     0x4f100
   4f0a4:	d1 e3                	shl    bx,1
   4f0a6:	2e ff a7 e8 54       	jmp    WORD PTR cs:[bx+0x54e8]
   4f0ab:	c7 06 62 d5 02 00    	mov    WORD PTR ds:0xd562,0x2
   4f0b1:	eb 62                	jmp    0x4f115
   4f0b3:	a1 be d5             	mov    ax,ds:0xd5be
   4f0b6:	bb 03 00             	mov    bx,0x3
   4f0b9:	99                   	cwd
   4f0ba:	f7 fb                	idiv   bx
   4f0bc:	05 04 00             	add    ax,0x4
   4f0bf:	eb 3a                	jmp    0x4f0fb
   4f0c1:	a1 be d5             	mov    ax,ds:0xd5be
   4f0c4:	6b c0 0a             	imul   ax,ax,0xa
   4f0c7:	eb 32                	jmp    0x4f0fb
   4f0c9:	a1 be d5             	mov    ax,ds:0xd5be
   4f0cc:	05 0a 00             	add    ax,0xa
   4f0cf:	eb 2a                	jmp    0x4f0fb
   4f0d1:	c7 06 62 d5 00 00    	mov    WORD PTR ds:0xd562,0x0
   4f0d7:	eb 3c                	jmp    0x4f115
   4f0d9:	a1 be d5             	mov    ax,ds:0xd5be
   4f0dc:	bb 03 00             	mov    bx,0x3
   4f0df:	99                   	cwd
   4f0e0:	f7 fb                	idiv   bx
   4f0e2:	05 08 00             	add    ax,0x8
   4f0e5:	eb 14                	jmp    0x4f0fb
   4f0e7:	a1 be d5             	mov    ax,ds:0xd5be
   4f0ea:	bb 03 00             	mov    bx,0x3
   4f0ed:	99                   	cwd
   4f0ee:	f7 fb                	idiv   bx
   4f0f0:	6b c0 03             	imul   ax,ax,0x3
   4f0f3:	eb 03                	jmp    0x4f0f8
   4f0f5:	a1 be d5             	mov    ax,ds:0xd5be
   4f0f8:	05 05 00             	add    ax,0x5
   4f0fb:	a3 62 d5             	mov    ds:0xd562,ax
   4f0fe:	eb 15                	jmp    0x4f115
   4f100:	6a 64                	push   0x64
   4f102:	6a 00                	push   0x0
   4f104:	6a 00                	push   0x0
   4f106:	68 36 07             	push   0x736
   4f109:	1e                   	push   ds
   4f10a:	68 f7 66             	push   0x66f7
   4f10d:	9a 2a 00 58 01       	call   0x158:0x2a
   4f112:	83 c4 0c             	add    sp,0xc
   4f115:	b8 88 01             	mov    ax,0x188
   4f118:	8e c0                	mov    es,ax
   4f11a:	26 a0 72 96          	mov    al,es:0x9672
   4f11e:	ba 88 01             	mov    dx,0x188
   4f121:	8e c2                	mov    es,dx
   4f123:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   4f128:	75 0c                	jne    0x4f136
   4f12a:	0e                   	push   cs
   4f12b:	e8 43 d2             	call   0x4c371
   4f12e:	6a 0a                	push   0xa
   4f130:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4f135:	59                   	pop    cx
   4f136:	c9                   	leave
   4f137:	cb                   	retf
   4f138:	5b                   	pop    bx
   4f139:	54                   	push   sp
   4f13a:	5b                   	pop    bx
   4f13b:	54                   	push   sp
   4f13c:	63 54 63             	arpl   WORD PTR [si+0x63],dx
   4f13f:	54                   	push   sp
   4f140:	63 54 63             	arpl   WORD PTR [si+0x63],dx
   4f143:	54                   	push   sp
   4f144:	71 54                	jno    0x4f19a
   4f146:	79 54                	jns    0x4f19c
   4f148:	79 54                	jns    0x4f19e
   4f14a:	5b                   	pop    bx
   4f14b:	54                   	push   sp
   4f14c:	5b                   	pop    bx
   4f14d:	54                   	push   sp
   4f14e:	81 54 89 54 63       	adc    WORD PTR [si-0x77],0x6354
   4f153:	54                   	push   sp
   4f154:	5b                   	pop    bx
   4f155:	54                   	push   sp
   4f156:	63 54 79             	arpl   WORD PTR [si+0x79],dx
   4f159:	54                   	push   sp
   4f15a:	5b                   	pop    bx
   4f15b:	54                   	push   sp
   4f15c:	5b                   	pop    bx
   4f15d:	54                   	push   sp
   4f15e:	89 54 89             	mov    WORD PTR [si-0x77],dx
   4f161:	54                   	push   sp
   4f162:	79 54                	jns    0x4f1b8
   4f164:	81 54 79 54 81       	adc    WORD PTR [si+0x79],0x8154
   4f169:	54                   	push   sp
   4f16a:	63 54 97             	arpl   WORD PTR [si-0x69],dx
   4f16d:	54                   	push   sp
   4f16e:	63 54 a5             	arpl   WORD PTR [si-0x5b],dx
   4f171:	54                   	push   sp
   4f172:	79 54                	jns    0x4f1c8
   4f174:	5b                   	pop    bx
   4f175:	54                   	push   sp
   4f176:	79 54                	jns    0x4f1cc
   4f178:	79 54                	jns    0x4f1ce
   4f17a:	81 54 55 8b ec       	adc    WORD PTR [si+0x55],0xec8b
   4f17f:	6a 19                	push   0x19
   4f181:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   4f185:	0e                   	push   cs
   4f186:	e8 a7 cb             	call   0x4bd30
   4f189:	83 c4 04             	add    sp,0x4
   4f18c:	0b c0                	or     ax,ax
   4f18e:	75 03                	jne    0x4f193
   4f190:	e9 47 01             	jmp    0x4f2da
   4f193:	83 3e 70 d5 00       	cmp    WORD PTR ds:0xd570,0x0
   4f198:	75 03                	jne    0x4f19d
   4f19a:	e9 3d 01             	jmp    0x4f2da
   4f19d:	0e                   	push   cs
   4f19e:	e8 d0 d1             	call   0x4c371
   4f1a1:	c7 06 1a 63 22 00    	mov    WORD PTR ds:0x631a,0x22
   4f1a7:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   4f1ad:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   4f1b1:	1e                   	push   ds
   4f1b2:	68 07 67             	push   0x6707
   4f1b5:	0e                   	push   cs
   4f1b6:	e8 82 c1             	call   0x4b33b
   4f1b9:	83 c4 06             	add    sp,0x6
   4f1bc:	6a 0a                	push   0xa
   4f1be:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4f1c3:	59                   	pop    cx
   4f1c4:	6a 00                	push   0x0
   4f1c6:	68 00 80             	push   0x8000
   4f1c9:	9a 79 17 00 00       	call   0x0:0x1779
   4f1ce:	99                   	cwd
   4f1cf:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4f1d3:	6b db 28             	imul   bx,bx,0x28
   4f1d6:	b9 88 01             	mov    cx,0x188
   4f1d9:	8e c1                	mov    es,cx
   4f1db:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4f1e0:	6b db 2e             	imul   bx,bx,0x2e
   4f1e3:	b9 88 01             	mov    cx,0x188
   4f1e6:	8e c1                	mov    es,cx
   4f1e8:	50                   	push   ax
   4f1e9:	26 8b 87 2c 9f       	mov    ax,WORD PTR es:[bx-0x60d4]
   4f1ee:	bb 32 00             	mov    bx,0x32
   4f1f1:	52                   	push   dx
   4f1f2:	99                   	cwd
   4f1f3:	f7 fb                	idiv   bx
   4f1f5:	99                   	cwd
   4f1f6:	59                   	pop    cx
   4f1f7:	5b                   	pop    bx
   4f1f8:	9a 42 12 00 00       	call   0x0:0x1242
   4f1fd:	52                   	push   dx
   4f1fe:	50                   	push   ax
   4f1ff:	9a df 12 00 00       	call   0x0:0x12df
   4f204:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   4f208:	6b db 28             	imul   bx,bx,0x28
   4f20b:	ba 88 01             	mov    dx,0x188
   4f20e:	8e c2                	mov    es,dx
   4f210:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4f215:	6b db 2e             	imul   bx,bx,0x2e
   4f218:	ba 88 01             	mov    dx,0x188
   4f21b:	8e c2                	mov    es,dx
   4f21d:	50                   	push   ax
   4f21e:	26 8b 87 2a 9f       	mov    ax,WORD PTR es:[bx-0x60d6]
   4f223:	bb 32 00             	mov    bx,0x32
   4f226:	99                   	cwd
   4f227:	f7 fb                	idiv   bx
   4f229:	5a                   	pop    dx
   4f22a:	3b d0                	cmp    dx,ax
   4f22c:	7d 62                	jge    0x4f290
   4f22e:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   4f232:	6b db 28             	imul   bx,bx,0x28
   4f235:	b8 88 01             	mov    ax,0x188
   4f238:	8e c0                	mov    es,ax
   4f23a:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   4f23f:	6b db 2e             	imul   bx,bx,0x2e
   4f242:	b8 88 01             	mov    ax,0x188
   4f245:	8e c0                	mov    es,ax
   4f247:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   4f24d:	7e 41                	jle    0x4f290
   4f24f:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4f253:	0e                   	push   cs
   4f254:	e8 39 b6             	call   0x4a890
   4f257:	59                   	pop    cx
   4f258:	0e                   	push   cs
   4f259:	e8 15 d1             	call   0x4c371
   4f25c:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   4f262:	c7 06 1a 63 23 00    	mov    WORD PTR ds:0x631a,0x23
   4f268:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4f26c:	1e                   	push   ds
   4f26d:	68 17 67             	push   0x6717
   4f270:	0e                   	push   cs
   4f271:	e8 c7 c0             	call   0x4b33b
   4f274:	83 c4 06             	add    sp,0x6
   4f277:	6a 0a                	push   0xa
   4f279:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4f27e:	59                   	pop    cx
   4f27f:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4f283:	0e                   	push   cs
   4f284:	e8 09 b6             	call   0x4a890
   4f287:	59                   	pop    cx
   4f288:	a1 de d5             	mov    ax,ds:0xd5de
   4f28b:	a3 e0 d5             	mov    ds:0xd5e0,ax
   4f28e:	eb 44                	jmp    0x4f2d4
   4f290:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4f294:	0e                   	push   cs
   4f295:	e8 f8 b5             	call   0x4a890
   4f298:	59                   	pop    cx
   4f299:	0e                   	push   cs
   4f29a:	e8 d4 d0             	call   0x4c371
   4f29d:	c7 06 1a 63 24 00    	mov    WORD PTR ds:0x631a,0x24
   4f2a3:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   4f2a9:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   4f2ad:	1e                   	push   ds
   4f2ae:	68 30 67             	push   0x6730
   4f2b1:	0e                   	push   cs
   4f2b2:	e8 86 c0             	call   0x4b33b
   4f2b5:	83 c4 06             	add    sp,0x6
   4f2b8:	6a 0a                	push   0xa
   4f2ba:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   4f2bf:	59                   	pop    cx
   4f2c0:	ba 02 00             	mov    dx,0x2
   4f2c3:	a1 70 d5             	mov    ax,ds:0xd570
   4f2c6:	f7 ea                	imul   dx
   4f2c8:	a3 70 d5             	mov    ds:0xd570,ax
   4f2cb:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   4f2cf:	0e                   	push   cs
   4f2d0:	e8 bd b5             	call   0x4a890
   4f2d3:	59                   	pop    cx
   4f2d4:	c7 06 c0 d5 01 00    	mov    WORD PTR ds:0xd5c0,0x1
   4f2da:	5d                   	pop    bp
   4f2db:	cb                   	retf
   4f2dc:	55                   	push   bp
   4f2dd:	8b ec                	mov    bp,sp
   4f2df:	83 ec 22             	sub    sp,0x22
   4f2e2:	c7 46 e2 00 00       	mov    WORD PTR [bp-0x1e],0x0
   4f2e7:	eb 26                	jmp    0x4f30f
   4f2e9:	c7 46 e0 00 00       	mov    WORD PTR [bp-0x20],0x0
   4f2ee:	eb 16                	jmp    0x4f306
   4f2f0:	8b 5e e2             	mov    bx,WORD PTR [bp-0x1e]
   4f2f3:	6b db 38             	imul   bx,bx,0x38
   4f2f6:	8b 46 e0             	mov    ax,WORD PTR [bp-0x20]
   4f2f9:	d1 e0                	shl    ax,1
   4f2fb:	03 d8                	add    bx,ax
   4f2fd:	c7 87 ee c8 00 00    	mov    WORD PTR [bx-0x3712],0x0
   4f303:	ff 46 e0             	inc    WORD PTR [bp-0x20]
   4f306:	83 7e e0 1b          	cmp    WORD PTR [bp-0x20],0x1b
   4f30a:	7c e4                	jl     0x4f2f0
   4f30c:	ff 46 e2             	inc    WORD PTR [bp-0x1e]
   4f30f:	83 7e e2 1b          	cmp    WORD PTR [bp-0x1e],0x1b
   4f313:	7c d4                	jl     0x4f2e9
   4f315:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4f31a:	c6 46 df 05          	mov    BYTE PTR [bp-0x21],0x5
   4f31e:	eb 39                	jmp    0x4f359
   4f320:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4f323:	d1 e3                	shl    bx,1
   4f325:	b8 88 01             	mov    ax,0x188
   4f328:	8e c0                	mov    es,ax
   4f32a:	26 83 bf 10 9f 03    	cmp    WORD PTR es:[bx-0x60f0],0x3
   4f330:	75 0a                	jne    0x4f33c
   4f332:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   4f335:	fe c0                	inc    al
   4f337:	88 46 df             	mov    BYTE PTR [bp-0x21],al
   4f33a:	eb 23                	jmp    0x4f35f
   4f33c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4f33f:	d1 e3                	shl    bx,1
   4f341:	b8 88 01             	mov    ax,0x188
   4f344:	8e c0                	mov    es,ax
   4f346:	26 83 bf 10 9f 02    	cmp    WORD PTR es:[bx-0x60f0],0x2
   4f34c:	75 08                	jne    0x4f356
   4f34e:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   4f351:	fe c0                	inc    al
   4f353:	88 46 df             	mov    BYTE PTR [bp-0x21],al
   4f356:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4f359:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   4f35d:	7c c1                	jl     0x4f320
   4f35f:	b8 88 01             	mov    ax,0x188
   4f362:	8e c0                	mov    es,ax
   4f364:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   4f368:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4f36b:	b8 88 01             	mov    ax,0x188
   4f36e:	8e c0                	mov    es,ax
   4f370:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   4f374:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4f377:	b8 88 01             	mov    ax,0x188
   4f37a:	8e c0                	mov    es,ax
   4f37c:	26 a0 eb b9          	mov    al,es:0xb9eb
   4f380:	b4 00                	mov    ah,0x0
   4f382:	05 fd ff             	add    ax,0xfffd
   4f385:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   4f388:	4a                   	dec    dx
   4f389:	3b c2                	cmp    ax,dx
   4f38b:	7d 10                	jge    0x4f39d
   4f38d:	b8 88 01             	mov    ax,0x188
   4f390:	8e c0                	mov    es,ax
   4f392:	26 a0 eb b9          	mov    al,es:0xb9eb
   4f396:	b4 00                	mov    ah,0x0
   4f398:	05 fd ff             	add    ax,0xfffd
   4f39b:	eb 04                	jmp    0x4f3a1
   4f39d:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4f3a0:	48                   	dec    ax
   4f3a1:	0b c0                	or     ax,ax
   4f3a3:	7d 04                	jge    0x4f3a9
   4f3a5:	33 c0                	xor    ax,ax
   4f3a7:	eb 2a                	jmp    0x4f3d3
   4f3a9:	b8 88 01             	mov    ax,0x188
   4f3ac:	8e c0                	mov    es,ax
   4f3ae:	26 a0 eb b9          	mov    al,es:0xb9eb
   4f3b2:	b4 00                	mov    ah,0x0
   4f3b4:	05 fd ff             	add    ax,0xfffd
   4f3b7:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   4f3ba:	4a                   	dec    dx
   4f3bb:	3b c2                	cmp    ax,dx
   4f3bd:	7d 10                	jge    0x4f3cf
   4f3bf:	b8 88 01             	mov    ax,0x188
   4f3c2:	8e c0                	mov    es,ax
   4f3c4:	26 a0 eb b9          	mov    al,es:0xb9eb
   4f3c8:	b4 00                	mov    ah,0x0
   4f3ca:	05 fd ff             	add    ax,0xfffd
   4f3cd:	eb 04                	jmp    0x4f3d3
   4f3cf:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   4f3d2:	48                   	dec    ax
   4f3d3:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4f3d6:	b8 88 01             	mov    ax,0x188
   4f3d9:	8e c0                	mov    es,ax
   4f3db:	26 a0 ea b9          	mov    al,es:0xb9ea
   4f3df:	b4 00                	mov    ah,0x0
   4f3e1:	05 fd ff             	add    ax,0xfffd
   4f3e4:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   4f3e7:	4a                   	dec    dx
   4f3e8:	3b c2                	cmp    ax,dx
   4f3ea:	7d 10                	jge    0x4f3fc
   4f3ec:	b8 88 01             	mov    ax,0x188
   4f3ef:	8e c0                	mov    es,ax
   4f3f1:	26 a0 ea b9          	mov    al,es:0xb9ea
   4f3f5:	b4 00                	mov    ah,0x0
   4f3f7:	05 fd ff             	add    ax,0xfffd
   4f3fa:	eb 04                	jmp    0x4f400
   4f3fc:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4f3ff:	48                   	dec    ax
   4f400:	0b c0                	or     ax,ax
   4f402:	7d 04                	jge    0x4f408
   4f404:	33 c0                	xor    ax,ax
   4f406:	eb 2a                	jmp    0x4f432
   4f408:	b8 88 01             	mov    ax,0x188
   4f40b:	8e c0                	mov    es,ax
   4f40d:	26 a0 ea b9          	mov    al,es:0xb9ea
   4f411:	b4 00                	mov    ah,0x0
   4f413:	05 fd ff             	add    ax,0xfffd
   4f416:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   4f419:	4a                   	dec    dx
   4f41a:	3b c2                	cmp    ax,dx
   4f41c:	7d 10                	jge    0x4f42e
   4f41e:	b8 88 01             	mov    ax,0x188
   4f421:	8e c0                	mov    es,ax
   4f423:	26 a0 ea b9          	mov    al,es:0xb9ea
   4f427:	b4 00                	mov    ah,0x0
   4f429:	05 fd ff             	add    ax,0xfffd
   4f42c:	eb 04                	jmp    0x4f432
   4f42e:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4f431:	48                   	dec    ax
   4f432:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4f435:	b8 88 01             	mov    ax,0x188
   4f438:	8e c0                	mov    es,ax
   4f43a:	26 a0 eb b9          	mov    al,es:0xb9eb
   4f43e:	b4 00                	mov    ah,0x0
   4f440:	50                   	push   ax
   4f441:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   4f444:	5a                   	pop    dx
   4f445:	f7 ea                	imul   dx
   4f447:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   4f44a:	6b c0 0f             	imul   ax,ax,0xf
   4f44d:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4f450:	b8 88 01             	mov    ax,0x188
   4f453:	8e c0                	mov    es,ax
   4f455:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   4f459:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   4f45c:	a3 54 d5             	mov    ds:0xd554,ax
   4f45f:	b8 88 01             	mov    ax,0x188
   4f462:	8e c0                	mov    es,ax
   4f464:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   4f468:	2b 46 f8             	sub    ax,WORD PTR [bp-0x8]
   4f46b:	a3 52 d5             	mov    ds:0xd552,ax
   4f46e:	68 88 01             	push   0x188
   4f471:	68 3b bb             	push   0xbb3b
   4f474:	9a 22 0b 20 00       	call   0x20:0xb22
   4f479:	83 c4 04             	add    sp,0x4
   4f47c:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4f481:	e9 06 0b             	jmp    0x4ff8a
   4f484:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   4f489:	e9 f2 0a             	jmp    0x4ff7e
   4f48c:	b8 88 01             	mov    ax,0x188
   4f48f:	8e c0                	mov    es,ax
   4f491:	26 a0 eb b9          	mov    al,es:0xb9eb
   4f495:	b4 00                	mov    ah,0x0
   4f497:	50                   	push   ax
   4f498:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f49b:	5a                   	pop    dx
   4f49c:	f7 ea                	imul   dx
   4f49e:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   4f4a1:	6b c0 0f             	imul   ax,ax,0xf
   4f4a4:	8b 56 f2             	mov    dx,WORD PTR [bp-0xe]
   4f4a7:	03 d0                	add    dx,ax
   4f4a9:	89 56 f0             	mov    WORD PTR [bp-0x10],dx
   4f4ac:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f4af:	99                   	cwd
   4f4b0:	bb 88 01             	mov    bx,0x188
   4f4b3:	8e c3                	mov    es,bx
   4f4b5:	50                   	push   ax
   4f4b6:	52                   	push   dx
   4f4b7:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f4bc:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f4c0:	59                   	pop    cx
   4f4c1:	5b                   	pop    bx
   4f4c2:	9a 77 14 00 00       	call   0x0:0x1477
   4f4c7:	8b d8                	mov    bx,ax
   4f4c9:	8e c2                	mov    es,dx
   4f4cb:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f4ce:	b4 00                	mov    ah,0x0
   4f4d0:	48                   	dec    ax
   4f4d1:	a3 3e d5             	mov    ds:0xd53e,ax
   4f4d4:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f4d7:	40                   	inc    ax
   4f4d8:	99                   	cwd
   4f4d9:	bb 88 01             	mov    bx,0x188
   4f4dc:	8e c3                	mov    es,bx
   4f4de:	50                   	push   ax
   4f4df:	52                   	push   dx
   4f4e0:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f4e5:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f4e9:	59                   	pop    cx
   4f4ea:	5b                   	pop    bx
   4f4eb:	9a 77 14 00 00       	call   0x0:0x1477
   4f4f0:	8b d8                	mov    bx,ax
   4f4f2:	8e c2                	mov    es,dx
   4f4f4:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f4f7:	b4 00                	mov    ah,0x0
   4f4f9:	a3 46 d5             	mov    ds:0xd546,ax
   4f4fc:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f4ff:	05 02 00             	add    ax,0x2
   4f502:	99                   	cwd
   4f503:	bb 88 01             	mov    bx,0x188
   4f506:	8e c3                	mov    es,bx
   4f508:	50                   	push   ax
   4f509:	52                   	push   dx
   4f50a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f50f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f513:	59                   	pop    cx
   4f514:	5b                   	pop    bx
   4f515:	9a 77 14 00 00       	call   0x0:0x1477
   4f51a:	8b d8                	mov    bx,ax
   4f51c:	8e c2                	mov    es,dx
   4f51e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f521:	b4 00                	mov    ah,0x0
   4f523:	48                   	dec    ax
   4f524:	a3 3c d5             	mov    ds:0xd53c,ax
   4f527:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f52a:	05 03 00             	add    ax,0x3
   4f52d:	99                   	cwd
   4f52e:	bb 88 01             	mov    bx,0x188
   4f531:	8e c3                	mov    es,bx
   4f533:	50                   	push   ax
   4f534:	52                   	push   dx
   4f535:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f53a:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f53e:	59                   	pop    cx
   4f53f:	5b                   	pop    bx
   4f540:	9a 77 14 00 00       	call   0x0:0x1477
   4f545:	8b d8                	mov    bx,ax
   4f547:	8e c2                	mov    es,dx
   4f549:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f54c:	b4 00                	mov    ah,0x0
   4f54e:	a3 44 d5             	mov    ds:0xd544,ax
   4f551:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f554:	05 04 00             	add    ax,0x4
   4f557:	99                   	cwd
   4f558:	bb 88 01             	mov    bx,0x188
   4f55b:	8e c3                	mov    es,bx
   4f55d:	50                   	push   ax
   4f55e:	52                   	push   dx
   4f55f:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f564:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f568:	59                   	pop    cx
   4f569:	5b                   	pop    bx
   4f56a:	9a 77 14 00 00       	call   0x0:0x1477
   4f56f:	8b d8                	mov    bx,ax
   4f571:	8e c2                	mov    es,dx
   4f573:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f576:	b4 00                	mov    ah,0x0
   4f578:	48                   	dec    ax
   4f579:	a3 3a d5             	mov    ds:0xd53a,ax
   4f57c:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f57f:	05 05 00             	add    ax,0x5
   4f582:	99                   	cwd
   4f583:	bb 88 01             	mov    bx,0x188
   4f586:	8e c3                	mov    es,bx
   4f588:	50                   	push   ax
   4f589:	52                   	push   dx
   4f58a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f58f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f593:	59                   	pop    cx
   4f594:	5b                   	pop    bx
   4f595:	9a 77 14 00 00       	call   0x0:0x1477
   4f59a:	8b d8                	mov    bx,ax
   4f59c:	8e c2                	mov    es,dx
   4f59e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f5a1:	b4 00                	mov    ah,0x0
   4f5a3:	a3 42 d5             	mov    ds:0xd542,ax
   4f5a6:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f5a9:	05 06 00             	add    ax,0x6
   4f5ac:	99                   	cwd
   4f5ad:	bb 88 01             	mov    bx,0x188
   4f5b0:	8e c3                	mov    es,bx
   4f5b2:	50                   	push   ax
   4f5b3:	52                   	push   dx
   4f5b4:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f5b9:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f5bd:	59                   	pop    cx
   4f5be:	5b                   	pop    bx
   4f5bf:	9a 77 14 00 00       	call   0x0:0x1477
   4f5c4:	8b d8                	mov    bx,ax
   4f5c6:	8e c2                	mov    es,dx
   4f5c8:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f5cb:	b4 00                	mov    ah,0x0
   4f5cd:	48                   	dec    ax
   4f5ce:	a3 38 d5             	mov    ds:0xd538,ax
   4f5d1:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f5d4:	05 07 00             	add    ax,0x7
   4f5d7:	99                   	cwd
   4f5d8:	bb 88 01             	mov    bx,0x188
   4f5db:	8e c3                	mov    es,bx
   4f5dd:	50                   	push   ax
   4f5de:	52                   	push   dx
   4f5df:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f5e4:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f5e8:	59                   	pop    cx
   4f5e9:	5b                   	pop    bx
   4f5ea:	9a 77 14 00 00       	call   0x0:0x1477
   4f5ef:	8b d8                	mov    bx,ax
   4f5f1:	8e c2                	mov    es,dx
   4f5f3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f5f6:	b4 00                	mov    ah,0x0
   4f5f8:	a3 40 d5             	mov    ds:0xd540,ax
   4f5fb:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   4f5fe:	05 09 00             	add    ax,0x9
   4f601:	99                   	cwd
   4f602:	bb 88 01             	mov    bx,0x188
   4f605:	8e c3                	mov    es,bx
   4f607:	50                   	push   ax
   4f608:	52                   	push   dx
   4f609:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   4f60e:	26 a1 ec b9          	mov    ax,es:0xb9ec
   4f612:	59                   	pop    cx
   4f613:	5b                   	pop    bx
   4f614:	9a 77 14 00 00       	call   0x0:0x1477
   4f619:	8b d8                	mov    bx,ax
   4f61b:	8e c2                	mov    es,dx
   4f61d:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4f620:	b4 00                	mov    ah,0x0
   4f622:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4f625:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f628:	69 db f8 01          	imul   bx,bx,0x1f8
   4f62c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f62f:	6b c0 12             	imul   ax,ax,0x12
   4f632:	03 d8                	add    bx,ax
   4f634:	83 bf ee c8 06       	cmp    WORD PTR [bx-0x3712],0x6
   4f639:	74 44                	je     0x4f67f
   4f63b:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f640:	eb 37                	jmp    0x4f679
   4f642:	c7 06 c8 d5 00 00    	mov    WORD PTR ds:0xd5c8,0x0
   4f648:	eb 25                	jmp    0x4f66f
   4f64a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f64d:	6b db 09             	imul   bx,bx,0x9
   4f650:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f653:	6b db 38             	imul   bx,bx,0x38
   4f656:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f659:	6b c0 09             	imul   ax,ax,0x9
   4f65c:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   4f660:	d1 e0                	shl    ax,1
   4f662:	03 d8                	add    bx,ax
   4f664:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   4f667:	89 87 ee c8          	mov    WORD PTR [bx-0x3712],ax
   4f66b:	ff 06 c8 d5          	inc    WORD PTR ds:0xd5c8
   4f66f:	83 3e c8 d5 09       	cmp    WORD PTR ds:0xd5c8,0x9
   4f674:	7c d4                	jl     0x4f64a
   4f676:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f679:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f67d:	7c c3                	jl     0x4f642
   4f67f:	83 3e 46 d5 01       	cmp    WORD PTR ds:0xd546,0x1
   4f684:	74 0a                	je     0x4f690
   4f686:	83 3e 46 d5 03       	cmp    WORD PTR ds:0xd546,0x3
   4f68b:	74 03                	je     0x4f690
   4f68d:	e9 03 01             	jmp    0x4f793
   4f690:	8b 1e 3e d5          	mov    bx,WORD PTR ds:0xd53e
   4f694:	d1 e3                	shl    bx,1
   4f696:	b8 88 01             	mov    ax,0x188
   4f699:	8e c0                	mov    es,ax
   4f69b:	26 83 bf 10 9f 09    	cmp    WORD PTR es:[bx-0x60f0],0x9
   4f6a1:	7c 03                	jl     0x4f6a6
   4f6a3:	e9 ed 00             	jmp    0x4f793
   4f6a6:	8b 1e 3e d5          	mov    bx,WORD PTR ds:0xd53e
   4f6aa:	d1 e3                	shl    bx,1
   4f6ac:	b8 88 01             	mov    ax,0x188
   4f6af:	8e c0                	mov    es,ax
   4f6b1:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f6b7:	75 35                	jne    0x4f6ee
   4f6b9:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   4f6bd:	75 2f                	jne    0x4f6ee
   4f6bf:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f6c4:	eb 1f                	jmp    0x4f6e5
   4f6c6:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f6c9:	6b db 09             	imul   bx,bx,0x9
   4f6cc:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f6cf:	6b db 38             	imul   bx,bx,0x38
   4f6d2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f6d5:	6b c0 09             	imul   ax,ax,0x9
   4f6d8:	d1 e0                	shl    ax,1
   4f6da:	03 d8                	add    bx,ax
   4f6dc:	c7 87 ec c8 06 00    	mov    WORD PTR [bx-0x3714],0x6
   4f6e2:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f6e5:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f6e9:	7c db                	jl     0x4f6c6
   4f6eb:	e9 9e 00             	jmp    0x4f78c
   4f6ee:	8b 1e 3e d5          	mov    bx,WORD PTR ds:0xd53e
   4f6f2:	d1 e3                	shl    bx,1
   4f6f4:	b8 88 01             	mov    ax,0x188
   4f6f7:	8e c0                	mov    es,ax
   4f6f9:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f6ff:	75 48                	jne    0x4f749
   4f701:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   4f705:	75 42                	jne    0x4f749
   4f707:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f70c:	eb 33                	jmp    0x4f741
   4f70e:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   4f713:	eb 23                	jmp    0x4f738
   4f715:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f718:	6b db 09             	imul   bx,bx,0x9
   4f71b:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f71e:	6b db 38             	imul   bx,bx,0x38
   4f721:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f724:	48                   	dec    ax
   4f725:	6b c0 09             	imul   ax,ax,0x9
   4f728:	03 46 ee             	add    ax,WORD PTR [bp-0x12]
   4f72b:	d1 e0                	shl    ax,1
   4f72d:	03 d8                	add    bx,ax
   4f72f:	c7 87 ee c8 06 00    	mov    WORD PTR [bx-0x3712],0x6
   4f735:	ff 46 ee             	inc    WORD PTR [bp-0x12]
   4f738:	83 7e ee 09          	cmp    WORD PTR [bp-0x12],0x9
   4f73c:	7c d7                	jl     0x4f715
   4f73e:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f741:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f745:	7c c7                	jl     0x4f70e
   4f747:	eb 43                	jmp    0x4f78c
   4f749:	8b 1e 3e d5          	mov    bx,WORD PTR ds:0xd53e
   4f74d:	d1 e3                	shl    bx,1
   4f74f:	b8 88 01             	mov    ax,0x188
   4f752:	8e c0                	mov    es,ax
   4f754:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f75a:	74 30                	je     0x4f78c
   4f75c:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f761:	eb 23                	jmp    0x4f786
   4f763:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f766:	6b db 09             	imul   bx,bx,0x9
   4f769:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f76c:	6b db 38             	imul   bx,bx,0x38
   4f76f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f772:	6b c0 09             	imul   ax,ax,0x9
   4f775:	d1 e0                	shl    ax,1
   4f777:	03 d8                	add    bx,ax
   4f779:	a1 3e d5             	mov    ax,ds:0xd53e
   4f77c:	05 0a 00             	add    ax,0xa
   4f77f:	89 87 ec c8          	mov    WORD PTR [bx-0x3714],ax
   4f783:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f786:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f78a:	7c d7                	jl     0x4f763
   4f78c:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   4f791:	eb 53                	jmp    0x4f7e6
   4f793:	83 3e 46 d5 02       	cmp    WORD PTR ds:0xd546,0x2
   4f798:	75 47                	jne    0x4f7e1
   4f79a:	8b 1e 3e d5          	mov    bx,WORD PTR ds:0xd53e
   4f79e:	d1 e3                	shl    bx,1
   4f7a0:	b8 88 01             	mov    ax,0x188
   4f7a3:	8e c0                	mov    es,ax
   4f7a5:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f7ab:	75 34                	jne    0x4f7e1
   4f7ad:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f7b2:	eb 25                	jmp    0x4f7d9
   4f7b4:	8a 46 df             	mov    al,BYTE PTR [bp-0x21]
   4f7b7:	b4 00                	mov    ah,0x0
   4f7b9:	05 09 00             	add    ax,0x9
   4f7bc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f7bf:	6b db 09             	imul   bx,bx,0x9
   4f7c2:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f7c5:	6b db 38             	imul   bx,bx,0x38
   4f7c8:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   4f7cb:	6b d2 09             	imul   dx,dx,0x9
   4f7ce:	d1 e2                	shl    dx,1
   4f7d0:	03 da                	add    bx,dx
   4f7d2:	89 87 ec c8          	mov    WORD PTR [bx-0x3714],ax
   4f7d6:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f7d9:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f7dd:	7c d5                	jl     0x4f7b4
   4f7df:	eb ab                	jmp    0x4f78c
   4f7e1:	c7 46 ee 01 00       	mov    WORD PTR [bp-0x12],0x1
   4f7e6:	83 3e 44 d5 01       	cmp    WORD PTR ds:0xd544,0x1
   4f7eb:	74 0a                	je     0x4f7f7
   4f7ed:	83 3e 44 d5 03       	cmp    WORD PTR ds:0xd544,0x3
   4f7f2:	74 03                	je     0x4f7f7
   4f7f4:	e9 ff 00             	jmp    0x4f8f6
   4f7f7:	8b 1e 3c d5          	mov    bx,WORD PTR ds:0xd53c
   4f7fb:	d1 e3                	shl    bx,1
   4f7fd:	b8 88 01             	mov    ax,0x188
   4f800:	8e c0                	mov    es,ax
   4f802:	26 83 bf 10 9f 09    	cmp    WORD PTR es:[bx-0x60f0],0x9
   4f808:	7c 03                	jl     0x4f80d
   4f80a:	e9 e9 00             	jmp    0x4f8f6
   4f80d:	8b 1e 3c d5          	mov    bx,WORD PTR ds:0xd53c
   4f811:	d1 e3                	shl    bx,1
   4f813:	b8 88 01             	mov    ax,0x188
   4f816:	8e c0                	mov    es,ax
   4f818:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f81e:	75 33                	jne    0x4f853
   4f820:	83 7e fc 02          	cmp    WORD PTR [bp-0x4],0x2
   4f824:	75 2d                	jne    0x4f853
   4f826:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f82b:	eb 1d                	jmp    0x4f84a
   4f82d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f830:	69 db f8 01          	imul   bx,bx,0x1f8
   4f834:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f837:	6b c0 09             	imul   ax,ax,0x9
   4f83a:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   4f83d:	d1 e0                	shl    ax,1
   4f83f:	03 d8                	add    bx,ax
   4f841:	c7 87 ae ca 06 00    	mov    WORD PTR [bx-0x3552],0x6
   4f847:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f84a:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f84e:	7c dd                	jl     0x4f82d
   4f850:	e9 9c 00             	jmp    0x4f8ef
   4f853:	8b 1e 3c d5          	mov    bx,WORD PTR ds:0xd53c
   4f857:	d1 e3                	shl    bx,1
   4f859:	b8 88 01             	mov    ax,0x188
   4f85c:	8e c0                	mov    es,ax
   4f85e:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f864:	75 48                	jne    0x4f8ae
   4f866:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   4f86a:	75 42                	jne    0x4f8ae
   4f86c:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f871:	eb 33                	jmp    0x4f8a6
   4f873:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   4f878:	eb 23                	jmp    0x4f89d
   4f87a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f87d:	43                   	inc    bx
   4f87e:	6b db 09             	imul   bx,bx,0x9
   4f881:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f884:	6b db 38             	imul   bx,bx,0x38
   4f887:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f88a:	6b c0 09             	imul   ax,ax,0x9
   4f88d:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4f890:	d1 e0                	shl    ax,1
   4f892:	03 d8                	add    bx,ax
   4f894:	c7 87 ee c8 06 00    	mov    WORD PTR [bx-0x3712],0x6
   4f89a:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   4f89d:	83 7e ec 09          	cmp    WORD PTR [bp-0x14],0x9
   4f8a1:	7c d7                	jl     0x4f87a
   4f8a3:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f8a6:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f8aa:	7c c7                	jl     0x4f873
   4f8ac:	eb 41                	jmp    0x4f8ef
   4f8ae:	8b 1e 3c d5          	mov    bx,WORD PTR ds:0xd53c
   4f8b2:	d1 e3                	shl    bx,1
   4f8b4:	b8 88 01             	mov    ax,0x188
   4f8b7:	8e c0                	mov    es,ax
   4f8b9:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f8bf:	74 2e                	je     0x4f8ef
   4f8c1:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f8c6:	eb 21                	jmp    0x4f8e9
   4f8c8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f8cb:	69 db f8 01          	imul   bx,bx,0x1f8
   4f8cf:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f8d2:	6b c0 09             	imul   ax,ax,0x9
   4f8d5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   4f8d8:	d1 e0                	shl    ax,1
   4f8da:	03 d8                	add    bx,ax
   4f8dc:	a1 3c d5             	mov    ax,ds:0xd53c
   4f8df:	05 0a 00             	add    ax,0xa
   4f8e2:	89 87 ae ca          	mov    WORD PTR [bx-0x3552],ax
   4f8e6:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f8e9:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f8ed:	7c d9                	jl     0x4f8c8
   4f8ef:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   4f8f4:	eb 51                	jmp    0x4f947
   4f8f6:	83 3e 44 d5 02       	cmp    WORD PTR ds:0xd544,0x2
   4f8fb:	75 45                	jne    0x4f942
   4f8fd:	8b 1e 3c d5          	mov    bx,WORD PTR ds:0xd53c
   4f901:	d1 e3                	shl    bx,1
   4f903:	b8 88 01             	mov    ax,0x188
   4f906:	8e c0                	mov    es,ax
   4f908:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f90e:	75 32                	jne    0x4f942
   4f910:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f915:	eb 23                	jmp    0x4f93a
   4f917:	8a 46 df             	mov    al,BYTE PTR [bp-0x21]
   4f91a:	b4 00                	mov    ah,0x0
   4f91c:	05 09 00             	add    ax,0x9
   4f91f:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f922:	69 db f8 01          	imul   bx,bx,0x1f8
   4f926:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   4f929:	6b d2 09             	imul   dx,dx,0x9
   4f92c:	03 56 fa             	add    dx,WORD PTR [bp-0x6]
   4f92f:	d1 e2                	shl    dx,1
   4f931:	03 da                	add    bx,dx
   4f933:	89 87 ae ca          	mov    WORD PTR [bx-0x3552],ax
   4f937:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f93a:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f93e:	7c d7                	jl     0x4f917
   4f940:	eb ad                	jmp    0x4f8ef
   4f942:	c7 46 ec 01 00       	mov    WORD PTR [bp-0x14],0x1
   4f947:	83 3e 42 d5 01       	cmp    WORD PTR ds:0xd542,0x1
   4f94c:	74 0a                	je     0x4f958
   4f94e:	83 3e 42 d5 03       	cmp    WORD PTR ds:0xd542,0x3
   4f953:	74 03                	je     0x4f958
   4f955:	e9 05 01             	jmp    0x4fa5d
   4f958:	8b 1e 3a d5          	mov    bx,WORD PTR ds:0xd53a
   4f95c:	d1 e3                	shl    bx,1
   4f95e:	b8 88 01             	mov    ax,0x188
   4f961:	8e c0                	mov    es,ax
   4f963:	26 83 bf 10 9f 09    	cmp    WORD PTR es:[bx-0x60f0],0x9
   4f969:	7c 03                	jl     0x4f96e
   4f96b:	e9 ef 00             	jmp    0x4fa5d
   4f96e:	8b 1e 3a d5          	mov    bx,WORD PTR ds:0xd53a
   4f972:	d1 e3                	shl    bx,1
   4f974:	b8 88 01             	mov    ax,0x188
   4f977:	8e c0                	mov    es,ax
   4f979:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f97f:	75 36                	jne    0x4f9b7
   4f981:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   4f985:	75 30                	jne    0x4f9b7
   4f987:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f98c:	eb 20                	jmp    0x4f9ae
   4f98e:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f991:	6b db 09             	imul   bx,bx,0x9
   4f994:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f997:	6b db 38             	imul   bx,bx,0x38
   4f99a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f99d:	40                   	inc    ax
   4f99e:	6b c0 09             	imul   ax,ax,0x9
   4f9a1:	d1 e0                	shl    ax,1
   4f9a3:	03 d8                	add    bx,ax
   4f9a5:	c7 87 ec c8 06 00    	mov    WORD PTR [bx-0x3714],0x6
   4f9ab:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4f9ae:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4f9b2:	7c da                	jl     0x4f98e
   4f9b4:	e9 9f 00             	jmp    0x4fa56
   4f9b7:	8b 1e 3a d5          	mov    bx,WORD PTR ds:0xd53a
   4f9bb:	d1 e3                	shl    bx,1
   4f9bd:	b8 88 01             	mov    ax,0x188
   4f9c0:	8e c0                	mov    es,ax
   4f9c2:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4f9c8:	75 48                	jne    0x4fa12
   4f9ca:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   4f9ce:	75 42                	jne    0x4fa12
   4f9d0:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4f9d5:	eb 33                	jmp    0x4fa0a
   4f9d7:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   4f9dc:	eb 23                	jmp    0x4fa01
   4f9de:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4f9e1:	6b db 09             	imul   bx,bx,0x9
   4f9e4:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4f9e7:	6b db 38             	imul   bx,bx,0x38
   4f9ea:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4f9ed:	40                   	inc    ax
   4f9ee:	6b c0 09             	imul   ax,ax,0x9
   4f9f1:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4f9f4:	d1 e0                	shl    ax,1
   4f9f6:	03 d8                	add    bx,ax
   4f9f8:	c7 87 ee c8 06 00    	mov    WORD PTR [bx-0x3712],0x6
   4f9fe:	ff 46 ea             	inc    WORD PTR [bp-0x16]
   4fa01:	83 7e ea 09          	cmp    WORD PTR [bp-0x16],0x9
   4fa05:	7c d7                	jl     0x4f9de
   4fa07:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4fa0a:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4fa0e:	7c c7                	jl     0x4f9d7
   4fa10:	eb 44                	jmp    0x4fa56
   4fa12:	8b 1e 3a d5          	mov    bx,WORD PTR ds:0xd53a
   4fa16:	d1 e3                	shl    bx,1
   4fa18:	b8 88 01             	mov    ax,0x188
   4fa1b:	8e c0                	mov    es,ax
   4fa1d:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4fa23:	74 31                	je     0x4fa56
   4fa25:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4fa2a:	eb 24                	jmp    0x4fa50
   4fa2c:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fa2f:	6b db 09             	imul   bx,bx,0x9
   4fa32:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4fa35:	6b db 38             	imul   bx,bx,0x38
   4fa38:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fa3b:	40                   	inc    ax
   4fa3c:	6b c0 09             	imul   ax,ax,0x9
   4fa3f:	d1 e0                	shl    ax,1
   4fa41:	03 d8                	add    bx,ax
   4fa43:	a1 3a d5             	mov    ax,ds:0xd53a
   4fa46:	05 0a 00             	add    ax,0xa
   4fa49:	89 87 ec c8          	mov    WORD PTR [bx-0x3714],ax
   4fa4d:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4fa50:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4fa54:	7c d6                	jl     0x4fa2c
   4fa56:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   4fa5b:	eb 54                	jmp    0x4fab1
   4fa5d:	83 3e 42 d5 02       	cmp    WORD PTR ds:0xd542,0x2
   4fa62:	75 48                	jne    0x4faac
   4fa64:	8b 1e 3a d5          	mov    bx,WORD PTR ds:0xd53a
   4fa68:	d1 e3                	shl    bx,1
   4fa6a:	b8 88 01             	mov    ax,0x188
   4fa6d:	8e c0                	mov    es,ax
   4fa6f:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4fa75:	75 35                	jne    0x4faac
   4fa77:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4fa7c:	eb 26                	jmp    0x4faa4
   4fa7e:	8a 46 df             	mov    al,BYTE PTR [bp-0x21]
   4fa81:	b4 00                	mov    ah,0x0
   4fa83:	05 09 00             	add    ax,0x9
   4fa86:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fa89:	6b db 09             	imul   bx,bx,0x9
   4fa8c:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4fa8f:	6b db 38             	imul   bx,bx,0x38
   4fa92:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   4fa95:	42                   	inc    dx
   4fa96:	6b d2 09             	imul   dx,dx,0x9
   4fa99:	d1 e2                	shl    dx,1
   4fa9b:	03 da                	add    bx,dx
   4fa9d:	89 87 ec c8          	mov    WORD PTR [bx-0x3714],ax
   4faa1:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4faa4:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4faa8:	7c d4                	jl     0x4fa7e
   4faaa:	eb aa                	jmp    0x4fa56
   4faac:	c7 46 ea 01 00       	mov    WORD PTR [bp-0x16],0x1
   4fab1:	83 3e 40 d5 01       	cmp    WORD PTR ds:0xd540,0x1
   4fab6:	74 0a                	je     0x4fac2
   4fab8:	83 3e 40 d5 03       	cmp    WORD PTR ds:0xd540,0x3
   4fabd:	74 03                	je     0x4fac2
   4fabf:	e9 54 01             	jmp    0x4fc16
   4fac2:	8b 1e 38 d5          	mov    bx,WORD PTR ds:0xd538
   4fac6:	d1 e3                	shl    bx,1
   4fac8:	b8 88 01             	mov    ax,0x188
   4facb:	8e c0                	mov    es,ax
   4facd:	26 83 bf 10 9f 09    	cmp    WORD PTR es:[bx-0x60f0],0x9
   4fad3:	7c 03                	jl     0x4fad8
   4fad5:	e9 3e 01             	jmp    0x4fc16
   4fad8:	8b 1e 38 d5          	mov    bx,WORD PTR ds:0xd538
   4fadc:	d1 e3                	shl    bx,1
   4fade:	b8 88 01             	mov    ax,0x188
   4fae1:	8e c0                	mov    es,ax
   4fae3:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4fae9:	75 33                	jne    0x4fb1e
   4faeb:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   4faef:	75 2d                	jne    0x4fb1e
   4faf1:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4faf6:	eb 1d                	jmp    0x4fb15
   4faf8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fafb:	69 db f8 01          	imul   bx,bx,0x1f8
   4faff:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fb02:	6b c0 09             	imul   ax,ax,0x9
   4fb05:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   4fb08:	d1 e0                	shl    ax,1
   4fb0a:	03 d8                	add    bx,ax
   4fb0c:	c7 87 b6 c8 06 00    	mov    WORD PTR [bx-0x374a],0x6
   4fb12:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4fb15:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4fb19:	7c dd                	jl     0x4faf8
   4fb1b:	e9 9c 00             	jmp    0x4fbba
   4fb1e:	8b 1e 38 d5          	mov    bx,WORD PTR ds:0xd538
   4fb22:	d1 e3                	shl    bx,1
   4fb24:	b8 88 01             	mov    ax,0x188
   4fb27:	8e c0                	mov    es,ax
   4fb29:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4fb2f:	75 48                	jne    0x4fb79
   4fb31:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   4fb35:	75 42                	jne    0x4fb79
   4fb37:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4fb3c:	eb 33                	jmp    0x4fb71
   4fb3e:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   4fb43:	eb 23                	jmp    0x4fb68
   4fb45:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fb48:	4b                   	dec    bx
   4fb49:	6b db 09             	imul   bx,bx,0x9
   4fb4c:	03 5e fa             	add    bx,WORD PTR [bp-0x6]
   4fb4f:	6b db 38             	imul   bx,bx,0x38
   4fb52:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fb55:	6b c0 09             	imul   ax,ax,0x9
   4fb58:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   4fb5b:	d1 e0                	shl    ax,1
   4fb5d:	03 d8                	add    bx,ax
   4fb5f:	c7 87 ee c8 06 00    	mov    WORD PTR [bx-0x3712],0x6
   4fb65:	ff 46 e8             	inc    WORD PTR [bp-0x18]
   4fb68:	83 7e e8 09          	cmp    WORD PTR [bp-0x18],0x9
   4fb6c:	7c d7                	jl     0x4fb45
   4fb6e:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4fb71:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4fb75:	7c c7                	jl     0x4fb3e
   4fb77:	eb 41                	jmp    0x4fbba
   4fb79:	8b 1e 38 d5          	mov    bx,WORD PTR ds:0xd538
   4fb7d:	d1 e3                	shl    bx,1
   4fb7f:	b8 88 01             	mov    ax,0x188
   4fb82:	8e c0                	mov    es,ax
   4fb84:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4fb8a:	74 2e                	je     0x4fbba
   4fb8c:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4fb91:	eb 21                	jmp    0x4fbb4
   4fb93:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fb96:	69 db f8 01          	imul   bx,bx,0x1f8
   4fb9a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fb9d:	6b c0 09             	imul   ax,ax,0x9
   4fba0:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   4fba3:	d1 e0                	shl    ax,1
   4fba5:	03 d8                	add    bx,ax
   4fba7:	a1 38 d5             	mov    ax,ds:0xd538
   4fbaa:	05 0a 00             	add    ax,0xa
   4fbad:	89 87 b6 c8          	mov    WORD PTR [bx-0x374a],ax
   4fbb1:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4fbb4:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4fbb8:	7c d9                	jl     0x4fb93
   4fbba:	83 3e 46 d5 01       	cmp    WORD PTR ds:0xd546,0x1
   4fbbf:	74 07                	je     0x4fbc8
   4fbc1:	83 3e 46 d5 03       	cmp    WORD PTR ds:0xd546,0x3
   4fbc6:	75 46                	jne    0x4fc0e
   4fbc8:	8b 1e 3e d5          	mov    bx,WORD PTR ds:0xd53e
   4fbcc:	d1 e3                	shl    bx,1
   4fbce:	b8 88 01             	mov    ax,0x188
   4fbd1:	8e c0                	mov    es,ax
   4fbd3:	26 83 bf 10 9f 09    	cmp    WORD PTR es:[bx-0x60f0],0x9
   4fbd9:	7d 33                	jge    0x4fc0e
   4fbdb:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fbde:	69 db f8 01          	imul   bx,bx,0x1f8
   4fbe2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fbe5:	6b c0 09             	imul   ax,ax,0x9
   4fbe8:	d1 e0                	shl    ax,1
   4fbea:	03 d8                	add    bx,ax
   4fbec:	83 bf b4 c8 0a       	cmp    WORD PTR [bx-0x374c],0xa
   4fbf1:	7d 1b                	jge    0x4fc0e
   4fbf3:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fbf6:	69 db f8 01          	imul   bx,bx,0x1f8
   4fbfa:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fbfd:	6b c0 09             	imul   ax,ax,0x9
   4fc00:	d1 e0                	shl    ax,1
   4fc02:	03 d8                	add    bx,ax
   4fc04:	a1 3e d5             	mov    ax,ds:0xd53e
   4fc07:	05 0a 00             	add    ax,0xa
   4fc0a:	89 87 b4 c8          	mov    WORD PTR [bx-0x374c],ax
   4fc0e:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   4fc13:	e9 af 00             	jmp    0x4fcc5
   4fc16:	83 3e 40 d5 02       	cmp    WORD PTR ds:0xd540,0x2
   4fc1b:	74 03                	je     0x4fc20
   4fc1d:	e9 a0 00             	jmp    0x4fcc0
   4fc20:	8b 1e 38 d5          	mov    bx,WORD PTR ds:0xd538
   4fc24:	d1 e3                	shl    bx,1
   4fc26:	b8 88 01             	mov    ax,0x188
   4fc29:	8e c0                	mov    es,ax
   4fc2b:	26 83 bf 10 9f 08    	cmp    WORD PTR es:[bx-0x60f0],0x8
   4fc31:	74 03                	je     0x4fc36
   4fc33:	e9 8a 00             	jmp    0x4fcc0
   4fc36:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   4fc3b:	eb 23                	jmp    0x4fc60
   4fc3d:	8a 46 df             	mov    al,BYTE PTR [bp-0x21]
   4fc40:	b4 00                	mov    ah,0x0
   4fc42:	05 09 00             	add    ax,0x9
   4fc45:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fc48:	69 db f8 01          	imul   bx,bx,0x1f8
   4fc4c:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   4fc4f:	6b d2 09             	imul   dx,dx,0x9
   4fc52:	03 56 fa             	add    dx,WORD PTR [bp-0x6]
   4fc55:	d1 e2                	shl    dx,1
   4fc57:	03 da                	add    bx,dx
   4fc59:	89 87 b6 c8          	mov    WORD PTR [bx-0x374a],ax
   4fc5d:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4fc60:	83 7e fa 09          	cmp    WORD PTR [bp-0x6],0x9
   4fc64:	7c d7                	jl     0x4fc3d
   4fc66:	83 3e 46 d5 01       	cmp    WORD PTR ds:0xd546,0x1
   4fc6b:	74 07                	je     0x4fc74
   4fc6d:	83 3e 46 d5 03       	cmp    WORD PTR ds:0xd546,0x3
   4fc72:	75 49                	jne    0x4fcbd
   4fc74:	8b 1e 3e d5          	mov    bx,WORD PTR ds:0xd53e
   4fc78:	d1 e3                	shl    bx,1
   4fc7a:	b8 88 01             	mov    ax,0x188
   4fc7d:	8e c0                	mov    es,ax
   4fc7f:	26 83 bf 10 9f 09    	cmp    WORD PTR es:[bx-0x60f0],0x9
   4fc85:	7d 36                	jge    0x4fcbd
   4fc87:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fc8a:	69 db f8 01          	imul   bx,bx,0x1f8
   4fc8e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fc91:	6b c0 09             	imul   ax,ax,0x9
   4fc94:	d1 e0                	shl    ax,1
   4fc96:	03 d8                	add    bx,ax
   4fc98:	83 bf b4 c8 0a       	cmp    WORD PTR [bx-0x374c],0xa
   4fc9d:	7d 1e                	jge    0x4fcbd
   4fc9f:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   4fca2:	69 db f8 01          	imul   bx,bx,0x1f8
   4fca6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fca9:	6b c0 09             	imul   ax,ax,0x9
   4fcac:	d1 e0                	shl    ax,1
   4fcae:	03 d8                	add    bx,ax
   4fcb0:	a1 3e d5             	mov    ax,ds:0xd53e
   4fcb3:	05 0a 00             	add    ax,0xa
   4fcb6:	89 87 b4 c8          	mov    WORD PTR [bx-0x374c],ax
   4fcba:	e9 51 ff             	jmp    0x4fc0e
   4fcbd:	e9 4e ff             	jmp    0x4fc0e
   4fcc0:	c7 46 e8 01 00       	mov    WORD PTR [bp-0x18],0x1
   4fcc5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4fcc8:	6b c0 09             	imul   ax,ax,0x9
   4fccb:	40                   	inc    ax
   4fccc:	2b 46 ee             	sub    ax,WORD PTR [bp-0x12]
   4fccf:	a3 c8 d5             	mov    ds:0xd5c8,ax
   4fcd2:	e9 91 02             	jmp    0x4ff66
   4fcd5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4fcd8:	6b c0 09             	imul   ax,ax,0x9
   4fcdb:	40                   	inc    ax
   4fcdc:	2b 46 e8             	sub    ax,WORD PTR [bp-0x18]
   4fcdf:	a3 ca d5             	mov    ds:0xd5ca,ax
   4fce2:	e9 67 02             	jmp    0x4ff4c
   4fce5:	6a 00                	push   0x0
   4fce7:	68 00 80             	push   0x8000
   4fcea:	9a 79 17 00 00       	call   0x0:0x1779
   4fcef:	99                   	cwd
   4fcf0:	50                   	push   ax
   4fcf1:	52                   	push   dx
   4fcf2:	33 d2                	xor    dx,dx
   4fcf4:	b8 65 00             	mov    ax,0x65
   4fcf7:	59                   	pop    cx
   4fcf8:	5b                   	pop    bx
   4fcf9:	9a 42 12 00 00       	call   0x0:0x1242
   4fcfe:	52                   	push   dx
   4fcff:	50                   	push   ax
   4fd00:	9a df 12 00 00       	call   0x0:0x12df
   4fd05:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   4fd08:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fd0c:	6b db 38             	imul   bx,bx,0x38
   4fd0f:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fd12:	d1 e0                	shl    ax,1
   4fd14:	03 d8                	add    bx,ax
   4fd16:	8b 87 ee c8          	mov    ax,WORD PTR [bx-0x3712]
   4fd1a:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   4fd1d:	83 7e e4 06          	cmp    WORD PTR [bp-0x1c],0x6
   4fd21:	75 03                	jne    0x4fd26
   4fd23:	e9 21 02             	jmp    0x4ff47
   4fd26:	83 7e f4 01          	cmp    WORD PTR [bp-0xc],0x1
   4fd2a:	74 03                	je     0x4fd2f
   4fd2c:	e9 c8 00             	jmp    0x4fdf7
   4fd2f:	83 7e e6 46          	cmp    WORD PTR [bp-0x1a],0x46
   4fd33:	7d 08                	jge    0x4fd3d
   4fd35:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   4fd3a:	e9 f5 01             	jmp    0x4ff32
   4fd3d:	83 7e e6 5a          	cmp    WORD PTR [bp-0x1a],0x5a
   4fd41:	7d 08                	jge    0x4fd4b
   4fd43:	c7 46 e4 07 00       	mov    WORD PTR [bp-0x1c],0x7
   4fd48:	e9 e7 01             	jmp    0x4ff32
   4fd4b:	6a 00                	push   0x0
   4fd4d:	68 00 80             	push   0x8000
   4fd50:	9a 79 17 00 00       	call   0x0:0x1779
   4fd55:	99                   	cwd
   4fd56:	d1 e0                	shl    ax,1
   4fd58:	d1 d2                	rcl    dx,1
   4fd5a:	52                   	push   dx
   4fd5b:	50                   	push   ax
   4fd5c:	9a df 12 00 00       	call   0x0:0x12df
   4fd61:	0b c0                	or     ax,ax
   4fd63:	75 57                	jne    0x4fdbc
   4fd65:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fd69:	6b db 38             	imul   bx,bx,0x38
   4fd6c:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fd6f:	d1 e0                	shl    ax,1
   4fd71:	03 d8                	add    bx,ax
   4fd73:	83 bf ec c8 00       	cmp    WORD PTR [bx-0x3714],0x0
   4fd78:	74 42                	je     0x4fdbc
   4fd7a:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fd7e:	6b db 38             	imul   bx,bx,0x38
   4fd81:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fd84:	d1 e0                	shl    ax,1
   4fd86:	03 d8                	add    bx,ax
   4fd88:	83 bf b6 c8 00       	cmp    WORD PTR [bx-0x374a],0x0
   4fd8d:	74 2d                	je     0x4fdbc
   4fd8f:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fd93:	6b db 38             	imul   bx,bx,0x38
   4fd96:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fd99:	d1 e0                	shl    ax,1
   4fd9b:	03 d8                	add    bx,ax
   4fd9d:	83 bf ec c8 06       	cmp    WORD PTR [bx-0x3714],0x6
   4fda2:	74 18                	je     0x4fdbc
   4fda4:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fda8:	6b db 38             	imul   bx,bx,0x38
   4fdab:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fdae:	d1 e0                	shl    ax,1
   4fdb0:	03 d8                	add    bx,ax
   4fdb2:	83 bf b6 c8 06       	cmp    WORD PTR [bx-0x374a],0x6
   4fdb7:	74 03                	je     0x4fdbc
   4fdb9:	e9 40 01             	jmp    0x4fefc
   4fdbc:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fdc0:	6b db 38             	imul   bx,bx,0x38
   4fdc3:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fdc6:	d1 e0                	shl    ax,1
   4fdc8:	03 d8                	add    bx,ax
   4fdca:	83 bf ec c8 00       	cmp    WORD PTR [bx-0x3714],0x0
   4fdcf:	75 03                	jne    0x4fdd4
   4fdd1:	e9 5e 01             	jmp    0x4ff32
   4fdd4:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fdd8:	6b db 38             	imul   bx,bx,0x38
   4fddb:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fdde:	d1 e0                	shl    ax,1
   4fde0:	03 d8                	add    bx,ax
   4fde2:	83 bf b6 c8 00       	cmp    WORD PTR [bx-0x374a],0x0
   4fde7:	75 03                	jne    0x4fdec
   4fde9:	e9 46 01             	jmp    0x4ff32
   4fdec:	c7 46 e4 06 00       	mov    WORD PTR [bp-0x1c],0x6
   4fdf1:	e9 3e 01             	jmp    0x4ff32
   4fdf4:	e9 3b 01             	jmp    0x4ff32
   4fdf7:	83 7e f4 02          	cmp    WORD PTR [bp-0xc],0x2
   4fdfb:	75 33                	jne    0x4fe30
   4fdfd:	83 7e e6 02          	cmp    WORD PTR [bp-0x1a],0x2
   4fe01:	7d 2d                	jge    0x4fe30
   4fe03:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fe07:	6b db 38             	imul   bx,bx,0x38
   4fe0a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fe0d:	d1 e0                	shl    ax,1
   4fe0f:	03 d8                	add    bx,ax
   4fe11:	83 bf ec c8 00       	cmp    WORD PTR [bx-0x3714],0x0
   4fe16:	74 18                	je     0x4fe30
   4fe18:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fe1c:	6b db 38             	imul   bx,bx,0x38
   4fe1f:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fe22:	d1 e0                	shl    ax,1
   4fe24:	03 d8                	add    bx,ax
   4fe26:	83 bf b6 c8 00       	cmp    WORD PTR [bx-0x374a],0x0
   4fe2b:	74 03                	je     0x4fe30
   4fe2d:	e9 cc 00             	jmp    0x4fefc
   4fe30:	83 7e f4 03          	cmp    WORD PTR [bp-0xc],0x3
   4fe34:	75 33                	jne    0x4fe69
   4fe36:	83 7e e6 02          	cmp    WORD PTR [bp-0x1a],0x2
   4fe3a:	7d 2d                	jge    0x4fe69
   4fe3c:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fe40:	6b db 38             	imul   bx,bx,0x38
   4fe43:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fe46:	d1 e0                	shl    ax,1
   4fe48:	03 d8                	add    bx,ax
   4fe4a:	83 bf ec c8 00       	cmp    WORD PTR [bx-0x3714],0x0
   4fe4f:	74 18                	je     0x4fe69
   4fe51:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fe55:	6b db 38             	imul   bx,bx,0x38
   4fe58:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fe5b:	d1 e0                	shl    ax,1
   4fe5d:	03 d8                	add    bx,ax
   4fe5f:	83 bf b6 c8 00       	cmp    WORD PTR [bx-0x374a],0x0
   4fe64:	74 03                	je     0x4fe69
   4fe66:	e9 93 00             	jmp    0x4fefc
   4fe69:	83 7e f4 04          	cmp    WORD PTR [bp-0xc],0x4
   4fe6d:	74 03                	je     0x4fe72
   4fe6f:	e9 c0 00             	jmp    0x4ff32
   4fe72:	83 7e e6 46          	cmp    WORD PTR [bp-0x1a],0x46
   4fe76:	7d 08                	jge    0x4fe80
   4fe78:	c7 46 e4 04 00       	mov    WORD PTR [bp-0x1c],0x4
   4fe7d:	e9 b2 00             	jmp    0x4ff32
   4fe80:	83 7e e6 5a          	cmp    WORD PTR [bp-0x1a],0x5a
   4fe84:	7d 08                	jge    0x4fe8e
   4fe86:	c7 46 e4 09 00       	mov    WORD PTR [bp-0x1c],0x9
   4fe8b:	e9 a4 00             	jmp    0x4ff32
   4fe8e:	6a 00                	push   0x0
   4fe90:	68 00 80             	push   0x8000
   4fe93:	9a 79 17 00 00       	call   0x0:0x1779
   4fe98:	99                   	cwd
   4fe99:	d1 e0                	shl    ax,1
   4fe9b:	d1 d2                	rcl    dx,1
   4fe9d:	52                   	push   dx
   4fe9e:	50                   	push   ax
   4fe9f:	9a df 12 00 00       	call   0x0:0x12df
   4fea4:	0b c0                	or     ax,ax
   4fea6:	75 5b                	jne    0x4ff03
   4fea8:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4feac:	6b db 38             	imul   bx,bx,0x38
   4feaf:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4feb2:	d1 e0                	shl    ax,1
   4feb4:	03 d8                	add    bx,ax
   4feb6:	83 bf ec c8 00       	cmp    WORD PTR [bx-0x3714],0x0
   4febb:	74 46                	je     0x4ff03
   4febd:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fec1:	6b db 38             	imul   bx,bx,0x38
   4fec4:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fec7:	d1 e0                	shl    ax,1
   4fec9:	03 d8                	add    bx,ax
   4fecb:	83 bf b6 c8 00       	cmp    WORD PTR [bx-0x374a],0x0
   4fed0:	74 31                	je     0x4ff03
   4fed2:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4fed6:	6b db 38             	imul   bx,bx,0x38
   4fed9:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fedc:	d1 e0                	shl    ax,1
   4fede:	03 d8                	add    bx,ax
   4fee0:	83 bf ec c8 08       	cmp    WORD PTR [bx-0x3714],0x8
   4fee5:	74 1c                	je     0x4ff03
   4fee7:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4feeb:	6b db 38             	imul   bx,bx,0x38
   4feee:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4fef1:	d1 e0                	shl    ax,1
   4fef3:	03 d8                	add    bx,ax
   4fef5:	83 bf b6 c8 08       	cmp    WORD PTR [bx-0x374a],0x8
   4fefa:	74 07                	je     0x4ff03
   4fefc:	c7 46 e4 00 00       	mov    WORD PTR [bp-0x1c],0x0
   4ff01:	eb 2f                	jmp    0x4ff32
   4ff03:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4ff07:	6b db 38             	imul   bx,bx,0x38
   4ff0a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4ff0d:	d1 e0                	shl    ax,1
   4ff0f:	03 d8                	add    bx,ax
   4ff11:	83 bf ec c8 00       	cmp    WORD PTR [bx-0x3714],0x0
   4ff16:	74 1a                	je     0x4ff32
   4ff18:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4ff1c:	6b db 38             	imul   bx,bx,0x38
   4ff1f:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4ff22:	d1 e0                	shl    ax,1
   4ff24:	03 d8                	add    bx,ax
   4ff26:	83 bf b6 c8 00       	cmp    WORD PTR [bx-0x374a],0x0
   4ff2b:	74 05                	je     0x4ff32
   4ff2d:	c7 46 e4 08 00       	mov    WORD PTR [bp-0x1c],0x8
   4ff32:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   4ff36:	6b db 38             	imul   bx,bx,0x38
   4ff39:	a1 c8 d5             	mov    ax,ds:0xd5c8
   4ff3c:	d1 e0                	shl    ax,1
   4ff3e:	03 d8                	add    bx,ax
   4ff40:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   4ff43:	89 87 ee c8          	mov    WORD PTR [bx-0x3712],ax
   4ff47:	83 06 ca d5 05       	add    WORD PTR ds:0xd5ca,0x5
   4ff4c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   4ff4f:	6b c0 09             	imul   ax,ax,0x9
   4ff52:	03 46 ec             	add    ax,WORD PTR [bp-0x14]
   4ff55:	05 08 00             	add    ax,0x8
   4ff58:	3b 06 ca d5          	cmp    ax,WORD PTR ds:0xd5ca
   4ff5c:	7c 03                	jl     0x4ff61
   4ff5e:	e9 84 fd             	jmp    0x4fce5
   4ff61:	83 06 c8 d5 05       	add    WORD PTR ds:0xd5c8,0x5
   4ff66:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4ff69:	6b c0 09             	imul   ax,ax,0x9
   4ff6c:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   4ff6f:	05 08 00             	add    ax,0x8
   4ff72:	3b 06 c8 d5          	cmp    ax,WORD PTR ds:0xd5c8
   4ff76:	7c 03                	jl     0x4ff7b
   4ff78:	e9 5a fd             	jmp    0x4fcd5
   4ff7b:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   4ff7e:	83 7e fc 02          	cmp    WORD PTR [bp-0x4],0x2
   4ff82:	7f 03                	jg     0x4ff87
   4ff84:	e9 05 f5             	jmp    0x4f48c
   4ff87:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   4ff8a:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   4ff8e:	7f 03                	jg     0x4ff93
   4ff90:	e9 f1 f4             	jmp    0x4f484
   4ff93:	c9                   	leave
   4ff94:	cb                   	retf
   4ff95:	55                   	push   bp
   4ff96:	8b ec                	mov    bp,sp
   4ff98:	c7 06 ac d5 01 00    	mov    WORD PTR ds:0xd5ac,0x1
   4ff9e:	e9 98 01             	jmp    0x40139
   4ffa1:	90                   	nop
   4ffa2:	0e                   	push   cs
   4ffa3:	e8 9f 01             	call   0x40145
   4ffa6:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   4ffaa:	6b db 5c             	imul   bx,bx,0x5c
   4ffad:	b8 88 01             	mov    ax,0x188
   4ffb0:	8e c0                	mov    es,ax
   4ffb2:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   4ffb7:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   4ffbb:	6b db 28             	imul   bx,bx,0x28
   4ffbe:	ba 88 01             	mov    dx,0x188
   4ffc1:	8e c2                	mov    es,dx
   4ffc3:	26 89 87 4a a4       	mov    WORD PTR es:[bx-0x5bb6],ax
   4ffc8:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   4ffcc:	6b db 5c             	imul   bx,bx,0x5c
   4ffcf:	b8 88 01             	mov    ax,0x188
   4ffd2:	8e c0                	mov    es,ax
   4ffd4:	26 8b 87 de 99       	mov    ax,WORD PTR es:[bx-0x6622]
   4ffd9:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   4ffdd:	6b db 28             	imul   bx,bx,0x28
   4ffe0:	ba 88 01             	mov    dx,0x188
   4ffe3:	8e c2                	mov    es,dx
   4ffe5:	26 89 87 4c a4       	mov    WORD PTR es:[bx-0x5bb4],ax
   4ffea:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   4ffee:	6b db 28             	imul   bx,bx,0x28
   4fff1:	b8 88 01             	mov    ax,0x188
   4fff4:	8e c0                	mov    es,ax
   4fff6:	26 c7 87 4e a4 01 00 	mov    WORD PTR es:[bx-0x5bb2],0x1
   4fffd:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50001:	6b db 28             	imul   bx,bx,0x28
   50004:	b8 88 01             	mov    ax,0x188
   50007:	8b 16 ac d5          	mov    dx,WORD PTR ds:0xd5ac
   5000b:	8e c0                	mov    es,ax
   5000d:	26 89 97 50 a4       	mov    WORD PTR es:[bx-0x5bb0],dx
   50012:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50016:	6b db 28             	imul   bx,bx,0x28
   50019:	b8 88 01             	mov    ax,0x188
   5001c:	8e c0                	mov    es,ax
   5001e:	26 c7 87 58 a4 01 00 	mov    WORD PTR es:[bx-0x5ba8],0x1
   50025:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50029:	6b db 2e             	imul   bx,bx,0x2e
   5002c:	b8 88 01             	mov    ax,0x188
   5002f:	8e c0                	mov    es,ax
   50031:	26 8b 87 1e 9f       	mov    ax,WORD PTR es:[bx-0x60e2]
   50036:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5003a:	6b db 28             	imul   bx,bx,0x28
   5003d:	ba 88 01             	mov    dx,0x188
   50040:	8e c2                	mov    es,dx
   50042:	26 89 87 5c a4       	mov    WORD PTR es:[bx-0x5ba4],ax
   50047:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5004b:	6b db 2e             	imul   bx,bx,0x2e
   5004e:	b8 88 01             	mov    ax,0x188
   50051:	8e c0                	mov    es,ax
   50053:	26 8b 87 20 9f       	mov    ax,WORD PTR es:[bx-0x60e0]
   50058:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5005c:	6b db 28             	imul   bx,bx,0x28
   5005f:	ba 88 01             	mov    dx,0x188
   50062:	8e c2                	mov    es,dx
   50064:	26 89 87 5e a4       	mov    WORD PTR es:[bx-0x5ba2],ax
   50069:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5006d:	6b db 2e             	imul   bx,bx,0x2e
   50070:	b8 88 01             	mov    ax,0x188
   50073:	8e c0                	mov    es,ax
   50075:	26 8b 87 2e 9f       	mov    ax,WORD PTR es:[bx-0x60d2]
   5007a:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5007e:	6b db 28             	imul   bx,bx,0x28
   50081:	ba 88 01             	mov    dx,0x188
   50084:	8e c2                	mov    es,dx
   50086:	26 89 87 60 a4       	mov    WORD PTR es:[bx-0x5ba0],ax
   5008b:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5008f:	6b db 2e             	imul   bx,bx,0x2e
   50092:	b8 88 01             	mov    ax,0x188
   50095:	8e c0                	mov    es,ax
   50097:	26 8b 87 30 9f       	mov    ax,WORD PTR es:[bx-0x60d0]
   5009c:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   500a0:	6b db 28             	imul   bx,bx,0x28
   500a3:	ba 88 01             	mov    dx,0x188
   500a6:	8e c2                	mov    es,dx
   500a8:	26 89 87 62 a4       	mov    WORD PTR es:[bx-0x5b9e],ax
   500ad:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   500b1:	6b db 2e             	imul   bx,bx,0x2e
   500b4:	b8 88 01             	mov    ax,0x188
   500b7:	8e c0                	mov    es,ax
   500b9:	26 8b 87 32 9f       	mov    ax,WORD PTR es:[bx-0x60ce]
   500be:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   500c2:	6b db 28             	imul   bx,bx,0x28
   500c5:	ba 88 01             	mov    dx,0x188
   500c8:	8e c2                	mov    es,dx
   500ca:	26 89 87 64 a4       	mov    WORD PTR es:[bx-0x5b9c],ax
   500cf:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   500d3:	6b db 2e             	imul   bx,bx,0x2e
   500d6:	b8 88 01             	mov    ax,0x188
   500d9:	8e c0                	mov    es,ax
   500db:	26 8b 87 34 9f       	mov    ax,WORD PTR es:[bx-0x60cc]
   500e0:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   500e4:	6b db 28             	imul   bx,bx,0x28
   500e7:	ba 88 01             	mov    dx,0x188
   500ea:	8e c2                	mov    es,dx
   500ec:	26 89 87 66 a4       	mov    WORD PTR es:[bx-0x5b9a],ax
   500f1:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   500f5:	6b db 2e             	imul   bx,bx,0x2e
   500f8:	b8 88 01             	mov    ax,0x188
   500fb:	8e c0                	mov    es,ax
   500fd:	26 8b 87 36 9f       	mov    ax,WORD PTR es:[bx-0x60ca]
   50102:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50106:	6b db 28             	imul   bx,bx,0x28
   50109:	ba 88 01             	mov    dx,0x188
   5010c:	8e c2                	mov    es,dx
   5010e:	26 89 87 68 a4       	mov    WORD PTR es:[bx-0x5b98],ax
   50113:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50117:	6b db 2e             	imul   bx,bx,0x2e
   5011a:	b8 88 01             	mov    ax,0x188
   5011d:	8e c0                	mov    es,ax
   5011f:	26 8b 87 38 9f       	mov    ax,WORD PTR es:[bx-0x60c8]
   50124:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50128:	6b db 28             	imul   bx,bx,0x28
   5012b:	ba 88 01             	mov    dx,0x188
   5012e:	8e c2                	mov    es,dx
   50130:	26 89 87 6a a4       	mov    WORD PTR es:[bx-0x5b96],ax
   50135:	ff 06 ac d5          	inc    WORD PTR ds:0xd5ac
   50139:	83 3e ac d5 04       	cmp    WORD PTR ds:0xd5ac,0x4
   5013e:	7f 03                	jg     0x50143
   50140:	e9 5e fe             	jmp    0x5ffa1
   50143:	5d                   	pop    bp
   50144:	cb                   	retf
   50145:	55                   	push   bp
   50146:	8b ec                	mov    bp,sp
   50148:	83 ec 0c             	sub    sp,0xc
   5014b:	8d 46 f4             	lea    ax,[bp-0xc]
   5014e:	16                   	push   ss
   5014f:	50                   	push   ax
   50150:	1e                   	push   ds
   50151:	68 17 64             	push   0x6417
   50154:	b9 0a 00             	mov    cx,0xa
   50157:	9a 7a 12 00 00       	call   0x0:0x127a
   5015c:	b8 88 01             	mov    ax,0x188
   5015f:	8b 16 ac d5          	mov    dx,WORD PTR ds:0xd5ac
   50163:	8e c0                	mov    es,ax
   50165:	26 89 16 98 28       	mov    WORD PTR es:0x2898,dx
   5016a:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5016e:	6b db 5c             	imul   bx,bx,0x5c
   50171:	b8 88 01             	mov    ax,0x188
   50174:	8e c0                	mov    es,ax
   50176:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   5017b:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5017f:	6b db 2e             	imul   bx,bx,0x2e
   50182:	ba 88 01             	mov    dx,0x188
   50185:	8e c2                	mov    es,dx
   50187:	26 89 87 1a 9f       	mov    WORD PTR es:[bx-0x60e6],ax
   5018c:	90                   	nop
   5018d:	0e                   	push   cs
   5018e:	e8 e7 02             	call   0x50478
   50191:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50195:	6b db 2e             	imul   bx,bx,0x2e
   50198:	b8 88 01             	mov    ax,0x188
   5019b:	53                   	push   bx
   5019c:	50                   	push   ax
   5019d:	a1 aa d5             	mov    ax,ds:0xd5aa
   501a0:	bb 64 00             	mov    bx,0x64
   501a3:	99                   	cwd
   501a4:	f7 fb                	idiv   bx
   501a6:	6b c0 64             	imul   ax,ax,0x64
   501a9:	03 06 a8 d5          	add    ax,WORD PTR ds:0xd5a8
   501ad:	07                   	pop    es
   501ae:	5b                   	pop    bx
   501af:	26 89 87 1c 9f       	mov    WORD PTR es:[bx-0x60e4],ax
   501b4:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   501b8:	6b db 2e             	imul   bx,bx,0x2e
   501bb:	b8 88 01             	mov    ax,0x188
   501be:	8b 16 da d5          	mov    dx,WORD PTR ds:0xd5da
   501c2:	8e c0                	mov    es,ax
   501c4:	26 89 97 1e 9f       	mov    WORD PTR es:[bx-0x60e2],dx
   501c9:	90                   	nop
   501ca:	0e                   	push   cs
   501cb:	e8 44 05             	call   0x50712
   501ce:	90                   	nop
   501cf:	0e                   	push   cs
   501d0:	e8 f6 05             	call   0x507c9
   501d3:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   501d7:	6b db 2e             	imul   bx,bx,0x2e
   501da:	ba 88 01             	mov    dx,0x188
   501dd:	8e c2                	mov    es,dx
   501df:	26 89 87 20 9f       	mov    WORD PTR es:[bx-0x60e0],ax
   501e4:	90                   	nop
   501e5:	0e                   	push   cs
   501e6:	e8 3d 07             	call   0x50926
   501e9:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   501ed:	6b db 2e             	imul   bx,bx,0x2e
   501f0:	ba 88 01             	mov    dx,0x188
   501f3:	8e c2                	mov    es,dx
   501f5:	26 89 87 22 9f       	mov    WORD PTR es:[bx-0x60de],ax
   501fa:	90                   	nop
   501fb:	0e                   	push   cs
   501fc:	e8 9e 08             	call   0x50a9d
   501ff:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50203:	6b db 2e             	imul   bx,bx,0x2e
   50206:	ba 88 01             	mov    dx,0x188
   50209:	8e c2                	mov    es,dx
   5020b:	26 89 87 24 9f       	mov    WORD PTR es:[bx-0x60dc],ax
   50210:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50214:	6b db 5c             	imul   bx,bx,0x5c
   50217:	b8 88 01             	mov    ax,0x188
   5021a:	8e c0                	mov    es,ax
   5021c:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   50221:	d1 e0                	shl    ax,1
   50223:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50227:	6b db 5c             	imul   bx,bx,0x5c
   5022a:	03 d8                	add    bx,ax
   5022c:	b8 88 01             	mov    ax,0x188
   5022f:	8e c0                	mov    es,ax
   50231:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   50236:	bb 64 00             	mov    bx,0x64
   50239:	99                   	cwd
   5023a:	f7 fb                	idiv   bx
   5023c:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   5023f:	83 7e fe 2b          	cmp    WORD PTR [bp-0x2],0x2b
   50243:	75 05                	jne    0x5024a
   50245:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   5024a:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5024e:	6b db 5c             	imul   bx,bx,0x5c
   50251:	b8 88 01             	mov    ax,0x188
   50254:	8e c0                	mov    es,ax
   50256:	26 83 bf e2 99 00    	cmp    WORD PTR es:[bx-0x661e],0x0
   5025c:	74 23                	je     0x50281
   5025e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   50261:	6b db 0e             	imul   bx,bx,0xe
   50264:	b8 88 01             	mov    ax,0x188
   50267:	8e c0                	mov    es,ax
   50269:	26 8b 87 83 0e       	mov    ax,WORD PTR es:[bx+0xe83]
   5026e:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50272:	6b db 2e             	imul   bx,bx,0x2e
   50275:	ba 88 01             	mov    dx,0x188
   50278:	8e c2                	mov    es,dx
   5027a:	26 89 87 26 9f       	mov    WORD PTR es:[bx-0x60da],ax
   5027f:	eb 13                	jmp    0x50294
   50281:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50285:	6b db 2e             	imul   bx,bx,0x2e
   50288:	b8 88 01             	mov    ax,0x188
   5028b:	8e c0                	mov    es,ax
   5028d:	26 c7 87 26 9f 00 00 	mov    WORD PTR es:[bx-0x60da],0x0
   50294:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50298:	6b db 5c             	imul   bx,bx,0x5c
   5029b:	b8 88 01             	mov    ax,0x188
   5029e:	8e c0                	mov    es,ax
   502a0:	26 8b 87 e4 99       	mov    ax,WORD PTR es:[bx-0x661c]
   502a5:	d1 e0                	shl    ax,1
   502a7:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   502ab:	6b db 5c             	imul   bx,bx,0x5c
   502ae:	03 d8                	add    bx,ax
   502b0:	b8 88 01             	mov    ax,0x188
   502b3:	8e c0                	mov    es,ax
   502b5:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   502ba:	bb 64 00             	mov    bx,0x64
   502bd:	99                   	cwd
   502be:	f7 fb                	idiv   bx
   502c0:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   502c3:	83 7e fe 2b          	cmp    WORD PTR [bp-0x2],0x2b
   502c7:	75 05                	jne    0x502ce
   502c9:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   502ce:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   502d2:	6b db 5c             	imul   bx,bx,0x5c
   502d5:	b8 88 01             	mov    ax,0x188
   502d8:	8e c0                	mov    es,ax
   502da:	26 8b 87 e4 99       	mov    ax,WORD PTR es:[bx-0x661c]
   502df:	d1 e0                	shl    ax,1
   502e1:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   502e5:	6b db 5c             	imul   bx,bx,0x5c
   502e8:	03 d8                	add    bx,ax
   502ea:	b8 88 01             	mov    ax,0x188
   502ed:	8e c0                	mov    es,ax
   502ef:	26 83 bf a6 99 1a    	cmp    WORD PTR es:[bx-0x665a],0x1a
   502f5:	7d 4c                	jge    0x50343
   502f7:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   502fb:	6b db 5c             	imul   bx,bx,0x5c
   502fe:	b8 88 01             	mov    ax,0x188
   50301:	8e c0                	mov    es,ax
   50303:	26 8b 87 e4 99       	mov    ax,WORD PTR es:[bx-0x661c]
   50308:	d1 e0                	shl    ax,1
   5030a:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5030e:	6b db 5c             	imul   bx,bx,0x5c
   50311:	03 d8                	add    bx,ax
   50313:	b8 88 01             	mov    ax,0x188
   50316:	8e c0                	mov    es,ax
   50318:	26 83 bf a6 99 00    	cmp    WORD PTR es:[bx-0x665a],0x0
   5031e:	74 23                	je     0x50343
   50320:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   50323:	6b db 0e             	imul   bx,bx,0xe
   50326:	b8 88 01             	mov    ax,0x188
   50329:	8e c0                	mov    es,ax
   5032b:	26 8b 87 83 0e       	mov    ax,WORD PTR es:[bx+0xe83]
   50330:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50334:	6b db 2e             	imul   bx,bx,0x2e
   50337:	ba 88 01             	mov    dx,0x188
   5033a:	8e c2                	mov    es,dx
   5033c:	26 89 87 28 9f       	mov    WORD PTR es:[bx-0x60d8],ax
   50341:	eb 13                	jmp    0x50356
   50343:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50347:	6b db 2e             	imul   bx,bx,0x2e
   5034a:	b8 88 01             	mov    ax,0x188
   5034d:	8e c0                	mov    es,ax
   5034f:	26 c7 87 28 9f 00 00 	mov    WORD PTR es:[bx-0x60d8],0x0
   50356:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5035a:	6b db 5c             	imul   bx,bx,0x5c
   5035d:	b8 88 01             	mov    ax,0x188
   50360:	8e c0                	mov    es,ax
   50362:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   50367:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5036b:	6b db 2e             	imul   bx,bx,0x2e
   5036e:	ba 88 01             	mov    dx,0x188
   50371:	8e c2                	mov    es,dx
   50373:	26 89 87 2a 9f       	mov    WORD PTR es:[bx-0x60d6],ax
   50378:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5037c:	6b db 5c             	imul   bx,bx,0x5c
   5037f:	b8 88 01             	mov    ax,0x188
   50382:	8e c0                	mov    es,ax
   50384:	26 8b 87 bc 99       	mov    ax,WORD PTR es:[bx-0x6644]
   50389:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   5038d:	6b db 2e             	imul   bx,bx,0x2e
   50390:	ba 88 01             	mov    dx,0x188
   50393:	8e c2                	mov    es,dx
   50395:	26 89 87 2c 9f       	mov    WORD PTR es:[bx-0x60d4],ax
   5039a:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   5039f:	eb 33                	jmp    0x503d4
   503a1:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   503a5:	6b db 5c             	imul   bx,bx,0x5c
   503a8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   503ab:	d1 e0                	shl    ax,1
   503ad:	03 d8                	add    bx,ax
   503af:	b8 88 01             	mov    ax,0x188
   503b2:	8e c0                	mov    es,ax
   503b4:	26 8b 87 d2 99       	mov    ax,WORD PTR es:[bx-0x662e]
   503b9:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   503bd:	6b db 2e             	imul   bx,bx,0x2e
   503c0:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   503c3:	d1 e2                	shl    dx,1
   503c5:	03 da                	add    bx,dx
   503c7:	ba 88 01             	mov    dx,0x188
   503ca:	8e c2                	mov    es,dx
   503cc:	26 89 87 2c 9f       	mov    WORD PTR es:[bx-0x60d4],ax
   503d1:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   503d4:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   503d8:	7e c7                	jle    0x503a1
   503da:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   503de:	6b db 5c             	imul   bx,bx,0x5c
   503e1:	b8 88 01             	mov    ax,0x188
   503e4:	8e c0                	mov    es,ax
   503e6:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   503eb:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   503ef:	6b db 2e             	imul   bx,bx,0x2e
   503f2:	ba 88 01             	mov    dx,0x188
   503f5:	8e c2                	mov    es,dx
   503f7:	26 89 87 38 9f       	mov    WORD PTR es:[bx-0x60c8],ax
   503fc:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50400:	6b db 5c             	imul   bx,bx,0x5c
   50403:	b8 88 01             	mov    ax,0x188
   50406:	8e c0                	mov    es,ax
   50408:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   5040d:	d1 e0                	shl    ax,1
   5040f:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50413:	6b db 5c             	imul   bx,bx,0x5c
   50416:	03 d8                	add    bx,ax
   50418:	b8 88 01             	mov    ax,0x188
   5041b:	8e c0                	mov    es,ax
   5041d:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   50422:	bb 64 00             	mov    bx,0x64
   50425:	99                   	cwd
   50426:	f7 fb                	idiv   bx
   50428:	83 fa 14             	cmp    dx,0x14
   5042b:	7e 49                	jle    0x50476
   5042d:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50431:	6b db 5c             	imul   bx,bx,0x5c
   50434:	b8 88 01             	mov    ax,0x188
   50437:	8e c0                	mov    es,ax
   50439:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   5043e:	d1 e0                	shl    ax,1
   50440:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50444:	6b db 5c             	imul   bx,bx,0x5c
   50447:	03 d8                	add    bx,ax
   50449:	b8 88 01             	mov    ax,0x188
   5044c:	8e c0                	mov    es,ax
   5044e:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   50453:	bb 64 00             	mov    bx,0x64
   50456:	99                   	cwd
   50457:	f7 fb                	idiv   bx
   50459:	d1 e2                	shl    dx,1
   5045b:	8d 46 ca             	lea    ax,[bp-0x36]
   5045e:	03 d0                	add    dx,ax
   50460:	8b da                	mov    bx,dx
   50462:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   50465:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   50469:	6b db 2e             	imul   bx,bx,0x2e
   5046c:	ba 88 01             	mov    dx,0x188
   5046f:	8e c2                	mov    es,dx
   50471:	26 89 87 3a 9f       	mov    WORD PTR es:[bx-0x60c6],ax
   50476:	c9                   	leave
   50477:	cb                   	retf
   50478:	55                   	push   bp
   50479:	8b ec                	mov    bp,sp
   5047b:	83 ec 04             	sub    sp,0x4
   5047e:	83 3e b6 d5 02       	cmp    WORD PTR ds:0xd5b6,0x2
   50483:	74 19                	je     0x5049e
   50485:	b8 88 01             	mov    ax,0x188
   50488:	8e c0                	mov    es,ax
   5048a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5048f:	6b db 5c             	imul   bx,bx,0x5c
   50492:	b8 88 01             	mov    ax,0x188
   50495:	8e c0                	mov    es,ax
   50497:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   5049c:	eb 17                	jmp    0x504b5
   5049e:	b8 88 01             	mov    ax,0x188
   504a1:	8e c0                	mov    es,ax
   504a3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   504a8:	6b db 5c             	imul   bx,bx,0x5c
   504ab:	b8 88 01             	mov    ax,0x188
   504ae:	8e c0                	mov    es,ax
   504b0:	26 8b 87 e4 99       	mov    ax,WORD PTR es:[bx-0x661c]
   504b5:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   504b8:	b8 88 01             	mov    ax,0x188
   504bb:	8e c0                	mov    es,ax
   504bd:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   504c2:	6b db 5c             	imul   bx,bx,0x5c
   504c5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   504c8:	d1 e0                	shl    ax,1
   504ca:	03 d8                	add    bx,ax
   504cc:	b8 88 01             	mov    ax,0x188
   504cf:	8e c0                	mov    es,ax
   504d1:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   504d6:	bb 64 00             	mov    bx,0x64
   504d9:	99                   	cwd
   504da:	f7 fb                	idiv   bx
   504dc:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   504df:	83 7e fe 2b          	cmp    WORD PTR [bp-0x2],0x2b
   504e3:	75 05                	jne    0x504ea
   504e5:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   504ea:	b8 88 01             	mov    ax,0x188
   504ed:	8e c0                	mov    es,ax
   504ef:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   504f4:	6b db 5c             	imul   bx,bx,0x5c
   504f7:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   504fa:	d1 e0                	shl    ax,1
   504fc:	03 d8                	add    bx,ax
   504fe:	b8 88 01             	mov    ax,0x188
   50501:	8e c0                	mov    es,ax
   50503:	26 83 bf a6 99 00    	cmp    WORD PTR es:[bx-0x665a],0x0
   50509:	74 15                	je     0x50520
   5050b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5050e:	6b db 0e             	imul   bx,bx,0xe
   50511:	b8 88 01             	mov    ax,0x188
   50514:	8e c0                	mov    es,ax
   50516:	26 8b 87 79 0e       	mov    ax,WORD PTR es:[bx+0xe79]
   5051b:	a3 aa d5             	mov    ds:0xd5aa,ax
   5051e:	eb 06                	jmp    0x50526
   50520:	c7 06 aa d5 c8 00    	mov    WORD PTR ds:0xd5aa,0xc8
   50526:	b8 88 01             	mov    ax,0x188
   50529:	8e c0                	mov    es,ax
   5052b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50530:	6b db 5c             	imul   bx,bx,0x5c
   50533:	b8 88 01             	mov    ax,0x188
   50536:	8e c0                	mov    es,ax
   50538:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   5053d:	bb 64 00             	mov    bx,0x64
   50540:	99                   	cwd
   50541:	f7 fb                	idiv   bx
   50543:	0b c0                	or     ax,ax
   50545:	7d 04                	jge    0x5054b
   50547:	33 c0                	xor    ax,ax
   50549:	eb 1d                	jmp    0x50568
   5054b:	b8 88 01             	mov    ax,0x188
   5054e:	8e c0                	mov    es,ax
   50550:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50555:	6b db 5c             	imul   bx,bx,0x5c
   50558:	b8 88 01             	mov    ax,0x188
   5055b:	8e c0                	mov    es,ax
   5055d:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   50562:	bb 64 00             	mov    bx,0x64
   50565:	99                   	cwd
   50566:	f7 fb                	idiv   bx
   50568:	50                   	push   ax
   50569:	a1 aa d5             	mov    ax,ds:0xd5aa
   5056c:	bb 64 00             	mov    bx,0x64
   5056f:	99                   	cwd
   50570:	f7 fb                	idiv   bx
   50572:	6b c0 64             	imul   ax,ax,0x64
   50575:	8b 16 aa d5          	mov    dx,WORD PTR ds:0xd5aa
   50579:	2b d0                	sub    dx,ax
   5057b:	58                   	pop    ax
   5057c:	03 d0                	add    dx,ax
   5057e:	b8 88 01             	mov    ax,0x188
   50581:	8e c0                	mov    es,ax
   50583:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50588:	6b db 5c             	imul   bx,bx,0x5c
   5058b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   5058e:	d1 e0                	shl    ax,1
   50590:	03 d8                	add    bx,ax
   50592:	b8 88 01             	mov    ax,0x188
   50595:	8e c0                	mov    es,ax
   50597:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   5059c:	bb 64 00             	mov    bx,0x64
   5059f:	52                   	push   dx
   505a0:	99                   	cwd
   505a1:	f7 fb                	idiv   bx
   505a3:	5a                   	pop    dx
   505a4:	03 d0                	add    dx,ax
   505a6:	89 16 a8 d5          	mov    WORD PTR ds:0xd5a8,dx
   505aa:	b8 88 01             	mov    ax,0x188
   505ad:	8e c0                	mov    es,ax
   505af:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   505b4:	6b db 5c             	imul   bx,bx,0x5c
   505b7:	b8 88 01             	mov    ax,0x188
   505ba:	8e c0                	mov    es,ax
   505bc:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   505c1:	d1 e0                	shl    ax,1
   505c3:	ba 88 01             	mov    dx,0x188
   505c6:	8e c2                	mov    es,dx
   505c8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   505cd:	6b db 5c             	imul   bx,bx,0x5c
   505d0:	03 d8                	add    bx,ax
   505d2:	b8 88 01             	mov    ax,0x188
   505d5:	8e c0                	mov    es,ax
   505d7:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   505dc:	bb 64 00             	mov    bx,0x64
   505df:	99                   	cwd
   505e0:	f7 fb                	idiv   bx
   505e2:	b8 88 01             	mov    ax,0x188
   505e5:	8e c0                	mov    es,ax
   505e7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   505ec:	6b db 5c             	imul   bx,bx,0x5c
   505ef:	b8 88 01             	mov    ax,0x188
   505f2:	8e c0                	mov    es,ax
   505f4:	26 3b 97 d2 99       	cmp    dx,WORD PTR es:[bx-0x662e]
   505f9:	75 04                	jne    0x505ff
   505fb:	ff 06 a8 d5          	inc    WORD PTR ds:0xd5a8
   505ff:	b8 88 01             	mov    ax,0x188
   50602:	8e c0                	mov    es,ax
   50604:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50609:	6b db 5c             	imul   bx,bx,0x5c
   5060c:	b8 88 01             	mov    ax,0x188
   5060f:	8e c0                	mov    es,ax
   50611:	26 8b 87 ba 99       	mov    ax,WORD PTR es:[bx-0x6646]
   50616:	bb 2c 01             	mov    bx,0x12c
   50619:	99                   	cwd
   5061a:	f7 fb                	idiv   bx
   5061c:	03 06 a8 d5          	add    ax,WORD PTR ds:0xd5a8
   50620:	a3 da d5             	mov    ds:0xd5da,ax
   50623:	b8 88 01             	mov    ax,0x188
   50626:	8e c0                	mov    es,ax
   50628:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5062d:	6b db 5c             	imul   bx,bx,0x5c
   50630:	b8 88 01             	mov    ax,0x188
   50633:	8e c0                	mov    es,ax
   50635:	26 81 bf d0 99 f4 01 	cmp    WORD PTR es:[bx-0x6630],0x1f4
   5063c:	7e 15                	jle    0x50653
   5063e:	a1 da d5             	mov    ax,ds:0xd5da
   50641:	05 fe ff             	add    ax,0xfffe
   50644:	7d 04                	jge    0x5064a
   50646:	33 c0                	xor    ax,ax
   50648:	eb 06                	jmp    0x50650
   5064a:	a1 da d5             	mov    ax,ds:0xd5da
   5064d:	05 fe ff             	add    ax,0xfffe
   50650:	a3 da d5             	mov    ds:0xd5da,ax
   50653:	6a 0a                	push   0xa
   50655:	b8 88 01             	mov    ax,0x188
   50658:	8e c0                	mov    es,ax
   5065a:	26 a1 98 28          	mov    ax,es:0x2898
   5065e:	05 18 00             	add    ax,0x18
   50661:	50                   	push   ax
   50662:	0e                   	push   cs
   50663:	e8 ca b6             	call   0x5bd30
   50666:	83 c4 04             	add    sp,0x4
   50669:	0b c0                	or     ax,ax
   5066b:	74 04                	je     0x50671
   5066d:	ff 06 da d5          	inc    WORD PTR ds:0xd5da
   50671:	6a 14                	push   0x14
   50673:	b8 88 01             	mov    ax,0x188
   50676:	8e c0                	mov    es,ax
   50678:	26 a1 98 28          	mov    ax,es:0x2898
   5067c:	05 18 00             	add    ax,0x18
   5067f:	50                   	push   ax
   50680:	0e                   	push   cs
   50681:	e8 ac b6             	call   0x5bd30
   50684:	83 c4 04             	add    sp,0x4
   50687:	0b c0                	or     ax,ax
   50689:	74 15                	je     0x506a0
   5068b:	a1 da d5             	mov    ax,ds:0xd5da
   5068e:	05 fe ff             	add    ax,0xfffe
   50691:	7d 04                	jge    0x50697
   50693:	33 c0                	xor    ax,ax
   50695:	eb 06                	jmp    0x5069d
   50697:	a1 da d5             	mov    ax,ds:0xd5da
   5069a:	05 fe ff             	add    ax,0xfffe
   5069d:	a3 da d5             	mov    ds:0xd5da,ax
   506a0:	b8 88 01             	mov    ax,0x188
   506a3:	8e c0                	mov    es,ax
   506a5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   506aa:	6b db 5c             	imul   bx,bx,0x5c
   506ad:	b8 88 01             	mov    ax,0x188
   506b0:	8e c0                	mov    es,ax
   506b2:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   506b7:	bb 2c 01             	mov    bx,0x12c
   506ba:	99                   	cwd
   506bb:	f7 fb                	idiv   bx
   506bd:	8b 16 da d5          	mov    dx,WORD PTR ds:0xd5da
   506c1:	2b d0                	sub    dx,ax
   506c3:	7d 04                	jge    0x506c9
   506c5:	33 c0                	xor    ax,ax
   506c7:	eb 24                	jmp    0x506ed
   506c9:	b8 88 01             	mov    ax,0x188
   506cc:	8e c0                	mov    es,ax
   506ce:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   506d3:	6b db 5c             	imul   bx,bx,0x5c
   506d6:	b8 88 01             	mov    ax,0x188
   506d9:	8e c0                	mov    es,ax
   506db:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   506e0:	bb 2c 01             	mov    bx,0x12c
   506e3:	99                   	cwd
   506e4:	f7 fb                	idiv   bx
   506e6:	50                   	push   ax
   506e7:	a1 da d5             	mov    ax,ds:0xd5da
   506ea:	5a                   	pop    dx
   506eb:	2b c2                	sub    ax,dx
   506ed:	a3 da d5             	mov    ds:0xd5da,ax
   506f0:	6a 15                	push   0x15
   506f2:	b8 88 01             	mov    ax,0x188
   506f5:	8e c0                	mov    es,ax
   506f7:	26 a1 98 28          	mov    ax,es:0x2898
   506fb:	05 18 00             	add    ax,0x18
   506fe:	50                   	push   ax
   506ff:	0e                   	push   cs
   50700:	e8 2d b6             	call   0x5bd30
   50703:	83 c4 04             	add    sp,0x4
   50706:	0b c0                	or     ax,ax
   50708:	74 06                	je     0x50710
   5070a:	c7 06 da d5 00 00    	mov    WORD PTR ds:0xd5da,0x0
   50710:	c9                   	leave
   50711:	cb                   	retf
   50712:	55                   	push   bp
   50713:	8b ec                	mov    bp,sp
   50715:	83 ec 04             	sub    sp,0x4
   50718:	c7 06 ee d5 00 00    	mov    WORD PTR ds:0xd5ee,0x0
   5071e:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   50723:	eb 7e                	jmp    0x507a3
   50725:	b8 88 01             	mov    ax,0x188
   50728:	8e c0                	mov    es,ax
   5072a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5072f:	6b db 5c             	imul   bx,bx,0x5c
   50732:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   50735:	d1 e0                	shl    ax,1
   50737:	03 d8                	add    bx,ax
   50739:	b8 88 01             	mov    ax,0x188
   5073c:	8e c0                	mov    es,ax
   5073e:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   50743:	bb 64 00             	mov    bx,0x64
   50746:	99                   	cwd
   50747:	f7 fb                	idiv   bx
   50749:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   5074c:	83 7e fc 1a          	cmp    WORD PTR [bp-0x4],0x1a
   50750:	7c 06                	jl     0x50758
   50752:	83 7e fc 2b          	cmp    WORD PTR [bp-0x4],0x2b
   50756:	75 21                	jne    0x50779
   50758:	83 7e fc 2b          	cmp    WORD PTR [bp-0x4],0x2b
   5075c:	75 05                	jne    0x50763
   5075e:	c7 46 fc 1a 00       	mov    WORD PTR [bp-0x4],0x1a
   50763:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   50766:	6b db 0e             	imul   bx,bx,0xe
   50769:	b8 88 01             	mov    ax,0x188
   5076c:	8e c0                	mov    es,ax
   5076e:	26 8b 87 7d 0e       	mov    ax,WORD PTR es:[bx+0xe7d]
   50773:	01 06 ee d5          	add    WORD PTR ds:0xd5ee,ax
   50777:	eb 27                	jmp    0x507a0
   50779:	83 7e fc 19          	cmp    WORD PTR [bp-0x4],0x19
   5077d:	7e 17                	jle    0x50796
   5077f:	83 7e fc 21          	cmp    WORD PTR [bp-0x4],0x21
   50783:	7d 11                	jge    0x50796
   50785:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   50788:	d1 e3                	shl    bx,1
   5078a:	b8 88 01             	mov    ax,0x188
   5078d:	8e c0                	mov    es,ax
   5078f:	26 8b 87 aa 10       	mov    ax,WORD PTR es:[bx+0x10aa]
   50794:	eb dd                	jmp    0x50773
   50796:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   5079a:	74 04                	je     0x507a0
   5079c:	ff 06 ee d5          	inc    WORD PTR ds:0xd5ee
   507a0:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   507a3:	83 7e fe 0a          	cmp    WORD PTR [bp-0x2],0xa
   507a7:	7f 03                	jg     0x507ac
   507a9:	e9 79 ff             	jmp    0x50725
   507ac:	b8 88 01             	mov    ax,0x188
   507af:	8e c0                	mov    es,ax
   507b1:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   507b6:	6b db 5c             	imul   bx,bx,0x5c
   507b9:	b8 88 01             	mov    ax,0x188
   507bc:	8b 16 ee d5          	mov    dx,WORD PTR ds:0xd5ee
   507c0:	8e c0                	mov    es,ax
   507c2:	26 89 97 00 9a       	mov    WORD PTR es:[bx-0x6600],dx
   507c7:	c9                   	leave
   507c8:	cb                   	retf
   507c9:	55                   	push   bp
   507ca:	8b ec                	mov    bp,sp
   507cc:	83 ec 02             	sub    sp,0x2
   507cf:	b8 88 01             	mov    ax,0x188
   507d2:	8e c0                	mov    es,ax
   507d4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   507d9:	6b db 5c             	imul   bx,bx,0x5c
   507dc:	b8 88 01             	mov    ax,0x188
   507df:	8e c0                	mov    es,ax
   507e1:	26 8b 87 ba 99       	mov    ax,WORD PTR es:[bx-0x6646]
   507e6:	bb 32 00             	mov    bx,0x32
   507e9:	99                   	cwd
   507ea:	f7 fb                	idiv   bx
   507ec:	05 07 00             	add    ax,0x7
   507ef:	2b 06 ee d5          	sub    ax,WORD PTR ds:0xd5ee
   507f3:	7d 04                	jge    0x507f9
   507f5:	33 c0                	xor    ax,ax
   507f7:	eb 24                	jmp    0x5081d
   507f9:	b8 88 01             	mov    ax,0x188
   507fc:	8e c0                	mov    es,ax
   507fe:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50803:	6b db 5c             	imul   bx,bx,0x5c
   50806:	b8 88 01             	mov    ax,0x188
   50809:	8e c0                	mov    es,ax
   5080b:	26 8b 87 ba 99       	mov    ax,WORD PTR es:[bx-0x6646]
   50810:	bb 32 00             	mov    bx,0x32
   50813:	99                   	cwd
   50814:	f7 fb                	idiv   bx
   50816:	05 07 00             	add    ax,0x7
   50819:	2b 06 ee d5          	sub    ax,WORD PTR ds:0xd5ee
   5081d:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   50820:	6a 0a                	push   0xa
   50822:	b8 88 01             	mov    ax,0x188
   50825:	8e c0                	mov    es,ax
   50827:	26 a1 98 28          	mov    ax,es:0x2898
   5082b:	05 18 00             	add    ax,0x18
   5082e:	50                   	push   ax
   5082f:	0e                   	push   cs
   50830:	e8 fd b4             	call   0x5bd30
   50833:	83 c4 04             	add    sp,0x4
   50836:	0b c0                	or     ax,ax
   50838:	74 03                	je     0x5083d
   5083a:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   5083d:	6a 0b                	push   0xb
   5083f:	b8 88 01             	mov    ax,0x188
   50842:	8e c0                	mov    es,ax
   50844:	26 a1 98 28          	mov    ax,es:0x2898
   50848:	05 18 00             	add    ax,0x18
   5084b:	50                   	push   ax
   5084c:	0e                   	push   cs
   5084d:	e8 e0 b4             	call   0x5bd30
   50850:	83 c4 04             	add    sp,0x4
   50853:	0b c0                	or     ax,ax
   50855:	74 04                	je     0x5085b
   50857:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   5085b:	b8 88 01             	mov    ax,0x188
   5085e:	8e c0                	mov    es,ax
   50860:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50865:	6b db 5c             	imul   bx,bx,0x5c
   50868:	b8 88 01             	mov    ax,0x188
   5086b:	8e c0                	mov    es,ax
   5086d:	26 8b 87 e6 99       	mov    ax,WORD PTR es:[bx-0x661a]
   50872:	d1 e0                	shl    ax,1
   50874:	ba 88 01             	mov    dx,0x188
   50877:	8e c2                	mov    es,dx
   50879:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5087e:	6b db 5c             	imul   bx,bx,0x5c
   50881:	03 d8                	add    bx,ax
   50883:	b8 88 01             	mov    ax,0x188
   50886:	8e c0                	mov    es,ax
   50888:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   5088d:	bb 64 00             	mov    bx,0x64
   50890:	99                   	cwd
   50891:	f7 fb                	idiv   bx
   50893:	83 fa 1b             	cmp    dx,0x1b
   50896:	75 1e                	jne    0x508b6
   50898:	b8 88 01             	mov    ax,0x188
   5089b:	8e c0                	mov    es,ax
   5089d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   508a2:	6b db 5c             	imul   bx,bx,0x5c
   508a5:	b8 88 01             	mov    ax,0x188
   508a8:	8e c0                	mov    es,ax
   508aa:	26 83 bf a8 99 08    	cmp    WORD PTR es:[bx-0x6658],0x8
   508b0:	75 04                	jne    0x508b6
   508b2:	83 46 fe 03          	add    WORD PTR [bp-0x2],0x3
   508b6:	6a 1c                	push   0x1c
   508b8:	b8 88 01             	mov    ax,0x188
   508bb:	8e c0                	mov    es,ax
   508bd:	26 a1 98 28          	mov    ax,es:0x2898
   508c1:	05 18 00             	add    ax,0x18
   508c4:	50                   	push   ax
   508c5:	0e                   	push   cs
   508c6:	e8 67 b4             	call   0x5bd30
   508c9:	83 c4 04             	add    sp,0x4
   508cc:	0b c0                	or     ax,ax
   508ce:	74 03                	je     0x508d3
   508d0:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   508d3:	6a 14                	push   0x14
   508d5:	b8 88 01             	mov    ax,0x188
   508d8:	8e c0                	mov    es,ax
   508da:	26 a1 98 28          	mov    ax,es:0x2898
   508de:	05 18 00             	add    ax,0x18
   508e1:	50                   	push   ax
   508e2:	0e                   	push   cs
   508e3:	e8 4a b4             	call   0x5bd30
   508e6:	83 c4 04             	add    sp,0x4
   508e9:	0b c0                	or     ax,ax
   508eb:	74 15                	je     0x50902
   508ed:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   508f0:	05 fe ff             	add    ax,0xfffe
   508f3:	7d 04                	jge    0x508f9
   508f5:	33 c0                	xor    ax,ax
   508f7:	eb 06                	jmp    0x508ff
   508f9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   508fc:	05 fe ff             	add    ax,0xfffe
   508ff:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   50902:	6a 15                	push   0x15
   50904:	b8 88 01             	mov    ax,0x188
   50907:	8e c0                	mov    es,ax
   50909:	26 a1 98 28          	mov    ax,es:0x2898
   5090d:	05 18 00             	add    ax,0x18
   50910:	50                   	push   ax
   50911:	0e                   	push   cs
   50912:	e8 1b b4             	call   0x5bd30
   50915:	83 c4 04             	add    sp,0x4
   50918:	0b c0                	or     ax,ax
   5091a:	74 05                	je     0x50921
   5091c:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   50921:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   50924:	c9                   	leave
   50925:	cb                   	retf
   50926:	55                   	push   bp
   50927:	8b ec                	mov    bp,sp
   50929:	83 ec 02             	sub    sp,0x2
   5092c:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   50931:	b8 88 01             	mov    ax,0x188
   50934:	8e c0                	mov    es,ax
   50936:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5093b:	6b db 5c             	imul   bx,bx,0x5c
   5093e:	b8 88 01             	mov    ax,0x188
   50941:	8e c0                	mov    es,ax
   50943:	26 8b 87 e6 99       	mov    ax,WORD PTR es:[bx-0x661a]
   50948:	d1 e0                	shl    ax,1
   5094a:	ba 88 01             	mov    dx,0x188
   5094d:	8e c2                	mov    es,dx
   5094f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50954:	6b db 5c             	imul   bx,bx,0x5c
   50957:	03 d8                	add    bx,ax
   50959:	b8 88 01             	mov    ax,0x188
   5095c:	8e c0                	mov    es,ax
   5095e:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   50963:	bb 64 00             	mov    bx,0x64
   50966:	99                   	cwd
   50967:	f7 fb                	idiv   bx
   50969:	89 16 ea d5          	mov    WORD PTR ds:0xd5ea,dx
   5096d:	b8 88 01             	mov    ax,0x188
   50970:	8e c0                	mov    es,ax
   50972:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50977:	6b db 5c             	imul   bx,bx,0x5c
   5097a:	b8 88 01             	mov    ax,0x188
   5097d:	8e c0                	mov    es,ax
   5097f:	26 8b 87 e6 99       	mov    ax,WORD PTR es:[bx-0x661a]
   50984:	d1 e0                	shl    ax,1
   50986:	ba 88 01             	mov    dx,0x188
   50989:	8e c2                	mov    es,dx
   5098b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50990:	6b db 5c             	imul   bx,bx,0x5c
   50993:	03 d8                	add    bx,ax
   50995:	b8 88 01             	mov    ax,0x188
   50998:	8e c0                	mov    es,ax
   5099a:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   5099f:	bb 64 00             	mov    bx,0x64
   509a2:	99                   	cwd
   509a3:	f7 fb                	idiv   bx
   509a5:	a3 e6 d5             	mov    ds:0xd5e6,ax
   509a8:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   509ad:	74 17                	je     0x509c6
   509af:	8b 1e ea d5          	mov    bx,WORD PTR ds:0xd5ea
   509b3:	d1 e3                	shl    bx,1
   509b5:	b8 88 01             	mov    ax,0x188
   509b8:	8e c0                	mov    es,ax
   509ba:	26 8b 87 aa 10       	mov    ax,WORD PTR es:[bx+0x10aa]
   509bf:	03 06 e6 d5          	add    ax,WORD PTR ds:0xd5e6
   509c3:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   509c6:	b8 88 01             	mov    ax,0x188
   509c9:	8e c0                	mov    es,ax
   509cb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   509d0:	6b db 5c             	imul   bx,bx,0x5c
   509d3:	b8 88 01             	mov    ax,0x188
   509d6:	8e c0                	mov    es,ax
   509d8:	26 8b 87 e4 99       	mov    ax,WORD PTR es:[bx-0x661c]
   509dd:	d1 e0                	shl    ax,1
   509df:	ba 88 01             	mov    dx,0x188
   509e2:	8e c2                	mov    es,dx
   509e4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   509e9:	6b db 5c             	imul   bx,bx,0x5c
   509ec:	03 d8                	add    bx,ax
   509ee:	b8 88 01             	mov    ax,0x188
   509f1:	8e c0                	mov    es,ax
   509f3:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   509f8:	ba 88 01             	mov    dx,0x188
   509fb:	8e c2                	mov    es,dx
   509fd:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50a02:	6b db 5c             	imul   bx,bx,0x5c
   50a05:	ba 88 01             	mov    dx,0x188
   50a08:	8e c2                	mov    es,dx
   50a0a:	26 8b 97 e4 99       	mov    dx,WORD PTR es:[bx-0x661c]
   50a0f:	d1 e2                	shl    dx,1
   50a11:	bb 88 01             	mov    bx,0x188
   50a14:	8e c3                	mov    es,bx
   50a16:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50a1b:	6b db 5c             	imul   bx,bx,0x5c
   50a1e:	03 da                	add    bx,dx
   50a20:	ba 88 01             	mov    dx,0x188
   50a23:	8e c2                	mov    es,dx
   50a25:	50                   	push   ax
   50a26:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   50a2b:	bb 64 00             	mov    bx,0x64
   50a2e:	99                   	cwd
   50a2f:	f7 fb                	idiv   bx
   50a31:	6b c0 64             	imul   ax,ax,0x64
   50a34:	5a                   	pop    dx
   50a35:	2b d0                	sub    dx,ax
   50a37:	83 fa 1a             	cmp    dx,0x1a
   50a3a:	75 3c                	jne    0x50a78
   50a3c:	b8 88 01             	mov    ax,0x188
   50a3f:	8e c0                	mov    es,ax
   50a41:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50a46:	6b db 5c             	imul   bx,bx,0x5c
   50a49:	b8 88 01             	mov    ax,0x188
   50a4c:	8e c0                	mov    es,ax
   50a4e:	26 8b 87 e4 99       	mov    ax,WORD PTR es:[bx-0x661c]
   50a53:	d1 e0                	shl    ax,1
   50a55:	ba 88 01             	mov    dx,0x188
   50a58:	8e c2                	mov    es,dx
   50a5a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50a5f:	6b db 5c             	imul   bx,bx,0x5c
   50a62:	03 d8                	add    bx,ax
   50a64:	b8 88 01             	mov    ax,0x188
   50a67:	8e c0                	mov    es,ax
   50a69:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   50a6e:	bb 64 00             	mov    bx,0x64
   50a71:	99                   	cwd
   50a72:	f7 fb                	idiv   bx
   50a74:	40                   	inc    ax
   50a75:	01 46 fe             	add    WORD PTR [bp-0x2],ax
   50a78:	b8 88 01             	mov    ax,0x188
   50a7b:	8e c0                	mov    es,ax
   50a7d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50a82:	6b db 5c             	imul   bx,bx,0x5c
   50a85:	b8 88 01             	mov    ax,0x188
   50a88:	8e c0                	mov    es,ax
   50a8a:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   50a8f:	bb 2c 01             	mov    bx,0x12c
   50a92:	99                   	cwd
   50a93:	f7 fb                	idiv   bx
   50a95:	01 46 fe             	add    WORD PTR [bp-0x2],ax
   50a98:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   50a9b:	c9                   	leave
   50a9c:	cb                   	retf
   50a9d:	55                   	push   bp
   50a9e:	8b ec                	mov    bp,sp
   50aa0:	83 ec 02             	sub    sp,0x2
   50aa3:	a1 ee d5             	mov    ax,ds:0xd5ee
   50aa6:	05 fb ff             	add    ax,0xfffb
   50aa9:	7d 04                	jge    0x50aaf
   50aab:	33 c0                	xor    ax,ax
   50aad:	eb 06                	jmp    0x50ab5
   50aaf:	a1 ee d5             	mov    ax,ds:0xd5ee
   50ab2:	05 fb ff             	add    ax,0xfffb
   50ab5:	ba 0a 00             	mov    dx,0xa
   50ab8:	2b d0                	sub    dx,ax
   50aba:	83 fa 03             	cmp    dx,0x3
   50abd:	7d 05                	jge    0x50ac4
   50abf:	b8 03 00             	mov    ax,0x3
   50ac2:	eb 19                	jmp    0x50add
   50ac4:	a1 ee d5             	mov    ax,ds:0xd5ee
   50ac7:	05 fb ff             	add    ax,0xfffb
   50aca:	7d 04                	jge    0x50ad0
   50acc:	33 c0                	xor    ax,ax
   50ace:	eb 06                	jmp    0x50ad6
   50ad0:	a1 ee d5             	mov    ax,ds:0xd5ee
   50ad3:	05 fb ff             	add    ax,0xfffb
   50ad6:	50                   	push   ax
   50ad7:	b8 0a 00             	mov    ax,0xa
   50ada:	5a                   	pop    dx
   50adb:	2b c2                	sub    ax,dx
   50add:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   50ae0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   50ae3:	c9                   	leave
   50ae4:	cb                   	retf
   50ae5:	55                   	push   bp
   50ae6:	8b ec                	mov    bp,sp
   50ae8:	9a 04 02 30 00       	call   0x30:0x204
   50aed:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   50af1:	75 19                	jne    0x50b0c
   50af3:	6a 00                	push   0x0
   50af5:	b8 88 01             	mov    ax,0x188
   50af8:	8e c0                	mov    es,ax
   50afa:	26 ff 36 98 28       	push   WORD PTR es:0x2898
   50aff:	ff 76 08             	push   WORD PTR [bp+0x8]
   50b02:	90                   	nop
   50b03:	0e                   	push   cs
   50b04:	e8 96 41             	call   0x54c9d
   50b07:	83 c4 06             	add    sp,0x6
   50b0a:	eb 35                	jmp    0x50b41
   50b0c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   50b0f:	50                   	push   ax
   50b10:	6a 06                	push   0x6
   50b12:	6a 0f                	push   0xf
   50b14:	6a 0f                	push   0xf
   50b16:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   50b19:	48                   	dec    ax
   50b1a:	bb 05 00             	mov    bx,0x5
   50b1d:	99                   	cwd
   50b1e:	f7 fb                	idiv   bx
   50b20:	6b c0 11             	imul   ax,ax,0x11
   50b23:	05 a5 00             	add    ax,0xa5
   50b26:	50                   	push   ax
   50b27:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   50b2a:	48                   	dec    ax
   50b2b:	bb 05 00             	mov    bx,0x5
   50b2e:	99                   	cwd
   50b2f:	f7 fb                	idiv   bx
   50b31:	6b d2 11             	imul   dx,dx,0x11
   50b34:	81 c2 ec 00          	add    dx,0xec
   50b38:	52                   	push   dx
   50b39:	9a 08 09 28 00       	call   0x28:0x908
   50b3e:	83 c4 0c             	add    sp,0xc
   50b41:	68 e0 01             	push   0x1e0
   50b44:	68 d0 02             	push   0x2d0
   50b47:	6a 06                	push   0x6
   50b49:	6a 00                	push   0x0
   50b4b:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   50b4e:	48                   	dec    ax
   50b4f:	bb 05 00             	mov    bx,0x5
   50b52:	99                   	cwd
   50b53:	f7 fb                	idiv   bx
   50b55:	6b c0 11             	imul   ax,ax,0x11
   50b58:	05 a6 00             	add    ax,0xa6
   50b5b:	50                   	push   ax
   50b5c:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   50b5f:	48                   	dec    ax
   50b60:	bb 05 00             	mov    bx,0x5
   50b63:	99                   	cwd
   50b64:	f7 fb                	idiv   bx
   50b66:	6b d2 11             	imul   dx,dx,0x11
   50b69:	81 c2 ed 00          	add    dx,0xed
   50b6d:	52                   	push   dx
   50b6e:	6a 0d                	push   0xd
   50b70:	6a 0d                	push   0xd
   50b72:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   50b75:	48                   	dec    ax
   50b76:	bb 05 00             	mov    bx,0x5
   50b79:	99                   	cwd
   50b7a:	f7 fb                	idiv   bx
   50b7c:	6b c0 11             	imul   ax,ax,0x11
   50b7f:	05 a6 00             	add    ax,0xa6
   50b82:	50                   	push   ax
   50b83:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   50b86:	48                   	dec    ax
   50b87:	bb 05 00             	mov    bx,0x5
   50b8a:	99                   	cwd
   50b8b:	f7 fb                	idiv   bx
   50b8d:	6b d2 11             	imul   dx,dx,0x11
   50b90:	81 c2 ed 00          	add    dx,0xed
   50b94:	52                   	push   dx
   50b95:	9a 30 04 28 00       	call   0x28:0x430
   50b9a:	83 c4 14             	add    sp,0x14
   50b9d:	b8 88 01             	mov    ax,0x188
   50ba0:	8e c0                	mov    es,ax
   50ba2:	26 a0 e3 e5          	mov    al,es:0xe5e3
   50ba6:	50                   	push   ax
   50ba7:	9a 69 00 30 00       	call   0x30:0x69
   50bac:	59                   	pop    cx
   50bad:	5d                   	pop    bp
   50bae:	cb                   	retf
   50baf:	55                   	push   bp
   50bb0:	8b ec                	mov    bp,sp
   50bb2:	56                   	push   si
   50bb3:	b8 88 01             	mov    ax,0x188
   50bb6:	8e c0                	mov    es,ax
   50bb8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50bbd:	6b db 5c             	imul   bx,bx,0x5c
   50bc0:	b8 88 01             	mov    ax,0x188
   50bc3:	ba 88 01             	mov    dx,0x188
   50bc6:	8e c2                	mov    es,dx
   50bc8:	26 8b 36 98 28       	mov    si,WORD PTR es:0x2898
   50bcd:	6b f6 5c             	imul   si,si,0x5c
   50bd0:	ba 88 01             	mov    dx,0x188
   50bd3:	8e c2                	mov    es,dx
   50bd5:	26 8b 94 e0 99       	mov    dx,WORD PTR es:[si-0x6620]
   50bda:	83 c2 03             	add    dx,0x3
   50bdd:	8e c0                	mov    es,ax
   50bdf:	26 39 97 b2 99       	cmp    WORD PTR es:[bx-0x664e],dx
   50be4:	7d 19                	jge    0x50bff
   50be6:	b8 88 01             	mov    ax,0x188
   50be9:	8e c0                	mov    es,ax
   50beb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50bf0:	6b db 5c             	imul   bx,bx,0x5c
   50bf3:	b8 88 01             	mov    ax,0x188
   50bf6:	8e c0                	mov    es,ax
   50bf8:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   50bfd:	eb 1a                	jmp    0x50c19
   50bff:	b8 88 01             	mov    ax,0x188
   50c02:	8e c0                	mov    es,ax
   50c04:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50c09:	6b db 5c             	imul   bx,bx,0x5c
   50c0c:	b8 88 01             	mov    ax,0x188
   50c0f:	8e c0                	mov    es,ax
   50c11:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   50c16:	05 03 00             	add    ax,0x3
   50c19:	ba 88 01             	mov    dx,0x188
   50c1c:	8e c2                	mov    es,dx
   50c1e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50c23:	6b db 5c             	imul   bx,bx,0x5c
   50c26:	ba 88 01             	mov    dx,0x188
   50c29:	8e c2                	mov    es,dx
   50c2b:	26 89 87 e0 99       	mov    WORD PTR es:[bx-0x6620],ax
   50c30:	b8 88 01             	mov    ax,0x188
   50c33:	8e c0                	mov    es,ax
   50c35:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50c3a:	6b db 5c             	imul   bx,bx,0x5c
   50c3d:	b8 88 01             	mov    ax,0x188
   50c40:	8b 36 de d5          	mov    si,WORD PTR ds:0xd5de
   50c44:	6b f6 28             	imul   si,si,0x28
   50c47:	ba 88 01             	mov    dx,0x188
   50c4a:	8e c2                	mov    es,dx
   50c4c:	26 8b 94 8a a0       	mov    dx,WORD PTR es:[si-0x5f76]
   50c51:	83 c2 03             	add    dx,0x3
   50c54:	8e c0                	mov    es,ax
   50c56:	26 39 97 b2 99       	cmp    WORD PTR es:[bx-0x664e],dx
   50c5b:	7d 19                	jge    0x50c76
   50c5d:	b8 88 01             	mov    ax,0x188
   50c60:	8e c0                	mov    es,ax
   50c62:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50c67:	6b db 5c             	imul   bx,bx,0x5c
   50c6a:	b8 88 01             	mov    ax,0x188
   50c6d:	8e c0                	mov    es,ax
   50c6f:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   50c74:	eb 14                	jmp    0x50c8a
   50c76:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   50c7a:	6b db 28             	imul   bx,bx,0x28
   50c7d:	b8 88 01             	mov    ax,0x188
   50c80:	8e c0                	mov    es,ax
   50c82:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   50c87:	05 03 00             	add    ax,0x3
   50c8a:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   50c8e:	6b db 28             	imul   bx,bx,0x28
   50c91:	ba 88 01             	mov    dx,0x188
   50c94:	8e c2                	mov    es,dx
   50c96:	26 89 87 8a a0       	mov    WORD PTR es:[bx-0x5f76],ax
   50c9b:	5e                   	pop    si
   50c9c:	5d                   	pop    bp
   50c9d:	cb                   	retf
   50c9e:	55                   	push   bp
   50c9f:	8b ec                	mov    bp,sp
   50ca1:	56                   	push   si
   50ca2:	b8 88 01             	mov    ax,0x188
   50ca5:	8e c0                	mov    es,ax
   50ca7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50cac:	6b db 5c             	imul   bx,bx,0x5c
   50caf:	b8 88 01             	mov    ax,0x188
   50cb2:	ba 88 01             	mov    dx,0x188
   50cb5:	8e c2                	mov    es,dx
   50cb7:	26 8b 36 98 28       	mov    si,WORD PTR es:0x2898
   50cbc:	6b f6 5c             	imul   si,si,0x5c
   50cbf:	ba 88 01             	mov    dx,0x188
   50cc2:	8e c2                	mov    es,dx
   50cc4:	26 8b 94 de 99       	mov    dx,WORD PTR es:[si-0x6622]
   50cc9:	83 c2 32             	add    dx,0x32
   50ccc:	8e c0                	mov    es,ax
   50cce:	26 39 97 b0 99       	cmp    WORD PTR es:[bx-0x6650],dx
   50cd3:	7d 19                	jge    0x50cee
   50cd5:	b8 88 01             	mov    ax,0x188
   50cd8:	8e c0                	mov    es,ax
   50cda:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50cdf:	6b db 5c             	imul   bx,bx,0x5c
   50ce2:	b8 88 01             	mov    ax,0x188
   50ce5:	8e c0                	mov    es,ax
   50ce7:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   50cec:	eb 1a                	jmp    0x50d08
   50cee:	b8 88 01             	mov    ax,0x188
   50cf1:	8e c0                	mov    es,ax
   50cf3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50cf8:	6b db 5c             	imul   bx,bx,0x5c
   50cfb:	b8 88 01             	mov    ax,0x188
   50cfe:	8e c0                	mov    es,ax
   50d00:	26 8b 87 de 99       	mov    ax,WORD PTR es:[bx-0x6622]
   50d05:	05 32 00             	add    ax,0x32
   50d08:	ba 88 01             	mov    dx,0x188
   50d0b:	8e c2                	mov    es,dx
   50d0d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50d12:	6b db 5c             	imul   bx,bx,0x5c
   50d15:	ba 88 01             	mov    dx,0x188
   50d18:	8e c2                	mov    es,dx
   50d1a:	26 89 87 de 99       	mov    WORD PTR es:[bx-0x6622],ax
   50d1f:	b8 88 01             	mov    ax,0x188
   50d22:	8e c0                	mov    es,ax
   50d24:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50d29:	6b db 5c             	imul   bx,bx,0x5c
   50d2c:	b8 88 01             	mov    ax,0x188
   50d2f:	8b 36 de d5          	mov    si,WORD PTR ds:0xd5de
   50d33:	6b f6 28             	imul   si,si,0x28
   50d36:	ba 88 01             	mov    dx,0x188
   50d39:	8e c2                	mov    es,dx
   50d3b:	26 8b 94 8c a0       	mov    dx,WORD PTR es:[si-0x5f74]
   50d40:	83 c2 32             	add    dx,0x32
   50d43:	8e c0                	mov    es,ax
   50d45:	26 39 97 b0 99       	cmp    WORD PTR es:[bx-0x6650],dx
   50d4a:	7d 19                	jge    0x50d65
   50d4c:	b8 88 01             	mov    ax,0x188
   50d4f:	8e c0                	mov    es,ax
   50d51:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50d56:	6b db 5c             	imul   bx,bx,0x5c
   50d59:	b8 88 01             	mov    ax,0x188
   50d5c:	8e c0                	mov    es,ax
   50d5e:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   50d63:	eb 14                	jmp    0x50d79
   50d65:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   50d69:	6b db 28             	imul   bx,bx,0x28
   50d6c:	b8 88 01             	mov    ax,0x188
   50d6f:	8e c0                	mov    es,ax
   50d71:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   50d76:	05 32 00             	add    ax,0x32
   50d79:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   50d7d:	6b db 28             	imul   bx,bx,0x28
   50d80:	ba 88 01             	mov    dx,0x188
   50d83:	8e c2                	mov    es,dx
   50d85:	26 89 87 8c a0       	mov    WORD PTR es:[bx-0x5f74],ax
   50d8a:	5e                   	pop    si
   50d8b:	5d                   	pop    bp
   50d8c:	cb                   	retf
   50d8d:	55                   	push   bp
   50d8e:	8b ec                	mov    bp,sp
   50d90:	b8 88 01             	mov    ax,0x188
   50d93:	8e c0                	mov    es,ax
   50d95:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50d9a:	6b db 5c             	imul   bx,bx,0x5c
   50d9d:	b8 88 01             	mov    ax,0x188
   50da0:	8e c0                	mov    es,ax
   50da2:	26 83 87 b2 99 03    	add    WORD PTR es:[bx-0x664e],0x3
   50da8:	b8 88 01             	mov    ax,0x188
   50dab:	8e c0                	mov    es,ax
   50dad:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50db2:	6b db 2e             	imul   bx,bx,0x2e
   50db5:	b8 88 01             	mov    ax,0x188
   50db8:	8e c0                	mov    es,ax
   50dba:	26 83 87 1a 9f 03    	add    WORD PTR es:[bx-0x60e6],0x3
   50dc0:	5d                   	pop    bp
   50dc1:	cb                   	retf
   50dc2:	55                   	push   bp
   50dc3:	8b ec                	mov    bp,sp
   50dc5:	b8 88 01             	mov    ax,0x188
   50dc8:	8e c0                	mov    es,ax
   50dca:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50dcf:	6b db 5c             	imul   bx,bx,0x5c
   50dd2:	b8 88 01             	mov    ax,0x188
   50dd5:	8e c0                	mov    es,ax
   50dd7:	26 83 87 b0 99 32    	add    WORD PTR es:[bx-0x6650],0x32
   50ddd:	b8 88 01             	mov    ax,0x188
   50de0:	8e c0                	mov    es,ax
   50de2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50de7:	6b db 2e             	imul   bx,bx,0x2e
   50dea:	b8 88 01             	mov    ax,0x188
   50ded:	8e c0                	mov    es,ax
   50def:	26 83 87 2a 9f 32    	add    WORD PTR es:[bx-0x60d6],0x32
   50df5:	5d                   	pop    bp
   50df6:	cb                   	retf
   50df7:	55                   	push   bp
   50df8:	8b ec                	mov    bp,sp
   50dfa:	b8 88 01             	mov    ax,0x188
   50dfd:	8e c0                	mov    es,ax
   50dff:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50e04:	6b db 5c             	imul   bx,bx,0x5c
   50e07:	b8 88 01             	mov    ax,0x188
   50e0a:	8e c0                	mov    es,ax
   50e0c:	26 83 87 c2 99 32    	add    WORD PTR es:[bx-0x663e],0x32
   50e12:	5d                   	pop    bp
   50e13:	cb                   	retf
   50e14:	55                   	push   bp
   50e15:	8b ec                	mov    bp,sp
   50e17:	b8 88 01             	mov    ax,0x188
   50e1a:	8e c0                	mov    es,ax
   50e1c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50e21:	6b db 5c             	imul   bx,bx,0x5c
   50e24:	b8 88 01             	mov    ax,0x188
   50e27:	8e c0                	mov    es,ax
   50e29:	26 83 87 bc 99 32    	add    WORD PTR es:[bx-0x6644],0x32
   50e2f:	b8 88 01             	mov    ax,0x188
   50e32:	8e c0                	mov    es,ax
   50e34:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50e39:	6b db 2e             	imul   bx,bx,0x2e
   50e3c:	b8 88 01             	mov    ax,0x188
   50e3f:	8e c0                	mov    es,ax
   50e41:	26 83 87 2c 9f 32    	add    WORD PTR es:[bx-0x60d4],0x32
   50e47:	5d                   	pop    bp
   50e48:	cb                   	retf
   50e49:	55                   	push   bp
   50e4a:	8b ec                	mov    bp,sp
   50e4c:	b8 88 01             	mov    ax,0x188
   50e4f:	8e c0                	mov    es,ax
   50e51:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50e56:	6b db 5c             	imul   bx,bx,0x5c
   50e59:	b8 88 01             	mov    ax,0x188
   50e5c:	8e c0                	mov    es,ax
   50e5e:	26 83 87 b4 99 32    	add    WORD PTR es:[bx-0x664c],0x32
   50e64:	5d                   	pop    bp
   50e65:	cb                   	retf
   50e66:	55                   	push   bp
   50e67:	8b ec                	mov    bp,sp
   50e69:	b8 88 01             	mov    ax,0x188
   50e6c:	8e c0                	mov    es,ax
   50e6e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50e73:	6b db 5c             	imul   bx,bx,0x5c
   50e76:	b8 88 01             	mov    ax,0x188
   50e79:	8e c0                	mov    es,ax
   50e7b:	26 83 87 b8 99 32    	add    WORD PTR es:[bx-0x6648],0x32
   50e81:	5d                   	pop    bp
   50e82:	cb                   	retf
   50e83:	55                   	push   bp
   50e84:	8b ec                	mov    bp,sp
   50e86:	b8 88 01             	mov    ax,0x188
   50e89:	8e c0                	mov    es,ax
   50e8b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   50e90:	6b db 5c             	imul   bx,bx,0x5c
   50e93:	b8 88 01             	mov    ax,0x188
   50e96:	8e c0                	mov    es,ax
   50e98:	26 83 87 ba 99 32    	add    WORD PTR es:[bx-0x6646],0x32
   50e9e:	5d                   	pop    bp
   50e9f:	cb                   	retf
   50ea0:	55                   	push   bp
   50ea1:	8b ec                	mov    bp,sp
   50ea3:	83 ec 02             	sub    sp,0x2
   50ea6:	b8 88 01             	mov    ax,0x188
   50ea9:	8e c0                	mov    es,ax
   50eab:	26 c7 06 9d e6 02 00 	mov    WORD PTR es:0xe69d,0x2
   50eb2:	b8 88 01             	mov    ax,0x188
   50eb5:	8e c0                	mov    es,ax
   50eb7:	26 c7 06 9f e6 4f 00 	mov    WORD PTR es:0xe69f,0x4f
   50ebe:	b8 88 01             	mov    ax,0x188
   50ec1:	8e c0                	mov    es,ax
   50ec3:	26 c7 06 a1 e6 0c 00 	mov    WORD PTR es:0xe6a1,0xc
   50eca:	b8 88 01             	mov    ax,0x188
   50ecd:	8e c0                	mov    es,ax
   50ecf:	26 c7 06 a3 e6 56 00 	mov    WORD PTR es:0xe6a3,0x56
   50ed6:	b8 88 01             	mov    ax,0x188
   50ed9:	8e c0                	mov    es,ax
   50edb:	26 c7 06 a5 e6 11 00 	mov    WORD PTR es:0xe6a5,0x11
   50ee2:	b8 88 01             	mov    ax,0x188
   50ee5:	8e c0                	mov    es,ax
   50ee7:	26 c7 06 a7 e6 4f 00 	mov    WORD PTR es:0xe6a7,0x4f
   50eee:	b8 88 01             	mov    ax,0x188
   50ef1:	8e c0                	mov    es,ax
   50ef3:	26 c7 06 a9 e6 1b 00 	mov    WORD PTR es:0xe6a9,0x1b
   50efa:	b8 88 01             	mov    ax,0x188
   50efd:	8e c0                	mov    es,ax
   50eff:	26 c7 06 ab e6 56 00 	mov    WORD PTR es:0xe6ab,0x56
   50f06:	b8 88 01             	mov    ax,0x188
   50f09:	8e c0                	mov    es,ax
   50f0b:	26 c7 06 ad e6 1f 00 	mov    WORD PTR es:0xe6ad,0x1f
   50f12:	b8 88 01             	mov    ax,0x188
   50f15:	8e c0                	mov    es,ax
   50f17:	26 c7 06 af e6 4e 00 	mov    WORD PTR es:0xe6af,0x4e
   50f1e:	b8 88 01             	mov    ax,0x188
   50f21:	8e c0                	mov    es,ax
   50f23:	26 c7 06 b1 e6 28 00 	mov    WORD PTR es:0xe6b1,0x28
   50f2a:	b8 88 01             	mov    ax,0x188
   50f2d:	8e c0                	mov    es,ax
   50f2f:	26 c7 06 b3 e6 55 00 	mov    WORD PTR es:0xe6b3,0x55
   50f36:	b8 88 01             	mov    ax,0x188
   50f39:	8e c0                	mov    es,ax
   50f3b:	26 c7 06 b5 e6 0e 00 	mov    WORD PTR es:0xe6b5,0xe
   50f42:	b8 88 01             	mov    ax,0x188
   50f45:	8e c0                	mov    es,ax
   50f47:	26 c7 06 b7 e6 5b 00 	mov    WORD PTR es:0xe6b7,0x5b
   50f4e:	b8 88 01             	mov    ax,0x188
   50f51:	8e c0                	mov    es,ax
   50f53:	26 c7 06 b9 e6 19 00 	mov    WORD PTR es:0xe6b9,0x19
   50f5a:	b8 88 01             	mov    ax,0x188
   50f5d:	8e c0                	mov    es,ax
   50f5f:	26 c7 06 bb e6 63 00 	mov    WORD PTR es:0xe6bb,0x63
   50f66:	b8 88 01             	mov    ax,0x188
   50f69:	8e c0                	mov    es,ax
   50f6b:	26 c7 06 bd e6 2b 00 	mov    WORD PTR es:0xe6bd,0x2b
   50f72:	b8 88 01             	mov    ax,0x188
   50f75:	8e c0                	mov    es,ax
   50f77:	26 c7 06 bf e6 5a 00 	mov    WORD PTR es:0xe6bf,0x5a
   50f7e:	b8 88 01             	mov    ax,0x188
   50f81:	8e c0                	mov    es,ax
   50f83:	26 c7 06 c1 e6 34 00 	mov    WORD PTR es:0xe6c1,0x34
   50f8a:	b8 88 01             	mov    ax,0x188
   50f8d:	8e c0                	mov    es,ax
   50f8f:	26 c7 06 c3 e6 63 00 	mov    WORD PTR es:0xe6c3,0x63
   50f96:	b8 88 01             	mov    ax,0x188
   50f99:	8e c0                	mov    es,ax
   50f9b:	26 c7 06 c5 e6 1a 00 	mov    WORD PTR es:0xe6c5,0x1a
   50fa2:	b8 88 01             	mov    ax,0x188
   50fa5:	8e c0                	mov    es,ax
   50fa7:	26 c7 06 c7 e6 67 00 	mov    WORD PTR es:0xe6c7,0x67
   50fae:	b8 88 01             	mov    ax,0x188
   50fb1:	8e c0                	mov    es,ax
   50fb3:	26 c7 06 c9 e6 25 00 	mov    WORD PTR es:0xe6c9,0x25
   50fba:	b8 88 01             	mov    ax,0x188
   50fbd:	8e c0                	mov    es,ax
   50fbf:	26 c7 06 cb e6 6e 00 	mov    WORD PTR es:0xe6cb,0x6e
   50fc6:	b8 88 01             	mov    ax,0x188
   50fc9:	8e c0                	mov    es,ax
   50fcb:	26 c7 06 cd e6 29 00 	mov    WORD PTR es:0xe6cd,0x29
   50fd2:	b8 88 01             	mov    ax,0x188
   50fd5:	8e c0                	mov    es,ax
   50fd7:	26 c7 06 cf e6 67 00 	mov    WORD PTR es:0xe6cf,0x67
   50fde:	b8 88 01             	mov    ax,0x188
   50fe1:	8e c0                	mov    es,ax
   50fe3:	26 c7 06 d1 e6 34 00 	mov    WORD PTR es:0xe6d1,0x34
   50fea:	b8 88 01             	mov    ax,0x188
   50fed:	8e c0                	mov    es,ax
   50fef:	26 c7 06 d3 e6 6e 00 	mov    WORD PTR es:0xe6d3,0x6e
   50ff6:	b8 88 01             	mov    ax,0x188
   50ff9:	8e c0                	mov    es,ax
   50ffb:	26 c7 06 d5 e6 38 00 	mov    WORD PTR es:0xe6d5,0x38
   51002:	b8 88 01             	mov    ax,0x188
   51005:	8e c0                	mov    es,ax
   51007:	26 c7 06 d7 e6 67 00 	mov    WORD PTR es:0xe6d7,0x67
   5100e:	b8 88 01             	mov    ax,0x188
   51011:	8e c0                	mov    es,ax
   51013:	26 c7 06 d9 e6 41 00 	mov    WORD PTR es:0xe6d9,0x41
   5101a:	b8 88 01             	mov    ax,0x188
   5101d:	8e c0                	mov    es,ax
   5101f:	26 c7 06 db e6 6e 00 	mov    WORD PTR es:0xe6db,0x6e
   51026:	b8 88 01             	mov    ax,0x188
   51029:	8e c0                	mov    es,ax
   5102b:	26 c7 06 05 e7 1d 00 	mov    WORD PTR es:0xe705,0x1d
   51032:	b8 88 01             	mov    ax,0x188
   51035:	8e c0                	mov    es,ax
   51037:	26 c7 06 07 e7 5b 00 	mov    WORD PTR es:0xe707,0x5b
   5103e:	b8 88 01             	mov    ax,0x188
   51041:	8e c0                	mov    es,ax
   51043:	26 c7 06 09 e7 28 00 	mov    WORD PTR es:0xe709,0x28
   5104a:	b8 88 01             	mov    ax,0x188
   5104d:	8e c0                	mov    es,ax
   5104f:	26 c7 06 0b e7 63 00 	mov    WORD PTR es:0xe70b,0x63
   51056:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   5105b:	eb 5b                	jmp    0x510b8
   5105d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   51060:	c1 e3 03             	shl    bx,0x3
   51063:	b8 88 01             	mov    ax,0x188
   51066:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   51069:	6b d2 27             	imul   dx,dx,0x27
   5106c:	81 c2 90 00          	add    dx,0x90
   51070:	8e c0                	mov    es,ax
   51072:	26 89 97 dd e6       	mov    WORD PTR es:[bx-0x1923],dx
   51077:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5107a:	c1 e3 03             	shl    bx,0x3
   5107d:	b8 88 01             	mov    ax,0x188
   51080:	8e c0                	mov    es,ax
   51082:	26 c7 87 df e6 93 00 	mov    WORD PTR es:[bx-0x1921],0x93
   51089:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5108c:	c1 e3 03             	shl    bx,0x3
   5108f:	b8 88 01             	mov    ax,0x188
   51092:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   51095:	6b d2 27             	imul   dx,dx,0x27
   51098:	81 c2 a8 00          	add    dx,0xa8
   5109c:	8e c0                	mov    es,ax
   5109e:	26 89 97 e1 e6       	mov    WORD PTR es:[bx-0x191f],dx
   510a3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   510a6:	c1 e3 03             	shl    bx,0x3
   510a9:	b8 88 01             	mov    ax,0x188
   510ac:	8e c0                	mov    es,ax
   510ae:	26 c7 87 e3 e6 9f 00 	mov    WORD PTR es:[bx-0x191d],0x9f
   510b5:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   510b8:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   510bc:	7c 9f                	jl     0x5105d
   510be:	c9                   	leave
   510bf:	cb                   	retf
   510c0:	55                   	push   bp
   510c1:	8b ec                	mov    bp,sp
   510c3:	83 ec 2c             	sub    sp,0x2c
   510c6:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   510cb:	7c 03                	jl     0x510d0
   510cd:	e9 f2 00             	jmp    0x511c2
   510d0:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   510d4:	6b db 28             	imul   bx,bx,0x28
   510d7:	b8 88 01             	mov    ax,0x188
   510da:	8e c0                	mov    es,ax
   510dc:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   510e1:	6b db 06             	imul   bx,bx,0x6
   510e4:	b8 88 01             	mov    ax,0x188
   510e7:	8e c0                	mov    es,ax
   510e9:	26 8b 87 c2 5b       	mov    ax,WORD PTR es:[bx+0x5bc2]
   510ee:	6b c0 13             	imul   ax,ax,0x13
   510f1:	05 b3 1e             	add    ax,0x1eb3
   510f4:	68 88 01             	push   0x188
   510f7:	50                   	push   ax
   510f8:	16                   	push   ss
   510f9:	8d 46 d4             	lea    ax,[bp-0x2c]
   510fc:	50                   	push   ax
   510fd:	9a 7a 53 00 00       	call   0x0:0x537a
   51102:	83 c4 08             	add    sp,0x8
   51105:	16                   	push   ss
   51106:	8d 46 d4             	lea    ax,[bp-0x2c]
   51109:	50                   	push   ax
   5110a:	9a cc 49 00 00       	call   0x0:0x49cc
   5110f:	83 c4 04             	add    sp,0x4
   51112:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   51115:	6a 02                	push   0x2
   51117:	16                   	push   ss
   51118:	8d 46 d4             	lea    ax,[bp-0x2c]
   5111b:	50                   	push   ax
   5111c:	9a 48 00 80 01       	call   0x180:0x48
   51121:	83 c4 06             	add    sp,0x6
   51124:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   51127:	83 7e fc 41          	cmp    WORD PTR [bp-0x4],0x41
   5112b:	7e 3a                	jle    0x51167
   5112d:	eb 21                	jmp    0x51150
   5112f:	8d 46 d4             	lea    ax,[bp-0x2c]
   51132:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   51135:	03 d8                	add    bx,ax
   51137:	36 c6 07 00          	mov    BYTE PTR ss:[bx],0x0
   5113b:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   5113e:	6a 02                	push   0x2
   51140:	16                   	push   ss
   51141:	8d 46 d4             	lea    ax,[bp-0x2c]
   51144:	50                   	push   ax
   51145:	9a 48 00 80 01       	call   0x180:0x48
   5114a:	83 c4 06             	add    sp,0x6
   5114d:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   51150:	83 7e fc 41          	cmp    WORD PTR [bp-0x4],0x41
   51154:	7f d9                	jg     0x5112f
   51156:	1e                   	push   ds
   51157:	68 46 67             	push   0x6746
   5115a:	16                   	push   ss
   5115b:	8d 46 d4             	lea    ax,[bp-0x2c]
   5115e:	50                   	push   ax
   5115f:	9a f7 48 00 00       	call   0x0:0x48f7
   51164:	83 c4 08             	add    sp,0x8
   51167:	16                   	push   ss
   51168:	8d 46 d4             	lea    ax,[bp-0x2c]
   5116b:	50                   	push   ax
   5116c:	9a cc 49 00 00       	call   0x0:0x49cc
   51171:	83 c4 04             	add    sp,0x4
   51174:	3d 28 00             	cmp    ax,0x28
   51177:	72 15                	jb     0x5118e
   51179:	6a 65                	push   0x65
   5117b:	6a 00                	push   0x0
   5117d:	6a 00                	push   0x0
   5117f:	68 d0 08             	push   0x8d0
   51182:	1e                   	push   ds
   51183:	68 48 67             	push   0x6748
   51186:	9a 2a 00 58 01       	call   0x158:0x2a
   5118b:	83 c4 0c             	add    sp,0xc
   5118e:	6a 00                	push   0x0
   51190:	16                   	push   ss
   51191:	8d 46 d4             	lea    ax,[bp-0x2c]
   51194:	50                   	push   ax
   51195:	68 c0 00             	push   0xc0
   51198:	6a 3c                	push   0x3c
   5119a:	6a 02                	push   0x2
   5119c:	0e                   	push   cs
   5119d:	e8 30 96             	call   0x5a7d0
   511a0:	83 c4 0c             	add    sp,0xc
   511a3:	b8 88 01             	mov    ax,0x188
   511a6:	8e c0                	mov    es,ax
   511a8:	26 a0 64 96          	mov    al,es:0x9664
   511ac:	b4 00                	mov    ah,0x0
   511ae:	50                   	push   ax
   511af:	16                   	push   ss
   511b0:	8d 46 d4             	lea    ax,[bp-0x2c]
   511b3:	50                   	push   ax
   511b4:	68 bf 00             	push   0xbf
   511b7:	6a 3c                	push   0x3c
   511b9:	6a 02                	push   0x2
   511bb:	0e                   	push   cs
   511bc:	e8 11 96             	call   0x5a7d0
   511bf:	83 c4 0c             	add    sp,0xc
   511c2:	c9                   	leave
   511c3:	cb                   	retf
   511c4:	55                   	push   bp
   511c5:	8b ec                	mov    bp,sp
   511c7:	83 ec 1a             	sub    sp,0x1a
   511ca:	0e                   	push   cs
   511cb:	e8 d2 fc             	call   0x50ea0
   511ce:	a1 de d5             	mov    ax,ds:0xd5de
   511d1:	05 e8 ff             	add    ax,0xffe8
   511d4:	ba 88 01             	mov    dx,0x188
   511d7:	8e c2                	mov    es,dx
   511d9:	26 a3 98 28          	mov    es:0x2898,ax
   511dd:	b8 88 01             	mov    ax,0x188
   511e0:	8e c0                	mov    es,ax
   511e2:	26 a1 98 28          	mov    ax,es:0x2898
   511e6:	a3 ac d5             	mov    ds:0xd5ac,ax
   511e9:	0e                   	push   cs
   511ea:	e8 58 ef             	call   0x50145
   511ed:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   511f2:	7f 03                	jg     0x511f7
   511f4:	e9 5a 04             	jmp    0x51651
   511f7:	b8 88 01             	mov    ax,0x188
   511fa:	8e c0                	mov    es,ax
   511fc:	26 a1 98 28          	mov    ax,es:0x2898
   51200:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   51203:	68 e0 01             	push   0x1e0
   51206:	68 d0 02             	push   0x2d0
   51209:	6a 06                	push   0x6
   5120b:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   5120e:	04 46                	add    al,0x46
   51210:	50                   	push   ax
   51211:	68 a5 00             	push   0xa5
   51214:	6a 19                	push   0x19
   51216:	6a 20                	push   0x20
   51218:	6a 20                	push   0x20
   5121a:	6a 00                	push   0x0
   5121c:	6a 00                	push   0x0
   5121e:	9a 30 04 28 00       	call   0x28:0x430
   51223:	83 c4 14             	add    sp,0x14
   51226:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   5122b:	eb 13                	jmp    0x51240
   5122d:	6a 01                	push   0x1
   5122f:	ff 76 fc             	push   WORD PTR [bp-0x4]
   51232:	ff 76 fe             	push   WORD PTR [bp-0x2]
   51235:	90                   	nop
   51236:	0e                   	push   cs
   51237:	e8 63 3a             	call   0x54c9d
   5123a:	83 c4 06             	add    sp,0x6
   5123d:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   51240:	83 7e fe 0a          	cmp    WORD PTR [bp-0x2],0xa
   51244:	7e e7                	jle    0x5122d
   51246:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   5124b:	eb 13                	jmp    0x51260
   5124d:	6a 01                	push   0x1
   5124f:	ff 76 fc             	push   WORD PTR [bp-0x4]
   51252:	ff 76 fe             	push   WORD PTR [bp-0x2]
   51255:	90                   	nop
   51256:	0e                   	push   cs
   51257:	e8 25 3c             	call   0x54e7f
   5125a:	83 c4 06             	add    sp,0x6
   5125d:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   51260:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   51264:	7e e7                	jle    0x5124d
   51266:	b8 88 01             	mov    ax,0x188
   51269:	8e c0                	mov    es,ax
   5126b:	26 c7 06 65 e6 6e 00 	mov    WORD PTR es:0xe665,0x6e
   51272:	b8 88 01             	mov    ax,0x188
   51275:	8e c0                	mov    es,ax
   51277:	26 c7 06 67 e6 a5 00 	mov    WORD PTR es:0xe667,0xa5
   5127e:	b8 88 01             	mov    ax,0x188
   51281:	8e c0                	mov    es,ax
   51283:	26 c7 06 69 e6 7d 00 	mov    WORD PTR es:0xe669,0x7d
   5128a:	b8 88 01             	mov    ax,0x188
   5128d:	8e c0                	mov    es,ax
   5128f:	26 c7 06 6b e6 b4 00 	mov    WORD PTR es:0xe66b,0xb4
   51296:	6a 00                	push   0x0
   51298:	6a 06                	push   0x6
   5129a:	6a 22                	push   0x22
   5129c:	6a 2b                	push   0x2b
   5129e:	68 a4 00             	push   0xa4
   512a1:	68 ae 00             	push   0xae
   512a4:	9a 08 09 28 00       	call   0x28:0x908
   512a9:	83 c4 0c             	add    sp,0xc
   512ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   512af:	6b db 28             	imul   bx,bx,0x28
   512b2:	b8 88 01             	mov    ax,0x188
   512b5:	8e c0                	mov    es,ax
   512b7:	26 8b 9f 50 a4       	mov    bx,WORD PTR es:[bx-0x5bb0]
   512bc:	6b db 2e             	imul   bx,bx,0x2e
   512bf:	b8 88 01             	mov    ax,0x188
   512c2:	8e c0                	mov    es,ax
   512c4:	26 ff b7 1a 9f       	push   WORD PTR es:[bx-0x60e6]
   512c9:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   512cc:	6b db 28             	imul   bx,bx,0x28
   512cf:	b8 88 01             	mov    ax,0x188
   512d2:	8e c0                	mov    es,ax
   512d4:	26 ff b7 4a a4       	push   WORD PTR es:[bx-0x5bb6]
   512d9:	1e                   	push   ds
   512da:	68 58 67             	push   0x6758
   512dd:	16                   	push   ss
   512de:	8d 46 e6             	lea    ax,[bp-0x1a]
   512e1:	50                   	push   ax
   512e2:	9a b4 48 00 00       	call   0x0:0x48b4
   512e7:	83 c4 0c             	add    sp,0xc
   512ea:	b8 88 01             	mov    ax,0x188
   512ed:	8e c0                	mov    es,ax
   512ef:	26 a0 64 96          	mov    al,es:0x9664
   512f3:	b4 00                	mov    ah,0x0
   512f5:	50                   	push   ax
   512f6:	16                   	push   ss
   512f7:	8d 46 e6             	lea    ax,[bp-0x1a]
   512fa:	50                   	push   ax
   512fb:	68 a5 00             	push   0xa5
   512fe:	68 ae 00             	push   0xae
   51301:	6a 02                	push   0x2
   51303:	0e                   	push   cs
   51304:	e8 c9 94             	call   0x5a7d0
   51307:	83 c4 0c             	add    sp,0xc
   5130a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5130d:	6b db 28             	imul   bx,bx,0x28
   51310:	b8 88 01             	mov    ax,0x188
   51313:	8e c0                	mov    es,ax
   51315:	26 8b 9f 50 a4       	mov    bx,WORD PTR es:[bx-0x5bb0]
   5131a:	6b db 2e             	imul   bx,bx,0x2e
   5131d:	b8 88 01             	mov    ax,0x188
   51320:	8e c0                	mov    es,ax
   51322:	26 ff b7 2a 9f       	push   WORD PTR es:[bx-0x60d6]
   51327:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5132a:	6b db 28             	imul   bx,bx,0x28
   5132d:	b8 88 01             	mov    ax,0x188
   51330:	8e c0                	mov    es,ax
   51332:	26 ff b7 4c a4       	push   WORD PTR es:[bx-0x5bb4]
   51337:	1e                   	push   ds
   51338:	68 5e 67             	push   0x675e
   5133b:	16                   	push   ss
   5133c:	8d 46 e6             	lea    ax,[bp-0x1a]
   5133f:	50                   	push   ax
   51340:	9a b4 48 00 00       	call   0x0:0x48b4
   51345:	83 c4 0c             	add    sp,0xc
   51348:	b8 88 01             	mov    ax,0x188
   5134b:	8e c0                	mov    es,ax
   5134d:	26 a0 64 96          	mov    al,es:0x9664
   51351:	b4 00                	mov    ah,0x0
   51353:	50                   	push   ax
   51354:	16                   	push   ss
   51355:	8d 46 e6             	lea    ax,[bp-0x1a]
   51358:	50                   	push   ax
   51359:	68 ac 00             	push   0xac
   5135c:	68 ae 00             	push   0xae
   5135f:	6a 02                	push   0x2
   51361:	0e                   	push   cs
   51362:	e8 6b 94             	call   0x5a7d0
   51365:	83 c4 0c             	add    sp,0xc
   51368:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5136b:	6b db 28             	imul   bx,bx,0x28
   5136e:	b8 88 01             	mov    ax,0x188
   51371:	8e c0                	mov    es,ax
   51373:	26 8b 9f 50 a4       	mov    bx,WORD PTR es:[bx-0x5bb0]
   51378:	6b db 2e             	imul   bx,bx,0x2e
   5137b:	b8 88 01             	mov    ax,0x188
   5137e:	8e c0                	mov    es,ax
   51380:	26 ff b7 20 9f       	push   WORD PTR es:[bx-0x60e0]
   51385:	1e                   	push   ds
   51386:	68 64 67             	push   0x6764
   51389:	16                   	push   ss
   5138a:	8d 46 e6             	lea    ax,[bp-0x1a]
   5138d:	50                   	push   ax
   5138e:	9a b4 48 00 00       	call   0x0:0x48b4
   51393:	83 c4 0a             	add    sp,0xa
   51396:	b8 88 01             	mov    ax,0x188
   51399:	8e c0                	mov    es,ax
   5139b:	26 a0 64 96          	mov    al,es:0x9664
   5139f:	b4 00                	mov    ah,0x0
   513a1:	50                   	push   ax
   513a2:	16                   	push   ss
   513a3:	8d 46 e6             	lea    ax,[bp-0x1a]
   513a6:	50                   	push   ax
   513a7:	68 b3 00             	push   0xb3
   513aa:	68 ae 00             	push   0xae
   513ad:	6a 02                	push   0x2
   513af:	0e                   	push   cs
   513b0:	e8 1d 94             	call   0x5a7d0
   513b3:	83 c4 0c             	add    sp,0xc
   513b6:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   513b9:	6b db 28             	imul   bx,bx,0x28
   513bc:	b8 88 01             	mov    ax,0x188
   513bf:	8e c0                	mov    es,ax
   513c1:	26 8b 9f 50 a4       	mov    bx,WORD PTR es:[bx-0x5bb0]
   513c6:	6b db 2e             	imul   bx,bx,0x2e
   513c9:	b8 88 01             	mov    ax,0x188
   513cc:	8e c0                	mov    es,ax
   513ce:	26 ff b7 22 9f       	push   WORD PTR es:[bx-0x60de]
   513d3:	1e                   	push   ds
   513d4:	68 67 67             	push   0x6767
   513d7:	16                   	push   ss
   513d8:	8d 46 e6             	lea    ax,[bp-0x1a]
   513db:	50                   	push   ax
   513dc:	9a b4 48 00 00       	call   0x0:0x48b4
   513e1:	83 c4 0a             	add    sp,0xa
   513e4:	b8 88 01             	mov    ax,0x188
   513e7:	8e c0                	mov    es,ax
   513e9:	26 a0 64 96          	mov    al,es:0x9664
   513ed:	b4 00                	mov    ah,0x0
   513ef:	50                   	push   ax
   513f0:	16                   	push   ss
   513f1:	8d 46 e6             	lea    ax,[bp-0x1a]
   513f4:	50                   	push   ax
   513f5:	68 ba 00             	push   0xba
   513f8:	68 ae 00             	push   0xae
   513fb:	6a 02                	push   0x2
   513fd:	0e                   	push   cs
   513fe:	e8 cf 93             	call   0x5a7d0
   51401:	83 c4 0c             	add    sp,0xc
   51404:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   51407:	6b db 28             	imul   bx,bx,0x28
   5140a:	b8 88 01             	mov    ax,0x188
   5140d:	8e c0                	mov    es,ax
   5140f:	26 ff b7 5c a4       	push   WORD PTR es:[bx-0x5ba4]
   51414:	1e                   	push   ds
   51415:	68 6a 67             	push   0x676a
   51418:	16                   	push   ss
   51419:	8d 46 e6             	lea    ax,[bp-0x1a]
   5141c:	50                   	push   ax
   5141d:	9a b4 48 00 00       	call   0x0:0x48b4
   51422:	83 c4 0a             	add    sp,0xa
   51425:	b8 88 01             	mov    ax,0x188
   51428:	8e c0                	mov    es,ax
   5142a:	26 a0 64 96          	mov    al,es:0x9664
   5142e:	b4 00                	mov    ah,0x0
   51430:	50                   	push   ax
   51431:	16                   	push   ss
   51432:	8d 46 e6             	lea    ax,[bp-0x1a]
   51435:	50                   	push   ax
   51436:	68 c1 00             	push   0xc1
   51439:	68 ae 00             	push   0xae
   5143c:	6a 02                	push   0x2
   5143e:	0e                   	push   cs
   5143f:	e8 8e 93             	call   0x5a7d0
   51442:	83 c4 0c             	add    sp,0xc
   51445:	6a 00                	push   0x0
   51447:	6a 06                	push   0x6
   51449:	6a 06                	push   0x6
   5144b:	6a 09                	push   0x9
   5144d:	68 ab 00             	push   0xab
   51450:	68 de 00             	push   0xde
   51453:	9a 08 09 28 00       	call   0x28:0x908
   51458:	83 c4 0c             	add    sp,0xc
   5145b:	ff 36 4c d5          	push   WORD PTR ds:0xd54c
   5145f:	1e                   	push   ds
   51460:	68 6d 67             	push   0x676d
   51463:	16                   	push   ss
   51464:	8d 46 e6             	lea    ax,[bp-0x1a]
   51467:	50                   	push   ax
   51468:	9a b4 48 00 00       	call   0x0:0x48b4
   5146d:	83 c4 0a             	add    sp,0xa
   51470:	b8 88 01             	mov    ax,0x188
   51473:	8e c0                	mov    es,ax
   51475:	26 a0 64 96          	mov    al,es:0x9664
   51479:	b4 00                	mov    ah,0x0
   5147b:	50                   	push   ax
   5147c:	16                   	push   ss
   5147d:	8d 46 e6             	lea    ax,[bp-0x1a]
   51480:	50                   	push   ax
   51481:	68 ab 00             	push   0xab
   51484:	68 de 00             	push   0xde
   51487:	6a 02                	push   0x2
   51489:	0e                   	push   cs
   5148a:	e8 43 93             	call   0x5a7d0
   5148d:	83 c4 0c             	add    sp,0xc
   51490:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   51493:	6b db 5c             	imul   bx,bx,0x5c
   51496:	b8 88 01             	mov    ax,0x188
   51499:	8e c0                	mov    es,ax
   5149b:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   514a0:	d1 e0                	shl    ax,1
   514a2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   514a5:	6b db 5c             	imul   bx,bx,0x5c
   514a8:	03 d8                	add    bx,ax
   514aa:	b8 88 01             	mov    ax,0x188
   514ad:	8e c0                	mov    es,ax
   514af:	26 83 bf a6 99 00    	cmp    WORD PTR es:[bx-0x665a],0x0
   514b5:	74 4d                	je     0x51504
   514b7:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   514ba:	6b db 5c             	imul   bx,bx,0x5c
   514bd:	b8 88 01             	mov    ax,0x188
   514c0:	8e c0                	mov    es,ax
   514c2:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   514c7:	d1 e0                	shl    ax,1
   514c9:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   514cc:	6b db 5c             	imul   bx,bx,0x5c
   514cf:	03 d8                	add    bx,ax
   514d1:	b8 88 01             	mov    ax,0x188
   514d4:	8e c0                	mov    es,ax
   514d6:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   514db:	bb 64 00             	mov    bx,0x64
   514de:	99                   	cwd
   514df:	f7 fb                	idiv   bx
   514e1:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   514e4:	83 7e fe 2b          	cmp    WORD PTR [bp-0x2],0x2b
   514e8:	75 05                	jne    0x514ef
   514ea:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   514ef:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   514f2:	6b db 0e             	imul   bx,bx,0xe
   514f5:	b8 88 01             	mov    ax,0x188
   514f8:	8e c0                	mov    es,ax
   514fa:	26 8b 87 83 0e       	mov    ax,WORD PTR es:[bx+0xe83]
   514ff:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   51502:	eb 05                	jmp    0x51509
   51504:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   51509:	6a 00                	push   0x0
   5150b:	6a 06                	push   0x6
   5150d:	6a 06                	push   0x6
   5150f:	6a 09                	push   0x9
   51511:	68 bd 00             	push   0xbd
   51514:	68 de 00             	push   0xde
   51517:	9a 08 09 28 00       	call   0x28:0x908
   5151c:	83 c4 0c             	add    sp,0xc
   5151f:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   51522:	bb 64 00             	mov    bx,0x64
   51525:	99                   	cwd
   51526:	f7 fb                	idiv   bx
   51528:	52                   	push   dx
   51529:	1e                   	push   ds
   5152a:	68 70 67             	push   0x6770
   5152d:	16                   	push   ss
   5152e:	8d 46 e6             	lea    ax,[bp-0x1a]
   51531:	50                   	push   ax
   51532:	9a b4 48 00 00       	call   0x0:0x48b4
   51537:	83 c4 0a             	add    sp,0xa
   5153a:	b8 88 01             	mov    ax,0x188
   5153d:	8e c0                	mov    es,ax
   5153f:	26 a0 64 96          	mov    al,es:0x9664
   51543:	b4 00                	mov    ah,0x0
   51545:	50                   	push   ax
   51546:	16                   	push   ss
   51547:	8d 46 e6             	lea    ax,[bp-0x1a]
   5154a:	50                   	push   ax
   5154b:	68 bd 00             	push   0xbd
   5154e:	68 de 00             	push   0xde
   51551:	6a 02                	push   0x2
   51553:	0e                   	push   cs
   51554:	e8 79 92             	call   0x5a7d0
   51557:	83 c4 0c             	add    sp,0xc
   5155a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5155d:	6b db 5c             	imul   bx,bx,0x5c
   51560:	b8 88 01             	mov    ax,0x188
   51563:	8e c0                	mov    es,ax
   51565:	26 83 bf aa 99 01    	cmp    WORD PTR es:[bx-0x6656],0x1
   5156b:	75 06                	jne    0x51573
   5156d:	1e                   	push   ds
   5156e:	68 73 67             	push   0x6773
   51571:	eb 04                	jmp    0x51577
   51573:	1e                   	push   ds
   51574:	68 79 67             	push   0x6779
   51577:	68 88 01             	push   0x188
   5157a:	68 0a 9f             	push   0x9f0a
   5157d:	9a a3 49 00 00       	call   0x0:0x49a3
   51582:	83 c4 08             	add    sp,0x8
   51585:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   51588:	69 c0 94 00          	imul   ax,ax,0x94
   5158c:	05 70 9c             	add    ax,0x9c70
   5158f:	68 88 01             	push   0x188
   51592:	50                   	push   ax
   51593:	68 88 01             	push   0x188
   51596:	68 0a 9f             	push   0x9f0a
   51599:	1e                   	push   ds
   5159a:	68 7e 67             	push   0x677e
   5159d:	16                   	push   ss
   5159e:	8d 46 e6             	lea    ax,[bp-0x1a]
   515a1:	50                   	push   ax
   515a2:	9a b4 48 00 00       	call   0x0:0x48b4
   515a7:	83 c4 10             	add    sp,0x10
   515aa:	6a 00                	push   0x0
   515ac:	16                   	push   ss
   515ad:	8d 46 e6             	lea    ax,[bp-0x1a]
   515b0:	50                   	push   ax
   515b1:	68 b8 00             	push   0xb8
   515b4:	6a 3d                	push   0x3d
   515b6:	6a 02                	push   0x2
   515b8:	0e                   	push   cs
   515b9:	e8 14 92             	call   0x5a7d0
   515bc:	83 c4 0c             	add    sp,0xc
   515bf:	b8 88 01             	mov    ax,0x188
   515c2:	8e c0                	mov    es,ax
   515c4:	26 a0 65 96          	mov    al,es:0x9665
   515c8:	b4 00                	mov    ah,0x0
   515ca:	50                   	push   ax
   515cb:	16                   	push   ss
   515cc:	8d 46 e6             	lea    ax,[bp-0x1a]
   515cf:	50                   	push   ax
   515d0:	68 b7 00             	push   0xb7
   515d3:	6a 3c                	push   0x3c
   515d5:	6a 02                	push   0x2
   515d7:	0e                   	push   cs
   515d8:	e8 f5 91             	call   0x5a7d0
   515db:	83 c4 0c             	add    sp,0xc
   515de:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   515e1:	69 c0 94 00          	imul   ax,ax,0x94
   515e5:	05 26 9c             	add    ax,0x9c26
   515e8:	68 88 01             	push   0x188
   515eb:	50                   	push   ax
   515ec:	1e                   	push   ds
   515ed:	68 84 67             	push   0x6784
   515f0:	16                   	push   ss
   515f1:	8d 46 e6             	lea    ax,[bp-0x1a]
   515f4:	50                   	push   ax
   515f5:	9a b4 48 00 00       	call   0x0:0x48b4
   515fa:	83 c4 0c             	add    sp,0xc
   515fd:	6a 00                	push   0x0
   515ff:	16                   	push   ss
   51600:	8d 46 e6             	lea    ax,[bp-0x1a]
   51603:	50                   	push   ax
   51604:	68 c0 00             	push   0xc0
   51607:	6a 3d                	push   0x3d
   51609:	6a 02                	push   0x2
   5160b:	0e                   	push   cs
   5160c:	e8 c1 91             	call   0x5a7d0
   5160f:	83 c4 0c             	add    sp,0xc
   51612:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   51616:	6b db 28             	imul   bx,bx,0x28
   51619:	b8 88 01             	mov    ax,0x188
   5161c:	8e c0                	mov    es,ax
   5161e:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   51624:	75 07                	jne    0x5162d
   51626:	c7 46 fe 1f 00       	mov    WORD PTR [bp-0x2],0x1f
   5162b:	eb 05                	jmp    0x51632
   5162d:	c7 46 fe 1d 00       	mov    WORD PTR [bp-0x2],0x1d
   51632:	b8 88 01             	mov    ax,0x188
   51635:	8e c0                	mov    es,ax
   51637:	26 a0 65 96          	mov    al,es:0x9665
   5163b:	b4 00                	mov    ah,0x0
   5163d:	50                   	push   ax
   5163e:	16                   	push   ss
   5163f:	8d 46 e6             	lea    ax,[bp-0x1a]
   51642:	50                   	push   ax
   51643:	68 bf 00             	push   0xbf
   51646:	6a 3c                	push   0x3c
   51648:	6a 02                	push   0x2
   5164a:	0e                   	push   cs
   5164b:	e8 82 91             	call   0x5a7d0
   5164e:	83 c4 0c             	add    sp,0xc
   51651:	c9                   	leave
   51652:	cb                   	retf
   51653:	55                   	push   bp
   51654:	8b ec                	mov    bp,sp
   51656:	83 ec 1a             	sub    sp,0x1a
   51659:	56                   	push   si
   5165a:	8d 46 e6             	lea    ax,[bp-0x1a]
   5165d:	16                   	push   ss
   5165e:	50                   	push   ax
   5165f:	1e                   	push   ds
   51660:	68 21 64             	push   0x6421
   51663:	b9 0e 00             	mov    cx,0xe
   51666:	9a 7a 12 00 00       	call   0x0:0x127a
   5166b:	a1 ea d5             	mov    ax,ds:0xd5ea
   5166e:	05 e0 ff             	add    ax,0xffe0
   51671:	3d 0a 00             	cmp    ax,0xa
   51674:	7c 03                	jl     0x51679
   51676:	e9 9a 03             	jmp    0x51a13
   51679:	8b 1e ea d5          	mov    bx,WORD PTR ds:0xd5ea
   5167d:	6b db 0a             	imul   bx,bx,0xa
   51680:	b8 88 01             	mov    ax,0x188
   51683:	8e c0                	mov    es,ax
   51685:	26 8b 87 47 10       	mov    ax,WORD PTR es:[bx+0x1047]
   5168a:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5168d:	8b 1e ea d5          	mov    bx,WORD PTR ds:0xd5ea
   51691:	6b db 0a             	imul   bx,bx,0xa
   51694:	b8 88 01             	mov    ax,0x188
   51697:	8e c0                	mov    es,ax
   51699:	26 8b 87 49 10       	mov    ax,WORD PTR es:[bx+0x1049]
   5169e:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   516a1:	8b 1e ea d5          	mov    bx,WORD PTR ds:0xd5ea
   516a5:	6b db 0a             	imul   bx,bx,0xa
   516a8:	b8 88 01             	mov    ax,0x188
   516ab:	8e c0                	mov    es,ax
   516ad:	26 8b 87 4b 10       	mov    ax,WORD PTR es:[bx+0x104b]
   516b2:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   516b5:	8b 1e ea d5          	mov    bx,WORD PTR ds:0xd5ea
   516b9:	6b db 0a             	imul   bx,bx,0xa
   516bc:	b8 88 01             	mov    ax,0x188
   516bf:	8e c0                	mov    es,ax
   516c1:	26 8b 87 4d 10       	mov    ax,WORD PTR es:[bx+0x104d]
   516c6:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   516c9:	8b 1e ea d5          	mov    bx,WORD PTR ds:0xd5ea
   516cd:	6b db 0a             	imul   bx,bx,0xa
   516d0:	b8 88 01             	mov    ax,0x188
   516d3:	8e c0                	mov    es,ax
   516d5:	26 8b 87 4f 10       	mov    ax,WORD PTR es:[bx+0x104f]
   516da:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   516dd:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   516e1:	75 03                	jne    0x516e6
   516e3:	e9 d1 01             	jmp    0x518b7
   516e6:	b8 88 01             	mov    ax,0x188
   516e9:	8e c0                	mov    es,ax
   516eb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   516f0:	6b db 5c             	imul   bx,bx,0x5c
   516f3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   516f6:	d1 e0                	shl    ax,1
   516f8:	03 d8                	add    bx,ax
   516fa:	b8 88 01             	mov    ax,0x188
   516fd:	ba 88 01             	mov    dx,0x188
   51700:	8e c2                	mov    es,dx
   51702:	26 8b 36 98 28       	mov    si,WORD PTR es:0x2898
   51707:	6b f6 5c             	imul   si,si,0x5c
   5170a:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   5170d:	d1 e2                	shl    dx,1
   5170f:	03 f2                	add    si,dx
   51711:	ba 88 01             	mov    dx,0x188
   51714:	8e c2                	mov    es,dx
   51716:	26 8b 94 a6 99       	mov    dx,WORD PTR es:[si-0x665a]
   5171b:	03 56 f6             	add    dx,WORD PTR [bp-0xa]
   5171e:	8e c0                	mov    es,ax
   51720:	26 39 97 a6 99       	cmp    WORD PTR es:[bx-0x665a],dx
   51725:	7d 20                	jge    0x51747
   51727:	b8 88 01             	mov    ax,0x188
   5172a:	8e c0                	mov    es,ax
   5172c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51731:	6b db 5c             	imul   bx,bx,0x5c
   51734:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   51737:	d1 e0                	shl    ax,1
   51739:	03 d8                	add    bx,ax
   5173b:	b8 88 01             	mov    ax,0x188
   5173e:	8e c0                	mov    es,ax
   51740:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   51745:	eb 21                	jmp    0x51768
   51747:	b8 88 01             	mov    ax,0x188
   5174a:	8e c0                	mov    es,ax
   5174c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51751:	6b db 5c             	imul   bx,bx,0x5c
   51754:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   51757:	d1 e0                	shl    ax,1
   51759:	03 d8                	add    bx,ax
   5175b:	b8 88 01             	mov    ax,0x188
   5175e:	8e c0                	mov    es,ax
   51760:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   51765:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   51768:	ba 88 01             	mov    dx,0x188
   5176b:	8e c2                	mov    es,dx
   5176d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51772:	6b db 5c             	imul   bx,bx,0x5c
   51775:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   51778:	d1 e2                	shl    dx,1
   5177a:	03 da                	add    bx,dx
   5177c:	ba 88 01             	mov    dx,0x188
   5177f:	8e c2                	mov    es,dx
   51781:	26 89 87 a6 99       	mov    WORD PTR es:[bx-0x665a],ax
   51786:	b8 88 01             	mov    ax,0x188
   51789:	8e c0                	mov    es,ax
   5178b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51790:	6b db 5c             	imul   bx,bx,0x5c
   51793:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   51796:	d1 e0                	shl    ax,1
   51798:	03 d8                	add    bx,ax
   5179a:	b8 88 01             	mov    ax,0x188
   5179d:	ba 88 01             	mov    dx,0x188
   517a0:	8e c2                	mov    es,dx
   517a2:	26 8b 36 98 28       	mov    si,WORD PTR es:0x2898
   517a7:	6b f6 2e             	imul   si,si,0x2e
   517aa:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   517ad:	d1 e2                	shl    dx,1
   517af:	03 f2                	add    si,dx
   517b1:	ba 88 01             	mov    dx,0x188
   517b4:	8e c2                	mov    es,dx
   517b6:	26 8b 94 18 9f       	mov    dx,WORD PTR es:[si-0x60e8]
   517bb:	03 56 f6             	add    dx,WORD PTR [bp-0xa]
   517be:	8e c0                	mov    es,ax
   517c0:	26 39 97 a6 99       	cmp    WORD PTR es:[bx-0x665a],dx
   517c5:	7d 20                	jge    0x517e7
   517c7:	b8 88 01             	mov    ax,0x188
   517ca:	8e c0                	mov    es,ax
   517cc:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   517d1:	6b db 5c             	imul   bx,bx,0x5c
   517d4:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   517d7:	d1 e0                	shl    ax,1
   517d9:	03 d8                	add    bx,ax
   517db:	b8 88 01             	mov    ax,0x188
   517de:	8e c0                	mov    es,ax
   517e0:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   517e5:	eb 21                	jmp    0x51808
   517e7:	b8 88 01             	mov    ax,0x188
   517ea:	8e c0                	mov    es,ax
   517ec:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   517f1:	6b db 2e             	imul   bx,bx,0x2e
   517f4:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   517f7:	d1 e0                	shl    ax,1
   517f9:	03 d8                	add    bx,ax
   517fb:	b8 88 01             	mov    ax,0x188
   517fe:	8e c0                	mov    es,ax
   51800:	26 8b 87 18 9f       	mov    ax,WORD PTR es:[bx-0x60e8]
   51805:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   51808:	ba 88 01             	mov    dx,0x188
   5180b:	8e c2                	mov    es,dx
   5180d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51812:	6b db 2e             	imul   bx,bx,0x2e
   51815:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   51818:	d1 e2                	shl    dx,1
   5181a:	03 da                	add    bx,dx
   5181c:	ba 88 01             	mov    dx,0x188
   5181f:	8e c2                	mov    es,dx
   51821:	26 89 87 18 9f       	mov    WORD PTR es:[bx-0x60e8],ax
   51826:	b8 88 01             	mov    ax,0x188
   51829:	8e c0                	mov    es,ax
   5182b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51830:	6b db 5c             	imul   bx,bx,0x5c
   51833:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   51836:	d1 e0                	shl    ax,1
   51838:	03 d8                	add    bx,ax
   5183a:	b8 88 01             	mov    ax,0x188
   5183d:	8b 36 de d5          	mov    si,WORD PTR ds:0xd5de
   51841:	6b f6 28             	imul   si,si,0x28
   51844:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   51847:	d1 e2                	shl    dx,1
   51849:	03 f2                	add    si,dx
   5184b:	ba 88 01             	mov    dx,0x188
   5184e:	8e c2                	mov    es,dx
   51850:	26 8b 94 88 a0       	mov    dx,WORD PTR es:[si-0x5f78]
   51855:	03 56 f6             	add    dx,WORD PTR [bp-0xa]
   51858:	8e c0                	mov    es,ax
   5185a:	26 39 97 a6 99       	cmp    WORD PTR es:[bx-0x665a],dx
   5185f:	7d 20                	jge    0x51881
   51861:	b8 88 01             	mov    ax,0x188
   51864:	8e c0                	mov    es,ax
   51866:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5186b:	6b db 5c             	imul   bx,bx,0x5c
   5186e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   51871:	d1 e0                	shl    ax,1
   51873:	03 d8                	add    bx,ax
   51875:	b8 88 01             	mov    ax,0x188
   51878:	8e c0                	mov    es,ax
   5187a:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   5187f:	eb 1b                	jmp    0x5189c
   51881:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   51885:	6b db 28             	imul   bx,bx,0x28
   51888:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   5188b:	d1 e0                	shl    ax,1
   5188d:	03 d8                	add    bx,ax
   5188f:	b8 88 01             	mov    ax,0x188
   51892:	8e c0                	mov    es,ax
   51894:	26 8b 87 88 a0       	mov    ax,WORD PTR es:[bx-0x5f78]
   51899:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   5189c:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   518a0:	6b db 28             	imul   bx,bx,0x28
   518a3:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   518a6:	d1 e2                	shl    dx,1
   518a8:	03 da                	add    bx,dx
   518aa:	ba 88 01             	mov    dx,0x188
   518ad:	8e c2                	mov    es,dx
   518af:	26 89 87 88 a0       	mov    WORD PTR es:[bx-0x5f78],ax
   518b4:	e9 bf 02             	jmp    0x51b76
   518b7:	b8 88 01             	mov    ax,0x188
   518ba:	8e c0                	mov    es,ax
   518bc:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   518c1:	6b db 5c             	imul   bx,bx,0x5c
   518c4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   518c7:	d1 e0                	shl    ax,1
   518c9:	03 d8                	add    bx,ax
   518cb:	b8 88 01             	mov    ax,0x188
   518ce:	8e c0                	mov    es,ax
   518d0:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   518d5:	bb 14 00             	mov    bx,0x14
   518d8:	99                   	cwd
   518d9:	f7 fb                	idiv   bx
   518db:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   518de:	2b d0                	sub    dx,ax
   518e0:	7d 04                	jge    0x518e6
   518e2:	33 c0                	xor    ax,ax
   518e4:	eb 2b                	jmp    0x51911
   518e6:	b8 88 01             	mov    ax,0x188
   518e9:	8e c0                	mov    es,ax
   518eb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   518f0:	6b db 5c             	imul   bx,bx,0x5c
   518f3:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   518f6:	d1 e0                	shl    ax,1
   518f8:	03 d8                	add    bx,ax
   518fa:	b8 88 01             	mov    ax,0x188
   518fd:	8e c0                	mov    es,ax
   518ff:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   51904:	bb 14 00             	mov    bx,0x14
   51907:	99                   	cwd
   51908:	f7 fb                	idiv   bx
   5190a:	50                   	push   ax
   5190b:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   5190e:	5a                   	pop    dx
   5190f:	2b c2                	sub    ax,dx
   51911:	ba 88 01             	mov    dx,0x188
   51914:	8e c2                	mov    es,dx
   51916:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5191b:	6b db 5c             	imul   bx,bx,0x5c
   5191e:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   51921:	d1 e2                	shl    dx,1
   51923:	03 da                	add    bx,dx
   51925:	ba 88 01             	mov    dx,0x188
   51928:	8e c2                	mov    es,dx
   5192a:	26 01 87 a6 99       	add    WORD PTR es:[bx-0x665a],ax
   5192f:	b8 88 01             	mov    ax,0x188
   51932:	8e c0                	mov    es,ax
   51934:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51939:	6b db 5c             	imul   bx,bx,0x5c
   5193c:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   5193f:	d1 e0                	shl    ax,1
   51941:	03 d8                	add    bx,ax
   51943:	b8 88 01             	mov    ax,0x188
   51946:	8e c0                	mov    es,ax
   51948:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   5194d:	bb 14 00             	mov    bx,0x14
   51950:	99                   	cwd
   51951:	f7 fb                	idiv   bx
   51953:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   51956:	2b d0                	sub    dx,ax
   51958:	7d 04                	jge    0x5195e
   5195a:	33 c0                	xor    ax,ax
   5195c:	eb 2b                	jmp    0x51989
   5195e:	b8 88 01             	mov    ax,0x188
   51961:	8e c0                	mov    es,ax
   51963:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51968:	6b db 5c             	imul   bx,bx,0x5c
   5196b:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   5196e:	d1 e0                	shl    ax,1
   51970:	03 d8                	add    bx,ax
   51972:	b8 88 01             	mov    ax,0x188
   51975:	8e c0                	mov    es,ax
   51977:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   5197c:	bb 14 00             	mov    bx,0x14
   5197f:	99                   	cwd
   51980:	f7 fb                	idiv   bx
   51982:	50                   	push   ax
   51983:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   51986:	5a                   	pop    dx
   51987:	2b c2                	sub    ax,dx
   51989:	ba 88 01             	mov    dx,0x188
   5198c:	8e c2                	mov    es,dx
   5198e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   51993:	6b db 2e             	imul   bx,bx,0x2e
   51996:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   51999:	d1 e2                	shl    dx,1
   5199b:	03 da                	add    bx,dx
   5199d:	ba 88 01             	mov    dx,0x188
   519a0:	8e c2                	mov    es,dx
   519a2:	26 01 87 18 9f       	add    WORD PTR es:[bx-0x60e8],ax
   519a7:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   519ab:	6b db 28             	imul   bx,bx,0x28
   519ae:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   519b1:	d1 e0                	shl    ax,1
   519b3:	03 d8                	add    bx,ax
   519b5:	b8 88 01             	mov    ax,0x188
   519b8:	8e c0                	mov    es,ax
   519ba:	26 8b 87 88 a0       	mov    ax,WORD PTR es:[bx-0x5f78]
   519bf:	bb 14 00             	mov    bx,0x14
   519c2:	99                   	cwd
   519c3:	f7 fb                	idiv   bx
   519c5:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   519c8:	2b d0                	sub    dx,ax
   519ca:	7d 04                	jge    0x519d0
   519cc:	33 c0                	xor    ax,ax
   519ce:	eb 25                	jmp    0x519f5
   519d0:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   519d4:	6b db 28             	imul   bx,bx,0x28
   519d7:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   519da:	d1 e0                	shl    ax,1
   519dc:	03 d8                	add    bx,ax
   519de:	b8 88 01             	mov    ax,0x188
   519e1:	8e c0                	mov    es,ax
   519e3:	26 8b 87 88 a0       	mov    ax,WORD PTR es:[bx-0x5f78]
   519e8:	bb 14 00             	mov    bx,0x14
   519eb:	99                   	cwd
   519ec:	f7 fb                	idiv   bx
   519ee:	50                   	push   ax
   519ef:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   519f2:	5a                   	pop    dx
   519f3:	2b c2                	sub    ax,dx
   519f5:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   519f9:	6b db 28             	imul   bx,bx,0x28
   519fc:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   519ff:	d1 e2                	shl    dx,1
   51a01:	03 da                	add    bx,dx
   51a03:	ba 88 01             	mov    dx,0x188
   51a06:	8e c2                	mov    es,dx
   51a08:	26 01 87 88 a0       	add    WORD PTR es:[bx-0x5f78],ax
   51a0d:	e9 66 01             	jmp    0x51b76
   51a10:	e9 63 01             	jmp    0x51b76
   51a13:	6a 00                	push   0x0
   51a15:	68 00 80             	push   0x8000
   51a18:	9a 79 17 00 00       	call   0x0:0x1779
   51a1d:	99                   	cwd
   51a1e:	50                   	push   ax
   51a1f:	52                   	push   dx
   51a20:	33 d2                	xor    dx,dx
   51a22:	b8 07 00             	mov    ax,0x7
   51a25:	59                   	pop    cx
   51a26:	5b                   	pop    bx
   51a27:	9a 42 12 00 00       	call   0x0:0x1242
   51a2c:	52                   	push   dx
   51a2d:	50                   	push   ax
   51a2e:	9a df 12 00 00       	call   0x0:0x12df
   51a33:	a3 b0 d5             	mov    ds:0xd5b0,ax
   51a36:	8b 1e b0 d5          	mov    bx,WORD PTR ds:0xd5b0
   51a3a:	d1 e3                	shl    bx,1
   51a3c:	8d 46 e6             	lea    ax,[bp-0x1a]
   51a3f:	03 d8                	add    bx,ax
   51a41:	36 8b 07             	mov    ax,WORD PTR ss:[bx]
   51a44:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   51a47:	a1 de d5             	mov    ax,ds:0xd5de
   51a4a:	a3 e0 d5             	mov    ds:0xd5e0,ax
   51a4d:	b8 88 01             	mov    ax,0x188
   51a50:	8e c0                	mov    es,ax
   51a52:	26 c6 06 74 a5 00    	mov    BYTE PTR es:0xa574,0x0
   51a58:	1e                   	push   ds
   51a59:	68 87 67             	push   0x6787
   51a5c:	68 88 01             	push   0x188
   51a5f:	68 10 a5             	push   0xa510
   51a62:	9a a3 49 00 00       	call   0x0:0x49a3
   51a67:	83 c4 08             	add    sp,0x8
   51a6a:	c7 06 ba d5 01 00    	mov    WORD PTR ds:0xd5ba,0x1
   51a70:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   51a73:	a3 e2 d5             	mov    ds:0xd5e2,ax
   51a76:	b8 88 01             	mov    ax,0x188
   51a79:	8e c0                	mov    es,ax
   51a7b:	26 a0 72 96          	mov    al,es:0x9672
   51a7f:	ba 88 01             	mov    dx,0x188
   51a82:	8e c2                	mov    es,dx
   51a84:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   51a89:	74 22                	je     0x51aad
   51a8b:	b8 88 01             	mov    ax,0x188
   51a8e:	8e c0                	mov    es,ax
   51a90:	26 a1 98 28          	mov    ax,es:0x2898
   51a94:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   51a97:	b8 88 01             	mov    ax,0x188
   51a9a:	8e c0                	mov    es,ax
   51a9c:	26 a1 98 28          	mov    ax,es:0x2898
   51aa0:	05 18 00             	add    ax,0x18
   51aa3:	a3 de d5             	mov    ds:0xd5de,ax
   51aa6:	a3 e0 d5             	mov    ds:0xd5e0,ax
   51aa9:	0e                   	push   cs
   51aaa:	e8 e8 e4             	call   0x5ff95
   51aad:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   51ab1:	6b db 28             	imul   bx,bx,0x28
   51ab4:	b8 88 01             	mov    ax,0x188
   51ab7:	8b 16 bc d5          	mov    dx,WORD PTR ds:0xd5bc
   51abb:	8e c0                	mov    es,ax
   51abd:	26 01 97 8c a0       	add    WORD PTR es:[bx-0x5f74],dx
   51ac2:	90                   	nop
   51ac3:	0e                   	push   cs
   51ac4:	e8 72 06             	call   0x52139
   51ac7:	b8 88 01             	mov    ax,0x188
   51aca:	8e c0                	mov    es,ax
   51acc:	26 a0 72 96          	mov    al,es:0x9672
   51ad0:	ba 88 01             	mov    dx,0x188
   51ad3:	8e c2                	mov    es,dx
   51ad5:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   51ada:	74 12                	je     0x51aee
   51adc:	90                   	nop
   51add:	0e                   	push   cs
   51ade:	e8 80 02             	call   0x51d61
   51ae1:	b8 88 01             	mov    ax,0x188
   51ae4:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   51ae7:	8e c0                	mov    es,ax
   51ae9:	26 89 16 98 28       	mov    WORD PTR es:0x2898,dx
   51aee:	1e                   	push   ds
   51aef:	68 89 67             	push   0x6789
   51af2:	68 88 01             	push   0x188
   51af5:	68 10 a5             	push   0xa510
   51af8:	9a a3 49 00 00       	call   0x0:0x49a3
   51afd:	83 c4 08             	add    sp,0x8
   51b00:	c7 06 74 d5 05 00    	mov    WORD PTR ds:0xd574,0x5
   51b06:	0e                   	push   cs
   51b07:	e8 67 a8             	call   0x5c371
   51b0a:	b8 88 01             	mov    ax,0x188
   51b0d:	8e c0                	mov    es,ax
   51b0f:	26 a0 72 96          	mov    al,es:0x9672
   51b13:	ba 88 01             	mov    dx,0x188
   51b16:	8e c2                	mov    es,dx
   51b18:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   51b1d:	74 11                	je     0x51b30
   51b1f:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   51b23:	68 88 01             	push   0x188
   51b26:	68 10 a5             	push   0xa510
   51b29:	0e                   	push   cs
   51b2a:	e8 0e 98             	call   0x5b33b
   51b2d:	83 c4 06             	add    sp,0x6
   51b30:	c7 06 ba d5 00 00    	mov    WORD PTR ds:0xd5ba,0x0
   51b36:	a1 de d5             	mov    ax,ds:0xd5de
   51b39:	a3 76 d5             	mov    ds:0xd576,ax
   51b3c:	c7 06 74 d5 00 00    	mov    WORD PTR ds:0xd574,0x0
   51b42:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   51b48:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   51b4d:	b8 88 01             	mov    ax,0x188
   51b50:	8e c0                	mov    es,ax
   51b52:	26 a1 2b e1          	mov    ax,es:0xe12b
   51b56:	26 0b 06 2d e1       	or     ax,WORD PTR es:0xe12d
   51b5b:	74 15                	je     0x51b72
   51b5d:	1e                   	push   ds
   51b5e:	68 8b 67             	push   0x678b
   51b61:	68 3a 09             	push   0x93a
   51b64:	68 88 01             	push   0x188
   51b67:	68 2b e1             	push   0xe12b
   51b6a:	9a 2f 02 40 00       	call   0x40:0x22f
   51b6f:	83 c4 0a             	add    sp,0xa
   51b72:	0e                   	push   cs
   51b73:	e8 fb a7             	call   0x5c371
   51b76:	5e                   	pop    si
   51b77:	c9                   	leave
   51b78:	cb                   	retf
   51b79:	55                   	push   bp
   51b7a:	8b ec                	mov    bp,sp
   51b7c:	b8 88 01             	mov    ax,0x188
   51b7f:	8e c0                	mov    es,ax
   51b81:	26 a0 67 96          	mov    al,es:0x9667
   51b85:	50                   	push   ax
   51b86:	6a 00                	push   0x0
   51b88:	6a 0d                	push   0xd
   51b8a:	68 9d 00             	push   0x9d
   51b8d:	6a 02                	push   0x2
   51b8f:	68 a1 00             	push   0xa1
   51b92:	9a 08 09 28 00       	call   0x28:0x908
   51b97:	83 c4 0c             	add    sp,0xc
   51b9a:	6a 05                	push   0x5
   51b9c:	ff 76 0a             	push   WORD PTR [bp+0xa]
   51b9f:	ff 76 08             	push   WORD PTR [bp+0x8]
   51ba2:	ff 76 06             	push   WORD PTR [bp+0x6]
   51ba5:	6a 04                	push   0x4
   51ba7:	68 a1 00             	push   0xa1
   51baa:	6a 00                	push   0x0
   51bac:	9a 34 00 80 01       	call   0x180:0x34
   51bb1:	83 c4 0e             	add    sp,0xe
   51bb4:	6a 05                	push   0x5
   51bb6:	ff 76 0c             	push   WORD PTR [bp+0xc]
   51bb9:	ff 76 08             	push   WORD PTR [bp+0x8]
   51bbc:	ff 76 06             	push   WORD PTR [bp+0x6]
   51bbf:	6a 03                	push   0x3
   51bc1:	68 a1 00             	push   0xa1
   51bc4:	6a 00                	push   0x0
   51bc6:	9a 34 00 80 01       	call   0x180:0x34
   51bcb:	83 c4 0e             	add    sp,0xe
   51bce:	5d                   	pop    bp
   51bcf:	cb                   	retf
   51bd0:	55                   	push   bp
   51bd1:	8b ec                	mov    bp,sp
   51bd3:	83 ec 06             	sub    sp,0x6
   51bd6:	83 3e ea d5 1a       	cmp    WORD PTR ds:0xd5ea,0x1a
   51bdb:	7c 07                	jl     0x51be4
   51bdd:	83 3e ea d5 2b       	cmp    WORD PTR ds:0xd5ea,0x2b
   51be2:	75 48                	jne    0x51c2c
   51be4:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   51be9:	74 41                	je     0x51c2c
   51beb:	a1 ea d5             	mov    ax,ds:0xd5ea
   51bee:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   51bf1:	83 7e fa 2b          	cmp    WORD PTR [bp-0x6],0x2b
   51bf5:	75 05                	jne    0x51bfc
   51bf7:	c7 46 fa 1a 00       	mov    WORD PTR [bp-0x6],0x1a
   51bfc:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   51bff:	6b c0 0f             	imul   ax,ax,0xf
   51c02:	05 e2 0c             	add    ax,0xce2
   51c05:	68 88 01             	push   0x188
   51c08:	50                   	push   ax
   51c09:	68 88 01             	push   0x188
   51c0c:	68 10 a5             	push   0xa510
   51c0f:	9a a3 49 00 00       	call   0x0:0x49a3
   51c14:	83 c4 08             	add    sp,0x8
   51c17:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   51c1a:	6b db 0e             	imul   bx,bx,0xe
   51c1d:	b8 88 01             	mov    ax,0x188
   51c20:	8e c0                	mov    es,ax
   51c22:	26 8b 87 7d 0e       	mov    ax,WORD PTR es:[bx+0xe7d]
   51c27:	a3 ee d5             	mov    ds:0xd5ee,ax
   51c2a:	eb 5c                	jmp    0x51c88
   51c2c:	83 3e ea d5 19       	cmp    WORD PTR ds:0xd5ea,0x19
   51c31:	7e 34                	jle    0x51c67
   51c33:	83 3e ea d5 21       	cmp    WORD PTR ds:0xd5ea,0x21
   51c38:	7d 2d                	jge    0x51c67
   51c3a:	a1 ea d5             	mov    ax,ds:0xd5ea
   51c3d:	c1 e0 04             	shl    ax,0x4
   51c40:	05 ce 0e             	add    ax,0xece
   51c43:	68 88 01             	push   0x188
   51c46:	50                   	push   ax
   51c47:	68 88 01             	push   0x188
   51c4a:	68 10 a5             	push   0xa510
   51c4d:	9a a3 49 00 00       	call   0x0:0x49a3
   51c52:	83 c4 08             	add    sp,0x8
   51c55:	8b 1e ea d5          	mov    bx,WORD PTR ds:0xd5ea
   51c59:	d1 e3                	shl    bx,1
   51c5b:	b8 88 01             	mov    ax,0x188
   51c5e:	8e c0                	mov    es,ax
   51c60:	26 8b 87 aa 10       	mov    ax,WORD PTR es:[bx+0x10aa]
   51c65:	eb c0                	jmp    0x51c27
   51c67:	a1 ea d5             	mov    ax,ds:0xd5ea
   51c6a:	6b c0 0f             	imul   ax,ax,0xf
   51c6d:	05 0c 0f             	add    ax,0xf0c
   51c70:	68 88 01             	push   0x188
   51c73:	50                   	push   ax
   51c74:	68 88 01             	push   0x188
   51c77:	68 10 a5             	push   0xa510
   51c7a:	9a a3 49 00 00       	call   0x0:0x49a3
   51c7f:	83 c4 08             	add    sp,0x8
   51c82:	c7 06 ee d5 01 00    	mov    WORD PTR ds:0xd5ee,0x1
   51c88:	83 3e e6 d5 00       	cmp    WORD PTR ds:0xd5e6,0x0
   51c8d:	74 47                	je     0x51cd6
   51c8f:	1e                   	push   ds
   51c90:	68 9b 67             	push   0x679b
   51c93:	68 88 01             	push   0x188
   51c96:	68 10 a5             	push   0xa510
   51c99:	9a f7 48 00 00       	call   0x0:0x48f7
   51c9e:	83 c4 08             	add    sp,0x8
   51ca1:	6a 0a                	push   0xa
   51ca3:	16                   	push   ss
   51ca4:	8d 46 fc             	lea    ax,[bp-0x4]
   51ca7:	50                   	push   ax
   51ca8:	ff 36 e6 d5          	push   WORD PTR ds:0xd5e6
   51cac:	9a 58 3f 00 00       	call   0x0:0x3f58
   51cb1:	83 c4 08             	add    sp,0x8
   51cb4:	52                   	push   dx
   51cb5:	50                   	push   ax
   51cb6:	68 88 01             	push   0x188
   51cb9:	68 10 a5             	push   0xa510
   51cbc:	9a f7 48 00 00       	call   0x0:0x48f7
   51cc1:	83 c4 08             	add    sp,0x8
   51cc4:	1e                   	push   ds
   51cc5:	68 9d 67             	push   0x679d
   51cc8:	68 88 01             	push   0x188
   51ccb:	68 10 a5             	push   0xa510
   51cce:	9a f7 48 00 00       	call   0x0:0x48f7
   51cd3:	83 c4 08             	add    sp,0x8
   51cd6:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   51cdb:	74 47                	je     0x51d24
   51cdd:	1e                   	push   ds
   51cde:	68 9f 67             	push   0x679f
   51ce1:	68 88 01             	push   0x188
   51ce4:	68 10 a5             	push   0xa510
   51ce7:	9a f7 48 00 00       	call   0x0:0x48f7
   51cec:	83 c4 08             	add    sp,0x8
   51cef:	6a 0a                	push   0xa
   51cf1:	16                   	push   ss
   51cf2:	8d 46 fc             	lea    ax,[bp-0x4]
   51cf5:	50                   	push   ax
   51cf6:	ff 36 ee d5          	push   WORD PTR ds:0xd5ee
   51cfa:	9a 58 3f 00 00       	call   0x0:0x3f58
   51cff:	83 c4 08             	add    sp,0x8
   51d02:	52                   	push   dx
   51d03:	50                   	push   ax
   51d04:	68 88 01             	push   0x188
   51d07:	68 10 a5             	push   0xa510
   51d0a:	9a f7 48 00 00       	call   0x0:0x48f7
   51d0f:	83 c4 08             	add    sp,0x8
   51d12:	1e                   	push   ds
   51d13:	68 a2 67             	push   0x67a2
   51d16:	68 88 01             	push   0x188
   51d19:	68 10 a5             	push   0xa510
   51d1c:	9a f7 48 00 00       	call   0x0:0x48f7
   51d21:	83 c4 08             	add    sp,0x8
   51d24:	c9                   	leave
   51d25:	cb                   	retf
   51d26:	55                   	push   bp
   51d27:	8b ec                	mov    bp,sp
   51d29:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   51d2e:	74 2f                	je     0x51d5f
   51d30:	a1 e4 d5             	mov    ax,ds:0xd5e4
   51d33:	3b 06 e8 d5          	cmp    ax,WORD PTR ds:0xd5e8
   51d37:	74 26                	je     0x51d5f
   51d39:	a1 e8 d5             	mov    ax,ds:0xd5e8
   51d3c:	a3 e4 d5             	mov    ds:0xd5e4,ax
   51d3f:	0e                   	push   cs
   51d40:	e8 8d fe             	call   0x51bd0
   51d43:	b8 88 01             	mov    ax,0x188
   51d46:	8e c0                	mov    es,ax
   51d48:	26 a0 64 96          	mov    al,es:0x9664
   51d4c:	b4 00                	mov    ah,0x0
   51d4e:	50                   	push   ax
   51d4f:	68 d9 00             	push   0xd9
   51d52:	68 88 01             	push   0x188
   51d55:	68 10 a5             	push   0xa510
   51d58:	0e                   	push   cs
   51d59:	e8 1d fe             	call   0x51b79
   51d5c:	83 c4 08             	add    sp,0x8
   51d5f:	5d                   	pop    bp
   51d60:	cb                   	retf
   51d61:	55                   	push   bp
   51d62:	8b ec                	mov    bp,sp
   51d64:	c7 06 ac d5 01 00    	mov    WORD PTR ds:0xd5ac,0x1
   51d6a:	e9 40 01             	jmp    0x51ead
   51d6d:	b8 88 01             	mov    ax,0x188
   51d70:	8b 16 ac d5          	mov    dx,WORD PTR ds:0xd5ac
   51d74:	8e c0                	mov    es,ax
   51d76:	26 89 16 98 28       	mov    WORD PTR es:0x2898,dx
   51d7b:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51d7f:	6b db 2e             	imul   bx,bx,0x2e
   51d82:	b8 88 01             	mov    ax,0x188
   51d85:	8e c0                	mov    es,ax
   51d87:	26 8b 87 1a 9f       	mov    ax,WORD PTR es:[bx-0x60e6]
   51d8c:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51d90:	6b db 5c             	imul   bx,bx,0x5c
   51d93:	ba 88 01             	mov    dx,0x188
   51d96:	8e c2                	mov    es,dx
   51d98:	26 89 87 b2 99       	mov    WORD PTR es:[bx-0x664e],ax
   51d9d:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51da1:	6b db 2e             	imul   bx,bx,0x2e
   51da4:	b8 88 01             	mov    ax,0x188
   51da7:	8e c0                	mov    es,ax
   51da9:	26 8b 87 2a 9f       	mov    ax,WORD PTR es:[bx-0x60d6]
   51dae:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51db2:	6b db 5c             	imul   bx,bx,0x5c
   51db5:	ba 88 01             	mov    dx,0x188
   51db8:	8e c2                	mov    es,dx
   51dba:	26 89 87 b0 99       	mov    WORD PTR es:[bx-0x6650],ax
   51dbf:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51dc3:	6b db 2e             	imul   bx,bx,0x2e
   51dc6:	b8 88 01             	mov    ax,0x188
   51dc9:	8e c0                	mov    es,ax
   51dcb:	26 8b 87 2c 9f       	mov    ax,WORD PTR es:[bx-0x60d4]
   51dd0:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51dd4:	6b db 5c             	imul   bx,bx,0x5c
   51dd7:	ba 88 01             	mov    dx,0x188
   51dda:	8e c2                	mov    es,dx
   51ddc:	26 89 87 bc 99       	mov    WORD PTR es:[bx-0x6644],ax
   51de1:	b8 88 01             	mov    ax,0x188
   51de4:	8e c0                	mov    es,ax
   51de6:	26 c7 06 53 bb 01 00 	mov    WORD PTR es:0xbb53,0x1
   51ded:	eb 47                	jmp    0x51e36
   51def:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51df3:	6b db 28             	imul   bx,bx,0x28
   51df6:	b8 88 01             	mov    ax,0x188
   51df9:	8e c0                	mov    es,ax
   51dfb:	26 a1 53 bb          	mov    ax,es:0xbb53
   51dff:	d1 e0                	shl    ax,1
   51e01:	03 d8                	add    bx,ax
   51e03:	b8 88 01             	mov    ax,0x188
   51e06:	8e c0                	mov    es,ax
   51e08:	26 8b 87 5e a4       	mov    ax,WORD PTR es:[bx-0x5ba2]
   51e0d:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51e11:	6b db 5c             	imul   bx,bx,0x5c
   51e14:	ba 88 01             	mov    dx,0x188
   51e17:	8e c2                	mov    es,dx
   51e19:	26 8b 16 53 bb       	mov    dx,WORD PTR es:0xbb53
   51e1e:	d1 e2                	shl    dx,1
   51e20:	03 da                	add    bx,dx
   51e22:	ba 88 01             	mov    dx,0x188
   51e25:	8e c2                	mov    es,dx
   51e27:	26 89 87 d2 99       	mov    WORD PTR es:[bx-0x662e],ax
   51e2c:	b8 88 01             	mov    ax,0x188
   51e2f:	8e c0                	mov    es,ax
   51e31:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   51e36:	b8 88 01             	mov    ax,0x188
   51e39:	8e c0                	mov    es,ax
   51e3b:	26 83 3e 53 bb 05    	cmp    WORD PTR es:0xbb53,0x5
   51e41:	7e ac                	jle    0x51def
   51e43:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51e47:	6b db 28             	imul   bx,bx,0x28
   51e4a:	b8 88 01             	mov    ax,0x188
   51e4d:	8e c0                	mov    es,ax
   51e4f:	26 8b 87 4c a4       	mov    ax,WORD PTR es:[bx-0x5bb4]
   51e54:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51e58:	6b db 5c             	imul   bx,bx,0x5c
   51e5b:	ba 88 01             	mov    dx,0x188
   51e5e:	8e c2                	mov    es,dx
   51e60:	26 89 87 de 99       	mov    WORD PTR es:[bx-0x6622],ax
   51e65:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51e69:	6b db 28             	imul   bx,bx,0x28
   51e6c:	b8 88 01             	mov    ax,0x188
   51e6f:	8e c0                	mov    es,ax
   51e71:	26 8b 87 4a a4       	mov    ax,WORD PTR es:[bx-0x5bb6]
   51e76:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51e7a:	6b db 5c             	imul   bx,bx,0x5c
   51e7d:	ba 88 01             	mov    dx,0x188
   51e80:	8e c2                	mov    es,dx
   51e82:	26 89 87 e0 99       	mov    WORD PTR es:[bx-0x6620],ax
   51e87:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51e8b:	6b db 28             	imul   bx,bx,0x28
   51e8e:	b8 88 01             	mov    ax,0x188
   51e91:	8e c0                	mov    es,ax
   51e93:	26 8b 87 6a a4       	mov    ax,WORD PTR es:[bx-0x5b96]
   51e98:	8b 1e ac d5          	mov    bx,WORD PTR ds:0xd5ac
   51e9c:	6b db 5c             	imul   bx,bx,0x5c
   51e9f:	ba 88 01             	mov    dx,0x188
   51ea2:	8e c2                	mov    es,dx
   51ea4:	26 89 87 ea 99       	mov    WORD PTR es:[bx-0x6616],ax
   51ea9:	ff 06 ac d5          	inc    WORD PTR ds:0xd5ac
   51ead:	83 3e ac d5 04       	cmp    WORD PTR ds:0xd5ac,0x4
   51eb2:	7f 03                	jg     0x51eb7
   51eb4:	e9 b6 fe             	jmp    0x51d6d
   51eb7:	5d                   	pop    bp
   51eb8:	cb                   	retf
   51eb9:	55                   	push   bp
   51eba:	8b ec                	mov    bp,sp
   51ebc:	81 7e 06 e8 03       	cmp    WORD PTR [bp+0x6],0x3e8
   51ec1:	7d 03                	jge    0x51ec6
   51ec3:	e9 48 02             	jmp    0x5210e
   51ec6:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   51ec9:	81 c3 18 fc          	add    bx,0xfc18
   51ecd:	4b                   	dec    bx
   51ece:	83 fb 12             	cmp    bx,0x12
   51ed1:	76 03                	jbe    0x51ed6
   51ed3:	e9 23 02             	jmp    0x520f9
   51ed6:	d1 e3                	shl    bx,1
   51ed8:	2e ff a7 c3 84       	jmp    WORD PTR cs:[bx-0x7b3d]
   51edd:	6a 00                	push   0x0
   51edf:	68 00 80             	push   0x8000
   51ee2:	9a 79 17 00 00       	call   0x0:0x1779
   51ee7:	99                   	cwd
   51ee8:	50                   	push   ax
   51ee9:	a1 be d5             	mov    ax,ds:0xd5be
   51eec:	40                   	inc    ax
   51eed:	52                   	push   dx
   51eee:	99                   	cwd
   51eef:	59                   	pop    cx
   51ef0:	5b                   	pop    bx
   51ef1:	9a 42 12 00 00       	call   0x0:0x1242
   51ef6:	52                   	push   dx
   51ef7:	50                   	push   ax
   51ef8:	9a df 12 00 00       	call   0x0:0x12df
   51efd:	50                   	push   ax
   51efe:	6a 00                	push   0x0
   51f00:	68 00 80             	push   0x8000
   51f03:	9a 79 17 00 00       	call   0x0:0x1779
   51f08:	99                   	cwd
   51f09:	50                   	push   ax
   51f0a:	52                   	push   dx
   51f0b:	33 d2                	xor    dx,dx
   51f0d:	b8 03 00             	mov    ax,0x3
   51f10:	59                   	pop    cx
   51f11:	5b                   	pop    bx
   51f12:	9a 42 12 00 00       	call   0x0:0x1242
   51f17:	52                   	push   dx
   51f18:	50                   	push   ax
   51f19:	9a df 12 00 00       	call   0x0:0x12df
   51f1e:	8b d0                	mov    dx,ax
   51f20:	58                   	pop    ax
   51f21:	03 c2                	add    ax,dx
   51f23:	e9 eb 01             	jmp    0x52111
   51f26:	a1 5c d5             	mov    ax,ds:0xd55c
   51f29:	e9 e5 01             	jmp    0x52111
   51f2c:	a1 be d5             	mov    ax,ds:0xd5be
   51f2f:	e9 df 01             	jmp    0x52111
   51f32:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   51f36:	6b db 28             	imul   bx,bx,0x28
   51f39:	b8 88 01             	mov    ax,0x188
   51f3c:	8e c0                	mov    es,ax
   51f3e:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   51f43:	05 fe ff             	add    ax,0xfffe
   51f46:	7e 16                	jle    0x51f5e
   51f48:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   51f4c:	6b db 28             	imul   bx,bx,0x28
   51f4f:	b8 88 01             	mov    ax,0x188
   51f52:	8e c0                	mov    es,ax
   51f54:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   51f59:	05 fe ff             	add    ax,0xfffe
   51f5c:	eb 2f                	jmp    0x51f8d
   51f5e:	eb 2b                	jmp    0x51f8b
   51f60:	eb 2b                	jmp    0x51f8d
   51f62:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   51f66:	6b db 28             	imul   bx,bx,0x28
   51f69:	b8 88 01             	mov    ax,0x188
   51f6c:	8e c0                	mov    es,ax
   51f6e:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   51f73:	05 fe ff             	add    ax,0xfffe
   51f76:	7e 13                	jle    0x51f8b
   51f78:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   51f7c:	6b db 28             	imul   bx,bx,0x28
   51f7f:	b8 88 01             	mov    ax,0x188
   51f82:	8e c0                	mov    es,ax
   51f84:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   51f89:	eb ce                	jmp    0x51f59
   51f8b:	33 c0                	xor    ax,ax
   51f8d:	e9 81 01             	jmp    0x52111
   51f90:	6a 00                	push   0x0
   51f92:	68 00 80             	push   0x8000
   51f95:	9a 79 17 00 00       	call   0x0:0x1779
   51f9a:	99                   	cwd
   51f9b:	50                   	push   ax
   51f9c:	a1 5c d5             	mov    ax,ds:0xd55c
   51f9f:	05 09 00             	add    ax,0x9
   51fa2:	52                   	push   dx
   51fa3:	99                   	cwd
   51fa4:	e9 42 01             	jmp    0x520e9
   51fa7:	6a 00                	push   0x0
   51fa9:	68 00 80             	push   0x8000
   51fac:	9a 79 17 00 00       	call   0x0:0x1779
   51fb1:	99                   	cwd
   51fb2:	50                   	push   ax
   51fb3:	a1 be d5             	mov    ax,ds:0xd5be
   51fb6:	40                   	inc    ax
   51fb7:	52                   	push   dx
   51fb8:	99                   	cwd
   51fb9:	59                   	pop    cx
   51fba:	5b                   	pop    bx
   51fbb:	9a 42 12 00 00       	call   0x0:0x1242
   51fc0:	52                   	push   dx
   51fc1:	50                   	push   ax
   51fc2:	9a df 12 00 00       	call   0x0:0x12df
   51fc7:	eb 4c                	jmp    0x52015
   51fc9:	6a 00                	push   0x0
   51fcb:	68 00 80             	push   0x8000
   51fce:	9a 79 17 00 00       	call   0x0:0x1779
   51fd3:	99                   	cwd
   51fd4:	50                   	push   ax
   51fd5:	a1 5c d5             	mov    ax,ds:0xd55c
   51fd8:	05 06 00             	add    ax,0x6
   51fdb:	eb c5                	jmp    0x51fa2
   51fdd:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   51fe1:	6b db 28             	imul   bx,bx,0x28
   51fe4:	b8 88 01             	mov    ax,0x188
   51fe7:	8e c0                	mov    es,ax
   51fe9:	26 8b 87 98 a0       	mov    ax,WORD PTR es:[bx-0x5f68]
   51fee:	e9 20 01             	jmp    0x52111
   51ff1:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   51ff5:	6b db 28             	imul   bx,bx,0x28
   51ff8:	b8 88 01             	mov    ax,0x188
   51ffb:	8e c0                	mov    es,ax
   51ffd:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   52002:	eb 11                	jmp    0x52015
   52004:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52008:	6b db 28             	imul   bx,bx,0x28
   5200b:	b8 88 01             	mov    ax,0x188
   5200e:	8e c0                	mov    es,ax
   52010:	26 8b 87 9e a0       	mov    ax,WORD PTR es:[bx-0x5f62]
   52015:	40                   	inc    ax
   52016:	e9 f8 00             	jmp    0x52111
   52019:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5201d:	6b db 28             	imul   bx,bx,0x28
   52020:	b8 88 01             	mov    ax,0x188
   52023:	8e c0                	mov    es,ax
   52025:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   5202a:	05 02 00             	add    ax,0x2
   5202d:	e9 e1 00             	jmp    0x52111
   52030:	6a 00                	push   0x0
   52032:	68 00 80             	push   0x8000
   52035:	9a 79 17 00 00       	call   0x0:0x1779
   5203a:	99                   	cwd
   5203b:	50                   	push   ax
   5203c:	a1 be d5             	mov    ax,ds:0xd5be
   5203f:	40                   	inc    ax
   52040:	e9 5f ff             	jmp    0x51fa2
   52043:	6a 00                	push   0x0
   52045:	68 00 80             	push   0x8000
   52048:	9a 79 17 00 00       	call   0x0:0x1779
   5204d:	99                   	cwd
   5204e:	50                   	push   ax
   5204f:	a1 5c d5             	mov    ax,ds:0xd55c
   52052:	05 0b 00             	add    ax,0xb
   52055:	e9 4a ff             	jmp    0x51fa2
   52058:	6a 00                	push   0x0
   5205a:	68 00 80             	push   0x8000
   5205d:	9a 79 17 00 00       	call   0x0:0x1779
   52062:	99                   	cwd
   52063:	50                   	push   ax
   52064:	52                   	push   dx
   52065:	33 d2                	xor    dx,dx
   52067:	b8 06 00             	mov    ax,0x6
   5206a:	59                   	pop    cx
   5206b:	5b                   	pop    bx
   5206c:	9a 42 12 00 00       	call   0x0:0x1242
   52071:	52                   	push   dx
   52072:	50                   	push   ax
   52073:	9a df 12 00 00       	call   0x0:0x12df
   52078:	50                   	push   ax
   52079:	a1 be d5             	mov    ax,ds:0xd5be
   5207c:	c1 e0 03             	shl    ax,0x3
   5207f:	5a                   	pop    dx
   52080:	03 c2                	add    ax,dx
   52082:	e9 8c 00             	jmp    0x52111
   52085:	6a 00                	push   0x0
   52087:	68 00 80             	push   0x8000
   5208a:	9a 79 17 00 00       	call   0x0:0x1779
   5208f:	99                   	cwd
   52090:	50                   	push   ax
   52091:	52                   	push   dx
   52092:	33 d2                	xor    dx,dx
   52094:	b8 0b 00             	mov    ax,0xb
   52097:	59                   	pop    cx
   52098:	5b                   	pop    bx
   52099:	9a 42 12 00 00       	call   0x0:0x1242
   5209e:	52                   	push   dx
   5209f:	50                   	push   ax
   520a0:	9a df 12 00 00       	call   0x0:0x12df
   520a5:	03 06 5c d5          	add    ax,WORD PTR ds:0xd55c
   520a9:	eb 66                	jmp    0x52111
   520ab:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   520af:	6b db 28             	imul   bx,bx,0x28
   520b2:	b8 88 01             	mov    ax,0x188
   520b5:	8e c0                	mov    es,ax
   520b7:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   520bc:	05 19 00             	add    ax,0x19
   520bf:	eb 50                	jmp    0x52111
   520c1:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   520c5:	6b db 28             	imul   bx,bx,0x28
   520c8:	b8 88 01             	mov    ax,0x188
   520cb:	8e c0                	mov    es,ax
   520cd:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   520d2:	05 05 00             	add    ax,0x5
   520d5:	eb 3a                	jmp    0x52111
   520d7:	6a 00                	push   0x0
   520d9:	68 00 80             	push   0x8000
   520dc:	9a 79 17 00 00       	call   0x0:0x1779
   520e1:	99                   	cwd
   520e2:	50                   	push   ax
   520e3:	52                   	push   dx
   520e4:	33 d2                	xor    dx,dx
   520e6:	b8 03 00             	mov    ax,0x3
   520e9:	59                   	pop    cx
   520ea:	5b                   	pop    bx
   520eb:	9a 42 12 00 00       	call   0x0:0x1242
   520f0:	52                   	push   dx
   520f1:	50                   	push   ax
   520f2:	9a df 12 00 00       	call   0x0:0x12df
   520f7:	eb 18                	jmp    0x52111
   520f9:	6a 66                	push   0x66
   520fb:	6a 00                	push   0x0
   520fd:	6a 00                	push   0x0
   520ff:	68 a2 09             	push   0x9a2
   52102:	1e                   	push   ds
   52103:	68 a4 67             	push   0x67a4
   52106:	9a 2a 00 58 01       	call   0x158:0x2a
   5210b:	83 c4 0c             	add    sp,0xc
   5210e:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   52111:	5d                   	pop    bp
   52112:	cb                   	retf
   52113:	8d 82 d6 82          	lea    ax,[bp+si-0x7d2a]
   52117:	dc 82 e2 82          	fadd   QWORD PTR [bp+si-0x7d1e]
   5211b:	12 83 40 83          	adc    al,BYTE PTR [bp+di-0x7cc0]
   5211f:	57                   	push   di
   52120:	83 79 83 8d          	cmp    WORD PTR [bx+di-0x7d],0xff8d
   52124:	83 a1 83 b4 83       	and    WORD PTR [bx+di-0x4b7d],0xff83
   52129:	c9                   	leave
   5212a:	83 e0 83             	and    ax,0xff83
   5212d:	f3 83 08 84          	repz or WORD PTR [bx+si],0xff84
   52131:	35 84 5b             	xor    ax,0x5b84
   52134:	84 71 84             	test   BYTE PTR [bx+di-0x7c],dh
   52137:	87 84 55 8b          	xchg   WORD PTR [si-0x74ab],ax
   5213b:	ec                   	in     al,dx
   5213c:	83 ec 22             	sub    sp,0x22
   5213f:	c7 06 26 63 00 00    	mov    WORD PTR ds:0x6326,0x0
   52145:	c7 06 9c d5 00 00    	mov    WORD PTR ds:0xd59c,0x0
   5214b:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   5214f:	6b db 16             	imul   bx,bx,0x16
   52152:	b8 88 01             	mov    ax,0x188
   52155:	8e c0                	mov    es,ax
   52157:	26 ff b7 7e 00       	push   WORD PTR es:[bx+0x7e]
   5215c:	0e                   	push   cs
   5215d:	e8 59 fd             	call   0x51eb9
   52160:	59                   	pop    cx
   52161:	a3 98 d5             	mov    ds:0xd598,ax
   52164:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   52168:	6b db 16             	imul   bx,bx,0x16
   5216b:	b8 88 01             	mov    ax,0x188
   5216e:	8e c0                	mov    es,ax
   52170:	26 ff b7 80 00       	push   WORD PTR es:[bx+0x80]
   52175:	0e                   	push   cs
   52176:	e8 40 fd             	call   0x51eb9
   52179:	59                   	pop    cx
   5217a:	a3 96 d5             	mov    ds:0xd596,ax
   5217d:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   52181:	6b db 16             	imul   bx,bx,0x16
   52184:	b8 88 01             	mov    ax,0x188
   52187:	8e c0                	mov    es,ax
   52189:	26 ff b7 82 00       	push   WORD PTR es:[bx+0x82]
   5218e:	0e                   	push   cs
   5218f:	e8 27 fd             	call   0x51eb9
   52192:	59                   	pop    cx
   52193:	a3 94 d5             	mov    ds:0xd594,ax
   52196:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   5219a:	6b db 16             	imul   bx,bx,0x16
   5219d:	b8 88 01             	mov    ax,0x188
   521a0:	8e c0                	mov    es,ax
   521a2:	26 ff b7 84 00       	push   WORD PTR es:[bx+0x84]
   521a7:	0e                   	push   cs
   521a8:	e8 0e fd             	call   0x51eb9
   521ab:	59                   	pop    cx
   521ac:	a3 92 d5             	mov    ds:0xd592,ax
   521af:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   521b3:	6b db 16             	imul   bx,bx,0x16
   521b6:	b8 88 01             	mov    ax,0x188
   521b9:	8e c0                	mov    es,ax
   521bb:	26 ff b7 86 00       	push   WORD PTR es:[bx+0x86]
   521c0:	0e                   	push   cs
   521c1:	e8 f5 fc             	call   0x51eb9
   521c4:	59                   	pop    cx
   521c5:	a3 90 d5             	mov    ds:0xd590,ax
   521c8:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   521cc:	6b db 16             	imul   bx,bx,0x16
   521cf:	b8 88 01             	mov    ax,0x188
   521d2:	8e c0                	mov    es,ax
   521d4:	26 ff b7 88 00       	push   WORD PTR es:[bx+0x88]
   521d9:	0e                   	push   cs
   521da:	e8 dc fc             	call   0x51eb9
   521dd:	59                   	pop    cx
   521de:	a3 8e d5             	mov    ds:0xd58e,ax
   521e1:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   521e5:	6b db 16             	imul   bx,bx,0x16
   521e8:	b8 88 01             	mov    ax,0x188
   521eb:	8e c0                	mov    es,ax
   521ed:	26 ff b7 8a 00       	push   WORD PTR es:[bx+0x8a]
   521f2:	0e                   	push   cs
   521f3:	e8 c3 fc             	call   0x51eb9
   521f6:	59                   	pop    cx
   521f7:	a3 8c d5             	mov    ds:0xd58c,ax
   521fa:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   521fe:	6b db 16             	imul   bx,bx,0x16
   52201:	b8 88 01             	mov    ax,0x188
   52204:	8e c0                	mov    es,ax
   52206:	26 ff b7 8c 00       	push   WORD PTR es:[bx+0x8c]
   5220b:	0e                   	push   cs
   5220c:	e8 aa fc             	call   0x51eb9
   5220f:	59                   	pop    cx
   52210:	a3 8a d5             	mov    ds:0xd58a,ax
   52213:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   52217:	6b db 16             	imul   bx,bx,0x16
   5221a:	b8 88 01             	mov    ax,0x188
   5221d:	8e c0                	mov    es,ax
   5221f:	26 ff b7 8e 00       	push   WORD PTR es:[bx+0x8e]
   52224:	0e                   	push   cs
   52225:	e8 91 fc             	call   0x51eb9
   52228:	59                   	pop    cx
   52229:	a3 88 d5             	mov    ds:0xd588,ax
   5222c:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   52230:	6b db 16             	imul   bx,bx,0x16
   52233:	b8 88 01             	mov    ax,0x188
   52236:	8e c0                	mov    es,ax
   52238:	26 ff b7 90 00       	push   WORD PTR es:[bx+0x90]
   5223d:	0e                   	push   cs
   5223e:	e8 78 fc             	call   0x51eb9
   52241:	59                   	pop    cx
   52242:	a3 86 d5             	mov    ds:0xd586,ax
   52245:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   52249:	6b db 16             	imul   bx,bx,0x16
   5224c:	b8 88 01             	mov    ax,0x188
   5224f:	8e c0                	mov    es,ax
   52251:	26 ff b7 92 00       	push   WORD PTR es:[bx+0x92]
   52256:	0e                   	push   cs
   52257:	e8 5f fc             	call   0x51eb9
   5225a:	59                   	pop    cx
   5225b:	a3 84 d5             	mov    ds:0xd584,ax
   5225e:	a1 e2 d5             	mov    ax,ds:0xd5e2
   52261:	6b c0 25             	imul   ax,ax,0x25
   52264:	05 79 07             	add    ax,0x779
   52267:	68 88 01             	push   0x188
   5226a:	50                   	push   ax
   5226b:	68 88 01             	push   0x188
   5226e:	68 10 a5             	push   0xa510
   52271:	9a a3 49 00 00       	call   0x0:0x49a3
   52276:	83 c4 08             	add    sp,0x8
   52279:	83 3e a2 d5 00       	cmp    WORD PTR ds:0xd5a2,0x0
   5227e:	74 03                	je     0x52283
   52280:	e9 4a 01             	jmp    0x523cd
   52283:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   52289:	83 3e e2 d5 0c       	cmp    WORD PTR ds:0xd5e2,0xc
   5228e:	7d 47                	jge    0x522d7
   52290:	6a 1f                	push   0x1f
   52292:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52296:	0e                   	push   cs
   52297:	e8 96 9a             	call   0x5bd30
   5229a:	83 c4 04             	add    sp,0x4
   5229d:	0b c0                	or     ax,ax
   5229f:	74 36                	je     0x522d7
   522a1:	0e                   	push   cs
   522a2:	e8 cc a0             	call   0x5c371
   522a5:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   522a9:	68 88 01             	push   0x188
   522ac:	68 74 a5             	push   0xa574
   522af:	0e                   	push   cs
   522b0:	e8 88 90             	call   0x5b33b
   522b3:	83 c4 06             	add    sp,0x6
   522b6:	ff 36 e2 d5          	push   WORD PTR ds:0xd5e2
   522ba:	0e                   	push   cs
   522bb:	e8 ed 9c             	call   0x5bfab
   522be:	59                   	pop    cx
   522bf:	6a 08                	push   0x8
   522c1:	6a 21                	push   0x21
   522c3:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   522c8:	83 c4 04             	add    sp,0x4
   522cb:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   522cf:	0e                   	push   cs
   522d0:	e8 bd 85             	call   0x5a890
   522d3:	59                   	pop    cx
   522d4:	e9 c6 07             	jmp    0x52a9d
   522d7:	83 3e e2 d5 0c       	cmp    WORD PTR ds:0xd5e2,0xc
   522dc:	7d 45                	jge    0x52323
   522de:	6a 17                	push   0x17
   522e0:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   522e4:	0e                   	push   cs
   522e5:	e8 48 9a             	call   0x5bd30
   522e8:	83 c4 04             	add    sp,0x4
   522eb:	0b c0                	or     ax,ax
   522ed:	74 34                	je     0x52323
   522ef:	0e                   	push   cs
   522f0:	e8 7e a0             	call   0x5c371
   522f3:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   522f7:	68 88 01             	push   0x188
   522fa:	68 74 a5             	push   0xa574
   522fd:	0e                   	push   cs
   522fe:	e8 3a 90             	call   0x5b33b
   52301:	83 c4 06             	add    sp,0x6
   52304:	ff 36 e2 d5          	push   WORD PTR ds:0xd5e2
   52308:	0e                   	push   cs
   52309:	e8 9f 9c             	call   0x5bfab
   5230c:	59                   	pop    cx
   5230d:	6a 08                	push   0x8
   5230f:	6a 21                	push   0x21
   52311:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   52316:	83 c4 04             	add    sp,0x4
   52319:	6a 0a                	push   0xa
   5231b:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   52320:	59                   	pop    cx
   52321:	eb a8                	jmp    0x522cb
   52323:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52327:	6a 06                	push   0x6
   52329:	0e                   	push   cs
   5232a:	e8 78 7b             	call   0x59ea5
   5232d:	83 c4 04             	add    sp,0x4
   52330:	0b c0                	or     ax,ax
   52332:	74 1b                	je     0x5234f
   52334:	83 3e e0 d5 00       	cmp    WORD PTR ds:0xd5e0,0x0
   52339:	75 14                	jne    0x5234f
   5233b:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   5233f:	6a 05                	push   0x5
   52341:	0e                   	push   cs
   52342:	e8 60 7b             	call   0x59ea5
   52345:	83 c4 04             	add    sp,0x4
   52348:	0b c0                	or     ax,ax
   5234a:	75 03                	jne    0x5234f
   5234c:	e9 4e 07             	jmp    0x52a9d
   5234f:	0e                   	push   cs
   52350:	e8 1e a0             	call   0x5c371
   52353:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   52357:	68 88 01             	push   0x188
   5235a:	68 74 a5             	push   0xa574
   5235d:	0e                   	push   cs
   5235e:	e8 da 8f             	call   0x5b33b
   52361:	83 c4 06             	add    sp,0x6
   52364:	ff 36 e2 d5          	push   WORD PTR ds:0xd5e2
   52368:	0e                   	push   cs
   52369:	e8 3f 9c             	call   0x5bfab
   5236c:	59                   	pop    cx
   5236d:	6a 08                	push   0x8
   5236f:	6a 21                	push   0x21
   52371:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   52376:	83 c4 04             	add    sp,0x4
   52379:	b8 88 01             	mov    ax,0x188
   5237c:	8e c0                	mov    es,ax
   5237e:	26 a1 2b e1          	mov    ax,es:0xe12b
   52382:	26 0b 06 2d e1       	or     ax,WORD PTR es:0xe12d
   52387:	74 15                	je     0x5239e
   52389:	1e                   	push   ds
   5238a:	68 b4 67             	push   0x67b4
   5238d:	68 d8 09             	push   0x9d8
   52390:	68 88 01             	push   0x188
   52393:	68 2b e1             	push   0xe12b
   52396:	9a 2f 02 40 00       	call   0x40:0x22f
   5239b:	83 c4 0a             	add    sp,0xa
   5239e:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   523a2:	6b db 28             	imul   bx,bx,0x28
   523a5:	b8 88 01             	mov    ax,0x188
   523a8:	8e c0                	mov    es,ax
   523aa:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   523af:	3b 06 bc d5          	cmp    ax,WORD PTR ds:0xd5bc
   523b3:	7d 03                	jge    0x523b8
   523b5:	e9 e5 06             	jmp    0x52a9d
   523b8:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   523bc:	6b db 28             	imul   bx,bx,0x28
   523bf:	b8 88 01             	mov    ax,0x188
   523c2:	8b 16 bc d5          	mov    dx,WORD PTR ds:0xd5bc
   523c6:	8e c0                	mov    es,ax
   523c8:	26 29 97 8c a0       	sub    WORD PTR es:[bx-0x5f74],dx
   523cd:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   523d1:	6a 06                	push   0x6
   523d3:	0e                   	push   cs
   523d4:	e8 ce 7a             	call   0x59ea5
   523d7:	83 c4 04             	add    sp,0x4
   523da:	0b c0                	or     ax,ax
   523dc:	74 08                	je     0x523e6
   523de:	90                   	nop
   523df:	0e                   	push   cs
   523e0:	e8 bc 06             	call   0x52a9f
   523e3:	e9 b7 06             	jmp    0x52a9d
   523e6:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   523ea:	6a 06                	push   0x6
   523ec:	0e                   	push   cs
   523ed:	e8 b5 7a             	call   0x59ea5
   523f0:	83 c4 04             	add    sp,0x4
   523f3:	0b c0                	or     ax,ax
   523f5:	74 03                	je     0x523fa
   523f7:	e9 86 02             	jmp    0x52680
   523fa:	83 3e e2 d5 1d       	cmp    WORD PTR ds:0xd5e2,0x1d
   523ff:	75 03                	jne    0x52404
   52401:	e9 7c 02             	jmp    0x52680
   52404:	83 3e e2 d5 22       	cmp    WORD PTR ds:0xd5e2,0x22
   52409:	75 03                	jne    0x5240e
   5240b:	e9 72 02             	jmp    0x52680
   5240e:	b8 88 01             	mov    ax,0x188
   52411:	8e c0                	mov    es,ax
   52413:	26 a0 72 96          	mov    al,es:0x9672
   52417:	ba 88 01             	mov    dx,0x188
   5241a:	8e c2                	mov    es,dx
   5241c:	26 3a 06 92 97       	cmp    al,BYTE PTR es:0x9792
   52421:	74 03                	je     0x52426
   52423:	e9 22 02             	jmp    0x52648
   52426:	83 3e e2 d5 0c       	cmp    WORD PTR ds:0xd5e2,0xc
   5242b:	75 27                	jne    0x52454
   5242d:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   52431:	6b db 28             	imul   bx,bx,0x28
   52434:	b8 88 01             	mov    ax,0x188
   52437:	8e c0                	mov    es,ax
   52439:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   5243e:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   52441:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   52445:	6b db 28             	imul   bx,bx,0x28
   52448:	b8 88 01             	mov    ax,0x188
   5244b:	8e c0                	mov    es,ax
   5244d:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   52452:	eb 09                	jmp    0x5245d
   52454:	a1 7a d5             	mov    ax,ds:0xd57a
   52457:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   5245a:	a1 78 d5             	mov    ax,ds:0xd578
   5245d:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   52460:	a1 86 d5             	mov    ax,ds:0xd586
   52463:	6b c0 ff             	imul   ax,ax,0xffff
   52466:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   52469:	e9 bb 01             	jmp    0x52627
   5246c:	a1 86 d5             	mov    ax,ds:0xd586
   5246f:	6b c0 ff             	imul   ax,ax,0xffff
   52472:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   52475:	e9 a0 01             	jmp    0x52618
   52478:	8b 5e e2             	mov    bx,WORD PTR [bp-0x1e]
   5247b:	03 5e e6             	add    bx,WORD PTR [bp-0x1a]
   5247e:	6b db 38             	imul   bx,bx,0x38
   52481:	8b 46 e0             	mov    ax,WORD PTR [bp-0x20]
   52484:	03 46 e4             	add    ax,WORD PTR [bp-0x1c]
   52487:	d1 e0                	shl    ax,1
   52489:	03 d8                	add    bx,ax
   5248b:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   5248f:	a3 e0 d5             	mov    ds:0xd5e0,ax
   52492:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   52495:	03 46 e6             	add    ax,WORD PTR [bp-0x1a]
   52498:	7c 1e                	jl     0x524b8
   5249a:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   5249d:	03 46 e6             	add    ax,WORD PTR [bp-0x1a]
   524a0:	3d 1b 00             	cmp    ax,0x1b
   524a3:	7f 13                	jg     0x524b8
   524a5:	8b 46 e0             	mov    ax,WORD PTR [bp-0x20]
   524a8:	03 46 e4             	add    ax,WORD PTR [bp-0x1c]
   524ab:	7c 0b                	jl     0x524b8
   524ad:	8b 46 e0             	mov    ax,WORD PTR [bp-0x20]
   524b0:	03 46 e4             	add    ax,WORD PTR [bp-0x1c]
   524b3:	3d 1b 00             	cmp    ax,0x1b
   524b6:	7e 06                	jle    0x524be
   524b8:	c7 06 e0 d5 00 00    	mov    WORD PTR ds:0xd5e0,0x0
   524be:	83 3e e0 d5 00       	cmp    WORD PTR ds:0xd5e0,0x0
   524c3:	7f 03                	jg     0x524c8
   524c5:	e9 4d 01             	jmp    0x52615
   524c8:	a1 e0 d5             	mov    ax,ds:0xd5e0
   524cb:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   524cf:	75 03                	jne    0x524d4
   524d1:	e9 41 01             	jmp    0x52615
   524d4:	6a 1f                	push   0x1f
   524d6:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   524da:	0e                   	push   cs
   524db:	e8 52 98             	call   0x5bd30
   524de:	83 c4 04             	add    sp,0x4
   524e1:	0b c0                	or     ax,ax
   524e3:	74 03                	je     0x524e8
   524e5:	e9 2d 01             	jmp    0x52615
   524e8:	c7 06 74 d5 00 00    	mov    WORD PTR ds:0xd574,0x0
   524ee:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   524f2:	6b db 16             	imul   bx,bx,0x16
   524f5:	b8 88 01             	mov    ax,0x188
   524f8:	8e c0                	mov    es,ax
   524fa:	26 ff b7 84 00       	push   WORD PTR es:[bx+0x84]
   524ff:	0e                   	push   cs
   52500:	e8 b6 f9             	call   0x51eb9
   52503:	59                   	pop    cx
   52504:	a3 92 d5             	mov    ds:0xd592,ax
   52507:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   5250b:	6b db 16             	imul   bx,bx,0x16
   5250e:	b8 88 01             	mov    ax,0x188
   52511:	8e c0                	mov    es,ax
   52513:	26 ff b7 86 00       	push   WORD PTR es:[bx+0x86]
   52518:	0e                   	push   cs
   52519:	e8 9d f9             	call   0x51eb9
   5251c:	59                   	pop    cx
   5251d:	a3 90 d5             	mov    ds:0xd590,ax
   52520:	a1 e2 d5             	mov    ax,ds:0xd5e2
   52523:	6b c0 25             	imul   ax,ax,0x25
   52526:	05 79 07             	add    ax,0x779
   52529:	68 88 01             	push   0x188
   5252c:	50                   	push   ax
   5252d:	68 88 01             	push   0x188
   52530:	68 10 a5             	push   0xa510
   52533:	9a a3 49 00 00       	call   0x0:0x49a3
   52538:	83 c4 08             	add    sp,0x8
   5253b:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5253f:	6b db 28             	imul   bx,bx,0x28
   52542:	b8 88 01             	mov    ax,0x188
   52545:	8e c0                	mov    es,ax
   52547:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   5254c:	6b db 2e             	imul   bx,bx,0x2e
   5254f:	b8 88 01             	mov    ax,0x188
   52552:	8e c0                	mov    es,ax
   52554:	26 8b 87 2c 9f       	mov    ax,WORD PTR es:[bx-0x60d4]
   52559:	bb 32 00             	mov    bx,0x32
   5255c:	99                   	cwd
   5255d:	f7 fb                	idiv   bx
   5255f:	a3 5c d5             	mov    ds:0xd55c,ax
   52562:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52566:	6b db 28             	imul   bx,bx,0x28
   52569:	b8 88 01             	mov    ax,0x188
   5256c:	8e c0                	mov    es,ax
   5256e:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   52573:	3b 06 80 d5          	cmp    ax,WORD PTR ds:0xd580
   52577:	7c 4b                	jl     0x525c4
   52579:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5257d:	6b db 28             	imul   bx,bx,0x28
   52580:	b8 88 01             	mov    ax,0x188
   52583:	8e c0                	mov    es,ax
   52585:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   5258a:	3b 06 7e d5          	cmp    ax,WORD PTR ds:0xd57e
   5258e:	7c 34                	jl     0x525c4
   52590:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52594:	6b db 28             	imul   bx,bx,0x28
   52597:	b8 88 01             	mov    ax,0x188
   5259a:	8b 16 80 d5          	mov    dx,WORD PTR ds:0xd580
   5259e:	83 c2 07             	add    dx,0x7
   525a1:	8e c0                	mov    es,ax
   525a3:	26 39 97 92 a0       	cmp    WORD PTR es:[bx-0x5f6e],dx
   525a8:	7f 1a                	jg     0x525c4
   525aa:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   525ae:	6b db 28             	imul   bx,bx,0x28
   525b1:	b8 88 01             	mov    ax,0x188
   525b4:	8b 16 7e d5          	mov    dx,WORD PTR ds:0xd57e
   525b8:	83 c2 07             	add    dx,0x7
   525bb:	8e c0                	mov    es,ax
   525bd:	26 39 97 94 a0       	cmp    WORD PTR es:[bx-0x5f6c],dx
   525c2:	7e 09                	jle    0x525cd
   525c4:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   525c8:	0e                   	push   cs
   525c9:	e8 c4 82             	call   0x5a890
   525cc:	59                   	pop    cx
   525cd:	90                   	nop
   525ce:	0e                   	push   cs
   525cf:	e8 cd 04             	call   0x52a9f
   525d2:	0e                   	push   cs
   525d3:	e8 9b 9d             	call   0x5c371
   525d6:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   525da:	6b db 28             	imul   bx,bx,0x28
   525dd:	b8 88 01             	mov    ax,0x188
   525e0:	8e c0                	mov    es,ax
   525e2:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   525e8:	7d 2b                	jge    0x52615
   525ea:	6a 00                	push   0x0
   525ec:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   525f0:	6b db 28             	imul   bx,bx,0x28
   525f3:	b8 88 01             	mov    ax,0x188
   525f6:	8e c0                	mov    es,ax
   525f8:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   525fd:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52601:	6b db 28             	imul   bx,bx,0x28
   52604:	b8 88 01             	mov    ax,0x188
   52607:	8e c0                	mov    es,ax
   52609:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   5260e:	0e                   	push   cs
   5260f:	e8 65 82             	call   0x5a877
   52612:	83 c4 06             	add    sp,0x6
   52615:	ff 46 e2             	inc    WORD PTR [bp-0x1e]
   52618:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   5261b:	3b 06 86 d5          	cmp    ax,WORD PTR ds:0xd586
   5261f:	7f 03                	jg     0x52624
   52621:	e9 54 fe             	jmp    0x52478
   52624:	ff 46 e0             	inc    WORD PTR [bp-0x20]
   52627:	8b 46 e0             	mov    ax,WORD PTR [bp-0x20]
   5262a:	3b 06 86 d5          	cmp    ax,WORD PTR ds:0xd586
   5262e:	7f 03                	jg     0x52633
   52630:	e9 39 fe             	jmp    0x5246c
   52633:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   52639:	c7 06 70 d5 00 00    	mov    WORD PTR ds:0xd570,0x0
   5263f:	c7 06 9c d5 00 00    	mov    WORD PTR ds:0xd59c,0x0
   52645:	e9 55 04             	jmp    0x52a9d
   52648:	83 3e ba d5 00       	cmp    WORD PTR ds:0xd5ba,0x0
   5264d:	74 03                	je     0x52652
   5264f:	e9 4b 04             	jmp    0x52a9d
   52652:	c7 06 e0 d5 19 00    	mov    WORD PTR ds:0xd5e0,0x19
   52658:	eb 1c                	jmp    0x52676
   5265a:	6a 1f                	push   0x1f
   5265c:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52660:	0e                   	push   cs
   52661:	e8 cc 96             	call   0x5bd30
   52664:	83 c4 04             	add    sp,0x4
   52667:	0b c0                	or     ax,ax
   52669:	74 02                	je     0x5266d
   5266b:	eb 00                	jmp    0x5266d
   5266d:	90                   	nop
   5266e:	0e                   	push   cs
   5266f:	e8 2d 04             	call   0x52a9f
   52672:	ff 06 e0 d5          	inc    WORD PTR ds:0xd5e0
   52676:	83 3e e0 d5 1c       	cmp    WORD PTR ds:0xd5e0,0x1c
   5267b:	7e dd                	jle    0x5265a
   5267d:	e9 1d 04             	jmp    0x52a9d
   52680:	83 3e e2 d5 1d       	cmp    WORD PTR ds:0xd5e2,0x1d
   52685:	74 03                	je     0x5268a
   52687:	e9 07 03             	jmp    0x52991
   5268a:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5268e:	6b db 28             	imul   bx,bx,0x28
   52691:	b8 88 01             	mov    ax,0x188
   52694:	8e c0                	mov    es,ax
   52696:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   5269b:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   5269e:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   526a2:	6b db 28             	imul   bx,bx,0x28
   526a5:	b8 88 01             	mov    ax,0x188
   526a8:	8e c0                	mov    es,ax
   526aa:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   526af:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   526b2:	a1 7a d5             	mov    ax,ds:0xd57a
   526b5:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   526b8:	a1 78 d5             	mov    ax,ds:0xd578
   526bb:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   526be:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   526c1:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   526c4:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   526c7:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   526ca:	2b 46 f0             	sub    ax,WORD PTR [bp-0x10]
   526cd:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   526d0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   526d3:	99                   	cwd
   526d4:	33 c2                	xor    ax,dx
   526d6:	2b c2                	sub    ax,dx
   526d8:	50                   	push   ax
   526d9:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   526dc:	99                   	cwd
   526dd:	33 c2                	xor    ax,dx
   526df:	2b c2                	sub    ax,dx
   526e1:	5a                   	pop    dx
   526e2:	3b d0                	cmp    dx,ax
   526e4:	7d 03                	jge    0x526e9
   526e6:	e9 53 01             	jmp    0x5283c
   526e9:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   526ec:	6b c0 64             	imul   ax,ax,0x64
   526ef:	99                   	cwd
   526f0:	f7 7e fc             	idiv   WORD PTR [bp-0x4]
   526f3:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   526f6:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   526fa:	7e 05                	jle    0x52701
   526fc:	b8 01 00             	mov    ax,0x1
   526ff:	eb 03                	jmp    0x52704
   52701:	b8 ff ff             	mov    ax,0xffff
   52704:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   52707:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   5270a:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   5270d:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   52710:	6b c0 64             	imul   ax,ax,0x64
   52713:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   52716:	e9 17 01             	jmp    0x52830
   52719:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   5271c:	03 46 f6             	add    ax,WORD PTR [bp-0xa]
   5271f:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   52722:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   52725:	bb 64 00             	mov    bx,0x64
   52728:	99                   	cwd
   52729:	f7 fb                	idiv   bx
   5272b:	03 46 f0             	add    ax,WORD PTR [bp-0x10]
   5272e:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   52731:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   52734:	6b db 38             	imul   bx,bx,0x38
   52737:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   5273a:	d1 e0                	shl    ax,1
   5273c:	03 d8                	add    bx,ax
   5273e:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   52742:	a3 e0 d5             	mov    ds:0xd5e0,ax
   52745:	83 3e e0 d5 00       	cmp    WORD PTR ds:0xd5e0,0x0
   5274a:	7f 03                	jg     0x5274f
   5274c:	e9 d2 00             	jmp    0x52821
   5274f:	a1 e0 d5             	mov    ax,ds:0xd5e0
   52752:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   52756:	75 03                	jne    0x5275b
   52758:	e9 c6 00             	jmp    0x52821
   5275b:	6a 1f                	push   0x1f
   5275d:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52761:	0e                   	push   cs
   52762:	e8 cb 95             	call   0x5bd30
   52765:	83 c4 04             	add    sp,0x4
   52768:	0b c0                	or     ax,ax
   5276a:	74 03                	je     0x5276f
   5276c:	e9 b2 00             	jmp    0x52821
   5276f:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52773:	0e                   	push   cs
   52774:	e8 19 81             	call   0x5a890
   52777:	59                   	pop    cx
   52778:	a1 e0 d5             	mov    ax,ds:0xd5e0
   5277b:	a3 76 d5             	mov    ds:0xd576,ax
   5277e:	6a 00                	push   0x0
   52780:	68 00 80             	push   0x8000
   52783:	9a 79 17 00 00       	call   0x0:0x1779
   52788:	99                   	cwd
   52789:	50                   	push   ax
   5278a:	52                   	push   dx
   5278b:	33 d2                	xor    dx,dx
   5278d:	b8 06 00             	mov    ax,0x6
   52790:	59                   	pop    cx
   52791:	5b                   	pop    bx
   52792:	9a 42 12 00 00       	call   0x0:0x1242
   52797:	52                   	push   dx
   52798:	50                   	push   ax
   52799:	9a df 12 00 00       	call   0x0:0x12df
   5279e:	03 06 be d5          	add    ax,WORD PTR ds:0xd5be
   527a2:	a3 70 d5             	mov    ds:0xd570,ax
   527a5:	1e                   	push   ds
   527a6:	68 c4 67             	push   0x67c4
   527a9:	68 88 01             	push   0x188
   527ac:	68 10 a5             	push   0xa510
   527af:	9a a3 49 00 00       	call   0x0:0x49a3
   527b4:	83 c4 08             	add    sp,0x8
   527b7:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   527bb:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   527bf:	0e                   	push   cs
   527c0:	e8 5b 8f             	call   0x5b71e
   527c3:	83 c4 04             	add    sp,0x4
   527c6:	0e                   	push   cs
   527c7:	e8 b2 c9             	call   0x5f17c
   527ca:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   527d0:	0e                   	push   cs
   527d1:	e8 9d 9b             	call   0x5c371
   527d4:	6a 0a                	push   0xa
   527d6:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   527db:	59                   	pop    cx
   527dc:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   527e2:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   527e6:	6b db 28             	imul   bx,bx,0x28
   527e9:	b8 88 01             	mov    ax,0x188
   527ec:	8e c0                	mov    es,ax
   527ee:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   527f4:	7d 2b                	jge    0x52821
   527f6:	6a 00                	push   0x0
   527f8:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   527fc:	6b db 28             	imul   bx,bx,0x28
   527ff:	b8 88 01             	mov    ax,0x188
   52802:	8e c0                	mov    es,ax
   52804:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   52809:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5280d:	6b db 28             	imul   bx,bx,0x28
   52810:	b8 88 01             	mov    ax,0x188
   52813:	8e c0                	mov    es,ax
   52815:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   5281a:	0e                   	push   cs
   5281b:	e8 59 80             	call   0x5a877
   5281e:	83 c4 06             	add    sp,0x6
   52821:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   52824:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   52827:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   5282a:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   5282d:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   52830:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   52834:	74 03                	je     0x52839
   52836:	e9 e0 fe             	jmp    0x52719
   52839:	e9 61 02             	jmp    0x52a9d
   5283c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   5283f:	6b c0 64             	imul   ax,ax,0x64
   52842:	99                   	cwd
   52843:	f7 7e fa             	idiv   WORD PTR [bp-0x6]
   52846:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   52849:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   5284d:	7e 05                	jle    0x52854
   5284f:	b8 01 00             	mov    ax,0x1
   52852:	eb 03                	jmp    0x52857
   52854:	b8 ff ff             	mov    ax,0xffff
   52857:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   5285a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   5285d:	6b c0 64             	imul   ax,ax,0x64
   52860:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   52863:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   52866:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   52869:	e9 19 01             	jmp    0x52985
   5286c:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   5286f:	bb 64 00             	mov    bx,0x64
   52872:	99                   	cwd
   52873:	f7 fb                	idiv   bx
   52875:	8b 56 f2             	mov    dx,WORD PTR [bp-0xe]
   52878:	03 d0                	add    dx,ax
   5287a:	89 56 ea             	mov    WORD PTR [bp-0x16],dx
   5287d:	8b 46 f4             	mov    ax,WORD PTR [bp-0xc]
   52880:	03 46 f0             	add    ax,WORD PTR [bp-0x10]
   52883:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   52886:	8b 5e ea             	mov    bx,WORD PTR [bp-0x16]
   52889:	6b db 38             	imul   bx,bx,0x38
   5288c:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   5288f:	d1 e0                	shl    ax,1
   52891:	03 d8                	add    bx,ax
   52893:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   52897:	a3 e0 d5             	mov    ds:0xd5e0,ax
   5289a:	83 3e e0 d5 00       	cmp    WORD PTR ds:0xd5e0,0x0
   5289f:	7f 03                	jg     0x528a4
   528a1:	e9 d2 00             	jmp    0x52976
   528a4:	a1 e0 d5             	mov    ax,ds:0xd5e0
   528a7:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   528ab:	75 03                	jne    0x528b0
   528ad:	e9 c6 00             	jmp    0x52976
   528b0:	6a 1f                	push   0x1f
   528b2:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   528b6:	0e                   	push   cs
   528b7:	e8 76 94             	call   0x5bd30
   528ba:	83 c4 04             	add    sp,0x4
   528bd:	0b c0                	or     ax,ax
   528bf:	74 03                	je     0x528c4
   528c1:	e9 b2 00             	jmp    0x52976
   528c4:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   528c8:	0e                   	push   cs
   528c9:	e8 c4 7f             	call   0x5a890
   528cc:	59                   	pop    cx
   528cd:	a1 e0 d5             	mov    ax,ds:0xd5e0
   528d0:	a3 76 d5             	mov    ds:0xd576,ax
   528d3:	6a 00                	push   0x0
   528d5:	68 00 80             	push   0x8000
   528d8:	9a 79 17 00 00       	call   0x0:0x1779
   528dd:	99                   	cwd
   528de:	50                   	push   ax
   528df:	52                   	push   dx
   528e0:	33 d2                	xor    dx,dx
   528e2:	b8 06 00             	mov    ax,0x6
   528e5:	59                   	pop    cx
   528e6:	5b                   	pop    bx
   528e7:	9a 42 12 00 00       	call   0x0:0x1242
   528ec:	52                   	push   dx
   528ed:	50                   	push   ax
   528ee:	9a df 12 00 00       	call   0x0:0x12df
   528f3:	03 06 be d5          	add    ax,WORD PTR ds:0xd5be
   528f7:	a3 70 d5             	mov    ds:0xd570,ax
   528fa:	1e                   	push   ds
   528fb:	68 c5 67             	push   0x67c5
   528fe:	68 88 01             	push   0x188
   52901:	68 10 a5             	push   0xa510
   52904:	9a a3 49 00 00       	call   0x0:0x49a3
   52909:	83 c4 08             	add    sp,0x8
   5290c:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52910:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   52914:	0e                   	push   cs
   52915:	e8 06 8e             	call   0x5b71e
   52918:	83 c4 04             	add    sp,0x4
   5291b:	0e                   	push   cs
   5291c:	e8 5d c8             	call   0x5f17c
   5291f:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   52925:	0e                   	push   cs
   52926:	e8 48 9a             	call   0x5c371
   52929:	6a 0a                	push   0xa
   5292b:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   52930:	59                   	pop    cx
   52931:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   52937:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5293b:	6b db 28             	imul   bx,bx,0x28
   5293e:	b8 88 01             	mov    ax,0x188
   52941:	8e c0                	mov    es,ax
   52943:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   52949:	7d 2b                	jge    0x52976
   5294b:	6a 00                	push   0x0
   5294d:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52951:	6b db 28             	imul   bx,bx,0x28
   52954:	b8 88 01             	mov    ax,0x188
   52957:	8e c0                	mov    es,ax
   52959:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   5295e:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52962:	6b db 28             	imul   bx,bx,0x28
   52965:	b8 88 01             	mov    ax,0x188
   52968:	8e c0                	mov    es,ax
   5296a:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   5296f:	0e                   	push   cs
   52970:	e8 04 7f             	call   0x5a877
   52973:	83 c4 06             	add    sp,0x6
   52976:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   52979:	f7 6e f8             	imul   WORD PTR [bp-0x8]
   5297c:	29 46 f6             	sub    WORD PTR [bp-0xa],ax
   5297f:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   52982:	29 46 f4             	sub    WORD PTR [bp-0xc],ax
   52985:	83 7e f4 00          	cmp    WORD PTR [bp-0xc],0x0
   52989:	74 03                	je     0x5298e
   5298b:	e9 de fe             	jmp    0x5286c
   5298e:	e9 0c 01             	jmp    0x52a9d
   52991:	83 3e e2 d5 22       	cmp    WORD PTR ds:0xd5e2,0x22
   52996:	74 03                	je     0x5299b
   52998:	e9 02 01             	jmp    0x52a9d
   5299b:	c7 46 de 01 00       	mov    WORD PTR [bp-0x22],0x1
   529a0:	e9 f1 00             	jmp    0x52a94
   529a3:	8b 46 de             	mov    ax,WORD PTR [bp-0x22]
   529a6:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   529aa:	75 03                	jne    0x529af
   529ac:	e9 e2 00             	jmp    0x52a91
   529af:	8b 5e de             	mov    bx,WORD PTR [bp-0x22]
   529b2:	6b db 28             	imul   bx,bx,0x28
   529b5:	b8 88 01             	mov    ax,0x188
   529b8:	8e c0                	mov    es,ax
   529ba:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   529c0:	7f 03                	jg     0x529c5
   529c2:	e9 cc 00             	jmp    0x52a91
   529c5:	6a 00                	push   0x0
   529c7:	68 00 80             	push   0x8000
   529ca:	9a 79 17 00 00       	call   0x0:0x1779
   529cf:	99                   	cwd
   529d0:	8b 5e de             	mov    bx,WORD PTR [bp-0x22]
   529d3:	6b db 28             	imul   bx,bx,0x28
   529d6:	b9 88 01             	mov    cx,0x188
   529d9:	8e c1                	mov    es,cx
   529db:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   529e0:	6b db 2e             	imul   bx,bx,0x2e
   529e3:	b9 88 01             	mov    cx,0x188
   529e6:	8e c1                	mov    es,cx
   529e8:	50                   	push   ax
   529e9:	26 8b 87 2c 9f       	mov    ax,WORD PTR es:[bx-0x60d4]
   529ee:	bb 32 00             	mov    bx,0x32
   529f1:	52                   	push   dx
   529f2:	99                   	cwd
   529f3:	f7 fb                	idiv   bx
   529f5:	05 06 00             	add    ax,0x6
   529f8:	99                   	cwd
   529f9:	59                   	pop    cx
   529fa:	5b                   	pop    bx
   529fb:	9a 42 12 00 00       	call   0x0:0x1242
   52a00:	52                   	push   dx
   52a01:	50                   	push   ax
   52a02:	9a df 12 00 00       	call   0x0:0x12df
   52a07:	3b 06 be d5          	cmp    ax,WORD PTR ds:0xd5be
   52a0b:	7c 03                	jl     0x52a10
   52a0d:	e9 81 00             	jmp    0x52a91
   52a10:	6a 1f                	push   0x1f
   52a12:	ff 76 de             	push   WORD PTR [bp-0x22]
   52a15:	0e                   	push   cs
   52a16:	e8 17 93             	call   0x5bd30
   52a19:	83 c4 04             	add    sp,0x4
   52a1c:	0b c0                	or     ax,ax
   52a1e:	75 71                	jne    0x52a91
   52a20:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52a24:	6b db 28             	imul   bx,bx,0x28
   52a27:	b8 88 01             	mov    ax,0x188
   52a2a:	8e c0                	mov    es,ax
   52a2c:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52a31:	6b db 2e             	imul   bx,bx,0x2e
   52a34:	b8 88 01             	mov    ax,0x188
   52a37:	8e c0                	mov    es,ax
   52a39:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52a3f:	7e 50                	jle    0x52a91
   52a41:	8b 46 de             	mov    ax,WORD PTR [bp-0x22]
   52a44:	a3 76 d5             	mov    ds:0xd576,ax
   52a47:	8b 5e de             	mov    bx,WORD PTR [bp-0x22]
   52a4a:	6b db 28             	imul   bx,bx,0x28
   52a4d:	b8 88 01             	mov    ax,0x188
   52a50:	8e c0                	mov    es,ax
   52a52:	26 c7 87 8c a0 00 00 	mov    WORD PTR es:[bx-0x5f74],0x0
   52a59:	c7 06 74 d5 05 00    	mov    WORD PTR ds:0xd574,0x5
   52a5f:	ff 76 de             	push   WORD PTR [bp-0x22]
   52a62:	0e                   	push   cs
   52a63:	e8 2a 7e             	call   0x5a890
   52a66:	59                   	pop    cx
   52a67:	1e                   	push   ds
   52a68:	68 c6 67             	push   0x67c6
   52a6b:	68 88 01             	push   0x188
   52a6e:	68 10 a5             	push   0xa510
   52a71:	9a a3 49 00 00       	call   0x0:0x49a3
   52a76:	83 c4 08             	add    sp,0x8
   52a79:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   52a7f:	0e                   	push   cs
   52a80:	e8 ee 98             	call   0x5c371
   52a83:	6a 0a                	push   0xa
   52a85:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   52a8a:	59                   	pop    cx
   52a8b:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   52a91:	ff 46 de             	inc    WORD PTR [bp-0x22]
   52a94:	83 7e de 1c          	cmp    WORD PTR [bp-0x22],0x1c
   52a98:	7f 03                	jg     0x52a9d
   52a9a:	e9 06 ff             	jmp    0x529a3
   52a9d:	c9                   	leave
   52a9e:	cb                   	retf
   52a9f:	55                   	push   bp
   52aa0:	8b ec                	mov    bp,sp
   52aa2:	83 ec 04             	sub    sp,0x4
   52aa5:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   52aab:	a1 e0 d5             	mov    ax,ds:0xd5e0
   52aae:	a3 76 d5             	mov    ds:0xd576,ax
   52ab1:	83 3e 26 63 00       	cmp    WORD PTR ds:0x6326,0x0
   52ab6:	75 0f                	jne    0x52ac7
   52ab8:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52abc:	0e                   	push   cs
   52abd:	e8 d0 7d             	call   0x5a890
   52ac0:	59                   	pop    cx
   52ac1:	c7 06 26 63 01 00    	mov    WORD PTR ds:0x6326,0x1
   52ac7:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52acb:	6a 07                	push   0x7
   52acd:	0e                   	push   cs
   52ace:	e8 d4 73             	call   0x59ea5
   52ad1:	83 c4 04             	add    sp,0x4
   52ad4:	0b c0                	or     ax,ax
   52ad6:	75 03                	jne    0x52adb
   52ad8:	e9 eb 00             	jmp    0x52bc6
   52adb:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52adf:	6a 04                	push   0x4
   52ae1:	0e                   	push   cs
   52ae2:	e8 c0 73             	call   0x59ea5
   52ae5:	83 c4 04             	add    sp,0x4
   52ae8:	0b c0                	or     ax,ax
   52aea:	74 4b                	je     0x52b37
   52aec:	a1 92 d5             	mov    ax,ds:0xd592
   52aef:	3b 06 90 d5          	cmp    ax,WORD PTR ds:0xd590
   52af3:	7d 42                	jge    0x52b37
   52af5:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52af9:	6b db 28             	imul   bx,bx,0x28
   52afc:	b8 88 01             	mov    ax,0x188
   52aff:	8e c0                	mov    es,ax
   52b01:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52b06:	6b db 2e             	imul   bx,bx,0x2e
   52b09:	b8 88 01             	mov    ax,0x188
   52b0c:	8e c0                	mov    es,ax
   52b0e:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52b14:	7c 21                	jl     0x52b37
   52b16:	a1 96 d5             	mov    ax,ds:0xd596
   52b19:	a3 70 d5             	mov    ds:0xd570,ax
   52b1c:	0e                   	push   cs
   52b1d:	e8 5c c6             	call   0x5f17c
   52b20:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52b24:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   52b28:	0e                   	push   cs
   52b29:	e8 f2 8b             	call   0x5b71e
   52b2c:	83 c4 04             	add    sp,0x4
   52b2f:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   52b35:	eb 4d                	jmp    0x52b84
   52b37:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52b3b:	6a 04                	push   0x4
   52b3d:	0e                   	push   cs
   52b3e:	e8 64 73             	call   0x59ea5
   52b41:	83 c4 04             	add    sp,0x4
   52b44:	0b c0                	or     ax,ax
   52b46:	74 0c                	je     0x52b54
   52b48:	83 3e 94 d5 00       	cmp    WORD PTR ds:0xd594,0x0
   52b4d:	74 05                	je     0x52b54
   52b4f:	a1 94 d5             	mov    ax,ds:0xd594
   52b52:	eb c5                	jmp    0x52b19
   52b54:	83 3e 96 d5 00       	cmp    WORD PTR ds:0xd596,0x0
   52b59:	74 02                	je     0x52b5d
   52b5b:	eb b9                	jmp    0x52b16
   52b5d:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52b61:	6b db 28             	imul   bx,bx,0x28
   52b64:	b8 88 01             	mov    ax,0x188
   52b67:	8e c0                	mov    es,ax
   52b69:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52b6e:	6b db 2e             	imul   bx,bx,0x2e
   52b71:	b8 88 01             	mov    ax,0x188
   52b74:	8e c0                	mov    es,ax
   52b76:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52b7c:	7c 06                	jl     0x52b84
   52b7e:	c7 06 74 d5 06 00    	mov    WORD PTR ds:0xd574,0x6
   52b84:	83 3e e2 d5 1e       	cmp    WORD PTR ds:0xd5e2,0x1e
   52b89:	74 03                	je     0x52b8e
   52b8b:	e9 12 05             	jmp    0x530a0
   52b8e:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52b92:	6b db 5c             	imul   bx,bx,0x5c
   52b95:	b8 88 01             	mov    ax,0x188
   52b98:	ba 06 91             	mov    dx,0x9106
   52b9b:	83 c2 0c             	add    dx,0xc
   52b9e:	03 da                	add    bx,dx
   52ba0:	8e c0                	mov    es,ax
   52ba2:	26 c7 07 fb ff       	mov    WORD PTR es:[bx],0xfffb
   52ba7:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52bab:	6b db 2e             	imul   bx,bx,0x2e
   52bae:	b8 88 01             	mov    ax,0x188
   52bb1:	ba c8 9a             	mov    dx,0x9ac8
   52bb4:	83 c2 02             	add    dx,0x2
   52bb7:	03 da                	add    bx,dx
   52bb9:	8e c0                	mov    es,ax
   52bbb:	26 c7 07 fb ff       	mov    WORD PTR es:[bx],0xfffb
   52bc0:	e9 dd 04             	jmp    0x530a0
   52bc3:	e9 da 04             	jmp    0x530a0
   52bc6:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52bca:	6a 07                	push   0x7
   52bcc:	0e                   	push   cs
   52bcd:	e8 d5 72             	call   0x59ea5
   52bd0:	83 c4 04             	add    sp,0x4
   52bd3:	0b c0                	or     ax,ax
   52bd5:	74 03                	je     0x52bda
   52bd7:	e9 c6 04             	jmp    0x530a0
   52bda:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52bde:	6a 04                	push   0x4
   52be0:	0e                   	push   cs
   52be1:	e8 c1 72             	call   0x59ea5
   52be4:	83 c4 04             	add    sp,0x4
   52be7:	0b c0                	or     ax,ax
   52be9:	74 09                	je     0x52bf4
   52beb:	a1 92 d5             	mov    ax,ds:0xd592
   52bee:	3b 06 90 d5          	cmp    ax,WORD PTR ds:0xd590
   52bf2:	7c 14                	jl     0x52c08
   52bf4:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52bf8:	6a 04                	push   0x4
   52bfa:	0e                   	push   cs
   52bfb:	e8 a7 72             	call   0x59ea5
   52bfe:	83 c4 04             	add    sp,0x4
   52c01:	0b c0                	or     ax,ax
   52c03:	74 03                	je     0x52c08
   52c05:	e9 71 04             	jmp    0x53079
   52c08:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52c0c:	6b db 28             	imul   bx,bx,0x28
   52c0f:	b8 88 01             	mov    ax,0x188
   52c12:	8e c0                	mov    es,ax
   52c14:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52c19:	6b db 2e             	imul   bx,bx,0x2e
   52c1c:	b8 88 01             	mov    ax,0x188
   52c1f:	8e c0                	mov    es,ax
   52c21:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52c27:	7d 03                	jge    0x52c2c
   52c29:	e9 4d 04             	jmp    0x53079
   52c2c:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52c30:	6a 02                	push   0x2
   52c32:	0e                   	push   cs
   52c33:	e8 6f 72             	call   0x59ea5
   52c36:	83 c4 04             	add    sp,0x4
   52c39:	0b c0                	or     ax,ax
   52c3b:	74 48                	je     0x52c85
   52c3d:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52c41:	6b db 28             	imul   bx,bx,0x28
   52c44:	a1 8e d5             	mov    ax,ds:0xd58e
   52c47:	d1 e0                	shl    ax,1
   52c49:	03 d8                	add    bx,ax
   52c4b:	b8 88 01             	mov    ax,0x188
   52c4e:	8b 16 8a d5          	mov    dx,WORD PTR ds:0xd58a
   52c52:	8e c0                	mov    es,ax
   52c54:	26 89 97 88 a0       	mov    WORD PTR es:[bx-0x5f78],dx
   52c59:	83 3e 8c d5 00       	cmp    WORD PTR ds:0xd58c,0x0
   52c5e:	75 03                	jne    0x52c63
   52c60:	e9 15 03             	jmp    0x52f78
   52c63:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52c67:	6b db 28             	imul   bx,bx,0x28
   52c6a:	a1 8c d5             	mov    ax,ds:0xd58c
   52c6d:	d1 e0                	shl    ax,1
   52c6f:	03 d8                	add    bx,ax
   52c71:	b8 88 01             	mov    ax,0x188
   52c74:	8b 16 88 d5          	mov    dx,WORD PTR ds:0xd588
   52c78:	8e c0                	mov    es,ax
   52c7a:	26 89 97 88 a0       	mov    WORD PTR es:[bx-0x5f78],dx
   52c7f:	e9 f6 02             	jmp    0x52f78
   52c82:	e9 f3 02             	jmp    0x52f78
   52c85:	83 3e e2 d5 10       	cmp    WORD PTR ds:0xd5e2,0x10
   52c8a:	74 03                	je     0x52c8f
   52c8c:	e9 a8 00             	jmp    0x52d37
   52c8f:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   52c94:	eb 1d                	jmp    0x52cb3
   52c96:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52c9a:	6b db 28             	imul   bx,bx,0x28
   52c9d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   52ca0:	d1 e0                	shl    ax,1
   52ca2:	03 d8                	add    bx,ax
   52ca4:	b8 88 01             	mov    ax,0x188
   52ca7:	8e c0                	mov    es,ax
   52ca9:	26 c7 87 9e a0 00 00 	mov    WORD PTR es:[bx-0x5f62],0x0
   52cb0:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   52cb3:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   52cb7:	7e dd                	jle    0x52c96
   52cb9:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52cbd:	6b db 28             	imul   bx,bx,0x28
   52cc0:	b8 88 01             	mov    ax,0x188
   52cc3:	8e c0                	mov    es,ax
   52cc5:	26 c7 87 ac a0 00 00 	mov    WORD PTR es:[bx-0x5f54],0x0
   52ccc:	83 3e e0 d5 19       	cmp    WORD PTR ds:0xd5e0,0x19
   52cd1:	7d 14                	jge    0x52ce7
   52cd3:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52cd7:	6b db 28             	imul   bx,bx,0x28
   52cda:	b8 88 01             	mov    ax,0x188
   52cdd:	8e c0                	mov    es,ax
   52cdf:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   52ce5:	74 1b                	je     0x52d02
   52ce7:	83 3e e0 d5 18       	cmp    WORD PTR ds:0xd5e0,0x18
   52cec:	7e 2e                	jle    0x52d1c
   52cee:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52cf2:	6b db 28             	imul   bx,bx,0x28
   52cf5:	b8 88 01             	mov    ax,0x188
   52cf8:	8e c0                	mov    es,ax
   52cfa:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   52d00:	75 1a                	jne    0x52d1c
   52d02:	6a 02                	push   0x2
   52d04:	6a 01                	push   0x1
   52d06:	6a 01                	push   0x1
   52d08:	a1 e0 d5             	mov    ax,ds:0xd5e0
   52d0b:	6b c0 28             	imul   ax,ax,0x28
   52d0e:	05 98 a0             	add    ax,0xa098
   52d11:	68 88 01             	push   0x188
   52d14:	50                   	push   ax
   52d15:	0e                   	push   cs
   52d16:	e8 39 71             	call   0x59e52
   52d19:	83 c4 0a             	add    sp,0xa
   52d1c:	1e                   	push   ds
   52d1d:	68 d0 67             	push   0x67d0
   52d20:	68 88 01             	push   0x188
   52d23:	68 10 a5             	push   0xa510
   52d26:	9a a3 49 00 00       	call   0x0:0x49a3
   52d2b:	83 c4 08             	add    sp,0x8
   52d2e:	c7 06 1a 63 14 00    	mov    WORD PTR ds:0x631a,0x14
   52d34:	e9 41 02             	jmp    0x52f78
   52d37:	83 3e e2 d5 11       	cmp    WORD PTR ds:0xd5e2,0x11
   52d3c:	74 03                	je     0x52d41
   52d3e:	e9 37 02             	jmp    0x52f78
   52d41:	a1 e0 d5             	mov    ax,ds:0xd5e0
   52d44:	a3 76 d5             	mov    ds:0xd576,ax
   52d47:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52d4b:	0e                   	push   cs
   52d4c:	e8 41 7b             	call   0x5a890
   52d4f:	59                   	pop    cx
   52d50:	6a 00                	push   0x0
   52d52:	68 00 80             	push   0x8000
   52d55:	9a 79 17 00 00       	call   0x0:0x1779
   52d5a:	99                   	cwd
   52d5b:	50                   	push   ax
   52d5c:	52                   	push   dx
   52d5d:	33 d2                	xor    dx,dx
   52d5f:	b8 07 00             	mov    ax,0x7
   52d62:	59                   	pop    cx
   52d63:	5b                   	pop    bx
   52d64:	9a 42 12 00 00       	call   0x0:0x1242
   52d69:	52                   	push   dx
   52d6a:	50                   	push   ax
   52d6b:	9a df 12 00 00       	call   0x0:0x12df
   52d70:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   52d73:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   52d77:	74 03                	je     0x52d7c
   52d79:	e9 9d 00             	jmp    0x52e19
   52d7c:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52d80:	6b db 28             	imul   bx,bx,0x28
   52d83:	b8 88 01             	mov    ax,0x188
   52d86:	8e c0                	mov    es,ax
   52d88:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52d8d:	6b db 2e             	imul   bx,bx,0x2e
   52d90:	b8 88 01             	mov    ax,0x188
   52d93:	8e c0                	mov    es,ax
   52d95:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52d9b:	7e 7c                	jle    0x52e19
   52d9d:	6a 00                	push   0x0
   52d9f:	68 00 80             	push   0x8000
   52da2:	9a 79 17 00 00       	call   0x0:0x1779
   52da7:	99                   	cwd
   52da8:	50                   	push   ax
   52da9:	a1 be d5             	mov    ax,ds:0xd5be
   52dac:	40                   	inc    ax
   52dad:	52                   	push   dx
   52dae:	99                   	cwd
   52daf:	59                   	pop    cx
   52db0:	5b                   	pop    bx
   52db1:	9a 42 12 00 00       	call   0x0:0x1242
   52db6:	52                   	push   dx
   52db7:	50                   	push   ax
   52db8:	9a df 12 00 00       	call   0x0:0x12df
   52dbd:	50                   	push   ax
   52dbe:	6a 00                	push   0x0
   52dc0:	68 00 80             	push   0x8000
   52dc3:	9a 79 17 00 00       	call   0x0:0x1779
   52dc8:	99                   	cwd
   52dc9:	50                   	push   ax
   52dca:	52                   	push   dx
   52dcb:	33 d2                	xor    dx,dx
   52dcd:	b8 03 00             	mov    ax,0x3
   52dd0:	59                   	pop    cx
   52dd1:	5b                   	pop    bx
   52dd2:	9a 42 12 00 00       	call   0x0:0x1242
   52dd7:	52                   	push   dx
   52dd8:	50                   	push   ax
   52dd9:	9a df 12 00 00       	call   0x0:0x12df
   52dde:	5a                   	pop    dx
   52ddf:	03 d0                	add    dx,ax
   52de1:	89 16 70 d5          	mov    WORD PTR ds:0xd570,dx
   52de5:	1e                   	push   ds
   52de6:	68 d5 67             	push   0x67d5
   52de9:	68 88 01             	push   0x188
   52dec:	68 10 a5             	push   0xa510
   52def:	9a a3 49 00 00       	call   0x0:0x49a3
   52df4:	83 c4 08             	add    sp,0x8
   52df7:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   52dfd:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52e01:	ff 36 70 d5          	push   WORD PTR ds:0xd570
   52e05:	0e                   	push   cs
   52e06:	e8 15 89             	call   0x5b71e
   52e09:	83 c4 04             	add    sp,0x4
   52e0c:	0e                   	push   cs
   52e0d:	e8 6c c3             	call   0x5f17c
   52e10:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   52e16:	e9 06 01             	jmp    0x52f1f
   52e19:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   52e1d:	75 79                	jne    0x52e98
   52e1f:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52e23:	6b db 28             	imul   bx,bx,0x28
   52e26:	b8 88 01             	mov    ax,0x188
   52e29:	8e c0                	mov    es,ax
   52e2b:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52e30:	6b db 2e             	imul   bx,bx,0x2e
   52e33:	b8 88 01             	mov    ax,0x188
   52e36:	8e c0                	mov    es,ax
   52e38:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52e3e:	7e 58                	jle    0x52e98
   52e40:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   52e44:	6b db 28             	imul   bx,bx,0x28
   52e47:	b8 88 01             	mov    ax,0x188
   52e4a:	8e c0                	mov    es,ax
   52e4c:	26 8b 87 98 a0       	mov    ax,WORD PTR es:[bx-0x5f68]
   52e51:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52e55:	6b db 28             	imul   bx,bx,0x28
   52e58:	ba 88 01             	mov    dx,0x188
   52e5b:	8e c2                	mov    es,dx
   52e5d:	26 89 87 98 a0       	mov    WORD PTR es:[bx-0x5f68],ax
   52e62:	1e                   	push   ds
   52e63:	68 d6 67             	push   0x67d6
   52e66:	68 88 01             	push   0x188
   52e69:	68 10 a5             	push   0xa510
   52e6c:	9a a3 49 00 00       	call   0x0:0x49a3
   52e71:	83 c4 08             	add    sp,0x8
   52e74:	c7 06 1a 63 0f 00    	mov    WORD PTR ds:0x631a,0xf
   52e7a:	c7 06 74 d5 05 00    	mov    WORD PTR ds:0xd574,0x5
   52e80:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52e84:	6b db 28             	imul   bx,bx,0x28
   52e87:	b8 88 01             	mov    ax,0x188
   52e8a:	8b 16 de d5          	mov    dx,WORD PTR ds:0xd5de
   52e8e:	8e c0                	mov    es,ax
   52e90:	26 89 97 9a a0       	mov    WORD PTR es:[bx-0x5f66],dx
   52e95:	e9 87 00             	jmp    0x52f1f
   52e98:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   52e9c:	74 03                	je     0x52ea1
   52e9e:	e9 8c 00             	jmp    0x52f2d
   52ea1:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52ea5:	6b db 28             	imul   bx,bx,0x28
   52ea8:	b8 88 01             	mov    ax,0x188
   52eab:	8e c0                	mov    es,ax
   52ead:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52eb2:	6b db 2e             	imul   bx,bx,0x2e
   52eb5:	b8 88 01             	mov    ax,0x188
   52eb8:	8e c0                	mov    es,ax
   52eba:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52ec0:	7e 6b                	jle    0x52f2d
   52ec2:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52ec6:	6b db 28             	imul   bx,bx,0x28
   52ec9:	b8 88 01             	mov    ax,0x188
   52ecc:	8e c0                	mov    es,ax
   52ece:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   52ed3:	05 fe ff             	add    ax,0xfffe
   52ed6:	7e 16                	jle    0x52eee
   52ed8:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52edc:	6b db 28             	imul   bx,bx,0x28
   52edf:	b8 88 01             	mov    ax,0x188
   52ee2:	8e c0                	mov    es,ax
   52ee4:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   52ee9:	05 fe ff             	add    ax,0xfffe
   52eec:	eb 02                	jmp    0x52ef0
   52eee:	33 c0                	xor    ax,ax
   52ef0:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52ef4:	6b db 28             	imul   bx,bx,0x28
   52ef7:	ba 88 01             	mov    dx,0x188
   52efa:	8e c2                	mov    es,dx
   52efc:	26 89 87 9c a0       	mov    WORD PTR es:[bx-0x5f64],ax
   52f01:	1e                   	push   ds
   52f02:	68 eb 67             	push   0x67eb
   52f05:	68 88 01             	push   0x188
   52f08:	68 10 a5             	push   0xa510
   52f0b:	9a a3 49 00 00       	call   0x0:0x49a3
   52f10:	83 c4 08             	add    sp,0x8
   52f13:	c7 06 1a 63 0b 00    	mov    WORD PTR ds:0x631a,0xb
   52f19:	c7 06 74 d5 05 00    	mov    WORD PTR ds:0xd574,0x5
   52f1f:	0e                   	push   cs
   52f20:	e8 4e 94             	call   0x5c371
   52f23:	6a 0a                	push   0xa
   52f25:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   52f2a:	59                   	pop    cx
   52f2b:	eb 4b                	jmp    0x52f78
   52f2d:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   52f31:	6b db 28             	imul   bx,bx,0x28
   52f34:	b8 88 01             	mov    ax,0x188
   52f37:	8e c0                	mov    es,ax
   52f39:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   52f3e:	6b db 2e             	imul   bx,bx,0x2e
   52f41:	b8 88 01             	mov    ax,0x188
   52f44:	8e c0                	mov    es,ax
   52f46:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   52f4c:	7c 2a                	jl     0x52f78
   52f4e:	c7 06 70 d5 00 00    	mov    WORD PTR ds:0xd570,0x0
   52f54:	c7 06 9c d5 00 00    	mov    WORD PTR ds:0xd59c,0x0
   52f5a:	c7 06 74 d5 06 00    	mov    WORD PTR ds:0xd574,0x6
   52f60:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   52f66:	1e                   	push   ds
   52f67:	68 04 68             	push   0x6804
   52f6a:	68 88 01             	push   0x188
   52f6d:	68 10 a5             	push   0xa510
   52f70:	9a a3 49 00 00       	call   0x0:0x49a3
   52f75:	83 c4 08             	add    sp,0x8
   52f78:	ff 36 98 d5          	push   WORD PTR ds:0xd598
   52f7c:	6a 01                	push   0x1
   52f7e:	0e                   	push   cs
   52f7f:	e8 23 6f             	call   0x59ea5
   52f82:	83 c4 04             	add    sp,0x4
   52f85:	0b c0                	or     ax,ax
   52f87:	74 13                	je     0x52f9c
   52f89:	ff 36 84 d5          	push   WORD PTR ds:0xd584
   52f8d:	ff 36 e2 d5          	push   WORD PTR ds:0xd5e2
   52f91:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   52f95:	0e                   	push   cs
   52f96:	e8 b3 8c             	call   0x5bc4c
   52f99:	83 c4 06             	add    sp,0x6
   52f9c:	c7 06 74 d5 05 00    	mov    WORD PTR ds:0xd574,0x5
   52fa2:	c7 06 66 d5 08 00    	mov    WORD PTR ds:0xd566,0x8
   52fa8:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   52fac:	4b                   	dec    bx
   52fad:	83 fb 1e             	cmp    bx,0x1e
   52fb0:	76 03                	jbe    0x52fb5
   52fb2:	e9 ba 00             	jmp    0x5306f
   52fb5:	d1 e3                	shl    bx,1
   52fb7:	2e ff a7 52 94       	jmp    WORD PTR cs:[bx-0x6bae]
   52fbc:	c7 06 1a 63 28 00    	mov    WORD PTR ds:0x631a,0x28
   52fc2:	e9 db 00             	jmp    0x530a0
   52fc5:	c7 06 1a 63 0b 00    	mov    WORD PTR ds:0x631a,0xb
   52fcb:	e9 d2 00             	jmp    0x530a0
   52fce:	c7 06 1a 63 0c 00    	mov    WORD PTR ds:0x631a,0xc
   52fd4:	e9 c9 00             	jmp    0x530a0
   52fd7:	c7 06 1a 63 0d 00    	mov    WORD PTR ds:0x631a,0xd
   52fdd:	e9 c0 00             	jmp    0x530a0
   52fe0:	c7 06 1a 63 0e 00    	mov    WORD PTR ds:0x631a,0xe
   52fe6:	e9 b7 00             	jmp    0x530a0
   52fe9:	c7 06 1a 63 0f 00    	mov    WORD PTR ds:0x631a,0xf
   52fef:	e9 ae 00             	jmp    0x530a0
   52ff2:	c7 06 1a 63 10 00    	mov    WORD PTR ds:0x631a,0x10
   52ff8:	e9 a5 00             	jmp    0x530a0
   52ffb:	c7 06 1a 63 11 00    	mov    WORD PTR ds:0x631a,0x11
   53001:	e9 9c 00             	jmp    0x530a0
   53004:	c7 06 1a 63 29 00    	mov    WORD PTR ds:0x631a,0x29
   5300a:	e9 93 00             	jmp    0x530a0
   5300d:	c7 06 1a 63 12 00    	mov    WORD PTR ds:0x631a,0x12
   53013:	e9 8a 00             	jmp    0x530a0
   53016:	c7 06 1a 63 13 00    	mov    WORD PTR ds:0x631a,0x13
   5301c:	e9 81 00             	jmp    0x530a0
   5301f:	c7 06 1a 63 14 00    	mov    WORD PTR ds:0x631a,0x14
   53025:	eb 79                	jmp    0x530a0
   53027:	c7 06 1a 63 15 00    	mov    WORD PTR ds:0x631a,0x15
   5302d:	eb 71                	jmp    0x530a0
   5302f:	c7 06 1a 63 16 00    	mov    WORD PTR ds:0x631a,0x16
   53035:	eb 69                	jmp    0x530a0
   53037:	c7 06 1a 63 17 00    	mov    WORD PTR ds:0x631a,0x17
   5303d:	eb 61                	jmp    0x530a0
   5303f:	c7 06 1a 63 18 00    	mov    WORD PTR ds:0x631a,0x18
   53045:	eb 59                	jmp    0x530a0
   53047:	c7 06 1a 63 19 00    	mov    WORD PTR ds:0x631a,0x19
   5304d:	eb 51                	jmp    0x530a0
   5304f:	c7 06 1a 63 2a 00    	mov    WORD PTR ds:0x631a,0x2a
   53055:	eb 49                	jmp    0x530a0
   53057:	c7 06 1a 63 1a 00    	mov    WORD PTR ds:0x631a,0x1a
   5305d:	eb 41                	jmp    0x530a0
   5305f:	c7 06 1a 63 2b 00    	mov    WORD PTR ds:0x631a,0x2b
   53065:	eb 39                	jmp    0x530a0
   53067:	c7 06 1a 63 1b 00    	mov    WORD PTR ds:0x631a,0x1b
   5306d:	eb 31                	jmp    0x530a0
   5306f:	c7 06 1a 63 00 00    	mov    WORD PTR ds:0x631a,0x0
   53075:	eb 29                	jmp    0x530a0
   53077:	eb 27                	jmp    0x530a0
   53079:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5307d:	6b db 28             	imul   bx,bx,0x28
   53080:	b8 88 01             	mov    ax,0x188
   53083:	8e c0                	mov    es,ax
   53085:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   5308a:	6b db 2e             	imul   bx,bx,0x2e
   5308d:	b8 88 01             	mov    ax,0x188
   53090:	8e c0                	mov    es,ax
   53092:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   53098:	7c 06                	jl     0x530a0
   5309a:	c7 06 74 d5 06 00    	mov    WORD PTR ds:0xd574,0x6
   530a0:	c9                   	leave
   530a1:	cb                   	retf
   530a2:	6c                   	ins    BYTE PTR es:[di],dx
   530a3:	93                   	xchg   bx,ax
   530a4:	6c                   	ins    BYTE PTR es:[di],dx
   530a5:	93                   	xchg   bx,ax
   530a6:	75 93                	jne    0x5303b
   530a8:	7e 93                	jle    0x5303d
   530aa:	87 93 90 93          	xchg   WORD PTR [bp+di-0x6c70],dx
   530ae:	6c                   	ins    BYTE PTR es:[di],dx
   530af:	93                   	xchg   bx,ax
   530b0:	1f                   	pop    ds
   530b1:	94                   	xchg   sp,ax
   530b2:	99                   	cwd
   530b3:	93                   	xchg   bx,ax
   530b4:	a2 93 ab             	mov    ds:0xab93,al
   530b7:	93                   	xchg   bx,ax
   530b8:	6c                   	ins    BYTE PTR es:[di],dx
   530b9:	93                   	xchg   bx,ax
   530ba:	b4 93                	mov    ah,0x93
   530bc:	bd 93 c6             	mov    bp,0xc693
   530bf:	93                   	xchg   bx,ax
   530c0:	1f                   	pop    ds
   530c1:	94                   	xchg   sp,ax
   530c2:	1f                   	pop    ds
   530c3:	94                   	xchg   sp,ax
   530c4:	cf                   	iret
   530c5:	93                   	xchg   bx,ax
   530c6:	d7                   	xlat   BYTE PTR ds:[bx]
   530c7:	93                   	xchg   bx,ax
   530c8:	df 93 e7 93          	fist   WORD PTR [bp+di-0x6c19]
   530cc:	ef                   	out    dx,ax
   530cd:	93                   	xchg   bx,ax
   530ce:	1f                   	pop    ds
   530cf:	94                   	xchg   sp,ax
   530d0:	f7 93 1f 94          	not    WORD PTR [bp+di-0x6be1]
   530d4:	ff 93 6c 93          	call   WORD PTR [bp+di-0x6c94]
   530d8:	07                   	pop    es
   530d9:	94                   	xchg   sp,ax
   530da:	6c                   	ins    BYTE PTR es:[di],dx
   530db:	93                   	xchg   bx,ax
   530dc:	0f 94 17             	sete   BYTE PTR [bx]
   530df:	94                   	xchg   sp,ax
   530e0:	55                   	push   bp
   530e1:	8b ec                	mov    bp,sp
   530e3:	83 ec 04             	sub    sp,0x4
   530e6:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   530eb:	83 3e 6a d5 01       	cmp    WORD PTR ds:0xd56a,0x1
   530f0:	74 03                	je     0x530f5
   530f2:	e9 d6 00             	jmp    0x531cb
   530f5:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   530f9:	6b db 28             	imul   bx,bx,0x28
   530fc:	b8 88 01             	mov    ax,0x188
   530ff:	8e c0                	mov    es,ax
   53101:	26 83 bf ac a0 00    	cmp    WORD PTR es:[bx-0x5f54],0x0
   53107:	74 03                	je     0x5310c
   53109:	e9 bf 00             	jmp    0x531cb
   5310c:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   53110:	6b db 28             	imul   bx,bx,0x28
   53113:	b8 88 01             	mov    ax,0x188
   53116:	8e c0                	mov    es,ax
   53118:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   5311e:	7f 03                	jg     0x53123
   53120:	e9 a8 00             	jmp    0x531cb
   53123:	a1 9c d5             	mov    ax,ds:0xd59c
   53126:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   53129:	ff 36 6c d5          	push   WORD PTR ds:0xd56c
   5312d:	ff 36 9c d5          	push   WORD PTR ds:0xd59c
   53131:	0e                   	push   cs
   53132:	e8 e9 85             	call   0x5b71e
   53135:	83 c4 04             	add    sp,0x4
   53138:	0e                   	push   cs
   53139:	e8 35 92             	call   0x5c371
   5313c:	c7 06 1a 63 2e 00    	mov    WORD PTR ds:0x631a,0x2e
   53142:	ff 36 6e d5          	push   WORD PTR ds:0xd56e
   53146:	1e                   	push   ds
   53147:	68 05 68             	push   0x6805
   5314a:	0e                   	push   cs
   5314b:	e8 ed 81             	call   0x5b33b
   5314e:	83 c4 06             	add    sp,0x6
   53151:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   53157:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   5315b:	0e                   	push   cs
   5315c:	e8 3f 8c             	call   0x5bd9e
   5315f:	59                   	pop    cx
   53160:	6a 0a                	push   0xa
   53162:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   53167:	59                   	pop    cx
   53168:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   5316c:	6b db 28             	imul   bx,bx,0x28
   5316f:	b8 88 01             	mov    ax,0x188
   53172:	8e c0                	mov    es,ax
   53174:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   5317a:	7d 31                	jge    0x531ad
   5317c:	6a 00                	push   0x0
   5317e:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   53182:	6b db 28             	imul   bx,bx,0x28
   53185:	b8 88 01             	mov    ax,0x188
   53188:	8e c0                	mov    es,ax
   5318a:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   5318f:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   53193:	6b db 28             	imul   bx,bx,0x28
   53196:	b8 88 01             	mov    ax,0x188
   53199:	8e c0                	mov    es,ax
   5319b:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   531a0:	0e                   	push   cs
   531a1:	e8 d3 76             	call   0x5a877
   531a4:	83 c4 06             	add    sp,0x6
   531a7:	c7 06 4c d5 00 00    	mov    WORD PTR ds:0xd54c,0x0
   531ad:	a1 de d5             	mov    ax,ds:0xd5de
   531b0:	a3 76 d5             	mov    ds:0xd576,ax
   531b3:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   531b9:	0e                   	push   cs
   531ba:	e8 b4 91             	call   0x5c371
   531bd:	6a 0a                	push   0xa
   531bf:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   531c4:	59                   	pop    cx
   531c5:	c7 06 6a d5 00 00    	mov    WORD PTR ds:0xd56a,0x0
   531cb:	83 3e 72 d5 01       	cmp    WORD PTR ds:0xd572,0x1
   531d0:	74 03                	je     0x531d5
   531d2:	e9 e1 00             	jmp    0x532b6
   531d5:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   531d9:	6b db 28             	imul   bx,bx,0x28
   531dc:	b8 88 01             	mov    ax,0x188
   531df:	8e c0                	mov    es,ax
   531e1:	26 83 bf ac a0 00    	cmp    WORD PTR es:[bx-0x5f54],0x0
   531e7:	74 03                	je     0x531ec
   531e9:	e9 ca 00             	jmp    0x532b6
   531ec:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   531f0:	6b db 28             	imul   bx,bx,0x28
   531f3:	b8 88 01             	mov    ax,0x188
   531f6:	8e c0                	mov    es,ax
   531f8:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   531fe:	7f 03                	jg     0x53203
   53200:	e9 b3 00             	jmp    0x532b6
   53203:	a1 6c d5             	mov    ax,ds:0xd56c
   53206:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   53209:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   5320d:	7e 06                	jle    0x53215
   5320f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   53212:	a3 9c d5             	mov    ds:0xd59c,ax
   53215:	ff 36 6e d5          	push   WORD PTR ds:0xd56e
   53219:	ff 36 9c d5          	push   WORD PTR ds:0xd59c
   5321d:	0e                   	push   cs
   5321e:	e8 fd 84             	call   0x5b71e
   53221:	83 c4 04             	add    sp,0x4
   53224:	0e                   	push   cs
   53225:	e8 49 91             	call   0x5c371
   53228:	c7 06 1a 63 2d 00    	mov    WORD PTR ds:0x631a,0x2d
   5322e:	ff 76 fe             	push   WORD PTR [bp-0x2]
   53231:	1e                   	push   ds
   53232:	68 1e 68             	push   0x681e
   53235:	0e                   	push   cs
   53236:	e8 02 81             	call   0x5b33b
   53239:	83 c4 06             	add    sp,0x6
   5323c:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   53242:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   53246:	0e                   	push   cs
   53247:	e8 54 8b             	call   0x5bd9e
   5324a:	59                   	pop    cx
   5324b:	6a 0a                	push   0xa
   5324d:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   53252:	59                   	pop    cx
   53253:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   53257:	6b db 28             	imul   bx,bx,0x28
   5325a:	b8 88 01             	mov    ax,0x188
   5325d:	8e c0                	mov    es,ax
   5325f:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   53265:	7d 31                	jge    0x53298
   53267:	6a 00                	push   0x0
   53269:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   5326d:	6b db 28             	imul   bx,bx,0x28
   53270:	b8 88 01             	mov    ax,0x188
   53273:	8e c0                	mov    es,ax
   53275:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   5327a:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   5327e:	6b db 28             	imul   bx,bx,0x28
   53281:	b8 88 01             	mov    ax,0x188
   53284:	8e c0                	mov    es,ax
   53286:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   5328b:	0e                   	push   cs
   5328c:	e8 e8 75             	call   0x5a877
   5328f:	83 c4 06             	add    sp,0x6
   53292:	c7 06 4c d5 00 00    	mov    WORD PTR ds:0xd54c,0x0
   53298:	a1 de d5             	mov    ax,ds:0xd5de
   5329b:	a3 76 d5             	mov    ds:0xd576,ax
   5329e:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   532a4:	0e                   	push   cs
   532a5:	e8 c9 90             	call   0x5c371
   532a8:	6a 0a                	push   0xa
   532aa:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   532af:	59                   	pop    cx
   532b0:	c7 06 72 d5 00 00    	mov    WORD PTR ds:0xd572,0x0
   532b6:	c9                   	leave
   532b7:	cb                   	retf
   532b8:	55                   	push   bp
   532b9:	8b ec                	mov    bp,sp
   532bb:	83 ec 42             	sub    sp,0x42
   532be:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   532c3:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   532c8:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   532cd:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   532d2:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   532d7:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   532dc:	83 3e 4e d5 00       	cmp    WORD PTR ds:0xd54e,0x0
   532e1:	75 03                	jne    0x532e6
   532e3:	e9 f9 02             	jmp    0x535df
   532e6:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   532eb:	e9 ca 00             	jmp    0x533b8
   532ee:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   532f1:	6b db 28             	imul   bx,bx,0x28
   532f4:	b8 88 01             	mov    ax,0x188
   532f7:	8e c0                	mov    es,ax
   532f9:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   532ff:	75 77                	jne    0x53378
   53301:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53304:	6b db 28             	imul   bx,bx,0x28
   53307:	b8 88 01             	mov    ax,0x188
   5330a:	8e c0                	mov    es,ax
   5330c:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   53312:	7d 04                	jge    0x53318
   53314:	33 c0                	xor    ax,ax
   53316:	eb 10                	jmp    0x53328
   53318:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   5331b:	6b db 28             	imul   bx,bx,0x28
   5331e:	b8 88 01             	mov    ax,0x188
   53321:	8e c0                	mov    es,ax
   53323:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   53328:	01 46 fe             	add    WORD PTR [bp-0x2],ax
   5332b:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   5332e:	6b db 28             	imul   bx,bx,0x28
   53331:	b8 88 01             	mov    ax,0x188
   53334:	8e c0                	mov    es,ax
   53336:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   5333b:	6b db 2e             	imul   bx,bx,0x2e
   5333e:	b8 88 01             	mov    ax,0x188
   53341:	8e c0                	mov    es,ax
   53343:	26 83 bf 2c 9f ff    	cmp    WORD PTR es:[bx-0x60d4],0xffff
   53349:	7e 13                	jle    0x5335e
   5334b:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   5334e:	6b db 28             	imul   bx,bx,0x28
   53351:	b8 88 01             	mov    ax,0x188
   53354:	8e c0                	mov    es,ax
   53356:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   5335b:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   5335e:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53361:	6b db 28             	imul   bx,bx,0x28
   53364:	b8 88 01             	mov    ax,0x188
   53367:	8e c0                	mov    es,ax
   53369:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   5336f:	7e 44                	jle    0x533b5
   53371:	ff 46 f6             	inc    WORD PTR [bp-0xa]
   53374:	eb 3f                	jmp    0x533b5
   53376:	eb 3d                	jmp    0x533b5
   53378:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   5337b:	6b db 28             	imul   bx,bx,0x28
   5337e:	b8 88 01             	mov    ax,0x188
   53381:	8e c0                	mov    es,ax
   53383:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   53389:	7d 04                	jge    0x5338f
   5338b:	33 c0                	xor    ax,ax
   5338d:	eb 10                	jmp    0x5339f
   5338f:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53392:	6b db 28             	imul   bx,bx,0x28
   53395:	b8 88 01             	mov    ax,0x188
   53398:	8e c0                	mov    es,ax
   5339a:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   5339f:	01 46 fc             	add    WORD PTR [bp-0x4],ax
   533a2:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   533a5:	6b db 28             	imul   bx,bx,0x28
   533a8:	b8 88 01             	mov    ax,0x188
   533ab:	8e c0                	mov    es,ax
   533ad:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   533b2:	01 46 f8             	add    WORD PTR [bp-0x8],ax
   533b5:	ff 46 e4             	inc    WORD PTR [bp-0x1c]
   533b8:	83 7e e4 1c          	cmp    WORD PTR [bp-0x1c],0x1c
   533bc:	7f 03                	jg     0x533c1
   533be:	e9 2d ff             	jmp    0x532ee
   533c1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   533c4:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   533c7:	01 46 f4             	add    WORD PTR [bp-0xc],ax
   533ca:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   533cd:	bb 0a 00             	mov    bx,0xa
   533d0:	99                   	cwd
   533d1:	f7 fb                	idiv   bx
   533d3:	50                   	push   ax
   533d4:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   533d7:	bb 0a 00             	mov    bx,0xa
   533da:	99                   	cwd
   533db:	f7 fb                	idiv   bx
   533dd:	5a                   	pop    dx
   533de:	2b d0                	sub    dx,ax
   533e0:	01 56 f4             	add    WORD PTR [bp-0xc],dx
   533e3:	83 3e 4e d5 00       	cmp    WORD PTR ds:0xd54e,0x0
   533e8:	74 04                	je     0x533ee
   533ea:	83 46 f4 0a          	add    WORD PTR [bp-0xc],0xa
   533ee:	83 3e 50 d5 00       	cmp    WORD PTR ds:0xd550,0x0
   533f3:	74 04                	je     0x533f9
   533f5:	83 6e f4 0a          	sub    WORD PTR [bp-0xc],0xa
   533f9:	a1 58 d5             	mov    ax,ds:0xd558
   533fc:	99                   	cwd
   533fd:	f7 7e f6             	idiv   WORD PTR [bp-0xa]
   53400:	3d 02 00             	cmp    ax,0x2
   53403:	7c 04                	jl     0x53409
   53405:	83 46 f4 14          	add    WORD PTR [bp-0xc],0x14
   53409:	6a 00                	push   0x0
   5340b:	68 00 80             	push   0x8000
   5340e:	9a 79 17 00 00       	call   0x0:0x1779
   53413:	99                   	cwd
   53414:	50                   	push   ax
   53415:	52                   	push   dx
   53416:	33 d2                	xor    dx,dx
   53418:	b8 96 00             	mov    ax,0x96
   5341b:	59                   	pop    cx
   5341c:	5b                   	pop    bx
   5341d:	9a 42 12 00 00       	call   0x0:0x1242
   53422:	52                   	push   dx
   53423:	50                   	push   ax
   53424:	9a df 12 00 00       	call   0x0:0x12df
   53429:	50                   	push   ax
   5342a:	6a 00                	push   0x0
   5342c:	68 00 80             	push   0x8000
   5342f:	9a 79 17 00 00       	call   0x0:0x1779
   53434:	99                   	cwd
   53435:	50                   	push   ax
   53436:	52                   	push   dx
   53437:	33 d2                	xor    dx,dx
   53439:	b8 96 00             	mov    ax,0x96
   5343c:	59                   	pop    cx
   5343d:	5b                   	pop    bx
   5343e:	9a 42 12 00 00       	call   0x0:0x1242
   53443:	52                   	push   dx
   53444:	50                   	push   ax
   53445:	9a df 12 00 00       	call   0x0:0x12df
   5344a:	5a                   	pop    dx
   5344b:	03 d0                	add    dx,ax
   5344d:	83 c2 02             	add    dx,0x2
   53450:	3b 56 f4             	cmp    dx,WORD PTR [bp-0xc]
   53453:	7e 03                	jle    0x53458
   53455:	e9 87 01             	jmp    0x535df
   53458:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5345c:	6b db 28             	imul   bx,bx,0x28
   5345f:	b8 88 01             	mov    ax,0x188
   53462:	8e c0                	mov    es,ax
   53464:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   53469:	6b db 2e             	imul   bx,bx,0x2e
   5346c:	b8 88 01             	mov    ax,0x188
   5346f:	8e c0                	mov    es,ax
   53471:	26 83 bf 2c 9f 00    	cmp    WORD PTR es:[bx-0x60d4],0x0
   53477:	7f 03                	jg     0x5347c
   53479:	e9 63 01             	jmp    0x535df
   5347c:	a1 de d5             	mov    ax,ds:0xd5de
   5347f:	48                   	dec    ax
   53480:	bb 08 00             	mov    bx,0x8
   53483:	99                   	cwd
   53484:	f7 fb                	idiv   bx
   53486:	6b c0 06             	imul   ax,ax,0x6
   53489:	ba 88 01             	mov    dx,0x188
   5348c:	8b d8                	mov    bx,ax
   5348e:	8e c2                	mov    es,dx
   53490:	26 83 bf e0 5b 1e    	cmp    WORD PTR es:[bx+0x5be0],0x1e
   53496:	7c 03                	jl     0x5349b
   53498:	e9 44 01             	jmp    0x535df
   5349b:	a1 de d5             	mov    ax,ds:0xd5de
   5349e:	48                   	dec    ax
   5349f:	bb 08 00             	mov    bx,0x8
   534a2:	99                   	cwd
   534a3:	f7 fb                	idiv   bx
   534a5:	6b c0 06             	imul   ax,ax,0x6
   534a8:	ba 88 01             	mov    dx,0x188
   534ab:	8b d8                	mov    bx,ax
   534ad:	8e c2                	mov    es,dx
   534af:	26 83 bf e0 5b 13    	cmp    WORD PTR es:[bx+0x5be0],0x13
   534b5:	7c 1f                	jl     0x534d6
   534b7:	a1 de d5             	mov    ax,ds:0xd5de
   534ba:	48                   	dec    ax
   534bb:	bb 08 00             	mov    bx,0x8
   534be:	99                   	cwd
   534bf:	f7 fb                	idiv   bx
   534c1:	6b c0 06             	imul   ax,ax,0x6
   534c4:	ba 88 01             	mov    dx,0x188
   534c7:	8b d8                	mov    bx,ax
   534c9:	8e c2                	mov    es,dx
   534cb:	26 83 bf e0 5b 17    	cmp    WORD PTR es:[bx+0x5be0],0x17
   534d1:	7f 03                	jg     0x534d6
   534d3:	e9 09 01             	jmp    0x535df
   534d6:	0e                   	push   cs
   534d7:	e8 97 8e             	call   0x5c371
   534da:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   534e0:	c7 06 1a 63 1d 00    	mov    WORD PTR ds:0x631a,0x1d
   534e6:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   534ea:	1e                   	push   ds
   534eb:	68 34 68             	push   0x6834
   534ee:	0e                   	push   cs
   534ef:	e8 49 7e             	call   0x5b33b
   534f2:	83 c4 06             	add    sp,0x6
   534f5:	6a 0a                	push   0xa
   534f7:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   534fc:	59                   	pop    cx
   534fd:	6a 00                	push   0x0
   534ff:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53503:	6b db 28             	imul   bx,bx,0x28
   53506:	b8 88 01             	mov    ax,0x188
   53509:	8e c0                	mov    es,ax
   5350b:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   53510:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53514:	6b db 28             	imul   bx,bx,0x28
   53517:	b8 88 01             	mov    ax,0x188
   5351a:	8e c0                	mov    es,ax
   5351c:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   53521:	0e                   	push   cs
   53522:	e8 52 73             	call   0x5a877
   53525:	83 c4 06             	add    sp,0x6
   53528:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5352c:	6b db 28             	imul   bx,bx,0x28
   5352f:	b8 88 01             	mov    ax,0x188
   53532:	8e c0                	mov    es,ax
   53534:	26 c7 87 8a a0 00 00 	mov    WORD PTR es:[bx-0x5f76],0x0
   5353b:	b8 88 01             	mov    ax,0x188
   5353e:	33 d2                	xor    dx,dx
   53540:	8e c0                	mov    es,ax
   53542:	26 89 16 36 26       	mov    WORD PTR es:0x2636,dx
   53547:	8b c2                	mov    ax,dx
   53549:	ba 88 01             	mov    dx,0x188
   5354c:	8e c2                	mov    es,dx
   5354e:	26 a3 34 26          	mov    es:0x2634,ax
   53552:	b8 88 01             	mov    ax,0x188
   53555:	8e c0                	mov    es,ax
   53557:	26 c7 06 53 bb 01 00 	mov    WORD PTR es:0xbb53,0x1
   5355e:	eb 49                	jmp    0x535a9
   53560:	b8 88 01             	mov    ax,0x188
   53563:	8e c0                	mov    es,ax
   53565:	26 8b 1e 53 bb       	mov    bx,WORD PTR es:0xbb53
   5356a:	6b db 28             	imul   bx,bx,0x28
   5356d:	b8 88 01             	mov    ax,0x188
   53570:	8e c0                	mov    es,ax
   53572:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   53578:	7c 25                	jl     0x5359f
   5357a:	b8 88 01             	mov    ax,0x188
   5357d:	8e c0                	mov    es,ax
   5357f:	26 8b 1e 53 bb       	mov    bx,WORD PTR es:0xbb53
   53584:	6b db 28             	imul   bx,bx,0x28
   53587:	b8 88 01             	mov    ax,0x188
   5358a:	8e c0                	mov    es,ax
   5358c:	26 8b 9f 98 a0       	mov    bx,WORD PTR es:[bx-0x5f68]
   53591:	d1 e3                	shl    bx,1
   53593:	b8 88 01             	mov    ax,0x188
   53596:	8e c0                	mov    es,ax
   53598:	26 c7 87 32 26 01 00 	mov    WORD PTR es:[bx+0x2632],0x1
   5359f:	b8 88 01             	mov    ax,0x188
   535a2:	8e c0                	mov    es,ax
   535a4:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   535a9:	b8 88 01             	mov    ax,0x188
   535ac:	8e c0                	mov    es,ax
   535ae:	26 83 3e 53 bb 1c    	cmp    WORD PTR es:0xbb53,0x1c
   535b4:	7e aa                	jle    0x53560
   535b6:	b8 88 01             	mov    ax,0x188
   535b9:	8e c0                	mov    es,ax
   535bb:	26 83 3e 34 26 00    	cmp    WORD PTR es:0x2634,0x0
   535c1:	74 10                	je     0x535d3
   535c3:	b8 88 01             	mov    ax,0x188
   535c6:	8e c0                	mov    es,ax
   535c8:	26 83 3e 36 26 00    	cmp    WORD PTR es:0x2636,0x0
   535ce:	74 03                	je     0x535d3
   535d0:	e9 87 10             	jmp    0x5465a
   535d3:	c7 06 2e 63 01 00    	mov    WORD PTR ds:0x632e,0x1
   535d9:	e9 7e 10             	jmp    0x5465a
   535dc:	e9 7b 10             	jmp    0x5465a
   535df:	83 3e 4c d5 00       	cmp    WORD PTR ds:0xd54c,0x0
   535e4:	7f 03                	jg     0x535e9
   535e6:	e9 71 10             	jmp    0x5465a
   535e9:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   535ee:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   535f2:	6b db 28             	imul   bx,bx,0x28
   535f5:	b8 88 01             	mov    ax,0x188
   535f8:	8e c0                	mov    es,ax
   535fa:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   535ff:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   53602:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53606:	6b db 28             	imul   bx,bx,0x28
   53609:	b8 88 01             	mov    ax,0x188
   5360c:	8e c0                	mov    es,ax
   5360e:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   53613:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   53616:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5361a:	6b db 28             	imul   bx,bx,0x28
   5361d:	b8 88 01             	mov    ax,0x188
   53620:	8e c0                	mov    es,ax
   53622:	26 8b 87 96 a0       	mov    ax,WORD PTR es:[bx-0x5f6a]
   53627:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   5362a:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   5362f:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53632:	6b db 28             	imul   bx,bx,0x28
   53635:	b8 88 01             	mov    ax,0x188
   53638:	8e c0                	mov    es,ax
   5363a:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   5363f:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53642:	6b db 28             	imul   bx,bx,0x28
   53645:	b8 88 01             	mov    ax,0x188
   53648:	8e c0                	mov    es,ax
   5364a:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   5364f:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   53653:	0e                   	push   cs
   53654:	e8 7f 75             	call   0x5abd6
   53657:	83 c4 06             	add    sp,0x6
   5365a:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   53660:	e9 92 00             	jmp    0x536f5
   53663:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   53669:	eb 7c                	jmp    0x536e7
   5366b:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   5366e:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   53672:	3d 1b 00             	cmp    ax,0x1b
   53675:	7f 24                	jg     0x5369b
   53677:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   5367a:	03 06 ca d5          	add    ax,WORD PTR ds:0xd5ca
   5367e:	3d 01 00             	cmp    ax,0x1
   53681:	7c 18                	jl     0x5369b
   53683:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   53686:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   5368a:	3d 1b 00             	cmp    ax,0x1b
   5368d:	7f 0c                	jg     0x5369b
   5368f:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   53692:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   53696:	3d 01 00             	cmp    ax,0x1
   53699:	7d 07                	jge    0x536a2
   5369b:	c7 46 be 00 00       	mov    WORD PTR [bp-0x42],0x0
   536a0:	eb 1c                	jmp    0x536be
   536a2:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   536a5:	03 1e ca d5          	add    bx,WORD PTR ds:0xd5ca
   536a9:	6b db 38             	imul   bx,bx,0x38
   536ac:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   536af:	03 06 c8 d5          	add    ax,WORD PTR ds:0xd5c8
   536b3:	d1 e0                	shl    ax,1
   536b5:	03 d8                	add    bx,ax
   536b7:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   536bb:	89 46 be             	mov    WORD PTR [bp-0x42],ax
   536be:	83 7e be 00          	cmp    WORD PTR [bp-0x42],0x0
   536c2:	7e 1f                	jle    0x536e3
   536c4:	8b 46 be             	mov    ax,WORD PTR [bp-0x42]
   536c7:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   536cb:	74 16                	je     0x536e3
   536cd:	8b 5e be             	mov    bx,WORD PTR [bp-0x42]
   536d0:	6b db 28             	imul   bx,bx,0x28
   536d3:	b8 88 01             	mov    ax,0x188
   536d6:	8e c0                	mov    es,ax
   536d8:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   536de:	75 03                	jne    0x536e3
   536e0:	ff 46 ec             	inc    WORD PTR [bp-0x14]
   536e3:	ff 06 ca d5          	inc    WORD PTR ds:0xd5ca
   536e7:	83 3e ca d5 01       	cmp    WORD PTR ds:0xd5ca,0x1
   536ec:	7f 03                	jg     0x536f1
   536ee:	e9 7a ff             	jmp    0x5366b
   536f1:	ff 06 c8 d5          	inc    WORD PTR ds:0xd5c8
   536f5:	83 3e c8 d5 01       	cmp    WORD PTR ds:0xd5c8,0x1
   536fa:	7f 03                	jg     0x536ff
   536fc:	e9 64 ff             	jmp    0x53663
   536ff:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53702:	6b db 28             	imul   bx,bx,0x28
   53705:	b8 88 01             	mov    ax,0x188
   53708:	8e c0                	mov    es,ax
   5370a:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   53710:	7c 13                	jl     0x53725
   53712:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53715:	6b db 28             	imul   bx,bx,0x28
   53718:	b8 88 01             	mov    ax,0x188
   5371b:	8e c0                	mov    es,ax
   5371d:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   53723:	75 08                	jne    0x5372d
   53725:	c7 46 f4 64 00       	mov    WORD PTR [bp-0xc],0x64
   5372a:	e9 7f 00             	jmp    0x537ac
   5372d:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53730:	6b db 28             	imul   bx,bx,0x28
   53733:	b8 88 01             	mov    ax,0x188
   53736:	53                   	push   bx
   53737:	50                   	push   ax
   53738:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   5373b:	07                   	pop    es
   5373c:	5b                   	pop    bx
   5373d:	26 2b 87 92 a0       	sub    ax,WORD PTR es:[bx-0x5f6e]
   53742:	99                   	cwd
   53743:	33 c2                	xor    ax,dx
   53745:	2b c2                	sub    ax,dx
   53747:	3d 02 00             	cmp    ax,0x2
   5374a:	7d 2a                	jge    0x53776
   5374c:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   5374f:	6b db 28             	imul   bx,bx,0x28
   53752:	b8 88 01             	mov    ax,0x188
   53755:	53                   	push   bx
   53756:	50                   	push   ax
   53757:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   5375a:	07                   	pop    es
   5375b:	5b                   	pop    bx
   5375c:	26 2b 87 94 a0       	sub    ax,WORD PTR es:[bx-0x5f6c]
   53761:	99                   	cwd
   53762:	33 c2                	xor    ax,dx
   53764:	2b c2                	sub    ax,dx
   53766:	3d 02 00             	cmp    ax,0x2
   53769:	7d 0b                	jge    0x53776
   5376b:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   5376e:	6b c0 05             	imul   ax,ax,0x5
   53771:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   53774:	eb 36                	jmp    0x537ac
   53776:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   5377a:	7e 17                	jle    0x53793
   5377c:	83 3e 60 d5 00       	cmp    WORD PTR ds:0xd560,0x0
   53781:	74 07                	je     0x5378a
   53783:	c7 46 f4 46 00       	mov    WORD PTR [bp-0xc],0x46
   53788:	eb 22                	jmp    0x537ac
   5378a:	c7 46 f4 5a 00       	mov    WORD PTR [bp-0xc],0x5a
   5378f:	eb 1b                	jmp    0x537ac
   53791:	eb 19                	jmp    0x537ac
   53793:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   53797:	75 13                	jne    0x537ac
   53799:	83 3e 60 d5 00       	cmp    WORD PTR ds:0xd560,0x0
   5379e:	74 07                	je     0x537a7
   537a0:	c7 46 f4 05 00       	mov    WORD PTR [bp-0xc],0x5
   537a5:	eb 05                	jmp    0x537ac
   537a7:	c7 46 f4 32 00       	mov    WORD PTR [bp-0xc],0x32
   537ac:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   537b0:	6b db 28             	imul   bx,bx,0x28
   537b3:	b8 88 01             	mov    ax,0x188
   537b6:	8e c0                	mov    es,ax
   537b8:	26 83 bf ae a0 00    	cmp    WORD PTR es:[bx-0x5f52],0x0
   537be:	74 04                	je     0x537c4
   537c0:	83 46 f4 05          	add    WORD PTR [bp-0xc],0x5
   537c4:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   537c9:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   537ce:	eb 30                	jmp    0x53800
   537d0:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   537d3:	6b db 28             	imul   bx,bx,0x28
   537d6:	b8 88 01             	mov    ax,0x188
   537d9:	8e c0                	mov    es,ax
   537db:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   537e1:	75 1a                	jne    0x537fd
   537e3:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   537e6:	6b db 28             	imul   bx,bx,0x28
   537e9:	b8 88 01             	mov    ax,0x188
   537ec:	8e c0                	mov    es,ax
   537ee:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   537f4:	7e 07                	jle    0x537fd
   537f6:	c7 46 ea 01 00       	mov    WORD PTR [bp-0x16],0x1
   537fb:	eb 09                	jmp    0x53806
   537fd:	ff 46 e4             	inc    WORD PTR [bp-0x1c]
   53800:	83 7e e4 1c          	cmp    WORD PTR [bp-0x1c],0x1c
   53804:	7e ca                	jle    0x537d0
   53806:	83 7e ea 01          	cmp    WORD PTR [bp-0x16],0x1
   5380a:	74 03                	je     0x5380f
   5380c:	e9 05 02             	jmp    0x53a14
   5380f:	6a 00                	push   0x0
   53811:	68 00 80             	push   0x8000
   53814:	9a 79 17 00 00       	call   0x0:0x1779
   53819:	99                   	cwd
   5381a:	50                   	push   ax
   5381b:	52                   	push   dx
   5381c:	33 d2                	xor    dx,dx
   5381e:	b8 64 00             	mov    ax,0x64
   53821:	59                   	pop    cx
   53822:	5b                   	pop    bx
   53823:	9a 42 12 00 00       	call   0x0:0x1242
   53828:	52                   	push   dx
   53829:	50                   	push   ax
   5382a:	9a df 12 00 00       	call   0x0:0x12df
   5382f:	40                   	inc    ax
   53830:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   53833:	7e 03                	jle    0x53838
   53835:	e9 dc 01             	jmp    0x53a14
   53838:	83 7e ec 00          	cmp    WORD PTR [bp-0x14],0x0
   5383c:	75 03                	jne    0x53841
   5383e:	e9 2c 01             	jmp    0x5396d
   53841:	6a 00                	push   0x0
   53843:	68 00 80             	push   0x8000
   53846:	9a 79 17 00 00       	call   0x0:0x1779
   5384b:	99                   	cwd
   5384c:	50                   	push   ax
   5384d:	52                   	push   dx
   5384e:	33 d2                	xor    dx,dx
   53850:	b8 64 00             	mov    ax,0x64
   53853:	59                   	pop    cx
   53854:	5b                   	pop    bx
   53855:	9a 42 12 00 00       	call   0x0:0x1242
   5385a:	52                   	push   dx
   5385b:	50                   	push   ax
   5385c:	9a df 12 00 00       	call   0x0:0x12df
   53861:	40                   	inc    ax
   53862:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   53865:	6b d2 0a             	imul   dx,dx,0xa
   53868:	83 c2 46             	add    dx,0x46
   5386b:	3b c2                	cmp    ax,dx
   5386d:	7c 03                	jl     0x53872
   5386f:	e9 fb 00             	jmp    0x5396d
   53872:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   53878:	eb 5c                	jmp    0x538d6
   5387a:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   53880:	eb 49                	jmp    0x538cb
   53882:	8b 5e be             	mov    bx,WORD PTR [bp-0x42]
   53885:	6b db 28             	imul   bx,bx,0x28
   53888:	b8 88 01             	mov    ax,0x188
   5388b:	8e c0                	mov    es,ax
   5388d:	26 8b 87 96 a0       	mov    ax,WORD PTR es:[bx-0x5f6a]
   53892:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   53896:	75 2f                	jne    0x538c7
   53898:	6a 00                	push   0x0
   5389a:	68 00 80             	push   0x8000
   5389d:	9a 79 17 00 00       	call   0x0:0x1779
   538a2:	99                   	cwd
   538a3:	50                   	push   ax
   538a4:	52                   	push   dx
   538a5:	33 d2                	xor    dx,dx
   538a7:	b8 64 00             	mov    ax,0x64
   538aa:	59                   	pop    cx
   538ab:	5b                   	pop    bx
   538ac:	9a 42 12 00 00       	call   0x0:0x1242
   538b1:	52                   	push   dx
   538b2:	50                   	push   ax
   538b3:	9a df 12 00 00       	call   0x0:0x12df
   538b8:	40                   	inc    ax
   538b9:	3d 50 00             	cmp    ax,0x50
   538bc:	7d 09                	jge    0x538c7
   538be:	8b 46 be             	mov    ax,WORD PTR [bp-0x42]
   538c1:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   538c4:	e9 af 01             	jmp    0x53a76
   538c7:	ff 06 ca d5          	inc    WORD PTR ds:0xd5ca
   538cb:	83 3e ca d5 01       	cmp    WORD PTR ds:0xd5ca,0x1
   538d0:	7e b0                	jle    0x53882
   538d2:	ff 06 c8 d5          	inc    WORD PTR ds:0xd5c8
   538d6:	83 3e c8 d5 01       	cmp    WORD PTR ds:0xd5c8,0x1
   538db:	7e 9d                	jle    0x5387a
   538dd:	83 7e ec 01          	cmp    WORD PTR [bp-0x14],0x1
   538e1:	7e 25                	jle    0x53908
   538e3:	6a 00                	push   0x0
   538e5:	68 00 80             	push   0x8000
   538e8:	9a 79 17 00 00       	call   0x0:0x1779
   538ed:	99                   	cwd
   538ee:	50                   	push   ax
   538ef:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   538f2:	52                   	push   dx
   538f3:	99                   	cwd
   538f4:	59                   	pop    cx
   538f5:	5b                   	pop    bx
   538f6:	9a 42 12 00 00       	call   0x0:0x1242
   538fb:	52                   	push   dx
   538fc:	50                   	push   ax
   538fd:	9a df 12 00 00       	call   0x0:0x12df
   53902:	40                   	inc    ax
   53903:	89 46 da             	mov    WORD PTR [bp-0x26],ax
   53906:	eb 05                	jmp    0x5390d
   53908:	c7 46 da 01 00       	mov    WORD PTR [bp-0x26],0x1
   5390d:	c7 06 d6 d5 00 00    	mov    WORD PTR ds:0xd5d6,0x0
   53913:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   53919:	eb 48                	jmp    0x53963
   5391b:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   53921:	eb 35                	jmp    0x53958
   53923:	83 7e be 00          	cmp    WORD PTR [bp-0x42],0x0
   53927:	7e 2b                	jle    0x53954
   53929:	8b 46 be             	mov    ax,WORD PTR [bp-0x42]
   5392c:	3b 06 de d5          	cmp    ax,WORD PTR ds:0xd5de
   53930:	7e 22                	jle    0x53954
   53932:	8b 5e be             	mov    bx,WORD PTR [bp-0x42]
   53935:	6b db 28             	imul   bx,bx,0x28
   53938:	b8 88 01             	mov    ax,0x188
   5393b:	8e c0                	mov    es,ax
   5393d:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   53943:	75 0f                	jne    0x53954
   53945:	ff 06 d6 d5          	inc    WORD PTR ds:0xd5d6
   53949:	a1 d6 d5             	mov    ax,ds:0xd5d6
   5394c:	3b 46 da             	cmp    ax,WORD PTR [bp-0x26]
   5394f:	75 03                	jne    0x53954
   53951:	e9 6a ff             	jmp    0x538be
   53954:	ff 06 ca d5          	inc    WORD PTR ds:0xd5ca
   53958:	83 3e ca d5 01       	cmp    WORD PTR ds:0xd5ca,0x1
   5395d:	7e c4                	jle    0x53923
   5395f:	ff 06 c8 d5          	inc    WORD PTR ds:0xd5c8
   53963:	83 3e c8 d5 01       	cmp    WORD PTR ds:0xd5c8,0x1
   53968:	7e b1                	jle    0x5391b
   5396a:	e9 a7 00             	jmp    0x53a14
   5396d:	33 c0                	xor    ax,ax
   5396f:	89 46 c0             	mov    WORD PTR [bp-0x40],ax
   53972:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   53975:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   5397a:	eb 2c                	jmp    0x539a8
   5397c:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   5397f:	6b db 28             	imul   bx,bx,0x28
   53982:	b8 88 01             	mov    ax,0x188
   53985:	8e c0                	mov    es,ax
   53987:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   5398d:	75 16                	jne    0x539a5
   5398f:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53992:	6b db 28             	imul   bx,bx,0x28
   53995:	b8 88 01             	mov    ax,0x188
   53998:	8e c0                	mov    es,ax
   5399a:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   539a0:	7e 03                	jle    0x539a5
   539a2:	ff 46 e6             	inc    WORD PTR [bp-0x1a]
   539a5:	ff 46 e4             	inc    WORD PTR [bp-0x1c]
   539a8:	83 7e e4 1c          	cmp    WORD PTR [bp-0x1c],0x1c
   539ac:	7e ce                	jle    0x5397c
   539ae:	6a 00                	push   0x0
   539b0:	68 00 80             	push   0x8000
   539b3:	9a 79 17 00 00       	call   0x0:0x1779
   539b8:	99                   	cwd
   539b9:	50                   	push   ax
   539ba:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   539bd:	52                   	push   dx
   539be:	99                   	cwd
   539bf:	59                   	pop    cx
   539c0:	5b                   	pop    bx
   539c1:	9a 42 12 00 00       	call   0x0:0x1242
   539c6:	52                   	push   dx
   539c7:	50                   	push   ax
   539c8:	9a df 12 00 00       	call   0x0:0x12df
   539cd:	40                   	inc    ax
   539ce:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   539d1:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   539d6:	eb 36                	jmp    0x53a0e
   539d8:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   539db:	6b db 28             	imul   bx,bx,0x28
   539de:	b8 88 01             	mov    ax,0x188
   539e1:	8e c0                	mov    es,ax
   539e3:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   539e9:	75 16                	jne    0x53a01
   539eb:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   539ee:	6b db 28             	imul   bx,bx,0x28
   539f1:	b8 88 01             	mov    ax,0x188
   539f4:	8e c0                	mov    es,ax
   539f6:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   539fc:	7e 03                	jle    0x53a01
   539fe:	ff 46 c0             	inc    WORD PTR [bp-0x40]
   53a01:	8b 46 c0             	mov    ax,WORD PTR [bp-0x40]
   53a04:	3b 46 e6             	cmp    ax,WORD PTR [bp-0x1a]
   53a07:	75 02                	jne    0x53a0b
   53a09:	eb 5c                	jmp    0x53a67
   53a0b:	ff 46 e4             	inc    WORD PTR [bp-0x1c]
   53a0e:	83 7e e4 1c          	cmp    WORD PTR [bp-0x1c],0x1c
   53a12:	7e c4                	jle    0x539d8
   53a14:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53a17:	6b db 28             	imul   bx,bx,0x28
   53a1a:	b8 88 01             	mov    ax,0x188
   53a1d:	8e c0                	mov    es,ax
   53a1f:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   53a25:	7c 13                	jl     0x53a3a
   53a27:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53a2a:	6b db 28             	imul   bx,bx,0x28
   53a2d:	b8 88 01             	mov    ax,0x188
   53a30:	8e c0                	mov    es,ax
   53a32:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   53a38:	75 3c                	jne    0x53a76
   53a3a:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   53a3f:	eb 2f                	jmp    0x53a70
   53a41:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53a44:	6b db 28             	imul   bx,bx,0x28
   53a47:	b8 88 01             	mov    ax,0x188
   53a4a:	8e c0                	mov    es,ax
   53a4c:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   53a52:	75 19                	jne    0x53a6d
   53a54:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53a57:	6b db 28             	imul   bx,bx,0x28
   53a5a:	b8 88 01             	mov    ax,0x188
   53a5d:	8e c0                	mov    es,ax
   53a5f:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   53a65:	7e 06                	jle    0x53a6d
   53a67:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   53a6a:	e9 54 fe             	jmp    0x538c1
   53a6d:	ff 46 e4             	inc    WORD PTR [bp-0x1c]
   53a70:	83 7e e4 1c          	cmp    WORD PTR [bp-0x1c],0x1c
   53a74:	7e cb                	jle    0x53a41
   53a76:	b8 88 01             	mov    ax,0x188
   53a79:	8e c0                	mov    es,ax
   53a7b:	26 a1 4a e7          	mov    ax,es:0xe74a
   53a7f:	a3 34 d5             	mov    ds:0xd534,ax
   53a82:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53a86:	6b db 28             	imul   bx,bx,0x28
   53a89:	b8 88 01             	mov    ax,0x188
   53a8c:	8b 56 ee             	mov    dx,WORD PTR [bp-0x12]
   53a8f:	8e c0                	mov    es,ax
   53a91:	26 89 97 96 a0       	mov    WORD PTR es:[bx-0x5f6a],dx
   53a96:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53a9a:	6b db 28             	imul   bx,bx,0x28
   53a9d:	b8 88 01             	mov    ax,0x188
   53aa0:	8e c0                	mov    es,ax
   53aa2:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   53aa7:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   53aaa:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53aae:	6b db 28             	imul   bx,bx,0x28
   53ab1:	b8 88 01             	mov    ax,0x188
   53ab4:	8e c0                	mov    es,ax
   53ab6:	26 8b 87 9c a0       	mov    ax,WORD PTR es:[bx-0x5f64]
   53abb:	6b c0 32             	imul   ax,ax,0x32
   53abe:	05 1e 00             	add    ax,0x1e
   53ac1:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   53ac4:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   53ac7:	3b 46 e2             	cmp    ax,WORD PTR [bp-0x1e]
   53aca:	7e 45                	jle    0x53b11
   53acc:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   53acf:	99                   	cwd
   53ad0:	f7 7e e2             	idiv   WORD PTR [bp-0x1e]
   53ad3:	d1 e0                	shl    ax,1
   53ad5:	40                   	inc    ax
   53ad6:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   53ad9:	6a 00                	push   0x0
   53adb:	68 00 80             	push   0x8000
   53ade:	9a 79 17 00 00       	call   0x0:0x1779
   53ae3:	99                   	cwd
   53ae4:	50                   	push   ax
   53ae5:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   53ae8:	40                   	inc    ax
   53ae9:	52                   	push   dx
   53aea:	99                   	cwd
   53aeb:	59                   	pop    cx
   53aec:	5b                   	pop    bx
   53aed:	9a 42 12 00 00       	call   0x0:0x1242
   53af2:	52                   	push   dx
   53af3:	50                   	push   ax
   53af4:	9a df 12 00 00       	call   0x0:0x12df
   53af9:	50                   	push   ax
   53afa:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   53afd:	99                   	cwd
   53afe:	f7 7e e0             	idiv   WORD PTR [bp-0x20]
   53b01:	5a                   	pop    dx
   53b02:	3b d0                	cmp    dx,ax
   53b04:	7e 07                	jle    0x53b0d
   53b06:	c7 46 de 01 00       	mov    WORD PTR [bp-0x22],0x1
   53b0b:	eb 4f                	jmp    0x53b5c
   53b0d:	eb 48                	jmp    0x53b57
   53b0f:	eb 4b                	jmp    0x53b5c
   53b11:	83 7e e8 00          	cmp    WORD PTR [bp-0x18],0x0
   53b15:	74 40                	je     0x53b57
   53b17:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   53b1a:	99                   	cwd
   53b1b:	f7 7e e8             	idiv   WORD PTR [bp-0x18]
   53b1e:	d1 e0                	shl    ax,1
   53b20:	40                   	inc    ax
   53b21:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   53b24:	6a 00                	push   0x0
   53b26:	68 00 80             	push   0x8000
   53b29:	9a 79 17 00 00       	call   0x0:0x1779
   53b2e:	99                   	cwd
   53b2f:	50                   	push   ax
   53b30:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   53b33:	40                   	inc    ax
   53b34:	52                   	push   dx
   53b35:	99                   	cwd
   53b36:	59                   	pop    cx
   53b37:	5b                   	pop    bx
   53b38:	9a 42 12 00 00       	call   0x0:0x1242
   53b3d:	52                   	push   dx
   53b3e:	50                   	push   ax
   53b3f:	9a df 12 00 00       	call   0x0:0x12df
   53b44:	50                   	push   ax
   53b45:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   53b48:	99                   	cwd
   53b49:	f7 7e e0             	idiv   WORD PTR [bp-0x20]
   53b4c:	5a                   	pop    dx
   53b4d:	3b d0                	cmp    dx,ax
   53b4f:	7e 02                	jle    0x53b53
   53b51:	eb 04                	jmp    0x53b57
   53b53:	eb b1                	jmp    0x53b06
   53b55:	eb 05                	jmp    0x53b5c
   53b57:	c7 46 de 00 00       	mov    WORD PTR [bp-0x22],0x0
   53b5c:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53b60:	6b db 28             	imul   bx,bx,0x28
   53b63:	b8 88 01             	mov    ax,0x188
   53b66:	8e c0                	mov    es,ax
   53b68:	26 83 bf ae a0 00    	cmp    WORD PTR es:[bx-0x5f52],0x0
   53b6e:	74 05                	je     0x53b75
   53b70:	c7 46 de 00 00       	mov    WORD PTR [bp-0x22],0x0
   53b75:	c7 46 dc 00 00       	mov    WORD PTR [bp-0x24],0x0
   53b7a:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53b7e:	6b db 28             	imul   bx,bx,0x28
   53b81:	b8 88 01             	mov    ax,0x188
   53b84:	8e c0                	mov    es,ax
   53b86:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   53b8b:	a3 56 d5             	mov    ds:0xd556,ax
   53b8e:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53b91:	6b db 28             	imul   bx,bx,0x28
   53b94:	b8 88 01             	mov    ax,0x188
   53b97:	8e c0                	mov    es,ax
   53b99:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   53b9e:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53ba1:	6b db 28             	imul   bx,bx,0x28
   53ba4:	b8 88 01             	mov    ax,0x188
   53ba7:	8e c0                	mov    es,ax
   53ba9:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   53bae:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   53bb2:	0e                   	push   cs
   53bb3:	e8 20 70             	call   0x5abd6
   53bb6:	83 c4 06             	add    sp,0x6
   53bb9:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53bbd:	6b db 28             	imul   bx,bx,0x28
   53bc0:	b8 88 01             	mov    ax,0x188
   53bc3:	8e c0                	mov    es,ax
   53bc5:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   53bca:	6b db 2e             	imul   bx,bx,0x2e
   53bcd:	b8 88 01             	mov    ax,0x188
   53bd0:	8e c0                	mov    es,ax
   53bd2:	26 8b 87 2a 9f       	mov    ax,WORD PTR es:[bx-0x60d6]
   53bd7:	bb 32 00             	mov    bx,0x32
   53bda:	99                   	cwd
   53bdb:	f7 fb                	idiv   bx
   53bdd:	a3 be d5             	mov    ds:0xd5be,ax
   53be0:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   53be3:	a3 e0 d5             	mov    ds:0xd5e0,ax
   53be6:	c7 06 bc d5 00 00    	mov    WORD PTR ds:0xd5bc,0x0
   53bec:	83 7e de 01          	cmp    WORD PTR [bp-0x22],0x1
   53bf0:	75 0a                	jne    0x53bfc
   53bf2:	83 3e 60 d5 00       	cmp    WORD PTR ds:0xd560,0x0
   53bf7:	75 03                	jne    0x53bfc
   53bf9:	e9 4e 08             	jmp    0x5444a
   53bfc:	83 7e de 01          	cmp    WORD PTR [bp-0x22],0x1
   53c00:	74 03                	je     0x53c05
   53c02:	e9 07 06             	jmp    0x5420c
   53c05:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   53c0a:	7e 16                	jle    0x53c22
   53c0c:	6a 22                	push   0x22
   53c0e:	a1 de d5             	mov    ax,ds:0xd5de
   53c11:	69 c0 94 00          	imul   ax,ax,0x94
   53c15:	ba 46 8e             	mov    dx,0x8e46
   53c18:	83 c2 6e             	add    dx,0x6e
   53c1b:	03 c2                	add    ax,dx
   53c1d:	68 88 01             	push   0x188
   53c20:	eb 29                	jmp    0x53c4b
   53c22:	6a 23                	push   0x23
   53c24:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53c28:	6b db 28             	imul   bx,bx,0x28
   53c2b:	b8 88 01             	mov    ax,0x188
   53c2e:	8e c0                	mov    es,ax
   53c30:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   53c35:	6b db 06             	imul   bx,bx,0x6
   53c38:	b8 88 01             	mov    ax,0x188
   53c3b:	8e c0                	mov    es,ax
   53c3d:	26 8b 87 c2 5b       	mov    ax,WORD PTR es:[bx+0x5bc2]
   53c42:	6b c0 23             	imul   ax,ax,0x23
   53c45:	05 5b 19             	add    ax,0x195b
   53c48:	68 88 01             	push   0x188
   53c4b:	50                   	push   ax
   53c4c:	68 88 01             	push   0x188
   53c4f:	68 10 a5             	push   0xa510
   53c52:	9a 23 4a 00 00       	call   0x0:0x4a23
   53c57:	83 c4 0a             	add    sp,0xa
   53c5a:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   53c5f:	eb 31                	jmp    0x53c92
   53c61:	b8 88 01             	mov    ax,0x188
   53c64:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53c67:	8e c0                	mov    es,ax
   53c69:	26 80 bf 10 a5 31    	cmp    BYTE PTR es:[bx-0x5af0],0x31
   53c6f:	75 1e                	jne    0x53c8f
   53c71:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53c74:	d1 e3                	shl    bx,1
   53c76:	b8 88 01             	mov    ax,0x188
   53c79:	8e c0                	mov    es,ax
   53c7b:	26 8b 87 88 0c       	mov    ax,WORD PTR es:[bx+0xc88]
   53c80:	a3 bc d5             	mov    ds:0xd5bc,ax
   53c83:	a1 bc d5             	mov    ax,ds:0xd5bc
   53c86:	3b 06 56 d5          	cmp    ax,WORD PTR ds:0xd556
   53c8a:	7f 0c                	jg     0x53c98
   53c8c:	ff 46 dc             	inc    WORD PTR [bp-0x24]
   53c8f:	ff 46 e4             	inc    WORD PTR [bp-0x1c]
   53c92:	83 7e e4 22          	cmp    WORD PTR [bp-0x1c],0x22
   53c96:	7e c9                	jle    0x53c61
   53c98:	83 7e dc 00          	cmp    WORD PTR [bp-0x24],0x0
   53c9c:	75 03                	jne    0x53ca1
   53c9e:	e9 a9 07             	jmp    0x5444a
   53ca1:	83 7e dc 01          	cmp    WORD PTR [bp-0x24],0x1
   53ca5:	7e 25                	jle    0x53ccc
   53ca7:	6a 00                	push   0x0
   53ca9:	68 00 80             	push   0x8000
   53cac:	9a 79 17 00 00       	call   0x0:0x1779
   53cb1:	99                   	cwd
   53cb2:	50                   	push   ax
   53cb3:	8b 46 dc             	mov    ax,WORD PTR [bp-0x24]
   53cb6:	52                   	push   dx
   53cb7:	99                   	cwd
   53cb8:	59                   	pop    cx
   53cb9:	5b                   	pop    bx
   53cba:	9a 42 12 00 00       	call   0x0:0x1242
   53cbf:	52                   	push   dx
   53cc0:	50                   	push   ax
   53cc1:	9a df 12 00 00       	call   0x0:0x12df
   53cc6:	40                   	inc    ax
   53cc7:	89 46 da             	mov    WORD PTR [bp-0x26],ax
   53cca:	eb 05                	jmp    0x53cd1
   53ccc:	c7 46 da 01 00       	mov    WORD PTR [bp-0x26],0x1
   53cd1:	c7 46 dc 00 00       	mov    WORD PTR [bp-0x24],0x0
   53cd6:	c7 06 e2 d5 01 00    	mov    WORD PTR ds:0xd5e2,0x1
   53cdc:	eb 20                	jmp    0x53cfe
   53cde:	b8 88 01             	mov    ax,0x188
   53ce1:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   53ce5:	8e c0                	mov    es,ax
   53ce7:	26 80 bf 10 a5 31    	cmp    BYTE PTR es:[bx-0x5af0],0x31
   53ced:	75 0b                	jne    0x53cfa
   53cef:	ff 46 dc             	inc    WORD PTR [bp-0x24]
   53cf2:	8b 46 dc             	mov    ax,WORD PTR [bp-0x24]
   53cf5:	3b 46 da             	cmp    ax,WORD PTR [bp-0x26]
   53cf8:	74 0b                	je     0x53d05
   53cfa:	ff 06 e2 d5          	inc    WORD PTR ds:0xd5e2
   53cfe:	83 3e e2 d5 22       	cmp    WORD PTR ds:0xd5e2,0x22
   53d03:	7e d9                	jle    0x53cde
   53d05:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   53d09:	4b                   	dec    bx
   53d0a:	83 fb 21             	cmp    bx,0x21
   53d0d:	77 5a                	ja     0x53d69
   53d0f:	d1 e3                	shl    bx,1
   53d11:	2e ff a7 1c aa       	jmp    WORD PTR cs:[bx-0x55e4]
   53d16:	c7 46 d8 02 00       	mov    WORD PTR [bp-0x28],0x2
   53d1b:	eb 79                	jmp    0x53d96
   53d1d:	a1 be d5             	mov    ax,ds:0xd5be
   53d20:	bb 03 00             	mov    bx,0x3
   53d23:	99                   	cwd
   53d24:	f7 fb                	idiv   bx
   53d26:	05 04 00             	add    ax,0x4
   53d29:	eb 39                	jmp    0x53d64
   53d2b:	a1 be d5             	mov    ax,ds:0xd5be
   53d2e:	6b c0 0a             	imul   ax,ax,0xa
   53d31:	eb 31                	jmp    0x53d64
   53d33:	a1 be d5             	mov    ax,ds:0xd5be
   53d36:	05 0a 00             	add    ax,0xa
   53d39:	eb 29                	jmp    0x53d64
   53d3b:	c7 46 d8 00 00       	mov    WORD PTR [bp-0x28],0x0
   53d40:	eb 54                	jmp    0x53d96
   53d42:	a1 be d5             	mov    ax,ds:0xd5be
   53d45:	bb 03 00             	mov    bx,0x3
   53d48:	99                   	cwd
   53d49:	f7 fb                	idiv   bx
   53d4b:	05 08 00             	add    ax,0x8
   53d4e:	eb 14                	jmp    0x53d64
   53d50:	a1 be d5             	mov    ax,ds:0xd5be
   53d53:	bb 03 00             	mov    bx,0x3
   53d56:	99                   	cwd
   53d57:	f7 fb                	idiv   bx
   53d59:	6b c0 03             	imul   ax,ax,0x3
   53d5c:	eb 03                	jmp    0x53d61
   53d5e:	a1 be d5             	mov    ax,ds:0xd5be
   53d61:	05 05 00             	add    ax,0x5
   53d64:	89 46 d8             	mov    WORD PTR [bp-0x28],ax
   53d67:	eb 2d                	jmp    0x53d96
   53d69:	ff 36 e2 d5          	push   WORD PTR ds:0xd5e2
   53d6d:	1e                   	push   ds
   53d6e:	68 44 68             	push   0x6844
   53d71:	68 88 01             	push   0x188
   53d74:	68 cc ba             	push   0xbacc
   53d77:	9a b4 48 00 00       	call   0x0:0x48b4
   53d7c:	83 c4 0a             	add    sp,0xa
   53d7f:	6a ff                	push   0xffff
   53d81:	68 88 01             	push   0x188
   53d84:	68 cc ba             	push   0xbacc
   53d87:	68 4c 0b             	push   0xb4c
   53d8a:	1e                   	push   ds
   53d8b:	68 70 68             	push   0x6870
   53d8e:	9a 2a 00 58 01       	call   0x158:0x2a
   53d93:	83 c4 0c             	add    sp,0xc
   53d96:	c7 46 d6 01 00       	mov    WORD PTR [bp-0x2a],0x1
   53d9b:	8b 46 d8             	mov    ax,WORD PTR [bp-0x28]
   53d9e:	3b 06 64 d5          	cmp    ax,WORD PTR ds:0xd564
   53da2:	7d 03                	jge    0x53da7
   53da4:	e9 a3 06             	jmp    0x5444a
   53da7:	b8 88 01             	mov    ax,0x188
   53daa:	8e c0                	mov    es,ax
   53dac:	26 c7 06 53 bb 01 00 	mov    WORD PTR es:0xbb53,0x1
   53db3:	eb 46                	jmp    0x53dfb
   53db5:	b8 88 01             	mov    ax,0x188
   53db8:	8e c0                	mov    es,ax
   53dba:	26 8b 1e 53 bb       	mov    bx,WORD PTR es:0xbb53
   53dbf:	d1 e3                	shl    bx,1
   53dc1:	b8 88 01             	mov    ax,0x188
   53dc4:	8e c0                	mov    es,ax
   53dc6:	26 8b 87 cc 0c       	mov    ax,WORD PTR es:[bx+0xccc]
   53dcb:	89 46 d4             	mov    WORD PTR [bp-0x2c],ax
   53dce:	b8 88 01             	mov    ax,0x188
   53dd1:	8e c0                	mov    es,ax
   53dd3:	26 8b 1e 53 bb       	mov    bx,WORD PTR es:0xbb53
   53dd8:	d1 e3                	shl    bx,1
   53dda:	b8 88 01             	mov    ax,0x188
   53ddd:	8e c0                	mov    es,ax
   53ddf:	26 8b 87 ce 0c       	mov    ax,WORD PTR es:[bx+0xcce]
   53de4:	89 46 d2             	mov    WORD PTR [bp-0x2e],ax
   53de7:	8b 46 d4             	mov    ax,WORD PTR [bp-0x2c]
   53dea:	3b 06 e2 d5          	cmp    ax,WORD PTR ds:0xd5e2
   53dee:	74 18                	je     0x53e08
   53df0:	b8 88 01             	mov    ax,0x188
   53df3:	8e c0                	mov    es,ax
   53df5:	26 83 06 53 bb 02    	add    WORD PTR es:0xbb53,0x2
   53dfb:	b8 88 01             	mov    ax,0x188
   53dfe:	8e c0                	mov    es,ax
   53e00:	26 83 3e 53 bb 0a    	cmp    WORD PTR es:0xbb53,0xa
   53e06:	7e ad                	jle    0x53db5
   53e08:	8b 46 d4             	mov    ax,WORD PTR [bp-0x2c]
   53e0b:	3b 06 e2 d5          	cmp    ax,WORD PTR ds:0xd5e2
   53e0f:	74 03                	je     0x53e14
   53e11:	e9 a0 01             	jmp    0x53fb4
   53e14:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53e18:	6b db 28             	imul   bx,bx,0x28
   53e1b:	b8 88 01             	mov    ax,0x188
   53e1e:	8e c0                	mov    es,ax
   53e20:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   53e25:	a3 ca d5             	mov    ds:0xd5ca,ax
   53e28:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53e2c:	6b db 28             	imul   bx,bx,0x28
   53e2f:	b8 88 01             	mov    ax,0x188
   53e32:	8e c0                	mov    es,ax
   53e34:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   53e39:	a3 c8 d5             	mov    ds:0xd5c8,ax
   53e3c:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   53e41:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   53e46:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   53e4b:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   53e50:	c7 46 d0 00 00       	mov    WORD PTR [bp-0x30],0x0
   53e55:	c7 46 ce 00 00       	mov    WORD PTR [bp-0x32],0x0
   53e5a:	a1 c8 d5             	mov    ax,ds:0xd5c8
   53e5d:	2b 46 da             	sub    ax,WORD PTR [bp-0x26]
   53e60:	ba 88 01             	mov    dx,0x188
   53e63:	8e c2                	mov    es,dx
   53e65:	26 a3 53 bb          	mov    es:0xbb53,ax
   53e69:	e9 db 00             	jmp    0x53f47
   53e6c:	a1 ca d5             	mov    ax,ds:0xd5ca
   53e6f:	2b 46 da             	sub    ax,WORD PTR [bp-0x26]
   53e72:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   53e75:	e9 b7 00             	jmp    0x53f2f
   53e78:	83 7e e4 1b          	cmp    WORD PTR [bp-0x1c],0x1b
   53e7c:	7f 20                	jg     0x53e9e
   53e7e:	83 7e e4 01          	cmp    WORD PTR [bp-0x1c],0x1
   53e82:	7c 1a                	jl     0x53e9e
   53e84:	b8 88 01             	mov    ax,0x188
   53e87:	8e c0                	mov    es,ax
   53e89:	26 83 3e 53 bb 1b    	cmp    WORD PTR es:0xbb53,0x1b
   53e8f:	7f 0d                	jg     0x53e9e
   53e91:	b8 88 01             	mov    ax,0x188
   53e94:	8e c0                	mov    es,ax
   53e96:	26 83 3e 53 bb 01    	cmp    WORD PTR es:0xbb53,0x1
   53e9c:	7d 08                	jge    0x53ea6
   53e9e:	c7 06 36 d5 00 00    	mov    WORD PTR ds:0xd536,0x0
   53ea4:	eb 1a                	jmp    0x53ec0
   53ea6:	8b 5e e4             	mov    bx,WORD PTR [bp-0x1c]
   53ea9:	6b db 38             	imul   bx,bx,0x38
   53eac:	b8 88 01             	mov    ax,0x188
   53eaf:	8e c0                	mov    es,ax
   53eb1:	26 a1 53 bb          	mov    ax,es:0xbb53
   53eb5:	d1 e0                	shl    ax,1
   53eb7:	03 d8                	add    bx,ax
   53eb9:	8b 87 ce c2          	mov    ax,WORD PTR [bx-0x3d32]
   53ebd:	a3 36 d5             	mov    ds:0xd536,ax
   53ec0:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   53ec4:	6b db 28             	imul   bx,bx,0x28
   53ec7:	b8 88 01             	mov    ax,0x188
   53eca:	8e c0                	mov    es,ax
   53ecc:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   53ed2:	75 2d                	jne    0x53f01
   53ed4:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   53ed8:	6b db 28             	imul   bx,bx,0x28
   53edb:	b8 88 01             	mov    ax,0x188
   53ede:	8e c0                	mov    es,ax
   53ee0:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   53ee5:	01 46 fc             	add    WORD PTR [bp-0x4],ax
   53ee8:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   53eec:	6b db 28             	imul   bx,bx,0x28
   53eef:	b8 88 01             	mov    ax,0x188
   53ef2:	8e c0                	mov    es,ax
   53ef4:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   53ef9:	01 46 f8             	add    WORD PTR [bp-0x8],ax
   53efc:	ff 46 d0             	inc    WORD PTR [bp-0x30]
   53eff:	eb 2b                	jmp    0x53f2c
   53f01:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   53f05:	6b db 28             	imul   bx,bx,0x28
   53f08:	b8 88 01             	mov    ax,0x188
   53f0b:	8e c0                	mov    es,ax
   53f0d:	26 8b 87 8a a0       	mov    ax,WORD PTR es:[bx-0x5f76]
   53f12:	01 46 fe             	add    WORD PTR [bp-0x2],ax
   53f15:	8b 1e 36 d5          	mov    bx,WORD PTR ds:0xd536
   53f19:	6b db 28             	imul   bx,bx,0x28
   53f1c:	b8 88 01             	mov    ax,0x188
   53f1f:	8e c0                	mov    es,ax
   53f21:	26 8b 87 8c a0       	mov    ax,WORD PTR es:[bx-0x5f74]
   53f26:	01 46 fa             	add    WORD PTR [bp-0x6],ax
   53f29:	ff 46 ce             	inc    WORD PTR [bp-0x32]
   53f2c:	ff 46 e4             	inc    WORD PTR [bp-0x1c]
   53f2f:	a1 ca d5             	mov    ax,ds:0xd5ca
   53f32:	03 46 da             	add    ax,WORD PTR [bp-0x26]
   53f35:	3b 46 e4             	cmp    ax,WORD PTR [bp-0x1c]
   53f38:	7c 03                	jl     0x53f3d
   53f3a:	e9 3b ff             	jmp    0x53e78
   53f3d:	b8 88 01             	mov    ax,0x188
   53f40:	8e c0                	mov    es,ax
   53f42:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   53f47:	b8 88 01             	mov    ax,0x188
   53f4a:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   53f4e:	03 56 da             	add    dx,WORD PTR [bp-0x26]
   53f51:	8e c0                	mov    es,ax
   53f53:	26 39 16 53 bb       	cmp    WORD PTR es:0xbb53,dx
   53f58:	7f 03                	jg     0x53f5d
   53f5a:	e9 0f ff             	jmp    0x53e6c
   53f5d:	6a 00                	push   0x0
   53f5f:	68 00 80             	push   0x8000
   53f62:	9a 79 17 00 00       	call   0x0:0x1779
   53f67:	99                   	cwd
   53f68:	50                   	push   ax
   53f69:	52                   	push   dx
   53f6a:	33 d2                	xor    dx,dx
   53f6c:	b8 64 00             	mov    ax,0x64
   53f6f:	59                   	pop    cx
   53f70:	5b                   	pop    bx
   53f71:	9a 42 12 00 00       	call   0x0:0x1242
   53f76:	52                   	push   dx
   53f77:	50                   	push   ax
   53f78:	9a df 12 00 00       	call   0x0:0x12df
   53f7d:	40                   	inc    ax
   53f7e:	50                   	push   ax
   53f7f:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   53f82:	2b 46 fa             	sub    ax,WORD PTR [bp-0x6]
   53f85:	bb 0a 00             	mov    bx,0xa
   53f88:	99                   	cwd
   53f89:	f7 fb                	idiv   bx
   53f8b:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   53f8e:	2b 56 fe             	sub    dx,WORD PTR [bp-0x2]
   53f91:	03 d0                	add    dx,ax
   53f93:	8b 46 d0             	mov    ax,WORD PTR [bp-0x30]
   53f96:	6b c0 0a             	imul   ax,ax,0xa
   53f99:	03 d0                	add    dx,ax
   53f9b:	8b 46 ce             	mov    ax,WORD PTR [bp-0x32]
   53f9e:	6b c0 05             	imul   ax,ax,0x5
   53fa1:	2b d0                	sub    dx,ax
   53fa3:	58                   	pop    ax
   53fa4:	3b c2                	cmp    ax,dx
   53fa6:	7f 07                	jg     0x53faf
   53fa8:	c7 46 d6 01 00       	mov    WORD PTR [bp-0x2a],0x1
   53fad:	eb 05                	jmp    0x53fb4
   53faf:	c7 46 d6 00 00       	mov    WORD PTR [bp-0x2a],0x0
   53fb4:	83 7e d6 00          	cmp    WORD PTR [bp-0x2a],0x0
   53fb8:	75 03                	jne    0x53fbd
   53fba:	e9 8d 04             	jmp    0x5444a
   53fbd:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53fc0:	6b db 28             	imul   bx,bx,0x28
   53fc3:	b8 88 01             	mov    ax,0x188
   53fc6:	8e c0                	mov    es,ax
   53fc8:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   53fcd:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53fd1:	6b db 28             	imul   bx,bx,0x28
   53fd4:	ba 88 01             	mov    dx,0x188
   53fd7:	8e c2                	mov    es,dx
   53fd9:	26 3b 87 92 a0       	cmp    ax,WORD PTR es:[bx-0x5f6e]
   53fde:	7d 16                	jge    0x53ff6
   53fe0:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   53fe4:	6b db 28             	imul   bx,bx,0x28
   53fe7:	b8 88 01             	mov    ax,0x188
   53fea:	8e c0                	mov    es,ax
   53fec:	26 c7 87 8e a0 02 00 	mov    WORD PTR es:[bx-0x5f72],0x2
   53ff3:	e9 83 00             	jmp    0x54079
   53ff6:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   53ff9:	6b db 28             	imul   bx,bx,0x28
   53ffc:	b8 88 01             	mov    ax,0x188
   53fff:	8e c0                	mov    es,ax
   54001:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   54006:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5400a:	6b db 28             	imul   bx,bx,0x28
   5400d:	ba 88 01             	mov    dx,0x188
   54010:	8e c2                	mov    es,dx
   54012:	26 3b 87 92 a0       	cmp    ax,WORD PTR es:[bx-0x5f6e]
   54017:	7e 15                	jle    0x5402e
   54019:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5401d:	6b db 28             	imul   bx,bx,0x28
   54020:	b8 88 01             	mov    ax,0x188
   54023:	8e c0                	mov    es,ax
   54025:	26 c7 87 8e a0 04 00 	mov    WORD PTR es:[bx-0x5f72],0x4
   5402c:	eb 4b                	jmp    0x54079
   5402e:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   54031:	6b db 28             	imul   bx,bx,0x28
   54034:	b8 88 01             	mov    ax,0x188
   54037:	8e c0                	mov    es,ax
   54039:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   5403e:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   54042:	6b db 28             	imul   bx,bx,0x28
   54045:	ba 88 01             	mov    dx,0x188
   54048:	8e c2                	mov    es,dx
   5404a:	26 3b 87 94 a0       	cmp    ax,WORD PTR es:[bx-0x5f6c]
   5404f:	7d 15                	jge    0x54066
   54051:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   54055:	6b db 28             	imul   bx,bx,0x28
   54058:	b8 88 01             	mov    ax,0x188
   5405b:	8e c0                	mov    es,ax
   5405d:	26 c7 87 8e a0 01 00 	mov    WORD PTR es:[bx-0x5f72],0x1
   54064:	eb 13                	jmp    0x54079
   54066:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5406a:	6b db 28             	imul   bx,bx,0x28
   5406d:	b8 88 01             	mov    ax,0x188
   54070:	8e c0                	mov    es,ax
   54072:	26 c7 87 8e a0 03 00 	mov    WORD PTR es:[bx-0x5f72],0x3
   54079:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   5407c:	a3 e0 d5             	mov    ds:0xd5e0,ax
   5407f:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   54083:	d1 e3                	shl    bx,1
   54085:	b8 88 01             	mov    ax,0x188
   54088:	8e c0                	mov    es,ax
   5408a:	26 8b 87 88 0c       	mov    ax,WORD PTR es:[bx+0xc88]
   5408f:	a3 bc d5             	mov    ds:0xd5bc,ax
   54092:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   54096:	6b db 28             	imul   bx,bx,0x28
   54099:	b8 88 01             	mov    ax,0x188
   5409c:	8e c0                	mov    es,ax
   5409e:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   540a3:	6b db 2e             	imul   bx,bx,0x2e
   540a6:	b8 88 01             	mov    ax,0x188
   540a9:	8e c0                	mov    es,ax
   540ab:	26 8b 87 2c 9f       	mov    ax,WORD PTR es:[bx-0x60d4]
   540b0:	bb 32 00             	mov    bx,0x32
   540b3:	99                   	cwd
   540b4:	f7 fb                	idiv   bx
   540b6:	a3 5c d5             	mov    ds:0xd55c,ax
   540b9:	6a 0e                	push   0xe
   540bb:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   540bf:	0e                   	push   cs
   540c0:	e8 6d 7c             	call   0x5bd30
   540c3:	83 c4 04             	add    sp,0x4
   540c6:	0b c0                	or     ax,ax
   540c8:	74 04                	je     0x540ce
   540ca:	ff 06 5c d5          	inc    WORD PTR ds:0xd55c
   540ce:	a1 e2 d5             	mov    ax,ds:0xd5e2
   540d1:	6b c0 1f             	imul   ax,ax,0x1f
   540d4:	05 61 03             	add    ax,0x361
   540d7:	68 88 01             	push   0x188
   540da:	50                   	push   ax
   540db:	68 88 01             	push   0x188
   540de:	68 74 a5             	push   0xa574
   540e1:	9a a3 49 00 00       	call   0x0:0x49a3
   540e6:	83 c4 08             	add    sp,0x8
   540e9:	0e                   	push   cs
   540ea:	e8 4c e0             	call   0x52139
   540ed:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   540f1:	0e                   	push   cs
   540f2:	e8 9b 67             	call   0x5a890
   540f5:	59                   	pop    cx
   540f6:	0e                   	push   cs
   540f7:	e8 77 82             	call   0x5c371
   540fa:	6a 0a                	push   0xa
   540fc:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   54101:	59                   	pop    cx
   54102:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   54106:	6b db 28             	imul   bx,bx,0x28
   54109:	b8 88 01             	mov    ax,0x188
   5410c:	8e c0                	mov    es,ax
   5410e:	26 83 bf 90 a0 05    	cmp    WORD PTR es:[bx-0x5f70],0x5
   54114:	7c 03                	jl     0x54119
   54116:	e9 84 00             	jmp    0x5419d
   54119:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5411d:	6b db 28             	imul   bx,bx,0x28
   54120:	b8 88 01             	mov    ax,0x188
   54123:	8e c0                	mov    es,ax
   54125:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   5412a:	6b db 24             	imul   bx,bx,0x24
   5412d:	b8 88 01             	mov    ax,0x188
   54130:	8e c0                	mov    es,ax
   54132:	26 ff b7 80 9b       	push   WORD PTR es:[bx-0x6480]
   54137:	0e                   	push   cs
   54138:	e8 4d 5d             	call   0x59e88
   5413b:	59                   	pop    cx
   5413c:	0b c0                	or     ax,ax
   5413e:	7d 04                	jge    0x54144
   54140:	33 c0                	xor    ax,ax
   54142:	eb 23                	jmp    0x54167
   54144:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   54148:	6b db 28             	imul   bx,bx,0x28
   5414b:	b8 88 01             	mov    ax,0x188
   5414e:	8e c0                	mov    es,ax
   54150:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   54155:	6b db 24             	imul   bx,bx,0x24
   54158:	b8 88 01             	mov    ax,0x188
   5415b:	8e c0                	mov    es,ax
   5415d:	26 ff b7 80 9b       	push   WORD PTR es:[bx-0x6480]
   54162:	0e                   	push   cs
   54163:	e8 22 5d             	call   0x59e88
   54166:	59                   	pop    cx
   54167:	40                   	inc    ax
   54168:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5416c:	6b db 28             	imul   bx,bx,0x28
   5416f:	ba 88 01             	mov    dx,0x188
   54172:	8e c2                	mov    es,dx
   54174:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   54179:	6b db 5c             	imul   bx,bx,0x5c
   5417c:	ba 88 01             	mov    dx,0x188
   5417f:	8e c2                	mov    es,dx
   54181:	26 01 87 ba 99       	add    WORD PTR es:[bx-0x6646],ax
   54186:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5418a:	6b db 28             	imul   bx,bx,0x28
   5418d:	b8 88 01             	mov    ax,0x188
   54190:	8e c0                	mov    es,ax
   54192:	26 ff b7 90 a0       	push   WORD PTR es:[bx-0x5f70]
   54197:	90                   	nop
   54198:	0e                   	push   cs
   54199:	e8 62 05             	call   0x546fe
   5419c:	59                   	pop    cx
   5419d:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   541a1:	6b db 28             	imul   bx,bx,0x28
   541a4:	b8 88 01             	mov    ax,0x188
   541a7:	8e c0                	mov    es,ax
   541a9:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   541af:	7d 2b                	jge    0x541dc
   541b1:	6a 00                	push   0x0
   541b3:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   541b7:	6b db 28             	imul   bx,bx,0x28
   541ba:	b8 88 01             	mov    ax,0x188
   541bd:	8e c0                	mov    es,ax
   541bf:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   541c4:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   541c8:	6b db 28             	imul   bx,bx,0x28
   541cb:	b8 88 01             	mov    ax,0x188
   541ce:	8e c0                	mov    es,ax
   541d0:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   541d5:	0e                   	push   cs
   541d6:	e8 9e 66             	call   0x5a877
   541d9:	83 c4 06             	add    sp,0x6
   541dc:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   541e0:	0e                   	push   cs
   541e1:	e8 ac 66             	call   0x5a890
   541e4:	59                   	pop    cx
   541e5:	a1 de d5             	mov    ax,ds:0xd5de
   541e8:	a3 76 d5             	mov    ds:0xd576,ax
   541eb:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   541f1:	c7 06 4c d5 00 00    	mov    WORD PTR ds:0xd54c,0x0
   541f7:	e9 60 04             	jmp    0x5465a
   541fa:	e9 4d 02             	jmp    0x5444a
   541fd:	e9 5a 04             	jmp    0x5465a
   54200:	e9 47 02             	jmp    0x5444a
   54203:	e9 54 04             	jmp    0x5465a
   54206:	e9 41 02             	jmp    0x5444a
   54209:	e9 4e 04             	jmp    0x5465a
   5420c:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   5420f:	6b db 28             	imul   bx,bx,0x28
   54212:	b8 88 01             	mov    ax,0x188
   54215:	8e c0                	mov    es,ax
   54217:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   5421c:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   54220:	6b db 28             	imul   bx,bx,0x28
   54223:	ba 88 01             	mov    dx,0x188
   54226:	8e c2                	mov    es,dx
   54228:	26 3b 87 92 a0       	cmp    ax,WORD PTR es:[bx-0x5f6e]
   5422d:	7d 16                	jge    0x54245
   5422f:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   54233:	6b db 28             	imul   bx,bx,0x28
   54236:	b8 88 01             	mov    ax,0x188
   54239:	8e c0                	mov    es,ax
   5423b:	26 c7 87 8e a0 02 00 	mov    WORD PTR es:[bx-0x5f72],0x2
   54242:	e9 83 00             	jmp    0x542c8
   54245:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   54248:	6b db 28             	imul   bx,bx,0x28
   5424b:	b8 88 01             	mov    ax,0x188
   5424e:	8e c0                	mov    es,ax
   54250:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   54255:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   54259:	6b db 28             	imul   bx,bx,0x28
   5425c:	ba 88 01             	mov    dx,0x188
   5425f:	8e c2                	mov    es,dx
   54261:	26 3b 87 92 a0       	cmp    ax,WORD PTR es:[bx-0x5f6e]
   54266:	7e 15                	jle    0x5427d
   54268:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5426c:	6b db 28             	imul   bx,bx,0x28
   5426f:	b8 88 01             	mov    ax,0x188
   54272:	8e c0                	mov    es,ax
   54274:	26 c7 87 8e a0 04 00 	mov    WORD PTR es:[bx-0x5f72],0x4
   5427b:	eb 4b                	jmp    0x542c8
   5427d:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   54280:	6b db 28             	imul   bx,bx,0x28
   54283:	b8 88 01             	mov    ax,0x188
   54286:	8e c0                	mov    es,ax
   54288:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   5428d:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   54291:	6b db 28             	imul   bx,bx,0x28
   54294:	ba 88 01             	mov    dx,0x188
   54297:	8e c2                	mov    es,dx
   54299:	26 3b 87 94 a0       	cmp    ax,WORD PTR es:[bx-0x5f6c]
   5429e:	7d 15                	jge    0x542b5
   542a0:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   542a4:	6b db 28             	imul   bx,bx,0x28
   542a7:	b8 88 01             	mov    ax,0x188
   542aa:	8e c0                	mov    es,ax
   542ac:	26 c7 87 8e a0 01 00 	mov    WORD PTR es:[bx-0x5f72],0x1
   542b3:	eb 13                	jmp    0x542c8
   542b5:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   542b9:	6b db 28             	imul   bx,bx,0x28
   542bc:	b8 88 01             	mov    ax,0x188
   542bf:	8e c0                	mov    es,ax
   542c1:	26 c7 87 8e a0 03 00 	mov    WORD PTR es:[bx-0x5f72],0x3
   542c8:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   542cb:	6b db 28             	imul   bx,bx,0x28
   542ce:	b8 88 01             	mov    ax,0x188
   542d1:	53                   	push   bx
   542d2:	50                   	push   ax
   542d3:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   542d6:	07                   	pop    es
   542d7:	5b                   	pop    bx
   542d8:	26 2b 87 92 a0       	sub    ax,WORD PTR es:[bx-0x5f6e]
   542dd:	99                   	cwd
   542de:	33 c2                	xor    ax,dx
   542e0:	2b c2                	sub    ax,dx
   542e2:	3d 02 00             	cmp    ax,0x2
   542e5:	7d 42                	jge    0x54329
   542e7:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   542ea:	6b db 28             	imul   bx,bx,0x28
   542ed:	b8 88 01             	mov    ax,0x188
   542f0:	53                   	push   bx
   542f1:	50                   	push   ax
   542f2:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   542f5:	07                   	pop    es
   542f6:	5b                   	pop    bx
   542f7:	26 2b 87 94 a0       	sub    ax,WORD PTR es:[bx-0x5f6c]
   542fc:	99                   	cwd
   542fd:	33 c2                	xor    ax,dx
   542ff:	2b c2                	sub    ax,dx
   54301:	3d 02 00             	cmp    ax,0x2
   54304:	7d 23                	jge    0x54329
   54306:	a1 de d5             	mov    ax,ds:0xd5de
   54309:	a3 6e d5             	mov    ds:0xd56e,ax
   5430c:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   5430f:	a3 6c d5             	mov    ds:0xd56c,ax
   54312:	0e                   	push   cs
   54313:	e8 95 98             	call   0x5dbab
   54316:	0e                   	push   cs
   54317:	e8 57 80             	call   0x5c371
   5431a:	6a 0a                	push   0xa
   5431c:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   54321:	59                   	pop    cx
   54322:	0e                   	push   cs
   54323:	e8 ba ed             	call   0x530e0
   54326:	e9 31 03             	jmp    0x5465a
   54329:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5432d:	6b db 28             	imul   bx,bx,0x28
   54330:	b8 88 01             	mov    ax,0x188
   54333:	8e c0                	mov    es,ax
   54335:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   5433a:	6b db 2e             	imul   bx,bx,0x2e
   5433d:	b8 88 01             	mov    ax,0x188
   54340:	8e c0                	mov    es,ax
   54342:	26 83 bf 26 9f 64    	cmp    WORD PTR es:[bx-0x60da],0x64
   54348:	7f 03                	jg     0x5434d
   5434a:	e9 fd 00             	jmp    0x5444a
   5434d:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   54350:	6b db 28             	imul   bx,bx,0x28
   54353:	b8 88 01             	mov    ax,0x188
   54356:	8e c0                	mov    es,ax
   54358:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   5435d:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   54360:	6b db 28             	imul   bx,bx,0x28
   54363:	b8 88 01             	mov    ax,0x188
   54366:	8e c0                	mov    es,ax
   54368:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   5436d:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   54371:	0e                   	push   cs
   54372:	e8 61 68             	call   0x5abd6
   54375:	83 c4 06             	add    sp,0x6
   54378:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5437c:	6b db 28             	imul   bx,bx,0x28
   5437f:	b8 88 01             	mov    ax,0x188
   54382:	8e c0                	mov    es,ax
   54384:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   54389:	6b db 2e             	imul   bx,bx,0x2e
   5438c:	b8 88 01             	mov    ax,0x188
   5438f:	8e c0                	mov    es,ax
   54391:	26 8b 87 3a 9f       	mov    ax,WORD PTR es:[bx-0x60c6]
   54396:	3b 06 64 d5          	cmp    ax,WORD PTR ds:0xd564
   5439a:	7d 03                	jge    0x5439f
   5439c:	e9 bb 02             	jmp    0x5465a
   5439f:	6a 00                	push   0x0
   543a1:	68 00 80             	push   0x8000
   543a4:	9a 79 17 00 00       	call   0x0:0x1779
   543a9:	99                   	cwd
   543aa:	50                   	push   ax
   543ab:	52                   	push   dx
   543ac:	33 d2                	xor    dx,dx
   543ae:	b8 64 00             	mov    ax,0x64
   543b1:	59                   	pop    cx
   543b2:	5b                   	pop    bx
   543b3:	9a 42 12 00 00       	call   0x0:0x1242
   543b8:	52                   	push   dx
   543b9:	50                   	push   ax
   543ba:	9a df 12 00 00       	call   0x0:0x12df
   543bf:	40                   	inc    ax
   543c0:	3d 06 00             	cmp    ax,0x6
   543c3:	7d 03                	jge    0x543c8
   543c5:	e9 82 00             	jmp    0x5444a
   543c8:	83 3e 60 d5 00       	cmp    WORD PTR ds:0xd560,0x0
   543cd:	74 7b                	je     0x5444a
   543cf:	a1 de d5             	mov    ax,ds:0xd5de
   543d2:	a3 6e d5             	mov    ds:0xd56e,ax
   543d5:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   543d8:	a3 6c d5             	mov    ds:0xd56c,ax
   543db:	ff 36 6e d5          	push   WORD PTR ds:0xd56e
   543df:	0e                   	push   cs
   543e0:	e8 ad 64             	call   0x5a890
   543e3:	59                   	pop    cx
   543e4:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   543e8:	6b db 28             	imul   bx,bx,0x28
   543eb:	b8 88 01             	mov    ax,0x188
   543ee:	8e c0                	mov    es,ax
   543f0:	26 83 87 8e a0 04    	add    WORD PTR es:[bx-0x5f72],0x4
   543f6:	0e                   	push   cs
   543f7:	e8 77 7f             	call   0x5c371
   543fa:	6a 08                	push   0x8
   543fc:	0e                   	push   cs
   543fd:	e8 9e 79             	call   0x5bd9e
   54400:	59                   	pop    cx
   54401:	6a 0a                	push   0xa
   54403:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   54408:	59                   	pop    cx
   54409:	ff 36 6c d5          	push   WORD PTR ds:0xd56c
   5440d:	0e                   	push   cs
   5440e:	e8 7f 64             	call   0x5a890
   54411:	59                   	pop    cx
   54412:	8b 1e 6e d5          	mov    bx,WORD PTR ds:0xd56e
   54416:	6b db 28             	imul   bx,bx,0x28
   54419:	b8 88 01             	mov    ax,0x188
   5441c:	8e c0                	mov    es,ax
   5441e:	26 83 af 8e a0 04    	sub    WORD PTR es:[bx-0x5f72],0x4
   54424:	c7 06 c2 d5 01 00    	mov    WORD PTR ds:0xd5c2,0x1
   5442a:	0e                   	push   cs
   5442b:	e8 7d 97             	call   0x5dbab
   5442e:	c7 06 c2 d5 00 00    	mov    WORD PTR ds:0xd5c2,0x0
   54434:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   54438:	0e                   	push   cs
   54439:	e8 54 64             	call   0x5a890
   5443c:	59                   	pop    cx
   5443d:	e9 1a 02             	jmp    0x5465a
   54440:	eb 08                	jmp    0x5444a
   54442:	e9 15 02             	jmp    0x5465a
   54445:	eb 03                	jmp    0x5444a
   54447:	e9 10 02             	jmp    0x5465a
   5444a:	83 3e 4c d5 00       	cmp    WORD PTR ds:0xd54c,0x0
   5444f:	75 03                	jne    0x54454
   54451:	e9 06 02             	jmp    0x5465a
   54454:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   54458:	6b db 28             	imul   bx,bx,0x28
   5445b:	b8 88 01             	mov    ax,0x188
   5445e:	8e c0                	mov    es,ax
   54460:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   54465:	89 46 cc             	mov    WORD PTR [bp-0x34],ax
   54468:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5446c:	6b db 28             	imul   bx,bx,0x28
   5446f:	b8 88 01             	mov    ax,0x188
   54472:	8e c0                	mov    es,ax
   54474:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   54479:	89 46 ca             	mov    WORD PTR [bp-0x36],ax
   5447c:	c7 06 d6 d5 00 00    	mov    WORD PTR ds:0xd5d6,0x0
   54482:	c7 46 c8 00 00       	mov    WORD PTR [bp-0x38],0x0
   54487:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   5448a:	6b db 28             	imul   bx,bx,0x28
   5448d:	b8 88 01             	mov    ax,0x188
   54490:	8e c0                	mov    es,ax
   54492:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   54497:	89 46 c6             	mov    WORD PTR [bp-0x3a],ax
   5449a:	8b 5e ee             	mov    bx,WORD PTR [bp-0x12]
   5449d:	6b db 28             	imul   bx,bx,0x28
   544a0:	b8 88 01             	mov    ax,0x188
   544a3:	8e c0                	mov    es,ax
   544a5:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   544aa:	89 46 c4             	mov    WORD PTR [bp-0x3c],ax
   544ad:	8b 46 c6             	mov    ax,WORD PTR [bp-0x3a]
   544b0:	2b 46 cc             	sub    ax,WORD PTR [bp-0x34]
   544b3:	50                   	push   ax
   544b4:	0e                   	push   cs
   544b5:	e8 d0 59             	call   0x59e88
   544b8:	59                   	pop    cx
   544b9:	a3 ca d5             	mov    ds:0xd5ca,ax
   544bc:	8b 46 c4             	mov    ax,WORD PTR [bp-0x3c]
   544bf:	2b 46 ca             	sub    ax,WORD PTR [bp-0x36]
   544c2:	50                   	push   ax
   544c3:	0e                   	push   cs
   544c4:	e8 c1 59             	call   0x59e88
   544c7:	59                   	pop    cx
   544c8:	a3 c8 d5             	mov    ds:0xd5c8,ax
   544cb:	83 7e c8 00          	cmp    WORD PTR [bp-0x38],0x0
   544cf:	74 03                	je     0x544d4
   544d1:	e9 9c 00             	jmp    0x54570
   544d4:	83 3e ca d5 00       	cmp    WORD PTR ds:0xd5ca,0x0
   544d9:	75 0c                	jne    0x544e7
   544db:	83 3e c8 d5 ff       	cmp    WORD PTR ds:0xd5c8,0xffff
   544e0:	75 05                	jne    0x544e7
   544e2:	c7 46 c2 01 00       	mov    WORD PTR [bp-0x3e],0x1
   544e7:	83 3e ca d5 01       	cmp    WORD PTR ds:0xd5ca,0x1
   544ec:	75 0c                	jne    0x544fa
   544ee:	83 3e c8 d5 ff       	cmp    WORD PTR ds:0xd5c8,0xffff
   544f3:	75 05                	jne    0x544fa
   544f5:	c7 46 c2 02 00       	mov    WORD PTR [bp-0x3e],0x2
   544fa:	83 3e ca d5 01       	cmp    WORD PTR ds:0xd5ca,0x1
   544ff:	75 0c                	jne    0x5450d
   54501:	83 3e c8 d5 00       	cmp    WORD PTR ds:0xd5c8,0x0
   54506:	75 05                	jne    0x5450d
   54508:	c7 46 c2 03 00       	mov    WORD PTR [bp-0x3e],0x3
   5450d:	83 3e ca d5 01       	cmp    WORD PTR ds:0xd5ca,0x1
   54512:	75 0c                	jne    0x54520
   54514:	83 3e c8 d5 01       	cmp    WORD PTR ds:0xd5c8,0x1
   54519:	75 05                	jne    0x54520
   5451b:	c7 46 c2 04 00       	mov    WORD PTR [bp-0x3e],0x4
   54520:	83 3e ca d5 00       	cmp    WORD PTR ds:0xd5ca,0x0
   54525:	75 0c                	jne    0x54533
   54527:	83 3e c8 d5 01       	cmp    WORD PTR ds:0xd5c8,0x1
   5452c:	75 05                	jne    0x54533
   5452e:	c7 46 c2 05 00       	mov    WORD PTR [bp-0x3e],0x5
   54533:	83 3e ca d5 ff       	cmp    WORD PTR ds:0xd5ca,0xffff
   54538:	75 0c                	jne    0x54546
   5453a:	83 3e c8 d5 01       	cmp    WORD PTR ds:0xd5c8,0x1
   5453f:	75 05                	jne    0x54546
   54541:	c7 46 c2 06 00       	mov    WORD PTR [bp-0x3e],0x6
   54546:	83 3e ca d5 ff       	cmp    WORD PTR ds:0xd5ca,0xffff
   5454b:	75 0c                	jne    0x54559
   5454d:	83 3e c8 d5 00       	cmp    WORD PTR ds:0xd5c8,0x0
   54552:	75 05                	jne    0x54559
   54554:	c7 46 c2 07 00       	mov    WORD PTR [bp-0x3e],0x7
   54559:	83 3e ca d5 ff       	cmp    WORD PTR ds:0xd5ca,0xffff
   5455e:	75 0e                	jne    0x5456e
   54560:	83 3e c8 d5 ff       	cmp    WORD PTR ds:0xd5c8,0xffff
   54565:	75 07                	jne    0x5456e
   54567:	c7 46 c2 08 00       	mov    WORD PTR [bp-0x3e],0x8
   5456c:	eb 22                	jmp    0x54590
   5456e:	eb 20                	jmp    0x54590
   54570:	83 7e c8 01          	cmp    WORD PTR [bp-0x38],0x1
   54574:	75 08                	jne    0x5457e
   54576:	6a 08                	push   0x8
   54578:	6a 01                	push   0x1
   5457a:	6a ff                	push   0xffff
   5457c:	eb 06                	jmp    0x54584
   5457e:	6a 08                	push   0x8
   54580:	6a 01                	push   0x1
   54582:	6a 02                	push   0x2
   54584:	16                   	push   ss
   54585:	8d 46 c2             	lea    ax,[bp-0x3e]
   54588:	50                   	push   ax
   54589:	0e                   	push   cs
   5458a:	e8 c5 58             	call   0x59e52
   5458d:	83 c4 0a             	add    sp,0xa
   54590:	ff 46 c8             	inc    WORD PTR [bp-0x38]
   54593:	8b 5e c2             	mov    bx,WORD PTR [bp-0x3e]
   54596:	4b                   	dec    bx
   54597:	83 fb 07             	cmp    bx,0x7
   5459a:	76 03                	jbe    0x5459f
   5459c:	e9 8d 00             	jmp    0x5462c
   5459f:	d1 e3                	shl    bx,1
   545a1:	2e ff a7 0c aa       	jmp    WORD PTR cs:[bx-0x55f4]
   545a6:	c7 06 ca d5 00 00    	mov    WORD PTR ds:0xd5ca,0x0
   545ac:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   545b2:	c7 06 5e d5 01 00    	mov    WORD PTR ds:0xd55e,0x1
   545b8:	eb 72                	jmp    0x5462c
   545ba:	c7 06 ca d5 01 00    	mov    WORD PTR ds:0xd5ca,0x1
   545c0:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   545c6:	eb 1a                	jmp    0x545e2
   545c8:	c7 06 ca d5 01 00    	mov    WORD PTR ds:0xd5ca,0x1
   545ce:	c7 06 c8 d5 00 00    	mov    WORD PTR ds:0xd5c8,0x0
   545d4:	eb 0c                	jmp    0x545e2
   545d6:	c7 06 ca d5 01 00    	mov    WORD PTR ds:0xd5ca,0x1
   545dc:	c7 06 c8 d5 01 00    	mov    WORD PTR ds:0xd5c8,0x1
   545e2:	c7 06 5e d5 04 00    	mov    WORD PTR ds:0xd55e,0x4
   545e8:	eb 42                	jmp    0x5462c
   545ea:	c7 06 ca d5 00 00    	mov    WORD PTR ds:0xd5ca,0x0
   545f0:	c7 06 c8 d5 01 00    	mov    WORD PTR ds:0xd5c8,0x1
   545f6:	c7 06 5e d5 03 00    	mov    WORD PTR ds:0xd55e,0x3
   545fc:	eb 2e                	jmp    0x5462c
   545fe:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   54604:	c7 06 c8 d5 01 00    	mov    WORD PTR ds:0xd5c8,0x1
   5460a:	eb 1a                	jmp    0x54626
   5460c:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   54612:	c7 06 c8 d5 00 00    	mov    WORD PTR ds:0xd5c8,0x0
   54618:	eb 0c                	jmp    0x54626
   5461a:	c7 06 ca d5 ff ff    	mov    WORD PTR ds:0xd5ca,0xffff
   54620:	c7 06 c8 d5 ff ff    	mov    WORD PTR ds:0xd5c8,0xffff
   54626:	c7 06 5e d5 02 00    	mov    WORD PTR ds:0xd55e,0x2
   5462c:	0e                   	push   cs
   5462d:	e8 59 83             	call   0x5c989
   54630:	0e                   	push   cs
   54631:	e8 3d 7d             	call   0x5c371
   54634:	6a 0a                	push   0xa
   54636:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   5463b:	59                   	pop    cx
   5463c:	0e                   	push   cs
   5463d:	e8 a0 ea             	call   0x530e0
   54640:	83 3e b8 d5 00       	cmp    WORD PTR ds:0xd5b8,0x0
   54645:	74 03                	je     0x5464a
   54647:	e9 95 ef             	jmp    0x535df
   5464a:	83 7e c8 03          	cmp    WORD PTR [bp-0x38],0x3
   5464e:	7d 0a                	jge    0x5465a
   54650:	e9 78 fe             	jmp    0x544cb
   54653:	eb 05                	jmp    0x5465a
   54655:	eb 03                	jmp    0x5465a
   54657:	e9 85 ef             	jmp    0x535df
   5465a:	c9                   	leave
   5465b:	cb                   	retf
   5465c:	56                   	push   si
   5465d:	a9 6a a9             	test   ax,0xa96a
   54660:	78 a9                	js     0x5460b
   54662:	86 a9 9a a9          	xchg   BYTE PTR [bx+di-0x5666],ch
   54666:	ae                   	scas   al,BYTE PTR es:[di]
   54667:	a9 bc a9             	test   ax,0xa9bc
   5466a:	ca a9 c6             	retf   0xc6a9
   5466d:	a0 c6 a0             	mov    al,ds:0xa0c6
   54670:	cd a0                	int    0xa0
   54672:	cd a0                	int    0xa0
   54674:	cd a0                	int    0xa0
   54676:	cd a0                	int    0xa0
   54678:	db a0 e3 a0          	(bad) [bx+si-0x5f1d]
   5467c:	e3 a0                	jcxz   0x5461e
   5467e:	c6                   	(bad)
   5467f:	a0 c6 a0             	mov    al,ds:0xa0c6
   54682:	eb a0                	jmp    0x54624
   54684:	f2 a0 cd a0          	repnz mov al,ds:0xa0cd
   54688:	c6                   	(bad)
   54689:	a0 cd a0             	mov    al,ds:0xa0cd
   5468c:	e3 a0                	jcxz   0x5462e
   5468e:	c6                   	(bad)
   5468f:	a0 c6 a0             	mov    al,ds:0xa0c6
   54692:	f2 a0 f2 a0          	repnz mov al,ds:0xa0f2
   54696:	e3 a0                	jcxz   0x54638
   54698:	eb a0                	jmp    0x5463a
   5469a:	e3 a0                	jcxz   0x5463c
   5469c:	eb a0                	jmp    0x5463e
   5469e:	cd a0                	int    0xa0
   546a0:	00 a1 cd a0          	add    BYTE PTR [bx+di-0x5f33],ah
   546a4:	0e                   	push   cs
   546a5:	a1 e3 a0             	mov    ax,ds:0xa0e3
   546a8:	c6                   	(bad)
   546a9:	a0 e3 a0             	mov    al,ds:0xa0e3
   546ac:	e3 a0                	jcxz   0x5464e
   546ae:	eb a0                	jmp    0x54650
   546b0:	55                   	push   bp
   546b1:	8b ec                	mov    bp,sp
   546b3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   546b6:	6b db 28             	imul   bx,bx,0x28
   546b9:	b8 88 01             	mov    ax,0x188
   546bc:	8e c0                	mov    es,ax
   546be:	26 83 bf 90 a0 05    	cmp    WORD PTR es:[bx-0x5f70],0x5
   546c4:	7d 36                	jge    0x546fc
   546c6:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   546c9:	6b db 28             	imul   bx,bx,0x28
   546cc:	b8 88 01             	mov    ax,0x188
   546cf:	8e c0                	mov    es,ax
   546d1:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   546d6:	6b db 5c             	imul   bx,bx,0x5c
   546d9:	b8 88 01             	mov    ax,0x188
   546dc:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   546df:	8e c0                	mov    es,ax
   546e1:	26 01 97 ae 99       	add    WORD PTR es:[bx-0x6652],dx
   546e6:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   546e9:	6b db 28             	imul   bx,bx,0x28
   546ec:	b8 88 01             	mov    ax,0x188
   546ef:	8e c0                	mov    es,ax
   546f1:	26 ff b7 90 a0       	push   WORD PTR es:[bx-0x5f70]
   546f6:	90                   	nop
   546f7:	0e                   	push   cs
   546f8:	e8 03 00             	call   0x546fe
   546fb:	59                   	pop    cx
   546fc:	5d                   	pop    bp
   546fd:	cb                   	retf
   546fe:	55                   	push   bp
   546ff:	8b ec                	mov    bp,sp
   54701:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54704:	6b db 5c             	imul   bx,bx,0x5c
   54707:	b8 88 01             	mov    ax,0x188
   5470a:	8e c0                	mov    es,ax
   5470c:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   54711:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54714:	6b db 22             	imul   bx,bx,0x22
   54717:	ba 88 01             	mov    dx,0x188
   5471a:	8e c2                	mov    es,dx
   5471c:	26 2b 87 02 99       	sub    ax,WORD PTR es:[bx-0x66fe]
   54721:	3d 01 00             	cmp    ax,0x1
   54724:	7c 50                	jl     0x54776
   54726:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54729:	6b db 5c             	imul   bx,bx,0x5c
   5472c:	b8 88 01             	mov    ax,0x188
   5472f:	8e c0                	mov    es,ax
   54731:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   54736:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54739:	6b db 22             	imul   bx,bx,0x22
   5473c:	ba 88 01             	mov    dx,0x188
   5473f:	8e c2                	mov    es,dx
   54741:	26 2b 87 02 99       	sub    ax,WORD PTR es:[bx-0x66fe]
   54746:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54749:	6b db 5c             	imul   bx,bx,0x5c
   5474c:	ba 88 01             	mov    dx,0x188
   5474f:	8e c2                	mov    es,dx
   54751:	26 01 87 ac 99       	add    WORD PTR es:[bx-0x6654],ax
   54756:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54759:	6b db 5c             	imul   bx,bx,0x5c
   5475c:	b8 88 01             	mov    ax,0x188
   5475f:	8e c0                	mov    es,ax
   54761:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   54766:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54769:	6b db 22             	imul   bx,bx,0x22
   5476c:	ba 88 01             	mov    dx,0x188
   5476f:	8e c2                	mov    es,dx
   54771:	26 89 87 02 99       	mov    WORD PTR es:[bx-0x66fe],ax
   54776:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54779:	6b db 5c             	imul   bx,bx,0x5c
   5477c:	b8 88 01             	mov    ax,0x188
   5477f:	8e c0                	mov    es,ax
   54781:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   54786:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54789:	6b db 22             	imul   bx,bx,0x22
   5478c:	ba 88 01             	mov    dx,0x188
   5478f:	8e c2                	mov    es,dx
   54791:	26 2b 87 08 99       	sub    ax,WORD PTR es:[bx-0x66f8]
   54796:	3d e8 03             	cmp    ax,0x3e8
   54799:	7c 58                	jl     0x547f3
   5479b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5479e:	6b db 24             	imul   bx,bx,0x24
   547a1:	b8 88 01             	mov    ax,0x188
   547a4:	8e c0                	mov    es,ax
   547a6:	26 83 bf 7e 9b 00    	cmp    WORD PTR es:[bx-0x6482],0x0
   547ac:	7d 04                	jge    0x547b2
   547ae:	33 c0                	xor    ax,ax
   547b0:	eb 10                	jmp    0x547c2
   547b2:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   547b5:	6b db 24             	imul   bx,bx,0x24
   547b8:	b8 88 01             	mov    ax,0x188
   547bb:	8e c0                	mov    es,ax
   547bd:	26 8b 87 7e 9b       	mov    ax,WORD PTR es:[bx-0x6482]
   547c2:	40                   	inc    ax
   547c3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   547c6:	6b db 5c             	imul   bx,bx,0x5c
   547c9:	ba 88 01             	mov    dx,0x188
   547cc:	8e c2                	mov    es,dx
   547ce:	26 01 87 b2 99       	add    WORD PTR es:[bx-0x664e],ax
   547d3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   547d6:	6b db 5c             	imul   bx,bx,0x5c
   547d9:	b8 88 01             	mov    ax,0x188
   547dc:	8e c0                	mov    es,ax
   547de:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   547e3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   547e6:	6b db 22             	imul   bx,bx,0x22
   547e9:	ba 88 01             	mov    dx,0x188
   547ec:	8e c2                	mov    es,dx
   547ee:	26 89 87 08 99       	mov    WORD PTR es:[bx-0x66f8],ax
   547f3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   547f6:	6b db 5c             	imul   bx,bx,0x5c
   547f9:	b8 88 01             	mov    ax,0x188
   547fc:	8e c0                	mov    es,ax
   547fe:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54803:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54806:	6b db 22             	imul   bx,bx,0x22
   54809:	ba 88 01             	mov    dx,0x188
   5480c:	8e c2                	mov    es,dx
   5480e:	26 2b 87 0a 99       	sub    ax,WORD PTR es:[bx-0x66f6]
   54813:	3d be 00             	cmp    ax,0xbe
   54816:	7c 63                	jl     0x5487b
   54818:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5481b:	6b db 24             	imul   bx,bx,0x24
   5481e:	b8 88 01             	mov    ax,0x188
   54821:	8e c0                	mov    es,ax
   54823:	26 ff b7 78 9b       	push   WORD PTR es:[bx-0x6488]
   54828:	0e                   	push   cs
   54829:	e8 5c 56             	call   0x59e88
   5482c:	59                   	pop    cx
   5482d:	0b c0                	or     ax,ax
   5482f:	7d 04                	jge    0x54835
   54831:	33 c0                	xor    ax,ax
   54833:	eb 15                	jmp    0x5484a
   54835:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54838:	6b db 24             	imul   bx,bx,0x24
   5483b:	b8 88 01             	mov    ax,0x188
   5483e:	8e c0                	mov    es,ax
   54840:	26 ff b7 78 9b       	push   WORD PTR es:[bx-0x6488]
   54845:	0e                   	push   cs
   54846:	e8 3f 56             	call   0x59e88
   54849:	59                   	pop    cx
   5484a:	40                   	inc    ax
   5484b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5484e:	6b db 5c             	imul   bx,bx,0x5c
   54851:	ba 88 01             	mov    dx,0x188
   54854:	8e c2                	mov    es,dx
   54856:	26 01 87 b4 99       	add    WORD PTR es:[bx-0x664c],ax
   5485b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5485e:	6b db 5c             	imul   bx,bx,0x5c
   54861:	b8 88 01             	mov    ax,0x188
   54864:	8e c0                	mov    es,ax
   54866:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   5486b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5486e:	6b db 22             	imul   bx,bx,0x22
   54871:	ba 88 01             	mov    dx,0x188
   54874:	8e c2                	mov    es,dx
   54876:	26 89 87 0a 99       	mov    WORD PTR es:[bx-0x66f6],ax
   5487b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5487e:	6b db 5c             	imul   bx,bx,0x5c
   54881:	b8 88 01             	mov    ax,0x188
   54884:	8e c0                	mov    es,ax
   54886:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   5488b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5488e:	6b db 22             	imul   bx,bx,0x22
   54891:	ba 88 01             	mov    dx,0x188
   54894:	8e c2                	mov    es,dx
   54896:	26 2b 87 0c 99       	sub    ax,WORD PTR es:[bx-0x66f4]
   5489b:	3d 64 00             	cmp    ax,0x64
   5489e:	7c 63                	jl     0x54903
   548a0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   548a3:	6b db 24             	imul   bx,bx,0x24
   548a6:	b8 88 01             	mov    ax,0x188
   548a9:	8e c0                	mov    es,ax
   548ab:	26 ff b7 7a 9b       	push   WORD PTR es:[bx-0x6486]
   548b0:	0e                   	push   cs
   548b1:	e8 d4 55             	call   0x59e88
   548b4:	59                   	pop    cx
   548b5:	0b c0                	or     ax,ax
   548b7:	7d 04                	jge    0x548bd
   548b9:	33 c0                	xor    ax,ax
   548bb:	eb 15                	jmp    0x548d2
   548bd:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   548c0:	6b db 24             	imul   bx,bx,0x24
   548c3:	b8 88 01             	mov    ax,0x188
   548c6:	8e c0                	mov    es,ax
   548c8:	26 ff b7 7a 9b       	push   WORD PTR es:[bx-0x6486]
   548cd:	0e                   	push   cs
   548ce:	e8 b7 55             	call   0x59e88
   548d1:	59                   	pop    cx
   548d2:	40                   	inc    ax
   548d3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   548d6:	6b db 5c             	imul   bx,bx,0x5c
   548d9:	ba 88 01             	mov    dx,0x188
   548dc:	8e c2                	mov    es,dx
   548de:	26 01 87 b6 99       	add    WORD PTR es:[bx-0x664a],ax
   548e3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   548e6:	6b db 5c             	imul   bx,bx,0x5c
   548e9:	b8 88 01             	mov    ax,0x188
   548ec:	8e c0                	mov    es,ax
   548ee:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   548f3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   548f6:	6b db 22             	imul   bx,bx,0x22
   548f9:	ba 88 01             	mov    dx,0x188
   548fc:	8e c2                	mov    es,dx
   548fe:	26 89 87 0c 99       	mov    WORD PTR es:[bx-0x66f4],ax
   54903:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54906:	6b db 5c             	imul   bx,bx,0x5c
   54909:	b8 88 01             	mov    ax,0x188
   5490c:	8e c0                	mov    es,ax
   5490e:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54913:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54916:	6b db 22             	imul   bx,bx,0x22
   54919:	ba 88 01             	mov    dx,0x188
   5491c:	8e c2                	mov    es,dx
   5491e:	26 2b 87 0e 99       	sub    ax,WORD PTR es:[bx-0x66f2]
   54923:	3d d2 00             	cmp    ax,0xd2
   54926:	7c 63                	jl     0x5498b
   54928:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5492b:	6b db 24             	imul   bx,bx,0x24
   5492e:	b8 88 01             	mov    ax,0x188
   54931:	8e c0                	mov    es,ax
   54933:	26 ff b7 82 9b       	push   WORD PTR es:[bx-0x647e]
   54938:	0e                   	push   cs
   54939:	e8 4c 55             	call   0x59e88
   5493c:	59                   	pop    cx
   5493d:	0b c0                	or     ax,ax
   5493f:	7d 04                	jge    0x54945
   54941:	33 c0                	xor    ax,ax
   54943:	eb 15                	jmp    0x5495a
   54945:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54948:	6b db 24             	imul   bx,bx,0x24
   5494b:	b8 88 01             	mov    ax,0x188
   5494e:	8e c0                	mov    es,ax
   54950:	26 ff b7 82 9b       	push   WORD PTR es:[bx-0x647e]
   54955:	0e                   	push   cs
   54956:	e8 2f 55             	call   0x59e88
   54959:	59                   	pop    cx
   5495a:	40                   	inc    ax
   5495b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5495e:	6b db 5c             	imul   bx,bx,0x5c
   54961:	ba 88 01             	mov    dx,0x188
   54964:	8e c2                	mov    es,dx
   54966:	26 01 87 b8 99       	add    WORD PTR es:[bx-0x6648],ax
   5496b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5496e:	6b db 5c             	imul   bx,bx,0x5c
   54971:	b8 88 01             	mov    ax,0x188
   54974:	8e c0                	mov    es,ax
   54976:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   5497b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5497e:	6b db 22             	imul   bx,bx,0x22
   54981:	ba 88 01             	mov    dx,0x188
   54984:	8e c2                	mov    es,dx
   54986:	26 89 87 0e 99       	mov    WORD PTR es:[bx-0x66f2],ax
   5498b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5498e:	6b db 5c             	imul   bx,bx,0x5c
   54991:	b8 88 01             	mov    ax,0x188
   54994:	8e c0                	mov    es,ax
   54996:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   5499b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   5499e:	6b db 22             	imul   bx,bx,0x22
   549a1:	ba 88 01             	mov    dx,0x188
   549a4:	8e c2                	mov    es,dx
   549a6:	26 2b 87 10 99       	sub    ax,WORD PTR es:[bx-0x66f0]
   549ab:	3d 64 00             	cmp    ax,0x64
   549ae:	7c 63                	jl     0x54a13
   549b0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   549b3:	6b db 24             	imul   bx,bx,0x24
   549b6:	b8 88 01             	mov    ax,0x188
   549b9:	8e c0                	mov    es,ax
   549bb:	26 ff b7 80 9b       	push   WORD PTR es:[bx-0x6480]
   549c0:	0e                   	push   cs
   549c1:	e8 c4 54             	call   0x59e88
   549c4:	59                   	pop    cx
   549c5:	0b c0                	or     ax,ax
   549c7:	7d 04                	jge    0x549cd
   549c9:	33 c0                	xor    ax,ax
   549cb:	eb 15                	jmp    0x549e2
   549cd:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   549d0:	6b db 24             	imul   bx,bx,0x24
   549d3:	b8 88 01             	mov    ax,0x188
   549d6:	8e c0                	mov    es,ax
   549d8:	26 ff b7 80 9b       	push   WORD PTR es:[bx-0x6480]
   549dd:	0e                   	push   cs
   549de:	e8 a7 54             	call   0x59e88
   549e1:	59                   	pop    cx
   549e2:	40                   	inc    ax
   549e3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   549e6:	6b db 5c             	imul   bx,bx,0x5c
   549e9:	ba 88 01             	mov    dx,0x188
   549ec:	8e c2                	mov    es,dx
   549ee:	26 01 87 ba 99       	add    WORD PTR es:[bx-0x6646],ax
   549f3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   549f6:	6b db 5c             	imul   bx,bx,0x5c
   549f9:	b8 88 01             	mov    ax,0x188
   549fc:	8e c0                	mov    es,ax
   549fe:	26 8b 87 ae 99       	mov    ax,WORD PTR es:[bx-0x6652]
   54a03:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a06:	6b db 22             	imul   bx,bx,0x22
   54a09:	ba 88 01             	mov    dx,0x188
   54a0c:	8e c2                	mov    es,dx
   54a0e:	26 89 87 10 99       	mov    WORD PTR es:[bx-0x66f0],ax
   54a13:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a16:	6b db 5c             	imul   bx,bx,0x5c
   54a19:	b8 88 01             	mov    ax,0x188
   54a1c:	8e c0                	mov    es,ax
   54a1e:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54a23:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a26:	6b db 22             	imul   bx,bx,0x22
   54a29:	ba 88 01             	mov    dx,0x188
   54a2c:	8e c2                	mov    es,dx
   54a2e:	26 2b 87 14 99       	sub    ax,WORD PTR es:[bx-0x66ec]
   54a33:	3d c8 00             	cmp    ax,0xc8
   54a36:	7c 63                	jl     0x54a9b
   54a38:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a3b:	6b db 24             	imul   bx,bx,0x24
   54a3e:	b8 88 01             	mov    ax,0x188
   54a41:	8e c0                	mov    es,ax
   54a43:	26 ff b7 88 9b       	push   WORD PTR es:[bx-0x6478]
   54a48:	0e                   	push   cs
   54a49:	e8 3c 54             	call   0x59e88
   54a4c:	59                   	pop    cx
   54a4d:	0b c0                	or     ax,ax
   54a4f:	7d 04                	jge    0x54a55
   54a51:	33 c0                	xor    ax,ax
   54a53:	eb 15                	jmp    0x54a6a
   54a55:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a58:	6b db 24             	imul   bx,bx,0x24
   54a5b:	b8 88 01             	mov    ax,0x188
   54a5e:	8e c0                	mov    es,ax
   54a60:	26 ff b7 88 9b       	push   WORD PTR es:[bx-0x6478]
   54a65:	0e                   	push   cs
   54a66:	e8 1f 54             	call   0x59e88
   54a69:	59                   	pop    cx
   54a6a:	40                   	inc    ax
   54a6b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a6e:	6b db 5c             	imul   bx,bx,0x5c
   54a71:	ba 88 01             	mov    dx,0x188
   54a74:	8e c2                	mov    es,dx
   54a76:	26 01 87 be 99       	add    WORD PTR es:[bx-0x6642],ax
   54a7b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a7e:	6b db 5c             	imul   bx,bx,0x5c
   54a81:	b8 88 01             	mov    ax,0x188
   54a84:	8e c0                	mov    es,ax
   54a86:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54a8b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a8e:	6b db 22             	imul   bx,bx,0x22
   54a91:	ba 88 01             	mov    dx,0x188
   54a94:	8e c2                	mov    es,dx
   54a96:	26 89 87 14 99       	mov    WORD PTR es:[bx-0x66ec],ax
   54a9b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54a9e:	6b db 5c             	imul   bx,bx,0x5c
   54aa1:	b8 88 01             	mov    ax,0x188
   54aa4:	8e c0                	mov    es,ax
   54aa6:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54aab:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54aae:	6b db 22             	imul   bx,bx,0x22
   54ab1:	ba 88 01             	mov    dx,0x188
   54ab4:	8e c2                	mov    es,dx
   54ab6:	26 2b 87 16 99       	sub    ax,WORD PTR es:[bx-0x66ea]
   54abb:	3d 6c 07             	cmp    ax,0x76c
   54abe:	7c 43                	jl     0x54b03
   54ac0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54ac3:	6b db 24             	imul   bx,bx,0x24
   54ac6:	b8 88 01             	mov    ax,0x188
   54ac9:	8e c0                	mov    es,ax
   54acb:	26 8b 87 84 9b       	mov    ax,WORD PTR es:[bx-0x647c]
   54ad0:	05 fd ff             	add    ax,0xfffd
   54ad3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54ad6:	6b db 5c             	imul   bx,bx,0x5c
   54ad9:	ba 88 01             	mov    dx,0x188
   54adc:	8e c2                	mov    es,dx
   54ade:	26 01 87 c0 99       	add    WORD PTR es:[bx-0x6640],ax
   54ae3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54ae6:	6b db 5c             	imul   bx,bx,0x5c
   54ae9:	b8 88 01             	mov    ax,0x188
   54aec:	8e c0                	mov    es,ax
   54aee:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54af3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54af6:	6b db 22             	imul   bx,bx,0x22
   54af9:	ba 88 01             	mov    dx,0x188
   54afc:	8e c2                	mov    es,dx
   54afe:	26 89 87 16 99       	mov    WORD PTR es:[bx-0x66ea],ax
   54b03:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b06:	6b db 5c             	imul   bx,bx,0x5c
   54b09:	b8 88 01             	mov    ax,0x188
   54b0c:	8e c0                	mov    es,ax
   54b0e:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54b13:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b16:	6b db 22             	imul   bx,bx,0x22
   54b19:	ba 88 01             	mov    dx,0x188
   54b1c:	8e c2                	mov    es,dx
   54b1e:	26 2b 87 18 99       	sub    ax,WORD PTR es:[bx-0x66e8]
   54b23:	3d eb 00             	cmp    ax,0xeb
   54b26:	7c 63                	jl     0x54b8b
   54b28:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b2b:	6b db 24             	imul   bx,bx,0x24
   54b2e:	b8 88 01             	mov    ax,0x188
   54b31:	8e c0                	mov    es,ax
   54b33:	26 ff b7 8a 9b       	push   WORD PTR es:[bx-0x6476]
   54b38:	0e                   	push   cs
   54b39:	e8 4c 53             	call   0x59e88
   54b3c:	59                   	pop    cx
   54b3d:	0b c0                	or     ax,ax
   54b3f:	7d 04                	jge    0x54b45
   54b41:	33 c0                	xor    ax,ax
   54b43:	eb 15                	jmp    0x54b5a
   54b45:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b48:	6b db 24             	imul   bx,bx,0x24
   54b4b:	b8 88 01             	mov    ax,0x188
   54b4e:	8e c0                	mov    es,ax
   54b50:	26 ff b7 8a 9b       	push   WORD PTR es:[bx-0x6476]
   54b55:	0e                   	push   cs
   54b56:	e8 2f 53             	call   0x59e88
   54b59:	59                   	pop    cx
   54b5a:	40                   	inc    ax
   54b5b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b5e:	6b db 5c             	imul   bx,bx,0x5c
   54b61:	ba 88 01             	mov    dx,0x188
   54b64:	8e c2                	mov    es,dx
   54b66:	26 01 87 c2 99       	add    WORD PTR es:[bx-0x663e],ax
   54b6b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b6e:	6b db 5c             	imul   bx,bx,0x5c
   54b71:	b8 88 01             	mov    ax,0x188
   54b74:	8e c0                	mov    es,ax
   54b76:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54b7b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b7e:	6b db 22             	imul   bx,bx,0x22
   54b81:	ba 88 01             	mov    dx,0x188
   54b84:	8e c2                	mov    es,dx
   54b86:	26 89 87 18 99       	mov    WORD PTR es:[bx-0x66e8],ax
   54b8b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b8e:	6b db 5c             	imul   bx,bx,0x5c
   54b91:	b8 88 01             	mov    ax,0x188
   54b94:	8e c0                	mov    es,ax
   54b96:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54b9b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54b9e:	6b db 22             	imul   bx,bx,0x22
   54ba1:	ba 88 01             	mov    dx,0x188
   54ba4:	8e c2                	mov    es,dx
   54ba6:	26 2b 87 1a 99       	sub    ax,WORD PTR es:[bx-0x66e6]
   54bab:	3d d0 07             	cmp    ax,0x7d0
   54bae:	7c 63                	jl     0x54c13
   54bb0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54bb3:	6b db 24             	imul   bx,bx,0x24
   54bb6:	b8 88 01             	mov    ax,0x188
   54bb9:	8e c0                	mov    es,ax
   54bbb:	26 ff b7 8c 9b       	push   WORD PTR es:[bx-0x6474]
   54bc0:	0e                   	push   cs
   54bc1:	e8 c4 52             	call   0x59e88
   54bc4:	59                   	pop    cx
   54bc5:	0b c0                	or     ax,ax
   54bc7:	7d 04                	jge    0x54bcd
   54bc9:	33 c0                	xor    ax,ax
   54bcb:	eb 15                	jmp    0x54be2
   54bcd:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54bd0:	6b db 24             	imul   bx,bx,0x24
   54bd3:	b8 88 01             	mov    ax,0x188
   54bd6:	8e c0                	mov    es,ax
   54bd8:	26 ff b7 8c 9b       	push   WORD PTR es:[bx-0x6474]
   54bdd:	0e                   	push   cs
   54bde:	e8 a7 52             	call   0x59e88
   54be1:	59                   	pop    cx
   54be2:	40                   	inc    ax
   54be3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54be6:	6b db 5c             	imul   bx,bx,0x5c
   54be9:	ba 88 01             	mov    dx,0x188
   54bec:	8e c2                	mov    es,dx
   54bee:	26 01 87 c4 99       	add    WORD PTR es:[bx-0x663c],ax
   54bf3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54bf6:	6b db 5c             	imul   bx,bx,0x5c
   54bf9:	b8 88 01             	mov    ax,0x188
   54bfc:	8e c0                	mov    es,ax
   54bfe:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54c03:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c06:	6b db 22             	imul   bx,bx,0x22
   54c09:	ba 88 01             	mov    dx,0x188
   54c0c:	8e c2                	mov    es,dx
   54c0e:	26 89 87 1a 99       	mov    WORD PTR es:[bx-0x66e6],ax
   54c13:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c16:	6b db 5c             	imul   bx,bx,0x5c
   54c19:	b8 88 01             	mov    ax,0x188
   54c1c:	8e c0                	mov    es,ax
   54c1e:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54c23:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c26:	6b db 22             	imul   bx,bx,0x22
   54c29:	ba 88 01             	mov    dx,0x188
   54c2c:	8e c2                	mov    es,dx
   54c2e:	26 2b 87 1c 99       	sub    ax,WORD PTR es:[bx-0x66e4]
   54c33:	3d c8 00             	cmp    ax,0xc8
   54c36:	7c 63                	jl     0x54c9b
   54c38:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c3b:	6b db 24             	imul   bx,bx,0x24
   54c3e:	b8 88 01             	mov    ax,0x188
   54c41:	8e c0                	mov    es,ax
   54c43:	26 ff b7 8e 9b       	push   WORD PTR es:[bx-0x6472]
   54c48:	0e                   	push   cs
   54c49:	e8 3c 52             	call   0x59e88
   54c4c:	59                   	pop    cx
   54c4d:	0b c0                	or     ax,ax
   54c4f:	7d 04                	jge    0x54c55
   54c51:	33 c0                	xor    ax,ax
   54c53:	eb 15                	jmp    0x54c6a
   54c55:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c58:	6b db 24             	imul   bx,bx,0x24
   54c5b:	b8 88 01             	mov    ax,0x188
   54c5e:	8e c0                	mov    es,ax
   54c60:	26 ff b7 8e 9b       	push   WORD PTR es:[bx-0x6472]
   54c65:	0e                   	push   cs
   54c66:	e8 1f 52             	call   0x59e88
   54c69:	59                   	pop    cx
   54c6a:	40                   	inc    ax
   54c6b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c6e:	6b db 5c             	imul   bx,bx,0x5c
   54c71:	ba 88 01             	mov    dx,0x188
   54c74:	8e c2                	mov    es,dx
   54c76:	26 01 87 c6 99       	add    WORD PTR es:[bx-0x663a],ax
   54c7b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c7e:	6b db 5c             	imul   bx,bx,0x5c
   54c81:	b8 88 01             	mov    ax,0x188
   54c84:	8e c0                	mov    es,ax
   54c86:	26 8b 87 ac 99       	mov    ax,WORD PTR es:[bx-0x6654]
   54c8b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54c8e:	6b db 22             	imul   bx,bx,0x22
   54c91:	ba 88 01             	mov    dx,0x188
   54c94:	8e c2                	mov    es,dx
   54c96:	26 89 87 1c 99       	mov    WORD PTR es:[bx-0x66e4],ax
   54c9b:	5d                   	pop    bp
   54c9c:	cb                   	retf
   54c9d:	55                   	push   bp
   54c9e:	8b ec                	mov    bp,sp
   54ca0:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   54ca3:	6b db 5c             	imul   bx,bx,0x5c
   54ca6:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54ca9:	d1 e0                	shl    ax,1
   54cab:	03 d8                	add    bx,ax
   54cad:	b8 88 01             	mov    ax,0x188
   54cb0:	8e c0                	mov    es,ax
   54cb2:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   54cb7:	bb 64 00             	mov    bx,0x64
   54cba:	99                   	cwd
   54cbb:	f7 fb                	idiv   bx
   54cbd:	89 16 ea d5          	mov    WORD PTR ds:0xd5ea,dx
   54cc1:	83 3e ea d5 2b       	cmp    WORD PTR ds:0xd5ea,0x2b
   54cc6:	75 08                	jne    0x54cd0
   54cc8:	c7 06 ea d5 22 00    	mov    WORD PTR ds:0xd5ea,0x22
   54cce:	eb 0c                	jmp    0x54cdc
   54cd0:	83 3e ea d5 20       	cmp    WORD PTR ds:0xd5ea,0x20
   54cd5:	7e 05                	jle    0x54cdc
   54cd7:	83 06 ea d5 02       	add    WORD PTR ds:0xd5ea,0x2
   54cdc:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   54ce1:	75 03                	jne    0x54ce6
   54ce3:	e9 0f 01             	jmp    0x54df5
   54ce6:	6a 00                	push   0x0
   54ce8:	6a 06                	push   0x6
   54cea:	6a 10                	push   0x10
   54cec:	6a 10                	push   0x10
   54cee:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54cf1:	48                   	dec    ax
   54cf2:	bb 05 00             	mov    bx,0x5
   54cf5:	99                   	cwd
   54cf6:	f7 fb                	idiv   bx
   54cf8:	6b c0 11             	imul   ax,ax,0x11
   54cfb:	05 a4 00             	add    ax,0xa4
   54cfe:	50                   	push   ax
   54cff:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54d02:	48                   	dec    ax
   54d03:	bb 05 00             	mov    bx,0x5
   54d06:	99                   	cwd
   54d07:	f7 fb                	idiv   bx
   54d09:	6b d2 11             	imul   dx,dx,0x11
   54d0c:	81 c2 eb 00          	add    dx,0xeb
   54d10:	52                   	push   dx
   54d11:	9a 08 09 28 00       	call   0x28:0x908
   54d16:	83 c4 0c             	add    sp,0xc
   54d19:	68 e0 01             	push   0x1e0
   54d1c:	68 41 03             	push   0x341
   54d1f:	6a 06                	push   0x6
   54d21:	6a 4b                	push   0x4b
   54d23:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54d26:	48                   	dec    ax
   54d27:	bb 05 00             	mov    bx,0x5
   54d2a:	99                   	cwd
   54d2b:	f7 fb                	idiv   bx
   54d2d:	6b c0 11             	imul   ax,ax,0x11
   54d30:	05 a5 00             	add    ax,0xa5
   54d33:	50                   	push   ax
   54d34:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54d37:	48                   	dec    ax
   54d38:	bb 05 00             	mov    bx,0x5
   54d3b:	99                   	cwd
   54d3c:	f7 fb                	idiv   bx
   54d3e:	6b d2 11             	imul   dx,dx,0x11
   54d41:	81 c2 ec 00          	add    dx,0xec
   54d45:	52                   	push   dx
   54d46:	6a 0f                	push   0xf
   54d48:	6a 0f                	push   0xf
   54d4a:	6a 00                	push   0x0
   54d4c:	a1 ea d5             	mov    ax,ds:0xd5ea
   54d4f:	48                   	dec    ax
   54d50:	6b c0 0f             	imul   ax,ax,0xf
   54d53:	50                   	push   ax
   54d54:	9a 30 04 28 00       	call   0x28:0x430
   54d59:	83 c4 14             	add    sp,0x14
   54d5c:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
   54d60:	75 03                	jne    0x54d65
   54d62:	e9 18 01             	jmp    0x54e7d
   54d65:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54d68:	c1 e3 03             	shl    bx,0x3
   54d6b:	b8 88 01             	mov    ax,0x188
   54d6e:	53                   	push   bx
   54d6f:	50                   	push   ax
   54d70:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54d73:	48                   	dec    ax
   54d74:	bb 05 00             	mov    bx,0x5
   54d77:	99                   	cwd
   54d78:	f7 fb                	idiv   bx
   54d7a:	6b d2 11             	imul   dx,dx,0x11
   54d7d:	81 c2 ec 00          	add    dx,0xec
   54d81:	07                   	pop    es
   54d82:	5b                   	pop    bx
   54d83:	26 89 97 f5 e5       	mov    WORD PTR es:[bx-0x1a0b],dx
   54d88:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54d8b:	c1 e3 03             	shl    bx,0x3
   54d8e:	b8 88 01             	mov    ax,0x188
   54d91:	53                   	push   bx
   54d92:	50                   	push   ax
   54d93:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54d96:	48                   	dec    ax
   54d97:	bb 05 00             	mov    bx,0x5
   54d9a:	99                   	cwd
   54d9b:	f7 fb                	idiv   bx
   54d9d:	6b c0 11             	imul   ax,ax,0x11
   54da0:	05 a5 00             	add    ax,0xa5
   54da3:	07                   	pop    es
   54da4:	5b                   	pop    bx
   54da5:	26 89 87 f7 e5       	mov    WORD PTR es:[bx-0x1a09],ax
   54daa:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54dad:	c1 e3 03             	shl    bx,0x3
   54db0:	b8 88 01             	mov    ax,0x188
   54db3:	53                   	push   bx
   54db4:	50                   	push   ax
   54db5:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54db8:	48                   	dec    ax
   54db9:	bb 05 00             	mov    bx,0x5
   54dbc:	99                   	cwd
   54dbd:	f7 fb                	idiv   bx
   54dbf:	6b d2 11             	imul   dx,dx,0x11
   54dc2:	81 c2 fb 00          	add    dx,0xfb
   54dc6:	07                   	pop    es
   54dc7:	5b                   	pop    bx
   54dc8:	26 89 97 f9 e5       	mov    WORD PTR es:[bx-0x1a07],dx
   54dcd:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54dd0:	c1 e3 03             	shl    bx,0x3
   54dd3:	b8 88 01             	mov    ax,0x188
   54dd6:	53                   	push   bx
   54dd7:	50                   	push   ax
   54dd8:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54ddb:	48                   	dec    ax
   54ddc:	bb 05 00             	mov    bx,0x5
   54ddf:	99                   	cwd
   54de0:	f7 fb                	idiv   bx
   54de2:	6b c0 11             	imul   ax,ax,0x11
   54de5:	05 b4 00             	add    ax,0xb4
   54de8:	07                   	pop    es
   54de9:	5b                   	pop    bx
   54dea:	26 89 87 fb e5       	mov    WORD PTR es:[bx-0x1a05],ax
   54def:	e9 8b 00             	jmp    0x54e7d
   54df2:	e9 88 00             	jmp    0x54e7d
   54df5:	68 e0 01             	push   0x1e0
   54df8:	68 41 03             	push   0x341
   54dfb:	6a 06                	push   0x6
   54dfd:	6a 4b                	push   0x4b
   54dff:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54e02:	48                   	dec    ax
   54e03:	bb 05 00             	mov    bx,0x5
   54e06:	99                   	cwd
   54e07:	f7 fb                	idiv   bx
   54e09:	6b c0 11             	imul   ax,ax,0x11
   54e0c:	05 a5 00             	add    ax,0xa5
   54e0f:	50                   	push   ax
   54e10:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54e13:	48                   	dec    ax
   54e14:	bb 05 00             	mov    bx,0x5
   54e17:	99                   	cwd
   54e18:	f7 fb                	idiv   bx
   54e1a:	6b d2 11             	imul   dx,dx,0x11
   54e1d:	81 c2 ec 00          	add    dx,0xec
   54e21:	52                   	push   dx
   54e22:	6a 0f                	push   0xf
   54e24:	6a 0f                	push   0xf
   54e26:	6a 00                	push   0x0
   54e28:	68 e0 01             	push   0x1e0
   54e2b:	9a 30 04 28 00       	call   0x28:0x430
   54e30:	83 c4 14             	add    sp,0x14
   54e33:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
   54e37:	74 44                	je     0x54e7d
   54e39:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54e3c:	c1 e3 03             	shl    bx,0x3
   54e3f:	b8 88 01             	mov    ax,0x188
   54e42:	33 d2                	xor    dx,dx
   54e44:	8e c0                	mov    es,ax
   54e46:	26 89 97 fb e5       	mov    WORD PTR es:[bx-0x1a05],dx
   54e4b:	8b c2                	mov    ax,dx
   54e4d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54e50:	c1 e3 03             	shl    bx,0x3
   54e53:	ba 88 01             	mov    dx,0x188
   54e56:	8e c2                	mov    es,dx
   54e58:	26 89 87 f9 e5       	mov    WORD PTR es:[bx-0x1a07],ax
   54e5d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54e60:	c1 e3 03             	shl    bx,0x3
   54e63:	ba 88 01             	mov    dx,0x188
   54e66:	8e c2                	mov    es,dx
   54e68:	26 89 87 f7 e5       	mov    WORD PTR es:[bx-0x1a09],ax
   54e6d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54e70:	c1 e3 03             	shl    bx,0x3
   54e73:	ba 88 01             	mov    dx,0x188
   54e76:	8e c2                	mov    es,dx
   54e78:	26 89 87 f5 e5       	mov    WORD PTR es:[bx-0x1a0b],ax
   54e7d:	5d                   	pop    bp
   54e7e:	cb                   	retf
   54e7f:	55                   	push   bp
   54e80:	8b ec                	mov    bp,sp
   54e82:	83 ec 04             	sub    sp,0x4
   54e85:	83 7e 06 04          	cmp    WORD PTR [bp+0x6],0x4
   54e89:	7c 03                	jl     0x54e8e
   54e8b:	e9 a6 01             	jmp    0x55034
   54e8e:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   54e92:	75 03                	jne    0x54e97
   54e94:	e9 9d 01             	jmp    0x55034
   54e97:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   54e9a:	6b db 5c             	imul   bx,bx,0x5c
   54e9d:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54ea0:	d1 e0                	shl    ax,1
   54ea2:	03 d8                	add    bx,ax
   54ea4:	b8 88 01             	mov    ax,0x188
   54ea7:	8e c0                	mov    es,ax
   54ea9:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   54eae:	d1 e0                	shl    ax,1
   54eb0:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   54eb3:	6b db 5c             	imul   bx,bx,0x5c
   54eb6:	03 d8                	add    bx,ax
   54eb8:	b8 88 01             	mov    ax,0x188
   54ebb:	8e c0                	mov    es,ax
   54ebd:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   54ec2:	bb 64 00             	mov    bx,0x64
   54ec5:	99                   	cwd
   54ec6:	f7 fb                	idiv   bx
   54ec8:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   54ecb:	83 7e fe 2b          	cmp    WORD PTR [bp-0x2],0x2b
   54ecf:	75 07                	jne    0x54ed8
   54ed1:	c7 46 fe 22 00       	mov    WORD PTR [bp-0x2],0x22
   54ed6:	eb 0a                	jmp    0x54ee2
   54ed8:	83 7e fe 20          	cmp    WORD PTR [bp-0x2],0x20
   54edc:	7e 04                	jle    0x54ee2
   54ede:	83 46 fe 02          	add    WORD PTR [bp-0x2],0x2
   54ee2:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   54ee6:	74 45                	je     0x54f2d
   54ee8:	6a 00                	push   0x0
   54eea:	6a 06                	push   0x6
   54eec:	6a 10                	push   0x10
   54eee:	6a 10                	push   0x10
   54ef0:	68 a4 00             	push   0xa4
   54ef3:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54ef6:	48                   	dec    ax
   54ef7:	6b c0 11             	imul   ax,ax,0x11
   54efa:	05 3a 00             	add    ax,0x3a
   54efd:	50                   	push   ax
   54efe:	9a 08 09 28 00       	call   0x28:0x908
   54f03:	83 c4 0c             	add    sp,0xc
   54f06:	68 e0 01             	push   0x1e0
   54f09:	68 41 03             	push   0x341
   54f0c:	6a 06                	push   0x6
   54f0e:	6a 4b                	push   0x4b
   54f10:	68 a5 00             	push   0xa5
   54f13:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54f16:	48                   	dec    ax
   54f17:	6b c0 11             	imul   ax,ax,0x11
   54f1a:	05 3b 00             	add    ax,0x3b
   54f1d:	50                   	push   ax
   54f1e:	6a 0f                	push   0xf
   54f20:	6a 0f                	push   0xf
   54f22:	6a 00                	push   0x0
   54f24:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   54f27:	48                   	dec    ax
   54f28:	6b c0 0f             	imul   ax,ax,0xf
   54f2b:	eb 29                	jmp    0x54f56
   54f2d:	68 e0 01             	push   0x1e0
   54f30:	68 d0 02             	push   0x2d0
   54f33:	6a 06                	push   0x6
   54f35:	6a 01                	push   0x1
   54f37:	68 a5 00             	push   0xa5
   54f3a:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54f3d:	48                   	dec    ax
   54f3e:	6b c0 11             	imul   ax,ax,0x11
   54f41:	05 3b 00             	add    ax,0x3b
   54f44:	50                   	push   ax
   54f45:	6a 0f                	push   0xf
   54f47:	6a 0f                	push   0xf
   54f49:	68 a5 00             	push   0xa5
   54f4c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54f4f:	48                   	dec    ax
   54f50:	6b c0 11             	imul   ax,ax,0x11
   54f53:	05 3b 00             	add    ax,0x3b
   54f56:	50                   	push   ax
   54f57:	9a 30 04 28 00       	call   0x28:0x430
   54f5c:	83 c4 14             	add    sp,0x14
   54f5f:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   54f62:	6b db 5c             	imul   bx,bx,0x5c
   54f65:	b8 88 01             	mov    ax,0x188
   54f68:	8e c0                	mov    es,ax
   54f6a:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   54f6f:	d1 e0                	shl    ax,1
   54f71:	8b 5e 08             	mov    bx,WORD PTR [bp+0x8]
   54f74:	6b db 5c             	imul   bx,bx,0x5c
   54f77:	03 d8                	add    bx,ax
   54f79:	b8 88 01             	mov    ax,0x188
   54f7c:	8e c0                	mov    es,ax
   54f7e:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   54f83:	bb 64 00             	mov    bx,0x64
   54f86:	99                   	cwd
   54f87:	f7 fb                	idiv   bx
   54f89:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   54f8c:	83 7e fc 2b          	cmp    WORD PTR [bp-0x4],0x2b
   54f90:	75 05                	jne    0x54f97
   54f92:	c7 46 fc 1a 00       	mov    WORD PTR [bp-0x4],0x1a
   54f97:	83 7e 06 02          	cmp    WORD PTR [bp+0x6],0x2
   54f9b:	75 32                	jne    0x54fcf
   54f9d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   54fa0:	6b db 0e             	imul   bx,bx,0xe
   54fa3:	b8 88 01             	mov    ax,0x188
   54fa6:	8e c0                	mov    es,ax
   54fa8:	26 83 bf 81 0e 02    	cmp    WORD PTR es:[bx+0xe81],0x2
   54fae:	75 1f                	jne    0x54fcf
   54fb0:	68 fd 00             	push   0xfd
   54fb3:	6a 06                	push   0x6
   54fb5:	6a 0f                	push   0xf
   54fb7:	6a 0f                	push   0xf
   54fb9:	68 a5 00             	push   0xa5
   54fbc:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   54fbf:	48                   	dec    ax
   54fc0:	6b c0 11             	imul   ax,ax,0x11
   54fc3:	05 3b 00             	add    ax,0x3b
   54fc6:	50                   	push   ax
   54fc7:	9a 51 0a 30 00       	call   0x30:0xa51
   54fcc:	83 c4 0c             	add    sp,0xc
   54fcf:	83 7e 0a 00          	cmp    WORD PTR [bp+0xa],0x0
   54fd3:	75 03                	jne    0x54fd8
   54fd5:	e9 80 00             	jmp    0x55058
   54fd8:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54fdb:	c1 e3 03             	shl    bx,0x3
   54fde:	b8 88 01             	mov    ax,0x188
   54fe1:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   54fe4:	4a                   	dec    dx
   54fe5:	6b d2 11             	imul   dx,dx,0x11
   54fe8:	83 c2 3b             	add    dx,0x3b
   54feb:	8e c0                	mov    es,ax
   54fed:	26 89 97 45 e6       	mov    WORD PTR es:[bx-0x19bb],dx
   54ff2:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   54ff5:	c1 e3 03             	shl    bx,0x3
   54ff8:	b8 88 01             	mov    ax,0x188
   54ffb:	8e c0                	mov    es,ax
   54ffd:	26 c7 87 47 e6 a5 00 	mov    WORD PTR es:[bx-0x19b9],0xa5
   55004:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   55007:	c1 e3 03             	shl    bx,0x3
   5500a:	b8 88 01             	mov    ax,0x188
   5500d:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   55010:	4a                   	dec    dx
   55011:	6b d2 11             	imul   dx,dx,0x11
   55014:	83 c2 4a             	add    dx,0x4a
   55017:	8e c0                	mov    es,ax
   55019:	26 89 97 49 e6       	mov    WORD PTR es:[bx-0x19b7],dx
   5501e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   55021:	c1 e3 03             	shl    bx,0x3
   55024:	b8 88 01             	mov    ax,0x188
   55027:	8e c0                	mov    es,ax
   55029:	26 c7 87 4b e6 b4 00 	mov    WORD PTR es:[bx-0x19b5],0xb4
   55030:	eb 26                	jmp    0x55058
   55032:	eb 24                	jmp    0x55058
   55034:	83 7e 06 04          	cmp    WORD PTR [bp+0x6],0x4
   55038:	75 1e                	jne    0x55058
   5503a:	6a 00                	push   0x0
   5503c:	6a 00                	push   0x0
   5503e:	6a 0e                	push   0xe
   55040:	6a 0e                	push   0xe
   55042:	68 a5 00             	push   0xa5
   55045:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   55048:	48                   	dec    ax
   55049:	6b c0 11             	imul   ax,ax,0x11
   5504c:	05 3b 00             	add    ax,0x3b
   5504f:	50                   	push   ax
   55050:	9a 99 0b 28 00       	call   0x28:0xb99
   55055:	83 c4 0c             	add    sp,0xc
   55058:	c9                   	leave
   55059:	cb                   	retf
   5505a:	55                   	push   bp
   5505b:	8b ec                	mov    bp,sp
   5505d:	83 ec 6c             	sub    sp,0x6c
   55060:	56                   	push   si
   55061:	c7 46 f0 00 00       	mov    WORD PTR [bp-0x10],0x0
   55066:	c7 06 22 63 00 00    	mov    WORD PTR ds:0x6322,0x0
   5506c:	8d 46 94             	lea    ax,[bp-0x6c]
   5506f:	16                   	push   ss
   55070:	50                   	push   ax
   55071:	68 88 01             	push   0x188
   55074:	68 2c 96             	push   0x962c
   55077:	b9 48 00             	mov    cx,0x48
   5507a:	9a 7a 12 00 00       	call   0x0:0x127a
   5507f:	68 88 01             	push   0x188
   55082:	68 2c 96             	push   0x962c
   55085:	68 88 01             	push   0x188
   55088:	68 4c 97             	push   0x974c
   5508b:	b9 48 00             	mov    cx,0x48
   5508e:	9a 7a 12 00 00       	call   0x0:0x127a
   55093:	b8 c8 fe             	mov    ax,0xfec8
   55096:	a3 7e d5             	mov    ds:0xd57e,ax
   55099:	a3 80 d5             	mov    ds:0xd580,ax
   5509c:	b8 88 01             	mov    ax,0x188
   5509f:	8e c0                	mov    es,ax
   550a1:	26 c7 06 5e 3d 00 00 	mov    WORD PTR es:0x3d5e,0x0
   550a8:	b8 88 01             	mov    ax,0x188
   550ab:	33 d2                	xor    dx,dx
   550ad:	8e c0                	mov    es,ax
   550af:	26 89 16 6e 3d       	mov    WORD PTR es:0x3d6e,dx
   550b4:	8b c2                	mov    ax,dx
   550b6:	ba 88 01             	mov    dx,0x188
   550b9:	8e c2                	mov    es,dx
   550bb:	26 a3 72 3d          	mov    es:0x3d72,ax
   550bf:	ba 88 01             	mov    dx,0x188
   550c2:	8e c2                	mov    es,dx
   550c4:	26 a3 70 3d          	mov    es:0x3d70,ax
   550c8:	9a 52 00 18 01       	call   0x118:0x52
   550cd:	68 00 01             	push   0x100
   550d0:	6a 00                	push   0x0
   550d2:	1e                   	push   ds
   550d3:	68 80 68             	push   0x6880
   550d6:	9a 2a 00 48 01       	call   0x148:0x2a
   550db:	83 c4 08             	add    sp,0x8
   550de:	1e                   	push   ds
   550df:	68 8b 68             	push   0x688b
   550e2:	68 21 0c             	push   0xc21
   550e5:	68 88 01             	push   0x188
   550e8:	68 26 de             	push   0xde26
   550eb:	9a 81 0a 20 00       	call   0x20:0xa81
   550f0:	83 c4 0a             	add    sp,0xa
   550f3:	6a 00                	push   0x0
   550f5:	b8 88 01             	mov    ax,0x188
   550f8:	8e c0                	mov    es,ax
   550fa:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   550ff:	26 ff 37             	push   WORD PTR es:[bx]
   55102:	6a 00                	push   0x0
   55104:	6a 00                	push   0x0
   55106:	68 80 7f             	push   0x7f80
   55109:	9a 88 06 98 00       	call   0x98:0x688
   5510e:	52                   	push   dx
   5510f:	50                   	push   ax
   55110:	9a 13 1a 28 00       	call   0x28:0x1a13
   55115:	83 c4 06             	add    sp,0x6
   55118:	68 88 01             	push   0x188
   5511b:	68 26 de             	push   0xde26
   5511e:	9a 22 0b 20 00       	call   0x20:0xb22
   55123:	83 c4 04             	add    sp,0x4
   55126:	b8 88 01             	mov    ax,0x188
   55129:	8e c0                	mov    es,ax
   5512b:	26 83 3e 18 73 00    	cmp    WORD PTR es:0x7318,0x0
   55131:	75 25                	jne    0x55158
   55133:	b8 88 01             	mov    ax,0x188
   55136:	8e c0                	mov    es,ax
   55138:	26 a1 1e 73          	mov    ax,es:0x731e
   5513c:	ba 88 01             	mov    dx,0x188
   5513f:	8e c2                	mov    es,dx
   55141:	26 01 06 70 3d       	add    WORD PTR es:0x3d70,ax
   55146:	b8 88 01             	mov    ax,0x188
   55149:	8e c0                	mov    es,ax
   5514b:	26 a1 20 73          	mov    ax,es:0x7320
   5514f:	ba 88 01             	mov    dx,0x188
   55152:	8e c2                	mov    es,dx
   55154:	26 a3 72 3d          	mov    es:0x3d72,ax
   55158:	b8 88 01             	mov    ax,0x188
   5515b:	8e c0                	mov    es,ax
   5515d:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   55163:	74 0c                	je     0x55171
   55165:	b8 88 01             	mov    ax,0x188
   55168:	8e c0                	mov    es,ax
   5516a:	26 a1 4d bb          	mov    ax,es:0xbb4d
   5516e:	89 46 e0             	mov    WORD PTR [bp-0x20],ax
   55171:	b8 88 01             	mov    ax,0x188
   55174:	8e c0                	mov    es,ax
   55176:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   5517c:	75 03                	jne    0x55181
   5517e:	e9 99 00             	jmp    0x5521a
   55181:	b8 88 01             	mov    ax,0x188
   55184:	8e c0                	mov    es,ax
   55186:	26 80 3e 37 bb 00    	cmp    BYTE PTR es:0xbb37,0x0
   5518c:	75 03                	jne    0x55191
   5518e:	e9 89 00             	jmp    0x5521a
   55191:	6a 00                	push   0x0
   55193:	6a 01                	push   0x1
   55195:	6a 00                	push   0x0
   55197:	68 00 80             	push   0x8000
   5519a:	9a 79 17 00 00       	call   0x0:0x1779
   5519f:	99                   	cwd
   551a0:	d1 e0                	shl    ax,1
   551a2:	d1 d2                	rcl    dx,1
   551a4:	52                   	push   dx
   551a5:	50                   	push   ax
   551a6:	9a df 12 00 00       	call   0x0:0x12df
   551ab:	0b c0                	or     ax,ax
   551ad:	74 05                	je     0x551b4
   551af:	b8 0c 00             	mov    ax,0xc
   551b2:	eb 03                	jmp    0x551b7
   551b4:	b8 10 00             	mov    ax,0x10
   551b7:	50                   	push   ax
   551b8:	9a 43 00 28 01       	call   0x128:0x43
   551bd:	83 c4 06             	add    sp,0x6
   551c0:	b8 88 01             	mov    ax,0x188
   551c3:	8e c0                	mov    es,ax
   551c5:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   551cb:	74 25                	je     0x551f2
   551cd:	b8 88 01             	mov    ax,0x188
   551d0:	8e c0                	mov    es,ax
   551d2:	26 83 3e 4d bb 0c    	cmp    WORD PTR es:0xbb4d,0xc
   551d8:	75 0d                	jne    0x551e7
   551da:	b8 88 01             	mov    ax,0x188
   551dd:	8e c0                	mov    es,ax
   551df:	26 83 2e 72 3d 1e    	sub    WORD PTR es:0x3d72,0x1e
   551e5:	eb 0b                	jmp    0x551f2
   551e7:	b8 88 01             	mov    ax,0x188
   551ea:	8e c0                	mov    es,ax
   551ec:	26 83 2e 72 3d 19    	sub    WORD PTR es:0x3d72,0x19
   551f2:	b8 88 01             	mov    ax,0x188
   551f5:	8e c0                	mov    es,ax
   551f7:	26 a1 72 3d          	mov    ax,es:0x3d72
   551fb:	ba 88 01             	mov    dx,0x188
   551fe:	8e c2                	mov    es,dx
   55200:	26 01 06 1a 73       	add    WORD PTR es:0x731a,ax
   55205:	6a ff                	push   0xffff
   55207:	6a ff                	push   0xffff
   55209:	b8 88 01             	mov    ax,0x188
   5520c:	8e c0                	mov    es,ax
   5520e:	26 a1 1a 73          	mov    ax,es:0x731a
   55212:	99                   	cwd
   55213:	52                   	push   dx
   55214:	50                   	push   ax
   55215:	9a 25 16 68 00       	call   0x68:0x1625
   5521a:	b8 88 01             	mov    ax,0x188
   5521d:	8e c0                	mov    es,ax
   5521f:	26 a0 24 73          	mov    al,es:0x7324
   55223:	b4 00                	mov    ah,0x0
   55225:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   55228:	c7 06 2a 63 01 00    	mov    WORD PTR ds:0x632a,0x1
   5522e:	c7 06 2c 63 02 00    	mov    WORD PTR ds:0x632c,0x2
   55234:	c7 06 4a d5 00 00    	mov    WORD PTR ds:0xd54a,0x0
   5523a:	c7 06 58 d5 00 00    	mov    WORD PTR ds:0xd558,0x0
   55240:	c7 06 a6 d5 00 00    	mov    WORD PTR ds:0xd5a6,0x0
   55246:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   5524b:	eb 17                	jmp    0x55264
   5524d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   55250:	6b db 06             	imul   bx,bx,0x6
   55253:	b8 88 01             	mov    ax,0x188
   55256:	8e c0                	mov    es,ax
   55258:	26 8b 87 dc 5b       	mov    ax,WORD PTR es:[bx+0x5bdc]
   5525d:	01 06 58 d5          	add    WORD PTR ds:0xd558,ax
   55261:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   55264:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   55268:	7e e3                	jle    0x5524d
   5526a:	9a 8e 17 10 00       	call   0x10:0x178e
   5526f:	0e                   	push   cs
   55270:	e8 4d 4f             	call   0x5a1c0
   55273:	0e                   	push   cs
   55274:	e8 65 a0             	call   0x5f2dc
   55277:	9a b6 06 30 00       	call   0x30:0x6b6
   5527c:	0e                   	push   cs
   5527d:	e8 15 ad             	call   0x5ff95
   55280:	c7 46 f2 00 00       	mov    WORD PTR [bp-0xe],0x0
   55285:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   5528a:	e9 32 01             	jmp    0x553bf
   5528d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   55290:	6b db 06             	imul   bx,bx,0x6
   55293:	b8 88 01             	mov    ax,0x188
   55296:	8e c0                	mov    es,ax
   55298:	26 83 bf da 5b 64    	cmp    WORD PTR es:[bx+0x5bda],0x64
   5529e:	7e 17                	jle    0x552b7
   552a0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   552a3:	6b db 06             	imul   bx,bx,0x6
   552a6:	b8 88 01             	mov    ax,0x188
   552a9:	8e c0                	mov    es,ax
   552ab:	26 83 af da 5b 64    	sub    WORD PTR es:[bx+0x5bda],0x64
   552b1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   552b4:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   552b7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   552ba:	6b db 06             	imul   bx,bx,0x6
   552bd:	b8 88 01             	mov    ax,0x188
   552c0:	8e c0                	mov    es,ax
   552c2:	26 83 bf da 5b 00    	cmp    WORD PTR es:[bx+0x5bda],0x0
   552c8:	7f 03                	jg     0x552cd
   552ca:	e9 a4 00             	jmp    0x55371
   552cd:	b8 88 01             	mov    ax,0x188
   552d0:	8e c0                	mov    es,ax
   552d2:	26 a0 39 bb          	mov    al,es:0xbb39
   552d6:	b4 00                	mov    ah,0x0
   552d8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   552db:	6b db 06             	imul   bx,bx,0x6
   552de:	ba 88 01             	mov    dx,0x188
   552e1:	8e c2                	mov    es,dx
   552e3:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   552e8:	6b db 2e             	imul   bx,bx,0x2e
   552eb:	ba 88 01             	mov    dx,0x188
   552ee:	8e c2                	mov    es,dx
   552f0:	26 f7 af 87 12       	imul   WORD PTR es:[bx+0x1287]
   552f5:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   552f8:	6b db 06             	imul   bx,bx,0x6
   552fb:	ba 88 01             	mov    dx,0x188
   552fe:	8e c2                	mov    es,dx
   55300:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   55305:	6b db 2e             	imul   bx,bx,0x2e
   55308:	ba 88 01             	mov    dx,0x188
   5530b:	8e c2                	mov    es,dx
   5530d:	26 8b 97 89 12       	mov    dx,WORD PTR es:[bx+0x1289]
   55312:	03 d0                	add    dx,ax
   55314:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   55317:	6b db 2e             	imul   bx,bx,0x2e
   5531a:	b8 88 01             	mov    ax,0x188
   5531d:	8e c0                	mov    es,ax
   5531f:	26 89 97 d2 9f       	mov    WORD PTR es:[bx-0x602e],dx
   55324:	c7 46 fc 02 00       	mov    WORD PTR [bp-0x4],0x2
   55329:	eb 3e                	jmp    0x55369
   5532b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5532e:	6b db 06             	imul   bx,bx,0x6
   55331:	b8 88 01             	mov    ax,0x188
   55334:	8e c0                	mov    es,ax
   55336:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   5533b:	6b db 2e             	imul   bx,bx,0x2e
   5533e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   55341:	d1 e0                	shl    ax,1
   55343:	03 d8                	add    bx,ax
   55345:	b8 88 01             	mov    ax,0x188
   55348:	8e c0                	mov    es,ax
   5534a:	26 8b 87 87 12       	mov    ax,WORD PTR es:[bx+0x1287]
   5534f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   55352:	6b db 2e             	imul   bx,bx,0x2e
   55355:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   55358:	d1 e2                	shl    dx,1
   5535a:	03 da                	add    bx,dx
   5535c:	ba 88 01             	mov    dx,0x188
   5535f:	8e c2                	mov    es,dx
   55361:	26 89 87 d0 9f       	mov    WORD PTR es:[bx-0x6030],ax
   55366:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   55369:	83 7e fc 13          	cmp    WORD PTR [bp-0x4],0x13
   5536d:	7e bc                	jle    0x5532b
   5536f:	eb 3b                	jmp    0x553ac
   55371:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   55374:	6b db 06             	imul   bx,bx,0x6
   55377:	b8 88 01             	mov    ax,0x188
   5537a:	8e c0                	mov    es,ax
   5537c:	26 c7 87 dc 5b 00 00 	mov    WORD PTR es:[bx+0x5bdc],0x0
   55383:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   55388:	eb 1c                	jmp    0x553a6
   5538a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5538d:	6b db 2e             	imul   bx,bx,0x2e
   55390:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   55393:	d1 e0                	shl    ax,1
   55395:	03 d8                	add    bx,ax
   55397:	b8 88 01             	mov    ax,0x188
   5539a:	8e c0                	mov    es,ax
   5539c:	26 c7 87 d0 9f 00 00 	mov    WORD PTR es:[bx-0x6030],0x0
   553a3:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   553a6:	83 7e fc 13          	cmp    WORD PTR [bp-0x4],0x13
   553aa:	7e de                	jle    0x5538a
   553ac:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   553af:	6b db 2e             	imul   bx,bx,0x2e
   553b2:	b8 88 01             	mov    ax,0x188
   553b5:	8e c0                	mov    es,ax
   553b7:	26 ff 87 d6 9f       	inc    WORD PTR es:[bx-0x602a]
   553bc:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   553bf:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   553c3:	7f 03                	jg     0x553c8
   553c5:	e9 c5 fe             	jmp    0x5528d
   553c8:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   553cd:	e9 df 01             	jmp    0x555af
   553d0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   553d3:	6b db 06             	imul   bx,bx,0x6
   553d6:	b8 88 01             	mov    ax,0x188
   553d9:	8e c0                	mov    es,ax
   553db:	26 83 bf dc 5b 00    	cmp    WORD PTR es:[bx+0x5bdc],0x0
   553e1:	75 03                	jne    0x553e6
   553e3:	e9 c6 01             	jmp    0x555ac
   553e6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   553e9:	48                   	dec    ax
   553ea:	c1 e0 03             	shl    ax,0x3
   553ed:	40                   	inc    ax
   553ee:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   553f1:	e9 99 01             	jmp    0x5558d
   553f4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   553f7:	6b db 2e             	imul   bx,bx,0x2e
   553fa:	b8 88 01             	mov    ax,0x188
   553fd:	8e c0                	mov    es,ax
   553ff:	26 8b 87 d2 9f       	mov    ax,WORD PTR es:[bx-0x602e]
   55404:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55407:	6b db 28             	imul   bx,bx,0x28
   5540a:	ba 88 01             	mov    dx,0x188
   5540d:	8e c2                	mov    es,dx
   5540f:	26 89 87 8a a0       	mov    WORD PTR es:[bx-0x5f76],ax
   55414:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   55417:	6b db 2e             	imul   bx,bx,0x2e
   5541a:	b8 88 01             	mov    ax,0x188
   5541d:	8e c0                	mov    es,ax
   5541f:	26 8b 87 e2 9f       	mov    ax,WORD PTR es:[bx-0x601e]
   55424:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55427:	6b db 28             	imul   bx,bx,0x28
   5542a:	ba 88 01             	mov    dx,0x188
   5542d:	8e c2                	mov    es,dx
   5542f:	26 89 87 8c a0       	mov    WORD PTR es:[bx-0x5f74],ax
   55434:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55437:	6b db 28             	imul   bx,bx,0x28
   5543a:	b8 88 01             	mov    ax,0x188
   5543d:	8e c0                	mov    es,ax
   5543f:	26 c7 87 8e a0 01 00 	mov    WORD PTR es:[bx-0x5f72],0x1
   55446:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55449:	6b db 28             	imul   bx,bx,0x28
   5544c:	b8 88 01             	mov    ax,0x188
   5544f:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   55452:	83 c2 04             	add    dx,0x4
   55455:	8e c0                	mov    es,ax
   55457:	26 89 97 90 a0       	mov    WORD PTR es:[bx-0x5f70],dx
   5545c:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   5545f:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   55462:	75 14                	jne    0x55478
   55464:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55467:	6b db 28             	imul   bx,bx,0x28
   5546a:	b8 88 01             	mov    ax,0x188
   5546d:	8e c0                	mov    es,ax
   5546f:	26 c7 87 98 a0 01 00 	mov    WORD PTR es:[bx-0x5f68],0x1
   55476:	eb 12                	jmp    0x5548a
   55478:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5547b:	6b db 28             	imul   bx,bx,0x28
   5547e:	b8 88 01             	mov    ax,0x188
   55481:	8e c0                	mov    es,ax
   55483:	26 c7 87 98 a0 02 00 	mov    WORD PTR es:[bx-0x5f68],0x2
   5548a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5548d:	6b db 2e             	imul   bx,bx,0x2e
   55490:	b8 88 01             	mov    ax,0x188
   55493:	8e c0                	mov    es,ax
   55495:	26 8b 87 d6 9f       	mov    ax,WORD PTR es:[bx-0x602a]
   5549a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5549d:	6b db 28             	imul   bx,bx,0x28
   554a0:	ba 88 01             	mov    dx,0x188
   554a3:	8e c2                	mov    es,dx
   554a5:	26 89 87 9c a0       	mov    WORD PTR es:[bx-0x5f64],ax
   554aa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   554ad:	6b db 2e             	imul   bx,bx,0x2e
   554b0:	b8 88 01             	mov    ax,0x188
   554b3:	8e c0                	mov    es,ax
   554b5:	26 8b 87 d8 9f       	mov    ax,WORD PTR es:[bx-0x6028]
   554ba:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   554bd:	6b db 28             	imul   bx,bx,0x28
   554c0:	ba 88 01             	mov    dx,0x188
   554c3:	8e c2                	mov    es,dx
   554c5:	26 89 87 9e a0       	mov    WORD PTR es:[bx-0x5f62],ax
   554ca:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   554cd:	6b db 2e             	imul   bx,bx,0x2e
   554d0:	b8 88 01             	mov    ax,0x188
   554d3:	8e c0                	mov    es,ax
   554d5:	26 8b 87 e6 9f       	mov    ax,WORD PTR es:[bx-0x601a]
   554da:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   554dd:	6b db 28             	imul   bx,bx,0x28
   554e0:	ba 88 01             	mov    dx,0x188
   554e3:	8e c2                	mov    es,dx
   554e5:	26 89 87 a0 a0       	mov    WORD PTR es:[bx-0x5f60],ax
   554ea:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   554ed:	6b db 2e             	imul   bx,bx,0x2e
   554f0:	b8 88 01             	mov    ax,0x188
   554f3:	8e c0                	mov    es,ax
   554f5:	26 8b 87 e8 9f       	mov    ax,WORD PTR es:[bx-0x6018]
   554fa:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   554fd:	6b db 28             	imul   bx,bx,0x28
   55500:	ba 88 01             	mov    dx,0x188
   55503:	8e c2                	mov    es,dx
   55505:	26 89 87 a2 a0       	mov    WORD PTR es:[bx-0x5f5e],ax
   5550a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5550d:	6b db 2e             	imul   bx,bx,0x2e
   55510:	b8 88 01             	mov    ax,0x188
   55513:	8e c0                	mov    es,ax
   55515:	26 8b 87 ea 9f       	mov    ax,WORD PTR es:[bx-0x6016]
   5551a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5551d:	6b db 28             	imul   bx,bx,0x28
   55520:	ba 88 01             	mov    dx,0x188
   55523:	8e c2                	mov    es,dx
   55525:	26 89 87 a4 a0       	mov    WORD PTR es:[bx-0x5f5c],ax
   5552a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5552d:	6b db 2e             	imul   bx,bx,0x2e
   55530:	b8 88 01             	mov    ax,0x188
   55533:	8e c0                	mov    es,ax
   55535:	26 8b 87 ec 9f       	mov    ax,WORD PTR es:[bx-0x6014]
   5553a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5553d:	6b db 28             	imul   bx,bx,0x28
   55540:	ba 88 01             	mov    dx,0x188
   55543:	8e c2                	mov    es,dx
   55545:	26 89 87 a6 a0       	mov    WORD PTR es:[bx-0x5f5a],ax
   5554a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5554d:	6b db 2e             	imul   bx,bx,0x2e
   55550:	b8 88 01             	mov    ax,0x188
   55553:	8e c0                	mov    es,ax
   55555:	26 8b 87 ee 9f       	mov    ax,WORD PTR es:[bx-0x6012]
   5555a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5555d:	6b db 28             	imul   bx,bx,0x28
   55560:	ba 88 01             	mov    dx,0x188
   55563:	8e c2                	mov    es,dx
   55565:	26 89 87 a8 a0       	mov    WORD PTR es:[bx-0x5f58],ax
   5556a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5556d:	6b db 2e             	imul   bx,bx,0x2e
   55570:	b8 88 01             	mov    ax,0x188
   55573:	8e c0                	mov    es,ax
   55575:	26 8b 87 f0 9f       	mov    ax,WORD PTR es:[bx-0x6010]
   5557a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5557d:	6b db 28             	imul   bx,bx,0x28
   55580:	ba 88 01             	mov    dx,0x188
   55583:	8e c2                	mov    es,dx
   55585:	26 89 87 aa a0       	mov    WORD PTR es:[bx-0x5f56],ax
   5558a:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   5558d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   55590:	6b db 06             	imul   bx,bx,0x6
   55593:	b8 88 01             	mov    ax,0x188
   55596:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   55599:	4a                   	dec    dx
   5559a:	c1 e2 03             	shl    dx,0x3
   5559d:	8e c0                	mov    es,ax
   5559f:	26 03 97 dc 5b       	add    dx,WORD PTR es:[bx+0x5bdc]
   555a4:	3b 56 fc             	cmp    dx,WORD PTR [bp-0x4]
   555a7:	7c 03                	jl     0x555ac
   555a9:	e9 48 fe             	jmp    0x553f4
   555ac:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   555af:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   555b3:	7f 03                	jg     0x555b8
   555b5:	e9 18 fe             	jmp    0x553d0
   555b8:	c7 06 ca d5 00 00    	mov    WORD PTR ds:0xd5ca,0x0
   555be:	eb 2b                	jmp    0x555eb
   555c0:	c7 06 c8 d5 00 00    	mov    WORD PTR ds:0xd5c8,0x0
   555c6:	eb 18                	jmp    0x555e0
   555c8:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   555cc:	6b db 38             	imul   bx,bx,0x38
   555cf:	a1 c8 d5             	mov    ax,ds:0xd5c8
   555d2:	d1 e0                	shl    ax,1
   555d4:	03 d8                	add    bx,ax
   555d6:	c7 87 ce c2 00 00    	mov    WORD PTR [bx-0x3d32],0x0
   555dc:	ff 06 c8 d5          	inc    WORD PTR ds:0xd5c8
   555e0:	83 3e c8 d5 1c       	cmp    WORD PTR ds:0xd5c8,0x1c
   555e5:	7c e1                	jl     0x555c8
   555e7:	ff 06 ca d5          	inc    WORD PTR ds:0xd5ca
   555eb:	83 3e ca d5 1c       	cmp    WORD PTR ds:0xd5ca,0x1c
   555f0:	7c ce                	jl     0x555c0
   555f2:	b8 88 01             	mov    ax,0x188
   555f5:	8e c0                	mov    es,ax
   555f7:	26 a0 f0 b9          	mov    al,es:0xb9f0
   555fb:	b4 00                	mov    ah,0x0
   555fd:	bb 04 00             	mov    bx,0x4
   55600:	99                   	cwd
   55601:	f7 fb                	idiv   bx
   55603:	b8 88 01             	mov    ax,0x188
   55606:	8e c0                	mov    es,ax
   55608:	26 88 16 f0 b9       	mov    BYTE PTR es:0xb9f0,dl
   5560d:	b8 88 01             	mov    ax,0x188
   55610:	8e c0                	mov    es,ax
   55612:	26 a0 f0 b9          	mov    al,es:0xb9f0
   55616:	b4 00                	mov    ah,0x0
   55618:	40                   	inc    ax
   55619:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   5561c:	83 7e ec 02          	cmp    WORD PTR [bp-0x14],0x2
   55620:	75 07                	jne    0x55629
   55622:	c7 46 ec 04 00       	mov    WORD PTR [bp-0x14],0x4
   55627:	eb 0b                	jmp    0x55634
   55629:	83 7e ec 04          	cmp    WORD PTR [bp-0x14],0x4
   5562d:	75 05                	jne    0x55634
   5562f:	c7 46 ec 02 00       	mov    WORD PTR [bp-0x14],0x2
   55634:	68 88 01             	push   0x188
   55637:	68 3b bb             	push   0xbb3b
   5563a:	9a 22 0b 20 00       	call   0x20:0xb22
   5563f:	83 c4 04             	add    sp,0x4
   55642:	b8 88 01             	mov    ax,0x188
   55645:	8e c0                	mov    es,ax
   55647:	26 a0 eb b9          	mov    al,es:0xb9eb
   5564b:	b4 00                	mov    ah,0x0
   5564d:	ba 88 01             	mov    dx,0x188
   55650:	8e c2                	mov    es,dx
   55652:	50                   	push   ax
   55653:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   55657:	5a                   	pop    dx
   55658:	f7 ea                	imul   dx
   5565a:	ba 88 01             	mov    dx,0x188
   5565d:	8e c2                	mov    es,dx
   5565f:	50                   	push   ax
   55660:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   55664:	5a                   	pop    dx
   55665:	03 c2                	add    ax,dx
   55667:	6b c0 0f             	imul   ax,ax,0xf
   5566a:	99                   	cwd
   5566b:	bb 88 01             	mov    bx,0x188
   5566e:	8e c3                	mov    es,bx
   55670:	50                   	push   ax
   55671:	52                   	push   dx
   55672:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   55677:	26 a1 ec b9          	mov    ax,es:0xb9ec
   5567b:	59                   	pop    cx
   5567c:	5b                   	pop    bx
   5567d:	9a 77 14 00 00       	call   0x0:0x1477
   55682:	8b d8                	mov    bx,ax
   55684:	8e c2                	mov    es,dx
   55686:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   55689:	b4 00                	mov    ah,0x0
   5568b:	a3 3e d5             	mov    ds:0xd53e,ax
   5568e:	b8 88 01             	mov    ax,0x188
   55691:	8e c0                	mov    es,ax
   55693:	26 a0 eb b9          	mov    al,es:0xb9eb
   55697:	b4 00                	mov    ah,0x0
   55699:	ba 88 01             	mov    dx,0x188
   5569c:	8e c2                	mov    es,dx
   5569e:	50                   	push   ax
   5569f:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   556a3:	5a                   	pop    dx
   556a4:	f7 ea                	imul   dx
   556a6:	ba 88 01             	mov    dx,0x188
   556a9:	8e c2                	mov    es,dx
   556ab:	50                   	push   ax
   556ac:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   556b0:	5a                   	pop    dx
   556b1:	03 c2                	add    ax,dx
   556b3:	6b c0 0f             	imul   ax,ax,0xf
   556b6:	40                   	inc    ax
   556b7:	99                   	cwd
   556b8:	bb 88 01             	mov    bx,0x188
   556bb:	8e c3                	mov    es,bx
   556bd:	50                   	push   ax
   556be:	52                   	push   dx
   556bf:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   556c4:	26 a1 ec b9          	mov    ax,es:0xb9ec
   556c8:	59                   	pop    cx
   556c9:	5b                   	pop    bx
   556ca:	9a 77 14 00 00       	call   0x0:0x1477
   556cf:	8b d8                	mov    bx,ax
   556d1:	8e c2                	mov    es,dx
   556d3:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   556d6:	b4 00                	mov    ah,0x0
   556d8:	a3 46 d5             	mov    ds:0xd546,ax
   556db:	b8 88 01             	mov    ax,0x188
   556de:	8e c0                	mov    es,ax
   556e0:	26 a0 eb b9          	mov    al,es:0xb9eb
   556e4:	b4 00                	mov    ah,0x0
   556e6:	ba 88 01             	mov    dx,0x188
   556e9:	8e c2                	mov    es,dx
   556eb:	50                   	push   ax
   556ec:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   556f0:	5a                   	pop    dx
   556f1:	f7 ea                	imul   dx
   556f3:	ba 88 01             	mov    dx,0x188
   556f6:	8e c2                	mov    es,dx
   556f8:	50                   	push   ax
   556f9:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   556fd:	5a                   	pop    dx
   556fe:	03 c2                	add    ax,dx
   55700:	6b c0 0f             	imul   ax,ax,0xf
   55703:	05 02 00             	add    ax,0x2
   55706:	99                   	cwd
   55707:	bb 88 01             	mov    bx,0x188
   5570a:	8e c3                	mov    es,bx
   5570c:	50                   	push   ax
   5570d:	52                   	push   dx
   5570e:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   55713:	26 a1 ec b9          	mov    ax,es:0xb9ec
   55717:	59                   	pop    cx
   55718:	5b                   	pop    bx
   55719:	9a 77 14 00 00       	call   0x0:0x1477
   5571e:	8b d8                	mov    bx,ax
   55720:	8e c2                	mov    es,dx
   55722:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   55725:	b4 00                	mov    ah,0x0
   55727:	a3 3c d5             	mov    ds:0xd53c,ax
   5572a:	b8 88 01             	mov    ax,0x188
   5572d:	8e c0                	mov    es,ax
   5572f:	26 a0 eb b9          	mov    al,es:0xb9eb
   55733:	b4 00                	mov    ah,0x0
   55735:	ba 88 01             	mov    dx,0x188
   55738:	8e c2                	mov    es,dx
   5573a:	50                   	push   ax
   5573b:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   5573f:	5a                   	pop    dx
   55740:	f7 ea                	imul   dx
   55742:	ba 88 01             	mov    dx,0x188
   55745:	8e c2                	mov    es,dx
   55747:	50                   	push   ax
   55748:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   5574c:	5a                   	pop    dx
   5574d:	03 c2                	add    ax,dx
   5574f:	6b c0 0f             	imul   ax,ax,0xf
   55752:	05 03 00             	add    ax,0x3
   55755:	99                   	cwd
   55756:	bb 88 01             	mov    bx,0x188
   55759:	8e c3                	mov    es,bx
   5575b:	50                   	push   ax
   5575c:	52                   	push   dx
   5575d:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   55762:	26 a1 ec b9          	mov    ax,es:0xb9ec
   55766:	59                   	pop    cx
   55767:	5b                   	pop    bx
   55768:	9a 77 14 00 00       	call   0x0:0x1477
   5576d:	8b d8                	mov    bx,ax
   5576f:	8e c2                	mov    es,dx
   55771:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   55774:	b4 00                	mov    ah,0x0
   55776:	a3 44 d5             	mov    ds:0xd544,ax
   55779:	b8 88 01             	mov    ax,0x188
   5577c:	8e c0                	mov    es,ax
   5577e:	26 a0 eb b9          	mov    al,es:0xb9eb
   55782:	b4 00                	mov    ah,0x0
   55784:	ba 88 01             	mov    dx,0x188
   55787:	8e c2                	mov    es,dx
   55789:	50                   	push   ax
   5578a:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   5578e:	5a                   	pop    dx
   5578f:	f7 ea                	imul   dx
   55791:	ba 88 01             	mov    dx,0x188
   55794:	8e c2                	mov    es,dx
   55796:	50                   	push   ax
   55797:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   5579b:	5a                   	pop    dx
   5579c:	03 c2                	add    ax,dx
   5579e:	6b c0 0f             	imul   ax,ax,0xf
   557a1:	05 04 00             	add    ax,0x4
   557a4:	99                   	cwd
   557a5:	bb 88 01             	mov    bx,0x188
   557a8:	8e c3                	mov    es,bx
   557aa:	50                   	push   ax
   557ab:	52                   	push   dx
   557ac:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   557b1:	26 a1 ec b9          	mov    ax,es:0xb9ec
   557b5:	59                   	pop    cx
   557b6:	5b                   	pop    bx
   557b7:	9a 77 14 00 00       	call   0x0:0x1477
   557bc:	8b d8                	mov    bx,ax
   557be:	8e c2                	mov    es,dx
   557c0:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   557c3:	b4 00                	mov    ah,0x0
   557c5:	a3 3a d5             	mov    ds:0xd53a,ax
   557c8:	b8 88 01             	mov    ax,0x188
   557cb:	8e c0                	mov    es,ax
   557cd:	26 a0 eb b9          	mov    al,es:0xb9eb
   557d1:	b4 00                	mov    ah,0x0
   557d3:	ba 88 01             	mov    dx,0x188
   557d6:	8e c2                	mov    es,dx
   557d8:	50                   	push   ax
   557d9:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   557dd:	5a                   	pop    dx
   557de:	f7 ea                	imul   dx
   557e0:	ba 88 01             	mov    dx,0x188
   557e3:	8e c2                	mov    es,dx
   557e5:	50                   	push   ax
   557e6:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   557ea:	5a                   	pop    dx
   557eb:	03 c2                	add    ax,dx
   557ed:	6b c0 0f             	imul   ax,ax,0xf
   557f0:	05 05 00             	add    ax,0x5
   557f3:	99                   	cwd
   557f4:	bb 88 01             	mov    bx,0x188
   557f7:	8e c3                	mov    es,bx
   557f9:	50                   	push   ax
   557fa:	52                   	push   dx
   557fb:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   55800:	26 a1 ec b9          	mov    ax,es:0xb9ec
   55804:	59                   	pop    cx
   55805:	5b                   	pop    bx
   55806:	9a 77 14 00 00       	call   0x0:0x1477
   5580b:	8b d8                	mov    bx,ax
   5580d:	8e c2                	mov    es,dx
   5580f:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   55812:	b4 00                	mov    ah,0x0
   55814:	a3 42 d5             	mov    ds:0xd542,ax
   55817:	b8 88 01             	mov    ax,0x188
   5581a:	8e c0                	mov    es,ax
   5581c:	26 a0 eb b9          	mov    al,es:0xb9eb
   55820:	b4 00                	mov    ah,0x0
   55822:	ba 88 01             	mov    dx,0x188
   55825:	8e c2                	mov    es,dx
   55827:	50                   	push   ax
   55828:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   5582c:	5a                   	pop    dx
   5582d:	f7 ea                	imul   dx
   5582f:	ba 88 01             	mov    dx,0x188
   55832:	8e c2                	mov    es,dx
   55834:	50                   	push   ax
   55835:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   55839:	5a                   	pop    dx
   5583a:	03 c2                	add    ax,dx
   5583c:	6b c0 0f             	imul   ax,ax,0xf
   5583f:	05 06 00             	add    ax,0x6
   55842:	99                   	cwd
   55843:	bb 88 01             	mov    bx,0x188
   55846:	8e c3                	mov    es,bx
   55848:	50                   	push   ax
   55849:	52                   	push   dx
   5584a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   5584f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   55853:	59                   	pop    cx
   55854:	5b                   	pop    bx
   55855:	9a 77 14 00 00       	call   0x0:0x1477
   5585a:	8b d8                	mov    bx,ax
   5585c:	8e c2                	mov    es,dx
   5585e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   55861:	b4 00                	mov    ah,0x0
   55863:	a3 38 d5             	mov    ds:0xd538,ax
   55866:	b8 88 01             	mov    ax,0x188
   55869:	8e c0                	mov    es,ax
   5586b:	26 a0 eb b9          	mov    al,es:0xb9eb
   5586f:	b4 00                	mov    ah,0x0
   55871:	ba 88 01             	mov    dx,0x188
   55874:	8e c2                	mov    es,dx
   55876:	50                   	push   ax
   55877:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   5587b:	5a                   	pop    dx
   5587c:	f7 ea                	imul   dx
   5587e:	ba 88 01             	mov    dx,0x188
   55881:	8e c2                	mov    es,dx
   55883:	50                   	push   ax
   55884:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   55888:	5a                   	pop    dx
   55889:	03 c2                	add    ax,dx
   5588b:	6b c0 0f             	imul   ax,ax,0xf
   5588e:	05 07 00             	add    ax,0x7
   55891:	99                   	cwd
   55892:	bb 88 01             	mov    bx,0x188
   55895:	8e c3                	mov    es,bx
   55897:	50                   	push   ax
   55898:	52                   	push   dx
   55899:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   5589e:	26 a1 ec b9          	mov    ax,es:0xb9ec
   558a2:	59                   	pop    cx
   558a3:	5b                   	pop    bx
   558a4:	9a 77 14 00 00       	call   0x0:0x1477
   558a9:	8b d8                	mov    bx,ax
   558ab:	8e c2                	mov    es,dx
   558ad:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   558b0:	b4 00                	mov    ah,0x0
   558b2:	a3 40 d5             	mov    ds:0xd540,ax
   558b5:	b8 88 01             	mov    ax,0x188
   558b8:	8e c0                	mov    es,ax
   558ba:	26 80 3e f0 b9 00    	cmp    BYTE PTR es:0xb9f0,0x0
   558c0:	75 22                	jne    0x558e4
   558c2:	83 3e 46 d5 01       	cmp    WORD PTR ds:0xd546,0x1
   558c7:	74 1b                	je     0x558e4
   558c9:	83 3e 3e d5 08       	cmp    WORD PTR ds:0xd53e,0x8
   558ce:	7d 14                	jge    0x558e4
   558d0:	83 3e 46 d5 03       	cmp    WORD PTR ds:0xd546,0x3
   558d5:	74 0d                	je     0x558e4
   558d7:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   558dc:	c7 46 ea ff ff       	mov    WORD PTR [bp-0x16],0xffff
   558e1:	e9 8a 00             	jmp    0x5596e
   558e4:	b8 88 01             	mov    ax,0x188
   558e7:	8e c0                	mov    es,ax
   558e9:	26 80 3e f0 b9 01    	cmp    BYTE PTR es:0xb9f0,0x1
   558ef:	75 1c                	jne    0x5590d
   558f1:	83 3e 44 d5 01       	cmp    WORD PTR ds:0xd544,0x1
   558f6:	74 15                	je     0x5590d
   558f8:	83 3e 3c d5 08       	cmp    WORD PTR ds:0xd53c,0x8
   558fd:	7d 0e                	jge    0x5590d
   558ff:	83 3e 44 d5 03       	cmp    WORD PTR ds:0xd544,0x3
   55904:	74 07                	je     0x5590d
   55906:	c7 46 e8 01 00       	mov    WORD PTR [bp-0x18],0x1
   5590b:	eb 5c                	jmp    0x55969
   5590d:	b8 88 01             	mov    ax,0x188
   55910:	8e c0                	mov    es,ax
   55912:	26 80 3e f0 b9 02    	cmp    BYTE PTR es:0xb9f0,0x2
   55918:	75 21                	jne    0x5593b
   5591a:	83 3e 42 d5 01       	cmp    WORD PTR ds:0xd542,0x1
   5591f:	74 1a                	je     0x5593b
   55921:	83 3e 3a d5 08       	cmp    WORD PTR ds:0xd53a,0x8
   55926:	7d 13                	jge    0x5593b
   55928:	83 3e 42 d5 03       	cmp    WORD PTR ds:0xd542,0x3
   5592d:	74 0c                	je     0x5593b
   5592f:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   55934:	c7 46 ea 01 00       	mov    WORD PTR [bp-0x16],0x1
   55939:	eb 33                	jmp    0x5596e
   5593b:	b8 88 01             	mov    ax,0x188
   5593e:	8e c0                	mov    es,ax
   55940:	26 80 3e f0 b9 03    	cmp    BYTE PTR es:0xb9f0,0x3
   55946:	75 1c                	jne    0x55964
   55948:	83 3e 40 d5 01       	cmp    WORD PTR ds:0xd540,0x1
   5594d:	74 15                	je     0x55964
   5594f:	83 3e 38 d5 08       	cmp    WORD PTR ds:0xd538,0x8
   55954:	7d 0e                	jge    0x55964
   55956:	83 3e 40 d5 03       	cmp    WORD PTR ds:0xd540,0x3
   5595b:	74 07                	je     0x55964
   5595d:	c7 46 e8 ff ff       	mov    WORD PTR [bp-0x18],0xffff
   55962:	eb 05                	jmp    0x55969
   55964:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   55969:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   5596e:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   55973:	e9 91 01             	jmp    0x55b07
   55976:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55979:	6b db 28             	imul   bx,bx,0x28
   5597c:	b8 88 01             	mov    ax,0x188
   5597f:	8e c0                	mov    es,ax
   55981:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   55987:	7f 03                	jg     0x5598c
   55989:	e9 78 01             	jmp    0x55b04
   5598c:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   5598f:	6b db 28             	imul   bx,bx,0x28
   55992:	b8 88 01             	mov    ax,0x188
   55995:	8e c0                	mov    es,ax
   55997:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   5599d:	75 21                	jne    0x559c0
   5599f:	a1 54 d5             	mov    ax,ds:0xd554
   559a2:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   559a5:	a1 52 d5             	mov    ax,ds:0xd552
   559a8:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   559ab:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   559ae:	6b db 28             	imul   bx,bx,0x28
   559b1:	b8 88 01             	mov    ax,0x188
   559b4:	8b 56 ec             	mov    dx,WORD PTR [bp-0x14]
   559b7:	8e c0                	mov    es,ax
   559b9:	26 89 97 8e a0       	mov    WORD PTR es:[bx-0x5f72],dx
   559be:	eb 2f                	jmp    0x559ef
   559c0:	a1 54 d5             	mov    ax,ds:0xd554
   559c3:	03 46 e8             	add    ax,WORD PTR [bp-0x18]
   559c6:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   559c9:	a1 52 d5             	mov    ax,ds:0xd552
   559cc:	03 46 ea             	add    ax,WORD PTR [bp-0x16]
   559cf:	89 46 e4             	mov    WORD PTR [bp-0x1c],ax
   559d2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   559d5:	6b db 28             	imul   bx,bx,0x28
   559d8:	b8 88 01             	mov    ax,0x188
   559db:	53                   	push   bx
   559dc:	50                   	push   ax
   559dd:	8b 46 ec             	mov    ax,WORD PTR [bp-0x14]
   559e0:	40                   	inc    ax
   559e1:	bb 04 00             	mov    bx,0x4
   559e4:	99                   	cwd
   559e5:	f7 fb                	idiv   bx
   559e7:	42                   	inc    dx
   559e8:	07                   	pop    es
   559e9:	5b                   	pop    bx
   559ea:	26 89 97 8e a0       	mov    WORD PTR es:[bx-0x5f72],dx
   559ef:	6a 00                	push   0x0
   559f1:	68 00 80             	push   0x8000
   559f4:	9a 79 17 00 00       	call   0x0:0x1779
   559f9:	99                   	cwd
   559fa:	50                   	push   ax
   559fb:	52                   	push   dx
   559fc:	33 d2                	xor    dx,dx
   559fe:	b8 09 00             	mov    ax,0x9
   55a01:	59                   	pop    cx
   55a02:	5b                   	pop    bx
   55a03:	9a 42 12 00 00       	call   0x0:0x1242
   55a08:	52                   	push   dx
   55a09:	50                   	push   ax
   55a0a:	9a df 12 00 00       	call   0x0:0x12df
   55a0f:	a3 ca d5             	mov    ds:0xd5ca,ax
   55a12:	6a 00                	push   0x0
   55a14:	68 00 80             	push   0x8000
   55a17:	9a 79 17 00 00       	call   0x0:0x1779
   55a1c:	99                   	cwd
   55a1d:	b1 03                	mov    cl,0x3
   55a1f:	9a 8d 13 00 00       	call   0x0:0x138d
   55a24:	52                   	push   dx
   55a25:	50                   	push   ax
   55a26:	9a df 12 00 00       	call   0x0:0x12df
   55a2b:	a3 c8 d5             	mov    ds:0xd5c8,ax
   55a2e:	8b 46 e6             	mov    ax,WORD PTR [bp-0x1a]
   55a31:	6b c0 09             	imul   ax,ax,0x9
   55a34:	8b 16 ca d5          	mov    dx,WORD PTR ds:0xd5ca
   55a38:	03 d0                	add    dx,ax
   55a3a:	89 16 ca d5          	mov    WORD PTR ds:0xd5ca,dx
   55a3e:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   55a41:	6b c0 09             	imul   ax,ax,0x9
   55a44:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   55a48:	03 d0                	add    dx,ax
   55a4a:	89 16 c8 d5          	mov    WORD PTR ds:0xd5c8,dx
   55a4e:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   55a52:	6b db 38             	imul   bx,bx,0x38
   55a55:	a1 c8 d5             	mov    ax,ds:0xd5c8
   55a58:	d1 e0                	shl    ax,1
   55a5a:	03 d8                	add    bx,ax
   55a5c:	83 bf ce c2 00       	cmp    WORD PTR [bx-0x3d32],0x0
   55a61:	74 03                	je     0x55a66
   55a63:	e9 26 ff             	jmp    0x5598c
   55a66:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   55a6a:	6b db 38             	imul   bx,bx,0x38
   55a6d:	a1 c8 d5             	mov    ax,ds:0xd5c8
   55a70:	d1 e0                	shl    ax,1
   55a72:	03 d8                	add    bx,ax
   55a74:	83 bf ee c8 0a       	cmp    WORD PTR [bx-0x3712],0xa
   55a79:	7c 03                	jl     0x55a7e
   55a7b:	e9 0e ff             	jmp    0x5598c
   55a7e:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   55a82:	6b db 38             	imul   bx,bx,0x38
   55a85:	a1 c8 d5             	mov    ax,ds:0xd5c8
   55a88:	d1 e0                	shl    ax,1
   55a8a:	03 d8                	add    bx,ax
   55a8c:	83 bf ee c8 08       	cmp    WORD PTR [bx-0x3712],0x8
   55a91:	75 03                	jne    0x55a96
   55a93:	e9 f6 fe             	jmp    0x5598c
   55a96:	8b 1e ca d5          	mov    bx,WORD PTR ds:0xd5ca
   55a9a:	6b db 38             	imul   bx,bx,0x38
   55a9d:	a1 c8 d5             	mov    ax,ds:0xd5c8
   55aa0:	d1 e0                	shl    ax,1
   55aa2:	03 d8                	add    bx,ax
   55aa4:	83 bf ee c8 06       	cmp    WORD PTR [bx-0x3712],0x6
   55aa9:	75 03                	jne    0x55aae
   55aab:	e9 de fe             	jmp    0x5598c
   55aae:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55ab1:	6b db 28             	imul   bx,bx,0x28
   55ab4:	b8 88 01             	mov    ax,0x188
   55ab7:	8b 16 ca d5          	mov    dx,WORD PTR ds:0xd5ca
   55abb:	8e c0                	mov    es,ax
   55abd:	26 89 97 92 a0       	mov    WORD PTR es:[bx-0x5f6e],dx
   55ac2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55ac5:	6b db 28             	imul   bx,bx,0x28
   55ac8:	b8 88 01             	mov    ax,0x188
   55acb:	8b 16 c8 d5          	mov    dx,WORD PTR ds:0xd5c8
   55acf:	8e c0                	mov    es,ax
   55ad1:	26 89 97 94 a0       	mov    WORD PTR es:[bx-0x5f6c],dx
   55ad6:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   55ad9:	6b db 28             	imul   bx,bx,0x28
   55adc:	b8 88 01             	mov    ax,0x188
   55adf:	8e c0                	mov    es,ax
   55ae1:	26 8b 9f 92 a0       	mov    bx,WORD PTR es:[bx-0x5f6e]
   55ae6:	6b db 38             	imul   bx,bx,0x38
   55ae9:	8b 76 fc             	mov    si,WORD PTR [bp-0x4]
   55aec:	6b f6 28             	imul   si,si,0x28
   55aef:	b8 88 01             	mov    ax,0x188
   55af2:	8e c0                	mov    es,ax
   55af4:	26 8b 84 94 a0       	mov    ax,WORD PTR es:[si-0x5f6c]
   55af9:	d1 e0                	shl    ax,1
   55afb:	03 d8                	add    bx,ax
   55afd:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   55b00:	89 87 ce c2          	mov    WORD PTR [bx-0x3d32],ax
   55b04:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   55b07:	83 7e fc 1c          	cmp    WORD PTR [bp-0x4],0x1c
   55b0b:	7f 03                	jg     0x55b10
   55b0d:	e9 66 fe             	jmp    0x55976
   55b10:	6a 00                	push   0x0
   55b12:	6a 00                	push   0x0
   55b14:	9a 48 00 50 01       	call   0x150:0x48
   55b19:	83 c4 04             	add    sp,0x4
   55b1c:	68 c7 00             	push   0xc7
   55b1f:	68 3f 01             	push   0x13f
   55b22:	6a 00                	push   0x0
   55b24:	6a 00                	push   0x0
   55b26:	9a 4d 00 50 01       	call   0x150:0x4d
   55b2b:	83 c4 08             	add    sp,0x8
   55b2e:	b8 88 01             	mov    ax,0x188
   55b31:	8e c0                	mov    es,ax
   55b33:	26 c7 06 e3 e5 2d 00 	mov    WORD PTR es:0xe5e3,0x2d
   55b3a:	b8 88 01             	mov    ax,0x188
   55b3d:	8e c0                	mov    es,ax
   55b3f:	26 a0 e3 e5          	mov    al,es:0xe5e3
   55b43:	50                   	push   ax
   55b44:	9a 69 00 30 00       	call   0x30:0x69
   55b49:	59                   	pop    cx
   55b4a:	c7 06 2e 63 00 00    	mov    WORD PTR ds:0x632e,0x0
   55b50:	0e                   	push   cs
   55b51:	e8 69 5c             	call   0x5b7bd
   55b54:	6a 00                	push   0x0
   55b56:	b8 88 01             	mov    ax,0x188
   55b59:	8e c0                	mov    es,ax
   55b5b:	26 ff 36 70 3d       	push   WORD PTR es:0x3d70
   55b60:	68 f4 01             	push   0x1f4
   55b63:	9a 3f 07 30 00       	call   0x30:0x73f
   55b68:	83 c4 06             	add    sp,0x6
   55b6b:	b8 88 01             	mov    ax,0x188
   55b6e:	33 d2                	xor    dx,dx
   55b70:	8e c0                	mov    es,ax
   55b72:	26 89 16 72 3d       	mov    WORD PTR es:0x3d72,dx
   55b77:	8b c2                	mov    ax,dx
   55b79:	ba 88 01             	mov    dx,0x188
   55b7c:	8e c2                	mov    es,dx
   55b7e:	26 a3 70 3d          	mov    es:0x3d70,ax
   55b82:	83 3e 24 63 00       	cmp    WORD PTR ds:0x6324,0x0
   55b87:	75 03                	jne    0x55b8c
   55b89:	e9 b9 00             	jmp    0x55c45
   55b8c:	c7 06 24 63 00 00    	mov    WORD PTR ds:0x6324,0x0
   55b92:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   55b96:	6b db 28             	imul   bx,bx,0x28
   55b99:	b8 88 01             	mov    ax,0x188
   55b9c:	8e c0                	mov    es,ax
   55b9e:	26 83 bf 98 a0 02    	cmp    WORD PTR es:[bx-0x5f68],0x2
   55ba4:	75 2c                	jne    0x55bd2
   55ba6:	9a 04 02 30 00       	call   0x30:0x204
   55bab:	b8 88 01             	mov    ax,0x188
   55bae:	8e c0                	mov    es,ax
   55bb0:	26 c6 06 24 73 00    	mov    BYTE PTR es:0x7324,0x0
   55bb6:	0e                   	push   cs
   55bb7:	e8 fe d6             	call   0x532b8
   55bba:	0e                   	push   cs
   55bbb:	e8 ff 5b             	call   0x5b7bd
   55bbe:	3d ff ff             	cmp    ax,0xffff
   55bc1:	75 03                	jne    0x55bc6
   55bc3:	e9 b4 16             	jmp    0x5727a
   55bc6:	83 3e 2e 63 01       	cmp    WORD PTR ds:0x632e,0x1
   55bcb:	75 b5                	jne    0x55b82
   55bcd:	e9 aa 16             	jmp    0x5727a
   55bd0:	eb b0                	jmp    0x55b82
   55bd2:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   55bd6:	6b db 28             	imul   bx,bx,0x28
   55bd9:	b8 88 01             	mov    ax,0x188
   55bdc:	8e c0                	mov    es,ax
   55bde:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   55be4:	74 42                	je     0x55c28
   55be6:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   55bea:	6b db 28             	imul   bx,bx,0x28
   55bed:	b8 88 01             	mov    ax,0x188
   55bf0:	8e c0                	mov    es,ax
   55bf2:	26 c7 87 8a a0 00 00 	mov    WORD PTR es:[bx-0x5f76],0x0
   55bf9:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   55bfd:	6b db 28             	imul   bx,bx,0x28
   55c00:	b8 88 01             	mov    ax,0x188
   55c03:	8e c0                	mov    es,ax
   55c05:	26 8b 9f 92 a0       	mov    bx,WORD PTR es:[bx-0x5f6e]
   55c0a:	6b db 38             	imul   bx,bx,0x38
   55c0d:	8b 36 de d5          	mov    si,WORD PTR ds:0xd5de
   55c11:	6b f6 28             	imul   si,si,0x28
   55c14:	b8 88 01             	mov    ax,0x188
   55c17:	8e c0                	mov    es,ax
   55c19:	26 8b 84 94 a0       	mov    ax,WORD PTR es:[si-0x5f6c]
   55c1e:	d1 e0                	shl    ax,1
   55c20:	03 d8                	add    bx,ax
   55c22:	c7 87 ce c2 00 00    	mov    WORD PTR [bx-0x3d32],0x0
   55c28:	b8 88 01             	mov    ax,0x188
   55c2b:	8a 56 e2             	mov    dl,BYTE PTR [bp-0x1e]
   55c2e:	8e c0                	mov    es,ax
   55c30:	26 88 16 24 73       	mov    BYTE PTR es:0x7324,dl
   55c35:	b8 88 01             	mov    ax,0x188
   55c38:	8e c0                	mov    es,ax
   55c3a:	26 a0 e3 e5          	mov    al,es:0xe5e3
   55c3e:	50                   	push   ax
   55c3f:	9a 69 00 30 00       	call   0x30:0x69
   55c44:	59                   	pop    cx
   55c45:	6a 01                	push   0x1
   55c47:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   55c4c:	59                   	pop    cx
   55c4d:	a3 d6 d5             	mov    ds:0xd5d6,ax
   55c50:	a1 d6 d5             	mov    ax,ds:0xd5d6
   55c53:	25 ff 00             	and    ax,0xff
   55c56:	89 46 de             	mov    WORD PTR [bp-0x22],ax
   55c59:	16                   	push   ss
   55c5a:	8d 46 de             	lea    ax,[bp-0x22]
   55c5d:	50                   	push   ax
   55c5e:	9a 2a 00 80 01       	call   0x180:0x2a
   55c63:	83 c4 04             	add    sp,0x4
   55c66:	83 3e d6 d5 ff       	cmp    WORD PTR ds:0xd5d6,0xffff
   55c6b:	75 0c                	jne    0x55c79
   55c6d:	9a e3 01 40 00       	call   0x40:0x1e3
   55c72:	cd 1b                	int    0x1b
   55c74:	9a d7 29 00 00       	call   0x0:0x29d7
   55c79:	c1 2e d6 d5 08       	shr    WORD PTR ds:0xd5d6,0x8
   55c7e:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   55c83:	74 05                	je     0x55c8a
   55c85:	9a e3 01 40 00       	call   0x40:0x1e3
   55c8a:	83 3e 2e 63 01       	cmp    WORD PTR ds:0x632e,0x1
   55c8f:	75 03                	jne    0x55c94
   55c91:	e9 e6 15             	jmp    0x5727a
   55c94:	9a 15 05 30 00       	call   0x30:0x515
   55c99:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   55c9c:	b8 88 01             	mov    ax,0x188
   55c9f:	8e c0                	mov    es,ax
   55ca1:	26 a1 e5 e5          	mov    ax,es:0xe5e5
   55ca5:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   55ca8:	b8 88 01             	mov    ax,0x188
   55cab:	8e c0                	mov    es,ax
   55cad:	26 a0 e3 e5          	mov    al,es:0xe5e3
   55cb1:	50                   	push   ax
   55cb2:	9a 6b 02 30 00       	call   0x30:0x26b
   55cb7:	59                   	pop    cx
   55cb8:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   55cbd:	75 0f                	jne    0x55cce
   55cbf:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   55cc3:	7e 80                	jle    0x55c45
   55cc5:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   55cc9:	7f 03                	jg     0x55cce
   55ccb:	e9 77 ff             	jmp    0x55c45
   55cce:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   55cd3:	77 1c                	ja     0x55cf1
   55cd5:	b8 88 01             	mov    ax,0x188
   55cd8:	8e c0                	mov    es,ax
   55cda:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   55ce0:	75 03                	jne    0x55ce5
   55ce2:	e9 9d fe             	jmp    0x55b82
   55ce5:	9a 15 05 30 00       	call   0x30:0x515
   55cea:	0b c0                	or     ax,ax
   55cec:	75 03                	jne    0x55cf1
   55cee:	e9 91 fe             	jmp    0x55b82
   55cf1:	9a 15 05 30 00       	call   0x30:0x515
   55cf6:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   55cf9:	b8 88 01             	mov    ax,0x188
   55cfc:	8e c0                	mov    es,ax
   55cfe:	26 a1 e5 e5          	mov    ax,es:0xe5e5
   55d02:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   55d05:	83 3e d6 d5 47       	cmp    WORD PTR ds:0xd5d6,0x47
   55d0a:	74 4c                	je     0x55d58
   55d0c:	83 3e d6 d5 48       	cmp    WORD PTR ds:0xd5d6,0x48
   55d11:	74 45                	je     0x55d58
   55d13:	83 3e d6 d5 49       	cmp    WORD PTR ds:0xd5d6,0x49
   55d18:	74 3e                	je     0x55d58
   55d1a:	83 3e d6 d5 4b       	cmp    WORD PTR ds:0xd5d6,0x4b
   55d1f:	74 37                	je     0x55d58
   55d21:	83 3e d6 d5 4d       	cmp    WORD PTR ds:0xd5d6,0x4d
   55d26:	74 30                	je     0x55d58
   55d28:	83 3e d6 d5 4f       	cmp    WORD PTR ds:0xd5d6,0x4f
   55d2d:	74 29                	je     0x55d58
   55d2f:	83 3e d6 d5 50       	cmp    WORD PTR ds:0xd5d6,0x50
   55d34:	74 22                	je     0x55d58
   55d36:	83 3e d6 d5 51       	cmp    WORD PTR ds:0xd5d6,0x51
   55d3b:	74 1b                	je     0x55d58
   55d3d:	83 7e fa 14          	cmp    WORD PTR [bp-0x6],0x14
   55d41:	7f 03                	jg     0x55d46
   55d43:	e9 9e 01             	jmp    0x55ee4
   55d46:	83 7e fa 1d          	cmp    WORD PTR [bp-0x6],0x1d
   55d4a:	7c 03                	jl     0x55d4f
   55d4c:	e9 95 01             	jmp    0x55ee4
   55d4f:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   55d53:	74 03                	je     0x55d58
   55d55:	e9 8c 01             	jmp    0x55ee4
   55d58:	83 7e fa 14          	cmp    WORD PTR [bp-0x6],0x14
   55d5c:	7e 5d                	jle    0x55dbb
   55d5e:	83 7e fa 1d          	cmp    WORD PTR [bp-0x6],0x1d
   55d62:	7d 57                	jge    0x55dbb
   55d64:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   55d68:	75 51                	jne    0x55dbb
   55d6a:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   55d6d:	83 c3 ec             	add    bx,0xffec
   55d70:	4b                   	dec    bx
   55d71:	83 fb 07             	cmp    bx,0x7
   55d74:	77 45                	ja     0x55dbb
   55d76:	d1 e3                	shl    bx,1
   55d78:	2e ff a7 bc d7       	jmp    WORD PTR cs:[bx-0x2844]
   55d7d:	c7 06 d6 d5 47 00    	mov    WORD PTR ds:0xd5d6,0x47
   55d83:	eb 36                	jmp    0x55dbb
   55d85:	c7 06 d6 d5 48 00    	mov    WORD PTR ds:0xd5d6,0x48
   55d8b:	eb 2e                	jmp    0x55dbb
   55d8d:	c7 06 d6 d5 49 00    	mov    WORD PTR ds:0xd5d6,0x49
   55d93:	eb 26                	jmp    0x55dbb
   55d95:	c7 06 d6 d5 4b 00    	mov    WORD PTR ds:0xd5d6,0x4b
   55d9b:	eb 1e                	jmp    0x55dbb
   55d9d:	c7 06 d6 d5 4d 00    	mov    WORD PTR ds:0xd5d6,0x4d
   55da3:	eb 16                	jmp    0x55dbb
   55da5:	c7 06 d6 d5 4f 00    	mov    WORD PTR ds:0xd5d6,0x4f
   55dab:	eb 0e                	jmp    0x55dbb
   55dad:	c7 06 d6 d5 50 00    	mov    WORD PTR ds:0xd5d6,0x50
   55db3:	eb 06                	jmp    0x55dbb
   55db5:	c7 06 d6 d5 51 00    	mov    WORD PTR ds:0xd5d6,0x51
   55dbb:	0e                   	push   cs
   55dbc:	e8 ca 6b             	call   0x5c989
   55dbf:	0e                   	push   cs
   55dc0:	e8 1d d3             	call   0x530e0
   55dc3:	83 3e 9a d5 01       	cmp    WORD PTR ds:0xd59a,0x1
   55dc8:	74 03                	je     0x55dcd
   55dca:	e9 8c 00             	jmp    0x55e59
   55dcd:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   55dd1:	6b db 28             	imul   bx,bx,0x28
   55dd4:	b8 88 01             	mov    ax,0x188
   55dd7:	8e c0                	mov    es,ax
   55dd9:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   55ddf:	7e 78                	jle    0x55e59
   55de1:	6a 00                	push   0x0
   55de3:	68 00 80             	push   0x8000
   55de6:	9a 79 17 00 00       	call   0x0:0x1779
   55deb:	99                   	cwd
   55dec:	d1 e0                	shl    ax,1
   55dee:	d1 d2                	rcl    dx,1
   55df0:	52                   	push   dx
   55df1:	50                   	push   ax
   55df2:	9a df 12 00 00       	call   0x0:0x12df
   55df7:	05 02 00             	add    ax,0x2
   55dfa:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   55dfe:	6b db 28             	imul   bx,bx,0x28
   55e01:	ba 88 01             	mov    dx,0x188
   55e04:	8e c2                	mov    es,dx
   55e06:	26 89 87 ac a0       	mov    WORD PTR es:[bx-0x5f54],ax
   55e0b:	c7 06 74 d5 05 00    	mov    WORD PTR ds:0xd574,0x5
   55e11:	a1 6c d5             	mov    ax,ds:0xd56c
   55e14:	a3 76 d5             	mov    ds:0xd576,ax
   55e17:	c7 06 66 d5 08 00    	mov    WORD PTR ds:0xd566,0x8
   55e1d:	0e                   	push   cs
   55e1e:	e8 50 65             	call   0x5c371
   55e21:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   55e25:	0e                   	push   cs
   55e26:	e8 75 5f             	call   0x5bd9e
   55e29:	59                   	pop    cx
   55e2a:	6a 0a                	push   0xa
   55e2c:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   55e31:	59                   	pop    cx
   55e32:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   55e38:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   55e3e:	a1 de d5             	mov    ax,ds:0xd5de
   55e41:	a3 76 d5             	mov    ds:0xd576,ax
   55e44:	0e                   	push   cs
   55e45:	e8 29 65             	call   0x5c371
   55e48:	ff 36 66 d5          	push   WORD PTR ds:0xd566
   55e4c:	0e                   	push   cs
   55e4d:	e8 4e 5f             	call   0x5bd9e
   55e50:	59                   	pop    cx
   55e51:	6a 0a                	push   0xa
   55e53:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   55e58:	59                   	pop    cx
   55e59:	c7 06 9a d5 00 00    	mov    WORD PTR ds:0xd59a,0x0
   55e5f:	83 3e 4c d5 00       	cmp    WORD PTR ds:0xd54c,0x0
   55e64:	75 57                	jne    0x55ebd
   55e66:	83 3e 68 d5 01       	cmp    WORD PTR ds:0xd568,0x1
   55e6b:	75 38                	jne    0x55ea5
   55e6d:	8b 1e 6c d5          	mov    bx,WORD PTR ds:0xd56c
   55e71:	6b db 28             	imul   bx,bx,0x28
   55e74:	b8 88 01             	mov    ax,0x188
   55e77:	8e c0                	mov    es,ax
   55e79:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   55e7f:	7e 24                	jle    0x55ea5
   55e81:	a1 6c d5             	mov    ax,ds:0xd56c
   55e84:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   55e87:	a1 6e d5             	mov    ax,ds:0xd56e
   55e8a:	a3 6c d5             	mov    ds:0xd56c,ax
   55e8d:	8b 46 ee             	mov    ax,WORD PTR [bp-0x12]
   55e90:	a3 6e d5             	mov    ds:0xd56e,ax
   55e93:	c7 06 a4 d5 01 00    	mov    WORD PTR ds:0xd5a4,0x1
   55e99:	0e                   	push   cs
   55e9a:	e8 0e 7d             	call   0x5dbab
   55e9d:	33 c0                	xor    ax,ax
   55e9f:	a3 a4 d5             	mov    ds:0xd5a4,ax
   55ea2:	a3 68 d5             	mov    ds:0xd568,ax
   55ea5:	0e                   	push   cs
   55ea6:	e8 c8 64             	call   0x5c371
   55ea9:	6a 0a                	push   0xa
   55eab:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   55eb0:	59                   	pop    cx
   55eb1:	0e                   	push   cs
   55eb2:	e8 08 59             	call   0x5b7bd
   55eb5:	3d ff ff             	cmp    ax,0xffff
   55eb8:	75 03                	jne    0x55ebd
   55eba:	e9 bd 13             	jmp    0x5727a
   55ebd:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   55ec2:	7f 20                	jg     0x55ee4
   55ec4:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   55ec8:	6b db 28             	imul   bx,bx,0x28
   55ecb:	b8 88 01             	mov    ax,0x188
   55ece:	8e c0                	mov    es,ax
   55ed0:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   55ed6:	75 0c                	jne    0x55ee4
   55ed8:	0e                   	push   cs
   55ed9:	e8 95 64             	call   0x5c371
   55edc:	6a 0a                	push   0xa
   55ede:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   55ee3:	59                   	pop    cx
   55ee4:	83 7e de 76          	cmp    WORD PTR [bp-0x22],0x76
   55ee8:	74 12                	je     0x55efc
   55eea:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   55eee:	74 03                	je     0x55ef3
   55ef0:	e9 c1 03             	jmp    0x562b4
   55ef3:	83 7e fa 1e          	cmp    WORD PTR [bp-0x6],0x1e
   55ef7:	74 03                	je     0x55efc
   55ef9:	e9 b8 03             	jmp    0x562b4
   55efc:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   55f00:	6b db 28             	imul   bx,bx,0x28
   55f03:	b8 88 01             	mov    ax,0x188
   55f06:	8e c0                	mov    es,ax
   55f08:	26 83 bf 8c a0 00    	cmp    WORD PTR es:[bx-0x5f74],0x0
   55f0e:	75 03                	jne    0x55f13
   55f10:	e9 a1 03             	jmp    0x562b4
   55f13:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   55f17:	6b db 28             	imul   bx,bx,0x28
   55f1a:	b8 88 01             	mov    ax,0x188
   55f1d:	8e c0                	mov    es,ax
   55f1f:	26 83 bf ae a0 00    	cmp    WORD PTR es:[bx-0x5f52],0x0
   55f25:	74 03                	je     0x55f2a
   55f27:	e9 8a 03             	jmp    0x562b4
   55f2a:	6a 06                	push   0x6
   55f2c:	68 f8 00             	push   0xf8
   55f2f:	68 92 00             	push   0x92
   55f32:	68 cd 00             	push   0xcd
   55f35:	68 92 00             	push   0x92
   55f38:	68 a9 00             	push   0xa9
   55f3b:	9a f5 13 28 00       	call   0x28:0x13f5
   55f40:	83 c4 0c             	add    sp,0xc
   55f43:	6a 06                	push   0x6
   55f45:	68 f8 00             	push   0xf8
   55f48:	68 9f 00             	push   0x9f
   55f4b:	68 b6 00             	push   0xb6
   55f4e:	68 92 00             	push   0x92
   55f51:	68 a9 00             	push   0xa9
   55f54:	9a f5 13 28 00       	call   0x28:0x13f5
   55f59:	83 c4 0c             	add    sp,0xc
   55f5c:	6a 06                	push   0x6
   55f5e:	6a 06                	push   0x6
   55f60:	68 a0 00             	push   0xa0
   55f63:	68 dc 00             	push   0xdc
   55f66:	68 a0 00             	push   0xa0
   55f69:	68 b7 00             	push   0xb7
   55f6c:	9a f5 13 28 00       	call   0x28:0x13f5
   55f71:	83 c4 0c             	add    sp,0xc
   55f74:	6a 06                	push   0x6
   55f76:	6a 06                	push   0x6
   55f78:	68 a0 00             	push   0xa0
   55f7b:	68 dc 00             	push   0xdc
   55f7e:	68 92 00             	push   0x92
   55f81:	68 ce 00             	push   0xce
   55f84:	9a f5 13 28 00       	call   0x28:0x13f5
   55f89:	83 c4 0c             	add    sp,0xc
   55f8c:	6a 06                	push   0x6
   55f8e:	0e                   	push   cs
   55f8f:	e8 9f 48             	call   0x5a831
   55f92:	59                   	pop    cx
   55f93:	b8 88 01             	mov    ax,0x188
   55f96:	8e c0                	mov    es,ax
   55f98:	26 a0 e3 e5          	mov    al,es:0xe5e3
   55f9c:	50                   	push   ax
   55f9d:	9a 6b 02 30 00       	call   0x30:0x26b
   55fa2:	59                   	pop    cx
   55fa3:	b8 88 01             	mov    ax,0x188
   55fa6:	8e c0                	mov    es,ax
   55fa8:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   55fae:	75 e3                	jne    0x55f93
   55fb0:	c7 06 dc d5 00 00    	mov    WORD PTR ds:0xd5dc,0x0
   55fb6:	c7 06 d8 d5 00 00    	mov    WORD PTR ds:0xd5d8,0x0
   55fbc:	c7 06 e4 d5 00 00    	mov    WORD PTR ds:0xd5e4,0x0
   55fc2:	c7 06 66 d5 00 00    	mov    WORD PTR ds:0xd566,0x0
   55fc8:	c7 06 64 d5 00 00    	mov    WORD PTR ds:0xd564,0x0
   55fce:	c7 06 60 d5 00 00    	mov    WORD PTR ds:0xd560,0x0
   55fd4:	0e                   	push   cs
   55fd5:	e8 35 8d             	call   0x5ed0d
   55fd8:	c7 06 e0 d5 ff ff    	mov    WORD PTR ds:0xd5e0,0xffff
   55fde:	83 3e 62 d5 00       	cmp    WORD PTR ds:0xd562,0x0
   55fe3:	7e 1e                	jle    0x56003
   55fe5:	83 3e e2 d5 00       	cmp    WORD PTR ds:0xd5e2,0x0
   55fea:	74 17                	je     0x56003
   55fec:	0e                   	push   cs
   55fed:	e8 8d 84             	call   0x5e47d
   55ff0:	ff 36 78 d5          	push   WORD PTR ds:0xd578
   55ff4:	ff 36 7a d5          	push   WORD PTR ds:0xd57a
   55ff8:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   55ffc:	0e                   	push   cs
   55ffd:	e8 d6 4b             	call   0x5abd6
   56000:	83 c4 06             	add    sp,0x6
   56003:	c7 06 d6 d5 00 00    	mov    WORD PTR ds:0xd5d6,0x0
   56009:	9a e3 01 40 00       	call   0x40:0x1e3
   5600e:	a1 64 d5             	mov    ax,ds:0xd564
   56011:	3b 06 62 d5          	cmp    ax,WORD PTR ds:0xd562
   56015:	7f 03                	jg     0x5601a
   56017:	e9 84 00             	jmp    0x5609e
   5601a:	0e                   	push   cs
   5601b:	e8 53 63             	call   0x5c371
   5601e:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   56024:	1e                   	push   ds
   56025:	68 9b 68             	push   0x689b
   56028:	68 88 01             	push   0x188
   5602b:	68 74 a5             	push   0xa574
   5602e:	9a a3 49 00 00       	call   0x0:0x49a3
   56033:	83 c4 08             	add    sp,0x8
   56036:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   5603a:	68 88 01             	push   0x188
   5603d:	68 74 a5             	push   0xa574
   56040:	0e                   	push   cs
   56041:	e8 f7 52             	call   0x5b33b
   56044:	83 c4 06             	add    sp,0x6
   56047:	c7 06 1a 63 21 00    	mov    WORD PTR ds:0x631a,0x21
   5604d:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   56052:	7e 03                	jle    0x56057
   56054:	e9 22 02             	jmp    0x56279
   56057:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5605b:	6b db 28             	imul   bx,bx,0x28
   5605e:	b8 88 01             	mov    ax,0x188
   56061:	8e c0                	mov    es,ax
   56063:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   56068:	6b db 06             	imul   bx,bx,0x6
   5606b:	b8 88 01             	mov    ax,0x188
   5606e:	8e c0                	mov    es,ax
   56070:	26 8b 87 c2 5b       	mov    ax,WORD PTR es:[bx+0x5bc2]
   56075:	a3 20 63             	mov    ds:0x6320,ax
   56078:	ff 36 1a 63          	push   WORD PTR ds:0x631a
   5607c:	0e                   	push   cs
   5607d:	e8 2b 5f             	call   0x5bfab
   56080:	59                   	pop    cx
   56081:	c7 06 1a 63 00 00    	mov    WORD PTR ds:0x631a,0x0
   56087:	6a 0a                	push   0xa
   56089:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   5608e:	59                   	pop    cx
   5608f:	6a 08                	push   0x8
   56091:	6a 21                	push   0x21
   56093:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   56098:	83 c4 04             	add    sp,0x4
   5609b:	e9 f7 01             	jmp    0x56295
   5609e:	83 3e 60 d5 00       	cmp    WORD PTR ds:0xd560,0x0
   560a3:	7f 03                	jg     0x560a8
   560a5:	e9 58 01             	jmp    0x56200
   560a8:	a1 64 d5             	mov    ax,ds:0xd564
   560ab:	3b 06 62 d5          	cmp    ax,WORD PTR ds:0xd562
   560af:	7e 03                	jle    0x560b4
   560b1:	e9 4c 01             	jmp    0x56200
   560b4:	83 3e e0 d5 ff       	cmp    WORD PTR ds:0xd5e0,0xffff
   560b9:	75 03                	jne    0x560be
   560bb:	e9 42 01             	jmp    0x56200
   560be:	83 3e e0 d5 00       	cmp    WORD PTR ds:0xd5e0,0x0
   560c3:	75 2e                	jne    0x560f3
   560c5:	83 3e e2 d5 1d       	cmp    WORD PTR ds:0xd5e2,0x1d
   560ca:	74 27                	je     0x560f3
   560cc:	8b 1e e2 d5          	mov    bx,WORD PTR ds:0xd5e2
   560d0:	6b db 16             	imul   bx,bx,0x16
   560d3:	b8 88 01             	mov    ax,0x188
   560d6:	8e c0                	mov    es,ax
   560d8:	26 ff b7 7e 00       	push   WORD PTR es:[bx+0x7e]
   560dd:	0e                   	push   cs
   560de:	e8 d8 bd             	call   0x51eb9
   560e1:	59                   	pop    cx
   560e2:	50                   	push   ax
   560e3:	6a 06                	push   0x6
   560e5:	0e                   	push   cs
   560e6:	e8 bc 3d             	call   0x59ea5
   560e9:	83 c4 04             	add    sp,0x4
   560ec:	0b c0                	or     ax,ax
   560ee:	74 03                	je     0x560f3
   560f0:	e9 0d 01             	jmp    0x56200
   560f3:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   560f7:	6b db 28             	imul   bx,bx,0x28
   560fa:	b8 88 01             	mov    ax,0x188
   560fd:	8e c0                	mov    es,ax
   560ff:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   56104:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   56108:	7e 08                	jle    0x56112
   5610a:	c7 06 5e d5 02 00    	mov    WORD PTR ds:0xd55e,0x2
   56110:	eb 44                	jmp    0x56156
   56112:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   56116:	6b db 28             	imul   bx,bx,0x28
   56119:	b8 88 01             	mov    ax,0x188
   5611c:	8e c0                	mov    es,ax
   5611e:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   56123:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   56127:	7d 08                	jge    0x56131
   56129:	c7 06 5e d5 04 00    	mov    WORD PTR ds:0xd55e,0x4
   5612f:	eb 25                	jmp    0x56156
   56131:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   56135:	6b db 28             	imul   bx,bx,0x28
   56138:	b8 88 01             	mov    ax,0x188
   5613b:	8e c0                	mov    es,ax
   5613d:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   56142:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   56146:	7e 08                	jle    0x56150
   56148:	c7 06 5e d5 01 00    	mov    WORD PTR ds:0xd55e,0x1
   5614e:	eb 06                	jmp    0x56156
   56150:	c7 06 5e d5 03 00    	mov    WORD PTR ds:0xd55e,0x3
   56156:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5615a:	6b db 28             	imul   bx,bx,0x28
   5615d:	b8 88 01             	mov    ax,0x188
   56160:	8b 16 5e d5          	mov    dx,WORD PTR ds:0xd55e
   56164:	8e c0                	mov    es,ax
   56166:	26 89 97 8e a0       	mov    WORD PTR es:[bx-0x5f72],dx
   5616b:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   5616f:	6b db 28             	imul   bx,bx,0x28
   56172:	b8 88 01             	mov    ax,0x188
   56175:	8e c0                	mov    es,ax
   56177:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   5617c:	6b db 2e             	imul   bx,bx,0x2e
   5617f:	b8 88 01             	mov    ax,0x188
   56182:	8e c0                	mov    es,ax
   56184:	26 8b 87 2c 9f       	mov    ax,WORD PTR es:[bx-0x60d4]
   56189:	bb 32 00             	mov    bx,0x32
   5618c:	99                   	cwd
   5618d:	f7 fb                	idiv   bx
   5618f:	a3 5c d5             	mov    ds:0xd55c,ax
   56192:	6a 0e                	push   0xe
   56194:	ff 36 e0 d5          	push   WORD PTR ds:0xd5e0
   56198:	0e                   	push   cs
   56199:	e8 94 5b             	call   0x5bd30
   5619c:	83 c4 04             	add    sp,0x4
   5619f:	0b c0                	or     ax,ax
   561a1:	74 04                	je     0x561a7
   561a3:	ff 06 5c d5          	inc    WORD PTR ds:0xd55c
   561a7:	0e                   	push   cs
   561a8:	e8 8e bf             	call   0x52139
   561ab:	0e                   	push   cs
   561ac:	e8 c2 61             	call   0x5c371
   561af:	6a 0a                	push   0xa
   561b1:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   561b6:	59                   	pop    cx
   561b7:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   561bb:	6b db 28             	imul   bx,bx,0x28
   561be:	b8 88 01             	mov    ax,0x188
   561c1:	8e c0                	mov    es,ax
   561c3:	26 83 bf 8a a0 01    	cmp    WORD PTR es:[bx-0x5f76],0x1
   561c9:	7d 2b                	jge    0x561f6
   561cb:	6a 00                	push   0x0
   561cd:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   561d1:	6b db 28             	imul   bx,bx,0x28
   561d4:	b8 88 01             	mov    ax,0x188
   561d7:	8e c0                	mov    es,ax
   561d9:	26 ff b7 94 a0       	push   WORD PTR es:[bx-0x5f6c]
   561de:	8b 1e e0 d5          	mov    bx,WORD PTR ds:0xd5e0
   561e2:	6b db 28             	imul   bx,bx,0x28
   561e5:	b8 88 01             	mov    ax,0x188
   561e8:	8e c0                	mov    es,ax
   561ea:	26 ff b7 92 a0       	push   WORD PTR es:[bx-0x5f6e]
   561ef:	0e                   	push   cs
   561f0:	e8 84 46             	call   0x5a877
   561f3:	83 c4 06             	add    sp,0x6
   561f6:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   561fa:	0e                   	push   cs
   561fb:	e8 92 46             	call   0x5a890
   561fe:	eb 23                	jmp    0x56223
   56200:	83 3e 62 d5 00       	cmp    WORD PTR ds:0xd562,0x0
   56205:	75 31                	jne    0x56238
   56207:	83 3e e2 d5 00       	cmp    WORD PTR ds:0xd5e2,0x0
   5620c:	7e 2a                	jle    0x56238
   5620e:	a1 de d5             	mov    ax,ds:0xd5de
   56211:	a3 e0 d5             	mov    ds:0xd5e0,ax
   56214:	0e                   	push   cs
   56215:	e8 21 bf             	call   0x52139
   56218:	0e                   	push   cs
   56219:	e8 55 61             	call   0x5c371
   5621c:	6a 0a                	push   0xa
   5621e:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   56223:	59                   	pop    cx
   56224:	a1 de d5             	mov    ax,ds:0xd5de
   56227:	a3 76 d5             	mov    ds:0xd576,ax
   5622a:	c7 06 74 d5 01 00    	mov    WORD PTR ds:0xd574,0x1
   56230:	c7 06 4c d5 00 00    	mov    WORD PTR ds:0xd54c,0x0
   56236:	eb 5d                	jmp    0x56295
   56238:	83 3e e0 d5 00       	cmp    WORD PTR ds:0xd5e0,0x0
   5623d:	75 49                	jne    0x56288
   5623f:	0e                   	push   cs
   56240:	e8 2e 61             	call   0x5c371
   56243:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   56249:	1e                   	push   ds
   5624a:	68 b0 68             	push   0x68b0
   5624d:	68 88 01             	push   0x188
   56250:	68 74 a5             	push   0xa574
   56253:	9a a3 49 00 00       	call   0x0:0x49a3
   56258:	83 c4 08             	add    sp,0x8
   5625b:	ff 36 de d5          	push   WORD PTR ds:0xd5de
   5625f:	68 88 01             	push   0x188
   56262:	68 74 a5             	push   0xa574
   56265:	0e                   	push   cs
   56266:	e8 d2 50             	call   0x5b33b
   56269:	83 c4 06             	add    sp,0x6
   5626c:	c7 06 1a 63 20 00    	mov    WORD PTR ds:0x631a,0x20
   56272:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   56277:	7e 09                	jle    0x56282
   56279:	a1 de d5             	mov    ax,ds:0xd5de
   5627c:	05 28 00             	add    ax,0x28
   5627f:	e9 f3 fd             	jmp    0x56075
   56282:	e9 d2 fd             	jmp    0x56057
   56285:	e9 ed fd             	jmp    0x56075
   56288:	83 3e e0 d5 ff       	cmp    WORD PTR ds:0xd5e0,0xffff
   5628d:	75 06                	jne    0x56295
   5628f:	a1 de d5             	mov    ax,ds:0xd5de
   56292:	a3 e0 d5             	mov    ds:0xd5e0,ax
   56295:	83 3e 4c d5 00       	cmp    WORD PTR ds:0xd54c,0x0
   5629a:	75 0c                	jne    0x562a8
   5629c:	0e                   	push   cs
   5629d:	e8 1d 55             	call   0x5b7bd
   562a0:	3d ff ff             	cmp    ax,0xffff
   562a3:	75 03                	jne    0x562a8
   562a5:	e9 d2 0f             	jmp    0x5727a
   562a8:	0e                   	push   cs
   562a9:	e8 c5 60             	call   0x5c371
   562ac:	6a 0a                	push   0xa
   562ae:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   562b3:	59                   	pop    cx
   562b4:	83 3e d6 d5 1c       	cmp    WORD PTR ds:0xd5d6,0x1c
   562b9:	74 18                	je     0x562d3
   562bb:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   562bf:	74 03                	je     0x562c4
   562c1:	e9 c6 01             	jmp    0x5648a
   562c4:	83 7e fa 1f          	cmp    WORD PTR [bp-0x6],0x1f
   562c8:	74 09                	je     0x562d3
   562ca:	83 7e fa 22          	cmp    WORD PTR [bp-0x6],0x22
   562ce:	74 03                	je     0x562d3
   562d0:	e9 b7 01             	jmp    0x5648a
   562d3:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   562d7:	6b db 28             	imul   bx,bx,0x28
   562da:	b8 88 01             	mov    ax,0x188
   562dd:	8e c0                	mov    es,ax
   562df:	26 8b 9f 90 a0       	mov    bx,WORD PTR es:[bx-0x5f70]
   562e4:	6b db 2e             	imul   bx,bx,0x2e
   562e7:	b8 88 01             	mov    ax,0x188
   562ea:	8e c0                	mov    es,ax
   562ec:	26 8b 87 26 9f       	mov    ax,WORD PTR es:[bx-0x60da]
   562f1:	bb 64 00             	mov    bx,0x64
   562f4:	99                   	cwd
   562f5:	f7 fb                	idiv   bx
   562f7:	3b 16 4c d5          	cmp    dx,WORD PTR ds:0xd54c
   562fb:	7e 03                	jle    0x56300
   562fd:	e9 8a 01             	jmp    0x5648a
   56300:	9a 04 02 30 00       	call   0x30:0x204
   56305:	83 7e fa 1f          	cmp    WORD PTR [bp-0x6],0x1f
   56309:	75 5c                	jne    0x56367
   5630b:	6a 00                	push   0x0
   5630d:	68 f8 00             	push   0xf8
   56310:	68 92 00             	push   0x92
   56313:	68 f4 00             	push   0xf4
   56316:	68 92 00             	push   0x92
   56319:	68 d0 00             	push   0xd0
   5631c:	9a f5 13 28 00       	call   0x28:0x13f5
   56321:	83 c4 0c             	add    sp,0xc
   56324:	6a 00                	push   0x0
   56326:	68 f8 00             	push   0xf8
   56329:	68 9f 00             	push   0x9f
   5632c:	68 dd 00             	push   0xdd
   5632f:	68 92 00             	push   0x92
   56332:	68 d0 00             	push   0xd0
   56335:	9a f5 13 28 00       	call   0x28:0x13f5
   5633a:	83 c4 0c             	add    sp,0xc
   5633d:	6a 00                	push   0x0
   5633f:	6a 06                	push   0x6
   56341:	68 a0 00             	push   0xa0
   56344:	68 03 01             	push   0x103
   56347:	68 a0 00             	push   0xa0
   5634a:	68 de 00             	push   0xde
   5634d:	9a f5 13 28 00       	call   0x28:0x13f5
   56352:	83 c4 0c             	add    sp,0xc
   56355:	6a 00                	push   0x0
   56357:	6a 06                	push   0x6
   56359:	68 a0 00             	push   0xa0
   5635c:	68 03 01             	push   0x103
   5635f:	68 92 00             	push   0x92
   56362:	68 f5 00             	push   0xf5
   56365:	eb 4a                	jmp    0x563b1
   56367:	6a 00                	push   0x0
   56369:	68 f8 00             	push   0xf8
   5636c:	6a 59                	push   0x59
   5636e:	6a 22                	push   0x22
   56370:	6a 59                	push   0x59
   56372:	6a 17                	push   0x17
   56374:	9a f5 13 28 00       	call   0x28:0x13f5
   56379:	83 c4 0c             	add    sp,0xc
   5637c:	6a 00                	push   0x0
   5637e:	68 f8 00             	push   0xf8
   56381:	6a 63                	push   0x63
   56383:	6a 21                	push   0x21
   56385:	6a 59                	push   0x59
   56387:	6a 17                	push   0x17
   56389:	9a f5 13 28 00       	call   0x28:0x13f5
   5638e:	83 c4 0c             	add    sp,0xc
   56391:	6a 00                	push   0x0
   56393:	6a 06                	push   0x6
   56395:	6a 64                	push   0x64
   56397:	6a 2d                	push   0x2d
   56399:	6a 64                	push   0x64
   5639b:	6a 23                	push   0x23
   5639d:	9a f5 13 28 00       	call   0x28:0x13f5
   563a2:	83 c4 0c             	add    sp,0xc
   563a5:	6a 00                	push   0x0
   563a7:	6a 06                	push   0x6
   563a9:	6a 64                	push   0x64
   563ab:	6a 2e                	push   0x2e
   563ad:	6a 59                	push   0x59
   563af:	6a 23                	push   0x23
   563b1:	9a f5 13 28 00       	call   0x28:0x13f5
   563b6:	83 c4 0c             	add    sp,0xc
   563b9:	b8 88 01             	mov    ax,0x188
   563bc:	8e c0                	mov    es,ax
   563be:	26 a0 e3 e5          	mov    al,es:0xe5e3
   563c2:	50                   	push   ax
   563c3:	9a 69 00 30 00       	call   0x30:0x69
   563c8:	59                   	pop    cx
   563c9:	b8 88 01             	mov    ax,0x188
   563cc:	8e c0                	mov    es,ax
   563ce:	26 a0 e3 e5          	mov    al,es:0xe5e3
   563d2:	50                   	push   ax
   563d3:	9a 6b 02 30 00       	call   0x30:0x26b
   563d8:	59                   	pop    cx
   563d9:	b8 88 01             	mov    ax,0x188
   563dc:	8e c0                	mov    es,ax
   563de:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   563e4:	75 e3                	jne    0x563c9
   563e6:	9a e3 01 40 00       	call   0x40:0x1e3
   563eb:	0e                   	push   cs
   563ec:	e8 8e 80             	call   0x5e47d
   563ef:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   563f3:	6b db 28             	imul   bx,bx,0x28
   563f6:	b8 88 01             	mov    ax,0x188
   563f9:	8e c0                	mov    es,ax
   563fb:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   56400:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   56404:	7e 08                	jle    0x5640e
   56406:	c7 06 5e d5 02 00    	mov    WORD PTR ds:0xd55e,0x2
   5640c:	eb 44                	jmp    0x56452
   5640e:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   56412:	6b db 28             	imul   bx,bx,0x28
   56415:	b8 88 01             	mov    ax,0x188
   56418:	8e c0                	mov    es,ax
   5641a:	26 8b 87 92 a0       	mov    ax,WORD PTR es:[bx-0x5f6e]
   5641f:	3b 06 7a d5          	cmp    ax,WORD PTR ds:0xd57a
   56423:	7d 08                	jge    0x5642d
   56425:	c7 06 5e d5 04 00    	mov    WORD PTR ds:0xd55e,0x4
   5642b:	eb 25                	jmp    0x56452
   5642d:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   56431:	6b db 28             	imul   bx,bx,0x28
   56434:	b8 88 01             	mov    ax,0x188
   56437:	8e c0                	mov    es,ax
   56439:	26 8b 87 94 a0       	mov    ax,WORD PTR es:[bx-0x5f6c]
   5643e:	3b 06 78 d5          	cmp    ax,WORD PTR ds:0xd578
   56442:	7e 08                	jle    0x5644c
   56444:	c7 06 5e d5 01 00    	mov    WORD PTR ds:0xd55e,0x1
   5644a:	eb 06                	jmp    0x56452
   5644c:	c7 06 5e d5 03 00    	mov    WORD PTR ds:0xd55e,0x3
   56452:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   56456:	6b db 28             	imul   bx,bx,0x28
   56459:	b8 88 01             	mov    ax,0x188
   5645c:	8b 16 5e d5          	mov    dx,WORD PTR ds:0xd55e
   56460:	8e c0                	mov    es,ax
   56462:	26 89 97 8e a0       	mov    WORD PTR es:[bx-0x5f72],dx
   56467:	0e                   	push   cs
   56468:	e8 9d 85             	call   0x5ea08
   5646b:	83 3e 4c d5 00       	cmp    WORD PTR ds:0xd54c,0x0
   56470:	75 0c                	jne    0x5647e
   56472:	0e                   	push   cs
   56473:	e8 47 53             	call   0x5b7bd
   56476:	3d ff ff             	cmp    ax,0xffff
   56479:	75 03                	jne    0x5647e
   5647b:	e9 fc 0d             	jmp    0x5727a
   5647e:	0e                   	push   cs
   5647f:	e8 ef 5e             	call   0x5c371
   56482:	6a 0a                	push   0xa
   56484:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   56489:	59                   	pop    cx
   5648a:	83 3e d6 d5 0f       	cmp    WORD PTR ds:0xd5d6,0xf
   5648f:	74 12                	je     0x564a3
   56491:	83 7e fa 1d          	cmp    WORD PTR [bp-0x6],0x1d
   56495:	74 03                	je     0x5649a
   56497:	e9 c5 00             	jmp    0x5655f
   5649a:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   5649e:	74 03                	je     0x564a3
   564a0:	e9 bc 00             	jmp    0x5655f
   564a3:	83 3e 7c d5 00       	cmp    WORD PTR ds:0xd57c,0x0
   564a8:	74 03                	je     0x564ad
   564aa:	e9 b2 00             	jmp    0x5655f
   564ad:	9a 04 02 30 00       	call   0x30:0x204
   564b2:	6a 00                	push   0x0
   564b4:	68 f8 00             	push   0xf8
   564b7:	68 92 00             	push   0x92
   564ba:	68 a6 00             	push   0xa6
   564bd:	68 92 00             	push   0x92
   564c0:	68 82 00             	push   0x82
   564c3:	9a f5 13 28 00       	call   0x28:0x13f5
   564c8:	83 c4 0c             	add    sp,0xc
   564cb:	6a 00                	push   0x0
   564cd:	68 f8 00             	push   0xf8
   564d0:	68 9f 00             	push   0x9f
   564d3:	68 8f 00             	push   0x8f
   564d6:	68 92 00             	push   0x92
   564d9:	68 82 00             	push   0x82
   564dc:	9a f5 13 28 00       	call   0x28:0x13f5
   564e1:	83 c4 0c             	add    sp,0xc
   564e4:	6a 00                	push   0x0
   564e6:	6a 06                	push   0x6
   564e8:	68 a0 00             	push   0xa0
   564eb:	68 b5 00             	push   0xb5
   564ee:	68 a0 00             	push   0xa0
   564f1:	68 90 00             	push   0x90
   564f4:	9a f5 13 28 00       	call   0x28:0x13f5
   564f9:	83 c4 0c             	add    sp,0xc
   564fc:	6a 00                	push   0x0
   564fe:	6a 06                	push   0x6
   56500:	68 a0 00             	push   0xa0
   56503:	68 b5 00             	push   0xb5
   56506:	68 92 00             	push   0x92
   56509:	68 a7 00             	push   0xa7
   5650c:	9a f5 13 28 00       	call   0x28:0x13f5
   56511:	83 c4 0c             	add    sp,0xc
   56514:	b8 88 01             	mov    ax,0x188
   56517:	8e c0                	mov    es,ax
   56519:	26 a0 e3 e5          	mov    al,es:0xe5e3
   5651d:	50                   	push   ax
   5651e:	9a 69 00 30 00       	call   0x30:0x69
   56523:	59                   	pop    cx
   56524:	b8 88 01             	mov    ax,0x188
   56527:	8e c0                	mov    es,ax
   56529:	26 a0 e3 e5          	mov    al,es:0xe5e3
   5652d:	50                   	push   ax
   5652e:	9a 6b 02 30 00       	call   0x30:0x26b
   56533:	59                   	pop    cx
   56534:	b8 88 01             	mov    ax,0x188
   56537:	8e c0                	mov    es,ax
   56539:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   5653f:	75 e3                	jne    0x56524
   56541:	0e                   	push   cs
   56542:	e8 78 52             	call   0x5b7bd
   56545:	3d ff ff             	cmp    ax,0xffff
   56548:	75 03                	jne    0x5654d
   5654a:	e9 2d 0d             	jmp    0x5727a
   5654d:	c7 06 82 d5 01 00    	mov    WORD PTR ds:0xd582,0x1
   56553:	0e                   	push   cs
   56554:	e8 1a 5e             	call   0x5c371
   56557:	6a 0a                	push   0xa
   56559:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   5655e:	59                   	pop    cx
   5655f:	83 3e de d5 18       	cmp    WORD PTR ds:0xd5de,0x18
   56564:	7f 03                	jg     0x56569
   56566:	e9 19 f6             	jmp    0x55b82
   56569:	8b 1e de d5          	mov    bx,WORD PTR ds:0xd5de
   5656d:	6b db 28             	imul   bx,bx,0x28
   56570:	b8 88 01             	mov    ax,0x188
   56573:	8e c0                	mov    es,ax
   56575:	26 83 bf 98 a0 01    	cmp    WORD PTR es:[bx-0x5f68],0x1
   5657b:	74 03                	je     0x56580
   5657d:	e9 02 f6             	jmp    0x55b82
   56580:	83 7e fa 0a          	cmp    WORD PTR [bp-0x6],0xa
   56584:	7e 2d                	jle    0x565b3
   56586:	83 7e fa 0e          	cmp    WORD PTR [bp-0x6],0xe
   5658a:	7d 27                	jge    0x565b3
   5658c:	b8 88 01             	mov    ax,0x188
   5658f:	8e c0                	mov    es,ax
   56591:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56596:	6b db 5c             	imul   bx,bx,0x5c
   56599:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   5659c:	d1 e0                	shl    ax,1
   5659e:	03 d8                	add    bx,ax
   565a0:	b8 88 01             	mov    ax,0x188
   565a3:	8e c0                	mov    es,ax
   565a5:	26 83 bf cc 99 00    	cmp    WORD PTR es:[bx-0x6634],0x0
   565ab:	74 06                	je     0x565b3
   565ad:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   565b1:	74 3b                	je     0x565ee
   565b3:	83 3e d6 d5 0f       	cmp    WORD PTR ds:0xd5d6,0xf
   565b8:	77 03                	ja     0x565bd
   565ba:	e9 d3 00             	jmp    0x56690
   565bd:	83 3e d6 d5 13       	cmp    WORD PTR ds:0xd5d6,0x13
   565c2:	72 03                	jb     0x565c7
   565c4:	e9 c9 00             	jmp    0x56690
   565c7:	a1 d6 d5             	mov    ax,ds:0xd5d6
   565ca:	05 0e 00             	add    ax,0xe
   565cd:	d1 e0                	shl    ax,1
   565cf:	ba 88 01             	mov    dx,0x188
   565d2:	8e c2                	mov    es,dx
   565d4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   565d9:	6b db 5c             	imul   bx,bx,0x5c
   565dc:	03 d8                	add    bx,ax
   565de:	b8 88 01             	mov    ax,0x188
   565e1:	8e c0                	mov    es,ax
   565e3:	26 83 bf a6 99 00    	cmp    WORD PTR es:[bx-0x665a],0x0
   565e9:	75 03                	jne    0x565ee
   565eb:	e9 a2 00             	jmp    0x56690
   565ee:	c7 06 ae d5 01 00    	mov    WORD PTR ds:0xd5ae,0x1
   565f4:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   565f9:	74 09                	je     0x56604
   565fb:	a1 d6 d5             	mov    ax,ds:0xd5d6
   565fe:	2d 05 00             	sub    ax,0x5
   56601:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   56604:	b8 88 01             	mov    ax,0x188
   56607:	8e c0                	mov    es,ax
   56609:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5660e:	6b db 5c             	imul   bx,bx,0x5c
   56611:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56614:	d1 e0                	shl    ax,1
   56616:	03 d8                	add    bx,ax
   56618:	b8 88 01             	mov    ax,0x188
   5661b:	8e c0                	mov    es,ax
   5661d:	26 8b 87 cc 99       	mov    ax,WORD PTR es:[bx-0x6634]
   56622:	05 de ff             	add    ax,0xffde
   56625:	ba 88 01             	mov    dx,0x188
   56628:	8e c2                	mov    es,dx
   5662a:	26 a3 53 bb          	mov    es:0xbb53,ax
   5662e:	b8 88 01             	mov    ax,0x188
   56631:	8e c0                	mov    es,ax
   56633:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56638:	6b db 5c             	imul   bx,bx,0x5c
   5663b:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   5663e:	d1 e0                	shl    ax,1
   56640:	03 d8                	add    bx,ax
   56642:	b8 88 01             	mov    ax,0x188
   56645:	8e c0                	mov    es,ax
   56647:	26 c7 87 cc 99 00 00 	mov    WORD PTR es:[bx-0x6634],0x0
   5664e:	83 7e fa 0b          	cmp    WORD PTR [bp-0x6],0xb
   56652:	75 07                	jne    0x5665b
   56654:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   56659:	eb 0b                	jmp    0x56666
   5665b:	83 7e fa 0c          	cmp    WORD PTR [bp-0x6],0xc
   5665f:	75 05                	jne    0x56666
   56661:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   56666:	b8 88 01             	mov    ax,0x188
   56669:	8e c0                	mov    es,ax
   5666b:	26 ff 36 53 bb       	push   WORD PTR es:0xbb53
   56670:	b8 88 01             	mov    ax,0x188
   56673:	8e c0                	mov    es,ax
   56675:	26 a0 64 96          	mov    al,es:0x9664
   56679:	b4 00                	mov    ah,0x0
   5667b:	50                   	push   ax
   5667c:	0e                   	push   cs
   5667d:	e8 65 a4             	call   0x50ae5
   56680:	83 c4 04             	add    sp,0x4
   56683:	6a 2d                	push   0x2d
   56685:	9a 6b 02 30 00       	call   0x30:0x26b
   5668a:	59                   	pop    cx
   5668b:	9a 14 07 30 00       	call   0x30:0x714
   56690:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   56694:	74 06                	je     0x5669c
   56696:	83 7e fa 0f          	cmp    WORD PTR [bp-0x6],0xf
   5669a:	7c 0f                	jl     0x566ab
   5669c:	83 7e de 69          	cmp    WORD PTR [bp-0x22],0x69
   566a0:	74 09                	je     0x566ab
   566a2:	83 7e de 8d          	cmp    WORD PTR [bp-0x22],0xff8d
   566a6:	74 03                	je     0x566ab
   566a8:	e9 cb 00             	jmp    0x56776
   566ab:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   566b0:	74 1f                	je     0x566d1
   566b2:	b8 88 01             	mov    ax,0x188
   566b5:	8e c0                	mov    es,ax
   566b7:	26 a0 24 73          	mov    al,es:0x7324
   566bb:	b4 00                	mov    ah,0x0
   566bd:	40                   	inc    ax
   566be:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   566c1:	9a 04 02 30 00       	call   0x30:0x204
   566c6:	b8 88 01             	mov    ax,0x188
   566c9:	8e c0                	mov    es,ax
   566cb:	26 c6 06 24 73 00    	mov    BYTE PTR es:0x7324,0x0
   566d1:	83 7e fa 0b          	cmp    WORD PTR [bp-0x6],0xb
   566d5:	7c 03                	jl     0x566da
   566d7:	e9 9c 00             	jmp    0x56776
   566da:	83 7e f8 02          	cmp    WORD PTR [bp-0x8],0x2
   566de:	74 03                	je     0x566e3
   566e0:	e9 93 00             	jmp    0x56776
   566e3:	c7 06 ae d5 01 00    	mov    WORD PTR ds:0xd5ae,0x1
   566e9:	b8 88 01             	mov    ax,0x188
   566ec:	8e c0                	mov    es,ax
   566ee:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   566f3:	6b db 5c             	imul   bx,bx,0x5c
   566f6:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   566f9:	d1 e0                	shl    ax,1
   566fb:	03 d8                	add    bx,ax
   566fd:	b8 88 01             	mov    ax,0x188
   56700:	8e c0                	mov    es,ax
   56702:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   56707:	bb 64 00             	mov    bx,0x64
   5670a:	99                   	cwd
   5670b:	f7 fb                	idiv   bx
   5670d:	a3 e6 d5             	mov    ds:0xd5e6,ax
   56710:	b8 88 01             	mov    ax,0x188
   56713:	8e c0                	mov    es,ax
   56715:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5671a:	6b db 5c             	imul   bx,bx,0x5c
   5671d:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56720:	d1 e0                	shl    ax,1
   56722:	03 d8                	add    bx,ax
   56724:	b8 88 01             	mov    ax,0x188
   56727:	8e c0                	mov    es,ax
   56729:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   5672e:	bb 64 00             	mov    bx,0x64
   56731:	99                   	cwd
   56732:	f7 fb                	idiv   bx
   56734:	89 16 ea d5          	mov    WORD PTR ds:0xd5ea,dx
   56738:	83 3e ea d5 20       	cmp    WORD PTR ds:0xd5ea,0x20
   5673d:	7e 37                	jle    0x56776
   5673f:	83 3e ea d5 2c       	cmp    WORD PTR ds:0xd5ea,0x2c
   56744:	7d 30                	jge    0x56776
   56746:	0e                   	push   cs
   56747:	e8 09 af             	call   0x51653
   5674a:	b8 88 01             	mov    ax,0x188
   5674d:	8e c0                	mov    es,ax
   5674f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56754:	6b db 5c             	imul   bx,bx,0x5c
   56757:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   5675a:	d1 e0                	shl    ax,1
   5675c:	03 d8                	add    bx,ax
   5675e:	b8 88 01             	mov    ax,0x188
   56761:	8e c0                	mov    es,ax
   56763:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   5676a:	0e                   	push   cs
   5676b:	e8 56 aa             	call   0x511c4
   5676e:	6a 2d                	push   0x2d
   56770:	9a 6b 02 30 00       	call   0x30:0x26b
   56775:	59                   	pop    cx
   56776:	83 7e fa 0b          	cmp    WORD PTR [bp-0x6],0xb
   5677a:	7d 06                	jge    0x56782
   5677c:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   56780:	74 0f                	je     0x56791
   56782:	83 7e de 69          	cmp    WORD PTR [bp-0x22],0x69
   56786:	74 09                	je     0x56791
   56788:	83 7e de 8d          	cmp    WORD PTR [bp-0x22],0xff8d
   5678c:	74 03                	je     0x56791
   5678e:	e9 c4 0a             	jmp    0x57255
   56791:	c7 06 ae d5 01 00    	mov    WORD PTR ds:0xd5ae,0x1
   56797:	83 7e de 69          	cmp    WORD PTR [bp-0x22],0x69
   5679b:	74 06                	je     0x567a3
   5679d:	83 7e de 8d          	cmp    WORD PTR [bp-0x22],0xff8d
   567a1:	75 5a                	jne    0x567fd
   567a3:	b8 88 01             	mov    ax,0x188
   567a6:	8e c0                	mov    es,ax
   567a8:	26 c7 06 53 bb 01 00 	mov    WORD PTR es:0xbb53,0x1
   567af:	eb 3f                	jmp    0x567f0
   567b1:	b8 88 01             	mov    ax,0x188
   567b4:	8e c0                	mov    es,ax
   567b6:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   567bb:	6b db 5c             	imul   bx,bx,0x5c
   567be:	b8 88 01             	mov    ax,0x188
   567c1:	8e c0                	mov    es,ax
   567c3:	26 a1 53 bb          	mov    ax,es:0xbb53
   567c7:	d1 e0                	shl    ax,1
   567c9:	03 d8                	add    bx,ax
   567cb:	b8 88 01             	mov    ax,0x188
   567ce:	8e c0                	mov    es,ax
   567d0:	26 83 bf ea 99 00    	cmp    WORD PTR es:[bx-0x6616],0x0
   567d6:	74 0e                	je     0x567e6
   567d8:	b8 88 01             	mov    ax,0x188
   567db:	8e c0                	mov    es,ax
   567dd:	26 a1 53 bb          	mov    ax,es:0xbb53
   567e1:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   567e4:	eb 17                	jmp    0x567fd
   567e6:	b8 88 01             	mov    ax,0x188
   567e9:	8e c0                	mov    es,ax
   567eb:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   567f0:	b8 88 01             	mov    ax,0x188
   567f3:	8e c0                	mov    es,ax
   567f5:	26 83 3e 53 bb 0a    	cmp    WORD PTR es:0xbb53,0xa
   567fb:	7e b4                	jle    0x567b1
   567fd:	b8 88 01             	mov    ax,0x188
   56800:	8e c0                	mov    es,ax
   56802:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56807:	6b db 5c             	imul   bx,bx,0x5c
   5680a:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   5680d:	d1 e0                	shl    ax,1
   5680f:	03 d8                	add    bx,ax
   56811:	b8 88 01             	mov    ax,0x188
   56814:	8e c0                	mov    es,ax
   56816:	26 83 bf ea 99 00    	cmp    WORD PTR es:[bx-0x6616],0x0
   5681c:	75 03                	jne    0x56821
   5681e:	e9 34 0a             	jmp    0x57255
   56821:	b8 88 01             	mov    ax,0x188
   56824:	8e c0                	mov    es,ax
   56826:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5682b:	6b db 5c             	imul   bx,bx,0x5c
   5682e:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56831:	d1 e0                	shl    ax,1
   56833:	03 d8                	add    bx,ax
   56835:	b8 88 01             	mov    ax,0x188
   56838:	8e c0                	mov    es,ax
   5683a:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   5683f:	bb 64 00             	mov    bx,0x64
   56842:	99                   	cwd
   56843:	f7 fb                	idiv   bx
   56845:	a3 e6 d5             	mov    ds:0xd5e6,ax
   56848:	b8 88 01             	mov    ax,0x188
   5684b:	8e c0                	mov    es,ax
   5684d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56852:	6b db 5c             	imul   bx,bx,0x5c
   56855:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56858:	d1 e0                	shl    ax,1
   5685a:	03 d8                	add    bx,ax
   5685c:	b8 88 01             	mov    ax,0x188
   5685f:	8e c0                	mov    es,ax
   56861:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   56866:	bb 64 00             	mov    bx,0x64
   56869:	99                   	cwd
   5686a:	f7 fb                	idiv   bx
   5686c:	89 16 ea d5          	mov    WORD PTR ds:0xd5ea,dx
   56870:	0e                   	push   cs
   56871:	e8 5c b3             	call   0x51bd0
   56874:	ff 76 fa             	push   WORD PTR [bp-0x6]
   56877:	b8 88 01             	mov    ax,0x188
   5687a:	8e c0                	mov    es,ax
   5687c:	26 a0 64 96          	mov    al,es:0x9664
   56880:	b4 00                	mov    ah,0x0
   56882:	50                   	push   ax
   56883:	0e                   	push   cs
   56884:	e8 5e a2             	call   0x50ae5
   56887:	83 c4 04             	add    sp,0x4
   5688a:	83 3e ea d5 2b       	cmp    WORD PTR ds:0xd5ea,0x2b
   5688f:	75 08                	jne    0x56899
   56891:	c7 06 ea d5 22 00    	mov    WORD PTR ds:0xd5ea,0x22
   56897:	eb 0c                	jmp    0x568a5
   56899:	83 3e ea d5 20       	cmp    WORD PTR ds:0xd5ea,0x20
   5689e:	7e 05                	jle    0x568a5
   568a0:	83 06 ea d5 02       	add    WORD PTR ds:0xd5ea,0x2
   568a5:	a0 ea d5             	mov    al,ds:0xd5ea
   568a8:	04 ff                	add    al,0xff
   568aa:	50                   	push   ax
   568ab:	9a 6b 02 30 00       	call   0x30:0x26b
   568b0:	59                   	pop    cx
   568b1:	b8 88 01             	mov    ax,0x188
   568b4:	8e c0                	mov    es,ax
   568b6:	26 a0 66 96          	mov    al,es:0x9666
   568ba:	50                   	push   ax
   568bb:	6a 06                	push   0x6
   568bd:	6a 06                	push   0x6
   568bf:	6a 55                	push   0x55
   568c1:	68 9d 00             	push   0x9d
   568c4:	6a 18                	push   0x18
   568c6:	9a 08 09 28 00       	call   0x28:0x908
   568cb:	83 c4 0c             	add    sp,0xc
   568ce:	6a 00                	push   0x0
   568d0:	68 88 01             	push   0x188
   568d3:	68 10 a5             	push   0xa510
   568d6:	68 9e 00             	push   0x9e
   568d9:	6a 18                	push   0x18
   568db:	6a 02                	push   0x2
   568dd:	0e                   	push   cs
   568de:	e8 ef 3e             	call   0x5a7d0
   568e1:	83 c4 0c             	add    sp,0xc
   568e4:	b8 88 01             	mov    ax,0x188
   568e7:	8e c0                	mov    es,ax
   568e9:	26 a0 65 96          	mov    al,es:0x9665
   568ed:	b4 00                	mov    ah,0x0
   568ef:	50                   	push   ax
   568f0:	68 88 01             	push   0x188
   568f3:	68 10 a5             	push   0xa510
   568f6:	68 9d 00             	push   0x9d
   568f9:	6a 18                	push   0x18
   568fb:	6a 02                	push   0x2
   568fd:	0e                   	push   cs
   568fe:	e8 cf 3e             	call   0x5a7d0
   56901:	83 c4 0c             	add    sp,0xc
   56904:	6a 06                	push   0x6
   56906:	0e                   	push   cs
   56907:	e8 27 3f             	call   0x5a831
   5690a:	59                   	pop    cx
   5690b:	83 3e d6 d5 00       	cmp    WORD PTR ds:0xd5d6,0x0
   56910:	75 08                	jne    0x5691a
   56912:	9a 15 05 30 00       	call   0x30:0x515
   56917:	a3 ec d5             	mov    ds:0xd5ec,ax
   5691a:	b8 88 01             	mov    ax,0x188
   5691d:	8e c0                	mov    es,ax
   5691f:	26 a0 e3 e5          	mov    al,es:0xe5e3
   56923:	50                   	push   ax
   56924:	9a 6b 02 30 00       	call   0x30:0x26b
   56929:	59                   	pop    cx
   5692a:	83 7e de 69          	cmp    WORD PTR [bp-0x22],0x69
   5692e:	74 09                	je     0x56939
   56930:	83 7e de 8d          	cmp    WORD PTR [bp-0x22],0xff8d
   56934:	74 03                	je     0x56939
   56936:	e9 e0 03             	jmp    0x56d19
   56939:	6a 01                	push   0x1
   5693b:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   56940:	59                   	pop    cx
   56941:	c1 f8 08             	sar    ax,0x8
   56944:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   56947:	b8 88 01             	mov    ax,0x188
   5694a:	8e c0                	mov    es,ax
   5694c:	26 a0 e3 e5          	mov    al,es:0xe5e3
   56950:	50                   	push   ax
   56951:	9a 6b 02 30 00       	call   0x30:0x26b
   56956:	59                   	pop    cx
   56957:	83 7e dc 00          	cmp    WORD PTR [bp-0x24],0x0
   5695b:	74 dc                	je     0x56939
   5695d:	9a e3 01 40 00       	call   0x40:0x1e3
   56962:	ff 76 fa             	push   WORD PTR [bp-0x6]
   56965:	6a 00                	push   0x0
   56967:	0e                   	push   cs
   56968:	e8 7a a1             	call   0x50ae5
   5696b:	83 c4 04             	add    sp,0x4
   5696e:	83 7e dc 4d          	cmp    WORD PTR [bp-0x24],0x4d
   56972:	75 14                	jne    0x56988
   56974:	6a 0a                	push   0xa
   56976:	6a 01                	push   0x1
   56978:	6a 01                	push   0x1
   5697a:	16                   	push   ss
   5697b:	8d 46 fa             	lea    ax,[bp-0x6]
   5697e:	50                   	push   ax
   5697f:	0e                   	push   cs
   56980:	e8 cf 34             	call   0x59e52
   56983:	83 c4 0a             	add    sp,0xa
   56986:	eb 40                	jmp    0x569c8
   56988:	83 7e dc 4b          	cmp    WORD PTR [bp-0x24],0x4b
   5698c:	75 08                	jne    0x56996
   5698e:	6a 0a                	push   0xa
   56990:	6a 01                	push   0x1
   56992:	6a ff                	push   0xffff
   56994:	eb e4                	jmp    0x5697a
   56996:	83 7e dc 48          	cmp    WORD PTR [bp-0x24],0x48
   5699a:	75 02                	jne    0x5699e
   5699c:	eb 06                	jmp    0x569a4
   5699e:	83 7e dc 50          	cmp    WORD PTR [bp-0x24],0x50
   569a2:	75 12                	jne    0x569b6
   569a4:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   569a7:	05 04 00             	add    ax,0x4
   569aa:	bb 0a 00             	mov    bx,0xa
   569ad:	99                   	cwd
   569ae:	f7 fb                	idiv   bx
   569b0:	42                   	inc    dx
   569b1:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   569b4:	eb 12                	jmp    0x569c8
   569b6:	83 7e dc 01          	cmp    WORD PTR [bp-0x24],0x1
   569ba:	75 0c                	jne    0x569c8
   569bc:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   569c1:	0e                   	push   cs
   569c2:	e8 ff a7             	call   0x511c4
   569c5:	e9 63 08             	jmp    0x5722b
   569c8:	83 7e dc 00          	cmp    WORD PTR [bp-0x24],0x0
   569cc:	75 03                	jne    0x569d1
   569ce:	e9 2c 01             	jmp    0x56afd
   569d1:	b8 88 01             	mov    ax,0x188
   569d4:	8e c0                	mov    es,ax
   569d6:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   569db:	6b db 5c             	imul   bx,bx,0x5c
   569de:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   569e1:	d1 e0                	shl    ax,1
   569e3:	03 d8                	add    bx,ax
   569e5:	b8 88 01             	mov    ax,0x188
   569e8:	8e c0                	mov    es,ax
   569ea:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   569ef:	bb 64 00             	mov    bx,0x64
   569f2:	99                   	cwd
   569f3:	f7 fb                	idiv   bx
   569f5:	a3 e6 d5             	mov    ds:0xd5e6,ax
   569f8:	b8 88 01             	mov    ax,0x188
   569fb:	8e c0                	mov    es,ax
   569fd:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56a02:	6b db 5c             	imul   bx,bx,0x5c
   56a05:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56a08:	d1 e0                	shl    ax,1
   56a0a:	03 d8                	add    bx,ax
   56a0c:	b8 88 01             	mov    ax,0x188
   56a0f:	8e c0                	mov    es,ax
   56a11:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   56a16:	bb 64 00             	mov    bx,0x64
   56a19:	99                   	cwd
   56a1a:	f7 fb                	idiv   bx
   56a1c:	89 16 ea d5          	mov    WORD PTR ds:0xd5ea,dx
   56a20:	83 7e dc 39          	cmp    WORD PTR [bp-0x24],0x39
   56a24:	75 35                	jne    0x56a5b
   56a26:	83 3e ea d5 20       	cmp    WORD PTR ds:0xd5ea,0x20
   56a2b:	7e 2e                	jle    0x56a5b
   56a2d:	83 3e ea d5 2c       	cmp    WORD PTR ds:0xd5ea,0x2c
   56a32:	7d 27                	jge    0x56a5b
   56a34:	0e                   	push   cs
   56a35:	e8 1b ac             	call   0x51653
   56a38:	b8 88 01             	mov    ax,0x188
   56a3b:	8e c0                	mov    es,ax
   56a3d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56a42:	6b db 5c             	imul   bx,bx,0x5c
   56a45:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56a48:	d1 e0                	shl    ax,1
   56a4a:	03 d8                	add    bx,ax
   56a4c:	b8 88 01             	mov    ax,0x188
   56a4f:	8e c0                	mov    es,ax
   56a51:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   56a58:	e9 61 ff             	jmp    0x569bc
   56a5b:	0e                   	push   cs
   56a5c:	e8 71 b1             	call   0x51bd0
   56a5f:	ff 76 fa             	push   WORD PTR [bp-0x6]
   56a62:	b8 88 01             	mov    ax,0x188
   56a65:	8e c0                	mov    es,ax
   56a67:	26 a0 64 96          	mov    al,es:0x9664
   56a6b:	b4 00                	mov    ah,0x0
   56a6d:	50                   	push   ax
   56a6e:	0e                   	push   cs
   56a6f:	e8 73 a0             	call   0x50ae5
   56a72:	83 c4 04             	add    sp,0x4
   56a75:	83 3e ea d5 2b       	cmp    WORD PTR ds:0xd5ea,0x2b
   56a7a:	75 08                	jne    0x56a84
   56a7c:	c7 06 ea d5 22 00    	mov    WORD PTR ds:0xd5ea,0x22
   56a82:	eb 0c                	jmp    0x56a90
   56a84:	83 3e ea d5 20       	cmp    WORD PTR ds:0xd5ea,0x20
   56a89:	7e 05                	jle    0x56a90
   56a8b:	83 06 ea d5 02       	add    WORD PTR ds:0xd5ea,0x2
   56a90:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   56a95:	74 0c                	je     0x56aa3
   56a97:	a0 ea d5             	mov    al,ds:0xd5ea
   56a9a:	04 ff                	add    al,0xff
   56a9c:	50                   	push   ax
   56a9d:	9a 6b 02 30 00       	call   0x30:0x26b
   56aa2:	59                   	pop    cx
   56aa3:	b8 88 01             	mov    ax,0x188
   56aa6:	8e c0                	mov    es,ax
   56aa8:	26 a0 66 96          	mov    al,es:0x9666
   56aac:	50                   	push   ax
   56aad:	6a 06                	push   0x6
   56aaf:	6a 06                	push   0x6
   56ab1:	6a 55                	push   0x55
   56ab3:	68 9d 00             	push   0x9d
   56ab6:	6a 18                	push   0x18
   56ab8:	9a 08 09 28 00       	call   0x28:0x908
   56abd:	83 c4 0c             	add    sp,0xc
   56ac0:	6a 00                	push   0x0
   56ac2:	68 88 01             	push   0x188
   56ac5:	68 10 a5             	push   0xa510
   56ac8:	68 9e 00             	push   0x9e
   56acb:	6a 18                	push   0x18
   56acd:	6a 02                	push   0x2
   56acf:	0e                   	push   cs
   56ad0:	e8 fd 3c             	call   0x5a7d0
   56ad3:	83 c4 0c             	add    sp,0xc
   56ad6:	b8 88 01             	mov    ax,0x188
   56ad9:	8e c0                	mov    es,ax
   56adb:	26 a0 65 96          	mov    al,es:0x9665
   56adf:	b4 00                	mov    ah,0x0
   56ae1:	50                   	push   ax
   56ae2:	68 88 01             	push   0x188
   56ae5:	68 10 a5             	push   0xa510
   56ae8:	68 9d 00             	push   0x9d
   56aeb:	6a 18                	push   0x18
   56aed:	6a 02                	push   0x2
   56aef:	0e                   	push   cs
   56af0:	e8 dd 3c             	call   0x5a7d0
   56af3:	83 c4 0c             	add    sp,0xc
   56af6:	6a 06                	push   0x6
   56af8:	0e                   	push   cs
   56af9:	e8 35 3d             	call   0x5a831
   56afc:	59                   	pop    cx
   56afd:	83 7e dc 1c          	cmp    WORD PTR [bp-0x24],0x1c
   56b01:	74 03                	je     0x56b06
   56b03:	e9 33 fe             	jmp    0x56939
   56b06:	c7 06 ec d5 0b 00    	mov    WORD PTR ds:0xd5ec,0xb
   56b0c:	83 7e dc 00          	cmp    WORD PTR [bp-0x24],0x0
   56b10:	74 73                	je     0x56b85
   56b12:	b8 88 01             	mov    ax,0x188
   56b15:	8e c0                	mov    es,ax
   56b17:	26 c7 06 53 bb 01 00 	mov    WORD PTR es:0xbb53,0x1
   56b1e:	eb 27                	jmp    0x56b47
   56b20:	6a 01                	push   0x1
   56b22:	b8 88 01             	mov    ax,0x188
   56b25:	8e c0                	mov    es,ax
   56b27:	26 ff 36 98 28       	push   WORD PTR es:0x2898
   56b2c:	b8 88 01             	mov    ax,0x188
   56b2f:	8e c0                	mov    es,ax
   56b31:	26 ff 36 53 bb       	push   WORD PTR es:0xbb53
   56b36:	0e                   	push   cs
   56b37:	e8 63 e1             	call   0x54c9d
   56b3a:	83 c4 06             	add    sp,0x6
   56b3d:	b8 88 01             	mov    ax,0x188
   56b40:	8e c0                	mov    es,ax
   56b42:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   56b47:	b8 88 01             	mov    ax,0x188
   56b4a:	8e c0                	mov    es,ax
   56b4c:	26 83 3e 53 bb 0a    	cmp    WORD PTR es:0xbb53,0xa
   56b52:	7e cc                	jle    0x56b20
   56b54:	b8 88 01             	mov    ax,0x188
   56b57:	8e c0                	mov    es,ax
   56b59:	26 a0 64 96          	mov    al,es:0x9664
   56b5d:	b4 00                	mov    ah,0x0
   56b5f:	50                   	push   ax
   56b60:	6a 06                	push   0x6
   56b62:	6a 0e                	push   0xe
   56b64:	6a 0e                	push   0xe
   56b66:	68 a5 00             	push   0xa5
   56b69:	a1 ec d5             	mov    ax,ds:0xd5ec
   56b6c:	05 f5 ff             	add    ax,0xfff5
   56b6f:	6b c0 11             	imul   ax,ax,0x11
   56b72:	05 3b 00             	add    ax,0x3b
   56b75:	50                   	push   ax
   56b76:	9a 99 0b 28 00       	call   0x28:0xb99
   56b7b:	83 c4 0c             	add    sp,0xc
   56b7e:	6a 06                	push   0x6
   56b80:	0e                   	push   cs
   56b81:	e8 ad 3c             	call   0x5a831
   56b84:	59                   	pop    cx
   56b85:	6a 01                	push   0x1
   56b87:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   56b8c:	59                   	pop    cx
   56b8d:	c1 f8 08             	sar    ax,0x8
   56b90:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   56b93:	b8 88 01             	mov    ax,0x188
   56b96:	8e c0                	mov    es,ax
   56b98:	26 a0 e3 e5          	mov    al,es:0xe5e3
   56b9c:	50                   	push   ax
   56b9d:	9a 6b 02 30 00       	call   0x30:0x26b
   56ba2:	59                   	pop    cx
   56ba3:	83 7e dc 00          	cmp    WORD PTR [bp-0x24],0x0
   56ba7:	74 dc                	je     0x56b85
   56ba9:	9a e3 01 40 00       	call   0x40:0x1e3
   56bae:	b8 88 01             	mov    ax,0x188
   56bb1:	8e c0                	mov    es,ax
   56bb3:	26 c7 06 53 bb 01 00 	mov    WORD PTR es:0xbb53,0x1
   56bba:	eb 27                	jmp    0x56be3
   56bbc:	6a 01                	push   0x1
   56bbe:	b8 88 01             	mov    ax,0x188
   56bc1:	8e c0                	mov    es,ax
   56bc3:	26 ff 36 98 28       	push   WORD PTR es:0x2898
   56bc8:	b8 88 01             	mov    ax,0x188
   56bcb:	8e c0                	mov    es,ax
   56bcd:	26 ff 36 53 bb       	push   WORD PTR es:0xbb53
   56bd2:	0e                   	push   cs
   56bd3:	e8 a9 e2             	call   0x54e7f
   56bd6:	83 c4 06             	add    sp,0x6
   56bd9:	b8 88 01             	mov    ax,0x188
   56bdc:	8e c0                	mov    es,ax
   56bde:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   56be3:	b8 88 01             	mov    ax,0x188
   56be6:	8e c0                	mov    es,ax
   56be8:	26 83 3e 53 bb 03    	cmp    WORD PTR es:0xbb53,0x3
   56bee:	7e cc                	jle    0x56bbc
   56bf0:	83 7e dc 4d          	cmp    WORD PTR [bp-0x24],0x4d
   56bf4:	75 15                	jne    0x56c0b
   56bf6:	6a 0e                	push   0xe
   56bf8:	6a 0b                	push   0xb
   56bfa:	6a 01                	push   0x1
   56bfc:	68 88 01             	push   0x188
   56bff:	68 ec d5             	push   0xd5ec
   56c02:	0e                   	push   cs
   56c03:	e8 4c 32             	call   0x59e52
   56c06:	83 c4 0a             	add    sp,0xa
   56c09:	eb 1c                	jmp    0x56c27
   56c0b:	83 7e dc 4b          	cmp    WORD PTR [bp-0x24],0x4b
   56c0f:	75 08                	jne    0x56c19
   56c11:	6a 0e                	push   0xe
   56c13:	6a 0b                	push   0xb
   56c15:	6a ff                	push   0xffff
   56c17:	eb e3                	jmp    0x56bfc
   56c19:	83 7e dc 01          	cmp    WORD PTR [bp-0x24],0x1
   56c1d:	75 08                	jne    0x56c27
   56c1f:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   56c24:	e9 04 06             	jmp    0x5722b
   56c27:	83 7e dc 00          	cmp    WORD PTR [bp-0x24],0x0
   56c2b:	74 73                	je     0x56ca0
   56c2d:	b8 88 01             	mov    ax,0x188
   56c30:	8e c0                	mov    es,ax
   56c32:	26 c7 06 53 bb 01 00 	mov    WORD PTR es:0xbb53,0x1
   56c39:	eb 27                	jmp    0x56c62
   56c3b:	6a 01                	push   0x1
   56c3d:	b8 88 01             	mov    ax,0x188
   56c40:	8e c0                	mov    es,ax
   56c42:	26 ff 36 98 28       	push   WORD PTR es:0x2898
   56c47:	b8 88 01             	mov    ax,0x188
   56c4a:	8e c0                	mov    es,ax
   56c4c:	26 ff 36 53 bb       	push   WORD PTR es:0xbb53
   56c51:	0e                   	push   cs
   56c52:	e8 2a e2             	call   0x54e7f
   56c55:	83 c4 06             	add    sp,0x6
   56c58:	b8 88 01             	mov    ax,0x188
   56c5b:	8e c0                	mov    es,ax
   56c5d:	26 ff 06 53 bb       	inc    WORD PTR es:0xbb53
   56c62:	b8 88 01             	mov    ax,0x188
   56c65:	8e c0                	mov    es,ax
   56c67:	26 83 3e 53 bb 03    	cmp    WORD PTR es:0xbb53,0x3
   56c6d:	7e cc                	jle    0x56c3b
   56c6f:	6a 06                	push   0x6
   56c71:	0e                   	push   cs
   56c72:	e8 bc 3b             	call   0x5a831
   56c75:	59                   	pop    cx
   56c76:	b8 88 01             	mov    ax,0x188
   56c79:	8e c0                	mov    es,ax
   56c7b:	26 a0 64 96          	mov    al,es:0x9664
   56c7f:	b4 00                	mov    ah,0x0
   56c81:	50                   	push   ax
   56c82:	6a 00                	push   0x0
   56c84:	6a 0e                	push   0xe
   56c86:	6a 0e                	push   0xe
   56c88:	68 a5 00             	push   0xa5
   56c8b:	a1 ec d5             	mov    ax,ds:0xd5ec
   56c8e:	05 f5 ff             	add    ax,0xfff5
   56c91:	6b c0 11             	imul   ax,ax,0x11
   56c94:	05 3b 00             	add    ax,0x3b
   56c97:	50                   	push   ax
   56c98:	9a 99 0b 28 00       	call   0x28:0xb99
   56c9d:	83 c4 0c             	add    sp,0xc
   56ca0:	83 7e dc 1c          	cmp    WORD PTR [bp-0x24],0x1c
   56ca4:	74 03                	je     0x56ca9
   56ca6:	e9 dc fe             	jmp    0x56b85
   56ca9:	83 3e ec d5 00       	cmp    WORD PTR ds:0xd5ec,0x0
   56cae:	74 1a                	je     0x56cca
   56cb0:	6a 00                	push   0x0
   56cb2:	b8 88 01             	mov    ax,0x188
   56cb5:	8e c0                	mov    es,ax
   56cb7:	26 ff 36 98 28       	push   WORD PTR es:0x2898
   56cbc:	a1 ec d5             	mov    ax,ds:0xd5ec
   56cbf:	05 f5 ff             	add    ax,0xfff5
   56cc2:	50                   	push   ax
   56cc3:	0e                   	push   cs
   56cc4:	e8 b8 e1             	call   0x54e7f
   56cc7:	83 c4 06             	add    sp,0x6
   56cca:	b8 88 01             	mov    ax,0x188
   56ccd:	8e c0                	mov    es,ax
   56ccf:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56cd4:	6b db 5c             	imul   bx,bx,0x5c
   56cd7:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56cda:	d1 e0                	shl    ax,1
   56cdc:	03 d8                	add    bx,ax
   56cde:	b8 88 01             	mov    ax,0x188
   56ce1:	8e c0                	mov    es,ax
   56ce3:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   56ce8:	bb 64 00             	mov    bx,0x64
   56ceb:	99                   	cwd
   56cec:	f7 fb                	idiv   bx
   56cee:	a3 e6 d5             	mov    ds:0xd5e6,ax
   56cf1:	b8 88 01             	mov    ax,0x188
   56cf4:	8e c0                	mov    es,ax
   56cf6:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56cfb:	6b db 5c             	imul   bx,bx,0x5c
   56cfe:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56d01:	d1 e0                	shl    ax,1
   56d03:	03 d8                	add    bx,ax
   56d05:	b8 88 01             	mov    ax,0x188
   56d08:	8e c0                	mov    es,ax
   56d0a:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   56d0f:	bb 64 00             	mov    bx,0x64
   56d12:	99                   	cwd
   56d13:	f7 fb                	idiv   bx
   56d15:	89 16 ea d5          	mov    WORD PTR ds:0xd5ea,dx
   56d19:	83 3e ec d5 0b       	cmp    WORD PTR ds:0xd5ec,0xb
   56d1e:	7c 03                	jl     0x56d23
   56d20:	e9 21 01             	jmp    0x56e44
   56d23:	b8 88 01             	mov    ax,0x188
   56d26:	8e c0                	mov    es,ax
   56d28:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   56d2e:	74 03                	je     0x56d33
   56d30:	e9 11 01             	jmp    0x56e44
   56d33:	a1 ec d5             	mov    ax,ds:0xd5ec
   56d36:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
   56d39:	75 03                	jne    0x56d3e
   56d3b:	e9 06 01             	jmp    0x56e44
   56d3e:	83 3e ec d5 00       	cmp    WORD PTR ds:0xd5ec,0x0
   56d43:	75 03                	jne    0x56d48
   56d45:	e9 fc 00             	jmp    0x56e44
   56d48:	ff 76 fa             	push   WORD PTR [bp-0x6]
   56d4b:	6a 00                	push   0x0
   56d4d:	0e                   	push   cs
   56d4e:	e8 94 9d             	call   0x50ae5
   56d51:	83 c4 04             	add    sp,0x4
   56d54:	a1 ec d5             	mov    ax,ds:0xd5ec
   56d57:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   56d5a:	ff 76 fa             	push   WORD PTR [bp-0x6]
   56d5d:	b8 88 01             	mov    ax,0x188
   56d60:	8e c0                	mov    es,ax
   56d62:	26 a0 64 96          	mov    al,es:0x9664
   56d66:	b4 00                	mov    ah,0x0
   56d68:	50                   	push   ax
   56d69:	0e                   	push   cs
   56d6a:	e8 78 9d             	call   0x50ae5
   56d6d:	83 c4 04             	add    sp,0x4
   56d70:	b8 88 01             	mov    ax,0x188
   56d73:	8e c0                	mov    es,ax
   56d75:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56d7a:	6b db 5c             	imul   bx,bx,0x5c
   56d7d:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56d80:	d1 e0                	shl    ax,1
   56d82:	03 d8                	add    bx,ax
   56d84:	b8 88 01             	mov    ax,0x188
   56d87:	8e c0                	mov    es,ax
   56d89:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   56d8e:	bb 64 00             	mov    bx,0x64
   56d91:	99                   	cwd
   56d92:	f7 fb                	idiv   bx
   56d94:	a3 e6 d5             	mov    ds:0xd5e6,ax
   56d97:	b8 88 01             	mov    ax,0x188
   56d9a:	8e c0                	mov    es,ax
   56d9c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56da1:	6b db 5c             	imul   bx,bx,0x5c
   56da4:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   56da7:	d1 e0                	shl    ax,1
   56da9:	03 d8                	add    bx,ax
   56dab:	b8 88 01             	mov    ax,0x188
   56dae:	8e c0                	mov    es,ax
   56db0:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   56db5:	bb 64 00             	mov    bx,0x64
   56db8:	99                   	cwd
   56db9:	f7 fb                	idiv   bx
   56dbb:	89 16 ea d5          	mov    WORD PTR ds:0xd5ea,dx
   56dbf:	0e                   	push   cs
   56dc0:	e8 0d ae             	call   0x51bd0
   56dc3:	83 3e ea d5 2b       	cmp    WORD PTR ds:0xd5ea,0x2b
   56dc8:	75 08                	jne    0x56dd2
   56dca:	c7 06 ea d5 22 00    	mov    WORD PTR ds:0xd5ea,0x22
   56dd0:	eb 0c                	jmp    0x56dde
   56dd2:	83 3e ea d5 20       	cmp    WORD PTR ds:0xd5ea,0x20
   56dd7:	7e 05                	jle    0x56dde
   56dd9:	83 06 ea d5 02       	add    WORD PTR ds:0xd5ea,0x2
   56dde:	a0 ea d5             	mov    al,ds:0xd5ea
   56de1:	04 ff                	add    al,0xff
   56de3:	50                   	push   ax
   56de4:	9a 6b 02 30 00       	call   0x30:0x26b
   56de9:	59                   	pop    cx
   56dea:	b8 88 01             	mov    ax,0x188
   56ded:	8e c0                	mov    es,ax
   56def:	26 a0 66 96          	mov    al,es:0x9666
   56df3:	50                   	push   ax
   56df4:	6a 06                	push   0x6
   56df6:	6a 06                	push   0x6
   56df8:	6a 55                	push   0x55
   56dfa:	68 9d 00             	push   0x9d
   56dfd:	6a 18                	push   0x18
   56dff:	9a 08 09 28 00       	call   0x28:0x908
   56e04:	83 c4 0c             	add    sp,0xc
   56e07:	6a 00                	push   0x0
   56e09:	68 88 01             	push   0x188
   56e0c:	68 10 a5             	push   0xa510
   56e0f:	68 9e 00             	push   0x9e
   56e12:	6a 18                	push   0x18
   56e14:	6a 02                	push   0x2
   56e16:	0e                   	push   cs
   56e17:	e8 b6 39             	call   0x5a7d0
   56e1a:	83 c4 0c             	add    sp,0xc
   56e1d:	b8 88 01             	mov    ax,0x188
   56e20:	8e c0                	mov    es,ax
   56e22:	26 a0 65 96          	mov    al,es:0x9665
   56e26:	b4 00                	mov    ah,0x0
   56e28:	50                   	push   ax
   56e29:	68 88 01             	push   0x188
   56e2c:	68 10 a5             	push   0xa510
   56e2f:	68 9d 00             	push   0x9d
   56e32:	6a 18                	push   0x18
   56e34:	6a 02                	push   0x2
   56e36:	0e                   	push   cs
   56e37:	e8 96 39             	call   0x5a7d0
   56e3a:	83 c4 0c             	add    sp,0xc
   56e3d:	6a 06                	push   0x6
   56e3f:	0e                   	push   cs
   56e40:	e8 ee 39             	call   0x5a831
   56e43:	59                   	pop    cx
   56e44:	83 3e ec d5 0b       	cmp    WORD PTR ds:0xd5ec,0xb
   56e49:	74 03                	je     0x56e4e
   56e4b:	e9 dd 00             	jmp    0x56f2b
   56e4e:	83 3e ea d5 1a       	cmp    WORD PTR ds:0xd5ea,0x1a
   56e53:	7c 0a                	jl     0x56e5f
   56e55:	83 3e ea d5 2b       	cmp    WORD PTR ds:0xd5ea,0x2b
   56e5a:	74 03                	je     0x56e5f
   56e5c:	e9 cc 00             	jmp    0x56f2b
   56e5f:	b8 88 01             	mov    ax,0x188
   56e62:	8e c0                	mov    es,ax
   56e64:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   56e6a:	74 09                	je     0x56e75
   56e6c:	83 7e dc 1c          	cmp    WORD PTR [bp-0x24],0x1c
   56e70:	74 03                	je     0x56e75
   56e72:	e9 b6 00             	jmp    0x56f2b
   56e75:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   56e7a:	75 03                	jne    0x56e7f
   56e7c:	e9 ac 00             	jmp    0x56f2b
   56e7f:	a1 ea d5             	mov    ax,ds:0xd5ea
   56e82:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   56e85:	83 3e ea d5 2b       	cmp    WORD PTR ds:0xd5ea,0x2b
   56e8a:	75 05                	jne    0x56e91
   56e8c:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   56e91:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   56e94:	6b db 0e             	imul   bx,bx,0xe
   56e97:	b8 88 01             	mov    ax,0x188
   56e9a:	8e c0                	mov    es,ax
   56e9c:	26 8b 87 81 0e       	mov    ax,WORD PTR es:[bx+0xe81]
   56ea1:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   56ea4:	b8 88 01             	mov    ax,0x188
   56ea7:	8e c0                	mov    es,ax
   56ea9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56eae:	6b db 5c             	imul   bx,bx,0x5c
   56eb1:	b8 88 01             	mov    ax,0x188
   56eb4:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   56eb7:	83 c2 22             	add    dx,0x22
   56eba:	8e c0                	mov    es,ax
   56ebc:	26 39 97 e4 99       	cmp    WORD PTR es:[bx-0x661c],dx
   56ec1:	75 03                	jne    0x56ec6
   56ec3:	e9 65 03             	jmp    0x5722b
   56ec6:	b8 88 01             	mov    ax,0x188
   56ec9:	8e c0                	mov    es,ax
   56ecb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56ed0:	6b db 5c             	imul   bx,bx,0x5c
   56ed3:	b8 88 01             	mov    ax,0x188
   56ed6:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   56ed9:	83 c2 22             	add    dx,0x22
   56edc:	8e c0                	mov    es,ax
   56ede:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   56ee3:	75 03                	jne    0x56ee8
   56ee5:	e9 43 03             	jmp    0x5722b
   56ee8:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   56eec:	75 1d                	jne    0x56f0b
   56eee:	b8 88 01             	mov    ax,0x188
   56ef1:	8e c0                	mov    es,ax
   56ef3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56ef8:	6b db 5c             	imul   bx,bx,0x5c
   56efb:	b8 88 01             	mov    ax,0x188
   56efe:	8e c0                	mov    es,ax
   56f00:	26 83 bf e4 99 00    	cmp    WORD PTR es:[bx-0x661c],0x0
   56f06:	74 03                	je     0x56f0b
   56f08:	e9 20 03             	jmp    0x5722b
   56f0b:	b8 88 01             	mov    ax,0x188
   56f0e:	8e c0                	mov    es,ax
   56f10:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56f15:	6b db 5c             	imul   bx,bx,0x5c
   56f18:	b8 88 01             	mov    ax,0x188
   56f1b:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   56f1e:	83 c2 22             	add    dx,0x22
   56f21:	8e c0                	mov    es,ax
   56f23:	26 89 97 e2 99       	mov    WORD PTR es:[bx-0x661e],dx
   56f28:	e9 dd 02             	jmp    0x57208
   56f2b:	83 3e ec d5 0c       	cmp    WORD PTR ds:0xd5ec,0xc
   56f30:	74 03                	je     0x56f35
   56f32:	e9 a4 01             	jmp    0x570d9
   56f35:	b8 88 01             	mov    ax,0x188
   56f38:	8e c0                	mov    es,ax
   56f3a:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   56f40:	74 09                	je     0x56f4b
   56f42:	83 7e dc 1c          	cmp    WORD PTR [bp-0x24],0x1c
   56f46:	74 03                	je     0x56f4b
   56f48:	e9 8e 01             	jmp    0x570d9
   56f4b:	83 3e ea d5 1b       	cmp    WORD PTR ds:0xd5ea,0x1b
   56f50:	7c 0a                	jl     0x56f5c
   56f52:	83 3e ea d5 22       	cmp    WORD PTR ds:0xd5ea,0x22
   56f57:	74 03                	je     0x56f5c
   56f59:	e9 7d 01             	jmp    0x570d9
   56f5c:	83 3e ea d5 00       	cmp    WORD PTR ds:0xd5ea,0x0
   56f61:	75 03                	jne    0x56f66
   56f63:	e9 73 01             	jmp    0x570d9
   56f66:	b8 88 01             	mov    ax,0x188
   56f69:	8e c0                	mov    es,ax
   56f6b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56f70:	6b db 5c             	imul   bx,bx,0x5c
   56f73:	b8 88 01             	mov    ax,0x188
   56f76:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   56f79:	83 c2 22             	add    dx,0x22
   56f7c:	8e c0                	mov    es,ax
   56f7e:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   56f83:	75 03                	jne    0x56f88
   56f85:	e9 a3 02             	jmp    0x5722b
   56f88:	b8 88 01             	mov    ax,0x188
   56f8b:	8e c0                	mov    es,ax
   56f8d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56f92:	6b db 5c             	imul   bx,bx,0x5c
   56f95:	b8 88 01             	mov    ax,0x188
   56f98:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   56f9b:	83 c2 22             	add    dx,0x22
   56f9e:	8e c0                	mov    es,ax
   56fa0:	26 39 97 e4 99       	cmp    WORD PTR es:[bx-0x661c],dx
   56fa5:	75 03                	jne    0x56faa
   56fa7:	e9 81 02             	jmp    0x5722b
   56faa:	b8 88 01             	mov    ax,0x188
   56fad:	8e c0                	mov    es,ax
   56faf:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56fb4:	6b db 5c             	imul   bx,bx,0x5c
   56fb7:	b8 88 01             	mov    ax,0x188
   56fba:	8e c0                	mov    es,ax
   56fbc:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   56fc1:	d1 e0                	shl    ax,1
   56fc3:	ba 88 01             	mov    dx,0x188
   56fc6:	8e c2                	mov    es,dx
   56fc8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56fcd:	6b db 5c             	imul   bx,bx,0x5c
   56fd0:	03 d8                	add    bx,ax
   56fd2:	b8 88 01             	mov    ax,0x188
   56fd5:	8e c0                	mov    es,ax
   56fd7:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   56fdc:	bb 64 00             	mov    bx,0x64
   56fdf:	99                   	cwd
   56fe0:	f7 fb                	idiv   bx
   56fe2:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   56fe5:	83 7e fe 2b          	cmp    WORD PTR [bp-0x2],0x2b
   56fe9:	75 05                	jne    0x56ff0
   56feb:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   56ff0:	b8 88 01             	mov    ax,0x188
   56ff3:	8e c0                	mov    es,ax
   56ff5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   56ffa:	6b db 5c             	imul   bx,bx,0x5c
   56ffd:	b8 88 01             	mov    ax,0x188
   57000:	8e c0                	mov    es,ax
   57002:	26 83 bf e2 99 00    	cmp    WORD PTR es:[bx-0x661e],0x0
   57008:	74 13                	je     0x5701d
   5700a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5700d:	6b db 0e             	imul   bx,bx,0xe
   57010:	b8 88 01             	mov    ax,0x188
   57013:	8e c0                	mov    es,ax
   57015:	26 8b 87 81 0e       	mov    ax,WORD PTR es:[bx+0xe81]
   5701a:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   5701d:	83 3e ea d5 1a       	cmp    WORD PTR ds:0xd5ea,0x1a
   57022:	7c 0a                	jl     0x5702e
   57024:	83 3e ea d5 22       	cmp    WORD PTR ds:0xd5ea,0x22
   57029:	74 03                	je     0x5702e
   5702b:	e9 7f 00             	jmp    0x570ad
   5702e:	a1 ea d5             	mov    ax,ds:0xd5ea
   57031:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   57034:	83 3e ea d5 22       	cmp    WORD PTR ds:0xd5ea,0x22
   57039:	75 05                	jne    0x57040
   5703b:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   57040:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   57043:	6b db 0e             	imul   bx,bx,0xe
   57046:	b8 88 01             	mov    ax,0x188
   57049:	8e c0                	mov    es,ax
   5704b:	26 8b 87 81 0e       	mov    ax,WORD PTR es:[bx+0xe81]
   57050:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   57053:	b8 88 01             	mov    ax,0x188
   57056:	8e c0                	mov    es,ax
   57058:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5705d:	6b db 5c             	imul   bx,bx,0x5c
   57060:	b8 88 01             	mov    ax,0x188
   57063:	8e c0                	mov    es,ax
   57065:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   5706a:	d1 e0                	shl    ax,1
   5706c:	ba 88 01             	mov    dx,0x188
   5706f:	8e c2                	mov    es,dx
   57071:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   57076:	6b db 5c             	imul   bx,bx,0x5c
   57079:	03 d8                	add    bx,ax
   5707b:	b8 88 01             	mov    ax,0x188
   5707e:	8e c0                	mov    es,ax
   57080:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   57085:	bb 64 00             	mov    bx,0x64
   57088:	99                   	cwd
   57089:	f7 fb                	idiv   bx
   5708b:	83 fa 1a             	cmp    dx,0x1a
   5708e:	7c 03                	jl     0x57093
   57090:	e9 98 01             	jmp    0x5722b
   57093:	83 7e f4 01          	cmp    WORD PTR [bp-0xc],0x1
   57097:	74 03                	je     0x5709c
   57099:	e9 8f 01             	jmp    0x5722b
   5709c:	83 7e f6 01          	cmp    WORD PTR [bp-0xa],0x1
   570a0:	74 03                	je     0x570a5
   570a2:	e9 86 01             	jmp    0x5722b
   570a5:	eb 0f                	jmp    0x570b6
   570a7:	e9 81 01             	jmp    0x5722b
   570aa:	e9 69 01             	jmp    0x57216
   570ad:	83 7e f6 02          	cmp    WORD PTR [bp-0xa],0x2
   570b1:	75 03                	jne    0x570b6
   570b3:	e9 60 01             	jmp    0x57216
   570b6:	b8 88 01             	mov    ax,0x188
   570b9:	8e c0                	mov    es,ax
   570bb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   570c0:	6b db 5c             	imul   bx,bx,0x5c
   570c3:	b8 88 01             	mov    ax,0x188
   570c6:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   570c9:	83 c2 22             	add    dx,0x22
   570cc:	8e c0                	mov    es,ax
   570ce:	26 89 97 e4 99       	mov    WORD PTR es:[bx-0x661c],dx
   570d3:	e9 32 01             	jmp    0x57208
   570d6:	e9 3d 01             	jmp    0x57216
   570d9:	83 3e ec d5 0d       	cmp    WORD PTR ds:0xd5ec,0xd
   570de:	75 41                	jne    0x57121
   570e0:	b8 88 01             	mov    ax,0x188
   570e3:	8e c0                	mov    es,ax
   570e5:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   570eb:	74 06                	je     0x570f3
   570ed:	83 7e dc 1c          	cmp    WORD PTR [bp-0x24],0x1c
   570f1:	75 2e                	jne    0x57121
   570f3:	83 3e ea d5 1a       	cmp    WORD PTR ds:0xd5ea,0x1a
   570f8:	7e 27                	jle    0x57121
   570fa:	83 3e ea d5 21       	cmp    WORD PTR ds:0xd5ea,0x21
   570ff:	7d 20                	jge    0x57121
   57101:	b8 88 01             	mov    ax,0x188
   57104:	8e c0                	mov    es,ax
   57106:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5710b:	6b db 5c             	imul   bx,bx,0x5c
   5710e:	b8 88 01             	mov    ax,0x188
   57111:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   57114:	83 c2 22             	add    dx,0x22
   57117:	8e c0                	mov    es,ax
   57119:	26 89 97 e6 99       	mov    WORD PTR es:[bx-0x661a],dx
   5711e:	e9 e7 00             	jmp    0x57208
   57121:	83 3e ec d5 0e       	cmp    WORD PTR ds:0xd5ec,0xe
   57126:	74 03                	je     0x5712b
   57128:	e9 eb 00             	jmp    0x57216
   5712b:	b8 88 01             	mov    ax,0x188
   5712e:	8e c0                	mov    es,ax
   57130:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   57136:	74 09                	je     0x57141
   57138:	83 7e dc 1c          	cmp    WORD PTR [bp-0x24],0x1c
   5713c:	74 03                	je     0x57141
   5713e:	e9 d5 00             	jmp    0x57216
   57141:	b8 88 01             	mov    ax,0x188
   57144:	8e c0                	mov    es,ax
   57146:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5714b:	6b db 5c             	imul   bx,bx,0x5c
   5714e:	b8 88 01             	mov    ax,0x188
   57151:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   57154:	83 c2 22             	add    dx,0x22
   57157:	8e c0                	mov    es,ax
   57159:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   5715e:	75 03                	jne    0x57163
   57160:	e9 b3 00             	jmp    0x57216
   57163:	b8 88 01             	mov    ax,0x188
   57166:	8e c0                	mov    es,ax
   57168:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5716d:	6b db 5c             	imul   bx,bx,0x5c
   57170:	b8 88 01             	mov    ax,0x188
   57173:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   57176:	83 c2 22             	add    dx,0x22
   57179:	8e c0                	mov    es,ax
   5717b:	26 39 97 e4 99       	cmp    WORD PTR es:[bx-0x661c],dx
   57180:	75 03                	jne    0x57185
   57182:	e9 91 00             	jmp    0x57216
   57185:	b8 88 01             	mov    ax,0x188
   57188:	8e c0                	mov    es,ax
   5718a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   5718f:	6b db 5c             	imul   bx,bx,0x5c
   57192:	b8 88 01             	mov    ax,0x188
   57195:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   57198:	83 c2 22             	add    dx,0x22
   5719b:	8e c0                	mov    es,ax
   5719d:	26 39 97 e6 99       	cmp    WORD PTR es:[bx-0x661a],dx
   571a2:	74 72                	je     0x57216
   571a4:	b8 88 01             	mov    ax,0x188
   571a7:	8e c0                	mov    es,ax
   571a9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   571ae:	6b db 5c             	imul   bx,bx,0x5c
   571b1:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   571b4:	d1 e0                	shl    ax,1
   571b6:	03 d8                	add    bx,ax
   571b8:	b8 88 01             	mov    ax,0x188
   571bb:	8e c0                	mov    es,ax
   571bd:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   571c4:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   571c7:	c1 e3 03             	shl    bx,0x3
   571ca:	b8 88 01             	mov    ax,0x188
   571cd:	33 d2                	xor    dx,dx
   571cf:	8e c0                	mov    es,ax
   571d1:	26 89 97 fb e5       	mov    WORD PTR es:[bx-0x1a05],dx
   571d6:	8b c2                	mov    ax,dx
   571d8:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   571db:	c1 e3 03             	shl    bx,0x3
   571de:	ba 88 01             	mov    dx,0x188
   571e1:	8e c2                	mov    es,dx
   571e3:	26 89 87 f9 e5       	mov    WORD PTR es:[bx-0x1a07],ax
   571e8:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   571eb:	c1 e3 03             	shl    bx,0x3
   571ee:	ba 88 01             	mov    dx,0x188
   571f1:	8e c2                	mov    es,dx
   571f3:	26 89 87 f7 e5       	mov    WORD PTR es:[bx-0x1a09],ax
   571f8:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   571fb:	c1 e3 03             	shl    bx,0x3
   571fe:	ba 88 01             	mov    dx,0x188
   57201:	8e c2                	mov    es,dx
   57203:	26 89 87 f5 e5       	mov    WORD PTR es:[bx-0x1a0b],ax
   57208:	0e                   	push   cs
   57209:	e8 b8 9f             	call   0x511c4
   5720c:	6a 2d                	push   0x2d
   5720e:	9a 6b 02 30 00       	call   0x30:0x26b
   57213:	59                   	pop    cx
   57214:	eb 15                	jmp    0x5722b
   57216:	c7 46 dc 00 00       	mov    WORD PTR [bp-0x24],0x0
   5721b:	b8 88 01             	mov    ax,0x188
   5721e:	8e c0                	mov    es,ax
   57220:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   57226:	74 03                	je     0x5722b
   57228:	e9 e0 f6             	jmp    0x5690b
   5722b:	0e                   	push   cs
   5722c:	e8 95 9f             	call   0x511c4
   5722f:	83 7e f0 00          	cmp    WORD PTR [bp-0x10],0x0
   57233:	74 13                	je     0x57248
   57235:	8a 46 f0             	mov    al,BYTE PTR [bp-0x10]
   57238:	04 ff                	add    al,0xff
   5723a:	ba 88 01             	mov    dx,0x188
   5723d:	8e c2                	mov    es,dx
   5723f:	26 a2 24 73          	mov    es:0x7324,al
   57243:	c7 46 f0 00 00       	mov    WORD PTR [bp-0x10],0x0
   57248:	6a 2d                	push   0x2d
   5724a:	9a 6b 02 30 00       	call   0x30:0x26b
   5724f:	59                   	pop    cx
   57250:	9a 14 07 30 00       	call   0x30:0x714
   57255:	83 3e ae d5 00       	cmp    WORD PTR ds:0xd5ae,0x0
   5725a:	75 0c                	jne    0x57268
   5725c:	0e                   	push   cs
   5725d:	e8 11 51             	call   0x5c371
   57260:	6a 0a                	push   0xa
   57262:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   57267:	59                   	pop    cx
   57268:	c7 06 ae d5 00 00    	mov    WORD PTR ds:0xd5ae,0x0
   5726e:	eb 03                	jmp    0x57273
   57270:	e9 0f e9             	jmp    0x55b82
   57273:	0e                   	push   cs
   57274:	e8 fa 50             	call   0x5c371
   57277:	e9 08 e9             	jmp    0x55b82
   5727a:	83 7e f2 00          	cmp    WORD PTR [bp-0xe],0x0
   5727e:	74 3e                	je     0x572be
   57280:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   57283:	6b db 06             	imul   bx,bx,0x6
   57286:	b8 88 01             	mov    ax,0x188
   57289:	8e c0                	mov    es,ax
   5728b:	26 83 bf da 5b 04    	cmp    WORD PTR es:[bx+0x5bda],0x4
   57291:	75 2b                	jne    0x572be
   57293:	6a 14                	push   0x14
   57295:	9a 2a 00 30 01       	call   0x130:0x2a
   5729a:	59                   	pop    cx
   5729b:	0a c0                	or     al,al
   5729d:	74 1f                	je     0x572be
   5729f:	8b 5e f2             	mov    bx,WORD PTR [bp-0xe]
   572a2:	6b db 28             	imul   bx,bx,0x28
   572a5:	b8 88 01             	mov    ax,0x188
   572a8:	8e c0                	mov    es,ax
   572aa:	26 83 bf 8a a0 00    	cmp    WORD PTR es:[bx-0x5f76],0x0
   572b0:	7d 0c                	jge    0x572be
   572b2:	b8 88 01             	mov    ax,0x188
   572b5:	8e c0                	mov    es,ax
   572b7:	26 c7 06 9e bb 01 00 	mov    WORD PTR es:0xbb9e,0x1
   572be:	0e                   	push   cs
   572bf:	e8 8e 29             	call   0x59c50
   572c2:	b8 88 01             	mov    ax,0x188
   572c5:	8a 56 e2             	mov    dl,BYTE PTR [bp-0x1e]
   572c8:	8e c0                	mov    es,ax
   572ca:	26 88 16 24 73       	mov    BYTE PTR es:0x7324,dl
   572cf:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   572d4:	eb 6f                	jmp    0x57345
   572d6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   572d9:	6b db 28             	imul   bx,bx,0x28
   572dc:	b8 88 01             	mov    ax,0x188
   572df:	8e c0                	mov    es,ax
   572e1:	26 c7 87 92 a0 00 00 	mov    WORD PTR es:[bx-0x5f6e],0x0
   572e8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   572eb:	6b db 28             	imul   bx,bx,0x28
   572ee:	b8 88 01             	mov    ax,0x188
   572f1:	8e c0                	mov    es,ax
   572f3:	26 c7 87 94 a0 00 00 	mov    WORD PTR es:[bx-0x5f6c],0x0
   572fa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   572fd:	6b db 28             	imul   bx,bx,0x28
   57300:	b8 88 01             	mov    ax,0x188
   57303:	8e c0                	mov    es,ax
   57305:	26 c7 87 96 a0 00 00 	mov    WORD PTR es:[bx-0x5f6a],0x0
   5730c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   5730f:	6b db 28             	imul   bx,bx,0x28
   57312:	b8 88 01             	mov    ax,0x188
   57315:	8e c0                	mov    es,ax
   57317:	26 c7 87 98 a0 00 00 	mov    WORD PTR es:[bx-0x5f68],0x0
   5731e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   57321:	6b db 28             	imul   bx,bx,0x28
   57324:	b8 88 01             	mov    ax,0x188
   57327:	8e c0                	mov    es,ax
   57329:	26 c7 87 9a a0 00 00 	mov    WORD PTR es:[bx-0x5f66],0x0
   57330:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   57333:	6b db 28             	imul   bx,bx,0x28
   57336:	b8 88 01             	mov    ax,0x188
   57339:	8e c0                	mov    es,ax
   5733b:	26 c7 87 ac a0 00 00 	mov    WORD PTR es:[bx-0x5f54],0x0
   57342:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   57345:	83 7e fe 1c          	cmp    WORD PTR [bp-0x2],0x1c
   57349:	7e 8b                	jle    0x572d6
   5734b:	0e                   	push   cs
   5734c:	e8 12 aa             	call   0x51d61
   5734f:	b8 88 01             	mov    ax,0x188
   57352:	8e c0                	mov    es,ax
   57354:	26 a1 1a 73          	mov    ax,es:0x731a
   57358:	f7 d8                	neg    ax
   5735a:	50                   	push   ax
   5735b:	b8 88 01             	mov    ax,0x188
   5735e:	8e c0                	mov    es,ax
   57360:	26 a1 18 73          	mov    ax,es:0x7318
   57364:	f7 d8                	neg    ax
   57366:	50                   	push   ax
   57367:	68 e8 03             	push   0x3e8
   5736a:	9a 3f 07 30 00       	call   0x30:0x73f
   5736f:	83 c4 06             	add    sp,0x6
   57372:	b8 88 01             	mov    ax,0x188
   57375:	8e c0                	mov    es,ax
   57377:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   5737d:	74 77                	je     0x573f6
   5737f:	b8 88 01             	mov    ax,0x188
   57382:	8e c0                	mov    es,ax
   57384:	26 80 3e 37 bb 00    	cmp    BYTE PTR es:0xbb37,0x0
   5738a:	74 6a                	je     0x573f6
   5738c:	b8 88 01             	mov    ax,0x188
   5738f:	8e c0                	mov    es,ax
   57391:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   57397:	74 50                	je     0x573e9
   57399:	9a 96 12 68 00       	call   0x68:0x1296
   5739e:	b8 88 01             	mov    ax,0x188
   573a1:	8e c0                	mov    es,ax
   573a3:	26 a1 75 bb          	mov    ax,es:0xbb75
   573a7:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   573ac:	74 3b                	je     0x573e9
   573ae:	b8 88 01             	mov    ax,0x188
   573b1:	8e c0                	mov    es,ax
   573b3:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   573b8:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   573bd:	9a 03 00 80 00       	call   0x80:0x3
   573c2:	b8 88 01             	mov    ax,0x188
   573c5:	8e c0                	mov    es,ax
   573c7:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   573cc:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   573d1:	9a da 00 58 00       	call   0x58:0xda
   573d6:	b8 88 01             	mov    ax,0x188
   573d9:	8e c0                	mov    es,ax
   573db:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   573e2:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   573e9:	b8 88 01             	mov    ax,0x188
   573ec:	8b 56 e0             	mov    dx,WORD PTR [bp-0x20]
   573ef:	8e c0                	mov    es,ax
   573f1:	26 89 16 4d bb       	mov    WORD PTR es:0xbb4d,dx
   573f6:	68 88 01             	push   0x188
   573f9:	68 2c 96             	push   0x962c
   573fc:	8d 46 94             	lea    ax,[bp-0x6c]
   573ff:	16                   	push   ss
   57400:	50                   	push   ax
   57401:	b9 48 00             	mov    cx,0x48
   57404:	9a 7a 12 00 00       	call   0x0:0x127a
   57409:	5e                   	pop    si
   5740a:	c9                   	leave
   5740b:	cb                   	retf
   5740c:	2d c1 35             	sub    ax,0x35c1
   5740f:	c1 3d c1             	sar    WORD PTR [di],0xc1
   57412:	45                   	inc    bp
   57413:	c1 4d c1 55          	ror    WORD PTR [di-0x3f],0x55
   57417:	c1 5d c1 65          	rcr    WORD PTR [di-0x3f],0x65
   5741b:	c1                   	.byte 0xc1
