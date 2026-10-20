
analysis/phase-five/reusable-loops-20261020/occupancy-original.bin:     file format binary


Disassembly of section .data:

0004a877 <.data>:
   4a877:	55                   	push   bp
   4a878:	8b ec                	mov    bp,sp
   4a87a:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   4a87d:	6b db 38             	imul   bx,bx,0x38
   4a880:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4a883:	d1 e0                	shl    ax,1
   4a885:	03 d8                	add    bx,ax
   4a887:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   4a88a:	89 87 ce c2          	mov    WORD PTR [bx-0x3d32],ax
   4a88e:	5d                   	pop    bp
   4a88f:	cb                   	retf
