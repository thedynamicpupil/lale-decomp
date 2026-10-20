
analysis/phase-five/combat-runtime-20261020/defeat-helper-body-original.bin:     file format binary


Disassembly of section .data:

00040f91 <.data>:
   40f91:	55                   	push   bp
   40f92:	8b ec                	mov    bp,sp
   40f94:	b8 88 01             	mov    ax,0x188
   40f97:	8e c0                	mov    es,ax
   40f99:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   40f9f:	74 50                	je     0x40ff1
   40fa1:	9a 96 12 68 00       	call   0x68:0x1296
   40fa6:	b8 88 01             	mov    ax,0x188
   40fa9:	8e c0                	mov    es,ax
   40fab:	26 a1 75 bb          	mov    ax,es:0xbb75
   40faf:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   40fb4:	74 3b                	je     0x40ff1
   40fb6:	b8 88 01             	mov    ax,0x188
   40fb9:	8e c0                	mov    es,ax
   40fbb:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40fc0:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40fc5:	9a 03 00 80 00       	call   0x80:0x3
   40fca:	b8 88 01             	mov    ax,0x188
   40fcd:	8e c0                	mov    es,ax
   40fcf:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   40fd4:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   40fd9:	9a da 00 58 00       	call   0x58:0xda
   40fde:	b8 88 01             	mov    ax,0x188
   40fe1:	8e c0                	mov    es,ax
   40fe3:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   40fea:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   40ff1:	6a 00                	push   0x0
   40ff3:	6a 3a                	push   0x3a
   40ff5:	9a 39 00 30 01       	call   0x130:0x39
   40ffa:	83 c4 04             	add    sp,0x4
   40ffd:	9a 66 00 10 01       	call   0x110:0x66
   41002:	6a 00                	push   0x0
   41004:	6a 00                	push   0x0
   41006:	6a 0a                	push   0xa
   41008:	90                   	nop
   41009:	0e                   	push   cs
   4100a:	e8 c5 04             	call   0x414d2
   4100d:	83 c4 06             	add    sp,0x6
   41010:	9a b9 1e 10 00       	call   0x10:0x1eb9
   41015:	6a 00                	push   0x0
   41017:	6a 01                	push   0x1
   41019:	1e                   	push   ds
   4101a:	68 f6 56             	push   0x56f6
   4101d:	9a 48 29 10 00       	call   0x10:0x2948
   41022:	83 c4 08             	add    sp,0x8
   41025:	b8 88 01             	mov    ax,0x188
   41028:	8e c0                	mov    es,ax
   4102a:	26 a0 e3 e5          	mov    al,es:0xe5e3
   4102e:	50                   	push   ax
   4102f:	9a 6b 02 30 00       	call   0x30:0x26b
   41034:	59                   	pop    cx
   41035:	9a 72 13 68 00       	call   0x68:0x1372
   4103a:	3d 01 00             	cmp    ax,0x1
   4103d:	74 e6                	je     0x41025
   4103f:	9a b9 1e 10 00       	call   0x10:0x1eb9
   41044:	6a 00                	push   0x0
   41046:	6a 01                	push   0x1
   41048:	1e                   	push   ds
   41049:	68 40 57             	push   0x5740
   4104c:	9a 48 29 10 00       	call   0x10:0x2948
   41051:	83 c4 08             	add    sp,0x8
   41054:	1e                   	push   ds
   41055:	68 6b 57             	push   0x576b
   41058:	1e                   	push   ds
   41059:	68 66 57             	push   0x5766
   4105c:	9a 98 21 10 00       	call   0x10:0x2198
   41061:	83 c4 08             	add    sp,0x8
   41064:	9a b9 1e 10 00       	call   0x10:0x1eb9
   41069:	b8 88 01             	mov    ax,0x188
   4106c:	8e c0                	mov    es,ax
   4106e:	26 83 3e 9e bb 00    	cmp    WORD PTR es:0xbb9e,0x0
   41074:	75 03                	jne    0x41079
   41076:	e9 8a 00             	jmp    0x41103
   41079:	b8 88 01             	mov    ax,0x188
   4107c:	8e c0                	mov    es,ax
   4107e:	26 a1 1a 73          	mov    ax,es:0x731a
   41082:	f7 d8                	neg    ax
   41084:	50                   	push   ax
   41085:	b8 88 01             	mov    ax,0x188
   41088:	8e c0                	mov    es,ax
   4108a:	26 a1 18 73          	mov    ax,es:0x7318
   4108e:	f7 d8                	neg    ax
   41090:	50                   	push   ax
   41091:	68 e8 03             	push   0x3e8
   41094:	9a 3f 07 30 00       	call   0x30:0x73f
   41099:	83 c4 06             	add    sp,0x6
   4109c:	b8 88 01             	mov    ax,0x188
   4109f:	8e c0                	mov    es,ax
   410a1:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   410a7:	74 50                	je     0x410f9
   410a9:	9a 96 12 68 00       	call   0x68:0x1296
   410ae:	b8 88 01             	mov    ax,0x188
   410b1:	8e c0                	mov    es,ax
   410b3:	26 a1 75 bb          	mov    ax,es:0xbb75
   410b7:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   410bc:	74 3b                	je     0x410f9
   410be:	b8 88 01             	mov    ax,0x188
   410c1:	8e c0                	mov    es,ax
   410c3:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   410c8:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   410cd:	9a 03 00 80 00       	call   0x80:0x3
   410d2:	b8 88 01             	mov    ax,0x188
   410d5:	8e c0                	mov    es,ax
   410d7:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   410dc:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   410e1:	9a da 00 58 00       	call   0x58:0xda
   410e6:	b8 88 01             	mov    ax,0x188
   410e9:	8e c0                	mov    es,ax
   410eb:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   410f2:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   410f9:	9a 66 00 10 01       	call   0x110:0x66
   410fe:	90                   	nop
   410ff:	0e                   	push   cs
   41100:	e8 19 06             	call   0x4171c
   41103:	6a 00                	push   0x0
   41105:	9a 93 00 18 01       	call   0x118:0x93
   4110a:	59                   	pop    cx
   4110b:	b4 00                	mov    ah,0x0
   4110d:	0b c0                	or     ax,ax
   4110f:	75 03                	jne    0x41114
   41111:	e9 2b ff             	jmp    0x4103f
   41114:	5d                   	pop    bp
   41115:	cb                   	retf
