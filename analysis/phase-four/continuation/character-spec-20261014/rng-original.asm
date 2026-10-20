
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00011779 <.data+0x1779>:
   11779:	8b 0e c6 94          	mov    cx,WORD PTR ds:0x94c6
   1177d:	8b 1e c4 94          	mov    bx,WORD PTR ds:0x94c4
   11781:	ba 5a 01             	mov    dx,0x15a
   11784:	b8 35 4e             	mov    ax,0x4e35
   11787:	e8 74 ff             	call   0x116fe
   1178a:	05 01 00             	add    ax,0x1
   1178d:	83 d2 00             	adc    dx,0x0
   11790:	89 16 c6 94          	mov    WORD PTR ds:0x94c6,dx
   11794:	a3 c4 94             	mov    ds:0x94c4,ax
   11797:	a1 c6 94             	mov    ax,ds:0x94c6
   1179a:	99                   	cwd
   1179b:	25 ff 7f             	and    ax,0x7fff
   1179e:	cb                   	retf
   1179f:	55                   	push   bp
   117a0:	8b ec                	mov    bp,sp
   117a2:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   117a5:	d1 e3                	shl    bx,1
   117a7:	f7 87 30 94 02 00    	test   WORD PTR [bx-0x6bd0],0x2
   117ad:	74 06                	je     0x117b5
   117af:	b8 05 00             	mov    ax,0x5
   117b2:	50                   	push   ax
   117b3:	eb 14                	jmp    0x117c9
   117b5:	1e                   	push   ds
   117b6:	b4 3f                	mov    ah,0x3f
   117b8:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   117bb:	8b 4e 0c             	mov    cx,WORD PTR [bp+0xc]
   117be:	c5 56 08             	lds    dx,DWORD PTR [bp+0x8]
   117c1:	cd 21                	int    0x21
   117c3:	1f                   	pop    ds
   117c4:	72 02                	jb     0x117c8
   117c6:	eb 04                	jmp    0x117cc
   117c8:	50                   	push   ax
   117c9:	e8 57 fd             	call   0x11523
   117cc:	5d                   	pop    bp
   117cd:	cb                   	retf
   117ce:	55                   	push   bp
   117cf:	8b ec                	mov    bp,sp
   117d1:	56                   	push   si
   117d2:	8c c3                	mov    bx,es
   117d4:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   117d7:	26 89 1c             	mov    WORD PTR es:[si],bx
   117da:	8b 46 04             	mov    ax,WORD PTR [bp+0x4]
   117dd:	26 89 44 02          	mov    WORD PTR es:[si+0x2],ax
   117e1:	26 8c 54 04          	mov    WORD PTR es:[si+0x4],ss
   117e5:	26 8c 5c 06          	mov    WORD PTR es:[si+0x6],ds
   117e9:	8e c3                	mov    es,bx
   117eb:	5e                   	pop    si
   117ec:	5d                   	pop    bp
   117ed:	cb                   	retf
   117ee:	55                   	push   bp
   117ef:	8b ec                	mov    bp,sp
   117f1:	56                   	push   si
   117f2:	b4 2b                	mov    ah,0x2b
   117f4:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   117f7:	26 8b 0c             	mov    cx,WORD PTR es:[si]
   117fa:	26 8b 54 02          	mov    dx,WORD PTR es:[si+0x2]
   117fe:	cd 21                	int    0x21
   11800:	5e                   	pop    si
   11801:	5d                   	pop    bp
   11802:	cb                   	retf
   11803:	55                   	push   bp
   11804:	8b ec                	mov    bp,sp
   11806:	56                   	push   si
   11807:	b4 2d                	mov    ah,0x2d
   11809:	c4 76 06             	les    si,DWORD PTR [bp+0x6]
   1180c:	26 8b 0c             	mov    cx,WORD PTR es:[si]
   1180f:	26 8b 54 02          	mov    dx,WORD PTR es:[si+0x2]
   11813:	cd 21                	int    0x21
   11815:	5e                   	pop    si
   11816:	5d                   	pop    bp
   11817:	cb                   	retf
   11818:	b9 05 00             	mov    cx,0x5
   1181b:	3b 0e 2e 94          	cmp    cx,WORD PTR ds:0x942e
   1181f:	73 38                	jae    0x11859
   11821:	8b d9                	mov    bx,cx
   11823:	d1 e3                	shl    bx,1
   11825:	c7 87 30 94 00 00    	mov    WORD PTR [bx-0x6bd0],0x0
   1182b:	8b c1                	mov    ax,cx
   1182d:	ba 14 00             	mov    dx,0x14
   11830:	f7 ea                	imul   dx
   11832:	8b d8                	mov    bx,ax
   11834:	c6 87 a2 92 ff       	mov    BYTE PTR [bx-0x6d5e],0xff
   11839:	8b c1                	mov    ax,cx
   1183b:	ba 14 00             	mov    dx,0x14
   1183e:	f7 ea                	imul   dx
   11840:	05 9e 92             	add    ax,0x929e
   11843:	50                   	push   ax
   11844:	8b c1                	mov    ax,cx
   11846:	ba 14 00             	mov    dx,0x14
   11849:	f7 ea                	imul   dx
   1184b:	8b d8                	mov    bx,ax
   1184d:	58                   	pop    ax
   1184e:	89 87 b0 92          	mov    WORD PTR [bx-0x6d50],ax
   11852:	41                   	inc    cx
   11853:	3b 0e 2e 94          	cmp    cx,WORD PTR ds:0x942e
   11857:	72 c8                	jb     0x11821
   11859:	a0 a2 92             	mov    al,ds:0x92a2
   1185c:	98                   	cbw
   1185d:	50                   	push   ax
   1185e:	90                   	nop
   1185f:	0e                   	push   cs
