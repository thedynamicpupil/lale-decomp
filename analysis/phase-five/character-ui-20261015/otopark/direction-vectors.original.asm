
analysis/phase-five/character-ui-20261015/otopark/direction-vectors.original.bin:     file format binary


Disassembly of section .data:

00028665 <.data>:
   28665:	55                   	push   bp
   28666:	8b ec                	mov    bp,sp
   28668:	a0 f0 b9             	mov    al,ds:0xb9f0
   2866b:	b4 00                	mov    ah,0x0
   2866d:	bb 04 00             	mov    bx,0x4
   28670:	99                   	cwd
   28671:	f7 fb                	idiv   bx
   28673:	88 16 f0 b9          	mov    BYTE PTR ds:0xb9f0,dl
   28677:	8a c2                	mov    al,dl
   28679:	b4 00                	mov    ah,0x0
   2867b:	8b d8                	mov    bx,ax
   2867d:	83 fb 03             	cmp    bx,0x3
   28680:	77 3f                	ja     0x286c1
   28682:	d1 e3                	shl    bx,1
   28684:	2e ff a7 a8 02       	jmp    WORD PTR cs:[bx+0x2a8]
   28689:	c7 06 c6 b9 00 00    	mov    WORD PTR ds:0xb9c6,0x0
   2868f:	c7 06 c4 b9 ff ff    	mov    WORD PTR ds:0xb9c4,0xffff
   28695:	eb 3f                	jmp    0x286d6
   28697:	c7 06 c4 b9 00 00    	mov    WORD PTR ds:0xb9c4,0x0
   2869d:	c7 06 c6 b9 01 00    	mov    WORD PTR ds:0xb9c6,0x1
   286a3:	eb 31                	jmp    0x286d6
   286a5:	c7 06 c6 b9 00 00    	mov    WORD PTR ds:0xb9c6,0x0
   286ab:	c7 06 c4 b9 01 00    	mov    WORD PTR ds:0xb9c4,0x1
   286b1:	eb 23                	jmp    0x286d6
   286b3:	c7 06 c4 b9 00 00    	mov    WORD PTR ds:0xb9c4,0x0
   286b9:	c7 06 c6 b9 ff ff    	mov    WORD PTR ds:0xb9c6,0xffff
   286bf:	eb 15                	jmp    0x286d6
   286c1:	6a 4f                	push   0x4f
   286c3:	6a 00                	push   0x0
   286c5:	6a 00                	push   0x0
   286c7:	68 f5 00             	push   0xf5
   286ca:	1e                   	push   ds
   286cb:	68 1f 3b             	push   0x3b1f
   286ce:	9a 2a 00 58 01       	call   0x158:0x2a
   286d3:	83 c4 0c             	add    sp,0xc
   286d6:	5d                   	pop    bp
   286d7:	cb                   	retf
   286d8:	59                   	pop    cx
   286d9:	02 67 02             	add    ah,BYTE PTR [bx+0x2]
   286dc:	75 02                	jne    0x286e0
   286de:	83                   	.byte 0x83
   286df:	02                   	.byte 0x2
