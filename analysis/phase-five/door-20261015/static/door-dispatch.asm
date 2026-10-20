
analysis/phase-five/door-20261015/static/door-dispatch.bin:     file format binary


Disassembly of section .data:

000321e0 <.data>:
   321e0:	a1 ec b9             	mov    ax,ds:0xb9ec
   321e3:	59                   	pop    cx
   321e4:	5b                   	pop    bx
   321e5:	9a 77 14 00 00       	call   0x0:0x1477
   321ea:	8b d8                	mov    bx,ax
   321ec:	8e c2                	mov    es,dx
   321ee:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   321f1:	b4 00                	mov    ah,0x0
   321f3:	d1 e0                	shl    ax,1
   321f5:	ba 88 01             	mov    dx,0x188
   321f8:	8b d8                	mov    bx,ax
   321fa:	8e c2                	mov    es,dx
   321fc:	26 83 bf 0e 9f 08    	cmp    WORD PTR es:[bx-0x60f2],0x8
   32202:	75 03                	jne    0x32207
   32204:	e9 0e 04             	jmp    0x32615
   32207:	b8 88 01             	mov    ax,0x188
   3220a:	8e c0                	mov    es,ax
   3220c:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   32210:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   32213:	74 03                	je     0x32218
   32215:	e9 fd 03             	jmp    0x32615
   32218:	b8 88 01             	mov    ax,0x188
   3221b:	8e c0                	mov    es,ax
   3221d:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   32221:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   32224:	74 03                	je     0x32229
   32226:	e9 ec 03             	jmp    0x32615
   32229:	b8 88 01             	mov    ax,0x188
   3222c:	8e c0                	mov    es,ax
   3222e:	26 c7 06 a8 bb 00 00 	mov    WORD PTR es:0xbba8,0x0
   32235:	6a 03                	push   0x3
   32237:	b8 88 01             	mov    ax,0x188
   3223a:	8e c0                	mov    es,ax
   3223c:	26 a0 eb b9          	mov    al,es:0xb9eb
   32240:	b4 00                	mov    ah,0x0
   32242:	ba 88 01             	mov    dx,0x188
   32245:	8e c2                	mov    es,dx
   32247:	50                   	push   ax
   32248:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3224c:	5a                   	pop    dx
   3224d:	f7 ea                	imul   dx
   3224f:	ba 88 01             	mov    dx,0x188
   32252:	8e c2                	mov    es,dx
   32254:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   32259:	03 d0                	add    dx,ax
   3225b:	6b d2 0f             	imul   dx,dx,0xf
   3225e:	52                   	push   dx
   3225f:	9a 20 00 30 01       	call   0x130:0x20
   32264:	83 c4 04             	add    sp,0x4
   32267:	b8 88 01             	mov    ax,0x188
   3226a:	8e c0                	mov    es,ax
   3226c:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   32272:	74 03                	je     0x32277
   32274:	e9 9e 03             	jmp    0x32615
   32277:	6a 01                	push   0x1
   32279:	b8 88 01             	mov    ax,0x188
   3227c:	8e c0                	mov    es,ax
   3227e:	26 a0 eb b9          	mov    al,es:0xb9eb
   32282:	b4 00                	mov    ah,0x0
   32284:	ba 88 01             	mov    dx,0x188
   32287:	8e c2                	mov    es,dx
   32289:	50                   	push   ax
   3228a:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3228e:	ba 88 01             	mov    dx,0x188
   32291:	8e c2                	mov    es,dx
   32293:	26 03 06 c4 b9       	add    ax,WORD PTR es:0xb9c4
   32298:	5a                   	pop    dx
   32299:	f7 ea                	imul   dx
   3229b:	ba 88 01             	mov    dx,0x188
   3229e:	8e c2                	mov    es,dx
   322a0:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   322a5:	bb 88 01             	mov    bx,0x188
   322a8:	8e c3                	mov    es,bx
   322aa:	26 03 16 c6 b9       	add    dx,WORD PTR es:0xb9c6
   322af:	03 d0                	add    dx,ax
   322b1:	6b d2 0f             	imul   dx,dx,0xf
   322b4:	52                   	push   dx
   322b5:	9a 20 00 30 01       	call   0x130:0x20
   322ba:	83 c4 04             	add    sp,0x4
   322bd:	b8 88 01             	mov    ax,0x188
   322c0:	8e c0                	mov    es,ax
   322c2:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   322c8:	74 03                	je     0x322cd
   322ca:	e9 48 03             	jmp    0x32615
   322cd:	b8 88 01             	mov    ax,0x188
   322d0:	8e c0                	mov    es,ax
   322d2:	26 a0 f0 b9          	mov    al,es:0xb9f0
   322d6:	b4 00                	mov    ah,0x0
   322d8:	bb 04 00             	mov    bx,0x4
   322db:	99                   	cwd
   322dc:	f7 fb                	idiv   bx
   322de:	d1 e2                	shl    dx,1
   322e0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   322e3:	03 c2                	add    ax,dx
   322e5:	99                   	cwd
   322e6:	bb 88 01             	mov    bx,0x188
   322e9:	8e c3                	mov    es,bx
   322eb:	50                   	push   ax
   322ec:	52                   	push   dx
   322ed:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   322f2:	26 a1 ec b9          	mov    ax,es:0xb9ec
   322f6:	59                   	pop    cx
   322f7:	5b                   	pop    bx
   322f8:	9a 77 14 00 00       	call   0x0:0x1477
   322fd:	8b d8                	mov    bx,ax
   322ff:	8e c2                	mov    es,dx
   32301:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   32304:	b4 00                	mov    ah,0x0
   32306:	48                   	dec    ax
   32307:	50                   	push   ax
   32308:	9a bb 00 10 01       	call   0x110:0xbb
   3230d:	e9 01 03             	jmp    0x32611
   32310:	e9 02 03             	jmp    0x32615
   32313:	6a 03                	push   0x3
   32315:	9a c5 00 10 01       	call   0x110:0xc5
   3231a:	59                   	pop    cx
   3231b:	b8 88 01             	mov    ax,0x188
   3231e:	8e c0                	mov    es,ax
   32320:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   32324:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   32327:	74 03                	je     0x3232c
   32329:	e9 e9 02             	jmp    0x32615
   3232c:	b8 88 01             	mov    ax,0x188
   3232f:	8e                   	.byte 0x8e
