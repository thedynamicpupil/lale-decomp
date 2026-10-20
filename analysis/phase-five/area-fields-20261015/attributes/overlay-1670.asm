
analysis/phase-five/area-fields-20261015/attributes/overlay-1670.bin:     file format binary


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
   33837:	55                   	push   bp
   33838:	8b ec                	mov    bp,sp
   3383a:	83 ec 10             	sub    sp,0x10
   3383d:	f7 06 5e 3d 20 00    	test   WORD PTR ds:0x3d5e,0x20
   33843:	74 05                	je     0x3384a
   33845:	9a 66 00 10 01       	call   0x110:0x66
   3384a:	1e                   	push   ds
   3384b:	68 3a 41             	push   0x413a
   3384e:	9a a0 1a 28 00       	call   0x28:0x1aa0
   33853:	83 c4 04             	add    sp,0x4
   33856:	b8 88 01             	mov    ax,0x188
   33859:	8e c0                	mov    es,ax
   3385b:	26 a1 3f e3          	mov    ax,es:0xe33f
   3385f:	26 0b 06 41 e3       	or     ax,WORD PTR es:0xe341
   33864:	74 15                	je     0x3387b
   33866:	1e                   	push   ds
   33867:	68 41 41             	push   0x4141
   3386a:	68 78 04             	push   0x478
   3386d:	68 88 01             	push   0x188
   33870:	68 3f e3             	push   0xe33f
   33873:	9a 2f 02 40 00       	call   0x40:0x22f
   33878:	83 c4 0a             	add    sp,0xa
   3387b:	6a 00                	push   0x0
   3387d:	6a 00                	push   0x0
   3387f:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   33882:	6b db 1d             	imul   bx,bx,0x1d
   33885:	b8 88 01             	mov    ax,0x188
   33888:	8e c0                	mov    es,ax
   3388a:	26 ff b7 33 2e       	push   WORD PTR es:[bx+0x2e33]
   3388f:	26 ff b7 31 2e       	push   WORD PTR es:[bx+0x2e31]
   33894:	6a 01                	push   0x1
   33896:	9a 2f 00 48 01       	call   0x148:0x2f
   3389b:	83 c4 0a             	add    sp,0xa
   3389e:	bb 88 01             	mov    bx,0x188
   338a1:	8e c3                	mov    es,bx
   338a3:	26 89 16 41 e3       	mov    WORD PTR es:0xe341,dx
   338a8:	26 a3 3f e3          	mov    es:0xe33f,ax
   338ac:	b8 88 01             	mov    ax,0x188
   338af:	8e c0                	mov    es,ax
   338b1:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   338b6:	26 ff 37             	push   WORD PTR es:[bx]
   338b9:	6a 00                	push   0x0
   338bb:	6a 14                	push   0x14
   338bd:	b8 88 01             	mov    ax,0x188
   338c0:	8e c0                	mov    es,ax
   338c2:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   338c7:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   338cb:	2d 14 00             	sub    ax,0x14
   338ce:	50                   	push   ax
   338cf:	9a 88 06 98 00       	call   0x98:0x688
   338d4:	bb 88 01             	mov    bx,0x188
   338d7:	8e c3                	mov    es,bx
   338d9:	26 89 16 ee b9       	mov    WORD PTR es:0xb9ee,dx
   338de:	26 a3 ec b9          	mov    es:0xb9ec,ax
   338e2:	1e                   	push   ds
   338e3:	68 50 41             	push   0x4150
   338e6:	68 7e 04             	push   0x47e
   338e9:	68 88 01             	push   0x188
   338ec:	68 3b bb             	push   0xbb3b
   338ef:	9a 81 0a 20 00       	call   0x20:0xa81
   338f4:	83 c4 0a             	add    sp,0xa
   338f7:	68 88 01             	push   0x188
   338fa:	68 3b bb             	push   0xbb3b
   338fd:	9a 22 0b 20 00       	call   0x20:0xb22
   33902:	83 c4 04             	add    sp,0x4
   33905:	a1 6b bb             	mov    ax,ds:0xbb6b
   33908:	40                   	inc    ax
   33909:	50                   	push   ax
   3390a:	1e                   	push   ds
   3390b:	68 5f 41             	push   0x415f
   3390e:	16                   	push   ss
   3390f:	8d 46 f0             	lea    ax,[bp-0x10]
   33912:	50                   	push   ax
   33913:	9a b4 48 00 00       	call   0x0:0x48b4
   33918:	83 c4 0a             	add    sp,0xa
   3391b:	b8 88 01             	mov    ax,0x188
   3391e:	8e c0                	mov    es,ax
   33920:	26 a1 4f e3          	mov    ax,es:0xe34f
   33924:	26 0b 06 51 e3       	or     ax,WORD PTR es:0xe351
   33929:	74 15                	je     0x33940
   3392b:	1e                   	push   ds
   3392c:	68 65 41             	push   0x4165
   3392f:	68 88 04             	push   0x488
   33932:	68 88 01             	push   0x188
   33935:	68 4f e3             	push   0xe34f
   33938:	9a 2f 02 40 00       	call   0x40:0x22f
   3393d:	83 c4 0a             	add    sp,0xa
   33940:	6a 00                	push   0x0
   33942:	6a 00                	push   0x0
   33944:	16                   	push   ss
   33945:	8d 46 f0             	lea    ax,[bp-0x10]
   33948:	50                   	push   ax
   33949:	6a 01                	push   0x1
   3394b:	9a 2f 00 48 01       	call   0x148:0x2f
   33950:	83 c4 0a             	add    sp,0xa
   33953:	bb 88 01             	mov    bx,0x188
   33956:	8e c3                	mov    es,bx
   33958:	26 89 16 51 e3       	mov    WORD PTR es:0xe351,dx
   3395d:	26 a3 4f e3          	mov    es:0xe34f,ax
   33961:	b8 88 01             	mov    ax,0x188
   33964:	8e c0                	mov    es,ax
   33966:	26 c4 1e ec b9       	les    bx,DWORD PTR es:0xb9ec
   3396b:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3396e:	ba 88 01             	mov    dx,0x188
   33971:	8e c2                	mov    es,dx
   33973:	26 a2 eb b9          	mov    es:0xb9eb,al
   33977:	b8 88 01             	mov    ax,0x188
   3397a:	8e c0                	mov    es,ax
   3397c:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33981:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33985:	33 c9                	xor    cx,cx
   33987:	bb 01 00             	mov    bx,0x1
   3398a:	9a 77 14 00 00       	call   0x0:0x1477
   3398f:	8b d8                	mov    bx,ax
   33991:	8e c2                	mov    es,dx
   33993:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   33996:	ba 88 01             	mov    dx,0x188
   33999:	8e c2                	mov    es,dx
   3399b:	26 a2 ea b9          	mov    es:0xb9ea,al
   3399f:	b8 88 01             	mov    ax,0x188
   339a2:	8e c0                	mov    es,ax
   339a4:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   339a9:	26 a1 ec b9          	mov    ax,es:0xb9ec
   339ad:	33 c9                	xor    cx,cx
   339af:	bb 02 00             	mov    bx,0x2
   339b2:	9a 77 14 00 00       	call   0x0:0x1477
   339b7:	8b d8                	mov    bx,ax
   339b9:	8e c2                	mov    es,dx
   339bb:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   339be:	b4 00                	mov    ah,0x0
   339c0:	a3 86 ba             	mov    ds:0xba86,ax
   339c3:	80 7e 08 00          	cmp    BYTE PTR [bp+0x8],0x0
   339c7:	75 03                	jne    0x339cc
   339c9:	e9 f9 01             	jmp    0x33bc5
   339cc:	b8 88 01             	mov    ax,0x188
   339cf:	8e c0                	mov    es,ax
   339d1:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   339d6:	26 a1 ec b9          	mov    ax,es:0xb9ec
   339da:	33 c9                	xor    cx,cx
   339dc:	bb 07 00             	mov    bx,0x7
   339df:	9a 77 14 00 00       	call   0x0:0x1477
   339e4:	8b d8                	mov    bx,ax
   339e6:	8e c2                	mov    es,dx
   339e8:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   339eb:	b4 00                	mov    ah,0x0
   339ed:	48                   	dec    ax
   339ee:	ba 88 01             	mov    dx,0x188
   339f1:	8e c2                	mov    es,dx
   339f3:	26 a3 f3 b9          	mov    es:0xb9f3,ax
   339f7:	b8 88 01             	mov    ax,0x188
   339fa:	8e c0                	mov    es,ax
   339fc:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33a01:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33a05:	33 c9                	xor    cx,cx
   33a07:	bb 08 00             	mov    bx,0x8
   33a0a:	9a 77 14 00 00       	call   0x0:0x1477
   33a0f:	8b d8                	mov    bx,ax
   33a11:	8e c2                	mov    es,dx
   33a13:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   33a16:	b4 00                	mov    ah,0x0
   33a18:	48                   	dec    ax
   33a19:	ba 88 01             	mov    dx,0x188
   33a1c:	8e c2                	mov    es,dx
   33a1e:	26 a3 f1 b9          	mov    es:0xb9f1,ax
   33a22:	b8 88 01             	mov    ax,0x188
   33a25:	8e c0                	mov    es,ax
   33a27:	26 a0 eb b9          	mov    al,es:0xb9eb
   33a2b:	b4 00                	mov    ah,0x0
   33a2d:	ba 88 01             	mov    dx,0x188
   33a30:	8e c2                	mov    es,dx
   33a32:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   33a37:	42                   	inc    dx
   33a38:	3b c2                	cmp    ax,dx
   33a3a:	7d 0c                	jge    0x33a48
   33a3c:	b8 88 01             	mov    ax,0x188
   33a3f:	8e c0                	mov    es,ax
   33a41:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   33a45:	48                   	dec    ax
   33a46:	eb 0a                	jmp    0x33a52
   33a48:	b8 88 01             	mov    ax,0x188
   33a4b:	8e c0                	mov    es,ax
   33a4d:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   33a51:	40                   	inc    ax
   33a52:	a3 51 bb             	mov    ds:0xbb51,ax
   33a55:	b8 88 01             	mov    ax,0x188
   33a58:	8e c0                	mov    es,ax
   33a5a:	26 a0 ea b9          	mov    al,es:0xb9ea
   33a5e:	b4 00                	mov    ah,0x0
   33a60:	ba 88 01             	mov    dx,0x188
   33a63:	8e c2                	mov    es,dx
   33a65:	26 8b 16 f1 b9       	mov    dx,WORD PTR es:0xb9f1
   33a6a:	42                   	inc    dx
   33a6b:	3b c2                	cmp    ax,dx
   33a6d:	7d 0c                	jge    0x33a7b
   33a6f:	b8 88 01             	mov    ax,0x188
   33a72:	8e c0                	mov    es,ax
   33a74:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   33a78:	48                   	dec    ax
   33a79:	eb 0a                	jmp    0x33a85
   33a7b:	b8 88 01             	mov    ax,0x188
   33a7e:	8e c0                	mov    es,ax
   33a80:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   33a84:	40                   	inc    ax
   33a85:	a3 4f bb             	mov    ds:0xbb4f,ax
   33a88:	b8 88 01             	mov    ax,0x188
   33a8b:	8e c0                	mov    es,ax
   33a8d:	26 83 3e f1 b9 03    	cmp    WORD PTR es:0xb9f1,0x3
   33a93:	7d 0d                	jge    0x33aa2
   33a95:	b8 88 01             	mov    ax,0x188
   33a98:	8e c0                	mov    es,ax
   33a9a:	26 c6 06 f0 b9 02    	mov    BYTE PTR es:0xb9f0,0x2
   33aa0:	eb 4c                	jmp    0x33aee
   33aa2:	b8 88 01             	mov    ax,0x188
   33aa5:	8e c0                	mov    es,ax
   33aa7:	26 83 3e f3 b9 03    	cmp    WORD PTR es:0xb9f3,0x3
   33aad:	7d 0d                	jge    0x33abc
   33aaf:	b8 88 01             	mov    ax,0x188
   33ab2:	8e c0                	mov    es,ax
   33ab4:	26 c6 06 f0 b9 01    	mov    BYTE PTR es:0xb9f0,0x1
   33aba:	eb 32                	jmp    0x33aee
   33abc:	b8 88 01             	mov    ax,0x188
   33abf:	8e c0                	mov    es,ax
   33ac1:	26 a0 ea b9          	mov    al,es:0xb9ea
   33ac5:	b4 00                	mov    ah,0x0
   33ac7:	05 fd ff             	add    ax,0xfffd
   33aca:	ba 88 01             	mov    dx,0x188
   33acd:	8e c2                	mov    es,dx
   33acf:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   33ad4:	7d 0d                	jge    0x33ae3
   33ad6:	b8 88 01             	mov    ax,0x188
   33ad9:	8e c0                	mov    es,ax
   33adb:	26 c6 06 f0 b9 00    	mov    BYTE PTR es:0xb9f0,0x0
   33ae1:	eb 0b                	jmp    0x33aee
   33ae3:	b8 88 01             	mov    ax,0x188
   33ae6:	8e c0                	mov    es,ax
   33ae8:	26 c6 06 f0 b9 03    	mov    BYTE PTR es:0xb9f0,0x3
   33aee:	b8 88 01             	mov    ax,0x188
   33af1:	b2 00                	mov    dl,0x0
   33af3:	8e c0                	mov    es,ax
   33af5:	26 88 16 ac bb       	mov    BYTE PTR es:0xbbac,dl
   33afa:	8a c2                	mov    al,dl
   33afc:	ba 88 01             	mov    dx,0x188
   33aff:	8e c2                	mov    es,dx
   33b01:	26 a2 b7 bb          	mov    es:0xbbb7,al
   33b05:	6a 00                	push   0x0
   33b07:	68 00 80             	push   0x8000
   33b0a:	9a 79 17 00 00       	call   0x0:0x1779
   33b0f:	99                   	cwd
   33b10:	50                   	push   ax
   33b11:	52                   	push   dx
   33b12:	33 d2                	xor    dx,dx
   33b14:	b8 64 00             	mov    ax,0x64
   33b17:	59                   	pop    cx
   33b18:	5b                   	pop    bx
   33b19:	9a 42 12 00 00       	call   0x0:0x1242
   33b1e:	52                   	push   dx
   33b1f:	50                   	push   ax
   33b20:	9a df 12 00 00       	call   0x0:0x12df
   33b25:	04 65                	add    al,0x65
   33b27:	ba 88 01             	mov    dx,0x188
   33b2a:	8e c2                	mov    es,dx
   33b2c:	26 a2 ab bb          	mov    es:0xbbab,al
   33b30:	a1 6b bb             	mov    ax,ds:0xbb6b
   33b33:	48                   	dec    ax
   33b34:	3d 0c 00             	cmp    ax,0xc
   33b37:	7c 03                	jl     0x33b3c
   33b39:	e9 89 00             	jmp    0x33bc5
   33b3c:	a1 6b bb             	mov    ax,ds:0xbb6b
   33b3f:	48                   	dec    ax
   33b40:	7e 06                	jle    0x33b48
   33b42:	a1 6b bb             	mov    ax,ds:0xbb6b
   33b45:	48                   	dec    ax
   33b46:	eb 02                	jmp    0x33b4a
   33b48:	33 c0                	xor    ax,ax
   33b4a:	ba 88 01             	mov    dx,0x188
   33b4d:	8e c2                	mov    es,dx
   33b4f:	26 a3 88 bb          	mov    es:0xbb88,ax
   33b53:	b8 88 01             	mov    ax,0x188
   33b56:	8e c0                	mov    es,ax
   33b58:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33b5d:	c1 e3 03             	shl    bx,0x3
   33b60:	b8 88 01             	mov    ax,0x188
   33b63:	8e c0                	mov    es,ax
   33b65:	26 8b 87 86 4a       	mov    ax,WORD PTR es:[bx+0x4a86]
   33b6a:	ba 88 01             	mov    dx,0x188
   33b6d:	8e c2                	mov    es,dx
   33b6f:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33b74:	c1 e3 03             	shl    bx,0x3
   33b77:	ba 88 01             	mov    dx,0x188
   33b7a:	8e c2                	mov    es,dx
   33b7c:	26 03 87 8a 4a       	add    ax,WORD PTR es:[bx+0x4a8a]
   33b81:	d1 f8                	sar    ax,1
   33b83:	ba 88 01             	mov    dx,0x188
   33b86:	8e c2                	mov    es,dx
   33b88:	26 a3 8a bb          	mov    es:0xbb8a,ax
   33b8c:	b8 88 01             	mov    ax,0x188
   33b8f:	8e c0                	mov    es,ax
   33b91:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33b96:	c1 e3 03             	shl    bx,0x3
   33b99:	b8 88 01             	mov    ax,0x188
   33b9c:	8e c0                	mov    es,ax
   33b9e:	26 8b 87 88 4a       	mov    ax,WORD PTR es:[bx+0x4a88]
   33ba3:	ba 88 01             	mov    dx,0x188
   33ba6:	8e c2                	mov    es,dx
   33ba8:	26 8b 1e 88 bb       	mov    bx,WORD PTR es:0xbb88
   33bad:	c1 e3 03             	shl    bx,0x3
   33bb0:	ba 88 01             	mov    dx,0x188
   33bb3:	8e c2                	mov    es,dx
   33bb5:	26 03 87 8c 4a       	add    ax,WORD PTR es:[bx+0x4a8c]
   33bba:	d1 f8                	sar    ax,1
   33bbc:	ba 88 01             	mov    dx,0x188
   33bbf:	8e c2                	mov    es,dx
   33bc1:	26 a3 88 bb          	mov    es:0xbb88,ax
   33bc5:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33bca:	e9 3d 01             	jmp    0x33d0a
   33bcd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33bd0:	05 03 00             	add    ax,0x3
   33bd3:	99                   	cwd
   33bd4:	bb 88 01             	mov    bx,0x188
   33bd7:	8e c3                	mov    es,bx
   33bd9:	50                   	push   ax
   33bda:	52                   	push   dx
   33bdb:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33be0:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33be4:	59                   	pop    cx
   33be5:	5b                   	pop    bx
   33be6:	9a 77 14 00 00       	call   0x0:0x1477
   33beb:	8b d8                	mov    bx,ax
   33bed:	8e c2                	mov    es,dx
   33bef:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   33bf2:	b4 00                	mov    ah,0x0
   33bf4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33bf7:	d1 e3                	shl    bx,1
   33bf9:	ba 88 01             	mov    dx,0x188
   33bfc:	8e c2                	mov    es,dx
   33bfe:	26 89 87 10 9f       	mov    WORD PTR es:[bx-0x60f0],ax
   33c03:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c06:	6b db 0e             	imul   bx,bx,0xe
   33c09:	b8 88 01             	mov    ax,0x188
   33c0c:	8e c0                	mov    es,ax
   33c0e:	26 c7 87 e8 b3 01 00 	mov    WORD PTR es:[bx-0x4c18],0x1
   33c15:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c18:	6b db 0e             	imul   bx,bx,0xe
   33c1b:	b8 88 01             	mov    ax,0x188
   33c1e:	8e c0                	mov    es,ax
   33c20:	26 c7 87 ea b3 06 00 	mov    WORD PTR es:[bx-0x4c16],0x6
   33c27:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c2a:	6b db 0e             	imul   bx,bx,0xe
   33c2d:	b8 88 01             	mov    ax,0x188
   33c30:	8e c0                	mov    es,ax
   33c32:	26 c7 87 ec b3 00 00 	mov    WORD PTR es:[bx-0x4c14],0x0
   33c39:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c3c:	6b db 0e             	imul   bx,bx,0xe
   33c3f:	b8 88 01             	mov    ax,0x188
   33c42:	ba c8 00             	mov    dx,0xc8
   33c45:	8e c0                	mov    es,ax
   33c47:	26 89 97 f0 b3       	mov    WORD PTR es:[bx-0x4c10],dx
   33c4c:	8b c2                	mov    ax,dx
   33c4e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c51:	6b db 0e             	imul   bx,bx,0xe
   33c54:	ba 88 01             	mov    dx,0x188
   33c57:	8e c2                	mov    es,dx
   33c59:	26 89 87 ee b3       	mov    WORD PTR es:[bx-0x4c12],ax
   33c5e:	ff 76 fe             	push   WORD PTR [bp-0x2]
   33c61:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c64:	d1 e3                	shl    bx,1
   33c66:	b8 88 01             	mov    ax,0x188
   33c69:	8e c0                	mov    es,ax
   33c6b:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33c70:	6b c0 0d             	imul   ax,ax,0xd
   33c73:	05 78 29             	add    ax,0x2978
   33c76:	68 88 01             	push   0x188
   33c79:	50                   	push   ax
   33c7a:	9a 57 00 10 01       	call   0x110:0x57
   33c7f:	83 c4 06             	add    sp,0x6
   33c82:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33c85:	c1 e3 03             	shl    bx,0x3
   33c88:	b8 88 01             	mov    ax,0x188
   33c8b:	8e c0                	mov    es,ax
   33c8d:	26 8b 87 5f e3       	mov    ax,WORD PTR es:[bx-0x1ca1]
   33c92:	26 0b 87 61 e3       	or     ax,WORD PTR es:[bx-0x1c9f]
   33c97:	74 1c                	je     0x33cb5
   33c99:	1e                   	push   ds
   33c9a:	68 74 41             	push   0x4174
   33c9d:	68 b5 04             	push   0x4b5
   33ca0:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33ca3:	c1 e0 03             	shl    ax,0x3
   33ca6:	05 5f e3             	add    ax,0xe35f
   33ca9:	68 88 01             	push   0x188
   33cac:	50                   	push   ax
   33cad:	9a 2f 02 40 00       	call   0x40:0x22f
   33cb2:	83 c4 0a             	add    sp,0xa
   33cb5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33cb8:	05 03 00             	add    ax,0x3
   33cbb:	99                   	cwd
   33cbc:	bb 88 01             	mov    bx,0x188
   33cbf:	8e c3                	mov    es,bx
   33cc1:	50                   	push   ax
   33cc2:	52                   	push   dx
   33cc3:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33cc8:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33ccc:	59                   	pop    cx
   33ccd:	5b                   	pop    bx
   33cce:	9a 77 14 00 00       	call   0x0:0x1477
   33cd3:	8b d8                	mov    bx,ax
   33cd5:	8e c2                	mov    es,dx
   33cd7:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   33cdb:	74 2a                	je     0x33d07
   33cdd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33ce0:	05 18 00             	add    ax,0x18
   33ce3:	50                   	push   ax
   33ce4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ce7:	d1 e3                	shl    bx,1
   33ce9:	b8 88 01             	mov    ax,0x188
   33cec:	8e c0                	mov    es,ax
   33cee:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33cf3:	6b c0 0d             	imul   ax,ax,0xd
   33cf6:	05 78 29             	add    ax,0x2978
   33cf9:	68 88 01             	push   0x188
   33cfc:	50                   	push   ax
   33cfd:	6a 01                	push   0x1
   33cff:	9a 20 00 48 01       	call   0x148:0x20
   33d04:	83 c4 08             	add    sp,0x8
   33d07:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33d0a:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   33d0e:	7d 03                	jge    0x33d13
   33d10:	e9 ba fe             	jmp    0x33bcd
   33d13:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33d18:	e9 0b 01             	jmp    0x33e26
   33d1b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d1e:	6b db 0e             	imul   bx,bx,0xe
   33d21:	b8 88 01             	mov    ax,0x188
   33d24:	8e c0                	mov    es,ax
   33d26:	26 c7 87 20 b4 01 00 	mov    WORD PTR es:[bx-0x4be0],0x1
   33d2d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d30:	6b db 0e             	imul   bx,bx,0xe
   33d33:	b8 88 01             	mov    ax,0x188
   33d36:	8e c0                	mov    es,ax
   33d38:	26 c7 87 22 b4 06 00 	mov    WORD PTR es:[bx-0x4bde],0x6
   33d3f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d42:	6b db 0e             	imul   bx,bx,0xe
   33d45:	b8 88 01             	mov    ax,0x188
   33d48:	8e c0                	mov    es,ax
   33d4a:	26 c7 87 24 b4 eb 00 	mov    WORD PTR es:[bx-0x4bdc],0xeb
   33d51:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d54:	6b db 0e             	imul   bx,bx,0xe
   33d57:	b8 88 01             	mov    ax,0x188
   33d5a:	ba c8 00             	mov    dx,0xc8
   33d5d:	8e c0                	mov    es,ax
   33d5f:	26 89 97 28 b4       	mov    WORD PTR es:[bx-0x4bd8],dx
   33d64:	8b c2                	mov    ax,dx
   33d66:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d69:	6b db 0e             	imul   bx,bx,0xe
   33d6c:	ba 88 01             	mov    dx,0x188
   33d6f:	8e c2                	mov    es,dx
   33d71:	26 89 87 26 b4       	mov    WORD PTR es:[bx-0x4bda],ax
   33d76:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33d79:	05 04 00             	add    ax,0x4
   33d7c:	50                   	push   ax
   33d7d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33d80:	d1 e3                	shl    bx,1
   33d82:	b8 88 01             	mov    ax,0x188
   33d85:	8e c0                	mov    es,ax
   33d87:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33d8c:	6b c0 0d             	imul   ax,ax,0xd
   33d8f:	05 fa 29             	add    ax,0x29fa
   33d92:	68 88 01             	push   0x188
   33d95:	50                   	push   ax
   33d96:	9a 57 00 10 01       	call   0x110:0x57
   33d9b:	83 c4 06             	add    sp,0x6
   33d9e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33da1:	c1 e3 03             	shl    bx,0x3
   33da4:	b8 88 01             	mov    ax,0x188
   33da7:	8e c0                	mov    es,ax
   33da9:	26 8b 87 7f e3       	mov    ax,WORD PTR es:[bx-0x1c81]
   33dae:	26 0b 87 81 e3       	or     ax,WORD PTR es:[bx-0x1c7f]
   33db3:	74 1c                	je     0x33dd1
   33db5:	1e                   	push   ds
   33db6:	68 83 41             	push   0x4183
   33db9:	68 c3 04             	push   0x4c3
   33dbc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33dbf:	c1 e0 03             	shl    ax,0x3
   33dc2:	05 7f e3             	add    ax,0xe37f
   33dc5:	68 88 01             	push   0x188
   33dc8:	50                   	push   ax
   33dc9:	9a 2f 02 40 00       	call   0x40:0x22f
   33dce:	83 c4 0a             	add    sp,0xa
   33dd1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33dd4:	05 03 00             	add    ax,0x3
   33dd7:	99                   	cwd
   33dd8:	bb 88 01             	mov    bx,0x188
   33ddb:	8e c3                	mov    es,bx
   33ddd:	50                   	push   ax
   33dde:	52                   	push   dx
   33ddf:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   33de4:	26 a1 ec b9          	mov    ax,es:0xb9ec
   33de8:	59                   	pop    cx
   33de9:	5b                   	pop    bx
   33dea:	9a 77 14 00 00       	call   0x0:0x1477
   33def:	8b d8                	mov    bx,ax
   33df1:	8e c2                	mov    es,dx
   33df3:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   33df7:	74 2a                	je     0x33e23
   33df9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33dfc:	05 1c 00             	add    ax,0x1c
   33dff:	50                   	push   ax
   33e00:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e03:	d1 e3                	shl    bx,1
   33e05:	b8 88 01             	mov    ax,0x188
   33e08:	8e c0                	mov    es,ax
   33e0a:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33e0f:	6b c0 0d             	imul   ax,ax,0xd
   33e12:	05 fa 29             	add    ax,0x29fa
   33e15:	68 88 01             	push   0x188
   33e18:	50                   	push   ax
   33e19:	6a 01                	push   0x1
   33e1b:	9a 20 00 48 01       	call   0x148:0x20
   33e20:	83 c4 08             	add    sp,0x8
   33e23:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33e26:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   33e2a:	7d 03                	jge    0x33e2f
   33e2c:	e9 ec fe             	jmp    0x33d1b
   33e2f:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33e34:	eb 72                	jmp    0x33ea8
   33e36:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e39:	c1 e3 03             	shl    bx,0x3
   33e3c:	b8 88 01             	mov    ax,0x188
   33e3f:	8e c0                	mov    es,ax
   33e41:	26 8b 87 9f e3       	mov    ax,WORD PTR es:[bx-0x1c61]
   33e46:	26 0b 87 a1 e3       	or     ax,WORD PTR es:[bx-0x1c5f]
   33e4b:	74 1c                	je     0x33e69
   33e4d:	1e                   	push   ds
   33e4e:	68 92 41             	push   0x4192
   33e51:	68 d0 04             	push   0x4d0
   33e54:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33e57:	c1 e0 03             	shl    ax,0x3
   33e5a:	05 9f e3             	add    ax,0xe39f
   33e5d:	68 88 01             	push   0x188
   33e60:	50                   	push   ax
   33e61:	9a 2f 02 40 00       	call   0x40:0x22f
   33e66:	83 c4 0a             	add    sp,0xa
   33e69:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e6c:	d1 e3                	shl    bx,1
   33e6e:	b8 88 01             	mov    ax,0x188
   33e71:	8e c0                	mov    es,ax
   33e73:	26 83 bf 10 9f 00    	cmp    WORD PTR es:[bx-0x60f0],0x0
   33e79:	74 2a                	je     0x33ea5
   33e7b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33e7e:	05 20 00             	add    ax,0x20
   33e81:	50                   	push   ax
   33e82:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33e85:	d1 e3                	shl    bx,1
   33e87:	b8 88 01             	mov    ax,0x188
   33e8a:	8e c0                	mov    es,ax
   33e8c:	26 8b 87 10 9f       	mov    ax,WORD PTR es:[bx-0x60f0]
   33e91:	6b c0 0d             	imul   ax,ax,0xd
   33e94:	05 7c 2a             	add    ax,0x2a7c
   33e97:	68 88 01             	push   0x188
   33e9a:	50                   	push   ax
   33e9b:	6a 01                	push   0x1
   33e9d:	9a 20 00 48 01       	call   0x148:0x20
   33ea2:	83 c4 08             	add    sp,0x8
   33ea5:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33ea8:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   33eac:	7c 88                	jl     0x33e36
   33eae:	9a 61 00 10 01       	call   0x110:0x61
   33eb3:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33eb8:	e9 2e 01             	jmp    0x33fe9
   33ebb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ebe:	c1 e3 03             	shl    bx,0x3
   33ec1:	b8 88 01             	mov    ax,0x188
   33ec4:	8e c0                	mov    es,ax
   33ec6:	26 8b 87 bf e3       	mov    ax,WORD PTR es:[bx-0x1c41]
   33ecb:	26 0b 87 c1 e3       	or     ax,WORD PTR es:[bx-0x1c3f]
   33ed0:	74 1c                	je     0x33eee
   33ed2:	1e                   	push   ds
   33ed3:	68 a1 41             	push   0x41a1
   33ed6:	68 d9 04             	push   0x4d9
   33ed9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33edc:	c1 e0 03             	shl    ax,0x3
   33edf:	05 bf e3             	add    ax,0xe3bf
   33ee2:	68 88 01             	push   0x188
   33ee5:	50                   	push   ax
   33ee6:	9a 2f 02 40 00       	call   0x40:0x22f
   33eeb:	83 c4 0a             	add    sp,0xa
   33eee:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ef1:	6b db 0d             	imul   bx,bx,0xd
   33ef4:	b8 88 01             	mov    ax,0x188
   33ef7:	8e c0                	mov    es,ax
   33ef9:	26 80 bf 18 2b 00    	cmp    BYTE PTR es:[bx+0x2b18],0x0
   33eff:	74 21                	je     0x33f22
   33f01:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f04:	05 24 00             	add    ax,0x24
   33f07:	50                   	push   ax
   33f08:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f0b:	6b c0 0d             	imul   ax,ax,0xd
   33f0e:	05 18 2b             	add    ax,0x2b18
   33f11:	68 88 01             	push   0x188
   33f14:	50                   	push   ax
   33f15:	6a 01                	push   0x1
   33f17:	9a 20 00 48 01       	call   0x148:0x20
   33f1c:	83 c4 08             	add    sp,0x8
   33f1f:	e9 c4 00             	jmp    0x33fe6
   33f22:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f25:	bb 05 00             	mov    bx,0x5
   33f28:	99                   	cwd
   33f29:	f7 fb                	idiv   bx
   33f2b:	3d 01 00             	cmp    ax,0x1
   33f2e:	7e 05                	jle    0x33f35
   33f30:	b8 02 00             	mov    ax,0x2
   33f33:	eb 03                	jmp    0x33f38
   33f35:	b8 01 00             	mov    ax,0x1
   33f38:	6b c0 05             	imul   ax,ax,0x5
   33f3b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f3e:	83 c3 24             	add    bx,0x24
   33f41:	2b d8                	sub    bx,ax
   33f43:	c1 e3 03             	shl    bx,0x3
   33f46:	b8 88 01             	mov    ax,0x188
   33f49:	8e c0                	mov    es,ax
   33f4b:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
   33f50:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f53:	c1 e3 03             	shl    bx,0x3
   33f56:	ba 88 01             	mov    dx,0x188
   33f59:	8e c2                	mov    es,dx
   33f5b:	26 89 87 bb e3       	mov    WORD PTR es:[bx-0x1c45],ax
   33f60:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33f63:	bb 05 00             	mov    bx,0x5
   33f66:	99                   	cwd
   33f67:	f7 fb                	idiv   bx
   33f69:	3d 01 00             	cmp    ax,0x1
   33f6c:	7e 05                	jle    0x33f73
   33f6e:	b8 02 00             	mov    ax,0x2
   33f71:	eb 03                	jmp    0x33f76
   33f73:	b8 01 00             	mov    ax,0x1
   33f76:	6b c0 05             	imul   ax,ax,0x5
   33f79:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f7c:	83 c3 24             	add    bx,0x24
   33f7f:	2b d8                	sub    bx,ax
   33f81:	c1 e3 03             	shl    bx,0x3
   33f84:	b8 88 01             	mov    ax,0x188
   33f87:	8e c0                	mov    es,ax
   33f89:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   33f8e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33f91:	c1 e3 03             	shl    bx,0x3
   33f94:	ba 88 01             	mov    dx,0x188
   33f97:	8e c2                	mov    es,dx
   33f99:	26 89 87 bd e3       	mov    WORD PTR es:[bx-0x1c43],ax
   33f9e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   33fa1:	bb 05 00             	mov    bx,0x5
   33fa4:	99                   	cwd
   33fa5:	f7 fb                	idiv   bx
   33fa7:	3d 01 00             	cmp    ax,0x1
   33faa:	7e 05                	jle    0x33fb1
   33fac:	b8 02 00             	mov    ax,0x2
   33faf:	eb 03                	jmp    0x33fb4
   33fb1:	b8 01 00             	mov    ax,0x1
   33fb4:	6b c0 05             	imul   ax,ax,0x5
   33fb7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33fba:	83 c3 24             	add    bx,0x24
   33fbd:	2b d8                	sub    bx,ax
   33fbf:	c1 e3 03             	shl    bx,0x3
   33fc2:	b8 88 01             	mov    ax,0x188
   33fc5:	8e c0                	mov    es,ax
   33fc7:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
   33fcc:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
   33fd1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33fd4:	c1 e3 03             	shl    bx,0x3
   33fd7:	b9 88 01             	mov    cx,0x188
   33fda:	8e c1                	mov    es,cx
   33fdc:	26 89 87 c1 e3       	mov    WORD PTR es:[bx-0x1c3f],ax
   33fe1:	26 89 97 bf e3       	mov    WORD PTR es:[bx-0x1c41],dx
   33fe6:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   33fe9:	83 7e fe 14          	cmp    WORD PTR [bp-0x2],0x14
   33fed:	7d 03                	jge    0x33ff2
   33fef:	e9 c9 fe             	jmp    0x33ebb
   33ff2:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   33ff7:	e9 2b 01             	jmp    0x34125
   33ffa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   33ffd:	c1 e3 03             	shl    bx,0x3
   34000:	b8 88 01             	mov    ax,0x188
   34003:	8e c0                	mov    es,ax
   34005:	26 8b 87 5f e4       	mov    ax,WORD PTR es:[bx-0x1ba1]
   3400a:	26 0b 87 61 e4       	or     ax,WORD PTR es:[bx-0x1b9f]
   3400f:	74 1c                	je     0x3402d
   34011:	1e                   	push   ds
   34012:	68 b0 41             	push   0x41b0
   34015:	68 e6 04             	push   0x4e6
   34018:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3401b:	c1 e0 03             	shl    ax,0x3
   3401e:	05 5f e4             	add    ax,0xe45f
   34021:	68 88 01             	push   0x188
   34024:	50                   	push   ax
   34025:	9a 2f 02 40 00       	call   0x40:0x22f
   3402a:	83 c4 0a             	add    sp,0xa
   3402d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34030:	6b db 0d             	imul   bx,bx,0xd
   34033:	b8 88 01             	mov    ax,0x188
   34036:	8e c0                	mov    es,ax
   34038:	26 80 bf 1c 2c 00    	cmp    BYTE PTR es:[bx+0x2c1c],0x0
   3403e:	74 21                	je     0x34061
   34040:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34043:	05 38 00             	add    ax,0x38
   34046:	50                   	push   ax
   34047:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3404a:	6b c0 0d             	imul   ax,ax,0xd
   3404d:	05 1c 2c             	add    ax,0x2c1c
   34050:	68 88 01             	push   0x188
   34053:	50                   	push   ax
   34054:	6a 01                	push   0x1
   34056:	9a 20 00 48 01       	call   0x148:0x20
   3405b:	83 c4 08             	add    sp,0x8
   3405e:	e9 c1 00             	jmp    0x34122
   34061:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34064:	bb 02 00             	mov    bx,0x2
   34067:	99                   	cwd
   34068:	f7 fb                	idiv   bx
   3406a:	3d 01 00             	cmp    ax,0x1
   3406d:	7e 05                	jle    0x34074
   3406f:	b8 02 00             	mov    ax,0x2
   34072:	eb 03                	jmp    0x34077
   34074:	b8 01 00             	mov    ax,0x1
   34077:	d1 e0                	shl    ax,1
   34079:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3407c:	83 c3 38             	add    bx,0x38
   3407f:	2b d8                	sub    bx,ax
   34081:	c1 e3 03             	shl    bx,0x3
   34084:	b8 88 01             	mov    ax,0x188
   34087:	8e c0                	mov    es,ax
   34089:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
   3408e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34091:	c1 e3 03             	shl    bx,0x3
   34094:	ba 88 01             	mov    dx,0x188
   34097:	8e c2                	mov    es,dx
   34099:	26 89 87 5b e4       	mov    WORD PTR es:[bx-0x1ba5],ax
   3409e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   340a1:	bb 02 00             	mov    bx,0x2
   340a4:	99                   	cwd
   340a5:	f7 fb                	idiv   bx
   340a7:	3d 01 00             	cmp    ax,0x1
   340aa:	7e 05                	jle    0x340b1
   340ac:	b8 02 00             	mov    ax,0x2
   340af:	eb 03                	jmp    0x340b4
   340b1:	b8 01 00             	mov    ax,0x1
   340b4:	d1 e0                	shl    ax,1
   340b6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   340b9:	83 c3 38             	add    bx,0x38
   340bc:	2b d8                	sub    bx,ax
   340be:	c1 e3 03             	shl    bx,0x3
   340c1:	b8 88 01             	mov    ax,0x188
   340c4:	8e c0                	mov    es,ax
   340c6:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   340cb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   340ce:	c1 e3 03             	shl    bx,0x3
   340d1:	ba 88 01             	mov    dx,0x188
   340d4:	8e c2                	mov    es,dx
   340d6:	26 89 87 5d e4       	mov    WORD PTR es:[bx-0x1ba3],ax
   340db:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   340de:	bb 02 00             	mov    bx,0x2
   340e1:	99                   	cwd
   340e2:	f7 fb                	idiv   bx
   340e4:	3d 01 00             	cmp    ax,0x1
   340e7:	7e 05                	jle    0x340ee
   340e9:	b8 02 00             	mov    ax,0x2
   340ec:	eb 03                	jmp    0x340f1
   340ee:	b8 01 00             	mov    ax,0x1
   340f1:	d1 e0                	shl    ax,1
   340f3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   340f6:	83 c3 38             	add    bx,0x38
   340f9:	2b d8                	sub    bx,ax
   340fb:	c1 e3 03             	shl    bx,0x3
   340fe:	b8 88 01             	mov    ax,0x188
   34101:	8e c0                	mov    es,ax
   34103:	26 8b 87 a1 e2       	mov    ax,WORD PTR es:[bx-0x1d5f]
   34108:	26 8b 97 9f e2       	mov    dx,WORD PTR es:[bx-0x1d61]
   3410d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34110:	c1 e3 03             	shl    bx,0x3
   34113:	b9 88 01             	mov    cx,0x188
   34116:	8e c1                	mov    es,cx
   34118:	26 89 87 61 e4       	mov    WORD PTR es:[bx-0x1b9f],ax
   3411d:	26 89 97 5f e4       	mov    WORD PTR es:[bx-0x1ba1],dx
   34122:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   34125:	83 7e fe 08          	cmp    WORD PTR [bp-0x2],0x8
   34129:	7d 03                	jge    0x3412e
   3412b:	e9 cc fe             	jmp    0x33ffa
   3412e:	b8 88 01             	mov    ax,0x188
   34131:	8e c0                	mov    es,ax
   34133:	26 a1 9f e4          	mov    ax,es:0xe49f
   34137:	26 0b 06 a1 e4       	or     ax,WORD PTR es:0xe4a1
   3413c:	74 15                	je     0x34153
   3413e:	1e                   	push   ds
   3413f:	68 bf 41             	push   0x41bf
   34142:	68 f1 04             	push   0x4f1
   34145:	68 88 01             	push   0x188
   34148:	68 9f e4             	push   0xe49f
   3414b:	9a 2f 02 40 00       	call   0x40:0x22f
   34150:	83 c4 0a             	add    sp,0xa
   34153:	6a 40                	push   0x40
   34155:	90                   	nop
   34156:	0e                   	push   cs
   34157:	e8 a9 19             	call   0x35b03
   3415a:	a9 01 00             	test   ax,0x1
   3415d:	74 05                	je     0x34164
   3415f:	b8 01 00             	mov    ax,0x1
   34162:	eb 02                	jmp    0x34166
   34164:	33 c0                	xor    ax,ax
   34166:	6b c0 0d             	imul   ax,ax,0xd
   34169:	05 fe 2a             	add    ax,0x2afe
   3416c:	68 88 01             	push   0x188
   3416f:	50                   	push   ax
   34170:	6a 01                	push   0x1
   34172:	9a 20 00 48 01       	call   0x148:0x20
   34177:	83 c4 08             	add    sp,0x8
   3417a:	90                   	nop
   3417b:	0e                   	push   cs
   3417c:	e8 84 19             	call   0x35b03
   3417f:	a9 01 00             	test   ax,0x1
   34182:	75 03                	jne    0x34187
   34184:	e9 aa 00             	jmp    0x34231
   34187:	b8 88 01             	mov    ax,0x188
   3418a:	8e c0                	mov    es,ax
   3418c:	26 80 3e c2 5b 00    	cmp    BYTE PTR es:0x5bc2,0x0
   34192:	74 71                	je     0x34205
   34194:	68 80 01             	push   0x180
   34197:	6a 00                	push   0x0
   34199:	6a 00                	push   0x0
   3419b:	b8 88 01             	mov    ax,0x188
   3419e:	8e c0                	mov    es,ax
   341a0:	26 ff 36 f1 e5       	push   WORD PTR es:0xe5f1
   341a5:	26 ff 36 ef e5       	push   WORD PTR es:0xe5ef
   341aa:	9a 8f 02 e0 01       	call   0x1e0:0x28f
   341af:	83 c4 0a             	add    sp,0xa
   341b2:	1e                   	push   ds
   341b3:	68 ce 41             	push   0x41ce
   341b6:	68 f6 04             	push   0x4f6
   341b9:	68 88 01             	push   0x188
   341bc:	68 26 de             	push   0xde26
   341bf:	9a 81 0a 20 00       	call   0x20:0xa81
   341c4:	83 c4 0a             	add    sp,0xa
   341c7:	6a 00                	push   0x0
   341c9:	b8 88 01             	mov    ax,0x188
   341cc:	8e c0                	mov    es,ax
   341ce:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   341d3:	26 ff 37             	push   WORD PTR es:[bx]
   341d6:	6a 00                	push   0x0
   341d8:	6a 00                	push   0x0
   341da:	68 80 7f             	push   0x7f80
   341dd:	9a 88 06 98 00       	call   0x98:0x688
   341e2:	52                   	push   dx
   341e3:	50                   	push   ax
   341e4:	9a 13 1a 28 00       	call   0x28:0x1a13
   341e9:	83 c4 06             	add    sp,0x6
   341ec:	68 88 01             	push   0x188
   341ef:	68 26 de             	push   0xde26
   341f2:	9a 22 0b 20 00       	call   0x20:0xb22
   341f7:	83 c4 04             	add    sp,0x4
   341fa:	b8 88 01             	mov    ax,0x188
   341fd:	8e c0                	mov    es,ax
   341ff:	26 c6 06 c2 5b 00    	mov    BYTE PTR es:0x5bc2,0x0
   34205:	68 fd 00             	push   0xfd
   34208:	6a 40                	push   0x40
   3420a:	b8 88 01             	mov    ax,0x188
   3420d:	8e c0                	mov    es,ax
   3420f:	26 ff 36 9d e4       	push   WORD PTR es:0xe49d
   34214:	b8 88 01             	mov    ax,0x188
   34217:	8e c0                	mov    es,ax
   34219:	26 ff 36 9b e4       	push   WORD PTR es:0xe49b
   3421e:	6a 00                	push   0x0
   34220:	6a 00                	push   0x0
   34222:	9a 51 0a 30 00       	call   0x30:0xa51
   34227:	83 c4 0c             	add    sp,0xc
   3422a:	80 0e 6d 3d 02       	or     BYTE PTR ds:0x3d6d,0x2
   3422f:	eb 05                	jmp    0x34236
   34231:	80 26 6d 3d fd       	and    BYTE PTR ds:0x3d6d,0xfd
   34236:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   3423a:	6b db 1d             	imul   bx,bx,0x1d
   3423d:	b8 88 01             	mov    ax,0x188
   34240:	8e c0                	mov    es,ax
   34242:	26 8b 87 49 2e       	mov    ax,WORD PTR es:[bx+0x2e49]
   34247:	26 0b 87 4b 2e       	or     ax,WORD PTR es:[bx+0x2e4b]
   3424c:	74 47                	je     0x34295
   3424e:	b8 88 01             	mov    ax,0x188
   34251:	8e c0                	mov    es,ax
   34253:	26 a1 17 e5          	mov    ax,es:0xe517
   34257:	26 0b 06 19 e5       	or     ax,WORD PTR es:0xe519
   3425c:	74 15                	je     0x34273
   3425e:	1e                   	push   ds
   3425f:	68 dd 41             	push   0x41dd
   34262:	68 00 05             	push   0x500
   34265:	68 88 01             	push   0x188
   34268:	68 17 e5             	push   0xe517
   3426b:	9a 2f 02 40 00       	call   0x40:0x22f
   34270:	83 c4 0a             	add    sp,0xa
   34273:	6a 4f                	push   0x4f
   34275:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   34279:	6b db 1d             	imul   bx,bx,0x1d
   3427c:	b8 88 01             	mov    ax,0x188
   3427f:	8e c0                	mov    es,ax
   34281:	26 ff b7 4b 2e       	push   WORD PTR es:[bx+0x2e4b]
   34286:	26 ff b7 49 2e       	push   WORD PTR es:[bx+0x2e49]
   3428b:	6a 01                	push   0x1
   3428d:	9a 20 00 48 01       	call   0x148:0x20
   34292:	83 c4 08             	add    sp,0x8
   34295:	6a 03                	push   0x3
   34297:	9a c5 00 10 01       	call   0x110:0xc5
   3429c:	59                   	pop    cx
   3429d:	b8 88 01             	mov    ax,0x188
   342a0:	8e c0                	mov    es,ax
   342a2:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   342a7:	26 ff 37             	push   WORD PTR es:[bx]
   342aa:	6a 00                	push   0x0
   342ac:	6a 2b                	push   0x2b
   342ae:	b8 88 01             	mov    ax,0x188
   342b1:	8e c0                	mov    es,ax
   342b3:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   342b8:	26 8b 47 04          	mov    ax,WORD PTR es:[bx+0x4]
   342bc:	2d 2b 00             	sub    ax,0x2b
   342bf:	50                   	push   ax
   342c0:	9a 88 06 98 00       	call   0x98:0x688
   342c5:	bb 88 01             	mov    bx,0x188
   342c8:	8e c3                	mov    es,bx
   342ca:	26 89 16 ee b9       	mov    WORD PTR es:0xb9ee,dx
   342cf:	26 a3 ec b9          	mov    es:0xb9ec,ax
   342d3:	1e                   	push   ds
   342d4:	68 ec 41             	push   0x41ec
   342d7:	68 0c 05             	push   0x50c
   342da:	68 88 01             	push   0x188
   342dd:	68 3b bb             	push   0xbb3b
   342e0:	9a 81 0a 20 00       	call   0x20:0xa81
   342e5:	83 c4 0a             	add    sp,0xa
   342e8:	68 88 01             	push   0x188
   342eb:	68 3b bb             	push   0xbb3b
   342ee:	9a 22 0b 20 00       	call   0x20:0xb22
   342f3:	83 c4 04             	add    sp,0x4
   342f6:	83 0e 5e 3d 20       	or     WORD PTR ds:0x3d5e,0x20
   342fb:	c9                   	leave
   342fc:	cb                   	retf
   342fd:	55                   	push   bp
   342fe:	8b ec                	mov    bp,sp
   34300:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34303:	b4 00                	mov    ah,0x0
   34305:	c1 e0 03             	shl    ax,0x3
   34308:	ba 88 01             	mov    dx,0x188
   3430b:	8b d8                	mov    bx,ax
   3430d:	8e c2                	mov    es,dx
   3430f:	26 8b 87 9f e2       	mov    ax,WORD PTR es:[bx-0x1d61]
   34314:	26 0b 87 a1 e2       	or     ax,WORD PTR es:[bx-0x1d5f]
   34319:	75 47                	jne    0x34362
   3431b:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   3431e:	b4 00                	mov    ah,0x0
   34320:	50                   	push   ax
   34321:	1e                   	push   ds
   34322:	68 fb 41             	push   0x41fb
   34325:	68 88 01             	push   0x188
   34328:	68 cc ba             	push   0xbacc
   3432b:	9a b4 48 00 00       	call   0x0:0x48b4
   34330:	83 c4 0a             	add    sp,0xa
   34333:	3d 68 00             	cmp    ax,0x68
   34336:	7c 15                	jl     0x3434d
   34338:	6a 47                	push   0x47
   3433a:	6a 00                	push   0x0
   3433c:	6a 00                	push   0x0
   3433e:	68 15 05             	push   0x515
   34341:	1e                   	push   ds
   34342:	68 05 42             	push   0x4205
   34345:	9a 2a 00 58 01       	call   0x158:0x2a
   3434a:	83 c4 0c             	add    sp,0xc
   3434d:	6a 48                	push   0x48
   3434f:	6a 00                	push   0x0
   34351:	6a 00                	push   0x0
   34353:	68 17 05             	push   0x517
   34356:	1e                   	push   ds
   34357:	68 14 42             	push   0x4214
   3435a:	9a 2a 00 58 01       	call   0x158:0x2a
   3435f:	83 c4 0c             	add    sp,0xc
   34362:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34365:	b4 00                	mov    ah,0x0
   34367:	c1 e0 03             	shl    ax,0x3
   3436a:	ba 88 01             	mov    dx,0x188
   3436d:	8b d8                	mov    bx,ax
   3436f:	8e c2                	mov    es,dx
   34371:	26 c4 9f 9f e2       	les    bx,DWORD PTR es:[bx-0x1d61]
   34376:	26 80 7f 08 01       	cmp    BYTE PTR es:[bx+0x8],0x1
   3437b:	74 47                	je     0x343c4
   3437d:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34380:	b4 00                	mov    ah,0x0
   34382:	50                   	push   ax
   34383:	1e                   	push   ds
   34384:	68 23 42             	push   0x4223
   34387:	68 88 01             	push   0x188
   3438a:	68 cc ba             	push   0xbacc
   3438d:	9a b4 48 00 00       	call   0x0:0x48b4
   34392:	83 c4 0a             	add    sp,0xa
   34395:	3d 68 00             	cmp    ax,0x68
   34398:	7c 15                	jl     0x343af
   3439a:	6a 49                	push   0x49
   3439c:	6a 00                	push   0x0
   3439e:	6a 00                	push   0x0
   343a0:	68 1c 05             	push   0x51c
   343a3:	1e                   	push   ds
   343a4:	68 2d 42             	push   0x422d
   343a7:	9a 2a 00 58 01       	call   0x158:0x2a
   343ac:	83 c4 0c             	add    sp,0xc
   343af:	6a 4a                	push   0x4a
   343b1:	6a 00                	push   0x0
   343b3:	6a 00                	push   0x0
   343b5:	68 1e 05             	push   0x51e
   343b8:	1e                   	push   ds
   343b9:	68 3c 42             	push   0x423c
   343bc:	9a 2a 00 58 01       	call   0x158:0x2a
   343c1:	83 c4 0c             	add    sp,0xc
   343c4:	6a 00                	push   0x0
   343c6:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   343c9:	b4 00                	mov    ah,0x0
   343cb:	c1 e0 03             	shl    ax,0x3
   343ce:	ba 88 01             	mov    dx,0x188
   343d1:	8b d8                	mov    bx,ax
   343d3:	8e c2                	mov    es,dx
   343d5:	26 ff b7 a1 e2       	push   WORD PTR es:[bx-0x1d5f]
   343da:	26 ff b7 9f e2       	push   WORD PTR es:[bx-0x1d61]
   343df:	9a ab 04 20 00       	call   0x20:0x4ab
   343e4:	83 c4 06             	add    sp,0x6
   343e7:	bb 88 01             	mov    bx,0x188
   343ea:	8e c3                	mov    es,bx
   343ec:	26 89 16 59 e5       	mov    WORD PTR es:0xe559,dx
   343f1:	26 a3 57 e5          	mov    es:0xe557,ax
   343f5:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   343f8:	b4 00                	mov    ah,0x0
   343fa:	c1 e0 03             	shl    ax,0x3
   343fd:	ba 88 01             	mov    dx,0x188
   34400:	8b d8                	mov    bx,ax
   34402:	8e c2                	mov    es,dx
   34404:	26 8b 87 9b e2       	mov    ax,WORD PTR es:[bx-0x1d65]
   34409:	ba 88 01             	mov    dx,0x188
   3440c:	8e c2                	mov    es,dx
   3440e:	26 a3 53 e5          	mov    es:0xe553,ax
   34412:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   34415:	b4 00                	mov    ah,0x0
   34417:	c1 e0 03             	shl    ax,0x3
   3441a:	ba 88 01             	mov    dx,0x188
   3441d:	8b d8                	mov    bx,ax
   3441f:	8e c2                	mov    es,dx
   34421:	26 8b 87 9d e2       	mov    ax,WORD PTR es:[bx-0x1d63]
   34426:	ba 88 01             	mov    dx,0x188
   34429:	8e c2                	mov    es,dx
   3442b:	26 a3 55 e5          	mov    es:0xe555,ax
   3442f:	5d                   	pop    bp
   34430:	cb                   	retf
   34431:	55                   	push   bp
   34432:	8b ec                	mov    bp,sp
   34434:	9a 04 02 30 00       	call   0x30:0x204
   34439:	68 88 01             	push   0x188
   3443c:	68 2c 96             	push   0x962c
   3443f:	68 88 01             	push   0x188
   34442:	68 24 98             	push   0x9824
   34445:	b9 48 00             	mov    cx,0x48
   34448:	9a 7a 12 00 00       	call   0x0:0x127a
   3444d:	9a 3e 00 50 01       	call   0x150:0x3e
   34452:	68 00 01             	push   0x100
   34455:	6a 00                	push   0x0
   34457:	1e                   	push   ds
   34458:	68 4b 42             	push   0x424b
   3445b:	9a 2a 00 48 01       	call   0x148:0x2a
   34460:	83 c4 08             	add    sp,0x8
   34463:	1e                   	push   ds
   34464:	68 55 42             	push   0x4255
   34467:	68 34 05             	push   0x534
   3446a:	68 88 01             	push   0x188
   3446d:	68 26 de             	push   0xde26
   34470:	9a 81 0a 20 00       	call   0x20:0xa81
   34475:	83 c4 0a             	add    sp,0xa
   34478:	6a 00                	push   0x0
   3447a:	b8 88 01             	mov    ax,0x188
   3447d:	8e c0                	mov    es,ax
   3447f:	26 c4 1e 2f e5       	les    bx,DWORD PTR es:0xe52f
   34484:	26 ff 37             	push   WORD PTR es:[bx]
   34487:	6a 00                	push   0x0
   34489:	6a 00                	push   0x0
   3448b:	68 80 7f             	push   0x7f80
   3448e:	9a 88 06 98 00       	call   0x98:0x688
   34493:	52                   	push   dx
   34494:	50                   	push   ax
   34495:	9a 13 1a 28 00       	call   0x28:0x1a13
   3449a:	83 c4 06             	add    sp,0x6
   3449d:	68 88 01             	push   0x188
   344a0:	68 26 de             	push   0xde26
   344a3:	9a 22 0b 20 00       	call   0x20:0xb22
   344a8:	83 c4 04             	add    sp,0x4
   344ab:	b8 88 01             	mov    ax,0x188
   344ae:	8e c0                	mov    es,ax
   344b0:	26 c6 06 c2 5b 00    	mov    BYTE PTR es:0x5bc2,0x0
   344b6:	c7 06 5e 3d 20 00    	mov    WORD PTR ds:0x3d5e,0x20
   344bc:	b8 88 01             	mov    ax,0x188
   344bf:	8e c0                	mov    es,ax
   344c1:	26 c7 06 18 73 01 00 	mov    WORD PTR es:0x7318,0x1
   344c8:	6a 00                	push   0x0
   344ca:	b8 88 01             	mov    ax,0x188
   344cd:	8e c0                	mov    es,ax
   344cf:	26 a1 18 73          	mov    ax,es:0x7318
   344d3:	f7 d8                	neg    ax
   344d5:	50                   	push   ax
   344d6:	6a 01                	push   0x1
   344d8:	9a 3f 07 30 00       	call   0x30:0x73f
   344dd:	83 c4 06             	add    sp,0x6
   344e0:	b8 88 01             	mov    ax,0x188
   344e3:	8e c0                	mov    es,ax
   344e5:	26 c7 06 1a 73 01 00 	mov    WORD PTR es:0x731a,0x1
   344ec:	b8 88 01             	mov    ax,0x188
   344ef:	8e c0                	mov    es,ax
   344f1:	26 a1 1a 73          	mov    ax,es:0x731a
   344f5:	f7 d8                	neg    ax
   344f7:	50                   	push   ax
   344f8:	6a 00                	push   0x0
   344fa:	6a 01                	push   0x1
   344fc:	9a 3f 07 30 00       	call   0x30:0x73f
   34501:	83 c4 06             	add    sp,0x6
   34504:	6a 00                	push   0x0
   34506:	6a 00                	push   0x0
   34508:	9a 52 00 50 01       	call   0x150:0x52
   3450d:	83 c4 04             	add    sp,0x4
   34510:	68 c8 00             	push   0xc8
   34513:	9a 57 00 50 01       	call   0x150:0x57
   34518:	59                   	pop    cx
   34519:	68 c7 00             	push   0xc7
   3451c:	68 3f 01             	push   0x13f
   3451f:	6a 00                	push   0x0
   34521:	6a 00                	push   0x0
   34523:	9a 4d 00 50 01       	call   0x150:0x4d
   34528:	83 c4 08             	add    sp,0x8
   3452b:	b8 88 01             	mov    ax,0x188
   3452e:	8e c0                	mov    es,ax
   34530:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   34535:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   3453a:	b8 88 01             	mov    ax,0x188
   3453d:	8e c0                	mov    es,ax
   3453f:	26 ff 36 21 e5       	push   WORD PTR es:0xe521
   34544:	26 ff 36 1f e5       	push   WORD PTR es:0xe51f
   34549:	9a 8a 06 20 00       	call   0x20:0x68a
   3454e:	83 c4 08             	add    sp,0x8
   34551:	b8 88 01             	mov    ax,0x188
   34554:	8e c0                	mov    es,ax
   34556:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3455c:	74 34                	je     0x34592
   3455e:	a1 75 bb             	mov    ax,ds:0xbb75
   34561:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   34565:	75 2b                	jne    0x34592
   34567:	b8 88 01             	mov    ax,0x188
   3456a:	8e c0                	mov    es,ax
   3456c:	26 83 3e 2e 63 02    	cmp    WORD PTR es:0x632e,0x2
   34572:	74 1e                	je     0x34592
   34574:	80 3e 36 bb 00       	cmp    BYTE PTR ds:0xbb36,0x0
   34579:	75 07                	jne    0x34582
   3457b:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   34580:	74 10                	je     0x34592
   34582:	6a 00                	push   0x0
   34584:	6a 01                	push   0x1
   34586:	ff 36 4d bb          	push   WORD PTR ds:0xbb4d
   3458a:	9a 43 00 28 01       	call   0x128:0x43
   3458f:	83 c4 06             	add    sp,0x6
   34592:	83 0e 5e 3d 10       	or     WORD PTR ds:0x3d5e,0x10
   34597:	90                   	nop
   34598:	0e                   	push   cs
   34599:	e8 dd 05             	call   0x34b79
   3459c:	b8 88 01             	mov    ax,0x188
   3459f:	8e c0                	mov    es,ax
   345a1:	26 c6 06 06 3b 00    	mov    BYTE PTR es:0x3b06,0x0
   345a7:	9a 6b 00 10 01       	call   0x110:0x6b
   345ac:	33 c0                	xor    ax,ax
   345ae:	a3 6e 3d             	mov    ds:0x3d6e,ax
   345b1:	a3 72 3d             	mov    ds:0x3d72,ax
   345b4:	a3 70 3d             	mov    ds:0x3d70,ax
   345b7:	90                   	nop
   345b8:	0e                   	push   cs
   345b9:	e8 c0 00             	call   0x3467c
   345bc:	6a 01                	push   0x1
   345be:	0e                   	push   cs
   345bf:	e8 04 e1             	call   0x326c6
   345c2:	59                   	pop    cx
   345c3:	68 b2 00             	push   0xb2
   345c6:	68 c6 00             	push   0xc6
   345c9:	90                   	nop
   345ca:	0e                   	push   cs
   345cb:	e8 64 26             	call   0x36c32
   345ce:	83 c4 04             	add    sp,0x4
   345d1:	9a 5c 00 30 01       	call   0x130:0x5c
   345d6:	90                   	nop
   345d7:	0e                   	push   cs
   345d8:	e8 03 16             	call   0x35bde
   345db:	83 26 5e 3d ef       	and    WORD PTR ds:0x3d5e,0xffef
   345e0:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   345e5:	75 2c                	jne    0x34613
   345e7:	b8 88 01             	mov    ax,0x188
   345ea:	8e c0                	mov    es,ax
   345ec:	26 a1 22 73          	mov    ax,es:0x7322
   345f0:	03 06 6e 3d          	add    ax,WORD PTR ds:0x3d6e
   345f4:	ba 88 01             	mov    dx,0x188
   345f7:	8e c2                	mov    es,dx
   345f9:	26 a3 1c 73          	mov    es:0x731c,ax
   345fd:	b8 88 01             	mov    ax,0x188
   34600:	8e c0                	mov    es,ax
   34602:	26 a1 1c 73          	mov    ax,es:0x731c
   34606:	c1 e0 08             	shl    ax,0x8
   34609:	99                   	cwd
   3460a:	52                   	push   dx
   3460b:	50                   	push   ax
   3460c:	9a b9 14 68 00       	call   0x68:0x14b9
   34611:	eb 15                	jmp    0x34628
   34613:	b8 88 01             	mov    ax,0x188
   34616:	8e c0                	mov    es,ax
   34618:	26 a1 20 73          	mov    ax,es:0x7320
   3461c:	05 e2 ff             	add    ax,0xffe2
   3461f:	a3 72 3d             	mov    ds:0x3d72,ax
   34622:	c7 06 6e 3d 00 00    	mov    WORD PTR ds:0x3d6e,0x0
   34628:	b8 88 01             	mov    ax,0x188
   3462b:	8e c0                	mov    es,ax
   3462d:	26 83 3e 18 73 00    	cmp    WORD PTR es:0x7318,0x0
   34633:	74 06                	je     0x3463b
   34635:	c7 06 70 3d 00 00    	mov    WORD PTR ds:0x3d70,0x0
   3463b:	b8 88 01             	mov    ax,0x188
   3463e:	8e c0                	mov    es,ax
   34640:	26 83 3e 1a 73 00    	cmp    WORD PTR es:0x731a,0x0
   34646:	74 06                	je     0x3464e
   34648:	c7 06 72 3d 00 00    	mov    WORD PTR ds:0x3d72,0x0
   3464e:	ff 36 72 3d          	push   WORD PTR ds:0x3d72
   34652:	ff 36 70 3d          	push   WORD PTR ds:0x3d70
   34656:	68 f4 01             	push   0x1f4
   34659:	9a 3f 07 30 00       	call   0x30:0x73f
   3465e:	83 c4 06             	add    sp,0x6
   34661:	33 c0                	xor    ax,ax
   34663:	a3 72 3d             	mov    ds:0x3d72,ax
   34666:	a3 70 3d             	mov    ds:0x3d70,ax
   34669:	b8 88 01             	mov    ax,0x188
   3466c:	8e c0                	mov    es,ax
   3466e:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   34673:	50                   	push   ax
   34674:	9a 69 00 30 00       	call   0x30:0x69
   34679:	59                   	pop    cx
   3467a:	5d                   	pop    bp
   3467b:	cb                   	retf
   3467c:	55                   	push   bp
   3467d:	8b ec                	mov    bp,sp
   3467f:	83 ec 02             	sub    sp,0x2
   34682:	a0 6d 3d             	mov    al,ds:0x3d6d
   34685:	b4 00                	mov    ah,0x0
   34687:	d1 f8                	sar    ax,1
   34689:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   3468c:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   34692:	74 02                	je     0x34696
   34694:	eb 69                	jmp    0x346ff
   34696:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   34699:	3a 06 dc 3e          	cmp    al,BYTE PTR ds:0x3edc
   3469d:	74 66                	je     0x34705
   3469f:	6a 40                	push   0x40
   346a1:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   346a4:	b4 00                	mov    ah,0x0
   346a6:	6b c0 0d             	imul   ax,ax,0xd
   346a9:	05 fe 2a             	add    ax,0x2afe
   346ac:	68 88 01             	push   0x188
   346af:	50                   	push   ax
   346b0:	6a 01                	push   0x1
   346b2:	9a 20 00 48 01       	call   0x148:0x20
   346b7:	83 c4 08             	add    sp,0x8
   346ba:	6a 01                	push   0x1
   346bc:	0e                   	push   cs
   346bd:	e8 06 e0             	call   0x326c6
   346c0:	59                   	pop    cx
   346c1:	80 7e ff 00          	cmp    BYTE PTR [bp-0x1],0x0
   346c5:	74 38                	je     0x346ff
   346c7:	b8 88 01             	mov    ax,0x188
   346ca:	8e c0                	mov    es,ax
   346cc:	26 a0 c2 5b          	mov    al,es:0x5bc2
   346d0:	b4 00                	mov    ah,0x0
   346d2:	0b c0                	or     ax,ax
   346d4:	75 2f                	jne    0x34705
   346d6:	68 fd 00             	push   0xfd
   346d9:	6a 40                	push   0x40
   346db:	b8 88 01             	mov    ax,0x188
   346de:	8e c0                	mov    es,ax
   346e0:	26 ff 36 9d e4       	push   WORD PTR es:0xe49d
   346e5:	b8 88 01             	mov    ax,0x188
   346e8:	8e c0                	mov    es,ax
   346ea:	26 ff 36 9b e4       	push   WORD PTR es:0xe49b
   346ef:	6a 00                	push   0x0
   346f1:	6a 00                	push   0x0
   346f3:	9a 51 0a 30 00       	call   0x30:0xa51
   346f8:	83 c4 0c             	add    sp,0xc
   346fb:	eb 02                	jmp    0x346ff
   346fd:	eb 06                	jmp    0x34705
   346ff:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   34702:	a2 dc 3e             	mov    ds:0x3edc,al
   34705:	c9                   	leave
   34706:	cb                   	retf
   34707:	55                   	push   bp
   34708:	8b ec                	mov    bp,sp
   3470a:	83 ec 02             	sub    sp,0x2
   3470d:	9a b6 06 30 00       	call   0x30:0x6b6
   34712:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   34717:	e9 87 00             	jmp    0x347a1
   3471a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3471d:	c1 e3 03             	shl    bx,0x3
   34720:	b8 88 01             	mov    ax,0x188
   34723:	53                   	push   bx
   34724:	50                   	push   ax
   34725:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34728:	f7 2e 47 bb          	imul   WORD PTR ds:0xbb47
   3472c:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   34730:	03 d0                	add    dx,ax
   34732:	07                   	pop    es
   34733:	5b                   	pop    bx
   34734:	26 89 97 fd e5       	mov    WORD PTR es:[bx-0x1a03],dx
   34739:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3473c:	c1 e3 03             	shl    bx,0x3
   3473f:	b8 88 01             	mov    ax,0x188
   34742:	53                   	push   bx
   34743:	50                   	push   ax
   34744:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34747:	f7 2e 45 bb          	imul   WORD PTR ds:0xbb45
   3474b:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3474f:	03 d0                	add    dx,ax
   34751:	07                   	pop    es
   34752:	5b                   	pop    bx
   34753:	26 89 97 ff e5       	mov    WORD PTR es:[bx-0x1a01],dx
   34758:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3475b:	c1 e3 03             	shl    bx,0x3
   3475e:	b8 88 01             	mov    ax,0x188
   34761:	8e c0                	mov    es,ax
   34763:	26 8b 87 fd e5       	mov    ax,WORD PTR es:[bx-0x1a03]
   34768:	05 20 00             	add    ax,0x20
   3476b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3476e:	c1 e3 03             	shl    bx,0x3
   34771:	ba 88 01             	mov    dx,0x188
   34774:	8e c2                	mov    es,dx
   34776:	26 89 87 01 e6       	mov    WORD PTR es:[bx-0x19ff],ax
   3477b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3477e:	c1 e3 03             	shl    bx,0x3
   34781:	b8 88 01             	mov    ax,0x188
   34784:	8e c0                	mov    es,ax
   34786:	26 8b 87 ff e5       	mov    ax,WORD PTR es:[bx-0x1a01]
   3478b:	05 20 00             	add    ax,0x20
   3478e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34791:	c1 e3 03             	shl    bx,0x3
   34794:	ba 88 01             	mov    dx,0x188
   34797:	8e c2                	mov    es,dx
   34799:	26 89 87 03 e6       	mov    WORD PTR es:[bx-0x19fd],ax
   3479e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   347a1:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   347a5:	7d 03                	jge    0x347aa
   347a7:	e9 70 ff             	jmp    0x3471a
   347aa:	b8 88 01             	mov    ax,0x188
   347ad:	8e c0                	mov    es,ax
   347af:	26 c7 06 1d e6 90 00 	mov    WORD PTR es:0xe61d,0x90
   347b6:	b8 88 01             	mov    ax,0x188
   347b9:	8e c0                	mov    es,ax
   347bb:	26 c7 06 1f e6 9c 00 	mov    WORD PTR es:0xe61f,0x9c
   347c2:	b8 88 01             	mov    ax,0x188
   347c5:	8e c0                	mov    es,ax
   347c7:	26 c7 06 21 e6 be 00 	mov    WORD PTR es:0xe621,0xbe
   347ce:	b8 88 01             	mov    ax,0x188
   347d1:	8e c0                	mov    es,ax
   347d3:	26 c7 06 23 e6 c3 00 	mov    WORD PTR es:0xe623,0xc3
   347da:	b8 88 01             	mov    ax,0x188
   347dd:	8e c0                	mov    es,ax
   347df:	26 83 3e fb 3a 64    	cmp    WORD PTR es:0x3afb,0x64
   347e5:	75 05                	jne    0x347ec
   347e7:	b8 30 00             	mov    ax,0x30
   347ea:	eb 02                	jmp    0x347ee
   347ec:	33 c0                	xor    ax,ax
   347ee:	ba 88 01             	mov    dx,0x188
   347f1:	8e c2                	mov    es,dx
   347f3:	26 a3 25 e6          	mov    es:0xe625,ax
   347f7:	b8 88 01             	mov    ax,0x188
   347fa:	8e c0                	mov    es,ax
   347fc:	26 83 3e fd 3a 64    	cmp    WORD PTR es:0x3afd,0x64
   34802:	75 05                	jne    0x34809
   34804:	b8 34 00             	mov    ax,0x34
   34807:	eb 02                	jmp    0x3480b
   34809:	33 c0                	xor    ax,ax
   3480b:	ba 88 01             	mov    dx,0x188
   3480e:	8e c2                	mov    es,dx
   34810:	26 a3 27 e6          	mov    es:0xe627,ax
   34814:	b8 88 01             	mov    ax,0x188
   34817:	8e c0                	mov    es,ax
   34819:	26 a1 fb 3a          	mov    ax,es:0x3afb
   3481d:	bb 03 00             	mov    bx,0x3
   34820:	99                   	cwd
   34821:	f7 fb                	idiv   bx
   34823:	ba 88 01             	mov    dx,0x188
   34826:	8e c2                	mov    es,dx
   34828:	26 8b 16 25 e6       	mov    dx,WORD PTR es:0xe625
   3482d:	03 d0                	add    dx,ax
   3482f:	b8 88 01             	mov    ax,0x188
   34832:	8e c0                	mov    es,ax
   34834:	26 89 16 29 e6       	mov    WORD PTR es:0xe629,dx
   34839:	b8 88 01             	mov    ax,0x188
   3483c:	8e c0                	mov    es,ax
   3483e:	26 a1 fd 3a          	mov    ax,es:0x3afd
   34842:	bb 02 00             	mov    bx,0x2
   34845:	99                   	cwd
   34846:	f7 fb                	idiv   bx
   34848:	ba 88 01             	mov    dx,0x188
   3484b:	8e c2                	mov    es,dx
   3484d:	26 8b 16 27 e6       	mov    dx,WORD PTR es:0xe627
   34852:	03 d0                	add    dx,ax
   34854:	b8 88 01             	mov    ax,0x188
   34857:	8e c0                	mov    es,ax
   34859:	26 89 16 2b e6       	mov    WORD PTR es:0xe62b,dx
   3485e:	b8 88 01             	mov    ax,0x188
   34861:	8e c0                	mov    es,ax
   34863:	26 a1 fb 3a          	mov    ax,es:0x3afb
   34867:	bb 03 00             	mov    bx,0x3
   3486a:	99                   	cwd
   3486b:	f7 fb                	idiv   bx
   3486d:	50                   	push   ax
   3486e:	b8 88 01             	mov    ax,0x188
   34871:	8e c0                	mov    es,ax
   34873:	26 83 3e fb 3a 64    	cmp    WORD PTR es:0x3afb,0x64
   34879:	75 05                	jne    0x34880
   3487b:	b8 30 00             	mov    ax,0x30
   3487e:	eb 02                	jmp    0x34882
   34880:	33 c0                	xor    ax,ax
   34882:	5a                   	pop    dx
   34883:	03 d0                	add    dx,ax
   34885:	b8 88 01             	mov    ax,0x188
   34888:	8e c0                	mov    es,ax
   3488a:	26 89 16 2d e6       	mov    WORD PTR es:0xe62d,dx
   3488f:	b8 88 01             	mov    ax,0x188
   34892:	8e c0                	mov    es,ax
   34894:	26 83 3e fd 3a 64    	cmp    WORD PTR es:0x3afd,0x64
   3489a:	75 05                	jne    0x348a1
   3489c:	b8 34 00             	mov    ax,0x34
   3489f:	eb 02                	jmp    0x348a3
   348a1:	33 c0                	xor    ax,ax
   348a3:	ba 88 01             	mov    dx,0x188
   348a6:	8e c2                	mov    es,dx
   348a8:	26 a3 2f e6          	mov    es:0xe62f,ax
   348ac:	b8 88 01             	mov    ax,0x188
   348af:	8e c0                	mov    es,ax
   348b1:	26 a1 fb 3a          	mov    ax,es:0x3afb
   348b5:	bb 03 00             	mov    bx,0x3
   348b8:	99                   	cwd
   348b9:	f7 fb                	idiv   bx
   348bb:	ba 88 01             	mov    dx,0x188
   348be:	8e c2                	mov    es,dx
   348c0:	26 8b 16 2d e6       	mov    dx,WORD PTR es:0xe62d
   348c5:	03 d0                	add    dx,ax
   348c7:	b8 88 01             	mov    ax,0x188
   348ca:	8e c0                	mov    es,ax
   348cc:	26 89 16 31 e6       	mov    WORD PTR es:0xe631,dx
   348d1:	b8 88 01             	mov    ax,0x188
   348d4:	8e c0                	mov    es,ax
   348d6:	26 a1 fd 3a          	mov    ax,es:0x3afd
   348da:	bb 02 00             	mov    bx,0x2
   348dd:	99                   	cwd
   348de:	f7 fb                	idiv   bx
   348e0:	ba 88 01             	mov    dx,0x188
   348e3:	8e c2                	mov    es,dx
   348e5:	26 8b 16 2f e6       	mov    dx,WORD PTR es:0xe62f
   348ea:	03 d0                	add    dx,ax
   348ec:	b8 88 01             	mov    ax,0x188
   348ef:	8e c0                	mov    es,ax
   348f1:	26 89 16 33 e6       	mov    WORD PTR es:0xe633,dx
   348f6:	b8 88 01             	mov    ax,0x188
   348f9:	8e c0                	mov    es,ax
   348fb:	26 a1 fb 3a          	mov    ax,es:0x3afb
   348ff:	d1 e0                	shl    ax,1
   34901:	bb 03 00             	mov    bx,0x3
   34904:	99                   	cwd
   34905:	f7 fb                	idiv   bx
   34907:	50                   	push   ax
   34908:	b8 88 01             	mov    ax,0x188
   3490b:	8e c0                	mov    es,ax
   3490d:	26 83 3e fb 3a 64    	cmp    WORD PTR es:0x3afb,0x64
   34913:	75 05                	jne    0x3491a
   34915:	b8 30 00             	mov    ax,0x30
   34918:	eb 02                	jmp    0x3491c
   3491a:	33 c0                	xor    ax,ax
   3491c:	5a                   	pop    dx
   3491d:	03 d0                	add    dx,ax
   3491f:	b8 88 01             	mov    ax,0x188
   34922:	8e c0                	mov    es,ax
   34924:	26 89 16 35 e6       	mov    WORD PTR es:0xe635,dx
   34929:	b8 88 01             	mov    ax,0x188
   3492c:	8e c0                	mov    es,ax
   3492e:	26 83 3e fd 3a 64    	cmp    WORD PTR es:0x3afd,0x64
   34934:	75 05                	jne    0x3493b
   34936:	b8 34 00             	mov    ax,0x34
   34939:	eb 02                	jmp    0x3493d
   3493b:	33 c0                	xor    ax,ax
   3493d:	ba 88 01             	mov    dx,0x188
   34940:	8e c2                	mov    es,dx
   34942:	26 a3 37 e6          	mov    es:0xe637,ax
   34946:	b8 88 01             	mov    ax,0x188
   34949:	8e c0                	mov    es,ax
   3494b:	26 a1 fb 3a          	mov    ax,es:0x3afb
   3494f:	bb 03 00             	mov    bx,0x3
   34952:	99                   	cwd
   34953:	f7 fb                	idiv   bx
   34955:	ba 88 01             	mov    dx,0x188
   34958:	8e c2                	mov    es,dx
   3495a:	26 8b 16 35 e6       	mov    dx,WORD PTR es:0xe635
   3495f:	03 d0                	add    dx,ax
   34961:	b8 88 01             	mov    ax,0x188
   34964:	8e c0                	mov    es,ax
   34966:	26 89 16 39 e6       	mov    WORD PTR es:0xe639,dx
   3496b:	b8 88 01             	mov    ax,0x188
   3496e:	8e c0                	mov    es,ax
   34970:	26 a1 fd 3a          	mov    ax,es:0x3afd
   34974:	bb 02 00             	mov    bx,0x2
   34977:	99                   	cwd
   34978:	f7 fb                	idiv   bx
   3497a:	ba 88 01             	mov    dx,0x188
   3497d:	8e c2                	mov    es,dx
   3497f:	26 8b 16 37 e6       	mov    dx,WORD PTR es:0xe637
   34984:	03 d0                	add    dx,ax
   34986:	b8 88 01             	mov    ax,0x188
   34989:	8e c0                	mov    es,ax
   3498b:	26 89 16 3b e6       	mov    WORD PTR es:0xe63b,dx
   34990:	b8 88 01             	mov    ax,0x188
   34993:	8e c0                	mov    es,ax
   34995:	26 83 3e fb 3a 64    	cmp    WORD PTR es:0x3afb,0x64
   3499b:	75 05                	jne    0x349a2
   3499d:	b8 30 00             	mov    ax,0x30
   349a0:	eb 02                	jmp    0x349a4
   349a2:	33 c0                	xor    ax,ax
   349a4:	ba 88 01             	mov    dx,0x188
   349a7:	8e c2                	mov    es,dx
   349a9:	26 a3 3d e6          	mov    es:0xe63d,ax
   349ad:	b8 88 01             	mov    ax,0x188
   349b0:	8e c0                	mov    es,ax
   349b2:	26 a1 fd 3a          	mov    ax,es:0x3afd
   349b6:	bb 02 00             	mov    bx,0x2
   349b9:	99                   	cwd
   349ba:	f7 fb                	idiv   bx
   349bc:	50                   	push   ax
   349bd:	b8 88 01             	mov    ax,0x188
   349c0:	8e c0                	mov    es,ax
   349c2:	26 83 3e fd 3a 64    	cmp    WORD PTR es:0x3afd,0x64
   349c8:	75 05                	jne    0x349cf
   349ca:	b8 34 00             	mov    ax,0x34
   349cd:	eb 02                	jmp    0x349d1
   349cf:	33 c0                	xor    ax,ax
   349d1:	5a                   	pop    dx
   349d2:	03 d0                	add    dx,ax
   349d4:	b8 88 01             	mov    ax,0x188
   349d7:	8e c0                	mov    es,ax
   349d9:	26 89 16 3f e6       	mov    WORD PTR es:0xe63f,dx
   349de:	b8 88 01             	mov    ax,0x188
   349e1:	8e c0                	mov    es,ax
   349e3:	26 a1 3d e6          	mov    ax,es:0xe63d
   349e7:	ba 88 01             	mov    dx,0x188
   349ea:	8e c2                	mov    es,dx
   349ec:	26 03 06 fb 3a       	add    ax,WORD PTR es:0x3afb
   349f1:	ba 88 01             	mov    dx,0x188
   349f4:	8e c2                	mov    es,dx
   349f6:	26 a3 41 e6          	mov    es:0xe641,ax
   349fa:	b8 88 01             	mov    ax,0x188
   349fd:	8e c0                	mov    es,ax
   349ff:	26 a1 fd 3a          	mov    ax,es:0x3afd
   34a03:	bb 02 00             	mov    bx,0x2
   34a06:	99                   	cwd
   34a07:	f7 fb                	idiv   bx
   34a09:	ba 88 01             	mov    dx,0x188
   34a0c:	8e c2                	mov    es,dx
   34a0e:	26 8b 16 3f e6       	mov    dx,WORD PTR es:0xe63f
   34a13:	03 d0                	add    dx,ax
   34a15:	b8 88 01             	mov    ax,0x188
   34a18:	8e c0                	mov    es,ax
   34a1a:	26 89 16 43 e6       	mov    WORD PTR es:0xe643,dx
   34a1f:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   34a24:	eb 75                	jmp    0x34a9b
   34a26:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34a29:	c1 e3 03             	shl    bx,0x3
   34a2c:	b8 88 01             	mov    ax,0x188
   34a2f:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   34a32:	6b d2 12             	imul   dx,dx,0x12
   34a35:	81 c2 09 01          	add    dx,0x109
   34a39:	8e c0                	mov    es,ax
   34a3b:	26 89 97 45 e6       	mov    WORD PTR es:[bx-0x19bb],dx
   34a40:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34a43:	c1 e3 03             	shl    bx,0x3
   34a46:	b8 88 01             	mov    ax,0x188
   34a49:	8e c0                	mov    es,ax
   34a4b:	26 c7 87 47 e6 98 00 	mov    WORD PTR es:[bx-0x19b9],0x98
   34a52:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34a55:	c1 e3 03             	shl    bx,0x3
   34a58:	b8 88 01             	mov    ax,0x188
   34a5b:	8e c0                	mov    es,ax
   34a5d:	26 8b 87 45 e6       	mov    ax,WORD PTR es:[bx-0x19bb]
   34a62:	05 0e 00             	add    ax,0xe
   34a65:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34a68:	c1 e3 03             	shl    bx,0x3
   34a6b:	ba 88 01             	mov    dx,0x188
   34a6e:	8e c2                	mov    es,dx
   34a70:	26 89 87 49 e6       	mov    WORD PTR es:[bx-0x19b7],ax
   34a75:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34a78:	c1 e3 03             	shl    bx,0x3
   34a7b:	b8 88 01             	mov    ax,0x188
   34a7e:	8e c0                	mov    es,ax
   34a80:	26 8b 87 47 e6       	mov    ax,WORD PTR es:[bx-0x19b9]
   34a85:	05 0e 00             	add    ax,0xe
   34a88:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34a8b:	c1 e3 03             	shl    bx,0x3
   34a8e:	ba 88 01             	mov    dx,0x188
   34a91:	8e c2                	mov    es,dx
   34a93:	26 89 87 4b e6       	mov    WORD PTR es:[bx-0x19b5],ax
   34a98:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   34a9b:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   34a9f:	7c 85                	jl     0x34a26
   34aa1:	b8 88 01             	mov    ax,0x188
   34aa4:	8e c0                	mov    es,ax
   34aa6:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   34aab:	c1 e3 03             	shl    bx,0x3
   34aae:	b8 88 01             	mov    ax,0x188
   34ab1:	8e c0                	mov    es,ax
   34ab3:	26 c7 87 f5 e5 00 00 	mov    WORD PTR es:[bx-0x1a0b],0x0
   34aba:	b8 88 01             	mov    ax,0x188
   34abd:	8e c0                	mov    es,ax
   34abf:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   34ac4:	c1 e3 03             	shl    bx,0x3
   34ac7:	b8 88 01             	mov    ax,0x188
   34aca:	8e c0                	mov    es,ax
   34acc:	26 c7 87 f7 e5 85 00 	mov    WORD PTR es:[bx-0x1a09],0x85
   34ad3:	b8 88 01             	mov    ax,0x188
   34ad6:	8e c0                	mov    es,ax
   34ad8:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   34add:	c1 e3 03             	shl    bx,0x3
   34ae0:	b8 88 01             	mov    ax,0x188
   34ae3:	8e c0                	mov    es,ax
   34ae5:	26 c7 87 f9 e5 40 01 	mov    WORD PTR es:[bx-0x1a07],0x140
   34aec:	b8 88 01             	mov    ax,0x188
   34aef:	8e c0                	mov    es,ax
   34af1:	26 8b 1e 5c 96       	mov    bx,WORD PTR es:0x965c
   34af6:	c1 e3 03             	shl    bx,0x3
   34af9:	b8 88 01             	mov    ax,0x188
   34afc:	8e c0                	mov    es,ax
   34afe:	26 c7 87 fb e5 c8 00 	mov    WORD PTR es:[bx-0x1a05],0xc8
   34b05:	b8 88 01             	mov    ax,0x188
   34b08:	8e c0                	mov    es,ax
   34b0a:	26 83 3e fb 3a 64    	cmp    WORD PTR es:0x3afb,0x64
   34b10:	75 05                	jne    0x34b17
   34b12:	b8 30 00             	mov    ax,0x30
   34b15:	eb 02                	jmp    0x34b19
   34b17:	33 c0                	xor    ax,ax
   34b19:	ba 88 01             	mov    dx,0x188
   34b1c:	8e c2                	mov    es,dx
   34b1e:	26 a3 65 e6          	mov    es:0xe665,ax
   34b22:	b8 88 01             	mov    ax,0x188
   34b25:	8e c0                	mov    es,ax
   34b27:	26 83 3e fd 3a 64    	cmp    WORD PTR es:0x3afd,0x64
   34b2d:	75 05                	jne    0x34b34
   34b2f:	b8 34 00             	mov    ax,0x34
   34b32:	eb 02                	jmp    0x34b36
   34b34:	33 c0                	xor    ax,ax
   34b36:	ba 88 01             	mov    dx,0x188
   34b39:	8e c2                	mov    es,dx
   34b3b:	26 a3 67 e6          	mov    es:0xe667,ax
   34b3f:	b8 88 01             	mov    ax,0x188
   34b42:	8e c0                	mov    es,ax
   34b44:	26 a1 65 e6          	mov    ax,es:0xe665
   34b48:	ba 88 01             	mov    dx,0x188
   34b4b:	8e c2                	mov    es,dx
   34b4d:	26 03 06 fb 3a       	add    ax,WORD PTR es:0x3afb
   34b52:	ba 88 01             	mov    dx,0x188
   34b55:	8e c2                	mov    es,dx
   34b57:	26 a3 69 e6          	mov    es:0xe669,ax
   34b5b:	b8 88 01             	mov    ax,0x188
   34b5e:	8e c0                	mov    es,ax
   34b60:	26 a1 67 e6          	mov    ax,es:0xe667
   34b64:	ba 88 01             	mov    dx,0x188
   34b67:	8e c2                	mov    es,dx
   34b69:	26 03 06 fd 3a       	add    ax,WORD PTR es:0x3afd
   34b6e:	ba 88 01             	mov    dx,0x188
   34b71:	8e c2                	mov    es,dx
   34b73:	26 a3 6b e6          	mov    es:0xe66b,ax
   34b77:	c9                   	leave
   34b78:	cb                   	retf
   34b79:	55                   	push   bp
   34b7a:	8b ec                	mov    bp,sp
   34b7c:	83 ec 30             	sub    sp,0x30
   34b7f:	c7 46 f0 4c 04       	mov    WORD PTR [bp-0x10],0x44c
   34b84:	c7 46 ee 18 00       	mov    WORD PTR [bp-0x12],0x18
   34b89:	c7 06 4b bb c5 00    	mov    WORD PTR ds:0xbb4b,0xc5
   34b8f:	c7 06 49 bb 02 00    	mov    WORD PTR ds:0xbb49,0x2
   34b95:	c7 06 47 bb 00 00    	mov    WORD PTR ds:0xbb47,0x0
   34b9b:	c7 06 45 bb 26 00    	mov    WORD PTR ds:0xbb45,0x26
   34ba1:	0e                   	push   cs
   34ba2:	e8 62 fb             	call   0x34707
   34ba5:	9a 04 02 30 00       	call   0x30:0x204
   34baa:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   34baf:	e9 35 02             	jmp    0x34de7
   34bb2:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   34bb7:	e9 69 01             	jmp    0x34d23
   34bba:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34bbd:	6b db 5c             	imul   bx,bx,0x5c
   34bc0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34bc3:	d1 e0                	shl    ax,1
   34bc5:	03 d8                	add    bx,ax
   34bc7:	b8 88 01             	mov    ax,0x188
   34bca:	8e c0                	mov    es,ax
   34bcc:	26 8b 87 3c 9a       	mov    ax,WORD PTR es:[bx-0x65c4]
   34bd1:	d1 e0                	shl    ax,1
   34bd3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34bd6:	6b db 5c             	imul   bx,bx,0x5c
   34bd9:	03 d8                	add    bx,ax
   34bdb:	b8 88 01             	mov    ax,0x188
   34bde:	8e c0                	mov    es,ax
   34be0:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   34be5:	bb 64 00             	mov    bx,0x64
   34be8:	99                   	cwd
   34be9:	f7 fb                	idiv   bx
   34beb:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
   34bee:	83 7e fa 2b          	cmp    WORD PTR [bp-0x6],0x2b
   34bf2:	75 07                	jne    0x34bfb
   34bf4:	c7 46 fa 22 00       	mov    WORD PTR [bp-0x6],0x22
   34bf9:	eb 0a                	jmp    0x34c05
   34bfb:	83 7e fa 20          	cmp    WORD PTR [bp-0x6],0x20
   34bff:	7e 04                	jle    0x34c05
   34c01:	83 46 fa 02          	add    WORD PTR [bp-0x6],0x2
   34c05:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34c08:	6b db 11             	imul   bx,bx,0x11
   34c0b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34c0e:	d1 e0                	shl    ax,1
   34c10:	03 d8                	add    bx,ax
   34c12:	b8 88 01             	mov    ax,0x188
   34c15:	8e c0                	mov    es,ax
   34c17:	26 8b 87 88 ba       	mov    ax,WORD PTR es:[bx-0x4578]
   34c1c:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
   34c1f:	75 0b                	jne    0x34c2c
   34c21:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   34c27:	75 03                	jne    0x34c2c
   34c29:	e9 f4 00             	jmp    0x34d20
   34c2c:	83 7e fc 02          	cmp    WORD PTR [bp-0x4],0x2
   34c30:	75 11                	jne    0x34c43
   34c32:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34c35:	6b db 11             	imul   bx,bx,0x11
   34c38:	b8 88 01             	mov    ax,0x188
   34c3b:	8e c0                	mov    es,ax
   34c3d:	26 80 a7 98 ba fe    	and    BYTE PTR es:[bx-0x4568],0xfe
   34c43:	83 7e fa 00          	cmp    WORD PTR [bp-0x6],0x0
   34c47:	74 7e                	je     0x34cc7
   34c49:	b8 88 01             	mov    ax,0x188
   34c4c:	8e c0                	mov    es,ax
   34c4e:	26 a0 67 96          	mov    al,es:0x9667
   34c52:	50                   	push   ax
   34c53:	6a 00                	push   0x0
   34c55:	6a 0f                	push   0xf
   34c57:	6a 0f                	push   0xf
   34c59:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34c5c:	6b c0 26             	imul   ax,ax,0x26
   34c5f:	05 02 00             	add    ax,0x2
   34c62:	50                   	push   ax
   34c63:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34c66:	48                   	dec    ax
   34c67:	6b c0 11             	imul   ax,ax,0x11
   34c6a:	05 e7 00             	add    ax,0xe7
   34c6d:	50                   	push   ax
   34c6e:	9a 08 09 28 00       	call   0x28:0x908
   34c73:	83 c4 0c             	add    sp,0xc
   34c76:	68 e0 01             	push   0x1e0
   34c79:	68 41 03             	push   0x341
   34c7c:	6a 00                	push   0x0
   34c7e:	6a 4b                	push   0x4b
   34c80:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34c83:	6b c0 26             	imul   ax,ax,0x26
   34c86:	05 02 00             	add    ax,0x2
   34c89:	50                   	push   ax
   34c8a:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34c8d:	48                   	dec    ax
   34c8e:	6b c0 11             	imul   ax,ax,0x11
   34c91:	05 e7 00             	add    ax,0xe7
   34c94:	50                   	push   ax
   34c95:	6a 0f                	push   0xf
   34c97:	6a 0f                	push   0xf
   34c99:	6a 00                	push   0x0
   34c9b:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   34c9e:	48                   	dec    ax
   34c9f:	6b c0 0f             	imul   ax,ax,0xf
   34ca2:	50                   	push   ax
   34ca3:	9a 30 04 28 00       	call   0x28:0x430
   34ca8:	83 c4 14             	add    sp,0x14
   34cab:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34cae:	6b db 11             	imul   bx,bx,0x11
   34cb1:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34cb4:	d1 e0                	shl    ax,1
   34cb6:	03 d8                	add    bx,ax
   34cb8:	b8 88 01             	mov    ax,0x188
   34cbb:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   34cbe:	8e c0                	mov    es,ax
   34cc0:	26 89 97 88 ba       	mov    WORD PTR es:[bx-0x4578],dx
   34cc5:	eb 59                	jmp    0x34d20
   34cc7:	68 e0 01             	push   0x1e0
   34cca:	68 d0 02             	push   0x2d0
   34ccd:	6a 00                	push   0x0
   34ccf:	6a 50                	push   0x50
   34cd1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34cd4:	6b c0 26             	imul   ax,ax,0x26
   34cd7:	05 02 00             	add    ax,0x2
   34cda:	50                   	push   ax
   34cdb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34cde:	48                   	dec    ax
   34cdf:	6b c0 11             	imul   ax,ax,0x11
   34ce2:	05 e7 00             	add    ax,0xe7
   34ce5:	50                   	push   ax
   34ce6:	6a 0f                	push   0xf
   34ce8:	6a 0f                	push   0xf
   34cea:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34ced:	6b c0 26             	imul   ax,ax,0x26
   34cf0:	05 02 00             	add    ax,0x2
   34cf3:	50                   	push   ax
   34cf4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34cf7:	48                   	dec    ax
   34cf8:	6b c0 11             	imul   ax,ax,0x11
   34cfb:	05 e7 00             	add    ax,0xe7
   34cfe:	50                   	push   ax
   34cff:	9a 30 04 28 00       	call   0x28:0x430
   34d04:	83 c4 14             	add    sp,0x14
   34d07:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34d0a:	6b db 11             	imul   bx,bx,0x11
   34d0d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   34d10:	d1 e0                	shl    ax,1
   34d12:	03 d8                	add    bx,ax
   34d14:	b8 88 01             	mov    ax,0x188
   34d17:	8e c0                	mov    es,ax
   34d19:	26 c7 87 88 ba 00 00 	mov    WORD PTR es:[bx-0x4578],0x0
   34d20:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   34d23:	83 7e fc 03          	cmp    WORD PTR [bp-0x4],0x3
   34d27:	7f 03                	jg     0x34d2c
   34d29:	e9 8e fe             	jmp    0x34bba
   34d2c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34d2f:	6b db 5c             	imul   bx,bx,0x5c
   34d32:	b8 88 01             	mov    ax,0x188
   34d35:	8e c0                	mov    es,ax
   34d37:	26 8b 87 3e 9a       	mov    ax,WORD PTR es:[bx-0x65c2]
   34d3c:	d1 e0                	shl    ax,1
   34d3e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34d41:	6b db 5c             	imul   bx,bx,0x5c
   34d44:	03 d8                	add    bx,ax
   34d46:	b8 88 01             	mov    ax,0x188
   34d49:	8e c0                	mov    es,ax
   34d4b:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   34d50:	bb 64 00             	mov    bx,0x64
   34d53:	99                   	cwd
   34d54:	f7 fb                	idiv   bx
   34d56:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   34d59:	83 7e fc 2b          	cmp    WORD PTR [bp-0x4],0x2b
   34d5d:	75 05                	jne    0x34d64
   34d5f:	c7 46 fc 1a 00       	mov    WORD PTR [bp-0x4],0x1a
   34d64:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   34d67:	6b db 0e             	imul   bx,bx,0xe
   34d6a:	b8 88 01             	mov    ax,0x188
   34d6d:	8e c0                	mov    es,ax
   34d6f:	26 83 bf 81 0e 02    	cmp    WORD PTR es:[bx+0xe81],0x2
   34d75:	75 5c                	jne    0x34dd3
   34d77:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34d7a:	6b db 11             	imul   bx,bx,0x11
   34d7d:	b8 88 01             	mov    ax,0x188
   34d80:	8e c0                	mov    es,ax
   34d82:	26 8a 87 98 ba       	mov    al,BYTE PTR es:[bx-0x4568]
   34d87:	c1 e0 0f             	shl    ax,0xf
   34d8a:	c1 f8 0f             	sar    ax,0xf
   34d8d:	0b c0                	or     ax,ax
   34d8f:	75 53                	jne    0x34de4
   34d91:	b8 88 01             	mov    ax,0x188
   34d94:	8e c0                	mov    es,ax
   34d96:	26 a0 c2 5b          	mov    al,es:0x5bc2
   34d9a:	b4 00                	mov    ah,0x0
   34d9c:	0b c0                	or     ax,ax
   34d9e:	75 44                	jne    0x34de4
   34da0:	68 fd 00             	push   0xfd
   34da3:	6a 00                	push   0x0
   34da5:	6a 0f                	push   0xf
   34da7:	6a 0f                	push   0xf
   34da9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   34dac:	6b c0 26             	imul   ax,ax,0x26
   34daf:	05 02 00             	add    ax,0x2
   34db2:	50                   	push   ax
   34db3:	68 f8 00             	push   0xf8
   34db6:	9a 51 0a 30 00       	call   0x30:0xa51
   34dbb:	83 c4 0c             	add    sp,0xc
   34dbe:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34dc1:	6b db 11             	imul   bx,bx,0x11
   34dc4:	b8 88 01             	mov    ax,0x188
   34dc7:	8e c0                	mov    es,ax
   34dc9:	26 80 8f 98 ba 01    	or     BYTE PTR es:[bx-0x4568],0x1
   34dcf:	eb 13                	jmp    0x34de4
   34dd1:	eb 11                	jmp    0x34de4
   34dd3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34dd6:	6b db 11             	imul   bx,bx,0x11
   34dd9:	b8 88 01             	mov    ax,0x188
   34ddc:	8e c0                	mov    es,ax
   34dde:	26 80 a7 98 ba fe    	and    BYTE PTR es:[bx-0x4568],0xfe
   34de4:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   34de7:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   34deb:	7d 03                	jge    0x34df0
   34ded:	e9 c2 fd             	jmp    0x34bb2
   34df0:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   34df5:	e9 24 0a             	jmp    0x3581c
   34df8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34dfb:	6b db 5c             	imul   bx,bx,0x5c
   34dfe:	b8 88 01             	mov    ax,0x188
   34e01:	8e c0                	mov    es,ax
   34e03:	26 83 bf 3c 9a fb    	cmp    WORD PTR es:[bx-0x65c4],0xfffb
   34e09:	7d 35                	jge    0x34e40
   34e0b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e0e:	6b db 11             	imul   bx,bx,0x11
   34e11:	b8 88 01             	mov    ax,0x188
   34e14:	8e c0                	mov    es,ax
   34e16:	26 80 bf 88 ba ff    	cmp    BYTE PTR es:[bx-0x4578],0xff
   34e1c:	74 22                	je     0x34e40
   34e1e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e21:	6b db 11             	imul   bx,bx,0x11
   34e24:	b8 88 01             	mov    ax,0x188
   34e27:	8e c0                	mov    es,ax
   34e29:	26 c6 87 88 ba ff    	mov    BYTE PTR es:[bx-0x4578],0xff
   34e2f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e32:	6b db 11             	imul   bx,bx,0x11
   34e35:	b8 88 01             	mov    ax,0x188
   34e38:	8e c0                	mov    es,ax
   34e3a:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   34e40:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e43:	6b db 5c             	imul   bx,bx,0x5c
   34e46:	b8 88 01             	mov    ax,0x188
   34e49:	8e c0                	mov    es,ax
   34e4b:	26 83 bf 3c 9a fa    	cmp    WORD PTR es:[bx-0x65c4],0xfffa
   34e51:	7e 48                	jle    0x34e9b
   34e53:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e56:	6b db 5c             	imul   bx,bx,0x5c
   34e59:	b8 88 01             	mov    ax,0x188
   34e5c:	8e c0                	mov    es,ax
   34e5e:	26 83 bf 3c 9a 00    	cmp    WORD PTR es:[bx-0x65c4],0x0
   34e64:	7f 35                	jg     0x34e9b
   34e66:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e69:	6b db 11             	imul   bx,bx,0x11
   34e6c:	b8 88 01             	mov    ax,0x188
   34e6f:	8e c0                	mov    es,ax
   34e71:	26 80 bf 88 ba 00    	cmp    BYTE PTR es:[bx-0x4578],0x0
   34e77:	74 22                	je     0x34e9b
   34e79:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e7c:	6b db 11             	imul   bx,bx,0x11
   34e7f:	b8 88 01             	mov    ax,0x188
   34e82:	8e c0                	mov    es,ax
   34e84:	26 c6 87 88 ba 00    	mov    BYTE PTR es:[bx-0x4578],0x0
   34e8a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e8d:	6b db 11             	imul   bx,bx,0x11
   34e90:	b8 88 01             	mov    ax,0x188
   34e93:	8e c0                	mov    es,ax
   34e95:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   34e9b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34e9e:	6b db 5c             	imul   bx,bx,0x5c
   34ea1:	b8 88 01             	mov    ax,0x188
   34ea4:	8e c0                	mov    es,ax
   34ea6:	26 83 bf 3c 9a 00    	cmp    WORD PTR es:[bx-0x65c4],0x0
   34eac:	7e 35                	jle    0x34ee3
   34eae:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34eb1:	6b db 11             	imul   bx,bx,0x11
   34eb4:	b8 88 01             	mov    ax,0x188
   34eb7:	8e c0                	mov    es,ax
   34eb9:	26 80 bf 88 ba 01    	cmp    BYTE PTR es:[bx-0x4578],0x1
   34ebf:	74 22                	je     0x34ee3
   34ec1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34ec4:	6b db 11             	imul   bx,bx,0x11
   34ec7:	b8 88 01             	mov    ax,0x188
   34eca:	8e c0                	mov    es,ax
   34ecc:	26 c6 87 88 ba 01    	mov    BYTE PTR es:[bx-0x4578],0x1
   34ed2:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34ed5:	6b db 11             	imul   bx,bx,0x11
   34ed8:	b8 88 01             	mov    ax,0x188
   34edb:	8e c0                	mov    es,ax
   34edd:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   34ee3:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   34ee9:	74 11                	je     0x34efc
   34eeb:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34eee:	6b db 11             	imul   bx,bx,0x11
   34ef1:	b8 88 01             	mov    ax,0x188
   34ef4:	8e c0                	mov    es,ax
   34ef6:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   34efc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34eff:	6b db 11             	imul   bx,bx,0x11
   34f02:	b8 88 01             	mov    ax,0x188
   34f05:	8e c0                	mov    es,ax
   34f07:	26 80 bf 88 ba 01    	cmp    BYTE PTR es:[bx-0x4578],0x1
   34f0d:	74 03                	je     0x34f12
   34f0f:	e9 87 00             	jmp    0x34f99
   34f12:	b8 88 01             	mov    ax,0x188
   34f15:	8e c0                	mov    es,ax
   34f17:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   34f1b:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   34f1f:	75 0f                	jne    0x34f30
   34f21:	b8 88 01             	mov    ax,0x188
   34f24:	8e c0                	mov    es,ax
   34f26:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   34f2a:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   34f2e:	74 69                	je     0x34f99
   34f30:	6a 00                	push   0x0
   34f32:	68 00 80             	push   0x8000
   34f35:	9a 79 17 00 00       	call   0x0:0x1779
   34f3a:	99                   	cwd
   34f3b:	50                   	push   ax
   34f3c:	52                   	push   dx
   34f3d:	33 d2                	xor    dx,dx
   34f3f:	b8 03 00             	mov    ax,0x3
   34f42:	59                   	pop    cx
   34f43:	5b                   	pop    bx
   34f44:	9a 42 12 00 00       	call   0x0:0x1242
   34f49:	52                   	push   dx
   34f4a:	50                   	push   ax
   34f4b:	9a df 12 00 00       	call   0x0:0x12df
   34f50:	0b c0                	or     ax,ax
   34f52:	75 45                	jne    0x34f99
   34f54:	6a 00                	push   0x0
   34f56:	68 00 80             	push   0x8000
   34f59:	9a 79 17 00 00       	call   0x0:0x1779
   34f5e:	99                   	cwd
   34f5f:	d1 e0                	shl    ax,1
   34f61:	d1 d2                	rcl    dx,1
   34f63:	52                   	push   dx
   34f64:	50                   	push   ax
   34f65:	9a df 12 00 00       	call   0x0:0x12df
   34f6a:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   34f6d:	6a 00                	push   0x0
   34f6f:	68 00 80             	push   0x8000
   34f72:	9a 79 17 00 00       	call   0x0:0x1779
   34f77:	99                   	cwd
   34f78:	d1 e0                	shl    ax,1
   34f7a:	d1 d2                	rcl    dx,1
   34f7c:	52                   	push   dx
   34f7d:	50                   	push   ax
   34f7e:	9a df 12 00 00       	call   0x0:0x12df
   34f83:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   34f86:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34f89:	6b db 11             	imul   bx,bx,0x11
   34f8c:	b8 88 01             	mov    ax,0x188
   34f8f:	8e c0                	mov    es,ax
   34f91:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   34f97:	eb 08                	jmp    0x34fa1
   34f99:	33 c0                	xor    ax,ax
   34f9b:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   34f9e:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   34fa1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34fa4:	6b db 11             	imul   bx,bx,0x11
   34fa7:	b8 88 01             	mov    ax,0x188
   34faa:	8e c0                	mov    es,ax
   34fac:	26 80 bf 89 ba 00    	cmp    BYTE PTR es:[bx-0x4577],0x0
   34fb2:	75 03                	jne    0x34fb7
   34fb4:	e9 b4 00             	jmp    0x3506b
   34fb7:	b8 88 01             	mov    ax,0x188
   34fba:	8e c0                	mov    es,ax
   34fbc:	26 80 3e c2 5b 00    	cmp    BYTE PTR es:0x5bc2,0x0
   34fc2:	74 16                	je     0x34fda
   34fc4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   34fc7:	6b db 11             	imul   bx,bx,0x11
   34fca:	b8 88 01             	mov    ax,0x188
   34fcd:	8e c0                	mov    es,ax
   34fcf:	26 80 bf 88 ba 01    	cmp    BYTE PTR es:[bx-0x4578],0x1
   34fd5:	74 03                	je     0x34fda
   34fd7:	e9 91 00             	jmp    0x3506b
   34fda:	68 e0 01             	push   0x1e0
   34fdd:	68 d0 02             	push   0x2d0
   34fe0:	6a 00                	push   0x0
   34fe2:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   34fe5:	04 47                	add    al,0x47
   34fe7:	50                   	push   ax
   34fe8:	a1 45 bb             	mov    ax,ds:0xbb45
   34feb:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   34fee:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   34ff2:	03 d0                	add    dx,ax
   34ff4:	52                   	push   dx
   34ff5:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   34ff9:	7d 05                	jge    0x35000
   34ffb:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   34ffe:	eb 02                	jmp    0x35002
   35000:	33 c0                	xor    ax,ax
   35002:	5a                   	pop    dx
   35003:	2b d0                	sub    dx,ax
   35005:	42                   	inc    dx
   35006:	52                   	push   dx
   35007:	a1 47 bb             	mov    ax,ds:0xbb47
   3500a:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   3500d:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   35011:	03 d0                	add    dx,ax
   35013:	52                   	push   dx
   35014:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   35018:	7d 05                	jge    0x3501f
   3501a:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   3501d:	eb 02                	jmp    0x35021
   3501f:	33 c0                	xor    ax,ax
   35021:	5a                   	pop    dx
   35022:	2b d0                	sub    dx,ax
   35024:	52                   	push   dx
   35025:	6a 1f                	push   0x1f
   35027:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   3502a:	99                   	cwd
   3502b:	33 c2                	xor    ax,dx
   3502d:	2b c2                	sub    ax,dx
   3502f:	0b c0                	or     ax,ax
   35031:	7d 04                	jge    0x35037
   35033:	33 c0                	xor    ax,ax
   35035:	eb 08                	jmp    0x3503f
   35037:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   3503a:	99                   	cwd
   3503b:	33 c2                	xor    ax,dx
   3503d:	2b c2                	sub    ax,dx
   3503f:	ba 20 00             	mov    dx,0x20
   35042:	2b d0                	sub    dx,ax
   35044:	52                   	push   dx
   35045:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   35049:	7d 04                	jge    0x3504f
   3504b:	33 c0                	xor    ax,ax
   3504d:	eb 03                	jmp    0x35052
   3504f:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   35052:	50                   	push   ax
   35053:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   35057:	7d 04                	jge    0x3505d
   35059:	33 c0                	xor    ax,ax
   3505b:	eb 03                	jmp    0x35060
   3505d:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   35060:	50                   	push   ax
   35061:	9a 30 04 28 00       	call   0x28:0x430
   35066:	83 c4 14             	add    sp,0x14
   35069:	eb 24                	jmp    0x3508f
   3506b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3506e:	6b db 11             	imul   bx,bx,0x11
   35071:	b8 88 01             	mov    ax,0x188
   35074:	8e c0                	mov    es,ax
   35076:	26 80 bf 89 ba 00    	cmp    BYTE PTR es:[bx-0x4577],0x0
   3507c:	74 11                	je     0x3508f
   3507e:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35081:	6b db 11             	imul   bx,bx,0x11
   35084:	b8 88 01             	mov    ax,0x188
   35087:	8e c0                	mov    es,ax
   35089:	26 c6 87 88 ba 01    	mov    BYTE PTR es:[bx-0x4578],0x1
   3508f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35092:	6b db 11             	imul   bx,bx,0x11
   35095:	b8 88 01             	mov    ax,0x188
   35098:	8e c0                	mov    es,ax
   3509a:	26 80 bf 88 ba ff    	cmp    BYTE PTR es:[bx-0x4578],0xff
   350a0:	74 03                	je     0x350a5
   350a2:	e9 8d 00             	jmp    0x35132
   350a5:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   350a8:	6b db 11             	imul   bx,bx,0x11
   350ab:	b8 88 01             	mov    ax,0x188
   350ae:	8e c0                	mov    es,ax
   350b0:	26 80 bf 89 ba 00    	cmp    BYTE PTR es:[bx-0x4577],0x0
   350b6:	74 7a                	je     0x35132
   350b8:	b8 88 01             	mov    ax,0x188
   350bb:	8e c0                	mov    es,ax
   350bd:	26 a0 c2 5b          	mov    al,es:0x5bc2
   350c1:	b4 00                	mov    ah,0x0
   350c3:	0b c0                	or     ax,ax
   350c5:	75 5a                	jne    0x35121
   350c7:	68 fd 00             	push   0xfd
   350ca:	6a 00                	push   0x0
   350cc:	6a 1f                	push   0x1f
   350ce:	6a 20                	push   0x20
   350d0:	a1 45 bb             	mov    ax,ds:0xbb45
   350d3:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   350d6:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   350da:	03 d0                	add    dx,ax
   350dc:	42                   	inc    dx
   350dd:	52                   	push   dx
   350de:	a1 47 bb             	mov    ax,ds:0xbb47
   350e1:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   350e4:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   350e8:	03 d0                	add    dx,ax
   350ea:	52                   	push   dx
   350eb:	9a 51 0a 30 00       	call   0x30:0xa51
   350f0:	83 c4 0c             	add    sp,0xc
   350f3:	68 d9 00             	push   0xd9
   350f6:	6a 00                	push   0x0
   350f8:	6a 1f                	push   0x1f
   350fa:	6a 20                	push   0x20
   350fc:	a1 45 bb             	mov    ax,ds:0xbb45
   350ff:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   35102:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   35106:	03 d0                	add    dx,ax
   35108:	42                   	inc    dx
   35109:	52                   	push   dx
   3510a:	a1 47 bb             	mov    ax,ds:0xbb47
   3510d:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   35110:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   35114:	03 d0                	add    dx,ax
   35116:	52                   	push   dx
   35117:	9a 51 0a 30 00       	call   0x30:0xa51
   3511c:	83 c4 0c             	add    sp,0xc
   3511f:	eb 11                	jmp    0x35132
   35121:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35124:	6b db 11             	imul   bx,bx,0x11
   35127:	b8 88 01             	mov    ax,0x188
   3512a:	8e c0                	mov    es,ax
   3512c:	26 c6 87 88 ba 01    	mov    BYTE PTR es:[bx-0x4578],0x1
   35132:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35135:	6b db 11             	imul   bx,bx,0x11
   35138:	b8 88 01             	mov    ax,0x188
   3513b:	8e c0                	mov    es,ax
   3513d:	26 80 bf 88 ba 00    	cmp    BYTE PTR es:[bx-0x4578],0x0
   35143:	75 61                	jne    0x351a6
   35145:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35148:	6b db 11             	imul   bx,bx,0x11
   3514b:	b8 88 01             	mov    ax,0x188
   3514e:	8e c0                	mov    es,ax
   35150:	26 80 bf 89 ba 01    	cmp    BYTE PTR es:[bx-0x4577],0x1
   35156:	75 4e                	jne    0x351a6
   35158:	b8 88 01             	mov    ax,0x188
   3515b:	8e c0                	mov    es,ax
   3515d:	26 a0 c2 5b          	mov    al,es:0x5bc2
   35161:	b4 00                	mov    ah,0x0
   35163:	0b c0                	or     ax,ax
   35165:	75 2e                	jne    0x35195
   35167:	68 d9 00             	push   0xd9
   3516a:	6a 00                	push   0x0
   3516c:	6a 1f                	push   0x1f
   3516e:	6a 20                	push   0x20
   35170:	a1 45 bb             	mov    ax,ds:0xbb45
   35173:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   35176:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3517a:	03 d0                	add    dx,ax
   3517c:	42                   	inc    dx
   3517d:	52                   	push   dx
   3517e:	a1 47 bb             	mov    ax,ds:0xbb47
   35181:	f7 6e fe             	imul   WORD PTR [bp-0x2]
   35184:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   35188:	03 d0                	add    dx,ax
   3518a:	52                   	push   dx
   3518b:	9a 51 0a 30 00       	call   0x30:0xa51
   35190:	83 c4 0c             	add    sp,0xc
   35193:	eb 11                	jmp    0x351a6
   35195:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35198:	6b db 11             	imul   bx,bx,0x11
   3519b:	b8 88 01             	mov    ax,0x188
   3519e:	8e c0                	mov    es,ax
   351a0:	26 c6 87 88 ba 01    	mov    BYTE PTR es:[bx-0x4578],0x1
   351a6:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   351a9:	6b db 11             	imul   bx,bx,0x11
   351ac:	b8 88 01             	mov    ax,0x188
   351af:	8e c0                	mov    es,ax
   351b1:	26 80 bf 88 ba ff    	cmp    BYTE PTR es:[bx-0x4578],0xff
   351b7:	75 03                	jne    0x351bc
   351b9:	e9 4c 06             	jmp    0x35808
   351bc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   351bf:	40                   	inc    ax
   351c0:	ba 88 01             	mov    dx,0x188
   351c3:	8e c2                	mov    es,dx
   351c5:	26 a3 98 28          	mov    es:0x2898,ax
   351c9:	9a e8 00 38 01       	call   0x138:0xe8
   351ce:	b8 88 01             	mov    ax,0x188
   351d1:	8e c0                	mov    es,ax
   351d3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   351d8:	6b db 5c             	imul   bx,bx,0x5c
   351db:	b8 88 01             	mov    ax,0x188
   351de:	ba 88 01             	mov    dx,0x188
   351e1:	8e c2                	mov    es,dx
   351e3:	26 8b 16 ee d5       	mov    dx,WORD PTR es:0xd5ee
   351e8:	8e c0                	mov    es,ax
   351ea:	26 89 97 00 9a       	mov    WORD PTR es:[bx-0x6600],dx
   351ef:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   351f5:	75 03                	jne    0x351fa
   351f7:	e9 da 00             	jmp    0x352d4
   351fa:	b8 02 00             	mov    ax,0x2
   351fd:	3d 01 00             	cmp    ax,0x1
   35200:	74 08                	je     0x3520a
   35202:	3d 02 00             	cmp    ax,0x2
   35205:	74 6b                	je     0x35272
   35207:	e9 ca 00             	jmp    0x352d4
   3520a:	6a 05                	push   0x5
   3520c:	b8 88 01             	mov    ax,0x188
   3520f:	8e c0                	mov    es,ax
   35211:	26 a0 69 96          	mov    al,es:0x9669
   35215:	b4 00                	mov    ah,0x0
   35217:	50                   	push   ax
   35218:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3521b:	69 c0 94 00          	imul   ax,ax,0x94
   3521f:	05 ba 9c             	add    ax,0x9cba
   35222:	68 88 01             	push   0x188
   35225:	50                   	push   ax
   35226:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35229:	6b c0 26             	imul   ax,ax,0x26
   3522c:	05 15 00             	add    ax,0x15
   3522f:	50                   	push   ax
   35230:	68 e8 00             	push   0xe8
   35233:	6a 00                	push   0x0
   35235:	9a 34 00 80 01       	call   0x180:0x34
   3523a:	83 c4 0e             	add    sp,0xe
   3523d:	6a 05                	push   0x5
   3523f:	b8 88 01             	mov    ax,0x188
   35242:	8e c0                	mov    es,ax
   35244:	26 a0 6a 96          	mov    al,es:0x966a
   35248:	b4 00                	mov    ah,0x0
   3524a:	50                   	push   ax
   3524b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3524e:	69 c0 94 00          	imul   ax,ax,0x94
   35252:	05 ba 9c             	add    ax,0x9cba
   35255:	68 88 01             	push   0x188
   35258:	50                   	push   ax
   35259:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3525c:	6b c0 26             	imul   ax,ax,0x26
   3525f:	05 14 00             	add    ax,0x14
   35262:	50                   	push   ax
   35263:	68 e7 00             	push   0xe7
   35266:	6a 00                	push   0x0
   35268:	9a 34 00 80 01       	call   0x180:0x34
   3526d:	83 c4 0e             	add    sp,0xe
   35270:	eb 62                	jmp    0x352d4
   35272:	b8 88 01             	mov    ax,0x188
   35275:	8e c0                	mov    es,ax
   35277:	26 a0 69 96          	mov    al,es:0x9669
   3527b:	b4 00                	mov    ah,0x0
   3527d:	50                   	push   ax
   3527e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35281:	69 c0 94 00          	imul   ax,ax,0x94
   35285:	05 ba 9c             	add    ax,0x9cba
   35288:	68 88 01             	push   0x188
   3528b:	50                   	push   ax
   3528c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3528f:	6b c0 26             	imul   ax,ax,0x26
   35292:	05 15 00             	add    ax,0x15
   35295:	50                   	push   ax
   35296:	68 e7 00             	push   0xe7
   35299:	6a 00                	push   0x0
   3529b:	9a 39 00 80 01       	call   0x180:0x39
   352a0:	83 c4 0c             	add    sp,0xc
   352a3:	b8 88 01             	mov    ax,0x188
   352a6:	8e c0                	mov    es,ax
   352a8:	26 a0 6a 96          	mov    al,es:0x966a
   352ac:	b4 00                	mov    ah,0x0
   352ae:	50                   	push   ax
   352af:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   352b2:	69 c0 94 00          	imul   ax,ax,0x94
   352b6:	05 ba 9c             	add    ax,0x9cba
   352b9:	68 88 01             	push   0x188
   352bc:	50                   	push   ax
   352bd:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   352c0:	6b c0 26             	imul   ax,ax,0x26
   352c3:	05 14 00             	add    ax,0x14
   352c6:	50                   	push   ax
   352c7:	68 e7 00             	push   0xe7
   352ca:	6a 00                	push   0x0
   352cc:	9a 39 00 80 01       	call   0x180:0x39
   352d1:	83 c4 0c             	add    sp,0xc
   352d4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   352d7:	6b db 5c             	imul   bx,bx,0x5c
   352da:	b8 88 01             	mov    ax,0x188
   352dd:	8e c0                	mov    es,ax
   352df:	26 8b 87 3c 9a       	mov    ax,WORD PTR es:[bx-0x65c4]
   352e4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   352e7:	6b db 11             	imul   bx,bx,0x11
   352ea:	ba 88 01             	mov    dx,0x188
   352ed:	8e c2                	mov    es,dx
   352ef:	26 3b 87 90 ba       	cmp    ax,WORD PTR es:[bx-0x4570]
   352f4:	75 0b                	jne    0x35301
   352f6:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   352fc:	75 03                	jne    0x35301
   352fe:	e9 1f 01             	jmp    0x35420
   35301:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35304:	6b db 5c             	imul   bx,bx,0x5c
   35307:	b8 88 01             	mov    ax,0x188
   3530a:	8e c0                	mov    es,ax
   3530c:	26 ff b7 3c 9a       	push   WORD PTR es:[bx-0x65c4]
   35311:	1e                   	push   ds
   35312:	68 64 42             	push   0x4264
   35315:	16                   	push   ss
   35316:	8d 46 d0             	lea    ax,[bp-0x30]
   35319:	50                   	push   ax
   3531a:	9a b4 48 00 00       	call   0x0:0x48b4
   3531f:	83 c4 0a             	add    sp,0xa
   35322:	68 e0 01             	push   0x1e0
   35325:	68 d0 02             	push   0x2d0
   35328:	6a 00                	push   0x0
   3532a:	6a 50                	push   0x50
   3532c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3532f:	6b c0 26             	imul   ax,ax,0x26
   35332:	05 1c 00             	add    ax,0x1c
   35335:	50                   	push   ax
   35336:	68 f2 00             	push   0xf2
   35339:	6a 06                	push   0x6
   3533b:	6a 0e                	push   0xe
   3533d:	6a 1c                	push   0x1c
   3533f:	68 0e 01             	push   0x10e
   35342:	9a 30 04 28 00       	call   0x28:0x430
   35347:	83 c4 14             	add    sp,0x14
   3534a:	b8 02 00             	mov    ax,0x2
   3534d:	3d 01 00             	cmp    ax,0x1
   35350:	74 08                	je     0x3535a
   35352:	3d 02 00             	cmp    ax,0x2
   35355:	74 59                	je     0x353b0
   35357:	e9 a6 00             	jmp    0x35400
   3535a:	6a 05                	push   0x5
   3535c:	b8 88 01             	mov    ax,0x188
   3535f:	8e c0                	mov    es,ax
   35361:	26 a0 69 96          	mov    al,es:0x9669
   35365:	b4 00                	mov    ah,0x0
   35367:	50                   	push   ax
   35368:	16                   	push   ss
   35369:	8d 46 d0             	lea    ax,[bp-0x30]
   3536c:	50                   	push   ax
   3536d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35370:	6b c0 26             	imul   ax,ax,0x26
   35373:	05 1d 00             	add    ax,0x1d
   35376:	50                   	push   ax
   35377:	68 f3 00             	push   0xf3
   3537a:	6a 00                	push   0x0
   3537c:	9a 34 00 80 01       	call   0x180:0x34
   35381:	83 c4 0e             	add    sp,0xe
   35384:	6a 05                	push   0x5
   35386:	b8 88 01             	mov    ax,0x188
   35389:	8e c0                	mov    es,ax
   3538b:	26 a0 6a 96          	mov    al,es:0x966a
   3538f:	b4 00                	mov    ah,0x0
   35391:	50                   	push   ax
   35392:	16                   	push   ss
   35393:	8d 46 d0             	lea    ax,[bp-0x30]
   35396:	50                   	push   ax
   35397:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3539a:	6b c0 26             	imul   ax,ax,0x26
   3539d:	05 1c 00             	add    ax,0x1c
   353a0:	50                   	push   ax
   353a1:	68 f2 00             	push   0xf2
   353a4:	6a 00                	push   0x0
   353a6:	9a 34 00 80 01       	call   0x180:0x34
   353ab:	83 c4 0e             	add    sp,0xe
   353ae:	eb 50                	jmp    0x35400
   353b0:	b8 88 01             	mov    ax,0x188
   353b3:	8e c0                	mov    es,ax
   353b5:	26 a0 69 96          	mov    al,es:0x9669
   353b9:	b4 00                	mov    ah,0x0
   353bb:	50                   	push   ax
   353bc:	16                   	push   ss
   353bd:	8d 46 d0             	lea    ax,[bp-0x30]
   353c0:	50                   	push   ax
   353c1:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   353c4:	6b c0 26             	imul   ax,ax,0x26
   353c7:	05 1d 00             	add    ax,0x1d
   353ca:	50                   	push   ax
   353cb:	68 f2 00             	push   0xf2
   353ce:	6a 00                	push   0x0
   353d0:	9a 39 00 80 01       	call   0x180:0x39
   353d5:	83 c4 0c             	add    sp,0xc
   353d8:	b8 88 01             	mov    ax,0x188
   353db:	8e c0                	mov    es,ax
   353dd:	26 a0 6a 96          	mov    al,es:0x966a
   353e1:	b4 00                	mov    ah,0x0
   353e3:	50                   	push   ax
   353e4:	16                   	push   ss
   353e5:	8d 46 d0             	lea    ax,[bp-0x30]
   353e8:	50                   	push   ax
   353e9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   353ec:	6b c0 26             	imul   ax,ax,0x26
   353ef:	05 1c 00             	add    ax,0x1c
   353f2:	50                   	push   ax
   353f3:	68 f2 00             	push   0xf2
   353f6:	6a 00                	push   0x0
   353f8:	9a 39 00 80 01       	call   0x180:0x39
   353fd:	83 c4 0c             	add    sp,0xc
   35400:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35403:	6b db 5c             	imul   bx,bx,0x5c
   35406:	b8 88 01             	mov    ax,0x188
   35409:	8e c0                	mov    es,ax
   3540b:	26 8b 87 3c 9a       	mov    ax,WORD PTR es:[bx-0x65c4]
   35410:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35413:	6b db 11             	imul   bx,bx,0x11
   35416:	ba 88 01             	mov    dx,0x188
   35419:	8e c2                	mov    es,dx
   3541b:	26 89 87 90 ba       	mov    WORD PTR es:[bx-0x4570],ax
   35420:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35423:	6b db 5c             	imul   bx,bx,0x5c
   35426:	b8 88 01             	mov    ax,0x188
   35429:	8e c0                	mov    es,ax
   3542b:	26 8b 87 3a 9a       	mov    ax,WORD PTR es:[bx-0x65c6]
   35430:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35433:	6b db 11             	imul   bx,bx,0x11
   35436:	ba 88 01             	mov    dx,0x188
   35439:	8e c2                	mov    es,dx
   3543b:	26 3b 87 92 ba       	cmp    ax,WORD PTR es:[bx-0x456e]
   35440:	75 0b                	jne    0x3544d
   35442:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   35448:	75 03                	jne    0x3544d
   3544a:	e9 1f 01             	jmp    0x3556c
   3544d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35450:	6b db 5c             	imul   bx,bx,0x5c
   35453:	b8 88 01             	mov    ax,0x188
   35456:	8e c0                	mov    es,ax
   35458:	26 ff b7 3a 9a       	push   WORD PTR es:[bx-0x65c6]
   3545d:	1e                   	push   ds
   3545e:	68 68 42             	push   0x4268
   35461:	16                   	push   ss
   35462:	8d 46 d0             	lea    ax,[bp-0x30]
   35465:	50                   	push   ax
   35466:	9a b4 48 00 00       	call   0x0:0x48b4
   3546b:	83 c4 0a             	add    sp,0xa
   3546e:	68 e0 01             	push   0x1e0
   35471:	68 d0 02             	push   0x2d0
   35474:	6a 00                	push   0x0
   35476:	6a 50                	push   0x50
   35478:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3547b:	6b c0 26             	imul   ax,ax,0x26
   3547e:	05 1c 00             	add    ax,0x1c
   35481:	50                   	push   ax
   35482:	68 0e 01             	push   0x10e
   35485:	6a 06                	push   0x6
   35487:	6a 0e                	push   0xe
   35489:	6a 1c                	push   0x1c
   3548b:	68 0e 01             	push   0x10e
   3548e:	9a 30 04 28 00       	call   0x28:0x430
   35493:	83 c4 14             	add    sp,0x14
   35496:	b8 02 00             	mov    ax,0x2
   35499:	3d 01 00             	cmp    ax,0x1
   3549c:	74 08                	je     0x354a6
   3549e:	3d 02 00             	cmp    ax,0x2
   354a1:	74 59                	je     0x354fc
   354a3:	e9 a6 00             	jmp    0x3554c
   354a6:	6a 05                	push   0x5
   354a8:	b8 88 01             	mov    ax,0x188
   354ab:	8e c0                	mov    es,ax
   354ad:	26 a0 69 96          	mov    al,es:0x9669
   354b1:	b4 00                	mov    ah,0x0
   354b3:	50                   	push   ax
   354b4:	16                   	push   ss
   354b5:	8d 46 d0             	lea    ax,[bp-0x30]
   354b8:	50                   	push   ax
   354b9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   354bc:	6b c0 26             	imul   ax,ax,0x26
   354bf:	05 1d 00             	add    ax,0x1d
   354c2:	50                   	push   ax
   354c3:	68 0f 01             	push   0x10f
   354c6:	6a 00                	push   0x0
   354c8:	9a 34 00 80 01       	call   0x180:0x34
   354cd:	83 c4 0e             	add    sp,0xe
   354d0:	6a 05                	push   0x5
   354d2:	b8 88 01             	mov    ax,0x188
   354d5:	8e c0                	mov    es,ax
   354d7:	26 a0 6a 96          	mov    al,es:0x966a
   354db:	b4 00                	mov    ah,0x0
   354dd:	50                   	push   ax
   354de:	16                   	push   ss
   354df:	8d 46 d0             	lea    ax,[bp-0x30]
   354e2:	50                   	push   ax
   354e3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   354e6:	6b c0 26             	imul   ax,ax,0x26
   354e9:	05 1c 00             	add    ax,0x1c
   354ec:	50                   	push   ax
   354ed:	68 0e 01             	push   0x10e
   354f0:	6a 00                	push   0x0
   354f2:	9a 34 00 80 01       	call   0x180:0x34
   354f7:	83 c4 0e             	add    sp,0xe
   354fa:	eb 50                	jmp    0x3554c
   354fc:	b8 88 01             	mov    ax,0x188
   354ff:	8e c0                	mov    es,ax
   35501:	26 a0 69 96          	mov    al,es:0x9669
   35505:	b4 00                	mov    ah,0x0
   35507:	50                   	push   ax
   35508:	16                   	push   ss
   35509:	8d 46 d0             	lea    ax,[bp-0x30]
   3550c:	50                   	push   ax
   3550d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35510:	6b c0 26             	imul   ax,ax,0x26
   35513:	05 1d 00             	add    ax,0x1d
   35516:	50                   	push   ax
   35517:	68 0e 01             	push   0x10e
   3551a:	6a 00                	push   0x0
   3551c:	9a 39 00 80 01       	call   0x180:0x39
   35521:	83 c4 0c             	add    sp,0xc
   35524:	b8 88 01             	mov    ax,0x188
   35527:	8e c0                	mov    es,ax
   35529:	26 a0 6a 96          	mov    al,es:0x966a
   3552d:	b4 00                	mov    ah,0x0
   3552f:	50                   	push   ax
   35530:	16                   	push   ss
   35531:	8d 46 d0             	lea    ax,[bp-0x30]
   35534:	50                   	push   ax
   35535:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35538:	6b c0 26             	imul   ax,ax,0x26
   3553b:	05 1c 00             	add    ax,0x1c
   3553e:	50                   	push   ax
   3553f:	68 0e 01             	push   0x10e
   35542:	6a 00                	push   0x0
   35544:	9a 39 00 80 01       	call   0x180:0x39
   35549:	83 c4 0c             	add    sp,0xc
   3554c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3554f:	6b db 5c             	imul   bx,bx,0x5c
   35552:	b8 88 01             	mov    ax,0x188
   35555:	8e c0                	mov    es,ax
   35557:	26 8b 87 3a 9a       	mov    ax,WORD PTR es:[bx-0x65c6]
   3555c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3555f:	6b db 11             	imul   bx,bx,0x11
   35562:	ba 88 01             	mov    dx,0x188
   35565:	8e c2                	mov    es,dx
   35567:	26 89 87 92 ba       	mov    WORD PTR es:[bx-0x456e],ax
   3556c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3556f:	6b db 5c             	imul   bx,bx,0x5c
   35572:	b8 88 01             	mov    ax,0x188
   35575:	8e c0                	mov    es,ax
   35577:	26 8b 87 24 9a       	mov    ax,WORD PTR es:[bx-0x65dc]
   3557c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3557f:	6b db 11             	imul   bx,bx,0x11
   35582:	ba 88 01             	mov    dx,0x188
   35585:	8e c2                	mov    es,dx
   35587:	26 3b 87 96 ba       	cmp    ax,WORD PTR es:[bx-0x456a]
   3558c:	75 0b                	jne    0x35599
   3558e:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   35594:	75 03                	jne    0x35599
   35596:	e9 21 01             	jmp    0x356ba
   35599:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3559c:	6b db 5c             	imul   bx,bx,0x5c
   3559f:	b8 88 01             	mov    ax,0x188
   355a2:	8e c0                	mov    es,ax
   355a4:	26 8b 87 24 9a       	mov    ax,WORD PTR es:[bx-0x65dc]
   355a9:	50                   	push   ax
   355aa:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   355ad:	99                   	cwd
   355ae:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   355b1:	8b d8                	mov    bx,ax
   355b3:	58                   	pop    ax
   355b4:	99                   	cwd
   355b5:	f7 fb                	idiv   bx
   355b7:	3b 46 f0             	cmp    ax,WORD PTR [bp-0x10]
   355ba:	7e 05                	jle    0x355c1
   355bc:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   355bf:	eb 1e                	jmp    0x355df
   355c1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   355c4:	6b db 5c             	imul   bx,bx,0x5c
   355c7:	b8 88 01             	mov    ax,0x188
   355ca:	8e c0                	mov    es,ax
   355cc:	26 8b 87 24 9a       	mov    ax,WORD PTR es:[bx-0x65dc]
   355d1:	50                   	push   ax
   355d2:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   355d5:	99                   	cwd
   355d6:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   355d9:	8b d8                	mov    bx,ax
   355db:	58                   	pop    ax
   355dc:	99                   	cwd
   355dd:	f7 fb                	idiv   bx
   355df:	3d 01 00             	cmp    ax,0x1
   355e2:	7d 05                	jge    0x355e9
   355e4:	b8 01 00             	mov    ax,0x1
   355e7:	eb 46                	jmp    0x3562f
   355e9:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   355ec:	6b db 5c             	imul   bx,bx,0x5c
   355ef:	b8 88 01             	mov    ax,0x188
   355f2:	8e c0                	mov    es,ax
   355f4:	26 8b 87 24 9a       	mov    ax,WORD PTR es:[bx-0x65dc]
   355f9:	50                   	push   ax
   355fa:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   355fd:	99                   	cwd
   355fe:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   35601:	8b d8                	mov    bx,ax
   35603:	58                   	pop    ax
   35604:	99                   	cwd
   35605:	f7 fb                	idiv   bx
   35607:	3b 46 f0             	cmp    ax,WORD PTR [bp-0x10]
   3560a:	7e 05                	jle    0x35611
   3560c:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   3560f:	eb 1e                	jmp    0x3562f
   35611:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35614:	6b db 5c             	imul   bx,bx,0x5c
   35617:	b8 88 01             	mov    ax,0x188
   3561a:	8e c0                	mov    es,ax
   3561c:	26 8b 87 24 9a       	mov    ax,WORD PTR es:[bx-0x65dc]
   35621:	50                   	push   ax
   35622:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   35625:	99                   	cwd
   35626:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   35629:	8b d8                	mov    bx,ax
   3562b:	58                   	pop    ax
   3562c:	99                   	cwd
   3562d:	f7 fb                	idiv   bx
   3562f:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   35632:	6a 00                	push   0x0
   35634:	6a 00                	push   0x0
   35636:	b8 18 00             	mov    ax,0x18
   35639:	2b 46 f4             	sub    ax,WORD PTR [bp-0xc]
   3563c:	50                   	push   ax
   3563d:	6a 07                	push   0x7
   3563f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35642:	6b c0 26             	imul   ax,ax,0x26
   35645:	05 09 00             	add    ax,0x9
   35648:	50                   	push   ax
   35649:	68 34 01             	push   0x134
   3564c:	9a 08 09 28 00       	call   0x28:0x908
   35651:	83 c4 0c             	add    sp,0xc
   35654:	68 e0 01             	push   0x1e0
   35657:	68 d0 02             	push   0x2d0
   3565a:	6a 00                	push   0x0
   3565c:	6a 4e                	push   0x4e
   3565e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35661:	6b c0 26             	imul   ax,ax,0x26
   35664:	05 21 00             	add    ax,0x21
   35667:	2b 46 f4             	sub    ax,WORD PTR [bp-0xc]
   3566a:	50                   	push   ax
   3566b:	68 34 01             	push   0x134
   3566e:	ff 76 f4             	push   WORD PTR [bp-0xc]
   35671:	6a 07                	push   0x7
   35673:	6a 00                	push   0x0
   35675:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35678:	6b db 5c             	imul   bx,bx,0x5c
   3567b:	b8 88 01             	mov    ax,0x188
   3567e:	8e c0                	mov    es,ax
   35680:	26 81 bf 24 9a f4 01 	cmp    WORD PTR es:[bx-0x65dc],0x1f4
   35687:	7e 05                	jle    0x3568e
   35689:	b8 b5 00             	mov    ax,0xb5
   3568c:	eb 03                	jmp    0x35691
   3568e:	b8 ae 00             	mov    ax,0xae
   35691:	50                   	push   ax
   35692:	9a 30 04 28 00       	call   0x28:0x430
   35697:	83 c4 14             	add    sp,0x14
   3569a:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3569d:	6b db 5c             	imul   bx,bx,0x5c
   356a0:	b8 88 01             	mov    ax,0x188
   356a3:	8e c0                	mov    es,ax
   356a5:	26 8b 87 24 9a       	mov    ax,WORD PTR es:[bx-0x65dc]
   356aa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   356ad:	6b db 11             	imul   bx,bx,0x11
   356b0:	ba 88 01             	mov    dx,0x188
   356b3:	8e c2                	mov    es,dx
   356b5:	26 89 87 96 ba       	mov    WORD PTR es:[bx-0x456a],ax
   356ba:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   356bd:	6b db 5c             	imul   bx,bx,0x5c
   356c0:	b8 88 01             	mov    ax,0x188
   356c3:	8e c0                	mov    es,ax
   356c5:	26 8b 87 2c 9a       	mov    ax,WORD PTR es:[bx-0x65d4]
   356ca:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   356cd:	6b db 11             	imul   bx,bx,0x11
   356d0:	ba 88 01             	mov    dx,0x188
   356d3:	8e c2                	mov    es,dx
   356d5:	26 3b 87 94 ba       	cmp    ax,WORD PTR es:[bx-0x456c]
   356da:	75 0b                	jne    0x356e7
   356dc:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   356e2:	75 03                	jne    0x356e7
   356e4:	e9 21 01             	jmp    0x35808
   356e7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   356ea:	6b db 5c             	imul   bx,bx,0x5c
   356ed:	b8 88 01             	mov    ax,0x188
   356f0:	8e c0                	mov    es,ax
   356f2:	26 8b 87 2c 9a       	mov    ax,WORD PTR es:[bx-0x65d4]
   356f7:	50                   	push   ax
   356f8:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   356fb:	99                   	cwd
   356fc:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   356ff:	8b d8                	mov    bx,ax
   35701:	58                   	pop    ax
   35702:	99                   	cwd
   35703:	f7 fb                	idiv   bx
   35705:	3b 46 f0             	cmp    ax,WORD PTR [bp-0x10]
   35708:	7e 05                	jle    0x3570f
   3570a:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   3570d:	eb 1e                	jmp    0x3572d
   3570f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35712:	6b db 5c             	imul   bx,bx,0x5c
   35715:	b8 88 01             	mov    ax,0x188
   35718:	8e c0                	mov    es,ax
   3571a:	26 8b 87 2c 9a       	mov    ax,WORD PTR es:[bx-0x65d4]
   3571f:	50                   	push   ax
   35720:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   35723:	99                   	cwd
   35724:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   35727:	8b d8                	mov    bx,ax
   35729:	58                   	pop    ax
   3572a:	99                   	cwd
   3572b:	f7 fb                	idiv   bx
   3572d:	3d 01 00             	cmp    ax,0x1
   35730:	7d 05                	jge    0x35737
   35732:	b8 01 00             	mov    ax,0x1
   35735:	eb 46                	jmp    0x3577d
   35737:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3573a:	6b db 5c             	imul   bx,bx,0x5c
   3573d:	b8 88 01             	mov    ax,0x188
   35740:	8e c0                	mov    es,ax
   35742:	26 8b 87 2c 9a       	mov    ax,WORD PTR es:[bx-0x65d4]
   35747:	50                   	push   ax
   35748:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   3574b:	99                   	cwd
   3574c:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   3574f:	8b d8                	mov    bx,ax
   35751:	58                   	pop    ax
   35752:	99                   	cwd
   35753:	f7 fb                	idiv   bx
   35755:	3b 46 f0             	cmp    ax,WORD PTR [bp-0x10]
   35758:	7e 05                	jle    0x3575f
   3575a:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   3575d:	eb 1e                	jmp    0x3577d
   3575f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35762:	6b db 5c             	imul   bx,bx,0x5c
   35765:	b8 88 01             	mov    ax,0x188
   35768:	8e c0                	mov    es,ax
   3576a:	26 8b 87 2c 9a       	mov    ax,WORD PTR es:[bx-0x65d4]
   3576f:	50                   	push   ax
   35770:	8b 46 f0             	mov    ax,WORD PTR [bp-0x10]
   35773:	99                   	cwd
   35774:	f7 7e ee             	idiv   WORD PTR [bp-0x12]
   35777:	8b d8                	mov    bx,ax
   35779:	58                   	pop    ax
   3577a:	99                   	cwd
   3577b:	f7 fb                	idiv   bx
   3577d:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   35780:	6a 00                	push   0x0
   35782:	6a 00                	push   0x0
   35784:	b8 18 00             	mov    ax,0x18
   35787:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   3578a:	50                   	push   ax
   3578b:	6a 07                	push   0x7
   3578d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35790:	6b c0 26             	imul   ax,ax,0x26
   35793:	05 09 00             	add    ax,0x9
   35796:	50                   	push   ax
   35797:	68 2c 01             	push   0x12c
   3579a:	9a 08 09 28 00       	call   0x28:0x908
   3579f:	83 c4 0c             	add    sp,0xc
   357a2:	68 e0 01             	push   0x1e0
   357a5:	68 d0 02             	push   0x2d0
   357a8:	6a 00                	push   0x0
   357aa:	6a 4e                	push   0x4e
   357ac:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   357af:	6b c0 26             	imul   ax,ax,0x26
   357b2:	05 21 00             	add    ax,0x21
   357b5:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   357b8:	50                   	push   ax
   357b9:	68 2c 01             	push   0x12c
   357bc:	ff 76 f2             	push   WORD PTR [bp-0xe]
   357bf:	6a 07                	push   0x7
   357c1:	6a 00                	push   0x0
   357c3:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   357c6:	6b db 5c             	imul   bx,bx,0x5c
   357c9:	b8 88 01             	mov    ax,0x188
   357cc:	8e c0                	mov    es,ax
   357ce:	26 81 bf 2c 9a f4 01 	cmp    WORD PTR es:[bx-0x65d4],0x1f4
   357d5:	7e 05                	jle    0x357dc
   357d7:	b8 b5 00             	mov    ax,0xb5
   357da:	eb 03                	jmp    0x357df
   357dc:	b8 ae 00             	mov    ax,0xae
   357df:	50                   	push   ax
   357e0:	9a 30 04 28 00       	call   0x28:0x430
   357e5:	83 c4 14             	add    sp,0x14
   357e8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   357eb:	6b db 5c             	imul   bx,bx,0x5c
   357ee:	b8 88 01             	mov    ax,0x188
   357f1:	8e c0                	mov    es,ax
   357f3:	26 8b 87 2c 9a       	mov    ax,WORD PTR es:[bx-0x65d4]
   357f8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   357fb:	6b db 11             	imul   bx,bx,0x11
   357fe:	ba 88 01             	mov    dx,0x188
   35801:	8e c2                	mov    es,dx
   35803:	26 89 87 94 ba       	mov    WORD PTR es:[bx-0x456c],ax
   35808:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3580b:	6b db 11             	imul   bx,bx,0x11
   3580e:	b8 88 01             	mov    ax,0x188
   35811:	8e c0                	mov    es,ax
   35813:	26 c6 87 89 ba 00    	mov    BYTE PTR es:[bx-0x4577],0x0
   35819:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3581c:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   35820:	7d 03                	jge    0x35825
   35822:	e9 d3 f5             	jmp    0x34df8
   35825:	b8 88 01             	mov    ax,0x188
   35828:	8e c0                	mov    es,ax
   3582a:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3582f:	50                   	push   ax
   35830:	9a 69 00 30 00       	call   0x30:0x69
   35835:	59                   	pop    cx
   35836:	9a 5c 00 30 01       	call   0x130:0x5c
   3583b:	c9                   	leave
   3583c:	cb                   	retf
   3583d:	55                   	push   bp
   3583e:	8b ec                	mov    bp,sp
   35840:	b8 88 01             	mov    ax,0x188
   35843:	8e c0                	mov    es,ax
   35845:	26 c7 06 f3 b9 09 00 	mov    WORD PTR es:0xb9f3,0x9
   3584c:	b8 88 01             	mov    ax,0x188
   3584f:	8e c0                	mov    es,ax
   35851:	26 c7 06 f1 b9 09 00 	mov    WORD PTR es:0xb9f1,0x9
   35858:	5d                   	pop    bp
   35859:	cb                   	retf
   3585a:	55                   	push   bp
   3585b:	8b ec                	mov    bp,sp
   3585d:	6a 50                	push   0x50
   3585f:	1e                   	push   ds
   35860:	68 6c 42             	push   0x426c
   35863:	6a 01                	push   0x1
   35865:	9a 20 00 48 01       	call   0x148:0x20
   3586a:	83 c4 08             	add    sp,0x8
   3586d:	6a 01                	push   0x1
   3586f:	6a 50                	push   0x50
   35871:	6a 5e                	push   0x5e
   35873:	6a 15                	push   0x15
   35875:	9a 4a 0e 20 00       	call   0x20:0xe4a
   3587a:	83 c4 08             	add    sp,0x8
   3587d:	68 e0 01             	push   0x1e0
   35880:	68 d0 02             	push   0x2d0
   35883:	6a 15                	push   0x15
   35885:	6a 50                	push   0x50
   35887:	6a 00                	push   0x0
   35889:	6a 00                	push   0x0
   3588b:	b8 88 01             	mov    ax,0x188
   3588e:	8e c0                	mov    es,ax
   35890:	26 ff 36 45 e3       	push   WORD PTR es:0xe345
   35895:	b8 88 01             	mov    ax,0x188
   35898:	8e c0                	mov    es,ax
   3589a:	26 ff 36 43 e3       	push   WORD PTR es:0xe343
   3589f:	6a 46                	push   0x46
   358a1:	6a 32                	push   0x32
   358a3:	9a 30 04 28 00       	call   0x28:0x430
   358a8:	83 c4 14             	add    sp,0x14
   358ab:	6a 53                	push   0x53
   358ad:	1e                   	push   ds
   358ae:	68 79 42             	push   0x4279
   358b1:	6a 01                	push   0x1
   358b3:	9a 20 00 48 01       	call   0x148:0x20
   358b8:	83 c4 08             	add    sp,0x8
   358bb:	6a 51                	push   0x51
   358bd:	1e                   	push   ds
   358be:	68 83 42             	push   0x4283
   358c1:	6a 01                	push   0x1
   358c3:	9a 20 00 48 01       	call   0x148:0x20
   358c8:	83 c4 08             	add    sp,0x8
   358cb:	6a 4d                	push   0x4d
   358cd:	1e                   	push   ds
   358ce:	68 8e 42             	push   0x428e
   358d1:	6a 01                	push   0x1
   358d3:	9a 20 00 48 01       	call   0x148:0x20
   358d8:	83 c4 08             	add    sp,0x8
   358db:	6a 4c                	push   0x4c
   358dd:	1e                   	push   ds
   358de:	68 9b 42             	push   0x429b
   358e1:	6a 01                	push   0x1
   358e3:	9a 20 00 48 01       	call   0x148:0x20
   358e8:	83 c4 08             	add    sp,0x8
   358eb:	6a 4b                	push   0x4b
   358ed:	1e                   	push   ds
   358ee:	68 a6 42             	push   0x42a6
   358f1:	6a 01                	push   0x1
   358f3:	9a 20 00 48 01       	call   0x148:0x20
   358f8:	83 c4 08             	add    sp,0x8
   358fb:	6a 4e                	push   0x4e
   358fd:	1e                   	push   ds
   358fe:	68 b3 42             	push   0x42b3
   35901:	6a 01                	push   0x1
   35903:	9a 20 00 48 01       	call   0x148:0x20
   35908:	83 c4 08             	add    sp,0x8
   3590b:	5d                   	pop    bp
   3590c:	cb                   	retf
   3590d:	55                   	push   bp
   3590e:	8b ec                	mov    bp,sp
   35910:	83 ec 0a             	sub    sp,0xa
   35913:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35916:	01 06 64 3d          	add    WORD PTR ds:0x3d64,ax
   3591a:	a1 64 3d             	mov    ax,ds:0x3d64
   3591d:	bb 3c 00             	mov    bx,0x3c
   35920:	99                   	cwd
   35921:	f7 fb                	idiv   bx
   35923:	01 06 66 3d          	add    WORD PTR ds:0x3d66,ax
   35927:	a1 66 3d             	mov    ax,ds:0x3d66
   3592a:	bb 18 00             	mov    bx,0x18
   3592d:	99                   	cwd
   3592e:	f7 fb                	idiv   bx
   35930:	01 06 68 3d          	add    WORD PTR ds:0x3d68,ax
   35934:	bb 3c 00             	mov    bx,0x3c
   35937:	a1 64 3d             	mov    ax,ds:0x3d64
   3593a:	99                   	cwd
   3593b:	f7 fb                	idiv   bx
   3593d:	89 16 64 3d          	mov    WORD PTR ds:0x3d64,dx
   35941:	bb 18 00             	mov    bx,0x18
   35944:	a1 66 3d             	mov    ax,ds:0x3d66
   35947:	99                   	cwd
   35948:	f7 fb                	idiv   bx
   3594a:	89 16 66 3d          	mov    WORD PTR ds:0x3d66,dx
   3594e:	bb 68 01             	mov    bx,0x168
   35951:	a1 68 3d             	mov    ax,ds:0x3d68
   35954:	99                   	cwd
   35955:	f7 fb                	idiv   bx
   35957:	89 16 68 3d          	mov    WORD PTR ds:0x3d68,dx
   3595b:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   35960:	e9 95 01             	jmp    0x35af8
   35963:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   35968:	e9 81 01             	jmp    0x35aec
   3596b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   3596e:	6b c0 64             	imul   ax,ax,0x64
   35971:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35974:	6b db 5c             	imul   bx,bx,0x5c
   35977:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   3597a:	d1 e2                	shl    dx,1
   3597c:	03 da                	add    bx,dx
   3597e:	ba 88 01             	mov    dx,0x188
   35981:	8e c2                	mov    es,dx
   35983:	26 8b 97 d2 99       	mov    dx,WORD PTR es:[bx-0x662e]
   35988:	2b d0                	sub    dx,ax
   3598a:	0b d2                	or     dx,dx
   3598c:	7d 04                	jge    0x35992
   3598e:	33 c0                	xor    ax,ax
   35990:	eb 21                	jmp    0x359b3
   35992:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35995:	6b c0 64             	imul   ax,ax,0x64
   35998:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3599b:	6b db 5c             	imul   bx,bx,0x5c
   3599e:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   359a1:	d1 e2                	shl    dx,1
   359a3:	03 da                	add    bx,dx
   359a5:	ba 88 01             	mov    dx,0x188
   359a8:	8e c2                	mov    es,dx
   359aa:	50                   	push   ax
   359ab:	26 8b 87 d2 99       	mov    ax,WORD PTR es:[bx-0x662e]
   359b0:	5a                   	pop    dx
   359b1:	2b c2                	sub    ax,dx
   359b3:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   359b6:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   359ba:	74 1c                	je     0x359d8
   359bc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   359bf:	6b db 5c             	imul   bx,bx,0x5c
   359c2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   359c5:	d1 e0                	shl    ax,1
   359c7:	03 d8                	add    bx,ax
   359c9:	b8 88 01             	mov    ax,0x188
   359cc:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   359cf:	8e c0                	mov    es,ax
   359d1:	26 89 97 d2 99       	mov    WORD PTR es:[bx-0x662e],dx
   359d6:	eb 52                	jmp    0x35a2a
   359d8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   359db:	40                   	inc    ax
   359dc:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   359df:	eb 31                	jmp    0x35a12
   359e1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   359e4:	6b db 5c             	imul   bx,bx,0x5c
   359e7:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   359ea:	d1 e0                	shl    ax,1
   359ec:	03 d8                	add    bx,ax
   359ee:	b8 88 01             	mov    ax,0x188
   359f1:	8e c0                	mov    es,ax
   359f3:	26 8b 87 d2 99       	mov    ax,WORD PTR es:[bx-0x662e]
   359f8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   359fb:	6b db 5c             	imul   bx,bx,0x5c
   359fe:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   35a01:	d1 e2                	shl    dx,1
   35a03:	03 da                	add    bx,dx
   35a05:	ba 88 01             	mov    dx,0x188
   35a08:	8e c2                	mov    es,dx
   35a0a:	26 89 87 d0 99       	mov    WORD PTR es:[bx-0x6630],ax
   35a0f:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   35a12:	83 7e fa 05          	cmp    WORD PTR [bp-0x6],0x5
   35a16:	7e c9                	jle    0x359e1
   35a18:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a1b:	6b db 5c             	imul   bx,bx,0x5c
   35a1e:	b8 88 01             	mov    ax,0x188
   35a21:	8e c0                	mov    es,ax
   35a23:	26 c7 87 dc 99 00 00 	mov    WORD PTR es:[bx-0x6624],0x0
   35a2a:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35a2d:	6b c0 64             	imul   ax,ax,0x64
   35a30:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a33:	6b db 28             	imul   bx,bx,0x28
   35a36:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   35a39:	d1 e2                	shl    dx,1
   35a3b:	03 da                	add    bx,dx
   35a3d:	ba 88 01             	mov    dx,0x188
   35a40:	8e c2                	mov    es,dx
   35a42:	26 8b 97 5e a4       	mov    dx,WORD PTR es:[bx-0x5ba2]
   35a47:	2b d0                	sub    dx,ax
   35a49:	0b d2                	or     dx,dx
   35a4b:	7d 04                	jge    0x35a51
   35a4d:	33 c0                	xor    ax,ax
   35a4f:	eb 21                	jmp    0x35a72
   35a51:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35a54:	6b c0 64             	imul   ax,ax,0x64
   35a57:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a5a:	6b db 28             	imul   bx,bx,0x28
   35a5d:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   35a60:	d1 e2                	shl    dx,1
   35a62:	03 da                	add    bx,dx
   35a64:	ba 88 01             	mov    dx,0x188
   35a67:	8e c2                	mov    es,dx
   35a69:	50                   	push   ax
   35a6a:	26 8b 87 5e a4       	mov    ax,WORD PTR es:[bx-0x5ba2]
   35a6f:	5a                   	pop    dx
   35a70:	2b c2                	sub    ax,dx
   35a72:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   35a75:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   35a79:	74 1c                	je     0x35a97
   35a7b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a7e:	6b db 28             	imul   bx,bx,0x28
   35a81:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   35a84:	d1 e0                	shl    ax,1
   35a86:	03 d8                	add    bx,ax
   35a88:	b8 88 01             	mov    ax,0x188
   35a8b:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   35a8e:	8e c0                	mov    es,ax
   35a90:	26 89 97 5e a4       	mov    WORD PTR es:[bx-0x5ba2],dx
   35a95:	eb 52                	jmp    0x35ae9
   35a97:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   35a9a:	40                   	inc    ax
   35a9b:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   35a9e:	eb 31                	jmp    0x35ad1
   35aa0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35aa3:	6b db 28             	imul   bx,bx,0x28
   35aa6:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   35aa9:	d1 e0                	shl    ax,1
   35aab:	03 d8                	add    bx,ax
   35aad:	b8 88 01             	mov    ax,0x188
   35ab0:	8e c0                	mov    es,ax
   35ab2:	26 8b 87 5e a4       	mov    ax,WORD PTR es:[bx-0x5ba2]
   35ab7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35aba:	6b db 28             	imul   bx,bx,0x28
   35abd:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   35ac0:	d1 e2                	shl    dx,1
   35ac2:	03 da                	add    bx,dx
   35ac4:	ba 88 01             	mov    dx,0x188
   35ac7:	8e c2                	mov    es,dx
   35ac9:	26 89 87 5c a4       	mov    WORD PTR es:[bx-0x5ba4],ax
   35ace:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   35ad1:	83 7e fa 05          	cmp    WORD PTR [bp-0x6],0x5
   35ad5:	7e c9                	jle    0x35aa0
   35ad7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35ada:	6b db 28             	imul   bx,bx,0x28
   35add:	b8 88 01             	mov    ax,0x188
   35ae0:	8e c0                	mov    es,ax
   35ae2:	26 c7 87 68 a4 00 00 	mov    WORD PTR es:[bx-0x5b98],0x0
   35ae9:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   35aec:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   35af0:	7f 03                	jg     0x35af5
   35af2:	e9 76 fe             	jmp    0x3596b
   35af5:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   35af8:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   35afc:	7f 03                	jg     0x35b01
   35afe:	e9 62 fe             	jmp    0x35963
   35b01:	c9                   	leave
   35b02:	cb                   	retf
   35b03:	55                   	push   bp
   35b04:	8b ec                	mov    bp,sp
   35b06:	83 ec 02             	sub    sp,0x2
   35b09:	a1 5e 3d             	mov    ax,ds:0x3d5e
   35b0c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   35b0f:	83 3e 66 3d 07       	cmp    WORD PTR ds:0x3d66,0x7
   35b14:	7c 0d                	jl     0x35b23
   35b16:	83 3e 66 3d 11       	cmp    WORD PTR ds:0x3d66,0x11
   35b1b:	7f 06                	jg     0x35b23
   35b1d:	83 66 fe fe          	and    WORD PTR [bp-0x2],0xfffe
   35b21:	eb 04                	jmp    0x35b27
   35b23:	83 4e fe 01          	or     WORD PTR [bp-0x2],0x1
   35b27:	b8 88 01             	mov    ax,0x188
   35b2a:	8e c0                	mov    es,ax
   35b2c:	26 a0 eb b9          	mov    al,es:0xb9eb
   35b30:	b4 00                	mov    ah,0x0
   35b32:	ba 88 01             	mov    dx,0x188
   35b35:	8e c2                	mov    es,dx
   35b37:	50                   	push   ax
   35b38:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   35b3c:	5a                   	pop    dx
   35b3d:	f7 ea                	imul   dx
   35b3f:	ba 88 01             	mov    dx,0x188
   35b42:	8e c2                	mov    es,dx
   35b44:	50                   	push   ax
   35b45:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   35b49:	5a                   	pop    dx
   35b4a:	03 c2                	add    ax,dx
   35b4c:	6b c0 0f             	imul   ax,ax,0xf
   35b4f:	05 08 00             	add    ax,0x8
   35b52:	99                   	cwd
   35b53:	bb 88 01             	mov    bx,0x188
   35b56:	8e c3                	mov    es,bx
   35b58:	50                   	push   ax
   35b59:	52                   	push   dx
   35b5a:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   35b5f:	26 a1 ec b9          	mov    ax,es:0xb9ec
   35b63:	59                   	pop    cx
   35b64:	5b                   	pop    bx
   35b65:	9a 77 14 00 00       	call   0x0:0x1477
   35b6a:	8b d8                	mov    bx,ax
   35b6c:	8e c2                	mov    es,dx
   35b6e:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   35b72:	74 06                	je     0x35b7a
   35b74:	83 4e fe 02          	or     WORD PTR [bp-0x2],0x2
   35b78:	eb 04                	jmp    0x35b7e
   35b7a:	83 66 fe fd          	and    WORD PTR [bp-0x2],0xfffd
   35b7e:	b8 88 01             	mov    ax,0x188
   35b81:	8e c0                	mov    es,ax
   35b83:	26 a0 eb b9          	mov    al,es:0xb9eb
   35b87:	b4 00                	mov    ah,0x0
   35b89:	ba 88 01             	mov    dx,0x188
   35b8c:	8e c2                	mov    es,dx
   35b8e:	50                   	push   ax
   35b8f:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   35b93:	5a                   	pop    dx
   35b94:	f7 ea                	imul   dx
   35b96:	ba 88 01             	mov    dx,0x188
   35b99:	8e c2                	mov    es,dx
   35b9b:	50                   	push   ax
   35b9c:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   35ba0:	5a                   	pop    dx
   35ba1:	03 c2                	add    ax,dx
   35ba3:	6b c0 0f             	imul   ax,ax,0xf
   35ba6:	05 0a 00             	add    ax,0xa
   35ba9:	99                   	cwd
   35baa:	bb 88 01             	mov    bx,0x188
   35bad:	8e c3                	mov    es,bx
   35baf:	50                   	push   ax
   35bb0:	52                   	push   dx
   35bb1:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   35bb6:	26 a1 ec b9          	mov    ax,es:0xb9ec
   35bba:	59                   	pop    cx
   35bbb:	5b                   	pop    bx
   35bbc:	9a 77 14 00 00       	call   0x0:0x1477
   35bc1:	8b d8                	mov    bx,ax
   35bc3:	8e c2                	mov    es,dx
   35bc5:	26 80 3f 00          	cmp    BYTE PTR es:[bx],0x0
   35bc9:	74 06                	je     0x35bd1
   35bcb:	83 4e fe 08          	or     WORD PTR [bp-0x2],0x8
   35bcf:	eb 04                	jmp    0x35bd5
   35bd1:	83 66 fe f7          	and    WORD PTR [bp-0x2],0xfff7
   35bd5:	83 66 fe ef          	and    WORD PTR [bp-0x2],0xffef
   35bd9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35bdc:	c9                   	leave
   35bdd:	cb                   	retf
   35bde:	55                   	push   bp
   35bdf:	8b ec                	mov    bp,sp
   35be1:	83 ec 02             	sub    sp,0x2
   35be4:	0e                   	push   cs
   35be5:	e8 1b ff             	call   0x35b03
   35be8:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   35beb:	a1 5e 3d             	mov    ax,ds:0x3d5e
   35bee:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   35bf1:	75 03                	jne    0x35bf6
   35bf3:	e9 e8 00             	jmp    0x35cde
   35bf6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35bf9:	33 06 5e 3d          	xor    ax,WORD PTR ds:0x3d5e
   35bfd:	a9 02 00             	test   ax,0x2
   35c00:	74 5d                	je     0x35c5f
   35c02:	f7 46 fe 02 00       	test   WORD PTR [bp-0x2],0x2
   35c07:	74 22                	je     0x35c2b
   35c09:	83 06 6e 3d 1e       	add    WORD PTR ds:0x3d6e,0x1e
   35c0e:	83 06 72 3d 0a       	add    WORD PTR ds:0x3d72,0xa
   35c13:	f7 06 5e 3d 01 00    	test   WORD PTR ds:0x3d5e,0x1
   35c19:	74 07                	je     0x35c22
   35c1b:	83 06 70 3d 05       	add    WORD PTR ds:0x3d70,0x5
   35c20:	eb 2c                	jmp    0x35c4e
   35c22:	83 2e 70 3d 14       	sub    WORD PTR ds:0x3d70,0x14
   35c27:	eb 25                	jmp    0x35c4e
   35c29:	eb 23                	jmp    0x35c4e
   35c2b:	83 2e 6e 3d 1e       	sub    WORD PTR ds:0x3d6e,0x1e
   35c30:	83 2e 72 3d 05       	sub    WORD PTR ds:0x3d72,0x5
   35c35:	f7 06 5e 3d 01 00    	test   WORD PTR ds:0x3d5e,0x1
   35c3b:	74 0c                	je     0x35c49
   35c3d:	83 2e 70 3d 05       	sub    WORD PTR ds:0x3d70,0x5
   35c42:	83 2e 72 3d 05       	sub    WORD PTR ds:0x3d72,0x5
   35c47:	eb 05                	jmp    0x35c4e
   35c49:	83 06 70 3d 14       	add    WORD PTR ds:0x3d70,0x14
   35c4e:	a1 5e 3d             	mov    ax,ds:0x3d5e
   35c51:	25 fd ff             	and    ax,0xfffd
   35c54:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   35c57:	83 e2 02             	and    dx,0x2
   35c5a:	0b c2                	or     ax,dx
   35c5c:	a3 5e 3d             	mov    ds:0x3d5e,ax
   35c5f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35c62:	33 06 5e 3d          	xor    ax,WORD PTR ds:0x3d5e
   35c66:	a9 01 00             	test   ax,0x1
   35c69:	74 48                	je     0x35cb3
   35c6b:	f7 46 fe 01 00       	test   WORD PTR [bp-0x2],0x1
   35c70:	74 19                	je     0x35c8b
   35c72:	f7 06 5e 3d 02 00    	test   WORD PTR ds:0x3d5e,0x2
   35c78:	75 0a                	jne    0x35c84
   35c7a:	83 2e 72 3d 14       	sub    WORD PTR ds:0x3d72,0x14
   35c7f:	83 2e 70 3d 19       	sub    WORD PTR ds:0x3d70,0x19
   35c84:	80 0e 6d 3d 02       	or     BYTE PTR ds:0x3d6d,0x2
   35c89:	eb 17                	jmp    0x35ca2
   35c8b:	f7 06 5e 3d 02 00    	test   WORD PTR ds:0x3d5e,0x2
   35c91:	75 0a                	jne    0x35c9d
   35c93:	83 06 72 3d 14       	add    WORD PTR ds:0x3d72,0x14
   35c98:	83 06 70 3d 19       	add    WORD PTR ds:0x3d70,0x19
   35c9d:	80 26 6d 3d fd       	and    BYTE PTR ds:0x3d6d,0xfd
   35ca2:	a1 5e 3d             	mov    ax,ds:0x3d5e
   35ca5:	25 fe ff             	and    ax,0xfffe
   35ca8:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   35cab:	83 e2 01             	and    dx,0x1
   35cae:	0b c2                	or     ax,dx
   35cb0:	a3 5e 3d             	mov    ds:0x3d5e,ax
   35cb3:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   35cb9:	74 1d                	je     0x35cd8
   35cbb:	b8 88 01             	mov    ax,0x188
   35cbe:	8e c0                	mov    es,ax
   35cc0:	26 a1 1e 73          	mov    ax,es:0x731e
   35cc4:	01 06 70 3d          	add    WORD PTR ds:0x3d70,ax
   35cc8:	b8 88 01             	mov    ax,0x188
   35ccb:	8e c0                	mov    es,ax
   35ccd:	26 a1 20 73          	mov    ax,es:0x7320
   35cd1:	05 e2 ff             	add    ax,0xffe2
   35cd4:	01 06 72 3d          	add    WORD PTR ds:0x3d72,ax
   35cd8:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   35cdb:	a3 5e 3d             	mov    ds:0x3d5e,ax
   35cde:	c9                   	leave
   35cdf:	cb                   	retf
   35ce0:	55                   	push   bp
   35ce1:	8b ec                	mov    bp,sp
   35ce3:	83 ec 04             	sub    sp,0x4
   35ce6:	c7 46 fc 20 00       	mov    WORD PTR [bp-0x4],0x20
   35ceb:	ff 76 08             	push   WORD PTR [bp+0x8]
   35cee:	ff 76 06             	push   WORD PTR [bp+0x6]
   35cf1:	6a 04                	push   0x4
   35cf3:	9a 25 00 70 01       	call   0x170:0x25
   35cf8:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   35cfb:	3d ff ff             	cmp    ax,0xffff
   35cfe:	75 15                	jne    0x35d15
   35d00:	6a ff                	push   0xffff
   35d02:	1e                   	push   ds
   35d03:	68 cf 42             	push   0x42cf
   35d06:	68 d5 06             	push   0x6d5
   35d09:	1e                   	push   ds
   35d0a:	68 c0 42             	push   0x42c0
   35d0d:	9a 2a 00 58 01       	call   0x158:0x2a
   35d12:	83 c4 0c             	add    sp,0xc
   35d15:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d18:	ff 76 0c             	push   WORD PTR [bp+0xc]
   35d1b:	ff 76 0a             	push   WORD PTR [bp+0xa]
   35d1e:	6a 00                	push   0x0
   35d20:	6a 3c                	push   0x3c
   35d22:	9a 34 00 70 01       	call   0x170:0x34
   35d27:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d2a:	16                   	push   ss
   35d2b:	8d 46 fc             	lea    ax,[bp-0x4]
   35d2e:	50                   	push   ax
   35d2f:	6a 00                	push   0x0
   35d31:	6a 02                	push   0x2
   35d33:	9a 34 00 70 01       	call   0x170:0x34
   35d38:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d3b:	68 88 01             	push   0x188
   35d3e:	68 ca b9             	push   0xb9ca
   35d41:	6a 00                	push   0x0
   35d43:	6a 20                	push   0x20
   35d45:	9a 34 00 70 01       	call   0x170:0x34
   35d4a:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d4d:	68 88 01             	push   0x188
   35d50:	68 a6 99             	push   0x99a6
   35d53:	6a 00                	push   0x0
   35d55:	68 cc 01             	push   0x1cc
   35d58:	9a 34 00 70 01       	call   0x170:0x34
   35d5d:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d60:	68 88 01             	push   0x188
   35d63:	68 26 9c             	push   0x9c26
   35d66:	6a 00                	push   0x0
   35d68:	68 e4 02             	push   0x2e4
   35d6b:	9a 34 00 70 01       	call   0x170:0x34
   35d70:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d73:	68 88 01             	push   0x188
   35d76:	68 fc 98             	push   0x98fc
   35d79:	6a 00                	push   0x0
   35d7b:	68 aa 00             	push   0xaa
   35d7e:	9a 34 00 70 01       	call   0x170:0x34
   35d83:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d86:	68 88 01             	push   0x188
   35d89:	68 34 bb             	push   0xbb34
   35d8c:	6a 00                	push   0x0
   35d8e:	6a 07                	push   0x7
   35d90:	9a 34 00 70 01       	call   0x170:0x34
   35d95:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35d98:	1e                   	push   ds
   35d99:	68 5e 3d             	push   0x3d5e
   35d9c:	6a 00                	push   0x0
   35d9e:	6a 02                	push   0x2
   35da0:	9a 34 00 70 01       	call   0x170:0x34
   35da5:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35da8:	68 88 01             	push   0x188
   35dab:	68 f3 b9             	push   0xb9f3
   35dae:	6a 00                	push   0x0
   35db0:	6a 02                	push   0x2
   35db2:	9a 34 00 70 01       	call   0x170:0x34
   35db7:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35dba:	68 88 01             	push   0x188
   35dbd:	68 f1 b9             	push   0xb9f1
   35dc0:	6a 00                	push   0x0
   35dc2:	6a 02                	push   0x2
   35dc4:	9a 34 00 70 01       	call   0x170:0x34
   35dc9:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35dcc:	68 88 01             	push   0x188
   35dcf:	68 f0 b9             	push   0xb9f0
   35dd2:	6a 00                	push   0x0
   35dd4:	6a 01                	push   0x1
   35dd6:	9a 34 00 70 01       	call   0x170:0x34
   35ddb:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35dde:	68 88 01             	push   0x188
   35de1:	68 6b bb             	push   0xbb6b
   35de4:	6a 00                	push   0x0
   35de6:	6a 02                	push   0x2
   35de8:	9a 34 00 70 01       	call   0x170:0x34
   35ded:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35df0:	68 88 01             	push   0x188
   35df3:	68 4d bb             	push   0xbb4d
   35df6:	6a 00                	push   0x0
   35df8:	6a 02                	push   0x2
   35dfa:	9a 34 00 70 01       	call   0x170:0x34
   35dff:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e02:	68 88 01             	push   0x188
   35e05:	68 6d bb             	push   0xbb6d
   35e08:	6a 00                	push   0x0
   35e0a:	6a 08                	push   0x8
   35e0c:	9a 34 00 70 01       	call   0x170:0x34
   35e11:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e14:	1e                   	push   ds
   35e15:	68 64 3d             	push   0x3d64
   35e18:	6a 00                	push   0x0
   35e1a:	6a 02                	push   0x2
   35e1c:	9a 34 00 70 01       	call   0x170:0x34
   35e21:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e24:	1e                   	push   ds
   35e25:	68 66 3d             	push   0x3d66
   35e28:	6a 00                	push   0x0
   35e2a:	6a 02                	push   0x2
   35e2c:	9a 34 00 70 01       	call   0x170:0x34
   35e31:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e34:	1e                   	push   ds
   35e35:	68 68 3d             	push   0x3d68
   35e38:	6a 00                	push   0x0
   35e3a:	6a 02                	push   0x2
   35e3c:	9a 34 00 70 01       	call   0x170:0x34
   35e41:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e44:	68 88 01             	push   0x188
   35e47:	68 b7 bb             	push   0xbbb7
   35e4a:	6a 00                	push   0x0
   35e4c:	6a 0b                	push   0xb
   35e4e:	9a 34 00 70 01       	call   0x170:0x34
   35e53:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e56:	68 88 01             	push   0x188
   35e59:	68 ac bb             	push   0xbbac
   35e5c:	6a 00                	push   0x0
   35e5e:	6a 0b                	push   0xb
   35e60:	9a 34 00 70 01       	call   0x170:0x34
   35e65:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e68:	68 88 01             	push   0x188
   35e6b:	68 8a bb             	push   0xbb8a
   35e6e:	6a 00                	push   0x0
   35e70:	6a 02                	push   0x2
   35e72:	9a 34 00 70 01       	call   0x170:0x34
   35e77:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e7a:	68 88 01             	push   0x188
   35e7d:	68 88 bb             	push   0xbb88
   35e80:	6a 00                	push   0x0
   35e82:	6a 02                	push   0x2
   35e84:	9a 34 00 70 01       	call   0x170:0x34
   35e89:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e8c:	68 88 01             	push   0x188
   35e8f:	68 ab bb             	push   0xbbab
   35e92:	6a 00                	push   0x0
   35e94:	6a 02                	push   0x2
   35e96:	9a 34 00 70 01       	call   0x170:0x34
   35e9b:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35e9e:	9a 2a 00 70 01       	call   0x170:0x2a
   35ea3:	c9                   	leave
   35ea4:	cb                   	retf
   35ea5:	55                   	push   bp
   35ea6:	8b ec                	mov    bp,sp
   35ea8:	83 ec 14             	sub    sp,0x14
   35eab:	c7 46 fc 20 00       	mov    WORD PTR [bp-0x4],0x20
   35eb0:	8d 46 ec             	lea    ax,[bp-0x14]
   35eb3:	16                   	push   ss
   35eb4:	50                   	push   ax
   35eb5:	1e                   	push   ds
   35eb6:	68 dd 3e             	push   0x3edd
   35eb9:	b9 0d 00             	mov    cx,0xd
   35ebc:	9a 7a 12 00 00       	call   0x0:0x127a
   35ec1:	b8 88 01             	mov    ax,0x188
   35ec4:	8e c0                	mov    es,ax
   35ec6:	26 a1 1a 73          	mov    ax,es:0x731a
   35eca:	f7 d8                	neg    ax
   35ecc:	50                   	push   ax
   35ecd:	b8 88 01             	mov    ax,0x188
   35ed0:	8e c0                	mov    es,ax
   35ed2:	26 a1 18 73          	mov    ax,es:0x7318
   35ed6:	f7 d8                	neg    ax
   35ed8:	50                   	push   ax
   35ed9:	68 f4 01             	push   0x1f4
   35edc:	9a 3f 07 30 00       	call   0x30:0x73f
   35ee1:	83 c4 06             	add    sp,0x6
   35ee4:	b8 88 01             	mov    ax,0x188
   35ee7:	8e c0                	mov    es,ax
   35ee9:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   35eef:	74 34                	je     0x35f25
   35ef1:	9a 96 12 68 00       	call   0x68:0x1296
   35ef6:	a1 75 bb             	mov    ax,ds:0xbb75
   35ef9:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   35efd:	74 26                	je     0x35f25
   35eff:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   35f03:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   35f07:	9a 03 00 80 00       	call   0x80:0x3
   35f0c:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   35f10:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   35f14:	9a da 00 58 00       	call   0x58:0xda
   35f19:	c7 06 77 bb 00 00    	mov    WORD PTR ds:0xbb77,0x0
   35f1f:	c7 06 75 bb 00 00    	mov    WORD PTR ds:0xbb75,0x0
   35f25:	9a 2f 00 78 01       	call   0x178:0x2f
   35f2a:	9a b9 1e 10 00       	call   0x10:0x1eb9
   35f2f:	ff 76 08             	push   WORD PTR [bp+0x8]
   35f32:	ff 76 06             	push   WORD PTR [bp+0x6]
   35f35:	6a 02                	push   0x2
   35f37:	9a 25 00 70 01       	call   0x170:0x25
   35f3c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   35f3f:	3d ff ff             	cmp    ax,0xffff
   35f42:	75 15                	jne    0x35f59
   35f44:	6a ff                	push   0xffff
   35f46:	1e                   	push   ds
   35f47:	68 0f 43             	push   0x430f
   35f4a:	68 04 07             	push   0x704
   35f4d:	1e                   	push   ds
   35f4e:	68 00 43             	push   0x4300
   35f51:	9a 2a 00 58 01       	call   0x158:0x2a
   35f56:	83 c4 0c             	add    sp,0xc
   35f59:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35f5c:	6a 00                	push   0x0
   35f5e:	6a 3c                	push   0x3c
   35f60:	6a 00                	push   0x0
   35f62:	9a 39 00 70 01       	call   0x170:0x39
   35f67:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35f6a:	16                   	push   ss
   35f6b:	8d 46 fc             	lea    ax,[bp-0x4]
   35f6e:	50                   	push   ax
   35f6f:	6a 00                	push   0x0
   35f71:	6a 02                	push   0x2
   35f73:	9a 2f 00 70 01       	call   0x170:0x2f
   35f78:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35f7b:	68 88 01             	push   0x188
   35f7e:	68 ca b9             	push   0xb9ca
   35f81:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   35f84:	99                   	cwd
   35f85:	52                   	push   dx
   35f86:	50                   	push   ax
   35f87:	9a 2f 00 70 01       	call   0x170:0x2f
   35f8c:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35f8f:	68 88 01             	push   0x188
   35f92:	68 a6 99             	push   0x99a6
   35f95:	6a 00                	push   0x0
   35f97:	68 cc 01             	push   0x1cc
   35f9a:	9a 2f 00 70 01       	call   0x170:0x2f
   35f9f:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35fa2:	68 88 01             	push   0x188
   35fa5:	68 26 9c             	push   0x9c26
   35fa8:	6a 00                	push   0x0
   35faa:	68 e4 02             	push   0x2e4
   35fad:	9a 2f 00 70 01       	call   0x170:0x2f
   35fb2:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35fb5:	68 88 01             	push   0x188
   35fb8:	68 fc 98             	push   0x98fc
   35fbb:	6a 00                	push   0x0
   35fbd:	68 aa 00             	push   0xaa
   35fc0:	9a 2f 00 70 01       	call   0x170:0x2f
   35fc5:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35fc8:	68 88 01             	push   0x188
   35fcb:	68 34 bb             	push   0xbb34
   35fce:	6a 00                	push   0x0
   35fd0:	6a 07                	push   0x7
   35fd2:	9a 2f 00 70 01       	call   0x170:0x2f
   35fd7:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35fda:	16                   	push   ss
   35fdb:	8d 46 fa             	lea    ax,[bp-0x6]
   35fde:	50                   	push   ax
   35fdf:	6a 00                	push   0x0
   35fe1:	6a 02                	push   0x2
   35fe3:	9a 2f 00 70 01       	call   0x170:0x2f
   35fe8:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35feb:	68 88 01             	push   0x188
   35fee:	68 f3 b9             	push   0xb9f3
   35ff1:	6a 00                	push   0x0
   35ff3:	6a 02                	push   0x2
   35ff5:	9a 2f 00 70 01       	call   0x170:0x2f
   35ffa:	ff 76 fe             	push   WORD PTR [bp-0x2]
   35ffd:	68 88 01             	push   0x188
   36000:	68 f1 b9             	push   0xb9f1
   36003:	6a 00                	push   0x0
   36005:	6a 02                	push   0x2
   36007:	9a 2f 00 70 01       	call   0x170:0x2f
   3600c:	ff 76 fe             	push   WORD PTR [bp-0x2]
   3600f:	68 88 01             	push   0x188
   36012:	68 f0 b9             	push   0xb9f0
   36015:	6a 00                	push   0x0
   36017:	6a 01                	push   0x1
   36019:	9a 2f 00 70 01       	call   0x170:0x2f
   3601e:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36021:	68 88 01             	push   0x188
   36024:	68 6b bb             	push   0xbb6b
   36027:	6a 00                	push   0x0
   36029:	6a 02                	push   0x2
   3602b:	9a 2f 00 70 01       	call   0x170:0x2f
   36030:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36033:	68 88 01             	push   0x188
   36036:	68 4d bb             	push   0xbb4d
   36039:	6a 00                	push   0x0
   3603b:	6a 02                	push   0x2
   3603d:	9a 2f 00 70 01       	call   0x170:0x2f
   36042:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36045:	68 88 01             	push   0x188
   36048:	68 6d bb             	push   0xbb6d
   3604b:	6a 00                	push   0x0
   3604d:	6a 08                	push   0x8
   3604f:	9a 2f 00 70 01       	call   0x170:0x2f
   36054:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36057:	1e                   	push   ds
   36058:	68 64 3d             	push   0x3d64
   3605b:	6a 00                	push   0x0
   3605d:	6a 02                	push   0x2
   3605f:	9a 2f 00 70 01       	call   0x170:0x2f
   36064:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36067:	1e                   	push   ds
   36068:	68 66 3d             	push   0x3d66
   3606b:	6a 00                	push   0x0
   3606d:	6a 02                	push   0x2
   3606f:	9a 2f 00 70 01       	call   0x170:0x2f
   36074:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36077:	1e                   	push   ds
   36078:	68 68 3d             	push   0x3d68
   3607b:	6a 00                	push   0x0
   3607d:	6a 02                	push   0x2
   3607f:	9a 2f 00 70 01       	call   0x170:0x2f
   36084:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36087:	68 88 01             	push   0x188
   3608a:	68 b7 bb             	push   0xbbb7
   3608d:	6a 00                	push   0x0
   3608f:	6a 0b                	push   0xb
   36091:	9a 2f 00 70 01       	call   0x170:0x2f
   36096:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36099:	68 88 01             	push   0x188
   3609c:	68 ac bb             	push   0xbbac
   3609f:	6a 00                	push   0x0
   360a1:	6a 0b                	push   0xb
   360a3:	9a 2f 00 70 01       	call   0x170:0x2f
   360a8:	ff 76 fe             	push   WORD PTR [bp-0x2]
   360ab:	68 88 01             	push   0x188
   360ae:	68 8a bb             	push   0xbb8a
   360b1:	6a 00                	push   0x0
   360b3:	6a 02                	push   0x2
   360b5:	9a 2f 00 70 01       	call   0x170:0x2f
   360ba:	ff 76 fe             	push   WORD PTR [bp-0x2]
   360bd:	68 88 01             	push   0x188
   360c0:	68 88 bb             	push   0xbb88
   360c3:	6a 00                	push   0x0
   360c5:	6a 02                	push   0x2
   360c7:	9a 2f 00 70 01       	call   0x170:0x2f
   360cc:	ff 76 fe             	push   WORD PTR [bp-0x2]
   360cf:	68 88 01             	push   0x188
   360d2:	68 ab bb             	push   0xbbab
   360d5:	6a 00                	push   0x0
   360d7:	6a 02                	push   0x2
   360d9:	9a 2f 00 70 01       	call   0x170:0x2f
   360de:	0b c2                	or     ax,dx
   360e0:	74 2b                	je     0x3610d
   360e2:	6a 00                	push   0x0
   360e4:	68 00 80             	push   0x8000
   360e7:	9a 79 17 00 00       	call   0x0:0x1779
   360ec:	99                   	cwd
   360ed:	50                   	push   ax
   360ee:	52                   	push   dx
   360ef:	33 d2                	xor    dx,dx
   360f1:	b8 64 00             	mov    ax,0x64
   360f4:	59                   	pop    cx
   360f5:	5b                   	pop    bx
   360f6:	9a 42 12 00 00       	call   0x0:0x1242
   360fb:	52                   	push   dx
   360fc:	50                   	push   ax
   360fd:	9a df 12 00 00       	call   0x0:0x12df
   36102:	04 65                	add    al,0x65
   36104:	ba 88 01             	mov    dx,0x188
   36107:	8e c2                	mov    es,dx
   36109:	26 a2 ab bb          	mov    es:0xbbab,al
   3610d:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36110:	9a 2a 00 70 01       	call   0x170:0x2a
   36115:	b8 88 01             	mov    ax,0x188
   36118:	8e c0                	mov    es,ax
   3611a:	26 c7 06 ec d5 00 00 	mov    WORD PTR es:0xd5ec,0x0
   36121:	eb 5f                	jmp    0x36182
   36123:	b8 88 01             	mov    ax,0x188
   36126:	8e c0                	mov    es,ax
   36128:	26 a1 ec d5          	mov    ax,es:0xd5ec
   3612c:	05 47 00             	add    ax,0x47
   3612f:	50                   	push   ax
   36130:	b8 88 01             	mov    ax,0x188
   36133:	8e c0                	mov    es,ax
   36135:	26 8b 1e ec d5       	mov    bx,WORD PTR es:0xd5ec
   3613a:	6b db 5c             	imul   bx,bx,0x5c
   3613d:	b8 88 01             	mov    ax,0x188
   36140:	8e c0                	mov    es,ax
   36142:	26 8b 87 44 9a       	mov    ax,WORD PTR es:[bx-0x65bc]
   36147:	6b c0 0d             	imul   ax,ax,0xd
   3614a:	05 9b 26             	add    ax,0x269b
   3614d:	68 88 01             	push   0x188
   36150:	50                   	push   ax
   36151:	1e                   	push   ds
   36152:	68 42 43             	push   0x4342
   36155:	16                   	push   ss
   36156:	8d 46 ec             	lea    ax,[bp-0x14]
   36159:	50                   	push   ax
   3615a:	9a 7a 53 00 00       	call   0x0:0x537a
   3615f:	83 c4 08             	add    sp,0x8
   36162:	52                   	push   dx
   36163:	50                   	push   ax
   36164:	9a f7 48 00 00       	call   0x0:0x48f7
   36169:	83 c4 08             	add    sp,0x8
   3616c:	52                   	push   dx
   3616d:	50                   	push   ax
   3616e:	6a 01                	push   0x1
   36170:	9a 20 00 48 01       	call   0x148:0x20
   36175:	83 c4 08             	add    sp,0x8
   36178:	b8 88 01             	mov    ax,0x188
   3617b:	8e c0                	mov    es,ax
   3617d:	26 ff 06 ec d5       	inc    WORD PTR es:0xd5ec
   36182:	b8 88 01             	mov    ax,0x188
   36185:	8e c0                	mov    es,ax
   36187:	26 83 3e ec d5 04    	cmp    WORD PTR es:0xd5ec,0x4
   3618d:	7c 94                	jl     0x36123
   3618f:	b8 88 01             	mov    ax,0x188
   36192:	8e c0                	mov    es,ax
   36194:	26 c7 06 2e 63 00 00 	mov    WORD PTR es:0x632e,0x0
   3619b:	9a 8e 17 10 00       	call   0x10:0x178e
   361a0:	6a 00                	push   0x0
   361a2:	ff 36 6b bb          	push   WORD PTR ds:0xbb6b
   361a6:	0e                   	push   cs
   361a7:	e8 8d d6             	call   0x33837
   361aa:	83 c4 04             	add    sp,0x4
   361ad:	9a 04 02 30 00       	call   0x30:0x204
   361b2:	80 3e 3a bb 00       	cmp    BYTE PTR ds:0xbb3a,0x0
   361b7:	74 47                	je     0x36200
   361b9:	b8 88 01             	mov    ax,0x188
   361bc:	8e c0                	mov    es,ax
   361be:	26 c7 06 fb 3a c8 00 	mov    WORD PTR es:0x3afb,0xc8
   361c5:	b8 88 01             	mov    ax,0x188
   361c8:	8e c0                	mov    es,ax
   361ca:	26 c7 06 fd 3a c8 00 	mov    WORD PTR es:0x3afd,0xc8
   361d1:	b8 88 01             	mov    ax,0x188
   361d4:	8e c0                	mov    es,ax
   361d6:	26 c7 06 74 6d 00 00 	mov    WORD PTR es:0x6d74,0x0
   361dd:	80 3e 34 bb 00       	cmp    BYTE PTR ds:0xbb34,0x0
   361e2:	74 0d                	je     0x361f1
   361e4:	b8 88 01             	mov    ax,0x188
   361e7:	8e c0                	mov    es,ax
   361e9:	26 c6 06 08 3b 01    	mov    BYTE PTR es:0x3b08,0x1
   361ef:	eb 48                	jmp    0x36239
   361f1:	b8 88 01             	mov    ax,0x188
   361f4:	8e c0                	mov    es,ax
   361f6:	26 c6 06 08 3b 00    	mov    BYTE PTR es:0x3b08,0x0
   361fc:	eb 3b                	jmp    0x36239
   361fe:	eb 39                	jmp    0x36239
   36200:	b8 88 01             	mov    ax,0x188
   36203:	8e c0                	mov    es,ax
   36205:	26 c7 06 fb 3a 64 00 	mov    WORD PTR es:0x3afb,0x64
   3620c:	b8 88 01             	mov    ax,0x188
   3620f:	8e c0                	mov    es,ax
   36211:	26 c7 06 fd 3a 64 00 	mov    WORD PTR es:0x3afd,0x64
   36218:	80 3e 34 bb 00       	cmp    BYTE PTR ds:0xbb34,0x0
   3621d:	74 0e                	je     0x3622d
   3621f:	b8 88 01             	mov    ax,0x188
   36222:	8e c0                	mov    es,ax
   36224:	26 c7 06 74 6d 09 00 	mov    WORD PTR es:0x6d74,0x9
   3622b:	eb 0c                	jmp    0x36239
   3622d:	b8 88 01             	mov    ax,0x188
   36230:	8e c0                	mov    es,ax
   36232:	26 c7 06 74 6d 00 00 	mov    WORD PTR es:0x6d74,0x0
   36239:	b8 88 01             	mov    ax,0x188
   3623c:	8e c0                	mov    es,ax
   3623e:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   36242:	a3 51 bb             	mov    ds:0xbb51,ax
   36245:	b8 88 01             	mov    ax,0x188
   36248:	8e c0                	mov    es,ax
   3624a:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3624e:	a3 4f bb             	mov    ds:0xbb4f,ax
   36251:	b8 88 01             	mov    ax,0x188
   36254:	8e c0                	mov    es,ax
   36256:	26 c7 06 03 3b 00 00 	mov    WORD PTR es:0x3b03,0x0
   3625d:	0e                   	push   cs
   3625e:	e8 d0 e1             	call   0x34431
   36261:	c9                   	leave
   36262:	cb                   	retf
   36263:	55                   	push   bp
   36264:	8b ec                	mov    bp,sp
   36266:	83 ec 0e             	sub    sp,0xe
   36269:	c7 46 fc 3f 01       	mov    WORD PTR [bp-0x4],0x13f
   3626e:	f7 06 5e 3d 08 00    	test   WORD PTR ds:0x3d5e,0x8
   36274:	74 20                	je     0x36296
   36276:	6a 00                	push   0x0
   36278:	6a 01                	push   0x1
   3627a:	1e                   	push   ds
   3627b:	68 45 43             	push   0x4345
   3627e:	9a 48 29 10 00       	call   0x10:0x2948
   36283:	83 c4 08             	add    sp,0x8
   36286:	6a 14                	push   0x14
   36288:	9a ca 2d 10 00       	call   0x10:0x2dca
   3628d:	59                   	pop    cx
   3628e:	9a b9 1e 10 00       	call   0x10:0x1eb9
   36293:	e9 9f 06             	jmp    0x36935
   36296:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   3629b:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   362a0:	e9 b6 00             	jmp    0x36359
   362a3:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   362a6:	6b db 11             	imul   bx,bx,0x11
   362a9:	b8 88 01             	mov    ax,0x188
   362ac:	8e c0                	mov    es,ax
   362ae:	26 80 bf 77 ba ff    	cmp    BYTE PTR es:[bx-0x4589],0xff
   362b4:	75 03                	jne    0x362b9
   362b6:	e9 9d 00             	jmp    0x36356
   362b9:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   362bc:	6b db 5c             	imul   bx,bx,0x5c
   362bf:	b8 88 01             	mov    ax,0x188
   362c2:	8e c0                	mov    es,ax
   362c4:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   362c9:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   362cc:	6b db 5c             	imul   bx,bx,0x5c
   362cf:	ba 88 01             	mov    dx,0x188
   362d2:	8e c2                	mov    es,dx
   362d4:	26 2b 87 e0 99       	sub    ax,WORD PTR es:[bx-0x6620]
   362d9:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   362dc:	7e 23                	jle    0x36301
   362de:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   362e1:	6b db 5c             	imul   bx,bx,0x5c
   362e4:	b8 88 01             	mov    ax,0x188
   362e7:	8e c0                	mov    es,ax
   362e9:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   362ee:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   362f1:	6b db 5c             	imul   bx,bx,0x5c
   362f4:	ba 88 01             	mov    dx,0x188
   362f7:	8e c2                	mov    es,dx
   362f9:	26 2b 87 e0 99       	sub    ax,WORD PTR es:[bx-0x6620]
   362fe:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   36301:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36304:	6b db 5c             	imul   bx,bx,0x5c
   36307:	b8 88 01             	mov    ax,0x188
   3630a:	8e c0                	mov    es,ax
   3630c:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   36311:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36314:	6b db 5c             	imul   bx,bx,0x5c
   36317:	ba 88 01             	mov    dx,0x188
   3631a:	8e c2                	mov    es,dx
   3631c:	26 2b 87 de 99       	sub    ax,WORD PTR es:[bx-0x6622]
   36321:	bb 1e 00             	mov    bx,0x1e
   36324:	99                   	cwd
   36325:	f7 fb                	idiv   bx
   36327:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   3632a:	7e 2a                	jle    0x36356
   3632c:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3632f:	6b db 5c             	imul   bx,bx,0x5c
   36332:	b8 88 01             	mov    ax,0x188
   36335:	8e c0                	mov    es,ax
   36337:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3633c:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3633f:	6b db 5c             	imul   bx,bx,0x5c
   36342:	ba 88 01             	mov    dx,0x188
   36345:	8e c2                	mov    es,dx
   36347:	26 2b 87 de 99       	sub    ax,WORD PTR es:[bx-0x6622]
   3634c:	bb 1e 00             	mov    bx,0x1e
   3634f:	99                   	cwd
   36350:	f7 fb                	idiv   bx
   36352:	40                   	inc    ax
   36353:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   36356:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   36359:	83 7e f8 05          	cmp    WORD PTR [bp-0x8],0x5
   3635d:	7d 03                	jge    0x36362
   3635f:	e9 41 ff             	jmp    0x362a3
   36362:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   36366:	75 15                	jne    0x3637d
   36368:	6a 00                	push   0x0
   3636a:	6a 01                	push   0x1
   3636c:	1e                   	push   ds
   3636d:	68 67 43             	push   0x4367
   36370:	9a 48 29 10 00       	call   0x10:0x2948
   36375:	83 c4 08             	add    sp,0x8
   36378:	6a 28                	push   0x28
   3637a:	e9 0b ff             	jmp    0x36288
   3637d:	6a 01                	push   0x1
   3637f:	6a 4f                	push   0x4f
   36381:	9a 39 00 30 01       	call   0x130:0x39
   36386:	83 c4 04             	add    sp,0x4
   36389:	ba 0f 00             	mov    dx,0xf
   3638c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3638f:	f7 ea                	imul   dx
   36391:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   36394:	6a 00                	push   0x0
   36396:	68 00 80             	push   0x8000
   36399:	9a 79 17 00 00       	call   0x0:0x1779
   3639e:	99                   	cwd
   3639f:	50                   	push   ax
   363a0:	a1 86 ba             	mov    ax,ds:0xba86
   363a3:	05 07 00             	add    ax,0x7
   363a6:	52                   	push   dx
   363a7:	99                   	cwd
   363a8:	59                   	pop    cx
   363a9:	5b                   	pop    bx
   363aa:	9a 42 12 00 00       	call   0x0:0x1242
   363af:	52                   	push   dx
   363b0:	50                   	push   ax
   363b1:	9a df 12 00 00       	call   0x0:0x12df
   363b6:	3b 06 86 ba          	cmp    ax,WORD PTR ds:0xba86
   363ba:	7d 5b                	jge    0x36417
   363bc:	f7 06 5e 3d 04 00    	test   WORD PTR ds:0x3d5e,0x4
   363c2:	75 53                	jne    0x36417
   363c4:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   363c8:	6b db 1d             	imul   bx,bx,0x1d
   363cb:	b8 88 01             	mov    ax,0x188
   363ce:	8e c0                	mov    es,ax
   363d0:	26 80 bf 4d 2e 00    	cmp    BYTE PTR es:[bx+0x2e4d],0x0
   363d6:	74 1e                	je     0x363f6
   363d8:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   363dc:	6b db 1d             	imul   bx,bx,0x1d
   363df:	b8 88 01             	mov    ax,0x188
   363e2:	8e c0                	mov    es,ax
   363e4:	26 8a 87 4d 2e       	mov    al,BYTE PTR es:[bx+0x2e4d]
   363e9:	b4 00                	mov    ah,0x0
   363eb:	50                   	push   ax
   363ec:	9a 2a 00 30 01       	call   0x130:0x2a
   363f1:	59                   	pop    cx
   363f2:	0a c0                	or     al,al
   363f4:	75 21                	jne    0x36417
   363f6:	6a 00                	push   0x0
   363f8:	68 00 80             	push   0x8000
   363fb:	9a 79 17 00 00       	call   0x0:0x1779
   36400:	99                   	cwd
   36401:	50                   	push   ax
   36402:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   36405:	52                   	push   dx
   36406:	99                   	cwd
   36407:	59                   	pop    cx
   36408:	5b                   	pop    bx
   36409:	9a 42 12 00 00       	call   0x0:0x1242
   3640e:	52                   	push   dx
   3640f:	50                   	push   ax
   36410:	9a df 12 00 00       	call   0x0:0x12df
   36415:	eb 03                	jmp    0x3641a
   36417:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3641a:	40                   	inc    ax
   3641b:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   3641e:	6a 00                	push   0x0
   36420:	6a 01                	push   0x1
   36422:	1e                   	push   ds
   36423:	68 7c 43             	push   0x437c
   36426:	9a 48 29 10 00       	call   0x10:0x2948
   3642b:	83 c4 08             	add    sp,0x8
   3642e:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   36433:	e9 f1 03             	jmp    0x36827
   36436:	b8 88 01             	mov    ax,0x188
   36439:	8e c0                	mov    es,ax
   3643b:	26 a1 4a e7          	mov    ax,es:0xe74a
   3643f:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   36442:	6a 01                	push   0x1
   36444:	0e                   	push   cs
   36445:	e8 c5 f4             	call   0x3590d
   36448:	59                   	pop    cx
   36449:	9a 04 02 30 00       	call   0x30:0x204
   3644e:	b8 88 01             	mov    ax,0x188
   36451:	8e c0                	mov    es,ax
   36453:	26 a0 6b 96          	mov    al,es:0x966b
   36457:	50                   	push   ax
   36458:	6a 00                	push   0x0
   3645a:	6a 02                	push   0x2
   3645c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3645f:	99                   	cwd
   36460:	52                   	push   dx
   36461:	50                   	push   ax
   36462:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   36465:	40                   	inc    ax
   36466:	99                   	cwd
   36467:	50                   	push   ax
   36468:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3646b:	52                   	push   dx
   3646c:	99                   	cwd
   3646d:	59                   	pop    cx
   3646e:	5b                   	pop    bx
   3646f:	9a 42 12 00 00       	call   0x0:0x1242
   36474:	52                   	push   dx
   36475:	50                   	push   ax
   36476:	9a e6 12 00 00       	call   0x0:0x12e6
   3647b:	50                   	push   ax
   3647c:	68 c6 00             	push   0xc6
   3647f:	6a 00                	push   0x0
   36481:	9a 08 09 28 00       	call   0x28:0x908
   36486:	83 c4 0c             	add    sp,0xc
   36489:	b8 88 01             	mov    ax,0x188
   3648c:	8e c0                	mov    es,ax
   3648e:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   36493:	50                   	push   ax
   36494:	9a 69 00 30 00       	call   0x30:0x69
   36499:	59                   	pop    cx
   3649a:	9a 45 2e 00 00       	call   0x0:0x2e45
   3649f:	0b c0                	or     ax,ax
   364a1:	74 13                	je     0x364b6
   364a3:	6a 00                	push   0x0
   364a5:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   364aa:	59                   	pop    cx
   364ab:	c1 f8 08             	sar    ax,0x8
   364ae:	3d 01 00             	cmp    ax,0x1
   364b1:	75 03                	jne    0x364b6
   364b3:	e9 7c 03             	jmp    0x36832
   364b6:	16                   	push   ss
   364b7:	8d 46 f4             	lea    ax,[bp-0xc]
   364ba:	50                   	push   ax
   364bb:	16                   	push   ss
   364bc:	8d 46 f4             	lea    ax,[bp-0xc]
   364bf:	50                   	push   ax
   364c0:	16                   	push   ss
   364c1:	8d 46 f4             	lea    ax,[bp-0xc]
   364c4:	50                   	push   ax
   364c5:	9a af 04 30 00       	call   0x30:0x4af
   364ca:	83 c4 0c             	add    sp,0xc
   364cd:	0b c0                	or     ax,ax
   364cf:	74 08                	je     0x364d9
   364d1:	9a 14 07 30 00       	call   0x30:0x714
   364d6:	e9 59 03             	jmp    0x36832
   364d9:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   364dc:	3b 46 fa             	cmp    ax,WORD PTR [bp-0x6]
   364df:	7c 2c                	jl     0x3650d
   364e1:	9a b9 1e 10 00       	call   0x10:0x1eb9
   364e6:	6a 00                	push   0x0
   364e8:	6a 01                	push   0x1
   364ea:	1e                   	push   ds
   364eb:	68 8e 43             	push   0x438e
   364ee:	9a 48 29 10 00       	call   0x10:0x2948
   364f3:	83 c4 08             	add    sp,0x8
   364f6:	6a 14                	push   0x14
   364f8:	9a ca 2d 10 00       	call   0x10:0x2dca
   364fd:	59                   	pop    cx
   364fe:	c7 06 6a 3d 01 00    	mov    WORD PTR ds:0x3d6a,0x1
   36504:	c7 06 84 ba 02 00    	mov    WORD PTR ds:0xba84,0x2
   3650a:	e9 25 03             	jmp    0x36832
   3650d:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   36510:	bb 0f 00             	mov    bx,0xf
   36513:	99                   	cwd
   36514:	f7 fb                	idiv   bx
   36516:	0b d2                	or     dx,dx
   36518:	74 03                	je     0x3651d
   3651a:	e9 f6 02             	jmp    0x36813
   3651d:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   36522:	e9 cd 02             	jmp    0x367f2
   36525:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36528:	6b db 5c             	imul   bx,bx,0x5c
   3652b:	b8 88 01             	mov    ax,0x188
   3652e:	8e c0                	mov    es,ax
   36530:	26 8b 87 de 99       	mov    ax,WORD PTR es:[bx-0x6622]
   36535:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36538:	6b db 5c             	imul   bx,bx,0x5c
   3653b:	ba 88 01             	mov    dx,0x188
   3653e:	8e c2                	mov    es,dx
   36540:	26 3b 87 b0 99       	cmp    ax,WORD PTR es:[bx-0x6650]
   36545:	7d 5a                	jge    0x365a1
   36547:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3654a:	6b db 5c             	imul   bx,bx,0x5c
   3654d:	b8 88 01             	mov    ax,0x188
   36550:	8e c0                	mov    es,ax
   36552:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   36557:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3655a:	6b db 5c             	imul   bx,bx,0x5c
   3655d:	ba 88 01             	mov    dx,0x188
   36560:	8e c2                	mov    es,dx
   36562:	26 2b 87 de 99       	sub    ax,WORD PTR es:[bx-0x6622]
   36567:	3d 1e 00             	cmp    ax,0x1e
   3656a:	7c 05                	jl     0x36571
   3656c:	b8 1e 00             	mov    ax,0x1e
   3656f:	eb 20                	jmp    0x36591
   36571:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36574:	6b db 5c             	imul   bx,bx,0x5c
   36577:	b8 88 01             	mov    ax,0x188
   3657a:	8e c0                	mov    es,ax
   3657c:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   36581:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36584:	6b db 5c             	imul   bx,bx,0x5c
   36587:	ba 88 01             	mov    dx,0x188
   3658a:	8e c2                	mov    es,dx
   3658c:	26 2b 87 de 99       	sub    ax,WORD PTR es:[bx-0x6622]
   36591:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36594:	6b db 5c             	imul   bx,bx,0x5c
   36597:	ba 88 01             	mov    dx,0x188
   3659a:	8e c2                	mov    es,dx
   3659c:	26 01 87 de 99       	add    WORD PTR es:[bx-0x6622],ax
   365a1:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   365a4:	6b db 5c             	imul   bx,bx,0x5c
   365a7:	b8 88 01             	mov    ax,0x188
   365aa:	8e c0                	mov    es,ax
   365ac:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   365b1:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   365b4:	6b db 5c             	imul   bx,bx,0x5c
   365b7:	ba 88 01             	mov    dx,0x188
   365ba:	8e c2                	mov    es,dx
   365bc:	26 3b 87 b2 99       	cmp    ax,WORD PTR es:[bx-0x664e]
   365c1:	7d 23                	jge    0x365e6
   365c3:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   365c6:	6b db 5c             	imul   bx,bx,0x5c
   365c9:	b8 88 01             	mov    ax,0x188
   365cc:	8e c0                	mov    es,ax
   365ce:	26 83 bf e0 99 fb    	cmp    WORD PTR es:[bx-0x6620],0xfffb
   365d4:	7c 10                	jl     0x365e6
   365d6:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   365d9:	6b db 5c             	imul   bx,bx,0x5c
   365dc:	b8 88 01             	mov    ax,0x188
   365df:	8e c0                	mov    es,ax
   365e1:	26 ff 87 e0 99       	inc    WORD PTR es:[bx-0x6620]
   365e6:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   365e9:	6b db 5c             	imul   bx,bx,0x5c
   365ec:	b8 88 01             	mov    ax,0x188
   365ef:	8e c0                	mov    es,ax
   365f1:	26 83 bf c8 99 00    	cmp    WORD PTR es:[bx-0x6638],0x0
   365f7:	75 03                	jne    0x365fc
   365f9:	e9 c4 00             	jmp    0x366c0
   365fc:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   365ff:	6b db 5c             	imul   bx,bx,0x5c
   36602:	b8 88 01             	mov    ax,0x188
   36605:	8e c0                	mov    es,ax
   36607:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3660c:	bb 64 00             	mov    bx,0x64
   3660f:	99                   	cwd
   36610:	f7 fb                	idiv   bx
   36612:	ba 05 00             	mov    dx,0x5
   36615:	2b d0                	sub    dx,ax
   36617:	83 fa 01             	cmp    dx,0x1
   3661a:	7d 05                	jge    0x36621
   3661c:	b8 01 00             	mov    ax,0x1
   3661f:	eb 1d                	jmp    0x3663e
   36621:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36624:	6b db 5c             	imul   bx,bx,0x5c
   36627:	b8 88 01             	mov    ax,0x188
   3662a:	8e c0                	mov    es,ax
   3662c:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   36631:	bb 64 00             	mov    bx,0x64
   36634:	99                   	cwd
   36635:	f7 fb                	idiv   bx
   36637:	50                   	push   ax
   36638:	b8 05 00             	mov    ax,0x5
   3663b:	5a                   	pop    dx
   3663c:	2b c2                	sub    ax,dx
   3663e:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36641:	6b db 5c             	imul   bx,bx,0x5c
   36644:	ba 88 01             	mov    dx,0x188
   36647:	8e c2                	mov    es,dx
   36649:	26 8b 97 c8 99       	mov    dx,WORD PTR es:[bx-0x6638]
   3664e:	03 d0                	add    dx,ax
   36650:	83 fa 01             	cmp    dx,0x1
   36653:	7d 05                	jge    0x3665a
   36655:	b8 01 00             	mov    ax,0x1
   36658:	eb 56                	jmp    0x366b0
   3665a:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3665d:	6b db 5c             	imul   bx,bx,0x5c
   36660:	b8 88 01             	mov    ax,0x188
   36663:	8e c0                	mov    es,ax
   36665:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3666a:	bb 64 00             	mov    bx,0x64
   3666d:	99                   	cwd
   3666e:	f7 fb                	idiv   bx
   36670:	ba 05 00             	mov    dx,0x5
   36673:	2b d0                	sub    dx,ax
   36675:	83 fa 01             	cmp    dx,0x1
   36678:	7d 05                	jge    0x3667f
   3667a:	b8 01 00             	mov    ax,0x1
   3667d:	eb 1d                	jmp    0x3669c
   3667f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36682:	6b db 5c             	imul   bx,bx,0x5c
   36685:	b8 88 01             	mov    ax,0x188
   36688:	8e c0                	mov    es,ax
   3668a:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3668f:	bb 64 00             	mov    bx,0x64
   36692:	99                   	cwd
   36693:	f7 fb                	idiv   bx
   36695:	50                   	push   ax
   36696:	b8 05 00             	mov    ax,0x5
   36699:	5a                   	pop    dx
   3669a:	2b c2                	sub    ax,dx
   3669c:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3669f:	6b db 5c             	imul   bx,bx,0x5c
   366a2:	ba 88 01             	mov    dx,0x188
   366a5:	8e c2                	mov    es,dx
   366a7:	50                   	push   ax
   366a8:	26 8b 87 c8 99       	mov    ax,WORD PTR es:[bx-0x6638]
   366ad:	5a                   	pop    dx
   366ae:	03 c2                	add    ax,dx
   366b0:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   366b3:	6b db 5c             	imul   bx,bx,0x5c
   366b6:	ba 88 01             	mov    dx,0x188
   366b9:	8e c2                	mov    es,dx
   366bb:	26 89 87 c8 99       	mov    WORD PTR es:[bx-0x6638],ax
   366c0:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   366c3:	6b db 5c             	imul   bx,bx,0x5c
   366c6:	b8 88 01             	mov    ax,0x188
   366c9:	8e c0                	mov    es,ax
   366cb:	26 83 bf d0 99 00    	cmp    WORD PTR es:[bx-0x6630],0x0
   366d1:	75 03                	jne    0x366d6
   366d3:	e9 19 01             	jmp    0x367ef
   366d6:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   366d9:	6b db 5c             	imul   bx,bx,0x5c
   366dc:	b8 88 01             	mov    ax,0x188
   366df:	8e c0                	mov    es,ax
   366e1:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   366e6:	bb 02 00             	mov    bx,0x2
   366e9:	99                   	cwd
   366ea:	f7 fb                	idiv   bx
   366ec:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   366ef:	6b db 5c             	imul   bx,bx,0x5c
   366f2:	ba 88 01             	mov    dx,0x188
   366f5:	8e c2                	mov    es,dx
   366f7:	50                   	push   ax
   366f8:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   366fd:	bb 64 00             	mov    bx,0x64
   36700:	99                   	cwd
   36701:	f7 fb                	idiv   bx
   36703:	5a                   	pop    dx
   36704:	2b d0                	sub    dx,ax
   36706:	83 fa 01             	cmp    dx,0x1
   36709:	7d 05                	jge    0x36710
   3670b:	b8 01 00             	mov    ax,0x1
   3670e:	eb 32                	jmp    0x36742
   36710:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36713:	6b db 5c             	imul   bx,bx,0x5c
   36716:	b8 88 01             	mov    ax,0x188
   36719:	8e c0                	mov    es,ax
   3671b:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   36720:	bb 02 00             	mov    bx,0x2
   36723:	99                   	cwd
   36724:	f7 fb                	idiv   bx
   36726:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36729:	6b db 5c             	imul   bx,bx,0x5c
   3672c:	ba 88 01             	mov    dx,0x188
   3672f:	8e c2                	mov    es,dx
   36731:	50                   	push   ax
   36732:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   36737:	bb 64 00             	mov    bx,0x64
   3673a:	99                   	cwd
   3673b:	f7 fb                	idiv   bx
   3673d:	8b d0                	mov    dx,ax
   3673f:	58                   	pop    ax
   36740:	2b c2                	sub    ax,dx
   36742:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36745:	6b db 5c             	imul   bx,bx,0x5c
   36748:	ba 88 01             	mov    dx,0x188
   3674b:	8e c2                	mov    es,dx
   3674d:	26 8b 97 d0 99       	mov    dx,WORD PTR es:[bx-0x6630]
   36752:	2b d0                	sub    dx,ax
   36754:	83 fa 01             	cmp    dx,0x1
   36757:	7d 06                	jge    0x3675f
   36759:	b8 01 00             	mov    ax,0x1
   3675c:	e9 80 00             	jmp    0x367df
   3675f:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36762:	6b db 5c             	imul   bx,bx,0x5c
   36765:	b8 88 01             	mov    ax,0x188
   36768:	8e c0                	mov    es,ax
   3676a:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   3676f:	bb 02 00             	mov    bx,0x2
   36772:	99                   	cwd
   36773:	f7 fb                	idiv   bx
   36775:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   36778:	6b db 5c             	imul   bx,bx,0x5c
   3677b:	ba 88 01             	mov    dx,0x188
   3677e:	8e c2                	mov    es,dx
   36780:	50                   	push   ax
   36781:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   36786:	bb 64 00             	mov    bx,0x64
   36789:	99                   	cwd
   3678a:	f7 fb                	idiv   bx
   3678c:	5a                   	pop    dx
   3678d:	2b d0                	sub    dx,ax
   3678f:	83 fa 01             	cmp    dx,0x1
   36792:	7d 05                	jge    0x36799
   36794:	b8 01 00             	mov    ax,0x1
   36797:	eb 32                	jmp    0x367cb
   36799:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3679c:	6b db 5c             	imul   bx,bx,0x5c
   3679f:	b8 88 01             	mov    ax,0x188
   367a2:	8e c0                	mov    es,ax
   367a4:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   367a9:	bb 02 00             	mov    bx,0x2
   367ac:	99                   	cwd
   367ad:	f7 fb                	idiv   bx
   367af:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   367b2:	6b db 5c             	imul   bx,bx,0x5c
   367b5:	ba 88 01             	mov    dx,0x188
   367b8:	8e c2                	mov    es,dx
   367ba:	50                   	push   ax
   367bb:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   367c0:	bb 64 00             	mov    bx,0x64
   367c3:	99                   	cwd
   367c4:	f7 fb                	idiv   bx
   367c6:	8b d0                	mov    dx,ax
   367c8:	58                   	pop    ax
   367c9:	2b c2                	sub    ax,dx
   367cb:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   367ce:	6b db 5c             	imul   bx,bx,0x5c
   367d1:	ba 88 01             	mov    dx,0x188
   367d4:	8e c2                	mov    es,dx
   367d6:	50                   	push   ax
   367d7:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   367dc:	5a                   	pop    dx
   367dd:	2b c2                	sub    ax,dx
   367df:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   367e2:	6b db 5c             	imul   bx,bx,0x5c
   367e5:	ba 88 01             	mov    dx,0x188
   367e8:	8e c2                	mov    es,dx
   367ea:	26 89 87 d0 99       	mov    WORD PTR es:[bx-0x6630],ax
   367ef:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   367f2:	83 7e f8 05          	cmp    WORD PTR [bp-0x8],0x5
   367f6:	7d 03                	jge    0x367fb
   367f8:	e9 2a fd             	jmp    0x36525
   367fb:	0e                   	push   cs
   367fc:	e8 7a e3             	call   0x34b79
   367ff:	eb 12                	jmp    0x36813
   36801:	eb 10                	jmp    0x36813
   36803:	b8 88 01             	mov    ax,0x188
   36806:	8e c0                	mov    es,ax
   36808:	26 a0 e3 e5          	mov    al,es:0xe5e3
   3680c:	50                   	push   ax
   3680d:	9a 6b 02 30 00       	call   0x30:0x26b
   36812:	59                   	pop    cx
   36813:	b8 88 01             	mov    ax,0x188
   36816:	8e c0                	mov    es,ax
   36818:	26 a1 4a e7          	mov    ax,es:0xe74a
   3681c:	2b 46 f2             	sub    ax,WORD PTR [bp-0xe]
   3681f:	3d 32 00             	cmp    ax,0x32
   36822:	72 df                	jb     0x36803
   36824:	ff 46 f6             	inc    WORD PTR [bp-0xa]
   36827:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   3682a:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   3682d:	7d 03                	jge    0x36832
   3682f:	e9 04 fc             	jmp    0x36436
   36832:	9a b9 1e 10 00       	call   0x10:0x1eb9
   36837:	0e                   	push   cs
   36838:	e8 a3 f3             	call   0x35bde
   3683b:	6a 01                	push   0x1
   3683d:	0e                   	push   cs
   3683e:	e8 85 be             	call   0x326c6
   36841:	59                   	pop    cx
   36842:	0e                   	push   cs
   36843:	e8 36 de             	call   0x3467c
   36846:	83 3e 6a 3d 00       	cmp    WORD PTR ds:0x3d6a,0x0
   3684b:	75 3a                	jne    0x36887
   3684d:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   36850:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   36853:	75 0a                	jne    0x3685f
   36855:	6a 00                	push   0x0
   36857:	6a 01                	push   0x1
   36859:	1e                   	push   ds
   3685a:	68 a0 43             	push   0x43a0
   3685d:	eb 08                	jmp    0x36867
   3685f:	6a 00                	push   0x0
   36861:	6a 01                	push   0x1
   36863:	1e                   	push   ds
   36864:	68 bf 43             	push   0x43bf
   36867:	9a 48 29 10 00       	call   0x10:0x2948
   3686c:	83 c4 08             	add    sp,0x8
   3686f:	b4 00                	mov    ah,0x0
   36871:	6b c0 46             	imul   ax,ax,0x46
   36874:	50                   	push   ax
   36875:	9a ca 2d 10 00       	call   0x10:0x2dca
   3687a:	59                   	pop    cx
   3687b:	6a 01                	push   0x1
   3687d:	0e                   	push   cs
   3687e:	e8 45 be             	call   0x326c6
   36881:	59                   	pop    cx
   36882:	9a b9 1e 10 00       	call   0x10:0x1eb9
   36887:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3688a:	bb 04 00             	mov    bx,0x4
   3688d:	99                   	cwd
   3688e:	f7 fb                	idiv   bx
   36890:	3d 1e 00             	cmp    ax,0x1e
   36893:	7f 03                	jg     0x36898
   36895:	e9 8f 00             	jmp    0x36927
   36898:	6a 00                	push   0x0
   3689a:	68 00 80             	push   0x8000
   3689d:	9a 79 17 00 00       	call   0x0:0x1779
   368a2:	99                   	cwd
   368a3:	50                   	push   ax
   368a4:	52                   	push   dx
   368a5:	33 d2                	xor    dx,dx
   368a7:	b8 06 00             	mov    ax,0x6
   368aa:	59                   	pop    cx
   368ab:	5b                   	pop    bx
   368ac:	9a 42 12 00 00       	call   0x0:0x1242
   368b1:	52                   	push   dx
   368b2:	50                   	push   ax
   368b3:	9a df 12 00 00       	call   0x0:0x12df
   368b8:	3d 02 00             	cmp    ax,0x2
   368bb:	7d 6a                	jge    0x36927
   368bd:	83 3e 6a 3d 00       	cmp    WORD PTR ds:0x3d6a,0x0
   368c2:	75 63                	jne    0x36927
   368c4:	f7 06 5e 3d 04 00    	test   WORD PTR ds:0x3d5e,0x4
   368ca:	75 5b                	jne    0x36927
   368cc:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   368d0:	6b db 1d             	imul   bx,bx,0x1d
   368d3:	b8 88 01             	mov    ax,0x188
   368d6:	8e c0                	mov    es,ax
   368d8:	26 80 bf 4d 2e 00    	cmp    BYTE PTR es:[bx+0x2e4d],0x0
   368de:	74 1e                	je     0x368fe
   368e0:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   368e4:	6b db 1d             	imul   bx,bx,0x1d
   368e7:	b8 88 01             	mov    ax,0x188
   368ea:	8e c0                	mov    es,ax
   368ec:	26 8a 87 4d 2e       	mov    al,BYTE PTR es:[bx+0x2e4d]
   368f1:	b4 00                	mov    ah,0x0
   368f3:	50                   	push   ax
   368f4:	9a 2a 00 30 01       	call   0x130:0x2a
   368f9:	59                   	pop    cx
   368fa:	0a c0                	or     al,al
   368fc:	75 29                	jne    0x36927
   368fe:	6a 00                	push   0x0
   36900:	6a 01                	push   0x1
   36902:	1e                   	push   ds
   36903:	68 d2 43             	push   0x43d2
   36906:	9a 48 29 10 00       	call   0x10:0x2948
   3690b:	83 c4 08             	add    sp,0x8
   3690e:	6a 14                	push   0x14
   36910:	9a ca 2d 10 00       	call   0x10:0x2dca
   36915:	59                   	pop    cx
   36916:	c7 06 6a 3d 01 00    	mov    WORD PTR ds:0x3d6a,0x1
   3691c:	c7 06 84 ba 02 00    	mov    WORD PTR ds:0xba84,0x2
   36922:	9a b9 1e 10 00       	call   0x10:0x1eb9
   36927:	68 b2 00             	push   0xb2
   3692a:	68 c6 00             	push   0xc6
   3692d:	90                   	nop
   3692e:	0e                   	push   cs
   3692f:	e8 00 03             	call   0x36c32
   36932:	83 c4 04             	add    sp,0x4
   36935:	c9                   	leave
   36936:	cb                   	retf
   36937:	55                   	push   bp
   36938:	8b ec                	mov    bp,sp
   3693a:	83 ec 02             	sub    sp,0x2
   3693d:	c6 06 f8 b9 00       	mov    BYTE PTR ds:0xb9f8,0x0
   36942:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   36947:	e9 28 02             	jmp    0x36b72
   3694a:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   3694d:	6b db 06             	imul   bx,bx,0x6
   36950:	b8 88 01             	mov    ax,0x188
   36953:	8e c0                	mov    es,ax
   36955:	26 83 bf dc 5b 00    	cmp    WORD PTR es:[bx+0x5bdc],0x0
   3695b:	75 03                	jne    0x36960
   3695d:	e9 1b 02             	jmp    0x36b7b
   36960:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   36964:	75 10                	jne    0x36976
   36966:	1e                   	push   ds
   36967:	68 eb 43             	push   0x43eb
   3696a:	1e                   	push   ds
   3696b:	68 f8 b9             	push   0xb9f8
   3696e:	9a 0b 53 00 00       	call   0x0:0x530b
   36973:	83 c4 08             	add    sp,0x8
   36976:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   36979:	6b db 06             	imul   bx,bx,0x6
   3697c:	b8 88 01             	mov    ax,0x188
   3697f:	8e c0                	mov    es,ax
   36981:	26 83 bf dc 5b 01    	cmp    WORD PTR es:[bx+0x5bdc],0x1
   36987:	75 10                	jne    0x36999
   36989:	1e                   	push   ds
   3698a:	68 ef 43             	push   0x43ef
   3698d:	1e                   	push   ds
   3698e:	68 f8 b9             	push   0xb9f8
   36991:	9a 0b 53 00 00       	call   0x0:0x530b
   36996:	83 c4 08             	add    sp,0x8
   36999:	6a 01                	push   0x1
   3699b:	1e                   	push   ds
   3699c:	68 f8 b9             	push   0xb9f8
   3699f:	9a 48 00 80 01       	call   0x180:0x48
   369a4:	83 c4 06             	add    sp,0x6
   369a7:	50                   	push   ax
   369a8:	6a 01                	push   0x1
   369aa:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   369ad:	6b db 06             	imul   bx,bx,0x6
   369b0:	b8 88 01             	mov    ax,0x188
   369b3:	8e c0                	mov    es,ax
   369b5:	26 8b 87 da 5b       	mov    ax,WORD PTR es:[bx+0x5bda]
   369ba:	6b c0 13             	imul   ax,ax,0x13
   369bd:	05 b3 1e             	add    ax,0x1eb3
   369c0:	68 88 01             	push   0x188
   369c3:	50                   	push   ax
   369c4:	9a 48 00 80 01       	call   0x180:0x48
   369c9:	83 c4 06             	add    sp,0x6
   369cc:	5a                   	pop    dx
   369cd:	03 d0                	add    dx,ax
   369cf:	81 fa 2c 01          	cmp    dx,0x12c
   369d3:	7e 10                	jle    0x369e5
   369d5:	1e                   	push   ds
   369d6:	68 f4 43             	push   0x43f4
   369d9:	1e                   	push   ds
   369da:	68 f8 b9             	push   0xb9f8
   369dd:	9a 0b 53 00 00       	call   0x0:0x530b
   369e2:	83 c4 08             	add    sp,0x8
   369e5:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   369e8:	6b db 06             	imul   bx,bx,0x6
   369eb:	b8 88 01             	mov    ax,0x188
   369ee:	8e c0                	mov    es,ax
   369f0:	26 8b 87 da 5b       	mov    ax,WORD PTR es:[bx+0x5bda]
   369f5:	bb 64 00             	mov    bx,0x64
   369f8:	99                   	cwd
   369f9:	f7 fb                	idiv   bx
   369fb:	6b d2 13             	imul   dx,dx,0x13
   369fe:	81 c2 b3 1e          	add    dx,0x1eb3
   36a02:	68 88 01             	push   0x188
   36a05:	52                   	push   dx
   36a06:	1e                   	push   ds
   36a07:	68 f8 b9             	push   0xb9f8
   36a0a:	9a 0b 53 00 00       	call   0x0:0x530b
   36a0f:	83 c4 08             	add    sp,0x8
   36a12:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   36a15:	6b db 06             	imul   bx,bx,0x6
   36a18:	b8 88 01             	mov    ax,0x188
   36a1b:	8e c0                	mov    es,ax
   36a1d:	26 83 bf dc 5b 01    	cmp    WORD PTR es:[bx+0x5bdc],0x1
   36a23:	7f 03                	jg     0x36a28
   36a25:	e9 2a 01             	jmp    0x36b52
   36a28:	6a 02                	push   0x2
   36a2a:	1e                   	push   ds
   36a2b:	68 f6 43             	push   0x43f6
   36a2e:	1e                   	push   ds
   36a2f:	1e                   	push   ds
   36a30:	68 f8 b9             	push   0xb9f8
   36a33:	9a cc 49 00 00       	call   0x0:0x49cc
   36a38:	83 c4 04             	add    sp,0x4
   36a3b:	2d 02 00             	sub    ax,0x2
   36a3e:	05 f8 b9             	add    ax,0xb9f8
   36a41:	50                   	push   ax
   36a42:	9a eb 49 00 00       	call   0x0:0x49eb
   36a47:	83 c4 0a             	add    sp,0xa
   36a4a:	0b c0                	or     ax,ax
   36a4c:	75 20                	jne    0x36a6e
   36a4e:	1e                   	push   ds
   36a4f:	68 f9 43             	push   0x43f9
   36a52:	1e                   	push   ds
   36a53:	68 f8 b9             	push   0xb9f8
   36a56:	9a cc 49 00 00       	call   0x0:0x49cc
   36a5b:	83 c4 04             	add    sp,0x4
   36a5e:	2d 02 00             	sub    ax,0x2
   36a61:	05 f8 b9             	add    ax,0xb9f8
   36a64:	1e                   	push   ds
   36a65:	50                   	push   ax
   36a66:	9a 7a 53 00 00       	call   0x0:0x537a
   36a6b:	e9 e1 00             	jmp    0x36b4f
   36a6e:	6a 02                	push   0x2
   36a70:	1e                   	push   ds
   36a71:	68 fe 43             	push   0x43fe
   36a74:	1e                   	push   ds
   36a75:	1e                   	push   ds
   36a76:	68 f8 b9             	push   0xb9f8
   36a79:	9a cc 49 00 00       	call   0x0:0x49cc
   36a7e:	83 c4 04             	add    sp,0x4
   36a81:	2d 02 00             	sub    ax,0x2
   36a84:	05 f8 b9             	add    ax,0xb9f8
   36a87:	50                   	push   ax
   36a88:	9a eb 49 00 00       	call   0x0:0x49eb
   36a8d:	83 c4 0a             	add    sp,0xa
   36a90:	0b c0                	or     ax,ax
   36a92:	75 20                	jne    0x36ab4
   36a94:	1e                   	push   ds
   36a95:	68 01 44             	push   0x4401
   36a98:	1e                   	push   ds
   36a99:	68 f8 b9             	push   0xb9f8
   36a9c:	9a cc 49 00 00       	call   0x0:0x49cc
   36aa1:	83 c4 04             	add    sp,0x4
   36aa4:	2d 02 00             	sub    ax,0x2
   36aa7:	05 f8 b9             	add    ax,0xb9f8
   36aaa:	1e                   	push   ds
   36aab:	50                   	push   ax
   36aac:	9a 7a 53 00 00       	call   0x0:0x537a
   36ab1:	e9 9b 00             	jmp    0x36b4f
   36ab4:	6a 65                	push   0x65
   36ab6:	1e                   	push   ds
   36ab7:	1e                   	push   ds
   36ab8:	68 f8 b9             	push   0xb9f8
   36abb:	9a cc 49 00 00       	call   0x0:0x49cc
   36ac0:	83 c4 04             	add    sp,0x4
   36ac3:	2d 03 00             	sub    ax,0x3
   36ac6:	05 f8 b9             	add    ax,0xb9f8
   36ac9:	50                   	push   ax
   36aca:	9a 36 49 00 00       	call   0x0:0x4936
   36acf:	83 c4 06             	add    sp,0x6
   36ad2:	0b c2                	or     ax,dx
   36ad4:	75 66                	jne    0x36b3c
   36ad6:	6a 69                	push   0x69
   36ad8:	1e                   	push   ds
   36ad9:	1e                   	push   ds
   36ada:	68 f8 b9             	push   0xb9f8
   36add:	9a cc 49 00 00       	call   0x0:0x49cc
   36ae2:	83 c4 04             	add    sp,0x4
   36ae5:	2d 03 00             	sub    ax,0x3
   36ae8:	05 f8 b9             	add    ax,0xb9f8
   36aeb:	50                   	push   ax
   36aec:	9a 36 49 00 00       	call   0x0:0x4936
   36af1:	83 c4 06             	add    sp,0x6
   36af4:	0b c2                	or     ax,dx
   36af6:	75 44                	jne    0x36b3c
   36af8:	6a 94                	push   0xff94
   36afa:	1e                   	push   ds
   36afb:	1e                   	push   ds
   36afc:	68 f8 b9             	push   0xb9f8
   36aff:	9a cc 49 00 00       	call   0x0:0x49cc
   36b04:	83 c4 04             	add    sp,0x4
   36b07:	2d 03 00             	sub    ax,0x3
   36b0a:	05 f8 b9             	add    ax,0xb9f8
   36b0d:	50                   	push   ax
   36b0e:	9a 36 49 00 00       	call   0x0:0x4936
   36b13:	83 c4 06             	add    sp,0x6
   36b16:	0b c2                	or     ax,dx
   36b18:	75 22                	jne    0x36b3c
   36b1a:	6a 81                	push   0xff81
   36b1c:	1e                   	push   ds
   36b1d:	1e                   	push   ds
   36b1e:	68 f8 b9             	push   0xb9f8
   36b21:	9a cc 49 00 00       	call   0x0:0x49cc
   36b26:	83 c4 04             	add    sp,0x4
   36b29:	2d 03 00             	sub    ax,0x3
   36b2c:	05 f8 b9             	add    ax,0xb9f8
   36b2f:	50                   	push   ax
   36b30:	9a 36 49 00 00       	call   0x0:0x4936
   36b35:	83 c4 06             	add    sp,0x6
   36b38:	0b c2                	or     ax,dx
   36b3a:	74 06                	je     0x36b42
   36b3c:	1e                   	push   ds
   36b3d:	68 07 44             	push   0x4407
   36b40:	eb 04                	jmp    0x36b46
   36b42:	1e                   	push   ds
   36b43:	68 0b 44             	push   0x440b
   36b46:	1e                   	push   ds
   36b47:	68 f8 b9             	push   0xb9f8
   36b4a:	9a 0b 53 00 00       	call   0x0:0x530b
   36b4f:	83 c4 08             	add    sp,0x8
   36b52:	1e                   	push   ds
   36b53:	68 0f 44             	push   0x440f
   36b56:	1e                   	push   ds
   36b57:	68 f8 b9             	push   0xb9f8
   36b5a:	9a 0b 53 00 00       	call   0x0:0x530b
   36b5f:	83 c4 08             	add    sp,0x8
   36b62:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   36b65:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   36b68:	bb 03 00             	mov    bx,0x3
   36b6b:	99                   	cwd
   36b6c:	f7 fb                	idiv   bx
   36b6e:	42                   	inc    dx
   36b6f:	89 56 06             	mov    WORD PTR [bp+0x6],dx
   36b72:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   36b76:	7d 03                	jge    0x36b7b
   36b78:	e9 cf fd             	jmp    0x3694a
   36b7b:	6a 01                	push   0x1
   36b7d:	1e                   	push   ds
   36b7e:	68 f8 b9             	push   0xb9f8
   36b81:	9a 48 00 80 01       	call   0x180:0x48
   36b86:	83 c4 06             	add    sp,0x6
   36b89:	3d c8 00             	cmp    ax,0xc8
   36b8c:	7e 10                	jle    0x36b9e
   36b8e:	1e                   	push   ds
   36b8f:	68 11 44             	push   0x4411
   36b92:	1e                   	push   ds
   36b93:	68 f8 b9             	push   0xb9f8
   36b96:	9a 0b 53 00 00       	call   0x0:0x530b
   36b9b:	83 c4 08             	add    sp,0x8
   36b9e:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   36ba1:	6b db 06             	imul   bx,bx,0x6
   36ba4:	b8 88 01             	mov    ax,0x188
   36ba7:	8e c0                	mov    es,ax
   36ba9:	26 83 bf d4 5b 1f    	cmp    WORD PTR es:[bx+0x5bd4],0x1f
   36baf:	74 2a                	je     0x36bdb
   36bb1:	6a 00                	push   0x0
   36bb3:	68 00 80             	push   0x8000
   36bb6:	9a 79 17 00 00       	call   0x0:0x1779
   36bbb:	99                   	cwd
   36bbc:	50                   	push   ax
   36bbd:	52                   	push   dx
   36bbe:	33 d2                	xor    dx,dx
   36bc0:	b8 05 00             	mov    ax,0x5
   36bc3:	59                   	pop    cx
   36bc4:	5b                   	pop    bx
   36bc5:	9a 42 12 00 00       	call   0x0:0x1242
   36bca:	52                   	push   dx
   36bcb:	50                   	push   ax
   36bcc:	9a df 12 00 00       	call   0x0:0x12df
   36bd1:	6b c0 11             	imul   ax,ax,0x11
   36bd4:	05 77 3d             	add    ax,0x3d77
   36bd7:	1e                   	push   ds
   36bd8:	50                   	push   ax
   36bd9:	eb 04                	jmp    0x36bdf
   36bdb:	1e                   	push   ds
   36bdc:	68 13 44             	push   0x4413
   36bdf:	9a 3e 00 80 01       	call   0x180:0x3e
   36be4:	83 c4 04             	add    sp,0x4
   36be7:	52                   	push   dx
   36be8:	50                   	push   ax
   36be9:	1e                   	push   ds
   36bea:	68 f8 b9             	push   0xb9f8
   36bed:	9a 0b 53 00 00       	call   0x0:0x530b
   36bf2:	83 c4 08             	add    sp,0x8
   36bf5:	1e                   	push   ds
   36bf6:	68 19 44             	push   0x4419
   36bf9:	1e                   	push   ds
   36bfa:	68 f8 b9             	push   0xb9f8
   36bfd:	9a 0b 53 00 00       	call   0x0:0x530b
   36c02:	83 c4 08             	add    sp,0x8
   36c05:	1e                   	push   ds
   36c06:	68 f8 b9             	push   0xb9f8
   36c09:	9a cc 49 00 00       	call   0x0:0x49cc
   36c0e:	83 c4 04             	add    sp,0x4
   36c11:	3d 4a 00             	cmp    ax,0x4a
   36c14:	76 15                	jbe    0x36c2b
   36c16:	6a 4b                	push   0x4b
   36c18:	6a 00                	push   0x0
   36c1a:	6a 00                	push   0x0
   36c1c:	68 ea 07             	push   0x7ea
   36c1f:	1e                   	push   ds
   36c20:	68 1c 44             	push   0x441c
   36c23:	9a 2a 00 58 01       	call   0x158:0x2a
   36c28:	83 c4 0c             	add    sp,0xc
   36c2b:	8c da                	mov    dx,ds
   36c2d:	b8 f8 b9             	mov    ax,0xb9f8
   36c30:	c9                   	leave
   36c31:	cb                   	retf
   36c32:	55                   	push   bp
   36c33:	8b ec                	mov    bp,sp
   36c35:	83 ec 4a             	sub    sp,0x4a
   36c38:	c7 46 fa 6e 00       	mov    WORD PTR [bp-0x6],0x6e
   36c3d:	c7 46 f8 06 00       	mov    WORD PTR [bp-0x8],0x6
   36c42:	c6 46 f7 02          	mov    BYTE PTR [bp-0x9],0x2
   36c46:	f7 06 5e 3d 10 00    	test   WORD PTR ds:0x3d5e,0x10
   36c4c:	74 05                	je     0x36c53
   36c4e:	c6 06 42 ba 00       	mov    BYTE PTR ds:0xba42,0x0
   36c53:	ff 36 64 3d          	push   WORD PTR ds:0x3d64
   36c57:	ff 36 66 3d          	push   WORD PTR ds:0x3d66
   36c5b:	a1 68 3d             	mov    ax,ds:0x3d68
   36c5e:	bb 07 00             	mov    bx,0x7
   36c61:	99                   	cwd
   36c62:	f7 fb                	idiv   bx
   36c64:	6b d2 0a             	imul   dx,dx,0xa
   36c67:	81 c2 2c 3e          	add    dx,0x3e2c
   36c6b:	1e                   	push   ds
   36c6c:	52                   	push   dx
   36c6d:	a1 68 3d             	mov    ax,ds:0x3d68
   36c70:	bb 1e 00             	mov    bx,0x1e
   36c73:	99                   	cwd
   36c74:	f7 fb                	idiv   bx
   36c76:	c1 e0 03             	shl    ax,0x3
   36c79:	05 cc 3d             	add    ax,0x3dcc
   36c7c:	1e                   	push   ds
   36c7d:	50                   	push   ax
   36c7e:	a1 68 3d             	mov    ax,ds:0x3d68
   36c81:	bb 1e 00             	mov    bx,0x1e
   36c84:	99                   	cwd
   36c85:	f7 fb                	idiv   bx
   36c87:	42                   	inc    dx
   36c88:	52                   	push   dx
   36c89:	1e                   	push   ds
   36c8a:	68 2b 44             	push   0x442b
   36c8d:	16                   	push   ss
   36c8e:	8d 46 b6             	lea    ax,[bp-0x4a]
   36c91:	50                   	push   ax
   36c92:	9a b4 48 00 00       	call   0x0:0x48b4
   36c97:	83 c4 16             	add    sp,0x16
   36c9a:	16                   	push   ss
   36c9b:	8d 46 b6             	lea    ax,[bp-0x4a]
   36c9e:	50                   	push   ax
   36c9f:	9a 3e 00 80 01       	call   0x180:0x3e
   36ca4:	83 c4 04             	add    sp,0x4
   36ca7:	80 3e 42 ba 00       	cmp    BYTE PTR ds:0xba42,0x0
   36cac:	75 07                	jne    0x36cb5
   36cae:	33 c0                	xor    ax,ax
   36cb0:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   36cb3:	eb 5d                	jmp    0x36d12
   36cb5:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   36cba:	eb 17                	jmp    0x36cd3
   36cbc:	8d 46 b6             	lea    ax,[bp-0x4a]
   36cbf:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   36cc2:	03 d8                	add    bx,ax
   36cc4:	36 8a 07             	mov    al,BYTE PTR ss:[bx]
   36cc7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   36cca:	3a 87 42 ba          	cmp    al,BYTE PTR [bx-0x45be]
   36cce:	75 15                	jne    0x36ce5
   36cd0:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   36cd3:	16                   	push   ss
   36cd4:	8d 46 b6             	lea    ax,[bp-0x4a]
   36cd7:	50                   	push   ax
   36cd8:	9a a3 53 00 00       	call   0x0:0x53a3
   36cdd:	83 c4 04             	add    sp,0x4
   36ce0:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   36ce3:	77 d7                	ja     0x36cbc
   36ce5:	ff 76 fe             	push   WORD PTR [bp-0x2]
   36ce8:	16                   	push   ss
   36ce9:	8d 46 b6             	lea    ax,[bp-0x4a]
   36cec:	50                   	push   ax
   36ced:	1e                   	push   ds
   36cee:	68 42 ba             	push   0xba42
   36cf1:	9a c2 53 00 00       	call   0x0:0x53c2
   36cf6:	83 c4 0a             	add    sp,0xa
   36cf9:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   36cfc:	c6 87 42 ba 00       	mov    BYTE PTR [bx-0x45be],0x0
   36d01:	8a 46 f7             	mov    al,BYTE PTR [bp-0x9]
   36d04:	50                   	push   ax
   36d05:	1e                   	push   ds
   36d06:	68 42 ba             	push   0xba42
   36d09:	9a 48 00 80 01       	call   0x180:0x48
   36d0e:	83 c4 06             	add    sp,0x6
   36d11:	40                   	inc    ax
   36d12:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   36d15:	16                   	push   ss
   36d16:	8d 46 b6             	lea    ax,[bp-0x4a]
   36d19:	50                   	push   ax
   36d1a:	9a cc 49 00 00       	call   0x0:0x49cc
   36d1f:	83 c4 04             	add    sp,0x4
   36d22:	3d 3f 00             	cmp    ax,0x3f
   36d25:	76 15                	jbe    0x36d3c
   36d27:	6a 4c                	push   0x4c
   36d29:	6a 00                	push   0x0
   36d2b:	6a 00                	push   0x0
   36d2d:	68 08 08             	push   0x808
   36d30:	1e                   	push   ds
   36d31:	68 3f 44             	push   0x443f
   36d34:	9a 2a 00 58 01       	call   0x158:0x2a
   36d39:	83 c4 0c             	add    sp,0xc
   36d3c:	b8 88 01             	mov    ax,0x188
   36d3f:	8e c0                	mov    es,ax
   36d41:	26 a0 5c 96          	mov    al,es:0x965c
   36d45:	50                   	push   ax
   36d46:	9a c7 05 30 00       	call   0x30:0x5c7
   36d4b:	59                   	pop    cx
   36d4c:	0a c0                	or     al,al
   36d4e:	74 05                	je     0x36d55
   36d50:	9a 04 02 30 00       	call   0x30:0x204
   36d55:	6a 00                	push   0x0
   36d57:	6a 00                	push   0x0
   36d59:	ff 76 f8             	push   WORD PTR [bp-0x8]
   36d5c:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   36d5f:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   36d62:	50                   	push   ax
   36d63:	ff 76 08             	push   WORD PTR [bp+0x8]
   36d66:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   36d69:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   36d6c:	50                   	push   ax
   36d6d:	9a 08 09 28 00       	call   0x28:0x908
   36d72:	83 c4 0c             	add    sp,0xc
   36d75:	8a 46 f7             	mov    al,BYTE PTR [bp-0x9]
   36d78:	b4 00                	mov    ah,0x0
   36d7a:	3d 01 00             	cmp    ax,0x1
   36d7d:	74 08                	je     0x36d87
   36d7f:	3d 02 00             	cmp    ax,0x2
   36d82:	74 56                	je     0x36dda
   36d84:	e9 9f 00             	jmp    0x36e26
   36d87:	6a 05                	push   0x5
   36d89:	6a 00                	push   0x0
   36d8b:	8d 46 b6             	lea    ax,[bp-0x4a]
   36d8e:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   36d91:	03 d0                	add    dx,ax
   36d93:	16                   	push   ss
   36d94:	52                   	push   dx
   36d95:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   36d98:	40                   	inc    ax
   36d99:	50                   	push   ax
   36d9a:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   36d9d:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   36da0:	40                   	inc    ax
   36da1:	50                   	push   ax
   36da2:	6a 00                	push   0x0
   36da4:	9a 34 00 80 01       	call   0x180:0x34
   36da9:	83 c4 0e             	add    sp,0xe
   36dac:	6a 05                	push   0x5
   36dae:	b8 88 01             	mov    ax,0x188
   36db1:	8e c0                	mov    es,ax
   36db3:	26 a0 65 96          	mov    al,es:0x9665
   36db7:	b4 00                	mov    ah,0x0
   36db9:	50                   	push   ax
   36dba:	8d 46 b6             	lea    ax,[bp-0x4a]
   36dbd:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   36dc0:	03 d0                	add    dx,ax
   36dc2:	16                   	push   ss
   36dc3:	52                   	push   dx
   36dc4:	ff 76 08             	push   WORD PTR [bp+0x8]
   36dc7:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   36dca:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   36dcd:	50                   	push   ax
   36dce:	6a 00                	push   0x0
   36dd0:	9a 34 00 80 01       	call   0x180:0x34
   36dd5:	83 c4 0e             	add    sp,0xe
   36dd8:	eb 4c                	jmp    0x36e26
   36dda:	6a 00                	push   0x0
   36ddc:	8d 46 b6             	lea    ax,[bp-0x4a]
   36ddf:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   36de2:	03 d0                	add    dx,ax
   36de4:	16                   	push   ss
   36de5:	52                   	push   dx
   36de6:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   36de9:	40                   	inc    ax
   36dea:	50                   	push   ax
   36deb:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   36dee:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   36df1:	50                   	push   ax
   36df2:	6a 00                	push   0x0
   36df4:	9a 39 00 80 01       	call   0x180:0x39
   36df9:	83 c4 0c             	add    sp,0xc
   36dfc:	b8 88 01             	mov    ax,0x188
   36dff:	8e c0                	mov    es,ax
   36e01:	26 a0 65 96          	mov    al,es:0x9665
   36e05:	b4 00                	mov    ah,0x0
   36e07:	50                   	push   ax
   36e08:	8d 46 b6             	lea    ax,[bp-0x4a]
   36e0b:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   36e0e:	03 d0                	add    dx,ax
   36e10:	16                   	push   ss
   36e11:	52                   	push   dx
   36e12:	ff 76 08             	push   WORD PTR [bp+0x8]
   36e15:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   36e18:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   36e1b:	50                   	push   ax
   36e1c:	6a 00                	push   0x0
   36e1e:	9a 39 00 80 01       	call   0x180:0x39
   36e23:	83 c4 0c             	add    sp,0xc
   36e26:	b8 88 01             	mov    ax,0x188
   36e29:	8e c0                	mov    es,ax
   36e2b:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   36e30:	50                   	push   ax
   36e31:	9a 69 00 30 00       	call   0x30:0x69
   36e36:	59                   	pop    cx
   36e37:	16                   	push   ss
   36e38:	8d 46 b6             	lea    ax,[bp-0x4a]
   36e3b:	50                   	push   ax
   36e3c:	1e                   	push   ds
   36e3d:	68 42 ba             	push   0xba42
   36e40:	9a 7a 53 00 00       	call   0x0:0x537a
   36e45:	83 c4 08             	add    sp,0x8
   36e48:	c9                   	leave
   36e49:	cb                   	retf
   36e4a:	55                   	push   bp
   36e4b:	8b ec                	mov    bp,sp
   36e4d:	83 ec 3a             	sub    sp,0x3a
   36e50:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   36e55:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   36e5a:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   36e5f:	c6 46 d9 00          	mov    BYTE PTR [bp-0x27],0x0
   36e63:	c7 06 4b bb 9c 00    	mov    WORD PTR ds:0xbb4b,0x9c
   36e69:	c7 06 49 bb 14 00    	mov    WORD PTR ds:0xbb49,0x14
   36e6f:	c7 06 47 bb 23 00    	mov    WORD PTR ds:0xbb47,0x23
   36e75:	c7 06 45 bb 00 00    	mov    WORD PTR ds:0xbb45,0x0
   36e7b:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   36e80:	eb 14                	jmp    0x36e96
   36e82:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   36e85:	6b db 11             	imul   bx,bx,0x11
   36e88:	b8 88 01             	mov    ax,0x188
   36e8b:	8e c0                	mov    es,ax
   36e8d:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   36e93:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   36e96:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   36e9a:	7c e6                	jl     0x36e82
   36e9c:	6a 01                	push   0x1
   36e9e:	b8 88 01             	mov    ax,0x188
   36ea1:	8e c0                	mov    es,ax
   36ea3:	26 ff 36 01 e5       	push   WORD PTR es:0xe501
   36ea8:	26 ff 36 ff e4       	push   WORD PTR es:0xe4ff
   36ead:	9a ab 04 20 00       	call   0x20:0x4ab
   36eb2:	83 c4 06             	add    sp,0x6
   36eb5:	bb 88 01             	mov    bx,0x188
   36eb8:	8e c3                	mov    es,bx
   36eba:	26 89 16 d1 e2       	mov    WORD PTR es:0xe2d1,dx
   36ebf:	26 a3 cf e2          	mov    es:0xe2cf,ax
   36ec3:	b8 88 01             	mov    ax,0x188
   36ec6:	8e c0                	mov    es,ax
   36ec8:	26 a1 fb e4          	mov    ax,es:0xe4fb
   36ecc:	ba 88 01             	mov    dx,0x188
   36ecf:	8e c2                	mov    es,dx
   36ed1:	26 a3 cb e2          	mov    es:0xe2cb,ax
   36ed5:	b8 88 01             	mov    ax,0x188
   36ed8:	8e c0                	mov    es,ax
   36eda:	26 a1 fd e4          	mov    ax,es:0xe4fd
   36ede:	ba 88 01             	mov    dx,0x188
   36ee1:	8e c2                	mov    es,dx
   36ee3:	26 a3 cd e2          	mov    es:0xe2cd,ax
   36ee7:	9a b6 06 30 00       	call   0x30:0x6b6
   36eec:	b8 88 01             	mov    ax,0x188
   36eef:	8e c0                	mov    es,ax
   36ef1:	26 c7 06 e4 d5 00 00 	mov    WORD PTR es:0xd5e4,0x0
   36ef8:	68 c7 00             	push   0xc7
   36efb:	68 3f 01             	push   0x13f
   36efe:	6a 00                	push   0x0
   36f00:	6a 00                	push   0x0
   36f02:	9a 4d 00 50 01       	call   0x150:0x4d
   36f07:	83 c4 08             	add    sp,0x8
   36f0a:	b8 88 01             	mov    ax,0x188
   36f0d:	8e c0                	mov    es,ax
   36f0f:	26 a0 71 96          	mov    al,es:0x9671
   36f13:	50                   	push   ax
   36f14:	9a 69 00 30 00       	call   0x30:0x69
   36f19:	59                   	pop    cx
   36f1a:	83 7e ea 00          	cmp    WORD PTR [bp-0x16],0x0
   36f1e:	74 24                	je     0x36f44
   36f20:	8a 46 ea             	mov    al,BYTE PTR [bp-0x16]
   36f23:	04 ff                	add    al,0xff
   36f25:	ba 88 01             	mov    dx,0x188
   36f28:	8e c2                	mov    es,dx
   36f2a:	26 a2 24 73          	mov    es:0x7324,al
   36f2e:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   36f33:	b8 88 01             	mov    ax,0x188
   36f36:	8e c0                	mov    es,ax
   36f38:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   36f3d:	50                   	push   ax
   36f3e:	9a 69 00 30 00       	call   0x30:0x69
   36f43:	59                   	pop    cx
   36f44:	b8 88 01             	mov    ax,0x188
   36f47:	8e c0                	mov    es,ax
   36f49:	26 ff 36 d1 e2       	push   WORD PTR es:0xe2d1
   36f4e:	26 ff 36 cf e2       	push   WORD PTR es:0xe2cf
   36f53:	b8 88 01             	mov    ax,0x188
   36f56:	8e c0                	mov    es,ax
   36f58:	26 ff 36 01 e5       	push   WORD PTR es:0xe501
   36f5d:	26 ff 36 ff e4       	push   WORD PTR es:0xe4ff
   36f62:	9a 8a 06 20 00       	call   0x20:0x68a
   36f67:	83 c4 08             	add    sp,0x8
   36f6a:	68 e0 01             	push   0x1e0
   36f6d:	68 d0 02             	push   0x2d0
   36f70:	6a 06                	push   0x6
   36f72:	b8 88 01             	mov    ax,0x188
   36f75:	8e c0                	mov    es,ax
   36f77:	26 a0 98 28          	mov    al,es:0x2898
   36f7b:	04 46                	add    al,0x46
   36f7d:	50                   	push   ax
   36f7e:	6a 15                	push   0x15
   36f80:	6a 07                	push   0x7
   36f82:	6a 20                	push   0x20
   36f84:	6a 20                	push   0x20
   36f86:	6a 00                	push   0x0
   36f88:	6a 00                	push   0x0
   36f8a:	9a 30 04 28 00       	call   0x28:0x430
   36f8f:	83 c4 14             	add    sp,0x14
   36f92:	b8 88 01             	mov    ax,0x188
   36f95:	8e c0                	mov    es,ax
   36f97:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   36f9c:	6b db 5c             	imul   bx,bx,0x5c
   36f9f:	b8 88 01             	mov    ax,0x188
   36fa2:	8e c0                	mov    es,ax
   36fa4:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   36faa:	7f 43                	jg     0x36fef
   36fac:	b8 88 01             	mov    ax,0x188
   36faf:	8e c0                	mov    es,ax
   36fb1:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   36fb6:	6b db 5c             	imul   bx,bx,0x5c
   36fb9:	b8 88 01             	mov    ax,0x188
   36fbc:	8e c0                	mov    es,ax
   36fbe:	26 83 bf e0 99 fb    	cmp    WORD PTR es:[bx-0x6620],0xfffb
   36fc4:	7f 14                	jg     0x36fda
   36fc6:	6a 00                	push   0x0
   36fc8:	6a 06                	push   0x6
   36fca:	6a 20                	push   0x20
   36fcc:	6a 20                	push   0x20
   36fce:	6a 15                	push   0x15
   36fd0:	6a 07                	push   0x7
   36fd2:	9a 51 0a 30 00       	call   0x30:0xa51
   36fd7:	83 c4 0c             	add    sp,0xc
   36fda:	68 d9 00             	push   0xd9
   36fdd:	6a 06                	push   0x6
   36fdf:	6a 20                	push   0x20
   36fe1:	6a 20                	push   0x20
   36fe3:	6a 15                	push   0x15
   36fe5:	6a 07                	push   0x7
   36fe7:	9a 51 0a 30 00       	call   0x30:0xa51
   36fec:	83 c4 0c             	add    sp,0xc
   36fef:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   36ff4:	e9 0f 01             	jmp    0x37106
   36ff7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   36ffa:	c1 e3 03             	shl    bx,0x3
   36ffd:	b8 88 01             	mov    ax,0x188
   37000:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   37003:	4a                   	dec    dx
   37004:	6b d2 23             	imul   dx,dx,0x23
   37007:	81 c2 9c 00          	add    dx,0x9c
   3700b:	8e c0                	mov    es,ax
   3700d:	26 89 97 65 e6       	mov    WORD PTR es:[bx-0x199b],dx
   37012:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37015:	c1 e3 03             	shl    bx,0x3
   37018:	b8 88 01             	mov    ax,0x188
   3701b:	8e c0                	mov    es,ax
   3701d:	26 c7 87 67 e6 14 00 	mov    WORD PTR es:[bx-0x1999],0x14
   37024:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37027:	c1 e3 03             	shl    bx,0x3
   3702a:	b8 88 01             	mov    ax,0x188
   3702d:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   37030:	4a                   	dec    dx
   37031:	6b d2 23             	imul   dx,dx,0x23
   37034:	81 c2 bc 00          	add    dx,0xbc
   37038:	8e c0                	mov    es,ax
   3703a:	26 89 97 69 e6       	mov    WORD PTR es:[bx-0x1997],dx
   3703f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37042:	c1 e3 03             	shl    bx,0x3
   37045:	b8 88 01             	mov    ax,0x188
   37048:	8e c0                	mov    es,ax
   3704a:	26 c7 87 6b e6 34 00 	mov    WORD PTR es:[bx-0x1995],0x34
   37051:	68 e0 01             	push   0x1e0
   37054:	68 d0 02             	push   0x2d0
   37057:	6a 06                	push   0x6
   37059:	8a 46 fe             	mov    al,BYTE PTR [bp-0x2]
   3705c:	04 46                	add    al,0x46
   3705e:	50                   	push   ax
   3705f:	6a 14                	push   0x14
   37061:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   37064:	48                   	dec    ax
   37065:	6b c0 23             	imul   ax,ax,0x23
   37068:	05 9c 00             	add    ax,0x9c
   3706b:	50                   	push   ax
   3706c:	6a 20                	push   0x20
   3706e:	6a 20                	push   0x20
   37070:	6a 00                	push   0x0
   37072:	6a 00                	push   0x0
   37074:	9a 30 04 28 00       	call   0x28:0x430
   37079:	83 c4 14             	add    sp,0x14
   3707c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3707f:	6b db 5c             	imul   bx,bx,0x5c
   37082:	b8 88 01             	mov    ax,0x188
   37085:	8e c0                	mov    es,ax
   37087:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   3708d:	7f 74                	jg     0x37103
   3708f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37092:	6b db 5c             	imul   bx,bx,0x5c
   37095:	b8 88 01             	mov    ax,0x188
   37098:	8e c0                	mov    es,ax
   3709a:	26 83 bf e0 99 fb    	cmp    WORD PTR es:[bx-0x6620],0xfffb
   370a0:	7f 30                	jg     0x370d2
   370a2:	6a 00                	push   0x0
   370a4:	6a 06                	push   0x6
   370a6:	6a 20                	push   0x20
   370a8:	6a 20                	push   0x20
   370aa:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   370ad:	4a                   	dec    dx
   370ae:	a1 45 bb             	mov    ax,ds:0xbb45
   370b1:	f7 ea                	imul   dx
   370b3:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   370b7:	03 d0                	add    dx,ax
   370b9:	52                   	push   dx
   370ba:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   370bd:	4a                   	dec    dx
   370be:	a1 47 bb             	mov    ax,ds:0xbb47
   370c1:	f7 ea                	imul   dx
   370c3:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   370c7:	03 d0                	add    dx,ax
   370c9:	52                   	push   dx
   370ca:	9a 51 0a 30 00       	call   0x30:0xa51
   370cf:	83 c4 0c             	add    sp,0xc
   370d2:	68 d9 00             	push   0xd9
   370d5:	6a 06                	push   0x6
   370d7:	6a 20                	push   0x20
   370d9:	6a 20                	push   0x20
   370db:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   370de:	4a                   	dec    dx
   370df:	a1 45 bb             	mov    ax,ds:0xbb45
   370e2:	f7 ea                	imul   dx
   370e4:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   370e8:	03 d0                	add    dx,ax
   370ea:	52                   	push   dx
   370eb:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   370ee:	4a                   	dec    dx
   370ef:	a1 47 bb             	mov    ax,ds:0xbb47
   370f2:	f7 ea                	imul   dx
   370f4:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   370f8:	03 d0                	add    dx,ax
   370fa:	52                   	push   dx
   370fb:	9a 51 0a 30 00       	call   0x30:0xa51
   37100:	83 c4 0c             	add    sp,0xc
   37103:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   37106:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   3710a:	7f 03                	jg     0x3710f
   3710c:	e9 e8 fe             	jmp    0x36ff7
   3710f:	b8 88 01             	mov    ax,0x188
   37112:	8e c0                	mov    es,ax
   37114:	26 c7 06 8d e6 28 01 	mov    WORD PTR es:0xe68d,0x128
   3711b:	b8 88 01             	mov    ax,0x188
   3711e:	8e c0                	mov    es,ax
   37120:	26 c7 06 8f e6 14 00 	mov    WORD PTR es:0xe68f,0x14
   37127:	b8 88 01             	mov    ax,0x188
   3712a:	8e c0                	mov    es,ax
   3712c:	26 c7 06 91 e6 3c 01 	mov    WORD PTR es:0xe691,0x13c
   37133:	b8 88 01             	mov    ax,0x188
   37136:	8e c0                	mov    es,ax
   37138:	26 c7 06 93 e6 34 00 	mov    WORD PTR es:0xe693,0x34
   3713f:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   37144:	e9 23 01             	jmp    0x3726a
   37147:	b8 88 01             	mov    ax,0x188
   3714a:	8e c0                	mov    es,ax
   3714c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37151:	6b db 5c             	imul   bx,bx,0x5c
   37154:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   37157:	d1 e0                	shl    ax,1
   37159:	03 d8                	add    bx,ax
   3715b:	b8 88 01             	mov    ax,0x188
   3715e:	8e c0                	mov    es,ax
   37160:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   37165:	bb 64 00             	mov    bx,0x64
   37168:	99                   	cwd
   37169:	f7 fb                	idiv   bx
   3716b:	b8 88 01             	mov    ax,0x188
   3716e:	8e c0                	mov    es,ax
   37170:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   37175:	b8 88 01             	mov    ax,0x188
   37178:	8e c0                	mov    es,ax
   3717a:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   37180:	75 0e                	jne    0x37190
   37182:	b8 88 01             	mov    ax,0x188
   37185:	8e c0                	mov    es,ax
   37187:	26 c7 06 ea d5 22 00 	mov    WORD PTR es:0xd5ea,0x22
   3718e:	eb 18                	jmp    0x371a8
   37190:	b8 88 01             	mov    ax,0x188
   37193:	8e c0                	mov    es,ax
   37195:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   3719b:	7e 0b                	jle    0x371a8
   3719d:	b8 88 01             	mov    ax,0x188
   371a0:	8e c0                	mov    es,ax
   371a2:	26 83 06 ea d5 02    	add    WORD PTR es:0xd5ea,0x2
   371a8:	b8 88 01             	mov    ax,0x188
   371ab:	8e c0                	mov    es,ax
   371ad:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   371b3:	75 03                	jne    0x371b8
   371b5:	e9 89 00             	jmp    0x37241
   371b8:	68 e0 01             	push   0x1e0
   371bb:	68 41 03             	push   0x341
   371be:	6a 06                	push   0x6
   371c0:	6a 4b                	push   0x4b
   371c2:	6a 01                	push   0x1
   371c4:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   371c7:	48                   	dec    ax
   371c8:	c1 e0 04             	shl    ax,0x4
   371cb:	40                   	inc    ax
   371cc:	50                   	push   ax
   371cd:	6a 0f                	push   0xf
   371cf:	6a 0f                	push   0xf
   371d1:	6a 00                	push   0x0
   371d3:	b8 88 01             	mov    ax,0x188
   371d6:	8e c0                	mov    es,ax
   371d8:	26 a1 ea d5          	mov    ax,es:0xd5ea
   371dc:	48                   	dec    ax
   371dd:	6b c0 0f             	imul   ax,ax,0xf
   371e0:	50                   	push   ax
   371e1:	9a 30 04 28 00       	call   0x28:0x430
   371e6:	83 c4 14             	add    sp,0x14
   371e9:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   371ec:	c1 e3 03             	shl    bx,0x3
   371ef:	b8 88 01             	mov    ax,0x188
   371f2:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   371f5:	4a                   	dec    dx
   371f6:	c1 e2 04             	shl    dx,0x4
   371f9:	42                   	inc    dx
   371fa:	8e c0                	mov    es,ax
   371fc:	26 89 97 f5 e5       	mov    WORD PTR es:[bx-0x1a0b],dx
   37201:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37204:	c1 e3 03             	shl    bx,0x3
   37207:	b8 88 01             	mov    ax,0x188
   3720a:	8e c0                	mov    es,ax
   3720c:	26 c7 87 f7 e5 01 00 	mov    WORD PTR es:[bx-0x1a09],0x1
   37213:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37216:	c1 e3 03             	shl    bx,0x3
   37219:	b8 88 01             	mov    ax,0x188
   3721c:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3721f:	4a                   	dec    dx
   37220:	c1 e2 04             	shl    dx,0x4
   37223:	83 c2 0f             	add    dx,0xf
   37226:	8e c0                	mov    es,ax
   37228:	26 89 97 f9 e5       	mov    WORD PTR es:[bx-0x1a07],dx
   3722d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37230:	c1 e3 03             	shl    bx,0x3
   37233:	b8 88 01             	mov    ax,0x188
   37236:	8e c0                	mov    es,ax
   37238:	26 c7 87 fb e5 10 00 	mov    WORD PTR es:[bx-0x1a05],0x10
   3723f:	eb 26                	jmp    0x37267
   37241:	68 e0 01             	push   0x1e0
   37244:	68 41 03             	push   0x341
   37247:	6a 06                	push   0x6
   37249:	6a 4b                	push   0x4b
   3724b:	6a 01                	push   0x1
   3724d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   37250:	48                   	dec    ax
   37251:	c1 e0 04             	shl    ax,0x4
   37254:	40                   	inc    ax
   37255:	50                   	push   ax
   37256:	6a 0f                	push   0xf
   37258:	6a 0f                	push   0xf
   3725a:	6a 00                	push   0x0
   3725c:	68 e0 01             	push   0x1e0
   3725f:	9a 30 04 28 00       	call   0x28:0x430
   37264:	83 c4 14             	add    sp,0x14
   37267:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3726a:	83 7e fe 0a          	cmp    WORD PTR [bp-0x2],0xa
   3726e:	7f 03                	jg     0x37273
   37270:	e9 d4 fe             	jmp    0x37147
   37273:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   37278:	e9 35 01             	jmp    0x373b0
   3727b:	b8 88 01             	mov    ax,0x188
   3727e:	8e c0                	mov    es,ax
   37280:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37285:	6b db 5c             	imul   bx,bx,0x5c
   37288:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3728b:	d1 e0                	shl    ax,1
   3728d:	03 d8                	add    bx,ax
   3728f:	b8 88 01             	mov    ax,0x188
   37292:	8e c0                	mov    es,ax
   37294:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   37299:	d1 e0                	shl    ax,1
   3729b:	ba 88 01             	mov    dx,0x188
   3729e:	8e c2                	mov    es,dx
   372a0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   372a5:	6b db 5c             	imul   bx,bx,0x5c
   372a8:	03 d8                	add    bx,ax
   372aa:	b8 88 01             	mov    ax,0x188
   372ad:	8e c0                	mov    es,ax
   372af:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   372b4:	bb 64 00             	mov    bx,0x64
   372b7:	99                   	cwd
   372b8:	f7 fb                	idiv   bx
   372ba:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   372bd:	83 7e fc 2b          	cmp    WORD PTR [bp-0x4],0x2b
   372c1:	75 07                	jne    0x372ca
   372c3:	c7 46 fc 22 00       	mov    WORD PTR [bp-0x4],0x22
   372c8:	eb 0a                	jmp    0x372d4
   372ca:	83 7e fc 20          	cmp    WORD PTR [bp-0x4],0x20
   372ce:	7e 04                	jle    0x372d4
   372d0:	83 46 fc 02          	add    WORD PTR [bp-0x4],0x2
   372d4:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   372d8:	74 4b                	je     0x37325
   372da:	b8 88 01             	mov    ax,0x188
   372dd:	8e c0                	mov    es,ax
   372df:	26 a0 67 96          	mov    al,es:0x9667
   372e3:	50                   	push   ax
   372e4:	6a 06                	push   0x6
   372e6:	6a 0f                	push   0xf
   372e8:	6a 0f                	push   0xf
   372ea:	6a 26                	push   0x26
   372ec:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   372ef:	48                   	dec    ax
   372f0:	6b c0 11             	imul   ax,ax,0x11
   372f3:	05 29 00             	add    ax,0x29
   372f6:	50                   	push   ax
   372f7:	9a 08 09 28 00       	call   0x28:0x908
   372fc:	83 c4 0c             	add    sp,0xc
   372ff:	68 e0 01             	push   0x1e0
   37302:	68 41 03             	push   0x341
   37305:	6a 06                	push   0x6
   37307:	6a 4b                	push   0x4b
   37309:	6a 26                	push   0x26
   3730b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3730e:	48                   	dec    ax
   3730f:	6b c0 11             	imul   ax,ax,0x11
   37312:	05 29 00             	add    ax,0x29
   37315:	50                   	push   ax
   37316:	6a 0f                	push   0xf
   37318:	6a 0f                	push   0xf
   3731a:	6a 00                	push   0x0
   3731c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3731f:	48                   	dec    ax
   37320:	6b c0 0f             	imul   ax,ax,0xf
   37323:	eb 27                	jmp    0x3734c
   37325:	68 e0 01             	push   0x1e0
   37328:	68 d0 02             	push   0x2d0
   3732b:	6a 06                	push   0x6
   3732d:	6a 4c                	push   0x4c
   3732f:	6a 26                	push   0x26
   37331:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   37334:	48                   	dec    ax
   37335:	6b c0 11             	imul   ax,ax,0x11
   37338:	05 29 00             	add    ax,0x29
   3733b:	50                   	push   ax
   3733c:	6a 0f                	push   0xf
   3733e:	6a 0f                	push   0xf
   37340:	6a 26                	push   0x26
   37342:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   37345:	48                   	dec    ax
   37346:	6b c0 11             	imul   ax,ax,0x11
   37349:	05 29 00             	add    ax,0x29
   3734c:	50                   	push   ax
   3734d:	9a 30 04 28 00       	call   0x28:0x430
   37352:	83 c4 14             	add    sp,0x14
   37355:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37358:	c1 e3 03             	shl    bx,0x3
   3735b:	b8 88 01             	mov    ax,0x188
   3735e:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   37361:	4a                   	dec    dx
   37362:	6b d2 11             	imul   dx,dx,0x11
   37365:	83 c2 29             	add    dx,0x29
   37368:	8e c0                	mov    es,ax
   3736a:	26 89 97 45 e6       	mov    WORD PTR es:[bx-0x19bb],dx
   3736f:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37372:	c1 e3 03             	shl    bx,0x3
   37375:	b8 88 01             	mov    ax,0x188
   37378:	8e c0                	mov    es,ax
   3737a:	26 c7 87 47 e6 26 00 	mov    WORD PTR es:[bx-0x19b9],0x26
   37381:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37384:	c1 e3 03             	shl    bx,0x3
   37387:	b8 88 01             	mov    ax,0x188
   3738a:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3738d:	4a                   	dec    dx
   3738e:	6b d2 11             	imul   dx,dx,0x11
   37391:	83 c2 38             	add    dx,0x38
   37394:	8e c0                	mov    es,ax
   37396:	26 89 97 49 e6       	mov    WORD PTR es:[bx-0x19b7],dx
   3739b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3739e:	c1 e3 03             	shl    bx,0x3
   373a1:	b8 88 01             	mov    ax,0x188
   373a4:	8e c0                	mov    es,ax
   373a6:	26 c7 87 4b e6 35 00 	mov    WORD PTR es:[bx-0x19b5],0x35
   373ad:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   373b0:	83 7e fe 03          	cmp    WORD PTR [bp-0x2],0x3
   373b4:	7f 03                	jg     0x373b9
   373b6:	e9 c2 fe             	jmp    0x3727b
   373b9:	b8 88 01             	mov    ax,0x188
   373bc:	8e c0                	mov    es,ax
   373be:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   373c3:	6b db 5c             	imul   bx,bx,0x5c
   373c6:	b8 88 01             	mov    ax,0x188
   373c9:	8e c0                	mov    es,ax
   373cb:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   373d0:	d1 e0                	shl    ax,1
   373d2:	ba 88 01             	mov    dx,0x188
   373d5:	8e c2                	mov    es,dx
   373d7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   373dc:	6b db 5c             	imul   bx,bx,0x5c
   373df:	03 d8                	add    bx,ax
   373e1:	b8 88 01             	mov    ax,0x188
   373e4:	8e c0                	mov    es,ax
   373e6:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   373eb:	bb 64 00             	mov    bx,0x64
   373ee:	99                   	cwd
   373ef:	f7 fb                	idiv   bx
   373f1:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   373f4:	83 7e fe 2b          	cmp    WORD PTR [bp-0x2],0x2b
   373f8:	75 05                	jne    0x373ff
   373fa:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   373ff:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37402:	6b db 0e             	imul   bx,bx,0xe
   37405:	b8 88 01             	mov    ax,0x188
   37408:	8e c0                	mov    es,ax
   3740a:	26 83 bf 81 0e 02    	cmp    WORD PTR es:[bx+0xe81],0x2
   37410:	75 15                	jne    0x37427
   37412:	68 fd 00             	push   0xfd
   37415:	6a 06                	push   0x6
   37417:	6a 0f                	push   0xf
   37419:	6a 0f                	push   0xf
   3741b:	6a 26                	push   0x26
   3741d:	6a 3a                	push   0x3a
   3741f:	9a 51 0a 30 00       	call   0x30:0xa51
   37424:	83 c4 0c             	add    sp,0xc
   37427:	b8 88 01             	mov    ax,0x188
   3742a:	8e c0                	mov    es,ax
   3742c:	26 c7 06 95 e6 8a 00 	mov    WORD PTR es:0xe695,0x8a
   37433:	b8 88 01             	mov    ax,0x188
   37436:	8e c0                	mov    es,ax
   37438:	26 c7 06 97 e6 68 00 	mov    WORD PTR es:0xe697,0x68
   3743f:	b8 88 01             	mov    ax,0x188
   37442:	8e c0                	mov    es,ax
   37444:	26 c7 06 99 e6 98 00 	mov    WORD PTR es:0xe699,0x98
   3744b:	b8 88 01             	mov    ax,0x188
   3744e:	8e c0                	mov    es,ax
   37450:	26 c7 06 9b e6 86 00 	mov    WORD PTR es:0xe69b,0x86
   37457:	b8 88 01             	mov    ax,0x188
   3745a:	8e c0                	mov    es,ax
   3745c:	26 c7 06 9d e6 8a 00 	mov    WORD PTR es:0xe69d,0x8a
   37463:	b8 88 01             	mov    ax,0x188
   37466:	8e c0                	mov    es,ax
   37468:	26 c7 06 9f e6 57 00 	mov    WORD PTR es:0xe69f,0x57
   3746f:	b8 88 01             	mov    ax,0x188
   37472:	8e c0                	mov    es,ax
   37474:	26 c7 06 a1 e6 98 00 	mov    WORD PTR es:0xe6a1,0x98
   3747b:	b8 88 01             	mov    ax,0x188
   3747e:	8e c0                	mov    es,ax
   37480:	26 c7 06 a3 e6 66 00 	mov    WORD PTR es:0xe6a3,0x66
   37487:	b8 88 01             	mov    ax,0x188
   3748a:	8e c0                	mov    es,ax
   3748c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37491:	6b db 5c             	imul   bx,bx,0x5c
   37494:	b8 88 01             	mov    ax,0x188
   37497:	8e c0                	mov    es,ax
   37499:	26 83 bf d0 99 00    	cmp    WORD PTR es:[bx-0x6630],0x0
   3749f:	7e 5f                	jle    0x37500
   374a1:	b8 88 01             	mov    ax,0x188
   374a4:	8e c0                	mov    es,ax
   374a6:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   374ab:	6b db 5c             	imul   bx,bx,0x5c
   374ae:	b8 88 01             	mov    ax,0x188
   374b1:	8e c0                	mov    es,ax
   374b3:	26 81 bf d0 99 f4 01 	cmp    WORD PTR es:[bx-0x6630],0x1f4
   374ba:	7e 0b                	jle    0x374c7
   374bc:	b8 88 01             	mov    ax,0x188
   374bf:	8e c0                	mov    es,ax
   374c1:	26 a0 6d 96          	mov    al,es:0x966d
   374c5:	eb 09                	jmp    0x374d0
   374c7:	b8 88 01             	mov    ax,0x188
   374ca:	8e c0                	mov    es,ax
   374cc:	26 a0 6c 96          	mov    al,es:0x966c
   374d0:	50                   	push   ax
   374d1:	6a 06                	push   0x6
   374d3:	6a 03                	push   0x3
   374d5:	b8 88 01             	mov    ax,0x188
   374d8:	8e c0                	mov    es,ax
   374da:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   374df:	6b db 5c             	imul   bx,bx,0x5c
   374e2:	b8 88 01             	mov    ax,0x188
   374e5:	8e c0                	mov    es,ax
   374e7:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   374ec:	bb 0a 00             	mov    bx,0xa
   374ef:	99                   	cwd
   374f0:	f7 fb                	idiv   bx
   374f2:	40                   	inc    ax
   374f3:	50                   	push   ax
   374f4:	6a 72                	push   0x72
   374f6:	6a 12                	push   0x12
   374f8:	9a 08 09 28 00       	call   0x28:0x908
   374fd:	83 c4 0c             	add    sp,0xc
   37500:	b8 88 01             	mov    ax,0x188
   37503:	8e c0                	mov    es,ax
   37505:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3750a:	6b db 5c             	imul   bx,bx,0x5c
   3750d:	b8 88 01             	mov    ax,0x188
   37510:	8e c0                	mov    es,ax
   37512:	26 83 bf c8 99 00    	cmp    WORD PTR es:[bx-0x6638],0x0
   37518:	7e 60                	jle    0x3757a
   3751a:	b8 88 01             	mov    ax,0x188
   3751d:	8e c0                	mov    es,ax
   3751f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37524:	6b db 5c             	imul   bx,bx,0x5c
   37527:	b8 88 01             	mov    ax,0x188
   3752a:	8e c0                	mov    es,ax
   3752c:	26 81 bf c8 99 f4 01 	cmp    WORD PTR es:[bx-0x6638],0x1f4
   37533:	7e 0b                	jle    0x37540
   37535:	b8 88 01             	mov    ax,0x188
   37538:	8e c0                	mov    es,ax
   3753a:	26 a0 6d 96          	mov    al,es:0x966d
   3753e:	eb 09                	jmp    0x37549
   37540:	b8 88 01             	mov    ax,0x188
   37543:	8e c0                	mov    es,ax
   37545:	26 a0 6c 96          	mov    al,es:0x966c
   37549:	50                   	push   ax
   3754a:	6a 06                	push   0x6
   3754c:	6a 03                	push   0x3
   3754e:	b8 88 01             	mov    ax,0x188
   37551:	8e c0                	mov    es,ax
   37553:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37558:	6b db 5c             	imul   bx,bx,0x5c
   3755b:	b8 88 01             	mov    ax,0x188
   3755e:	8e c0                	mov    es,ax
   37560:	26 8b 87 c8 99       	mov    ax,WORD PTR es:[bx-0x6638]
   37565:	bb 0a 00             	mov    bx,0xa
   37568:	99                   	cwd
   37569:	f7 fb                	idiv   bx
   3756b:	40                   	inc    ax
   3756c:	50                   	push   ax
   3756d:	68 80 00             	push   0x80
   37570:	6a 12                	push   0x12
   37572:	9a 08 09 28 00       	call   0x28:0x908
   37577:	83 c4 0c             	add    sp,0xc
   3757a:	b8 88 01             	mov    ax,0x188
   3757d:	8e c0                	mov    es,ax
   3757f:	26 a0 64 96          	mov    al,es:0x9664
   37583:	b4 00                	mov    ah,0x0
   37585:	50                   	push   ax
   37586:	6a 06                	push   0x6
   37588:	6a 21                	push   0x21
   3758a:	6a 21                	push   0x21
   3758c:	6a 13                	push   0x13
   3758e:	b8 88 01             	mov    ax,0x188
   37591:	8e c0                	mov    es,ax
   37593:	26 a1 98 28          	mov    ax,es:0x2898
   37597:	48                   	dec    ax
   37598:	6b c0 23             	imul   ax,ax,0x23
   3759b:	05 9b 00             	add    ax,0x9b
   3759e:	50                   	push   ax
   3759f:	9a 99 0b 28 00       	call   0x28:0xb99
   375a4:	83 c4 0c             	add    sp,0xc
   375a7:	c7 46 fa 09 00       	mov    WORD PTR [bp-0x6],0x9
   375ac:	ff 76 fa             	push   WORD PTR [bp-0x6]
   375af:	b8 88 01             	mov    ax,0x188
   375b2:	8e c0                	mov    es,ax
   375b4:	26 a0 69 96          	mov    al,es:0x9669
   375b8:	b4 00                	mov    ah,0x0
   375ba:	50                   	push   ax
   375bb:	6a 05                	push   0x5
   375bd:	6a 01                	push   0x1
   375bf:	b8 88 01             	mov    ax,0x188
   375c2:	8e c0                	mov    es,ax
   375c4:	26 a1 98 28          	mov    ax,es:0x2898
   375c8:	69 c0 94 00          	imul   ax,ax,0x94
   375cc:	05 26 9c             	add    ax,0x9c26
   375cf:	68 88 01             	push   0x188
   375d2:	50                   	push   ax
   375d3:	9a 52 00 38 01       	call   0x138:0x52
   375d8:	83 c4 0c             	add    sp,0xc
   375db:	b8 88 01             	mov    ax,0x188
   375de:	8e c0                	mov    es,ax
   375e0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   375e5:	6b db 5c             	imul   bx,bx,0x5c
   375e8:	b8 88 01             	mov    ax,0x188
   375eb:	8e c0                	mov    es,ax
   375ed:	26 83 bf aa 99 01    	cmp    WORD PTR es:[bx-0x6656],0x1
   375f3:	75 19                	jne    0x3760e
   375f5:	ff 76 fa             	push   WORD PTR [bp-0x6]
   375f8:	b8 88 01             	mov    ax,0x188
   375fb:	8e c0                	mov    es,ax
   375fd:	26 a0 6b 96          	mov    al,es:0x966b
   37601:	b4 00                	mov    ah,0x0
   37603:	50                   	push   ax
   37604:	6a 01                	push   0x1
   37606:	6a 06                	push   0x6
   37608:	1e                   	push   ds
   37609:	68 4e 44             	push   0x444e
   3760c:	eb 17                	jmp    0x37625
   3760e:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37611:	b8 88 01             	mov    ax,0x188
   37614:	8e c0                	mov    es,ax
   37616:	26 a0 6b 96          	mov    al,es:0x966b
   3761a:	b4 00                	mov    ah,0x0
   3761c:	50                   	push   ax
   3761d:	6a 01                	push   0x1
   3761f:	6a 06                	push   0x6
   37621:	1e                   	push   ds
   37622:	68 54 44             	push   0x4454
   37625:	9a 52 00 38 01       	call   0x138:0x52
   3762a:	83 c4 0c             	add    sp,0xc
   3762d:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37630:	b8 88 01             	mov    ax,0x188
   37633:	8e c0                	mov    es,ax
   37635:	26 a0 6b 96          	mov    al,es:0x966b
   37639:	b4 00                	mov    ah,0x0
   3763b:	50                   	push   ax
   3763c:	6a 02                	push   0x2
   3763e:	6a 06                	push   0x6
   37640:	b8 88 01             	mov    ax,0x188
   37643:	8e c0                	mov    es,ax
   37645:	26 a1 98 28          	mov    ax,es:0x2898
   37649:	69 c0 94 00          	imul   ax,ax,0x94
   3764d:	05 70 9c             	add    ax,0x9c70
   37650:	68 88 01             	push   0x188
   37653:	50                   	push   ax
   37654:	9a 52 00 38 01       	call   0x138:0x52
   37659:	83 c4 0c             	add    sp,0xc
   3765c:	ff 76 fa             	push   WORD PTR [bp-0x6]
   3765f:	b8 88 01             	mov    ax,0x188
   37662:	8e c0                	mov    es,ax
   37664:	26 a0 6b 96          	mov    al,es:0x966b
   37668:	b4 00                	mov    ah,0x0
   3766a:	50                   	push   ax
   3766b:	6a 06                	push   0x6
   3766d:	6a 08                	push   0x8
   3766f:	6a 0a                	push   0xa
   37671:	16                   	push   ss
   37672:	8d 46 c6             	lea    ax,[bp-0x3a]
   37675:	50                   	push   ax
   37676:	b8 88 01             	mov    ax,0x188
   37679:	8e c0                	mov    es,ax
   3767b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37680:	6b db 5c             	imul   bx,bx,0x5c
   37683:	b8 88 01             	mov    ax,0x188
   37686:	8e c0                	mov    es,ax
   37688:	26 ff b7 ca 99       	push   WORD PTR es:[bx-0x6636]
   3768d:	9a 58 3f 00 00       	call   0x0:0x3f58
   37692:	83 c4 08             	add    sp,0x8
   37695:	52                   	push   dx
   37696:	50                   	push   ax
   37697:	9a 52 00 38 01       	call   0x138:0x52
   3769c:	83 c4 0c             	add    sp,0xc
   3769f:	ff 76 fa             	push   WORD PTR [bp-0x6]
   376a2:	b8 88 01             	mov    ax,0x188
   376a5:	8e c0                	mov    es,ax
   376a7:	26 a0 6b 96          	mov    al,es:0x966b
   376ab:	b4 00                	mov    ah,0x0
   376ad:	50                   	push   ax
   376ae:	6a 07                	push   0x7
   376b0:	6a 08                	push   0x8
   376b2:	6a 0a                	push   0xa
   376b4:	16                   	push   ss
   376b5:	8d 46 c6             	lea    ax,[bp-0x3a]
   376b8:	50                   	push   ax
   376b9:	b8 88 01             	mov    ax,0x188
   376bc:	8e c0                	mov    es,ax
   376be:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   376c3:	6b db 5c             	imul   bx,bx,0x5c
   376c6:	b8 88 01             	mov    ax,0x188
   376c9:	8e c0                	mov    es,ax
   376cb:	26 ff b7 cc 99       	push   WORD PTR es:[bx-0x6634]
   376d0:	9a 58 3f 00 00       	call   0x0:0x3f58
   376d5:	83 c4 08             	add    sp,0x8
   376d8:	52                   	push   dx
   376d9:	50                   	push   ax
   376da:	9a 52 00 38 01       	call   0x138:0x52
   376df:	83 c4 0c             	add    sp,0xc
   376e2:	6a 0a                	push   0xa
   376e4:	16                   	push   ss
   376e5:	8d 46 c6             	lea    ax,[bp-0x3a]
   376e8:	50                   	push   ax
   376e9:	b8 88 01             	mov    ax,0x188
   376ec:	8e c0                	mov    es,ax
   376ee:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   376f3:	6b db 5c             	imul   bx,bx,0x5c
   376f6:	b8 88 01             	mov    ax,0x188
   376f9:	8e c0                	mov    es,ax
   376fb:	26 ff b7 e0 99       	push   WORD PTR es:[bx-0x6620]
   37700:	9a 58 3f 00 00       	call   0x0:0x3f58
   37705:	83 c4 08             	add    sp,0x8
   37708:	1e                   	push   ds
   37709:	68 59 44             	push   0x4459
   3770c:	16                   	push   ss
   3770d:	8d 46 c6             	lea    ax,[bp-0x3a]
   37710:	50                   	push   ax
   37711:	9a 0b 53 00 00       	call   0x0:0x530b
   37716:	83 c4 08             	add    sp,0x8
   37719:	6a 0a                	push   0xa
   3771b:	16                   	push   ss
   3771c:	8d 46 da             	lea    ax,[bp-0x26]
   3771f:	50                   	push   ax
   37720:	b8 88 01             	mov    ax,0x188
   37723:	8e c0                	mov    es,ax
   37725:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3772a:	6b db 5c             	imul   bx,bx,0x5c
   3772d:	b8 88 01             	mov    ax,0x188
   37730:	8e c0                	mov    es,ax
   37732:	26 ff b7 b2 99       	push   WORD PTR es:[bx-0x664e]
   37737:	9a 58 3f 00 00       	call   0x0:0x3f58
   3773c:	83 c4 08             	add    sp,0x8
   3773f:	52                   	push   dx
   37740:	50                   	push   ax
   37741:	16                   	push   ss
   37742:	8d 46 c6             	lea    ax,[bp-0x3a]
   37745:	50                   	push   ax
   37746:	9a 0b 53 00 00       	call   0x0:0x530b
   3774b:	83 c4 08             	add    sp,0x8
   3774e:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37751:	b8 88 01             	mov    ax,0x188
   37754:	8e c0                	mov    es,ax
   37756:	26 a0 6b 96          	mov    al,es:0x966b
   3775a:	b4 00                	mov    ah,0x0
   3775c:	50                   	push   ax
   3775d:	6a 08                	push   0x8
   3775f:	6a 08                	push   0x8
   37761:	16                   	push   ss
   37762:	8d 46 c6             	lea    ax,[bp-0x3a]
   37765:	50                   	push   ax
   37766:	9a 52 00 38 01       	call   0x138:0x52
   3776b:	83 c4 0c             	add    sp,0xc
   3776e:	6a 0a                	push   0xa
   37770:	16                   	push   ss
   37771:	8d 46 c6             	lea    ax,[bp-0x3a]
   37774:	50                   	push   ax
   37775:	b8 88 01             	mov    ax,0x188
   37778:	8e c0                	mov    es,ax
   3777a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3777f:	6b db 5c             	imul   bx,bx,0x5c
   37782:	b8 88 01             	mov    ax,0x188
   37785:	8e c0                	mov    es,ax
   37787:	26 ff b7 de 99       	push   WORD PTR es:[bx-0x6622]
   3778c:	9a 58 3f 00 00       	call   0x0:0x3f58
   37791:	83 c4 08             	add    sp,0x8
   37794:	1e                   	push   ds
   37795:	68 5b 44             	push   0x445b
   37798:	16                   	push   ss
   37799:	8d 46 c6             	lea    ax,[bp-0x3a]
   3779c:	50                   	push   ax
   3779d:	9a 0b 53 00 00       	call   0x0:0x530b
   377a2:	83 c4 08             	add    sp,0x8
   377a5:	6a 0a                	push   0xa
   377a7:	16                   	push   ss
   377a8:	8d 46 da             	lea    ax,[bp-0x26]
   377ab:	50                   	push   ax
   377ac:	b8 88 01             	mov    ax,0x188
   377af:	8e c0                	mov    es,ax
   377b1:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   377b6:	6b db 5c             	imul   bx,bx,0x5c
   377b9:	b8 88 01             	mov    ax,0x188
   377bc:	8e c0                	mov    es,ax
   377be:	26 ff b7 b0 99       	push   WORD PTR es:[bx-0x6650]
   377c3:	9a 58 3f 00 00       	call   0x0:0x3f58
   377c8:	83 c4 08             	add    sp,0x8
   377cb:	52                   	push   dx
   377cc:	50                   	push   ax
   377cd:	16                   	push   ss
   377ce:	8d 46 c6             	lea    ax,[bp-0x3a]
   377d1:	50                   	push   ax
   377d2:	9a 0b 53 00 00       	call   0x0:0x530b
   377d7:	83 c4 08             	add    sp,0x8
   377da:	ff 76 fa             	push   WORD PTR [bp-0x6]
   377dd:	b8 88 01             	mov    ax,0x188
   377e0:	8e c0                	mov    es,ax
   377e2:	26 a0 6b 96          	mov    al,es:0x966b
   377e6:	b4 00                	mov    ah,0x0
   377e8:	50                   	push   ax
   377e9:	6a 09                	push   0x9
   377eb:	6a 08                	push   0x8
   377ed:	16                   	push   ss
   377ee:	8d 46 c6             	lea    ax,[bp-0x3a]
   377f1:	50                   	push   ax
   377f2:	9a 52 00 38 01       	call   0x138:0x52
   377f7:	83 c4 0c             	add    sp,0xc
   377fa:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   377ff:	eb 52                	jmp    0x37853
   37801:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37804:	b8 88 01             	mov    ax,0x188
   37807:	8e c0                	mov    es,ax
   37809:	26 a0 6b 96          	mov    al,es:0x966b
   3780d:	b4 00                	mov    ah,0x0
   3780f:	50                   	push   ax
   37810:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   37813:	05 05 00             	add    ax,0x5
   37816:	50                   	push   ax
   37817:	6a 1f                	push   0x1f
   37819:	6a 0a                	push   0xa
   3781b:	16                   	push   ss
   3781c:	8d 46 c6             	lea    ax,[bp-0x3a]
   3781f:	50                   	push   ax
   37820:	b8 88 01             	mov    ax,0x188
   37823:	8e c0                	mov    es,ax
   37825:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3782a:	6b db 5c             	imul   bx,bx,0x5c
   3782d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   37830:	d1 e0                	shl    ax,1
   37832:	03 d8                	add    bx,ax
   37834:	b8 88 01             	mov    ax,0x188
   37837:	8e c0                	mov    es,ax
   37839:	26 ff b7 aa 99       	push   WORD PTR es:[bx-0x6656]
   3783e:	9a 58 3f 00 00       	call   0x0:0x3f58
   37843:	83 c4 08             	add    sp,0x8
   37846:	52                   	push   dx
   37847:	50                   	push   ax
   37848:	9a 52 00 38 01       	call   0x138:0x52
   3784d:	83 c4 0c             	add    sp,0xc
   37850:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   37853:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   37857:	7e a8                	jle    0x37801
   37859:	ff 76 fa             	push   WORD PTR [bp-0x6]
   3785c:	b8 88 01             	mov    ax,0x188
   3785f:	8e c0                	mov    es,ax
   37861:	26 a0 6b 96          	mov    al,es:0x966b
   37865:	b4 00                	mov    ah,0x0
   37867:	50                   	push   ax
   37868:	6a 09                	push   0x9
   3786a:	6a 23                	push   0x23
   3786c:	6a 0a                	push   0xa
   3786e:	16                   	push   ss
   3786f:	8d 46 c6             	lea    ax,[bp-0x3a]
   37872:	50                   	push   ax
   37873:	b8 88 01             	mov    ax,0x188
   37876:	8e c0                	mov    es,ax
   37878:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3787d:	6b db 5c             	imul   bx,bx,0x5c
   37880:	b8 88 01             	mov    ax,0x188
   37883:	8e c0                	mov    es,ax
   37885:	26 ff b7 b4 99       	push   WORD PTR es:[bx-0x664c]
   3788a:	9a 58 3f 00 00       	call   0x0:0x3f58
   3788f:	83 c4 08             	add    sp,0x8
   37892:	52                   	push   dx
   37893:	50                   	push   ax
   37894:	9a 52 00 38 01       	call   0x138:0x52
   37899:	83 c4 0c             	add    sp,0xc
   3789c:	ff 76 fa             	push   WORD PTR [bp-0x6]
   3789f:	b8 88 01             	mov    ax,0x188
   378a2:	8e c0                	mov    es,ax
   378a4:	26 a0 6b 96          	mov    al,es:0x966b
   378a8:	b4 00                	mov    ah,0x0
   378aa:	50                   	push   ax
   378ab:	6a 0a                	push   0xa
   378ad:	6a 23                	push   0x23
   378af:	6a 0a                	push   0xa
   378b1:	16                   	push   ss
   378b2:	8d 46 c6             	lea    ax,[bp-0x3a]
   378b5:	50                   	push   ax
   378b6:	b8 88 01             	mov    ax,0x188
   378b9:	8e c0                	mov    es,ax
   378bb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   378c0:	6b db 5c             	imul   bx,bx,0x5c
   378c3:	b8 88 01             	mov    ax,0x188
   378c6:	8e c0                	mov    es,ax
   378c8:	26 ff b7 b6 99       	push   WORD PTR es:[bx-0x664a]
   378cd:	9a 58 3f 00 00       	call   0x0:0x3f58
   378d2:	83 c4 08             	add    sp,0x8
   378d5:	52                   	push   dx
   378d6:	50                   	push   ax
   378d7:	9a 52 00 38 01       	call   0x138:0x52
   378dc:	83 c4 0c             	add    sp,0xc
   378df:	ff 76 fa             	push   WORD PTR [bp-0x6]
   378e2:	b8 88 01             	mov    ax,0x188
   378e5:	8e c0                	mov    es,ax
   378e7:	26 a0 6b 96          	mov    al,es:0x966b
   378eb:	b4 00                	mov    ah,0x0
   378ed:	50                   	push   ax
   378ee:	6a 0b                	push   0xb
   378f0:	6a 23                	push   0x23
   378f2:	6a 0a                	push   0xa
   378f4:	16                   	push   ss
   378f5:	8d 46 c6             	lea    ax,[bp-0x3a]
   378f8:	50                   	push   ax
   378f9:	b8 88 01             	mov    ax,0x188
   378fc:	8e c0                	mov    es,ax
   378fe:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37903:	6b db 5c             	imul   bx,bx,0x5c
   37906:	b8 88 01             	mov    ax,0x188
   37909:	8e c0                	mov    es,ax
   3790b:	26 ff b7 b0 99       	push   WORD PTR es:[bx-0x6650]
   37910:	9a 58 3f 00 00       	call   0x0:0x3f58
   37915:	83 c4 08             	add    sp,0x8
   37918:	52                   	push   dx
   37919:	50                   	push   ax
   3791a:	9a 52 00 38 01       	call   0x138:0x52
   3791f:	83 c4 0c             	add    sp,0xc
   37922:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37925:	b8 88 01             	mov    ax,0x188
   37928:	8e c0                	mov    es,ax
   3792a:	26 a0 6b 96          	mov    al,es:0x966b
   3792e:	b4 00                	mov    ah,0x0
   37930:	50                   	push   ax
   37931:	6a 0c                	push   0xc
   37933:	6a 23                	push   0x23
   37935:	6a 0a                	push   0xa
   37937:	16                   	push   ss
   37938:	8d 46 c6             	lea    ax,[bp-0x3a]
   3793b:	50                   	push   ax
   3793c:	b8 88 01             	mov    ax,0x188
   3793f:	8e c0                	mov    es,ax
   37941:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37946:	6b db 5c             	imul   bx,bx,0x5c
   37949:	b8 88 01             	mov    ax,0x188
   3794c:	8e c0                	mov    es,ax
   3794e:	26 ff b7 ba 99       	push   WORD PTR es:[bx-0x6646]
   37953:	9a 58 3f 00 00       	call   0x0:0x3f58
   37958:	83 c4 08             	add    sp,0x8
   3795b:	52                   	push   dx
   3795c:	50                   	push   ax
   3795d:	9a 52 00 38 01       	call   0x138:0x52
   37962:	83 c4 0c             	add    sp,0xc
   37965:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37968:	b8 88 01             	mov    ax,0x188
   3796b:	8e c0                	mov    es,ax
   3796d:	26 a0 6b 96          	mov    al,es:0x966b
   37971:	b4 00                	mov    ah,0x0
   37973:	50                   	push   ax
   37974:	6a 0d                	push   0xd
   37976:	6a 23                	push   0x23
   37978:	6a 0a                	push   0xa
   3797a:	16                   	push   ss
   3797b:	8d 46 c6             	lea    ax,[bp-0x3a]
   3797e:	50                   	push   ax
   3797f:	b8 88 01             	mov    ax,0x188
   37982:	8e c0                	mov    es,ax
   37984:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37989:	6b db 5c             	imul   bx,bx,0x5c
   3798c:	b8 88 01             	mov    ax,0x188
   3798f:	8e c0                	mov    es,ax
   37991:	26 ff b7 b8 99       	push   WORD PTR es:[bx-0x6648]
   37996:	9a 58 3f 00 00       	call   0x0:0x3f58
   3799b:	83 c4 08             	add    sp,0x8
   3799e:	52                   	push   dx
   3799f:	50                   	push   ax
   379a0:	9a 52 00 38 01       	call   0x138:0x52
   379a5:	83 c4 0c             	add    sp,0xc
   379a8:	ff 76 fa             	push   WORD PTR [bp-0x6]
   379ab:	b8 88 01             	mov    ax,0x188
   379ae:	8e c0                	mov    es,ax
   379b0:	26 a0 6b 96          	mov    al,es:0x966b
   379b4:	b4 00                	mov    ah,0x0
   379b6:	50                   	push   ax
   379b7:	6a 0e                	push   0xe
   379b9:	6a 23                	push   0x23
   379bb:	6a 0a                	push   0xa
   379bd:	16                   	push   ss
   379be:	8d 46 c6             	lea    ax,[bp-0x3a]
   379c1:	50                   	push   ax
   379c2:	b8 88 01             	mov    ax,0x188
   379c5:	8e c0                	mov    es,ax
   379c7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   379cc:	6b db 5c             	imul   bx,bx,0x5c
   379cf:	b8 88 01             	mov    ax,0x188
   379d2:	8e c0                	mov    es,ax
   379d4:	26 ff b7 c0 99       	push   WORD PTR es:[bx-0x6640]
   379d9:	9a 58 3f 00 00       	call   0x0:0x3f58
   379de:	83 c4 08             	add    sp,0x8
   379e1:	52                   	push   dx
   379e2:	50                   	push   ax
   379e3:	9a 52 00 38 01       	call   0x138:0x52
   379e8:	83 c4 0c             	add    sp,0xc
   379eb:	ff 76 fa             	push   WORD PTR [bp-0x6]
   379ee:	b8 88 01             	mov    ax,0x188
   379f1:	8e c0                	mov    es,ax
   379f3:	26 a0 6b 96          	mov    al,es:0x966b
   379f7:	b4 00                	mov    ah,0x0
   379f9:	50                   	push   ax
   379fa:	6a 0f                	push   0xf
   379fc:	6a 23                	push   0x23
   379fe:	6a 0a                	push   0xa
   37a00:	16                   	push   ss
   37a01:	8d 46 c6             	lea    ax,[bp-0x3a]
   37a04:	50                   	push   ax
   37a05:	b8 88 01             	mov    ax,0x188
   37a08:	8e c0                	mov    es,ax
   37a0a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37a0f:	6b db 5c             	imul   bx,bx,0x5c
   37a12:	b8 88 01             	mov    ax,0x188
   37a15:	8e c0                	mov    es,ax
   37a17:	26 ff b7 bc 99       	push   WORD PTR es:[bx-0x6644]
   37a1c:	9a 58 3f 00 00       	call   0x0:0x3f58
   37a21:	83 c4 08             	add    sp,0x8
   37a24:	52                   	push   dx
   37a25:	50                   	push   ax
   37a26:	9a 52 00 38 01       	call   0x138:0x52
   37a2b:	83 c4 0c             	add    sp,0xc
   37a2e:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37a31:	b8 88 01             	mov    ax,0x188
   37a34:	8e c0                	mov    es,ax
   37a36:	26 a0 6b 96          	mov    al,es:0x966b
   37a3a:	b4 00                	mov    ah,0x0
   37a3c:	50                   	push   ax
   37a3d:	6a 10                	push   0x10
   37a3f:	6a 23                	push   0x23
   37a41:	6a 0a                	push   0xa
   37a43:	16                   	push   ss
   37a44:	8d 46 c6             	lea    ax,[bp-0x3a]
   37a47:	50                   	push   ax
   37a48:	b8 88 01             	mov    ax,0x188
   37a4b:	8e c0                	mov    es,ax
   37a4d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37a52:	6b db 5c             	imul   bx,bx,0x5c
   37a55:	b8 88 01             	mov    ax,0x188
   37a58:	8e c0                	mov    es,ax
   37a5a:	26 ff b7 be 99       	push   WORD PTR es:[bx-0x6642]
   37a5f:	9a 58 3f 00 00       	call   0x0:0x3f58
   37a64:	83 c4 08             	add    sp,0x8
   37a67:	52                   	push   dx
   37a68:	50                   	push   ax
   37a69:	9a 52 00 38 01       	call   0x138:0x52
   37a6e:	83 c4 0c             	add    sp,0xc
   37a71:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37a74:	b8 88 01             	mov    ax,0x188
   37a77:	8e c0                	mov    es,ax
   37a79:	26 a0 6b 96          	mov    al,es:0x966b
   37a7d:	b4 00                	mov    ah,0x0
   37a7f:	50                   	push   ax
   37a80:	6a 11                	push   0x11
   37a82:	6a 23                	push   0x23
   37a84:	6a 0a                	push   0xa
   37a86:	16                   	push   ss
   37a87:	8d 46 c6             	lea    ax,[bp-0x3a]
   37a8a:	50                   	push   ax
   37a8b:	b8 88 01             	mov    ax,0x188
   37a8e:	8e c0                	mov    es,ax
   37a90:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37a95:	6b db 5c             	imul   bx,bx,0x5c
   37a98:	b8 88 01             	mov    ax,0x188
   37a9b:	8e c0                	mov    es,ax
   37a9d:	26 ff b7 c2 99       	push   WORD PTR es:[bx-0x663e]
   37aa2:	9a 58 3f 00 00       	call   0x0:0x3f58
   37aa7:	83 c4 08             	add    sp,0x8
   37aaa:	52                   	push   dx
   37aab:	50                   	push   ax
   37aac:	9a 52 00 38 01       	call   0x138:0x52
   37ab1:	83 c4 0c             	add    sp,0xc
   37ab4:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37ab7:	b8 88 01             	mov    ax,0x188
   37aba:	8e c0                	mov    es,ax
   37abc:	26 a0 6b 96          	mov    al,es:0x966b
   37ac0:	b4 00                	mov    ah,0x0
   37ac2:	50                   	push   ax
   37ac3:	6a 12                	push   0x12
   37ac5:	6a 23                	push   0x23
   37ac7:	6a 0a                	push   0xa
   37ac9:	16                   	push   ss
   37aca:	8d 46 c6             	lea    ax,[bp-0x3a]
   37acd:	50                   	push   ax
   37ace:	b8 88 01             	mov    ax,0x188
   37ad1:	8e c0                	mov    es,ax
   37ad3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37ad8:	6b db 5c             	imul   bx,bx,0x5c
   37adb:	b8 88 01             	mov    ax,0x188
   37ade:	8e c0                	mov    es,ax
   37ae0:	26 ff b7 c4 99       	push   WORD PTR es:[bx-0x663c]
   37ae5:	9a 58 3f 00 00       	call   0x0:0x3f58
   37aea:	83 c4 08             	add    sp,0x8
   37aed:	52                   	push   dx
   37aee:	50                   	push   ax
   37aef:	9a 52 00 38 01       	call   0x138:0x52
   37af4:	83 c4 0c             	add    sp,0xc
   37af7:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37afa:	b8 88 01             	mov    ax,0x188
   37afd:	8e c0                	mov    es,ax
   37aff:	26 a0 6b 96          	mov    al,es:0x966b
   37b03:	b4 00                	mov    ah,0x0
   37b05:	50                   	push   ax
   37b06:	6a 13                	push   0x13
   37b08:	6a 23                	push   0x23
   37b0a:	6a 0a                	push   0xa
   37b0c:	16                   	push   ss
   37b0d:	8d 46 c6             	lea    ax,[bp-0x3a]
   37b10:	50                   	push   ax
   37b11:	b8 88 01             	mov    ax,0x188
   37b14:	8e c0                	mov    es,ax
   37b16:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37b1b:	6b db 5c             	imul   bx,bx,0x5c
   37b1e:	b8 88 01             	mov    ax,0x188
   37b21:	8e c0                	mov    es,ax
   37b23:	26 ff b7 c6 99       	push   WORD PTR es:[bx-0x663a]
   37b28:	9a 58 3f 00 00       	call   0x0:0x3f58
   37b2d:	83 c4 08             	add    sp,0x8
   37b30:	52                   	push   dx
   37b31:	50                   	push   ax
   37b32:	9a 52 00 38 01       	call   0x138:0x52
   37b37:	83 c4 0c             	add    sp,0xc
   37b3a:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37b3d:	b8 88 01             	mov    ax,0x188
   37b40:	8e c0                	mov    es,ax
   37b42:	26 a0 6b 96          	mov    al,es:0x966b
   37b46:	b4 00                	mov    ah,0x0
   37b48:	50                   	push   ax
   37b49:	6a 0f                	push   0xf
   37b4b:	6a 10                	push   0x10
   37b4d:	6a 0a                	push   0xa
   37b4f:	16                   	push   ss
   37b50:	8d 46 c6             	lea    ax,[bp-0x3a]
   37b53:	50                   	push   ax
   37b54:	9a f2 00 38 01       	call   0x138:0xf2
   37b59:	50                   	push   ax
   37b5a:	9a 58 3f 00 00       	call   0x0:0x3f58
   37b5f:	83 c4 08             	add    sp,0x8
   37b62:	52                   	push   dx
   37b63:	50                   	push   ax
   37b64:	9a 52 00 38 01       	call   0x138:0x52
   37b69:	83 c4 0c             	add    sp,0xc
   37b6c:	9a e8 00 38 01       	call   0x138:0xe8
   37b71:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37b74:	b8 88 01             	mov    ax,0x188
   37b77:	8e c0                	mov    es,ax
   37b79:	26 a0 6b 96          	mov    al,es:0x966b
   37b7d:	b4 00                	mov    ah,0x0
   37b7f:	50                   	push   ax
   37b80:	6a 10                	push   0x10
   37b82:	6a 10                	push   0x10
   37b84:	6a 0a                	push   0xa
   37b86:	16                   	push   ss
   37b87:	8d 46 c6             	lea    ax,[bp-0x3a]
   37b8a:	50                   	push   ax
   37b8b:	b8 88 01             	mov    ax,0x188
   37b8e:	8e c0                	mov    es,ax
   37b90:	26 ff 36 ee d5       	push   WORD PTR es:0xd5ee
   37b95:	9a 58 3f 00 00       	call   0x0:0x3f58
   37b9a:	83 c4 08             	add    sp,0x8
   37b9d:	52                   	push   dx
   37b9e:	50                   	push   ax
   37b9f:	9a 52 00 38 01       	call   0x138:0x52
   37ba4:	83 c4 0c             	add    sp,0xc
   37ba7:	9a e3 00 38 01       	call   0x138:0xe3
   37bac:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37baf:	b8 88 01             	mov    ax,0x188
   37bb2:	8e c0                	mov    es,ax
   37bb4:	26 a0 6b 96          	mov    al,es:0x966b
   37bb8:	b4 00                	mov    ah,0x0
   37bba:	50                   	push   ax
   37bbb:	6a 11                	push   0x11
   37bbd:	6a 10                	push   0x10
   37bbf:	6a 0a                	push   0xa
   37bc1:	16                   	push   ss
   37bc2:	8d 46 c6             	lea    ax,[bp-0x3a]
   37bc5:	50                   	push   ax
   37bc6:	b8 88 01             	mov    ax,0x188
   37bc9:	8e c0                	mov    es,ax
   37bcb:	26 ff 36 da d5       	push   WORD PTR es:0xd5da
   37bd0:	9a 58 3f 00 00       	call   0x0:0x3f58
   37bd5:	83 c4 08             	add    sp,0x8
   37bd8:	52                   	push   dx
   37bd9:	50                   	push   ax
   37bda:	9a 52 00 38 01       	call   0x138:0x52
   37bdf:	83 c4 0c             	add    sp,0xc
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
   37c10:	16                   	push   ss
   37c11:	8d 46 c6             	lea    ax,[bp-0x3a]
   37c14:	50                   	push   ax
   37c15:	9a cc 49 00 00       	call   0x0:0x49cc
   37c1a:	83 c4 04             	add    sp,0x4
   37c1d:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   37c20:	6a 01                	push   0x1
   37c22:	16                   	push   ss
   37c23:	8d 46 c6             	lea    ax,[bp-0x3a]
   37c26:	50                   	push   ax
   37c27:	9a 48 00 80 01       	call   0x180:0x48
   37c2c:	83 c4 06             	add    sp,0x6
   37c2f:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   37c32:	83 7e f8 5a          	cmp    WORD PTR [bp-0x8],0x5a
   37c36:	7e 3a                	jle    0x37c72
   37c38:	eb 21                	jmp    0x37c5b
   37c3a:	8d 46 c6             	lea    ax,[bp-0x3a]
   37c3d:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   37c40:	03 d8                	add    bx,ax
   37c42:	36 c6 07 00          	mov    BYTE PTR ss:[bx],0x0
   37c46:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   37c49:	6a 01                	push   0x1
   37c4b:	16                   	push   ss
   37c4c:	8d 46 c6             	lea    ax,[bp-0x3a]
   37c4f:	50                   	push   ax
   37c50:	9a 48 00 80 01       	call   0x180:0x48
   37c55:	83 c4 06             	add    sp,0x6
   37c58:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   37c5b:	83 7e f8 5a          	cmp    WORD PTR [bp-0x8],0x5a
   37c5f:	7f d9                	jg     0x37c3a
   37c61:	1e                   	push   ds
   37c62:	68 5d 44             	push   0x445d
   37c65:	16                   	push   ss
   37c66:	8d 46 c6             	lea    ax,[bp-0x3a]
   37c69:	50                   	push   ax
   37c6a:	9a 0b 53 00 00       	call   0x0:0x530b
   37c6f:	83 c4 08             	add    sp,0x8
   37c72:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37c75:	b8 88 01             	mov    ax,0x188
   37c78:	8e c0                	mov    es,ax
   37c7a:	26 a0 6a 96          	mov    al,es:0x966a
   37c7e:	b4 00                	mov    ah,0x0
   37c80:	50                   	push   ax
   37c81:	6a 12                	push   0x12
   37c83:	b8 92 00             	mov    ax,0x92
   37c86:	2b 46 f8             	sub    ax,WORD PTR [bp-0x8]
   37c89:	bb 08 00             	mov    bx,0x8
   37c8c:	99                   	cwd
   37c8d:	f7 fb                	idiv   bx
   37c8f:	50                   	push   ax
   37c90:	16                   	push   ss
   37c91:	8d 46 c6             	lea    ax,[bp-0x3a]
   37c94:	50                   	push   ax
   37c95:	9a 52 00 38 01       	call   0x138:0x52
   37c9a:	83 c4 0c             	add    sp,0xc
   37c9d:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37ca0:	b8 88 01             	mov    ax,0x188
   37ca3:	8e c0                	mov    es,ax
   37ca5:	26 a0 6b 96          	mov    al,es:0x966b
   37ca9:	b4 00                	mov    ah,0x0
   37cab:	50                   	push   ax
   37cac:	6a 13                	push   0x13
   37cae:	6a 10                	push   0x10
   37cb0:	6a 0a                	push   0xa
   37cb2:	16                   	push   ss
   37cb3:	8d 46 c6             	lea    ax,[bp-0x3a]
   37cb6:	50                   	push   ax
   37cb7:	9a ed 00 38 01       	call   0x138:0xed
   37cbc:	50                   	push   ax
   37cbd:	9a 58 3f 00 00       	call   0x0:0x3f58
   37cc2:	83 c4 08             	add    sp,0x8
   37cc5:	52                   	push   dx
   37cc6:	50                   	push   ax
   37cc7:	9a 52 00 38 01       	call   0x138:0x52
   37ccc:	83 c4 0c             	add    sp,0xc
   37ccf:	ff 76 fa             	push   WORD PTR [bp-0x6]
   37cd2:	b8 88 01             	mov    ax,0x188
   37cd5:	8e c0                	mov    es,ax
   37cd7:	26 a0 6b 96          	mov    al,es:0x966b
   37cdb:	b4 00                	mov    ah,0x0
   37cdd:	50                   	push   ax
   37cde:	6a 14                	push   0x14
   37ce0:	6a 10                	push   0x10
   37ce2:	6a 0a                	push   0xa
   37ce4:	16                   	push   ss
   37ce5:	8d 46 c6             	lea    ax,[bp-0x3a]
   37ce8:	50                   	push   ax
   37ce9:	9a f7 00 38 01       	call   0x138:0xf7
   37cee:	50                   	push   ax
   37cef:	9a 58 3f 00 00       	call   0x0:0x3f58
   37cf4:	83 c4 08             	add    sp,0x8
   37cf7:	52                   	push   dx
   37cf8:	50                   	push   ax
   37cf9:	9a 52 00 38 01       	call   0x138:0x52
   37cfe:	83 c4 0c             	add    sp,0xc
   37d01:	6a 06                	push   0x6
   37d03:	9a 5c 00 38 01       	call   0x138:0x5c
   37d08:	59                   	pop    cx
   37d09:	8a 46 d9             	mov    al,BYTE PTR [bp-0x27]
   37d0c:	b4 00                	mov    ah,0x0
   37d0e:	0b c0                	or     ax,ax
   37d10:	75 2e                	jne    0x37d40
   37d12:	6a 00                	push   0x0
   37d14:	b8 88 01             	mov    ax,0x188
   37d17:	8e c0                	mov    es,ax
   37d19:	26 ff 36 1e 73       	push   WORD PTR es:0x731e
   37d1e:	6a 64                	push   0x64
   37d20:	9a 3f 07 30 00       	call   0x30:0x73f
   37d25:	83 c4 06             	add    sp,0x6
   37d28:	c6 46 d9 01          	mov    BYTE PTR [bp-0x27],0x1
   37d2c:	eb 12                	jmp    0x37d40
   37d2e:	eb 10                	jmp    0x37d40
   37d30:	b8 88 01             	mov    ax,0x188
   37d33:	8e c0                	mov    es,ax
   37d35:	26 a0 e3 e5          	mov    al,es:0xe5e3
   37d39:	50                   	push   ax
   37d3a:	9a 6b 02 30 00       	call   0x30:0x26b
   37d3f:	59                   	pop    cx
   37d40:	b8 88 01             	mov    ax,0x188
   37d43:	8e c0                	mov    es,ax
   37d45:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   37d4b:	75 e3                	jne    0x37d30
   37d4d:	6a 01                	push   0x1
   37d4f:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   37d54:	59                   	pop    cx
   37d55:	c1 f8 08             	sar    ax,0x8
   37d58:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   37d5b:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   37d5f:	74 05                	je     0x37d66
   37d61:	9a e3 01 40 00       	call   0x40:0x1e3
   37d66:	b8 88 01             	mov    ax,0x188
   37d69:	8e c0                	mov    es,ax
   37d6b:	26 a0 e3 e5          	mov    al,es:0xe5e3
   37d6f:	50                   	push   ax
   37d70:	9a 6b 02 30 00       	call   0x30:0x26b
   37d75:	59                   	pop    cx
   37d76:	b8 88 01             	mov    ax,0x188
   37d79:	8e c0                	mov    es,ax
   37d7b:	26 83 3e e5 e5 03    	cmp    WORD PTR es:0xe5e5,0x3
   37d81:	74 2e                	je     0x37db1
   37d83:	9a 15 05 30 00       	call   0x30:0x515
   37d88:	ba 88 01             	mov    dx,0x188
   37d8b:	8e c2                	mov    es,dx
   37d8d:	26 a3 e8 d5          	mov    es:0xd5e8,ax
   37d91:	b8 88 01             	mov    ax,0x188
   37d94:	8e c0                	mov    es,ax
   37d96:	26 83 3e e8 d5 00    	cmp    WORD PTR es:0xd5e8,0x0
   37d9c:	75 13                	jne    0x37db1
   37d9e:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   37da2:	75 0d                	jne    0x37db1
   37da4:	b8 88 01             	mov    ax,0x188
   37da7:	8e c0                	mov    es,ax
   37da9:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   37daf:	7e 9c                	jle    0x37d4d
   37db1:	83 7e f8 01          	cmp    WORD PTR [bp-0x8],0x1
   37db5:	75 03                	jne    0x37dba
   37db7:	e9 ec 16             	jmp    0x394a6
   37dba:	b8 88 01             	mov    ax,0x188
   37dbd:	8e c0                	mov    es,ax
   37dbf:	26 83 3e e8 d5 15    	cmp    WORD PTR es:0xd5e8,0x15
   37dc5:	75 10                	jne    0x37dd7
   37dc7:	b8 88 01             	mov    ax,0x188
   37dca:	8e c0                	mov    es,ax
   37dcc:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   37dd2:	75 03                	jne    0x37dd7
   37dd4:	e9 cf 16             	jmp    0x394a6
   37dd7:	b8 88 01             	mov    ax,0x188
   37dda:	8e c0                	mov    es,ax
   37ddc:	26 83 3e e5 e5 03    	cmp    WORD PTR es:0xe5e5,0x3
   37de2:	75 03                	jne    0x37de7
   37de4:	e9 bf 16             	jmp    0x394a6
   37de7:	b8 88 01             	mov    ax,0x188
   37dea:	8e c0                	mov    es,ax
   37dec:	26 83 3e e8 d5 0b    	cmp    WORD PTR es:0xd5e8,0xb
   37df2:	7d 72                	jge    0x37e66
   37df4:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   37df8:	75 6c                	jne    0x37e66
   37dfa:	b8 88 01             	mov    ax,0x188
   37dfd:	8e c0                	mov    es,ax
   37dff:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37e04:	6b db 5c             	imul   bx,bx,0x5c
   37e07:	b8 88 01             	mov    ax,0x188
   37e0a:	8e c0                	mov    es,ax
   37e0c:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   37e10:	d1 e0                	shl    ax,1
   37e12:	03 d8                	add    bx,ax
   37e14:	b8 88 01             	mov    ax,0x188
   37e17:	8e c0                	mov    es,ax
   37e19:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   37e1e:	bb 64 00             	mov    bx,0x64
   37e21:	99                   	cwd
   37e22:	f7 fb                	idiv   bx
   37e24:	ba 88 01             	mov    dx,0x188
   37e27:	8e c2                	mov    es,dx
   37e29:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   37e2d:	b8 88 01             	mov    ax,0x188
   37e30:	8e c0                	mov    es,ax
   37e32:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37e37:	6b db 5c             	imul   bx,bx,0x5c
   37e3a:	b8 88 01             	mov    ax,0x188
   37e3d:	8e c0                	mov    es,ax
   37e3f:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   37e43:	d1 e0                	shl    ax,1
   37e45:	03 d8                	add    bx,ax
   37e47:	b8 88 01             	mov    ax,0x188
   37e4a:	8e c0                	mov    es,ax
   37e4c:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   37e51:	bb 64 00             	mov    bx,0x64
   37e54:	99                   	cwd
   37e55:	f7 fb                	idiv   bx
   37e57:	b8 88 01             	mov    ax,0x188
   37e5a:	8e c0                	mov    es,ax
   37e5c:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   37e61:	9a 15 01 38 01       	call   0x138:0x115
   37e66:	b8 88 01             	mov    ax,0x188
   37e69:	8e c0                	mov    es,ax
   37e6b:	26 83 3e e8 d5 00    	cmp    WORD PTR es:0xd5e8,0x0
   37e71:	75 44                	jne    0x37eb7
   37e73:	b8 88 01             	mov    ax,0x188
   37e76:	8e c0                	mov    es,ax
   37e78:	26 83 3e e4 d5 00    	cmp    WORD PTR es:0xd5e4,0x0
   37e7e:	74 37                	je     0x37eb7
   37e80:	9a 04 02 30 00       	call   0x30:0x204
   37e85:	6a 00                	push   0x0
   37e87:	6a 00                	push   0x0
   37e89:	6a 0d                	push   0xd
   37e8b:	68 9d 00             	push   0x9d
   37e8e:	6a 02                	push   0x2
   37e90:	68 a1 00             	push   0xa1
   37e93:	9a 08 09 28 00       	call   0x28:0x908
   37e98:	83 c4 0c             	add    sp,0xc
   37e9b:	b8 88 01             	mov    ax,0x188
   37e9e:	8e c0                	mov    es,ax
   37ea0:	26 a0 e3 e5          	mov    al,es:0xe5e3
   37ea4:	50                   	push   ax
   37ea5:	9a 69 00 30 00       	call   0x30:0x69
   37eaa:	59                   	pop    cx
   37eab:	b8 88 01             	mov    ax,0x188
   37eae:	8e c0                	mov    es,ax
   37eb0:	26 c7 06 e4 d5 00 00 	mov    WORD PTR es:0xd5e4,0x0
   37eb7:	b8 88 01             	mov    ax,0x188
   37eba:	8e c0                	mov    es,ax
   37ebc:	26 83 3e e8 d5 14    	cmp    WORD PTR es:0xd5e8,0x14
   37ec2:	74 03                	je     0x37ec7
   37ec4:	e9 92 00             	jmp    0x37f59
   37ec7:	b8 88 01             	mov    ax,0x188
   37eca:	8e c0                	mov    es,ax
   37ecc:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   37ed2:	74 03                	je     0x37ed7
   37ed4:	e9 82 00             	jmp    0x37f59
   37ed7:	b8 88 01             	mov    ax,0x188
   37eda:	8e c0                	mov    es,ax
   37edc:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37ee1:	6b db 5c             	imul   bx,bx,0x5c
   37ee4:	b8 88 01             	mov    ax,0x188
   37ee7:	8e c0                	mov    es,ax
   37ee9:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   37eef:	7e 68                	jle    0x37f59
   37ef1:	b8 88 01             	mov    ax,0x188
   37ef4:	8e c0                	mov    es,ax
   37ef6:	26 c7 06 65 e6 00 00 	mov    WORD PTR es:0xe665,0x0
   37efd:	b8 88 01             	mov    ax,0x188
   37f00:	8e c0                	mov    es,ax
   37f02:	26 c7 06 67 e6 8c 00 	mov    WORD PTR es:0xe667,0x8c
   37f09:	b8 88 01             	mov    ax,0x188
   37f0c:	8e c0                	mov    es,ax
   37f0e:	26 c7 06 69 e6 98 00 	mov    WORD PTR es:0xe669,0x98
   37f15:	b8 88 01             	mov    ax,0x188
   37f18:	8e c0                	mov    es,ax
   37f1a:	26 c7 06 6b e6 c8 00 	mov    WORD PTR es:0xe66b,0xc8
   37f21:	6a 3b                	push   0x3b
   37f23:	68 98 00             	push   0x98
   37f26:	68 8c 00             	push   0x8c
   37f29:	6a 00                	push   0x0
   37f2b:	9a 4d 00 50 01       	call   0x150:0x4d
   37f30:	83 c4 08             	add    sp,0x8
   37f33:	68 8c 00             	push   0x8c
   37f36:	68 96 00             	push   0x96
   37f39:	9a 48 00 50 01       	call   0x150:0x48
   37f3e:	83 c4 04             	add    sp,0x4
   37f41:	b8 88 01             	mov    ax,0x188
   37f44:	8e c0                	mov    es,ax
   37f46:	26 a0 e3 e5          	mov    al,es:0xe5e3
   37f4a:	50                   	push   ax
   37f4b:	9a 6b 02 30 00       	call   0x30:0x26b
   37f50:	59                   	pop    cx
   37f51:	6a 06                	push   0x6
   37f53:	9a 5c 00 38 01       	call   0x138:0x5c
   37f58:	59                   	pop    cx
   37f59:	b8 88 01             	mov    ax,0x188
   37f5c:	8e c0                	mov    es,ax
   37f5e:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   37f64:	74 1a                	je     0x37f80
   37f66:	b8 88 01             	mov    ax,0x188
   37f69:	8e c0                	mov    es,ax
   37f6b:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   37f71:	75 1a                	jne    0x37f8d
   37f73:	b8 88 01             	mov    ax,0x188
   37f76:	8e c0                	mov    es,ax
   37f78:	26 83 3e e8 d5 0a    	cmp    WORD PTR es:0xd5e8,0xa
   37f7e:	7e 0d                	jle    0x37f8d
   37f80:	b8 88 01             	mov    ax,0x188
   37f83:	8e c0                	mov    es,ax
   37f85:	26 83 3e e8 d5 00    	cmp    WORD PTR es:0xd5e8,0x0
   37f8b:	75 09                	jne    0x37f96
   37f8d:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   37f91:	75 03                	jne    0x37f96
   37f93:	e9 e8 02             	jmp    0x3827e
   37f96:	9a 15 05 30 00       	call   0x30:0x515
   37f9b:	ba 88 01             	mov    dx,0x188
   37f9e:	8e c2                	mov    es,dx
   37fa0:	26 a3 e8 d5          	mov    es:0xd5e8,ax
   37fa4:	b8 88 01             	mov    ax,0x188
   37fa7:	8e c0                	mov    es,ax
   37fa9:	26 83 3e e8 d5 0e    	cmp    WORD PTR es:0xd5e8,0xe
   37faf:	75 0d                	jne    0x37fbe
   37fb1:	b8 88 01             	mov    ax,0x188
   37fb4:	8e c0                	mov    es,ax
   37fb6:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   37fbc:	74 09                	je     0x37fc7
   37fbe:	83 7e f8 2f          	cmp    WORD PTR [bp-0x8],0x2f
   37fc2:	74 03                	je     0x37fc7
   37fc4:	e9 b7 02             	jmp    0x3827e
   37fc7:	b8 88 01             	mov    ax,0x188
   37fca:	8e c0                	mov    es,ax
   37fcc:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   37fd1:	6b db 5c             	imul   bx,bx,0x5c
   37fd4:	b8 88 01             	mov    ax,0x188
   37fd7:	8e c0                	mov    es,ax
   37fd9:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   37fdf:	7f 03                	jg     0x37fe4
   37fe1:	e9 9a 02             	jmp    0x3827e
   37fe4:	eb 10                	jmp    0x37ff6
   37fe6:	b8 88 01             	mov    ax,0x188
   37fe9:	8e c0                	mov    es,ax
   37feb:	26 a0 e3 e5          	mov    al,es:0xe5e3
   37fef:	50                   	push   ax
   37ff0:	9a 6b 02 30 00       	call   0x30:0x26b
   37ff5:	59                   	pop    cx
   37ff6:	b8 88 01             	mov    ax,0x188
   37ff9:	8e c0                	mov    es,ax
   37ffb:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   38001:	75 e3                	jne    0x37fe6
   38003:	9a c0 00 38 01       	call   0x138:0xc0
   38008:	68 c7 00             	push   0xc7
   3800b:	68 3f 01             	push   0x13f
   3800e:	6a 00                	push   0x0
   38010:	6a 00                	push   0x0
   38012:	9a 4d 00 50 01       	call   0x150:0x4d
   38017:	83 c4 08             	add    sp,0x8
   3801a:	b8 88 01             	mov    ax,0x188
   3801d:	8e c0                	mov    es,ax
   3801f:	26 83 3e e2 d5 00    	cmp    WORD PTR es:0xd5e2,0x0
   38025:	75 03                	jne    0x3802a
   38027:	e9 bd ee             	jmp    0x36ee7
   3802a:	b8 88 01             	mov    ax,0x188
   3802d:	8e c0                	mov    es,ax
   3802f:	26 8b 1e e2 d5       	mov    bx,WORD PTR es:0xd5e2
   38034:	d1 e3                	shl    bx,1
   38036:	b8 88 01             	mov    ax,0x188
   38039:	8e c0                	mov    es,ax
   3803b:	26 8b 87 fd 11       	mov    ax,WORD PTR es:[bx+0x11fd]
   38040:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   38043:	b8 88 01             	mov    ax,0x188
   38046:	8e c0                	mov    es,ax
   38048:	26 8b 1e e2 d5       	mov    bx,WORD PTR es:0xd5e2
   3804d:	d1 e3                	shl    bx,1
   3804f:	b8 88 01             	mov    ax,0x188
   38052:	8e c0                	mov    es,ax
   38054:	26 8b 87 41 12       	mov    ax,WORD PTR es:[bx+0x1241]
   38059:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   3805c:	83 7e f4 02          	cmp    WORD PTR [bp-0xc],0x2
   38060:	74 03                	je     0x38065
   38062:	e9 f6 01             	jmp    0x3825b
   38065:	83 7e f2 01          	cmp    WORD PTR [bp-0xe],0x1
   38069:	74 03                	je     0x3806e
   3806b:	e9 ae 00             	jmp    0x3811c
   3806e:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   38073:	eb 5d                	jmp    0x380d2
   38075:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   38078:	c1 e3 03             	shl    bx,0x3
   3807b:	b8 88 01             	mov    ax,0x188
   3807e:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   38081:	4a                   	dec    dx
   38082:	6b d2 23             	imul   dx,dx,0x23
   38085:	81 c2 9c 00          	add    dx,0x9c
   38089:	8e c0                	mov    es,ax
   3808b:	26 89 97 65 e6       	mov    WORD PTR es:[bx-0x199b],dx
   38090:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   38093:	c1 e3 03             	shl    bx,0x3
   38096:	b8 88 01             	mov    ax,0x188
   38099:	8e c0                	mov    es,ax
   3809b:	26 c7 87 67 e6 14 00 	mov    WORD PTR es:[bx-0x1999],0x14
   380a2:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   380a5:	c1 e3 03             	shl    bx,0x3
   380a8:	b8 88 01             	mov    ax,0x188
   380ab:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   380ae:	4a                   	dec    dx
   380af:	6b d2 23             	imul   dx,dx,0x23
   380b2:	81 c2 bc 00          	add    dx,0xbc
   380b6:	8e c0                	mov    es,ax
   380b8:	26 89 97 69 e6       	mov    WORD PTR es:[bx-0x1997],dx
   380bd:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   380c0:	c1 e3 03             	shl    bx,0x3
   380c3:	b8 88 01             	mov    ax,0x188
   380c6:	8e c0                	mov    es,ax
   380c8:	26 c7 87 6b e6 34 00 	mov    WORD PTR es:[bx-0x1995],0x34
   380cf:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   380d2:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   380d6:	7e 9d                	jle    0x38075
   380d8:	b8 88 01             	mov    ax,0x188
   380db:	8e c0                	mov    es,ax
   380dd:	26 a0 64 96          	mov    al,es:0x9664
   380e1:	b4 00                	mov    ah,0x0
   380e3:	50                   	push   ax
   380e4:	68 d9 00             	push   0xd9
   380e7:	1e                   	push   ds
   380e8:	68 5f 44             	push   0x445f
   380eb:	9a 10 01 38 01       	call   0x138:0x110
   380f0:	83 c4 08             	add    sp,0x8
   380f3:	6a 0f                	push   0xf
   380f5:	9a 83 20 10 00       	call   0x10:0x2083
   380fa:	59                   	pop    cx
   380fb:	b4 00                	mov    ah,0x0
   380fd:	ba 88 01             	mov    dx,0x188
   38100:	8e c2                	mov    es,dx
   38102:	26 a3 e0 d5          	mov    es:0xd5e0,ax
   38106:	0b c0                	or     ax,ax
   38108:	75 03                	jne    0x3810d
   3810a:	e9 da ed             	jmp    0x36ee7
   3810d:	b8 88 01             	mov    ax,0x188
   38110:	8e c0                	mov    es,ax
   38112:	26 83 06 e0 d5 18    	add    WORD PTR es:0xd5e0,0x18
   38118:	eb 17                	jmp    0x38131
   3811a:	eb 15                	jmp    0x38131
   3811c:	b8 88 01             	mov    ax,0x188
   3811f:	8e c0                	mov    es,ax
   38121:	26 a1 98 28          	mov    ax,es:0x2898
   38125:	05 18 00             	add    ax,0x18
   38128:	ba 88 01             	mov    dx,0x188
   3812b:	8e c2                	mov    es,dx
   3812d:	26 a3 e0 d5          	mov    es:0xd5e0,ax
   38131:	b8 88 01             	mov    ax,0x188
   38134:	8e c0                	mov    es,ax
   38136:	26 a1 98 28          	mov    ax,es:0x2898
   3813a:	05 18 00             	add    ax,0x18
   3813d:	ba 88 01             	mov    dx,0x188
   38140:	8e c2                	mov    es,dx
   38142:	26 a3 de d5          	mov    es:0xd5de,ax
   38146:	b8 88 01             	mov    ax,0x188
   38149:	8e c0                	mov    es,ax
   3814b:	26 a1 de d5          	mov    ax,es:0xd5de
   3814f:	05 28 00             	add    ax,0x28
   38152:	ba 88 01             	mov    dx,0x188
   38155:	8e c2                	mov    es,dx
   38157:	26 a3 20 63          	mov    es:0x6320,ax
   3815b:	b8 88 01             	mov    ax,0x188
   3815e:	8e c0                	mov    es,ax
   38160:	26 a1 98 28          	mov    ax,es:0x2898
   38164:	89 46 f0             	mov    WORD PTR [bp-0x10],ax
   38167:	9a d9 00 38 01       	call   0x138:0xd9
   3816c:	9a 1f 01 38 01       	call   0x138:0x11f
   38171:	9a 1a 01 38 01       	call   0x138:0x11a
   38176:	6a 32                	push   0x32
   38178:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   3817d:	59                   	pop    cx
   3817e:	b8 88 01             	mov    ax,0x188
   38181:	8e c0                	mov    es,ax
   38183:	26 83 3e 1a 63 00    	cmp    WORD PTR es:0x631a,0x0
   38189:	75 03                	jne    0x3818e
   3818b:	e9 a6 00             	jmp    0x38234
   3818e:	68 88 01             	push   0x188
   38191:	68 10 a5             	push   0xa510
   38194:	9a cc 49 00 00       	call   0x0:0x49cc
   38199:	83 c4 04             	add    sp,0x4
   3819c:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   3819f:	eb 11                	jmp    0x381b2
   381a1:	b8 88 01             	mov    ax,0x188
   381a4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   381a7:	8e c0                	mov    es,ax
   381a9:	26 c6 87 10 a5 00    	mov    BYTE PTR es:[bx-0x5af0],0x0
   381af:	ff 4e fe             	dec    WORD PTR [bp-0x2]
   381b2:	6a 01                	push   0x1
   381b4:	68 88 01             	push   0x188
   381b7:	68 10 a5             	push   0xa510
   381ba:	9a 48 00 80 01       	call   0x180:0x48
   381bf:	83 c4 06             	add    sp,0x6
   381c2:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   381c5:	81 7e f8 82 00       	cmp    WORD PTR [bp-0x8],0x82
   381ca:	7f d5                	jg     0x381a1
   381cc:	1e                   	push   ds
   381cd:	68 6a 44             	push   0x446a
   381d0:	68 88 01             	push   0x188
   381d3:	68 10 a5             	push   0xa510
   381d6:	9a 0b 53 00 00       	call   0x0:0x530b
   381db:	83 c4 08             	add    sp,0x8
   381de:	b8 88 01             	mov    ax,0x188
   381e1:	8e c0                	mov    es,ax
   381e3:	26 a0 64 96          	mov    al,es:0x9664
   381e7:	b4 00                	mov    ah,0x0
   381e9:	50                   	push   ax
   381ea:	68 d9 00             	push   0xd9
   381ed:	68 88 01             	push   0x188
   381f0:	68 10 a5             	push   0xa510
   381f3:	9a 10 01 38 01       	call   0x138:0x110
   381f8:	83 c4 08             	add    sp,0x8
   381fb:	b8 88 01             	mov    ax,0x188
   381fe:	8e c0                	mov    es,ax
   38200:	26 a1 e0 d5          	mov    ax,es:0xd5e0
   38204:	05 28 00             	add    ax,0x28
   38207:	ba 88 01             	mov    dx,0x188
   3820a:	8e c2                	mov    es,dx
   3820c:	26 a3 20 63          	mov    es:0x6320,ax
   38210:	b8 88 01             	mov    ax,0x188
   38213:	8e c0                	mov    es,ax
   38215:	26 ff 36 1a 63       	push   WORD PTR es:0x631a
   3821a:	9a 9d 00 38 01       	call   0x138:0x9d
   3821f:	59                   	pop    cx
   38220:	b8 88 01             	mov    ax,0x188
   38223:	8e c0                	mov    es,ax
   38225:	26 c7 06 1a 63 00 00 	mov    WORD PTR es:0x631a,0x0
   3822c:	6a 32                	push   0x32
   3822e:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   38233:	59                   	pop    cx
   38234:	9a 1b 1d 10 00       	call   0x10:0x1d1b
   38239:	b8 88 01             	mov    ax,0x188
   3823c:	8e c0                	mov    es,ax
   3823e:	26 a1 4a e7          	mov    ax,es:0xe74a
   38242:	ba 88 01             	mov    dx,0x188
   38245:	8e c2                	mov    es,dx
   38247:	26 a3 d4 d5          	mov    es:0xd5d4,ax
   3824b:	b8 88 01             	mov    ax,0x188
   3824e:	8b 56 f0             	mov    dx,WORD PTR [bp-0x10]
   38251:	8e c0                	mov    es,ax
   38253:	26 89 16 98 28       	mov    WORD PTR es:0x2898,dx
   38258:	e9 8c ec             	jmp    0x36ee7
   3825b:	b8 88 01             	mov    ax,0x188
   3825e:	8e c0                	mov    es,ax
   38260:	26 a0 64 96          	mov    al,es:0x9664
   38264:	b4 00                	mov    ah,0x0
   38266:	50                   	push   ax
   38267:	68 d9 00             	push   0xd9
   3826a:	1e                   	push   ds
   3826b:	68 6e 44             	push   0x446e
   3826e:	9a 10 01 38 01       	call   0x138:0x110
   38273:	83 c4 08             	add    sp,0x8
   38276:	6a 1e                	push   0x1e
   38278:	e9 23 10             	jmp    0x3929e
   3827b:	e9 69 ec             	jmp    0x36ee7
   3827e:	b8 88 01             	mov    ax,0x188
   38281:	8e c0                	mov    es,ax
   38283:	26 83 3e e8 d5 0e    	cmp    WORD PTR es:0xd5e8,0xe
   38289:	7e 32                	jle    0x382bd
   3828b:	b8 88 01             	mov    ax,0x188
   3828e:	8e c0                	mov    es,ax
   38290:	26 83 3e e8 d5 13    	cmp    WORD PTR es:0xd5e8,0x13
   38296:	7d 25                	jge    0x382bd
   38298:	b8 88 01             	mov    ax,0x188
   3829b:	8e c0                	mov    es,ax
   3829d:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   382a1:	05 f2 ff             	add    ax,0xfff2
   382a4:	ba 88 01             	mov    dx,0x188
   382a7:	8e c2                	mov    es,dx
   382a9:	26 3b 06 98 28       	cmp    ax,WORD PTR es:0x2898
   382ae:	74 0d                	je     0x382bd
   382b0:	b8 88 01             	mov    ax,0x188
   382b3:	8e c0                	mov    es,ax
   382b5:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   382bb:	74 1e                	je     0x382db
   382bd:	83 7e f8 3b          	cmp    WORD PTR [bp-0x8],0x3b
   382c1:	7c 6b                	jl     0x3832e
   382c3:	83 7e f8 3e          	cmp    WORD PTR [bp-0x8],0x3e
   382c7:	7f 65                	jg     0x3832e
   382c9:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   382cc:	05 c6 ff             	add    ax,0xffc6
   382cf:	ba 88 01             	mov    dx,0x188
   382d2:	8e c2                	mov    es,dx
   382d4:	26 3b 06 98 28       	cmp    ax,WORD PTR es:0x2898
   382d9:	74 53                	je     0x3832e
   382db:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   382df:	74 08                	je     0x382e9
   382e1:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   382e4:	05 c6 ff             	add    ax,0xffc6
   382e7:	eb 0c                	jmp    0x382f5
   382e9:	b8 88 01             	mov    ax,0x188
   382ec:	8e c0                	mov    es,ax
   382ee:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   382f2:	05 f2 ff             	add    ax,0xfff2
   382f5:	ba 88 01             	mov    dx,0x188
   382f8:	8e c2                	mov    es,dx
   382fa:	26 a3 98 28          	mov    es:0x2898,ax
   382fe:	b8 88 01             	mov    ax,0x188
   38301:	8e c0                	mov    es,ax
   38303:	26 a0 64 96          	mov    al,es:0x9664
   38307:	b4 00                	mov    ah,0x0
   38309:	50                   	push   ax
   3830a:	6a 06                	push   0x6
   3830c:	6a 21                	push   0x21
   3830e:	6a 21                	push   0x21
   38310:	6a 13                	push   0x13
   38312:	b8 88 01             	mov    ax,0x188
   38315:	8e c0                	mov    es,ax
   38317:	26 a1 98 28          	mov    ax,es:0x2898
   3831b:	48                   	dec    ax
   3831c:	6b c0 23             	imul   ax,ax,0x23
   3831f:	05 9b 00             	add    ax,0x9b
   38322:	50                   	push   ax
   38323:	9a 99 0b 28 00       	call   0x28:0xb99
   38328:	83 c4 0c             	add    sp,0xc
   3832b:	e9 b9 eb             	jmp    0x36ee7
   3832e:	83 7e f8 13          	cmp    WORD PTR [bp-0x8],0x13
   38332:	7d 06                	jge    0x3833a
   38334:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   38338:	75 10                	jne    0x3834a
   3833a:	b8 88 01             	mov    ax,0x188
   3833d:	8e c0                	mov    es,ax
   3833f:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   38345:	74 03                	je     0x3834a
   38347:	e9 4b 01             	jmp    0x38495
   3834a:	b8 88 01             	mov    ax,0x188
   3834d:	8e c0                	mov    es,ax
   3834f:	26 83 3e e8 d5 0a    	cmp    WORD PTR es:0xd5e8,0xa
   38355:	7e 41                	jle    0x38398
   38357:	b8 88 01             	mov    ax,0x188
   3835a:	8e c0                	mov    es,ax
   3835c:	26 83 3e e8 d5 0e    	cmp    WORD PTR es:0xd5e8,0xe
   38362:	7d 34                	jge    0x38398
   38364:	b8 88 01             	mov    ax,0x188
   38367:	8e c0                	mov    es,ax
   38369:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3836e:	6b db 5c             	imul   bx,bx,0x5c
   38371:	b8 88 01             	mov    ax,0x188
   38374:	8e c0                	mov    es,ax
   38376:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   3837a:	d1 e0                	shl    ax,1
   3837c:	03 d8                	add    bx,ax
   3837e:	b8 88 01             	mov    ax,0x188
   38381:	8e c0                	mov    es,ax
   38383:	26 83 bf cc 99 00    	cmp    WORD PTR es:[bx-0x6634],0x0
   38389:	74 0d                	je     0x38398
   3838b:	b8 88 01             	mov    ax,0x188
   3838e:	8e c0                	mov    es,ax
   38390:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   38396:	74 36                	je     0x383ce
   38398:	83 7e f8 0f          	cmp    WORD PTR [bp-0x8],0xf
   3839c:	7f 03                	jg     0x383a1
   3839e:	e9 f4 00             	jmp    0x38495
   383a1:	83 7e f8 13          	cmp    WORD PTR [bp-0x8],0x13
   383a5:	7c 03                	jl     0x383aa
   383a7:	e9 eb 00             	jmp    0x38495
   383aa:	b8 88 01             	mov    ax,0x188
   383ad:	8e c0                	mov    es,ax
   383af:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   383b4:	6b db 5c             	imul   bx,bx,0x5c
   383b7:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   383ba:	d1 e0                	shl    ax,1
   383bc:	03 d8                	add    bx,ax
   383be:	b8 88 01             	mov    ax,0x188
   383c1:	8e c0                	mov    es,ax
   383c3:	26 83 bf c2 99 00    	cmp    WORD PTR es:[bx-0x663e],0x0
   383c9:	75 03                	jne    0x383ce
   383cb:	e9 c7 00             	jmp    0x38495
   383ce:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   383d2:	74 0f                	je     0x383e3
   383d4:	8b 46 f8             	mov    ax,WORD PTR [bp-0x8]
   383d7:	05 fb ff             	add    ax,0xfffb
   383da:	ba 88 01             	mov    dx,0x188
   383dd:	8e c2                	mov    es,dx
   383df:	26 a3 e8 d5          	mov    es:0xd5e8,ax
   383e3:	b8 88 01             	mov    ax,0x188
   383e6:	8e c0                	mov    es,ax
   383e8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   383ed:	6b db 5c             	imul   bx,bx,0x5c
   383f0:	b8 88 01             	mov    ax,0x188
   383f3:	8e c0                	mov    es,ax
   383f5:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   383f9:	d1 e0                	shl    ax,1
   383fb:	03 d8                	add    bx,ax
   383fd:	b8 88 01             	mov    ax,0x188
   38400:	8e c0                	mov    es,ax
   38402:	26 8b 87 cc 99       	mov    ax,WORD PTR es:[bx-0x6634]
   38407:	05 de ff             	add    ax,0xffde
   3840a:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   3840d:	b8 88 01             	mov    ax,0x188
   38410:	8e c0                	mov    es,ax
   38412:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38417:	6b db 5c             	imul   bx,bx,0x5c
   3841a:	b8 88 01             	mov    ax,0x188
   3841d:	8e c0                	mov    es,ax
   3841f:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   38423:	d1 e0                	shl    ax,1
   38425:	03 d8                	add    bx,ax
   38427:	b8 88 01             	mov    ax,0x188
   3842a:	8e c0                	mov    es,ax
   3842c:	26 c7 87 cc 99 00 00 	mov    WORD PTR es:[bx-0x6634],0x0
   38433:	b8 88 01             	mov    ax,0x188
   38436:	8e c0                	mov    es,ax
   38438:	26 83 3e e8 d5 0b    	cmp    WORD PTR es:0xd5e8,0xb
   3843e:	75 07                	jne    0x38447
   38440:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   38445:	eb 12                	jmp    0x38459
   38447:	b8 88 01             	mov    ax,0x188
   3844a:	8e c0                	mov    es,ax
   3844c:	26 83 3e e8 d5 0c    	cmp    WORD PTR es:0xd5e8,0xc
   38452:	75 05                	jne    0x38459
   38454:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   38459:	9a 04 02 30 00       	call   0x30:0x204
   3845e:	b8 88 01             	mov    ax,0x188
   38461:	8e c0                	mov    es,ax
   38463:	26 a0 64 96          	mov    al,es:0x9664
   38467:	b4 00                	mov    ah,0x0
   38469:	50                   	push   ax
   3846a:	6a 00                	push   0x0
   3846c:	6a 10                	push   0x10
   3846e:	6a 10                	push   0x10
   38470:	6a 00                	push   0x0
   38472:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38475:	48                   	dec    ax
   38476:	c1 e0 04             	shl    ax,0x4
   38479:	50                   	push   ax
   3847a:	9a 99 0b 28 00       	call   0x28:0xb99
   3847f:	83 c4 0c             	add    sp,0xc
   38482:	b8 88 01             	mov    ax,0x188
   38485:	8e c0                	mov    es,ax
   38487:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3848c:	50                   	push   ax
   3848d:	9a 69 00 30 00       	call   0x30:0x69
   38492:	e9 0e 0e             	jmp    0x392a3
   38495:	b8 88 01             	mov    ax,0x188
   38498:	8e c0                	mov    es,ax
   3849a:	26 83 3e e8 d5 0b    	cmp    WORD PTR es:0xd5e8,0xb
   384a0:	7d 0d                	jge    0x384af
   384a2:	b8 88 01             	mov    ax,0x188
   384a5:	8e c0                	mov    es,ax
   384a7:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   384ad:	74 15                	je     0x384c4
   384af:	83 7e f8 17          	cmp    WORD PTR [bp-0x8],0x17
   384b3:	74 0f                	je     0x384c4
   384b5:	83 7e f8 4b          	cmp    WORD PTR [bp-0x8],0x4b
   384b9:	74 09                	je     0x384c4
   384bb:	83 7e f8 4d          	cmp    WORD PTR [bp-0x8],0x4d
   384bf:	74 03                	je     0x384c4
   384c1:	e9 f8 0e             	jmp    0x393bc
   384c4:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   384c8:	74 76                	je     0x38540
   384ca:	b8 88 01             	mov    ax,0x188
   384cd:	8e c0                	mov    es,ax
   384cf:	26 c7 06 e8 d5 00 00 	mov    WORD PTR es:0xd5e8,0x0
   384d6:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   384db:	eb 31                	jmp    0x3850e
   384dd:	b8 88 01             	mov    ax,0x188
   384e0:	8e c0                	mov    es,ax
   384e2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   384e7:	6b db 5c             	imul   bx,bx,0x5c
   384ea:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   384ed:	d1 e0                	shl    ax,1
   384ef:	03 d8                	add    bx,ax
   384f1:	b8 88 01             	mov    ax,0x188
   384f4:	8e c0                	mov    es,ax
   384f6:	26 83 bf ea 99 00    	cmp    WORD PTR es:[bx-0x6616],0x0
   384fc:	74 0d                	je     0x3850b
   384fe:	b8 88 01             	mov    ax,0x188
   38501:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   38504:	8e c0                	mov    es,ax
   38506:	26 89 16 e8 d5       	mov    WORD PTR es:0xd5e8,dx
   3850b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3850e:	83 7e fe 0a          	cmp    WORD PTR [bp-0x2],0xa
   38512:	7e c9                	jle    0x384dd
   38514:	b8 88 01             	mov    ax,0x188
   38517:	8e c0                	mov    es,ax
   38519:	26 83 3e e8 d5 00    	cmp    WORD PTR es:0xd5e8,0x0
   3851f:	74 1f                	je     0x38540
   38521:	9a 04 02 30 00       	call   0x30:0x204
   38526:	b8 88 01             	mov    ax,0x188
   38529:	8e c0                	mov    es,ax
   3852b:	26 a0 24 73          	mov    al,es:0x7324
   3852f:	b4 00                	mov    ah,0x0
   38531:	40                   	inc    ax
   38532:	89 46 ea             	mov    WORD PTR [bp-0x16],ax
   38535:	b8 88 01             	mov    ax,0x188
   38538:	8e c0                	mov    es,ax
   3853a:	26 c6 06 24 73 00    	mov    BYTE PTR es:0x7324,0x0
   38540:	b8 88 01             	mov    ax,0x188
   38543:	8e c0                	mov    es,ax
   38545:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3854a:	6b db 5c             	imul   bx,bx,0x5c
   3854d:	b8 88 01             	mov    ax,0x188
   38550:	8e c0                	mov    es,ax
   38552:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   38556:	d1 e0                	shl    ax,1
   38558:	03 d8                	add    bx,ax
   3855a:	b8 88 01             	mov    ax,0x188
   3855d:	8e c0                	mov    es,ax
   3855f:	26 83 bf ea 99 00    	cmp    WORD PTR es:[bx-0x6616],0x0
   38565:	75 03                	jne    0x3856a
   38567:	e9 e3 f7             	jmp    0x37d4d
   3856a:	b8 88 01             	mov    ax,0x188
   3856d:	8e c0                	mov    es,ax
   3856f:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   38573:	89 46 e6             	mov    WORD PTR [bp-0x1a],ax
   38576:	b8 88 01             	mov    ax,0x188
   38579:	8e c0                	mov    es,ax
   3857b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38580:	6b db 5c             	imul   bx,bx,0x5c
   38583:	b8 88 01             	mov    ax,0x188
   38586:	8e c0                	mov    es,ax
   38588:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   3858c:	d1 e0                	shl    ax,1
   3858e:	03 d8                	add    bx,ax
   38590:	b8 88 01             	mov    ax,0x188
   38593:	8e c0                	mov    es,ax
   38595:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   3859a:	bb 64 00             	mov    bx,0x64
   3859d:	99                   	cwd
   3859e:	f7 fb                	idiv   bx
   385a0:	ba 88 01             	mov    dx,0x188
   385a3:	8e c2                	mov    es,dx
   385a5:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   385a9:	b8 88 01             	mov    ax,0x188
   385ac:	8e c0                	mov    es,ax
   385ae:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   385b3:	6b db 5c             	imul   bx,bx,0x5c
   385b6:	b8 88 01             	mov    ax,0x188
   385b9:	8e c0                	mov    es,ax
   385bb:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   385bf:	d1 e0                	shl    ax,1
   385c1:	03 d8                	add    bx,ax
   385c3:	b8 88 01             	mov    ax,0x188
   385c6:	8e c0                	mov    es,ax
   385c8:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   385cd:	bb 64 00             	mov    bx,0x64
   385d0:	99                   	cwd
   385d1:	f7 fb                	idiv   bx
   385d3:	b8 88 01             	mov    ax,0x188
   385d6:	8e c0                	mov    es,ax
   385d8:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   385dd:	9a 04 02 30 00       	call   0x30:0x204
   385e2:	b8 88 01             	mov    ax,0x188
   385e5:	8e c0                	mov    es,ax
   385e7:	26 a0 64 96          	mov    al,es:0x9664
   385eb:	b4 00                	mov    ah,0x0
   385ed:	50                   	push   ax
   385ee:	6a 00                	push   0x0
   385f0:	6a 10                	push   0x10
   385f2:	6a 10                	push   0x10
   385f4:	6a 00                	push   0x0
   385f6:	b8 88 01             	mov    ax,0x188
   385f9:	8e c0                	mov    es,ax
   385fb:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   385ff:	48                   	dec    ax
   38600:	c1 e0 04             	shl    ax,0x4
   38603:	50                   	push   ax
   38604:	9a 99 0b 28 00       	call   0x28:0xb99
   38609:	83 c4 0c             	add    sp,0xc
   3860c:	9a 15 01 38 01       	call   0x138:0x115
   38611:	b8 88 01             	mov    ax,0x188
   38614:	8e c0                	mov    es,ax
   38616:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   3861c:	75 0e                	jne    0x3862c
   3861e:	b8 88 01             	mov    ax,0x188
   38621:	8e c0                	mov    es,ax
   38623:	26 c7 06 ea d5 22 00 	mov    WORD PTR es:0xd5ea,0x22
   3862a:	eb 18                	jmp    0x38644
   3862c:	b8 88 01             	mov    ax,0x188
   3862f:	8e c0                	mov    es,ax
   38631:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   38637:	7e 0b                	jle    0x38644
   38639:	b8 88 01             	mov    ax,0x188
   3863c:	8e c0                	mov    es,ax
   3863e:	26 83 06 ea d5 02    	add    WORD PTR es:0xd5ea,0x2
   38644:	b8 88 01             	mov    ax,0x188
   38647:	8e c0                	mov    es,ax
   38649:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   3864f:	74 19                	je     0x3866a
   38651:	b8 88 01             	mov    ax,0x188
   38654:	8e c0                	mov    es,ax
   38656:	26 a0 ea d5          	mov    al,es:0xd5ea
   3865a:	04 ff                	add    al,0xff
   3865c:	50                   	push   ax
   3865d:	9a 69 00 30 00       	call   0x30:0x69
   38662:	59                   	pop    cx
   38663:	9a 14 07 30 00       	call   0x30:0x714
   38668:	eb 08                	jmp    0x38672
   3866a:	6a 2d                	push   0x2d
   3866c:	9a 69 00 30 00       	call   0x30:0x69
   38671:	59                   	pop    cx
   38672:	9a 15 05 30 00       	call   0x30:0x515
   38677:	ba 88 01             	mov    dx,0x188
   3867a:	8e c2                	mov    es,dx
   3867c:	26 a3 ec d5          	mov    es:0xd5ec,ax
   38680:	6a 01                	push   0x1
   38682:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   38687:	59                   	pop    cx
   38688:	c1 f8 08             	sar    ax,0x8
   3868b:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3868e:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   38692:	74 05                	je     0x38699
   38694:	9a e3 01 40 00       	call   0x40:0x1e3
   38699:	b8 88 01             	mov    ax,0x188
   3869c:	8e c0                	mov    es,ax
   3869e:	26 a0 e3 e5          	mov    al,es:0xe5e3
   386a2:	50                   	push   ax
   386a3:	9a 6b 02 30 00       	call   0x30:0x26b
   386a8:	59                   	pop    cx
   386a9:	b8 88 01             	mov    ax,0x188
   386ac:	8e c0                	mov    es,ax
   386ae:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   386b4:	75 06                	jne    0x386bc
   386b6:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   386ba:	74 b6                	je     0x38672
   386bc:	b8 88 01             	mov    ax,0x188
   386bf:	8e c0                	mov    es,ax
   386c1:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   386c7:	75 03                	jne    0x386cc
   386c9:	e9 8d 0c             	jmp    0x39359
   386cc:	b8 88 01             	mov    ax,0x188
   386cf:	8e c0                	mov    es,ax
   386d1:	26 83 3e ec d5 0b    	cmp    WORD PTR es:0xd5ec,0xb
   386d7:	7d 2f                	jge    0x38708
   386d9:	b8 88 01             	mov    ax,0x188
   386dc:	8e c0                	mov    es,ax
   386de:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   386e4:	75 22                	jne    0x38708
   386e6:	b8 88 01             	mov    ax,0x188
   386e9:	8e c0                	mov    es,ax
   386eb:	26 a1 ec d5          	mov    ax,es:0xd5ec
   386ef:	ba 88 01             	mov    dx,0x188
   386f2:	8e c2                	mov    es,dx
   386f4:	26 3b 06 e8 d5       	cmp    ax,WORD PTR es:0xd5e8
   386f9:	74 0d                	je     0x38708
   386fb:	b8 88 01             	mov    ax,0x188
   386fe:	8e c0                	mov    es,ax
   38700:	26 83 3e ec d5 00    	cmp    WORD PTR es:0xd5ec,0x0
   38706:	75 0f                	jne    0x38717
   38708:	83 7e f6 4b          	cmp    WORD PTR [bp-0xa],0x4b
   3870c:	74 09                	je     0x38717
   3870e:	83 7e f6 4d          	cmp    WORD PTR [bp-0xa],0x4d
   38712:	74 03                	je     0x38717
   38714:	e9 a4 01             	jmp    0x388bb
   38717:	83 7e f6 4d          	cmp    WORD PTR [bp-0xa],0x4d
   3871b:	75 08                	jne    0x38725
   3871d:	6a 0a                	push   0xa
   3871f:	6a 01                	push   0x1
   38721:	6a 01                	push   0x1
   38723:	eb 0c                	jmp    0x38731
   38725:	83 7e f6 4b          	cmp    WORD PTR [bp-0xa],0x4b
   38729:	75 20                	jne    0x3874b
   3872b:	6a 0a                	push   0xa
   3872d:	6a 01                	push   0x1
   3872f:	6a ff                	push   0xffff
   38731:	16                   	push   ss
   38732:	8d 46 e6             	lea    ax,[bp-0x1a]
   38735:	50                   	push   ax
   38736:	9a 25 00 38 01       	call   0x138:0x25
   3873b:	83 c4 0a             	add    sp,0xa
   3873e:	b8 88 01             	mov    ax,0x188
   38741:	8b 56 e6             	mov    dx,WORD PTR [bp-0x1a]
   38744:	8e c0                	mov    es,ax
   38746:	26 89 16 ec d5       	mov    WORD PTR es:0xd5ec,dx
   3874b:	9a 04 02 30 00       	call   0x30:0x204
   38750:	68 a9 00             	push   0xa9
   38753:	6a 00                	push   0x0
   38755:	6a 10                	push   0x10
   38757:	6a 10                	push   0x10
   38759:	6a 00                	push   0x0
   3875b:	b8 88 01             	mov    ax,0x188
   3875e:	8e c0                	mov    es,ax
   38760:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   38764:	48                   	dec    ax
   38765:	c1 e0 04             	shl    ax,0x4
   38768:	50                   	push   ax
   38769:	9a 99 0b 28 00       	call   0x28:0xb99
   3876e:	83 c4 0c             	add    sp,0xc
   38771:	b8 88 01             	mov    ax,0x188
   38774:	8e c0                	mov    es,ax
   38776:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3877b:	50                   	push   ax
   3877c:	9a 69 00 30 00       	call   0x30:0x69
   38781:	59                   	pop    cx
   38782:	b8 88 01             	mov    ax,0x188
   38785:	8e c0                	mov    es,ax
   38787:	26 a1 ec d5          	mov    ax,es:0xd5ec
   3878b:	ba 88 01             	mov    dx,0x188
   3878e:	8e c2                	mov    es,dx
   38790:	26 a3 e8 d5          	mov    es:0xd5e8,ax
   38794:	9a 04 02 30 00       	call   0x30:0x204
   38799:	6a 1d                	push   0x1d
   3879b:	6a 00                	push   0x0
   3879d:	6a 10                	push   0x10
   3879f:	6a 10                	push   0x10
   387a1:	6a 00                	push   0x0
   387a3:	b8 88 01             	mov    ax,0x188
   387a6:	8e c0                	mov    es,ax
   387a8:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   387ac:	48                   	dec    ax
   387ad:	c1 e0 04             	shl    ax,0x4
   387b0:	50                   	push   ax
   387b1:	9a 99 0b 28 00       	call   0x28:0xb99
   387b6:	83 c4 0c             	add    sp,0xc
   387b9:	b8 88 01             	mov    ax,0x188
   387bc:	8e c0                	mov    es,ax
   387be:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   387c3:	6b db 5c             	imul   bx,bx,0x5c
   387c6:	b8 88 01             	mov    ax,0x188
   387c9:	8e c0                	mov    es,ax
   387cb:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   387cf:	d1 e0                	shl    ax,1
   387d1:	03 d8                	add    bx,ax
   387d3:	b8 88 01             	mov    ax,0x188
   387d6:	8e c0                	mov    es,ax
   387d8:	26 83 bf ea 99 00    	cmp    WORD PTR es:[bx-0x6616],0x0
   387de:	75 03                	jne    0x387e3
   387e0:	e9 b8 00             	jmp    0x3889b
   387e3:	b8 88 01             	mov    ax,0x188
   387e6:	8e c0                	mov    es,ax
   387e8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   387ed:	6b db 5c             	imul   bx,bx,0x5c
   387f0:	b8 88 01             	mov    ax,0x188
   387f3:	8e c0                	mov    es,ax
   387f5:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   387f9:	d1 e0                	shl    ax,1
   387fb:	03 d8                	add    bx,ax
   387fd:	b8 88 01             	mov    ax,0x188
   38800:	8e c0                	mov    es,ax
   38802:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   38807:	bb 64 00             	mov    bx,0x64
   3880a:	99                   	cwd
   3880b:	f7 fb                	idiv   bx
   3880d:	ba 88 01             	mov    dx,0x188
   38810:	8e c2                	mov    es,dx
   38812:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   38816:	b8 88 01             	mov    ax,0x188
   38819:	8e c0                	mov    es,ax
   3881b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38820:	6b db 5c             	imul   bx,bx,0x5c
   38823:	b8 88 01             	mov    ax,0x188
   38826:	8e c0                	mov    es,ax
   38828:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   3882c:	d1 e0                	shl    ax,1
   3882e:	03 d8                	add    bx,ax
   38830:	b8 88 01             	mov    ax,0x188
   38833:	8e c0                	mov    es,ax
   38835:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   3883a:	bb 64 00             	mov    bx,0x64
   3883d:	99                   	cwd
   3883e:	f7 fb                	idiv   bx
   38840:	b8 88 01             	mov    ax,0x188
   38843:	8e c0                	mov    es,ax
   38845:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   3884a:	9a 15 01 38 01       	call   0x138:0x115
   3884f:	b8 88 01             	mov    ax,0x188
   38852:	8e c0                	mov    es,ax
   38854:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   3885a:	75 0e                	jne    0x3886a
   3885c:	b8 88 01             	mov    ax,0x188
   3885f:	8e c0                	mov    es,ax
   38861:	26 c7 06 ea d5 22 00 	mov    WORD PTR es:0xd5ea,0x22
   38868:	eb 18                	jmp    0x38882
   3886a:	b8 88 01             	mov    ax,0x188
   3886d:	8e c0                	mov    es,ax
   3886f:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   38875:	7e 0b                	jle    0x38882
   38877:	b8 88 01             	mov    ax,0x188
   3887a:	8e c0                	mov    es,ax
   3887c:	26 83 06 ea d5 02    	add    WORD PTR es:0xd5ea,0x2
   38882:	b8 88 01             	mov    ax,0x188
   38885:	8e c0                	mov    es,ax
   38887:	26 a0 ea d5          	mov    al,es:0xd5ea
   3888b:	04 ff                	add    al,0xff
   3888d:	50                   	push   ax
   3888e:	9a 6b 02 30 00       	call   0x30:0x26b
   38893:	59                   	pop    cx
   38894:	9a 14 07 30 00       	call   0x30:0x714
   38899:	eb 20                	jmp    0x388bb
   3889b:	b8 88 01             	mov    ax,0x188
   3889e:	8e c0                	mov    es,ax
   388a0:	26 c7 06 ea d5 00 00 	mov    WORD PTR es:0xd5ea,0x0
   388a7:	b8 88 01             	mov    ax,0x188
   388aa:	8e c0                	mov    es,ax
   388ac:	26 c7 06 e6 d5 00 00 	mov    WORD PTR es:0xd5e6,0x0
   388b3:	6a 2d                	push   0x2d
   388b5:	9a 6b 02 30 00       	call   0x30:0x26b
   388ba:	59                   	pop    cx
   388bb:	83 7e f6 01          	cmp    WORD PTR [bp-0xa],0x1
   388bf:	75 03                	jne    0x388c4
   388c1:	e9 23 e6             	jmp    0x36ee7
   388c4:	83 7e f6 39          	cmp    WORD PTR [bp-0xa],0x39
   388c8:	74 03                	je     0x388cd
   388ca:	e9 84 00             	jmp    0x38951
   388cd:	b8 88 01             	mov    ax,0x188
   388d0:	8e c0                	mov    es,ax
   388d2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   388d7:	6b db 5c             	imul   bx,bx,0x5c
   388da:	b8 88 01             	mov    ax,0x188
   388dd:	8e c0                	mov    es,ax
   388df:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   388e3:	d1 e0                	shl    ax,1
   388e5:	03 d8                	add    bx,ax
   388e7:	b8 88 01             	mov    ax,0x188
   388ea:	8e c0                	mov    es,ax
   388ec:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   388f1:	bb 64 00             	mov    bx,0x64
   388f4:	99                   	cwd
   388f5:	f7 fb                	idiv   bx
   388f7:	ba 88 01             	mov    dx,0x188
   388fa:	8e c2                	mov    es,dx
   388fc:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   38900:	b8 88 01             	mov    ax,0x188
   38903:	8e c0                	mov    es,ax
   38905:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3890a:	6b db 5c             	imul   bx,bx,0x5c
   3890d:	b8 88 01             	mov    ax,0x188
   38910:	8e c0                	mov    es,ax
   38912:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   38916:	d1 e0                	shl    ax,1
   38918:	03 d8                	add    bx,ax
   3891a:	b8 88 01             	mov    ax,0x188
   3891d:	8e c0                	mov    es,ax
   3891f:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   38924:	bb 64 00             	mov    bx,0x64
   38927:	99                   	cwd
   38928:	f7 fb                	idiv   bx
   3892a:	b8 88 01             	mov    ax,0x188
   3892d:	8e c0                	mov    es,ax
   3892f:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   38934:	b8 88 01             	mov    ax,0x188
   38937:	8e c0                	mov    es,ax
   38939:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   3893f:	7e 10                	jle    0x38951
   38941:	b8 88 01             	mov    ax,0x188
   38944:	8e c0                	mov    es,ax
   38946:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   3894c:	7d 03                	jge    0x38951
   3894e:	e9 24 0b             	jmp    0x39475
   38951:	c7 46 e4 01 00       	mov    WORD PTR [bp-0x1c],0x1
   38956:	c7 46 e8 00 00       	mov    WORD PTR [bp-0x18],0x0
   3895b:	83 7e f6 1c          	cmp    WORD PTR [bp-0xa],0x1c
   3895f:	74 03                	je     0x38964
   38961:	e9 26 03             	jmp    0x38c8a
   38964:	b8 88 01             	mov    ax,0x188
   38967:	8e c0                	mov    es,ax
   38969:	26 c7 06 e5 e5 01 00 	mov    WORD PTR es:0xe5e5,0x1
   38970:	6a 01                	push   0x1
   38972:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   38977:	59                   	pop    cx
   38978:	c1 f8 08             	sar    ax,0x8
   3897b:	89 46 e2             	mov    WORD PTR [bp-0x1e],ax
   3897e:	b8 88 01             	mov    ax,0x188
   38981:	8e c0                	mov    es,ax
   38983:	26 a0 e3 e5          	mov    al,es:0xe5e3
   38987:	50                   	push   ax
   38988:	9a 6b 02 30 00       	call   0x30:0x26b
   3898d:	59                   	pop    cx
   3898e:	83 7e e2 00          	cmp    WORD PTR [bp-0x1e],0x0
   38992:	74 05                	je     0x38999
   38994:	9a e3 01 40 00       	call   0x40:0x1e3
   38999:	83 7e e2 4d          	cmp    WORD PTR [bp-0x1e],0x4d
   3899d:	75 08                	jne    0x389a7
   3899f:	6a 03                	push   0x3
   389a1:	6a 01                	push   0x1
   389a3:	6a 01                	push   0x1
   389a5:	eb 0c                	jmp    0x389b3
   389a7:	83 7e e2 4b          	cmp    WORD PTR [bp-0x1e],0x4b
   389ab:	75 13                	jne    0x389c0
   389ad:	6a 03                	push   0x3
   389af:	6a 01                	push   0x1
   389b1:	6a ff                	push   0xffff
   389b3:	16                   	push   ss
   389b4:	8d 46 e4             	lea    ax,[bp-0x1c]
   389b7:	50                   	push   ax
   389b8:	9a 25 00 38 01       	call   0x138:0x25
   389bd:	83 c4 0a             	add    sp,0xa
   389c0:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   389c3:	3b 46 e4             	cmp    ax,WORD PTR [bp-0x1c]
   389c6:	75 03                	jne    0x389cb
   389c8:	e9 89 01             	jmp    0x38b54
   389cb:	9a 04 02 30 00       	call   0x30:0x204
   389d0:	83 7e e8 00          	cmp    WORD PTR [bp-0x18],0x0
   389d4:	75 03                	jne    0x389d9
   389d6:	e9 4e 01             	jmp    0x38b27
   389d9:	8b 46 e8             	mov    ax,WORD PTR [bp-0x18]
   389dc:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   389df:	b8 88 01             	mov    ax,0x188
   389e2:	8e c0                	mov    es,ax
   389e4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   389e9:	6b db 5c             	imul   bx,bx,0x5c
   389ec:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   389ef:	d1 e0                	shl    ax,1
   389f1:	03 d8                	add    bx,ax
   389f3:	b8 88 01             	mov    ax,0x188
   389f6:	8e c0                	mov    es,ax
   389f8:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   389fd:	d1 e0                	shl    ax,1
   389ff:	ba 88 01             	mov    dx,0x188
   38a02:	8e c2                	mov    es,dx
   38a04:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38a09:	6b db 5c             	imul   bx,bx,0x5c
   38a0c:	03 d8                	add    bx,ax
   38a0e:	b8 88 01             	mov    ax,0x188
   38a11:	8e c0                	mov    es,ax
   38a13:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   38a18:	bb 64 00             	mov    bx,0x64
   38a1b:	99                   	cwd
   38a1c:	f7 fb                	idiv   bx
   38a1e:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   38a21:	9a 04 02 30 00       	call   0x30:0x204
   38a26:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   38a2a:	74 55                	je     0x38a81
   38a2c:	b8 88 01             	mov    ax,0x188
   38a2f:	8e c0                	mov    es,ax
   38a31:	26 a0 67 96          	mov    al,es:0x9667
   38a35:	50                   	push   ax
   38a36:	6a 00                	push   0x0
   38a38:	6a 0f                	push   0xf
   38a3a:	6a 0f                	push   0xf
   38a3c:	6a 26                	push   0x26
   38a3e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38a41:	48                   	dec    ax
   38a42:	6b c0 11             	imul   ax,ax,0x11
   38a45:	05 29 00             	add    ax,0x29
   38a48:	50                   	push   ax
   38a49:	9a 08 09 28 00       	call   0x28:0x908
   38a4e:	83 c4 0c             	add    sp,0xc
   38a51:	68 e0 01             	push   0x1e0
   38a54:	68 41 03             	push   0x341
   38a57:	6a 00                	push   0x0
   38a59:	6a 4b                	push   0x4b
   38a5b:	6a 26                	push   0x26
   38a5d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38a60:	48                   	dec    ax
   38a61:	6b c0 11             	imul   ax,ax,0x11
   38a64:	05 29 00             	add    ax,0x29
   38a67:	50                   	push   ax
   38a68:	6a 0f                	push   0xf
   38a6a:	6a 0f                	push   0xf
   38a6c:	6a 00                	push   0x0
   38a6e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   38a71:	48                   	dec    ax
   38a72:	6b c0 0f             	imul   ax,ax,0xf
   38a75:	50                   	push   ax
   38a76:	9a 30 04 28 00       	call   0x28:0x430
   38a7b:	83 c4 14             	add    sp,0x14
   38a7e:	e9 95 00             	jmp    0x38b16
   38a81:	68 e0 01             	push   0x1e0
   38a84:	68 d0 02             	push   0x2d0
   38a87:	6a 00                	push   0x0
   38a89:	6a 4c                	push   0x4c
   38a8b:	6a 26                	push   0x26
   38a8d:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38a90:	48                   	dec    ax
   38a91:	6b c0 11             	imul   ax,ax,0x11
   38a94:	05 29 00             	add    ax,0x29
   38a97:	50                   	push   ax
   38a98:	6a 0f                	push   0xf
   38a9a:	6a 0f                	push   0xf
   38a9c:	6a 26                	push   0x26
   38a9e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38aa1:	48                   	dec    ax
   38aa2:	6b c0 11             	imul   ax,ax,0x11
   38aa5:	05 29 00             	add    ax,0x29
   38aa8:	50                   	push   ax
   38aa9:	9a 30 04 28 00       	call   0x28:0x430
   38aae:	83 c4 14             	add    sp,0x14
   38ab1:	b8 88 01             	mov    ax,0x188
   38ab4:	8e c0                	mov    es,ax
   38ab6:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38abb:	6b db 5c             	imul   bx,bx,0x5c
   38abe:	b8 88 01             	mov    ax,0x188
   38ac1:	8e c0                	mov    es,ax
   38ac3:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   38ac8:	d1 e0                	shl    ax,1
   38aca:	ba 88 01             	mov    dx,0x188
   38acd:	8e c2                	mov    es,dx
   38acf:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38ad4:	6b db 5c             	imul   bx,bx,0x5c
   38ad7:	03 d8                	add    bx,ax
   38ad9:	b8 88 01             	mov    ax,0x188
   38adc:	8e c0                	mov    es,ax
   38ade:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   38ae3:	bb 64 00             	mov    bx,0x64
   38ae6:	99                   	cwd
   38ae7:	f7 fb                	idiv   bx
   38ae9:	6b d2 0e             	imul   dx,dx,0xe
   38aec:	b8 88 01             	mov    ax,0x188
   38aef:	8b da                	mov    bx,dx
   38af1:	8e c0                	mov    es,ax
   38af3:	26 83 bf 81 0e 02    	cmp    WORD PTR es:[bx+0xe81],0x2
   38af9:	75 1b                	jne    0x38b16
   38afb:	83 7e fe 02          	cmp    WORD PTR [bp-0x2],0x2
   38aff:	75 15                	jne    0x38b16
   38b01:	68 fd 00             	push   0xfd
   38b04:	6a 00                	push   0x0
   38b06:	6a 0f                	push   0xf
   38b08:	6a 0f                	push   0xf
   38b0a:	6a 26                	push   0x26
   38b0c:	6a 3a                	push   0x3a
   38b0e:	9a 51 0a 30 00       	call   0x30:0xa51
   38b13:	83 c4 0c             	add    sp,0xc
   38b16:	b8 88 01             	mov    ax,0x188
   38b19:	8e c0                	mov    es,ax
   38b1b:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   38b20:	50                   	push   ax
   38b21:	9a 69 00 30 00       	call   0x30:0x69
   38b26:	59                   	pop    cx
   38b27:	b8 88 01             	mov    ax,0x188
   38b2a:	8e c0                	mov    es,ax
   38b2c:	26 a0 64 96          	mov    al,es:0x9664
   38b30:	b4 00                	mov    ah,0x0
   38b32:	50                   	push   ax
   38b33:	6a 00                	push   0x0
   38b35:	6a 0e                	push   0xe
   38b37:	6a 0e                	push   0xe
   38b39:	6a 26                	push   0x26
   38b3b:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   38b3e:	48                   	dec    ax
   38b3f:	6b c0 11             	imul   ax,ax,0x11
   38b42:	05 29 00             	add    ax,0x29
   38b45:	50                   	push   ax
   38b46:	9a 99 0b 28 00       	call   0x28:0xb99
   38b4b:	83 c4 0c             	add    sp,0xc
   38b4e:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   38b51:	89 46 e8             	mov    WORD PTR [bp-0x18],ax
   38b54:	83 7e f8 3b          	cmp    WORD PTR [bp-0x8],0x3b
   38b58:	7c 26                	jl     0x38b80
   38b5a:	83 7e f8 3e          	cmp    WORD PTR [bp-0x8],0x3e
   38b5e:	7f 20                	jg     0x38b80
   38b60:	8b 46 e2             	mov    ax,WORD PTR [bp-0x1e]
   38b63:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   38b66:	b8 88 01             	mov    ax,0x188
   38b69:	8e c0                	mov    es,ax
   38b6b:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
   38b72:	b8 88 01             	mov    ax,0x188
   38b75:	8e c0                	mov    es,ax
   38b77:	26 c7 06 ec d5 00 00 	mov    WORD PTR es:0xd5ec,0x0
   38b7e:	eb 2f                	jmp    0x38baf
   38b80:	b8 88 01             	mov    ax,0x188
   38b83:	8e c0                	mov    es,ax
   38b85:	26 c7 06 e5 e5 01 00 	mov    WORD PTR es:0xe5e5,0x1
   38b8c:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   38b91:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   38b94:	05 0a 00             	add    ax,0xa
   38b97:	ba 88 01             	mov    dx,0x188
   38b9a:	8e c2                	mov    es,dx
   38b9c:	26 a3 ec d5          	mov    es:0xd5ec,ax
   38ba0:	83 7e e2 1c          	cmp    WORD PTR [bp-0x1e],0x1c
   38ba4:	74 09                	je     0x38baf
   38ba6:	83 7e e2 01          	cmp    WORD PTR [bp-0x1e],0x1
   38baa:	74 03                	je     0x38baf
   38bac:	e9 c1 fd             	jmp    0x38970
   38baf:	83 7e e2 01          	cmp    WORD PTR [bp-0x1e],0x1
   38bb3:	75 0c                	jne    0x38bc1
   38bb5:	b8 88 01             	mov    ax,0x188
   38bb8:	8e c0                	mov    es,ax
   38bba:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
   38bc1:	8b 46 e4             	mov    ax,WORD PTR [bp-0x1c]
   38bc4:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   38bc7:	b8 88 01             	mov    ax,0x188
   38bca:	8e c0                	mov    es,ax
   38bcc:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38bd1:	6b db 5c             	imul   bx,bx,0x5c
   38bd4:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38bd7:	d1 e0                	shl    ax,1
   38bd9:	03 d8                	add    bx,ax
   38bdb:	b8 88 01             	mov    ax,0x188
   38bde:	8e c0                	mov    es,ax
   38be0:	26 8b 87 e0 99       	mov    ax,WORD PTR es:[bx-0x6620]
   38be5:	d1 e0                	shl    ax,1
   38be7:	ba 88 01             	mov    dx,0x188
   38bea:	8e c2                	mov    es,dx
   38bec:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38bf1:	6b db 5c             	imul   bx,bx,0x5c
   38bf4:	03 d8                	add    bx,ax
   38bf6:	b8 88 01             	mov    ax,0x188
   38bf9:	8e c0                	mov    es,ax
   38bfb:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   38c00:	bb 64 00             	mov    bx,0x64
   38c03:	99                   	cwd
   38c04:	f7 fb                	idiv   bx
   38c06:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
   38c09:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   38c0d:	74 4b                	je     0x38c5a
   38c0f:	b8 88 01             	mov    ax,0x188
   38c12:	8e c0                	mov    es,ax
   38c14:	26 a0 67 96          	mov    al,es:0x9667
   38c18:	50                   	push   ax
   38c19:	6a 00                	push   0x0
   38c1b:	6a 0f                	push   0xf
   38c1d:	6a 0f                	push   0xf
   38c1f:	6a 26                	push   0x26
   38c21:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38c24:	48                   	dec    ax
   38c25:	6b c0 11             	imul   ax,ax,0x11
   38c28:	05 29 00             	add    ax,0x29
   38c2b:	50                   	push   ax
   38c2c:	9a 08 09 28 00       	call   0x28:0x908
   38c31:	83 c4 0c             	add    sp,0xc
   38c34:	68 e0 01             	push   0x1e0
   38c37:	68 41 03             	push   0x341
   38c3a:	6a 00                	push   0x0
   38c3c:	6a 4b                	push   0x4b
   38c3e:	6a 26                	push   0x26
   38c40:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38c43:	48                   	dec    ax
   38c44:	6b c0 11             	imul   ax,ax,0x11
   38c47:	05 29 00             	add    ax,0x29
   38c4a:	50                   	push   ax
   38c4b:	6a 0f                	push   0xf
   38c4d:	6a 0f                	push   0xf
   38c4f:	6a 00                	push   0x0
   38c51:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   38c54:	48                   	dec    ax
   38c55:	6b c0 0f             	imul   ax,ax,0xf
   38c58:	eb 27                	jmp    0x38c81
   38c5a:	68 e0 01             	push   0x1e0
   38c5d:	68 d0 02             	push   0x2d0
   38c60:	6a 00                	push   0x0
   38c62:	6a 4c                	push   0x4c
   38c64:	6a 26                	push   0x26
   38c66:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38c69:	48                   	dec    ax
   38c6a:	6b c0 11             	imul   ax,ax,0x11
   38c6d:	05 29 00             	add    ax,0x29
   38c70:	50                   	push   ax
   38c71:	6a 0f                	push   0xf
   38c73:	6a 0f                	push   0xf
   38c75:	6a 26                	push   0x26
   38c77:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   38c7a:	48                   	dec    ax
   38c7b:	6b c0 11             	imul   ax,ax,0x11
   38c7e:	05 29 00             	add    ax,0x29
   38c81:	50                   	push   ax
   38c82:	9a 30 04 28 00       	call   0x28:0x430
   38c87:	83 c4 14             	add    sp,0x14
   38c8a:	b8 88 01             	mov    ax,0x188
   38c8d:	8e c0                	mov    es,ax
   38c8f:	26 83 3e ec d5 0b    	cmp    WORD PTR es:0xd5ec,0xb
   38c95:	74 03                	je     0x38c9a
   38c97:	e9 1f 01             	jmp    0x38db9
   38c9a:	b8 88 01             	mov    ax,0x188
   38c9d:	8e c0                	mov    es,ax
   38c9f:	26 83 3e ea d5 1a    	cmp    WORD PTR es:0xd5ea,0x1a
   38ca5:	7c 10                	jl     0x38cb7
   38ca7:	b8 88 01             	mov    ax,0x188
   38caa:	8e c0                	mov    es,ax
   38cac:	26 83 3e ea d5 22    	cmp    WORD PTR es:0xd5ea,0x22
   38cb2:	74 03                	je     0x38cb7
   38cb4:	e9 02 01             	jmp    0x38db9
   38cb7:	b8 88 01             	mov    ax,0x188
   38cba:	8e c0                	mov    es,ax
   38cbc:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   38cc2:	74 03                	je     0x38cc7
   38cc4:	e9 f2 00             	jmp    0x38db9
   38cc7:	b8 88 01             	mov    ax,0x188
   38cca:	8e c0                	mov    es,ax
   38ccc:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
   38cd3:	b8 88 01             	mov    ax,0x188
   38cd6:	8e c0                	mov    es,ax
   38cd8:	26 83 3e ea d5 22    	cmp    WORD PTR es:0xd5ea,0x22
   38cde:	75 07                	jne    0x38ce7
   38ce0:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   38ce5:	eb 0c                	jmp    0x38cf3
   38ce7:	b8 88 01             	mov    ax,0x188
   38cea:	8e c0                	mov    es,ax
   38cec:	26 a1 ea d5          	mov    ax,es:0xd5ea
   38cf0:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   38cf3:	b8 88 01             	mov    ax,0x188
   38cf6:	8e c0                	mov    es,ax
   38cf8:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   38cfe:	74 15                	je     0x38d15
   38d00:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   38d03:	6b db 0e             	imul   bx,bx,0xe
   38d06:	b8 88 01             	mov    ax,0x188
   38d09:	8e c0                	mov    es,ax
   38d0b:	26 8b 87 81 0e       	mov    ax,WORD PTR es:[bx+0xe81]
   38d10:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   38d13:	eb 05                	jmp    0x38d1a
   38d15:	c7 46 ee 00 00       	mov    WORD PTR [bp-0x12],0x0
   38d1a:	b8 88 01             	mov    ax,0x188
   38d1d:	8e c0                	mov    es,ax
   38d1f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38d24:	6b db 5c             	imul   bx,bx,0x5c
   38d27:	b8 88 01             	mov    ax,0x188
   38d2a:	ba 88 01             	mov    dx,0x188
   38d2d:	8e c2                	mov    es,dx
   38d2f:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   38d34:	83 c2 22             	add    dx,0x22
   38d37:	8e c0                	mov    es,ax
   38d39:	26 39 97 e4 99       	cmp    WORD PTR es:[bx-0x661c],dx
   38d3e:	75 03                	jne    0x38d43
   38d40:	e9 a4 e1             	jmp    0x36ee7
   38d43:	b8 88 01             	mov    ax,0x188
   38d46:	8e c0                	mov    es,ax
   38d48:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38d4d:	6b db 5c             	imul   bx,bx,0x5c
   38d50:	b8 88 01             	mov    ax,0x188
   38d53:	ba 88 01             	mov    dx,0x188
   38d56:	8e c2                	mov    es,dx
   38d58:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   38d5d:	83 c2 22             	add    dx,0x22
   38d60:	8e c0                	mov    es,ax
   38d62:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   38d67:	75 03                	jne    0x38d6c
   38d69:	e9 7b e1             	jmp    0x36ee7
   38d6c:	83 7e ee 02          	cmp    WORD PTR [bp-0x12],0x2
   38d70:	75 1d                	jne    0x38d8f
   38d72:	b8 88 01             	mov    ax,0x188
   38d75:	8e c0                	mov    es,ax
   38d77:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38d7c:	6b db 5c             	imul   bx,bx,0x5c
   38d7f:	b8 88 01             	mov    ax,0x188
   38d82:	8e c0                	mov    es,ax
   38d84:	26 83 bf e4 99 00    	cmp    WORD PTR es:[bx-0x661c],0x0
   38d8a:	74 03                	je     0x38d8f
   38d8c:	e9 58 e1             	jmp    0x36ee7
   38d8f:	b8 88 01             	mov    ax,0x188
   38d92:	8e c0                	mov    es,ax
   38d94:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38d99:	6b db 5c             	imul   bx,bx,0x5c
   38d9c:	b8 88 01             	mov    ax,0x188
   38d9f:	ba 88 01             	mov    dx,0x188
   38da2:	8e c2                	mov    es,dx
   38da4:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   38da9:	83 c2 22             	add    dx,0x22
   38dac:	8e c0                	mov    es,ax
   38dae:	26 89 97 e2 99       	mov    WORD PTR es:[bx-0x661e],dx
   38db3:	e9 31 e1             	jmp    0x36ee7
   38db6:	e9 2e e1             	jmp    0x36ee7
   38db9:	b8 88 01             	mov    ax,0x188
   38dbc:	8e c0                	mov    es,ax
   38dbe:	26 83 3e ec d5 0c    	cmp    WORD PTR es:0xd5ec,0xc
   38dc4:	74 03                	je     0x38dc9
   38dc6:	e9 eb 01             	jmp    0x38fb4
   38dc9:	b8 88 01             	mov    ax,0x188
   38dcc:	8e c0                	mov    es,ax
   38dce:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   38dd4:	74 03                	je     0x38dd9
   38dd6:	e9 db 01             	jmp    0x38fb4
   38dd9:	b8 88 01             	mov    ax,0x188
   38ddc:	8e c0                	mov    es,ax
   38dde:	26 83 3e ea d5 1b    	cmp    WORD PTR es:0xd5ea,0x1b
   38de4:	7c 10                	jl     0x38df6
   38de6:	b8 88 01             	mov    ax,0x188
   38de9:	8e c0                	mov    es,ax
   38deb:	26 83 3e ea d5 22    	cmp    WORD PTR es:0xd5ea,0x22
   38df1:	74 03                	je     0x38df6
   38df3:	e9 be 01             	jmp    0x38fb4
   38df6:	b8 88 01             	mov    ax,0x188
   38df9:	8e c0                	mov    es,ax
   38dfb:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
   38e02:	b8 88 01             	mov    ax,0x188
   38e05:	8e c0                	mov    es,ax
   38e07:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38e0c:	6b db 5c             	imul   bx,bx,0x5c
   38e0f:	b8 88 01             	mov    ax,0x188
   38e12:	ba 88 01             	mov    dx,0x188
   38e15:	8e c2                	mov    es,dx
   38e17:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   38e1c:	83 c2 22             	add    dx,0x22
   38e1f:	8e c0                	mov    es,ax
   38e21:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   38e26:	75 03                	jne    0x38e2b
   38e28:	e9 bc e0             	jmp    0x36ee7
   38e2b:	b8 88 01             	mov    ax,0x188
   38e2e:	8e c0                	mov    es,ax
   38e30:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38e35:	6b db 5c             	imul   bx,bx,0x5c
   38e38:	b8 88 01             	mov    ax,0x188
   38e3b:	ba 88 01             	mov    dx,0x188
   38e3e:	8e c2                	mov    es,dx
   38e40:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   38e45:	83 c2 22             	add    dx,0x22
   38e48:	8e c0                	mov    es,ax
   38e4a:	26 39 97 e4 99       	cmp    WORD PTR es:[bx-0x661c],dx
   38e4f:	75 03                	jne    0x38e54
   38e51:	e9 93 e0             	jmp    0x36ee7
   38e54:	b8 88 01             	mov    ax,0x188
   38e57:	8e c0                	mov    es,ax
   38e59:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38e5e:	6b db 5c             	imul   bx,bx,0x5c
   38e61:	b8 88 01             	mov    ax,0x188
   38e64:	8e c0                	mov    es,ax
   38e66:	26 83 bf e2 99 00    	cmp    WORD PTR es:[bx-0x661e],0x0
   38e6c:	74 59                	je     0x38ec7
   38e6e:	b8 88 01             	mov    ax,0x188
   38e71:	8e c0                	mov    es,ax
   38e73:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38e78:	6b db 5c             	imul   bx,bx,0x5c
   38e7b:	b8 88 01             	mov    ax,0x188
   38e7e:	8e c0                	mov    es,ax
   38e80:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   38e85:	d1 e0                	shl    ax,1
   38e87:	ba 88 01             	mov    dx,0x188
   38e8a:	8e c2                	mov    es,dx
   38e8c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38e91:	6b db 5c             	imul   bx,bx,0x5c
   38e94:	03 d8                	add    bx,ax
   38e96:	b8 88 01             	mov    ax,0x188
   38e99:	8e c0                	mov    es,ax
   38e9b:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   38ea0:	bb 64 00             	mov    bx,0x64
   38ea3:	99                   	cwd
   38ea4:	f7 fb                	idiv   bx
   38ea6:	89 56 fe             	mov    WORD PTR [bp-0x2],dx
   38ea9:	83 7e fe 22          	cmp    WORD PTR [bp-0x2],0x22
   38ead:	75 05                	jne    0x38eb4
   38eaf:	c7 46 fe 1b 00       	mov    WORD PTR [bp-0x2],0x1b
   38eb4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   38eb7:	6b db 0e             	imul   bx,bx,0xe
   38eba:	b8 88 01             	mov    ax,0x188
   38ebd:	8e c0                	mov    es,ax
   38ebf:	26 8b 87 81 0e       	mov    ax,WORD PTR es:[bx+0xe81]
   38ec4:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   38ec7:	b8 88 01             	mov    ax,0x188
   38eca:	8e c0                	mov    es,ax
   38ecc:	26 83 3e ea d5 1a    	cmp    WORD PTR es:0xd5ea,0x1a
   38ed2:	7c 10                	jl     0x38ee4
   38ed4:	b8 88 01             	mov    ax,0x188
   38ed7:	8e c0                	mov    es,ax
   38ed9:	26 83 3e ea d5 22    	cmp    WORD PTR es:0xd5ea,0x22
   38edf:	74 03                	je     0x38ee4
   38ee1:	e9 9d 00             	jmp    0x38f81
   38ee4:	b8 88 01             	mov    ax,0x188
   38ee7:	8e c0                	mov    es,ax
   38ee9:	26 83 3e ea d5 00    	cmp    WORD PTR es:0xd5ea,0x0
   38eef:	74 35                	je     0x38f26
   38ef1:	b8 88 01             	mov    ax,0x188
   38ef4:	8e c0                	mov    es,ax
   38ef6:	26 83 3e ea d5 22    	cmp    WORD PTR es:0xd5ea,0x22
   38efc:	75 07                	jne    0x38f05
   38efe:	c7 46 fe 1a 00       	mov    WORD PTR [bp-0x2],0x1a
   38f03:	eb 0c                	jmp    0x38f11
   38f05:	b8 88 01             	mov    ax,0x188
   38f08:	8e c0                	mov    es,ax
   38f0a:	26 a1 ea d5          	mov    ax,es:0xd5ea
   38f0e:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   38f11:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   38f14:	6b db 0e             	imul   bx,bx,0xe
   38f17:	b8 88 01             	mov    ax,0x188
   38f1a:	8e c0                	mov    es,ax
   38f1c:	26 8b 87 81 0e       	mov    ax,WORD PTR es:[bx+0xe81]
   38f21:	89 46 ec             	mov    WORD PTR [bp-0x14],ax
   38f24:	eb 05                	jmp    0x38f2b
   38f26:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   38f2b:	b8 88 01             	mov    ax,0x188
   38f2e:	8e c0                	mov    es,ax
   38f30:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38f35:	6b db 5c             	imul   bx,bx,0x5c
   38f38:	b8 88 01             	mov    ax,0x188
   38f3b:	8e c0                	mov    es,ax
   38f3d:	26 8b 87 e2 99       	mov    ax,WORD PTR es:[bx-0x661e]
   38f42:	d1 e0                	shl    ax,1
   38f44:	ba 88 01             	mov    dx,0x188
   38f47:	8e c2                	mov    es,dx
   38f49:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38f4e:	6b db 5c             	imul   bx,bx,0x5c
   38f51:	03 d8                	add    bx,ax
   38f53:	b8 88 01             	mov    ax,0x188
   38f56:	8e c0                	mov    es,ax
   38f58:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   38f5d:	bb 64 00             	mov    bx,0x64
   38f60:	99                   	cwd
   38f61:	f7 fb                	idiv   bx
   38f63:	83 fa 1a             	cmp    dx,0x1a
   38f66:	7d 0e                	jge    0x38f76
   38f68:	83 7e ec 01          	cmp    WORD PTR [bp-0x14],0x1
   38f6c:	75 08                	jne    0x38f76
   38f6e:	83 7e ee 02          	cmp    WORD PTR [bp-0x12],0x2
   38f72:	74 02                	je     0x38f76
   38f74:	eb 14                	jmp    0x38f8a
   38f76:	c7 46 ec 00 00       	mov    WORD PTR [bp-0x14],0x0
   38f7b:	e9 db 03             	jmp    0x39359
   38f7e:	e9 c9 03             	jmp    0x3934a
   38f81:	83 7e ee 02          	cmp    WORD PTR [bp-0x12],0x2
   38f85:	75 03                	jne    0x38f8a
   38f87:	e9 c0 03             	jmp    0x3934a
   38f8a:	b8 88 01             	mov    ax,0x188
   38f8d:	8e c0                	mov    es,ax
   38f8f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38f94:	6b db 5c             	imul   bx,bx,0x5c
   38f97:	b8 88 01             	mov    ax,0x188
   38f9a:	ba 88 01             	mov    dx,0x188
   38f9d:	8e c2                	mov    es,dx
   38f9f:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   38fa4:	83 c2 22             	add    dx,0x22
   38fa7:	8e c0                	mov    es,ax
   38fa9:	26 89 97 e4 99       	mov    WORD PTR es:[bx-0x661c],dx
   38fae:	e9 36 df             	jmp    0x36ee7
   38fb1:	e9 96 03             	jmp    0x3934a
   38fb4:	b8 88 01             	mov    ax,0x188
   38fb7:	8e c0                	mov    es,ax
   38fb9:	26 83 3e ec d5 0d    	cmp    WORD PTR es:0xd5ec,0xd
   38fbf:	75 5a                	jne    0x3901b
   38fc1:	b8 88 01             	mov    ax,0x188
   38fc4:	8e c0                	mov    es,ax
   38fc6:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   38fcc:	75 4d                	jne    0x3901b
   38fce:	b8 88 01             	mov    ax,0x188
   38fd1:	8e c0                	mov    es,ax
   38fd3:	26 83 3e ea d5 1a    	cmp    WORD PTR es:0xd5ea,0x1a
   38fd9:	7e 40                	jle    0x3901b
   38fdb:	b8 88 01             	mov    ax,0x188
   38fde:	8e c0                	mov    es,ax
   38fe0:	26 83 3e ea d5 21    	cmp    WORD PTR es:0xd5ea,0x21
   38fe6:	7d 33                	jge    0x3901b
   38fe8:	b8 88 01             	mov    ax,0x188
   38feb:	8e c0                	mov    es,ax
   38fed:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
   38ff4:	b8 88 01             	mov    ax,0x188
   38ff7:	8e c0                	mov    es,ax
   38ff9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   38ffe:	6b db 5c             	imul   bx,bx,0x5c
   39001:	b8 88 01             	mov    ax,0x188
   39004:	ba 88 01             	mov    dx,0x188
   39007:	8e c2                	mov    es,dx
   39009:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   3900e:	83 c2 22             	add    dx,0x22
   39011:	8e c0                	mov    es,ax
   39013:	26 89 97 e6 99       	mov    WORD PTR es:[bx-0x661a],dx
   39018:	e9 cc de             	jmp    0x36ee7
   3901b:	b8 88 01             	mov    ax,0x188
   3901e:	8e c0                	mov    es,ax
   39020:	26 83 3e ec d5 0e    	cmp    WORD PTR es:0xd5ec,0xe
   39026:	7e 32                	jle    0x3905a
   39028:	b8 88 01             	mov    ax,0x188
   3902b:	8e c0                	mov    es,ax
   3902d:	26 83 3e ec d5 13    	cmp    WORD PTR es:0xd5ec,0x13
   39033:	7d 25                	jge    0x3905a
   39035:	b8 88 01             	mov    ax,0x188
   39038:	8e c0                	mov    es,ax
   3903a:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   39040:	75 18                	jne    0x3905a
   39042:	b8 88 01             	mov    ax,0x188
   39045:	8e c0                	mov    es,ax
   39047:	26 a1 ec d5          	mov    ax,es:0xd5ec
   3904b:	05 f2 ff             	add    ax,0xfff2
   3904e:	ba 88 01             	mov    dx,0x188
   39051:	8e c2                	mov    es,dx
   39053:	26 3b 06 98 28       	cmp    ax,WORD PTR es:0x2898
   39058:	75 12                	jne    0x3906c
   3905a:	83 7e f6 3b          	cmp    WORD PTR [bp-0xa],0x3b
   3905e:	7d 03                	jge    0x39063
   39060:	e9 74 01             	jmp    0x391d7
   39063:	83 7e f6 3e          	cmp    WORD PTR [bp-0xa],0x3e
   39067:	7e 03                	jle    0x3906c
   39069:	e9 6b 01             	jmp    0x391d7
   3906c:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   39070:	74 0f                	je     0x39081
   39072:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   39075:	05 d4 ff             	add    ax,0xffd4
   39078:	ba 88 01             	mov    dx,0x188
   3907b:	8e c2                	mov    es,dx
   3907d:	26 a3 ec d5          	mov    es:0xd5ec,ax
   39081:	b8 88 01             	mov    ax,0x188
   39084:	8e c0                	mov    es,ax
   39086:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3908b:	6b db 5c             	imul   bx,bx,0x5c
   3908e:	b8 88 01             	mov    ax,0x188
   39091:	ba 88 01             	mov    dx,0x188
   39094:	8e c2                	mov    es,dx
   39096:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   3909b:	83 c2 22             	add    dx,0x22
   3909e:	8e c0                	mov    es,ax
   390a0:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   390a5:	74 4c                	je     0x390f3
   390a7:	b8 88 01             	mov    ax,0x188
   390aa:	8e c0                	mov    es,ax
   390ac:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   390b1:	6b db 5c             	imul   bx,bx,0x5c
   390b4:	b8 88 01             	mov    ax,0x188
   390b7:	ba 88 01             	mov    dx,0x188
   390ba:	8e c2                	mov    es,dx
   390bc:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   390c1:	83 c2 22             	add    dx,0x22
   390c4:	8e c0                	mov    es,ax
   390c6:	26 39 97 e4 99       	cmp    WORD PTR es:[bx-0x661c],dx
   390cb:	74 26                	je     0x390f3
   390cd:	b8 88 01             	mov    ax,0x188
   390d0:	8e c0                	mov    es,ax
   390d2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   390d7:	6b db 5c             	imul   bx,bx,0x5c
   390da:	b8 88 01             	mov    ax,0x188
   390dd:	ba 88 01             	mov    dx,0x188
   390e0:	8e c2                	mov    es,dx
   390e2:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   390e7:	83 c2 22             	add    dx,0x22
   390ea:	8e c0                	mov    es,ax
   390ec:	26 39 97 e6 99       	cmp    WORD PTR es:[bx-0x661a],dx
   390f1:	75 16                	jne    0x39109
   390f3:	b8 88 01             	mov    ax,0x188
   390f6:	8e c0                	mov    es,ax
   390f8:	26 a0 64 96          	mov    al,es:0x9664
   390fc:	b4 00                	mov    ah,0x0
   390fe:	50                   	push   ax
   390ff:	68 d9 00             	push   0xd9
   39102:	1e                   	push   ds
   39103:	68 7e 44             	push   0x447e
   39106:	e9 b8 00             	jmp    0x391c1
   39109:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3910e:	e9 8e 00             	jmp    0x3919f
   39111:	b8 88 01             	mov    ax,0x188
   39114:	8e c0                	mov    es,ax
   39116:	26 8b 1e ec d5       	mov    bx,WORD PTR es:0xd5ec
   3911b:	6b db 5c             	imul   bx,bx,0x5c
   3911e:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   39121:	d1 e0                	shl    ax,1
   39123:	03 d8                	add    bx,ax
   39125:	b8 88 01             	mov    ax,0x188
   39128:	8e c0                	mov    es,ax
   3912a:	26 83 bf e2 94 00    	cmp    WORD PTR es:[bx-0x6b1e],0x0
   39130:	75 6a                	jne    0x3919c
   39132:	b8 88 01             	mov    ax,0x188
   39135:	8e c0                	mov    es,ax
   39137:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3913c:	6b db 5c             	imul   bx,bx,0x5c
   3913f:	b8 88 01             	mov    ax,0x188
   39142:	8e c0                	mov    es,ax
   39144:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   39148:	d1 e0                	shl    ax,1
   3914a:	03 d8                	add    bx,ax
   3914c:	b8 88 01             	mov    ax,0x188
   3914f:	8e c0                	mov    es,ax
   39151:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   39156:	ba 88 01             	mov    dx,0x188
   39159:	8e c2                	mov    es,dx
   3915b:	26 8b 1e ec d5       	mov    bx,WORD PTR es:0xd5ec
   39160:	6b db 5c             	imul   bx,bx,0x5c
   39163:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   39166:	d1 e2                	shl    dx,1
   39168:	03 da                	add    bx,dx
   3916a:	ba 88 01             	mov    dx,0x188
   3916d:	8e c2                	mov    es,dx
   3916f:	26 89 87 e2 94       	mov    WORD PTR es:[bx-0x6b1e],ax
   39174:	b8 88 01             	mov    ax,0x188
   39177:	8e c0                	mov    es,ax
   39179:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3917e:	6b db 5c             	imul   bx,bx,0x5c
   39181:	b8 88 01             	mov    ax,0x188
   39184:	8e c0                	mov    es,ax
   39186:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   3918a:	d1 e0                	shl    ax,1
   3918c:	03 d8                	add    bx,ax
   3918e:	b8 88 01             	mov    ax,0x188
   39191:	8e c0                	mov    es,ax
   39193:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   3919a:	eb 0c                	jmp    0x391a8
   3919c:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3919f:	83 7e fe 0a          	cmp    WORD PTR [bp-0x2],0xa
   391a3:	7f 03                	jg     0x391a8
   391a5:	e9 69 ff             	jmp    0x39111
   391a8:	83 7e fe 0b          	cmp    WORD PTR [bp-0x2],0xb
   391ac:	75 26                	jne    0x391d4
   391ae:	b8 88 01             	mov    ax,0x188
   391b1:	8e c0                	mov    es,ax
   391b3:	26 a0 64 96          	mov    al,es:0x9664
   391b7:	b4 00                	mov    ah,0x0
   391b9:	50                   	push   ax
   391ba:	68 d9 00             	push   0xd9
   391bd:	1e                   	push   ds
   391be:	68 8f 44             	push   0x448f
   391c1:	9a 10 01 38 01       	call   0x138:0x110
   391c6:	83 c4 08             	add    sp,0x8
   391c9:	6a 32                	push   0x32
   391cb:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   391d0:	59                   	pop    cx
   391d1:	e9 a5 01             	jmp    0x39379
   391d4:	e9 a2 01             	jmp    0x39379
   391d7:	b8 88 01             	mov    ax,0x188
   391da:	8e c0                	mov    es,ax
   391dc:	26 83 3e ec d5 13    	cmp    WORD PTR es:0xd5ec,0x13
   391e2:	75 0d                	jne    0x391f1
   391e4:	b8 88 01             	mov    ax,0x188
   391e7:	8e c0                	mov    es,ax
   391e9:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   391ef:	74 09                	je     0x391fa
   391f1:	83 7e f6 3f          	cmp    WORD PTR [bp-0xa],0x3f
   391f5:	74 03                	je     0x391fa
   391f7:	e9 50 01             	jmp    0x3934a
   391fa:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   391fe:	74 0f                	je     0x3920f
   39200:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   39203:	05 d4 ff             	add    ax,0xffd4
   39206:	ba 88 01             	mov    dx,0x188
   39209:	8e c2                	mov    es,dx
   3920b:	26 a3 ec d5          	mov    es:0xd5ec,ax
   3920f:	b8 88 01             	mov    ax,0x188
   39212:	8e c0                	mov    es,ax
   39214:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   39219:	6b db 5c             	imul   bx,bx,0x5c
   3921c:	b8 88 01             	mov    ax,0x188
   3921f:	ba 88 01             	mov    dx,0x188
   39222:	8e c2                	mov    es,dx
   39224:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   39229:	83 c2 22             	add    dx,0x22
   3922c:	8e c0                	mov    es,ax
   3922e:	26 39 97 e2 99       	cmp    WORD PTR es:[bx-0x661e],dx
   39233:	74 4c                	je     0x39281
   39235:	b8 88 01             	mov    ax,0x188
   39238:	8e c0                	mov    es,ax
   3923a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3923f:	6b db 5c             	imul   bx,bx,0x5c
   39242:	b8 88 01             	mov    ax,0x188
   39245:	ba 88 01             	mov    dx,0x188
   39248:	8e c2                	mov    es,dx
   3924a:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   3924f:	83 c2 22             	add    dx,0x22
   39252:	8e c0                	mov    es,ax
   39254:	26 39 97 e4 99       	cmp    WORD PTR es:[bx-0x661c],dx
   39259:	74 26                	je     0x39281
   3925b:	b8 88 01             	mov    ax,0x188
   3925e:	8e c0                	mov    es,ax
   39260:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   39265:	6b db 5c             	imul   bx,bx,0x5c
   39268:	b8 88 01             	mov    ax,0x188
   3926b:	ba 88 01             	mov    dx,0x188
   3926e:	8e c2                	mov    es,dx
   39270:	26 8b 16 e8 d5       	mov    dx,WORD PTR es:0xd5e8
   39275:	83 c2 22             	add    dx,0x22
   39278:	8e c0                	mov    es,ax
   3927a:	26 39 97 e6 99       	cmp    WORD PTR es:[bx-0x661a],dx
   3927f:	75 26                	jne    0x392a7
   39281:	b8 88 01             	mov    ax,0x188
   39284:	8e c0                	mov    es,ax
   39286:	26 a0 64 96          	mov    al,es:0x9664
   3928a:	b4 00                	mov    ah,0x0
   3928c:	50                   	push   ax
   3928d:	68 d9 00             	push   0xd9
   39290:	1e                   	push   ds
   39291:	68 9c 44             	push   0x449c
   39294:	9a 10 01 38 01       	call   0x138:0x110
   39299:	83 c4 08             	add    sp,0x8
   3929c:	6a 32                	push   0x32
   3929e:	9a 5e 1e 10 00       	call   0x10:0x1e5e
   392a3:	59                   	pop    cx
   392a4:	e9 40 dc             	jmp    0x36ee7
   392a7:	b8 88 01             	mov    ax,0x188
   392aa:	8e c0                	mov    es,ax
   392ac:	26 a0 e3 e5          	mov    al,es:0xe5e3
   392b0:	50                   	push   ax
   392b1:	9a 6b 02 30 00       	call   0x30:0x26b
   392b6:	59                   	pop    cx
   392b7:	b8 88 01             	mov    ax,0x188
   392ba:	8e c0                	mov    es,ax
   392bc:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   392c2:	75 e3                	jne    0x392a7
   392c4:	b8 88 01             	mov    ax,0x188
   392c7:	8e c0                	mov    es,ax
   392c9:	26 a0 64 96          	mov    al,es:0x9664
   392cd:	b4 00                	mov    ah,0x0
   392cf:	50                   	push   ax
   392d0:	68 d9 00             	push   0xd9
   392d3:	1e                   	push   ds
   392d4:	68 b2 44             	push   0x44b2
   392d7:	9a 10 01 38 01       	call   0x138:0x110
   392dc:	83 c4 08             	add    sp,0x8
   392df:	6a 01                	push   0x1
   392e1:	9a 3f 1f 00 00       	call   0x0:0x1f3f
   392e6:	59                   	pop    cx
   392e7:	c1 f8 08             	sar    ax,0x8
   392ea:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   392ed:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   392f1:	74 05                	je     0x392f8
   392f3:	9a e3 01 40 00       	call   0x40:0x1e3
   392f8:	b8 88 01             	mov    ax,0x188
   392fb:	8e c0                	mov    es,ax
   392fd:	26 a0 e3 e5          	mov    al,es:0xe5e3
   39301:	50                   	push   ax
   39302:	9a 6b 02 30 00       	call   0x30:0x26b
   39307:	59                   	pop    cx
   39308:	b8 88 01             	mov    ax,0x188
   3930b:	8e c0                	mov    es,ax
   3930d:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   39313:	74 19                	je     0x3932e
   39315:	b8 88 01             	mov    ax,0x188
   39318:	8e c0                	mov    es,ax
   3931a:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   39320:	74 0c                	je     0x3932e
   39322:	83 7e f8 4b          	cmp    WORD PTR [bp-0x8],0x4b
   39326:	74 06                	je     0x3932e
   39328:	83 7e f8 4d          	cmp    WORD PTR [bp-0x8],0x4d
   3932c:	75 b1                	jne    0x392df
   3932e:	b8 88 01             	mov    ax,0x188
   39331:	8e c0                	mov    es,ax
   39333:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   39339:	74 09                	je     0x39344
   3933b:	83 7e f8 4b          	cmp    WORD PTR [bp-0x8],0x4b
   3933f:	74 03                	je     0x39344
   39341:	e9 a3 db             	jmp    0x36ee7
   39344:	e9 33 01             	jmp    0x3947a
   39347:	e9 9d db             	jmp    0x36ee7
   3934a:	b8 88 01             	mov    ax,0x188
   3934d:	8e c0                	mov    es,ax
   3934f:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
   39356:	e9 1d f2             	jmp    0x38576
   39359:	b8 88 01             	mov    ax,0x188
   3935c:	8e c0                	mov    es,ax
   3935e:	26 80 3e 24 73 00    	cmp    BYTE PTR es:0x7324,0x0
   39364:	75 22                	jne    0x39388
   39366:	83 7e ea 00          	cmp    WORD PTR [bp-0x16],0x0
   3936a:	74 1c                	je     0x39388
   3936c:	b8 88 01             	mov    ax,0x188
   3936f:	8e c0                	mov    es,ax
   39371:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   39377:	74 0f                	je     0x39388
   39379:	b8 88 01             	mov    ax,0x188
   3937c:	8e c0                	mov    es,ax
   3937e:	26 c7 06 e5 e5 00 00 	mov    WORD PTR es:0xe5e5,0x0
   39385:	e9 5f db             	jmp    0x36ee7
   39388:	9a 04 02 30 00       	call   0x30:0x204
   3938d:	68 a9 00             	push   0xa9
   39390:	6a 00                	push   0x0
   39392:	6a 10                	push   0x10
   39394:	6a 10                	push   0x10
   39396:	6a 00                	push   0x0
   39398:	b8 88 01             	mov    ax,0x188
   3939b:	8e c0                	mov    es,ax
   3939d:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   393a1:	48                   	dec    ax
   393a2:	c1 e0 04             	shl    ax,0x4
   393a5:	50                   	push   ax
   393a6:	9a 99 0b 28 00       	call   0x28:0xb99
   393ab:	83 c4 0c             	add    sp,0xc
   393ae:	6a 2d                	push   0x2d
   393b0:	9a 69 00 30 00       	call   0x30:0x69
   393b5:	59                   	pop    cx
   393b6:	e9 94 e9             	jmp    0x37d4d
   393b9:	e9 91 e9             	jmp    0x37d4d
   393bc:	b8 88 01             	mov    ax,0x188
   393bf:	8e c0                	mov    es,ax
   393c1:	26 83 3e e5 e5 02    	cmp    WORD PTR es:0xe5e5,0x2
   393c7:	74 03                	je     0x393cc
   393c9:	e9 81 e9             	jmp    0x37d4d
   393cc:	9a 15 05 30 00       	call   0x30:0x515
   393d1:	ba 88 01             	mov    dx,0x188
   393d4:	8e c2                	mov    es,dx
   393d6:	26 a3 e8 d5          	mov    es:0xd5e8,ax
   393da:	3d 0b 00             	cmp    ax,0xb
   393dd:	7c 03                	jl     0x393e2
   393df:	e9 6b e9             	jmp    0x37d4d
   393e2:	9a 15 05 30 00       	call   0x30:0x515
   393e7:	0b c0                	or     ax,ax
   393e9:	7f 03                	jg     0x393ee
   393eb:	e9 5f e9             	jmp    0x37d4d
   393ee:	b8 88 01             	mov    ax,0x188
   393f1:	8e c0                	mov    es,ax
   393f3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   393f8:	6b db 5c             	imul   bx,bx,0x5c
   393fb:	b8 88 01             	mov    ax,0x188
   393fe:	8e c0                	mov    es,ax
   39400:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   39404:	d1 e0                	shl    ax,1
   39406:	03 d8                	add    bx,ax
   39408:	b8 88 01             	mov    ax,0x188
   3940b:	8e c0                	mov    es,ax
   3940d:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   39412:	bb 64 00             	mov    bx,0x64
   39415:	99                   	cwd
   39416:	f7 fb                	idiv   bx
   39418:	ba 88 01             	mov    dx,0x188
   3941b:	8e c2                	mov    es,dx
   3941d:	26 a3 e6 d5          	mov    es:0xd5e6,ax
   39421:	b8 88 01             	mov    ax,0x188
   39424:	8e c0                	mov    es,ax
   39426:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3942b:	6b db 5c             	imul   bx,bx,0x5c
   3942e:	b8 88 01             	mov    ax,0x188
   39431:	8e c0                	mov    es,ax
   39433:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   39437:	d1 e0                	shl    ax,1
   39439:	03 d8                	add    bx,ax
   3943b:	b8 88 01             	mov    ax,0x188
   3943e:	8e c0                	mov    es,ax
   39440:	26 8b 87 ea 99       	mov    ax,WORD PTR es:[bx-0x6616]
   39445:	bb 64 00             	mov    bx,0x64
   39448:	99                   	cwd
   39449:	f7 fb                	idiv   bx
   3944b:	b8 88 01             	mov    ax,0x188
   3944e:	8e c0                	mov    es,ax
   39450:	26 89 16 ea d5       	mov    WORD PTR es:0xd5ea,dx
   39455:	b8 88 01             	mov    ax,0x188
   39458:	8e c0                	mov    es,ax
   3945a:	26 83 3e ea d5 20    	cmp    WORD PTR es:0xd5ea,0x20
   39460:	7f 03                	jg     0x39465
   39462:	e9 e8 e8             	jmp    0x37d4d
   39465:	b8 88 01             	mov    ax,0x188
   39468:	8e c0                	mov    es,ax
   3946a:	26 83 3e ea d5 2b    	cmp    WORD PTR es:0xd5ea,0x2b
   39470:	7c 03                	jl     0x39475
   39472:	e9 d8 e8             	jmp    0x37d4d
   39475:	9a 01 01 38 01       	call   0x138:0x101
   3947a:	b8 88 01             	mov    ax,0x188
   3947d:	8e c0                	mov    es,ax
   3947f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   39484:	6b db 5c             	imul   bx,bx,0x5c
   39487:	b8 88 01             	mov    ax,0x188
   3948a:	8e c0                	mov    es,ax
   3948c:	26 a1 e8 d5          	mov    ax,es:0xd5e8
   39490:	d1 e0                	shl    ax,1
   39492:	03 d8                	add    bx,ax
   39494:	b8 88 01             	mov    ax,0x188
   39497:	8e c0                	mov    es,ax
   39499:	26 c7 87 ea 99 00 00 	mov    WORD PTR es:[bx-0x6616],0x0
   394a0:	e9 44 da             	jmp    0x36ee7
   394a3:	e9 a7 e8             	jmp    0x37d4d
   394a6:	83 7e ea 00          	cmp    WORD PTR [bp-0x16],0x0
   394aa:	74 24                	je     0x394d0
   394ac:	8a 46 ea             	mov    al,BYTE PTR [bp-0x16]
   394af:	04 ff                	add    al,0xff
   394b1:	ba 88 01             	mov    dx,0x188
   394b4:	8e c2                	mov    es,dx
   394b6:	26 a2 24 73          	mov    es:0x7324,al
   394ba:	c7 46 ea 00 00       	mov    WORD PTR [bp-0x16],0x0
   394bf:	b8 88 01             	mov    ax,0x188
   394c2:	8e c0                	mov    es,ax
   394c4:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   394c9:	50                   	push   ax
   394ca:	9a 69 00 30 00       	call   0x30:0x69
   394cf:	59                   	pop    cx
   394d0:	1e                   	push   ds
   394d1:	68 c7 44             	push   0x44c7
   394d4:	68 1d 0a             	push   0xa1d
   394d7:	68 88 01             	push   0x188
   394da:	68 cf e2             	push   0xe2cf
   394dd:	9a 2f 02 40 00       	call   0x40:0x22f
   394e2:	83 c4 0a             	add    sp,0xa
   394e5:	6a 00                	push   0x0
   394e7:	b8 88 01             	mov    ax,0x188
   394ea:	8e c0                	mov    es,ax
   394ec:	26 a1 18 73          	mov    ax,es:0x7318
   394f0:	f7 d8                	neg    ax
   394f2:	50                   	push   ax
   394f3:	6a 64                	push   0x64
   394f5:	9a 3f 07 30 00       	call   0x30:0x73f
   394fa:	83 c4 06             	add    sp,0x6
   394fd:	c9                   	leave
   394fe:	cb                   	retf
   394ff:	55                   	push   bp
   39500:	8b ec                	mov    bp,sp
   39502:	83 ec 02             	sub    sp,0x2
   39505:	b8 88 01             	mov    ax,0x188
   39508:	8e c0                	mov    es,ax
   3950a:	26 83 3e fb 3a 64    	cmp    WORD PTR es:0x3afb,0x64
   39510:	75 05                	jne    0x39517
   39512:	b8 30 00             	mov    ax,0x30
   39515:	eb 02                	jmp    0x39519
   39517:	33 c0                	xor    ax,ax
   39519:	ba 88 01             	mov    dx,0x188
   3951c:	8e c2                	mov    es,dx
   3951e:	26 3b 06 25 e6       	cmp    ax,WORD PTR es:0xe625
   39523:	74 04                	je     0x39529
   39525:	0e                   	push   cs
   39526:	e8 de b1             	call   0x34707
   39529:	9a 15 05 30 00       	call   0x30:0x515
   3952e:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   39531:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   39534:	83 eb 06             	sub    bx,0x6
   39537:	83 fb 03             	cmp    bx,0x3
   3953a:	77 1b                	ja     0x39557
   3953c:	d1 e3                	shl    bx,1
   3953e:	2e ff a7 54 76       	jmp    WORD PTR cs:[bx+0x7654]
   39543:	b8 2e 00             	mov    ax,0x2e
   39546:	eb 1a                	jmp    0x39562
   39548:	b8 2f 00             	mov    ax,0x2f
   3954b:	eb 15                	jmp    0x39562
   3954d:	b8 30 00             	mov    ax,0x30
   39550:	eb 10                	jmp    0x39562
   39552:	b8 31 00             	mov    ax,0x31
   39555:	eb 0b                	jmp    0x39562
   39557:	b8 88 01             	mov    ax,0x188
   3955a:	8e c0                	mov    es,ax
   3955c:	26 a0 71 96          	mov    al,es:0x9671
   39560:	b4 00                	mov    ah,0x0
   39562:	c9                   	leave
   39563:	cb                   	retf
   39564:	33 76 38             	xor    si,WORD PTR [bp+0x38]
   39567:	76 3d                	jbe    0x395a6
   39569:	76 42                	jbe    0x395ad
   3956b:	76 55                	jbe    0x395c2
   3956d:	8b ec                	mov    bp,sp
   3956f:	83 ec 5a             	sub    sp,0x5a
   39572:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   39577:	c6 46 fb 01          	mov    BYTE PTR [bp-0x5],0x1
   3957b:	8d 46 a6             	lea    ax,[bp-0x5a]
   3957e:	16                   	push   ss
   3957f:	50                   	push   ax
   39580:	68 88 01             	push   0x188
   39583:	68 2c 96             	push   0x962c
   39586:	b9 48 00             	mov    cx,0x48
   39589:	9a 7a 12 00 00       	call   0x0:0x127a
   3958e:	9a b9 1e 10 00       	call   0x10:0x1eb9
   39593:	6a 00                	push   0x0
   39595:	6a 01                	push   0x1
   39597:	1e                   	push   ds
   39598:	68 d6 44             	push   0x44d6
   3959b:	9a 48 29 10 00       	call   0x10:0x2948
   395a0:	83 c4 08             	add    sp,0x8
   395a3:	1e                   	push   ds
   395a4:	68 f7 44             	push   0x44f7
   395a7:	1e                   	push   ds
   395a8:	68 f2 44             	push   0x44f2
   395ab:	9a 98 21 10 00       	call   0x10:0x2198
   395b0:	83 c4 08             	add    sp,0x8
   395b3:	b8 88 01             	mov    ax,0x188
   395b6:	8e c0                	mov    es,ax
   395b8:	26 83 3e 9e bb 00    	cmp    WORD PTR es:0xbb9e,0x0
   395be:	74 1b                	je     0x395db
   395c0:	9a 66 00 30 01       	call   0x130:0x66
   395c5:	6a 01                	push   0x1
   395c7:	0e                   	push   cs
   395c8:	e8 fb 90             	call   0x326c6
   395cb:	59                   	pop    cx
   395cc:	b8 88 01             	mov    ax,0x188
   395cf:	8e c0                	mov    es,ax
   395d1:	26 c7 06 a8 bb 01 00 	mov    WORD PTR es:0xbba8,0x1
   395d8:	e9 a4 03             	jmp    0x3997f
   395db:	9a b9 1e 10 00       	call   0x10:0x1eb9
   395e0:	b8 88 01             	mov    ax,0x188
   395e3:	8e c0                	mov    es,ax
   395e5:	26 a1 1a 73          	mov    ax,es:0x731a
   395e9:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   395ec:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   395ef:	f7 d8                	neg    ax
   395f1:	50                   	push   ax
   395f2:	b8 88 01             	mov    ax,0x188
   395f5:	8e c0                	mov    es,ax
   395f7:	26 a1 18 73          	mov    ax,es:0x7318
   395fb:	f7 d8                	neg    ax
   395fd:	50                   	push   ax
   395fe:	68 e8 03             	push   0x3e8
   39601:	9a 3f 07 30 00       	call   0x30:0x73f
   39606:	83 c4 06             	add    sp,0x6
   39609:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   3960d:	74 41                	je     0x39650
   3960f:	b8 88 01             	mov    ax,0x188
   39612:	8e c0                	mov    es,ax
   39614:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3961a:	74 34                	je     0x39650
   3961c:	9a 96 12 68 00       	call   0x68:0x1296
   39621:	a1 75 bb             	mov    ax,ds:0xbb75
   39624:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   39628:	74 26                	je     0x39650
   3962a:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3962e:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   39632:	9a 03 00 80 00       	call   0x80:0x3
   39637:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3963b:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   3963f:	9a da 00 58 00       	call   0x58:0xda
   39644:	c7 06 77 bb 00 00    	mov    WORD PTR ds:0xbb77,0x0
   3964a:	c7 06 75 bb 00 00    	mov    WORD PTR ds:0xbb75,0x0
   39650:	9a 66 00 10 01       	call   0x110:0x66
   39655:	1e                   	push   ds
   39656:	68 fd 44             	push   0x44fd
   39659:	68 5c 0a             	push   0xa5c
   3965c:	68 88 01             	push   0x188
   3965f:	68 3f e3             	push   0xe33f
   39662:	9a 2f 02 40 00       	call   0x40:0x22f
   39667:	83 c4 0a             	add    sp,0xa
   3966a:	81 3e 68 3d 5d 01    	cmp    WORD PTR ds:0x3d68,0x15d
   39670:	7d 08                	jge    0x3967a
   39672:	a1 68 3d             	mov    ax,ds:0x3d68
   39675:	05 0b 00             	add    ax,0xb
   39678:	eb 06                	jmp    0x39680
   3967a:	a1 68 3d             	mov    ax,ds:0x3d68
   3967d:	05 a3 fe             	add    ax,0xfea3
   39680:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   39683:	83 7e ee 14          	cmp    WORD PTR [bp-0x12],0x14
   39687:	7e 05                	jle    0x3968e
   39689:	b8 19 00             	mov    ax,0x19
   3968c:	eb 12                	jmp    0x396a0
   3968e:	b8 14 00             	mov    ax,0x14
   39691:	2b 46 ee             	sub    ax,WORD PTR [bp-0x12]
   39694:	6b c0 32             	imul   ax,ax,0x32
   39697:	bb 14 00             	mov    bx,0x14
   3969a:	99                   	cwd
   3969b:	f7 fb                	idiv   bx
   3969d:	05 19 00             	add    ax,0x19
   396a0:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   396a3:	6a 00                	push   0x0
   396a5:	68 00 80             	push   0x8000
   396a8:	9a 79 17 00 00       	call   0x0:0x1779
   396ad:	99                   	cwd
   396ae:	50                   	push   ax
   396af:	52                   	push   dx
   396b0:	33 d2                	xor    dx,dx
   396b2:	b8 64 00             	mov    ax,0x64
   396b5:	59                   	pop    cx
   396b6:	5b                   	pop    bx
   396b7:	9a 42 12 00 00       	call   0x0:0x1242
   396bc:	52                   	push   dx
   396bd:	50                   	push   ax
   396be:	9a df 12 00 00       	call   0x0:0x12df
   396c3:	88 46 f1             	mov    BYTE PTR [bp-0xf],al
   396c6:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   396c9:	98                   	cbw
   396ca:	3b 46 ee             	cmp    ax,WORD PTR [bp-0x12]
   396cd:	7f 06                	jg     0x396d5
   396cf:	c6 46 f1 01          	mov    BYTE PTR [bp-0xf],0x1
   396d3:	eb 04                	jmp    0x396d9
   396d5:	c6 46 f1 00          	mov    BYTE PTR [bp-0xf],0x0
   396d9:	80 7e f1 00          	cmp    BYTE PTR [bp-0xf],0x0
   396dd:	75 03                	jne    0x396e2
   396df:	e9 a5 00             	jmp    0x39787
   396e2:	f7 06 5e 3d 01 00    	test   WORD PTR ds:0x3d5e,0x1
   396e8:	74 18                	je     0x39702
   396ea:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   396ee:	6b db 1d             	imul   bx,bx,0x1d
   396f1:	b8 88 01             	mov    ax,0x188
   396f4:	8e c0                	mov    es,ax
   396f6:	26 8b 97 47 2e       	mov    dx,WORD PTR es:[bx+0x2e47]
   396fb:	26 8b 87 45 2e       	mov    ax,WORD PTR es:[bx+0x2e45]
   39700:	eb 16                	jmp    0x39718
   39702:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   39706:	6b db 1d             	imul   bx,bx,0x1d
   39709:	b8 88 01             	mov    ax,0x188
   3970c:	8e c0                	mov    es,ax
   3970e:	26 8b 97 43 2e       	mov    dx,WORD PTR es:[bx+0x2e43]
   39713:	26 8b 87 41 2e       	mov    ax,WORD PTR es:[bx+0x2e41]
   39718:	89 56 f4             	mov    WORD PTR [bp-0xc],dx
   3971b:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   3971e:	0b c2                	or     ax,dx
   39720:	74 65                	je     0x39787
   39722:	68 88 01             	push   0x188
   39725:	68 2c 96             	push   0x962c
   39728:	68 88 01             	push   0x188
   3972b:	68 04 97             	push   0x9704
   3972e:	b9 48 00             	mov    cx,0x48
   39731:	9a 7a 12 00 00       	call   0x0:0x127a
   39736:	9a 8e 17 10 00       	call   0x10:0x178e
   3973b:	ff 76 f4             	push   WORD PTR [bp-0xc]
   3973e:	ff 76 f2             	push   WORD PTR [bp-0xe]
   39741:	9a 57 00 40 01       	call   0x140:0x57
   39746:	83 c4 04             	add    sp,0x4
   39749:	68 88 01             	push   0x188
   3974c:	68 2c 96             	push   0x962c
   3974f:	8d 46 a6             	lea    ax,[bp-0x5a]
   39752:	16                   	push   ss
   39753:	50                   	push   ax
   39754:	b9 48 00             	mov    cx,0x48
   39757:	9a 7a 12 00 00       	call   0x0:0x127a
   3975c:	b8 88 01             	mov    ax,0x188
   3975f:	8e c0                	mov    es,ax
   39761:	26 a1 1e 73          	mov    ax,es:0x731e
   39765:	ba 88 01             	mov    dx,0x188
   39768:	8e c2                	mov    es,dx
   3976a:	26 a3 18 73          	mov    es:0x7318,ax
   3976e:	6a 00                	push   0x0
   39770:	b8 88 01             	mov    ax,0x188
   39773:	8e c0                	mov    es,ax
   39775:	26 a1 18 73          	mov    ax,es:0x7318
   39779:	f7 d8                	neg    ax
   3977b:	50                   	push   ax
   3977c:	68 f4 01             	push   0x1f4
   3977f:	9a 3f 07 30 00       	call   0x30:0x73f
   39784:	83 c4 06             	add    sp,0x6
   39787:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   3978b:	74 22                	je     0x397af
   3978d:	6a 00                	push   0x0
   3978f:	6a 01                	push   0x1
   39791:	b8 01 00             	mov    ax,0x1
   39794:	a3 4d bb             	mov    ds:0xbb4d,ax
   39797:	50                   	push   ax
   39798:	9a 43 00 28 01       	call   0x128:0x43
   3979d:	83 c4 06             	add    sp,0x6
   397a0:	ff 76 fc             	push   WORD PTR [bp-0x4]
   397a3:	6a 00                	push   0x0
   397a5:	6a 64                	push   0x64
   397a7:	9a 3f 07 30 00       	call   0x30:0x73f
   397ac:	83 c4 06             	add    sp,0x6
   397af:	a1 6b bb             	mov    ax,ds:0xbb6b
   397b2:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   397b5:	9a 3e 00 28 01       	call   0x128:0x3e
   397ba:	b4 00                	mov    ah,0x0
   397bc:	a3 6b bb             	mov    ds:0xbb6b,ax
   397bf:	0b c0                	or     ax,ax
   397c1:	75 11                	jne    0x397d4
   397c3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   397c6:	a3 6b bb             	mov    ds:0xbb6b,ax
   397c9:	9a 66 00 30 01       	call   0x130:0x66
   397ce:	c6 46 fb 00          	mov    BYTE PTR [bp-0x5],0x0
   397d2:	eb 04                	jmp    0x397d8
   397d4:	ff 0e 6b bb          	dec    WORD PTR ds:0xbb6b
   397d8:	b8 88 01             	mov    ax,0x188
   397db:	8e c0                	mov    es,ax
   397dd:	26 a1 1a 73          	mov    ax,es:0x731a
   397e1:	f7 d8                	neg    ax
   397e3:	50                   	push   ax
   397e4:	6a 00                	push   0x0
   397e6:	68 c8 00             	push   0xc8
   397e9:	9a 3f 07 30 00       	call   0x30:0x73f
   397ee:	83 c4 06             	add    sp,0x6
   397f1:	b8 88 01             	mov    ax,0x188
   397f4:	8e c0                	mov    es,ax
   397f6:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   397fc:	74 34                	je     0x39832
   397fe:	9a 96 12 68 00       	call   0x68:0x1296
   39803:	a1 75 bb             	mov    ax,ds:0xbb75
   39806:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   3980a:	74 26                	je     0x39832
   3980c:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   39810:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   39814:	9a 03 00 80 00       	call   0x80:0x3
   39819:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3981d:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   39821:	9a da 00 58 00       	call   0x58:0xda
   39826:	c7 06 77 bb 00 00    	mov    WORD PTR ds:0xbb77,0x0
   3982c:	c7 06 75 bb 00 00    	mov    WORD PTR ds:0xbb75,0x0
   39832:	81 3e 68 3d 5d 01    	cmp    WORD PTR ds:0x3d68,0x15d
   39838:	7d 08                	jge    0x39842
   3983a:	a1 68 3d             	mov    ax,ds:0x3d68
   3983d:	05 0b 00             	add    ax,0xb
   39840:	eb 06                	jmp    0x39848
   39842:	a1 68 3d             	mov    ax,ds:0x3d68
   39845:	05 a3 fe             	add    ax,0xfea3
   39848:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   3984b:	83 7e ee 0a          	cmp    WORD PTR [bp-0x12],0xa
   3984f:	7e 05                	jle    0x39856
   39851:	b8 19 00             	mov    ax,0x19
   39854:	eb 12                	jmp    0x39868
   39856:	b8 0a 00             	mov    ax,0xa
   39859:	2b 46 ee             	sub    ax,WORD PTR [bp-0x12]
   3985c:	6b c0 32             	imul   ax,ax,0x32
   3985f:	bb 0a 00             	mov    bx,0xa
   39862:	99                   	cwd
   39863:	f7 fb                	idiv   bx
   39865:	05 19 00             	add    ax,0x19
   39868:	89 46 ee             	mov    WORD PTR [bp-0x12],ax
   3986b:	6a 00                	push   0x0
   3986d:	68 00 80             	push   0x8000
   39870:	9a 79 17 00 00       	call   0x0:0x1779
   39875:	99                   	cwd
   39876:	50                   	push   ax
   39877:	52                   	push   dx
   39878:	33 d2                	xor    dx,dx
   3987a:	b8 64 00             	mov    ax,0x64
   3987d:	59                   	pop    cx
   3987e:	5b                   	pop    bx
   3987f:	9a 42 12 00 00       	call   0x0:0x1242
   39884:	52                   	push   dx
   39885:	50                   	push   ax
   39886:	9a df 12 00 00       	call   0x0:0x12df
   3988b:	88 46 f1             	mov    BYTE PTR [bp-0xf],al
   3988e:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   39891:	98                   	cbw
   39892:	3b 46 ee             	cmp    ax,WORD PTR [bp-0x12]
   39895:	7f 06                	jg     0x3989d
   39897:	c6 46 f1 01          	mov    BYTE PTR [bp-0xf],0x1
   3989b:	eb 04                	jmp    0x398a1
   3989d:	c6 46 f1 00          	mov    BYTE PTR [bp-0xf],0x0
   398a1:	80 7e f1 00          	cmp    BYTE PTR [bp-0xf],0x0
   398a5:	75 03                	jne    0x398aa
   398a7:	e9 a5 00             	jmp    0x3994f
   398aa:	f7 06 5e 3d 01 00    	test   WORD PTR ds:0x3d5e,0x1
   398b0:	74 18                	je     0x398ca
   398b2:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   398b6:	6b db 1d             	imul   bx,bx,0x1d
   398b9:	b8 88 01             	mov    ax,0x188
   398bc:	8e c0                	mov    es,ax
   398be:	26 8b 97 3f 2e       	mov    dx,WORD PTR es:[bx+0x2e3f]
   398c3:	26 8b 87 3d 2e       	mov    ax,WORD PTR es:[bx+0x2e3d]
   398c8:	eb 16                	jmp    0x398e0
   398ca:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   398ce:	6b db 1d             	imul   bx,bx,0x1d
   398d1:	b8 88 01             	mov    ax,0x188
   398d4:	8e c0                	mov    es,ax
   398d6:	26 8b 97 3b 2e       	mov    dx,WORD PTR es:[bx+0x2e3b]
   398db:	26 8b 87 39 2e       	mov    ax,WORD PTR es:[bx+0x2e39]
   398e0:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
   398e3:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   398e6:	0b c2                	or     ax,dx
   398e8:	74 65                	je     0x3994f
   398ea:	68 88 01             	push   0x188
   398ed:	68 2c 96             	push   0x962c
   398f0:	68 88 01             	push   0x188
   398f3:	68 04 97             	push   0x9704
   398f6:	b9 48 00             	mov    cx,0x48
   398f9:	9a 7a 12 00 00       	call   0x0:0x127a
   398fe:	9a 8e 17 10 00       	call   0x10:0x178e
   39903:	ff 76 f8             	push   WORD PTR [bp-0x8]
   39906:	ff 76 f6             	push   WORD PTR [bp-0xa]
   39909:	9a 57 00 40 01       	call   0x140:0x57
   3990e:	83 c4 04             	add    sp,0x4
   39911:	68 88 01             	push   0x188
   39914:	68 2c 96             	push   0x962c
   39917:	8d 46 a6             	lea    ax,[bp-0x5a]
   3991a:	16                   	push   ss
   3991b:	50                   	push   ax
   3991c:	b9 48 00             	mov    cx,0x48
   3991f:	9a 7a 12 00 00       	call   0x0:0x127a
   39924:	b8 88 01             	mov    ax,0x188
   39927:	8e c0                	mov    es,ax
   39929:	26 a1 1e 73          	mov    ax,es:0x731e
   3992d:	ba 88 01             	mov    dx,0x188
   39930:	8e c2                	mov    es,dx
   39932:	26 a3 18 73          	mov    es:0x7318,ax
   39936:	6a 00                	push   0x0
   39938:	b8 88 01             	mov    ax,0x188
   3993b:	8e c0                	mov    es,ax
   3993d:	26 a1 18 73          	mov    ax,es:0x7318
   39941:	f7 d8                	neg    ax
   39943:	50                   	push   ax
   39944:	68 f4 01             	push   0x1f4
   39947:	9a 3f 07 30 00       	call   0x30:0x73f
   3994c:	83 c4 06             	add    sp,0x6
   3994f:	9a 8e 17 10 00       	call   0x10:0x178e
   39954:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   39957:	50                   	push   ax
   39958:	ff 36 6b bb          	push   WORD PTR ds:0xbb6b
   3995c:	0e                   	push   cs
   3995d:	e8 d7 9e             	call   0x33837
   39960:	83 c4 04             	add    sp,0x4
   39963:	0e                   	push   cs
   39964:	e8 ca aa             	call   0x34431
   39967:	b8 88 01             	mov    ax,0x188
   3996a:	8e c0                	mov    es,ax
   3996c:	26 c7 06 a8 bb 01 00 	mov    WORD PTR es:0xbba8,0x1
   39973:	b8 88 01             	mov    ax,0x188
   39976:	8e c0                	mov    es,ax
   39978:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3997f:	c9                   	leave
   39980:	cb                   	retf
   39981:	55                   	push   bp
   39982:	8b ec                	mov    bp,sp
   39984:	83 ec 2c             	sub    sp,0x2c
   39987:	8d 46 d4             	lea    ax,[bp-0x2c]
   3998a:	16                   	push   ss
   3998b:	50                   	push   ax
   3998c:	1e                   	push   ds
   3998d:	68 ea 3e             	push   0x3eea
   39990:	b9 28 00             	mov    cx,0x28
   39993:	9a 7a 12 00 00       	call   0x0:0x127a
   39998:	80 7e 06 00          	cmp    BYTE PTR [bp+0x6],0x0
   3999c:	74 01                	je     0x3999f
   3999e:	90                   	nop
   3999f:	80 3e 34 bb 00       	cmp    BYTE PTR ds:0xbb34,0x0
   399a4:	74 07                	je     0x399ad
   399a6:	8c da                	mov    dx,ds
   399a8:	b8 c9 45             	mov    ax,0x45c9
   399ab:	eb 05                	jmp    0x399b2
   399ad:	8c da                	mov    dx,ds
   399af:	b8 cd 45             	mov    ax,0x45cd
   399b2:	52                   	push   dx
   399b3:	50                   	push   ax
   399b4:	1e                   	push   ds
   399b5:	80 3e 3a bb 00       	cmp    BYTE PTR ds:0xbb3a,0x0
   399ba:	74 05                	je     0x399c1
   399bc:	b8 9f 45             	mov    ax,0x459f
   399bf:	eb 03                	jmp    0x399c4
   399c1:	b8 b3 45             	mov    ax,0x45b3
   399c4:	50                   	push   ax
   399c5:	68 88 01             	push   0x188
   399c8:	68 3c a6             	push   0xa63c
   399cb:	9a b4 48 00 00       	call   0x0:0x48b4
   399d0:	83 c4 0c             	add    sp,0xc
   399d3:	a0 35 bb             	mov    al,ds:0xbb35
   399d6:	b4 00                	mov    ah,0x0
   399d8:	c1 e0 02             	shl    ax,0x2
   399db:	8d 56 d4             	lea    dx,[bp-0x2c]
   399de:	03 c2                	add    ax,dx
   399e0:	8b d8                	mov    bx,ax
   399e2:	36 ff 77 02          	push   WORD PTR ss:[bx+0x2]
   399e6:	36 ff 37             	push   WORD PTR ss:[bx]
   399e9:	1e                   	push   ds
   399ea:	68 d1 45             	push   0x45d1
   399ed:	68 88 01             	push   0x188
   399f0:	68 a0 a6             	push   0xa6a0
   399f3:	9a b4 48 00 00       	call   0x0:0x48b4
   399f8:	83 c4 0c             	add    sp,0xc
   399fb:	80 3e 36 bb 00       	cmp    BYTE PTR ds:0xbb36,0x0
   39a00:	74 07                	je     0x39a09
   39a02:	8c da                	mov    dx,ds
   39a04:	b8 f4 45             	mov    ax,0x45f4
   39a07:	eb 05                	jmp    0x39a0e
   39a09:	8c da                	mov    dx,ds
   39a0b:	b8 f9 45             	mov    ax,0x45f9
   39a0e:	52                   	push   dx
   39a0f:	50                   	push   ax
   39a10:	1e                   	push   ds
   39a11:	68 e1 45             	push   0x45e1
   39a14:	68 88 01             	push   0x188
   39a17:	68 04 a7             	push   0xa704
   39a1a:	9a b4 48 00 00       	call   0x0:0x48b4
   39a1f:	83 c4 0c             	add    sp,0xc
   39a22:	80 3e 37 bb 00       	cmp    BYTE PTR ds:0xbb37,0x0
   39a27:	74 07                	je     0x39a30
   39a29:	8c da                	mov    dx,ds
   39a2b:	b8 13 46             	mov    ax,0x4613
   39a2e:	eb 05                	jmp    0x39a35
   39a30:	8c da                	mov    dx,ds
   39a32:	b8 18 46             	mov    ax,0x4618
   39a35:	52                   	push   dx
   39a36:	50                   	push   ax
   39a37:	1e                   	push   ds
   39a38:	68 00 46             	push   0x4600
   39a3b:	68 88 01             	push   0x188
   39a3e:	68 68 a7             	push   0xa768
   39a41:	9a b4 48 00 00       	call   0x0:0x48b4
   39a46:	83 c4 0c             	add    sp,0xc
   39a49:	80 3e 38 bb 00       	cmp    BYTE PTR ds:0xbb38,0x0
   39a4e:	74 07                	je     0x39a57
   39a50:	8c da                	mov    dx,ds
   39a52:	b8 34 46             	mov    ax,0x4634
   39a55:	eb 05                	jmp    0x39a5c
   39a57:	8c da                	mov    dx,ds
   39a59:	b8 39 46             	mov    ax,0x4639
   39a5c:	52                   	push   dx
   39a5d:	50                   	push   ax
   39a5e:	1e                   	push   ds
   39a5f:	68 1f 46             	push   0x461f
   39a62:	68 88 01             	push   0x188
   39a65:	68 cc a7             	push   0xa7cc
   39a68:	9a b4 48 00 00       	call   0x0:0x48b4
   39a6d:	83 c4 0c             	add    sp,0xc
   39a70:	80 3e 39 bb 00       	cmp    BYTE PTR ds:0xbb39,0x0
   39a75:	74 07                	je     0x39a7e
   39a77:	8c da                	mov    dx,ds
   39a79:	b8 56 46             	mov    ax,0x4656
   39a7c:	eb 05                	jmp    0x39a83
   39a7e:	8c da                	mov    dx,ds
   39a80:	b8 5b 46             	mov    ax,0x465b
   39a83:	52                   	push   dx
   39a84:	50                   	push   ax
   39a85:	1e                   	push   ds
   39a86:	68 40 46             	push   0x4640
   39a89:	68 88 01             	push   0x188
   39a8c:	68 30 a8             	push   0xa830
   39a8f:	9a b4 48 00 00       	call   0x0:0x48b4
   39a94:	83 c4 0c             	add    sp,0xc
   39a97:	80 3e 3a bb 00       	cmp    BYTE PTR ds:0xbb3a,0x0
   39a9c:	74 07                	je     0x39aa5
   39a9e:	8c da                	mov    dx,ds
   39aa0:	b8 6f 46             	mov    ax,0x466f
   39aa3:	eb 05                	jmp    0x39aaa
   39aa5:	8c da                	mov    dx,ds
   39aa7:	b8 75 46             	mov    ax,0x4675
   39aaa:	52                   	push   dx
   39aab:	50                   	push   ax
   39aac:	1e                   	push   ds
   39aad:	68 61 46             	push   0x4661
   39ab0:	68 88 01             	push   0x188
   39ab3:	68 94 a8             	push   0xa894
   39ab6:	9a b4 48 00 00       	call   0x0:0x48b4
   39abb:	83 c4 0c             	add    sp,0xc
   39abe:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   39ac3:	eb 18                	jmp    0x39add
   39ac5:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   39ac8:	6b c0 64             	imul   ax,ax,0x64
   39acb:	05 d8 a5             	add    ax,0xa5d8
   39ace:	68 88 01             	push   0x188
   39ad1:	50                   	push   ax
   39ad2:	9a 3e 00 80 01       	call   0x180:0x3e
   39ad7:	83 c4 04             	add    sp,0x4
   39ada:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   39add:	83 7e fe 08          	cmp    WORD PTR [bp-0x2],0x8
   39ae1:	7c e2                	jl     0x39ac5
   39ae3:	6a 02                	push   0x2
   39ae5:	6a 07                	push   0x7
   39ae7:	6a 00                	push   0x0
   39ae9:	b8 88 01             	mov    ax,0x188
   39aec:	8e c0                	mov    es,ax
   39aee:	26 a0 65 96          	mov    al,es:0x9665
   39af2:	b4 00                	mov    ah,0x0
   39af4:	50                   	push   ax
   39af5:	b8 88 01             	mov    ax,0x188
   39af8:	8e c0                	mov    es,ax
   39afa:	26 a0 66 96          	mov    al,es:0x9666
   39afe:	b4 00                	mov    ah,0x0
   39b00:	50                   	push   ax
   39b01:	6a ff                	push   0xffff
   39b03:	6a 03                	push   0x3
   39b05:	6a 07                	push   0x7
   39b07:	9a 33 11 10 00       	call   0x10:0x1133
   39b0c:	83 c4 10             	add    sp,0x10
   39b0f:	b8 88 01             	mov    ax,0x188
   39b12:	8e c0                	mov    es,ax
   39b14:	26 83 3e dc d5 00    	cmp    WORD PTR es:0xd5dc,0x0
   39b1a:	74 14                	je     0x39b30
   39b1c:	b8 88 01             	mov    ax,0x188
   39b1f:	8e c0                	mov    es,ax
   39b21:	26 8b 1e dc d5       	mov    bx,WORD PTR es:0xd5dc
   39b26:	b8 88 01             	mov    ax,0x188
   39b29:	8e c0                	mov    es,ax
   39b2b:	26 fe 87 33 bb       	inc    BYTE PTR es:[bx-0x44cd]
   39b30:	b8 88 01             	mov    ax,0x188
   39b33:	8e c0                	mov    es,ax
   39b35:	26 a1 dc d5          	mov    ax,es:0xd5dc
   39b39:	48                   	dec    ax
   39b3a:	3d 01 00             	cmp    ax,0x1
   39b3d:	74 02                	je     0x39b41
   39b3f:	eb 32                	jmp    0x39b73
   39b41:	b8 88 01             	mov    ax,0x188
   39b44:	8e c0                	mov    es,ax
   39b46:	26 8b 1e dc d5       	mov    bx,WORD PTR es:0xd5dc
   39b4b:	b8 88 01             	mov    ax,0x188
   39b4e:	8e c0                	mov    es,ax
   39b50:	26 8a 87 33 bb       	mov    al,BYTE PTR es:[bx-0x44cd]
   39b55:	b4 00                	mov    ah,0x0
   39b57:	bb 0a 00             	mov    bx,0xa
   39b5a:	99                   	cwd
   39b5b:	f7 fb                	idiv   bx
   39b5d:	b8 88 01             	mov    ax,0x188
   39b60:	8e c0                	mov    es,ax
   39b62:	26 8b 1e dc d5       	mov    bx,WORD PTR es:0xd5dc
   39b67:	b8 88 01             	mov    ax,0x188
   39b6a:	8e c0                	mov    es,ax
   39b6c:	26 88 97 33 bb       	mov    BYTE PTR es:[bx-0x44cd],dl
   39b71:	eb 15                	jmp    0x39b88
   39b73:	b8 88 01             	mov    ax,0x188
   39b76:	8e c0                	mov    es,ax
   39b78:	26 8b 1e dc d5       	mov    bx,WORD PTR es:0xd5dc
   39b7d:	b8 88 01             	mov    ax,0x188
   39b80:	8e c0                	mov    es,ax
   39b82:	26 80 a7 33 bb 01    	and    BYTE PTR es:[bx-0x44cd],0x1
   39b88:	b8 88 01             	mov    ax,0x188
   39b8b:	8e c0                	mov    es,ax
   39b8d:	26 a1 dc d5          	mov    ax,es:0xd5dc
   39b91:	48                   	dec    ax
   39b92:	0b c0                	or     ax,ax
   39b94:	74 10                	je     0x39ba6
   39b96:	3d 02 00             	cmp    ax,0x2
   39b99:	74 69                	je     0x39c04
   39b9b:	3d 06 00             	cmp    ax,0x6
   39b9e:	75 03                	jne    0x39ba3
   39ba0:	e9 40 01             	jmp    0x39ce3
   39ba3:	e9 87 02             	jmp    0x39e2d
   39ba6:	a0 3a bb             	mov    al,ds:0xbb3a
   39ba9:	b4 00                	mov    ah,0x0
   39bab:	0b c0                	or     ax,ax
   39bad:	75 2f                	jne    0x39bde
   39baf:	80 3e 34 bb 00       	cmp    BYTE PTR ds:0xbb34,0x0
   39bb4:	74 0e                	je     0x39bc4
   39bb6:	b8 88 01             	mov    ax,0x188
   39bb9:	8e c0                	mov    es,ax
   39bbb:	26 c7 06 74 6d 09 00 	mov    WORD PTR es:0x6d74,0x9
   39bc2:	eb 0c                	jmp    0x39bd0
   39bc4:	b8 88 01             	mov    ax,0x188
   39bc7:	8e c0                	mov    es,ax
   39bc9:	26 c7 06 74 6d 00 00 	mov    WORD PTR es:0x6d74,0x0
   39bd0:	b8 88 01             	mov    ax,0x188
   39bd3:	8e c0                	mov    es,ax
   39bd5:	26 c6 06 08 3b 01    	mov    BYTE PTR es:0x3b08,0x1
   39bdb:	e9 4f 02             	jmp    0x39e2d
   39bde:	b8 88 01             	mov    ax,0x188
   39be1:	8e c0                	mov    es,ax
   39be3:	26 c7 06 74 6d 00 00 	mov    WORD PTR es:0x6d74,0x0
   39bea:	80 3e 34 bb 00       	cmp    BYTE PTR ds:0xbb34,0x0
   39bef:	74 02                	je     0x39bf3
   39bf1:	eb dd                	jmp    0x39bd0
   39bf3:	b8 88 01             	mov    ax,0x188
   39bf6:	8e c0                	mov    es,ax
   39bf8:	26 c6 06 08 3b 00    	mov    BYTE PTR es:0x3b08,0x0
   39bfe:	e9 2c 02             	jmp    0x39e2d
   39c01:	e9 29 02             	jmp    0x39e2d
   39c04:	b8 88 01             	mov    ax,0x188
   39c07:	8e c0                	mov    es,ax
   39c09:	26 a0 d0 73          	mov    al,es:0x73d0
   39c0d:	98                   	cbw
   39c0e:	0b c0                	or     ax,ax
   39c10:	75 03                	jne    0x39c15
   39c12:	e9 18 02             	jmp    0x39e2d
   39c15:	b8 88 01             	mov    ax,0x188
   39c18:	8e c0                	mov    es,ax
   39c1a:	26 a1 1a 73          	mov    ax,es:0x731a
   39c1e:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   39c21:	b8 88 01             	mov    ax,0x188
   39c24:	8e c0                	mov    es,ax
   39c26:	26 a1 1a 73          	mov    ax,es:0x731a
   39c2a:	f7 d8                	neg    ax
   39c2c:	50                   	push   ax
   39c2d:	6a 00                	push   0x0
   39c2f:	68 2c 01             	push   0x12c
   39c32:	9a 3f 07 30 00       	call   0x30:0x73f
   39c37:	83 c4 06             	add    sp,0x6
   39c3a:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   39c3f:	75 4e                	jne    0x39c8f
   39c41:	80 3e 36 bb 00       	cmp    BYTE PTR ds:0xbb36,0x0
   39c46:	74 02                	je     0x39c4a
   39c48:	eb 76                	jmp    0x39cc0
   39c4a:	b8 88 01             	mov    ax,0x188
   39c4d:	8e c0                	mov    es,ax
   39c4f:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   39c55:	74 79                	je     0x39cd0
   39c57:	9a 96 12 68 00       	call   0x68:0x1296
   39c5c:	a1 75 bb             	mov    ax,ds:0xbb75
   39c5f:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   39c63:	74 6b                	je     0x39cd0
   39c65:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   39c69:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   39c6d:	9a 03 00 80 00       	call   0x80:0x3
   39c72:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   39c76:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   39c7a:	9a da 00 58 00       	call   0x58:0xda
   39c7f:	c7 06 77 bb 00 00    	mov    WORD PTR ds:0xbb77,0x0
   39c85:	c7 06 75 bb 00 00    	mov    WORD PTR ds:0xbb75,0x0
   39c8b:	eb 43                	jmp    0x39cd0
   39c8d:	eb 41                	jmp    0x39cd0
   39c8f:	a0 36 bb             	mov    al,ds:0xbb36
   39c92:	b4 00                	mov    ah,0x0
   39c94:	0b c0                	or     ax,ax
   39c96:	75 28                	jne    0x39cc0
   39c98:	a0 38 bb             	mov    al,ds:0xbb38
   39c9b:	b4 00                	mov    ah,0x0
   39c9d:	0b c0                	or     ax,ax
   39c9f:	75 1f                	jne    0x39cc0
   39ca1:	b8 88 01             	mov    ax,0x188
   39ca4:	8e c0                	mov    es,ax
   39ca6:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   39cac:	74 22                	je     0x39cd0
   39cae:	9a 96 12 68 00       	call   0x68:0x1296
   39cb3:	a1 75 bb             	mov    ax,ds:0xbb75
   39cb6:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   39cba:	74 14                	je     0x39cd0
   39cbc:	eb a7                	jmp    0x39c65
   39cbe:	eb 10                	jmp    0x39cd0
   39cc0:	6a 00                	push   0x0
   39cc2:	6a 01                	push   0x1
   39cc4:	ff 36 4d bb          	push   WORD PTR ds:0xbb4d
   39cc8:	9a 43 00 28 01       	call   0x128:0x43
   39ccd:	83 c4 06             	add    sp,0x6
   39cd0:	ff 76 fc             	push   WORD PTR [bp-0x4]
   39cd3:	6a 00                	push   0x0
   39cd5:	68 2c 01             	push   0x12c
   39cd8:	9a 3f 07 30 00       	call   0x30:0x73f
   39cdd:	83 c4 06             	add    sp,0x6
   39ce0:	e9 4a 01             	jmp    0x39e2d
   39ce3:	80 3e 3a bb 00       	cmp    BYTE PTR ds:0xbb3a,0x0
   39ce8:	74 43                	je     0x39d2d
   39cea:	b8 88 01             	mov    ax,0x188
   39ced:	8e c0                	mov    es,ax
   39cef:	26 c7 06 fb 3a c8 00 	mov    WORD PTR es:0x3afb,0xc8
   39cf6:	b8 88 01             	mov    ax,0x188
   39cf9:	8e c0                	mov    es,ax
   39cfb:	26 c7 06 fd 3a c8 00 	mov    WORD PTR es:0x3afd,0xc8
   39d02:	b8 88 01             	mov    ax,0x188
   39d05:	8e c0                	mov    es,ax
   39d07:	26 c7 06 74 6d 00 00 	mov    WORD PTR es:0x6d74,0x0
   39d0e:	b8 88 01             	mov    ax,0x188
   39d11:	b2 01                	mov    dl,0x1
   39d13:	8e c0                	mov    es,ax
   39d15:	26 88 16 08 3b       	mov    BYTE PTR es:0x3b08,dl
   39d1a:	8a c2                	mov    al,dl
   39d1c:	a2 34 bb             	mov    ds:0xbb34,al
   39d1f:	0e                   	push   cs
   39d20:	e8 56 ae             	call   0x34b79
   39d23:	6a 01                	push   0x1
   39d25:	0e                   	push   cs
   39d26:	e8 9d 89             	call   0x326c6
   39d29:	59                   	pop    cx
   39d2a:	e9 00 01             	jmp    0x39e2d
   39d2d:	b8 88 01             	mov    ax,0x188
   39d30:	8e c0                	mov    es,ax
   39d32:	26 c7 06 fb 3a 64 00 	mov    WORD PTR es:0x3afb,0x64
   39d39:	b8 88 01             	mov    ax,0x188
   39d3c:	8e c0                	mov    es,ax
   39d3e:	26 c7 06 fd 3a 64 00 	mov    WORD PTR es:0x3afd,0x64
   39d45:	9a 04 02 30 00       	call   0x30:0x204
   39d4a:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   39d4f:	eb 14                	jmp    0x39d65
   39d51:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   39d54:	6b db 11             	imul   bx,bx,0x11
   39d57:	b8 88 01             	mov    ax,0x188
   39d5a:	8e c0                	mov    es,ax
   39d5c:	26 c6 87 89 ba 01    	mov    BYTE PTR es:[bx-0x4577],0x1
   39d62:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   39d65:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   39d69:	7c e6                	jl     0x39d51
   39d6b:	b8 88 01             	mov    ax,0x188
   39d6e:	8e c0                	mov    es,ax
   39d70:	26 a1 18 73          	mov    ax,es:0x7318
   39d74:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   39d77:	6a 00                	push   0x0
   39d79:	b8 88 01             	mov    ax,0x188
   39d7c:	8e c0                	mov    es,ax
   39d7e:	26 a1 18 73          	mov    ax,es:0x7318
   39d82:	f7 d8                	neg    ax
   39d84:	50                   	push   ax
   39d85:	6a 64                	push   0x64
   39d87:	9a 3f 07 30 00       	call   0x30:0x73f
   39d8c:	83 c4 06             	add    sp,0x6
   39d8f:	b8 88 01             	mov    ax,0x188
   39d92:	8e c0                	mov    es,ax
   39d94:	26 ff 36 a1 e2       	push   WORD PTR es:0xe2a1
   39d99:	26 ff 36 9f e2       	push   WORD PTR es:0xe29f
   39d9e:	b8 88 01             	mov    ax,0x188
   39da1:	8e c0                	mov    es,ax
   39da3:	26 ff 36 21 e5       	push   WORD PTR es:0xe521
   39da8:	26 ff 36 1f e5       	push   WORD PTR es:0xe51f
   39dad:	9a 8a 06 20 00       	call   0x20:0x68a
   39db2:	83 c4 08             	add    sp,0x8
   39db5:	b8 88 01             	mov    ax,0x188
   39db8:	8e c0                	mov    es,ax
   39dba:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   39dbf:	50                   	push   ax
   39dc0:	9a 69 00 30 00       	call   0x30:0x69
   39dc5:	59                   	pop    cx
   39dc6:	83 0e 5e 3d 10       	or     WORD PTR ds:0x3d5e,0x10
   39dcb:	68 b2 00             	push   0xb2
   39dce:	68 c6 00             	push   0xc6
   39dd1:	0e                   	push   cs
   39dd2:	e8 5d ce             	call   0x36c32
   39dd5:	83 c4 04             	add    sp,0x4
   39dd8:	0e                   	push   cs
   39dd9:	e8 9d ad             	call   0x34b79
   39ddc:	9a 5c 00 30 01       	call   0x130:0x5c
   39de1:	83 26 5e 3d ef       	and    WORD PTR ds:0x3d5e,0xffef
   39de6:	68 18 01             	push   0x118
   39de9:	68 84 00             	push   0x84
   39dec:	9a a1 04 30 00       	call   0x30:0x4a1
   39df1:	83 c4 04             	add    sp,0x4
   39df4:	6a 01                	push   0x1
   39df6:	0e                   	push   cs
   39df7:	e8 cc 88             	call   0x326c6
   39dfa:	59                   	pop    cx
   39dfb:	6a 00                	push   0x0
   39dfd:	ff 76 fe             	push   WORD PTR [bp-0x2]
   39e00:	6a 64                	push   0x64
   39e02:	9a 3f 07 30 00       	call   0x30:0x73f
   39e07:	83 c4 06             	add    sp,0x6
   39e0a:	80 3e 34 bb 00       	cmp    BYTE PTR ds:0xbb34,0x0
   39e0f:	74 0e                	je     0x39e1f
   39e11:	b8 88 01             	mov    ax,0x188
   39e14:	8e c0                	mov    es,ax
   39e16:	26 c7 06 74 6d 09 00 	mov    WORD PTR es:0x6d74,0x9
   39e1d:	eb 0e                	jmp    0x39e2d
   39e1f:	b8 88 01             	mov    ax,0x188
   39e22:	8e c0                	mov    es,ax
   39e24:	26 c7 06 74 6d 00 00 	mov    WORD PTR es:0x6d74,0x0
   39e2b:	eb 00                	jmp    0x39e2d
   39e2d:	b8 88 01             	mov    ax,0x188
   39e30:	8e c0                	mov    es,ax
   39e32:	26 83 3e dc d5 00    	cmp    WORD PTR es:0xd5dc,0x0
   39e38:	74 03                	je     0x39e3d
   39e3a:	e9 62 fb             	jmp    0x3999f
   39e3d:	c9                   	leave
   39e3e:	cb                   	retf
   39e3f:	55                   	push   bp
   39e40:	8b ec                	mov    bp,sp
   39e42:	81 ec ca 03          	sub    sp,0x3ca
   39e46:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   39e4b:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   39e50:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39e53:	6b c0 2b             	imul   ax,ax,0x2b
   39e56:	8d 96 72 fc          	lea    dx,[bp-0x38e]
   39e5a:	03 c2                	add    ax,dx
   39e5c:	16                   	push   ss
   39e5d:	50                   	push   ax
   39e5e:	6a 20                	push   0x20
   39e60:	1e                   	push   ds
   39e61:	68 7b 46             	push   0x467b
   39e64:	9a 2f 11 00 00       	call   0x0:0x112f
   39e69:	83 c4 0a             	add    sp,0xa
   39e6c:	e9 92 00             	jmp    0x39f01
   39e6f:	16                   	push   ss
   39e70:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39e73:	6b c0 2b             	imul   ax,ax,0x2b
   39e76:	8d 96 90 fc          	lea    dx,[bp-0x370]
   39e7a:	03 c2                	add    ax,dx
   39e7c:	50                   	push   ax
   39e7d:	6a 02                	push   0x2
   39e7f:	9a 25 00 70 01       	call   0x170:0x25
   39e84:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   39e87:	3d ff ff             	cmp    ax,0xffff
   39e8a:	75 15                	jne    0x39ea1
   39e8c:	6a ff                	push   0xffff
   39e8e:	1e                   	push   ds
   39e8f:	68 90 46             	push   0x4690
   39e92:	68 24 0b             	push   0xb24
   39e95:	1e                   	push   ds
   39e96:	68 81 46             	push   0x4681
   39e99:	9a 2a 00 58 01       	call   0x158:0x2a
   39e9e:	83 c4 0c             	add    sp,0xc
   39ea1:	ff 76 fa             	push   WORD PTR [bp-0x6]
   39ea4:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39ea7:	6b c0 64             	imul   ax,ax,0x64
   39eaa:	05 3c a6             	add    ax,0xa63c
   39ead:	68 88 01             	push   0x188
   39eb0:	50                   	push   ax
   39eb1:	6a 00                	push   0x0
   39eb3:	6a 3c                	push   0x3c
   39eb5:	9a 2f 00 70 01       	call   0x170:0x2f
   39eba:	ff 76 fa             	push   WORD PTR [bp-0x6]
   39ebd:	9a 2a 00 70 01       	call   0x170:0x2a
   39ec2:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   39ec5:	6a 2b                	push   0x2b
   39ec7:	16                   	push   ss
   39ec8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39ecb:	6b c0 2b             	imul   ax,ax,0x2b
   39ece:	8d 96 47 fc          	lea    dx,[bp-0x3b9]
   39ed2:	03 c2                	add    ax,dx
   39ed4:	50                   	push   ax
   39ed5:	16                   	push   ss
   39ed6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39ed9:	6b c0 2b             	imul   ax,ax,0x2b
   39edc:	8d 96 72 fc          	lea    dx,[bp-0x38e]
   39ee0:	03 c2                	add    ax,dx
   39ee2:	50                   	push   ax
   39ee3:	9a a4 52 00 00       	call   0x0:0x52a4
   39ee8:	83 c4 0a             	add    sp,0xa
   39eeb:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39eee:	6b c0 2b             	imul   ax,ax,0x2b
   39ef1:	8d 96 72 fc          	lea    dx,[bp-0x38e]
   39ef5:	03 c2                	add    ax,dx
   39ef7:	16                   	push   ss
   39ef8:	50                   	push   ax
   39ef9:	9a 62 11 00 00       	call   0x0:0x1162
   39efe:	83 c4 04             	add    sp,0x4
   39f01:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   39f04:	83 7e fe 00          	cmp    WORD PTR [bp-0x2],0x0
   39f08:	75 09                	jne    0x39f13
   39f0a:	83 7e fc 14          	cmp    WORD PTR [bp-0x4],0x14
   39f0e:	7d 03                	jge    0x39f13
   39f10:	e9 5c ff             	jmp    0x39e6f
   39f13:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   39f17:	74 31                	je     0x39f4a
   39f19:	83 7e fc 14          	cmp    WORD PTR [bp-0x4],0x14
   39f1d:	74 2b                	je     0x39f4a
   39f1f:	1e                   	push   ds
   39f20:	68 ad 46             	push   0x46ad
   39f23:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39f26:	6b c0 64             	imul   ax,ax,0x64
   39f29:	05 3c a6             	add    ax,0xa63c
   39f2c:	68 88 01             	push   0x188
   39f2f:	50                   	push   ax
   39f30:	9a b4 48 00 00       	call   0x0:0x48b4
   39f35:	83 c4 08             	add    sp,0x8
   39f38:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   39f3b:	6b db 2b             	imul   bx,bx,0x2b
   39f3e:	8d 86 90 fc          	lea    ax,[bp-0x370]
   39f42:	03 d8                	add    bx,ax
   39f44:	36 c6 07 00          	mov    BYTE PTR ss:[bx],0x0
   39f48:	eb 03                	jmp    0x39f4d
   39f4a:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   39f4d:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   39f51:	7d 03                	jge    0x39f56
   39f53:	e9 80 00             	jmp    0x39fd6
   39f56:	b8 88 01             	mov    ax,0x188
   39f59:	8b 16 12 3f          	mov    dx,WORD PTR ds:0x3f12
   39f5d:	8e c0                	mov    es,ax
   39f5f:	26 89 16 dc d5       	mov    WORD PTR es:0xd5dc,dx
   39f64:	6a 01                	push   0x1
   39f66:	b8 88 01             	mov    ax,0x188
   39f69:	8e c0                	mov    es,ax
   39f6b:	26 a1 5a 96          	mov    ax,es:0x965a
   39f6f:	bb 0b 00             	mov    bx,0xb
   39f72:	33 d2                	xor    dx,dx
   39f74:	f7 f3                	div    bx
   39f76:	50                   	push   ax
   39f77:	b8 88 01             	mov    ax,0x188
   39f7a:	8e c0                	mov    es,ax
   39f7c:	26 a0 66 96          	mov    al,es:0x9666
   39f80:	b4 00                	mov    ah,0x0
   39f82:	50                   	push   ax
   39f83:	b8 88 01             	mov    ax,0x188
   39f86:	8e c0                	mov    es,ax
   39f88:	26 a0 64 96          	mov    al,es:0x9664
   39f8c:	b4 00                	mov    ah,0x0
   39f8e:	50                   	push   ax
   39f8f:	b8 88 01             	mov    ax,0x188
   39f92:	8e c0                	mov    es,ax
   39f94:	26 a0 65 96          	mov    al,es:0x9665
   39f98:	b4 00                	mov    ah,0x0
   39f9a:	50                   	push   ax
   39f9b:	6a ff                	push   0xffff
   39f9d:	6a 02                	push   0x2
   39f9f:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   39fa2:	40                   	inc    ax
   39fa3:	50                   	push   ax
   39fa4:	9a 33 11 10 00       	call   0x10:0x1133
   39fa9:	83 c4 10             	add    sp,0x10
   39fac:	b8 88 01             	mov    ax,0x188
   39faf:	8e c0                	mov    es,ax
   39fb1:	26 83 3e dc d5 00    	cmp    WORD PTR es:0xd5dc,0x0
   39fb7:	74 0c                	je     0x39fc5
   39fb9:	b8 88 01             	mov    ax,0x188
   39fbc:	8e c0                	mov    es,ax
   39fbe:	26 a1 dc d5          	mov    ax,es:0xd5dc
   39fc2:	a3 12 3f             	mov    ds:0x3f12,ax
   39fc5:	9a e3 01 40 00       	call   0x40:0x1e3
   39fca:	b8 88 01             	mov    ax,0x188
   39fcd:	8e c0                	mov    es,ax
   39fcf:	26 ff 1e 54 96       	call   DWORD PTR es:0x9654
   39fd4:	eb 26                	jmp    0x39ffc
   39fd6:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   39fda:	75 20                	jne    0x39ffc
   39fdc:	6a 00                	push   0x0
   39fde:	6a 01                	push   0x1
   39fe0:	1e                   	push   ds
   39fe1:	68 b5 46             	push   0x46b5
   39fe4:	9a 48 29 10 00       	call   0x10:0x2948
   39fe9:	83 c4 08             	add    sp,0x8
   39fec:	6a 28                	push   0x28
   39fee:	9a ca 2d 10 00       	call   0x10:0x2dca
   39ff3:	59                   	pop    cx
   39ff4:	9a b9 1e 10 00       	call   0x10:0x1eb9
   39ff9:	e9 8a 02             	jmp    0x3a286
   39ffc:	b8 88 01             	mov    ax,0x188
   39fff:	8e c0                	mov    es,ax
   3a001:	26 83 3e dc d5 00    	cmp    WORD PTR es:0xd5dc,0x0
   3a007:	75 03                	jne    0x3a00c
   3a009:	e9 7a 02             	jmp    0x3a286
   3a00c:	b8 88 01             	mov    ax,0x188
   3a00f:	8e c0                	mov    es,ax
   3a011:	26 8b 1e dc d5       	mov    bx,WORD PTR es:0xd5dc
   3a016:	6b db 2b             	imul   bx,bx,0x2b
   3a019:	8d 86 47 fc          	lea    ax,[bp-0x3b9]
   3a01d:	05 1e 00             	add    ax,0x1e
   3a020:	03 d8                	add    bx,ax
   3a022:	36 80 3f 00          	cmp    BYTE PTR ss:[bx],0x0
   3a026:	75 2d                	jne    0x3a055
   3a028:	b8 88 01             	mov    ax,0x188
   3a02b:	8e c0                	mov    es,ax
   3a02d:	26 ff 36 dc d5       	push   WORD PTR es:0xd5dc
   3a032:	1e                   	push   ds
   3a033:	68 cc 46             	push   0x46cc
   3a036:	b8 88 01             	mov    ax,0x188
   3a039:	8e c0                	mov    es,ax
   3a03b:	26 a1 dc d5          	mov    ax,es:0xd5dc
   3a03f:	6b c0 2b             	imul   ax,ax,0x2b
   3a042:	8d 96 47 fc          	lea    dx,[bp-0x3b9]
   3a046:	83 c2 1e             	add    dx,0x1e
   3a049:	03 c2                	add    ax,dx
   3a04b:	16                   	push   ss
   3a04c:	50                   	push   ax
   3a04d:	9a b4 48 00 00       	call   0x0:0x48b4
   3a052:	83 c4 0a             	add    sp,0xa
   3a055:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   3a059:	75 03                	jne    0x3a05e
   3a05b:	e9 06 02             	jmp    0x3a264
   3a05e:	6a 00                	push   0x0
   3a060:	6a 01                	push   0x1
   3a062:	1e                   	push   ds
   3a063:	68 da 46             	push   0x46da
   3a066:	9a 48 29 10 00       	call   0x10:0x2948
   3a06b:	83 c4 08             	add    sp,0x8
   3a06e:	b8 88 01             	mov    ax,0x188
   3a071:	8e c0                	mov    es,ax
   3a073:	26 a1 dc d5          	mov    ax,es:0xd5dc
   3a077:	6b c0 64             	imul   ax,ax,0x64
   3a07a:	05 d8 a5             	add    ax,0xa5d8
   3a07d:	68 88 01             	push   0x188
   3a080:	50                   	push   ax
   3a081:	16                   	push   ss
   3a082:	8d 86 36 fc          	lea    ax,[bp-0x3ca]
   3a086:	50                   	push   ax
   3a087:	9a 7a 53 00 00       	call   0x0:0x537a
   3a08c:	83 c4 08             	add    sp,0x8
   3a08f:	b8 88 01             	mov    ax,0x188
   3a092:	8e c0                	mov    es,ax
   3a094:	26 a1 57 e5          	mov    ax,es:0xe557
   3a098:	26 0b 06 59 e5       	or     ax,WORD PTR es:0xe559
   3a09d:	74 15                	je     0x3a0b4
   3a09f:	6a 4d                	push   0x4d
   3a0a1:	6a 00                	push   0x0
   3a0a3:	6a 00                	push   0x0
   3a0a5:	68 45 0b             	push   0xb45
   3a0a8:	1e                   	push   ds
   3a0a9:	68 ed 46             	push   0x46ed
   3a0ac:	9a 2a 00 58 01       	call   0x158:0x2a
   3a0b1:	83 c4 0c             	add    sp,0xc
   3a0b4:	6a 01                	push   0x1
   3a0b6:	b8 88 01             	mov    ax,0x188
   3a0b9:	8e c0                	mov    es,ax
   3a0bb:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   3a0c0:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   3a0c5:	9a f4 05 20 00       	call   0x20:0x5f4
   3a0ca:	83 c4 06             	add    sp,0x6
   3a0cd:	6a 00                	push   0x0
   3a0cf:	6a 0c                	push   0xc
   3a0d1:	68 3b 01             	push   0x13b
   3a0d4:	6a 57                	push   0x57
   3a0d6:	9a 4a 0e 20 00       	call   0x20:0xe4a
   3a0db:	83 c4 08             	add    sp,0x8
   3a0de:	68 e0 01             	push   0x1e0
   3a0e1:	68 d0 02             	push   0x2d0
   3a0e4:	6a 57                	push   0x57
   3a0e6:	6a 00                	push   0x0
   3a0e8:	6a 00                	push   0x0
   3a0ea:	6a 00                	push   0x0
   3a0ec:	b8 88 01             	mov    ax,0x188
   3a0ef:	8e c0                	mov    es,ax
   3a0f1:	26 ff 36 55 e5       	push   WORD PTR es:0xe555
   3a0f6:	b8 88 01             	mov    ax,0x188
   3a0f9:	8e c0                	mov    es,ax
   3a0fb:	26 ff 36 53 e5       	push   WORD PTR es:0xe553
   3a100:	68 a8 00             	push   0xa8
   3a103:	6a 05                	push   0x5
   3a105:	9a 30 04 28 00       	call   0x28:0x430
   3a10a:	83 c4 14             	add    sp,0x14
   3a10d:	6a 57                	push   0x57
   3a10f:	6a 00                	push   0x0
   3a111:	6a 05                	push   0x5
   3a113:	6a 00                	push   0x0
   3a115:	68 a8 00             	push   0xa8
   3a118:	6a 0a                	push   0xa
   3a11a:	68 2c 01             	push   0x12c
   3a11d:	6a 00                	push   0x0
   3a11f:	b8 88 01             	mov    ax,0x188
   3a122:	8e c0                	mov    es,ax
   3a124:	26 a0 65 96          	mov    al,es:0x9665
   3a128:	50                   	push   ax
   3a129:	6a 01                	push   0x1
   3a12b:	16                   	push   ss
   3a12c:	8d 86 36 fc          	lea    ax,[bp-0x3ca]
   3a130:	50                   	push   ax
   3a131:	9a 4d 00 80 01       	call   0x180:0x4d
   3a136:	83 c4 18             	add    sp,0x18
   3a139:	0a c0                	or     al,al
   3a13b:	75 03                	jne    0x3a140
   3a13d:	e9 f3 00             	jmp    0x3a233
   3a140:	1e                   	push   ds
   3a141:	68 fc 46             	push   0x46fc
   3a144:	68 4b 0b             	push   0xb4b
   3a147:	68 88 01             	push   0x188
   3a14a:	68 57 e5             	push   0xe557
   3a14d:	9a 2f 02 40 00       	call   0x40:0x22f
   3a152:	83 c4 0a             	add    sp,0xa
   3a155:	6a 00                	push   0x0
   3a157:	b8 88 01             	mov    ax,0x188
   3a15a:	8e c0                	mov    es,ax
   3a15c:	26 ff 36 59 e3       	push   WORD PTR es:0xe359
   3a161:	26 ff 36 57 e3       	push   WORD PTR es:0xe357
   3a166:	9a f4 05 20 00       	call   0x20:0x5f4
   3a16b:	83 c4 06             	add    sp,0x6
   3a16e:	16                   	push   ss
   3a16f:	8d 86 36 fc          	lea    ax,[bp-0x3ca]
   3a173:	50                   	push   ax
   3a174:	b8 88 01             	mov    ax,0x188
   3a177:	8e c0                	mov    es,ax
   3a179:	26 a1 dc d5          	mov    ax,es:0xd5dc
   3a17d:	6b c0 2b             	imul   ax,ax,0x2b
   3a180:	8d 96 47 fc          	lea    dx,[bp-0x3b9]
   3a184:	83 c2 1e             	add    dx,0x1e
   3a187:	03 c2                	add    ax,dx
   3a189:	16                   	push   ss
   3a18a:	50                   	push   ax
   3a18b:	0e                   	push   cs
   3a18c:	e8 51 bb             	call   0x35ce0
   3a18f:	83 c4 08             	add    sp,0x8
   3a192:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3a197:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   3a19c:	eb 25                	jmp    0x3a1c3
   3a19e:	b8 88 01             	mov    ax,0x188
   3a1a1:	8e c0                	mov    es,ax
   3a1a3:	26 a1 dc d5          	mov    ax,es:0xd5dc
   3a1a7:	6b c0 2b             	imul   ax,ax,0x2b
   3a1aa:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   3a1ad:	8d 96 47 fc          	lea    dx,[bp-0x3b9]
   3a1b1:	83 c2 1e             	add    dx,0x1e
   3a1b4:	03 c2                	add    ax,dx
   3a1b6:	16                   	push   ss
   3a1b7:	50                   	push   ax
   3a1b8:	9a 2a 00 80 01       	call   0x180:0x2a
   3a1bd:	83 c4 04             	add    sp,0x4
   3a1c0:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3a1c3:	16                   	push   ss
   3a1c4:	b8 88 01             	mov    ax,0x188
   3a1c7:	8e c0                	mov    es,ax
   3a1c9:	26 a1 dc d5          	mov    ax,es:0xd5dc
   3a1cd:	6b c0 2b             	imul   ax,ax,0x2b
   3a1d0:	8d 96 47 fc          	lea    dx,[bp-0x3b9]
   3a1d4:	03 d0                	add    dx,ax
   3a1d6:	83 c2 1e             	add    dx,0x1e
   3a1d9:	52                   	push   dx
   3a1da:	9a cc 49 00 00       	call   0x0:0x49cc
   3a1df:	83 c4 04             	add    sp,0x4
   3a1e2:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   3a1e5:	77 b7                	ja     0x3a19e
   3a1e7:	b8 88 01             	mov    ax,0x188
   3a1ea:	8e c0                	mov    es,ax
   3a1ec:	26 a1 dc d5          	mov    ax,es:0xd5dc
   3a1f0:	6b c0 2b             	imul   ax,ax,0x2b
   3a1f3:	8d 96 47 fc          	lea    dx,[bp-0x3b9]
   3a1f7:	03 d0                	add    dx,ax
   3a1f9:	83 c2 1e             	add    dx,0x1e
   3a1fc:	16                   	push   ss
   3a1fd:	52                   	push   dx
   3a1fe:	1e                   	push   ds
   3a1ff:	68 0b 47             	push   0x470b
   3a202:	16                   	push   ss
   3a203:	8d 86 36 fc          	lea    ax,[bp-0x3ca]
   3a207:	50                   	push   ax
   3a208:	9a b4 48 00 00       	call   0x0:0x48b4
   3a20d:	83 c4 0c             	add    sp,0xc
   3a210:	6a 00                	push   0x0
   3a212:	6a 01                	push   0x1
   3a214:	16                   	push   ss
   3a215:	8d 86 36 fc          	lea    ax,[bp-0x3ca]
   3a219:	50                   	push   ax
   3a21a:	9a 48 29 10 00       	call   0x10:0x2948
   3a21f:	83 c4 08             	add    sp,0x8
   3a222:	6a 50                	push   0x50
   3a224:	9a ca 2d 10 00       	call   0x10:0x2dca
   3a229:	59                   	pop    cx
   3a22a:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3a22f:	b0 01                	mov    al,0x1
   3a231:	eb 55                	jmp    0x3a288
   3a233:	1e                   	push   ds
   3a234:	68 3b 47             	push   0x473b
   3a237:	68 58 0b             	push   0xb58
   3a23a:	68 88 01             	push   0x188
   3a23d:	68 57 e5             	push   0xe557
   3a240:	9a 2f 02 40 00       	call   0x40:0x22f
   3a245:	83 c4 0a             	add    sp,0xa
   3a248:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3a24d:	6a 00                	push   0x0
   3a24f:	6a 01                	push   0x1
   3a251:	1e                   	push   ds
   3a252:	68 4a 47             	push   0x474a
   3a255:	9a 48 29 10 00       	call   0x10:0x2948
   3a25a:	83 c4 08             	add    sp,0x8
   3a25d:	6a 50                	push   0x50
   3a25f:	e9 8c fd             	jmp    0x39fee
   3a262:	eb 24                	jmp    0x3a288
   3a264:	b8 88 01             	mov    ax,0x188
   3a267:	8e c0                	mov    es,ax
   3a269:	26 a1 dc d5          	mov    ax,es:0xd5dc
   3a26d:	6b c0 2b             	imul   ax,ax,0x2b
   3a270:	8d 96 47 fc          	lea    dx,[bp-0x3b9]
   3a274:	83 c2 1e             	add    dx,0x1e
   3a277:	03 c2                	add    ax,dx
   3a279:	16                   	push   ss
   3a27a:	50                   	push   ax
   3a27b:	0e                   	push   cs
   3a27c:	e8 26 bc             	call   0x35ea5
   3a27f:	83 c4 04             	add    sp,0x4
   3a282:	eb ab                	jmp    0x3a22f
   3a284:	eb 02                	jmp    0x3a288
   3a286:	b0 00                	mov    al,0x0
   3a288:	c9                   	leave
   3a289:	cb                   	retf
   3a28a:	55                   	push   bp
   3a28b:	8b ec                	mov    bp,sp
   3a28d:	b8 88 01             	mov    ax,0x188
   3a290:	8e c0                	mov    es,ax
   3a292:	26 a1 4a e7          	mov    ax,es:0xe74a
   3a296:	2b 06 82 ba          	sub    ax,WORD PTR ds:0xba82
   3a29a:	3d 64 00             	cmp    ax,0x64
   3a29d:	73 03                	jae    0x3a2a2
   3a29f:	e9 90 01             	jmp    0x3a432
   3a2a2:	b8 88 01             	mov    ax,0x188
   3a2a5:	8e c0                	mov    es,ax
   3a2a7:	26 a1 4a e7          	mov    ax,es:0xe74a
   3a2ab:	a3 82 ba             	mov    ds:0xba82,ax
   3a2ae:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a2b3:	75 0a                	jne    0x3a2bf
   3a2b5:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a2ba:	75 03                	jne    0x3a2bf
   3a2bc:	e9 e1 00             	jmp    0x3a3a0
   3a2bf:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a2c4:	7e 0b                	jle    0x3a2d1
   3a2c6:	80 3e 76 3d 00       	cmp    BYTE PTR ds:0x3d76,0x0
   3a2cb:	7d 13                	jge    0x3a2e0
   3a2cd:	eb 09                	jmp    0x3a2d8
   3a2cf:	eb 0f                	jmp    0x3a2e0
   3a2d1:	80 3e 76 3d 00       	cmp    BYTE PTR ds:0x3d76,0x0
   3a2d6:	7e 08                	jle    0x3a2e0
   3a2d8:	a0 76 3d             	mov    al,ds:0x3d76
   3a2db:	f6 d8                	neg    al
   3a2dd:	a2 76 3d             	mov    ds:0x3d76,al
   3a2e0:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a2e5:	7e 0b                	jle    0x3a2f2
   3a2e7:	80 3e 75 3d 00       	cmp    BYTE PTR ds:0x3d75,0x0
   3a2ec:	7d 13                	jge    0x3a301
   3a2ee:	eb 09                	jmp    0x3a2f9
   3a2f0:	eb 0f                	jmp    0x3a301
   3a2f2:	80 3e 75 3d 00       	cmp    BYTE PTR ds:0x3d75,0x0
   3a2f7:	7e 08                	jle    0x3a301
   3a2f9:	a0 75 3d             	mov    al,ds:0x3d75
   3a2fc:	f6 d8                	neg    al
   3a2fe:	a2 75 3d             	mov    ds:0x3d75,al
   3a301:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   3a306:	74 06                	je     0x3a30e
   3a308:	c7 06 72 3d 00 00    	mov    WORD PTR ds:0x3d72,0x0
   3a30e:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a313:	74 06                	je     0x3a31b
   3a315:	a0 76 3d             	mov    al,ds:0x3d76
   3a318:	98                   	cbw
   3a319:	eb 02                	jmp    0x3a31d
   3a31b:	33 c0                	xor    ax,ax
   3a31d:	50                   	push   ax
   3a31e:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a323:	74 06                	je     0x3a32b
   3a325:	a0 75 3d             	mov    al,ds:0x3d75
   3a328:	98                   	cbw
   3a329:	eb 02                	jmp    0x3a32d
   3a32b:	33 c0                	xor    ax,ax
   3a32d:	50                   	push   ax
   3a32e:	6a 00                	push   0x0
   3a330:	9a 3f 07 30 00       	call   0x30:0x73f
   3a335:	83 c4 06             	add    sp,0x6
   3a338:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a33d:	74 2d                	je     0x3a36c
   3a33f:	a0 76 3d             	mov    al,ds:0x3d76
   3a342:	98                   	cbw
   3a343:	29 06 72 3d          	sub    WORD PTR ds:0x3d72,ax
   3a347:	80 3e 76 3d 00       	cmp    BYTE PTR ds:0x3d76,0x0
   3a34c:	7e 10                	jle    0x3a35e
   3a34e:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a353:	7e 05                	jle    0x3a35a
   3a355:	a1 72 3d             	mov    ax,ds:0x3d72
   3a358:	eb 0f                	jmp    0x3a369
   3a35a:	eb 0b                	jmp    0x3a367
   3a35c:	eb 0b                	jmp    0x3a369
   3a35e:	83 3e 72 3d 00       	cmp    WORD PTR ds:0x3d72,0x0
   3a363:	7d 02                	jge    0x3a367
   3a365:	eb ee                	jmp    0x3a355
   3a367:	33 c0                	xor    ax,ax
   3a369:	a3 72 3d             	mov    ds:0x3d72,ax
   3a36c:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a371:	74 2d                	je     0x3a3a0
   3a373:	a0 75 3d             	mov    al,ds:0x3d75
   3a376:	98                   	cbw
   3a377:	29 06 70 3d          	sub    WORD PTR ds:0x3d70,ax
   3a37b:	80 3e 75 3d 00       	cmp    BYTE PTR ds:0x3d75,0x0
   3a380:	7e 10                	jle    0x3a392
   3a382:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a387:	7e 05                	jle    0x3a38e
   3a389:	a1 70 3d             	mov    ax,ds:0x3d70
   3a38c:	eb 0f                	jmp    0x3a39d
   3a38e:	eb 0b                	jmp    0x3a39b
   3a390:	eb 0b                	jmp    0x3a39d
   3a392:	83 3e 70 3d 00       	cmp    WORD PTR ds:0x3d70,0x0
   3a397:	7d 02                	jge    0x3a39b
   3a399:	eb ee                	jmp    0x3a389
   3a39b:	33 c0                	xor    ax,ax
   3a39d:	a3 70 3d             	mov    ds:0x3d70,ax
   3a3a0:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a3a5:	75 03                	jne    0x3a3aa
   3a3a7:	e9 88 00             	jmp    0x3a432
   3a3aa:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a3af:	7e 0b                	jle    0x3a3bc
   3a3b1:	80 3e 74 3d 00       	cmp    BYTE PTR ds:0x3d74,0x0
   3a3b6:	7d 13                	jge    0x3a3cb
   3a3b8:	eb 09                	jmp    0x3a3c3
   3a3ba:	eb 0f                	jmp    0x3a3cb
   3a3bc:	80 3e 74 3d 00       	cmp    BYTE PTR ds:0x3d74,0x0
   3a3c1:	7e 08                	jle    0x3a3cb
   3a3c3:	a0 74 3d             	mov    al,ds:0x3d74
   3a3c6:	f6 d8                	neg    al
   3a3c8:	a2 74 3d             	mov    ds:0x3d74,al
   3a3cb:	b8 88 01             	mov    ax,0x188
   3a3ce:	8e c0                	mov    es,ax
   3a3d0:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3a3d6:	74 1f                	je     0x3a3f7
   3a3d8:	83 3e 4d bb 01       	cmp    WORD PTR ds:0xbb4d,0x1
   3a3dd:	75 18                	jne    0x3a3f7
   3a3df:	b8 88 01             	mov    ax,0x188
   3a3e2:	8e c0                	mov    es,ax
   3a3e4:	26 a1 1c 73          	mov    ax,es:0x731c
   3a3e8:	03 06 6e 3d          	add    ax,WORD PTR ds:0x3d6e
   3a3ec:	c1 e0 08             	shl    ax,0x8
   3a3ef:	99                   	cwd
   3a3f0:	52                   	push   dx
   3a3f1:	50                   	push   ax
   3a3f2:	9a b9 14 68 00       	call   0x68:0x14b9
   3a3f7:	a0 74 3d             	mov    al,ds:0x3d74
   3a3fa:	98                   	cbw
   3a3fb:	29 06 6e 3d          	sub    WORD PTR ds:0x3d6e,ax
   3a3ff:	80 3e 74 3d 00       	cmp    BYTE PTR ds:0x3d74,0x0
   3a404:	7e 10                	jle    0x3a416
   3a406:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a40b:	7e 05                	jle    0x3a412
   3a40d:	a1 6e 3d             	mov    ax,ds:0x3d6e
   3a410:	eb 0f                	jmp    0x3a421
   3a412:	eb 0b                	jmp    0x3a41f
   3a414:	eb 0b                	jmp    0x3a421
   3a416:	83 3e 6e 3d 00       	cmp    WORD PTR ds:0x3d6e,0x0
   3a41b:	7d 02                	jge    0x3a41f
   3a41d:	eb ee                	jmp    0x3a40d
   3a41f:	33 c0                	xor    ax,ax
   3a421:	a3 6e 3d             	mov    ds:0x3d6e,ax
   3a424:	a0 74 3d             	mov    al,ds:0x3d74
   3a427:	98                   	cbw
   3a428:	ba 88 01             	mov    dx,0x188
   3a42b:	8e c2                	mov    es,dx
   3a42d:	26 01 06 1c 73       	add    WORD PTR es:0x731c,ax
   3a432:	5d                   	pop    bp
   3a433:	cb                   	retf
   3a434:	55                   	push   bp
   3a435:	8b ec                	mov    bp,sp
   3a437:	83 ec 2e             	sub    sp,0x2e
   3a43a:	b8 88 01             	mov    ax,0x188
   3a43d:	8e c0                	mov    es,ax
   3a43f:	26 a0 71 96          	mov    al,es:0x9671
   3a443:	50                   	push   ax
   3a444:	9a 69 00 30 00       	call   0x30:0x69
   3a449:	59                   	pop    cx
   3a44a:	b8 88 01             	mov    ax,0x188
   3a44d:	8e c0                	mov    es,ax
   3a44f:	26 a1 4a e7          	mov    ax,es:0xe74a
   3a453:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3a456:	b0 00                	mov    al,0x0
   3a458:	88 46 f1             	mov    BYTE PTR [bp-0xf],al
   3a45b:	88 46 f2             	mov    BYTE PTR [bp-0xe],al
   3a45e:	88 46 f3             	mov    BYTE PTR [bp-0xd],al
   3a461:	9a e3 01 40 00       	call   0x40:0x1e3
   3a466:	68 18 01             	push   0x118
   3a469:	68 84 00             	push   0x84
   3a46c:	9a a1 04 30 00       	call   0x30:0x4a1
   3a471:	83 c4 04             	add    sp,0x4
   3a474:	9a 45 2e 00 00       	call   0x0:0x2e45
   3a479:	0b c0                	or     ax,ax
   3a47b:	75 2e                	jne    0x3a4ab
   3a47d:	b8 88 01             	mov    ax,0x188
   3a480:	8e c0                	mov    es,ax
   3a482:	26 83 3e e5 e5 01    	cmp    WORD PTR es:0xe5e5,0x1
   3a488:	74 21                	je     0x3a4ab
   3a48a:	b8 88 01             	mov    ax,0x188
   3a48d:	8e c0                	mov    es,ax
   3a48f:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3a493:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   3a497:	75 12                	jne    0x3a4ab
   3a499:	b8 88 01             	mov    ax,0x188
   3a49c:	8e c0                	mov    es,ax
   3a49e:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3a4a2:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   3a4a6:	75 03                	jne    0x3a4ab
   3a4a8:	e9 64 12             	jmp    0x3b70f
   3a4ab:	0e                   	push   cs
   3a4ac:	e8 5d 8a             	call   0x32f0c
   3a4af:	b8 88 01             	mov    ax,0x188
   3a4b2:	8e c0                	mov    es,ax
   3a4b4:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3a4b8:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   3a4bc:	75 12                	jne    0x3a4d0
   3a4be:	b8 88 01             	mov    ax,0x188
   3a4c1:	8e c0                	mov    es,ax
   3a4c3:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3a4c7:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   3a4cb:	75 03                	jne    0x3a4d0
   3a4cd:	e9 e3 06             	jmp    0x3abb3
   3a4d0:	6a 01                	push   0x1
   3a4d2:	0e                   	push   cs
   3a4d3:	e8 37 b4             	call   0x3590d
   3a4d6:	59                   	pop    cx
   3a4d7:	68 b2 00             	push   0xb2
   3a4da:	68 c6 00             	push   0xc6
   3a4dd:	0e                   	push   cs
   3a4de:	e8 51 c7             	call   0x36c32
   3a4e1:	83 c4 04             	add    sp,0x4
   3a4e4:	b8 88 01             	mov    ax,0x188
   3a4e7:	8e c0                	mov    es,ax
   3a4e9:	26 83 3e f3 b9 00    	cmp    WORD PTR es:0xb9f3,0x0
   3a4ef:	7c 3b                	jl     0x3a52c
   3a4f1:	b8 88 01             	mov    ax,0x188
   3a4f4:	8e c0                	mov    es,ax
   3a4f6:	26 a0 eb b9          	mov    al,es:0xb9eb
   3a4fa:	b4 00                	mov    ah,0x0
   3a4fc:	ba 88 01             	mov    dx,0x188
   3a4ff:	8e c2                	mov    es,dx
   3a501:	26 3b 06 f3 b9       	cmp    ax,WORD PTR es:0xb9f3
   3a506:	7e 24                	jle    0x3a52c
   3a508:	b8 88 01             	mov    ax,0x188
   3a50b:	8e c0                	mov    es,ax
   3a50d:	26 83 3e f1 b9 00    	cmp    WORD PTR es:0xb9f1,0x0
   3a513:	7c 17                	jl     0x3a52c
   3a515:	b8 88 01             	mov    ax,0x188
   3a518:	8e c0                	mov    es,ax
   3a51a:	26 a0 ea b9          	mov    al,es:0xb9ea
   3a51e:	b4 00                	mov    ah,0x0
   3a520:	ba 88 01             	mov    dx,0x188
   3a523:	8e c2                	mov    es,dx
   3a525:	26 3b 06 f1 b9       	cmp    ax,WORD PTR es:0xb9f1
   3a52a:	7f 10                	jg     0x3a53c
   3a52c:	0e                   	push   cs
   3a52d:	e8 3c f0             	call   0x3956c
   3a530:	b8 88 01             	mov    ax,0x188
   3a533:	8e c0                	mov    es,ax
   3a535:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3a53c:	80 3e 38 bb 00       	cmp    BYTE PTR ds:0xbb38,0x0
   3a541:	74 77                	je     0x3a5ba
   3a543:	b8 88 01             	mov    ax,0x188
   3a546:	8e c0                	mov    es,ax
   3a548:	26 a0 eb b9          	mov    al,es:0xb9eb
   3a54c:	b4 00                	mov    ah,0x0
   3a54e:	ba 88 01             	mov    dx,0x188
   3a551:	8e c2                	mov    es,dx
   3a553:	50                   	push   ax
   3a554:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3a558:	5a                   	pop    dx
   3a559:	f7 ea                	imul   dx
   3a55b:	ba 88 01             	mov    dx,0x188
   3a55e:	8e c2                	mov    es,dx
   3a560:	50                   	push   ax
   3a561:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3a565:	5a                   	pop    dx
   3a566:	03 c2                	add    ax,dx
   3a568:	6b c0 0f             	imul   ax,ax,0xf
   3a56b:	05 09 00             	add    ax,0x9
   3a56e:	99                   	cwd
   3a56f:	bb 88 01             	mov    bx,0x188
   3a572:	8e c3                	mov    es,bx
   3a574:	50                   	push   ax
   3a575:	52                   	push   dx
   3a576:	26 8b 16 ee b9       	mov    dx,WORD PTR es:0xb9ee
   3a57b:	26 a1 ec b9          	mov    ax,es:0xb9ec
   3a57f:	59                   	pop    cx
   3a580:	5b                   	pop    bx
   3a581:	9a 77 14 00 00       	call   0x0:0x1477
   3a586:	8b d8                	mov    bx,ax
   3a588:	8e c2                	mov    es,dx
   3a58a:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3a58d:	b4 00                	mov    ah,0x0
   3a58f:	50                   	push   ax
   3a590:	9a 42 01 38 01       	call   0x138:0x142
   3a595:	59                   	pop    cx
   3a596:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3a599:	6a 40                	push   0x40
   3a59b:	6a 00                	push   0x0
   3a59d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a5a0:	6b db 11             	imul   bx,bx,0x11
   3a5a3:	b8 88 01             	mov    ax,0x188
   3a5a6:	6a 00                	push   0x0
   3a5a8:	8e c0                	mov    es,ax
   3a5aa:	26 ff b7 e8 22       	push   WORD PTR es:[bx+0x22e8]
   3a5af:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3a5b2:	9a 2d 19 10 00       	call   0x10:0x192d
   3a5b7:	83 c4 0a             	add    sp,0xa
   3a5ba:	a1 64 3d             	mov    ax,ds:0x3d64
   3a5bd:	bb 0a 00             	mov    bx,0xa
   3a5c0:	99                   	cwd
   3a5c1:	f7 fb                	idiv   bx
   3a5c3:	0b d2                	or     dx,dx
   3a5c5:	74 03                	je     0x3a5ca
   3a5c7:	e9 e1 05             	jmp    0x3abab
   3a5ca:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3a5cf:	e9 cc 05             	jmp    0x3ab9e
   3a5d2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a5d5:	6b db 5c             	imul   bx,bx,0x5c
   3a5d8:	b8 88 01             	mov    ax,0x188
   3a5db:	8e c0                	mov    es,ax
   3a5dd:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   3a5e3:	7f 03                	jg     0x3a5e8
   3a5e5:	e9 b3 05             	jmp    0x3ab9b
   3a5e8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a5eb:	6b db 5c             	imul   bx,bx,0x5c
   3a5ee:	b8 88 01             	mov    ax,0x188
   3a5f1:	8e c0                	mov    es,ax
   3a5f3:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a5f8:	bb 64 00             	mov    bx,0x64
   3a5fb:	99                   	cwd
   3a5fc:	f7 fb                	idiv   bx
   3a5fe:	ba 05 00             	mov    dx,0x5
   3a601:	2b d0                	sub    dx,ax
   3a603:	83 fa 01             	cmp    dx,0x1
   3a606:	7d 05                	jge    0x3a60d
   3a608:	b8 01 00             	mov    ax,0x1
   3a60b:	eb 1d                	jmp    0x3a62a
   3a60d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a610:	6b db 5c             	imul   bx,bx,0x5c
   3a613:	b8 88 01             	mov    ax,0x188
   3a616:	8e c0                	mov    es,ax
   3a618:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a61d:	bb 64 00             	mov    bx,0x64
   3a620:	99                   	cwd
   3a621:	f7 fb                	idiv   bx
   3a623:	50                   	push   ax
   3a624:	b8 05 00             	mov    ax,0x5
   3a627:	5a                   	pop    dx
   3a628:	2b c2                	sub    ax,dx
   3a62a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a62d:	6b db 5c             	imul   bx,bx,0x5c
   3a630:	ba 88 01             	mov    dx,0x188
   3a633:	8e c2                	mov    es,dx
   3a635:	26 8b 97 c8 99       	mov    dx,WORD PTR es:[bx-0x6638]
   3a63a:	03 d0                	add    dx,ax
   3a63c:	81 fa e8 03          	cmp    dx,0x3e8
   3a640:	7e 05                	jle    0x3a647
   3a642:	b8 e8 03             	mov    ax,0x3e8
   3a645:	eb 56                	jmp    0x3a69d
   3a647:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a64a:	6b db 5c             	imul   bx,bx,0x5c
   3a64d:	b8 88 01             	mov    ax,0x188
   3a650:	8e c0                	mov    es,ax
   3a652:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a657:	bb 64 00             	mov    bx,0x64
   3a65a:	99                   	cwd
   3a65b:	f7 fb                	idiv   bx
   3a65d:	ba 05 00             	mov    dx,0x5
   3a660:	2b d0                	sub    dx,ax
   3a662:	83 fa 01             	cmp    dx,0x1
   3a665:	7d 05                	jge    0x3a66c
   3a667:	b8 01 00             	mov    ax,0x1
   3a66a:	eb 1d                	jmp    0x3a689
   3a66c:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a66f:	6b db 5c             	imul   bx,bx,0x5c
   3a672:	b8 88 01             	mov    ax,0x188
   3a675:	8e c0                	mov    es,ax
   3a677:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a67c:	bb 64 00             	mov    bx,0x64
   3a67f:	99                   	cwd
   3a680:	f7 fb                	idiv   bx
   3a682:	50                   	push   ax
   3a683:	b8 05 00             	mov    ax,0x5
   3a686:	5a                   	pop    dx
   3a687:	2b c2                	sub    ax,dx
   3a689:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a68c:	6b db 5c             	imul   bx,bx,0x5c
   3a68f:	ba 88 01             	mov    dx,0x188
   3a692:	8e c2                	mov    es,dx
   3a694:	50                   	push   ax
   3a695:	26 8b 87 c8 99       	mov    ax,WORD PTR es:[bx-0x6638]
   3a69a:	5a                   	pop    dx
   3a69b:	03 c2                	add    ax,dx
   3a69d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6a0:	6b db 5c             	imul   bx,bx,0x5c
   3a6a3:	ba 88 01             	mov    dx,0x188
   3a6a6:	8e c2                	mov    es,dx
   3a6a8:	26 89 87 c8 99       	mov    WORD PTR es:[bx-0x6638],ax
   3a6ad:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6b0:	6b db 5c             	imul   bx,bx,0x5c
   3a6b3:	b8 88 01             	mov    ax,0x188
   3a6b6:	8e c0                	mov    es,ax
   3a6b8:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   3a6bd:	bb 02 00             	mov    bx,0x2
   3a6c0:	99                   	cwd
   3a6c1:	f7 fb                	idiv   bx
   3a6c3:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6c6:	6b db 5c             	imul   bx,bx,0x5c
   3a6c9:	ba 88 01             	mov    dx,0x188
   3a6cc:	8e c2                	mov    es,dx
   3a6ce:	50                   	push   ax
   3a6cf:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a6d4:	bb 64 00             	mov    bx,0x64
   3a6d7:	99                   	cwd
   3a6d8:	f7 fb                	idiv   bx
   3a6da:	5a                   	pop    dx
   3a6db:	2b d0                	sub    dx,ax
   3a6dd:	83 fa 01             	cmp    dx,0x1
   3a6e0:	7e 34                	jle    0x3a716
   3a6e2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6e5:	6b db 5c             	imul   bx,bx,0x5c
   3a6e8:	b8 88 01             	mov    ax,0x188
   3a6eb:	8e c0                	mov    es,ax
   3a6ed:	26 8b 87 00 9a       	mov    ax,WORD PTR es:[bx-0x6600]
   3a6f2:	bb 02 00             	mov    bx,0x2
   3a6f5:	99                   	cwd
   3a6f6:	f7 fb                	idiv   bx
   3a6f8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a6fb:	6b db 5c             	imul   bx,bx,0x5c
   3a6fe:	ba 88 01             	mov    dx,0x188
   3a701:	8e c2                	mov    es,dx
   3a703:	50                   	push   ax
   3a704:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a709:	bb 64 00             	mov    bx,0x64
   3a70c:	99                   	cwd
   3a70d:	f7 fb                	idiv   bx
   3a70f:	8b d0                	mov    dx,ax
   3a711:	58                   	pop    ax
   3a712:	2b c2                	sub    ax,dx
   3a714:	eb 03                	jmp    0x3a719
   3a716:	b8 01 00             	mov    ax,0x1
   3a719:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   3a71c:	6a 14                	push   0x14
   3a71e:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a721:	05 18 00             	add    ax,0x18
   3a724:	50                   	push   ax
   3a725:	9a 93 00 38 01       	call   0x138:0x93
   3a72a:	83 c4 04             	add    sp,0x4
   3a72d:	0b c0                	or     ax,ax
   3a72f:	74 4a                	je     0x3a77b
   3a731:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a734:	6b db 5c             	imul   bx,bx,0x5c
   3a737:	b8 88 01             	mov    ax,0x188
   3a73a:	8e c0                	mov    es,ax
   3a73c:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a741:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   3a744:	6b d2 03             	imul   dx,dx,0x3
   3a747:	03 c2                	add    ax,dx
   3a749:	3d e8 03             	cmp    ax,0x3e8
   3a74c:	7e 05                	jle    0x3a753
   3a74e:	b8 e8 03             	mov    ax,0x3e8
   3a751:	eb 18                	jmp    0x3a76b
   3a753:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a756:	6b db 5c             	imul   bx,bx,0x5c
   3a759:	b8 88 01             	mov    ax,0x188
   3a75c:	8e c0                	mov    es,ax
   3a75e:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a763:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   3a766:	6b d2 03             	imul   dx,dx,0x3
   3a769:	03 c2                	add    ax,dx
   3a76b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a76e:	6b db 5c             	imul   bx,bx,0x5c
   3a771:	ba 88 01             	mov    dx,0x188
   3a774:	8e c2                	mov    es,dx
   3a776:	26 89 87 d0 99       	mov    WORD PTR es:[bx-0x6630],ax
   3a77b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a77e:	6b db 5c             	imul   bx,bx,0x5c
   3a781:	b8 88 01             	mov    ax,0x188
   3a784:	8e c0                	mov    es,ax
   3a786:	26 81 bf c8 99 f4 01 	cmp    WORD PTR es:[bx-0x6638],0x1f4
   3a78d:	7e 40                	jle    0x3a7cf
   3a78f:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a792:	6b db 5c             	imul   bx,bx,0x5c
   3a795:	b8 88 01             	mov    ax,0x188
   3a798:	8e c0                	mov    es,ax
   3a79a:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a79f:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   3a7a2:	3d e8 03             	cmp    ax,0x3e8
   3a7a5:	7e 05                	jle    0x3a7ac
   3a7a7:	b8 e8 03             	mov    ax,0x3e8
   3a7aa:	eb 13                	jmp    0x3a7bf
   3a7ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7af:	6b db 5c             	imul   bx,bx,0x5c
   3a7b2:	b8 88 01             	mov    ax,0x188
   3a7b5:	8e c0                	mov    es,ax
   3a7b7:	26 8b 87 d0 99       	mov    ax,WORD PTR es:[bx-0x6630]
   3a7bc:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
   3a7bf:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7c2:	6b db 5c             	imul   bx,bx,0x5c
   3a7c5:	ba 88 01             	mov    dx,0x188
   3a7c8:	8e c2                	mov    es,dx
   3a7ca:	26 89 87 d0 99       	mov    WORD PTR es:[bx-0x6630],ax
   3a7cf:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7d2:	6b db 5c             	imul   bx,bx,0x5c
   3a7d5:	b8 88 01             	mov    ax,0x188
   3a7d8:	8e c0                	mov    es,ax
   3a7da:	26 81 bf c8 99 e8 03 	cmp    WORD PTR es:[bx-0x6638],0x3e8
   3a7e1:	7d 03                	jge    0x3a7e6
   3a7e3:	e9 b5 03             	jmp    0x3ab9b
   3a7e6:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7e9:	6b db 5c             	imul   bx,bx,0x5c
   3a7ec:	b8 88 01             	mov    ax,0x188
   3a7ef:	8e c0                	mov    es,ax
   3a7f1:	26 83 bf c6 99 00    	cmp    WORD PTR es:[bx-0x663a],0x0
   3a7f7:	7f 03                	jg     0x3a7fc
   3a7f9:	e9 c0 00             	jmp    0x3a8bc
   3a7fc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a7ff:	6b db 5c             	imul   bx,bx,0x5c
   3a802:	b8 88 01             	mov    ax,0x188
   3a805:	8e c0                	mov    es,ax
   3a807:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a80c:	bb 64 00             	mov    bx,0x64
   3a80f:	99                   	cwd
   3a810:	f7 fb                	idiv   bx
   3a812:	ba 05 00             	mov    dx,0x5
   3a815:	2b d0                	sub    dx,ax
   3a817:	83 fa 01             	cmp    dx,0x1
   3a81a:	7d 05                	jge    0x3a821
   3a81c:	b8 01 00             	mov    ax,0x1
   3a81f:	eb 1d                	jmp    0x3a83e
   3a821:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a824:	6b db 5c             	imul   bx,bx,0x5c
   3a827:	b8 88 01             	mov    ax,0x188
   3a82a:	8e c0                	mov    es,ax
   3a82c:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a831:	bb 64 00             	mov    bx,0x64
   3a834:	99                   	cwd
   3a835:	f7 fb                	idiv   bx
   3a837:	50                   	push   ax
   3a838:	b8 05 00             	mov    ax,0x5
   3a83b:	5a                   	pop    dx
   3a83c:	2b c2                	sub    ax,dx
   3a83e:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a841:	6b db 5c             	imul   bx,bx,0x5c
   3a844:	ba 88 01             	mov    dx,0x188
   3a847:	8e c2                	mov    es,dx
   3a849:	26 8b 97 c6 99       	mov    dx,WORD PTR es:[bx-0x663a]
   3a84e:	2b d0                	sub    dx,ax
   3a850:	7d 04                	jge    0x3a856
   3a852:	33 c0                	xor    ax,ax
   3a854:	eb 56                	jmp    0x3a8ac
   3a856:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a859:	6b db 5c             	imul   bx,bx,0x5c
   3a85c:	b8 88 01             	mov    ax,0x188
   3a85f:	8e c0                	mov    es,ax
   3a861:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a866:	bb 64 00             	mov    bx,0x64
   3a869:	99                   	cwd
   3a86a:	f7 fb                	idiv   bx
   3a86c:	ba 05 00             	mov    dx,0x5
   3a86f:	2b d0                	sub    dx,ax
   3a871:	83 fa 01             	cmp    dx,0x1
   3a874:	7d 05                	jge    0x3a87b
   3a876:	b8 01 00             	mov    ax,0x1
   3a879:	eb 1d                	jmp    0x3a898
   3a87b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a87e:	6b db 5c             	imul   bx,bx,0x5c
   3a881:	b8 88 01             	mov    ax,0x188
   3a884:	8e c0                	mov    es,ax
   3a886:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3a88b:	bb 64 00             	mov    bx,0x64
   3a88e:	99                   	cwd
   3a88f:	f7 fb                	idiv   bx
   3a891:	50                   	push   ax
   3a892:	b8 05 00             	mov    ax,0x5
   3a895:	5a                   	pop    dx
   3a896:	2b c2                	sub    ax,dx
   3a898:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a89b:	6b db 5c             	imul   bx,bx,0x5c
   3a89e:	ba 88 01             	mov    dx,0x188
   3a8a1:	8e c2                	mov    es,dx
   3a8a3:	50                   	push   ax
   3a8a4:	26 8b 87 c6 99       	mov    ax,WORD PTR es:[bx-0x663a]
   3a8a9:	5a                   	pop    dx
   3a8aa:	2b c2                	sub    ax,dx
   3a8ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a8af:	6b db 5c             	imul   bx,bx,0x5c
   3a8b2:	ba 88 01             	mov    dx,0x188
   3a8b5:	8e c2                	mov    es,dx
   3a8b7:	26 89 87 c6 99       	mov    WORD PTR es:[bx-0x663a],ax
   3a8bc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a8bf:	6b db 5c             	imul   bx,bx,0x5c
   3a8c2:	b8 88 01             	mov    ax,0x188
   3a8c5:	8e c0                	mov    es,ax
   3a8c7:	26 83 bf c6 99 00    	cmp    WORD PTR es:[bx-0x663a],0x0
   3a8cd:	7e 36                	jle    0x3a905
   3a8cf:	a0 6c 3d             	mov    al,ds:0x3d6c
   3a8d2:	b4 00                	mov    ah,0x0
   3a8d4:	8a 4e fc             	mov    cl,BYTE PTR [bp-0x4]
   3a8d7:	80 c1 ff             	add    cl,0xff
   3a8da:	ba 01 00             	mov    dx,0x1
   3a8dd:	d3 e2                	shl    dx,cl
   3a8df:	85 c2                	test   dx,ax
   3a8e1:	75 22                	jne    0x3a905
   3a8e3:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3a8e6:	6a 00                	push   0x0
   3a8e8:	1e                   	push   ds
   3a8e9:	68 73 47             	push   0x4773
   3a8ec:	9a 48 29 10 00       	call   0x10:0x2948
   3a8f1:	83 c4 08             	add    sp,0x8
   3a8f4:	8a 4e fc             	mov    cl,BYTE PTR [bp-0x4]
   3a8f7:	80 c1 ff             	add    cl,0xff
   3a8fa:	b0 01                	mov    al,0x1
   3a8fc:	d2 e0                	shl    al,cl
   3a8fe:	08 06 6c 3d          	or     BYTE PTR ds:0x3d6c,al
   3a902:	e9 91 02             	jmp    0x3ab96
   3a905:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a908:	6b db 5c             	imul   bx,bx,0x5c
   3a90b:	b8 88 01             	mov    ax,0x188
   3a90e:	8e c0                	mov    es,ax
   3a910:	26 83 bf c6 99 00    	cmp    WORD PTR es:[bx-0x663a],0x0
   3a916:	7e 03                	jle    0x3a91b
   3a918:	e9 80 02             	jmp    0x3ab9b
   3a91b:	ff 76 fc             	push   WORD PTR [bp-0x4]
   3a91e:	6a 00                	push   0x0
   3a920:	1e                   	push   ds
   3a921:	68 9c 47             	push   0x479c
   3a924:	9a 48 29 10 00       	call   0x10:0x2948
   3a929:	83 c4 08             	add    sp,0x8
   3a92c:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3a931:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a934:	6b db 5c             	imul   bx,bx,0x5c
   3a937:	b8 88 01             	mov    ax,0x188
   3a93a:	8e c0                	mov    es,ax
   3a93c:	26 c7 87 e0 99 fa ff 	mov    WORD PTR es:[bx-0x6620],0xfffa
   3a943:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a946:	6b db 5c             	imul   bx,bx,0x5c
   3a949:	b8 88 01             	mov    ax,0x188
   3a94c:	8e c0                	mov    es,ax
   3a94e:	26 83 bf b2 99 00    	cmp    WORD PTR es:[bx-0x664e],0x0
   3a954:	75 03                	jne    0x3a959
   3a956:	e9 03 01             	jmp    0x3aa5c
   3a959:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3a95c:	6b db 5c             	imul   bx,bx,0x5c
   3a95f:	b8 88 01             	mov    ax,0x188
   3a962:	8e c0                	mov    es,ax
   3a964:	26 ff b7 e0 99       	push   WORD PTR es:[bx-0x6620]
   3a969:	1e                   	push   ds
   3a96a:	68 bd 47             	push   0x47bd
   3a96d:	16                   	push   ss
   3a96e:	8d 46 d2             	lea    ax,[bp-0x2e]
   3a971:	50                   	push   ax
   3a972:	9a b4 48 00 00       	call   0x0:0x48b4
   3a977:	83 c4 0a             	add    sp,0xa
   3a97a:	68 e0 01             	push   0x1e0
   3a97d:	68 d0 02             	push   0x2d0
   3a980:	6a 00                	push   0x0
   3a982:	6a 50                	push   0x50
   3a984:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a987:	6b c0 26             	imul   ax,ax,0x26
   3a98a:	05 1c 00             	add    ax,0x1c
   3a98d:	50                   	push   ax
   3a98e:	68 f2 00             	push   0xf2
   3a991:	6a 06                	push   0x6
   3a993:	6a 0e                	push   0xe
   3a995:	6a 1c                	push   0x1c
   3a997:	68 0e 01             	push   0x10e
   3a99a:	9a 30 04 28 00       	call   0x28:0x430
   3a99f:	83 c4 14             	add    sp,0x14
   3a9a2:	b8 02 00             	mov    ax,0x2
   3a9a5:	3d 01 00             	cmp    ax,0x1
   3a9a8:	74 08                	je     0x3a9b2
   3a9aa:	3d 02 00             	cmp    ax,0x2
   3a9ad:	74 5b                	je     0x3aa0a
   3a9af:	e9 aa 00             	jmp    0x3aa5c
   3a9b2:	6a 05                	push   0x5
   3a9b4:	b8 88 01             	mov    ax,0x188
   3a9b7:	8e c0                	mov    es,ax
   3a9b9:	26 a0 69 96          	mov    al,es:0x9669
   3a9bd:	b4 00                	mov    ah,0x0
   3a9bf:	50                   	push   ax
   3a9c0:	16                   	push   ss
   3a9c1:	8d 46 d2             	lea    ax,[bp-0x2e]
   3a9c4:	50                   	push   ax
   3a9c5:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a9c8:	48                   	dec    ax
   3a9c9:	6b c0 26             	imul   ax,ax,0x26
   3a9cc:	05 1d 00             	add    ax,0x1d
   3a9cf:	50                   	push   ax
   3a9d0:	68 f3 00             	push   0xf3
   3a9d3:	6a 00                	push   0x0
   3a9d5:	9a 34 00 80 01       	call   0x180:0x34
   3a9da:	83 c4 0e             	add    sp,0xe
   3a9dd:	6a 05                	push   0x5
   3a9df:	b8 88 01             	mov    ax,0x188
   3a9e2:	8e c0                	mov    es,ax
   3a9e4:	26 a0 6a 96          	mov    al,es:0x966a
   3a9e8:	b4 00                	mov    ah,0x0
   3a9ea:	50                   	push   ax
   3a9eb:	16                   	push   ss
   3a9ec:	8d 46 d2             	lea    ax,[bp-0x2e]
   3a9ef:	50                   	push   ax
   3a9f0:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3a9f3:	48                   	dec    ax
   3a9f4:	6b c0 26             	imul   ax,ax,0x26
   3a9f7:	05 1c 00             	add    ax,0x1c
   3a9fa:	50                   	push   ax
   3a9fb:	68 f2 00             	push   0xf2
   3a9fe:	6a 00                	push   0x0
   3aa00:	9a 34 00 80 01       	call   0x180:0x34
   3aa05:	83 c4 0e             	add    sp,0xe
   3aa08:	eb 52                	jmp    0x3aa5c
   3aa0a:	b8 88 01             	mov    ax,0x188
   3aa0d:	8e c0                	mov    es,ax
   3aa0f:	26 a0 69 96          	mov    al,es:0x9669
   3aa13:	b4 00                	mov    ah,0x0
   3aa15:	50                   	push   ax
   3aa16:	16                   	push   ss
   3aa17:	8d 46 d2             	lea    ax,[bp-0x2e]
   3aa1a:	50                   	push   ax
   3aa1b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3aa1e:	48                   	dec    ax
   3aa1f:	6b c0 26             	imul   ax,ax,0x26
   3aa22:	05 1d 00             	add    ax,0x1d
   3aa25:	50                   	push   ax
   3aa26:	68 f2 00             	push   0xf2
   3aa29:	6a 00                	push   0x0
   3aa2b:	9a 39 00 80 01       	call   0x180:0x39
   3aa30:	83 c4 0c             	add    sp,0xc
   3aa33:	b8 88 01             	mov    ax,0x188
   3aa36:	8e c0                	mov    es,ax
   3aa38:	26 a0 6a 96          	mov    al,es:0x966a
   3aa3c:	b4 00                	mov    ah,0x0
   3aa3e:	50                   	push   ax
   3aa3f:	16                   	push   ss
   3aa40:	8d 46 d2             	lea    ax,[bp-0x2e]
   3aa43:	50                   	push   ax
   3aa44:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3aa47:	48                   	dec    ax
   3aa48:	6b c0 26             	imul   ax,ax,0x26
   3aa4b:	05 1c 00             	add    ax,0x1c
   3aa4e:	50                   	push   ax
   3aa4f:	68 f2 00             	push   0xf2
   3aa52:	6a 00                	push   0x0
   3aa54:	9a 39 00 80 01       	call   0x180:0x39
   3aa59:	83 c4 0c             	add    sp,0xc
   3aa5c:	b8 88 01             	mov    ax,0x188
   3aa5f:	8e c0                	mov    es,ax
   3aa61:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aa65:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3aa68:	b8 88 01             	mov    ax,0x188
   3aa6b:	8e c0                	mov    es,ax
   3aa6d:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aa71:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3aa74:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   3aa77:	50                   	push   ax
   3aa78:	9a c7 05 30 00       	call   0x30:0x5c7
   3aa7d:	59                   	pop    cx
   3aa7e:	0a c0                	or     al,al
   3aa80:	75 03                	jne    0x3aa85
   3aa82:	e9 d2 00             	jmp    0x3ab57
   3aa85:	9a 04 02 30 00       	call   0x30:0x204
   3aa8a:	e9 ca 00             	jmp    0x3ab57
   3aa8d:	e9 c7 00             	jmp    0x3ab57
   3aa90:	b8 88 01             	mov    ax,0x188
   3aa93:	8e c0                	mov    es,ax
   3aa95:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aa99:	2b 46 f4             	sub    ax,WORD PTR [bp-0xc]
   3aa9c:	3d 32 00             	cmp    ax,0x32
   3aa9f:	77 03                	ja     0x3aaa4
   3aaa1:	e9 b3 00             	jmp    0x3ab57
   3aaa4:	b8 88 01             	mov    ax,0x188
   3aaa7:	8e c0                	mov    es,ax
   3aaa9:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aaad:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   3aab0:	6a 00                	push   0x0
   3aab2:	68 00 80             	push   0x8000
   3aab5:	9a 79 17 00 00       	call   0x0:0x1779
   3aaba:	99                   	cwd
   3aabb:	bb 88 01             	mov    bx,0x188
   3aabe:	8e c3                	mov    es,bx
   3aac0:	50                   	push   ax
   3aac1:	26 a1 4a e7          	mov    ax,es:0xe74a
   3aac5:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   3aac8:	bb 2c 01             	mov    bx,0x12c
   3aacb:	52                   	push   dx
   3aacc:	33 d2                	xor    dx,dx
   3aace:	f7 f3                	div    bx
   3aad0:	50                   	push   ax
   3aad1:	b8 05 00             	mov    ax,0x5
   3aad4:	5a                   	pop    dx
   3aad5:	2b c2                	sub    ax,dx
   3aad7:	33 d2                	xor    dx,dx
   3aad9:	59                   	pop    cx
   3aada:	5b                   	pop    bx
   3aadb:	9a 42 12 00 00       	call   0x0:0x1242
   3aae0:	52                   	push   dx
   3aae1:	50                   	push   ax
   3aae2:	9a df 12 00 00       	call   0x0:0x12df
   3aae7:	0b c0                	or     ax,ax
   3aae9:	74 3e                	je     0x3ab29
   3aaeb:	68 e0 01             	push   0x1e0
   3aaee:	68 d0 02             	push   0x2d0
   3aaf1:	6a 00                	push   0x0
   3aaf3:	8a 46 fc             	mov    al,BYTE PTR [bp-0x4]
   3aaf6:	04 46                	add    al,0x46
   3aaf8:	50                   	push   ax
   3aaf9:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3aafc:	48                   	dec    ax
   3aafd:	f7 2e 45 bb          	imul   WORD PTR ds:0xbb45
   3ab01:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3ab05:	03 d0                	add    dx,ax
   3ab07:	52                   	push   dx
   3ab08:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3ab0b:	48                   	dec    ax
   3ab0c:	f7 2e 47 bb          	imul   WORD PTR ds:0xbb47
   3ab10:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3ab14:	03 d0                	add    dx,ax
   3ab16:	52                   	push   dx
   3ab17:	6a 20                	push   0x20
   3ab19:	6a 20                	push   0x20
   3ab1b:	6a 00                	push   0x0
   3ab1d:	6a 00                	push   0x0
   3ab1f:	9a 30 04 28 00       	call   0x28:0x430
   3ab24:	83 c4 14             	add    sp,0x14
   3ab27:	eb 2e                	jmp    0x3ab57
   3ab29:	6a 00                	push   0x0
   3ab2b:	6a 00                	push   0x0
   3ab2d:	6a 20                	push   0x20
   3ab2f:	6a 20                	push   0x20
   3ab31:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3ab34:	48                   	dec    ax
   3ab35:	f7 2e 45 bb          	imul   WORD PTR ds:0xbb45
   3ab39:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3ab3d:	03 d0                	add    dx,ax
   3ab3f:	52                   	push   dx
   3ab40:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3ab43:	48                   	dec    ax
   3ab44:	f7 2e 47 bb          	imul   WORD PTR ds:0xbb47
   3ab48:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3ab4c:	03 d0                	add    dx,ax
   3ab4e:	52                   	push   dx
   3ab4f:	9a 08 09 28 00       	call   0x28:0x908
   3ab54:	83 c4 0c             	add    sp,0xc
   3ab57:	9a 45 2e 00 00       	call   0x0:0x2e45
   3ab5c:	0b c0                	or     ax,ax
   3ab5e:	75 21                	jne    0x3ab81
   3ab60:	b8 88 01             	mov    ax,0x188
   3ab63:	8e c0                	mov    es,ax
   3ab65:	26 83 3e e5 e5 00    	cmp    WORD PTR es:0xe5e5,0x0
   3ab6b:	75 14                	jne    0x3ab81
   3ab6d:	b8 88 01             	mov    ax,0x188
   3ab70:	8e c0                	mov    es,ax
   3ab72:	26 a1 4a e7          	mov    ax,es:0xe74a
   3ab76:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   3ab79:	3d dc 05             	cmp    ax,0x5dc
   3ab7c:	73 03                	jae    0x3ab81
   3ab7e:	e9 0f ff             	jmp    0x3aa90
   3ab81:	b8 88 01             	mov    ax,0x188
   3ab84:	8e c0                	mov    es,ax
   3ab86:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3ab8b:	50                   	push   ax
   3ab8c:	9a 69 00 30 00       	call   0x30:0x69
   3ab91:	59                   	pop    cx
   3ab92:	0e                   	push   cs
   3ab93:	e8 e3 9f             	call   0x34b79
   3ab96:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3ab9b:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3ab9e:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   3aba2:	7f 03                	jg     0x3aba7
   3aba4:	e9 2b fa             	jmp    0x3a5d2
   3aba7:	0e                   	push   cs
   3aba8:	e8 ce 9f             	call   0x34b79
   3abab:	0e                   	push   cs
   3abac:	e8 2f b0             	call   0x35bde
   3abaf:	0e                   	push   cs
   3abb0:	e8 c9 9a             	call   0x3467c
   3abb3:	b8 88 01             	mov    ax,0x188
   3abb6:	8e c0                	mov    es,ax
   3abb8:	26 a0 05 3b          	mov    al,es:0x3b05
   3abbc:	b4 00                	mov    ah,0x0
   3abbe:	0b c0                	or     ax,ax
   3abc0:	75 1d                	jne    0x3abdf
   3abc2:	b8 88 01             	mov    ax,0x188
   3abc5:	8e c0                	mov    es,ax
   3abc7:	26 ff 36 c8 b9       	push   WORD PTR es:0xb9c8
   3abcc:	0e                   	push   cs
   3abcd:	e8 f6 7a             	call   0x326c6
   3abd0:	59                   	pop    cx
   3abd1:	b8 88 01             	mov    ax,0x188
   3abd4:	8e c0                	mov    es,ax
   3abd6:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3abdd:	eb 05                	jmp    0x3abe4
   3abdf:	9a 93 00 10 01       	call   0x110:0x93
   3abe4:	b8 88 01             	mov    ax,0x188
   3abe7:	8e c0                	mov    es,ax
   3abe9:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3abed:	3b 06 51 bb          	cmp    ax,WORD PTR ds:0xbb51
   3abf1:	75 12                	jne    0x3ac05
   3abf3:	b8 88 01             	mov    ax,0x188
   3abf6:	8e c0                	mov    es,ax
   3abf8:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3abfc:	3b 06 4f bb          	cmp    ax,WORD PTR ds:0xbb4f
   3ac00:	75 03                	jne    0x3ac05
   3ac02:	e9 10 01             	jmp    0x3ad15
   3ac05:	0e                   	push   cs
   3ac06:	e8 70 9f             	call   0x34b79
   3ac09:	83 26 5e 3d fb       	and    WORD PTR ds:0x3d5e,0xfffb
   3ac0e:	eb 09                	jmp    0x3ac19
   3ac10:	83 26 5e 3d fb       	and    WORD PTR ds:0x3d5e,0xfffb
   3ac15:	0e                   	push   cs
   3ac16:	e8 60 9f             	call   0x34b79
   3ac19:	6a 02                	push   0x2
   3ac1b:	b8 88 01             	mov    ax,0x188
   3ac1e:	8e c0                	mov    es,ax
   3ac20:	26 a0 eb b9          	mov    al,es:0xb9eb
   3ac24:	b4 00                	mov    ah,0x0
   3ac26:	ba 88 01             	mov    dx,0x188
   3ac29:	8e c2                	mov    es,dx
   3ac2b:	50                   	push   ax
   3ac2c:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3ac30:	5a                   	pop    dx
   3ac31:	f7 ea                	imul   dx
   3ac33:	ba 88 01             	mov    dx,0x188
   3ac36:	8e c2                	mov    es,dx
   3ac38:	26 8b 16 f3 b9       	mov    dx,WORD PTR es:0xb9f3
   3ac3d:	03 d0                	add    dx,ax
   3ac3f:	6b d2 0f             	imul   dx,dx,0xf
   3ac42:	52                   	push   dx
   3ac43:	9a 20 00 30 01       	call   0x130:0x20
   3ac48:	83 c4 04             	add    sp,0x4
   3ac4b:	0a c0                	or     al,al
   3ac4d:	75 c1                	jne    0x3ac10
   3ac4f:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   3ac53:	6b db 1d             	imul   bx,bx,0x1d
   3ac56:	b8 88 01             	mov    ax,0x188
   3ac59:	8e c0                	mov    es,ax
   3ac5b:	26 80 bf 4d 2e 00    	cmp    BYTE PTR es:[bx+0x2e4d],0x0
   3ac61:	74 1e                	je     0x3ac81
   3ac63:	8b 1e 6b bb          	mov    bx,WORD PTR ds:0xbb6b
   3ac67:	6b db 1d             	imul   bx,bx,0x1d
   3ac6a:	b8 88 01             	mov    ax,0x188
   3ac6d:	8e c0                	mov    es,ax
   3ac6f:	26 8a 87 4d 2e       	mov    al,BYTE PTR es:[bx+0x2e4d]
   3ac74:	b4 00                	mov    ah,0x0
   3ac76:	50                   	push   ax
   3ac77:	9a 2a 00 30 01       	call   0x130:0x2a
   3ac7c:	59                   	pop    cx
   3ac7d:	0a c0                	or     al,al
   3ac7f:	75 70                	jne    0x3acf1
   3ac81:	f7 06 5e 3d 08 00    	test   WORD PTR ds:0x3d5e,0x8
   3ac87:	74 35                	je     0x3acbe
   3ac89:	6a 00                	push   0x0
   3ac8b:	68 00 80             	push   0x8000
   3ac8e:	9a 79 17 00 00       	call   0x0:0x1779
   3ac93:	99                   	cwd
   3ac94:	50                   	push   ax
   3ac95:	52                   	push   dx
   3ac96:	33 d2                	xor    dx,dx
   3ac98:	b8 c8 00             	mov    ax,0xc8
   3ac9b:	59                   	pop    cx
   3ac9c:	5b                   	pop    bx
   3ac9d:	9a 42 12 00 00       	call   0x0:0x1242
   3aca2:	52                   	push   dx
   3aca3:	50                   	push   ax
   3aca4:	9a df 12 00 00       	call   0x0:0x12df
   3aca9:	40                   	inc    ax
   3acaa:	3b 06 86 ba          	cmp    ax,WORD PTR ds:0xba86
   3acae:	7f 06                	jg     0x3acb6
   3acb0:	c7 06 6a 3d 01 00    	mov    WORD PTR ds:0x3d6a,0x1
   3acb6:	c7 06 84 ba 00 00    	mov    WORD PTR ds:0xba84,0x0
   3acbc:	eb 33                	jmp    0x3acf1
   3acbe:	6a 00                	push   0x0
   3acc0:	68 00 80             	push   0x8000
   3acc3:	9a 79 17 00 00       	call   0x0:0x1779
   3acc8:	99                   	cwd
   3acc9:	50                   	push   ax
   3acca:	52                   	push   dx
   3accb:	33 d2                	xor    dx,dx
   3accd:	b8 2c 01             	mov    ax,0x12c
   3acd0:	59                   	pop    cx
   3acd1:	5b                   	pop    bx
   3acd2:	9a 42 12 00 00       	call   0x0:0x1242
   3acd7:	52                   	push   dx
   3acd8:	50                   	push   ax
   3acd9:	9a df 12 00 00       	call   0x0:0x12df
   3acde:	40                   	inc    ax
   3acdf:	3b 06 86 ba          	cmp    ax,WORD PTR ds:0xba86
   3ace3:	7f 06                	jg     0x3aceb
   3ace5:	c7 06 6a 3d 01 00    	mov    WORD PTR ds:0x3d6a,0x1
   3aceb:	c7 06 84 ba 01 00    	mov    WORD PTR ds:0xba84,0x1
   3acf1:	b8 88 01             	mov    ax,0x188
   3acf4:	8e c0                	mov    es,ax
   3acf6:	26 a1 f3 b9          	mov    ax,es:0xb9f3
   3acfa:	a3 51 bb             	mov    ds:0xbb51,ax
   3acfd:	b8 88 01             	mov    ax,0x188
   3ad00:	8e c0                	mov    es,ax
   3ad02:	26 a1 f1 b9          	mov    ax,es:0xb9f1
   3ad06:	a3 4f bb             	mov    ds:0xbb4f,ax
   3ad09:	b8 88 01             	mov    ax,0x188
   3ad0c:	8e c0                	mov    es,ax
   3ad0e:	26 c7 06 03 3b 00 00 	mov    WORD PTR es:0x3b03,0x0
   3ad15:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   3ad1a:	eb 16                	jmp    0x3ad32
   3ad1c:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3ad1f:	6b db 5c             	imul   bx,bx,0x5c
   3ad22:	b8 88 01             	mov    ax,0x188
   3ad25:	8e c0                	mov    es,ax
   3ad27:	26 83 bf e0 99 00    	cmp    WORD PTR es:[bx-0x6620],0x0
   3ad2d:	7f 09                	jg     0x3ad38
   3ad2f:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3ad32:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   3ad36:	7c e4                	jl     0x3ad1c
   3ad38:	83 7e fe 05          	cmp    WORD PTR [bp-0x2],0x5
   3ad3c:	75 11                	jne    0x3ad4f
   3ad3e:	9a 2f 00 28 01       	call   0x128:0x2f
   3ad43:	b8 88 01             	mov    ax,0x188
   3ad46:	8e c0                	mov    es,ax
   3ad48:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3ad4f:	68 9c 00             	push   0x9c
   3ad52:	9a 2a 00 30 01       	call   0x130:0x2a
   3ad57:	59                   	pop    cx
   3ad58:	0a c0                	or     al,al
   3ad5a:	74 05                	je     0x3ad61
   3ad5c:	9a 34 00 28 01       	call   0x128:0x34
   3ad61:	83 3e 6a 3d 00       	cmp    WORD PTR ds:0x3d6a,0x0
   3ad66:	75 03                	jne    0x3ad6b
   3ad68:	e9 a4 09             	jmp    0x3b70f
   3ad6b:	c7 06 6a 3d 00 00    	mov    WORD PTR ds:0x3d6a,0x0
   3ad71:	c7 46 fc 00 00       	mov    WORD PTR [bp-0x4],0x0
   3ad76:	e9 ad 02             	jmp    0x3b026
   3ad79:	83 3e 84 ba 02       	cmp    WORD PTR ds:0xba84,0x2
   3ad7e:	75 20                	jne    0x3ada0
   3ad80:	6a 00                	push   0x0
   3ad82:	68 00 80             	push   0x8000
   3ad85:	9a 79 17 00 00       	call   0x0:0x1779
   3ad8a:	99                   	cwd
   3ad8b:	d1 e0                	shl    ax,1
   3ad8d:	d1 d2                	rcl    dx,1
   3ad8f:	52                   	push   dx
   3ad90:	50                   	push   ax
   3ad91:	9a df 12 00 00       	call   0x0:0x12df
   3ad96:	0b c0                	or     ax,ax
   3ad98:	74 06                	je     0x3ada0
   3ad9a:	c7 06 84 ba 01 00    	mov    WORD PTR ds:0xba84,0x1
   3ada0:	83 3e 84 ba 02       	cmp    WORD PTR ds:0xba84,0x2
   3ada5:	7c 03                	jl     0x3adaa
   3ada7:	e9 a8 01             	jmp    0x3af52
   3adaa:	1e                   	push   ds
   3adab:	68 c1 47             	push   0x47c1
   3adae:	68 57 0c             	push   0xc57
   3adb1:	68 88 01             	push   0x188
   3adb4:	68 26 de             	push   0xde26
   3adb7:	9a 81 0a 20 00       	call   0x20:0xa81
   3adbc:	83 c4 0a             	add    sp,0xa
   3adbf:	b8 88 01             	mov    ax,0x188
   3adc2:	8e c0                	mov    es,ax
   3adc4:	26 c4 1e 3f e3       	les    bx,DWORD PTR es:0xe33f
   3adc9:	26 ff 37             	push   WORD PTR es:[bx]
   3adcc:	6a 00                	push   0x0
   3adce:	68 00 80             	push   0x8000
   3add1:	9a 79 17 00 00       	call   0x0:0x1779
   3add6:	99                   	cwd
   3add7:	b1 02                	mov    cl,0x2
   3add9:	9a 8d 13 00 00       	call   0x0:0x138d
   3adde:	52                   	push   dx
   3addf:	50                   	push   ax
   3ade0:	9a df 12 00 00       	call   0x0:0x12df
   3ade5:	8b 16 84 ba          	mov    dx,WORD PTR ds:0xba84
   3ade9:	c1 e2 02             	shl    dx,0x2
   3adec:	03 c2                	add    ax,dx
   3adee:	05 1d 00             	add    ax,0x1d
   3adf1:	99                   	cwd
   3adf2:	52                   	push   dx
   3adf3:	50                   	push   ax
   3adf4:	6a 01                	push   0x1
   3adf6:	9a 88 06 98 00       	call   0x98:0x688
   3adfb:	8b d8                	mov    bx,ax
   3adfd:	8e c2                	mov    es,dx
   3adff:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3ae02:	b4 00                	mov    ah,0x0
   3ae04:	ba 88 01             	mov    dx,0x188
   3ae07:	8e c2                	mov    es,dx
   3ae09:	26 a3 e0 5b          	mov    es:0x5be0,ax
   3ae0d:	68 88 01             	push   0x188
   3ae10:	68 26 de             	push   0xde26
   3ae13:	9a 22 0b 20 00       	call   0x20:0xb22
   3ae18:	83 c4 04             	add    sp,0x4
   3ae1b:	6a 00                	push   0x0
   3ae1d:	68 00 80             	push   0x8000
   3ae20:	9a 79 17 00 00       	call   0x0:0x1779
   3ae25:	99                   	cwd
   3ae26:	bb 88 01             	mov    bx,0x188
   3ae29:	8e c3                	mov    es,bx
   3ae2b:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3ae30:	6b db 06             	imul   bx,bx,0x6
   3ae33:	b9 88 01             	mov    cx,0x188
   3ae36:	8e c1                	mov    es,cx
   3ae38:	26 8a 9f 94 28       	mov    bl,BYTE PTR es:[bx+0x2894]
   3ae3d:	b7 00                	mov    bh,0x0
   3ae3f:	81 e3 f0 00          	and    bx,0xf0
   3ae43:	c1 fb 04             	sar    bx,0x4
   3ae46:	50                   	push   ax
   3ae47:	8b c3                	mov    ax,bx
   3ae49:	52                   	push   dx
   3ae4a:	99                   	cwd
   3ae4b:	59                   	pop    cx
   3ae4c:	5b                   	pop    bx
   3ae4d:	9a 42 12 00 00       	call   0x0:0x1242
   3ae52:	52                   	push   dx
   3ae53:	50                   	push   ax
   3ae54:	9a df 12 00 00       	call   0x0:0x12df
   3ae59:	ba 88 01             	mov    dx,0x188
   3ae5c:	8e c2                	mov    es,dx
   3ae5e:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3ae63:	6b db 06             	imul   bx,bx,0x6
   3ae66:	ba 88 01             	mov    dx,0x188
   3ae69:	8e c2                	mov    es,dx
   3ae6b:	26 8a 97 94 28       	mov    dl,BYTE PTR es:[bx+0x2894]
   3ae70:	b6 00                	mov    dh,0x0
   3ae72:	03 c2                	add    ax,dx
   3ae74:	25 0f 00             	and    ax,0xf
   3ae77:	ba 88 01             	mov    dx,0x188
   3ae7a:	8e c2                	mov    es,dx
   3ae7c:	26 a3 e2 5b          	mov    es:0x5be2,ax
   3ae80:	b8 88 01             	mov    ax,0x188
   3ae83:	8e c0                	mov    es,ax
   3ae85:	26 c7 06 de 5b 01 00 	mov    WORD PTR es:0x5bde,0x1
   3ae8c:	b8 88 01             	mov    ax,0x188
   3ae8f:	8e c0                	mov    es,ax
   3ae91:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3ae96:	6b db 06             	imul   bx,bx,0x6
   3ae99:	b8 88 01             	mov    ax,0x188
   3ae9c:	8e c0                	mov    es,ax
   3ae9e:	26 8a 87 99 28       	mov    al,BYTE PTR es:[bx+0x2899]
   3aea3:	b4 00                	mov    ah,0x0
   3aea5:	ba 88 01             	mov    dx,0x188
   3aea8:	8e c2                	mov    es,dx
   3aeaa:	26 a3 e6 5b          	mov    es:0x5be6,ax
   3aeae:	0b c0                	or     ax,ax
   3aeb0:	75 03                	jne    0x3aeb5
   3aeb2:	e9 98 00             	jmp    0x3af4d
   3aeb5:	6a 00                	push   0x0
   3aeb7:	68 00 80             	push   0x8000
   3aeba:	9a 79 17 00 00       	call   0x0:0x1779
   3aebf:	99                   	cwd
   3aec0:	50                   	push   ax
   3aec1:	52                   	push   dx
   3aec2:	33 d2                	xor    dx,dx
   3aec4:	b8 03 00             	mov    ax,0x3
   3aec7:	59                   	pop    cx
   3aec8:	5b                   	pop    bx
   3aec9:	9a 42 12 00 00       	call   0x0:0x1242
   3aece:	52                   	push   dx
   3aecf:	50                   	push   ax
   3aed0:	9a df 12 00 00       	call   0x0:0x12df
   3aed5:	0b c0                	or     ax,ax
   3aed7:	74 74                	je     0x3af4d
   3aed9:	6a 00                	push   0x0
   3aedb:	68 00 80             	push   0x8000
   3aede:	9a 79 17 00 00       	call   0x0:0x1779
   3aee3:	99                   	cwd
   3aee4:	bb 88 01             	mov    bx,0x188
   3aee7:	8e c3                	mov    es,bx
   3aee9:	26 8b 1e e6 5b       	mov    bx,WORD PTR es:0x5be6
   3aeee:	6b db 06             	imul   bx,bx,0x6
   3aef1:	b9 88 01             	mov    cx,0x188
   3aef4:	8e c1                	mov    es,cx
   3aef6:	26 8a 9f 94 28       	mov    bl,BYTE PTR es:[bx+0x2894]
   3aefb:	b7 00                	mov    bh,0x0
   3aefd:	81 e3 f0 00          	and    bx,0xf0
   3af01:	c1 fb 04             	sar    bx,0x4
   3af04:	50                   	push   ax
   3af05:	8b c3                	mov    ax,bx
   3af07:	52                   	push   dx
   3af08:	99                   	cwd
   3af09:	59                   	pop    cx
   3af0a:	5b                   	pop    bx
   3af0b:	9a 42 12 00 00       	call   0x0:0x1242
   3af10:	52                   	push   dx
   3af11:	50                   	push   ax
   3af12:	9a df 12 00 00       	call   0x0:0x12df
   3af17:	ba 88 01             	mov    dx,0x188
   3af1a:	8e c2                	mov    es,dx
   3af1c:	26 8b 1e e6 5b       	mov    bx,WORD PTR es:0x5be6
   3af21:	6b db 06             	imul   bx,bx,0x6
   3af24:	ba 88 01             	mov    dx,0x188
   3af27:	8e c2                	mov    es,dx
   3af29:	26 8a 97 94 28       	mov    dl,BYTE PTR es:[bx+0x2894]
   3af2e:	b6 00                	mov    dh,0x0
   3af30:	03 c2                	add    ax,dx
   3af32:	25 0f 00             	and    ax,0xf
   3af35:	ba 88 01             	mov    dx,0x188
   3af38:	8e c2                	mov    es,dx
   3af3a:	26 a3 e8 5b          	mov    es:0x5be8,ax
   3af3e:	b8 88 01             	mov    ax,0x188
   3af41:	8e c0                	mov    es,ax
   3af43:	26 c7 06 e4 5b 01 00 	mov    WORD PTR es:0x5be4,0x1
   3af4a:	e9 96 00             	jmp    0x3afe3
   3af4d:	eb 74                	jmp    0x3afc3
   3af4f:	e9 91 00             	jmp    0x3afe3
   3af52:	b8 88 01             	mov    ax,0x188
   3af55:	8e c0                	mov    es,ax
   3af57:	26 c7 06 e0 5b 1f 00 	mov    WORD PTR es:0x5be0,0x1f
   3af5e:	6a 00                	push   0x0
   3af60:	68 00 80             	push   0x8000
   3af63:	9a 79 17 00 00       	call   0x0:0x1779
   3af68:	99                   	cwd
   3af69:	bb 88 01             	mov    bx,0x188
   3af6c:	8e c3                	mov    es,bx
   3af6e:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3af73:	6b db 06             	imul   bx,bx,0x6
   3af76:	b9 88 01             	mov    cx,0x188
   3af79:	8e c1                	mov    es,cx
   3af7b:	26 8a 9f 94 28       	mov    bl,BYTE PTR es:[bx+0x2894]
   3af80:	b7 00                	mov    bh,0x0
   3af82:	81 e3 f0 00          	and    bx,0xf0
   3af86:	c1 fb 04             	sar    bx,0x4
   3af89:	50                   	push   ax
   3af8a:	8b c3                	mov    ax,bx
   3af8c:	52                   	push   dx
   3af8d:	99                   	cwd
   3af8e:	59                   	pop    cx
   3af8f:	5b                   	pop    bx
   3af90:	9a 42 12 00 00       	call   0x0:0x1242
   3af95:	52                   	push   dx
   3af96:	50                   	push   ax
   3af97:	9a df 12 00 00       	call   0x0:0x12df
   3af9c:	ba 88 01             	mov    dx,0x188
   3af9f:	8e c2                	mov    es,dx
   3afa1:	26 8b 1e e0 5b       	mov    bx,WORD PTR es:0x5be0
   3afa6:	6b db 06             	imul   bx,bx,0x6
   3afa9:	ba 88 01             	mov    dx,0x188
   3afac:	8e c2                	mov    es,dx
   3afae:	26 8a 97 94 28       	mov    dl,BYTE PTR es:[bx+0x2894]
   3afb3:	b6 00                	mov    dh,0x0
   3afb5:	03 c2                	add    ax,dx
   3afb7:	25 0f 00             	and    ax,0xf
   3afba:	ba 88 01             	mov    dx,0x188
   3afbd:	8e c2                	mov    es,dx
   3afbf:	26 a3 e2 5b          	mov    es:0x5be2,ax
   3afc3:	b8 88 01             	mov    ax,0x188
   3afc6:	33 d2                	xor    dx,dx
   3afc8:	8e c0                	mov    es,ax
   3afca:	26 89 16 e8 5b       	mov    WORD PTR es:0x5be8,dx
   3afcf:	8b c2                	mov    ax,dx
   3afd1:	ba 88 01             	mov    dx,0x188
   3afd4:	8e c2                	mov    es,dx
   3afd6:	26 a3 e6 5b          	mov    es:0x5be6,ax
   3afda:	ba 88 01             	mov    dx,0x188
   3afdd:	8e c2                	mov    es,dx
   3afdf:	26 a3 e4 5b          	mov    es:0x5be4,ax
   3afe3:	b8 88 01             	mov    ax,0x188
   3afe6:	33 d2                	xor    dx,dx
   3afe8:	8e c0                	mov    es,ax
   3afea:	26 89 16 ee 5b       	mov    WORD PTR es:0x5bee,dx
   3afef:	8b c2                	mov    ax,dx
   3aff1:	ba 88 01             	mov    dx,0x188
   3aff4:	8e c2                	mov    es,dx
   3aff6:	26 a3 ec 5b          	mov    es:0x5bec,ax
   3affa:	ba 88 01             	mov    dx,0x188
   3affd:	8e c2                	mov    es,dx
   3afff:	26 a3 ea 5b          	mov    es:0x5bea,ax
   3b003:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b008:	eb 16                	jmp    0x3b020
   3b00a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b00d:	6b db 06             	imul   bx,bx,0x6
   3b010:	b8 88 01             	mov    ax,0x188
   3b013:	8e c0                	mov    es,ax
   3b015:	26 83 bf da 5b 00    	cmp    WORD PTR es:[bx+0x5bda],0x0
   3b01b:	75 09                	jne    0x3b026
   3b01d:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b020:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b024:	7d e4                	jge    0x3b00a
   3b026:	83 7e fc 00          	cmp    WORD PTR [bp-0x4],0x0
   3b02a:	75 03                	jne    0x3b02f
   3b02c:	e9 4a fd             	jmp    0x3ad79
   3b02f:	6a 01                	push   0x1
   3b031:	b8 88 01             	mov    ax,0x188
   3b034:	8e c0                	mov    es,ax
   3b036:	26 a0 e0 5b          	mov    al,es:0x5be0
   3b03a:	50                   	push   ax
   3b03b:	9a 39 00 30 01       	call   0x130:0x39
   3b040:	83 c4 04             	add    sp,0x4
   3b043:	6a 01                	push   0x1
   3b045:	0e                   	push   cs
   3b046:	e8 ee b8             	call   0x36937
   3b049:	59                   	pop    cx
   3b04a:	52                   	push   dx
   3b04b:	50                   	push   ax
   3b04c:	68 88 01             	push   0x188
   3b04f:	68 cc ba             	push   0xbacc
   3b052:	9a 7a 53 00 00       	call   0x0:0x537a
   3b057:	83 c4 08             	add    sp,0x8
   3b05a:	52                   	push   dx
   3b05b:	50                   	push   ax
   3b05c:	9a cc 49 00 00       	call   0x0:0x49cc
   3b061:	83 c4 04             	add    sp,0x4
   3b064:	3d 68 00             	cmp    ax,0x68
   3b067:	72 15                	jb     0x3b07e
   3b069:	6a 4e                	push   0x4e
   3b06b:	6a 00                	push   0x0
   3b06d:	6a 00                	push   0x0
   3b06f:	68 6e 0c             	push   0xc6e
   3b072:	1e                   	push   ds
   3b073:	68 d0 47             	push   0x47d0
   3b076:	9a 2a 00 58 01       	call   0x158:0x2a
   3b07b:	83 c4 0c             	add    sp,0xc
   3b07e:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b083:	eb 63                	jmp    0x3b0e8
   3b085:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b088:	6b db 06             	imul   bx,bx,0x6
   3b08b:	b8 88 01             	mov    ax,0x188
   3b08e:	8e c0                	mov    es,ax
   3b090:	26 8b 87 da 5b       	mov    ax,WORD PTR es:[bx+0x5bda]
   3b095:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b098:	6b db 06             	imul   bx,bx,0x6
   3b09b:	ba 88 01             	mov    dx,0x188
   3b09e:	8e c2                	mov    es,dx
   3b0a0:	26 89 87 f2 5b       	mov    WORD PTR es:[bx+0x5bf2],ax
   3b0a5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0a8:	6b db 06             	imul   bx,bx,0x6
   3b0ab:	b8 88 01             	mov    ax,0x188
   3b0ae:	8e c0                	mov    es,ax
   3b0b0:	26 8b 87 dc 5b       	mov    ax,WORD PTR es:[bx+0x5bdc]
   3b0b5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0b8:	6b db 06             	imul   bx,bx,0x6
   3b0bb:	ba 88 01             	mov    dx,0x188
   3b0be:	8e c2                	mov    es,dx
   3b0c0:	26 89 87 f4 5b       	mov    WORD PTR es:[bx+0x5bf4],ax
   3b0c5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0c8:	6b db 06             	imul   bx,bx,0x6
   3b0cb:	b8 88 01             	mov    ax,0x188
   3b0ce:	8e c0                	mov    es,ax
   3b0d0:	26 8b 87 d8 5b       	mov    ax,WORD PTR es:[bx+0x5bd8]
   3b0d5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b0d8:	6b db 06             	imul   bx,bx,0x6
   3b0db:	ba 88 01             	mov    dx,0x188
   3b0de:	8e c2                	mov    es,dx
   3b0e0:	26 89 87 f0 5b       	mov    WORD PTR es:[bx+0x5bf0],ax
   3b0e5:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b0e8:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b0ec:	7d 97                	jge    0x3b085
   3b0ee:	6a 00                	push   0x0
   3b0f0:	6a 01                	push   0x1
   3b0f2:	68 88 01             	push   0x188
   3b0f5:	68 cc ba             	push   0xbacc
   3b0f8:	9a 48 29 10 00       	call   0x10:0x2948
   3b0fd:	83 c4 08             	add    sp,0x8
   3b100:	6a 3c                	push   0x3c
   3b102:	9a ca 2d 10 00       	call   0x10:0x2dca
   3b107:	59                   	pop    cx
   3b108:	9a b9 1e 10 00       	call   0x10:0x1eb9
   3b10d:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b112:	e9 f5 00             	jmp    0x3b20a
   3b115:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b118:	6b db 06             	imul   bx,bx,0x6
   3b11b:	b8 88 01             	mov    ax,0x188
   3b11e:	8e c0                	mov    es,ax
   3b120:	26 8b 87 f2 5b       	mov    ax,WORD PTR es:[bx+0x5bf2]
   3b125:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b128:	6b db 06             	imul   bx,bx,0x6
   3b12b:	ba 88 01             	mov    dx,0x188
   3b12e:	8e c2                	mov    es,dx
   3b130:	26 3b 87 da 5b       	cmp    ax,WORD PTR es:[bx+0x5bda]
   3b135:	75 47                	jne    0x3b17e
   3b137:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b13a:	6b db 06             	imul   bx,bx,0x6
   3b13d:	b8 88 01             	mov    ax,0x188
   3b140:	8e c0                	mov    es,ax
   3b142:	26 8b 87 f4 5b       	mov    ax,WORD PTR es:[bx+0x5bf4]
   3b147:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b14a:	6b db 06             	imul   bx,bx,0x6
   3b14d:	ba 88 01             	mov    dx,0x188
   3b150:	8e c2                	mov    es,dx
   3b152:	26 3b 87 dc 5b       	cmp    ax,WORD PTR es:[bx+0x5bdc]
   3b157:	75 25                	jne    0x3b17e
   3b159:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b15c:	6b db 06             	imul   bx,bx,0x6
   3b15f:	b8 88 01             	mov    ax,0x188
   3b162:	8e c0                	mov    es,ax
   3b164:	26 8b 87 f0 5b       	mov    ax,WORD PTR es:[bx+0x5bf0]
   3b169:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b16c:	6b db 06             	imul   bx,bx,0x6
   3b16f:	ba 88 01             	mov    dx,0x188
   3b172:	8e c2                	mov    es,dx
   3b174:	26 3b 87 d8 5b       	cmp    ax,WORD PTR es:[bx+0x5bd8]
   3b179:	75 03                	jne    0x3b17e
   3b17b:	e9 89 00             	jmp    0x3b207
   3b17e:	6a 03                	push   0x3
   3b180:	9a 1e 34 00 00       	call   0x0:0x341e
   3b185:	59                   	pop    cx
   3b186:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b18b:	eb 6f                	jmp    0x3b1fc
   3b18d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b190:	6b db 06             	imul   bx,bx,0x6
   3b193:	b8 88 01             	mov    ax,0x188
   3b196:	8e c0                	mov    es,ax
   3b198:	26 ff b7 d8 5b       	push   WORD PTR es:[bx+0x5bd8]
   3b19d:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1a0:	6b db 06             	imul   bx,bx,0x6
   3b1a3:	b8 88 01             	mov    ax,0x188
   3b1a6:	8e c0                	mov    es,ax
   3b1a8:	26 ff b7 f0 5b       	push   WORD PTR es:[bx+0x5bf0]
   3b1ad:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1b0:	6b db 06             	imul   bx,bx,0x6
   3b1b3:	b8 88 01             	mov    ax,0x188
   3b1b6:	8e c0                	mov    es,ax
   3b1b8:	26 ff b7 dc 5b       	push   WORD PTR es:[bx+0x5bdc]
   3b1bd:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1c0:	6b db 06             	imul   bx,bx,0x6
   3b1c3:	b8 88 01             	mov    ax,0x188
   3b1c6:	8e c0                	mov    es,ax
   3b1c8:	26 ff b7 f4 5b       	push   WORD PTR es:[bx+0x5bf4]
   3b1cd:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1d0:	6b db 06             	imul   bx,bx,0x6
   3b1d3:	b8 88 01             	mov    ax,0x188
   3b1d6:	8e c0                	mov    es,ax
   3b1d8:	26 ff b7 da 5b       	push   WORD PTR es:[bx+0x5bda]
   3b1dd:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b1e0:	6b db 06             	imul   bx,bx,0x6
   3b1e3:	b8 88 01             	mov    ax,0x188
   3b1e6:	8e c0                	mov    es,ax
   3b1e8:	26 ff b7 f2 5b       	push   WORD PTR es:[bx+0x5bf2]
   3b1ed:	1e                   	push   ds
   3b1ee:	68 df 47             	push   0x47df
   3b1f1:	9a 53 42 00 00       	call   0x0:0x4253
   3b1f6:	83 c4 10             	add    sp,0x10
   3b1f9:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b1fc:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b200:	7d 8b                	jge    0x3b18d
   3b202:	9a d7 29 00 00       	call   0x0:0x29d7
   3b207:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b20a:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b20e:	7c 03                	jl     0x3b213
   3b210:	e9 02 ff             	jmp    0x3b115
   3b213:	9a 66 00 10 01       	call   0x110:0x66
   3b218:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b21d:	e9 f5 00             	jmp    0x3b315
   3b220:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b223:	6b db 06             	imul   bx,bx,0x6
   3b226:	b8 88 01             	mov    ax,0x188
   3b229:	8e c0                	mov    es,ax
   3b22b:	26 8b 87 f2 5b       	mov    ax,WORD PTR es:[bx+0x5bf2]
   3b230:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b233:	6b db 06             	imul   bx,bx,0x6
   3b236:	ba 88 01             	mov    dx,0x188
   3b239:	8e c2                	mov    es,dx
   3b23b:	26 3b 87 da 5b       	cmp    ax,WORD PTR es:[bx+0x5bda]
   3b240:	75 47                	jne    0x3b289
   3b242:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b245:	6b db 06             	imul   bx,bx,0x6
   3b248:	b8 88 01             	mov    ax,0x188
   3b24b:	8e c0                	mov    es,ax
   3b24d:	26 8b 87 f4 5b       	mov    ax,WORD PTR es:[bx+0x5bf4]
   3b252:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b255:	6b db 06             	imul   bx,bx,0x6
   3b258:	ba 88 01             	mov    dx,0x188
   3b25b:	8e c2                	mov    es,dx
   3b25d:	26 3b 87 dc 5b       	cmp    ax,WORD PTR es:[bx+0x5bdc]
   3b262:	75 25                	jne    0x3b289
   3b264:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b267:	6b db 06             	imul   bx,bx,0x6
   3b26a:	b8 88 01             	mov    ax,0x188
   3b26d:	8e c0                	mov    es,ax
   3b26f:	26 8b 87 f0 5b       	mov    ax,WORD PTR es:[bx+0x5bf0]
   3b274:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b277:	6b db 06             	imul   bx,bx,0x6
   3b27a:	ba 88 01             	mov    dx,0x188
   3b27d:	8e c2                	mov    es,dx
   3b27f:	26 3b 87 d8 5b       	cmp    ax,WORD PTR es:[bx+0x5bd8]
   3b284:	75 03                	jne    0x3b289
   3b286:	e9 89 00             	jmp    0x3b312
   3b289:	6a 03                	push   0x3
   3b28b:	9a 1e 34 00 00       	call   0x0:0x341e
   3b290:	59                   	pop    cx
   3b291:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b296:	eb 6f                	jmp    0x3b307
   3b298:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b29b:	6b db 06             	imul   bx,bx,0x6
   3b29e:	b8 88 01             	mov    ax,0x188
   3b2a1:	8e c0                	mov    es,ax
   3b2a3:	26 ff b7 d8 5b       	push   WORD PTR es:[bx+0x5bd8]
   3b2a8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2ab:	6b db 06             	imul   bx,bx,0x6
   3b2ae:	b8 88 01             	mov    ax,0x188
   3b2b1:	8e c0                	mov    es,ax
   3b2b3:	26 ff b7 f0 5b       	push   WORD PTR es:[bx+0x5bf0]
   3b2b8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2bb:	6b db 06             	imul   bx,bx,0x6
   3b2be:	b8 88 01             	mov    ax,0x188
   3b2c1:	8e c0                	mov    es,ax
   3b2c3:	26 ff b7 dc 5b       	push   WORD PTR es:[bx+0x5bdc]
   3b2c8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2cb:	6b db 06             	imul   bx,bx,0x6
   3b2ce:	b8 88 01             	mov    ax,0x188
   3b2d1:	8e c0                	mov    es,ax
   3b2d3:	26 ff b7 f4 5b       	push   WORD PTR es:[bx+0x5bf4]
   3b2d8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2db:	6b db 06             	imul   bx,bx,0x6
   3b2de:	b8 88 01             	mov    ax,0x188
   3b2e1:	8e c0                	mov    es,ax
   3b2e3:	26 ff b7 da 5b       	push   WORD PTR es:[bx+0x5bda]
   3b2e8:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b2eb:	6b db 06             	imul   bx,bx,0x6
   3b2ee:	b8 88 01             	mov    ax,0x188
   3b2f1:	8e c0                	mov    es,ax
   3b2f3:	26 ff b7 f2 5b       	push   WORD PTR es:[bx+0x5bf2]
   3b2f8:	1e                   	push   ds
   3b2f9:	68 27 48             	push   0x4827
   3b2fc:	9a 53 42 00 00       	call   0x0:0x4253
   3b301:	83 c4 10             	add    sp,0x10
   3b304:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b307:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b30b:	7d 8b                	jge    0x3b298
   3b30d:	9a d7 29 00 00       	call   0x0:0x29d7
   3b312:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b315:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b319:	7c 03                	jl     0x3b31e
   3b31b:	e9 02 ff             	jmp    0x3b220
   3b31e:	b8 88 01             	mov    ax,0x188
   3b321:	8e c0                	mov    es,ax
   3b323:	26 a1 1a 73          	mov    ax,es:0x731a
   3b327:	f7 d8                	neg    ax
   3b329:	50                   	push   ax
   3b32a:	b8 88 01             	mov    ax,0x188
   3b32d:	8e c0                	mov    es,ax
   3b32f:	26 a1 18 73          	mov    ax,es:0x7318
   3b333:	f7 d8                	neg    ax
   3b335:	50                   	push   ax
   3b336:	68 e8 03             	push   0x3e8
   3b339:	9a 3f 07 30 00       	call   0x30:0x73f
   3b33e:	83 c4 06             	add    sp,0x6
   3b341:	b8 88 01             	mov    ax,0x188
   3b344:	8e c0                	mov    es,ax
   3b346:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   3b34c:	74 34                	je     0x3b382
   3b34e:	9a 96 12 68 00       	call   0x68:0x1296
   3b353:	a1 75 bb             	mov    ax,ds:0xbb75
   3b356:	0b 06 77 bb          	or     ax,WORD PTR ds:0xbb77
   3b35a:	74 26                	je     0x3b382
   3b35c:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3b360:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   3b364:	9a 03 00 80 00       	call   0x80:0x3
   3b369:	ff 36 77 bb          	push   WORD PTR ds:0xbb77
   3b36d:	ff 36 75 bb          	push   WORD PTR ds:0xbb75
   3b371:	9a da 00 58 00       	call   0x58:0xda
   3b376:	c7 06 77 bb 00 00    	mov    WORD PTR ds:0xbb77,0x0
   3b37c:	c7 06 75 bb 00 00    	mov    WORD PTR ds:0xbb75,0x0
   3b382:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b387:	e9 f5 00             	jmp    0x3b47f
   3b38a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b38d:	6b db 06             	imul   bx,bx,0x6
   3b390:	b8 88 01             	mov    ax,0x188
   3b393:	8e c0                	mov    es,ax
   3b395:	26 8b 87 f2 5b       	mov    ax,WORD PTR es:[bx+0x5bf2]
   3b39a:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b39d:	6b db 06             	imul   bx,bx,0x6
   3b3a0:	ba 88 01             	mov    dx,0x188
   3b3a3:	8e c2                	mov    es,dx
   3b3a5:	26 3b 87 da 5b       	cmp    ax,WORD PTR es:[bx+0x5bda]
   3b3aa:	75 47                	jne    0x3b3f3
   3b3ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3af:	6b db 06             	imul   bx,bx,0x6
   3b3b2:	b8 88 01             	mov    ax,0x188
   3b3b5:	8e c0                	mov    es,ax
   3b3b7:	26 8b 87 f4 5b       	mov    ax,WORD PTR es:[bx+0x5bf4]
   3b3bc:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3bf:	6b db 06             	imul   bx,bx,0x6
   3b3c2:	ba 88 01             	mov    dx,0x188
   3b3c5:	8e c2                	mov    es,dx
   3b3c7:	26 3b 87 dc 5b       	cmp    ax,WORD PTR es:[bx+0x5bdc]
   3b3cc:	75 25                	jne    0x3b3f3
   3b3ce:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3d1:	6b db 06             	imul   bx,bx,0x6
   3b3d4:	b8 88 01             	mov    ax,0x188
   3b3d7:	8e c0                	mov    es,ax
   3b3d9:	26 8b 87 f0 5b       	mov    ax,WORD PTR es:[bx+0x5bf0]
   3b3de:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b3e1:	6b db 06             	imul   bx,bx,0x6
   3b3e4:	ba 88 01             	mov    dx,0x188
   3b3e7:	8e c2                	mov    es,dx
   3b3e9:	26 3b 87 d8 5b       	cmp    ax,WORD PTR es:[bx+0x5bd8]
   3b3ee:	75 03                	jne    0x3b3f3
   3b3f0:	e9 89 00             	jmp    0x3b47c
   3b3f3:	6a 03                	push   0x3
   3b3f5:	9a 1e 34 00 00       	call   0x0:0x341e
   3b3fa:	59                   	pop    cx
   3b3fb:	c7 46 fc 03 00       	mov    WORD PTR [bp-0x4],0x3
   3b400:	eb 6f                	jmp    0x3b471
   3b402:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b405:	6b db 06             	imul   bx,bx,0x6
   3b408:	b8 88 01             	mov    ax,0x188
   3b40b:	8e c0                	mov    es,ax
   3b40d:	26 ff b7 d8 5b       	push   WORD PTR es:[bx+0x5bd8]
   3b412:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b415:	6b db 06             	imul   bx,bx,0x6
   3b418:	b8 88 01             	mov    ax,0x188
   3b41b:	8e c0                	mov    es,ax
   3b41d:	26 ff b7 f0 5b       	push   WORD PTR es:[bx+0x5bf0]
   3b422:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b425:	6b db 06             	imul   bx,bx,0x6
   3b428:	b8 88 01             	mov    ax,0x188
   3b42b:	8e c0                	mov    es,ax
   3b42d:	26 ff b7 dc 5b       	push   WORD PTR es:[bx+0x5bdc]
   3b432:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b435:	6b db 06             	imul   bx,bx,0x6
   3b438:	b8 88 01             	mov    ax,0x188
   3b43b:	8e c0                	mov    es,ax
   3b43d:	26 ff b7 f4 5b       	push   WORD PTR es:[bx+0x5bf4]
   3b442:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b445:	6b db 06             	imul   bx,bx,0x6
   3b448:	b8 88 01             	mov    ax,0x188
   3b44b:	8e c0                	mov    es,ax
   3b44d:	26 ff b7 da 5b       	push   WORD PTR es:[bx+0x5bda]
   3b452:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b455:	6b db 06             	imul   bx,bx,0x6
   3b458:	b8 88 01             	mov    ax,0x188
   3b45b:	8e c0                	mov    es,ax
   3b45d:	26 ff b7 f2 5b       	push   WORD PTR es:[bx+0x5bf2]
   3b462:	1e                   	push   ds
   3b463:	68 6f 48             	push   0x486f
   3b466:	9a 53 42 00 00       	call   0x0:0x4253
   3b46b:	83 c4 10             	add    sp,0x10
   3b46e:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b471:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b475:	7d 8b                	jge    0x3b402
   3b477:	9a d7 29 00 00       	call   0x0:0x29d7
   3b47c:	ff 4e fc             	dec    WORD PTR [bp-0x4]
   3b47f:	83 7e fc 01          	cmp    WORD PTR [bp-0x4],0x1
   3b483:	7c 03                	jl     0x3b488
   3b485:	e9 02 ff             	jmp    0x3b38a
   3b488:	b8 88 01             	mov    ax,0x188
   3b48b:	8e c0                	mov    es,ax
   3b48d:	26 c7 06 2e 63 00 00 	mov    WORD PTR es:0x632e,0x0
   3b494:	9a 38 01 38 01       	call   0x138:0x138
   3b499:	6a 00                	push   0x0
   3b49b:	ff 36 6b bb          	push   WORD PTR ds:0xbb6b
   3b49f:	0e                   	push   cs
   3b4a0:	e8 94 83             	call   0x33837
   3b4a3:	83 c4 04             	add    sp,0x4
   3b4a6:	0e                   	push   cs
   3b4a7:	e8 87 8f             	call   0x34431
   3b4aa:	b8 88 01             	mov    ax,0x188
   3b4ad:	8e c0                	mov    es,ax
   3b4af:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3b4b6:	b8 88 01             	mov    ax,0x188
   3b4b9:	8e c0                	mov    es,ax
   3b4bb:	26 83 3e 2e 63 02    	cmp    WORD PTR es:0x632e,0x2
   3b4c1:	75 14                	jne    0x3b4d7
   3b4c3:	9a 2f 00 28 01       	call   0x128:0x2f
   3b4c8:	b8 88 01             	mov    ax,0x188
   3b4cb:	8e c0                	mov    es,ax
   3b4cd:	26 c7 06 c8 b9 00 00 	mov    WORD PTR es:0xb9c8,0x0
   3b4d4:	e9 04 02             	jmp    0x3b6db
   3b4d7:	b8 88 01             	mov    ax,0x188
   3b4da:	33 d2                	xor    dx,dx
   3b4dc:	8e c0                	mov    es,ax
   3b4de:	26 89 16 a6 bb       	mov    WORD PTR es:0xbba6,dx
   3b4e3:	8b c2                	mov    ax,dx
   3b4e5:	ba 88 01             	mov    dx,0x188
   3b4e8:	8e c2                	mov    es,dx
   3b4ea:	26 a3 a4 bb          	mov    es:0xbba4,ax
   3b4ee:	ba 88 01             	mov    dx,0x188
   3b4f1:	8e c2                	mov    es,dx
   3b4f3:	26 a3 a2 bb          	mov    es:0xbba2,ax
   3b4f7:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3b4fc:	e9 47 01             	jmp    0x3b646
   3b4ff:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b502:	6b db 06             	imul   bx,bx,0x6
   3b505:	b8 88 01             	mov    ax,0x188
   3b508:	8e c0                	mov    es,ax
   3b50a:	26 83 bf d8 5b 00    	cmp    WORD PTR es:[bx+0x5bd8],0x0
   3b510:	75 03                	jne    0x3b515
   3b512:	e9 2e 01             	jmp    0x3b643
   3b515:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b518:	6b db 06             	imul   bx,bx,0x6
   3b51b:	b8 88 01             	mov    ax,0x188
   3b51e:	8e c0                	mov    es,ax
   3b520:	26 83 bf da 5b 64    	cmp    WORD PTR es:[bx+0x5bda],0x64
   3b526:	7c 03                	jl     0x3b52b
   3b528:	e9 18 01             	jmp    0x3b643
   3b52b:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b52e:	6b db 06             	imul   bx,bx,0x6
   3b531:	b8 88 01             	mov    ax,0x188
   3b534:	8e c0                	mov    es,ax
   3b536:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b53b:	6b db 06             	imul   bx,bx,0x6
   3b53e:	b8 88 01             	mov    ax,0x188
   3b541:	ba 94 28             	mov    dx,0x2894
   3b544:	42                   	inc    dx
   3b545:	03 da                	add    bx,dx
   3b547:	8e c0                	mov    es,ax
   3b549:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3b54c:	b4 00                	mov    ah,0x0
   3b54e:	a3 57 bb             	mov    ds:0xbb57,ax
   3b551:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b554:	6b db 06             	imul   bx,bx,0x6
   3b557:	b8 88 01             	mov    ax,0x188
   3b55a:	8e c0                	mov    es,ax
   3b55c:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b561:	6b db 06             	imul   bx,bx,0x6
   3b564:	b8 88 01             	mov    ax,0x188
   3b567:	ba 94 28             	mov    dx,0x2894
   3b56a:	83 c2 02             	add    dx,0x2
   3b56d:	03 da                	add    bx,dx
   3b56f:	8e c0                	mov    es,ax
   3b571:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3b574:	b4 00                	mov    ah,0x0
   3b576:	a3 59 bb             	mov    ds:0xbb59,ax
   3b579:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b57c:	6b db 06             	imul   bx,bx,0x6
   3b57f:	b8 88 01             	mov    ax,0x188
   3b582:	8e c0                	mov    es,ax
   3b584:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b589:	6b db 06             	imul   bx,bx,0x6
   3b58c:	b8 88 01             	mov    ax,0x188
   3b58f:	ba 94 28             	mov    dx,0x2894
   3b592:	83 c2 03             	add    dx,0x3
   3b595:	03 da                	add    bx,dx
   3b597:	8e c0                	mov    es,ax
   3b599:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   3b59c:	b4 00                	mov    ah,0x0
   3b59e:	a3 5b bb             	mov    ds:0xbb5b,ax
   3b5a1:	6a 00                	push   0x0
   3b5a3:	68 00 80             	push   0x8000
   3b5a6:	9a 79 17 00 00       	call   0x0:0x1779
   3b5ab:	99                   	cwd
   3b5ac:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b5af:	6b db 06             	imul   bx,bx,0x6
   3b5b2:	b9 88 01             	mov    cx,0x188
   3b5b5:	8e c1                	mov    es,cx
   3b5b7:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b5bc:	6b db 06             	imul   bx,bx,0x6
   3b5bf:	b9 88 01             	mov    cx,0x188
   3b5c2:	8e c1                	mov    es,cx
   3b5c4:	26 8a 9f 98 28       	mov    bl,BYTE PTR es:[bx+0x2898]
   3b5c9:	b7 00                	mov    bh,0x0
   3b5cb:	81 e3 f0 00          	and    bx,0xf0
   3b5cf:	c1 fb 04             	sar    bx,0x4
   3b5d2:	50                   	push   ax
   3b5d3:	8b c3                	mov    ax,bx
   3b5d5:	52                   	push   dx
   3b5d6:	99                   	cwd
   3b5d7:	59                   	pop    cx
   3b5d8:	5b                   	pop    bx
   3b5d9:	9a 42 12 00 00       	call   0x0:0x1242
   3b5de:	52                   	push   dx
   3b5df:	50                   	push   ax
   3b5e0:	9a df 12 00 00       	call   0x0:0x12df
   3b5e5:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b5e8:	6b db 06             	imul   bx,bx,0x6
   3b5eb:	ba 88 01             	mov    dx,0x188
   3b5ee:	8e c2                	mov    es,dx
   3b5f0:	26 8b 9f da 5b       	mov    bx,WORD PTR es:[bx+0x5bda]
   3b5f5:	6b db 06             	imul   bx,bx,0x6
   3b5f8:	ba 88 01             	mov    dx,0x188
   3b5fb:	b9 94 28             	mov    cx,0x2894
   3b5fe:	83 c1 04             	add    cx,0x4
   3b601:	03 d9                	add    bx,cx
   3b603:	8e c2                	mov    es,dx
   3b605:	26 8a 17             	mov    dl,BYTE PTR es:[bx]
   3b608:	b6 00                	mov    dh,0x0
   3b60a:	03 c2                	add    ax,dx
   3b60c:	25 0f 00             	and    ax,0xf
   3b60f:	ba 88 01             	mov    dx,0x188
   3b612:	8e c2                	mov    es,dx
   3b614:	26 a3 a6 bb          	mov    es:0xbba6,ax
   3b618:	6a 00                	push   0x0
   3b61a:	68 00 80             	push   0x8000
   3b61d:	9a 79 17 00 00       	call   0x0:0x1779
   3b622:	99                   	cwd
   3b623:	d1 e0                	shl    ax,1
   3b625:	d1 d2                	rcl    dx,1
   3b627:	52                   	push   dx
   3b628:	50                   	push   ax
   3b629:	9a df 12 00 00       	call   0x0:0x12df
   3b62e:	0b c0                	or     ax,ax
   3b630:	74 11                	je     0x3b643
   3b632:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b635:	d1 e3                	shl    bx,1
   3b637:	b8 88 01             	mov    ax,0x188
   3b63a:	8e c0                	mov    es,ax
   3b63c:	26 c7 87 55 bb 00 00 	mov    WORD PTR es:[bx-0x44ab],0x0
   3b643:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b646:	83 7e fc 03          	cmp    WORD PTR [bp-0x4],0x3
   3b64a:	7f 03                	jg     0x3b64f
   3b64c:	e9 b0 fe             	jmp    0x3b4ff
   3b64f:	b8 88 01             	mov    ax,0x188
   3b652:	8e c0                	mov    es,ax
   3b654:	26 83 3e a6 bb 00    	cmp    WORD PTR es:0xbba6,0x0
   3b65a:	75 15                	jne    0x3b671
   3b65c:	83 3e 57 bb 00       	cmp    WORD PTR ds:0xbb57,0x0
   3b661:	75 0e                	jne    0x3b671
   3b663:	83 3e 59 bb 00       	cmp    WORD PTR ds:0xbb59,0x0
   3b668:	75 07                	jne    0x3b671
   3b66a:	83 3e 5b bb 00       	cmp    WORD PTR ds:0xbb5b,0x0
   3b66f:	74 08                	je     0x3b679
   3b671:	6a 00                	push   0x0
   3b673:	9a 6b 00 30 01       	call   0x130:0x6b
   3b678:	59                   	pop    cx
   3b679:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3b67e:	eb 55                	jmp    0x3b6d5
   3b680:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   3b685:	eb 1c                	jmp    0x3b6a3
   3b687:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3b68a:	6b db 28             	imul   bx,bx,0x28
   3b68d:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b690:	d1 e0                	shl    ax,1
   3b692:	03 d8                	add    bx,ax
   3b694:	b8 88 01             	mov    ax,0x188
   3b697:	8e c0                	mov    es,ax
   3b699:	26 c7 87 88 a0 00 00 	mov    WORD PTR es:[bx-0x5f78],0x0
   3b6a0:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   3b6a3:	83 7e f8 1d          	cmp    WORD PTR [bp-0x8],0x1d
   3b6a7:	7c de                	jl     0x3b687
   3b6a9:	c7 46 f8 01 00       	mov    WORD PTR [bp-0x8],0x1
   3b6ae:	eb 1c                	jmp    0x3b6cc
   3b6b0:	8b 5e f8             	mov    bx,WORD PTR [bp-0x8]
   3b6b3:	6b db 2e             	imul   bx,bx,0x2e
   3b6b6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b6b9:	d1 e0                	shl    ax,1
   3b6bb:	03 d8                	add    bx,ax
   3b6bd:	b8 88 01             	mov    ax,0x188
   3b6c0:	8e c0                	mov    es,ax
   3b6c2:	26 c7 87 18 9f 00 00 	mov    WORD PTR es:[bx-0x60e8],0x0
   3b6c9:	ff 46 f8             	inc    WORD PTR [bp-0x8]
   3b6cc:	83 7e f8 08          	cmp    WORD PTR [bp-0x8],0x8
   3b6d0:	7c de                	jl     0x3b6b0
   3b6d2:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b6d5:	83 7e fc 14          	cmp    WORD PTR [bp-0x4],0x14
   3b6d9:	7c a5                	jl     0x3b680
   3b6db:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   3b6e0:	eb 27                	jmp    0x3b709
   3b6e2:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b6e5:	6b db 06             	imul   bx,bx,0x6
   3b6e8:	b8 88 01             	mov    ax,0x188
   3b6eb:	33 d2                	xor    dx,dx
   3b6ed:	8e c0                	mov    es,ax
   3b6ef:	26 89 97 dc 5b       	mov    WORD PTR es:[bx+0x5bdc],dx
   3b6f4:	8b c2                	mov    ax,dx
   3b6f6:	8b 5e fc             	mov    bx,WORD PTR [bp-0x4]
   3b6f9:	6b db 06             	imul   bx,bx,0x6
   3b6fc:	ba 88 01             	mov    dx,0x188
   3b6ff:	8e c2                	mov    es,dx
   3b701:	26 89 87 da 5b       	mov    WORD PTR es:[bx+0x5bda],ax
   3b706:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b709:	83 7e fc 04          	cmp    WORD PTR [bp-0x4],0x4
   3b70d:	7c d3                	jl     0x3b6e2
   3b70f:	b8 88 01             	mov    ax,0x188
   3b712:	8e c0                	mov    es,ax
   3b714:	26 ff 36 62 96       	push   WORD PTR es:0x9662
   3b719:	26 ff 36 60 96       	push   WORD PTR es:0x9660
   3b71e:	b8 88 01             	mov    ax,0x188
   3b721:	8e c0                	mov    es,ax
   3b723:	26 ff 1e 4c 96       	call   DWORD PTR es:0x964c
   3b728:	83 c4 04             	add    sp,0x4
   3b72b:	8a 46 f2             	mov    al,BYTE PTR [bp-0xe]
   3b72e:	b4 00                	mov    ah,0x0
   3b730:	05 f4 01             	add    ax,0x1f4
   3b733:	ba 88 01             	mov    dx,0x188
   3b736:	8e c2                	mov    es,dx
   3b738:	26 8b 16 4a e7       	mov    dx,WORD PTR es:0xe74a
   3b73d:	2b 56 f6             	sub    dx,WORD PTR [bp-0xa]
   3b740:	3b c2                	cmp    ax,dx
   3b742:	72 03                	jb     0x3b747
   3b744:	e9 80 00             	jmp    0x3b7c7
   3b747:	80 7e f3 00          	cmp    BYTE PTR [bp-0xd],0x0
   3b74b:	74 7a                	je     0x3b7c7
   3b74d:	c6 46 f3 00          	mov    BYTE PTR [bp-0xd],0x0
   3b751:	b8 88 01             	mov    ax,0x188
   3b754:	8e c0                	mov    es,ax
   3b756:	26 a1 4a e7          	mov    ax,es:0xe74a
   3b75a:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3b75d:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b760:	fe c0                	inc    al
   3b762:	50                   	push   ax
   3b763:	9a c7 05 30 00       	call   0x30:0x5c7
   3b768:	59                   	pop    cx
   3b769:	0a c0                	or     al,al
   3b76b:	74 05                	je     0x3b772
   3b76d:	9a 04 02 30 00       	call   0x30:0x204
   3b772:	68 e0 01             	push   0x1e0
   3b775:	68 d0 02             	push   0x2d0
   3b778:	6a 00                	push   0x0
   3b77a:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b77d:	04 47                	add    al,0x47
   3b77f:	50                   	push   ax
   3b780:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b783:	b4 00                	mov    ah,0x0
   3b785:	50                   	push   ax
   3b786:	a1 45 bb             	mov    ax,ds:0xbb45
   3b789:	5a                   	pop    dx
   3b78a:	f7 ea                	imul   dx
   3b78c:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3b790:	03 d0                	add    dx,ax
   3b792:	52                   	push   dx
   3b793:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b796:	b4 00                	mov    ah,0x0
   3b798:	50                   	push   ax
   3b799:	a1 47 bb             	mov    ax,ds:0xbb47
   3b79c:	5a                   	pop    dx
   3b79d:	f7 ea                	imul   dx
   3b79f:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3b7a3:	03 d0                	add    dx,ax
   3b7a5:	52                   	push   dx
   3b7a6:	6a 20                	push   0x20
   3b7a8:	6a 20                	push   0x20
   3b7aa:	6a 00                	push   0x0
   3b7ac:	6a 00                	push   0x0
   3b7ae:	9a 30 04 28 00       	call   0x28:0x430
   3b7b3:	83 c4 14             	add    sp,0x14
   3b7b6:	b8 88 01             	mov    ax,0x188
   3b7b9:	8e c0                	mov    es,ax
   3b7bb:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3b7c0:	50                   	push   ax
   3b7c1:	9a 69 00 30 00       	call   0x30:0x69
   3b7c6:	59                   	pop    cx
   3b7c7:	b8 88 01             	mov    ax,0x188
   3b7ca:	8e c0                	mov    es,ax
   3b7cc:	26 a1 4a e7          	mov    ax,es:0xe74a
   3b7d0:	2b 46 f6             	sub    ax,WORD PTR [bp-0xa]
   3b7d3:	3d e8 03             	cmp    ax,0x3e8
   3b7d6:	77 03                	ja     0x3b7db
   3b7d8:	e9 8b ec             	jmp    0x3a466
   3b7db:	8a 46 f3             	mov    al,BYTE PTR [bp-0xd]
   3b7de:	b4 00                	mov    ah,0x0
   3b7e0:	0b c0                	or     ax,ax
   3b7e2:	74 03                	je     0x3b7e7
   3b7e4:	e9 7f ec             	jmp    0x3a466
   3b7e7:	b8 88 01             	mov    ax,0x188
   3b7ea:	8e c0                	mov    es,ax
   3b7ec:	26 a1 4a e7          	mov    ax,es:0xe74a
   3b7f0:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   3b7f3:	6a 00                	push   0x0
   3b7f5:	68 00 80             	push   0x8000
   3b7f8:	9a 79 17 00 00       	call   0x0:0x1779
   3b7fd:	99                   	cwd
   3b7fe:	50                   	push   ax
   3b7ff:	52                   	push   dx
   3b800:	33 d2                	xor    dx,dx
   3b802:	b8 14 00             	mov    ax,0x14
   3b805:	59                   	pop    cx
   3b806:	5b                   	pop    bx
   3b807:	9a 42 12 00 00       	call   0x0:0x1242
   3b80c:	52                   	push   dx
   3b80d:	50                   	push   ax
   3b80e:	9a df 12 00 00       	call   0x0:0x12df
   3b813:	0b c0                	or     ax,ax
   3b815:	74 03                	je     0x3b81a
   3b817:	e9 4c ec             	jmp    0x3a466
   3b81a:	c6 46 f3 01          	mov    BYTE PTR [bp-0xd],0x1
   3b81e:	6a 00                	push   0x0
   3b820:	68 00 80             	push   0x8000
   3b823:	9a 79 17 00 00       	call   0x0:0x1779
   3b828:	99                   	cwd
   3b829:	50                   	push   ax
   3b82a:	52                   	push   dx
   3b82b:	33 d2                	xor    dx,dx
   3b82d:	b8 f4 01             	mov    ax,0x1f4
   3b830:	59                   	pop    cx
   3b831:	5b                   	pop    bx
   3b832:	9a 42 12 00 00       	call   0x0:0x1242
   3b837:	52                   	push   dx
   3b838:	50                   	push   ax
   3b839:	9a df 12 00 00       	call   0x0:0x12df
   3b83e:	88 46 f2             	mov    BYTE PTR [bp-0xe],al
   3b841:	6a 00                	push   0x0
   3b843:	68 00 80             	push   0x8000
   3b846:	9a 79 17 00 00       	call   0x0:0x1779
   3b84b:	99                   	cwd
   3b84c:	b1 02                	mov    cl,0x2
   3b84e:	9a 8d 13 00 00       	call   0x0:0x138d
   3b853:	52                   	push   dx
   3b854:	50                   	push   ax
   3b855:	9a df 12 00 00       	call   0x0:0x12df
   3b85a:	88 46 f1             	mov    BYTE PTR [bp-0xf],al
   3b85d:	b4 00                	mov    ah,0x0
   3b85f:	6b c0 5c             	imul   ax,ax,0x5c
   3b862:	ba 88 01             	mov    dx,0x188
   3b865:	8b d8                	mov    bx,ax
   3b867:	8e c2                	mov    es,dx
   3b869:	26 83 bf 3c 9a 00    	cmp    WORD PTR es:[bx-0x65c4],0x0
   3b86f:	7f 53                	jg     0x3b8c4
   3b871:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b874:	b4 00                	mov    ah,0x0
   3b876:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   3b879:	eb 1e                	jmp    0x3b899
   3b87b:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b87e:	bb 04 00             	mov    bx,0x4
   3b881:	99                   	cwd
   3b882:	f7 fb                	idiv   bx
   3b884:	6b d2 5c             	imul   dx,dx,0x5c
   3b887:	b8 88 01             	mov    ax,0x188
   3b88a:	8b da                	mov    bx,dx
   3b88c:	8e c0                	mov    es,ax
   3b88e:	26 83 bf 3c 9a 00    	cmp    WORD PTR es:[bx-0x65c4],0x0
   3b894:	7f 10                	jg     0x3b8a6
   3b896:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   3b899:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b89c:	b4 00                	mov    ah,0x0
   3b89e:	05 04 00             	add    ax,0x4
   3b8a1:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   3b8a4:	7f d5                	jg     0x3b87b
   3b8a6:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8a9:	b4 00                	mov    ah,0x0
   3b8ab:	05 04 00             	add    ax,0x4
   3b8ae:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   3b8b1:	75 05                	jne    0x3b8b8
   3b8b3:	9a 2f 00 28 01       	call   0x128:0x2f
   3b8b8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   3b8bb:	bb 04 00             	mov    bx,0x4
   3b8be:	99                   	cwd
   3b8bf:	f7 fb                	idiv   bx
   3b8c1:	88 56 f1             	mov    BYTE PTR [bp-0xf],dl
   3b8c4:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8c7:	fe c0                	inc    al
   3b8c9:	50                   	push   ax
   3b8ca:	9a c7 05 30 00       	call   0x30:0x5c7
   3b8cf:	59                   	pop    cx
   3b8d0:	0a c0                	or     al,al
   3b8d2:	74 05                	je     0x3b8d9
   3b8d4:	9a 04 02 30 00       	call   0x30:0x204
   3b8d9:	68 e0 01             	push   0x1e0
   3b8dc:	68 d0 02             	push   0x2d0
   3b8df:	6a 00                	push   0x0
   3b8e1:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8e4:	04 47                	add    al,0x47
   3b8e6:	50                   	push   ax
   3b8e7:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8ea:	b4 00                	mov    ah,0x0
   3b8ec:	50                   	push   ax
   3b8ed:	a1 45 bb             	mov    ax,ds:0xbb45
   3b8f0:	5a                   	pop    dx
   3b8f1:	f7 ea                	imul   dx
   3b8f3:	8b 16 49 bb          	mov    dx,WORD PTR ds:0xbb49
   3b8f7:	03 d0                	add    dx,ax
   3b8f9:	52                   	push   dx
   3b8fa:	8a 46 f1             	mov    al,BYTE PTR [bp-0xf]
   3b8fd:	b4 00                	mov    ah,0x0
   3b8ff:	50                   	push   ax
   3b900:	a1 47 bb             	mov    ax,ds:0xbb47
   3b903:	5a                   	pop    dx
   3b904:	f7 ea                	imul   dx
   3b906:	8b 16 4b bb          	mov    dx,WORD PTR ds:0xbb4b
   3b90a:	03 d0                	add    dx,ax
   3b90c:	52                   	push   dx
   3b90d:	6a 20                	push   0x20
   3b90f:	6a 20                	push   0x20
   3b911:	6a 00                	push   0x0
   3b913:	6a 00                	push   0x0
   3b915:	68 00 80             	push   0x8000
   3b918:	9a 79 17 00 00       	call   0x0:0x1779
   3b91d:	99                   	cwd
   3b91e:	50                   	push   ax
   3b91f:	52                   	push   dx
   3b920:	33 d2                	xor    dx,dx
   3b922:	b8 03 00             	mov    ax,0x3
   3b925:	59                   	pop    cx
   3b926:	5b                   	pop    bx
   3b927:	9a 42 12 00 00       	call   0x0:0x1242
   3b92c:	52                   	push   dx
   3b92d:	50                   	push   ax
   3b92e:	9a df 12 00 00       	call   0x0:0x12df
   3b933:	40                   	inc    ax
   3b934:	c1 e0 05             	shl    ax,0x5
   3b937:	50                   	push   ax
   3b938:	9a 30 04 28 00       	call   0x28:0x430
   3b93d:	83 c4 14             	add    sp,0x14
   3b940:	b8 88 01             	mov    ax,0x188
   3b943:	8e c0                	mov    es,ax
   3b945:	26 ff 1e 50 96       	call   DWORD PTR es:0x9650
   3b94a:	50                   	push   ax
   3b94b:	9a 69 00 30 00       	call   0x30:0x69
   3b950:	59                   	pop    cx
   3b951:	e9 12 eb             	jmp    0x3a466
   3b954:	e9 0f eb             	jmp    0x3a466
   3b957:	c9                   	leave
   3b958:	cb                   	retf
