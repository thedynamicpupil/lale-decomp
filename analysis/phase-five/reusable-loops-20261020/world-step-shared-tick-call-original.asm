
analysis/phase-five/reusable-loops-20261020/world-step-shared-tick-call-original.bin:     file format binary


Disassembly of section .data:

0003a4ab <.data>:
   3a4ab:	0e                   	push   cs
   3a4ac:	e8 5d 8a             	call   0x32f0c
   3a4af:	b8 88 01             	mov    ax,0x188
   3a4b2:	8e c0                	mov    es,ax
   3a4b4:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3a4b8:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   3a4bc:	75 12                	jne    0x3a4d0
   3a4be:	b8 88 01             	mov    ax,0x188
   3a4c1:	8e c0                	mov    es,ax
   3a4c3:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3a4c7:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   3a4cb:	75 03                	jne    0x3a4d0
   3a4cd:	e9 e3 06             	jmp    0x3abb3
   3a4d0:	6a 01                	push   0x1
   3a4d2:	0e                   	push   cs
   3a4d3:	e8 37 b4             	call   0x3590d
   3a4d6:	59                   	pop    cx
   3a4d7:	68 b2 00             	push   0xb2
   3a4da:	68 c6 00             	push   0xc6
   3a4dd:	0e                   	push   cs
   3a4de:	e8 51 c7             	call   0x36c32
   3a4e1:	83 c4 04             	add    sp,0x4
