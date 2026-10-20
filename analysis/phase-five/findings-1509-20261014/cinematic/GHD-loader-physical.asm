
lale/IST.EXE:     file format binary


Disassembly of section .data:

00058990 <.data+0x58990>:
   58990:	55                   	push   %bp
   58991:	8b ec                	mov    %sp,%bp
   58993:	83 ec 06             	sub    $0x6,%sp
   58996:	ff 76 08             	push   0x8(%bp)
   58999:	ff 76 06             	push   0x6(%bp)
   5899c:	6a 02                	push   $0x2
   5899e:	9a 25 00 70 01       	lcall  $0x170,$0x25
   589a3:	89 46 fe             	mov    %ax,-0x2(%bp)
   589a6:	3d ff ff             	cmp    $0xffff,%ax
   589a9:	75 14                	jne    0x589bf
   589ab:	6a ff                	push   $0xffff
   589ad:	1e                   	push   %ds
   589ae:	68 49 69             	push   $0x6949
   589b1:	6a 08                	push   $0x8
   589b3:	1e                   	push   %ds
   589b4:	68 30 69             	push   $0x6930
   589b7:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   589bc:	83 c4 0c             	add    $0xc,%sp
   589bf:	ff 76 fe             	push   -0x2(%bp)
   589c2:	1e                   	push   %ds
   589c3:	68 20 d6             	push   $0xd620
   589c6:	6a 00                	push   $0x0
   589c8:	68 10 03             	push   $0x310
   589cb:	9a 2f 00 70 01       	lcall  $0x170,$0x2f
   589d0:	83 fa ff             	cmp    $0xffff,%dx
   589d3:	75 19                	jne    0x589ee
   589d5:	3d ff ff             	cmp    $0xffff,%ax
   589d8:	75 14                	jne    0x589ee
   589da:	6a ff                	push   $0xffff
   589dc:	1e                   	push   %ds
   589dd:	68 79 69             	push   $0x6979
   589e0:	6a 0b                	push   $0xb
   589e2:	1e                   	push   %ds
   589e3:	68 60 69             	push   $0x6960
   589e6:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   589eb:	83 c4 0c             	add    $0xc,%sp
   589ee:	a0 20 d6             	mov    0xd620,%al
   589f1:	98                   	cbtw
   589f2:	50                   	push   %ax
   589f3:	a0 21 d6             	mov    0xd621,%al
   589f6:	98                   	cbtw
   589f7:	5a                   	pop    %dx
   589f8:	03 d0                	add    %ax,%dx
   589fa:	a0 22 d6             	mov    0xd622,%al
   589fd:	98                   	cbtw
   589fe:	03 d0                	add    %ax,%dx
   58a00:	81 fa d9 00          	cmp    $0xd9,%dx
   58a04:	74 14                	je     0x58a1a
   58a06:	6a ff                	push   $0xffff
   58a08:	1e                   	push   %ds
   58a09:	68 a9 69             	push   $0x69a9
   58a0c:	6a 0f                	push   $0xf
   58a0e:	1e                   	push   %ds
   58a0f:	68 90 69             	push   $0x6990
   58a12:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   58a17:	83 c4 0c             	add    $0xc,%sp
   58a1a:	a1 23 d6             	mov    0xd623,%ax
   58a1d:	c1 e0 03             	shl    $0x3,%ax
   58a20:	6a 00                	push   $0x0
   58a22:	50                   	push   %ax
   58a23:	9a 1d 0a 20 00       	lcall  $0x20,$0xa1d
   58a28:	83 c4 04             	add    $0x4,%sp
   58a2b:	89 16 1e d6          	mov    %dx,-0x29e2
   58a2f:	a3 1c d6             	mov    %ax,0xd61c
   58a32:	a1 1c d6             	mov    0xd61c,%ax
   58a35:	0b 06 1e d6          	or     -0x29e2,%ax
   58a39:	75 14                	jne    0x58a4f
   58a3b:	6a ff                	push   $0xffff
   58a3d:	1e                   	push   %ds
   58a3e:	68 d7 69             	push   $0x69d7
   58a41:	6a 13                	push   $0x13
   58a43:	1e                   	push   %ds
   58a44:	68 be 69             	push   $0x69be
   58a47:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   58a4c:	83 c4 0c             	add    $0xc,%sp
   58a4f:	b8 88 01             	mov    $0x188,%ax
   58a52:	8e c0                	mov    %ax,%es
   58a54:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   58a5a:	74 16                	je     0x58a72
   58a5c:	83 3e 26 d6 00       	cmpw   $0x0,-0x29da
   58a61:	76 0f                	jbe    0x58a72
   58a63:	6a 02                	push   $0x2
   58a65:	ff 36 26 d6          	push   -0x29da
   58a69:	6a 30                	push   $0x30
   58a6b:	0e                   	push   %cs
   58a6c:	e8 92 fc             	call   0x58701
   58a6f:	83 c4 06             	add    $0x6,%sp
   58a72:	68 00 03             	push   $0x300
   58a75:	1e                   	push   %ds
   58a76:	68 30 d6             	push   $0xd630
   58a79:	b8 88 01             	mov    $0x188,%ax
   58a7c:	8e c0                	mov    %ax,%es
   58a7e:	26 ff 36 f1 e5       	push   %es:-0x1a0f
   58a83:	26 ff 36 ef e5       	push   %es:-0x1a11
   58a88:	9a 01 40 00 00       	lcall  $0x0,$0x4001
   58a8d:	83 c4 0a             	add    $0xa,%sp
   58a90:	b8 88 01             	mov    $0x188,%ax
   58a93:	8e c0                	mov    %ax,%es
   58a95:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   58a9b:	74 7c                	je     0x58b19
   58a9d:	83 3e 26 d6 00       	cmpw   $0x0,-0x29da
   58aa2:	76 75                	jbe    0x58b19
   58aa4:	b8 88 01             	mov    $0x188,%ax
   58aa7:	8e c0                	mov    %ax,%es
   58aa9:	26 c4 1e 84 e2       	les    %es:-0x1d7c,%bx
   58aae:	26 ff 37             	push   %es:(%bx)
   58ab1:	6a 00                	push   $0x0
   58ab3:	6a 00                	push   $0x0
   58ab5:	ff 36 26 d6          	push   -0x29da
   58ab9:	9a 88 06 98 00       	lcall  $0x98,$0x688
   58abe:	89 56 fc             	mov    %dx,-0x4(%bp)
   58ac1:	89 46 fa             	mov    %ax,-0x6(%bp)
   58ac4:	33 c9                	xor    %cx,%cx
   58ac6:	33 db                	xor    %bx,%bx
   58ac8:	9a 59 12 00 00       	lcall  $0x0,$0x1259
   58acd:	75 14                	jne    0x58ae3
   58acf:	6a 10                	push   $0x10
   58ad1:	6a 00                	push   $0x0
   58ad3:	6a 00                	push   $0x0
   58ad5:	6a 20                	push   $0x20
   58ad7:	1e                   	push   %ds
   58ad8:	68 ee 69             	push   $0x69ee
   58adb:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   58ae0:	83 c4 0c             	add    $0xc,%sp
   58ae3:	ff 76 fe             	push   -0x2(%bp)
   58ae6:	ff 76 fc             	push   -0x4(%bp)
   58ae9:	ff 76 fa             	push   -0x6(%bp)
   58aec:	6a 00                	push   $0x0
   58aee:	ff 36 26 d6          	push   -0x29da
   58af2:	9a 2f 00 70 01       	lcall  $0x170,$0x2f
   58af7:	83 fa ff             	cmp    $0xffff,%dx
   58afa:	75 2d                	jne    0x58b29
   58afc:	3d ff ff             	cmp    $0xffff,%ax
   58aff:	75 28                	jne    0x58b29
   58b01:	6a ff                	push   $0xffff
   58b03:	1e                   	push   %ds
   58b04:	68 20 6a             	push   $0x6a20
   58b07:	6a 22                	push   $0x22
   58b09:	1e                   	push   %ds
   58b0a:	68 07 6a             	push   $0x6a07
   58b0d:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   58b12:	83 c4 0c             	add    $0xc,%sp
   58b15:	eb 12                	jmp    0x58b29
   58b17:	eb 10                	jmp    0x58b29
   58b19:	ff 76 fe             	push   -0x2(%bp)
   58b1c:	6a 00                	push   $0x0
   58b1e:	ff 36 26 d6          	push   -0x29da
   58b22:	6a 01                	push   $0x1
   58b24:	9a 39 00 70 01       	lcall  $0x170,$0x39
   58b29:	ff 76 fe             	push   -0x2(%bp)
   58b2c:	ff 36 1e d6          	push   -0x29e2
   58b30:	ff 36 1c d6          	push   -0x29e4
   58b34:	a1 23 d6             	mov    0xd623,%ax
   58b37:	c1 e0 03             	shl    $0x3,%ax
   58b3a:	6a 00                	push   $0x0
   58b3c:	50                   	push   %ax
   58b3d:	9a 2f 00 70 01       	lcall  $0x170,$0x2f
   58b42:	83 fa ff             	cmp    $0xffff,%dx
   58b45:	75 19                	jne    0x58b60
   58b47:	3d ff ff             	cmp    $0xffff,%ax
   58b4a:	75 14                	jne    0x58b60
   58b4c:	6a ff                	push   $0xffff
   58b4e:	1e                   	push   %ds
   58b4f:	68 50 6a             	push   $0x6a50
   58b52:	6a 26                	push   $0x26
   58b54:	1e                   	push   %ds
   58b55:	68 37 6a             	push   $0x6a37
   58b58:	9a 2a 00 58 01       	lcall  $0x158,$0x2a
   58b5d:	83 c4 0c             	add    $0xc,%sp
   58b60:	ff 76 fe             	push   -0x2(%bp)
   58b63:	9a 2a 00 70 01       	lcall  $0x170,$0x2a
   58b68:	c9                   	leave
   58b69:	cb                   	lret
