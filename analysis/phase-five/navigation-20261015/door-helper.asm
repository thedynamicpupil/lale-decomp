
analysis/phase-five/navigation-20261015/door-helper.bin:     file format binary


Disassembly of section .data:

0002fdbc <.data>:
   2fdbc:	55                   	push   bp
   2fdbd:	8b ec                	mov    bp,sp
   2fdbf:	83 ec 06             	sub    sp,0x6
   2fdc2:	6a 03                	push   0x3
   2fdc4:	90                   	nop
   2fdc5:	0e                   	push   cs
   2fdc6:	e8 3b 16             	call   0x21404
   2fdc9:	59                   	pop    cx
   2fdca:	68 fe 00             	push   0xfe
   2fdcd:	a1 01 3b             	mov    ax,ds:0x3b01
   2fdd0:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fdd4:	50                   	push   ax
   2fdd5:	6a 42                	push   0x42
   2fdd7:	9a dc 16 28 00       	call   0x28:0x16dc
   2fddc:	83 c4 06             	add    sp,0x6
   2fddf:	68 fe 00             	push   0xfe
   2fde2:	a1 01 3b             	mov    ax,ds:0x3b01
   2fde5:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fde9:	50                   	push   ax
   2fdea:	6a 41                	push   0x41
   2fdec:	9a dc 16 28 00       	call   0x28:0x16dc
   2fdf1:	83 c4 06             	add    sp,0x6
   2fdf4:	6a 42                	push   0x42
   2fdf6:	6a 40                	push   0x40
   2fdf8:	a0 f0 b9             	mov    al,ds:0xb9f0
   2fdfb:	b4 00                	mov    ah,0x0
   2fdfd:	bb 04 00             	mov    bx,0x4
   2fe00:	99                   	cwd
   2fe01:	f7 fb                	idiv   bx
   2fe03:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2fe06:	cd 3b                	int    0x3b
   2fe08:	46                   	inc    si
   2fe09:	fa                   	cli
   2fe0a:	83 ec 04             	sub    sp,0x4
   2fe0d:	cd 35                	int    0x35
   2fe0f:	5e                   	pop    si
   2fe10:	f2 cd 3d             	repnz int 0x3d
   2fe13:	90                   	nop
   2fe14:	0e                   	push   cs
   2fe15:	e8 90 16             	call   0x214a8
   2fe18:	83 c4 08             	add    sp,0x8
   2fe1b:	6a 42                	push   0x42
   2fe1d:	0e                   	push   cs
   2fe1e:	e8 ec c2             	call   0x2c10d
   2fe21:	59                   	pop    cx
   2fe22:	6a 42                	push   0x42
   2fe24:	0e                   	push   cs
   2fe25:	e8 d1 c9             	call   0x2c7f9
   2fe28:	59                   	pop    cx
   2fe29:	6a 42                	push   0x42
   2fe2b:	0e                   	push   cs
   2fe2c:	e8 56 d5             	call   0x2d385
   2fe2f:	59                   	pop    cx
   2fe30:	6a 42                	push   0x42
   2fe32:	0e                   	push   cs
   2fe33:	e8 da dc             	call   0x2db10
   2fe36:	59                   	pop    cx
   2fe37:	c6 06 07 3b 01       	mov    BYTE PTR ds:0x3b07,0x1
   2fe3c:	6a 41                	push   0x41
   2fe3e:	0e                   	push   cs
   2fe3f:	e8 d0 de             	call   0x2dd12
   2fe42:	59                   	pop    cx
   2fe43:	68 fe 00             	push   0xfe
   2fe46:	6a 41                	push   0x41
   2fe48:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe4b:	6b db 0e             	imul   bx,bx,0xe
   2fe4e:	b8 88 01             	mov    ax,0x188
   2fe51:	8e c0                	mov    es,ax
   2fe53:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   2fe58:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe5b:	6b db 0e             	imul   bx,bx,0xe
   2fe5e:	b8 88 01             	mov    ax,0x188
   2fe61:	8e c0                	mov    es,ax
   2fe63:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   2fe68:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe6b:	6b db 0e             	imul   bx,bx,0xe
   2fe6e:	b8 88 01             	mov    ax,0x188
   2fe71:	8e c0                	mov    es,ax
   2fe73:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   2fe78:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fe7b:	6b db 0e             	imul   bx,bx,0xe
   2fe7e:	b8 88 01             	mov    ax,0x188
   2fe81:	8e c0                	mov    es,ax
   2fe83:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   2fe88:	9a 08 09 28 00       	call   0x28:0x908
   2fe8d:	83 c4 0c             	add    sp,0xc
   2fe90:	68 20 00             	push   0x20
   2fe93:	68 4c 00             	push   0x4c
   2fe96:	68 fe 00             	push   0xfe
   2fe99:	a1 01 3b             	mov    ax,ds:0x3b01
   2fe9c:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   2fea0:	50                   	push   ax
   2fea1:	6a 42                	push   0x42
   2fea3:	6a 41                	push   0x41
   2fea5:	9a 15 06 28 00       	call   0x28:0x615
   2feaa:	83 c4 0c             	add    sp,0xc
   2fead:	b8 88 01             	mov    ax,0x188
   2feb0:	8e c0                	mov    es,ax
   2feb2:	26 83 3e 74 6d 00    	cmp    WORD PTR es:0x6d74,0x0
   2feb8:	75 03                	jne    0x2febd
   2feba:	e9 f3 01             	jmp    0x200b0
   2febd:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   2fec2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2fec5:	b4 00                	mov    ah,0x0
   2fec7:	bb 04 00             	mov    bx,0x4
   2feca:	99                   	cwd
   2fecb:	f7 fb                	idiv   bx
   2fecd:	83 fa 01             	cmp    dx,0x1
   2fed0:	74 25                	je     0x2fef7
   2fed2:	a0 f0 b9             	mov    al,ds:0xb9f0
   2fed5:	b4 00                	mov    ah,0x0
   2fed7:	bb 04 00             	mov    bx,0x4
   2feda:	99                   	cwd
   2fedb:	f7 fb                	idiv   bx
   2fedd:	0b d2                	or     dx,dx
   2fedf:	74 16                	je     0x2fef7
   2fee1:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fee4:	6b db 0e             	imul   bx,bx,0xe
   2fee7:	b8 88 01             	mov    ax,0x188
   2feea:	8e c0                	mov    es,ax
   2feec:	26 83 bf 24 b4 00    	cmp    WORD PTR es:[bx-0x4bdc],0x0
   2fef2:	74 03                	je     0x2fef7
   2fef4:	e9 cc 00             	jmp    0x2ffc3
   2fef7:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   2fefd:	75 03                	jne    0x2ff02
   2feff:	e9 8d 00             	jmp    0x2ff8f
   2ff02:	6a 00                	push   0x0
   2ff04:	6a 42                	push   0x42
   2ff06:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ff09:	04 20                	add    al,0x20
   2ff0b:	50                   	push   ax
   2ff0c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff0f:	6b db 0e             	imul   bx,bx,0xe
   2ff12:	b8 88 01             	mov    ax,0x188
   2ff15:	8e c0                	mov    es,ax
   2ff17:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   2ff1c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff1f:	6b db 0e             	imul   bx,bx,0xe
   2ff22:	b8 88 01             	mov    ax,0x188
   2ff25:	8e c0                	mov    es,ax
   2ff27:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   2ff2c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff2f:	6b db 0e             	imul   bx,bx,0xe
   2ff32:	b8 88 01             	mov    ax,0x188
   2ff35:	8e c0                	mov    es,ax
   2ff37:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   2ff3c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff3f:	6b db 0e             	imul   bx,bx,0xe
   2ff42:	b8 88 01             	mov    ax,0x188
   2ff45:	8e c0                	mov    es,ax
   2ff47:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   2ff4c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff4f:	6b db 0e             	imul   bx,bx,0xe
   2ff52:	b8 88 01             	mov    ax,0x188
   2ff55:	8e c0                	mov    es,ax
   2ff57:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   2ff5c:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff5f:	6b db 0e             	imul   bx,bx,0xe
   2ff62:	b8 88 01             	mov    ax,0x188
   2ff65:	8e c0                	mov    es,ax
   2ff67:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   2ff6c:	6a 00                	push   0x0
   2ff6e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ff71:	6b db 0e             	imul   bx,bx,0xe
   2ff74:	b8 88 01             	mov    ax,0x188
   2ff77:	53                   	push   bx
   2ff78:	50                   	push   ax
   2ff79:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2ff7c:	07                   	pop    es
   2ff7d:	5b                   	pop    bx
   2ff7e:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   2ff83:	50                   	push   ax
   2ff84:	9a 5a 0c 28 00       	call   0x28:0xc5a
   2ff89:	83 c4 16             	add    sp,0x16
   2ff8c:	e9 21 01             	jmp    0x200b0
   2ff8f:	68 e0 01             	push   0x1e0
   2ff92:	68 41 03             	push   0x341
   2ff95:	6a 42                	push   0x42
   2ff97:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ff9a:	04 20                	add    al,0x20
   2ff9c:	50                   	push   ax
   2ff9d:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffa0:	6b db 0e             	imul   bx,bx,0xe
   2ffa3:	b8 88 01             	mov    ax,0x188
   2ffa6:	8e c0                	mov    es,ax
   2ffa8:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   2ffad:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffb0:	6b db 0e             	imul   bx,bx,0xe
   2ffb3:	b8 88 01             	mov    ax,0x188
   2ffb6:	8e c0                	mov    es,ax
   2ffb8:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   2ffbd:	e9 b0 00             	jmp    0x20070
   2ffc0:	e9 ed 00             	jmp    0x200b0
   2ffc3:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   2ffc9:	74 62                	je     0x3002d
   2ffcb:	6a 01                	push   0x1
   2ffcd:	6a 42                	push   0x42
   2ffcf:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2ffd2:	04 20                	add    al,0x20
   2ffd4:	50                   	push   ax
   2ffd5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffd8:	6b db 0e             	imul   bx,bx,0xe
   2ffdb:	b8 88 01             	mov    ax,0x188
   2ffde:	8e c0                	mov    es,ax
   2ffe0:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   2ffe5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2ffe8:	6b db 0e             	imul   bx,bx,0xe
   2ffeb:	b8 88 01             	mov    ax,0x188
   2ffee:	8e c0                	mov    es,ax
   2fff0:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   2fff5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   2fff8:	6b db 0e             	imul   bx,bx,0xe
   2fffb:	b8 88 01             	mov    ax,0x188
   2fffe:	8e c0                	mov    es,ax
   30000:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30005:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30008:	6b db 0e             	imul   bx,bx,0xe
   3000b:	b8 88 01             	mov    ax,0x188
   3000e:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   30012:	8e c0                	mov    es,ax
   30014:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   30019:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3001c:	6b db 0e             	imul   bx,bx,0xe
   3001f:	b8 88 01             	mov    ax,0x188
   30022:	8e c0                	mov    es,ax
   30024:	26 2b 97 58 b4       	sub    dx,WORD PTR es:[bx-0x4ba8]
   30029:	52                   	push   dx
   3002a:	e9 1f ff             	jmp    0x3ff4c
   3002d:	68 e0 01             	push   0x1e0
   30030:	68 c4 03             	push   0x3c4
   30033:	6a 42                	push   0x42
   30035:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30038:	04 20                	add    al,0x20
   3003a:	50                   	push   ax
   3003b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3003e:	6b db 0e             	imul   bx,bx,0xe
   30041:	b8 88 01             	mov    ax,0x188
   30044:	8e c0                	mov    es,ax
   30046:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   3004b:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3004e:	6b db 0e             	imul   bx,bx,0xe
   30051:	b8 88 01             	mov    ax,0x188
   30054:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   30058:	8e c0                	mov    es,ax
   3005a:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   3005f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30062:	6b db 0e             	imul   bx,bx,0xe
   30065:	b8 88 01             	mov    ax,0x188
   30068:	8e c0                	mov    es,ax
   3006a:	26 2b 97 60 b4       	sub    dx,WORD PTR es:[bx-0x4ba0]
   3006f:	52                   	push   dx
   30070:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30073:	6b db 0e             	imul   bx,bx,0xe
   30076:	b8 88 01             	mov    ax,0x188
   30079:	8e c0                	mov    es,ax
   3007b:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   30080:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30083:	6b db 0e             	imul   bx,bx,0xe
   30086:	b8 88 01             	mov    ax,0x188
   30089:	8e c0                	mov    es,ax
   3008b:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   30090:	6a 00                	push   0x0
   30092:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30095:	6b db 0e             	imul   bx,bx,0xe
   30098:	b8 88 01             	mov    ax,0x188
   3009b:	53                   	push   bx
   3009c:	50                   	push   ax
   3009d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   300a0:	07                   	pop    es
   300a1:	5b                   	pop    bx
   300a2:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   300a7:	50                   	push   ax
   300a8:	9a 30 04 28 00       	call   0x28:0x430
   300ad:	83 c4 14             	add    sp,0x14
   300b0:	b8 88 01             	mov    ax,0x188
   300b3:	8e c0                	mov    es,ax
   300b5:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   300bb:	74 3d                	je     0x300fa
   300bd:	6a 00                	push   0x0
   300bf:	6a 00                	push   0x0
   300c1:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   300c4:	d1 e3                	shl    bx,1
   300c6:	b8 88 01             	mov    ax,0x188
   300c9:	8e c0                	mov    es,ax
   300cb:	26 8b 9f 10 9f       	mov    bx,WORD PTR es:[bx-0x60f0]
   300d0:	6b db 11             	imul   bx,bx,0x11
   300d3:	b8 88 01             	mov    ax,0x188
   300d6:	6a 00                	push   0x0
   300d8:	8e c0                	mov    es,ax
   300da:	26 ff b7 c5 23       	push   WORD PTR es:[bx+0x23c5]
   300df:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   300e2:	d1 e3                	shl    bx,1
   300e4:	b8 88 01             	mov    ax,0x188
   300e7:	8e c0                	mov    es,ax
   300e9:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   300ee:	05 0d 00             	add    ax,0xd
   300f1:	50                   	push   ax
   300f2:	9a 2d 19 10 00       	call   0x10:0x192d
   300f7:	83 c4 0a             	add    sp,0xa
   300fa:	80 3e 08 3b 00       	cmp    BYTE PTR ds:0x3b08,0x0
   300ff:	75 03                	jne    0x30104
   30101:	e9 12 02             	jmp    0x30316
   30104:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   30109:	e9 fe 01             	jmp    0x3030a
   3010c:	b8 88 01             	mov    ax,0x188
   3010f:	8e c0                	mov    es,ax
   30111:	26 a1 4a e7          	mov    ax,es:0xe74a
   30115:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   30118:	9a e3 01 40 00       	call   0x40:0x1e3
   3011d:	68 20 00             	push   0x20
   30120:	68 06 00             	push   0x6
   30123:	6a 00                	push   0x0
   30125:	a1 01 3b             	mov    ax,ds:0x3b01
   30128:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3012c:	50                   	push   ax
   3012d:	6a 41                	push   0x41
   3012f:	6a 42                	push   0x42
   30131:	9a 15 06 28 00       	call   0x28:0x615
   30136:	83 c4 0c             	add    sp,0xc
   30139:	a0 f0 b9             	mov    al,ds:0xb9f0
   3013c:	b4 00                	mov    ah,0x0
   3013e:	bb 04 00             	mov    bx,0x4
   30141:	99                   	cwd
   30142:	f7 fb                	idiv   bx
   30144:	83 fa 01             	cmp    dx,0x1
   30147:	74 25                	je     0x3016e
   30149:	a0 f0 b9             	mov    al,ds:0xb9f0
   3014c:	b4 00                	mov    ah,0x0
   3014e:	bb 04 00             	mov    bx,0x4
   30151:	99                   	cwd
   30152:	f7 fb                	idiv   bx
   30154:	0b d2                	or     dx,dx
   30156:	74 16                	je     0x3016e
   30158:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3015b:	6b db 0e             	imul   bx,bx,0xe
   3015e:	b8 88 01             	mov    ax,0x188
   30161:	8e c0                	mov    es,ax
   30163:	26 83 bf 24 b4 00    	cmp    WORD PTR es:[bx-0x4bdc],0x0
   30169:	74 03                	je     0x3016e
   3016b:	e9 a3 00             	jmp    0x30211
   3016e:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   30174:	75 03                	jne    0x30179
   30176:	e9 8d 00             	jmp    0x30206
   30179:	6a 00                	push   0x0
   3017b:	6a 41                	push   0x41
   3017d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30180:	04 20                	add    al,0x20
   30182:	50                   	push   ax
   30183:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30186:	6b db 0e             	imul   bx,bx,0xe
   30189:	b8 88 01             	mov    ax,0x188
   3018c:	8e c0                	mov    es,ax
   3018e:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   30193:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30196:	6b db 0e             	imul   bx,bx,0xe
   30199:	b8 88 01             	mov    ax,0x188
   3019c:	8e c0                	mov    es,ax
   3019e:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   301a3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301a6:	6b db 0e             	imul   bx,bx,0xe
   301a9:	b8 88 01             	mov    ax,0x188
   301ac:	8e c0                	mov    es,ax
   301ae:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   301b3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301b6:	6b db 0e             	imul   bx,bx,0xe
   301b9:	b8 88 01             	mov    ax,0x188
   301bc:	8e c0                	mov    es,ax
   301be:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   301c3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301c6:	6b db 0e             	imul   bx,bx,0xe
   301c9:	b8 88 01             	mov    ax,0x188
   301cc:	8e c0                	mov    es,ax
   301ce:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   301d3:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301d6:	6b db 0e             	imul   bx,bx,0xe
   301d9:	b8 88 01             	mov    ax,0x188
   301dc:	8e c0                	mov    es,ax
   301de:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   301e3:	6a 00                	push   0x0
   301e5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   301e8:	6b db 0e             	imul   bx,bx,0xe
   301eb:	b8 88 01             	mov    ax,0x188
   301ee:	53                   	push   bx
   301ef:	50                   	push   ax
   301f0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   301f3:	07                   	pop    es
   301f4:	5b                   	pop    bx
   301f5:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   301fa:	50                   	push   ax
   301fb:	9a 5a 0c 28 00       	call   0x28:0xc5a
   30200:	83 c4 16             	add    sp,0x16
   30203:	e9 e3 00             	jmp    0x302e9
   30206:	68 e0 01             	push   0x1e0
   30209:	68 41 03             	push   0x341
   3020c:	eb 73                	jmp    0x30281
   3020e:	e9 d8 00             	jmp    0x302e9
   30211:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   30217:	74 62                	je     0x3027b
   30219:	6a 01                	push   0x1
   3021b:	6a 41                	push   0x41
   3021d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30220:	04 20                	add    al,0x20
   30222:	50                   	push   ax
   30223:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30226:	6b db 0e             	imul   bx,bx,0xe
   30229:	b8 88 01             	mov    ax,0x188
   3022c:	8e c0                	mov    es,ax
   3022e:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   30233:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30236:	6b db 0e             	imul   bx,bx,0xe
   30239:	b8 88 01             	mov    ax,0x188
   3023c:	8e c0                	mov    es,ax
   3023e:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   30243:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30246:	6b db 0e             	imul   bx,bx,0xe
   30249:	b8 88 01             	mov    ax,0x188
   3024c:	8e c0                	mov    es,ax
   3024e:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30253:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30256:	6b db 0e             	imul   bx,bx,0xe
   30259:	b8 88 01             	mov    ax,0x188
   3025c:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   30260:	8e c0                	mov    es,ax
   30262:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   30267:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3026a:	6b db 0e             	imul   bx,bx,0xe
   3026d:	b8 88 01             	mov    ax,0x188
   30270:	8e c0                	mov    es,ax
   30272:	26 2b 97 58 b4       	sub    dx,WORD PTR es:[bx-0x4ba8]
   30277:	52                   	push   dx
   30278:	e9 48 ff             	jmp    0x301c3
   3027b:	68 e0 01             	push   0x1e0
   3027e:	68 c4 03             	push   0x3c4
   30281:	6a 41                	push   0x41
   30283:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30286:	04 20                	add    al,0x20
   30288:	50                   	push   ax
   30289:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3028c:	6b db 0e             	imul   bx,bx,0xe
   3028f:	b8 88 01             	mov    ax,0x188
   30292:	8e c0                	mov    es,ax
   30294:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30299:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3029c:	6b db 0e             	imul   bx,bx,0xe
   3029f:	b8 88 01             	mov    ax,0x188
   302a2:	8e c0                	mov    es,ax
   302a4:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   302a9:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   302ac:	6b db 0e             	imul   bx,bx,0xe
   302af:	b8 88 01             	mov    ax,0x188
   302b2:	8e c0                	mov    es,ax
   302b4:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   302b9:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   302bc:	6b db 0e             	imul   bx,bx,0xe
   302bf:	b8 88 01             	mov    ax,0x188
   302c2:	8e c0                	mov    es,ax
   302c4:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   302c9:	6a 00                	push   0x0
   302cb:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   302ce:	6b db 0e             	imul   bx,bx,0xe
   302d1:	b8 88 01             	mov    ax,0x188
   302d4:	53                   	push   bx
   302d5:	50                   	push   ax
   302d6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   302d9:	07                   	pop    es
   302da:	5b                   	pop    bx
   302db:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   302e0:	50                   	push   ax
   302e1:	9a 30 04 28 00       	call   0x28:0x430
   302e6:	83 c4 14             	add    sp,0x14
   302e9:	6a 34                	push   0x34
   302eb:	6a 30                	push   0x30
   302ed:	6a 41                	push   0x41
   302ef:	0e                   	push   cs
   302f0:	e8 e5 81             	call   0x384d8
   302f3:	83 c4 06             	add    sp,0x6
   302f6:	b8 88 01             	mov    ax,0x188
   302f9:	8e c0                	mov    es,ax
   302fb:	26 a1 4a e7          	mov    ax,es:0xe74a
   302ff:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   30302:	3d 96 00             	cmp    ax,0x96
   30305:	72 ef                	jb     0x302f6
   30307:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3030a:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3030e:	7d 03                	jge    0x30313
   30310:	e9 f9 fd             	jmp    0x3010c
   30313:	e9 cb 01             	jmp    0x304e1
   30316:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   3031b:	68 20 00             	push   0x20
   3031e:	68 06 00             	push   0x6
   30321:	6a 00                	push   0x0
   30323:	a1 01 3b             	mov    ax,ds:0x3b01
   30326:	f7 2e ff 3a          	imul   WORD PTR ds:0x3aff
   3032a:	50                   	push   ax
   3032b:	6a 41                	push   0x41
   3032d:	6a 42                	push   0x42
   3032f:	9a 15 06 28 00       	call   0x28:0x615
   30334:	83 c4 0c             	add    sp,0xc
   30337:	a0 f0 b9             	mov    al,ds:0xb9f0
   3033a:	b4 00                	mov    ah,0x0
   3033c:	bb 04 00             	mov    bx,0x4
   3033f:	99                   	cwd
   30340:	f7 fb                	idiv   bx
   30342:	83 fa 01             	cmp    dx,0x1
   30345:	74 12                	je     0x30359
   30347:	a0 f0 b9             	mov    al,ds:0xb9f0
   3034a:	b4 00                	mov    ah,0x0
   3034c:	bb 04 00             	mov    bx,0x4
   3034f:	99                   	cwd
   30350:	f7 fb                	idiv   bx
   30352:	0b d2                	or     dx,dx
   30354:	74 03                	je     0x30359
   30356:	e9 a3 00             	jmp    0x303fc
   30359:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   3035f:	75 03                	jne    0x30364
   30361:	e9 8d 00             	jmp    0x303f1
   30364:	6a 00                	push   0x0
   30366:	6a 41                	push   0x41
   30368:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3036b:	04 20                	add    al,0x20
   3036d:	50                   	push   ax
   3036e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30371:	6b db 0e             	imul   bx,bx,0xe
   30374:	b8 88 01             	mov    ax,0x188
   30377:	8e c0                	mov    es,ax
   30379:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   3037e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30381:	6b db 0e             	imul   bx,bx,0xe
   30384:	b8 88 01             	mov    ax,0x188
   30387:	8e c0                	mov    es,ax
   30389:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   3038e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30391:	6b db 0e             	imul   bx,bx,0xe
   30394:	b8 88 01             	mov    ax,0x188
   30397:	8e c0                	mov    es,ax
   30399:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   3039e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303a1:	6b db 0e             	imul   bx,bx,0xe
   303a4:	b8 88 01             	mov    ax,0x188
   303a7:	8e c0                	mov    es,ax
   303a9:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   303ae:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303b1:	6b db 0e             	imul   bx,bx,0xe
   303b4:	b8 88 01             	mov    ax,0x188
   303b7:	8e c0                	mov    es,ax
   303b9:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   303be:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303c1:	6b db 0e             	imul   bx,bx,0xe
   303c4:	b8 88 01             	mov    ax,0x188
   303c7:	8e c0                	mov    es,ax
   303c9:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   303ce:	6a 00                	push   0x0
   303d0:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   303d3:	6b db 0e             	imul   bx,bx,0xe
   303d6:	b8 88 01             	mov    ax,0x188
   303d9:	53                   	push   bx
   303da:	50                   	push   ax
   303db:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   303de:	07                   	pop    es
   303df:	5b                   	pop    bx
   303e0:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   303e5:	50                   	push   ax
   303e6:	9a 5a 0c 28 00       	call   0x28:0xc5a
   303eb:	83 c4 16             	add    sp,0x16
   303ee:	e9 e3 00             	jmp    0x304d4
   303f1:	68 e0 01             	push   0x1e0
   303f4:	68 41 03             	push   0x341
   303f7:	eb 73                	jmp    0x3046c
   303f9:	e9 d8 00             	jmp    0x304d4
   303fc:	f7 06 d8 b8 02 00    	test   WORD PTR ds:0xb8d8,0x2
   30402:	74 62                	je     0x30466
   30404:	6a 01                	push   0x1
   30406:	6a 41                	push   0x41
   30408:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3040b:	04 20                	add    al,0x20
   3040d:	50                   	push   ax
   3040e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30411:	6b db 0e             	imul   bx,bx,0xe
   30414:	b8 88 01             	mov    ax,0x188
   30417:	8e c0                	mov    es,ax
   30419:	26 ff b7 5a b4       	push   WORD PTR es:[bx-0x4ba6]
   3041e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30421:	6b db 0e             	imul   bx,bx,0xe
   30424:	b8 88 01             	mov    ax,0x188
   30427:	8e c0                	mov    es,ax
   30429:	26 ff b7 58 b4       	push   WORD PTR es:[bx-0x4ba8]
   3042e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30431:	6b db 0e             	imul   bx,bx,0xe
   30434:	b8 88 01             	mov    ax,0x188
   30437:	8e c0                	mov    es,ax
   30439:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   3043e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30441:	6b db 0e             	imul   bx,bx,0xe
   30444:	b8 88 01             	mov    ax,0x188
   30447:	8b 16 ff 3a          	mov    dx,WORD PTR ds:0x3aff
   3044b:	8e c0                	mov    es,ax
   3044d:	26 2b 97 5c b4       	sub    dx,WORD PTR es:[bx-0x4ba4]
   30452:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30455:	6b db 0e             	imul   bx,bx,0xe
   30458:	b8 88 01             	mov    ax,0x188
   3045b:	8e c0                	mov    es,ax
   3045d:	26 2b 97 58 b4       	sub    dx,WORD PTR es:[bx-0x4ba8]
   30462:	52                   	push   dx
   30463:	e9 48 ff             	jmp    0x303ae
   30466:	68 e0 01             	push   0x1e0
   30469:	68 c4 03             	push   0x3c4
   3046c:	6a 41                	push   0x41
   3046e:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30471:	04 20                	add    al,0x20
   30473:	50                   	push   ax
   30474:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30477:	6b db 0e             	imul   bx,bx,0xe
   3047a:	b8 88 01             	mov    ax,0x188
   3047d:	8e c0                	mov    es,ax
   3047f:	26 ff b7 5e b4       	push   WORD PTR es:[bx-0x4ba2]
   30484:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30487:	6b db 0e             	imul   bx,bx,0xe
   3048a:	b8 88 01             	mov    ax,0x188
   3048d:	8e c0                	mov    es,ax
   3048f:	26 ff b7 5c b4       	push   WORD PTR es:[bx-0x4ba4]
   30494:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   30497:	6b db 0e             	imul   bx,bx,0xe
   3049a:	b8 88 01             	mov    ax,0x188
   3049d:	8e c0                	mov    es,ax
   3049f:	26 ff b7 62 b4       	push   WORD PTR es:[bx-0x4b9e]
   304a4:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   304a7:	6b db 0e             	imul   bx,bx,0xe
   304aa:	b8 88 01             	mov    ax,0x188
   304ad:	8e c0                	mov    es,ax
   304af:	26 ff b7 60 b4       	push   WORD PTR es:[bx-0x4ba0]
   304b4:	6a 00                	push   0x0
   304b6:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   304b9:	6b db 0e             	imul   bx,bx,0xe
   304bc:	b8 88 01             	mov    ax,0x188
   304bf:	53                   	push   bx
   304c0:	50                   	push   ax
   304c1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   304c4:	07                   	pop    es
   304c5:	5b                   	pop    bx
   304c6:	26 f7 af 60 b4       	imul   WORD PTR es:[bx-0x4ba0]
   304cb:	50                   	push   ax
   304cc:	9a 30 04 28 00       	call   0x28:0x430
   304d1:	83 c4 14             	add    sp,0x14
   304d4:	6a 34                	push   0x34
   304d6:	6a 30                	push   0x30
   304d8:	6a 41                	push   0x41
   304da:	0e                   	push   cs
   304db:	e8 fa 7f             	call   0x384d8
   304de:	83 c4 06             	add    sp,0x6
   304e1:	a0 06 3b             	mov    al,ds:0x3b06
   304e4:	b4 00                	mov    ah,0x0
   304e6:	0b c0                	or     ax,ax
   304e8:	75 14                	jne    0x304fe
   304ea:	a1 f3 b9             	mov    ax,ds:0xb9f3
   304ed:	03 06 c6 b9          	add    ax,WORD PTR ds:0xb9c6
   304f1:	a3 f3 b9             	mov    ds:0xb9f3,ax
   304f4:	a1 f1 b9             	mov    ax,ds:0xb9f1
   304f7:	03 06 c4 b9          	add    ax,WORD PTR ds:0xb9c4
   304fb:	a3 f1 b9             	mov    ds:0xb9f1,ax
   304fe:	c9                   	leave
   304ff:	cb                   	retf
