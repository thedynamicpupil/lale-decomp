
analysis/phase-five/navigation-events-20261016/event-loop-tail.bin:     file format binary


Disassembly of section .data:

00045689 <.data>:
   45689:	90                   	nop
   4568a:	0e                   	push   cs
   4568b:	e8 b0 00             	call   0x4573e
   4568e:	eb 0a                	jmp    0x4569a
   45690:	9a 89 00 18 01       	call   0x118:0x89
   45695:	9a b9 1e 10 00       	call   0x10:0x1eb9
   4569a:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   4569f:	eb 2d                	jmp    0x456ce
   456a1:	8a 46 e5             	mov    al,BYTE PTR [bp-0x1b]
   456a4:	b4 00                	mov    ah,0x0
   456a6:	50                   	push   ax
   456a7:	1e                   	push   ds
   456a8:	68 30 61             	push   0x6130
   456ab:	68 88 01             	push   0x188
   456ae:	68 cc ba             	push   0xbacc
   456b1:	9a b4 48 00 00       	call   0x0:0x48b4
   456b6:	83 c4 0a             	add    sp,0xa
   456b9:	6a 5d                	push   0x5d
   456bb:	6a 00                	push   0x0
   456bd:	6a 00                	push   0x0
   456bf:	68 be 03             	push   0x3be
   456c2:	1e                   	push   ds
   456c3:	68 33 61             	push   0x6133
   456c6:	9a 2a 00 58 01       	call   0x158:0x2a
   456cb:	83 c4 0c             	add    sp,0xc
   456ce:	a0 93 bb             	mov    al,ds:0xbb93
   456d1:	fe 0e 93 bb          	dec    BYTE PTR ds:0xbb93
   456d5:	0a c0                	or     al,al
   456d7:	74 09                	je     0x456e2
   456d9:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   456dd:	74 03                	je     0x456e2
   456df:	e9 67 e8             	jmp    0x43f49
   456e2:	9a b9 1e 10 00       	call   0x10:0x1eb9
   456e7:	b8 88 01             	mov    ax,0x188
   456ea:	8e c0                	mov    es,ax
   456ec:	26 ff 36 c8 b9       	push   WORD PTR es:0xb9c8
   456f1:	9a 2f 00 18 01       	call   0x118:0x2f
   456f6:	59                   	pop    cx
   456f7:	8a 46 e7             	mov    al,BYTE PTR [bp-0x19]
   456fa:	c9                   	leave
   456fb:	cb                   	retf
