
lale/IST.EXE:     file format binary


Disassembly of section .data:

000484d3 <.data+0x484d3>:
   484d3:	55                   	push   bp
   484d4:	8b ec                	mov    bp,sp
   484d6:	83 ec 02             	sub    sp,0x2
   484d9:	1e                   	push   ds
   484da:	68 81 62             	push   0x6281
   484dd:	68 06 07             	push   0x706
   484e0:	68 88 01             	push   0x188
   484e3:	68 26 de             	push   0xde26
   484e6:	9a 81 0a 20 00       	call   0x20:0xa81
   484eb:	83 c4 0a             	add    sp,0xa
   484ee:	b8 88 01             	mov    ax,0x188
   484f1:	8e c0                	mov    es,ax
   484f3:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   484f8:	26 ff 37             	push   WORD PTR es:[bx]
   484fb:	a1 98 bb             	mov    ax,ds:0xbb98
   484fe:	99                   	cwd
   484ff:	52                   	push   dx
   48500:	50                   	push   ax
   48501:	a1 98 bb             	mov    ax,ds:0xbb98
   48504:	ff 06 98 bb          	inc    WORD PTR ds:0xbb98
   48508:	ba 88 01             	mov    dx,0x188
   4850b:	8e c2                	mov    es,dx
   4850d:	26 c4 1e 4f e3       	les    bx,DWORD PTR es:0xe34f
   48512:	26 8b 57 04          	mov    dx,WORD PTR es:[bx+0x4]
   48516:	2b d0                	sub    dx,ax
   48518:	52                   	push   dx
   48519:	9a 88 06 98 00       	call   0x98:0x688
   4851e:	8b d8                	mov    bx,ax
   48520:	8e c2                	mov    es,dx
   48522:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   48525:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   48528:	68 88 01             	push   0x188
   4852b:	68 26 de             	push   0xde26
   4852e:	9a 22 0b 20 00       	call   0x20:0xb22
   48533:	83 c4 04             	add    sp,0x4
   48536:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   48539:	c9                   	leave
   4853a:	cb                   	retf
