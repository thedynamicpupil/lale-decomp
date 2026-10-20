
analysis/phase-five/door-20261016/scaler/ems-map-original.bin:     file format binary


Disassembly of section .data:

00011d34 <.data>:
   11d34:	c8 0e 00 00          	enter  0xe,0x0
   11d38:	56                   	push   si
   11d39:	1e                   	push   ds
   11d3a:	b8 e0 16             	mov    ax,0x16e0
   11d3d:	8e d8                	mov    ds,ax
   11d3f:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   11d44:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   11d49:	83 3e 00 87 01       	cmp    WORD PTR ds:0x8700,0x1
   11d4e:	74 07                	je     0x11d57
   11d50:	33 d2                	xor    dx,dx
   11d52:	33 c0                	xor    ax,ax
   11d54:	e9 46 01             	jmp    0x11e9d
   11d57:	ff 76 0e             	push   WORD PTR [bp+0xe]
   11d5a:	0e                   	push   cs
   11d5b:	e8 e3 f7             	call   0x11541
   11d5e:	59                   	pop    cx
   11d5f:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   11d62:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   11d65:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   11d68:	0b 46 fe             	or     ax,WORD PTR [bp-0x2]
   11d6b:	75 02                	jne    0x11d6f
   11d6d:	eb e1                	jmp    0x11d50
   11d6f:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11d72:	26 8b 47 08          	mov    ax,WORD PTR es:[bx+0x8]
   11d76:	26 8b 57 06          	mov    dx,WORD PTR es:[bx+0x6]
   11d7a:	3b 46 0c             	cmp    ax,WORD PTR [bp+0xc]
   11d7d:	7f 09                	jg     0x11d88
   11d7f:	7c 05                	jl     0x11d86
   11d81:	3b 56 0a             	cmp    dx,WORD PTR [bp+0xa]
   11d84:	73 02                	jae    0x11d88
   11d86:	eb c8                	jmp    0x11d50
   11d88:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   11d8b:	33 d2                	xor    dx,dx
   11d8d:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   11d90:	13 56 0c             	adc    dx,WORD PTR [bp+0xc]
   11d93:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11d96:	26 3b 57 08          	cmp    dx,WORD PTR es:[bx+0x8]
   11d9a:	7c 15                	jl     0x11db1
   11d9c:	7f 06                	jg     0x11da4
   11d9e:	26 3b 47 06          	cmp    ax,WORD PTR es:[bx+0x6]
   11da2:	76 0d                	jbe    0x11db1
   11da4:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11da7:	26 8b 47 06          	mov    ax,WORD PTR es:[bx+0x6]
   11dab:	2b 46 0a             	sub    ax,WORD PTR [bp+0xa]
   11dae:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   11db1:	6a 00                	push   0x0
   11db3:	68 00 40             	push   0x4000
   11db6:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11db9:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   11dbd:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   11dc1:	03 56 0a             	add    dx,WORD PTR [bp+0xa]
   11dc4:	13 46 0c             	adc    ax,WORD PTR [bp+0xc]
   11dc7:	50                   	push   ax
   11dc8:	52                   	push   dx
   11dc9:	9a df 12 00 00       	call   0x0:0x12df
   11dce:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   11dd1:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11dd4:	26 8b 47 02          	mov    ax,WORD PTR es:[bx+0x2]
   11dd8:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   11ddb:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   11dde:	c1 e2 0e             	shl    dx,0xe
   11de1:	2b c2                	sub    ax,dx
   11de3:	8b 16 a6 e7          	mov    dx,WORD PTR ds:0xe7a6
   11de7:	8b 1e a4 e7          	mov    bx,WORD PTR ds:0xe7a4
   11deb:	03 d8                	add    bx,ax
   11ded:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   11df0:	c1 e0 0e             	shl    ax,0xe
   11df3:	03 d8                	add    bx,ax
   11df5:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   11df8:	89 5e f2             	mov    WORD PTR [bp-0xe],bx
   11dfb:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11dfe:	99                   	cwd
   11dff:	b1 0e                	mov    cl,0xe
   11e01:	9a 8d 13 00 00       	call   0x0:0x138d
   11e06:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11e09:	33 c9                	xor    cx,cx
   11e0b:	be 00 40             	mov    si,0x4000
   11e0e:	26 2b 77 02          	sub    si,WORD PTR es:[bx+0x2]
   11e12:	26 1b 4f 04          	sbb    cx,WORD PTR es:[bx+0x4]
   11e16:	2b 76 0a             	sub    si,WORD PTR [bp+0xa]
   11e19:	1b 4e 0c             	sbb    cx,WORD PTR [bp+0xc]
   11e1c:	03 f0                	add    si,ax
   11e1e:	13 ca                	adc    cx,dx
   11e20:	89 4e fa             	mov    WORD PTR [bp-0x6],cx
   11e23:	89 76 f8             	mov    WORD PTR [bp-0x8],si
   11e26:	ff 76 f6             	push   WORD PTR [bp-0xa]
   11e29:	ff 76 06             	push   WORD PTR [bp+0x6]
   11e2c:	9a 7a 00 34 11       	call   0x1134:0x7a
   11e31:	0b c0                	or     ax,ax
   11e33:	74 03                	je     0x11e38
   11e35:	e9 18 ff             	jmp    0x11d50
   11e38:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   11e3b:	d1 e3                	shl    bx,1
   11e3d:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11e40:	89 87 f8 86          	mov    WORD PTR [bx-0x7908],ax
   11e44:	eb 40                	jmp    0x11e86
   11e46:	ff 46 f6             	inc    WORD PTR [bp-0xa]
   11e49:	ff 46 06             	inc    WORD PTR [bp+0x6]
   11e4c:	83 7e 06 03          	cmp    WORD PTR [bp+0x6],0x3
   11e50:	7e 02                	jle    0x11e54
   11e52:	eb 43                	jmp    0x11e97
   11e54:	ff 76 f6             	push   WORD PTR [bp-0xa]
   11e57:	ff 76 06             	push   WORD PTR [bp+0x6]
   11e5a:	9a 7a 00 34 11       	call   0x1134:0x7a
   11e5f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   11e62:	d1 e3                	shl    bx,1
   11e64:	89 87 f8 86          	mov    WORD PTR [bx-0x7908],ax
   11e68:	0b c0                	or     ax,ax
   11e6a:	75 17                	jne    0x11e83
   11e6c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   11e6f:	d1 e3                	shl    bx,1
   11e71:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   11e74:	89 87 f8 86          	mov    WORD PTR [bx-0x7908],ax
   11e78:	81 46 f8 00 40       	add    WORD PTR [bp-0x8],0x4000
   11e7d:	83 56 fa 00          	adc    WORD PTR [bp-0x6],0x0
   11e81:	eb 03                	jmp    0x11e86
   11e83:	e9 ca fe             	jmp    0x11d50
   11e86:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   11e89:	33 d2                	xor    dx,dx
   11e8b:	3b 56 fa             	cmp    dx,WORD PTR [bp-0x6]
   11e8e:	7f b6                	jg     0x11e46
   11e90:	75 05                	jne    0x11e97
   11e92:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   11e95:	77 af                	ja     0x11e46
   11e97:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   11e9a:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   11e9d:	1f                   	pop    ds
   11e9e:	5e                   	pop    si
   11e9f:	c9                   	leave
   11ea0:	ca 0a 00             	retf   0xa
   11ea3:	c8 16 00 00          	enter  0x16,0x0
   11ea7:	1e                   	push   ds
   11ea8:	b8 e0 16             	mov    ax,0x16e0
   11eab:	8e d8                	mov    ds,ax
   11ead:	83 3e 00 87 01       	cmp    WORD PTR ds:0x8700,0x1
   11eb2:	74 06                	je     0x11eba
   11eb4:	b8 ff ff             	mov    ax,0xffff
   11eb7:	e9 8e 00             	jmp    0x11f48
   11eba:	ff 76 12             	push   WORD PTR [bp+0x12]
   11ebd:	0e                   	push   cs
   11ebe:	e8 80 f6             	call   0x11541
   11ec1:	59                   	pop    cx
   11ec2:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   11ec5:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   11ec8:	0b c2                	or     ax,dx
   11eca:	75 05                	jne    0x11ed1
   11ecc:	b8 fc ff             	mov    ax,0xfffc
   11ecf:	eb 77                	jmp    0x11f48
   11ed1:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   11ed4:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11ed7:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   11eda:	89 56 ea             	mov    WORD PTR [bp-0x16],dx
   11edd:	c6 46 ee 00          	mov    BYTE PTR [bp-0x12],0x0
   11ee1:	c7 46 ef 00 00       	mov    WORD PTR [bp-0x11],0x0
   11ee6:	8b 46 0e             	mov    ax,WORD PTR [bp+0xe]
   11ee9:	89 46 f1             	mov    WORD PTR [bp-0xf],ax
   11eec:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
   11eef:	89 46 f3             	mov    WORD PTR [bp-0xd],ax
   11ef2:	c6 46 f5 01          	mov    BYTE PTR [bp-0xb],0x1
   11ef6:	a1 aa e7             	mov    ax,ds:0xe7aa
   11ef9:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   11efc:	6a 00                	push   0x0
   11efe:	68 00 40             	push   0x4000
   11f01:	c4 5e fc             	les    bx,DWORD PTR [bp-0x4]
   11f04:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   11f08:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   11f0c:	03 56 0a             	add    dx,WORD PTR [bp+0xa]
   11f0f:	13                   	.byte 0x13
