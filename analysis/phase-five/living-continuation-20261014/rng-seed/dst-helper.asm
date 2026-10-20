
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

00014fa2 <.data+0x4fa2>:
   14fa2:	55                   	push   bp
   14fa3:	8b ec                	mov    bp,sp
   14fa5:	56                   	push   si
   14fa6:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   14faa:	75 2c                	jne    0x14fd8
   14fac:	8b 76 08             	mov    si,WORD PTR [bp+0x8]
   14faf:	83 7e 08 3b          	cmp    WORD PTR [bp+0x8],0x3b
   14fb3:	72 0c                	jb     0x14fc1
   14fb5:	8b 46 04             	mov    ax,WORD PTR [bp+0x4]
   14fb8:	05 46 00             	add    ax,0x46
   14fbb:	a9 03 00             	test   ax,0x3
   14fbe:	75 01                	jne    0x14fc1
   14fc0:	4e                   	dec    si
   14fc1:	c7 46 06 00 00       	mov    WORD PTR [bp+0x6],0x0
   14fc6:	eb 03                	jmp    0x14fcb
   14fc8:	ff 46 06             	inc    WORD PTR [bp+0x6]
   14fcb:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   14fce:	d1 e3                	shl    bx,1
   14fd0:	39 b7 ac 95          	cmp    WORD PTR [bx-0x6a54],si
   14fd4:	76 f2                	jbe    0x14fc8
   14fd6:	eb 21                	jmp    0x14ff9
   14fd8:	83 7e 06 03          	cmp    WORD PTR [bp+0x6],0x3
   14fdc:	72 0b                	jb     0x14fe9
   14fde:	8b 46 04             	mov    ax,WORD PTR [bp+0x4]
   14fe1:	05 46 00             	add    ax,0x46
   14fe4:	a9 03 00             	test   ax,0x3
   14fe7:	74 03                	je     0x14fec
   14fe9:	ff 4e 08             	dec    WORD PTR [bp+0x8]
   14fec:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   14fef:	4b                   	dec    bx
   14ff0:	d1 e3                	shl    bx,1
   14ff2:	8b 87 ac 95          	mov    ax,WORD PTR [bx-0x6a54]
   14ff6:	01 46 08             	add    WORD PTR [bp+0x8],ax
   14ff9:	83 7e 06 04          	cmp    WORD PTR [bp+0x6],0x4
   14ffd:	72 7b                	jb     0x1507a
   14fff:	74 08                	je     0x15009
   15001:	83 7e 06 0a          	cmp    WORD PTR [bp+0x6],0xa
   15005:	77 73                	ja     0x1507a
   15007:	75 6c                	jne    0x15075
   15009:	8b 5e 06             	mov    bx,WORD PTR [bp+0x6]
   1500c:	d1 e3                	shl    bx,1
   1500e:	83 7e 04 10          	cmp    WORD PTR [bp+0x4],0x10
   15012:	7e 0f                	jle    0x15023
   15014:	83 7e 06 04          	cmp    WORD PTR [bp+0x6],0x4
   15018:	75 09                	jne    0x15023
   1501a:	8b 8f aa 95          	mov    cx,WORD PTR [bx-0x6a56]
   1501e:	83 c1 07             	add    cx,0x7
   15021:	eb 04                	jmp    0x15027
   15023:	8b 8f ac 95          	mov    cx,WORD PTR [bx-0x6a54]
   15027:	8b 5e 04             	mov    bx,WORD PTR [bp+0x4]
   1502a:	81 c3 b2 07          	add    bx,0x7b2
   1502e:	f6 c3 03             	test   bl,0x3
   15031:	74 01                	je     0x15034
   15033:	49                   	dec    cx
   15034:	8b 5e 04             	mov    bx,WORD PTR [bp+0x4]
   15037:	43                   	inc    bx
   15038:	d1 fb                	sar    bx,1
   1503a:	d1 fb                	sar    bx,1
   1503c:	03 d9                	add    bx,cx
   1503e:	b8 6d 01             	mov    ax,0x16d
   15041:	f7 66 04             	mul    WORD PTR [bp+0x4]
   15044:	03 c3                	add    ax,bx
   15046:	05 04 00             	add    ax,0x4
   15049:	33 d2                	xor    dx,dx
   1504b:	bb 07 00             	mov    bx,0x7
   1504e:	f7 f3                	div    bx
   15050:	2b ca                	sub    cx,dx
   15052:	8b 46 08             	mov    ax,WORD PTR [bp+0x8]
   15055:	83 7e 06 04          	cmp    WORD PTR [bp+0x6],0x4
   15059:	75 0e                	jne    0x15069
   1505b:	3b c1                	cmp    ax,cx
   1505d:	77 16                	ja     0x15075
   1505f:	75 19                	jne    0x1507a
   15061:	80 7e 0a 02          	cmp    BYTE PTR [bp+0xa],0x2
   15065:	72 13                	jb     0x1507a
   15067:	eb 0c                	jmp    0x15075
   15069:	3b c1                	cmp    ax,cx
   1506b:	72 08                	jb     0x15075
   1506d:	75 0b                	jne    0x1507a
   1506f:	80 7e 0a 01          	cmp    BYTE PTR [bp+0xa],0x1
   15073:	77 05                	ja     0x1507a
   15075:	b8 01 00             	mov    ax,0x1
   15078:	eb 02                	jmp    0x1507c
   1507a:	33 c0                	xor    ax,ax
   1507c:	5e                   	pop    si
   1507d:	5d                   	pop    bp
   1507e:	c2               	ret    0x8
