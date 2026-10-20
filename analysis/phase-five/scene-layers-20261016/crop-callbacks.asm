
analysis/phase-five/scene-layers-20261016/crop-callbacks.bin:     file format binary


Disassembly of section .data:

0000e151 <.data>:
    e151:	c8 06 00 00          	enter  0x6,0x0
    e155:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e158:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    e15b:	eb 78                	jmp    0xe1d5
    e15d:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e160:	b4 00                	mov    ah,0x0
    e162:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e165:	8b 56 1a             	mov    dx,WORD PTR [bp+0x1a]
    e168:	03 d0                	add    dx,ax
    e16a:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    e16d:	8b c2                	mov    ax,dx
    e16f:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
    e172:	d1 e2                	shl    dx,1
    e174:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
    e177:	03 da                	add    bx,dx
    e179:	89 5e fa             	mov    WORD PTR [bp-0x6],bx
    e17c:	8b d3                	mov    dx,bx
    e17e:	03 c2                	add    ax,dx
    e180:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e183:	76 11                	jbe    0xe196
    e185:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    e188:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e18b:	73 56                	jae    0xe1e3
    e18d:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
    e190:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
    e193:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    e196:	8a 46 24             	mov    al,BYTE PTR [bp+0x24]
    e199:	50                   	push   ax
    e19a:	ff 76 fa             	push   WORD PTR [bp-0x6]
    e19d:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
    e1a0:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
    e1a3:	f7 6e 20             	imul   WORD PTR [bp+0x20]
    e1a6:	8b 56 16             	mov    dx,WORD PTR [bp+0x16]
    e1a9:	03 d0                	add    dx,ax
    e1ab:	03 56 fc             	add    dx,WORD PTR [bp-0x4]
    e1ae:	ff 76 18             	push   WORD PTR [bp+0x18]
    e1b1:	52                   	push   dx
    e1b2:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e1b5:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
    e1b8:	f7 6e 14             	imul   WORD PTR [bp+0x14]
    e1bb:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
    e1be:	03 d0                	add    dx,ax
    e1c0:	2b 56 fe             	sub    dx,WORD PTR [bp-0x2]
    e1c3:	03 56 0a             	add    dx,WORD PTR [bp+0xa]
    e1c6:	ff 76 08             	push   WORD PTR [bp+0x8]
    e1c9:	52                   	push   dx
    e1ca:	9a 4c 00 d4 09       	call   0x9d4:0x4c
    e1cf:	83 c4 0c             	add    sp,0xc
    e1d2:	ff 46 fe             	inc    WORD PTR [bp-0x2]
    e1d5:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e1d8:	03 46 12             	add    ax,WORD PTR [bp+0x12]
    e1db:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
    e1de:	76 03                	jbe    0xe1e3
    e1e0:	e9 7a ff             	jmp    0xe15d
    e1e3:	c9                   	leave
    e1e4:	cb                   	retf
    e1e5:	c8 08 00 00          	enter  0x8,0x0
    e1e9:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e1ec:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    e1ef:	e9 bf 00             	jmp    0xe2b1
    e1f2:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
    e1f5:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    e1f8:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
    e1fb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    e1fe:	d1 e0                	shl    ax,1
    e200:	8b 56 0e             	mov    dx,WORD PTR [bp+0xe]
    e203:	03 d0                	add    dx,ax
    e205:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    e208:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e20b:	b4 00                	mov    ah,0x0
    e20d:	05 02 00             	add    ax,0x2
    e210:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e213:	8b 56 1a             	mov    dx,WORD PTR [bp+0x1a]
    e216:	2b d0                	sub    dx,ax
    e218:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    e21b:	8b c2                	mov    ax,dx
    e21d:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e220:	7d 53                	jge    0xe275
    e222:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    e225:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
    e228:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e22b:	7f 03                	jg     0xe230
    e22d:	e9 8f 00             	jmp    0xe2bf
    e230:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e233:	b4 00                	mov    ah,0x0
    e235:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e238:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
    e23b:	03 56 fe             	add    dx,WORD PTR [bp-0x2]
    e23e:	03 56 1e             	add    dx,WORD PTR [bp+0x1e]
    e241:	2b 56 1a             	sub    dx,WORD PTR [bp+0x1a]
    e244:	03 d0                	add    dx,ax
    e246:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
    e249:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
    e24c:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    e24f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    e252:	d1 e0                	shl    ax,1
    e254:	8b 56 0e             	mov    dx,WORD PTR [bp+0xe]
    e257:	03 d0                	add    dx,ax
    e259:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e25c:	b4 00                	mov    ah,0x0
    e25e:	05 02 00             	add    ax,0x2
    e261:	52                   	push   dx
    e262:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e265:	8b 56 1a             	mov    dx,WORD PTR [bp+0x1a]
    e268:	2b d0                	sub    dx,ax
    e26a:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
    e26d:	2b c2                	sub    ax,dx
    e26f:	5a                   	pop    dx
    e270:	2b d0                	sub    dx,ax
    e272:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    e275:	8a 46 24             	mov    al,BYTE PTR [bp+0x24]
    e278:	50                   	push   ax
    e279:	ff 76 fa             	push   WORD PTR [bp-0x6]
    e27c:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
    e27f:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
    e282:	f7 6e 20             	imul   WORD PTR [bp+0x20]
    e285:	8b 56 16             	mov    dx,WORD PTR [bp+0x16]
    e288:	03 d0                	add    dx,ax
    e28a:	03 56 fc             	add    dx,WORD PTR [bp-0x4]
    e28d:	ff 76 18             	push   WORD PTR [bp+0x18]
    e290:	52                   	push   dx
    e291:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e294:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
    e297:	f7 6e 14             	imul   WORD PTR [bp+0x14]
    e29a:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
    e29d:	03 d0                	add    dx,ax
    e29f:	03 56 f8             	add    dx,WORD PTR [bp-0x8]
    e2a2:	ff 76 08             	push   WORD PTR [bp+0x8]
    e2a5:	52                   	push   dx
    e2a6:	9a 4c 00 d4 09       	call   0x9d4:0x4c
    e2ab:	83 c4 0c             	add    sp,0xc
    e2ae:	ff 46 fe             	inc    WORD PTR [bp-0x2]
    e2b1:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e2b4:	03 46 12             	add    ax,WORD PTR [bp+0x12]
    e2b7:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
    e2ba:	76 03                	jbe    0xe2bf
    e2bc:	e9 33 ff             	jmp    0xe1f2
    e2bf:	c9                   	leave
    e2c0:	cb                   	retf
    e2c1:	c8 06 00 00          	enter  0x6,0x0
    e2c5:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e2c8:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    e2cb:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
    e2ce:	03 46 10             	add    ax,WORD PTR [bp+0x10]
    e2d1:	01 46 0c             	add    WORD PTR [bp+0xc],ax
    e2d4:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
    e2d7:	03 46 10             	add    ax,WORD PTR [bp+0x10]
    e2da:	01 46 1c             	add    WORD PTR [bp+0x1c],ax
    e2dd:	eb 78                	jmp    0xe357
    e2df:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e2e2:	b4 00                	mov    ah,0x0
    e2e4:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e2e7:	8b 56 1a             	mov    dx,WORD PTR [bp+0x1a]
    e2ea:	03 d0                	add    dx,ax
    e2ec:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    e2ef:	8b c2                	mov    ax,dx
    e2f1:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
    e2f4:	d1 e2                	shl    dx,1
    e2f6:	8b 5e 0e             	mov    bx,WORD PTR [bp+0xe]
    e2f9:	03 da                	add    bx,dx
    e2fb:	89 5e fa             	mov    WORD PTR [bp-0x6],bx
    e2fe:	8b d3                	mov    dx,bx
    e300:	03 c2                	add    ax,dx
    e302:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e305:	76 11                	jbe    0xe318
    e307:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    e30a:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e30d:	73 56                	jae    0xe365
    e30f:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
    e312:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
    e315:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
    e318:	8a 46 24             	mov    al,BYTE PTR [bp+0x24]
    e31b:	50                   	push   ax
    e31c:	ff 76 fa             	push   WORD PTR [bp-0x6]
    e31f:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
    e322:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    e325:	f7 6e 20             	imul   WORD PTR [bp+0x20]
    e328:	8b 56 16             	mov    dx,WORD PTR [bp+0x16]
    e32b:	03 d0                	add    dx,ax
    e32d:	03 56 fc             	add    dx,WORD PTR [bp-0x4]
    e330:	ff 76 18             	push   WORD PTR [bp+0x18]
    e333:	52                   	push   dx
    e334:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e337:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    e33a:	f7 6e 14             	imul   WORD PTR [bp+0x14]
    e33d:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
    e340:	03 d0                	add    dx,ax
    e342:	03 56 0a             	add    dx,WORD PTR [bp+0xa]
    e345:	2b 56 fe             	sub    dx,WORD PTR [bp-0x2]
    e348:	ff 76 08             	push   WORD PTR [bp+0x8]
    e34b:	52                   	push   dx
    e34c:	9a 4c 00 d4 09       	call   0x9d4:0x4c
    e351:	83 c4 0c             	add    sp,0xc
    e354:	ff 46 fe             	inc    WORD PTR [bp-0x2]
    e357:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e35a:	03 46 12             	add    ax,WORD PTR [bp+0x12]
    e35d:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
    e360:	76 03                	jbe    0xe365
    e362:	e9 7a ff             	jmp    0xe2df
    e365:	c9                   	leave
    e366:	cb                   	retf
    e367:	c8 08 00 00          	enter  0x8,0x0
    e36b:	8b 46 10             	mov    ax,WORD PTR [bp+0x10]
    e36e:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
    e371:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
    e374:	03 46 10             	add    ax,WORD PTR [bp+0x10]
    e377:	01 46 0c             	add    WORD PTR [bp+0xc],ax
    e37a:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
    e37d:	03 46 10             	add    ax,WORD PTR [bp+0x10]
    e380:	01 46 1c             	add    WORD PTR [bp+0x1c],ax
    e383:	e9 bf 00             	jmp    0xe445
    e386:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
    e389:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    e38c:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
    e38f:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    e392:	d1 e0                	shl    ax,1
    e394:	8b 56 0e             	mov    dx,WORD PTR [bp+0xe]
    e397:	03 d0                	add    dx,ax
    e399:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    e39c:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e39f:	b4 00                	mov    ah,0x0
    e3a1:	05 02 00             	add    ax,0x2
    e3a4:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e3a7:	8b 56 1a             	mov    dx,WORD PTR [bp+0x1a]
    e3aa:	2b d0                	sub    dx,ax
    e3ac:	89 56 fc             	mov    WORD PTR [bp-0x4],dx
    e3af:	8b c2                	mov    ax,dx
    e3b1:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e3b4:	7d 53                	jge    0xe409
    e3b6:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
    e3b9:	03 46 fa             	add    ax,WORD PTR [bp-0x6]
    e3bc:	3b 46 1e             	cmp    ax,WORD PTR [bp+0x1e]
    e3bf:	7f 03                	jg     0xe3c4
    e3c1:	e9 8f 00             	jmp    0xe453
    e3c4:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e3c7:	b4 00                	mov    ah,0x0
    e3c9:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e3cc:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
    e3cf:	03 56 fe             	add    dx,WORD PTR [bp-0x2]
    e3d2:	03 56 1e             	add    dx,WORD PTR [bp+0x1e]
    e3d5:	2b 56 1a             	sub    dx,WORD PTR [bp+0x1a]
    e3d8:	03 d0                	add    dx,ax
    e3da:	89 56 f8             	mov    WORD PTR [bp-0x8],dx
    e3dd:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
    e3e0:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
    e3e3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
    e3e6:	d1 e0                	shl    ax,1
    e3e8:	8b 56 0e             	mov    dx,WORD PTR [bp+0xe]
    e3eb:	03 d0                	add    dx,ax
    e3ed:	8a 46 22             	mov    al,BYTE PTR [bp+0x22]
    e3f0:	b4 00                	mov    ah,0x0
    e3f2:	05 02 00             	add    ax,0x2
    e3f5:	52                   	push   dx
    e3f6:	f7 6e fe             	imul   WORD PTR [bp-0x2]
    e3f9:	8b 56 1a             	mov    dx,WORD PTR [bp+0x1a]
    e3fc:	2b d0                	sub    dx,ax
    e3fe:	8b 46 1e             	mov    ax,WORD PTR [bp+0x1e]
    e401:	2b c2                	sub    ax,dx
    e403:	5a                   	pop    dx
    e404:	2b d0                	sub    dx,ax
    e406:	89 56 fa             	mov    WORD PTR [bp-0x6],dx
    e409:	8a 46 24             	mov    al,BYTE PTR [bp+0x24]
    e40c:	50                   	push   ax
    e40d:	ff 76 fa             	push   WORD PTR [bp-0x6]
    e410:	8b 46 1c             	mov    ax,WORD PTR [bp+0x1c]
    e413:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    e416:	f7 6e 20             	imul   WORD PTR [bp+0x20]
    e419:	8b 56 16             	mov    dx,WORD PTR [bp+0x16]
    e41c:	03 d0                	add    dx,ax
    e41e:	03 56 fc             	add    dx,WORD PTR [bp-0x4]
    e421:	ff 76 18             	push   WORD PTR [bp+0x18]
    e424:	52                   	push   dx
    e425:	8b 46 0c             	mov    ax,WORD PTR [bp+0xc]
    e428:	2b 46 fe             	sub    ax,WORD PTR [bp-0x2]
    e42b:	f7 6e 14             	imul   WORD PTR [bp+0x14]
    e42e:	8b                   	.byte 0x8b
    e42f:	56                   	push   si
