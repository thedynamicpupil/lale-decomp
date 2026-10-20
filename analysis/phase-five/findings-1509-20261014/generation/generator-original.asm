
analysis/phase-four/continuation/original-overlay-167c.bin:     file format binary


Disassembly of section .data:

0003d037 <.data+0x437>:
   3d037:	55                   	push   bp
   3d038:	8b ec                	mov    bp,sp
   3d03a:	83 ec 02             	sub    sp,0x2
   3d03d:	0e                   	push   cs
   3d03e:	e8 bf fb             	call   0x3cc00
   3d041:	6a 00                	push   0x0
   3d043:	68 00 80             	push   0x8000
   3d046:	9a 79 17 00 00       	call   0x0:0x1779
   3d04b:	99                   	cwd
   3d04c:	50                   	push   ax
   3d04d:	52                   	push   dx
   3d04e:	33 d2                	xor    dx,dx
   3d050:	b8 19 00             	mov    ax,0x19
   3d053:	59                   	pop    cx
   3d054:	5b                   	pop    bx
   3d055:	9a 42 12 00 00       	call   0x0:0x1242
   3d05a:	52                   	push   dx
   3d05b:	50                   	push   ax
   3d05c:	9a df 12 00 00       	call   0x0:0x12df
   3d061:	50                   	push   ax
   3d062:	6a 00                	push   0x0
   3d064:	68 00 80             	push   0x8000
   3d067:	9a 79 17 00 00       	call   0x0:0x1779
   3d06c:	99                   	cwd
   3d06d:	50                   	push   ax
   3d06e:	52                   	push   dx
   3d06f:	33 d2                	xor    dx,dx
   3d071:	b8 19 00             	mov    ax,0x19
   3d074:	59                   	pop    cx
   3d075:	5b                   	pop    bx
   3d076:	9a 42 12 00 00       	call   0x0:0x1242
   3d07b:	52                   	push   dx
   3d07c:	50                   	push   ax
   3d07d:	9a df 12 00 00       	call   0x0:0x12df
   3d082:	5a                   	pop    dx
   3d083:	03 d0                	add    dx,ax
   3d085:	b8 88 01             	mov    ax,0x188
   3d088:	8e c0                	mov    es,ax
   3d08a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d08f:	6b db 24             	imul   bx,bx,0x24
   3d092:	b8 88 01             	mov    ax,0x188
   3d095:	8e c0                	mov    es,ax
   3d097:	26 8b 87 74 9b       	mov    ax,WORD PTR es:[bx-0x648c]
   3d09c:	6b c0 0a             	imul   ax,ax,0xa
   3d09f:	03 d0                	add    dx,ax
   3d0a1:	81 c2 96 00          	add    dx,0x96
   3d0a5:	b8 88 01             	mov    ax,0x188
   3d0a8:	8e c0                	mov    es,ax
   3d0aa:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d0af:	6b db 5c             	imul   bx,bx,0x5c
   3d0b2:	b8 88 01             	mov    ax,0x188
   3d0b5:	8e c0                	mov    es,ax
   3d0b7:	26 89 97 ca 99       	mov    WORD PTR es:[bx-0x6636],dx
   3d0bc:	6a 00                	push   0x0
   3d0be:	68 00 80             	push   0x8000
   3d0c1:	9a 79 17 00 00       	call   0x0:0x1779
   3d0c6:	99                   	cwd
   3d0c7:	50                   	push   ax
   3d0c8:	52                   	push   dx
   3d0c9:	33 d2                	xor    dx,dx
   3d0cb:	b8 05 00             	mov    ax,0x5
   3d0ce:	59                   	pop    cx
   3d0cf:	5b                   	pop    bx
   3d0d0:	9a 42 12 00 00       	call   0x0:0x1242
   3d0d5:	52                   	push   dx
   3d0d6:	50                   	push   ax
   3d0d7:	9a df 12 00 00       	call   0x0:0x12df
   3d0dc:	50                   	push   ax
   3d0dd:	6a 00                	push   0x0
   3d0df:	68 00 80             	push   0x8000
   3d0e2:	9a 79 17 00 00       	call   0x0:0x1779
   3d0e7:	99                   	cwd
   3d0e8:	50                   	push   ax
   3d0e9:	52                   	push   dx
   3d0ea:	33 d2                	xor    dx,dx
   3d0ec:	b8 05 00             	mov    ax,0x5
   3d0ef:	59                   	pop    cx
   3d0f0:	5b                   	pop    bx
   3d0f1:	9a 42 12 00 00       	call   0x0:0x1242
   3d0f6:	52                   	push   dx
   3d0f7:	50                   	push   ax
   3d0f8:	9a df 12 00 00       	call   0x0:0x12df
   3d0fd:	5a                   	pop    dx
   3d0fe:	03 d0                	add    dx,ax
   3d100:	b8 88 01             	mov    ax,0x188
   3d103:	8e c0                	mov    es,ax
   3d105:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d10a:	6b db 5c             	imul   bx,bx,0x5c
   3d10d:	b8 88 01             	mov    ax,0x188
   3d110:	8e c0                	mov    es,ax
   3d112:	26 03 97 ca 99       	add    dx,WORD PTR es:[bx-0x6636]
   3d117:	b8 88 01             	mov    ax,0x188
   3d11a:	8e c0                	mov    es,ax
   3d11c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d121:	6b db 24             	imul   bx,bx,0x24
   3d124:	b8 88 01             	mov    ax,0x188
   3d127:	8e c0                	mov    es,ax
   3d129:	26 8b 87 76 9b       	mov    ax,WORD PTR es:[bx-0x648a]
   3d12e:	6b c0 0a             	imul   ax,ax,0xa
   3d131:	03 d0                	add    dx,ax
   3d133:	83 c2 92             	add    dx,0xff92
   3d136:	b8 88 01             	mov    ax,0x188
   3d139:	8e c0                	mov    es,ax
   3d13b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d140:	6b db 5c             	imul   bx,bx,0x5c
   3d143:	b8 88 01             	mov    ax,0x188
   3d146:	8e c0                	mov    es,ax
   3d148:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d14d:	48                   	dec    ax
   3d14e:	6b c0 0a             	imul   ax,ax,0xa
   3d151:	2b d0                	sub    dx,ax
   3d153:	b8 88 01             	mov    ax,0x188
   3d156:	8e c0                	mov    es,ax
   3d158:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d15d:	6b db 5c             	imul   bx,bx,0x5c
   3d160:	b8 88 01             	mov    ax,0x188
   3d163:	8e c0                	mov    es,ax
   3d165:	26 89 97 cc 99       	mov    WORD PTR es:[bx-0x6634],dx
   3d16a:	6a 00                	push   0x0
   3d16c:	68 00 80             	push   0x8000
   3d16f:	9a 79 17 00 00       	call   0x0:0x1779
   3d174:	99                   	cwd
   3d175:	50                   	push   ax
   3d176:	52                   	push   dx
   3d177:	33 d2                	xor    dx,dx
   3d179:	b8 96 00             	mov    ax,0x96
   3d17c:	59                   	pop    cx
   3d17d:	5b                   	pop    bx
   3d17e:	9a 42 12 00 00       	call   0x0:0x1242
   3d183:	52                   	push   dx
   3d184:	50                   	push   ax
   3d185:	9a df 12 00 00       	call   0x0:0x12df
   3d18a:	50                   	push   ax
   3d18b:	6a 00                	push   0x0
   3d18d:	68 00 80             	push   0x8000
   3d190:	9a 79 17 00 00       	call   0x0:0x1779
   3d195:	99                   	cwd
   3d196:	50                   	push   ax
   3d197:	52                   	push   dx
   3d198:	33 d2                	xor    dx,dx
   3d19a:	b8 96 00             	mov    ax,0x96
   3d19d:	59                   	pop    cx
   3d19e:	5b                   	pop    bx
   3d19f:	9a 42 12 00 00       	call   0x0:0x1242
   3d1a4:	52                   	push   dx
   3d1a5:	50                   	push   ax
   3d1a6:	9a df 12 00 00       	call   0x0:0x12df
   3d1ab:	5a                   	pop    dx
   3d1ac:	03 d0                	add    dx,ax
   3d1ae:	b8 88 01             	mov    ax,0x188
   3d1b1:	8e c0                	mov    es,ax
   3d1b3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d1b8:	6b db 5c             	imul   bx,bx,0x5c
   3d1bb:	b8 88 01             	mov    ax,0x188
   3d1be:	8e c0                	mov    es,ax
   3d1c0:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d1c5:	48                   	dec    ax
   3d1c6:	6b c0 19             	imul   ax,ax,0x19
   3d1c9:	03 d0                	add    dx,ax
   3d1cb:	b8 88 01             	mov    ax,0x188
   3d1ce:	8e c0                	mov    es,ax
   3d1d0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d1d5:	6b db 5c             	imul   bx,bx,0x5c
   3d1d8:	b8 88 01             	mov    ax,0x188
   3d1db:	8e c0                	mov    es,ax
   3d1dd:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d1e2:	bb 88 01             	mov    bx,0x188
   3d1e5:	8e c3                	mov    es,bx
   3d1e7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d1ec:	6b db 5c             	imul   bx,bx,0x5c
   3d1ef:	b9 88 01             	mov    cx,0x188
   3d1f2:	8e c1                	mov    es,cx
   3d1f4:	26 03 87 cc 99       	add    ax,WORD PTR es:[bx-0x6634]
   3d1f9:	bb 05 00             	mov    bx,0x5
   3d1fc:	52                   	push   dx
   3d1fd:	99                   	cwd
   3d1fe:	f7 fb                	idiv   bx
   3d200:	5a                   	pop    dx
   3d201:	2b d0                	sub    dx,ax
   3d203:	b8 88 01             	mov    ax,0x188
   3d206:	8e c0                	mov    es,ax
   3d208:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d20d:	6b db 24             	imul   bx,bx,0x24
   3d210:	b8 88 01             	mov    ax,0x188
   3d213:	8e c0                	mov    es,ax
   3d215:	26 8b 87 78 9b       	mov    ax,WORD PTR es:[bx-0x6488]
   3d21a:	6b c0 0a             	imul   ax,ax,0xa
   3d21d:	03 d0                	add    dx,ax
   3d21f:	b8 88 01             	mov    ax,0x188
   3d222:	8e c0                	mov    es,ax
   3d224:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d229:	6b db 5c             	imul   bx,bx,0x5c
   3d22c:	b8 88 01             	mov    ax,0x188
   3d22f:	8e c0                	mov    es,ax
   3d231:	26 89 97 b4 99       	mov    WORD PTR es:[bx-0x664c],dx
   3d236:	6a 00                	push   0x0
   3d238:	68 00 80             	push   0x8000
   3d23b:	9a 79 17 00 00       	call   0x0:0x1779
   3d240:	99                   	cwd
   3d241:	50                   	push   ax
   3d242:	52                   	push   dx
   3d243:	33 d2                	xor    dx,dx
   3d245:	b8 32 00             	mov    ax,0x32
   3d248:	59                   	pop    cx
   3d249:	5b                   	pop    bx
   3d24a:	9a 42 12 00 00       	call   0x0:0x1242
   3d24f:	52                   	push   dx
   3d250:	50                   	push   ax
   3d251:	9a df 12 00 00       	call   0x0:0x12df
   3d256:	50                   	push   ax
   3d257:	6a 00                	push   0x0
   3d259:	68 00 80             	push   0x8000
   3d25c:	9a 79 17 00 00       	call   0x0:0x1779
   3d261:	99                   	cwd
   3d262:	50                   	push   ax
   3d263:	52                   	push   dx
   3d264:	33 d2                	xor    dx,dx
   3d266:	b8 32 00             	mov    ax,0x32
   3d269:	59                   	pop    cx
   3d26a:	5b                   	pop    bx
   3d26b:	9a 42 12 00 00       	call   0x0:0x1242
   3d270:	52                   	push   dx
   3d271:	50                   	push   ax
   3d272:	9a df 12 00 00       	call   0x0:0x12df
   3d277:	5a                   	pop    dx
   3d278:	03 d0                	add    dx,ax
   3d27a:	b8 88 01             	mov    ax,0x188
   3d27d:	8e c0                	mov    es,ax
   3d27f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d284:	6b db 5c             	imul   bx,bx,0x5c
   3d287:	b8 88 01             	mov    ax,0x188
   3d28a:	8e c0                	mov    es,ax
   3d28c:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d291:	6b c0 19             	imul   ax,ax,0x19
   3d294:	2b d0                	sub    dx,ax
   3d296:	b8 88 01             	mov    ax,0x188
   3d299:	8e c0                	mov    es,ax
   3d29b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2a0:	6b db 5c             	imul   bx,bx,0x5c
   3d2a3:	b8 88 01             	mov    ax,0x188
   3d2a6:	8e c0                	mov    es,ax
   3d2a8:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d2ad:	bb 88 01             	mov    bx,0x188
   3d2b0:	8e c3                	mov    es,bx
   3d2b2:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2b7:	6b db 5c             	imul   bx,bx,0x5c
   3d2ba:	b9 88 01             	mov    cx,0x188
   3d2bd:	8e c1                	mov    es,cx
   3d2bf:	26 03 87 cc 99       	add    ax,WORD PTR es:[bx-0x6634]
   3d2c4:	bb 03 00             	mov    bx,0x3
   3d2c7:	52                   	push   dx
   3d2c8:	99                   	cwd
   3d2c9:	f7 fb                	idiv   bx
   3d2cb:	5a                   	pop    dx
   3d2cc:	03 d0                	add    dx,ax
   3d2ce:	b8 88 01             	mov    ax,0x188
   3d2d1:	8e c0                	mov    es,ax
   3d2d3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2d8:	6b db 24             	imul   bx,bx,0x24
   3d2db:	b8 88 01             	mov    ax,0x188
   3d2de:	8e c0                	mov    es,ax
   3d2e0:	26 8b 87 7a 9b       	mov    ax,WORD PTR es:[bx-0x6486]
   3d2e5:	6b c0 0a             	imul   ax,ax,0xa
   3d2e8:	03 d0                	add    dx,ax
   3d2ea:	b8 88 01             	mov    ax,0x188
   3d2ed:	8e c0                	mov    es,ax
   3d2ef:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d2f4:	6b db 5c             	imul   bx,bx,0x5c
   3d2f7:	b8 88 01             	mov    ax,0x188
   3d2fa:	8e c0                	mov    es,ax
   3d2fc:	26 89 97 b6 99       	mov    WORD PTR es:[bx-0x664a],dx
   3d301:	6a 00                	push   0x0
   3d303:	68 00 80             	push   0x8000
   3d306:	9a 79 17 00 00       	call   0x0:0x1779
   3d30b:	99                   	cwd
   3d30c:	50                   	push   ax
   3d30d:	52                   	push   dx
   3d30e:	33 d2                	xor    dx,dx
   3d310:	b8 64 00             	mov    ax,0x64
   3d313:	59                   	pop    cx
   3d314:	5b                   	pop    bx
   3d315:	9a 42 12 00 00       	call   0x0:0x1242
   3d31a:	52                   	push   dx
   3d31b:	50                   	push   ax
   3d31c:	9a df 12 00 00       	call   0x0:0x12df
   3d321:	50                   	push   ax
   3d322:	6a 00                	push   0x0
   3d324:	68 00 80             	push   0x8000
   3d327:	9a 79 17 00 00       	call   0x0:0x1779
   3d32c:	99                   	cwd
   3d32d:	50                   	push   ax
   3d32e:	52                   	push   dx
   3d32f:	33 d2                	xor    dx,dx
   3d331:	b8 64 00             	mov    ax,0x64
   3d334:	59                   	pop    cx
   3d335:	5b                   	pop    bx
   3d336:	9a 42 12 00 00       	call   0x0:0x1242
   3d33b:	52                   	push   dx
   3d33c:	50                   	push   ax
   3d33d:	9a df 12 00 00       	call   0x0:0x12df
   3d342:	5a                   	pop    dx
   3d343:	03 d0                	add    dx,ax
   3d345:	b8 88 01             	mov    ax,0x188
   3d348:	8e c0                	mov    es,ax
   3d34a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d34f:	6b db 5c             	imul   bx,bx,0x5c
   3d352:	b8 88 01             	mov    ax,0x188
   3d355:	8e c0                	mov    es,ax
   3d357:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d35c:	bb 04 00             	mov    bx,0x4
   3d35f:	52                   	push   dx
   3d360:	99                   	cwd
   3d361:	f7 fb                	idiv   bx
   3d363:	5a                   	pop    dx
   3d364:	03 d0                	add    dx,ax
   3d366:	b8 88 01             	mov    ax,0x188
   3d369:	8e c0                	mov    es,ax
   3d36b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d370:	6b db 5c             	imul   bx,bx,0x5c
   3d373:	b8 88 01             	mov    ax,0x188
   3d376:	8e c0                	mov    es,ax
   3d378:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d37d:	bb 04 00             	mov    bx,0x4
   3d380:	52                   	push   dx
   3d381:	99                   	cwd
   3d382:	f7 fb                	idiv   bx
   3d384:	5a                   	pop    dx
   3d385:	2b d0                	sub    dx,ax
   3d387:	b8 88 01             	mov    ax,0x188
   3d38a:	8e c0                	mov    es,ax
   3d38c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d391:	6b db 24             	imul   bx,bx,0x24
   3d394:	b8 88 01             	mov    ax,0x188
   3d397:	8e c0                	mov    es,ax
   3d399:	26 8b 87 7c 9b       	mov    ax,WORD PTR es:[bx-0x6484]
   3d39e:	6b c0 0a             	imul   ax,ax,0xa
   3d3a1:	03 d0                	add    dx,ax
   3d3a3:	b8 88 01             	mov    ax,0x188
   3d3a6:	8e c0                	mov    es,ax
   3d3a8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d3ad:	6b db 5c             	imul   bx,bx,0x5c
   3d3b0:	b8 88 01             	mov    ax,0x188
   3d3b3:	8e c0                	mov    es,ax
   3d3b5:	26 89 97 b0 99       	mov    WORD PTR es:[bx-0x6650],dx
   3d3ba:	6a 00                	push   0x0
   3d3bc:	68 00 80             	push   0x8000
   3d3bf:	9a 79 17 00 00       	call   0x0:0x1779
   3d3c4:	99                   	cwd
   3d3c5:	50                   	push   ax
   3d3c6:	52                   	push   dx
   3d3c7:	33 d2                	xor    dx,dx
   3d3c9:	b8 06 00             	mov    ax,0x6
   3d3cc:	59                   	pop    cx
   3d3cd:	5b                   	pop    bx
   3d3ce:	9a 42 12 00 00       	call   0x0:0x1242
   3d3d3:	52                   	push   dx
   3d3d4:	50                   	push   ax
   3d3d5:	9a df 12 00 00       	call   0x0:0x12df
   3d3da:	ba 88 01             	mov    dx,0x188
   3d3dd:	8e c2                	mov    es,dx
   3d3df:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d3e4:	6b db 5c             	imul   bx,bx,0x5c
   3d3e7:	ba 88 01             	mov    dx,0x188
   3d3ea:	8e c2                	mov    es,dx
   3d3ec:	50                   	push   ax
   3d3ed:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d3f2:	bb 28 00             	mov    bx,0x28
   3d3f5:	99                   	cwd
   3d3f6:	f7 fb                	idiv   bx
   3d3f8:	5a                   	pop    dx
   3d3f9:	03 d0                	add    dx,ax
   3d3fb:	b8 88 01             	mov    ax,0x188
   3d3fe:	8e c0                	mov    es,ax
   3d400:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d405:	6b db 5c             	imul   bx,bx,0x5c
   3d408:	b8 88 01             	mov    ax,0x188
   3d40b:	8e c0                	mov    es,ax
   3d40d:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3d412:	bb 1e 00             	mov    bx,0x1e
   3d415:	52                   	push   dx
   3d416:	99                   	cwd
   3d417:	f7 fb                	idiv   bx
   3d419:	5a                   	pop    dx
   3d41a:	2b d0                	sub    dx,ax
   3d41c:	b8 88 01             	mov    ax,0x188
   3d41f:	8e c0                	mov    es,ax
   3d421:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d426:	6b db 5c             	imul   bx,bx,0x5c
   3d429:	b8 88 01             	mov    ax,0x188
   3d42c:	8e c0                	mov    es,ax
   3d42e:	26 8b 87 cc 99       	mov    ax,WORD PTR es:[bx-0x6634]
   3d433:	bb 14 00             	mov    bx,0x14
   3d436:	52                   	push   dx
   3d437:	99                   	cwd
   3d438:	f7 fb                	idiv   bx
   3d43a:	5a                   	pop    dx
   3d43b:	03 d0                	add    dx,ax
   3d43d:	b8 88 01             	mov    ax,0x188
   3d440:	8e c0                	mov    es,ax
   3d442:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d447:	6b db 24             	imul   bx,bx,0x24
   3d44a:	b8 88 01             	mov    ax,0x188
   3d44d:	8e c0                	mov    es,ax
   3d44f:	26 8b 87 7e 9b       	mov    ax,WORD PTR es:[bx-0x6482]
   3d454:	d1 e0                	shl    ax,1
   3d456:	03 d0                	add    dx,ax
   3d458:	b8 88 01             	mov    ax,0x188
   3d45b:	8e c0                	mov    es,ax
   3d45d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d462:	6b db 5c             	imul   bx,bx,0x5c
   3d465:	b8 88 01             	mov    ax,0x188
   3d468:	8e c0                	mov    es,ax
   3d46a:	26 89 97 b2 99       	mov    WORD PTR es:[bx-0x664e],dx
   3d46f:	6a 00                	push   0x0
   3d471:	68 00 80             	push   0x8000
   3d474:	9a 79 17 00 00       	call   0x0:0x1779
   3d479:	99                   	cwd
   3d47a:	50                   	push   ax
   3d47b:	52                   	push   dx
   3d47c:	33 d2                	xor    dx,dx
   3d47e:	b8 46 00             	mov    ax,0x46
   3d481:	59                   	pop    cx
   3d482:	5b                   	pop    bx
   3d483:	9a 42 12 00 00       	call   0x0:0x1242
   3d488:	52                   	push   dx
   3d489:	50                   	push   ax
   3d48a:	9a df 12 00 00       	call   0x0:0x12df
   3d48f:	50                   	push   ax
   3d490:	6a 00                	push   0x0
   3d492:	68 00 80             	push   0x8000
   3d495:	9a 79 17 00 00       	call   0x0:0x1779
   3d49a:	99                   	cwd
   3d49b:	50                   	push   ax
   3d49c:	52                   	push   dx
   3d49d:	33 d2                	xor    dx,dx
   3d49f:	b8 50 00             	mov    ax,0x50
   3d4a2:	59                   	pop    cx
   3d4a3:	5b                   	pop    bx
   3d4a4:	9a 42 12 00 00       	call   0x0:0x1242
   3d4a9:	52                   	push   dx
   3d4aa:	50                   	push   ax
   3d4ab:	9a df 12 00 00       	call   0x0:0x12df
   3d4b0:	5a                   	pop    dx
   3d4b1:	03 d0                	add    dx,ax
   3d4b3:	52                   	push   dx
   3d4b4:	6a 00                	push   0x0
   3d4b6:	68 00 80             	push   0x8000
   3d4b9:	9a 79 17 00 00       	call   0x0:0x1779
   3d4be:	99                   	cwd
   3d4bf:	50                   	push   ax
   3d4c0:	52                   	push   dx
   3d4c1:	33 d2                	xor    dx,dx
   3d4c3:	b8 64 00             	mov    ax,0x64
   3d4c6:	59                   	pop    cx
   3d4c7:	5b                   	pop    bx
   3d4c8:	9a 42 12 00 00       	call   0x0:0x1242
   3d4cd:	52                   	push   dx
   3d4ce:	50                   	push   ax
   3d4cf:	9a df 12 00 00       	call   0x0:0x12df
   3d4d4:	5a                   	pop    dx
   3d4d5:	03 d0                	add    dx,ax
   3d4d7:	81 c2 96 00          	add    dx,0x96
   3d4db:	b8 88 01             	mov    ax,0x188
   3d4de:	8e c0                	mov    es,ax
   3d4e0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d4e5:	6b db 5c             	imul   bx,bx,0x5c
   3d4e8:	b8 88 01             	mov    ax,0x188
   3d4eb:	8e c0                	mov    es,ax
   3d4ed:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d4f2:	bb 88 01             	mov    bx,0x188
   3d4f5:	8e c3                	mov    es,bx
   3d4f7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d4fc:	6b db 5c             	imul   bx,bx,0x5c
   3d4ff:	b9 88 01             	mov    cx,0x188
   3d502:	8e c1                	mov    es,cx
   3d504:	26 03 87 cc 99       	add    ax,WORD PTR es:[bx-0x6634]
   3d509:	2b d0                	sub    dx,ax
   3d50b:	b8 88 01             	mov    ax,0x188
   3d50e:	8e c0                	mov    es,ax
   3d510:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d515:	6b db 24             	imul   bx,bx,0x24
   3d518:	b8 88 01             	mov    ax,0x188
   3d51b:	8e c0                	mov    es,ax
   3d51d:	26 8b 87 80 9b       	mov    ax,WORD PTR es:[bx-0x6480]
   3d522:	6b c0 0a             	imul   ax,ax,0xa
   3d525:	03 d0                	add    dx,ax
   3d527:	b8 88 01             	mov    ax,0x188
   3d52a:	8e c0                	mov    es,ax
   3d52c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d531:	6b db 5c             	imul   bx,bx,0x5c
   3d534:	b8 88 01             	mov    ax,0x188
   3d537:	8e c0                	mov    es,ax
   3d539:	26 89 97 ba 99       	mov    WORD PTR es:[bx-0x6646],dx
   3d53e:	6a 00                	push   0x0
   3d540:	68 00 80             	push   0x8000
   3d543:	9a 79 17 00 00       	call   0x0:0x1779
   3d548:	99                   	cwd
   3d549:	50                   	push   ax
   3d54a:	52                   	push   dx
   3d54b:	33 d2                	xor    dx,dx
   3d54d:	b8 c8 00             	mov    ax,0xc8
   3d550:	59                   	pop    cx
   3d551:	5b                   	pop    bx
   3d552:	9a 42 12 00 00       	call   0x0:0x1242
   3d557:	52                   	push   dx
   3d558:	50                   	push   ax
   3d559:	9a df 12 00 00       	call   0x0:0x12df
   3d55e:	50                   	push   ax
   3d55f:	6a 00                	push   0x0
   3d561:	68 00 80             	push   0x8000
   3d564:	9a 79 17 00 00       	call   0x0:0x1779
   3d569:	99                   	cwd
   3d56a:	50                   	push   ax
   3d56b:	52                   	push   dx
   3d56c:	33 d2                	xor    dx,dx
   3d56e:	b8 c8 00             	mov    ax,0xc8
   3d571:	59                   	pop    cx
   3d572:	5b                   	pop    bx
   3d573:	9a 42 12 00 00       	call   0x0:0x1242
   3d578:	52                   	push   dx
   3d579:	50                   	push   ax
   3d57a:	9a df 12 00 00       	call   0x0:0x12df
   3d57f:	5a                   	pop    dx
   3d580:	03 d0                	add    dx,ax
   3d582:	b8 88 01             	mov    ax,0x188
   3d585:	8e c0                	mov    es,ax
   3d587:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d58c:	6b db 5c             	imul   bx,bx,0x5c
   3d58f:	b8 88 01             	mov    ax,0x188
   3d592:	8e c0                	mov    es,ax
   3d594:	26 8b 87 cc 99       	mov    ax,WORD PTR es:[bx-0x6634]
   3d599:	bb 88 01             	mov    bx,0x188
   3d59c:	8e c3                	mov    es,bx
   3d59e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5a3:	6b db 5c             	imul   bx,bx,0x5c
   3d5a6:	b9 88 01             	mov    cx,0x188
   3d5a9:	8e c1                	mov    es,cx
   3d5ab:	26 03 87 ca 99       	add    ax,WORD PTR es:[bx-0x6636]
   3d5b0:	2b d0                	sub    dx,ax
   3d5b2:	b8 88 01             	mov    ax,0x188
   3d5b5:	8e c0                	mov    es,ax
   3d5b7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5bc:	6b db 5c             	imul   bx,bx,0x5c
   3d5bf:	b8 88 01             	mov    ax,0x188
   3d5c2:	8e c0                	mov    es,ax
   3d5c4:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3d5c9:	bb 04 00             	mov    bx,0x4
   3d5cc:	52                   	push   dx
   3d5cd:	99                   	cwd
   3d5ce:	f7 fb                	idiv   bx
   3d5d0:	5a                   	pop    dx
   3d5d1:	2b d0                	sub    dx,ax
   3d5d3:	b8 88 01             	mov    ax,0x188
   3d5d6:	8e c0                	mov    es,ax
   3d5d8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5dd:	6b db 5c             	imul   bx,bx,0x5c
   3d5e0:	b8 88 01             	mov    ax,0x188
   3d5e3:	8e c0                	mov    es,ax
   3d5e5:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d5ea:	bb 04 00             	mov    bx,0x4
   3d5ed:	52                   	push   dx
   3d5ee:	99                   	cwd
   3d5ef:	f7 fb                	idiv   bx
   3d5f1:	5a                   	pop    dx
   3d5f2:	03 d0                	add    dx,ax
   3d5f4:	b8 88 01             	mov    ax,0x188
   3d5f7:	8e c0                	mov    es,ax
   3d5f9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d5fe:	6b db 24             	imul   bx,bx,0x24
   3d601:	b8 88 01             	mov    ax,0x188
   3d604:	8e c0                	mov    es,ax
   3d606:	26 8b 87 82 9b       	mov    ax,WORD PTR es:[bx-0x647e]
   3d60b:	6b c0 0a             	imul   ax,ax,0xa
   3d60e:	03 d0                	add    dx,ax
   3d610:	b8 88 01             	mov    ax,0x188
   3d613:	8e c0                	mov    es,ax
   3d615:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d61a:	6b db 5c             	imul   bx,bx,0x5c
   3d61d:	b8 88 01             	mov    ax,0x188
   3d620:	8e c0                	mov    es,ax
   3d622:	26 89 97 b8 99       	mov    WORD PTR es:[bx-0x6648],dx
   3d627:	6a 00                	push   0x0
   3d629:	68 00 80             	push   0x8000
   3d62c:	9a 79 17 00 00       	call   0x0:0x1779
   3d631:	99                   	cwd
   3d632:	50                   	push   ax
   3d633:	52                   	push   dx
   3d634:	33 d2                	xor    dx,dx
   3d636:	b8 96 00             	mov    ax,0x96
   3d639:	59                   	pop    cx
   3d63a:	5b                   	pop    bx
   3d63b:	9a 42 12 00 00       	call   0x0:0x1242
   3d640:	52                   	push   dx
   3d641:	50                   	push   ax
   3d642:	9a df 12 00 00       	call   0x0:0x12df
   3d647:	50                   	push   ax
   3d648:	6a 00                	push   0x0
   3d64a:	68 00 80             	push   0x8000
   3d64d:	9a 79 17 00 00       	call   0x0:0x1779
   3d652:	99                   	cwd
   3d653:	50                   	push   ax
   3d654:	52                   	push   dx
   3d655:	33 d2                	xor    dx,dx
   3d657:	b8 96 00             	mov    ax,0x96
   3d65a:	59                   	pop    cx
   3d65b:	5b                   	pop    bx
   3d65c:	9a 42 12 00 00       	call   0x0:0x1242
   3d661:	52                   	push   dx
   3d662:	50                   	push   ax
   3d663:	9a df 12 00 00       	call   0x0:0x12df
   3d668:	5a                   	pop    dx
   3d669:	03 d0                	add    dx,ax
   3d66b:	b8 88 01             	mov    ax,0x188
   3d66e:	8e c0                	mov    es,ax
   3d670:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d675:	6b db 5c             	imul   bx,bx,0x5c
   3d678:	b8 88 01             	mov    ax,0x188
   3d67b:	8e c0                	mov    es,ax
   3d67d:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d682:	bb 02 00             	mov    bx,0x2
   3d685:	52                   	push   dx
   3d686:	99                   	cwd
   3d687:	f7 fb                	idiv   bx
   3d689:	5a                   	pop    dx
   3d68a:	2b d0                	sub    dx,ax
   3d68c:	b8 88 01             	mov    ax,0x188
   3d68f:	8e c0                	mov    es,ax
   3d691:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d696:	6b db 24             	imul   bx,bx,0x24
   3d699:	b8 88 01             	mov    ax,0x188
   3d69c:	8e c0                	mov    es,ax
   3d69e:	26 8b 87 84 9b       	mov    ax,WORD PTR es:[bx-0x647c]
   3d6a3:	6b c0 0a             	imul   ax,ax,0xa
   3d6a6:	03 d0                	add    dx,ax
   3d6a8:	b8 88 01             	mov    ax,0x188
   3d6ab:	8e c0                	mov    es,ax
   3d6ad:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d6b2:	6b db 5c             	imul   bx,bx,0x5c
   3d6b5:	b8 88 01             	mov    ax,0x188
   3d6b8:	8e c0                	mov    es,ax
   3d6ba:	26 89 97 c0 99       	mov    WORD PTR es:[bx-0x6640],dx
   3d6bf:	6a 00                	push   0x0
   3d6c1:	68 00 80             	push   0x8000
   3d6c4:	9a 79 17 00 00       	call   0x0:0x1779
   3d6c9:	99                   	cwd
   3d6ca:	50                   	push   ax
   3d6cb:	52                   	push   dx
   3d6cc:	33 d2                	xor    dx,dx
   3d6ce:	b8 96 00             	mov    ax,0x96
   3d6d1:	59                   	pop    cx
   3d6d2:	5b                   	pop    bx
   3d6d3:	9a 42 12 00 00       	call   0x0:0x1242
   3d6d8:	52                   	push   dx
   3d6d9:	50                   	push   ax
   3d6da:	9a df 12 00 00       	call   0x0:0x12df
   3d6df:	50                   	push   ax
   3d6e0:	6a 00                	push   0x0
   3d6e2:	68 00 80             	push   0x8000
   3d6e5:	9a 79 17 00 00       	call   0x0:0x1779
   3d6ea:	99                   	cwd
   3d6eb:	50                   	push   ax
   3d6ec:	52                   	push   dx
   3d6ed:	33 d2                	xor    dx,dx
   3d6ef:	b8 96 00             	mov    ax,0x96
   3d6f2:	59                   	pop    cx
   3d6f3:	5b                   	pop    bx
   3d6f4:	9a 42 12 00 00       	call   0x0:0x1242
   3d6f9:	52                   	push   dx
   3d6fa:	50                   	push   ax
   3d6fb:	9a df 12 00 00       	call   0x0:0x12df
   3d700:	5a                   	pop    dx
   3d701:	03 d0                	add    dx,ax
   3d703:	b8 88 01             	mov    ax,0x188
   3d706:	8e c0                	mov    es,ax
   3d708:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d70d:	6b db 5c             	imul   bx,bx,0x5c
   3d710:	b8 88 01             	mov    ax,0x188
   3d713:	8e c0                	mov    es,ax
   3d715:	26 8b 87 aa 99       	mov    ax,WORD PTR es:[bx-0x6656]
   3d71a:	6b c0 32             	imul   ax,ax,0x32
   3d71d:	2b d0                	sub    dx,ax
   3d71f:	b8 88 01             	mov    ax,0x188
   3d722:	8e c0                	mov    es,ax
   3d724:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d729:	6b db 5c             	imul   bx,bx,0x5c
   3d72c:	b8 88 01             	mov    ax,0x188
   3d72f:	8e c0                	mov    es,ax
   3d731:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3d736:	bb 04 00             	mov    bx,0x4
   3d739:	52                   	push   dx
   3d73a:	99                   	cwd
   3d73b:	f7 fb                	idiv   bx
   3d73d:	5a                   	pop    dx
   3d73e:	2b d0                	sub    dx,ax
   3d740:	b8 88 01             	mov    ax,0x188
   3d743:	8e c0                	mov    es,ax
   3d745:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d74a:	6b db 24             	imul   bx,bx,0x24
   3d74d:	b8 88 01             	mov    ax,0x188
   3d750:	8e c0                	mov    es,ax
   3d752:	26 8b 87 86 9b       	mov    ax,WORD PTR es:[bx-0x647a]
   3d757:	6b c0 0a             	imul   ax,ax,0xa
   3d75a:	03 d0                	add    dx,ax
   3d75c:	b8 88 01             	mov    ax,0x188
   3d75f:	8e c0                	mov    es,ax
   3d761:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d766:	6b db 5c             	imul   bx,bx,0x5c
   3d769:	b8 88 01             	mov    ax,0x188
   3d76c:	8e c0                	mov    es,ax
   3d76e:	26 89 97 bc 99       	mov    WORD PTR es:[bx-0x6644],dx
   3d773:	6a 00                	push   0x0
   3d775:	68 00 80             	push   0x8000
   3d778:	9a 79 17 00 00       	call   0x0:0x1779
   3d77d:	99                   	cwd
   3d77e:	50                   	push   ax
   3d77f:	52                   	push   dx
   3d780:	33 d2                	xor    dx,dx
   3d782:	b8 97 00             	mov    ax,0x97
   3d785:	59                   	pop    cx
   3d786:	5b                   	pop    bx
   3d787:	9a 42 12 00 00       	call   0x0:0x1242
   3d78c:	52                   	push   dx
   3d78d:	50                   	push   ax
   3d78e:	9a df 12 00 00       	call   0x0:0x12df
   3d793:	ba 88 01             	mov    dx,0x188
   3d796:	8e c2                	mov    es,dx
   3d798:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d79d:	6b db 5c             	imul   bx,bx,0x5c
   3d7a0:	ba 88 01             	mov    dx,0x188
   3d7a3:	8e c2                	mov    es,dx
   3d7a5:	50                   	push   ax
   3d7a6:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d7ab:	bb 04 00             	mov    bx,0x4
   3d7ae:	99                   	cwd
   3d7af:	f7 fb                	idiv   bx
   3d7b1:	5a                   	pop    dx
   3d7b2:	03 d0                	add    dx,ax
   3d7b4:	b8 88 01             	mov    ax,0x188
   3d7b7:	8e c0                	mov    es,ax
   3d7b9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d7be:	6b db 24             	imul   bx,bx,0x24
   3d7c1:	b8 88 01             	mov    ax,0x188
   3d7c4:	8e c0                	mov    es,ax
   3d7c6:	26 8b 87 88 9b       	mov    ax,WORD PTR es:[bx-0x6478]
   3d7cb:	6b c0 0a             	imul   ax,ax,0xa
   3d7ce:	03 d0                	add    dx,ax
   3d7d0:	b8 88 01             	mov    ax,0x188
   3d7d3:	8e c0                	mov    es,ax
   3d7d5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d7da:	6b db 5c             	imul   bx,bx,0x5c
   3d7dd:	b8 88 01             	mov    ax,0x188
   3d7e0:	8e c0                	mov    es,ax
   3d7e2:	26 89 97 be 99       	mov    WORD PTR es:[bx-0x6642],dx
   3d7e7:	6a 00                	push   0x0
   3d7e9:	68 00 80             	push   0x8000
   3d7ec:	9a 79 17 00 00       	call   0x0:0x1779
   3d7f1:	99                   	cwd
   3d7f2:	50                   	push   ax
   3d7f3:	52                   	push   dx
   3d7f4:	33 d2                	xor    dx,dx
   3d7f6:	b8 c9 00             	mov    ax,0xc9
   3d7f9:	59                   	pop    cx
   3d7fa:	5b                   	pop    bx
   3d7fb:	9a 42 12 00 00       	call   0x0:0x1242
   3d800:	52                   	push   dx
   3d801:	50                   	push   ax
   3d802:	9a df 12 00 00       	call   0x0:0x12df
   3d807:	ba 88 01             	mov    dx,0x188
   3d80a:	8e c2                	mov    es,dx
   3d80c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d811:	6b db 5c             	imul   bx,bx,0x5c
   3d814:	ba 88 01             	mov    dx,0x188
   3d817:	8e c2                	mov    es,dx
   3d819:	50                   	push   ax
   3d81a:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3d81f:	bb 04 00             	mov    bx,0x4
   3d822:	99                   	cwd
   3d823:	f7 fb                	idiv   bx
   3d825:	5a                   	pop    dx
   3d826:	03 d0                	add    dx,ax
   3d828:	b8 88 01             	mov    ax,0x188
   3d82b:	8e c0                	mov    es,ax
   3d82d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d832:	6b db 5c             	imul   bx,bx,0x5c
   3d835:	b8 88 01             	mov    ax,0x188
   3d838:	8e c0                	mov    es,ax
   3d83a:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3d83f:	bb 04 00             	mov    bx,0x4
   3d842:	52                   	push   dx
   3d843:	99                   	cwd
   3d844:	f7 fb                	idiv   bx
   3d846:	5a                   	pop    dx
   3d847:	03 d0                	add    dx,ax
   3d849:	b8 88 01             	mov    ax,0x188
   3d84c:	8e c0                	mov    es,ax
   3d84e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d853:	6b db 5c             	imul   bx,bx,0x5c
   3d856:	b8 88 01             	mov    ax,0x188
   3d859:	8e c0                	mov    es,ax
   3d85b:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3d860:	bb 04 00             	mov    bx,0x4
   3d863:	52                   	push   dx
   3d864:	99                   	cwd
   3d865:	f7 fb                	idiv   bx
   3d867:	5a                   	pop    dx
   3d868:	2b d0                	sub    dx,ax
   3d86a:	b8 88 01             	mov    ax,0x188
   3d86d:	8e c0                	mov    es,ax
   3d86f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d874:	6b db 5c             	imul   bx,bx,0x5c
   3d877:	b8 88 01             	mov    ax,0x188
   3d87a:	8e c0                	mov    es,ax
   3d87c:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d881:	bb 04 00             	mov    bx,0x4
   3d884:	52                   	push   dx
   3d885:	99                   	cwd
   3d886:	f7 fb                	idiv   bx
   3d888:	5a                   	pop    dx
   3d889:	2b d0                	sub    dx,ax
   3d88b:	b8 88 01             	mov    ax,0x188
   3d88e:	8e c0                	mov    es,ax
   3d890:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d895:	6b db 24             	imul   bx,bx,0x24
   3d898:	b8 88 01             	mov    ax,0x188
   3d89b:	8e c0                	mov    es,ax
   3d89d:	26 8b 87 8a 9b       	mov    ax,WORD PTR es:[bx-0x6476]
   3d8a2:	6b c0 0a             	imul   ax,ax,0xa
   3d8a5:	03 d0                	add    dx,ax
   3d8a7:	b8 88 01             	mov    ax,0x188
   3d8aa:	8e c0                	mov    es,ax
   3d8ac:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d8b1:	6b db 5c             	imul   bx,bx,0x5c
   3d8b4:	b8 88 01             	mov    ax,0x188
   3d8b7:	8e c0                	mov    es,ax
   3d8b9:	26 89 97 c2 99       	mov    WORD PTR es:[bx-0x663e],dx
   3d8be:	6a 00                	push   0x0
   3d8c0:	68 00 80             	push   0x8000
   3d8c3:	9a 79 17 00 00       	call   0x0:0x1779
   3d8c8:	99                   	cwd
   3d8c9:	50                   	push   ax
   3d8ca:	52                   	push   dx
   3d8cb:	33 d2                	xor    dx,dx
   3d8cd:	b8 c9 00             	mov    ax,0xc9
   3d8d0:	59                   	pop    cx
   3d8d1:	5b                   	pop    bx
   3d8d2:	9a 42 12 00 00       	call   0x0:0x1242
   3d8d7:	52                   	push   dx
   3d8d8:	50                   	push   ax
   3d8d9:	9a df 12 00 00       	call   0x0:0x12df
   3d8de:	ba 88 01             	mov    dx,0x188
   3d8e1:	8e c2                	mov    es,dx
   3d8e3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d8e8:	6b db 5c             	imul   bx,bx,0x5c
   3d8eb:	ba 88 01             	mov    dx,0x188
   3d8ee:	8e c2                	mov    es,dx
   3d8f0:	26 8b 97 aa 99       	mov    dx,WORD PTR es:[bx-0x6656]
   3d8f5:	4a                   	dec    dx
   3d8f6:	6b d2 32             	imul   dx,dx,0x32
   3d8f9:	03 c2                	add    ax,dx
   3d8fb:	ba 88 01             	mov    dx,0x188
   3d8fe:	8e c2                	mov    es,dx
   3d900:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d905:	6b db 5c             	imul   bx,bx,0x5c
   3d908:	ba 88 01             	mov    dx,0x188
   3d90b:	8e c2                	mov    es,dx
   3d90d:	26 8b 97 cc 99       	mov    dx,WORD PTR es:[bx-0x6634]
   3d912:	d1 e2                	shl    dx,1
   3d914:	2b c2                	sub    ax,dx
   3d916:	ba 88 01             	mov    dx,0x188
   3d919:	8e c2                	mov    es,dx
   3d91b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d920:	6b db 5c             	imul   bx,bx,0x5c
   3d923:	ba 88 01             	mov    dx,0x188
   3d926:	8e c2                	mov    es,dx
   3d928:	50                   	push   ax
   3d929:	26 8b 87 ca 99       	mov    ax,WORD PTR es:[bx-0x6636]
   3d92e:	bb 04 00             	mov    bx,0x4
   3d931:	99                   	cwd
   3d932:	f7 fb                	idiv   bx
   3d934:	5a                   	pop    dx
   3d935:	03 d0                	add    dx,ax
   3d937:	b8 88 01             	mov    ax,0x188
   3d93a:	8e c0                	mov    es,ax
   3d93c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d941:	6b db 24             	imul   bx,bx,0x24
   3d944:	b8 88 01             	mov    ax,0x188
   3d947:	8e c0                	mov    es,ax
   3d949:	26 8b 87 8c 9b       	mov    ax,WORD PTR es:[bx-0x6474]
   3d94e:	6b c0 14             	imul   ax,ax,0x14
   3d951:	03 d0                	add    dx,ax
   3d953:	b8 88 01             	mov    ax,0x188
   3d956:	8e c0                	mov    es,ax
   3d958:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d95d:	6b db 5c             	imul   bx,bx,0x5c
   3d960:	b8 88 01             	mov    ax,0x188
   3d963:	8e c0                	mov    es,ax
   3d965:	26 89 97 c4 99       	mov    WORD PTR es:[bx-0x663c],dx
   3d96a:	6a 00                	push   0x0
   3d96c:	68 00 80             	push   0x8000
   3d96f:	9a 79 17 00 00       	call   0x0:0x1779
   3d974:	99                   	cwd
   3d975:	50                   	push   ax
   3d976:	52                   	push   dx
   3d977:	33 d2                	xor    dx,dx
   3d979:	b8 fb 00             	mov    ax,0xfb
   3d97c:	59                   	pop    cx
   3d97d:	5b                   	pop    bx
   3d97e:	9a 42 12 00 00       	call   0x0:0x1242
   3d983:	52                   	push   dx
   3d984:	50                   	push   ax
   3d985:	9a df 12 00 00       	call   0x0:0x12df
   3d98a:	ba 88 01             	mov    dx,0x188
   3d98d:	8e c2                	mov    es,dx
   3d98f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d994:	6b db 5c             	imul   bx,bx,0x5c
   3d997:	ba 88 01             	mov    dx,0x188
   3d99a:	8e c2                	mov    es,dx
   3d99c:	50                   	push   ax
   3d99d:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3d9a2:	bb 04 00             	mov    bx,0x4
   3d9a5:	99                   	cwd
   3d9a6:	f7 fb                	idiv   bx
   3d9a8:	5a                   	pop    dx
   3d9a9:	2b d0                	sub    dx,ax
   3d9ab:	b8 88 01             	mov    ax,0x188
   3d9ae:	8e c0                	mov    es,ax
   3d9b0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d9b5:	6b db 5c             	imul   bx,bx,0x5c
   3d9b8:	b8 88 01             	mov    ax,0x188
   3d9bb:	8e c0                	mov    es,ax
   3d9bd:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3d9c2:	bb 04 00             	mov    bx,0x4
   3d9c5:	52                   	push   dx
   3d9c6:	99                   	cwd
   3d9c7:	f7 fb                	idiv   bx
   3d9c9:	5a                   	pop    dx
   3d9ca:	2b d0                	sub    dx,ax
   3d9cc:	b8 88 01             	mov    ax,0x188
   3d9cf:	8e c0                	mov    es,ax
   3d9d1:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d9d6:	6b db 24             	imul   bx,bx,0x24
   3d9d9:	b8 88 01             	mov    ax,0x188
   3d9dc:	8e c0                	mov    es,ax
   3d9de:	26 8b 87 8e 9b       	mov    ax,WORD PTR es:[bx-0x6472]
   3d9e3:	6b c0 0a             	imul   ax,ax,0xa
   3d9e6:	03 d0                	add    dx,ax
   3d9e8:	b8 88 01             	mov    ax,0x188
   3d9eb:	8e c0                	mov    es,ax
   3d9ed:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3d9f2:	6b db 5c             	imul   bx,bx,0x5c
   3d9f5:	b8 88 01             	mov    ax,0x188
   3d9f8:	8e c0                	mov    es,ax
   3d9fa:	26 89 97 c6 99       	mov    WORD PTR es:[bx-0x663a],dx
   3d9ff:	6a 00                	push   0x0
   3da01:	68 00 80             	push   0x8000
   3da04:	9a 79 17 00 00       	call   0x0:0x1779
   3da09:	99                   	cwd
   3da0a:	50                   	push   ax
   3da0b:	52                   	push   dx
   3da0c:	33 d2                	xor    dx,dx
   3da0e:	b8 97 00             	mov    ax,0x97
   3da11:	59                   	pop    cx
   3da12:	5b                   	pop    bx
   3da13:	9a 42 12 00 00       	call   0x0:0x1242
   3da18:	52                   	push   dx
   3da19:	50                   	push   ax
   3da1a:	9a df 12 00 00       	call   0x0:0x12df
   3da1f:	05 32 00             	add    ax,0x32
   3da22:	ba 88 01             	mov    dx,0x188
   3da25:	8e c2                	mov    es,dx
   3da27:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da2c:	6b db 5c             	imul   bx,bx,0x5c
   3da2f:	ba 88 01             	mov    dx,0x188
   3da32:	8e c2                	mov    es,dx
   3da34:	26 89 87 c8 99       	mov    WORD PTR es:[bx-0x6638],ax
   3da39:	6a 00                	push   0x0
   3da3b:	68 00 80             	push   0x8000
   3da3e:	9a 79 17 00 00       	call   0x0:0x1779
   3da43:	99                   	cwd
   3da44:	50                   	push   ax
   3da45:	52                   	push   dx
   3da46:	33 d2                	xor    dx,dx
   3da48:	b8 06 00             	mov    ax,0x6
   3da4b:	59                   	pop    cx
   3da4c:	5b                   	pop    bx
   3da4d:	9a 42 12 00 00       	call   0x0:0x1242
   3da52:	52                   	push   dx
   3da53:	50                   	push   ax
   3da54:	9a df 12 00 00       	call   0x0:0x12df
   3da59:	05 0f 00             	add    ax,0xf
   3da5c:	ba 88 01             	mov    dx,0x188
   3da5f:	8e c2                	mov    es,dx
   3da61:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da66:	6b db 5c             	imul   bx,bx,0x5c
   3da69:	ba 88 01             	mov    dx,0x188
   3da6c:	8e c2                	mov    es,dx
   3da6e:	26 89 87 ce 99       	mov    WORD PTR es:[bx-0x6632],ax
   3da73:	b8 88 01             	mov    ax,0x188
   3da76:	8e c0                	mov    es,ax
   3da78:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da7d:	6b db 24             	imul   bx,bx,0x24
   3da80:	b8 88 01             	mov    ax,0x188
   3da83:	8e c0                	mov    es,ax
   3da85:	26 8b 87 90 9b       	mov    ax,WORD PTR es:[bx-0x6470]
   3da8a:	ba 88 01             	mov    dx,0x188
   3da8d:	8e c2                	mov    es,dx
   3da8f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3da94:	6b db 5c             	imul   bx,bx,0x5c
   3da97:	ba 88 01             	mov    dx,0x188
   3da9a:	8e c2                	mov    es,dx
   3da9c:	26 89 87 d2 99       	mov    WORD PTR es:[bx-0x662e],ax
   3daa1:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   3daa6:	e9 95 00             	jmp    0x3db3e
   3daa9:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   3daad:	74 2a                	je     0x3dad9
   3daaf:	b8 88 01             	mov    ax,0x188
   3dab2:	8e c0                	mov    es,ax
   3dab4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dab9:	6b db 5c             	imul   bx,bx,0x5c
   3dabc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3dabf:	d1 e0                	shl    ax,1
   3dac1:	03 d8                	add    bx,ax
   3dac3:	b8 88 01             	mov    ax,0x188
   3dac6:	8e c0                	mov    es,ax
   3dac8:	26 83 bf a6 99 32    	cmp    WORD PTR es:[bx-0x665a],0x32
   3dace:	7d 05                	jge    0x3dad5
   3dad0:	b8 32 00             	mov    ax,0x32
   3dad3:	eb 48                	jmp    0x3db1d
   3dad5:	eb 28                	jmp    0x3daff
   3dad7:	eb 44                	jmp    0x3db1d
   3dad9:	b8 88 01             	mov    ax,0x188
   3dadc:	8e c0                	mov    es,ax
   3dade:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dae3:	6b db 5c             	imul   bx,bx,0x5c
   3dae6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3dae9:	d1 e0                	shl    ax,1
   3daeb:	03 d8                	add    bx,ax
   3daed:	b8 88 01             	mov    ax,0x188
   3daf0:	8e c0                	mov    es,ax
   3daf2:	26 83 bf a6 99 03    	cmp    WORD PTR es:[bx-0x665a],0x3
   3daf8:	7d 05                	jge    0x3daff
   3dafa:	b8 03 00             	mov    ax,0x3
   3dafd:	eb d4                	jmp    0x3dad3
   3daff:	b8 88 01             	mov    ax,0x188
   3db02:	8e c0                	mov    es,ax
   3db04:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db09:	6b db 5c             	imul   bx,bx,0x5c
   3db0c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3db0f:	d1 e0                	shl    ax,1
   3db11:	03 d8                	add    bx,ax
   3db13:	b8 88 01             	mov    ax,0x188
   3db16:	8e c0                	mov    es,ax
   3db18:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   3db1d:	ba 88 01             	mov    dx,0x188
   3db20:	8e c2                	mov    es,dx
   3db22:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db27:	6b db 5c             	imul   bx,bx,0x5c
   3db2a:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3db2d:	d1 e2                	shl    dx,1
   3db2f:	03 da                	add    bx,dx
   3db31:	ba 88 01             	mov    dx,0x188
   3db34:	8e c2                	mov    es,dx
   3db36:	26 89 87 a6 99       	mov    WORD PTR es:[bx-0x665a],ax
   3db3b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3db3e:	83 7e fe 10          	cmp    WORD PTR [bp-0x2],0x10
   3db42:	7f 03                	jg     0x3db47
   3db44:	e9 62 ff             	jmp    0x3daa9
   3db47:	90                   	nop
   3db48:	0e                   	push   cs
   3db49:	e8 02 00             	call   0x3db4e
   3db4c:	c9                   	leave
   3db4d:	cb                   	retf
