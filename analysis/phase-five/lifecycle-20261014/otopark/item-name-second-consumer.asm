
analysis/phase-five/lifecycle-20261014/otopark/item-name-second-consumer.bin:     file format binary


Disassembly of section .data:

00037be2 <.data>:
   37be2:	b8 88 01             	mov    ax,0x188
   37be5:	8e c0                	mov    es,ax
   37be7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37bec:	6b db 5c             	imul   bx,bx,0x5c
   37bef:	b8 88 01             	mov    ax,0x188
   37bf2:	8e c0                	mov    es,ax
   37bf4:	26 8b 87 d2 99       	mov    ax,WORD PTR es:[bx-0x662e]
   37bf9:	6b c0 0f             	imul   ax,ax,0xf
   37bfc:	05 e2 0c             	add    ax,0xce2
   37bff:	68 88 01             	push   0x188
   37c02:	50                   	push   ax
   37c03:	16                   	push   ss
   37c04:	8d 46 c6             	lea    ax,[bp-0x3a]
   37c07:	50                   	push   ax
   37c08:	9a 7a 53 00 00       	call   0x0:0x537a
   37c0d:	83 c4 08             	add    sp,0x8
