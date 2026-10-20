
analysis/phase-five/world-ui-20261016/text-background-restore-1eb9.bin:     file format binary


Disassembly of section .data:

0000a079 <.data>:
    a079:	55                   	push   bp
    a07a:	8b ec                	mov    bp,sp
    a07c:	83 ec 02             	sub    sp,0x2
    a07f:	c7 46 fe 40 01       	mov    WORD PTR [bp-0x2],0x140
    a084:	b8 e0 16             	mov    ax,0x16e0
    a087:	8e c0                	mov    es,ax
    a089:	26 a1 57 e3          	mov    ax,es:0xe357
    a08d:	26 0b 06 59 e3       	or     ax,WORD PTR es:0xe359
    a092:	75 03                	jne    0xa097
    a094:	e9 86 00             	jmp    0xa11d
    a097:	b8 e0 16             	mov    ax,0x16e0
    a09a:	8e c0                	mov    es,ax
    a09c:	26 a0 5c 96          	mov    al,es:0x965c
    a0a0:	50                   	push   ax
    a0a1:	9a c7 05 7f 0c       	call   0xc7f:0x5c7
    a0a6:	59                   	pop    cx
    a0a7:	0a c0                	or     al,al
    a0a9:	74 05                	je     0xa0b0
    a0ab:	9a 04 02 7f 0c       	call   0xc7f:0x204
    a0b0:	b8 e0 16             	mov    ax,0x16e0
    a0b3:	8e c0                	mov    es,ax
    a0b5:	26 a1 55 e3          	mov    ax,es:0xe355
    a0b9:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    a0bc:	6a 00                	push   0x0
    a0be:	50                   	push   ax
    a0bf:	b8 e0 16             	mov    ax,0x16e0
    a0c2:	8e c0                	mov    es,ax
    a0c4:	26 a1 58 96          	mov    ax,es:0x9658
    a0c8:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    a0cb:	6a 00                	push   0x0
    a0cd:	50                   	push   ax
    a0ce:	6a 00                	push   0x0
    a0d0:	6a 00                	push   0x0
    a0d2:	b8 e0 16             	mov    ax,0x16e0
    a0d5:	8e c0                	mov    es,ax
    a0d7:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
    a0dc:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
    a0e1:	b8 e0 16             	mov    ax,0x16e0
    a0e4:	8e c0                	mov    es,ax
    a0e6:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
    a0eb:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
    a0f0:	9a c9 07 d4 09       	call   0x9d4:0x7c9
    a0f5:	83 c4 14             	add    sp,0x14
    a0f8:	1e                   	push   ds
    a0f9:	68 38 6d             	push   0x6d38
    a0fc:	68 24 02             	push   0x224
    a0ff:	68 e0 16             	push   0x16e0
    a102:	68 57 e3             	push   0xe357
    a105:	9a 2f 02 b7 0d       	call   0xdb7:0x22f
    a10a:	83 c4 0a             	add    sp,0xa
    a10d:	b8 e0 16             	mov    ax,0x16e0
    a110:	8e c0                	mov    es,ax
    a112:	26 a0 e3 e5          	mov    al,es:0xe5e3
    a116:	50                   	push   ax
    a117:	9a 69 00 7f 0c       	call   0xc7f:0x69
    a11c:	59                   	pop    cx
    a11d:	b8 e0 16             	mov    ax,0x16e0
    a120:	8e c0                	mov    es,ax
    a122:	26 c6 06 aa bb 00    	mov    BYTE PTR es:0xbbaa,0x0
    a128:	c9                   	leave
    a129:	cb                   	retf
