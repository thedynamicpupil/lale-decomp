
analysis/phase-five/area-fields-20261015/area/encounter-opcode8.bin:     file format binary


Disassembly of section .data:

00044184 <.data>:
   44184:	90                   	nop
   44185:	0e                   	push   cs
   44186:	e8 4a 43             	call   0x484d3
   44189:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4418e:	eb 19                	jmp    0x441a9
   44190:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   44193:	6b db 06             	imul   bx,bx,0x6
   44196:	33 c0                	xor    ax,ax
   44198:	89 87 dc 5b          	mov    WORD PTR [bx+0x5bdc],ax
   4419c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4419f:	6b db 06             	imul   bx,bx,0x6
   441a2:	89 87 da 5b          	mov    WORD PTR [bx+0x5bda],ax
   441a6:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   441a9:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   441ad:	7e e1                	jle    0x44190
   441af:	90                   	nop
   441b0:	0e                   	push   cs
   441b1:	e8 1f 43             	call   0x484d3
   441b4:	b4 00                	mov    ah,0x0
   441b6:	a3 e0 5b             	mov    ds:0x5be0,ax
   441b9:	90                   	nop
   441ba:	0e                   	push   cs
   441bb:	e8 15 43             	call   0x484d3
   441be:	b4 00                	mov    ah,0x0
   441c0:	a3 e2 5b             	mov    ds:0x5be2,ax
   441c3:	90                   	nop
   441c4:	0e                   	push   cs
   441c5:	e8 0b 43             	call   0x484d3
   441c8:	b4 00                	mov    ah,0x0
   441ca:	a3 e6 5b             	mov    ds:0x5be6,ax
   441cd:	90                   	nop
   441ce:	0e                   	push   cs
   441cf:	e8 01 43             	call   0x484d3
   441d2:	b4 00                	mov    ah,0x0
   441d4:	a3 e8 5b             	mov    ds:0x5be8,ax
   441d7:	90                   	nop
   441d8:	0e                   	push   cs
   441d9:	e8 f7 42             	call   0x484d3
   441dc:	b4 00                	mov    ah,0x0
   441de:	a3 ec 5b             	mov    ds:0x5bec,ax
   441e1:	90                   	nop
   441e2:	0e                   	push   cs
   441e3:	e8 ed 42             	call   0x484d3
   441e6:	b4 00                	mov    ah,0x0
   441e8:	a3 ee 5b             	mov    ds:0x5bee,ax
   441eb:	83 3e e2 5b 00       	cmp    WORD PTR ds:0x5be2,0x0
   441f0:	74 03                	je     0x441f5
   441f2:	e9 d3 00             	jmp    0x442c8
   441f5:	83 3e e0 5b 00       	cmp    WORD PTR ds:0x5be0,0x0
   441fa:	74 03                	je     0x441ff
   441fc:	e9 c9 00             	jmp    0x442c8
   441ff:	83 3e e8 5b 00       	cmp    WORD PTR ds:0x5be8,0x0
   44204:	74 03                	je     0x44209
   44206:	e9 bf 00             	jmp    0x442c8
   44209:	83 3e e6 5b 00       	cmp    WORD PTR ds:0x5be6,0x0
   4420e:	74 03                	je     0x44213
   44210:	e9 b5 00             	jmp    0x442c8
   44213:	83 3e ee 5b 00       	cmp    WORD PTR ds:0x5bee,0x0
   44218:	74 03                	je     0x4421d
   4421a:	e9 ab 00             	jmp    0x442c8
   4421d:	83 3e ec 5b 00       	cmp    WORD PTR ds:0x5bec,0x0
   44222:	74 03                	je     0x44227
   44224:	e9 a1 00             	jmp    0x442c8
   44227:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   4422c:	e9 90 00             	jmp    0x442bf
   4422f:	1e                   	push   ds
   44230:	68 04 5f             	push   0x5f04
   44233:	68 a7 01             	push   0x1a7
   44236:	68 88 01             	push   0x188
   44239:	68 26 de             	push   0xde26
   4423c:	9a 81 0a 20 00       	call   0x20:0xa81
   44241:	83 c4 0a             	add    sp,0xa
   44244:	b8 88 01             	mov    ax,0x188
   44247:	8e c0                	mov    es,ax
   44249:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   4424e:	26 ff 37             	push   WORD PTR es:[bx]
   44251:	6a 00                	push   0x0
   44253:	68 00 80             	push   0x8000
   44256:	9a 79 17 00 00       	call   0x0:0x1779
   4425b:	99                   	cwd
   4425c:	b1 03                	mov    cl,0x3
   4425e:	9a 8d 13 00 00       	call   0x0:0x138d
   44263:	52                   	push   dx
   44264:	50                   	push   ax
   44265:	9a df 12 00 00       	call   0x0:0x12df
   4426a:	05 1c 00             	add    ax,0x1c
   4426d:	99                   	cwd
   4426e:	52                   	push   dx
   4426f:	50                   	push   ax
   44270:	6a 01                	push   0x1
   44272:	9a 88 06 98 00       	call   0x98:0x688
   44277:	8b d8                	mov    bx,ax
   44279:	8e c2                	mov    es,dx
   4427b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   4427e:	b4 00                	mov    ah,0x0
   44280:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44283:	6b db 06             	imul   bx,bx,0x6
   44286:	89 87 da 5b          	mov    WORD PTR [bx+0x5bda],ax
   4428a:	68 88 01             	push   0x188
   4428d:	68 26 de             	push   0xde26
   44290:	9a 22 0b 20 00       	call   0x20:0xb22
   44295:	83 c4 04             	add    sp,0x4
   44298:	6a 00                	push   0x0
   4429a:	68 00 80             	push   0x8000
   4429d:	9a 79 17 00 00       	call   0x0:0x1779
   442a2:	99                   	cwd
   442a3:	b1 03                	mov    cl,0x3
   442a5:	9a 8d 13 00 00       	call   0x0:0x138d
   442aa:	52                   	push   dx
   442ab:	50                   	push   ax
   442ac:	9a df 12 00 00       	call   0x0:0x12df
   442b1:	40                   	inc    ax
   442b2:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442b5:	6b db 06             	imul   bx,bx,0x6
   442b8:	89 87 dc 5b          	mov    WORD PTR [bx+0x5bdc],ax
   442bc:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   442bf:	83 7e f8 03          	cmp    WORD PTR [bp-0x8],0x3
   442c3:	7f 03                	jg     0x442c8
   442c5:	e9 67 ff             	jmp    0x4422f
   442c8:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   442cd:	eb 3f                	jmp    0x4430e
   442cf:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442d2:	6b db 06             	imul   bx,bx,0x6
   442d5:	8b 87 da 5b          	mov    ax,WORD PTR [bx+0x5bda]
   442d9:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442dc:	6b db 06             	imul   bx,bx,0x6
   442df:	89 87 f2 5b          	mov    WORD PTR [bx+0x5bf2],ax
   442e3:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442e6:	6b db 06             	imul   bx,bx,0x6
   442e9:	8b 87 dc 5b          	mov    ax,WORD PTR [bx+0x5bdc]
   442ed:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442f0:	6b db 06             	imul   bx,bx,0x6
   442f3:	89 87 f4 5b          	mov    WORD PTR [bx+0x5bf4],ax
   442f7:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   442fa:	6b db 06             	imul   bx,bx,0x6
   442fd:	8b 87 d8 5b          	mov    ax,WORD PTR [bx+0x5bd8]
   44301:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44304:	6b db 06             	imul   bx,bx,0x6
   44307:	89 87 f0 5b          	mov    WORD PTR [bx+0x5bf0],ax
   4430b:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   4430e:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   44312:	7d bb                	jge    0x442cf
   44314:	6a 28                	push   0x28
   44316:	9a ca 2d 10 00       	call   0x10:0x2dca
   4431b:	59                   	pop    cx
   4431c:	9a 66 00 10 01       	call   0x110:0x66
   44321:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   44326:	e9 aa 00             	jmp    0x443d3
   44329:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4432c:	6b db 06             	imul   bx,bx,0x6
   4432f:	8b 87 f2 5b          	mov    ax,WORD PTR [bx+0x5bf2]
   44333:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44336:	6b db 06             	imul   bx,bx,0x6
   44339:	3b 87 da 5b          	cmp    ax,WORD PTR [bx+0x5bda]
   4433d:	75 2c                	jne    0x4436b
   4433f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44342:	6b db 06             	imul   bx,bx,0x6
   44345:	8b 87 f4 5b          	mov    ax,WORD PTR [bx+0x5bf4]
   44349:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4434c:	6b db 06             	imul   bx,bx,0x6
   4434f:	3b 87 dc 5b          	cmp    ax,WORD PTR [bx+0x5bdc]
   44353:	75 16                	jne    0x4436b
   44355:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44358:	6b db 06             	imul   bx,bx,0x6
   4435b:	8b 87 f0 5b          	mov    ax,WORD PTR [bx+0x5bf0]
   4435f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44362:	6b db 06             	imul   bx,bx,0x6
   44365:	3b 87 d8 5b          	cmp    ax,WORD PTR [bx+0x5bd8]
   44369:	74 65                	je     0x443d0
   4436b:	6a 03                	push   0x3
   4436d:	9a 1e 34 00 00       	call   0x0:0x341e
   44372:	59                   	pop    cx
   44373:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   44378:	eb 4b                	jmp    0x443c5
   4437a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4437d:	6b db 06             	imul   bx,bx,0x6
   44380:	ff b7 d8 5b          	push   WORD PTR [bx+0x5bd8]
   44384:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44387:	6b db 06             	imul   bx,bx,0x6
   4438a:	ff b7 f0 5b          	push   WORD PTR [bx+0x5bf0]
   4438e:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44391:	6b db 06             	imul   bx,bx,0x6
   44394:	ff b7 dc 5b          	push   WORD PTR [bx+0x5bdc]
   44398:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4439b:	6b db 06             	imul   bx,bx,0x6
   4439e:	ff b7 f4 5b          	push   WORD PTR [bx+0x5bf4]
   443a2:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   443a5:	6b db 06             	imul   bx,bx,0x6
   443a8:	ff b7 da 5b          	push   WORD PTR [bx+0x5bda]
   443ac:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   443af:	6b db 06             	imul   bx,bx,0x6
   443b2:	ff b7 f2 5b          	push   WORD PTR [bx+0x5bf2]
   443b6:	1e                   	push   ds
   443b7:	68 13 5f             	push   0x5f13
   443ba:	9a 53 42 00 00       	call   0x0:0x4253
   443bf:	83 c4 10             	add    sp,0x10
   443c2:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   443c5:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   443c9:	7d af                	jge    0x4437a
   443cb:	9a d7 29 00 00       	call   0x0:0x29d7
   443d0:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   443d3:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   443d7:	7c 03                	jl     0x443dc
   443d9:	e9 4d ff             	jmp    0x44329
   443dc:	b8 88 01             	mov    ax,0x188
   443df:	8e c0                	mov    es,ax
   443e1:	26 a1 1a 73          	mov    ax,es:0x731a
   443e5:	f7 d8                	neg    ax
   443e7:	50                   	push   ax
   443e8:	b8 88 01             	mov    ax,0x188
   443eb:	8e c0                	mov    es,ax
   443ed:	26 a1 18 73          	mov    ax,es:0x7318
   443f1:	f7 d8                	neg    ax
   443f3:	50                   	push   ax
   443f4:	68 e8 03             	push   0x3e8
   443f7:	9a 3f 07 30 00       	call   0x30:0x73f
   443fc:	83 c4 06             	add    sp,0x6
   443ff:	b8 88 01             	mov    ax,0x188
   44402:	8e c0                	mov    es,ax
   44404:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   4440a:	74 50                	je     0x4445c
   4440c:	9a 96 12 68 00       	call   0x68:0x1296
   44411:	b8 88 01             	mov    ax,0x188
   44414:	8e c0                	mov    es,ax
   44416:	26 a1 75 bb          	mov    ax,es:0xbb75
   4441a:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   4441f:	74 3b                	je     0x4445c
   44421:	b8 88 01             	mov    ax,0x188
   44424:	8e c0                	mov    es,ax
   44426:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   4442b:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44430:	9a 03 00 80 00       	call   0x80:0x3
   44435:	b8 88 01             	mov    ax,0x188
   44438:	8e c0                	mov    es,ax
   4443a:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   4443f:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   44444:	9a da 00 58 00       	call   0x58:0xda
   44449:	b8 88 01             	mov    ax,0x188
   4444c:	8e c0                	mov    es,ax
   4444e:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   44455:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   4445c:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   44461:	e9 aa 00             	jmp    0x4450e
   44464:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44467:	6b db 06             	imul   bx,bx,0x6
   4446a:	8b 87 f2 5b          	mov    ax,WORD PTR [bx+0x5bf2]
   4446e:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44471:	6b db 06             	imul   bx,bx,0x6
   44474:	3b 87 da 5b          	cmp    ax,WORD PTR [bx+0x5bda]
   44478:	75 2c                	jne    0x444a6
   4447a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4447d:	6b db 06             	imul   bx,bx,0x6
   44480:	8b 87 f4 5b          	mov    ax,WORD PTR [bx+0x5bf4]
   44484:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44487:	6b db 06             	imul   bx,bx,0x6
   4448a:	3b 87 dc 5b          	cmp    ax,WORD PTR [bx+0x5bdc]
   4448e:	75 16                	jne    0x444a6
   44490:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   44493:	6b db 06             	imul   bx,bx,0x6
   44496:	8b 87 f0 5b          	mov    ax,WORD PTR [bx+0x5bf0]
   4449a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   4449d:	6b db 06             	imul   bx,bx,0x6
   444a0:	3b 87 d8 5b          	cmp    ax,WORD PTR [bx+0x5bd8]
   444a4:	74 65                	je     0x4450b
   444a6:	6a 03                	push   0x3
   444a8:	9a 1e 34 00 00       	call   0x0:0x341e
   444ad:	59                   	pop    cx
   444ae:	c7 46 f8 03 00       	mov    WORD PTR [bp-0x8],0x3
   444b3:	eb 4b                	jmp    0x44500
   444b5:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444b8:	6b db 06             	imul   bx,bx,0x6
   444bb:	ff b7 d8 5b          	push   WORD PTR [bx+0x5bd8]
   444bf:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444c2:	6b db 06             	imul   bx,bx,0x6
   444c5:	ff b7 f0 5b          	push   WORD PTR [bx+0x5bf0]
   444c9:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444cc:	6b db 06             	imul   bx,bx,0x6
   444cf:	ff b7 dc 5b          	push   WORD PTR [bx+0x5bdc]
   444d3:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444d6:	6b db 06             	imul   bx,bx,0x6
   444d9:	ff b7 f4 5b          	push   WORD PTR [bx+0x5bf4]
   444dd:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444e0:	6b db 06             	imul   bx,bx,0x6
   444e3:	ff b7 da 5b          	push   WORD PTR [bx+0x5bda]
   444e7:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   444ea:	6b db 06             	imul   bx,bx,0x6
   444ed:	ff b7 f2 5b          	push   WORD PTR [bx+0x5bf2]
   444f1:	1e                   	push   ds
   444f2:	68 5a 5f             	push   0x5f5a
   444f5:	9a 53 42 00 00       	call   0x0:0x4253
   444fa:	83 c4 10             	add    sp,0x10
   444fd:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   44500:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   44504:	7d af                	jge    0x444b5
   44506:	9a d7 29 00 00       	call   0x0:0x29d7
   4450b:	ff 4e f8             	dec    WORD PTR [bp-0x8]
   4450e:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   44512:	7c 03                	jl     0x44517
   44514:	e9 4d ff             	jmp    0x44464
   44517:	9a 38 01 38 01       	call   0x138:0x138
   4451c:	6a 00                	push   0x0
   4451e:	b8 88 01             	mov    ax,0x188
   44521:	8e c0                	mov    es,ax
   44523:	26 ff 36 6b bb       	push   WORD PTR es:0xbb6b
   44528:	9a 2a 00 18 01       	call   0x118:0x2a
   4452d:	83 c4 04             	add    sp,0x4
   44530:	9a 7a 00 18 01       	call   0x118:0x7a
   44535:	b8 88 01             	mov    ax,0x188
   44538:	8e c0                	mov    es,ax
   4453a:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
