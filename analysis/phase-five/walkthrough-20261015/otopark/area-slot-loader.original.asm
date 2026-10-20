
analysis/phase-five/walkthrough-20261015/otopark/area-slot-loader.original.bin:     file format binary


Disassembly of section .data:

00033bc5 <.data>:
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
