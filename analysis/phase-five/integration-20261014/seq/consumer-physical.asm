
lale/IST.EXE:     file format binary


Disassembly of section .data:

00058e56 <.data+0x58e56>:
   58e56:	55                   	push   %bp
   58e57:	8b ec                	mov    %sp,%bp
   58e59:	83 ec 0a             	sub    $0xa,%sp
   58e5c:	56                   	push   %si
   58e5d:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
   58e62:	a1 f2 d5             	mov    0xd5f2,%ax
   58e65:	3b 06 18 d6          	cmp    -0x29e8,%ax
   58e69:	7f 03                	jg     0x58e6e
   58e6b:	e9 31 04             	jmp    0x5929f
   58e6e:	b8 88 01             	mov    $0x188,%ax
   58e71:	8e c0                	mov    %ax,%es
   58e73:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   58e79:	74 64                	je     0x58edf
   58e7b:	83 3e 26 d6 00       	cmpw   $0x0,-0x29da
   58e80:	76 5d                	jbe    0x58edf
   58e82:	a1 f2 d5             	mov    0xd5f2,%ax
   58e85:	c1 e0 03             	shl    $0x3,%ax
   58e88:	c4 1e 1c d6          	les    -0x29e4,%bx
   58e8c:	03 d8                	add    %ax,%bx
   58e8e:	26 8a 47 07          	mov    %es:0x7(%bx),%al
   58e92:	98                   	cbtw
   58e93:	25 7f 00             	and    $0x7f,%ax
   58e96:	d1 f8                	sar    $1,%ax
   58e98:	8b 16 f2 d5          	mov    -0x2a0e,%dx
   58e9c:	c1 e2 03             	shl    $0x3,%dx
   58e9f:	c4 1e 1c d6          	les    -0x29e4,%bx
   58ea3:	03 da                	add    %dx,%bx
   58ea5:	50                   	push   %ax
   58ea6:	26 8a 47 07          	mov    %es:0x7(%bx),%al
   58eaa:	98                   	cbtw
   58eab:	25 01 00             	and    $0x1,%ax
   58eae:	d1 e0                	shl    $1,%ax
   58eb0:	48                   	dec    %ax
   58eb1:	f7 d8                	neg    %ax
   58eb3:	8b d0                	mov    %ax,%dx
   58eb5:	58                   	pop    %ax
   58eb6:	f7 ea                	imul   %dx
   58eb8:	88 46 ff             	mov    %al,-0x1(%bp)
   58ebb:	8a 46 ff             	mov    -0x1(%bp),%al
   58ebe:	98                   	cbtw
   58ebf:	99                   	cwtd
   58ec0:	52                   	push   %dx
   58ec1:	50                   	push   %ax
   58ec2:	9a 77 15 68 00       	lcall  $0x68,$0x1577
   58ec7:	80 7e ff 00          	cmpb   $0x0,-0x1(%bp)
   58ecb:	7d 08                	jge    0x58ed5
   58ecd:	8a 46 ff             	mov    -0x1(%bp),%al
   58ed0:	fe 46 ff             	incb   -0x1(%bp)
   58ed3:	eb 06                	jmp    0x58edb
   58ed5:	8a 46 ff             	mov    -0x1(%bp),%al
   58ed8:	fe 4e ff             	decb   -0x1(%bp)
   58edb:	0a c0                	or     %al,%al
   58edd:	75 dc                	jne    0x58ebb
   58edf:	a1 16 d6             	mov    0xd616,%ax
   58ee2:	40                   	inc    %ax
   58ee3:	3b 06 f2 d5          	cmp    -0x2a0e,%ax
   58ee7:	7d 15                	jge    0x58efe
   58ee9:	a1 f2 d5             	mov    0xd5f2,%ax
   58eec:	c1 e0 03             	shl    $0x3,%ax
   58eef:	c4 1e 1c d6          	les    -0x29e4,%bx
   58ef3:	03 d8                	add    %ax,%bx
   58ef5:	26 80 3f 00          	cmpb   $0x0,%es:(%bx)
   58ef9:	75 03                	jne    0x58efe
   58efb:	e9 a1 03             	jmp    0x5929f
   58efe:	a1 f2 d5             	mov    0xd5f2,%ax
   58f01:	c1 e0 03             	shl    $0x3,%ax
   58f04:	c4 1e 1c d6          	les    -0x29e4,%bx
   58f08:	03 d8                	add    %ax,%bx
   58f0a:	26 f6 47 07 80       	testb  $0x80,%es:0x7(%bx)
   58f0f:	75 03                	jne    0x58f14
   58f11:	e9 93 00             	jmp    0x58fa7
   58f14:	a1 f2 d5             	mov    0xd5f2,%ax
   58f17:	c1 e0 03             	shl    $0x3,%ax
   58f1a:	c4 1e 1c d6          	les    -0x29e4,%bx
   58f1e:	03 d8                	add    %ax,%bx
   58f20:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   58f24:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   58f28:	3b 06 0a d6          	cmp    -0x29f6,%ax
   58f2c:	76 03                	jbe    0x58f31
   58f2e:	e9 8f 00             	jmp    0x58fc0
   58f31:	75 09                	jne    0x58f3c
   58f33:	3b 16 08 d6          	cmp    -0x29f8,%dx
   58f37:	76 03                	jbe    0x58f3c
   58f39:	e9 84 00             	jmp    0x58fc0
   58f3c:	ff 36 02 d6          	push   -0x29fe
   58f40:	ff 36 00 d6          	push   -0x2a00
   58f44:	6a 00                	push   $0x0
   58f46:	68 00 03             	push   $0x300
   58f49:	6a 00                	push   $0x0
   58f4b:	a1 f2 d5             	mov    0xd5f2,%ax
   58f4e:	c1 e0 03             	shl    $0x3,%ax
   58f51:	c4 1e 1c d6          	les    -0x29e4,%bx
   58f55:	03 d8                	add    %ax,%bx
   58f57:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   58f5b:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   58f5f:	81 ea 00 03          	sub    $0x300,%dx
   58f63:	1d 00 00             	sbb    $0x0,%ax
   58f66:	50                   	push   %ax
   58f67:	52                   	push   %dx
   58f68:	b8 88 01             	mov    $0x188,%ax
   58f6b:	8e c0                	mov    %ax,%es
   58f6d:	26 ff 36 f1 e5       	push   %es:-0x1a0f
   58f72:	26 ff 36 ef e5       	push   %es:-0x1a11
   58f77:	ff 36 f6 d5          	push   -0x2a0a
   58f7b:	ff 36 f4 d5          	push   -0x2a0c
   58f7f:	0e                   	push   %cs
   58f80:	e8 3d f5             	call   0x584c0
   58f83:	83 c4 16             	add    $0x16,%sp
   58f86:	b8 88 01             	mov    $0x188,%ax
   58f89:	8e c0                	mov    %ax,%es
   58f8b:	26 ff 36 f1 e5       	push   %es:-0x1a0f
   58f90:	26 ff 36 ef e5       	push   %es:-0x1a11
   58f95:	9a 50 00 30 00       	lcall  $0x30,$0x50
   58f9a:	83 c4 04             	add    $0x4,%sp
   58f9d:	c7 06 1a d6 01 00    	movw   $0x1,-0x29e6
   58fa3:	eb 1b                	jmp    0x58fc0
   58fa5:	eb 19                	jmp    0x58fc0
   58fa7:	83 3e 1a d6 00       	cmpw   $0x0,-0x29e6
   58fac:	74 12                	je     0x58fc0
   58fae:	1e                   	push   %ds
   58faf:	68 30 d6             	push   $0xd630
   58fb2:	9a 50 00 30 00       	lcall  $0x30,$0x50
   58fb7:	83 c4 04             	add    $0x4,%sp
   58fba:	c7 06 1a d6 00 00    	movw   $0x0,-0x29e6
   58fc0:	a1 f2 d5             	mov    0xd5f2,%ax
   58fc3:	c1 e0 03             	shl    $0x3,%ax
   58fc6:	c4 1e 1c d6          	les    -0x29e4,%bx
   58fca:	03 d8                	add    %ax,%bx
   58fcc:	26 8a 07             	mov    %es:(%bx),%al
   58fcf:	b4 00                	mov    $0x0,%ah
   58fd1:	3d 01 00             	cmp    $0x1,%ax
   58fd4:	75 03                	jne    0x58fd9
   58fd6:	e9 aa 00             	jmp    0x59083
   58fd9:	3d 02 00             	cmp    $0x2,%ax
   58fdc:	74 03                	je     0x58fe1
   58fde:	e9 a5 00             	jmp    0x59086
   58fe1:	a1 f2 d5             	mov    0xd5f2,%ax
   58fe4:	c1 e0 03             	shl    $0x3,%ax
   58fe7:	c4 1e 1c d6          	les    -0x29e4,%bx
   58feb:	03 d8                	add    %ax,%bx
   58fed:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   58ff1:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   58ff5:	03 16 26 d6          	add    -0x29da,%dx
   58ff9:	15 00 00             	adc    $0x0,%ax
   58ffc:	3b 06 0a d6          	cmp    -0x29f6,%ax
   59000:	77 79                	ja     0x5907b
   59002:	75 06                	jne    0x5900a
   59004:	3b 16 08 d6          	cmp    -0x29f8,%dx
   59008:	77 71                	ja     0x5907b
   5900a:	b8 88 01             	mov    $0x188,%ax
   5900d:	8e c0                	mov    %ax,%es
   5900f:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   59015:	74 64                	je     0x5907b
   59017:	83 3e 26 d6 00       	cmpw   $0x0,-0x29da
   5901c:	76 5d                	jbe    0x5907b
   5901e:	ff 36 02 d6          	push   -0x29fe
   59022:	ff 36 00 d6          	push   -0x2a00
   59026:	6a 00                	push   $0x0
   59028:	ff 36 26 d6          	push   -0x29da
   5902c:	a0 25 d6             	mov    0xd625,%al
   5902f:	b4 00                	mov    $0x0,%ah
   59031:	50                   	push   %ax
   59032:	a1 f2 d5             	mov    0xd5f2,%ax
   59035:	99                   	cwtd
   59036:	5b                   	pop    %bx
   59037:	f7 fb                	idiv   %bx
   59039:	40                   	inc    %ax
   5903a:	bb 02 00             	mov    $0x2,%bx
   5903d:	99                   	cwtd
   5903e:	f7 fb                	idiv   %bx
   59040:	8b c2                	mov    %dx,%ax
   59042:	f7 2e 26 d6          	imulw  -0x29da
   59046:	6a 00                	push   $0x0
   59048:	50                   	push   %ax
   59049:	a1 f2 d5             	mov    0xd5f2,%ax
   5904c:	c1 e0 03             	shl    $0x3,%ax
   5904f:	c4 1e 1c d6          	les    -0x29e4,%bx
   59053:	03 d8                	add    %ax,%bx
   59055:	26 ff 77 05          	push   %es:0x5(%bx)
   59059:	26 ff 77 03          	push   %es:0x3(%bx)
   5905d:	b8 88 01             	mov    $0x188,%ax
   59060:	8e c0                	mov    %ax,%es
   59062:	26 ff 36 86 e2       	push   %es:-0x1d7a
   59067:	26 ff 36 84 e2       	push   %es:-0x1d7c
   5906c:	ff 36 f6 d5          	push   -0x2a0a
   59070:	ff 36 f4 d5          	push   -0x2a0c
   59074:	0e                   	push   %cs
   59075:	e8 8d f5             	call   0x58605
   59078:	83 c4 18             	add    $0x18,%sp
   5907b:	a1 26 d6             	mov    0xd626,%ax
   5907e:	89 46 fc             	mov    %ax,-0x4(%bp)
   59081:	eb 03                	jmp    0x59086
   59083:	e9 35 01             	jmp    0x591bb
   59086:	a1 f2 d5             	mov    0xd5f2,%ax
   59089:	c1 e0 03             	shl    $0x3,%ax
   5908c:	c4 1e 1c d6          	les    -0x29e4,%bx
   59090:	03 d8                	add    %ax,%bx
   59092:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   59096:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   5909a:	03 56 fc             	add    -0x4(%bp),%dx
   5909d:	15 00 00             	adc    $0x0,%ax
   590a0:	8b 1e f2 d5          	mov    -0x2a0e,%bx
   590a4:	c1 e3 03             	shl    $0x3,%bx
   590a7:	c4 36 1c d6          	les    -0x29e4,%si
   590ab:	03 f3                	add    %bx,%si
   590ad:	26 03 54 01          	add    %es:0x1(%si),%dx
   590b1:	15 00 00             	adc    $0x0,%ax
   590b4:	3b 06 0a d6          	cmp    -0x29f6,%ax
   590b8:	76 03                	jbe    0x590bd
   590ba:	e9 04 01             	jmp    0x591c1
   590bd:	75 09                	jne    0x590c8
   590bf:	3b 16 08 d6          	cmp    -0x29f8,%dx
   590c3:	76 03                	jbe    0x590c8
   590c5:	e9 f9 00             	jmp    0x591c1
   590c8:	ff 36 02 d6          	push   -0x29fe
   590cc:	ff 36 00 d6          	push   -0x2a00
   590d0:	a1 f2 d5             	mov    0xd5f2,%ax
   590d3:	c1 e0 03             	shl    $0x3,%ax
   590d6:	c4 1e 1c d6          	les    -0x29e4,%bx
   590da:	03 d8                	add    %ax,%bx
   590dc:	6a 00                	push   $0x0
   590de:	26 ff 77 01          	push   %es:0x1(%bx)
   590e2:	6a 00                	push   $0x0
   590e4:	6a 00                	push   $0x0
   590e6:	a1 f2 d5             	mov    0xd5f2,%ax
   590e9:	c1 e0 03             	shl    $0x3,%ax
   590ec:	c4 1e 1c d6          	les    -0x29e4,%bx
   590f0:	03 d8                	add    %ax,%bx
   590f2:	26 8b 47 05          	mov    %es:0x5(%bx),%ax
   590f6:	26 8b 57 03          	mov    %es:0x3(%bx),%dx
   590fa:	03 56 fc             	add    -0x4(%bp),%dx
   590fd:	15 00 00             	adc    $0x0,%ax
   59100:	50                   	push   %ax
   59101:	52                   	push   %dx
   59102:	ff 36 fa d5          	push   -0x2a06
   59106:	ff 36 f8 d5          	push   -0x2a08
   5910a:	ff 36 f6 d5          	push   -0x2a0a
   5910e:	ff 36 f4 d5          	push   -0x2a0c
   59112:	0e                   	push   %cs
   59113:	e8 ef f4             	call   0x58605
   59116:	83 c4 18             	add    $0x18,%sp
   59119:	c4 1e f8 d5          	les    -0x2a08,%bx
   5911d:	26 ff 37             	push   %es:(%bx)
   59120:	6a 00                	push   $0x0
   59122:	6a 00                	push   $0x0
   59124:	a1 f2 d5             	mov    0xd5f2,%ax
   59127:	c1 e0 03             	shl    $0x3,%ax
   5912a:	c4 1e 1c d6          	les    -0x29e4,%bx
   5912e:	03 d8                	add    %ax,%bx
   59130:	26 ff 77 01          	push   %es:0x1(%bx)
   59134:	9a 88 06 98 00       	lcall  $0x98,$0x688
   59139:	89 56 fa             	mov    %dx,-0x6(%bp)
   5913c:	89 46 f8             	mov    %ax,-0x8(%bp)
   5913f:	33 c9                	xor    %cx,%cx
   59141:	33 db                	xor    %bx,%bx
   59143:	9a 59 12 00 00       	lcall  $0x0,$0x1259
   59148:	75 14                	jne    0x5915e
   5914a:	6a 10                	push   $0x10
   5914c:	6a 00                	push   $0x0
   5914e:	6a 00                	push   $0x0
   59150:	6a 4d                	push   $0x4d
   59152:	1e                   	push   %ds
   59153:	68 74 6b             	push   $0x6b74
   59156:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   5915b:	83 c4 0c             	add    $0xc,%sp
   5915e:	a1 f2 d5             	mov    0xd5f2,%ax
   59161:	c1 e0 03             	shl    $0x3,%ax
   59164:	c4 1e 1c d6          	les    -0x29e4,%bx
   59168:	03 d8                	add    %ax,%bx
   5916a:	26 ff 77 01          	push   %es:0x1(%bx)
   5916e:	ff 76 fa             	push   -0x6(%bp)
   59171:	ff 76 f8             	push   -0x8(%bp)
   59174:	c4 1e fc d5          	les    -0x2a04,%bx
   59178:	26 ff 77 02          	push   %es:0x2(%bx)
   5917c:	26 ff 37             	push   %es:(%bx)
   5917f:	0e                   	push   %cs
   59180:	e8 cd f6             	call   0x58850
   59183:	83 c4 0a             	add    $0xa,%sp
   59186:	ba da 03             	mov    $0x3da,%dx
   59189:	ec                   	in     (%dx),%al
   5918a:	b4 00                	mov    $0x0,%ah
   5918c:	25 08 00             	and    $0x8,%ax
   5918f:	3d 08 00             	cmp    $0x8,%ax
   59192:	75 f2                	jne    0x59186
   59194:	ba da 03             	mov    $0x3da,%dx
   59197:	ec                   	in     (%dx),%al
   59198:	a8 08                	test   $0x8,%al
   5919a:	75 f8                	jne    0x59194
   5919c:	b8 88 01             	mov    $0x188,%ax
   5919f:	8e c0                	mov    %ax,%es
   591a1:	26 ff 36 a1 e2       	push   %es:-0x1d5f
   591a6:	26 ff 36 9f e2       	push   %es:-0x1d61
   591ab:	ff 36 fe d5          	push   -0x2a02
   591af:	ff 36 fc d5          	push   -0x2a04
   591b3:	9a 8a 06 20 00       	lcall  $0x20,$0x68a
   591b8:	83 c4 08             	add    $0x8,%sp
   591bb:	a1 f2 d5             	mov    0xd5f2,%ax
   591be:	a3 16 d6             	mov    %ax,0xd616
   591c1:	80 7e 06 00          	cmpb   $0x0,0x6(%bp)
   591c5:	75 03                	jne    0x591ca
   591c7:	e9 d5 00             	jmp    0x5929f
   591ca:	b8 88 01             	mov    $0x188,%ax
   591cd:	8e c0                	mov    %ax,%es
   591cf:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   591d5:	75 03                	jne    0x591da
   591d7:	e9 c5 00             	jmp    0x5929f
   591da:	83 3e 26 d6 00       	cmpw   $0x0,-0x29da
   591df:	77 03                	ja     0x591e4
   591e1:	e9 bb 00             	jmp    0x5929f
   591e4:	a1 26 d6             	mov    0xd626,%ax
   591e7:	33 d2                	xor    %dx,%dx
   591e9:	d1 e0                	shl    $1,%ax
   591eb:	d1 d2                	rcl    $1,%dx
   591ed:	52                   	push   %dx
   591ee:	50                   	push   %ax
   591ef:	6a 00                	push   $0x0
   591f1:	68 e8 03             	push   $0x3e8
   591f4:	b8 88 01             	mov    $0x188,%ax
   591f7:	8e c0                	mov    %ax,%es
   591f9:	26 8b 0e 4c e7       	mov    %es:-0x18b4,%cx
   591fe:	26 8b 1e 4a e7       	mov    %es:-0x18b6,%bx
   59203:	2b 1e 0e d6          	sub    -0x29f2,%bx
   59207:	1b 0e 10 d6          	sbb    -0x29f0,%cx
   5920b:	a1 26 d6             	mov    0xd626,%ax
   5920e:	33 d2                	xor    %dx,%dx
   59210:	9a 42 12 00 00       	lcall  $0x0,$0x1242
   59215:	52                   	push   %dx
   59216:	50                   	push   %ax
   59217:	9a df 12 00 00       	lcall  $0x0,$0x12df
   5921c:	52                   	push   %dx
   5921d:	50                   	push   %ax
   5921e:	9a ee 12 00 00       	lcall  $0x0,$0x12ee
   59223:	89 56 fa             	mov    %dx,-0x6(%bp)
   59226:	89 46 f8             	mov    %ax,-0x8(%bp)
   59229:	6a 00                	push   $0x0
   5922b:	ff 36 26 d6          	push   -0x29da
   5922f:	ff 76 fa             	push   -0x6(%bp)
   59232:	ff 76 f8             	push   -0x8(%bp)
   59235:	9a df 12 00 00       	lcall  $0x0,$0x12df
   5923a:	88 46 f7             	mov    %al,-0x9(%bp)
   5923d:	6a 00                	push   $0x0
   5923f:	ff 36 26 d6          	push   -0x29da
   59243:	b8 88 01             	mov    $0x188,%ax
   59246:	8e c0                	mov    %ax,%es
   59248:	26 a0 d7 73          	mov    %es:0x73d7,%al
   5924c:	b4 00                	mov    $0x0,%ah
   5924e:	48                   	dec    %ax
   5924f:	99                   	cwtd
   59250:	52                   	push   %dx
   59251:	50                   	push   %ax
   59252:	9a 56 03 60 00       	lcall  $0x60,$0x356
   59257:	52                   	push   %dx
   59258:	50                   	push   %ax
   59259:	9a e6 12 00 00       	lcall  $0x0,$0x12e6
   5925e:	88 46 f6             	mov    %al,-0xa(%bp)
   59261:	8a 46 f6             	mov    -0xa(%bp),%al
   59264:	3a 46 f7             	cmp    -0x9(%bp),%al
   59267:	74 36                	je     0x5929f
   59269:	b8 88 01             	mov    $0x188,%ax
   5926c:	8e c0                	mov    %ax,%es
   5926e:	26 a0 d7 73          	mov    %es:0x73d7,%al
   59272:	b4 00                	mov    $0x0,%ah
   59274:	48                   	dec    %ax
   59275:	99                   	cwtd
   59276:	52                   	push   %dx
   59277:	50                   	push   %ax
   59278:	ff 76 fa             	push   -0x6(%bp)
   5927b:	ff 76 f8             	push   -0x8(%bp)
   5927e:	9a 8a 01 60 00       	lcall  $0x60,$0x18a
   59283:	b8 88 01             	mov    $0x188,%ax
   59286:	8e c0                	mov    %ax,%es
   59288:	26 a0 d7 73          	mov    %es:0x73d7,%al
   5928c:	b4 00                	mov    $0x0,%ah
   5928e:	05 fe ff             	add    $0xfffe,%ax
   59291:	99                   	cwtd
   59292:	52                   	push   %dx
   59293:	50                   	push   %ax
   59294:	ff 76 fa             	push   -0x6(%bp)
   59297:	ff 76 f8             	push   -0x8(%bp)
   5929a:	9a 8a 01 60 00       	lcall  $0x60,$0x18a
   5929f:	a1 f2 d5             	mov    0xd5f2,%ax
   592a2:	a3 18 d6             	mov    %ax,0xd618
   592a5:	5e                   	pop    %si
   592a6:	c9                   	leave
   592a7:	cb                   	lret
