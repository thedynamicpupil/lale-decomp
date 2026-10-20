
/home/zabumafu/Projects/LALE DOS/analysis/phase-five/lifecycle-20261014/otopark/condition-and-control.bin:     file format binary


Disassembly of section .data:

00043f49 <.data>:
   43f49:	90                   	nop
   43f4a:	0e                   	push   cs
   43f4b:	e8 85 45             	call   0x484d3
   43f4e:	88 46 e5             	mov    BYTE PTR [bp-0x1b],al
   43f51:	80 3e 0b 5c 00       	cmp    BYTE PTR ds:0x5c0b,0x0
   43f56:	74 17                	je     0x43f6f
   43f58:	8a 46 e5             	mov    al,BYTE PTR [bp-0x1b]
   43f5b:	b4 00                	mov    ah,0x0
   43f5d:	50                   	push   ax
   43f5e:	1e                   	push   ds
   43f5f:	68 a8 5e             	push   0x5ea8
   43f62:	9a 53 42 00 00       	call   0x0:0x4253
   43f67:	83 c4 06             	add    sp,0x6
   43f6a:	9a d7 29 00 00       	call   0x0:0x29d7
   43f6f:	8a 46 e5             	mov    al,BYTE PTR [bp-0x1b]
   43f72:	b4 00                	mov    ah,0x0
   43f74:	48                   	dec    ax
   43f75:	8b d8                	mov    bx,ax
   43f77:	83 fb 20             	cmp    bx,0x20
   43f7a:	76 03                	jbe    0x43f7f
   43f7c:	e9 22 17             	jmp    0x456a1
   43f7f:	d1 e3                	shl    bx,1
   43f81:	2e ff a7 8c 20       	jmp    WORD PTR cs:[bx+0x208c]
   43f86:	90                   	nop
   43f87:	0e                   	push   cs
   43f88:	e8 48 45             	call   0x484d3
   43f8b:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   43f8e:	80 7e e4 01          	cmp    BYTE PTR [bp-0x1c],0x1
   43f92:	75 6f                	jne    0x44003
   43f94:	90                   	nop
   43f95:	0e                   	push   cs
   43f96:	e8 3a 45             	call   0x484d3
   43f99:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   43f9c:	90                   	nop
   43f9d:	0e                   	push   cs
   43f9e:	e8 32 45             	call   0x484d3
   43fa1:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   43fa4:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43fa7:	b4 00                	mov    ah,0x0
   43fa9:	50                   	push   ax
   43faa:	90                   	nop
   43fab:	0e                   	push   cs
   43fac:	e8 6d 41             	call   0x4811c
   43faf:	59                   	pop    cx
   43fb0:	88 46 e0             	mov    BYTE PTR [bp-0x20],al
   43fb3:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   43fb8:	76 2b                	jbe    0x43fe5
   43fba:	80 7e e0 00          	cmp    BYTE PTR [bp-0x20],0x0
   43fbe:	74 07                	je     0x43fc7
   43fc0:	8c da                	mov    dx,ds
   43fc2:	b8 c9 5e             	mov    ax,0x5ec9
   43fc5:	eb 05                	jmp    0x43fcc
   43fc7:	8c da                	mov    dx,ds
   43fc9:	b8 cf 5e             	mov    ax,0x5ecf
   43fcc:	52                   	push   dx
   43fcd:	50                   	push   ax
   43fce:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   43fd1:	b4 00                	mov    ah,0x0
   43fd3:	50                   	push   ax
   43fd4:	1e                   	push   ds
   43fd5:	68 b6 5e             	push   0x5eb6
   43fd8:	9a 53 42 00 00       	call   0x0:0x4253
   43fdd:	83 c4 0a             	add    sp,0xa
   43fe0:	9a d7 29 00 00       	call   0x0:0x29d7
   43fe5:	8a 46 e0             	mov    al,BYTE PTR [bp-0x20]
   43fe8:	b4 00                	mov    ah,0x0
   43fea:	0b c0                	or     ax,ax
   43fec:	74 03                	je     0x43ff1
   43fee:	e9 dd 16             	jmp    0x456ce
   43ff1:	8a 46 e2             	mov    al,BYTE PTR [bp-0x1e]
   43ff4:	b4 00                	mov    ah,0x0
   43ff6:	50                   	push   ax
   43ff7:	90                   	nop
   43ff8:	0e                   	push   cs
   43ff9:	e8 3f 45             	call   0x4853b
   43ffc:	59                   	pop    cx
   43ffd:	e9 ce 16             	jmp    0x456ce
   44000:	e9 cb 16             	jmp    0x456ce
   44003:	80 7e e4 02          	cmp    BYTE PTR [bp-0x1c],0x2
   44007:	75 45                	jne    0x4404e
   44009:	90                   	nop
   4400a:	0e                   	push   cs
   4400b:	e8 c5 44             	call   0x484d3
   4400e:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44011:	90                   	nop
   44012:	0e                   	push   cs
   44013:	e8 bd 44             	call   0x484d3
   44016:	88 46 e2             	mov    BYTE PTR [bp-0x1e],al
   44019:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   4401e:	76 1b                	jbe    0x4403b
   44020:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44023:	b4 00                	mov    ah,0x0
   44025:	50                   	push   ax
   44026:	ff 36 9e bb          	push   WORD PTR ds:0xbb9e
   4402a:	1e                   	push   ds
   4402b:	68 d7 5e             	push   0x5ed7
   4402e:	9a 53 42 00 00       	call   0x0:0x4253
   44033:	83 c4 08             	add    sp,0x8
   44036:	9a d7 29 00 00       	call   0x0:0x29d7
   4403b:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   4403e:	b4 00                	mov    ah,0x0
   44040:	3b 06 9e bb          	cmp    ax,WORD PTR ds:0xbb9e
   44044:	75 03                	jne    0x44049
   44046:	e9 85 16             	jmp    0x456ce
   44049:	eb a6                	jmp    0x43ff1
   4404b:	e9 80 16             	jmp    0x456ce
   4404e:	6a 57                	push   0x57
   44050:	6a 00                	push   0x0
   44052:	6a 00                	push   0x0
   44054:	68 62 01             	push   0x162
   44057:	1e                   	push   ds
   44058:	68 eb 5e             	push   0x5eeb
   4405b:	e9 68 16             	jmp    0x456c6
   4405e:	e9 6d 16             	jmp    0x456ce
