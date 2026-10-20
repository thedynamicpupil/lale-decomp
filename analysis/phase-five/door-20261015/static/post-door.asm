
analysis/phase-five/door-20261015/static/post-door.bin:     file format binary


Disassembly of section .data:

000304e1 <.data>:
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
   304ff:	cb                   	retf
   30500:	55                   	push   bp
   30501:	8b ec                	mov    bp,sp
   30503:	83 ec 02             	sub    sp,0x2
   30506:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30509:	b4 00                	mov    ah,0x0
   3050b:	05 14 00             	add    ax,0x14
   3050e:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   30511:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   30514:	a2 06 3b             	mov    ds:0x3b06,al
   30517:	b8 88 01             	mov    ax,0x188
   3051a:	8e c0                	mov    es,ax
   3051c:	26 80 3e 38 bb 00    	cmp    BYTE PTR es:0xbb38,0x0
   30522:	74 21                	je     0x30545
   30524:	6a 00                	push   0x0
   30526:	6a 40                	push   0x40
   30528:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3052b:	6b db 11             	imul   bx,bx,0x11
   3052e:	b8 88 01             	mov    ax,0x188
   30531:	6a 00                	push   0x0
   30533:	8e c0                	mov    es,ax
   30535:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   3053a:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3053d:	9a 2d 19 10 00       	call   0x10:0x192d
   30542:	83 c4 0a             	add    sp,0xa
   30545:	a0 06 3b             	mov    al,ds:0x3b06
   30548:	b4 00                	mov    ah,0x0
   3054a:	3d 01 00             	cmp    ax,0x1
   3054d:	74 09                	je     0x30558
   3054f:	3d 02 00             	cmp    ax,0x2
   30552:	74 02                	je     0x30556
   30554:	eb 0f                	jmp    0x30565
   30556:	eb 00                	jmp    0x30558
   30558:	0e                   	push   cs
   30559:	e8 ac f2             	call   0x3f808
   3055c:	0e                   	push   cs
   3055d:	e8 e8 ed             	call   0x3f348
   30560:	c6 06 06 3b 00       	mov    BYTE PTR ds:0x3b06,0x0
   30565:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   30568:	6b db 17             	imul   bx,bx,0x17
   3056b:	b8 88 01             	mov    ax,0x188
   3056e:	8e c0                	mov    es,ax
   30570:	26 8b 87 34 de       	mov    ax,WORD PTR es:[bx-0x21cc]
   30575:	26 0b 87 36 de       	or     ax,WORD PTR es:[bx-0x21ca]
   3057a:	74 44                	je     0x305c0
   3057c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3057f:	6b db 11             	imul   bx,bx,0x11
   30582:	b8 88 01             	mov    ax,0x188
   30585:	8e c0                	mov    es,ax
   30587:	26 f7 87 ea 22 01 00 	test   WORD PTR es:[bx+0x22ea],0x1
   3058e:	75 30                	jne    0x305c0
   30590:	b8 88 01             	mov    ax,0x188
   30593:	8e c0                	mov    es,ax
   30595:	26 a0 d7 73          	mov    al,es:0x73d7
   30599:	b4 00                	mov    ah,0x0
   3059b:	48                   	dec    ax
   3059c:	99                   	cwd
   3059d:	52                   	push   dx
   3059e:	50                   	push   ax
   3059f:	9a e6 00 60 00       	call   0x60:0xe6
   305a4:	1e                   	push   ds
   305a5:	68 27 3d             	push   0x3d27
   305a8:	68 3f 08             	push   0x83f
   305ab:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   305ae:	6b c0 17             	imul   ax,ax,0x17
   305b1:	05 34 de             	add    ax,0xde34
   305b4:	68 88 01             	push   0x188
   305b7:	50                   	push   ax
   305b8:	9a 2f 02 40 00       	call   0x40:0x22f
   305bd:	83 c4 0a             	add    sp,0xa
   305c0:	c6 06 06 3b 00       	mov    BYTE PTR ds:0x3b06,0x0
   305c5:	c9                   	leave
   305c6:	cb                   	retf
