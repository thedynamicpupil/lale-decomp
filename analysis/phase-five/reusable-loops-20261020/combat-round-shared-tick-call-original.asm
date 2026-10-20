
analysis/phase-five/reusable-loops-20261020/combat-round-shared-tick-call-original.bin:     file format binary


Disassembly of section .data:

0004b88b <.data>:
   4b88b:	83 3e 30 63 1c       	cmp    WORD PTR ds:0x6330,0x1c
   4b890:	7e 20                	jle    0x4b8b2
   4b892:	c7 06 30 63 01 00    	mov    WORD PTR ds:0x6330,0x1
   4b898:	ff 06 4a d5          	inc    WORD PTR ds:0xd54a
   4b89c:	6a 01                	push   0x1
   4b89e:	9a 48 00 18 01       	call   0x118:0x48
   4b8a3:	59                   	pop    cx
   4b8a4:	c7 06 50 d5 00 00    	mov    WORD PTR ds:0xd550,0x0
   4b8aa:	c7 06 4e d5 00 00    	mov    WORD PTR ds:0xd54e,0x0
   4b8b0:	eb d0                	jmp    0x4b882
