
analysis/phase-five/world-ui-20261016/text-case-original.bin:     file format binary


Disassembly of section .data:

0005df44 <.data>:
   5df44:	c8 02 00 00          	enter  0x2,0x0
   5df48:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   5df4d:	eb 75                	jmp    0x5dfc4
   5df4f:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df52:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df55:	26 8a 07             	mov    al,BYTE PTR es:[bx]
   5df58:	98                   	cbw
   5df59:	2d 43 00             	sub    ax,0x43
   5df5c:	8b d8                	mov    bx,ax
   5df5e:	83 fb 12             	cmp    bx,0x12
   5df61:	77 4d                	ja     0x5dfb0
   5df63:	d1 e3                	shl    bx,1
   5df65:	2e ff a7 22 10       	jmp    WORD PTR cs:[bx+0x1022]
   5df6a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df6d:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df70:	26 c6 07 8d          	mov    BYTE PTR es:[bx],0x8d
   5df74:	eb 3a                	jmp    0x5dfb0
   5df76:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df79:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df7c:	26 c6 07 a7          	mov    BYTE PTR es:[bx],0xa7
   5df80:	eb 2e                	jmp    0x5dfb0
   5df82:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df85:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df88:	26 c6 07 9f          	mov    BYTE PTR es:[bx],0x9f
   5df8c:	eb 22                	jmp    0x5dfb0
   5df8e:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df91:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5df94:	26 c6 07 87          	mov    BYTE PTR es:[bx],0x87
   5df98:	eb 16                	jmp    0x5dfb0
   5df9a:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5df9d:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5dfa0:	26 c6 07 81          	mov    BYTE PTR es:[bx],0x81
   5dfa4:	eb 0a                	jmp    0x5dfb0
   5dfa6:	c4 5e 06             	les    bx,DWORD PTR [bp+0x6]
   5dfa9:	03 5e fe             	add    bx,WORD PTR [bp-0x2]
   5dfac:	26 c6 07 94          	mov    BYTE PTR es:[bx],0x94
   5dfb0:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   5dfb3:	03 46 fe             	add    ax,WORD PTR [bp-0x2]
   5dfb6:	ff 76 08             	push   WORD PTR [bp+0x8]
   5dfb9:	50                   	push   ax
   5dfba:	0e                   	push   cs
   5dfbb:	e8 d3 f9             	call   0x5d991
   5dfbe:	83 c4 04             	add    sp,0x4
   5dfc1:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   5dfc4:	ff 76 08             	push   WORD PTR [bp+0x8]
   5dfc7:	ff 76 06             	push   WORD PTR [bp+0x6]
   5dfca:	9a cc 49 00 00       	call   0x0:0x49cc
   5dfcf:	83 c4 04             	add    sp,0x4
   5dfd2:	3b 46 fe             	cmp    ax,WORD PTR [bp-0x2]
   5dfd5:	76 03                	jbe    0x5dfda
   5dfd7:	e9 75 ff             	jmp    0x5df4f
   5dfda:	8b 56 08             	mov    dx,WORD PTR [bp+0x8]
   5dfdd:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   5dfe0:	c9                   	leave
   5dfe1:	cb                   	retf
   5dfe2:	ce                   	into
   5dfe3:	0f f0                	(bad)
   5dfe5:	0f f0                	(bad)
   5dfe7:	0f f0                	(bad)
   5dfe9:	0f b6 0f             	movzx  cx,BYTE PTR [bx]
   5dfec:	f0 0f aa             	lock rsm
   5dfef:	0f f0                	(bad)
   5dff1:	0f f0                	(bad)
   5dff3:	0f f0                	(bad)
   5dff5:	0f f0                	(bad)
   5dff7:	0f f0                	(bad)
   5dff9:	0f e6                	(bad)
   5dffb:	0f f0                	(bad)
   5dffd:	0f f0                	(bad)
   5dfff:	0f f0                	(bad)
   5e001:	0f c2 0f f0          	cmpps  xmm1,XMMWORD PTR [bx],0xf0
   5e005:	0f da 0f             	pminub mm1,QWORD PTR [bx]
   5e008:	c8 04 00 00          	enter  0x4,0x0
   5e00c:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   5e00f:	b4 00                	mov    ah,0x0
   5e011:	89 46 fc             	mov    WORD PTR [bp-0x4],ax
   5e014:	b9 06 00             	mov    cx,0x6
   5e017:	bb 9c 10             	mov    bx,0x109c
   5e01a:	2e 8b 07             	mov    ax,WORD PTR cs:[bx]
   5e01d:	3b 46 fc             	cmp    ax,WORD PTR [bp-0x4]
   5e020:	74 07                	je     0x5e029
   5e022:	83 c3 02             	add    bx,0x2
   5e025:	e2 f3                	loop   0x5e01a
   5e027:	eb 28                	jmp    0x5e051
   5e029:	2e ff 67 0c          	jmp    WORD PTR cs:[bx+0xc]
   5e02d:	c6 46 ff 73          	mov    BYTE PTR [bp-0x1],0x73
   5e031:	eb 24                	jmp    0x5e057
   5e033:	c6 46 ff 67          	mov    BYTE PTR [bp-0x1],0x67
   5e037:	eb 1e                	jmp    0x5e057
   5e039:	c6 46 ff 6f          	mov    BYTE PTR [bp-0x1],0x6f
   5e03d:	eb 18                	jmp    0x5e057
   5e03f:	c6 46 ff 75          	mov    BYTE PTR [bp-0x1],0x75
   5e043:	eb 12                	jmp    0x5e057
   5e045:	c6 46 ff 63          	mov    BYTE PTR [bp-0x1],0x63
   5e049:	eb 0c                	jmp    0x5e057
   5e04b:	c6 46 ff 69          	mov    BYTE PTR [bp-0x1],0x69
   5e04f:	eb 06                	jmp    0x5e057
   5e051:	8a 46 06             	mov    al,BYTE PTR [bp+0x6]
   5e054:	88 46 ff             	mov    BYTE PTR [bp-0x1],al
   5e057:	8a 46 ff             	mov    al,BYTE PTR [bp-0x1]
   5e05a:	c9                   	leave
   5e05b:	cb                   	retf
   5e05c:	81 00 87 00          	add    WORD PTR [bx+si],0x87
   5e060:	8d 00                	lea    ax,[bx+si]
   5e062:	94                   	xchg   sp,ax
   5e063:	00 9f 00 a7          	add    BYTE PTR [bx-0x5900],bl
   5e067:	00 7f 10             	add    BYTE PTR [bx+0x10],bh
   5e06a:	85 10                	test   WORD PTR [bx+si],dx
   5e06c:	8b 10                	mov    dx,WORD PTR [bx+si]
   5e06e:	79 10                	jns    0x5e080
   5e070:	6d                   	ins    WORD PTR es:[di],dx
   5e071:	10 73 10             	adc    BYTE PTR [bp+di+0x10],dh
