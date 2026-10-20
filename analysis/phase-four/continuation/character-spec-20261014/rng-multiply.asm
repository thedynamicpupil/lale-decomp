
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

000116fe <.data+0x16fe>:
   116fe:	56                   	push   si
   116ff:	96                   	xchg   si,ax
   11700:	92                   	xchg   dx,ax
   11701:	85 c0                	test   ax,ax
   11703:	74 02                	je     0x11707
   11705:	f7 e3                	mul    bx
   11707:	e3 05                	jcxz   0x1170e
   11709:	91                   	xchg   cx,ax
   1170a:	f7 e6                	mul    si
   1170c:	03 c1                	add    ax,cx
   1170e:	96                   	xchg   si,ax
   1170f:	f7 e3                	mul    bx
   11711:	03 d6                	add    dx,si
   11713:	5e                   	pop    si
   11714:	c3                   	ret
   11715:	51                   	push   cx
   11716:	8a e8                	mov    ch,al
   11718:	b1 04                	mov    cl,0x4
   1171a:	d3 e8                	shr    ax,cl
   1171c:	03 d0                	add    dx,ax
   1171e:	8a c5                	mov    al,ch
   11720:	8a e3                	mov    ah,bl
   11722:	d3 eb                	shr    bx,cl
   11724:	59                   	pop    cx
   11725:	03 cb                	add    cx,bx
   11727:	8a dc                	mov    bl,ah
   11729:	25 0f 00             	and    ax,0xf
   1172c:	83 e3 0f             	and    bx,0xf
   1172f:	3b d1                	cmp    dx,cx
   11731:	75 02                	jne    0x11735
   11733:	3b c3                	cmp    ax,bx
   11735:	c3                   	ret
   11736:	55                   	push   bp
   11737:	8b ec                	mov    bp,sp
   11739:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   1173c:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   1173f:	ef                   	out    dx,ax
   11740:	5d                   	pop    bp
   11741:	cb                   	retf
   11742:	55                   	push   bp
   11743:	8b ec                	mov    bp,sp
   11745:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11748:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   1174b:	ee                   	out    dx,al
   1174c:	5d                   	pop    bp
   1174d:	cb                   	retf
   1174e:	55                   	push   bp
   1174f:	8b ec                	mov    bp,sp
   11751:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11754:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   11757:	ef                   	out    dx,ax
   11758:	5d                   	pop    bp
   11759:	cb                   	retf
   1175a:	55                   	push   bp
   1175b:	8b ec                	mov    bp,sp
   1175d:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   11760:	8a 46 08             	mov    al,BYTE PTR [bp+0x8]
   11763:	ee                   	out    dx,al
   11764:	32 e4                	xor    ah,ah
   11766:	5d                   	pop    bp
   11767:	cb                   	retf
   11768:	55                   	push   bp
   11769:	8b ec                	mov    bp,sp
   1176b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   1176e:	c7 06 c6 94 00 00    	mov    WORD PTR ds:0x94c6,0x0
   11774:	a3 c4 94             	mov    ds:0x94c4,ax
   11777:	5d                   	pop    bp
   11778:	cb                   	retf
