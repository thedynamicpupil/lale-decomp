
analysis/phase-five/scene-layers-20261016/far-layer-3cdd.bin:     file format binary


Disassembly of section .data:

0002c10d <.data>:
   2c10d:	55                   	push   bp
   2c10e:	8b ec                	mov    bp,sp
   2c110:	83 ec 0c             	sub    sp,0xc
   2c113:	c6 46 f5 00          	mov    BYTE PTR [bp-0xb],0x0
   2c117:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c11a:	6b c0 03             	imul   ax,ax,0x3
   2c11d:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c121:	03 d0                	add    dx,ax
   2c123:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c126:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c129:	6b c0 03             	imul   ax,ax,0x3
   2c12c:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c130:	03 d0                	add    dx,ax
   2c132:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c135:	a0 eb b9             	mov    al,ds:0xb9eb
   2c138:	b4 00                	mov    ah,0x0
   2c13a:	50                   	push   ax
   2c13b:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   2c13e:	5a                   	pop    dx
   2c13f:	f7 ea                	imul   dx
   2c141:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   2c144:	03 d0                	add    dx,ax
   2c146:	6b d2 0f             	imul   dx,dx,0xf
   2c149:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   2c14c:	a0 eb b9             	mov    al,ds:0xb9eb
   2c14f:	b4 00                	mov    ah,0x0
   2c151:	50                   	push   ax
   2c152:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c155:	5a                   	pop    dx
   2c156:	f7 ea                	imul   dx
   2c158:	6b c0 fe             	imul   ax,ax,0xfffe
   2c15b:	8b 16 c4 b9          	mov    dx,WORD PTR ds:0xb9c4
   2c15f:	d1 e2                	shl    dx,1
   2c161:	03 d0                	add    dx,ax
   2c163:	6b d2 0f             	imul   dx,dx,0xf
   2c166:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2c169:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c16c:	6b c0 03             	imul   ax,ax,0x3
   2c16f:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c173:	03 d0                	add    dx,ax
   2c175:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c178:	d1 e0                	shl    ax,1
   2c17a:	03 d0                	add    dx,ax
   2c17c:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c17f:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c182:	6b c0 03             	imul   ax,ax,0x3
   2c185:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c189:	03 d0                	add    dx,ax
   2c18b:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c18e:	d1 e0                	shl    ax,1
   2c190:	2b d0                	sub    dx,ax
   2c192:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c195:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c199:	7d 03                	jge    0x2c19e
   2c19b:	e9 d7 00             	jmp    0x2c275
   2c19e:	a0 eb b9             	mov    al,ds:0xb9eb
   2c1a1:	b4 00                	mov    ah,0x0
   2c1a3:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c1a6:	7f 03                	jg     0x2c1ab
   2c1a8:	e9 ca 00             	jmp    0x2c275
   2c1ab:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c1af:	7d 03                	jge    0x2c1b4
   2c1b1:	e9 c1 00             	jmp    0x2c275
   2c1b4:	a0 ea b9             	mov    al,ds:0xb9ea
   2c1b7:	b4 00                	mov    ah,0x0
   2c1b9:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c1bc:	7f 03                	jg     0x2c1c1
   2c1be:	e9 b4 00             	jmp    0x2c275
   2c1c1:	68 e0 01             	push   0x1e0
   2c1c4:	68 41 03             	push   0x341
   2c1c7:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c1ca:	50                   	push   ax
   2c1cb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c1ce:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c1d1:	05 09 00             	add    ax,0x9
   2c1d4:	99                   	cwd
   2c1d5:	50                   	push   ax
   2c1d6:	52                   	push   dx
   2c1d7:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c1db:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c1de:	59                   	pop    cx
   2c1df:	5b                   	pop    bx
   2c1e0:	9a 77 14 00 00       	call   0x0:0x1477
   2c1e5:	8b d8                	mov    bx,ax
   2c1e7:	8e c2                	mov    es,dx
   2c1e9:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c1ec:	04 23                	add    al,0x23
   2c1ee:	50                   	push   ax
   2c1ef:	a1 30 b7             	mov    ax,ds:0xb730
   2c1f2:	bb 02 00             	mov    bx,0x2
   2c1f5:	99                   	cwd
   2c1f6:	f7 fb                	idiv   bx
   2c1f8:	8b 16 12 b9          	mov    dx,WORD PTR ds:0xb912
   2c1fc:	2b d0                	sub    dx,ax
   2c1fe:	52                   	push   dx
   2c1ff:	6a 00                	push   0x0
   2c201:	a1 30 b7             	mov    ax,ds:0xb730
   2c204:	bb 02 00             	mov    bx,0x2
   2c207:	99                   	cwd
   2c208:	f7 fb                	idiv   bx
   2c20a:	50                   	push   ax
   2c20b:	6a 02                	push   0x2
   2c20d:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c211:	6a 00                	push   0x0
   2c213:	9a 30 04 28 00       	call   0x28:0x430
   2c218:	83 c4 14             	add    sp,0x14
   2c21b:	68 e0 01             	push   0x1e0
   2c21e:	68 41 03             	push   0x341
   2c221:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c224:	50                   	push   ax
   2c225:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c228:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c22b:	05 08 00             	add    ax,0x8
   2c22e:	99                   	cwd
   2c22f:	50                   	push   ax
   2c230:	52                   	push   dx
   2c231:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c235:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c238:	59                   	pop    cx
   2c239:	5b                   	pop    bx
   2c23a:	9a 77 14 00 00       	call   0x0:0x1477
   2c23f:	8b d8                	mov    bx,ax
   2c241:	8e c2                	mov    es,dx
   2c243:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c246:	04 37                	add    al,0x37
   2c248:	50                   	push   ax
   2c249:	ff 36 48 b9          	push   WORD PTR ds:0xb948
   2c24d:	6a 00                	push   0x0
   2c24f:	a1 30 b7             	mov    ax,ds:0xb730
   2c252:	bb 02 00             	mov    bx,0x2
   2c255:	99                   	cwd
   2c256:	f7 fb                	idiv   bx
   2c258:	50                   	push   ax
   2c259:	6a 02                	push   0x2
   2c25b:	a1 30 b7             	mov    ax,ds:0xb730
   2c25e:	bb 02 00             	mov    bx,0x2
   2c261:	99                   	cwd
   2c262:	f7 fb                	idiv   bx
   2c264:	8b 16 50 b9          	mov    dx,WORD PTR ds:0xb950
   2c268:	2b d0                	sub    dx,ax
   2c26a:	52                   	push   dx
   2c26b:	6a 00                	push   0x0
   2c26d:	9a 30 04 28 00       	call   0x28:0x430
   2c272:	83 c4 14             	add    sp,0x14
   2c275:	a0 eb b9             	mov    al,ds:0xb9eb
   2c278:	b4 00                	mov    ah,0x0
   2c27a:	50                   	push   ax
   2c27b:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c27e:	d1 e0                	shl    ax,1
   2c280:	5a                   	pop    dx
   2c281:	f7 ea                	imul   dx
   2c283:	8b 16 c4 b9          	mov    dx,WORD PTR ds:0xb9c4
   2c287:	6b d2 fe             	imul   dx,dx,0xfffe
   2c28a:	03 d0                	add    dx,ax
   2c28c:	6b d2 0f             	imul   dx,dx,0xf
   2c28f:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   2c292:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c295:	6b c0 03             	imul   ax,ax,0x3
   2c298:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c29c:	03 d0                	add    dx,ax
   2c29e:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c2a1:	d1 e0                	shl    ax,1
   2c2a3:	2b d0                	sub    dx,ax
   2c2a5:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c2a8:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c2ab:	6b c0 03             	imul   ax,ax,0x3
   2c2ae:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c2b2:	03 d0                	add    dx,ax
   2c2b4:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c2b7:	d1 e0                	shl    ax,1
   2c2b9:	03 d0                	add    dx,ax
   2c2bb:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c2be:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c2c2:	7d 03                	jge    0x2c2c7
   2c2c4:	e9 e1 00             	jmp    0x2c3a8
   2c2c7:	a0 eb b9             	mov    al,ds:0xb9eb
   2c2ca:	b4 00                	mov    ah,0x0
   2c2cc:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c2cf:	7f 03                	jg     0x2c2d4
   2c2d1:	e9 d4 00             	jmp    0x2c3a8
   2c2d4:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c2d8:	7d 03                	jge    0x2c2dd
   2c2da:	e9 cb 00             	jmp    0x2c3a8
   2c2dd:	a0 ea b9             	mov    al,ds:0xb9ea
   2c2e0:	b4 00                	mov    ah,0x0
   2c2e2:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c2e5:	7f 03                	jg     0x2c2ea
   2c2e7:	e9 be 00             	jmp    0x2c3a8
   2c2ea:	68 e0 01             	push   0x1e0
   2c2ed:	68 41 03             	push   0x341
   2c2f0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c2f3:	50                   	push   ax
   2c2f4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c2f7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c2fa:	05 09 00             	add    ax,0x9
   2c2fd:	99                   	cwd
   2c2fe:	50                   	push   ax
   2c2ff:	52                   	push   dx
   2c300:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c304:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c307:	59                   	pop    cx
   2c308:	5b                   	pop    bx
   2c309:	9a 77 14 00 00       	call   0x0:0x1477
   2c30e:	8b d8                	mov    bx,ax
   2c310:	8e c2                	mov    es,dx
   2c312:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c315:	04 23                	add    al,0x23
   2c317:	50                   	push   ax
   2c318:	a1 30 b7             	mov    ax,ds:0xb730
   2c31b:	bb 02 00             	mov    bx,0x2
   2c31e:	99                   	cwd
   2c31f:	f7 fb                	idiv   bx
   2c321:	8b 16 12 b9          	mov    dx,WORD PTR ds:0xb912
   2c325:	2b d0                	sub    dx,ax
   2c327:	52                   	push   dx
   2c328:	a1 ff 3a             	mov    ax,ds:0x3aff
   2c32b:	05 fe ff             	add    ax,0xfffe
   2c32e:	50                   	push   ax
   2c32f:	a1 30 b7             	mov    ax,ds:0xb730
   2c332:	bb 02 00             	mov    bx,0x2
   2c335:	99                   	cwd
   2c336:	f7 fb                	idiv   bx
   2c338:	50                   	push   ax
   2c339:	6a 02                	push   0x2
   2c33b:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c33f:	6a 00                	push   0x0
   2c341:	9a 30 04 28 00       	call   0x28:0x430
   2c346:	83 c4 14             	add    sp,0x14
   2c349:	68 e0 01             	push   0x1e0
   2c34c:	68 41 03             	push   0x341
   2c34f:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c352:	50                   	push   ax
   2c353:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c356:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c359:	05 08 00             	add    ax,0x8
   2c35c:	99                   	cwd
   2c35d:	50                   	push   ax
   2c35e:	52                   	push   dx
   2c35f:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c363:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c366:	59                   	pop    cx
   2c367:	5b                   	pop    bx
   2c368:	9a 77 14 00 00       	call   0x0:0x1477
   2c36d:	8b d8                	mov    bx,ax
   2c36f:	8e c2                	mov    es,dx
   2c371:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c374:	04 37                	add    al,0x37
   2c376:	50                   	push   ax
   2c377:	ff 36 48 b9          	push   WORD PTR ds:0xb948
   2c37b:	a1 ff 3a             	mov    ax,ds:0x3aff
   2c37e:	05 fe ff             	add    ax,0xfffe
   2c381:	50                   	push   ax
   2c382:	a1 30 b7             	mov    ax,ds:0xb730
   2c385:	bb 02 00             	mov    bx,0x2
   2c388:	99                   	cwd
   2c389:	f7 fb                	idiv   bx
   2c38b:	50                   	push   ax
   2c38c:	6a 02                	push   0x2
   2c38e:	a1 30 b7             	mov    ax,ds:0xb730
   2c391:	bb 02 00             	mov    bx,0x2
   2c394:	99                   	cwd
   2c395:	f7 fb                	idiv   bx
   2c397:	8b 16 50 b9          	mov    dx,WORD PTR ds:0xb950
   2c39b:	2b d0                	sub    dx,ax
   2c39d:	52                   	push   dx
   2c39e:	6a 00                	push   0x0
   2c3a0:	9a 30 04 28 00       	call   0x28:0x430
   2c3a5:	83 c4 14             	add    sp,0x14
   2c3a8:	b8 88 01             	mov    ax,0x188
   2c3ab:	8e c0                	mov    es,ax
   2c3ad:	26 a1 17 e5          	mov    ax,es:0xe517
   2c3b1:	26 0b 06 19 e5       	or     ax,WORD PTR es:0xe519
   2c3b6:	75 03                	jne    0x2c3bb
   2c3b8:	e9 f6 01             	jmp    0x2c5b1
   2c3bb:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   2c3c0:	a0 eb b9             	mov    al,ds:0xb9eb
   2c3c3:	b4 00                	mov    ah,0x0
   2c3c5:	50                   	push   ax
   2c3c6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c3c9:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c3cd:	2b 06 c4 b9          	sub    ax,WORD PTR ds:0xb9c4
   2c3d1:	5a                   	pop    dx
   2c3d2:	f7 ea                	imul   dx
   2c3d4:	50                   	push   ax
   2c3d5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c3d8:	f7 d8                	neg    ax
   2c3da:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c3de:	2b 06 c6 b9          	sub    ax,WORD PTR ds:0xb9c6
   2c3e2:	5a                   	pop    dx
   2c3e3:	03 c2                	add    ax,dx
   2c3e5:	6b c0 0f             	imul   ax,ax,0xf
   2c3e8:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c3eb:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c3ee:	d1 e0                	shl    ax,1
   2c3f0:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c3f4:	03 d0                	add    dx,ax
   2c3f6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c3f9:	52                   	push   dx
   2c3fa:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c3fe:	5a                   	pop    dx
   2c3ff:	2b d0                	sub    dx,ax
   2c401:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c404:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c407:	d1 e0                	shl    ax,1
   2c409:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c40d:	03 d0                	add    dx,ax
   2c40f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c412:	52                   	push   dx
   2c413:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c417:	5a                   	pop    dx
   2c418:	03 d0                	add    dx,ax
   2c41a:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c41d:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c421:	7c 1a                	jl     0x2c43d
   2c423:	a0 eb b9             	mov    al,ds:0xb9eb
   2c426:	b4 00                	mov    ah,0x0
   2c428:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c42b:	7e 10                	jle    0x2c43d
   2c42d:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c431:	7c 0a                	jl     0x2c43d
   2c433:	a0 ea b9             	mov    al,ds:0xb9ea
   2c436:	b4 00                	mov    ah,0x0
   2c438:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c43b:	7f 0b                	jg     0x2c448
   2c43d:	b8 88 01             	mov    ax,0x188
   2c440:	8e c0                	mov    es,ax
   2c442:	26 a0 15 e5          	mov    al,es:0xe515
   2c446:	eb 2c                	jmp    0x2c474
   2c448:	a1 01 3b             	mov    ax,ds:0x3b01
   2c44b:	bb 02 00             	mov    bx,0x2
   2c44e:	99                   	cwd
   2c44f:	f7 fb                	idiv   bx
   2c451:	40                   	inc    ax
   2c452:	ba 88 01             	mov    dx,0x188
   2c455:	8e c2                	mov    es,dx
   2c457:	26 3b 06 15 e5       	cmp    ax,WORD PTR es:0xe515
   2c45c:	7e 0b                	jle    0x2c469
   2c45e:	b8 88 01             	mov    ax,0x188
   2c461:	8e c0                	mov    es,ax
   2c463:	26 a0 15 e5          	mov    al,es:0xe515
   2c467:	eb 0b                	jmp    0x2c474
   2c469:	a1 01 3b             	mov    ax,ds:0x3b01
   2c46c:	bb 02 00             	mov    bx,0x2
   2c46f:	99                   	cwd
   2c470:	f7 fb                	idiv   bx
   2c472:	fe c0                	inc    al
   2c474:	88 46 f5             	mov    BYTE PTR [bp-0xb],al
   2c477:	c7 46 fe fd ff       	mov    WORD PTR [bp-0x2],0xfffd
   2c47c:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c47f:	6b c0 03             	imul   ax,ax,0x3
   2c482:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c486:	03 d0                	add    dx,ax
   2c488:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c48b:	52                   	push   dx
   2c48c:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c490:	5a                   	pop    dx
   2c491:	2b d0                	sub    dx,ax
   2c493:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c496:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c499:	6b c0 03             	imul   ax,ax,0x3
   2c49c:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c4a0:	03 d0                	add    dx,ax
   2c4a2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c4a5:	52                   	push   dx
   2c4a6:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c4aa:	5a                   	pop    dx
   2c4ab:	03 d0                	add    dx,ax
   2c4ad:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c4b0:	a0 eb b9             	mov    al,ds:0xb9eb
   2c4b3:	b4 00                	mov    ah,0x0
   2c4b5:	50                   	push   ax
   2c4b6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c4b9:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c4bd:	5a                   	pop    dx
   2c4be:	f7 ea                	imul   dx
   2c4c0:	50                   	push   ax
   2c4c1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c4c4:	f7 d8                	neg    ax
   2c4c6:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c4ca:	5a                   	pop    dx
   2c4cb:	03 c2                	add    ax,dx
   2c4cd:	6b c0 0f             	imul   ax,ax,0xf
   2c4d0:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c4d3:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c4d7:	7c 1a                	jl     0x2c4f3
   2c4d9:	a0 eb b9             	mov    al,ds:0xb9eb
   2c4dc:	b4 00                	mov    ah,0x0
   2c4de:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c4e1:	7e 10                	jle    0x2c4f3
   2c4e3:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c4e7:	7c 0a                	jl     0x2c4f3
   2c4e9:	a0 ea b9             	mov    al,ds:0xb9ea
   2c4ec:	b4 00                	mov    ah,0x0
   2c4ee:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c4f1:	7f 02                	jg     0x2c4f5
   2c4f3:	eb 7c                	jmp    0x2c571
   2c4f5:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   2c4fa:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c4fd:	6b c0 03             	imul   ax,ax,0x3
   2c500:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c504:	03 d0                	add    dx,ax
   2c506:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c509:	52                   	push   dx
   2c50a:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c50e:	5a                   	pop    dx
   2c50f:	2b d0                	sub    dx,ax
   2c511:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c514:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c517:	6b c0 03             	imul   ax,ax,0x3
   2c51a:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c51e:	03 d0                	add    dx,ax
   2c520:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c523:	52                   	push   dx
   2c524:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c528:	5a                   	pop    dx
   2c529:	03 d0                	add    dx,ax
   2c52b:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c52e:	a0 eb b9             	mov    al,ds:0xb9eb
   2c531:	b4 00                	mov    ah,0x0
   2c533:	50                   	push   ax
   2c534:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c537:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c53b:	5a                   	pop    dx
   2c53c:	f7 ea                	imul   dx
   2c53e:	50                   	push   ax
   2c53f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c542:	f7 d8                	neg    ax
   2c544:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c548:	5a                   	pop    dx
   2c549:	03 c2                	add    ax,dx
   2c54b:	6b c0 0f             	imul   ax,ax,0xf
   2c54e:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c551:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c555:	7c 1a                	jl     0x2c571
   2c557:	a0 eb b9             	mov    al,ds:0xb9eb
   2c55a:	b4 00                	mov    ah,0x0
   2c55c:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c55f:	7e 10                	jle    0x2c571
   2c561:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c565:	7c 0a                	jl     0x2c571
   2c567:	a0 ea b9             	mov    al,ds:0xb9ea
   2c56a:	b4 00                	mov    ah,0x0
   2c56c:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c56f:	7f 40                	jg     0x2c5b1
   2c571:	68 e0 01             	push   0x1e0
   2c574:	68 41 03             	push   0x341
   2c577:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c57a:	50                   	push   ax
   2c57b:	6a 4f                	push   0x4f
   2c57d:	8a 46 f5             	mov    al,BYTE PTR [bp-0xb]
   2c580:	b4 00                	mov    ah,0x0
   2c582:	8b 16 01 3b          	mov    dx,WORD PTR ds:0x3b01
   2c586:	2b d0                	sub    dx,ax
   2c588:	52                   	push   dx
   2c589:	6a 00                	push   0x0
   2c58b:	8a 46 f5             	mov    al,BYTE PTR [bp-0xb]
   2c58e:	b4 00                	mov    ah,0x0
   2c590:	50                   	push   ax
   2c591:	ff 36 ff 3a          	push   WORD PTR ds:0x3aff
   2c595:	8a 46 f5             	mov    al,BYTE PTR [bp-0xb]
   2c598:	b4 00                	mov    ah,0x0
   2c59a:	ba 88 01             	mov    dx,0x188
   2c59d:	8e c2                	mov    es,dx
   2c59f:	26 8b 16 15 e5       	mov    dx,WORD PTR es:0xe515
   2c5a4:	2b d0                	sub    dx,ax
   2c5a6:	52                   	push   dx
   2c5a7:	6a 00                	push   0x0
   2c5a9:	9a 30 04 28 00       	call   0x28:0x430
   2c5ae:	83 c4 14             	add    sp,0x14
   2c5b1:	c7 46 fe fd ff       	mov    WORD PTR [bp-0x2],0xfffd
   2c5b6:	e9 2b 02             	jmp    0x2c7e4
   2c5b9:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2c5bd:	7e 09                	jle    0x2c5c8
   2c5bf:	b8 04 00             	mov    ax,0x4
   2c5c2:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   2c5c5:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2c5c8:	a0 eb b9             	mov    al,ds:0xb9eb
   2c5cb:	b4 00                	mov    ah,0x0
   2c5cd:	50                   	push   ax
   2c5ce:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c5d1:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c5d5:	5a                   	pop    dx
   2c5d6:	f7 ea                	imul   dx
   2c5d8:	50                   	push   ax
   2c5d9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c5dc:	f7 d8                	neg    ax
   2c5de:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c5e2:	5a                   	pop    dx
   2c5e3:	03 c2                	add    ax,dx
   2c5e5:	6b c0 0f             	imul   ax,ax,0xf
   2c5e8:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   2c5eb:	a1 c6 b9             	mov    ax,ds:0xb9c6
   2c5ee:	6b c0 03             	imul   ax,ax,0x3
   2c5f1:	8b 16 f3 b9          	mov    dx,WORD PTR ds:0xb9f3
   2c5f5:	03 d0                	add    dx,ax
   2c5f7:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c5fa:	52                   	push   dx
   2c5fb:	f7 2e c4 b9          	imul   WORD PTR ds:0xb9c4
   2c5ff:	5a                   	pop    dx
   2c600:	2b d0                	sub    dx,ax
   2c602:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   2c605:	a1 c4 b9             	mov    ax,ds:0xb9c4
   2c608:	6b c0 03             	imul   ax,ax,0x3
   2c60b:	8b 16 f1 b9          	mov    dx,WORD PTR ds:0xb9f1
   2c60f:	03 d0                	add    dx,ax
   2c611:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   2c614:	52                   	push   dx
   2c615:	f7 2e c6 b9          	imul   WORD PTR ds:0xb9c6
   2c619:	5a                   	pop    dx
   2c61a:	03 d0                	add    dx,ax
   2c61c:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   2c61f:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   2c623:	7d 03                	jge    0x2c628
   2c625:	e9 aa 01             	jmp    0x2c7d2
   2c628:	a0 eb b9             	mov    al,ds:0xb9eb
   2c62b:	b4 00                	mov    ah,0x0
   2c62d:	3b 46 f8             	cmp    ax,WORD PTR [bp-0x8]
   2c630:	7f 03                	jg     0x2c635
   2c632:	e9 9d 01             	jmp    0x2c7d2
   2c635:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   2c639:	7d 03                	jge    0x2c63e
   2c63b:	e9 94 01             	jmp    0x2c7d2
   2c63e:	a0 ea b9             	mov    al,ds:0xb9ea
   2c641:	b4 00                	mov    ah,0x0
   2c643:	3b 46 f6             	cmp    ax,WORD PTR [bp-0xa]
   2c646:	7f 03                	jg     0x2c64b
   2c648:	e9 87 01             	jmp    0x2c7d2
   2c64b:	68 e0 01             	push   0x1e0
   2c64e:	68 41 03             	push   0x341
   2c651:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c654:	50                   	push   ax
   2c655:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c658:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c65b:	05 09 00             	add    ax,0x9
   2c65e:	99                   	cwd
   2c65f:	50                   	push   ax
   2c660:	52                   	push   dx
   2c661:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c665:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c668:	59                   	pop    cx
   2c669:	5b                   	pop    bx
   2c66a:	9a 77 14 00 00       	call   0x0:0x1477
   2c66f:	8b d8                	mov    bx,ax
   2c671:	8e c2                	mov    es,dx
   2c673:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c676:	04 23                	add    al,0x23
   2c678:	50                   	push   ax
   2c679:	a1 30 b7             	mov    ax,ds:0xb730
   2c67c:	bb 02 00             	mov    bx,0x2
   2c67f:	99                   	cwd
   2c680:	f7 fb                	idiv   bx
   2c682:	8b 16 12 b9          	mov    dx,WORD PTR ds:0xb912
   2c686:	2b d0                	sub    dx,ax
   2c688:	52                   	push   dx
   2c689:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2c68c:	6b db 12             	imul   bx,bx,0x12
   2c68f:	b8 88 01             	mov    ax,0x188
   2c692:	8e c0                	mov    es,ax
   2c694:	26 ff b7 60 b7       	push   WORD PTR es:[bx-0x48a0]
   2c699:	a1 30 b7             	mov    ax,ds:0xb730
   2c69c:	bb 02 00             	mov    bx,0x2
   2c69f:	99                   	cwd
   2c6a0:	f7 fb                	idiv   bx
   2c6a2:	40                   	inc    ax
   2c6a3:	50                   	push   ax
   2c6a4:	ff 36 2e b7          	push   WORD PTR ds:0xb72e
   2c6a8:	ff 36 1a b9          	push   WORD PTR ds:0xb91a
   2c6ac:	6a 00                	push   0x0
   2c6ae:	9a 30 04 28 00       	call   0x28:0x430
   2c6b3:	83 c4 14             	add    sp,0x14
   2c6b6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c6b9:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c6bc:	05 08 00             	add    ax,0x8
   2c6bf:	99                   	cwd
   2c6c0:	50                   	push   ax
   2c6c1:	52                   	push   dx
   2c6c2:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c6c6:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c6c9:	59                   	pop    cx
   2c6ca:	5b                   	pop    bx
   2c6cb:	9a 77 14 00 00       	call   0x0:0x1477
   2c6d0:	8b d8                	mov    bx,ax
   2c6d2:	8e c2                	mov    es,dx
   2c6d4:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   2c6d8:	74 6a                	je     0x2c744
   2c6da:	68 e0 01             	push   0x1e0
   2c6dd:	68 41 03             	push   0x341
   2c6e0:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c6e3:	50                   	push   ax
   2c6e4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c6e7:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c6ea:	05 08 00             	add    ax,0x8
   2c6ed:	99                   	cwd
   2c6ee:	50                   	push   ax
   2c6ef:	52                   	push   dx
   2c6f0:	8b 16 ee b9          	mov    dx,WORD PTR ds:0xb9ee
   2c6f4:	a1 ec b9             	mov    ax,ds:0xb9ec
   2c6f7:	59                   	pop    cx
   2c6f8:	5b                   	pop    bx
   2c6f9:	9a 77 14 00 00       	call   0x0:0x1477
   2c6fe:	8b d8                	mov    bx,ax
   2c700:	8e c2                	mov    es,dx
   2c702:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   2c705:	04 37                	add    al,0x37
   2c707:	50                   	push   ax
   2c708:	ff 36 48 b9          	push   WORD PTR ds:0xb948
   2c70c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2c70f:	6b db 12             	imul   bx,bx,0x12
   2c712:	b8 88 01             	mov    ax,0x188
   2c715:	8e c0                	mov    es,ax
   2c717:	26 ff b7 60 b7       	push   WORD PTR es:[bx-0x48a0]
   2c71c:	a1 30 b7             	mov    ax,ds:0xb730
   2c71f:	bb 02 00             	mov    bx,0x2
   2c722:	99                   	cwd
   2c723:	f7 fb                	idiv   bx
   2c725:	50                   	push   ax
   2c726:	ff 36 2e b7          	push   WORD PTR ds:0xb72e
   2c72a:	a1 30 b7             	mov    ax,ds:0xb730
   2c72d:	bb 02 00             	mov    bx,0x2
   2c730:	99                   	cwd
   2c731:	f7 fb                	idiv   bx
   2c733:	8b 16 50 b9          	mov    dx,WORD PTR ds:0xb950
   2c737:	2b d0                	sub    dx,ax
   2c739:	52                   	push   dx
   2c73a:	6a 00                	push   0x0
   2c73c:	9a 30 04 28 00       	call   0x28:0x430
   2c741:	83 c4 14             	add    sp,0x14
   2c744:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   2c747:	83 eb fe             	sub    bx,0xfffe
   2c74a:	83 fb 04             	cmp    bx,0x4
   2c74d:	76 03                	jbe    0x2c752
   2c74f:	e9 80 00             	jmp    0x2c7d2
   2c752:	d1 e3                	shl    bx,1
   2c754:	2e ff a7 bf 43       	jmp    WORD PTR cs:[bx+0x43bf]
   2c759:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c75c:	50                   	push   ax
   2c75d:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c760:	b4 00                	mov    ah,0x0
   2c762:	05 03 00             	add    ax,0x3
   2c765:	bb 04 00             	mov    bx,0x4
   2c768:	99                   	cwd
   2c769:	f7 fb                	idiv   bx
   2c76b:	52                   	push   dx
   2c76c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c76f:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c772:	50                   	push   ax
   2c773:	6a 21                	push   0x21
   2c775:	eb 54                	jmp    0x2c7cb
   2c777:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c77a:	50                   	push   ax
   2c77b:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c77e:	b4 00                	mov    ah,0x0
   2c780:	05 03 00             	add    ax,0x3
   2c783:	bb 04 00             	mov    bx,0x4
   2c786:	99                   	cwd
   2c787:	f7 fb                	idiv   bx
   2c789:	52                   	push   dx
   2c78a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c78d:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c790:	50                   	push   ax
   2c791:	6a 22                	push   0x22
   2c793:	eb 36                	jmp    0x2c7cb
   2c795:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c798:	50                   	push   ax
   2c799:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c79c:	b4 00                	mov    ah,0x0
   2c79e:	40                   	inc    ax
   2c79f:	bb 04 00             	mov    bx,0x4
   2c7a2:	99                   	cwd
   2c7a3:	f7 fb                	idiv   bx
   2c7a5:	52                   	push   dx
   2c7a6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c7a9:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c7ac:	50                   	push   ax
   2c7ad:	6a 23                	push   0x23
   2c7af:	eb 1a                	jmp    0x2c7cb
   2c7b1:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   2c7b4:	50                   	push   ax
   2c7b5:	a0 f0 b9             	mov    al,ds:0xb9f0
   2c7b8:	b4 00                	mov    ah,0x0
   2c7ba:	40                   	inc    ax
   2c7bb:	bb 04 00             	mov    bx,0x4
   2c7be:	99                   	cwd
   2c7bf:	f7 fb                	idiv   bx
   2c7c1:	52                   	push   dx
   2c7c2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   2c7c5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   2c7c8:	50                   	push   ax
   2c7c9:	6a 24                	push   0x24
   2c7cb:	0e                   	push   cs
   2c7cc:	e8 ca f5             	call   0x2bd99
   2c7cf:	83 c4 08             	add    sp,0x8
   2c7d2:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   2c7d6:	7e 09                	jle    0x2c7e1
   2c7d8:	b8 04 00             	mov    ax,0x4
   2c7db:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   2c7de:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   2c7e1:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   2c7e4:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   2c7e8:	7d 03                	jge    0x2c7ed
   2c7ea:	e9 cc fd             	jmp    0x2c5b9
   2c7ed:	c9                   	leave
   2c7ee:	cb                   	retf
