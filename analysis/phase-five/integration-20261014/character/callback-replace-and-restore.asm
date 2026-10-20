
lale/IST.EXE:     file format binary


Disassembly of section .data:

0004c142 <.data+0x4c142>:
   4c142:	83 3e 20 63 28       	cmp    WORD PTR ds:0x6320,0x28
   4c147:	7e 1e                	jle    0x4c167
   4c149:	6a 00                	push   0x0
   4c14b:	6a 00                	push   0x0
   4c14d:	6a 20                	push   0x20
   4c14f:	6a 20                	push   0x20
   4c151:	6a 15                	push   0x15
   4c153:	6a 07                	push   0x7
   4c155:	a1 20 63             	mov    ax,ds:0x6320
   4c158:	05 c0 ff             	add    ax,0xffc0
   4c15b:	50                   	push   ax
   4c15c:	0e                   	push   cs
   4c15d:	e8 a3 fd             	call   0x4bf03
   4c160:	83 c4 0e             	add    sp,0xe
   4c163:	c6 46 ff 01          	mov    BYTE PTR [bp-0x1],0x1
   4c167:	6a 08                	push   0x8
   4c169:	6a 21                	push   0x21
   4c16b:	9a 6a 1b 10 00       	call   0x10:0x1b6a
   4c170:	83 c4 04             	add    sp,0x4
   4c173:	80 7e ff 00          	cmp    BYTE PTR [bp-0x1],0x0
   4c177:	74 2a                	je     0x4c1a3
   4c179:	b8 88 01             	mov    ax,0x188
   4c17c:	8e c0                	mov    es,ax
   4c17e:	26 c7 06 4e 96 10 00 	mov    WORD PTR es:0x964e,0x10
   4c185:	26 c7 06 4c 96 cd 00 	mov    WORD PTR es:0x964c,0xcd
   4c18c:	b8 88 01             	mov    ax,0x188
   4c18f:	8e c0                	mov    es,ax
   4c191:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   4c196:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   4c19b:	9a c2 24 00 00       	call   0x0:0x24c2
   4c1a0:	83 c4 04             	add    sp,0x4
   4c1a3:	c7 06 20 63 ff 00    	mov    WORD PTR ds:0x6320,0xff
   4c1a9:	c9                   	leave
   4c1aa:	cb                   	retf
