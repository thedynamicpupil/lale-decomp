
analysis/phase-five/area-fields-20261015/area/pcs-command-skip.bin:     file format binary


Disassembly of section .data:

0004853b <.data>:
   4853b:	55                   	push   bp
   4853c:	8b ec                	mov    bp,sp
   4853e:	83 ec 08             	sub    sp,0x8
   48541:	a0 93 bb             	mov    al,ds:0xbb93
   48544:	2a 46 06             	sub    al,BYTE PTR [bp+0x6]
   48547:	a2 93 bb             	mov    ds:0xbb93,al
   4854a:	a0 92 bb             	mov    al,ds:0xbb92
   4854d:	2a 46 06             	sub    al,BYTE PTR [bp+0x6]
   48550:	a2 92 bb             	mov    ds:0xbb92,al
   48553:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   48558:	76 0f                	jbe    0x48569
   4855a:	ff 76 06             	push   WORD PTR [bp+0x6]
   4855d:	1e                   	push   ds
   4855e:	68 90 62             	push   0x6290
   48561:	9a 53 42 00 00       	call   0x0:0x4253
   48566:	83 c4 06             	add    sp,0x6
   48569:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4856e:	e9 4d 01             	jmp    0x486be
   48571:	0e                   	push   cs
   48572:	e8 5e ff             	call   0x484d3
   48575:	88 46 f9             	mov    BYTE PTR [bp-0x7],al
   48578:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   4857d:	76 17                	jbe    0x48596
   4857f:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48582:	b4 00                	mov    ah,0x0
   48584:	50                   	push   ax
   48585:	1e                   	push   ds
   48586:	68 9b 62             	push   0x629b
   48589:	9a 53 42 00 00       	call   0x0:0x4253
   4858e:	83 c4 06             	add    sp,0x6
   48591:	9a d7 29 00 00       	call   0x0:0x29d7
   48596:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48599:	b4 00                	mov    ah,0x0
   4859b:	48                   	dec    ax
   4859c:	8b d8                	mov    bx,ax
   4859e:	83 fb 20             	cmp    bx,0x20
   485a1:	76 03                	jbe    0x485a6
   485a3:	e9 ca 00             	jmp    0x48670
   485a6:	d1 e3                	shl    bx,1
   485a8:	2e ff a7 5b 50       	jmp    WORD PTR cs:[bx+0x505b]
   485ad:	0e                   	push   cs
   485ae:	e8 22 ff             	call   0x484d3
   485b1:	b4 00                	mov    ah,0x0
   485b3:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   485b6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   485b9:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   485bd:	e9 fb 00             	jmp    0x486bb
   485c0:	0e                   	push   cs
   485c1:	e8 0f ff             	call   0x484d3
   485c4:	b4 00                	mov    ah,0x0
   485c6:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   485c9:	0e                   	push   cs
   485ca:	e8 06 ff             	call   0x484d3
   485cd:	b4 00                	mov    ah,0x0
   485cf:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   485d2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   485d5:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   485d8:	eb df                	jmp    0x485b9
   485da:	0e                   	push   cs
   485db:	e8 f5 fe             	call   0x484d3
   485de:	b4 00                	mov    ah,0x0
   485e0:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   485e3:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   485e6:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   485ea:	eb c1                	jmp    0x485ad
   485ec:	ff 06 98 bb          	inc    WORD PTR ds:0xbb98
   485f0:	eb bb                	jmp    0x485ad
   485f2:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   485f7:	eb 13                	jmp    0x4860c
   485f9:	0e                   	push   cs
   485fa:	e8 d6 fe             	call   0x484d3
   485fd:	b4 00                	mov    ah,0x0
   485ff:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   48602:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   48605:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   48609:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   4860c:	83 7e fa 06          	cmp    WORD PTR [bp-0x6],0x6
   48610:	7c e7                	jl     0x485f9
   48612:	e9 a6 00             	jmp    0x486bb
   48615:	0e                   	push   cs
   48616:	e8 ba fe             	call   0x484d3
   48619:	b4 00                	mov    ah,0x0
   4861b:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4861e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   48621:	40                   	inc    ax
   48622:	eb 95                	jmp    0x485b9
   48624:	e9 94 00             	jmp    0x486bb
   48627:	ff 06 98 bb          	inc    WORD PTR ds:0xbb98
   4862b:	e9 8d 00             	jmp    0x486bb
   4862e:	83 06 98 bb 07       	add    WORD PTR ds:0xbb98,0x7
   48633:	e9 85 00             	jmp    0x486bb
   48636:	83 06 98 bb 09       	add    WORD PTR ds:0xbb98,0x9
   4863b:	eb 7e                	jmp    0x486bb
   4863d:	83 06 98 bb 04       	add    WORD PTR ds:0xbb98,0x4
   48642:	eb 77                	jmp    0x486bb
   48644:	eb 00                	jmp    0x48646
   48646:	83 06 98 bb 03       	add    WORD PTR ds:0xbb98,0x3
   4864b:	eb 6e                	jmp    0x486bb
   4864d:	83 06 98 bb 02       	add    WORD PTR ds:0xbb98,0x2
   48652:	eb 67                	jmp    0x486bb
   48654:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   48659:	eb 0d                	jmp    0x48668
   4865b:	0e                   	push   cs
   4865c:	e8 74 fe             	call   0x484d3
   4865f:	b4 00                	mov    ah,0x0
   48661:	01 06 98 bb          	add    WORD PTR ds:0xbb98,ax
   48665:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   48668:	83 7e fc 28          	cmp    WORD PTR [bp-0x4],0x28
   4866c:	7c ed                	jl     0x4865b
   4866e:	eb 4b                	jmp    0x486bb
   48670:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   48673:	b4 00                	mov    ah,0x0
   48675:	50                   	push   ax
   48676:	ff 36 98 bb          	push   WORD PTR ds:0xbb98
   4867a:	1e                   	push   ds
   4867b:	68 a0 62             	push   0x62a0
   4867e:	68 88 01             	push   0x188
   48681:	68 cc ba             	push   0xbacc
   48684:	9a b4 48 00 00       	call   0x0:0x48b4
   48689:	83 c4 0c             	add    sp,0xc
   4868c:	3d 68 00             	cmp    ax,0x68
   4868f:	7c 15                	jl     0x486a6
   48691:	6a 61                	push   0x61
   48693:	6a 00                	push   0x0
   48695:	6a 00                	push   0x0
   48697:	68 60 07             	push   0x760
   4869a:	1e                   	push   ds
   4869b:	68 b5 62             	push   0x62b5
   4869e:	9a 2a 00 58 01       	call   0x158:0x2a
   486a3:	83 c4 0c             	add    sp,0xc
   486a6:	6a 62                	push   0x62
   486a8:	6a 00                	push   0x0
   486aa:	6a 00                	push   0x0
   486ac:	68 62 07             	push   0x762
   486af:	1e                   	push   ds
   486b0:	68 c4 62             	push   0x62c4
   486b3:	9a 2a 00 58 01       	call   0x158:0x2a
   486b8:	83 c4 0c             	add    sp,0xc
   486bb:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   486be:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   486c1:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   486c4:	7d 03                	jge    0x486c9
   486c6:	e9 a8 fe             	jmp    0x48571
   486c9:	c9                   	leave
   486ca:	cb                   	retf
   486cb:	d6                   	salc
   486cc:	4f                   	dec    di
   486cd:	3d 4f b7             	cmp    ax,0xb74f
   486d0:	4f                   	dec    di
   486d1:	4b                   	dec    bx
   486d2:	50                   	push   ax
   486d3:	50                   	push   ax
   486d4:	4f                   	dec    di
   486d5:	b7 4f                	mov    bh,0x4f
   486d7:	b7 4f                	mov    bh,0x4f
   486d9:	be 4f c6             	mov    si,0xc64f
   486dc:	4f                   	dec    di
   486dd:	6a 4f                	push   0x4f
   486df:	cd 4f                	int    0x4f
   486e1:	d4 4f                	aam    0x4f
   486e3:	b7 4f                	mov    bh,0x4f
   486e5:	b7 4f                	mov    bh,0x4f
   486e7:	b7 4f                	mov    bh,0x4f
   486e9:	4b                   	dec    bx
   486ea:	50                   	push   ax
   486eb:	7c 4f                	jl     0x4873c
   486ed:	4b                   	dec    bx
   486ee:	50                   	push   ax
   486ef:	b7 4f                	mov    bh,0x4f
   486f1:	b7 4f                	mov    bh,0x4f
   486f3:	82 4f d6 4f          	or     BYTE PTR [bx-0x2a],0x4f
   486f7:	dd 4f 4b             	fisttp QWORD PTR [bx+0x4b]
   486fa:	50                   	push   ax
   486fb:	b7 4f                	mov    bh,0x4f
   486fd:	b7 4f                	mov    bh,0x4f
   486ff:	e4 4f                	in     al,0x4f
   48701:	4b                   	dec    bx
   48702:	50                   	push   ax
   48703:	d6                   	salc
   48704:	4f                   	dec    di
   48705:	a5                   	movs   WORD PTR es:[di],WORD PTR ds:[si]
   48706:	4f                   	dec    di
   48707:	b7 4f                	mov    bh,0x4f
   48709:	4b                   	dec    bx
   4870a:	50                   	push   ax
   4870b:	4b                   	dec    bx
   4870c:	50                   	push   ax
