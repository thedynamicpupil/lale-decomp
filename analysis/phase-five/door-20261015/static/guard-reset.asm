
analysis/phase-five/door-20261015/static/guard-reset.bin:     file format binary


Disassembly of section .data:

00034520 <.data>:
   34520:	00 6a 00             	add    BYTE PTR [bp+si+0x0],ch
   34523:	9a 4d 00 50 01       	call   0x150:0x4d
   34528:	83 c4 08             	add    sp,0x8
   3452b:	b8 88 01             	mov    ax,0x188
   3452e:	8e c0                	mov    es,ax
   34530:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   34535:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   3453a:	b8 88 01             	mov    ax,0x188
   3453d:	8e c0                	mov    es,ax
   3453f:	26 ff 36 21 e5       	push   WORD PTR es:0xe521
   34544:	26 ff 36 1f e5       	push   WORD PTR es:0xe51f
   34549:	9a 8a 06 20 00       	call   0x20:0x68a
   3454e:	83 c4 08             	add    sp,0x8
   34551:	b8 88 01             	mov    ax,0x188
   34554:	8e c0                	mov    es,ax
   34556:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3455c:	74 34                	je     0x34592
   3455e:	a1 75 bb             	mov    ax,ds:0xbb75
   34561:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   34565:	75 2b                	jne    0x34592
   34567:	b8 88 01             	mov    ax,0x188
   3456a:	8e c0                	mov    es,ax
   3456c:	26 83 3e 2e 63 02    	cmp    WORD PTR es:0x632e,0x2
   34572:	74 1e                	je     0x34592
   34574:	80 3e 36 bb 00       	cmp    BYTE PTR ds:0xbb36,0x0
   34579:	75 07                	jne    0x34582
   3457b:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   34580:	74 10                	je     0x34592
   34582:	6a 00                	push   0x0
   34584:	6a 01                	push   0x1
   34586:	ff 36 4d bb          	push   WORD PTR ds:0xbb4d
   3458a:	9a 43 00 28 01       	call   0x128:0x43
   3458f:	83 c4 06             	add    sp,0x6
   34592:	83 0e 5e 3d 10       	or     WORD PTR ds:0x3d5e,0x10
   34597:	90                   	nop
   34598:	0e                   	push   cs
   34599:	e8 dd 05             	call   0x34b79
   3459c:	b8 88 01             	mov    ax,0x188
   3459f:	8e c0                	mov    es,ax
   345a1:	26 c6 06 06 3b 00    	mov    BYTE PTR es:0x3b06,0x0
   345a7:	9a 6b 00 10 01       	call   0x110:0x6b
   345ac:	33 c0                	xor    ax,ax
   345ae:	a3 6e 3d             	mov    ds:0x3d6e,ax
   345b1:	a3 72 3d             	mov    ds:0x3d72,ax
   345b4:	a3 70 3d             	mov    ds:0x3d70,ax
   345b7:	90                   	nop
   345b8:	0e                   	push   cs
   345b9:	e8 c0 00             	call   0x3467c
   345bc:	6a 01                	push   0x1
   345be:	0e                   	push   cs
   345bf:	e8 04 e1             	call   0x326c6
   345c2:	59                   	pop    cx
   345c3:	68 b2 00             	push   0xb2
   345c6:	68 c6 00             	push   0xc6
   345c9:	90                   	nop
   345ca:	0e                   	push   cs
   345cb:	e8 64 26             	call   0x36c32
   345ce:	83 c4 04             	add    sp,0x4
   345d1:	9a 5c 00 30 01       	call   0x130:0x5c
   345d6:	90                   	nop
   345d7:	0e                   	push   cs
   345d8:	e8 03 16             	call   0x35bde
   345db:	83 26 5e 3d ef       	and    WORD PTR ds:0x3d5e,0xffef
   345e0:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   345e5:	75 2c                	jne    0x34613
   345e7:	b8 88 01             	mov    ax,0x188
   345ea:	8e c0                	mov    es,ax
   345ec:	26 a1 22 73          	mov    ax,es:0x7322
   345f0:	03 06 6e 3d          	add    ax,WORD PTR ds:0x3d6e
   345f4:	ba 88 01             	mov    dx,0x188
   345f7:	8e c2                	mov    es,dx
   345f9:	26 a3 1c 73          	mov    es:0x731c,ax
   345fd:	b8 88 01             	mov    ax,0x188
