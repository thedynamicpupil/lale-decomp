
analysis/phase-four/continuation/character-spec-20261014/original-16da.bin:     file format binary


Disassembly of section .data:

0005d3e6 <.data+0x426>:
   5d3e6:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d3e9:	50                   	push   ax
   5d3ea:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d3ed:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d3f0:	90                   	nop
   5d3f1:	0e                   	push   cs
   5d3f2:	e8 7f 02             	call   0x5d674
   5d3f5:	83 c4 06             	add    sp,0x6
   5d3f8:	8a 56 fa             	mov    dl,BYTE PTR [bp-0x6]
   5d3fb:	b6 00                	mov    dh,0x0
   5d3fd:	2b c2                	sub    ax,dx
   5d3ff:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5d402:	3b 46 10             	cmp    ax,WORD PTR [bp+0x10]
   5d405:	7c 03                	jl     0x5d40a
   5d407:	e9 d2 01             	jmp    0x5d5dc
   5d40a:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   5d40d:	88 46 f8             	mov    BYTE PTR [bp-0x8],al
   5d410:	16                   	push   ss
   5d411:	8d 46 f8             	lea    ax,[bp-0x8]
   5d414:	50                   	push   ax
   5d415:	90                   	nop
   5d416:	0e                   	push   cs
   5d417:	e8 2a 0b             	call   0x5df44
   5d41a:	83 c4 04             	add    sp,0x4
   5d41d:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d420:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d423:	9a cc 49 00 00       	call   0x0:0x49cc
   5d428:	83 c4 04             	add    sp,0x4
   5d42b:	c4 56 06             	les    dx,DWORD PTR [bp+0x6]
   5d42e:	03 d0                	add    dx,ax
   5d430:	8b da                	mov    bx,dx
   5d432:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   5d436:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d439:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d43c:	9a cc 49 00 00       	call   0x0:0x49cc
   5d441:	83 c4 04             	add    sp,0x4
   5d444:	48                   	dec    ax
   5d445:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d448:	03 d8                	add    bx,ax
   5d44a:	8a 46 f8             	mov    al,BYTE PTR [bp-0x8]
   5d44d:	26 88 07             	mov    BYTE PTR es:[bx],al
   5d450:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d453:	50                   	push   ax
   5d454:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d457:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d45a:	90                   	nop
   5d45b:	0e                   	push   cs
   5d45c:	e8 15 02             	call   0x5d674
   5d45f:	83 c4 06             	add    sp,0x6
   5d462:	3b 46 10             	cmp    ax,WORD PTR [bp+0x10]
   5d465:	7e 2d                	jle    0x5d494
   5d467:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d46a:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d46d:	9a cc 49 00 00       	call   0x0:0x49cc
   5d472:	83 c4 04             	add    sp,0x4
   5d475:	48                   	dec    ax
   5d476:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d479:	03 d8                	add    bx,ax
   5d47b:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   5d47f:	1e                   	push   ds
   5d480:	68 5f 8f             	push   0x8f5f
   5d483:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d486:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d489:	9a f7 48 00 00       	call   0x0:0x48f7
   5d48e:	83 c4 08             	add    sp,0x8
   5d491:	e9 48 01             	jmp    0x5d5dc
   5d494:	1e                   	push   ds
   5d495:	68 62 8f             	push   0x8f62
   5d498:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d49b:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d49e:	9a f7 48 00 00       	call   0x0:0x48f7
   5d4a3:	83 c4 08             	add    sp,0x8
   5d4a6:	9a 04 02 30 00       	call   0x30:0x204
   5d4ab:	68 e0 01             	push   0x1e0
   5d4ae:	68 d0 02             	push   0x2d0
   5d4b1:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d4b4:	50                   	push   ax
   5d4b5:	8a 46 1c             	mov    al,BYTE PTR [bp+0x1c]
   5d4b8:	50                   	push   ax
   5d4b9:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d4bc:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d4bf:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d4c2:	50                   	push   ax
   5d4c3:	6a 0c                	push   0xc
   5d4c5:	8a 46 fa             	mov    al,BYTE PTR [bp-0x6]
   5d4c8:	b4 00                	mov    ah,0x0
   5d4ca:	50                   	push   ax
   5d4cb:	ff 76 1a             	push   WORD PTR [bp+0x1a]
   5d4ce:	8b 46 18             	mov    ax,WORD PTR [bp+0x18]
   5d4d1:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d4d4:	50                   	push   ax
   5d4d5:	9a 30 04 28 00       	call   0x28:0x430
   5d4da:	83 c4 14             	add    sp,0x14
   5d4dd:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   5d4e0:	3d 01 00             	cmp    ax,0x1
   5d4e3:	74 08                	je     0x5d4ed
   5d4e5:	3d 02 00             	cmp    ax,0x2
   5d4e8:	74 6e                	je     0x5d558
   5d4ea:	e9 dd 00             	jmp    0x5d5ca
   5d4ed:	6a 05                	push   0x5
   5d4ef:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d4f2:	b4 00                	mov    ah,0x0
   5d4f4:	50                   	push   ax
   5d4f5:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d4f8:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d4fb:	9a cc 49 00 00       	call   0x0:0x49cc
   5d500:	83 c4 04             	add    sp,0x4
   5d503:	2d 02 00             	sub    ax,0x2
   5d506:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d509:	03 d0                	add    dx,ax
   5d50b:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d50e:	52                   	push   dx
   5d50f:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d512:	40                   	inc    ax
   5d513:	50                   	push   ax
   5d514:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d517:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d51a:	40                   	inc    ax
   5d51b:	50                   	push   ax
   5d51c:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d51f:	b4 00                	mov    ah,0x0
   5d521:	50                   	push   ax
   5d522:	90                   	nop
   5d523:	0e                   	push   cs
   5d524:	e8 dc 05             	call   0x5db03
   5d527:	83 c4 0e             	add    sp,0xe
   5d52a:	6a 05                	push   0x5
   5d52c:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d52f:	b4 00                	mov    ah,0x0
   5d531:	50                   	push   ax
   5d532:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d535:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d538:	9a cc 49 00 00       	call   0x0:0x49cc
   5d53d:	83 c4 04             	add    sp,0x4
   5d540:	2d 02 00             	sub    ax,0x2
   5d543:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d546:	03 d0                	add    dx,ax
   5d548:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d54b:	52                   	push   dx
   5d54c:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d54f:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d552:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d555:	e9 03 fd             	jmp    0x5d25b
   5d558:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d55b:	b4 00                	mov    ah,0x0
   5d55d:	50                   	push   ax
   5d55e:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d561:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d564:	9a cc 49 00 00       	call   0x0:0x49cc
   5d569:	83 c4 04             	add    sp,0x4
   5d56c:	2d 02 00             	sub    ax,0x2
   5d56f:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d572:	03 d0                	add    dx,ax
   5d574:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d577:	52                   	push   dx
   5d578:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d57b:	40                   	inc    ax
   5d57c:	50                   	push   ax
   5d57d:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d580:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d583:	50                   	push   ax
   5d584:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d587:	b4 00                	mov    ah,0x0
   5d589:	50                   	push   ax
   5d58a:	90                   	nop
   5d58b:	0e                   	push   cs
   5d58c:	e8 1b 08             	call   0x5ddaa
   5d58f:	83 c4 0c             	add    sp,0xc
   5d592:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d595:	b4 00                	mov    ah,0x0
   5d597:	50                   	push   ax
   5d598:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d59b:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d59e:	9a cc 49 00 00       	call   0x0:0x49cc
   5d5a3:	83 c4 04             	add    sp,0x4
   5d5a6:	2d 02 00             	sub    ax,0x2
   5d5a9:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d5ac:	03 d0                	add    dx,ax
   5d5ae:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d5b1:	52                   	push   dx
   5d5b2:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d5b5:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d5b8:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d5bb:	50                   	push   ax
   5d5bc:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d5bf:	b4 00                	mov    ah,0x0
   5d5c1:	50                   	push   ax
   5d5c2:	90                   	nop
   5d5c3:	0e                   	push   cs
   5d5c4:	e8 e3 07             	call   0x5ddaa
   5d5c7:	83 c4 0c             	add    sp,0xc
   5d5ca:	b8 88 01             	mov    ax,0x188
   5d5cd:	8e c0                	mov    es,ax
   5d5cf:	26 a0 e3 e5          	mov    al,es:0xe5e3
   5d5d3:	50                   	push   ax
   5d5d4:	9a 69 00 30 00       	call   0x30:0x69
   5d5d9:	59                   	pop    cx
   5d5da:	eb 00                	jmp    0x5d5dc
   5d5dc:	80 7e fb 0d          	cmp    BYTE PTR [bp-0x5],0xd
   5d5e0:	74 03                	je     0x5d5e5
   5d5e2:	e9 13 fb             	jmp    0x5d0f8
   5d5e5:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d5e8:	50                   	push   ax
   5d5e9:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d5ec:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d5ef:	90                   	nop
   5d5f0:	0e                   	push   cs
   5d5f1:	e8 80 00             	call   0x5d674
   5d5f4:	83 c4 06             	add    sp,0x6
   5d5f7:	8a 56 fa             	mov    dl,BYTE PTR [bp-0x6]
   5d5fa:	b6 00                	mov    dh,0x0
   5d5fc:	2b c2                	sub    ax,dx
   5d5fe:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5d601:	9a 04 02 30 00       	call   0x30:0x204
   5d606:	68 e0 01             	push   0x1e0
   5d609:	68 d0 02             	push   0x2d0
   5d60c:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d60f:	50                   	push   ax
   5d610:	8a 46 1c             	mov    al,BYTE PTR [bp+0x1c]
   5d613:	50                   	push   ax
   5d614:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d617:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d61a:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d61d:	50                   	push   ax
   5d61e:	6a 0c                	push   0xc
   5d620:	8a 46 fa             	mov    al,BYTE PTR [bp-0x6]
   5d623:	b4 00                	mov    ah,0x0
   5d625:	50                   	push   ax
   5d626:	ff 76 1a             	push   WORD PTR [bp+0x1a]
   5d629:	8b 46 18             	mov    ax,WORD PTR [bp+0x18]
   5d62c:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5d62f:	50                   	push   ax
   5d630:	9a 30 04 28 00       	call   0x28:0x430
   5d635:	83 c4 14             	add    sp,0x14
   5d638:	b8 88 01             	mov    ax,0x188
   5d63b:	8e c0                	mov    es,ax
   5d63d:	26 a0 e3 e5          	mov    al,es:0xe5e3
   5d641:	50                   	push   ax
   5d642:	9a 69 00 30 00       	call   0x30:0x69
   5d647:	59                   	pop    cx
   5d648:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d64b:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d64e:	9a cc 49 00 00       	call   0x0:0x49cc
   5d653:	83 c4 04             	add    sp,0x4
   5d656:	48                   	dec    ax
   5d657:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d65a:	03 d8                	add    bx,ax
   5d65c:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   5d660:	b0 01                	mov    al,0x1
   5d662:	c9                   	leave
   5d663:	cb                   	retf
   5d664:	00 00                	add    BYTE PTR [bx+si],al
   5d666:	08 00                	or     BYTE PTR [bx+si],al
   5d668:	0d 00 1b             	or     ax,0x1b00
   5d66b:	00 7b 01             	add    BYTE PTR [bp+di+0x1],bh
   5d66e:	83 01 1f             	add    WORD PTR [bx+di],0x1f
   5d671:	04 15                	add    al,0x15
   5d673:	03                 	add    cx,ax
