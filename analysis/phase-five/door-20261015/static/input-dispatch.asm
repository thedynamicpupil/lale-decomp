
analysis/phase-five/door-20261015/static/input-dispatch.bin:     file format binary


Disassembly of section .data:

00032f0c <.data>:
   32f0c:	55                   	push   bp
   32f0d:	8b ec                	mov    bp,sp
   32f0f:	83 ec 0c             	sub    sp,0xc
   32f12:	c6 46 f9 01          	mov    BYTE PTR [bp-0x7],0x1
   32f16:	c6 46 f8 00          	mov    BYTE PTR [bp-0x8],0x0
   32f1a:	c6 46 f7 00          	mov    BYTE PTR [bp-0x9],0x0
   32f1e:	b8 88 01             	mov    ax,0x188
   32f21:	8e c0                	mov    es,ax
   32f23:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   32f29:	74 03                	je     0x32f2e
   32f2b:	e9 f1 00             	jmp    0x3301f
   32f2e:	9a 15 05 30 00       	call   0x30:0x515
   32f33:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   32f36:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   32f3a:	7e 1a                	jle    0x32f56
   32f3c:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   32f40:	7d 14                	jge    0x32f56
   32f42:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   32f45:	05 3a 00             	add    ax,0x3a
   32f48:	c1 e0 08             	shl    ax,0x8
   32f4b:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   32f4e:	9a 14 07 30 00       	call   0x30:0x714
   32f53:	e9 e5 00             	jmp    0x3303b
   32f56:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   32f5a:	75 11                	jne    0x32f6d
   32f5c:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   32f61:	9a 14 07 30 00       	call   0x30:0x714
   32f66:	0e                   	push   cs
   32f67:	e8 81 fb             	call   0x32aeb
   32f6a:	e9 ce 00             	jmp    0x3303b
   32f6d:	83 7e fc 06          	cmp    WORD PTR [bp-0x4],0x6
   32f71:	75 07                	jne    0x32f7a
   32f73:	c7 46 fe 00 4b       	mov    WORD PTR [bp-0x2],0x4b00
   32f78:	eb d4                	jmp    0x32f4e
   32f7a:	83 7e fc 07          	cmp    WORD PTR [bp-0x4],0x7
   32f7e:	75 07                	jne    0x32f87
   32f80:	c7 46 fe 00 48       	mov    WORD PTR [bp-0x2],0x4800
   32f85:	eb c7                	jmp    0x32f4e
   32f87:	83 7e fc 08          	cmp    WORD PTR [bp-0x4],0x8
   32f8b:	75 07                	jne    0x32f94
   32f8d:	c7 46 fe 00 4d       	mov    WORD PTR [bp-0x2],0x4d00
   32f92:	eb ba                	jmp    0x32f4e
   32f94:	83 7e fc 09          	cmp    WORD PTR [bp-0x4],0x9
   32f98:	75 07                	jne    0x32fa1
   32f9a:	c7 46 fe 00 50       	mov    WORD PTR [bp-0x2],0x5000
   32f9f:	eb ad                	jmp    0x32f4e
   32fa1:	83 7e fc 0a          	cmp    WORD PTR [bp-0x4],0xa
   32fa5:	75 15                	jne    0x32fbc
   32fa7:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   32fac:	9a 14 07 30 00       	call   0x30:0x714
   32fb1:	8a 46 f9             	mov    al,BYTE PTR [bp-0x7]
   32fb4:	50                   	push   ax
   32fb5:	90                   	nop
   32fb6:	0e                   	push   cs
   32fb7:	e8 c7 69             	call   0x39981
   32fba:	eb 3e                	jmp    0x32ffa
   32fbc:	83 7e fc 0b          	cmp    WORD PTR [bp-0x4],0xb
   32fc0:	75 3d                	jne    0x32fff
   32fc2:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   32fc7:	9a 14 07 30 00       	call   0x30:0x714
   32fcc:	83 3e 72 3e 03       	cmp    WORD PTR ds:0x3e72,0x3
   32fd1:	75 20                	jne    0x32ff3
   32fd3:	6a 00                	push   0x0
   32fd5:	6a 01                	push   0x1
   32fd7:	1e                   	push   ds
   32fd8:	68 42 40             	push   0x4042
   32fdb:	9a 48 29 10 00       	call   0x10:0x2948
   32fe0:	83 c4 08             	add    sp,0x8
   32fe3:	68 2c 01             	push   0x12c
   32fe6:	9a ca 2d 10 00       	call   0x10:0x2dca
   32feb:	59                   	pop    cx
   32fec:	9a b9 1e 10 00       	call   0x10:0x1eb9
   32ff1:	eb 48                	jmp    0x3303b
   32ff3:	6a 01                	push   0x1
   32ff5:	90                   	nop
   32ff6:	0e                   	push   cs
   32ff7:	e8 45 6e             	call   0x39e3f
   32ffa:	59                   	pop    cx
   32ffb:	eb 3e                	jmp    0x3303b
   32ffd:	eb 3c                	jmp    0x3303b
   32fff:	83 7e fc 0c          	cmp    WORD PTR [bp-0x4],0xc
   33003:	75 11                	jne    0x33016
   33005:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   3300a:	9a 14 07 30 00       	call   0x30:0x714
   3300f:	90                   	nop
   33010:	0e                   	push   cs
   33011:	e8 4f 32             	call   0x36263
   33014:	eb 25                	jmp    0x3303b
   33016:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   3301b:	eb 1e                	jmp    0x3303b
   3301d:	eb 1c                	jmp    0x3303b
   3301f:	9a 45 2e 00 00       	call   0x0:0x2e45
   33024:	0b c0                	or     ax,ax
   33026:	75 03                	jne    0x3302b
   33028:	e9 12 07             	jmp    0x3373d
   3302b:	6a 00                	push   0x0
   3302d:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   33032:	59                   	pop    cx
   33033:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   33036:	9a e3 01 40 00       	call   0x40:0x1e3
   3303b:	f7 46 fe ff 00       	test   WORD PTR [bp-0x2],0xff
   33040:	74 03                	je     0x33045
   33042:	e9 2f 03             	jmp    0x33374
   33045:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33048:	c1 fb 08             	sar    bx,0x8
   3304b:	83 eb 3b             	sub    bx,0x3b
   3304e:	83 fb 16             	cmp    bx,0x16
   33051:	76 03                	jbe    0x33056
   33053:	e9 0e 03             	jmp    0x33364
   33056:	d1 e3                	shl    bx,1
   33058:	2e ff a7 6f 18       	jmp    WORD PTR cs:[bx+0x186f]
   3305d:	b8 88 01             	mov    ax,0x188
   33060:	8e c0                	mov    es,ax
   33062:	26 a0 f0 b9          	mov    al,es:0xb9f0
   33066:	50                   	push   ax
   33067:	b8 88 01             	mov    ax,0x188
   3306a:	8e c0                	mov    es,ax
   3306c:	26 ff 36 c4 b9       	push   WORD PTR es:0xb9c4
   33071:	b8 88 01             	mov    ax,0x188
   33074:	8e c0                	mov    es,ax
   33076:	26 ff 36 c6 b9       	push   WORD PTR es:0xb9c6
   3307b:	0e                   	push   cs
   3307c:	e8 91 ee             	call   0x31f10
   3307f:	83 c4 06             	add    sp,0x6
   33082:	0a c0                	or     al,al
   33084:	75 03                	jne    0x33089
   33086:	e9 ef 02             	jmp    0x33378
   33089:	b8 88 01             	mov    ax,0x188
   3308c:	8e c0                	mov    es,ax
   3308e:	26 c7 06 c8 b9 02 00 	mov    WORD PTR es:0xb9c8,0x2
   33095:	e9 e0 02             	jmp    0x33378
   33098:	e9 dd 02             	jmp    0x33378
   3309b:	b8 88 01             	mov    ax,0x188
   3309e:	8e c0                	mov    es,ax
   330a0:	26 a0 f0 b9          	mov    al,es:0xb9f0
   330a4:	04 03                	add    al,0x3
   330a6:	ba 88 01             	mov    dx,0x188
   330a9:	8e c2                	mov    es,dx
   330ab:	26 a2 f0 b9          	mov    es:0xb9f0,al
   330af:	9a 6b 00 10 01       	call   0x110:0x6b
   330b4:	b8 88 01             	mov    ax,0x188
   330b7:	8e c0                	mov    es,ax
   330b9:	26 c7 06 c8 b9 05 00 	mov    WORD PTR es:0xb9c8,0x5
   330c0:	e9 b5 02             	jmp    0x33378
   330c3:	b8 88 01             	mov    ax,0x188
   330c6:	8e c0                	mov    es,ax
   330c8:	26 fe 06 f0 b9       	inc    BYTE PTR es:0xb9f0
   330cd:	9a 6b 00 10 01       	call   0x110:0x6b
   330d2:	b8 88 01             	mov    ax,0x188
   330d5:	8e c0                	mov    es,ax
   330d7:	26 c7 06 c8 b9 04 00 	mov    WORD PTR es:0xb9c8,0x4
   330de:	e9 97 02             	jmp    0x33378
   330e1:	b8 88 01             	mov    ax,0x188
   330e4:	8e c0                	mov    es,ax
   330e6:	26 a0 f0 b9          	mov    al,es:0xb9f0
   330ea:	04 02                	add    al,0x2
   330ec:	50                   	push   ax
   330ed:	b8 88 01             	mov    ax,0x188
   330f0:	8e c0                	mov    es,ax
   330f2:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   330f6:	f7 d8                	neg    ax
   330f8:	50                   	push   ax
   330f9:	b8 88 01             	mov    ax,0x188
   330fc:	8e c0                	mov    es,ax
   330fe:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   33102:	f7 d8                	neg    ax
   33104:	50                   	push   ax
   33105:	0e                   	push   cs
   33106:	e8 07 ee             	call   0x31f10
   33109:	83 c4 06             	add    sp,0x6
   3310c:	0a c0                	or     al,al
   3310e:	75 03                	jne    0x33113
   33110:	e9 65 02             	jmp    0x33378
   33113:	b8 88 01             	mov    ax,0x188
   33116:	8e c0                	mov    es,ax
   33118:	26 c7 06 c8 b9 03 00 	mov    WORD PTR es:0xb9c8,0x3
   3311f:	e9 56 02             	jmp    0x33378
   33122:	e9 53 02             	jmp    0x33378
   33125:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33128:	c1 f8 08             	sar    ax,0x8
   3312b:	05 c6 ff             	add    ax,0xffc6
   3312e:	ba 88 01             	mov    dx,0x188
   33131:	8e c2                	mov    es,dx
   33133:	26 a3 98 28          	mov    es:0x2898,ax
   33137:	6a 0f                	push   0xf
   33139:	9a ca 00 10 01       	call   0x110:0xca
   3313e:	59                   	pop    cx
   3313f:	b8 88 01             	mov    ax,0x188
   33142:	8e c0                	mov    es,ax
   33144:	26 a0 18 73          	mov    al,es:0x7318
   33148:	88 46 f8             	mov    BYTE PTR [bp-0x8],al
   3314b:	6a 00                	push   0x0
   3314d:	b8 88 01             	mov    ax,0x188
   33150:	8e c0                	mov    es,ax
   33152:	26 a1 18 73          	mov    ax,es:0x7318
   33156:	f7 d8                	neg    ax
   33158:	50                   	push   ax
   33159:	6a 64                	push   0x64
   3315b:	9a 3f 07 30 00       	call   0x30:0x73f
   33160:	83 c4 06             	add    sp,0x6
   33163:	68 88 01             	push   0x188
   33166:	68 2c 96             	push   0x962c
   33169:	68 88 01             	push   0x188
   3316c:	68 94 97             	push   0x9794
   3316f:	b9 48 00             	mov    cx,0x48
   33172:	9a 7a 12 00 00       	call   0x0:0x127a
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
   3328d:	26 a1 18 73          	mov    ax,es:0x7318
   33291:	f7 d8                	neg    ax
   33293:	50                   	push   ax
   33294:	6a 64                	push   0x64
   33296:	9a 3f 07 30 00       	call   0x30:0x73f
   3329b:	83 c4 06             	add    sp,0x6
   3329e:	b8 88 01             	mov    ax,0x188
   332a1:	8e c0                	mov    es,ax
   332a3:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   332a8:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   332ad:	b8 88 01             	mov    ax,0x188
   332b0:	8e c0                	mov    es,ax
   332b2:	26 ff 36 21 e5       	push   WORD PTR es:0xe521
   332b7:	26 ff 36 1f e5       	push   WORD PTR es:0xe51f
   332bc:	9a 8a 06 20 00       	call   0x20:0x68a
   332c1:	83 c4 08             	add    sp,0x8
   332c4:	83 0e 5e 3d 10       	or     WORD PTR ds:0x3d5e,0x10
   332c9:	68 b2 00             	push   0xb2
   332cc:	68 c6 00             	push   0xc6
   332cf:	90                   	nop
   332d0:	0e                   	push   cs
   332d1:	e8 5e 39             	call   0x36c32
   332d4:	83 c4 04             	add    sp,0x4
   332d7:	90                   	nop
   332d8:	0e                   	push   cs
   332d9:	e8 9d 18             	call   0x34b79
   332dc:	9a 5c 00 30 01       	call   0x130:0x5c
   332e1:	83 26 5e 3d ef       	and    WORD PTR ds:0x3d5e,0xffef
   332e6:	68 18 01             	push   0x118
   332e9:	68 84 00             	push   0x84
   332ec:	9a a1 04 30 00       	call   0x30:0x4a1
   332f1:	83 c4 04             	add    sp,0x4
   332f4:	6a 01                	push   0x1
   332f6:	0e                   	push   cs
   332f7:	e8 cc f3             	call   0x326c6
   332fa:	59                   	pop    cx
   332fb:	6a 00                	push   0x0
   332fd:	ff 76 fa             	push   WORD PTR [bp-0x6]
   33300:	6a 64                	push   0x64
   33302:	9a 3f 07 30 00       	call   0x30:0x73f
   33307:	83 c4 06             	add    sp,0x6
   3330a:	b8 88 01             	mov    ax,0x188
   3330d:	8e c0                	mov    es,ax
   3330f:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   33316:	eb 60                	jmp    0x33378
   33318:	b8 88 01             	mov    ax,0x188
   3331b:	8e c0                	mov    es,ax
   3331d:	26 c7 06 fb 3a c8 00 	mov    WORD PTR es:0x3afb,0xc8
   33324:	b8 88 01             	mov    ax,0x188
   33327:	8e c0                	mov    es,ax
   33329:	26 c7 06 fd 3a c8 00 	mov    WORD PTR es:0x3afd,0xc8
   33330:	c6 06 3a bb 01       	mov    BYTE PTR ds:0xbb3a,0x1
   33335:	b8 88 01             	mov    ax,0x188
   33338:	8e c0                	mov    es,ax
   3333a:	26 c7 06 74 6d 00 00 	mov    WORD PTR es:0x6d74,0x0
   33341:	c6 06 34 bb 01       	mov    BYTE PTR ds:0xbb34,0x1
   33346:	b8 88 01             	mov    ax,0x188
   33349:	8e c0                	mov    es,ax
   3334b:	26 c6 06 08 3b 01    	mov    BYTE PTR es:0x3b08,0x1
   33351:	90                   	nop
   33352:	0e                   	push   cs
   33353:	e8 23 18             	call   0x34b79
   33356:	b8 88 01             	mov    ax,0x188
   33359:	8e c0                	mov    es,ax
   3335b:	26 c7 06 c8 b9 01 00 	mov    WORD PTR es:0xb9c8,0x1
   33362:	eb 14                	jmp    0x33378
   33364:	b8 88 01             	mov    ax,0x188
   33367:	8e c0                	mov    es,ax
   33369:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   33370:	eb 02                	jmp    0x33374
   33372:	eb 04                	jmp    0x33378
   33374:	c6 46 f7 01          	mov    BYTE PTR [bp-0x9],0x1
   33378:	6a 02                	push   0x2
   3337a:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   3337f:	59                   	pop    cx
   33380:	25 0f 00             	and    ax,0xf
   33383:	3d 04 00             	cmp    ax,0x4
   33386:	74 03                	je     0x3338b
   33388:	e9 1c 01             	jmp    0x334a7
   3338b:	80 7e f7 00          	cmp    BYTE PTR [bp-0x9],0x0
   3338f:	75 03                	jne    0x33394
   33391:	e9 13 01             	jmp    0x334a7
   33394:	c6 46 f7 00          	mov    BYTE PTR [bp-0x9],0x0
   33398:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3339b:	c1 f8 08             	sar    ax,0x8
   3339e:	3d 22 00             	cmp    ax,0x22
   333a1:	74 03                	je     0x333a6
   333a3:	e9 f1 00             	jmp    0x33497
   333a6:	83 3e 72 3e 02       	cmp    WORD PTR ds:0x3e72,0x2
   333ab:	74 03                	je     0x333b0
   333ad:	e9 be 00             	jmp    0x3346e
   333b0:	c7 06 72 3e 03 00    	mov    WORD PTR ds:0x3e72,0x3
   333b6:	6a 47                	push   0x47
   333b8:	1e                   	push   ds
   333b9:	68 5f 40             	push   0x405f
   333bc:	6a 01                	push   0x1
   333be:	9a 20 00 48 01       	call   0x148:0x20
   333c3:	83 c4 08             	add    sp,0x8
   333c6:	c6 06 89 ba 01       	mov    BYTE PTR ds:0xba89,0x1
   333cb:	b8 88 01             	mov    ax,0x188
   333ce:	ba e8 03             	mov    dx,0x3e8
   333d1:	8e c0                	mov    es,ax
   333d3:	26 89 16 0c 9a       	mov    WORD PTR es:0x9a0c,dx
   333d8:	8b c2                	mov    ax,dx
   333da:	ba 88 01             	mov    dx,0x188
   333dd:	8e c2                	mov    es,dx
   333df:	26 a3 3a 9a          	mov    es:0x9a3a,ax
   333e3:	b8 88 01             	mov    ax,0x188
   333e6:	ba 64 00             	mov    dx,0x64
   333e9:	8e c0                	mov    es,ax
   333eb:	26 89 16 0e 9a       	mov    WORD PTR es:0x9a0e,dx
   333f0:	8b c2                	mov    ax,dx
   333f2:	ba 88 01             	mov    dx,0x188
   333f5:	8e c2                	mov    es,dx
   333f7:	26 a3 3c 9a          	mov    es:0x9a3c,ax
   333fb:	b8 88 01             	mov    ax,0x188
   333fe:	8e c0                	mov    es,ax
   33400:	26 c7 06 06 9a 01 00 	mov    WORD PTR es:0x9a06,0x1
   33407:	6a 23                	push   0x23
   33409:	1e                   	push   ds
   3340a:	68 69 40             	push   0x4069
   3340d:	68 88 01             	push   0x188
   33410:	68 29 9d             	push   0x9d29
   33413:	9a 01 40 00 00       	call   0x0:0x4001
   33418:	83 c4 0a             	add    sp,0xa
   3341b:	1e                   	push   ds
   3341c:	68 8f 40             	push   0x408f
   3341f:	68 88 01             	push   0x188
   33422:	68 ba 9c             	push   0x9cba
   33425:	9a a3 49 00 00       	call   0x0:0x49a3
   3342a:	83 c4 08             	add    sp,0x8
   3342d:	1e                   	push   ds
   3342e:	68 97 40             	push   0x4097
   33431:	68 88 01             	push   0x188
   33434:	68 04 9d             	push   0x9d04
   33437:	9a a3 49 00 00       	call   0x0:0x49a3
   3343c:	83 c4 08             	add    sp,0x8
   3343f:	68 e0 01             	push   0x1e0
   33442:	68 d0 02             	push   0x2d0
   33445:	6a 00                	push   0x0
   33447:	6a 50                	push   0x50
   33449:	6a 12                	push   0x12
   3344b:	68 e6 00             	push   0xe6
   3344e:	6a 09                	push   0x9
   33450:	6a 41                	push   0x41
   33452:	6a 12                	push   0x12
   33454:	68 e6 00             	push   0xe6
   33457:	9a 30 04 28 00       	call   0x28:0x430
   3345c:	83 c4 14             	add    sp,0x14
   3345f:	90                   	nop
   33460:	0e                   	push   cs
   33461:	e8 15 17             	call   0x34b79
   33464:	6a 00                	push   0x0
   33466:	6a 01                	push   0x1
   33468:	1e                   	push   ds
   33469:	68 a1 40             	push   0x40a1
   3346c:	eb 0f                	jmp    0x3347d
   3346e:	83 3e 72 3e 03       	cmp    WORD PTR ds:0x3e72,0x3
   33473:	75 20                	jne    0x33495
   33475:	6a 00                	push   0x0
   33477:	6a 01                	push   0x1
   33479:	1e                   	push   ds
   3347a:	68 b9 40             	push   0x40b9
   3347d:	9a 48 29 10 00       	call   0x10:0x2948
   33482:	83 c4 08             	add    sp,0x8
   33485:	68 2c 01             	push   0x12c
   33488:	9a ca 2d 10 00       	call   0x10:0x2dca
   3348d:	59                   	pop    cx
   3348e:	9a b9 1e 10 00       	call   0x10:0x1eb9
   33493:	eb 06                	jmp    0x3349b
   33495:	eb 04                	jmp    0x3349b
   33497:	c6 46 f7 01          	mov    BYTE PTR [bp-0x9],0x1
   3349b:	b8 88 01             	mov    ax,0x188
   3349e:	8e c0                	mov    es,ax
   334a0:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   334a7:	80 7e f7 00          	cmp    BYTE PTR [bp-0x9],0x0
   334ab:	75 03                	jne    0x334b0
   334ad:	e9 8d 02             	jmp    0x3373d
   334b0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   334b3:	25 ff 00             	and    ax,0xff
   334b6:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   334b9:	b9 10 00             	mov    cx,0x10
   334bc:	bb 2f 18             	mov    bx,0x182f
   334bf:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   334c2:	3b 46 f4             	cmp    ax,WORD PTR [bp-0xc]
   334c5:	74 08                	je     0x334cf
   334c7:	83 c3 02             	add    bx,0x2
   334ca:	e2 f3                	loop   0x334bf
   334cc:	e9 62 02             	jmp    0x33731
   334cf:	2e ff 67 20          	jmp    WORD PTR cs:[bx+0x20]
   334d3:	b8 88 01             	mov    ax,0x188
   334d6:	8e c0                	mov    es,ax
   334d8:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   334df:	6a 00                	push   0x0
   334e1:	6a 01                	push   0x1
   334e3:	1e                   	push   ds
   334e4:	68 d3 40             	push   0x40d3
   334e7:	9a 48 29 10 00       	call   0x10:0x2948
   334ec:	83 c4 08             	add    sp,0x8
   334ef:	1e                   	push   ds
   334f0:	68 f6 40             	push   0x40f6
   334f3:	1e                   	push   ds
   334f4:	68 f0 40             	push   0x40f0
   334f7:	9a 98 21 10 00       	call   0x10:0x2198
   334fc:	83 c4 08             	add    sp,0x8
   334ff:	b8 88 01             	mov    ax,0x188
   33502:	8e c0                	mov    es,ax
   33504:	26 83 3e 9e bb 00    	cmp    WORD PTR es:0xbb9e,0x0
   3350a:	74 03                	je     0x3350f
   3350c:	e9 2e 02             	jmp    0x3373d
   3350f:	b8 88 01             	mov    ax,0x188
   33512:	8e c0                	mov    es,ax
   33514:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3351a:	74 68                	je     0x33584
   3351c:	b8 88 01             	mov    ax,0x188
   3351f:	8e c0                	mov    es,ax
   33521:	26 a1 1a 73          	mov    ax,es:0x731a
   33525:	f7 d8                	neg    ax
   33527:	50                   	push   ax
   33528:	b8 88 01             	mov    ax,0x188
   3352b:	8e c0                	mov    es,ax
   3352d:	26 a1 18 73          	mov    ax,es:0x7318
   33531:	f7 d8                	neg    ax
   33533:	50                   	push   ax
   33534:	68 f4 01             	push   0x1f4
   33537:	9a 3f 07 30 00       	call   0x30:0x73f
   3353c:	83 c4 06             	add    sp,0x6
   3353f:	b8 88 01             	mov    ax,0x188
   33542:	8e c0                	mov    es,ax
   33544:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3354a:	74 51                	je     0x3359d
   3354c:	9a 96 12 68 00       	call   0x68:0x1296
   33551:	a1 75 bb             	mov    ax,ds:0xbb75
   33554:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   33558:	74 43                	je     0x3359d
   3355a:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3355e:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   33562:	9a 03 00 80 00       	call   0x80:0x3
   33567:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3356b:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   3356f:	9a da 00 58 00       	call   0x58:0xda
   33574:	c7 06 77 bb 00 00    	mov    WORD PTR ds:0xbb77,0x0
   3357a:	c7 06 75 bb 00 00    	mov    WORD PTR ds:0xbb75,0x0
   33580:	eb 1b                	jmp    0x3359d
   33582:	eb 19                	jmp    0x3359d
   33584:	6a 00                	push   0x0
   33586:	b8 88 01             	mov    ax,0x188
   33589:	8e c0                	mov    es,ax
   3358b:	26 a1 18 73          	mov    ax,es:0x7318
   3358f:	f7 d8                	neg    ax
   33591:	50                   	push   ax
   33592:	68 e8 03             	push   0x3e8
   33595:	9a 3f 07 30 00       	call   0x30:0x73f
   3359a:	83 c4 06             	add    sp,0x6
   3359d:	9a 66 00 10 01       	call   0x110:0x66
   335a2:	9a 39 00 28 01       	call   0x128:0x39
   335a7:	e9 93 01             	jmp    0x3373d
   335aa:	8a 46 f8             	mov    al,BYTE PTR [bp-0x8]
   335ad:	50                   	push   ax
   335ae:	90                   	nop
   335af:	0e                   	push   cs
   335b0:	e8 ce 63             	call   0x39981
   335b3:	59                   	pop    cx
   335b4:	e9 7a 01             	jmp    0x33731
   335b7:	0e                   	push   cs
   335b8:	e8 30 f5             	call   0x32aeb
   335bb:	e9 73 01             	jmp    0x33731
   335be:	90                   	nop
   335bf:	0e                   	push   cs
   335c0:	e8 a0 2c             	call   0x36263
   335c3:	e9 6b 01             	jmp    0x33731
   335c6:	83 3e 72 3e 03       	cmp    WORD PTR ds:0x3e72,0x3
   335cb:	75 21                	jne    0x335ee
   335cd:	6a 00                	push   0x0
   335cf:	6a 01                	push   0x1
   335d1:	1e                   	push   ds
   335d2:	68 fd 40             	push   0x40fd
   335d5:	9a 48 29 10 00       	call   0x10:0x2948
   335da:	83 c4 08             	add    sp,0x8
   335dd:	68 2c 01             	push   0x12c
   335e0:	9a ca 2d 10 00       	call   0x10:0x2dca
   335e5:	59                   	pop    cx
   335e6:	9a b9 1e 10 00       	call   0x10:0x1eb9
   335eb:	e9 43 01             	jmp    0x33731
   335ee:	6a 01                	push   0x1
   335f0:	90                   	nop
   335f1:	0e                   	push   cs
   335f2:	e8 4a 68             	call   0x39e3f
   335f5:	59                   	pop    cx
   335f6:	e9 38 01             	jmp    0x33731
   335f9:	e9 35 01             	jmp    0x33731
   335fc:	b8 88 01             	mov    ax,0x188
   335ff:	8e c0                	mov    es,ax
   33601:	26 a0 f0 b9          	mov    al,es:0xb9f0
   33605:	04 03                	add    al,0x3
   33607:	ba 88 01             	mov    dx,0x188
   3360a:	8e c2                	mov    es,dx
   3360c:	26 a2 f0 b9          	mov    es:0xb9f0,al
   33610:	9a 6b 00 10 01       	call   0x110:0x6b
   33615:	b8 88 01             	mov    ax,0x188
   33618:	8e c0                	mov    es,ax
   3361a:	26 c7 06 c8 b9 05 00 	mov    WORD PTR es:0xb9c8,0x5
   33621:	e9 19 01             	jmp    0x3373d
   33624:	b8 88 01             	mov    ax,0x188
   33627:	8e c0                	mov    es,ax
   33629:	26 a0 f0 b9          	mov    al,es:0xb9f0
   3362d:	50                   	push   ax
   3362e:	b8 88 01             	mov    ax,0x188
   33631:	8e c0                	mov    es,ax
   33633:	26 ff 36 c4 b9       	push   WORD PTR es:0xb9c4
   33638:	b8 88 01             	mov    ax,0x188
   3363b:	8e c0                	mov    es,ax
   3363d:	26 ff 36 c6 b9       	push   WORD PTR es:0xb9c6
   33642:	0e                   	push   cs
   33643:	e8 ca e8             	call   0x31f10
   33646:	83 c4 06             	add    sp,0x6
   33649:	0a c0                	or     al,al
   3364b:	75 03                	jne    0x33650
   3364d:	e9 ed 00             	jmp    0x3373d
   33650:	b8 88 01             	mov    ax,0x188
   33653:	8e c0                	mov    es,ax
   33655:	26 c7 06 c8 b9 02 00 	mov    WORD PTR es:0xb9c8,0x2
   3365c:	e9 de 00             	jmp    0x3373d
   3365f:	e9 db 00             	jmp    0x3373d
   33662:	b8 88 01             	mov    ax,0x188
   33665:	8e c0                	mov    es,ax
   33667:	26 fe 06 f0 b9       	inc    BYTE PTR es:0xb9f0
   3366c:	9a 6b 00 10 01       	call   0x110:0x6b
   33671:	b8 88 01             	mov    ax,0x188
   33674:	8e c0                	mov    es,ax
   33676:	26 c7 06 c8 b9 04 00 	mov    WORD PTR es:0xb9c8,0x4
   3367d:	e9 bd 00             	jmp    0x3373d
   33680:	b8 88 01             	mov    ax,0x188
   33683:	8e c0                	mov    es,ax
   33685:	26 a0 f0 b9          	mov    al,es:0xb9f0
   33689:	04 03                	add    al,0x3
   3368b:	50                   	push   ax
   3368c:	b8 88 01             	mov    ax,0x188
   3368f:	8e c0                	mov    es,ax
   33691:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   33695:	f7 d8                	neg    ax
   33697:	50                   	push   ax
   33698:	b8 88 01             	mov    ax,0x188
   3369b:	8e c0                	mov    es,ax
   3369d:	26 ff 36 c4 b9       	push   WORD PTR es:0xb9c4
   336a2:	0e                   	push   cs
   336a3:	e8 6a e8             	call   0x31f10
   336a6:	83 c4 06             	add    sp,0x6
   336a9:	0a c0                	or     al,al
   336ab:	75 03                	jne    0x336b0
   336ad:	e9 8d 00             	jmp    0x3373d
   336b0:	eb 30                	jmp    0x336e2
   336b2:	e9 88 00             	jmp    0x3373d
   336b5:	b8 88 01             	mov    ax,0x188
   336b8:	8e c0                	mov    es,ax
   336ba:	26 a0 f0 b9          	mov    al,es:0xb9f0
   336be:	fe c0                	inc    al
   336c0:	50                   	push   ax
   336c1:	b8 88 01             	mov    ax,0x188
   336c4:	8e c0                	mov    es,ax
   336c6:	26 ff 36 c6 b9       	push   WORD PTR es:0xb9c6
   336cb:	b8 88 01             	mov    ax,0x188
   336ce:	8e c0                	mov    es,ax
   336d0:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   336d4:	f7 d8                	neg    ax
   336d6:	50                   	push   ax
   336d7:	0e                   	push   cs
   336d8:	e8 35 e8             	call   0x31f10
   336db:	83 c4 06             	add    sp,0x6
   336de:	0a c0                	or     al,al
   336e0:	74 5b                	je     0x3373d
   336e2:	b8 88 01             	mov    ax,0x188
   336e5:	8e c0                	mov    es,ax
   336e7:	26 c7 06 c8 b9 01 00 	mov    WORD PTR es:0xb9c8,0x1
   336ee:	eb 4d                	jmp    0x3373d
   336f0:	eb 4b                	jmp    0x3373d
   336f2:	b8 88 01             	mov    ax,0x188
   336f5:	8e c0                	mov    es,ax
   336f7:	26 a0 f0 b9          	mov    al,es:0xb9f0
   336fb:	04 02                	add    al,0x2
   336fd:	50                   	push   ax
   336fe:	b8 88 01             	mov    ax,0x188
   33701:	8e c0                	mov    es,ax
   33703:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   33707:	f7 d8                	neg    ax
   33709:	50                   	push   ax
   3370a:	b8 88 01             	mov    ax,0x188
   3370d:	8e c0                	mov    es,ax
   3370f:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   33713:	f7 d8                	neg    ax
   33715:	50                   	push   ax
   33716:	0e                   	push   cs
   33717:	e8 f6 e7             	call   0x31f10
   3371a:	83 c4 06             	add    sp,0x6
   3371d:	0a c0                	or     al,al
   3371f:	74 1c                	je     0x3373d
   33721:	b8 88 01             	mov    ax,0x188
   33724:	8e c0                	mov    es,ax
   33726:	26 c7 06 c8 b9 03 00 	mov    WORD PTR es:0xb9c8,0x3
   3372d:	eb 0e                	jmp    0x3373d
   3372f:	eb 0c                	jmp    0x3373d
   33731:	b8 88 01             	mov    ax,0x188
   33734:	8e c0                	mov    es,ax
   33736:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3373d:	c9                   	leave
   3373e:	cb                   	retf
   3373f:	1b 00                	sbb    ax,WORD PTR [bx+si]
   33741:	32 00                	xor    al,BYTE PTR [bx+si]
   33743:	34 00                	xor    al,0x0
   33745:	35 00 36             	xor    ax,0x3600
   33748:	00 37                	add    BYTE PTR [bx],dh
   3374a:	00 38                	add    BYTE PTR [bx+si],bh
   3374c:	00 39                	add    BYTE PTR [bx+di],bh
   3374e:	00 4b 00             	add    BYTE PTR [bp+di+0x0],cl
   33751:	4e                   	dec    si
   33752:	00 53 00             	add    BYTE PTR [bp+di+0x0],dl
   33755:	54                   	push   sp
   33756:	00 6b 00             	add    BYTE PTR [bp+di+0x0],ch
   33759:	6e                   	outs   dx,BYTE PTR ds:[si]
   3375a:	00 73 00             	add    BYTE PTR [bp+di+0x0],dh
   3375d:	74 00                	je     0x3375f
   3375f:	c3                   	ret
   33760:	15 e2 17             	adc    ax,0x17e2
   33763:	70 17                	jo     0x3377c
   33765:	e2 17                	loop   0x3377e
   33767:	a5                   	movs   WORD PTR es:[di],WORD PTR ds:[si]
   33768:	17                   	pop    ss
   33769:	ec                   	in     al,dx
   3376a:	16                   	push   ss
   3376b:	14 17                	adc    al,0x17
   3376d:	52                   	push   dx
   3376e:	17                   	pop    ss
   3376f:	ae                   	scas   al,BYTE PTR es:[di]
   33770:	16                   	push   ss
   33771:	a7                   	cmps   WORD PTR ds:[si],WORD PTR es:[di]
   33772:	16                   	push   ss
   33773:	b6 16                	mov    dh,0x16
   33775:	9a 16 ae 16 a7       	call   0xa716:0xae16
   3377a:	16                   	push   ss
   3377b:	b6 16                	mov    dh,0x16
   3377d:	9a 16 15 12 15       	call   0x1512:0x1516
   33782:	12 15                	adc    dl,BYTE PTR [di]
   33784:	12 15                	adc    dl,BYTE PTR [di]
   33786:	12 54 14             	adc    dl,BYTE PTR [si+0x14]
   33789:	54                   	push   sp
   3378a:	14 54                	adc    al,0x54
   3378c:	14 54                	adc    al,0x54
   3378e:	14 54                	adc    al,0x54
   33790:	14 54                	adc    al,0x54
   33792:	14 54                	adc    al,0x54
   33794:	14 54                	adc    al,0x54
   33796:	14 54                	adc    al,0x54
   33798:	14 4d                	adc    al,0x4d
   3379a:	11 0b                	adc    WORD PTR [bp+di],cx
   3379c:	13 54 14             	adc    dx,WORD PTR [si+0x14]
   3379f:	8b 11                	mov    dx,WORD PTR [bx+di]
   337a1:	54                   	push   sp
   337a2:	14 b3                	adc    al,0xb3
   337a4:	11 54 14             	adc    WORD PTR [si+0x14],dx
   337a7:	54                   	push   sp
   337a8:	14 d1                	adc    al,0xd1
   337aa:	11 08                	adc    WORD PTR [bx+si],cx
   337ac:	14                   	.byte 0x14
