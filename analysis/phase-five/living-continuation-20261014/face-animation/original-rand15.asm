
analysis/phase-five/living-continuation-20261014/face-animation/original-rand15.bin:     file format binary


Disassembly of section .data:

00003b79 <.data>:
    3b79:	8b 0e c6 94          	mov    cx,WORD PTR ds:0x94c6
    3b7d:	8b 1e c4 94          	mov    bx,WORD PTR ds:0x94c4
    3b81:	ba 5a 01             	mov    dx,0x15a
    3b84:	b8 35 4e             	mov    ax,0x4e35
    3b87:	e8 74 ff             	call   0x3afe
    3b8a:	05 01 00             	add    ax,0x1
    3b8d:	83 d2 00             	adc    dx,0x0
    3b90:	89 16 c6 94          	mov    WORD PTR ds:0x94c6,dx
    3b94:	a3 c4 94             	mov    ds:0x94c4,ax
    3b97:	a1 c6 94             	mov    ax,ds:0x94c6
    3b9a:	99                   	cwd
    3b9b:	25 ff 7f             	and    ax,0x7fff
    3b9e:	cb                   	retf
