
lale/IST.EXE:     file format binary


Disassembly of section .data:

0004b585 <.data+0x4b585>:
   4b585:	55                   	push   bp
   4b586:	8b ec                	mov    bp,sp
   4b588:	83 ec 78             	sub    sp,0x78
   4b58b:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   4b590:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b593:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b596:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   4b599:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b59c:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b59f:	83 c2 02             	add    dx,0x2
   4b5a2:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5a5:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5a8:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5ab:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5ae:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   4b5b1:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5b4:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5b7:	83 c2 02             	add    dx,0x2
   4b5ba:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5bd:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5c0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5c3:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5c6:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   4b5c9:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5cc:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5cf:	83 c2 02             	add    dx,0x2
   4b5d2:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5d5:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5d8:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5db:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5de:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   4b5e1:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5e4:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5e7:	83 c2 02             	add    dx,0x2
   4b5ea:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b5ed:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b5f0:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b5f3:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b5f6:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   4b5f9:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b5fc:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b5ff:	83 c2 02             	add    dx,0x2
   4b602:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b605:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b608:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b60b:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b60e:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   4b611:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b614:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b617:	83 c2 02             	add    dx,0x2
   4b61a:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b61d:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b620:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   4b623:	26 8b 07             	mov    ax,WORD PTR es:[bx]
   4b626:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   4b629:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4b62c:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   4b62f:	83 c2 02             	add    dx,0x2
   4b632:	89 46 08             	mov    WORD PTR [bp+0x8],ax
   4b635:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   4b638:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   4b63c:	7c 06                	jl     0x4b644
   4b63e:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   4b642:	7e 29                	jle    0x4b66d
   4b644:	ff 76 fc             	push   WORD PTR [bp-0x4]
   4b647:	1e                   	push   ds
   4b648:	68 37 65             	push   0x6537
   4b64b:	16                   	push   ss
   4b64c:	8d 46 88             	lea    ax,[bp-0x78]
   4b64f:	50                   	push   ax
   4b650:	9a b4 48 00 00       	call   0x0:0x48b4
   4b655:	83 c4 0a             	add    sp,0xa
   4b658:	6a ff                	push   0xffff
   4b65a:	1e                   	push   ds
   4b65b:	68 4e 65             	push   0x654e
   4b65e:	68 c8 02             	push   0x2c8
   4b661:	1e                   	push   ds
   4b662:	68 3e 65             	push   0x653e
   4b665:	9a 2a 00 58 01       	call   0x158:0x2a
   4b66a:	83 c4 0c             	add    sp,0xc
   4b66d:	b8 88 01             	mov    ax,0x188
   4b670:	8e c0                	mov    es,ax
   4b672:	26 a1 4a e7          	mov    ax,es:0xe74a
   4b676:	2b 06 c4 bb          	sub    ax,WORD PTR ds:0xbbc4
   4b67a:	3d 96 00             	cmp    ax,0x96
   4b67d:	73 03                	jae    0x4b682
   4b67f:	e9 9a 00             	jmp    0x4b71c
   4b682:	b8 88 01             	mov    ax,0x188
   4b685:	8e c0                	mov    es,ax
   4b687:	26 a1 4a e7          	mov    ax,es:0xe74a
   4b68b:	a3 c4 bb             	mov    ds:0xbbc4,ax
   4b68e:	6a 20                	push   0x20
   4b690:	6a 20                	push   0x20
   4b692:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4b695:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4b698:	9a 7d 06 30 00       	call   0x30:0x67d
   4b69d:	83 c4 08             	add    sp,0x8
   4b6a0:	0a c0                	or     al,al
   4b6a2:	74 05                	je     0x4b6a9
   4b6a4:	9a 04 02 30 00       	call   0x30:0x204
   4b6a9:	68 e0 01             	push   0x1e0
   4b6ac:	68 d0 02             	push   0x2d0
   4b6af:	6a 00                	push   0x0
   4b6b1:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   4b6b4:	04 46                	add    al,0x46
   4b6b6:	50                   	push   ax
   4b6b7:	ff 76 f8             	push   WORD PTR [bp-0x8]
   4b6ba:	ff 76 fa             	push   WORD PTR [bp-0x6]
   4b6bd:	ff 76 f4             	push   WORD PTR [bp-0xc]
   4b6c0:	ff 76 f6             	push   WORD PTR [bp-0xa]
   4b6c3:	ff 76 f0             	push   WORD PTR [bp-0x10]
   4b6c6:	6a 00                	push   0x0
   4b6c8:	68 00 80             	push   0x8000
   4b6cb:	9a 79 17 00 00       	call   0x0:0x1779
   4b6d0:	99                   	cwd
   4b6d1:	d1 e0                	shl    ax,1
   4b6d3:	d1 d2                	rcl    dx,1
   4b6d5:	52                   	push   dx
   4b6d6:	50                   	push   ax
   4b6d7:	9a df 12 00 00       	call   0x0:0x12df
   4b6dc:	0b c0                	or     ax,ax
   4b6de:	74 04                	je     0x4b6e4
   4b6e0:	33 c0                	xor    ax,ax
   4b6e2:	eb 1c                	jmp    0x4b700
   4b6e4:	6a 00                	push   0x0
   4b6e6:	68 00 80             	push   0x8000
   4b6e9:	9a 79 17 00 00       	call   0x0:0x1779
   4b6ee:	99                   	cwd
   4b6ef:	d1 e0                	shl    ax,1
   4b6f1:	d1 d2                	rcl    dx,1
   4b6f3:	52                   	push   dx
   4b6f4:	50                   	push   ax
   4b6f5:	9a df 12 00 00       	call   0x0:0x12df
   4b6fa:	05 03 00             	add    ax,0x3
   4b6fd:	c1 e0 05             	shl    ax,0x5
   4b700:	03 46 f2             	add    ax,WORD PTR [bp-0xe]
   4b703:	50                   	push   ax
   4b704:	9a 30 04 28 00       	call   0x28:0x430
   4b709:	83 c4 14             	add    sp,0x14
   4b70c:	b8 88 01             	mov    ax,0x188
   4b70f:	8e c0                	mov    es,ax
   4b711:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4b715:	50                   	push   ax
   4b716:	9a 69 00 30 00       	call   0x30:0x69
   4b71b:	59                   	pop    cx
   4b71c:	c9                   	leave
   4b71d:	cb                   	retf
