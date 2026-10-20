
analysis/phase-five/area-fields-20261015/area/movement-pairs.bin:     file format binary


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
