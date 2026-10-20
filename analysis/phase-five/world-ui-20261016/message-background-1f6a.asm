
analysis/phase-five/world-ui-20261016/message-background-1f6a.bin:     file format binary


Disassembly of section .data:

0000a12a <.data>:
    a12a:	55                   	push   bp
    a12b:	8b ec                	mov    bp,sp
    a12d:	83 ec 02             	sub    sp,0x2
    a130:	c7 46 fe 40 01       	mov    WORD PTR [bp-0x2],0x140
    a135:	b8 e0 16             	mov    ax,0x16e0
    a138:	8e c0                	mov    es,ax
    a13a:	26 a0 5c 96          	mov    al,es:0x965c
    a13e:	50                   	push   ax
    a13f:	9a c7 05 7f 0c       	call   0xc7f:0x5c7
    a144:	59                   	pop    cx
    a145:	0a c0                	or     al,al
    a147:	74 05                	je     0xa14e
    a149:	9a 04 02 7f 0c       	call   0xc7f:0x204
    a14e:	b8 e0 16             	mov    ax,0x16e0
    a151:	8e c0                	mov    es,ax
    a153:	26 a1 57 e3          	mov    ax,es:0xe357
    a157:	26 0b 06 59 e3       	or     ax,WORD PTR es:0xe359
    a15c:	75 4d                	jne    0xa1ab
    a15e:	b8 e0 16             	mov    ax,0x16e0
    a161:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
    a164:	8e c0                	mov    es,ax
    a166:	26 89 16 53 e3       	mov    WORD PTR es:0xe353,dx
    a16b:	b8 e0 16             	mov    ax,0x16e0
    a16e:	8e c0                	mov    es,ax
    a170:	26 a1 5a 96          	mov    ax,es:0x965a
    a174:	ba e0 16             	mov    dx,0x16e0
    a177:	8e c2                	mov    es,dx
    a179:	26 a3 55 e3          	mov    es:0xe355,ax
    a17d:	6a 00                	push   0x0
    a17f:	b8 e0 16             	mov    ax,0x16e0
    a182:	8e c0                	mov    es,ax
    a184:	26 a1 53 e3          	mov    ax,es:0xe353
    a188:	ba e0 16             	mov    dx,0x16e0
    a18b:	8e c2                	mov    es,dx
    a18d:	26 f7 2e 55 e3       	imul   WORD PTR es:0xe355
    a192:	6a 00                	push   0x0
    a194:	50                   	push   ax
    a195:	9a 64 01 d4 09       	call   0x9d4:0x164
    a19a:	83 c4 06             	add    sp,0x6
    a19d:	bb e0 16             	mov    bx,0x16e0
    a1a0:	8e c3                	mov    es,bx
    a1a2:	26 89 16 59 e3       	mov    WORD PTR es:0xe359,dx
    a1a7:	26 a3 57 e3          	mov    es:0xe357,ax
    a1ab:	b8 e0 16             	mov    ax,0x16e0
    a1ae:	8e c0                	mov    es,ax
    a1b0:	26 a1 55 e3          	mov    ax,es:0xe355
    a1b4:	99                   	cwd
    a1b5:	50                   	push   ax
    a1b6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    a1b9:	52                   	push   dx
    a1ba:	33 d2                	xor    dx,dx
    a1bc:	59                   	pop    cx
    a1bd:	5b                   	pop    bx
    a1be:	9a 42 12 00 00       	call   0x0:0x1242
    a1c3:	52                   	push   dx
    a1c4:	50                   	push   ax
    a1c5:	6a 00                	push   0x0
    a1c7:	6a 00                	push   0x0
    a1c9:	b8 e0 16             	mov    ax,0x16e0
    a1cc:	8e c0                	mov    es,ax
    a1ce:	26 8b 1e 58 96       	mov    bx,WORD PTR es:0x9658
    a1d3:	33 c9                	xor    cx,cx
    a1d5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    a1d8:	33 d2                	xor    dx,dx
    a1da:	9a 42 12 00 00       	call   0x0:0x1242
    a1df:	52                   	push   dx
    a1e0:	50                   	push   ax
    a1e1:	b8 e0 16             	mov    ax,0x16e0
    a1e4:	8e c0                	mov    es,ax
    a1e6:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
    a1eb:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
    a1f0:	b8 e0 16             	mov    ax,0x16e0
    a1f3:	8e c0                	mov    es,ax
    a1f5:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
    a1fa:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
    a1ff:	9a c9 07 d4 09       	call   0x9d4:0x7c9
    a204:	83 c4 14             	add    sp,0x14
    a207:	6a 00                	push   0x0
    a209:	6a 00                	push   0x0
    a20b:	b8 e0 16             	mov    ax,0x16e0
    a20e:	8e c0                	mov    es,ax
    a210:	26 ff 36 5a 96       	push   WORD PTR es:0x965a
    a215:	68 40 01             	push   0x140
    a218:	b8 e0 16             	mov    ax,0x16e0
    a21b:	8e c0                	mov    es,ax
    a21d:	26 ff 36 58 96       	push   WORD PTR es:0x9658
    a222:	6a 00                	push   0x0
    a224:	b8 e0 16             	mov    ax,0x16e0
    a227:	8e c0                	mov    es,ax
    a229:	26 ff 1e 48 96       	call   DWORD PTR es:0x9648
    a22e:	83 c4 0c             	add    sp,0xc
    a231:	b8 e0 16             	mov    ax,0x16e0
    a234:	8e c0                	mov    es,ax
    a236:	26 a0 e3 e5          	mov    al,es:0xe5e3
    a23a:	50                   	push   ax
    a23b:	9a 69 00 7f 0c       	call   0xc7f:0x69
    a240:	59                   	pop    cx
    a241:	c9                   	leave
    a242:	cb                   	retf
    a243:	55                   	push   bp
    a244:	8b ec                	mov    bp,sp
    a246:	83 ec 06             	sub    sp,0x6
    a249:	c6 46 ff 64          	mov    BYTE PTR [bp-0x1],0x64
    a24d:	e9 e6 00             	jmp    0xa336
    a250:	b8 e0 16             	mov    ax,0x16e0
    a253:	8e c0                	mov    es,ax
    a255:	26 ff 36 62 96       	push   WORD PTR es:0x9662
    a25a:	26 ff 36 60 96       	push   WORD PTR es:0x9660
    a25f:	b8 e0 16             	mov    ax,0x16e0
    a262:	8e c0                	mov    es,ax
    a264:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
    a269:	83 c4 04             	add    sp,0x4
    a26c:	b8 e0 16             	mov    ax,0x16e0
    a26f:	8e c0                	mov    es,ax
    a271:	26 83 3e f3 e5 00    	cmp    WORD PTR es:0xe5f3,0x0
    a277:	74 10                	je     0xa289
    a279:	b8 e0 16             	mov    ax,0x16e0
    a27c:	8e c0                	mov    es,ax
    a27e:	26 a0 e3 e5          	mov    al,es:0xe5e3
    a282:	50                   	push   ax
    a283:	9a 6b 02 7f 0c       	call   0xc7f:0x26b
    a288:	59                   	pop    cx
    a289:	6a 01                	push   0x1
    a28b:	9a 3f 1f 00 00       	call   0x0:0x1f3f
    a290:	59                   	pop    cx
    a291:	0b c0                	or     ax,ax
    a293:	74 50                	je     0xa2e5
    a295:	6a 00                	push   0x0
    a297:	9a 3f 1f 00 00       	call   0x0:0x1f3f
    a29c:	59                   	pop    cx
    a29d:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    a2a0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    a2a3:	25 ff 00             	and    ax,0xff
    a2a6:	3d 1b 00             	cmp    ax,0x1b
    a2a9:	75 04                	jne    0xa2af
    a2ab:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
    a2af:	9a e3 01 b7 0d       	call   0xdb7:0x1e3
    a2b4:	c1 7e fc 08          	sar    WORD PTR [bp-0x4],0x8
    a2b8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    a2bb:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    a2be:	b9 05 00             	mov    cx,0x5
    a2c1:	bb 84 21             	mov    bx,0x2184
    a2c4:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
    a2c7:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
    a2ca:	74 07                	je     0xa2d3
    a2cc:	83 c3 02             	add    bx,0x2
    a2cf:	e2 f3                	loop   0xa2c4
    a2d1:	eb 12                	jmp    0xa2e5
    a2d3:	2e ff 67 0a          	jmp    WORD PTR cs:[bx+0xa]
    a2d7:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
    a2db:	eb 08                	jmp    0xa2e5
    a2dd:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
    a2e0:	04 c6                	add    al,0xc6
    a2e2:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
    a2e5:	b8 e0 16             	mov    ax,0x16e0
    a2e8:	8e c0                	mov    es,ax
    a2ea:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
    a2f0:	75 33                	jne    0xa325
    a2f2:	9a 15 05 7f 0c       	call   0xc7f:0x515
    a2f7:	88 46 fe             	mov    BYTE PTR [bp-0x2],al
    a2fa:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
    a2fd:	3a 46 06             	cmp    al,BYTE PTR [bp+0x6]
    a300:	72 1c                	jb     0xa31e
    a302:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
    a305:	b4 00                	mov    ah,0x0
    a307:	8a 56 06             	mov    dl,BYTE PTR [bp+0x6]
    a30a:	b6 00                	mov    dh,0x0
    a30c:	83 c2 04             	add    dx,0x4
    a30f:	3b c2                	cmp    ax,dx
    a311:	7d 0b                	jge    0xa31e
    a313:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
    a316:	2a 46 06             	sub    al,BYTE PTR [bp+0x6]
    a319:	fe c0                	inc    al
    a31b:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
    a31e:	9a 14 07 7f 0c       	call   0xc7f:0x714
    a323:	eb 11                	jmp    0xa336
    a325:	b8 e0 16             	mov    ax,0x16e0
    a328:	8e c0                	mov    es,ax
    a32a:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
    a330:	75 04                	jne    0xa336
    a332:	c6 46 ff 00          	mov    BYTE PTR [bp-0x1],0x0
    a336:	80 7e ff 64          	cmp    BYTE PTR [bp-0x1],0x64
    a33a:	75 03                	jne    0xa33f
    a33c:	e9 11 ff             	jmp    0xa250
    a33f:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
    a342:	c9                   	leave
    a343:	cb                   	retf
    a344:	01 00                	add    WORD PTR [bx+si],ax
    a346:	3b 00                	cmp    ax,WORD PTR [bx+si]
    a348:	3c 00                	cmp    al,0x0
    a34a:	3d 00 3e             	cmp    ax,0x3e00
    a34d:	00 17                	add    BYTE PTR [bx],dl
    a34f:	21 1d                	and    WORD PTR [di],bx
    a351:	21 1d                	and    WORD PTR [di],bx
    a353:	21 1d                	and    WORD PTR [di],bx
    a355:	21 1d                	and    WORD PTR [di],bx
    a357:	21                   	.byte 0x21
