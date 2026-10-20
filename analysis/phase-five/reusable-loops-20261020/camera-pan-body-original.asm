
analysis/phase-five/reusable-loops-20261020/camera-pan-body-original.bin:     file format binary


Disassembly of section .data:

0004b13a <.data>:
   4b13a:	55                   	push   bp
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
