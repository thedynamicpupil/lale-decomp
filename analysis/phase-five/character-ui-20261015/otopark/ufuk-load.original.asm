
analysis/phase-five/character-ui-20261015/otopark/ufuk-load.original.bin:     file format binary


Disassembly of section .data:

00034236 <.data>:
   34236:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   3423a:	6b db 1d             	imul   bx,bx,0x1d
   3423d:	b8 88 01             	mov    ax,0x188
   34240:	8e c0                	mov    es,ax
   34242:	26 8b 87 49 2e       	mov    ax,WORD PTR es:[bx+0x2e49]
   34247:	26 0b 87 4b 2e       	or     ax,WORD PTR es:[bx+0x2e4b]
   3424c:	74 47                	je     0x34295
   3424e:	b8 88 01             	mov    ax,0x188
   34251:	8e c0                	mov    es,ax
   34253:	26 a1 17 e5          	mov    ax,es:0xe517
   34257:	26 0b 06 19 e5       	or     ax,WORD PTR es:0xe519
   3425c:	74 15                	je     0x34273
   3425e:	1e                   	push   ds
   3425f:	68 dd 41             	push   0x41dd
   34262:	68 00 05             	push   0x500
   34265:	68 88 01             	push   0x188
   34268:	68 17 e5             	push   0xe517
   3426b:	9a 2f 02 40 00       	call   0x40:0x22f
   34270:	83 c4 0a             	add    sp,0xa
   34273:	6a 4f                	push   0x4f
   34275:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   34279:	6b db 1d             	imul   bx,bx,0x1d
   3427c:	b8 88 01             	mov    ax,0x188
   3427f:	8e c0                	mov    es,ax
   34281:	26 ff b7 4b 2e       	push   WORD PTR es:[bx+0x2e4b]
   34286:	26 ff b7 49 2e       	push   WORD PTR es:[bx+0x2e49]
   3428b:	6a 01                	push   0x1
   3428d:	9a 20 00 48 01       	call   0x148:0x20
   34292:	83 c4 08             	add    sp,0x8
