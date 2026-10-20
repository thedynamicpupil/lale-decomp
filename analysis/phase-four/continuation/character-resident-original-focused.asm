
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00011242 <.data+0x1242>:
   11242:	56                   	push   si
   11243:	96                   	xchg   si,ax
   11244:	92                   	xchg   dx,ax
   11245:	85 c0                	test   ax,ax
   11247:	74 02                	je     0x1124b
   11249:	f7 e3                	mul    bx
   1124b:	e3 05                	jcxz   0x11252
   1124d:	91                   	xchg   cx,ax
   1124e:	f7 e6                	mul    si
   11250:	03 c1                	add    ax,cx
   11252:	96                   	xchg   si,ax
   11253:	f7 e3                	mul    bx
   11255:	03 d6                	add    dx,si
   11257:	5e                   	pop    si
   11258:	cb                   	retf
   11259:	51                   	push   cx
   1125a:	8a e8                	mov    ch,al
   1125c:	b1 04                	mov    cl,0x4
   1125e:	d3 e8                	shr    ax,cl
   11260:	03 d0                	add    dx,ax
   11262:	8a c5                	mov    al,ch
   11264:	8a e3                	mov    ah,bl
   11266:	d3 eb                	shr    bx,cl
   11268:	59                   	pop    cx
   11269:	03 cb                	add    cx,bx
   1126b:	8a dc                	mov    bl,ah
   1126d:	25 0f 00             	and    ax,0xf
   11270:	83 e3 0f             	and    bx,0xf
   11273:	3b d1                	cmp    dx,cx
   11275:	75 02                	jne    0x11279
   11277:	3b c3                	cmp    ax,bx
   11279:	cb                   	retf
   1127a:	55                   	push   bp
   1127b:	8b ec                	mov    bp,sp
   1127d:	56                   	push   si
   1127e:	57                   	push   di
   1127f:	1e                   	push   ds
   11280:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   11283:	c4 7e 0a             	les    di,DWORD PTR [bp+0xa]
   11286:	fc                   	cld
   11287:	d1 e9                	shr    cx,1
   11289:	f3 a5                	rep movs WORD PTR es:[di],WORD PTR ds:[si]
   1128b:	13 c9                	adc    cx,cx
   1128d:	f3 a4                	rep movs BYTE PTR es:[di],BYTE PTR ds:[si]
   1128f:	1f                   	pop    ds
   11290:	5f                   	pop    di
   11291:	5e                   	pop    si
   11292:	5d                   	pop    bp
   11293:	ca 08 00             	retf   0x8

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

