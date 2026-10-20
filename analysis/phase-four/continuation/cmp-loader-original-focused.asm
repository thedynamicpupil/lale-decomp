
analysis/phase-four/continuation/original-overlay-16b5.bin:     file format binary


Disassembly of section .data:

00059e3a <.data+0x52a>:
   59e3a:	c8 12 00 00          	enter  0x12,0x0
   59e3e:	c6 46 f1 01          	mov    BYTE PTR [bp-0xf],0x1
   59e42:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   59e47:	6a 32                	push   0x32
   59e49:	6a 00                	push   0x0
   59e4b:	1e                   	push   ds
   59e4c:	68 b8 e7             	push   0xe7b8
   59e4f:	9a ec 52 00 00       	call   0x0:0x52ec
   59e54:	83 c4 08             	add    sp,0x8
   59e57:	ff 76 0a             	push   WORD PTR [bp+0xa]
   59e5a:	ff 76 08             	push   WORD PTR [bp+0x8]
   59e5d:	9a cc 49 00 00       	call   0x0:0x49cc
   59e62:	83 c4 04             	add    sp,0x4
   59e65:	3d 31 00             	cmp    ax,0x31
   59e68:	76 05                	jbe    0x59e6f
   59e6a:	b8 31 00             	mov    ax,0x31
   59e6d:	eb 0e                	jmp    0x59e7d
   59e6f:	ff 76 0a             	push   WORD PTR [bp+0xa]
   59e72:	ff 76 08             	push   WORD PTR [bp+0x8]
   59e75:	9a cc 49 00 00       	call   0x0:0x49cc
   59e7a:	83 c4 04             	add    sp,0x4
   59e7d:	50                   	push   ax
   59e7e:	ff 76 0a             	push   WORD PTR [bp+0xa]
   59e81:	ff 76 08             	push   WORD PTR [bp+0x8]
   59e84:	9a cc 49 00 00       	call   0x0:0x49cc
   59e89:	83 c4 04             	add    sp,0x4
   59e8c:	2d 32 00             	sub    ax,0x32
   59e8f:	40                   	inc    ax
   59e90:	0b c0                	or     ax,ax
   59e92:	7d 04                	jge    0x59e98
   59e94:	33 c0                	xor    ax,ax
   59e96:	eb 12                	jmp    0x59eaa
   59e98:	ff 76 0a             	push   WORD PTR [bp+0xa]
   59e9b:	ff 76 08             	push   WORD PTR [bp+0x8]
   59e9e:	9a cc 49 00 00       	call   0x0:0x49cc
   59ea3:	83 c4 04             	add    sp,0x4
   59ea6:	2d 32 00             	sub    ax,0x32
   59ea9:	40                   	inc    ax
   59eaa:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   59ead:	03 d0                	add    dx,ax
   59eaf:	ff 76 0a             	push   WORD PTR [bp+0xa]
   59eb2:	52                   	push   dx
   59eb3:	1e                   	push   ds
   59eb4:	68 b8 e7             	push   0xe7b8
   59eb7:	9a c2 53 00 00       	call   0x0:0x53c2
   59ebc:	83 c4 0a             	add    sp,0xa
   59ebf:	1e                   	push   ds
   59ec0:	68 75 88             	push   0x8875
   59ec3:	68 96 00             	push   0x96
   59ec6:	68 88 01             	push   0x188
   59ec9:	68 26 de             	push   0xde26
   59ecc:	9a 81 0a 20 00       	call   0x20:0xa81
   59ed1:	83 c4 0a             	add    sp,0xa
   59ed4:	ff 76 0a             	push   WORD PTR [bp+0xa]
   59ed7:	ff 76 08             	push   WORD PTR [bp+0x8]
   59eda:	6a 02                	push   0x2
   59edc:	9a 25 00 70 01       	call   0x170:0x25
   59ee1:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   59ee4:	83 7e fe ff          	cmp    WORD PTR [bp-0x2],0xffff
   59ee8:	75 15                	jne    0x59eff
   59eea:	6a ff                	push   0xffff
   59eec:	1e                   	push   ds
   59eed:	68 9f 88             	push   0x889f
   59ef0:	68 9e 00             	push   0x9e
   59ef3:	1e                   	push   ds
   59ef4:	68 8a 88             	push   0x888a
   59ef7:	9a 2a 00 58 01       	call   0x158:0x2a
   59efc:	83 c4 0c             	add    sp,0xc
   59eff:	83 46 ee 02          	add    WORD PTR [bp-0x12],0x2
   59f03:	ff 76 fe             	push   WORD PTR [bp-0x2]
   59f06:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   59f09:	c1 e0 03             	shl    ax,0x3
   59f0c:	05 9b e2             	add    ax,0xe29b
   59f0f:	68 88 01             	push   0x188
   59f12:	50                   	push   ax
   59f13:	6a 00                	push   0x0
   59f15:	6a 02                	push   0x2
   59f17:	9a 2f 00 70 01       	call   0x170:0x2f
   59f1c:	83 fa ff             	cmp    dx,0xffff
   59f1f:	75 1a                	jne    0x59f3b
   59f21:	3d ff ff             	cmp    ax,0xffff
   59f24:	75 15                	jne    0x59f3b
   59f26:	6a 3f                	push   0x3f
   59f28:	6a 00                	push   0x0
   59f2a:	6a 00                	push   0x0
   59f2c:	68 a2 00             	push   0xa2
   59f2f:	1e                   	push   ds
   59f30:	68 b9 88             	push   0x88b9
   59f33:	9a 2a 00 58 01       	call   0x158:0x2a
   59f38:	83 c4 0c             	add    sp,0xc
   59f3b:	83 46 ee 02          	add    WORD PTR [bp-0x12],0x2
   59f3f:	ff 76 fe             	push   WORD PTR [bp-0x2]
   59f42:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
   59f45:	c1 e0 03             	shl    ax,0x3
   59f48:	05 9d e2             	add    ax,0xe29d
   59f4b:	68 88 01             	push   0x188
   59f4e:	50                   	push   ax
   59f4f:	6a 00                	push   0x0
   59f51:	6a 02                	push   0x2
   59f53:	9a 2f 00 70 01       	call   0x170:0x2f
   59f58:	83 fa ff             	cmp    dx,0xffff
   59f5b:	75 1a                	jne    0x59f77
   59f5d:	3d ff ff             	cmp    ax,0xffff
   59f60:	75 15                	jne    0x59f77
   59f62:	6a 3f                	push   0x3f
   59f64:	6a 00                	push   0x0
   59f66:	6a 00                	push   0x0
   59f68:	68 a4 00             	push   0xa4
   59f6b:	1e                   	push   ds
   59f6c:	68 ce 88             	push   0x88ce
   59f6f:	9a 2a 00 58 01       	call   0x158:0x2a
   59f74:	83 c4 0c             	add    sp,0xc
   59f77:	ff 76 fe             	push   WORD PTR [bp-0x2]
   59f7a:	90                   	nop
   59f7b:	0e                   	push   cs
   59f7c:	e8 04 02             	call   0x5a183
   59f7f:	59                   	pop    cx
   59f80:	2b 46 ee             	sub    ax,WORD PTR [bp-0x12]
   59f83:	83 da 00             	sbb    dx,0x0
   59f86:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   59f89:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   59f8c:	ff 76 fe             	push   WORD PTR [bp-0x2]
   59f8f:	9a 2a 00 70 01       	call   0x170:0x2a
   59f94:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   59f97:	c1 e3 03             	shl    bx,0x3
   59f9a:	b8 88 01             	mov    ax,0x188
   59f9d:	8e c0                	mov    es,ax
   59f9f:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
   59fa4:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
   59fa9:	75 65                	jne    0x5a010
   59fab:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   59fae:	50                   	push   ax
   59faf:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   59fb2:	b4 00                	mov    ah,0x0
   59fb4:	99                   	cwd
   59fb5:	52                   	push   dx
   59fb6:	50                   	push   ax
   59fb7:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   59fba:	c1 e3 03             	shl    bx,0x3
   59fbd:	b8 88 01             	mov    ax,0x188
   59fc0:	8e c0                	mov    es,ax
   59fc2:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
   59fc7:	99                   	cwd
   59fc8:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   59fcb:	c1 e3 03             	shl    bx,0x3
   59fce:	b9 88 01             	mov    cx,0x188
   59fd1:	8e c1                	mov    es,cx
   59fd3:	50                   	push   ax
   59fd4:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   59fd9:	52                   	push   dx
   59fda:	99                   	cwd
   59fdb:	59                   	pop    cx
   59fdc:	5b                   	pop    bx
   59fdd:	9a 42 12 00 00       	call   0x0:0x1242
   59fe2:	52                   	push   dx
   59fe3:	50                   	push   ax
   59fe4:	9a e6 12 00 00       	call   0x0:0x12e6
   59fe9:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   59fec:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   59fef:	52                   	push   dx
   59ff0:	50                   	push   ax
   59ff1:	9a 64 01 20 00       	call   0x20:0x164
   59ff6:	83 c4 06             	add    sp,0x6
   59ff9:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   59ffc:	c1 e3 03             	shl    bx,0x3
   59fff:	b9 88 01             	mov    cx,0x188
   5a002:	8e c1                	mov    es,cx
   5a004:	26 89 97 a1 e2       	mov    WORD PTR es:[bx-0x1d5f],dx
   5a009:	26 89 87 9f e2       	mov    WORD PTR es:[bx-0x1d61],ax
   5a00e:	eb 3a                	jmp    0x5a04a
   5a010:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   5a013:	c1 e3 03             	shl    bx,0x3
   5a016:	b8 88 01             	mov    ax,0x188
   5a019:	8e c0                	mov    es,ax
   5a01b:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   5a020:	26 8a 47 08          	mov    al,BYTE PTR es:[bx+0x8]
   5a024:	3a 46 06             	cmp    al,BYTE PTR [bp+0x6]
   5a027:	74 21                	je     0x5a04a
   5a029:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   5a02c:	50                   	push   ax
   5a02d:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   5a030:	c1 e3 03             	shl    bx,0x3
   5a033:	b8 88 01             	mov    ax,0x188
   5a036:	8e c0                	mov    es,ax
   5a038:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   5a03d:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   5a042:	9a f4 05 20 00       	call   0x20:0x5f4
   5a047:	83 c4 06             	add    sp,0x6
   5a04a:	ff 76 fc             	push   WORD PTR [bp-0x4]
   5a04d:	ff 76 fa             	push   WORD PTR [bp-0x6]
   5a050:	9a 1d 0a 20 00       	call   0x20:0xa1d
   5a055:	83 c4 04             	add    sp,0x4
   5a058:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   5a05b:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   5a05e:	33 c9                	xor    cx,cx
   5a060:	33 db                	xor    bx,bx
   5a062:	8b 56 f4             	mov    dx,WORD PTR [bp-0xc]
   5a065:	8b 46 f2             	mov    ax,WORD PTR [bp-0xe]
   5a068:	9a 59 12 00 00       	call   0x0:0x1259
   5a06d:	75 15                	jne    0x5a084
   5a06f:	6a 40                	push   0x40
   5a071:	6a 00                	push   0x0
   5a073:	6a 00                	push   0x0
   5a075:	68 af 00             	push   0xaf
   5a078:	1e                   	push   ds
   5a079:	68 e3 88             	push   0x88e3
   5a07c:	9a 2a 00 58 01       	call   0x158:0x2a
   5a081:	83 c4 0c             	add    sp,0xc
   5a084:	ff 76 0a             	push   WORD PTR [bp+0xa]
   5a087:	ff 76 08             	push   WORD PTR [bp+0x8]
   5a08a:	6a 02                	push   0x2
   5a08c:	9a 25 00 70 01       	call   0x170:0x25
   5a091:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5a094:	3d ff ff             	cmp    ax,0xffff
   5a097:	75 03                	jne    0x5a09c
   5a099:	e9 4e fe             	jmp    0x59eea
   5a09c:	ff 76 fe             	push   WORD PTR [bp-0x2]
   5a09f:	6a 00                	push   0x0
   5a0a1:	6a 04                	push   0x4
   5a0a3:	6a 00                	push   0x0
   5a0a5:	9a 39 00 70 01       	call   0x170:0x39
   5a0aa:	ff 76 fe             	push   WORD PTR [bp-0x2]
   5a0ad:	ff 76 f4             	push   WORD PTR [bp-0xc]
   5a0b0:	ff 76 f2             	push   WORD PTR [bp-0xe]
   5a0b3:	ff 76 fc             	push   WORD PTR [bp-0x4]
   5a0b6:	ff 76 fa             	push   WORD PTR [bp-0x6]
   5a0b9:	9a 2f 00 70 01       	call   0x170:0x2f
   5a0be:	ff 76 fe             	push   WORD PTR [bp-0x2]
   5a0c1:	9a 2a 00 70 01       	call   0x170:0x2a
   5a0c6:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   5a0ca:	7c 38                	jl     0x5a104
   5a0cc:	7f 06                	jg     0x5a0d4
   5a0ce:	83 7e f6 ff          	cmp    WORD PTR [bp-0xa],0xffff
   5a0d2:	76 30                	jbe    0x5a104
   5a0d4:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   5a0d7:	50                   	push   ax
   5a0d8:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   5a0db:	c1 e3 03             	shl    bx,0x3
   5a0de:	b8 88 01             	mov    ax,0x188
   5a0e1:	8e c0                	mov    es,ax
   5a0e3:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   5a0e8:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   5a0ec:	26 ff 37             	push   WORD PTR es:[bx]
   5a0ef:	ff 76 fc             	push   WORD PTR [bp-0x4]
   5a0f2:	ff 76 fa             	push   WORD PTR [bp-0x6]
   5a0f5:	ff 76 f4             	push   WORD PTR [bp-0xc]
   5a0f8:	ff 76 f2             	push   WORD PTR [bp-0xe]
   5a0fb:	0e                   	push   cs
   5a0fc:	e8 11 f8             	call   0x59910
   5a0ff:	83 c4 0e             	add    sp,0xe
   5a102:	eb 61                	jmp    0x5a165
   5a104:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   5a108:	75 19                	jne    0x5a123
   5a10a:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   5a10d:	c1 e3 03             	shl    bx,0x3
   5a110:	b8 88 01             	mov    ax,0x188
   5a113:	8e c0                	mov    es,ax
   5a115:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   5a11a:	26 ff 77 02          	push   WORD PTR es:[bx+0x2]
   5a11e:	26 ff 37             	push   WORD PTR es:[bx]
   5a121:	eb 32                	jmp    0x5a155
   5a123:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   5a126:	c1 e3 03             	shl    bx,0x3
   5a129:	b8 88 01             	mov    ax,0x188
   5a12c:	8e c0                	mov    es,ax
   5a12e:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   5a133:	26 ff 37             	push   WORD PTR es:[bx]
   5a136:	6a 00                	push   0x0
   5a138:	6a 00                	push   0x0
   5a13a:	8b 5e 0c             	mov    bx,WORD PTR [bp+0xc]
   5a13d:	c1 e3 03             	shl    bx,0x3
   5a140:	b8 88 01             	mov    ax,0x188
   5a143:	8e c0                	mov    es,ax
   5a145:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   5a14a:	26 ff 77 04          	push   WORD PTR es:[bx+0x4]
   5a14e:	9a 88 06 98 00       	call   0x98:0x688
   5a153:	52                   	push   dx
   5a154:	50                   	push   ax
   5a155:	ff 76 fa             	push   WORD PTR [bp-0x6]
   5a158:	ff 76 f4             	push   WORD PTR [bp-0xc]
   5a15b:	ff 76 f2             	push   WORD PTR [bp-0xe]
   5a15e:	0e                   	push   cs
   5a15f:	e8 e9 fb             	call   0x59d4b
   5a162:	83 c4 0a             	add    sp,0xa
   5a165:	ff 76 f4             	push   WORD PTR [bp-0xc]
   5a168:	ff 76 f2             	push   WORD PTR [bp-0xe]
   5a16b:	9a c2 24 00 00       	call   0x0:0x24c2
   5a170:	83 c4 04             	add    sp,0x4
   5a173:	68 88 01             	push   0x188
   5a176:	68 26 de             	push   0xde26
   5a179:	9a 22 0b 20 00       	call   0x20:0xb22
   5a17e:	83 c4 04             	add    sp,0x4
   5a181:	c9                   	leave
   5a182:	cb                   	retf
