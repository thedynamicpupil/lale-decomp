
analysis/phase-four/continuation/character-spec-20261014/original-16da.bin:     file format binary


Disassembly of section .data:

0005cfc0 <.data>:
   5cfc0:	c8 0e 00 00          	enter  0xe,0x0
   5cfc4:	a1 58 8f             	mov    ax,ds:0x8f58
   5cfc7:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   5cfca:	ff 76 08             	push   WORD PTR [bp+0x8]
   5cfcd:	ff 76 06             	push   WORD PTR [bp+0x6]
   5cfd0:	9a cc 49 00 00       	call   0x0:0x49cc
   5cfd5:	83 c4 04             	add    sp,0x4
   5cfd8:	6a 00                	push   0x0
   5cfda:	50                   	push   ax
   5cfdb:	9a 1d 0a 20 00       	call   0x20:0xa1d
   5cfe0:	83 c4 04             	add    sp,0x4
   5cfe3:	89 56 f6             	mov    WORD PTR [bp-0xa],dx
   5cfe6:	89 46 f4             	mov    WORD PTR [bp-0xc],ax
   5cfe9:	ff 76 08             	push   WORD PTR [bp+0x8]
   5cfec:	ff 76 06             	push   WORD PTR [bp+0x6]
   5cfef:	ff 76 f6             	push   WORD PTR [bp-0xa]
   5cff2:	ff 76 f4             	push   WORD PTR [bp-0xc]
   5cff5:	9a 7a 53 00 00       	call   0x0:0x537a
   5cffa:	83 c4 08             	add    sp,0x8
   5cffd:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d000:	50                   	push   ax
   5d001:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d004:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d007:	90                   	nop
   5d008:	0e                   	push   cs
   5d009:	e8 68 06             	call   0x5d674
   5d00c:	83 c4 06             	add    sp,0x6
   5d00f:	88 46 fa             	mov    BYTE PTR [bp-0x6],al
   5d012:	1e                   	push   ds
   5d013:	68 5a 8f             	push   0x8f5a
   5d016:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d019:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d01c:	9a f7 48 00 00       	call   0x0:0x48f7
   5d021:	83 c4 08             	add    sp,0x8
   5d024:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d027:	50                   	push   ax
   5d028:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d02b:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d02e:	90                   	nop
   5d02f:	0e                   	push   cs
   5d030:	e8 41 06             	call   0x5d674
   5d033:	83 c4 06             	add    sp,0x6
   5d036:	2a 46 fa             	sub    al,BYTE PTR [bp-0x6]
   5d039:	88 46 fa             	mov    BYTE PTR [bp-0x6],al
   5d03c:	9a 04 02 30 00       	call   0x30:0x204
   5d041:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   5d044:	3d 01 00             	cmp    ax,0x1
   5d047:	74 08                	je     0x5d051
   5d049:	3d 02 00             	cmp    ax,0x2
   5d04c:	74 4d                	je     0x5d09b
   5d04e:	e9 90 00             	jmp    0x5d0e1
   5d051:	6a 05                	push   0x5
   5d053:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d056:	b4 00                	mov    ah,0x0
   5d058:	50                   	push   ax
   5d059:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d05c:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d05f:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d062:	40                   	inc    ax
   5d063:	50                   	push   ax
   5d064:	ff 76 12             	push   WORD PTR [bp+0x12]
   5d067:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d06a:	b4 00                	mov    ah,0x0
   5d06c:	50                   	push   ax
   5d06d:	90                   	nop
   5d06e:	0e                   	push   cs
   5d06f:	e8 91 0a             	call   0x5db03
   5d072:	83 c4 0e             	add    sp,0xe
   5d075:	6a 05                	push   0x5
   5d077:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d07a:	b4 00                	mov    ah,0x0
   5d07c:	50                   	push   ax
   5d07d:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d080:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d083:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d086:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d089:	48                   	dec    ax
   5d08a:	50                   	push   ax
   5d08b:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d08e:	b4 00                	mov    ah,0x0
   5d090:	50                   	push   ax
   5d091:	90                   	nop
   5d092:	0e                   	push   cs
   5d093:	e8 6d 0a             	call   0x5db03
   5d096:	83 c4 0e             	add    sp,0xe
   5d099:	eb 46                	jmp    0x5d0e1
   5d09b:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d09e:	b4 00                	mov    ah,0x0
   5d0a0:	50                   	push   ax
   5d0a1:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d0a4:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d0a7:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d0aa:	40                   	inc    ax
   5d0ab:	50                   	push   ax
   5d0ac:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d0af:	48                   	dec    ax
   5d0b0:	50                   	push   ax
   5d0b1:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d0b4:	b4 00                	mov    ah,0x0
   5d0b6:	50                   	push   ax
   5d0b7:	90                   	nop
   5d0b8:	0e                   	push   cs
   5d0b9:	e8 ee 0c             	call   0x5ddaa
   5d0bc:	83 c4 0c             	add    sp,0xc
   5d0bf:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d0c2:	b4 00                	mov    ah,0x0
   5d0c4:	50                   	push   ax
   5d0c5:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d0c8:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d0cb:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d0ce:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d0d1:	48                   	dec    ax
   5d0d2:	50                   	push   ax
   5d0d3:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d0d6:	b4 00                	mov    ah,0x0
   5d0d8:	50                   	push   ax
   5d0d9:	90                   	nop
   5d0da:	0e                   	push   cs
   5d0db:	e8 cc 0c             	call   0x5ddaa
   5d0de:	83 c4 0c             	add    sp,0xc
   5d0e1:	b8 88 01             	mov    ax,0x188
   5d0e4:	8e c0                	mov    es,ax
   5d0e6:	26 a0 e3 e5          	mov    al,es:0xe5e3
   5d0ea:	50                   	push   ax
   5d0eb:	9a 69 00 30 00       	call   0x30:0x69
   5d0f0:	59                   	pop    cx
   5d0f1:	c6 46 fb 00          	mov    BYTE PTR [bp-0x5],0x0
   5d0f5:	e9 e4 04             	jmp    0x5d5dc
   5d0f8:	b8 88 01             	mov    ax,0x188
   5d0fb:	8e c0                	mov    es,ax
   5d0fd:	26 a0 e3 e5          	mov    al,es:0xe5e3
   5d101:	50                   	push   ax
   5d102:	9a 6b 02 30 00       	call   0x30:0x26b
   5d107:	59                   	pop    cx
   5d108:	9a 45 2e 00 00       	call   0x0:0x2e45
   5d10d:	0b c0                	or     ax,ax
   5d10f:	75 03                	jne    0x5d114
   5d111:	e9 c8 04             	jmp    0x5d5dc
   5d114:	9a d7 29 00 00       	call   0x0:0x29d7
   5d119:	88 46 fb             	mov    BYTE PTR [bp-0x5],al
   5d11c:	b4 00                	mov    ah,0x0
   5d11e:	89 46 f2             	mov    WORD PTR [bp-0xe],ax
   5d121:	b9 04 00             	mov    cx,0x4
   5d124:	bb a4 06             	mov    bx,0x6a4
   5d127:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   5d12a:	3b 46 f2             	cmp    ax,WORD PTR [bp-0xe]
   5d12d:	74 08                	je     0x5d137
   5d12f:	83 c3 02             	add    bx,0x2
   5d132:	e2 f3                	loop   0x5d127
   5d134:	e9 af 02             	jmp    0x5d3e6
   5d137:	2e ff 67 08          	jmp    WORD PTR cs:[bx+0x8]
   5d13b:	9a d7 29 00 00       	call   0x0:0x29d7
   5d140:	e9 99 04             	jmp    0x5d5dc
   5d143:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d146:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d149:	9a cc 49 00 00       	call   0x0:0x49cc
   5d14e:	83 c4 04             	add    sp,0x4
   5d151:	3d 01 00             	cmp    ax,0x1
   5d154:	77 03                	ja     0x5d159
   5d156:	e9 83 04             	jmp    0x5d5dc
   5d159:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d15c:	50                   	push   ax
   5d15d:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d160:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d163:	90                   	nop
   5d164:	0e                   	push   cs
   5d165:	e8 0c 05             	call   0x5d674
   5d168:	83 c4 06             	add    sp,0x6
   5d16b:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5d16e:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d171:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d174:	9a cc 49 00 00       	call   0x0:0x49cc
   5d179:	83 c4 04             	add    sp,0x4
   5d17c:	2d 02 00             	sub    ax,0x2
   5d17f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5d182:	03 d8                	add    bx,ax
   5d184:	26 c6 07 00          	mov    BYTE PTR es:[bx],0x0
   5d188:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d18b:	50                   	push   ax
   5d18c:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d18f:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d192:	90                   	nop
   5d193:	0e                   	push   cs
   5d194:	e8 dd 04             	call   0x5d674
   5d197:	83 c4 06             	add    sp,0x6
   5d19a:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   5d19d:	9a 04 02 30 00       	call   0x30:0x204
   5d1a2:	68 e0 01             	push   0x1e0
   5d1a5:	68 d0 02             	push   0x2d0
   5d1a8:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d1ab:	50                   	push   ax
   5d1ac:	8a 46 1c             	mov    al,BYTE PTR [bp+0x1c]
   5d1af:	50                   	push   ax
   5d1b0:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d1b3:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d1b6:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   5d1b9:	50                   	push   ax
   5d1ba:	6a 0c                	push   0xc
   5d1bc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   5d1bf:	2b 46 fc             	sub    ax,WORD PTR [bp-0x4]
   5d1c2:	50                   	push   ax
   5d1c3:	ff 76 1a             	push   WORD PTR [bp+0x1a]
   5d1c6:	8b 46 18             	mov    ax,WORD PTR [bp+0x18]
   5d1c9:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   5d1cc:	50                   	push   ax
   5d1cd:	9a 30 04 28 00       	call   0x28:0x430
   5d1d2:	83 c4 14             	add    sp,0x14
   5d1d5:	1e                   	push   ds
   5d1d6:	68 5c 8f             	push   0x8f5c
   5d1d9:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d1dc:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d1df:	9a f7 48 00 00       	call   0x0:0x48f7
   5d1e4:	83 c4 08             	add    sp,0x8
   5d1e7:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   5d1ea:	3d 01 00             	cmp    ax,0x1
   5d1ed:	74 08                	je     0x5d1f7
   5d1ef:	3d 02 00             	cmp    ax,0x2
   5d1f2:	74 79                	je     0x5d26d
   5d1f4:	e9 d8 00             	jmp    0x5d2cf
   5d1f7:	6a 05                	push   0x5
   5d1f9:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d1fc:	b4 00                	mov    ah,0x0
   5d1fe:	50                   	push   ax
   5d1ff:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d202:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d205:	9a cc 49 00 00       	call   0x0:0x49cc
   5d20a:	83 c4 04             	add    sp,0x4
   5d20d:	48                   	dec    ax
   5d20e:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d211:	03 d0                	add    dx,ax
   5d213:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d216:	52                   	push   dx
   5d217:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d21a:	40                   	inc    ax
   5d21b:	50                   	push   ax
   5d21c:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d21f:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   5d222:	40                   	inc    ax
   5d223:	50                   	push   ax
   5d224:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d227:	b4 00                	mov    ah,0x0
   5d229:	50                   	push   ax
   5d22a:	90                   	nop
   5d22b:	0e                   	push   cs
   5d22c:	e8 d4 08             	call   0x5db03
   5d22f:	83 c4 0e             	add    sp,0xe
   5d232:	6a 05                	push   0x5
   5d234:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d237:	b4 00                	mov    ah,0x0
   5d239:	50                   	push   ax
   5d23a:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d23d:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d240:	9a cc 49 00 00       	call   0x0:0x49cc
   5d245:	83 c4 04             	add    sp,0x4
   5d248:	48                   	dec    ax
   5d249:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d24c:	03 d0                	add    dx,ax
   5d24e:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d251:	52                   	push   dx
   5d252:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d255:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d258:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   5d25b:	50                   	push   ax
   5d25c:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d25f:	b4 00                	mov    ah,0x0
   5d261:	50                   	push   ax
   5d262:	90                   	nop
   5d263:	0e                   	push   cs
   5d264:	e8 9c 08             	call   0x5db03
   5d267:	83 c4 0e             	add    sp,0xe
   5d26a:	e9 5d 03             	jmp    0x5d5ca
   5d26d:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d270:	b4 00                	mov    ah,0x0
   5d272:	50                   	push   ax
   5d273:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d276:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d279:	9a cc 49 00 00       	call   0x0:0x49cc
   5d27e:	83 c4 04             	add    sp,0x4
   5d281:	48                   	dec    ax
   5d282:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d285:	03 d0                	add    dx,ax
   5d287:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d28a:	52                   	push   dx
   5d28b:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d28e:	40                   	inc    ax
   5d28f:	50                   	push   ax
   5d290:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d293:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   5d296:	50                   	push   ax
   5d297:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d29a:	b4 00                	mov    ah,0x0
   5d29c:	50                   	push   ax
   5d29d:	90                   	nop
   5d29e:	0e                   	push   cs
   5d29f:	e8 08 0b             	call   0x5ddaa
   5d2a2:	83 c4 0c             	add    sp,0xc
   5d2a5:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d2a8:	b4 00                	mov    ah,0x0
   5d2aa:	50                   	push   ax
   5d2ab:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d2ae:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d2b1:	9a cc 49 00 00       	call   0x0:0x49cc
   5d2b6:	83 c4 04             	add    sp,0x4
   5d2b9:	48                   	dec    ax
   5d2ba:	8b 56 06             	mov    dx,WORD PTR [bp+0x6]
   5d2bd:	03 d0                	add    dx,ax
   5d2bf:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d2c2:	52                   	push   dx
   5d2c3:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d2c6:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d2c9:	03 46 fc             	add    ax,WORD PTR [bp-0x4]
   5d2cc:	e9 ec 02             	jmp    0x5d5bb
   5d2cf:	e9 f8 02             	jmp    0x5d5ca
   5d2d2:	e9 07 03             	jmp    0x5d5dc
   5d2d5:	8a 46 0a             	mov    al,BYTE PTR [bp+0xa]
   5d2d8:	50                   	push   ax
   5d2d9:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d2dc:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d2df:	90                   	nop
   5d2e0:	0e                   	push   cs
   5d2e1:	e8 90 03             	call   0x5d674
   5d2e4:	83 c4 06             	add    sp,0x6
   5d2e7:	89 46 fe             	mov    WORD PTR [bp-0x2],ax
   5d2ea:	ff 76 f6             	push   WORD PTR [bp-0xa]
   5d2ed:	ff 76 f4             	push   WORD PTR [bp-0xc]
   5d2f0:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d2f3:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d2f6:	9a 7a 53 00 00       	call   0x0:0x537a
   5d2fb:	83 c4 08             	add    sp,0x8
   5d2fe:	9a 04 02 30 00       	call   0x30:0x204
   5d303:	68 e0 01             	push   0x1e0
   5d306:	68 d0 02             	push   0x2d0
   5d309:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d30c:	50                   	push   ax
   5d30d:	8a 46 1c             	mov    al,BYTE PTR [bp+0x1c]
   5d310:	50                   	push   ax
   5d311:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d314:	ff 76 12             	push   WORD PTR [bp+0x12]
   5d317:	6a 0c                	push   0xc
   5d319:	ff 76 fe             	push   WORD PTR [bp-0x2]
   5d31c:	ff 76 1a             	push   WORD PTR [bp+0x1a]
   5d31f:	ff 76 18             	push   WORD PTR [bp+0x18]
   5d322:	9a 30 04 28 00       	call   0x28:0x430
   5d327:	83 c4 14             	add    sp,0x14
   5d32a:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   5d32d:	3d 01 00             	cmp    ax,0x1
   5d330:	74 08                	je     0x5d33a
   5d332:	3d 02 00             	cmp    ax,0x2
   5d335:	74 4d                	je     0x5d384
   5d337:	e9 90 00             	jmp    0x5d3ca
   5d33a:	6a 05                	push   0x5
   5d33c:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d33f:	b4 00                	mov    ah,0x0
   5d341:	50                   	push   ax
   5d342:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d345:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d348:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d34b:	40                   	inc    ax
   5d34c:	50                   	push   ax
   5d34d:	ff 76 12             	push   WORD PTR [bp+0x12]
   5d350:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d353:	b4 00                	mov    ah,0x0
   5d355:	50                   	push   ax
   5d356:	90                   	nop
   5d357:	0e                   	push   cs
   5d358:	e8 a8 07             	call   0x5db03
   5d35b:	83 c4 0e             	add    sp,0xe
   5d35e:	6a 05                	push   0x5
   5d360:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d363:	b4 00                	mov    ah,0x0
   5d365:	50                   	push   ax
   5d366:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d369:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d36c:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d36f:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d372:	48                   	dec    ax
   5d373:	50                   	push   ax
   5d374:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d377:	b4 00                	mov    ah,0x0
   5d379:	50                   	push   ax
   5d37a:	90                   	nop
   5d37b:	0e                   	push   cs
   5d37c:	e8 84 07             	call   0x5db03
   5d37f:	83 c4 0e             	add    sp,0xe
   5d382:	eb 46                	jmp    0x5d3ca
   5d384:	8a 46 0e             	mov    al,BYTE PTR [bp+0xe]
   5d387:	b4 00                	mov    ah,0x0
   5d389:	50                   	push   ax
   5d38a:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d38d:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d390:	8b 46 14             	mov    ax,WORD PTR [bp+0x14]
   5d393:	40                   	inc    ax
   5d394:	50                   	push   ax
   5d395:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d398:	48                   	dec    ax
   5d399:	50                   	push   ax
   5d39a:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d39d:	b4 00                	mov    ah,0x0
   5d39f:	50                   	push   ax
   5d3a0:	90                   	nop
   5d3a1:	0e                   	push   cs
   5d3a2:	e8 05 0a             	call   0x5ddaa
   5d3a5:	83 c4 0c             	add    sp,0xc
   5d3a8:	8a 46 0c             	mov    al,BYTE PTR [bp+0xc]
   5d3ab:	b4 00                	mov    ah,0x0
   5d3ad:	50                   	push   ax
   5d3ae:	ff 76 08             	push   WORD PTR [bp+0x8]
   5d3b1:	ff 76 06             	push   WORD PTR [bp+0x6]
   5d3b4:	ff 76 14             	push   WORD PTR [bp+0x14]
   5d3b7:	8b 46 12             	mov    ax,WORD PTR [bp+0x12]
   5d3ba:	48                   	dec    ax
   5d3bb:	50                   	push   ax
   5d3bc:	8a 46 16             	mov    al,BYTE PTR [bp+0x16]
   5d3bf:	b4 00                	mov    ah,0x0
   5d3c1:	50                   	push   ax
   5d3c2:	90                   	nop
   5d3c3:	0e                   	push   cs
   5d3c4:	e8               	call   0x5ddaa