000112dc <.data+0x12dc>:
   112dc:	59                   	pop    cx
   112dd:	0e                   	push   cs
   112de:	51                   	push   cx
   112df:	33 c9                	xor    cx,cx
   112e1:	eb 16                	jmp    0x112f9
   112e3:	59                   	pop    cx
   112e4:	0e                   	push   cs
   112e5:	51                   	push   cx
   112e6:	b9 01 00             	mov    cx,0x1
   112e9:	eb 0e                	jmp    0x112f9
   112eb:	59                   	pop    cx
   112ec:	0e                   	push   cs
   112ed:	51                   	push   cx
   112ee:	b9 02 00             	mov    cx,0x2
   112f1:	eb 06                	jmp    0x112f9
   112f3:	59                   	pop    cx
   112f4:	0e                   	push   cs
   112f5:	51                   	push   cx
   112f6:	b9 03 00             	mov    cx,0x3
   112f9:	55                   	push   bp
   112fa:	56                   	push   si
   112fb:	57                   	push   di
   112fc:	8b ec                	mov    bp,sp
   112fe:	8b f9                	mov    di,cx
   11300:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   11303:	8b 56 0c             	mov    dx,WORD PTR [bp+0xc]
   11306:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
   11309:	8b 4e 10             	mov    cx,WORD PTR [bp+0x10]
   1130c:	0b c9                	or     cx,cx
   1130e:	75 08                	jne    0x11318
   11310:	0b d2                	or     dx,dx
   11312:	74 69                	je     0x1137d
   11314:	0b db                	or     bx,bx
   11316:	74 65                	je     0x1137d
   11318:	f7 c7 01 00          	test   di,0x1
   1131c:	75 1c                	jne    0x1133a
   1131e:	0b d2                	or     dx,dx
   11320:	79 0a                	jns    0x1132c
   11322:	f7 da                	neg    dx
   11324:	f7 d8                	neg    ax
   11326:	83 da 00             	sbb    dx,0x0
   11329:	83 cf 0c             	or     di,0xc
   1132c:	0b c9                	or     cx,cx
   1132e:	79 0a                	jns    0x1133a
   11330:	f7 d9                	neg    cx
   11332:	f7 db                	neg    bx
   11334:	83 d9 00             	sbb    cx,0x0
   11337:	83 f7 04             	xor    di,0x4
   1133a:	8b e9                	mov    bp,cx
   1133c:	b9 20 00             	mov    cx,0x20
   1133f:	57                   	push   di
   11340:	33 ff                	xor    di,di
   11342:	33 f6                	xor    si,si
   11344:	d1 e0                	shl    ax,1
   11346:	d1 d2                	rcl    dx,1
   11348:	d1 d6                	rcl    si,1
   1134a:	d1 d7                	rcl    di,1
   1134c:	3b fd                	cmp    di,bp
   1134e:	72 0b                	jb     0x1135b
   11350:	77 04                	ja     0x11356
   11352:	3b f3                	cmp    si,bx
   11354:	72 05                	jb     0x1135b
   11356:	2b f3                	sub    si,bx
   11358:	1b fd                	sbb    di,bp
   1135a:	40                   	inc    ax
   1135b:	e2 e7                	loop   0x11344
   1135d:	5b                   	pop    bx
   1135e:	f7 c3 02 00          	test   bx,0x2
   11362:	74 06                	je     0x1136a
   11364:	8b c6                	mov    ax,si
   11366:	8b d7                	mov    dx,di
   11368:	d1 eb                	shr    bx,1
   1136a:	f7 c3 04 00          	test   bx,0x4
   1136e:	74 07                	je     0x11377
   11370:	f7 da                	neg    dx
   11372:	f7 d8                	neg    ax
   11374:	83 da 00             	sbb    dx,0x0
   11377:	5f                   	pop    di
   11378:	5e                   	pop    si
   11379:	5d                   	pop    bp
   1137a:	ca 08 00             	retf   0x8
   1137d:	f7 f3                	div    bx
   1137f:	f7 c7 02 00          	test   di,0x2
   11383:	74 01                	je     0x11386
   11385:	92                   	xchg   dx,ax
   11386:	33 d2                	xor    dx,dx
   11388:	eb ed                	jmp    0x11377
   1138a:	5b                   	pop    bx
   1138b:	0e                   	push   cs
   1138c:	53                   	push   bx
   1138d:	80 f9 10             	cmp    cl,0x10
   11390:	73 10                	jae    0x113a2
   11392:	8b d8                	mov    bx,ax
   11394:	d3 e0                	shl    ax,cl
   11396:	d3 e2                	shl    dx,cl
   11398:	f6 d9                	neg    cl
   1139a:	80 c1 10             	add    cl,0x10
   1139d:	d3 eb                	shr    bx,cl
   1139f:	0b d3                	or     dx,bx
   113a1:	cb                   	retf
   113a2:	80 e9 10             	sub    cl,0x10
   113a5:	92                   	xchg   dx,ax
   113a6:	33 c0                	xor    ax,ax
   113a8:	d3 e2                	shl    dx,cl
   113aa:	cb                   	retf
   113ab:	5b                   	pop    bx
   113ac:	0e                   	push   cs
   113ad:	53                   	push   bx
   113ae:	80 f9 10             	cmp    cl,0x10
   113b1:	73 10                	jae    0x113c3
   113b3:	8b da                	mov    bx,dx
   113b5:	d3 e8                	shr    ax,cl
   113b7:	d3 fa                	sar    dx,cl
   113b9:	f6 d9                	neg    cl
   113bb:	80 c1 10             	add    cl,0x10
   113be:	d3 e3                	shl    bx,cl
   113c0:	0b c3                	or     ax,bx
   113c2:	cb                   	retf
   113c3:	80 e9 10             	sub    cl,0x10
   113c6:	92                   	xchg   dx,ax
   113c7:	99                   	cwd
   113c8:	d3 f8                	sar    ax,cl
   113ca:	cb                   	retf
   113cb:	5b                   	pop    bx
   113cc:	0e                   	push   cs
   113cd:	53                   	push   bx
   113ce:	80 f9 10             	cmp    cl,0x10
   113d1:	73 10                	jae    0x113e3
   113d3:	8b da                	mov    bx,dx
   113d5:	d3 e8                	shr    ax,cl
   113d7:	d3 ea                	shr    dx,cl
   113d9:	f6 d9                	neg    cl
   113db:	80 c1 10             	add    cl,0x10
   113de:	d3 e3                	shl    bx,cl
   113e0:	0b c3                	or     ax,bx
   113e2:	cb                   	retf
   113e3:	80 e9 10             	sub    cl,0x10
   113e6:	92                   	xchg   dx,ax
   113e7:	33 d2                	xor    dx,dx
   113e9:	d3 e8                	shr    ax,cl
   113eb:	cb                   	retf
   113ec:	07                   	pop    es
   113ed:	0e                   	push   cs
   113ee:	06                   	push   es
   113ef:	8e c2                	mov    es,dx
   113f1:	93                   	xchg   bx,ax
   113f2:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   113f6:	53                   	push   bx
   113f7:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
   113fa:	0b c9                	or     cx,cx
   113fc:	7d 0c                	jge    0x1140a
   113fe:	f7 d0                	not    ax
   11400:	f7 d1                	not    cx
   11402:	05 01 00             	add    ax,0x1
   11405:	83 d1 00             	adc    cx,0x0
   11408:	eb 44                	jmp    0x1144e
   1140a:	03 d8                	add    bx,ax
   1140c:	73 04                	jae    0x11412
   1140e:	81 c2 00 10          	add    dx,0x1000
   11412:	8a e1                	mov    ah,cl
   11414:	b1 04                	mov    cl,0x4
   11416:	d2 e4                	shl    ah,cl
   11418:	32 c0                	xor    al,al
   1141a:	03 d0                	add    dx,ax
   1141c:	8a eb                	mov    ch,bl
   1141e:	d3 eb                	shr    bx,cl
   11420:	03 d3                	add    dx,bx
   11422:	8a c5                	mov    al,ch
   11424:	25 0f 00             	and    ax,0xf
   11427:	5b                   	pop    bx
   11428:	26 89 07             	mov    WORD PTR es:[bx],ax
   1142b:	26 89 57 02          	mov    WORD PTR es:[bx+0x2],dx
   1142f:	cb                   	retf
   11430:	07                   	pop    es
   11431:	0e                   	push   cs
   11432:	06                   	push   es
   11433:	8e c2                	mov    es,dx
   11435:	93                   	xchg   bx,ax
   11436:	26 8b 57 02          	mov    dx,WORD PTR es:[bx+0x2]
   1143a:	53                   	push   bx
   1143b:	26 8b 1f             	mov    bx,WORD PTR es:[bx]
   1143e:	0b c9                	or     cx,cx
   11440:	7d 0c                	jge    0x1144e
   11442:	f7 d0                	not    ax
   11444:	f7 d1                	not    cx
   11446:	05 01 00             	add    ax,0x1
   11449:	83 d1 00             	adc    cx,0x0
   1144c:	eb bc                	jmp    0x1140a
   1144e:	2b d8                	sub    bx,ax
   11450:	73 04                	jae    0x11456
   11452:	81 ea 00 10          	sub    dx,0x1000
   11456:	8a e1                	mov    ah,cl
   11458:	b1 04                	mov    cl,0x4
   1145a:	d2 e4                	shl    ah,cl
   1145c:	32 c0                	xor    al,al
   1145e:	2b d0                	sub    dx,ax
   11460:	8a eb                	mov    ch,bl
   11462:	d3 eb                	shr    bx,cl
   11464:	03 d3                	add    dx,bx
   11466:	8a c5                	mov    al,ch
   11468:	25               	and    ax,0xf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00011f3f <.data+0x1f3f>:
   11f3f:	55                   	push   bp
   11f40:	8b ec                	mov    bp,sp
   11f42:	32 c0                	xor    al,al
   11f44:	8a 66 06             	mov    ah,BYTE PTR [bp+0x6]
   11f47:	cd 16                	int    0x16
   11f49:	74 0f                	je     0x11f5a
   11f4b:	f6 46 06 01          	test   BYTE PTR [bp+0x6],0x1
   11f4f:	74 11                	je     0x11f62
   11f51:	0b c0                	or     ax,ax
   11f53:	75 0d                	jne    0x11f62
   11f55:	b8 ff ff             	mov    ax,0xffff
   11f58:	eb 08                	jmp    0x11f62
   11f5a:	f6 46 06 01          	test   BYTE PTR [bp+0x6],0x1
   11f5e:	74 02                	je     0x11f62
   11f60:	33 c0                	xor    ax,ax
   11f62:	5d                   	pop    bp
   11f63:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

