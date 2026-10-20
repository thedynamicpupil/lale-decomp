
/home/zabumafu/Projects/LALE DOS/analysis/phase-five/lifecycle-20261014/otopark/set-event-bit.bin:     file format binary


Disassembly of section .data:

0004414e <.data>:
   4414e:	90                   	nop
   4414f:	0e                   	push   cs
   44150:	e8 80 43             	call   0x484d3
   44153:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44156:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44159:	b4 00                	mov    ah,0x0
   4415b:	50                   	push   ax
   4415c:	90                   	nop
   4415d:	0e                   	push   cs
   4415e:	e8 e8 3f             	call   0x48149
   44161:	59                   	pop    cx
   44162:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   44167:	77 03                	ja     0x4416c
   44169:	e9 62 15             	jmp    0x456ce
   4416c:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   4416f:	b4 00                	mov    ah,0x0
   44171:	50                   	push   ax
   44172:	1e                   	push   ds
   44173:	68 fa 5e             	push   0x5efa
   44176:	9a 53 42 00 00       	call   0x0:0x4253
   4417b:	83 c4 06             	add    sp,0x6
   4417e:	e9 7e 0d             	jmp    0x44eff
   44181:	e9 4a 15             	jmp    0x456ce
