
lale/IST.EXE:     file format binary


Disassembly of section .data:

0003e42e <.data+0x3e42e>:
   3e42e:	55                   	push   bp
   3e42f:	8b ec                	mov    bp,sp
   3e431:	83 ec 04             	sub    sp,0x4
   3e434:	1e                   	push   ds
   3e435:	68 5b 49             	push   0x495b
   3e438:	6a 04                	push   0x4
   3e43a:	9a 25 00 70 01       	call   0x170:0x25
   3e43f:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3e442:	83 7e fc ff          	cmp    WORD PTR [bp-0x4],0xffff
   3e446:	75 15                	jne    0x3e45d
   3e448:	6a ff                	push   0xffff
   3e44a:	1e                   	push   ds
   3e44b:	68 75 49             	push   0x4975
   3e44e:	68 de 00             	push   0xde
   3e451:	1e                   	push   ds
   3e452:	68 63 49             	push   0x4963
   3e455:	9a 2a 00 58 01       	call   0x158:0x2a
   3e45a:	83 c4 0c             	add    sp,0xc
   3e45d:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e462:	e9 91 00             	jmp    0x3e4f6
   3e465:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e468:	6b db 5c             	imul   bx,bx,0x5c
   3e46b:	b8 88 01             	mov    ax,0x188
   3e46e:	8e c0                	mov    es,ax
   3e470:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3e475:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e478:	6b db 5c             	imul   bx,bx,0x5c
   3e47b:	ba 88 01             	mov    dx,0x188
   3e47e:	8e c2                	mov    es,dx
   3e480:	26 89 87 de 99       	mov    WORD PTR es:[bx-0x6622],ax
   3e485:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e488:	6b db 5c             	imul   bx,bx,0x5c
   3e48b:	b8 88 01             	mov    ax,0x188
   3e48e:	8e c0                	mov    es,ax
   3e490:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   3e495:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3e498:	6b db 5c             	imul   bx,bx,0x5c
   3e49b:	ba 88 01             	mov    dx,0x188
   3e49e:	8e c2                	mov    es,dx
   3e4a0:	26 89 87 e0 99       	mov    WORD PTR es:[bx-0x6620],ax
   3e4a5:	1e                   	push   ds
   3e4a6:	68 9a 49             	push   0x499a
   3e4a9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e4ac:	69 c0 94 00          	imul   ax,ax,0x94
   3e4b0:	05 95 9c             	add    ax,0x9c95
   3e4b3:	68 88 01             	push   0x188
   3e4b6:	50                   	push   ax
   3e4b7:	9a a3 49 00 00       	call   0x0:0x49a3
   3e4bc:	83 c4 08             	add    sp,0x8
   3e4bf:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e4c2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e4c5:	69 c0 94 00          	imul   ax,ax,0x94
   3e4c9:	05 26 9c             	add    ax,0x9c26
   3e4cc:	68 88 01             	push   0x188
   3e4cf:	50                   	push   ax
   3e4d0:	6a 00                	push   0x0
   3e4d2:	6a 25                	push   0x25
   3e4d4:	9a 34 00 70 01       	call   0x170:0x34
   3e4d9:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e4dc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e4df:	69 c0 94 00          	imul   ax,ax,0x94
   3e4e3:	05 95 9c             	add    ax,0x9c95
   3e4e6:	68 88 01             	push   0x188
   3e4e9:	50                   	push   ax
   3e4ea:	6a 00                	push   0x0
   3e4ec:	6a 25                	push   0x25
   3e4ee:	9a 34 00 70 01       	call   0x170:0x34
   3e4f3:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e4f6:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e4fa:	7f 03                	jg     0x3e4ff
   3e4fc:	e9 66 ff             	jmp    0x3e465
   3e4ff:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3e504:	eb 1c                	jmp    0x3e522
   3e506:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e509:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3e50c:	6b c0 5c             	imul   ax,ax,0x5c
   3e50f:	05 a6 99             	add    ax,0x99a6
   3e512:	68 88 01             	push   0x188
   3e515:	50                   	push   ax
   3e516:	6a 00                	push   0x0
   3e518:	6a 5c                	push   0x5c
   3e51a:	9a 34 00 70 01       	call   0x170:0x34
   3e51f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3e522:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3e526:	7e de                	jle    0x3e506
   3e528:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3e52b:	9a 2a 00 70 01       	call   0x170:0x2a
   3e530:	c9                   	leave
   3e531:	cb                   	retf
