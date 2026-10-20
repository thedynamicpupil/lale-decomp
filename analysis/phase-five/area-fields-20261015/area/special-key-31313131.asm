
analysis/phase-five/area-fields-20261015/area/special-key-31313131.bin:     file format binary


Disassembly of section .data:

00043d35 <.data>:
   43d35:	1e                   	push   ds
   43d36:	68 37 5e             	push   0x5e37
   43d39:	16                   	push   ss
   43d3a:	8d 46 ea             	lea    ax,[bp-0x16]
   43d3d:	50                   	push   ax
   43d3e:	9a 73 49 00 00       	call   0x0:0x4973
   43d43:	83 c4 08             	add    sp,0x8
   43d46:	0b c0                	or     ax,ax
   43d48:	75 17                	jne    0x43d61
   43d4a:	80 7e 08 02          	cmp    BYTE PTR [bp+0x8],0x2
   43d4e:	75 0e                	jne    0x43d5e
   43d50:	b8 88 01             	mov    ax,0x188
   43d53:	8e c0                	mov    es,ax
   43d55:	26 83 0e 5e 3d 04    	or     WORD PTR es:0x3d5e,0x4
   43d5b:	e9 4e f9             	jmp    0x436ac
   43d5e:	e9 4b f9             	jmp    0x436ac
   43d61:	b8 88 01             	mov    ax,0x188
   43d64:	8e c0                	mov    es,ax
   43d66:	26 83 26 5e 3d fb    	and    WORD PTR es:0x3d5e,0xfffb
