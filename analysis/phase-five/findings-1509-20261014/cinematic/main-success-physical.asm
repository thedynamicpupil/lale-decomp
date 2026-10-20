
lale/IST.EXE:     file format binary


Disassembly of section .data:

00007dfc <.data+0x7dfc>:
    7dfc:	9a 57 00 7c 16       	lcall  $0x167c,$0x57
    7e01:	0b c0                	or     %ax,%ax
    7e03:	75 03                	jne    0x7e08
    7e05:	e9 a7 03             	jmp    0x81af
    7e08:	b8 e0 16             	mov    $0x16e0,%ax
    7e0b:	8e c0                	mov    %ax,%es
    7e0d:	26 a1 1a 73          	mov    %es:0x731a,%ax
    7e11:	f7 d8                	neg    %ax
    7e13:	50                   	push   %ax
    7e14:	6a 00                	push   $0x0
    7e16:	68 e8 03             	push   $0x3e8
    7e19:	9a 3f 07 7f 0c       	lcall  $0xc7f,$0x73f
    7e1e:	83 c4 06             	add    $0x6,%sp
    7e21:	b8 e0 16             	mov    $0x16e0,%ax
    7e24:	8e c0                	mov    %ax,%es
    7e26:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
    7e2c:	74 5d                	je     0x7e8b
    7e2e:	b8 e0 16             	mov    $0x16e0,%ax
    7e31:	8e c0                	mov    %ax,%es
    7e33:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
    7e39:	74 50                	je     0x7e8b
    7e3b:	9a 96 12 f6 0e       	lcall  $0xef6,$0x1296
    7e40:	b8 e0 16             	mov    $0x16e0,%ax
    7e43:	8e c0                	mov    %ax,%es
    7e45:	26 a1 75 bb          	mov    %es:0xbb75,%ax
    7e49:	26 0b 06 77 bb       	or     %es:-0x4489,%ax
    7e4e:	74 3b                	je     0x7e8b
    7e50:	b8 e0 16             	mov    $0x16e0,%ax
    7e53:	8e c0                	mov    %ax,%es
    7e55:	26 ff 36 77 bb       	push   %es:-0x4489
    7e5a:	26 ff 36 75 bb       	push   %es:-0x448b
    7e5f:	9a 03 00 1b 11       	lcall  $0x111b,$0x3
    7e64:	b8 e0 16             	mov    $0x16e0,%ax
    7e67:	8e c0                	mov    %ax,%es
    7e69:	26 ff 36 77 bb       	push   %es:-0x4489
    7e6e:	26 ff 36 75 bb       	push   %es:-0x448b
    7e73:	9a da 00 9e 0e       	lcall  $0xe9e,$0xda
    7e78:	b8 e0 16             	mov    $0x16e0,%ax
    7e7b:	8e c0                	mov    %ax,%es
    7e7d:	26 c7 06 77 bb 00 00 	movw   $0x0,%es:-0x4489
    7e84:	26 c7 06 75 bb 00 00 	movw   $0x0,%es:-0x448b
    7e8b:	9a 2f 00 d3 16       	lcall  $0x16d3,$0x2f
    7e90:	1e                   	push   %ds
    7e91:	68 90 3a             	push   $0x3a90
    7e94:	9a 4d 00 7c 16       	lcall  $0x167c,$0x4d
    7e99:	83 c4 04             	add    $0x4,%sp
    7e9c:	9a 25 00 82 16       	lcall  $0x1682,$0x25
    7ea1:	c7 46 fe 01 00       	movw   $0x1,-0x2(%bp)
    7ea6:	eb 27                	jmp    0x7ecf
    7ea8:	8b 5e fe             	mov    -0x2(%bp),%bx
    7eab:	6b db 06             	imul   $0x6,%bx,%bx
    7eae:	b8 e0 16             	mov    $0x16e0,%ax
    7eb1:	33 d2                	xor    %dx,%dx
    7eb3:	8e c0                	mov    %ax,%es
    7eb5:	26 89 97 dc 5b       	mov    %dx,%es:0x5bdc(%bx)
    7eba:	8b c2                	mov    %dx,%ax
    7ebc:	8b 5e fe             	mov    -0x2(%bp),%bx
    7ebf:	6b db 06             	imul   $0x6,%bx,%bx
    7ec2:	ba e0 16             	mov    $0x16e0,%dx
    7ec5:	8e c2                	mov    %dx,%es
    7ec7:	26 89 87 da 5b       	mov    %ax,%es:0x5bda(%bx)
    7ecc:	ff 46 fe             	incw   -0x2(%bp)
    7ecf:	83 7e fe 04          	cmpw   $0x4,-0x2(%bp)
    7ed3:	7c d3                	jl     0x7ea8
    7ed5:	c7 46 fe 00 00       	movw   $0x0,-0x2(%bp)
    7eda:	eb 62                	jmp    0x7f3e
    7edc:	8b 5e fe             	mov    -0x2(%bp),%bx
    7edf:	c1 e3 03             	shl    $0x3,%bx
    7ee2:	b8 e0 16             	mov    $0x16e0,%ax
    7ee5:	8e c0                	mov    %ax,%es
    7ee7:	26 8b 87 d7 e4       	mov    %es:-0x1b29(%bx),%ax
    7eec:	26 0b 87 d9 e4       	or     %es:-0x1b27(%bx),%ax
    7ef1:	75 48                	jne    0x7f3b
    7ef3:	8b 46 fe             	mov    -0x2(%bp),%ax
    7ef6:	05 47 00             	add    $0x47,%ax
    7ef9:	50                   	push   %ax
    7efa:	8b 5e fe             	mov    -0x2(%bp),%bx
    7efd:	6b db 5c             	imul   $0x5c,%bx,%bx
    7f00:	b8 e0 16             	mov    $0x16e0,%ax
    7f03:	8e c0                	mov    %ax,%es
    7f05:	26 8b 87 44 9a       	mov    %es:-0x65bc(%bx),%ax
    7f0a:	6b c0 0d             	imul   $0xd,%ax,%ax
    7f0d:	05 9b 26             	add    $0x269b,%ax
    7f10:	68 e0 16             	push   $0x16e0
    7f13:	50                   	push   %ax
    7f14:	1e                   	push   %ds
    7f15:	68 98 3a             	push   $0x3a98
    7f18:	16                   	push   %ss
    7f19:	8d 46 8e             	lea    -0x72(%bp),%ax
    7f1c:	50                   	push   %ax
    7f1d:	9a a3 49 00 00       	lcall  $0x0,$0x49a3
    7f22:	83 c4 08             	add    $0x8,%sp
    7f25:	52                   	push   %dx
    7f26:	50                   	push   %ax
    7f27:	9a f7 48 00 00       	lcall  $0x0,$0x48f7
    7f2c:	83 c4 08             	add    $0x8,%sp
    7f2f:	52                   	push   %dx
    7f30:	50                   	push   %ax
    7f31:	6a 01                	push   $0x1
    7f33:	9a 20 00 b5 16       	lcall  $0x16b5,$0x20
    7f38:	83 c4 08             	add    $0x8,%sp
    7f3b:	ff 46 fe             	incw   -0x2(%bp)
    7f3e:	83 7e fe 04          	cmpw   $0x4,-0x2(%bp)
    7f42:	7c 98                	jl     0x7edc
    7f44:	b8 e0 16             	mov    $0x16e0,%ax
    7f47:	8e c0                	mov    %ax,%es
    7f49:	26 c7 06 6b bb 00 00 	movw   $0x0,%es:-0x4495
    7f50:	9a 8e 17 dc 05       	lcall  $0x5dc,$0x178e
    7f55:	6a 01                	push   $0x1
    7f57:	b8 e0 16             	mov    $0x16e0,%ax
    7f5a:	8e c0                	mov    %ax,%es
    7f5c:	26 ff 36 6b bb       	push   %es:-0x4495
    7f61:	9a 2a 00 70 16       	lcall  $0x1670,$0x2a
    7f66:	83 c4 04             	add    $0x4,%sp
