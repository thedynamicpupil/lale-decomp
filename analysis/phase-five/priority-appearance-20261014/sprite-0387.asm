
analysis/phase-five/priority-appearance-20261014/original-1694-range.bin:     file format binary


Disassembly of section .data:

00049fd7 <.data+0x387>:
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
   4a245:	26 8b              	mov    dx,WORD PTR es:[bx]
