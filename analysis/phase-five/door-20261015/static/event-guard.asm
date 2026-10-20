
analysis/phase-five/door-20261015/static/event-guard.bin:     file format binary


Disassembly of section .data:

000442a0 <.data>:
   442a0:	00 00                	add    BYTE PTR [bx+si],al
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
   4450e:	83                   	.byte 0x83
   4450f:	7e                   	.byte 0x7e
