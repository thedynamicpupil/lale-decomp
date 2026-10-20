
lale/IST.EXE:     file format binary


Disassembly of section .data:

0004bf03 <.data+0x4bf03>:
   4bf03:	55                   	push   bp
   4bf04:	8b ec                	mov    bp,sp
   4bf06:	6a 00                	push   0x0
   4bf08:	6a 0e                	push   0xe
   4bf0a:	9a 1d 0a 20 00       	call   0x20:0xa1d
   4bf0f:	83 c4 04             	add    sp,0x4
   4bf12:	bb 88 01             	mov    bx,0x188
   4bf15:	8e c3                	mov    es,bx
   4bf17:	26 89 16 62 96       	mov    WORD PTR es:0x9662,dx
   4bf1c:	26 a3 60 96          	mov    es:0x9660,ax
   4bf20:	b8 88 01             	mov    ax,0x188
   4bf23:	8e c0                	mov    es,ax
   4bf25:	26 c7 06 4e 96 38 01 	mov    WORD PTR es:0x964e,0x138
   4bf2c:	26 c7 06 4c 96 7a 00 	mov    WORD PTR es:0x964c,0x7a
   4bf33:	b8 88 01             	mov    ax,0x188
   4bf36:	8e c0                	mov    es,ax
   4bf38:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf3d:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4bf40:	26 89 07             	mov    WORD PTR es:[bx],ax
   4bf43:	b8 88 01             	mov    ax,0x188
   4bf46:	8e c0                	mov    es,ax
   4bf48:	26 c4 1e 60 96       	les    bx,DWORD PTR es:0x9660
   4bf4d:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   4bf50:	26 89 47 02          	mov    WORD PTR es:[bx+0x2],ax
