
analysis/phase-five/character-ui-20261015/otopark/surface-field-consumers.original.bin:     file format binary


Disassembly of section .data:

0002c1c1 <.data>:
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
