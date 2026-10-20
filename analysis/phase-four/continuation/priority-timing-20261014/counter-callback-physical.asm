
lale/IST.EXE:     file format binary


Disassembly of section .data:

00010164 <.data+0x10164>:
   10164:	50                   	push   %ax
   10165:	53                   	push   %bx
   10166:	51                   	push   %cx
   10167:	52                   	push   %dx
   10168:	06                   	push   %es
   10169:	1e                   	push   %ds
   1016a:	56                   	push   %si
   1016b:	57                   	push   %di
   1016c:	55                   	push   %bp
   1016d:	bd e0 16             	mov    $0x16e0,%bp
   10170:	8e dd                	mov    %bp,%ds
   10172:	66 50                	push   %eax
   10174:	66 a1 4a e7          	mov    0xe74a,%eax
   10178:	66 05 0a 00 00 00    	add    $0xa,%eax
   1017e:	66 a3 4a e7          	mov    %eax,0xe74a
   10182:	66 58                	pop    %eax
   10184:	5d                   	pop    %bp
   10185:	5f                   	pop    %di
   10186:	5e                   	pop    %si
   10187:	1f                   	pop    %ds
   10188:	07                   	pop    %es
   10189:	5a                   	pop    %dx
   1018a:	59                   	pop    %cx
   1018b:	5b                   	pop    %bx
   1018c:	58                   	pop    %ax
   1018d:	cf                   	iret
   1018e:	68 b7 0d             	push   $0xdb7
   10191:	68 f4 01             	push   $0x1f4
   10194:	6a 00                	push   $0x0
   10196:	68 9b 2e             	push   $0x2e9b
   10199:	9a 78 01 ef 10       	lcall  $0x10ef,$0x178
   1019e:	cb                   	lret
