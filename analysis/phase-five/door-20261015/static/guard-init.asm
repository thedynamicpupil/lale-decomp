
analysis/phase-five/door-20261015/static/guard-init.bin:     file format binary


Disassembly of section .data:

00033170 <.data>:
   33170:	48                   	dec    ax
   33171:	00 9a 7a 12          	add    BYTE PTR [bp+si+0x127a],bl
   33175:	00 00                	add    BYTE PTR [bx+si],al
   33177:	90                   	nop
   33178:	0e                   	push   cs
   33179:	e8 ce 3c             	call   0x36e4a
   3317c:	68 88 01             	push   0x188
   3317f:	68 2c 96             	push   0x962c
   33182:	68 88 01             	push   0x188
   33185:	68 24 98             	push   0x9824
   33188:	b9 48 00             	mov    cx,0x48
   3318b:	9a 7a 12 00 00       	call   0x0:0x127a
   33190:	6a 03                	push   0x3
   33192:	9a c5 00 10 01       	call   0x110:0xc5
   33197:	59                   	pop    cx
   33198:	9a 04 02 30 00       	call   0x30:0x204
   3319d:	b8 88 01             	mov    ax,0x188
   331a0:	8e c0                	mov    es,ax
   331a2:	26 a0 71 96          	mov    al,es:0x9671
   331a6:	b4 00                	mov    ah,0x0
   331a8:	ba 88 01             	mov    dx,0x188
   331ab:	8e c2                	mov    es,dx
   331ad:	26 a3 e3 e5          	mov    es:0xe5e3,ax
   331b1:	b8 88 01             	mov    ax,0x188
   331b4:	8e c0                	mov    es,ax
   331b6:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   331bb:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   331c0:	b8 88 01             	mov    ax,0x188
   331c3:	8e c0                	mov    es,ax
   331c5:	26 ff 36 21 e5       	push   WORD PTR es:0xe521
   331ca:	26 ff 36 1f e5       	push   WORD PTR es:0xe51f
   331cf:	9a 8a 06 20 00       	call   0x20:0x68a
   331d4:	83 c4 08             	add    sp,0x8
   331d7:	83 0e 5e 3d 10       	or     WORD PTR ds:0x3d5e,0x10
   331dc:	90                   	nop
   331dd:	0e                   	push   cs
   331de:	e8 98 19             	call   0x34b79
   331e1:	b8 88 01             	mov    ax,0x188
   331e4:	8e c0                	mov    es,ax
   331e6:	26 c6 06 06 3b 00    	mov    BYTE PTR es:0x3b06,0x0
   331ec:	9a 6b 00 10 01       	call   0x110:0x6b
   331f1:	6a 01                	push   0x1
   331f3:	0e                   	push   cs
   331f4:	e8 cf f4             	call   0x326c6
   331f7:	59                   	pop    cx
   331f8:	68 b2 00             	push   0xb2
   331fb:	68 c6 00             	push   0xc6
   331fe:	90                   	nop
   331ff:	0e                   	push   cs
   33200:	e8 2f 3a             	call   0x36c32
   33203:	83 c4 04             	add    sp,0x4
   33206:	9a 5c 00 30 01       	call   0x130:0x5c
   3320b:	83 26 5e 3d ef       	and    WORD PTR ds:0x3d5e,0xffef
   33210:	6a 00                	push   0x0
   33212:	8a 46 f8             	mov    al,BYTE PTR [bp-0x8]
   33215:	b4 00                	mov    ah,0x0
   33217:	50                   	push   ax
   33218:	e9 e5 00             	jmp    0x33300
   3321b:	b8 88 01             	mov    ax,0x188
   3321e:	8e c0                	mov    es,ax
   33220:	26 c7 06 fb 3a 64 00 	mov    WORD PTR es:0x3afb,0x64
   33227:	b8 88 01             	mov    ax,0x188
   3322a:	8e c0                	mov    es,ax
   3322c:	26 c7 06 fd 3a 64 00 	mov    WORD PTR es:0x3afd,0x64
   33233:	c6 06 3a bb 00       	mov    BYTE PTR ds:0xbb3a,0x0
   33238:	b8 88 01             	mov    ax,0x188
   3323b:	8e c0                	mov    es,ax
   3323d:	26 c7 06 74 6d 09 00 	mov    WORD PTR es:0x6d74,0x9
   33244:	c6 06 34 bb 01       	mov    BYTE PTR ds:0xbb34,0x1
   33249:	b8 88 01             	mov    ax,0x188
   3324c:	8e c0                	mov    es,ax
   3324e:	26 c6 06 08 3b 01    	mov    BYTE PTR es:0x3b08,0x1
   33254:	9a 04 02 30 00       	call   0x30:0x204
   33259:	c7 46 fa 00 00       	mov    WORD PTR [bp-0x6],0x0
   3325e:	eb 14                	jmp    0x33274
   33260:	8b 5e fa             	mov    bx,WORD PTR [bp-0x6]
   33263:	6b db 11             	imul   bx,bx,0x11
   33266:	b8 88 01             	mov    ax,0x188
   33269:	8e c0                	mov    es,ax
   3326b:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   33271:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   33274:	83 7e fa 04          	cmp    WORD PTR [bp-0x6],0x4
   33278:	7c e6                	jl     0x33260
   3327a:	b8 88 01             	mov    ax,0x188
   3327d:	8e c0                	mov    es,ax
   3327f:	26 a1 18 73          	mov    ax,es:0x7318
   33283:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   33286:	6a 00                	push   0x0
   33288:	b8 88 01             	mov    ax,0x188
   3328b:	8e c0                	mov    es,ax
   3328d:	26                   	es
   3328e:	a1                   	.byte 0xa1
   3328f:	18                   	.byte 0x18
