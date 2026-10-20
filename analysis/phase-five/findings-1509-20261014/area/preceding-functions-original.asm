
analysis/phase-five/findings-1509-20261014/area/original-overlay-1670.bin:     file format binary


Disassembly of section .data:

00031f10 <.data>:
   31f10:	55                   	push   bp
   31f11:	8b ec                	mov    bp,sp
   31f13:	83 ec 04             	sub    sp,0x4
   31f16:	b8 88 01             	mov    ax,0x188
   31f19:	8e c0                	mov    es,ax
   31f1b:	26 a0 eb b9          	mov    al,es:0xb9eb
   31f1f:	b4 00                	mov    ah,0x0
   31f21:	ba 88 01             	mov    dx,0x188
   31f24:	8e c2                	mov    es,dx
   31f26:	50                   	push   ax
   31f27:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   31f2b:	5a                   	pop    dx
   31f2c:	f7 ea                	imul   dx
   31f2e:	ba 88 01             	mov    dx,0x188
   31f31:	8e c2                	mov    es,dx
   31f33:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   31f38:	03 d0                	add    dx,ax
   31f3a:	6b d2 0f             	imul   dx,dx,0xf
   31f3d:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   31f40:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31f43:	b4 00                	mov    ah,0x0
   31f45:	bb 04 00             	mov    bx,0x4
   31f48:	99                   	cwd
   31f49:	f7 fb                	idiv   bx
   31f4b:	d1 e2                	shl    dx,1
   31f4d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   31f50:	03 c2                	add    ax,dx
   31f52:	99                   	cwd
   31f53:	bb 88 01             	mov    bx,0x188
   31f56:	8e c3                	mov    es,bx
   31f58:	50                   	push   ax
   31f59:	52                   	push   dx
   31f5a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   31f5f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   31f63:	59                   	pop    cx
   31f64:	5b                   	pop    bx
   31f65:	9a 77 14 00 00       	call   0x0:0x1477
   31f6a:	8b d8                	mov    bx,ax
   31f6c:	8e c2                	mov    es,dx
   31f6e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   31f71:	b4 00                	mov    ah,0x0
   31f73:	d1 e0                	shl    ax,1
   31f75:	ba 88 01             	mov    dx,0x188
   31f78:	8b d8                	mov    bx,ax
   31f7a:	8e c2                	mov    es,dx
   31f7c:	26 83 bf 0e 9f 09    	cmp    WORD PTR es:[bx-0x60f2],0x9
   31f82:	74 03                	je     0x31f87
   31f84:	e9 45 01             	jmp    0x320cc
   31f87:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   31f8a:	b4 00                	mov    ah,0x0
   31f8c:	bb 04 00             	mov    bx,0x4
   31f8f:	99                   	cwd
   31f90:	f7 fb                	idiv   bx
   31f92:	d1 e2                	shl    dx,1
   31f94:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   31f97:	03 c2                	add    ax,dx
   31f99:	40                   	inc    ax
   31f9a:	99                   	cwd
   31f9b:	bb 88 01             	mov    bx,0x188
   31f9e:	8e c3                	mov    es,bx
   31fa0:	50                   	push   ax
   31fa1:	52                   	push   dx
   31fa2:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   31fa7:	26 a1 ec b9          	mov    ax,es:0xb9ec
   31fab:	59                   	pop    cx
   31fac:	5b                   	pop    bx
   31fad:	9a 77 14 00 00       	call   0x0:0x1477
   31fb2:	8b d8                	mov    bx,ax
   31fb4:	8e c2                	mov    es,dx
   31fb6:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   31fba:	75 03                	jne    0x31fbf
   31fbc:	e9 0d 01             	jmp    0x320cc
   31fbf:	b8 88 01             	mov    ax,0x188
   31fc2:	8e c0                	mov    es,ax
   31fc4:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   31fc8:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   31fcb:	74 03                	je     0x31fd0
   31fcd:	e9 f9 00             	jmp    0x320c9
   31fd0:	b8 88 01             	mov    ax,0x188
   31fd3:	8e c0                	mov    es,ax
   31fd5:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   31fd9:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   31fdc:	74 03                	je     0x31fe1
   31fde:	e9 e8 00             	jmp    0x320c9
   31fe1:	b8 88 01             	mov    ax,0x188
   31fe4:	8e c0                	mov    es,ax
   31fe6:	26 c7 06 a8 bb 00 00 	mov    WORD PTR es:0xbba8,0x0
   31fed:	6a 03                	push   0x3
   31fef:	b8 88 01             	mov    ax,0x188
   31ff2:	8e c0                	mov    es,ax
   31ff4:	26 a0 eb b9          	mov    al,es:0xb9eb
   31ff8:	b4 00                	mov    ah,0x0
   31ffa:	ba 88 01             	mov    dx,0x188
   31ffd:	8e c2                	mov    es,dx
   31fff:	50                   	push   ax
   32000:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   32004:	5a                   	pop    dx
   32005:	f7 ea                	imul   dx
   32007:	ba 88 01             	mov    dx,0x188
   3200a:	8e c2                	mov    es,dx
   3200c:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   32011:	03 d0                	add    dx,ax
   32013:	6b d2 0f             	imul   dx,dx,0xf
   32016:	52                   	push   dx
   32017:	9a 20 00 30 01       	call   0x130:0x20
   3201c:	83 c4 04             	add    sp,0x4
   3201f:	6a 01                	push   0x1
   32021:	b8 88 01             	mov    ax,0x188
   32024:	8e c0                	mov    es,ax
   32026:	26 a0 eb b9          	mov    al,es:0xb9eb
   3202a:	b4 00                	mov    ah,0x0
   3202c:	ba 88 01             	mov    dx,0x188
   3202f:	8e c2                	mov    es,dx
   32031:	50                   	push   ax
   32032:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   32036:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   32039:	5a                   	pop    dx
   3203a:	f7 ea                	imul   dx
   3203c:	ba 88 01             	mov    dx,0x188
   3203f:	8e c2                	mov    es,dx
   32041:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   32046:	03 56 06             	add    dx,WORD PTR [bp+0x6]
   32049:	03 d0                	add    dx,ax
   3204b:	6b d2 0f             	imul   dx,dx,0xf
   3204e:	52                   	push   dx
   3204f:	9a 20 00 30 01       	call   0x130:0x20
   32054:	83 c4 04             	add    sp,0x4
   32057:	b8 88 01             	mov    ax,0x188
   3205a:	8e c0                	mov    es,ax
   3205c:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   32062:	74 03                	je     0x32067
   32064:	e9 ae 05             	jmp    0x32615
   32067:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   3206a:	b4 00                	mov    ah,0x0
   3206c:	bb 04 00             	mov    bx,0x4
   3206f:	99                   	cwd
   32070:	f7 fb                	idiv   bx
   32072:	d1 e2                	shl    dx,1
   32074:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32077:	03 c2                	add    ax,dx
   32079:	40                   	inc    ax
   3207a:	99                   	cwd
   3207b:	bb 88 01             	mov    bx,0x188
   3207e:	8e c3                	mov    es,bx
   32080:	50                   	push   ax
   32081:	52                   	push   dx
   32082:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32087:	26 a1 ec b9          	mov    ax,es:0xb9ec
   3208b:	59                   	pop    cx
   3208c:	5b                   	pop    bx
   3208d:	9a 77 14 00 00       	call   0x0:0x1477
   32092:	8b d8                	mov    bx,ax
   32094:	8e c2                	mov    es,dx
   32096:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   32099:	b4 00                	mov    ah,0x0
   3209b:	3d 01 00             	cmp    ax,0x1
   3209e:	74 07                	je     0x320a7
   320a0:	3d 02 00             	cmp    ax,0x2
   320a3:	74 0c                	je     0x320b1
   320a5:	eb 0e                	jmp    0x320b5
   320a7:	6a 02                	push   0x2
   320a9:	9a c0 00 10 01       	call   0x110:0xc0
   320ae:	59                   	pop    cx
   320af:	eb 18                	jmp    0x320c9
   320b1:	6a 01                	push   0x1
   320b3:	eb f4                	jmp    0x320a9
   320b5:	6a 44                	push   0x44
   320b7:	6a 00                	push   0x0
   320b9:	6a 00                	push   0x0
   320bb:	6a 75                	push   0x75
   320bd:	1e                   	push   ds
   320be:	68 14 3f             	push   0x3f14
   320c1:	9a 2a 00 58 01       	call   0x158:0x2a
   320c6:	83 c4 0c             	add    sp,0xc
   320c9:	e9 49 05             	jmp    0x32615
   320cc:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   320cf:	b4 00                	mov    ah,0x0
   320d1:	bb 04 00             	mov    bx,0x4
   320d4:	99                   	cwd
   320d5:	f7 fb                	idiv   bx
   320d7:	d1 e2                	shl    dx,1
   320d9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   320dc:	03 c2                	add    ax,dx
   320de:	40                   	inc    ax
   320df:	99                   	cwd
   320e0:	bb 88 01             	mov    bx,0x188
   320e3:	8e c3                	mov    es,bx
   320e5:	50                   	push   ax
   320e6:	52                   	push   dx
   320e7:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   320ec:	26 a1 ec b9          	mov    ax,es:0xb9ec
   320f0:	59                   	pop    cx
   320f1:	5b                   	pop    bx
   320f2:	9a 77 14 00 00       	call   0x0:0x1477
   320f7:	8b d8                	mov    bx,ax
   320f9:	8e c2                	mov    es,dx
   320fb:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   320fe:	b4 00                	mov    ah,0x0
   32100:	0b c0                	or     ax,ax
   32102:	74 13                	je     0x32117
   32104:	3d 02 00             	cmp    ax,0x2
   32107:	75 03                	jne    0x3210c
   32109:	e9 ae 00             	jmp    0x321ba
   3210c:	3d 03 00             	cmp    ax,0x3
   3210f:	75 03                	jne    0x32114
   32111:	e9 ff 01             	jmp    0x32313
   32114:	e9 fe 04             	jmp    0x32615
   32117:	b8 88 01             	mov    ax,0x188
   3211a:	8e c0                	mov    es,ax
   3211c:	26 c7 06 a8 bb 00 00 	mov    WORD PTR es:0xbba8,0x0
   32123:	6a 03                	push   0x3
   32125:	ff 76 fe             	push   WORD PTR [bp-0x2]
   32128:	9a 20 00 30 01       	call   0x130:0x20
   3212d:	83 c4 04             	add    sp,0x4
   32130:	b8 88 01             	mov    ax,0x188
   32133:	8e c0                	mov    es,ax
   32135:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   3213b:	74 03                	je     0x32140
   3213d:	e9 d5 04             	jmp    0x32615
   32140:	6a 01                	push   0x1
   32142:	b8 88 01             	mov    ax,0x188
   32145:	8e c0                	mov    es,ax
   32147:	26 a0 eb b9          	mov    al,es:0xb9eb
   3214b:	b4 00                	mov    ah,0x0
   3214d:	ba 88 01             	mov    dx,0x188
   32150:	8e c2                	mov    es,dx
   32152:	50                   	push   ax
   32153:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   32157:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   3215a:	5a                   	pop    dx
   3215b:	f7 ea                	imul   dx
   3215d:	ba 88 01             	mov    dx,0x188
   32160:	8e c2                	mov    es,dx
   32162:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   32167:	03 56 06             	add    dx,WORD PTR [bp+0x6]
   3216a:	03 d0                	add    dx,ax
   3216c:	6b d2 0f             	imul   dx,dx,0xf
   3216f:	52                   	push   dx
   32170:	9a 20 00 30 01       	call   0x130:0x20
   32175:	83 c4 04             	add    sp,0x4
   32178:	b8 88 01             	mov    ax,0x188
   3217b:	8e c0                	mov    es,ax
   3217d:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   32183:	74 03                	je     0x32188
   32185:	e9 8d 04             	jmp    0x32615
   32188:	b8 88 01             	mov    ax,0x188
   3218b:	8e c0                	mov    es,ax
   3218d:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   32191:	03 46 06             	add    ax,WORD PTR [bp+0x6]
   32194:	ba 88 01             	mov    dx,0x188
   32197:	8e c2                	mov    es,dx
   32199:	26 a3 f3 b9          	mov    es:0xb9f3,ax
   3219d:	b8 88 01             	mov    ax,0x188
   321a0:	8e c0                	mov    es,ax
   321a2:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   321a6:	03 46 08             	add    ax,WORD PTR [bp+0x8]
   321a9:	ba 88 01             	mov    dx,0x188
   321ac:	8e c2                	mov    es,dx
   321ae:	26 a3 f1 b9          	mov    es:0xb9f1,ax
   321b2:	b0 01                	mov    al,0x1
   321b4:	e9 6c 04             	jmp    0x32623
   321b7:	e9 5b 04             	jmp    0x32615
   321ba:	b8 88 01             	mov    ax,0x188
   321bd:	8e c0                	mov    es,ax
   321bf:	26 a0 f0 b9          	mov    al,es:0xb9f0
   321c3:	b4 00                	mov    ah,0x0
   321c5:	bb 04 00             	mov    bx,0x4
   321c8:	99                   	cwd
   321c9:	f7 fb                	idiv   bx
   321cb:	d1 e2                	shl    dx,1
   321cd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   321d0:	03 c2                	add    ax,dx
   321d2:	99                   	cwd
   321d3:	bb 88 01             	mov    bx,0x188
   321d6:	8e c3                	mov    es,bx
   321d8:	50                   	push   ax
   321d9:	52                   	push   dx
   321da:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   321df:	26 a1 ec b9          	mov    ax,es:0xb9ec
   321e3:	59                   	pop    cx
   321e4:	5b                   	pop    bx
   321e5:	9a 77 14 00 00       	call   0x0:0x1477
   321ea:	8b d8                	mov    bx,ax
   321ec:	8e c2                	mov    es,dx
   321ee:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   321f1:	b4 00                	mov    ah,0x0
   321f3:	d1 e0                	shl    ax,1
   321f5:	ba 88 01             	mov    dx,0x188
   321f8:	8b d8                	mov    bx,ax
   321fa:	8e c2                	mov    es,dx
   321fc:	26 83 bf 0e 9f 08    	cmp    WORD PTR es:[bx-0x60f2],0x8
   32202:	75 03                	jne    0x32207
   32204:	e9 0e 04             	jmp    0x32615
   32207:	b8 88 01             	mov    ax,0x188
   3220a:	8e c0                	mov    es,ax
   3220c:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   32210:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   32213:	74 03                	je     0x32218
   32215:	e9 fd 03             	jmp    0x32615
   32218:	b8 88 01             	mov    ax,0x188
   3221b:	8e c0                	mov    es,ax
   3221d:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   32221:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   32224:	74 03                	je     0x32229
   32226:	e9 ec 03             	jmp    0x32615
   32229:	b8 88 01             	mov    ax,0x188
   3222c:	8e c0                	mov    es,ax
   3222e:	26 c7 06 a8 bb 00 00 	mov    WORD PTR es:0xbba8,0x0
   32235:	6a 03                	push   0x3
   32237:	b8 88 01             	mov    ax,0x188
   3223a:	8e c0                	mov    es,ax
   3223c:	26 a0 eb b9          	mov    al,es:0xb9eb
   32240:	b4 00                	mov    ah,0x0
   32242:	ba 88 01             	mov    dx,0x188
   32245:	8e c2                	mov    es,dx
   32247:	50                   	push   ax
   32248:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3224c:	5a                   	pop    dx
   3224d:	f7 ea                	imul   dx
   3224f:	ba 88 01             	mov    dx,0x188
   32252:	8e c2                	mov    es,dx
   32254:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   32259:	03 d0                	add    dx,ax
   3225b:	6b d2 0f             	imul   dx,dx,0xf
   3225e:	52                   	push   dx
   3225f:	9a 20 00 30 01       	call   0x130:0x20
   32264:	83 c4 04             	add    sp,0x4
   32267:	b8 88 01             	mov    ax,0x188
   3226a:	8e c0                	mov    es,ax
   3226c:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   32272:	74 03                	je     0x32277
   32274:	e9 9e 03             	jmp    0x32615
   32277:	6a 01                	push   0x1
   32279:	b8 88 01             	mov    ax,0x188
   3227c:	8e c0                	mov    es,ax
   3227e:	26 a0 eb b9          	mov    al,es:0xb9eb
   32282:	b4 00                	mov    ah,0x0
   32284:	ba 88 01             	mov    dx,0x188
   32287:	8e c2                	mov    es,dx
   32289:	50                   	push   ax
   3228a:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3228e:	ba 88 01             	mov    dx,0x188
   32291:	8e c2                	mov    es,dx
   32293:	26 03 06 c4 b9       	add    ax,WORD PTR es:0xb9c4
   32298:	5a                   	pop    dx
   32299:	f7 ea                	imul   dx
   3229b:	ba 88 01             	mov    dx,0x188
   3229e:	8e c2                	mov    es,dx
   322a0:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   322a5:	bb 88 01             	mov    bx,0x188
   322a8:	8e c3                	mov    es,bx
   322aa:	26 03 16 c6 b9       	add    dx,WORD PTR es:0xb9c6
   322af:	03 d0                	add    dx,ax
   322b1:	6b d2 0f             	imul   dx,dx,0xf
   322b4:	52                   	push   dx
   322b5:	9a 20 00 30 01       	call   0x130:0x20
   322ba:	83 c4 04             	add    sp,0x4
   322bd:	b8 88 01             	mov    ax,0x188
   322c0:	8e c0                	mov    es,ax
   322c2:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   322c8:	74 03                	je     0x322cd
   322ca:	e9 48 03             	jmp    0x32615
   322cd:	b8 88 01             	mov    ax,0x188
   322d0:	8e c0                	mov    es,ax
   322d2:	26 a0 f0 b9          	mov    al,es:0xb9f0
   322d6:	b4 00                	mov    ah,0x0
   322d8:	bb 04 00             	mov    bx,0x4
   322db:	99                   	cwd
   322dc:	f7 fb                	idiv   bx
   322de:	d1 e2                	shl    dx,1
   322e0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   322e3:	03 c2                	add    ax,dx
   322e5:	99                   	cwd
   322e6:	bb 88 01             	mov    bx,0x188
   322e9:	8e c3                	mov    es,bx
   322eb:	50                   	push   ax
   322ec:	52                   	push   dx
   322ed:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   322f2:	26 a1 ec b9          	mov    ax,es:0xb9ec
   322f6:	59                   	pop    cx
   322f7:	5b                   	pop    bx
   322f8:	9a 77 14 00 00       	call   0x0:0x1477
   322fd:	8b d8                	mov    bx,ax
   322ff:	8e c2                	mov    es,dx
   32301:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   32304:	b4 00                	mov    ah,0x0
   32306:	48                   	dec    ax
   32307:	50                   	push   ax
   32308:	9a bb 00 10 01       	call   0x110:0xbb
   3230d:	e9 01 03             	jmp    0x32611
   32310:	e9 02 03             	jmp    0x32615
   32313:	6a 03                	push   0x3
   32315:	9a c5 00 10 01       	call   0x110:0xc5
   3231a:	59                   	pop    cx
   3231b:	b8 88 01             	mov    ax,0x188
   3231e:	8e c0                	mov    es,ax
   32320:	26 a1 c6 b9          	mov    ax,es:0xb9c6
   32324:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   32327:	74 03                	je     0x3232c
   32329:	e9 e9 02             	jmp    0x32615
   3232c:	b8 88 01             	mov    ax,0x188
   3232f:	8e c0                	mov    es,ax
   32331:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   32335:	3b 46 08             	cmp    ax,WORD PTR [bp+0x8]
   32338:	74 03                	je     0x3233d
   3233a:	e9 d8 02             	jmp    0x32615
   3233d:	b8 88 01             	mov    ax,0x188
   32340:	8e c0                	mov    es,ax
   32342:	26 c7 06 a8 bb 00 00 	mov    WORD PTR es:0xbba8,0x0
   32349:	6a 03                	push   0x3
   3234b:	b8 88 01             	mov    ax,0x188
   3234e:	8e c0                	mov    es,ax
   32350:	26 a0 eb b9          	mov    al,es:0xb9eb
   32354:	b4 00                	mov    ah,0x0
   32356:	ba 88 01             	mov    dx,0x188
   32359:	8e c2                	mov    es,dx
   3235b:	50                   	push   ax
   3235c:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   32360:	5a                   	pop    dx
   32361:	f7 ea                	imul   dx
   32363:	ba 88 01             	mov    dx,0x188
   32366:	8e c2                	mov    es,dx
   32368:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   3236d:	03 d0                	add    dx,ax
   3236f:	6b d2 0f             	imul   dx,dx,0xf
   32372:	52                   	push   dx
   32373:	9a 20 00 30 01       	call   0x130:0x20
   32378:	83 c4 04             	add    sp,0x4
   3237b:	b8 88 01             	mov    ax,0x188
   3237e:	8e c0                	mov    es,ax
   32380:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   32386:	74 03                	je     0x3238b
   32388:	e9 8a 02             	jmp    0x32615
   3238b:	6a 01                	push   0x1
   3238d:	b8 88 01             	mov    ax,0x188
   32390:	8e c0                	mov    es,ax
   32392:	26 a0 eb b9          	mov    al,es:0xb9eb
   32396:	b4 00                	mov    ah,0x0
   32398:	ba 88 01             	mov    dx,0x188
   3239b:	8e c2                	mov    es,dx
   3239d:	50                   	push   ax
   3239e:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   323a2:	ba 88 01             	mov    dx,0x188
   323a5:	8e c2                	mov    es,dx
   323a7:	26 03 06 c4 b9       	add    ax,WORD PTR es:0xb9c4
   323ac:	5a                   	pop    dx
   323ad:	f7 ea                	imul   dx
   323af:	ba 88 01             	mov    dx,0x188
   323b2:	8e c2                	mov    es,dx
   323b4:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   323b9:	bb 88 01             	mov    bx,0x188
   323bc:	8e c3                	mov    es,bx
   323be:	26 03 16 c6 b9       	add    dx,WORD PTR es:0xb9c6
   323c3:	03 d0                	add    dx,ax
   323c5:	6b d2 0f             	imul   dx,dx,0xf
   323c8:	52                   	push   dx
   323c9:	9a 20 00 30 01       	call   0x130:0x20
   323ce:	83 c4 04             	add    sp,0x4
   323d1:	b8 88 01             	mov    ax,0x188
   323d4:	8e c0                	mov    es,ax
   323d6:	26 83 3e a8 bb 00    	cmp    WORD PTR es:0xbba8,0x0
   323dc:	74 03                	je     0x323e1
   323de:	e9 34 02             	jmp    0x32615
   323e1:	b8 88 01             	mov    ax,0x188
   323e4:	8e c0                	mov    es,ax
   323e6:	26 ff 36 a9 e4       	push   WORD PTR es:0xe4a9
   323eb:	26 ff 36 a7 e4       	push   WORD PTR es:0xe4a7
   323f0:	b8 88 01             	mov    ax,0x188
   323f3:	8e c0                	mov    es,ax
   323f5:	26 ff 36 b1 e4       	push   WORD PTR es:0xe4b1
   323fa:	26 ff 36 af e4       	push   WORD PTR es:0xe4af
   323ff:	9a 8a 06 20 00       	call   0x20:0x68a
   32404:	83 c4 08             	add    sp,0x8
   32407:	6a 41                	push   0x41
   32409:	6a 40                	push   0x40
   3240b:	b8 88 01             	mov    ax,0x188
   3240e:	8e c0                	mov    es,ax
   32410:	26 a0 f0 b9          	mov    al,es:0xb9f0
   32414:	b4 00                	mov    ah,0x0
   32416:	bb 04 00             	mov    bx,0x4
   32419:	99                   	cwd
   3241a:	f7 fb                	idiv   bx
   3241c:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   3241f:	cd 3b                	int    0x3b
   32421:	46                   	inc    si
   32422:	fc                   	cld
   32423:	83 ec 04             	sub    sp,0x4
   32426:	cd 35                	int    0x35
   32428:	5e                   	pop    si
   32429:	f4                   	hlt
   3242a:	cd 3d                	int    0x3d
   3242c:	9a cf 00 10 01       	call   0x110:0xcf
   32431:	83 c4 08             	add    sp,0x8
   32434:	68 e0 01             	push   0x1e0
   32437:	68 41 03             	push   0x341
   3243a:	6a 41                	push   0x41
   3243c:	6a 42                	push   0x42
   3243e:	6a 00                	push   0x0
   32440:	6a 00                	push   0x0
   32442:	b8 88 01             	mov    ax,0x188
   32445:	8e c0                	mov    es,ax
   32447:	26 ff 36 01 3b       	push   WORD PTR es:0x3b01
   3244c:	b8 88 01             	mov    ax,0x188
   3244f:	8e c0                	mov    es,ax
   32451:	26 ff 36 ff 3a       	push   WORD PTR es:0x3aff
   32456:	6a 00                	push   0x0
   32458:	6a 00                	push   0x0
   3245a:	9a 30 04 28 00       	call   0x28:0x430
   3245f:	83 c4 14             	add    sp,0x14
   32462:	b8 88 01             	mov    ax,0x188
   32465:	8e c0                	mov    es,ax
   32467:	26 ff 36 b1 e4       	push   WORD PTR es:0xe4b1
   3246c:	26 ff 36 af e4       	push   WORD PTR es:0xe4af
   32471:	b8 88 01             	mov    ax,0x188
   32474:	8e c0                	mov    es,ax
   32476:	26 ff 36 a9 e4       	push   WORD PTR es:0xe4a9
   3247b:	26 ff 36 a7 e4       	push   WORD PTR es:0xe4a7
   32480:	9a 8a 06 20 00       	call   0x20:0x68a
   32485:	83 c4 08             	add    sp,0x8
   32488:	68 fe 00             	push   0xfe
   3248b:	b8 88 01             	mov    ax,0x188
   3248e:	8e c0                	mov    es,ax
   32490:	26 a1 01 3b          	mov    ax,es:0x3b01
   32494:	ba 88 01             	mov    dx,0x188
   32497:	8e c2                	mov    es,dx
   32499:	26 f7 2e ff 3a       	imul   WORD PTR es:0x3aff
   3249e:	50                   	push   ax
   3249f:	6a 41                	push   0x41
   324a1:	9a dc 16 28 00       	call   0x28:0x16dc
   324a6:	83 c4 06             	add    sp,0x6
   324a9:	6a 41                	push   0x41
   324ab:	6a 40                	push   0x40
   324ad:	b8 88 01             	mov    ax,0x188
   324b0:	8e c0                	mov    es,ax
   324b2:	26 a0 f0 b9          	mov    al,es:0xb9f0
   324b6:	b4 00                	mov    ah,0x0
   324b8:	bb 04 00             	mov    bx,0x4
   324bb:	99                   	cwd
   324bc:	f7 fb                	idiv   bx
   324be:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   324c1:	cd 3b                	int    0x3b
   324c3:	46                   	inc    si
   324c4:	fc                   	cld
   324c5:	83 ec 04             	sub    sp,0x4
   324c8:	cd 35                	int    0x35
   324ca:	5e                   	pop    si
   324cb:	f4                   	hlt
   324cc:	cd 3d                	int    0x3d
   324ce:	9a cf 00 10 01       	call   0x110:0xcf
   324d3:	83 c4 08             	add    sp,0x8
   324d6:	68 88 01             	push   0x188
   324d9:	68 26 de             	push   0xde26
   324dc:	9a 22 0b 20 00       	call   0x20:0xb22
   324e1:	83 c4 04             	add    sp,0x4
   324e4:	b8 88 01             	mov    ax,0x188
   324e7:	8e c0                	mov    es,ax
   324e9:	26 a0 eb b9          	mov    al,es:0xb9eb
   324ed:	b4 00                	mov    ah,0x0
   324ef:	ba 88 01             	mov    dx,0x188
   324f2:	8e c2                	mov    es,dx
   324f4:	50                   	push   ax
   324f5:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   324f9:	5a                   	pop    dx
   324fa:	f7 ea                	imul   dx
   324fc:	ba 88 01             	mov    dx,0x188
   324ff:	8e c2                	mov    es,dx
   32501:	50                   	push   ax
   32502:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   32506:	5a                   	pop    dx
   32507:	03 c2                	add    ax,dx
   32509:	6b c0 0f             	imul   ax,ax,0xf
   3250c:	8a 56 0a             	mov    dl,BYTE PTR [bp+0xa]
   3250f:	b6 00                	mov    dh,0x0
   32511:	bb 04 00             	mov    bx,0x4
   32514:	50                   	push   ax
   32515:	8b c2                	mov    ax,dx
   32517:	99                   	cwd
   32518:	f7 fb                	idiv   bx
   3251a:	d1 e2                	shl    dx,1
   3251c:	58                   	pop    ax
   3251d:	03 c2                	add    ax,dx
   3251f:	40                   	inc    ax
   32520:	99                   	cwd
   32521:	bb 88 01             	mov    bx,0x188
   32524:	8e c3                	mov    es,bx
   32526:	50                   	push   ax
   32527:	52                   	push   dx
   32528:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   3252d:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32531:	59                   	pop    cx
   32532:	5b                   	pop    bx
   32533:	9a 77 14 00 00       	call   0x0:0x1477
   32538:	8b d8                	mov    bx,ax
   3253a:	8e c2                	mov    es,dx
   3253c:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   32540:	6a 41                	push   0x41
   32542:	9a 70 00 10 01       	call   0x110:0x70
   32547:	59                   	pop    cx
   32548:	b8 88 01             	mov    ax,0x188
   3254b:	8e c0                	mov    es,ax
   3254d:	26 a0 eb b9          	mov    al,es:0xb9eb
   32551:	b4 00                	mov    ah,0x0
   32553:	ba 88 01             	mov    dx,0x188
   32556:	8e c2                	mov    es,dx
   32558:	50                   	push   ax
   32559:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3255d:	5a                   	pop    dx
   3255e:	f7 ea                	imul   dx
   32560:	ba 88 01             	mov    dx,0x188
   32563:	8e c2                	mov    es,dx
   32565:	50                   	push   ax
   32566:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3256a:	5a                   	pop    dx
   3256b:	03 c2                	add    ax,dx
   3256d:	6b c0 0f             	imul   ax,ax,0xf
   32570:	8a 56 0a             	mov    dl,BYTE PTR [bp+0xa]
   32573:	b6 00                	mov    dh,0x0
   32575:	bb 04 00             	mov    bx,0x4
   32578:	50                   	push   ax
   32579:	8b c2                	mov    ax,dx
   3257b:	99                   	cwd
   3257c:	f7 fb                	idiv   bx
   3257e:	d1 e2                	shl    dx,1
   32580:	58                   	pop    ax
   32581:	03 c2                	add    ax,dx
   32583:	40                   	inc    ax
   32584:	99                   	cwd
   32585:	bb 88 01             	mov    bx,0x188
   32588:	8e c3                	mov    es,bx
   3258a:	50                   	push   ax
   3258b:	52                   	push   dx
   3258c:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32591:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32595:	59                   	pop    cx
   32596:	5b                   	pop    bx
   32597:	9a 77 14 00 00       	call   0x0:0x1477
   3259c:	8b d8                	mov    bx,ax
   3259e:	8e c2                	mov    es,dx
   325a0:	26 c6 07 03          	mov    BYTE PTR es:[bx],0x3
   325a4:	90                   	nop
   325a5:	0e                   	push   cs
   325a6:	e8 7c 00             	call   0x32625
   325a9:	b8 88 01             	mov    ax,0x188
   325ac:	8e c0                	mov    es,ax
   325ae:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   325b2:	ba 88 01             	mov    dx,0x188
   325b5:	8e c2                	mov    es,dx
   325b7:	26 03 06 c6 b9       	add    ax,WORD PTR es:0xb9c6
   325bc:	ba 88 01             	mov    dx,0x188
   325bf:	8e c2                	mov    es,dx
   325c1:	26 a3 f3 b9          	mov    es:0xb9f3,ax
   325c5:	b8 88 01             	mov    ax,0x188
   325c8:	8e c0                	mov    es,ax
   325ca:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   325ce:	ba 88 01             	mov    dx,0x188
   325d1:	8e c2                	mov    es,dx
   325d3:	26 03 06 c4 b9       	add    ax,WORD PTR es:0xb9c4
   325d8:	ba 88 01             	mov    dx,0x188
   325db:	8e c2                	mov    es,dx
   325dd:	26 a3 f1 b9          	mov    es:0xb9f1,ax
   325e1:	6a 04                	push   0x4
   325e3:	9a ca 00 10 01       	call   0x110:0xca
   325e8:	59                   	pop    cx
   325e9:	68 fe 00             	push   0xfe
   325ec:	b8 88 01             	mov    ax,0x188
   325ef:	8e c0                	mov    es,ax
   325f1:	26 a1 01 3b          	mov    ax,es:0x3b01
   325f5:	ba 88 01             	mov    dx,0x188
   325f8:	8e c2                	mov    es,dx
   325fa:	26 f7 2e ff 3a       	imul   WORD PTR es:0x3aff
   325ff:	50                   	push   ax
   32600:	6a 42                	push   0x42
   32602:	9a dc 16 28 00       	call   0x28:0x16dc
   32607:	83 c4 06             	add    sp,0x6
   3260a:	6a 42                	push   0x42
   3260c:	9a 70 00 10 01       	call   0x110:0x70
   32611:	59                   	pop    cx
   32612:	e9 9d fb             	jmp    0x321b2
   32615:	b8 88 01             	mov    ax,0x188
   32618:	8e c0                	mov    es,ax
   3261a:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   32621:	b0 00                	mov    al,0x0
   32623:	c9                   	leave
   32624:	cb                   	retf
   32625:	55                   	push   bp
   32626:	8b ec                	mov    bp,sp
   32628:	83 ec 04             	sub    sp,0x4
   3262b:	b8 88 01             	mov    ax,0x188
   3262e:	8e c0                	mov    es,ax
   32630:	26 a1 4a e7          	mov    ax,es:0xe74a
   32634:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   32637:	b8 88 01             	mov    ax,0x188
   3263a:	8e c0                	mov    es,ax
   3263c:	26 a1 4a e7          	mov    ax,es:0xe74a
   32640:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   32643:	eb 6e                	jmp    0x326b3
   32645:	b8 88 01             	mov    ax,0x188
   32648:	8e c0                	mov    es,ax
   3264a:	26 a1 4a e7          	mov    ax,es:0xe74a
   3264e:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   32651:	3d 32 00             	cmp    ax,0x32
   32654:	76 5d                	jbe    0x326b3
   32656:	b8 88 01             	mov    ax,0x188
   32659:	8e c0                	mov    es,ax
   3265b:	26 a1 4a e7          	mov    ax,es:0xe74a
   3265f:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   32662:	6a 00                	push   0x0
   32664:	68 00 80             	push   0x8000
   32667:	9a 79 17 00 00       	call   0x0:0x1779
   3266c:	99                   	cwd
   3266d:	bb 88 01             	mov    bx,0x188
   32670:	8e c3                	mov    es,bx
   32672:	50                   	push   ax
   32673:	26 a1 4a e7          	mov    ax,es:0xe74a
   32677:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   3267a:	bb 2c 01             	mov    bx,0x12c
   3267d:	52                   	push   dx
   3267e:	33 d2                	xor    dx,dx
   32680:	f7 f3                	div    bx
   32682:	50                   	push   ax
   32683:	b8 05 00             	mov    ax,0x5
   32686:	5a                   	pop    dx
   32687:	2b c2                	sub    ax,dx
   32689:	33 d2                	xor    dx,dx
   3268b:	59                   	pop    cx
   3268c:	5b                   	pop    bx
   3268d:	9a 42 12 00 00       	call   0x0:0x1242
   32692:	52                   	push   dx
   32693:	50                   	push   ax
   32694:	9a df 12 00 00       	call   0x0:0x12df
   32699:	0b c0                	or     ax,ax
   3269b:	74 08                	je     0x326a5
   3269d:	6a 34                	push   0x34
   3269f:	6a 30                	push   0x30
   326a1:	6a 42                	push   0x42
   326a3:	eb 06                	jmp    0x326ab
   326a5:	6a 34                	push   0x34
   326a7:	6a 30                	push   0x30
   326a9:	6a 41                	push   0x41
   326ab:	9a 2f 00 10 01       	call   0x110:0x2f
   326b0:	83 c4 06             	add    sp,0x6
   326b3:	b8 88 01             	mov    ax,0x188
   326b6:	8e c0                	mov    es,ax
   326b8:	26 a1 4a e7          	mov    ax,es:0xe74a
   326bc:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
   326bf:	3d dc 05             	cmp    ax,0x5dc
   326c2:	72 81                	jb     0x32645
   326c4:	c9                   	leave
   326c5:	cb                   	retf
   326c6:	55                   	push   bp
   326c7:	8b ec                	mov    bp,sp
   326c9:	83 ec 02             	sub    sp,0x2
   326cc:	f7 06 5e 3d 20 00    	test   WORD PTR ds:0x3d5e,0x20
   326d2:	75 03                	jne    0x326d7
   326d4:	e9 b6 01             	jmp    0x3288d
   326d7:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   326da:	83 fb 08             	cmp    bx,0x8
   326dd:	76 03                	jbe    0x326e2
   326df:	e9 96 01             	jmp    0x32878
   326e2:	d1 e3                	shl    bx,1
   326e4:	2e ff a7 7f 09       	jmp    WORD PTR cs:[bx+0x97f]
   326e9:	e9 a1 01             	jmp    0x3288d
   326ec:	b8 88 01             	mov    ax,0x188
   326ef:	8e c0                	mov    es,ax
   326f1:	26 80 3e c2 5b 00    	cmp    BYTE PTR es:0x5bc2,0x0
   326f7:	74 71                	je     0x3276a
   326f9:	68 80 01             	push   0x180
   326fc:	6a 00                	push   0x0
   326fe:	6a 00                	push   0x0
   32700:	b8 88 01             	mov    ax,0x188
   32703:	8e c0                	mov    es,ax
   32705:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   3270a:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   3270f:	9a 8f 02 e0 01       	call   0x1e0:0x28f
   32714:	83 c4 0a             	add    sp,0xa
   32717:	1e                   	push   ds
   32718:	68 23 3f             	push   0x3f23
   3271b:	68 fe 00             	push   0xfe
   3271e:	68 88 01             	push   0x188
   32721:	68 26 de             	push   0xde26
   32724:	9a 81 0a 20 00       	call   0x20:0xa81
   32729:	83 c4 0a             	add    sp,0xa
   3272c:	6a 00                	push   0x0
   3272e:	b8 88 01             	mov    ax,0x188
   32731:	8e c0                	mov    es,ax
   32733:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   32738:	26 ff 37             	push   WORD PTR es:[bx]
   3273b:	6a 00                	push   0x0
   3273d:	6a 00                	push   0x0
   3273f:	68 80 7f             	push   0x7f80
   32742:	9a 88 06 98 00       	call   0x98:0x688
   32747:	52                   	push   dx
   32748:	50                   	push   ax
   32749:	9a 13 1a 28 00       	call   0x28:0x1a13
   3274e:	83 c4 06             	add    sp,0x6
   32751:	68 88 01             	push   0x188
   32754:	68 26 de             	push   0xde26
   32757:	9a 22 0b 20 00       	call   0x20:0xb22
   3275c:	83 c4 04             	add    sp,0x4
   3275f:	b8 88 01             	mov    ax,0x188
   32762:	8e c0                	mov    es,ax
   32764:	26 c6 06 c2 5b 00    	mov    BYTE PTR es:0x5bc2,0x0
   3276a:	68 fe 00             	push   0xfe
   3276d:	b8 88 01             	mov    ax,0x188
   32770:	8e c0                	mov    es,ax
   32772:	26 a1 01 3b          	mov    ax,es:0x3b01
   32776:	ba 88 01             	mov    dx,0x188
   32779:	8e c2                	mov    es,dx
   3277b:	26 f7 2e ff 3a       	imul   WORD PTR es:0x3aff
   32780:	50                   	push   ax
   32781:	6a 41                	push   0x41
   32783:	9a dc 16 28 00       	call   0x28:0x16dc
   32788:	83 c4 06             	add    sp,0x6
   3278b:	6a 41                	push   0x41
   3278d:	6a 40                	push   0x40
   3278f:	b8 88 01             	mov    ax,0x188
   32792:	8e c0                	mov    es,ax
   32794:	26 a0 f0 b9          	mov    al,es:0xb9f0
   32798:	b4 00                	mov    ah,0x0
   3279a:	bb 04 00             	mov    bx,0x4
   3279d:	99                   	cwd
   3279e:	f7 fb                	idiv   bx
   327a0:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   327a3:	cd 3b                	int    0x3b
   327a5:	46                   	inc    si
   327a6:	fe 83 ec 04          	inc    BYTE PTR [bp+di+0x4ec]
   327aa:	cd 35                	int    0x35
   327ac:	5e                   	pop    si
   327ad:	f6 cd 3d             	test   ch,0x3d
   327b0:	9a cf 00 10 01       	call   0x110:0xcf
   327b5:	83 c4 08             	add    sp,0x8
   327b8:	68 fe 00             	push   0xfe
   327bb:	b8 88 01             	mov    ax,0x188
   327be:	8e c0                	mov    es,ax
   327c0:	26 a1 01 3b          	mov    ax,es:0x3b01
   327c4:	ba 88 01             	mov    dx,0x188
   327c7:	8e c2                	mov    es,dx
   327c9:	26 f7 2e ff 3a       	imul   WORD PTR es:0x3aff
   327ce:	50                   	push   ax
   327cf:	6a 42                	push   0x42
   327d1:	9a dc 16 28 00       	call   0x28:0x16dc
   327d6:	83 c4 06             	add    sp,0x6
   327d9:	6a 42                	push   0x42
   327db:	9a 70 00 10 01       	call   0x110:0x70
   327e0:	59                   	pop    cx
   327e1:	68 e0 01             	push   0x1e0
   327e4:	68 41 03             	push   0x341
   327e7:	6a 41                	push   0x41
   327e9:	6a 42                	push   0x42
   327eb:	6a 00                	push   0x0
   327ed:	6a 00                	push   0x0
   327ef:	b8 88 01             	mov    ax,0x188
   327f2:	8e c0                	mov    es,ax
   327f4:	26 ff 36 01 3b       	push   WORD PTR es:0x3b01
   327f9:	b8 88 01             	mov    ax,0x188
   327fc:	8e c0                	mov    es,ax
   327fe:	26 ff 36 ff 3a       	push   WORD PTR es:0x3aff
   32803:	6a 00                	push   0x0
   32805:	6a 00                	push   0x0
   32807:	9a 30 04 28 00       	call   0x28:0x430
   3280c:	83 c4 14             	add    sp,0x14
   3280f:	6a 34                	push   0x34
   32811:	6a 30                	push   0x30
   32813:	6a 41                	push   0x41
   32815:	9a 2f 00 10 01       	call   0x110:0x2f
   3281a:	83 c4 06             	add    sp,0x6
   3281d:	eb 6e                	jmp    0x3288d
   3281f:	9a a7 00 10 01       	call   0x110:0xa7
   32824:	eb 67                	jmp    0x3288d
   32826:	9a ac 00 10 01       	call   0x110:0xac
   3282b:	eb 60                	jmp    0x3288d
   3282d:	9a 25 00 10 01       	call   0x110:0x25
   32832:	eb 59                	jmp    0x3288d
   32834:	eb 37                	jmp    0x3286d
   32836:	b8 88 01             	mov    ax,0x188
   32839:	8e c0                	mov    es,ax
   3283b:	26 a0 f0 b9          	mov    al,es:0xb9f0
   3283f:	04 03                	add    al,0x3
   32841:	ba 88 01             	mov    dx,0x188
   32844:	8e c2                	mov    es,dx
   32846:	26 a2 f0 b9          	mov    es:0xb9f0,al
   3284a:	9a 6b 00 10 01       	call   0x110:0x6b
   3284f:	9a 20 00 10 01       	call   0x110:0x20
   32854:	b8 88 01             	mov    ax,0x188
   32857:	8e c0                	mov    es,ax
   32859:	26 a0 f0 b9          	mov    al,es:0xb9f0
   3285d:	04 03                	add    al,0x3
   3285f:	ba 88 01             	mov    dx,0x188
   32862:	8e c2                	mov    es,dx
   32864:	26 a2 f0 b9          	mov    es:0xb9f0,al
   32868:	9a 6b 00 10 01       	call   0x110:0x6b
   3286d:	9a 20 00 10 01       	call   0x110:0x20
   32872:	eb 19                	jmp    0x3288d
   32874:	eb 17                	jmp    0x3288d
   32876:	eb 15                	jmp    0x3288d
   32878:	6a 45                	push   0x45
   3287a:	6a 00                	push   0x0
   3287c:	6a 00                	push   0x0
   3287e:	68 27 01             	push   0x127
   32881:	1e                   	push   ds
   32882:	68 32 3f             	push   0x3f32
   32885:	9a 2a 00 58 01       	call   0x158:0x2a
   3288a:	83 c4 0c             	add    sp,0xc
   3288d:	c9                   	leave
   3288e:	cb                   	retf
   3288f:	7d 09                	jge    0x3289a
   32891:	dc 07                	fadd   QWORD PTR [bx]
   32893:	0f 09                	wbinvd
   32895:	16                   	push   ss
   32896:	09 1d                	or     WORD PTR [di],bx
   32898:	09 24                	or     WORD PTR [si],sp
   3289a:	09 26 09 7d          	or     WORD PTR ds:0x7d09,sp
   3289e:	09 7d 09             	or     WORD PTR [di+0x9],di
   328a1:	55                   	push   bp
   328a2:	8b ec                	mov    bp,sp
   328a4:	83 ec 02             	sub    sp,0x2
   328a7:	b8 88 01             	mov    ax,0x188
   328aa:	8e c0                	mov    es,ax
   328ac:	26 a0 eb b9          	mov    al,es:0xb9eb
   328b0:	b4 00                	mov    ah,0x0
   328b2:	ba 88 01             	mov    dx,0x188
   328b5:	8e c2                	mov    es,dx
   328b7:	50                   	push   ax
   328b8:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   328bc:	5a                   	pop    dx
   328bd:	f7 ea                	imul   dx
   328bf:	ba 88 01             	mov    dx,0x188
   328c2:	8e c2                	mov    es,dx
   328c4:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   328c9:	03 d0                	add    dx,ax
   328cb:	6b d2 0f             	imul   dx,dx,0xf
   328ce:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   328d1:	68 88 01             	push   0x188
   328d4:	68 26 de             	push   0xde26
   328d7:	9a 22 0b 20 00       	call   0x20:0xb22
   328dc:	83 c4 04             	add    sp,0x4
   328df:	b8 88 01             	mov    ax,0x188
   328e2:	8e c0                	mov    es,ax
   328e4:	26 a0 f0 b9          	mov    al,es:0xb9f0
   328e8:	b4 00                	mov    ah,0x0
   328ea:	bb 04 00             	mov    bx,0x4
   328ed:	99                   	cwd
   328ee:	f7 fb                	idiv   bx
   328f0:	d1 e2                	shl    dx,1
   328f2:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   328f5:	03 c2                	add    ax,dx
   328f7:	40                   	inc    ax
   328f8:	99                   	cwd
   328f9:	bb 88 01             	mov    bx,0x188
   328fc:	8e c3                	mov    es,bx
   328fe:	50                   	push   ax
   328ff:	52                   	push   dx
   32900:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32905:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32909:	59                   	pop    cx
   3290a:	5b                   	pop    bx
   3290b:	9a 77 14 00 00       	call   0x0:0x1477
   32910:	8a 5e 06             	mov    bl,BYTE PTR [bp+0x6]
   32913:	8e c2                	mov    es,dx
   32915:	87 d8                	xchg   ax,bx
   32917:	26 88 07             	mov    BYTE PTR es:[bx],al
   3291a:	b8 88 01             	mov    ax,0x188
   3291d:	8e c0                	mov    es,ax
   3291f:	26 a0 f0 b9          	mov    al,es:0xb9f0
   32923:	b4 00                	mov    ah,0x0
   32925:	bb 04 00             	mov    bx,0x4
   32928:	99                   	cwd
   32929:	f7 fb                	idiv   bx
   3292b:	d1 e2                	shl    dx,1
   3292d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32930:	03 c2                	add    ax,dx
   32932:	99                   	cwd
   32933:	bb 88 01             	mov    bx,0x188
   32936:	8e c3                	mov    es,bx
   32938:	50                   	push   ax
   32939:	52                   	push   dx
   3293a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   3293f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32943:	59                   	pop    cx
   32944:	5b                   	pop    bx
   32945:	9a 77 14 00 00       	call   0x0:0x1477
   3294a:	8b d8                	mov    bx,ax
   3294c:	8e c2                	mov    es,dx
   3294e:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   32951:	b4 00                	mov    ah,0x0
   32953:	bb 04 00             	mov    bx,0x4
   32956:	99                   	cwd
   32957:	f7 fb                	idiv   bx
   32959:	b8 88 01             	mov    ax,0x188
   3295c:	8e c0                	mov    es,ax
   3295e:	26 a0 f0 b9          	mov    al,es:0xb9f0
   32962:	b4 00                	mov    ah,0x0
   32964:	bb 04 00             	mov    bx,0x4
   32967:	52                   	push   dx
   32968:	99                   	cwd
   32969:	f7 fb                	idiv   bx
   3296b:	d1 e2                	shl    dx,1
   3296d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32970:	03 c2                	add    ax,dx
   32972:	99                   	cwd
   32973:	bb 88 01             	mov    bx,0x188
   32976:	8e c3                	mov    es,bx
   32978:	50                   	push   ax
   32979:	52                   	push   dx
   3297a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   3297f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32983:	59                   	pop    cx
   32984:	5b                   	pop    bx
   32985:	9a 77 14 00 00       	call   0x0:0x1477
   3298a:	8b d8                	mov    bx,ax
   3298c:	8e c2                	mov    es,dx
   3298e:	58                   	pop    ax
   3298f:	26 88 07             	mov    BYTE PTR es:[bx],al
   32992:	b8 88 01             	mov    ax,0x188
   32995:	8e c0                	mov    es,ax
   32997:	26 a0 f0 b9          	mov    al,es:0xb9f0
   3299b:	b4 00                	mov    ah,0x0
   3299d:	bb 04 00             	mov    bx,0x4
   329a0:	99                   	cwd
   329a1:	f7 fb                	idiv   bx
   329a3:	d1 e2                	shl    dx,1
   329a5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   329a8:	03 c2                	add    ax,dx
   329aa:	99                   	cwd
   329ab:	bb 88 01             	mov    bx,0x188
   329ae:	8e c3                	mov    es,bx
   329b0:	50                   	push   ax
   329b1:	52                   	push   dx
   329b2:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   329b7:	26 a1 ec b9          	mov    ax,es:0xb9ec
   329bb:	59                   	pop    cx
   329bc:	5b                   	pop    bx
   329bd:	9a 77 14 00 00       	call   0x0:0x1477
   329c2:	8b d8                	mov    bx,ax
   329c4:	8e c2                	mov    es,dx
   329c6:	26 fe 07             	inc    BYTE PTR es:[bx]
   329c9:	b8 88 01             	mov    ax,0x188
   329cc:	8e c0                	mov    es,ax
   329ce:	26 a0 eb b9          	mov    al,es:0xb9eb
   329d2:	b4 00                	mov    ah,0x0
   329d4:	ba 88 01             	mov    dx,0x188
   329d7:	8e c2                	mov    es,dx
   329d9:	50                   	push   ax
   329da:	26 a1 c4 b9          	mov    ax,es:0xb9c4
   329de:	5a                   	pop    dx
   329df:	f7 ea                	imul   dx
   329e1:	ba 88 01             	mov    dx,0x188
   329e4:	8e c2                	mov    es,dx
   329e6:	26 8b 16 c6 b9       	mov    dx,WORD PTR es:0xb9c6
   329eb:	03 d0                	add    dx,ax
   329ed:	6b d2 0f             	imul   dx,dx,0xf
   329f0:	01 56 fe             	add    WORD PTR [bp-0x2],dx
   329f3:	b8 88 01             	mov    ax,0x188
   329f6:	8e c0                	mov    es,ax
   329f8:	26 a0 f0 b9          	mov    al,es:0xb9f0
   329fc:	b4 00                	mov    ah,0x0
   329fe:	05 02 00             	add    ax,0x2
   32a01:	bb 04 00             	mov    bx,0x4
   32a04:	99                   	cwd
   32a05:	f7 fb                	idiv   bx
   32a07:	d1 e2                	shl    dx,1
   32a09:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32a0c:	03 c2                	add    ax,dx
   32a0e:	40                   	inc    ax
   32a0f:	99                   	cwd
   32a10:	bb 88 01             	mov    bx,0x188
   32a13:	8e c3                	mov    es,bx
   32a15:	50                   	push   ax
   32a16:	52                   	push   dx
   32a17:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32a1c:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32a20:	59                   	pop    cx
   32a21:	5b                   	pop    bx
   32a22:	9a 77 14 00 00       	call   0x0:0x1477
   32a27:	8a 5e 06             	mov    bl,BYTE PTR [bp+0x6]
   32a2a:	8e c2                	mov    es,dx
   32a2c:	87 d8                	xchg   ax,bx
   32a2e:	26 88 07             	mov    BYTE PTR es:[bx],al
   32a31:	b8 88 01             	mov    ax,0x188
   32a34:	8e c0                	mov    es,ax
   32a36:	26 a0 f0 b9          	mov    al,es:0xb9f0
   32a3a:	b4 00                	mov    ah,0x0
   32a3c:	05 02 00             	add    ax,0x2
   32a3f:	bb 04 00             	mov    bx,0x4
   32a42:	99                   	cwd
   32a43:	f7 fb                	idiv   bx
   32a45:	d1 e2                	shl    dx,1
   32a47:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32a4a:	03 c2                	add    ax,dx
   32a4c:	99                   	cwd
   32a4d:	bb 88 01             	mov    bx,0x188
   32a50:	8e c3                	mov    es,bx
   32a52:	50                   	push   ax
   32a53:	52                   	push   dx
   32a54:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32a59:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32a5d:	59                   	pop    cx
   32a5e:	5b                   	pop    bx
   32a5f:	9a 77 14 00 00       	call   0x0:0x1477
   32a64:	8b d8                	mov    bx,ax
   32a66:	8e c2                	mov    es,dx
   32a68:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   32a6b:	b4 00                	mov    ah,0x0
   32a6d:	bb 04 00             	mov    bx,0x4
   32a70:	99                   	cwd
   32a71:	f7 fb                	idiv   bx
   32a73:	b8 88 01             	mov    ax,0x188
   32a76:	8e c0                	mov    es,ax
   32a78:	26 a0 f0 b9          	mov    al,es:0xb9f0
   32a7c:	b4 00                	mov    ah,0x0
   32a7e:	05 02 00             	add    ax,0x2
   32a81:	bb 04 00             	mov    bx,0x4
   32a84:	52                   	push   dx
   32a85:	99                   	cwd
   32a86:	f7 fb                	idiv   bx
   32a88:	d1 e2                	shl    dx,1
   32a8a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32a8d:	03 c2                	add    ax,dx
   32a8f:	99                   	cwd
   32a90:	bb 88 01             	mov    bx,0x188
   32a93:	8e c3                	mov    es,bx
   32a95:	50                   	push   ax
   32a96:	52                   	push   dx
   32a97:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32a9c:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32aa0:	59                   	pop    cx
   32aa1:	5b                   	pop    bx
   32aa2:	9a 77 14 00 00       	call   0x0:0x1477
   32aa7:	8b d8                	mov    bx,ax
   32aa9:	8e c2                	mov    es,dx
   32aab:	58                   	pop    ax
   32aac:	26 88 07             	mov    BYTE PTR es:[bx],al
   32aaf:	b8 88 01             	mov    ax,0x188
   32ab2:	8e c0                	mov    es,ax
   32ab4:	26 a0 f0 b9          	mov    al,es:0xb9f0
   32ab8:	b4 00                	mov    ah,0x0
   32aba:	05 02 00             	add    ax,0x2
   32abd:	bb 04 00             	mov    bx,0x4
   32ac0:	99                   	cwd
   32ac1:	f7 fb                	idiv   bx
   32ac3:	d1 e2                	shl    dx,1
   32ac5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   32ac8:	03 c2                	add    ax,dx
   32aca:	99                   	cwd
   32acb:	bb 88 01             	mov    bx,0x188
   32ace:	8e c3                	mov    es,bx
   32ad0:	50                   	push   ax
   32ad1:	52                   	push   dx
   32ad2:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   32ad7:	26 a1 ec b9          	mov    ax,es:0xb9ec
   32adb:	59                   	pop    cx
   32adc:	5b                   	pop    bx
   32add:	9a 77 14 00 00       	call   0x0:0x1477
   32ae2:	8b d8                	mov    bx,ax
   32ae4:	8e c2                	mov    es,dx
   32ae6:	26 fe 07             	inc    BYTE PTR es:[bx]
   32ae9:	c9                   	leave
   32aea:	cb                   	retf
   32aeb:	55                   	push   bp
   32aec:	8b ec                	mov    bp,sp
   32aee:	81 ec be 00          	sub    sp,0xbe
   32af2:	8d 46 8a             	lea    ax,[bp-0x76]
   32af5:	16                   	push   ss
   32af6:	50                   	push   ax
   32af7:	1e                   	push   ds
   32af8:	68 74 3e             	push   0x3e74
   32afb:	b9 68 00             	mov    cx,0x68
   32afe:	9a 7a 12 00 00       	call   0x0:0x127a
   32b03:	c6 46 fd 00          	mov    BYTE PTR [bp-0x3],0x0
   32b07:	8c 5e fa             	mov    WORD PTR [bp-0x6],ds
   32b0a:	c7 46 f8 41 3f       	mov    WORD PTR [bp-0x8],0x3f41
   32b0f:	c6 46 f3 00          	mov    BYTE PTR [bp-0xd],0x0
   32b13:	8d 86 42 ff          	lea    ax,[bp-0xbe]
   32b17:	16                   	push   ss
   32b18:	50                   	push   ax
   32b19:	68 88 01             	push   0x188
   32b1c:	68 2c 96             	push   0x962c
   32b1f:	b9 48 00             	mov    cx,0x48
   32b22:	9a 7a 12 00 00       	call   0x0:0x127a
   32b27:	9a b9 1e 10 00       	call   0x10:0x1eb9
   32b2c:	6a 0a                	push   0xa
   32b2e:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   32b31:	05 03 00             	add    ax,0x3
   32b34:	ff 76 fa             	push   WORD PTR [bp-0x6]
   32b37:	50                   	push   ax
   32b38:	a1 6b bb             	mov    ax,ds:0xbb6b
   32b3b:	40                   	inc    ax
   32b3c:	50                   	push   ax
   32b3d:	9a 58 3f 00 00       	call   0x0:0x3f58
   32b42:	83 c4 08             	add    sp,0x8
   32b45:	6a 52                	push   0x52
   32b47:	9a 2a 00 30 01       	call   0x130:0x2a
   32b4c:	59                   	pop    cx
   32b4d:	0a c0                	or     al,al
   32b4f:	75 03                	jne    0x32b54
   32b51:	e9 93 01             	jmp    0x32ce7
   32b54:	1e                   	push   ds
   32b55:	68 49 3f             	push   0x3f49
   32b58:	ff 76 fa             	push   WORD PTR [bp-0x6]
   32b5b:	ff 76 f8             	push   WORD PTR [bp-0x8]
   32b5e:	9a 34 00 48 01       	call   0x148:0x34
   32b63:	83 c4 08             	add    sp,0x8
   32b66:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   32b69:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   32b6c:	52                   	push   dx
   32b6d:	50                   	push   ax
   32b6e:	6a 02                	push   0x2
   32b70:	9a 25 00 70 01       	call   0x170:0x25
   32b75:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   32b78:	3d ff ff             	cmp    ax,0xffff
   32b7b:	75 03                	jne    0x32b80
   32b7d:	e9 59 01             	jmp    0x32cd9
   32b80:	c6 46 fd 01          	mov    BYTE PTR [bp-0x3],0x1
   32b84:	68 88 01             	push   0x188
   32b87:	68 2c 96             	push   0x962c
   32b8a:	68 88 01             	push   0x188
   32b8d:	68 bc 96             	push   0x96bc
   32b90:	b9 48 00             	mov    cx,0x48
   32b93:	9a 7a 12 00 00       	call   0x0:0x127a
   32b98:	ff 76 fe             	push   WORD PTR [bp-0x2]
   32b9b:	9a 2a 00 70 01       	call   0x170:0x2a
   32ba0:	6a 57                	push   0x57
   32ba2:	ff 76 f6             	push   WORD PTR [bp-0xa]
   32ba5:	ff 76 f4             	push   WORD PTR [bp-0xc]
   32ba8:	6a 01                	push   0x1
   32baa:	9a 20 00 48 01       	call   0x148:0x20
   32baf:	83 c4 08             	add    sp,0x8
   32bb2:	ff 76 f6             	push   WORD PTR [bp-0xa]
   32bb5:	ff 76 f4             	push   WORD PTR [bp-0xc]
   32bb8:	9a c2 24 00 00       	call   0x0:0x24c2
   32bbd:	83 c4 04             	add    sp,0x4
   32bc0:	6a 00                	push   0x0
   32bc2:	b8 88 01             	mov    ax,0x188
   32bc5:	8e c0                	mov    es,ax
   32bc7:	26 a1 18 73          	mov    ax,es:0x7318
   32bcb:	f7 d8                	neg    ax
   32bcd:	50                   	push   ax
   32bce:	68 a0 00             	push   0xa0
   32bd1:	9a 3f 07 30 00       	call   0x30:0x73f
   32bd6:	83 c4 06             	add    sp,0x6
   32bd9:	68 00 01             	push   0x100
   32bdc:	6a 00                	push   0x0
   32bde:	1e                   	push   ds
   32bdf:	68 4d 3f             	push   0x3f4d
   32be2:	ff 76 fa             	push   WORD PTR [bp-0x6]
   32be5:	ff 76 f8             	push   WORD PTR [bp-0x8]
   32be8:	9a 34 00 48 01       	call   0x148:0x34
   32bed:	83 c4 08             	add    sp,0x8
   32bf0:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   32bf3:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   32bf6:	52                   	push   dx
   32bf7:	50                   	push   ax
   32bf8:	9a 2a 00 48 01       	call   0x148:0x2a
   32bfd:	83 c4 08             	add    sp,0x8
   32c00:	ff 76 f6             	push   WORD PTR [bp-0xa]
   32c03:	ff 76 f4             	push   WORD PTR [bp-0xc]
   32c06:	9a c2 24 00 00       	call   0x0:0x24c2
   32c0b:	83 c4 04             	add    sp,0x4
   32c0e:	1e                   	push   ds
   32c0f:	68 51 3f             	push   0x3f51
   32c12:	68 ad 01             	push   0x1ad
   32c15:	68 88 01             	push   0x188
   32c18:	68 26 de             	push   0xde26
   32c1b:	9a 81 0a 20 00       	call   0x20:0xa81
   32c20:	83 c4 0a             	add    sp,0xa
   32c23:	6a 00                	push   0x0
   32c25:	b8 88 01             	mov    ax,0x188
   32c28:	8e c0                	mov    es,ax
   32c2a:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   32c2f:	26 ff 37             	push   WORD PTR es:[bx]
   32c32:	6a 00                	push   0x0
   32c34:	6a 00                	push   0x0
   32c36:	68 80 7f             	push   0x7f80
   32c39:	9a 88 06 98 00       	call   0x98:0x688
   32c3e:	52                   	push   dx
   32c3f:	50                   	push   ax
   32c40:	9a 13 1a 28 00       	call   0x28:0x1a13
   32c45:	83 c4 06             	add    sp,0x6
   32c48:	68 88 01             	push   0x188
   32c4b:	68 26 de             	push   0xde26
   32c4e:	9a 22 0b 20 00       	call   0x20:0xb22
   32c53:	83 c4 04             	add    sp,0x4
   32c56:	9a 04 02 30 00       	call   0x30:0x204
   32c5b:	b8 88 01             	mov    ax,0x188
   32c5e:	8e c0                	mov    es,ax
   32c60:	26 a0 24 73          	mov    al,es:0x7324
   32c64:	88 46 f3             	mov    BYTE PTR [bp-0xd],al
   32c67:	b8 88 01             	mov    ax,0x188
   32c6a:	8e c0                	mov    es,ax
   32c6c:	26 c6 06 24 73 00    	mov    BYTE PTR es:0x7324,0x0
   32c72:	b8 88 01             	mov    ax,0x188
   32c75:	8e c0                	mov    es,ax
   32c77:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   32c7c:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   32c81:	b8 88 01             	mov    ax,0x188
   32c84:	8e c0                	mov    es,ax
   32c86:	26 ff 36 59 e5       	push   WORD PTR es:0xe559
   32c8b:	26 ff 36 57 e5       	push   WORD PTR es:0xe557
   32c90:	9a 8a 06 20 00       	call   0x20:0x68a
   32c95:	83 c4 08             	add    sp,0x8
   32c98:	1e                   	push   ds
   32c99:	68 60 3f             	push   0x3f60
   32c9c:	68 b3 01             	push   0x1b3
   32c9f:	68 88 01             	push   0x188
   32ca2:	68 57 e5             	push   0xe557
   32ca5:	9a 2f 02 40 00       	call   0x40:0x22f
   32caa:	83 c4 0a             	add    sp,0xa
   32cad:	6a 00                	push   0x0
   32caf:	b8 88 01             	mov    ax,0x188
   32cb2:	8e c0                	mov    es,ax
   32cb4:	26 a1 1e 73          	mov    ax,es:0x731e
   32cb8:	ba 88 01             	mov    dx,0x188
   32cbb:	8e c2                	mov    es,dx
   32cbd:	26 2b 06 18 73       	sub    ax,WORD PTR es:0x7318
   32cc2:	50                   	push   ax
   32cc3:	68 a0 00             	push   0xa0
   32cc6:	9a 3f 07 30 00       	call   0x30:0x73f
   32ccb:	83 c4 06             	add    sp,0x6
   32cce:	68 d0 07             	push   0x7d0
   32cd1:	9a ca 2d 10 00       	call   0x10:0x2dca
   32cd6:	59                   	pop    cx
   32cd7:	eb 0e                	jmp    0x32ce7
   32cd9:	ff 76 f6             	push   WORD PTR [bp-0xa]
   32cdc:	ff 76 f4             	push   WORD PTR [bp-0xc]
   32cdf:	9a c2 24 00 00       	call   0x0:0x24c2
   32ce4:	83 c4 04             	add    sp,0x4
   32ce7:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   32ceb:	6b db 1d             	imul   bx,bx,0x1d
   32cee:	b8 88 01             	mov    ax,0x188
   32cf1:	8e c0                	mov    es,ax
   32cf3:	26 ff b7 37 2e       	push   WORD PTR es:[bx+0x2e37]
   32cf8:	26 ff b7 35 2e       	push   WORD PTR es:[bx+0x2e35]
   32cfd:	16                   	push   ss
   32cfe:	8d 46 8a             	lea    ax,[bp-0x76]
   32d01:	50                   	push   ax
   32d02:	9a f7 48 00 00       	call   0x0:0x48f7
   32d07:	83 c4 08             	add    sp,0x8
   32d0a:	1e                   	push   ds
   32d0b:	68 6f 3f             	push   0x3f6f
   32d0e:	16                   	push   ss
   32d0f:	8d 46 8a             	lea    ax,[bp-0x76]
   32d12:	50                   	push   ax
   32d13:	9a f7 48 00 00       	call   0x0:0x48f7
   32d18:	83 c4 08             	add    sp,0x8
   32d1b:	b8 88 01             	mov    ax,0x188
   32d1e:	8e c0                	mov    es,ax
   32d20:	26 a0 eb b9          	mov    al,es:0xb9eb
   32d24:	b4 00                	mov    ah,0x0
   32d26:	bb 03 00             	mov    bx,0x3
   32d29:	99                   	cwd
   32d2a:	f7 fb                	idiv   bx
   32d2c:	ba 88 01             	mov    dx,0x188
   32d2f:	8e c2                	mov    es,dx
   32d31:	26 3b 06 f3 b9       	cmp    ax,WORD PTR es:0xb9f3
   32d36:	7e 64                	jle    0x32d9c
   32d38:	b8 88 01             	mov    ax,0x188
   32d3b:	8e c0                	mov    es,ax
   32d3d:	26 a0 ea b9          	mov    al,es:0xb9ea
   32d41:	b4 00                	mov    ah,0x0
   32d43:	bb 03 00             	mov    bx,0x3
   32d46:	99                   	cwd
   32d47:	f7 fb                	idiv   bx
   32d49:	ba 88 01             	mov    dx,0x188
   32d4c:	8e c2                	mov    es,dx
   32d4e:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   32d53:	7e 07                	jle    0x32d5c
   32d55:	1e                   	push   ds
   32d56:	68 9a 3f             	push   0x3f9a
   32d59:	e9 2c 01             	jmp    0x32e88
   32d5c:	b8 88 01             	mov    ax,0x188
   32d5f:	8e c0                	mov    es,ax
   32d61:	26 a0 ea b9          	mov    al,es:0xb9ea
   32d65:	b4 00                	mov    ah,0x0
   32d67:	ba 88 01             	mov    dx,0x188
   32d6a:	8e c2                	mov    es,dx
   32d6c:	26 8a 16 ea b9       	mov    dl,BYTE PTR es:0xb9ea
   32d71:	b6 00                	mov    dh,0x0
   32d73:	bb 03 00             	mov    bx,0x3
   32d76:	50                   	push   ax
   32d77:	8b c2                	mov    ax,dx
   32d79:	99                   	cwd
   32d7a:	f7 fb                	idiv   bx
   32d7c:	5a                   	pop    dx
   32d7d:	2b d0                	sub    dx,ax
   32d7f:	b8 88 01             	mov    ax,0x188
   32d82:	8e c0                	mov    es,ax
   32d84:	26 3b 16 f1 b9       	cmp    dx,WORD PTR es:0xb9f1
   32d89:	7d 07                	jge    0x32d92
   32d8b:	1e                   	push   ds
   32d8c:	68 ae 3f             	push   0x3fae
   32d8f:	e9 f6 00             	jmp    0x32e88
   32d92:	1e                   	push   ds
   32d93:	68 c2 3f             	push   0x3fc2
   32d96:	e9 ef 00             	jmp    0x32e88
   32d99:	e9 f9 00             	jmp    0x32e95
   32d9c:	b8 88 01             	mov    ax,0x188
   32d9f:	8e c0                	mov    es,ax
   32da1:	26 a0 eb b9          	mov    al,es:0xb9eb
   32da5:	b4 00                	mov    ah,0x0
   32da7:	ba 88 01             	mov    dx,0x188
   32daa:	8e c2                	mov    es,dx
   32dac:	26 8a 16 eb b9       	mov    dl,BYTE PTR es:0xb9eb
   32db1:	b6 00                	mov    dh,0x0
   32db3:	bb 03 00             	mov    bx,0x3
   32db6:	50                   	push   ax
   32db7:	8b c2                	mov    ax,dx
   32db9:	99                   	cwd
   32dba:	f7 fb                	idiv   bx
   32dbc:	5a                   	pop    dx
   32dbd:	2b d0                	sub    dx,ax
   32dbf:	b8 88 01             	mov    ax,0x188
   32dc2:	8e c0                	mov    es,ax
   32dc4:	26 3b 16 f3 b9       	cmp    dx,WORD PTR es:0xb9f3
   32dc9:	7d 61                	jge    0x32e2c
   32dcb:	b8 88 01             	mov    ax,0x188
   32dce:	8e c0                	mov    es,ax
   32dd0:	26 a0 ea b9          	mov    al,es:0xb9ea
   32dd4:	b4 00                	mov    ah,0x0
   32dd6:	bb 03 00             	mov    bx,0x3
   32dd9:	99                   	cwd
   32dda:	f7 fb                	idiv   bx
   32ddc:	ba 88 01             	mov    dx,0x188
   32ddf:	8e c2                	mov    es,dx
   32de1:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   32de6:	7e 07                	jle    0x32def
   32de8:	1e                   	push   ds
   32de9:	68 d1 3f             	push   0x3fd1
   32dec:	e9 99 00             	jmp    0x32e88
   32def:	b8 88 01             	mov    ax,0x188
   32df2:	8e c0                	mov    es,ax
   32df4:	26 a0 ea b9          	mov    al,es:0xb9ea
   32df8:	b4 00                	mov    ah,0x0
   32dfa:	ba 88 01             	mov    dx,0x188
   32dfd:	8e c2                	mov    es,dx
   32dff:	26 8a 16 ea b9       	mov    dl,BYTE PTR es:0xb9ea
   32e04:	b6 00                	mov    dh,0x0
   32e06:	bb 03 00             	mov    bx,0x3
   32e09:	50                   	push   ax
   32e0a:	8b c2                	mov    ax,dx
   32e0c:	99                   	cwd
   32e0d:	f7 fb                	idiv   bx
   32e0f:	5a                   	pop    dx
   32e10:	2b d0                	sub    dx,ax
   32e12:	b8 88 01             	mov    ax,0x188
   32e15:	8e c0                	mov    es,ax
   32e17:	26 3b 16 f1 b9       	cmp    dx,WORD PTR es:0xb9f1
   32e1c:	7d 06                	jge    0x32e24
   32e1e:	1e                   	push   ds
   32e1f:	68 e5 3f             	push   0x3fe5
   32e22:	eb 64                	jmp    0x32e88
   32e24:	1e                   	push   ds
   32e25:	68 f9 3f             	push   0x3ff9
   32e28:	eb 5e                	jmp    0x32e88
   32e2a:	eb 69                	jmp    0x32e95
   32e2c:	b8 88 01             	mov    ax,0x188
   32e2f:	8e c0                	mov    es,ax
   32e31:	26 a0 ea b9          	mov    al,es:0xb9ea
   32e35:	b4 00                	mov    ah,0x0
   32e37:	bb 03 00             	mov    bx,0x3
   32e3a:	99                   	cwd
   32e3b:	f7 fb                	idiv   bx
   32e3d:	ba 88 01             	mov    dx,0x188
   32e40:	8e c2                	mov    es,dx
   32e42:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   32e47:	7e 06                	jle    0x32e4f
   32e49:	1e                   	push   ds
   32e4a:	68 08 40             	push   0x4008
   32e4d:	eb 39                	jmp    0x32e88
   32e4f:	b8 88 01             	mov    ax,0x188
   32e52:	8e c0                	mov    es,ax
   32e54:	26 a0 ea b9          	mov    al,es:0xb9ea
   32e58:	b4 00                	mov    ah,0x0
   32e5a:	ba 88 01             	mov    dx,0x188
   32e5d:	8e c2                	mov    es,dx
   32e5f:	26 8a 16 ea b9       	mov    dl,BYTE PTR es:0xb9ea
   32e64:	b6 00                	mov    dh,0x0
   32e66:	bb 03 00             	mov    bx,0x3
   32e69:	50                   	push   ax
   32e6a:	8b c2                	mov    ax,dx
   32e6c:	99                   	cwd
   32e6d:	f7 fb                	idiv   bx
   32e6f:	5a                   	pop    dx
   32e70:	2b d0                	sub    dx,ax
   32e72:	b8 88 01             	mov    ax,0x188
   32e75:	8e c0                	mov    es,ax
   32e77:	26 3b 16 f1 b9       	cmp    dx,WORD PTR es:0xb9f1
   32e7c:	7d 06                	jge    0x32e84
   32e7e:	1e                   	push   ds
   32e7f:	68 17 40             	push   0x4017
   32e82:	eb 04                	jmp    0x32e88
   32e84:	1e                   	push   ds
   32e85:	68 26 40             	push   0x4026
   32e88:	16                   	push   ss
   32e89:	8d 46 8a             	lea    ax,[bp-0x76]
   32e8c:	50                   	push   ax
   32e8d:	9a f7 48 00 00       	call   0x0:0x48f7
   32e92:	83 c4 08             	add    sp,0x8
   32e95:	1e                   	push   ds
   32e96:	68 3f 40             	push   0x403f
   32e99:	16                   	push   ss
   32e9a:	8d 46 8a             	lea    ax,[bp-0x76]
   32e9d:	50                   	push   ax
   32e9e:	9a f7 48 00 00       	call   0x0:0x48f7
   32ea3:	83 c4 08             	add    sp,0x8
   32ea6:	6a 00                	push   0x0
   32ea8:	6a 01                	push   0x1
   32eaa:	16                   	push   ss
   32eab:	8d 46 8a             	lea    ax,[bp-0x76]
   32eae:	50                   	push   ax
   32eaf:	9a 48 29 10 00       	call   0x10:0x2948
   32eb4:	83 c4 08             	add    sp,0x8
   32eb7:	68 60 09             	push   0x960
   32eba:	9a ca 2d 10 00       	call   0x10:0x2dca
   32ebf:	59                   	pop    cx
   32ec0:	9a b9 1e 10 00       	call   0x10:0x1eb9
   32ec5:	80 7e fd 00          	cmp    BYTE PTR [bp-0x3],0x0
   32ec9:	74 2b                	je     0x32ef6
   32ecb:	6a 00                	push   0x0
   32ecd:	b8 88 01             	mov    ax,0x188
   32ed0:	8e c0                	mov    es,ax
   32ed2:	26 a1 18 73          	mov    ax,es:0x7318
   32ed6:	f7 d8                	neg    ax
   32ed8:	50                   	push   ax
   32ed9:	68 a0 00             	push   0xa0
   32edc:	9a 3f 07 30 00       	call   0x30:0x73f
   32ee1:	83 c4 06             	add    sp,0x6
   32ee4:	b8 88 01             	mov    ax,0x188
   32ee7:	8a 56 f3             	mov    dl,BYTE PTR [bp-0xd]
   32eea:	8e c0                	mov    es,ax
   32eec:	26 88 16 24 73       	mov    BYTE PTR es:0x7324,dl
   32ef1:	90                   	nop
   32ef2:	0e                   	push   cs
   32ef3:	e8 3b 15             	call   0x34431
   32ef6:	68 88 01             	push   0x188
   32ef9:	68 2c 96             	push   0x962c
   32efc:	8d 86 42 ff          	lea    ax,[bp-0xbe]
   32f00:	16                   	push   ss
   32f01:	50                   	push   ax
   32f02:	b9 48 00             	mov    cx,0x48
   32f05:	9a 7a 12 00 00       	call   0x0:0x127a
   32f0a:	c9                   	leave
   32f0b:	cb                   	retf
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
   337ac:	14 55                	adc    al,0x55
   337ae:	8b ec                	mov    bp,sp
   337b0:	83 ec 02             	sub    sp,0x2
   337b3:	ff 76 08             	push   WORD PTR [bp+0x8]
   337b6:	ff 76 06             	push   WORD PTR [bp+0x6]
   337b9:	6a 04                	push   0x4
   337bb:	9a 25 00 70 01       	call   0x170:0x25
   337c0:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   337c3:	3d ff ff             	cmp    ax,0xffff
   337c6:	75 15                	jne    0x337dd
   337c8:	6a ff                	push   0xffff
   337ca:	1e                   	push   ds
   337cb:	68 29 41             	push   0x4129
   337ce:	68 57 04             	push   0x457
   337d1:	1e                   	push   ds
   337d2:	68 1a 41             	push   0x411a
   337d5:	9a 2a 00 58 01       	call   0x158:0x2a
   337da:	83 c4 0c             	add    sp,0xc
   337dd:	68 88 01             	push   0x188
   337e0:	68 26 de             	push   0xde26
   337e3:	9a 22 0b 20 00       	call   0x20:0xb22
   337e8:	83 c4 04             	add    sp,0x4
   337eb:	ff 76 fe             	push   WORD PTR [bp-0x2]
   337ee:	b8 88 01             	mov    ax,0x188
   337f1:	8e c0                	mov    es,ax
   337f3:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   337f8:	26 a1 ec b9          	mov    ax,es:0xb9ec
   337fc:	b9 ff ff             	mov    cx,0xffff
   337ff:	bb d5 ff             	mov    bx,0xffd5
   33802:	9a 77 14 00 00       	call   0x0:0x1477
   33807:	52                   	push   dx
   33808:	50                   	push   ax
   33809:	b8 88 01             	mov    ax,0x188
   3380c:	8e c0                	mov    es,ax
   3380e:	26 a0 eb b9          	mov    al,es:0xb9eb
   33812:	b4 00                	mov    ah,0x0
   33814:	ba 88 01             	mov    dx,0x188
   33817:	8e c2                	mov    es,dx
   33819:	26 8a 16 ea b9       	mov    dl,BYTE PTR es:0xb9ea
   3381e:	b6 00                	mov    dh,0x0
   33820:	f7 ea                	imul   dx
   33822:	6b c0 0f             	imul   ax,ax,0xf
   33825:	6a 00                	push   0x0
   33827:	50                   	push   ax
   33828:	9a 34 00 70 01       	call   0x170:0x34
   3382d:	ff 76 fe             	push   WORD PTR [bp-0x2]
   33830:	9a 2a 00 70 01       	call   0x170:0x2a
   33835:	c9                   	leave
   33836:	cb                   	retf