000148f7 <.data+0x48f7>:
   148f7:	55                   	push   bp
   148f8:	8b ec                	mov    bp,sp
   148fa:	56                   	push   si
   148fb:	57                   	push   di
   148fc:	fc                   	cld
   148fd:	1e                   	push   ds
   148fe:	c4 7e 06             	les    di,DWORD PTR [bp+0x6]
   14901:	8b d7                	mov    dx,di
   14903:	32 c0                	xor    al,al
   14905:	b9 ff ff             	mov    cx,0xffff
   14908:	f2 ae                	repnz scas al,BYTE PTR es:[di]
   1490a:	06                   	push   es
   1490b:	8d 75 ff             	lea    si,[di-0x1]
   1490e:	c4 7e 0a             	les    di,DWORD PTR [bp+0xa]
   14911:	b9 ff ff             	mov    cx,0xffff
   14914:	f2 ae                	repnz scas al,BYTE PTR es:[di]
   14916:	f7 d1                	not    cx
   14918:	2b f9                	sub    di,cx
   1491a:	06                   	push   es
   1491b:	1f                   	pop    ds
   1491c:	07                   	pop    es
   1491d:	87 f7                	xchg   di,si
   1491f:	f7 c6 01 00          	test   si,0x1
   14923:	74 02                	je     0x14927
   14925:	a4                   	movs   BYTE PTR es:[di],BYTE PTR ds:[si]
   14926:	49                   	dec    cx
   14927:	d1 e9                	shr    cx,1
   14929:	f3 a5                	rep movs WORD PTR es:[di],WORD PTR ds:[si]
   1492b:	73 01                	jae    0x1492e
   1492d:	a4                   	movs   BYTE PTR es:[di],BYTE PTR ds:[si]
   1492e:	92                   	xchg   dx,ax
   1492f:	8c c2                	mov    dx,es
   14931:	1f                   	pop    ds
   14932:	5f                   	pop    di
   14933:	5e                   	pop    si
   14934:	5d                   	pop    bp
   14935:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

