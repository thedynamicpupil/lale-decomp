
/home/zabumafu/Projects/LALE DOS/analysis/phase-five/lifecycle-20261014/otopark/event-bit-storage.bin:     file format binary


Disassembly of section .data:

0004811c <.data>:
   4811c:	55                   	push   bp
   4811d:	8b ec                	mov    bp,sp
   4811f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   48122:	bb 08 00             	mov    bx,0x8
   48125:	99                   	cwd
   48126:	f7 fb                	idiv   bx
   48128:	b0 01                	mov    al,0x1
   4812a:	8a ca                	mov    cl,dl
   4812c:	d2 e0                	shl    al,cl
   4812e:	50                   	push   ax
   4812f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   48132:	bb 08 00             	mov    bx,0x8
   48135:	99                   	cwd
   48136:	f7 fb                	idiv   bx
   48138:	ba 88 01             	mov    dx,0x188
   4813b:	8b d8                	mov    bx,ax
   4813d:	8e c2                	mov    es,dx
   4813f:	26 8a 87 ca b9       	mov    al,BYTE PTR es:[bx-0x4636]
   48144:	5a                   	pop    dx
   48145:	22 c2                	and    al,dl
   48147:	5d                   	pop    bp
   48148:	cb                   	retf
   48149:	55                   	push   bp
   4814a:	8b ec                	mov    bp,sp
   4814c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4814f:	bb 08 00             	mov    bx,0x8
   48152:	99                   	cwd
   48153:	f7 fb                	idiv   bx
   48155:	b0 01                	mov    al,0x1
   48157:	8a ca                	mov    cl,dl
   48159:	d2 e0                	shl    al,cl
   4815b:	50                   	push   ax
   4815c:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4815f:	bb 08 00             	mov    bx,0x8
   48162:	99                   	cwd
   48163:	f7 fb                	idiv   bx
   48165:	ba 88 01             	mov    dx,0x188
   48168:	8b d8                	mov    bx,ax
   4816a:	8e c2                	mov    es,dx
   4816c:	58                   	pop    ax
   4816d:	26 08 87 ca b9       	or     BYTE PTR es:[bx-0x4636],al
   48172:	5d                   	pop    bp
   48173:	cb                   	retf
   48174:	55                   	push   bp
   48175:	8b ec                	mov    bp,sp
   48177:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4817a:	bb 08 00             	mov    bx,0x8
   4817d:	99                   	cwd
   4817e:	f7 fb                	idiv   bx
   48180:	b0 01                	mov    al,0x1
   48182:	8a ca                	mov    cl,dl
   48184:	d2 e0                	shl    al,cl
   48186:	f6 d0                	not    al
   48188:	50                   	push   ax
   48189:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   4818c:	bb 08 00             	mov    bx,0x8
   4818f:	99                   	cwd
   48190:	f7 fb                	idiv   bx
   48192:	ba 88 01             	mov    dx,0x188
   48195:	8b d8                	mov    bx,ax
   48197:	8e c2                	mov    es,dx
   48199:	58                   	pop    ax
   4819a:	26 20 87 ca b9       	and    BYTE PTR es:[bx-0x4636],al
   4819f:	5d                   	pop    bp
   481a0:	cb                   	retf
