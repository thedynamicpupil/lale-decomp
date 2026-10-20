
analysis/phase-five/area-fields-20261015/area/group-arithmetic.bin:     file format binary


Disassembly of section .data:

00043851 <.data>:
   43851:	8b 46 d0             	mov    ax,WORD PTR [bp-0x30]
   43854:	3b 46 cc             	cmp    ax,WORD PTR [bp-0x34]
   43857:	7d 07                	jge    0x43860
   43859:	c7 46 f4 ff ff       	mov    WORD PTR [bp-0xc],0xffff
   4385e:	eb 14                	jmp    0x43874
   43860:	8b 46 d0             	mov    ax,WORD PTR [bp-0x30]
   43863:	3b 46 cc             	cmp    ax,WORD PTR [bp-0x34]
   43866:	75 07                	jne    0x4386f
   43868:	c7 46 f4 00 00       	mov    WORD PTR [bp-0xc],0x0
   4386d:	eb 05                	jmp    0x43874
   4386f:	c7 46 f4 01 00       	mov    WORD PTR [bp-0xc],0x1
   43874:	8a 46 d0             	mov    al,BYTE PTR [bp-0x30]
   43877:	2a 46 cc             	sub    al,BYTE PTR [bp-0x34]
   4387a:	c0 e0 05             	shl    al,0x5
   4387d:	2a 46 f4             	sub    al,BYTE PTR [bp-0xc]
   43880:	02 46 ce             	add    al,BYTE PTR [bp-0x32]
   43883:	2a 46 ca             	sub    al,BYTE PTR [bp-0x36]
   43886:	88 46 e8             	mov    BYTE PTR [bp-0x18],al
