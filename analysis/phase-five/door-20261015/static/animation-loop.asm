
analysis/phase-five/door-20261015/static/animation-loop.bin:     file format binary


Disassembly of section .data:

000300fa <.data>:
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
