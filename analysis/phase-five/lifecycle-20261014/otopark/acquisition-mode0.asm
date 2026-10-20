
analysis/phase-five/lifecycle-20261014/otopark/acquisition-mode0.bin:     file format binary


Disassembly of section .data:

00046591 <.data>:
   46591:	55                   	push   bp
   46592:	8b ec                	mov    bp,sp
   46594:	83 ec 50             	sub    sp,0x50
   46597:	8d 46 b0             	lea    ax,[bp-0x50]
   4659a:	16                   	push   ss
   4659b:	50                   	push   ax
   4659c:	1e                   	push   ds
   4659d:	68 0c 5c             	push   0x5c0c
   465a0:	b9 32 00             	mov    cx,0x32
   465a3:	9a 7a 12 00 00       	call   0x0:0x127a
   465a8:	c7 46 e4 cd 00       	mov    WORD PTR [bp-0x1c],0xcd
   465ad:	6a 0f                	push   0xf
   465af:	9a ca 00 10 01       	call   0x110:0xca
   465b4:	59                   	pop    cx
   465b5:	9a b9 1e 10 00       	call   0x10:0x1eb9
   465ba:	68 88 01             	push   0x188
   465bd:	68 2c 96             	push   0x962c
   465c0:	68 88 01             	push   0x188
   465c3:	68 dc 97             	push   0x97dc
   465c6:	b9 48 00             	mov    cx,0x48
   465c9:	9a 7a 12 00 00       	call   0x0:0x127a
   465ce:	6a 00                	push   0x0
   465d0:	b8 88 01             	mov    ax,0x188
   465d3:	8e c0                	mov    es,ax
   465d5:	26 ff 36 39 e5       	push   WORD PTR es:0xe539
   465da:	26 ff 36 37 e5       	push   WORD PTR es:0xe537
   465df:	9a f4 05 20 00       	call   0x20:0x5f4
   465e4:	83 c4 06             	add    sp,0x6
   465e7:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   465ea:	b4 00                	mov    ah,0x0
   465ec:	0b c0                	or     ax,ax
   465ee:	74 10                	je     0x46600
   465f0:	3d 01 00             	cmp    ax,0x1
   465f3:	74 57                	je     0x4664c
   465f5:	3d 02 00             	cmp    ax,0x2
   465f8:	75 03                	jne    0x465fd
   465fa:	e9 56 01             	jmp    0x46753
   465fd:	e9 60 02             	jmp    0x46860
   46600:	1e                   	push   ds
   46601:	68 18 62             	push   0x6218
   46604:	16                   	push   ss
   46605:	8d 46 b0             	lea    ax,[bp-0x50]
   46608:	50                   	push   ax
   46609:	9a b4 48 00 00       	call   0x0:0x48b4
   4660e:	83 c4 08             	add    sp,0x8
   46611:	b8 88 01             	mov    ax,0x188
   46614:	8b 16 a2 bb          	mov    dx,WORD PTR ds:0xbba2
   46618:	8e c0                	mov    es,ax
   4661a:	26 01 16 6f bb       	add    WORD PTR es:0xbb6f,dx
   4661f:	b8 88 01             	mov    ax,0x188
   46622:	8b 16 a4 bb          	mov    dx,WORD PTR ds:0xbba4
   46626:	8e c0                	mov    es,ax
   46628:	26 01 16 71 bb       	add    WORD PTR es:0xbb71,dx
   4662d:	b8 88 01             	mov    ax,0x188
   46630:	8b 16 a6 bb          	mov    dx,WORD PTR ds:0xbba6
   46634:	8e c0                	mov    es,ax
   46636:	26 01 16 73 bb       	add    WORD PTR es:0xbb73,dx
   4663b:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   46640:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   46643:	50                   	push   ax
   46644:	0e                   	push   cs
   46645:	e8 97 fd             	call   0x463df
   46648:	59                   	pop    cx
   46649:	e9 29 02             	jmp    0x46875