0001537a <.data+0x537a>:
   1537a:	55                   	push   bp
   1537b:	8b ec                	mov    bp,sp
   1537d:	56                   	push   si
   1537e:	57                   	push   di
   1537f:	fc                   	cld
   15380:	c4 7e 0a             	les    di,DWORD PTR [bp+0xa]
   15383:	8b f7                	mov    si,di
   15385:	32 c0                	xor    al,al
   15387:	b9 ff ff             	mov    cx,0xffff
   1538a:	f2 ae                	repnz scas al,BYTE PTR es:[di]
   1538c:	f7 d1                	not    cx
   1538e:	1e                   	push   ds
   1538f:	8c c0                	mov    ax,es
   15391:	8e d8                	mov    ds,ax
   15393:	c4 7e 06             	les    di,DWORD PTR [bp+0x6]
   15396:	f3 a4                	rep movs BYTE PTR es:[di],BYTE PTR ds:[si]
   15398:	1f                   	pop    ds
   15399:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   1539c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   1539f:	5f                   	pop    di
   153a0:	5e                   	pop    si
   153a1:	5d                   	pop    bp
   153a2:	cb                   	retf

analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00035c60 <.data+0x25c60>:
   35c60:	c8 18 00 00          	enter  0x18,0x0
   35c64:	1e                   	push   ds
   35c65:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   35c68:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   35c6b:	f7 66 0c             	mul    WORD PTR [bp+0xc]
   35c6e:	83 fa 00             	cmp    dx,0x0
   35c71:	75 59                	jne    0x35ccc
   35c73:	90                   	nop
   35c74:	90                   	nop
   35c75:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   35c78:	03 f0                	add    si,ax
   35c7a:	72 50                	jb     0x35ccc
   35c7c:	90                   	nop
   35c7d:	90                   	nop
   35c7e:	c4 7e 14             	les    di,DWORD PTR [bp+0x14]
   35c81:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
   35c84:	f7 66 1a             	mul    WORD PTR [bp+0x1a]
   35c87:	83 fa 00             	cmp    dx,0x0
   35c8a:	75 40                	jne    0x35ccc
   35c8c:	90                   	nop
   35c8d:	90                   	nop
   35c8e:	03 46 18             	add    ax,WORD PTR [bp+0x18]
   35c91:	03 f8                	add    di,ax
   35c93:	72 37                	jb     0x35ccc
   35c95:	90                   	nop
   35c96:	90                   	nop
   35c97:	8b 56 12             	mov    dx,WORD PTR [bp+0x12]
   35c9a:	2b 56 0e             	sub    dx,WORD PTR [bp+0xe]
   35c9d:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
   35ca0:	2b 46 0e             	sub    ax,WORD PTR [bp+0xe]
   35ca3:	fc                   	cld
   35ca4:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
   35ca7:	83 fb 00             	cmp    bx,0x0
   35caa:	74 1a                	je     0x35cc6
   35cac:	90                   	nop
   35cad:	90                   	nop
   35cae:	8b 4e 0e             	mov    cx,WORD PTR [bp+0xe]
   35cb1:	83 e1 03             	and    cx,0x3
   35cb4:	f3 a4                	rep movs BYTE PTR es:[di],BYTE PTR ds:[si]
   35cb6:	8b 4e 0e             	mov    cx,WORD PTR [bp+0xe]
   35cb9:	c1 e9 02             	shr    cx,0x2
   35cbc:	f3 66 a5             	rep movs DWORD PTR es:[di],DWORD PTR ds:[si]
   35cbf:	03 f2                	add    si,dx
   35cc1:	03 f8                	add    di,ax
   35cc3:	4b                   	dec    bx
   35cc4:	75 e8                	jne    0x35cae
   35cc6:	b8 ff ff             	mov    ax,0xffff
   35cc9:	1f                   	pop    ds
   35cca:	c9                   	leave
   35ccb:	cb                   	retf
   35ccc:	1f                   	pop    ds
   35ccd:	33 c0                	xor    ax,ax
   35ccf:	c9                   	leave
   35cd0:	cb                   	retf
   35cd1:	c8 1c 00 00          	enter  0x1c,0x0
   35cd5:	1e                   	push   ds
   35cd6:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   35cd9:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   35cdc:	f7 66 0c             	mul    WORD PTR [bp+0xc]
   35cdf:	83 fa 00             	cmp    dx,0x0
   35ce2:	75 6a                	jne    0x35d4e
   35ce4:	90                   	nop
   35ce5:	90                   	nop
   35ce6:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   35ce9:	03 f0                	add    si,ax
   35ceb:	72 61                	jb     0x35d4e
   35ced:	90                   	nop
   35cee:	90                   	nop
   35cef:	c4 7e 14             	les    di,DWORD PTR [bp+0x14]
   35cf2:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
   35cf5:	f7 66 1a             	mul    WORD PTR [bp+0x1a]
   35cf8:	83 fa 00             	cmp    dx,0x0
   35cfb:	75 51                	jne    0x35d4e
   35cfd:	90                   	nop
   35cfe:	90                   	nop
   35cff:	03 46 18             	add    ax,WORD PTR [bp+0x18]
   35d02:	03 f8                	add    di,ax
   35d04:	72 48                	jb     0x35d4e
   35d06:	90                   	nop
   35d07:	90                   	nop
   35d08:	8b 56 12             	mov    dx,WORD PTR [bp+0x12]
   35d0b:	2b 56 0e             	sub    dx,WORD PTR [bp+0xe]
   35d0e:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
   35d11:	2b 46 0e             	sub    ax,WORD PTR [bp+0xe]
   35d14:	66 c1 c8 10          	ror    eax,0x10
   35d18:	fc                   	cld
   35d19:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
   35d1c:	83 fb 00             	cmp    bx,0x0
   35d1f:	74 27                	je     0x35d48
   35d21:	90                   	nop
   35d22:	90                   	nop
   35d23:	8a 66 1e             	mov    ah,BYTE PTR [bp+0x1e]
   35d26:	8b 4e 0e             	mov    cx,WORD PTR [bp+0xe]
   35d29:	8a 04                	mov    al,BYTE PTR [si]
   35d2b:	46                   	inc    si
   35d2c:	3a c4                	cmp    al,ah
   35d2e:	74 05                	je     0x35d35
   35d30:	90                   	nop
   35d31:	90                   	nop
   35d32:	26 88 05             	mov    BYTE PTR es:[di],al
   35d35:	47                   	inc    di
   35d36:	49                   	dec    cx
   35d37:	75 f0                	jne    0x35d29
   35d39:	03 f2                	add    si,dx
   35d3b:	66 c1 c8 10          	ror    eax,0x10
   35d3f:	03 f8                	add    di,ax
   35d41:	66 c1 c8 10          	ror    eax,0x10
   35d45:	4b                   	dec    bx
   35d46:	75 de                	jne    0x35d26
   35d48:	1f                   	pop    ds
   35d49:	b8 ff ff             	mov    ax,0xffff
   35d4c:	c9                   	leave
   35d4d:	cb                   	retf
   35d4e:	5e                   	pop    si
   35d4f:	1f                   	pop    ds
   35d50:	33 c0                	xor    ax,ax
   35d52:	c9                   	leave
   35d53:	cb                   	retf
   35d54:	c8 1c 00 00          	enter  0x1c,0x0
   35d58:	1e                   	push   ds
   35d59:	c5 76 06             	lds    si,DWORD PTR [bp+0x6]
   35d5c:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   35d5f:	f7 66 0c             	mul    WORD PTR [bp+0xc]
   35d62:	83 fa 00             	cmp    dx,0x0
   35d65:	75 64                	jne    0x35dcb
   35d67:	90                   	nop
   35d68:	90                   	nop
   35d69:	03 46 0a             	add    ax,WORD PTR [bp+0xa]
   35d6c:	03 f0                	add    si,ax
   35d6e:	72 5b                	jb     0x35dcb
   35d70:	90                   	nop
   35d71:	90                   	nop
   35d72:	c4 7e 14             	les    di,DWORD PTR [bp+0x14]
   35d75:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
   35d78:	f7 66 1a             	mul    WORD PTR [bp+0x1a]
   35d7b:	83 fa 00             	cmp    dx,0x0
   35d7e:	75 4b                	jne    0x35dcb
   35d80:	90                   	nop
   35d81:	90                   	nop
   35d82:	03 46 18             	add    ax,WORD PTR [bp+0x18]
   35d85:	03 f8                	add    di,ax
   35d87:	72 42                	jb     0x35dcb
   35d89:	90                   	nop
   35d8a:	90                   	nop
   35d8b:	8b 56 12             	mov    dx,WORD PTR [bp+0x12]
   35d8e:	2b 56 0e             	sub    dx,WORD PTR [bp+0xe]
   35d91:	fc                   	cld
   35d92:	8b 5e 10             	mov    bx,WORD PTR [bp+0x10]
   35d95:	83 fb 00             	cmp    bx,0x0
   35d98:	74 2b                	je     0x35dc5
   35d9a:	90                   	nop
   35d9b:	90                   	nop
   35d9c:	83 7e 0e 00          	cmp    WORD PTR [bp+0xe],0x0
   35da0:	74 23                	je     0x35dc5
   35da2:	90                   	nop
   35da3:	90                   	nop
   35da4:	8a 66 1e             	mov    ah,BYTE PTR [bp+0x1e]
   35da7:	4f                   	dec    di
   35da8:	8b 4e 0e             	mov    cx,WORD PTR [bp+0xe]
   35dab:	03 f9                	add    di,cx
   35dad:	8a 04                	mov    al,BYTE PTR [si]
   35daf:	46                   	inc    si
   35db0:	3a c4                	cmp    al,ah
   35db2:	74 05                	je     0x35db9
   35db4:	90                   	nop
   35db5:	90                   	nop
   35db6:	26 88 05             	mov    BYTE PTR es:[di],al
   35db9:	4f                   	dec    di
   35dba:	49                   	dec    cx
   35dbb:	75 f0                	jne    0x35dad
   35dbd:	03 f2                	add    si,dx
   35dbf:	03 7e 1c             	add    di,WORD PTR [bp+0x1c]
   35dc2:	4b                   	dec    bx
   35dc3:	75 e3                	jne    0x35da8
   35dc5:	b8 ff ff             	mov    ax,0xffff
   35dc8:	1f                   	pop    ds
   35dc9:	c9                   	leave
   35dca:	cb                   	retf
   35dcb:	1f                   	pop    ds
   35dcc:	33 c0                	xor    ax,ax
   35dce:	c9                   	leave
   35dcf:	cb                   	retf
