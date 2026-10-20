
lale/IST.EXE:     file format binary


Disassembly of section .data:

00042d30 <.data+0x42d30>:
   42d30:	55                   	push   %bp
   42d31:	8b ec                	mov    %sp,%bp
   42d33:	83 ec 0a             	sub    $0xa,%sp
   42d36:	6a 00                	push   $0x0
   42d38:	68 e3 46             	push   $0x46e3
   42d3b:	6a 00                	push   $0x0
   42d3d:	6a 00                	push   $0x0
   42d3f:	6a 00                	push   $0x0
   42d41:	6a 2f                	push   $0x2f
   42d43:	1e                   	push   %ds
   42d44:	68 8c 5b             	push   $0x5b8c
   42d47:	6a 01                	push   $0x1
   42d49:	9a 25 00 60 01       	lcall  $0x160,$0x25
   42d4e:	83 c4 12             	add    $0x12,%sp
   42d51:	89 46 fe             	mov    %ax,-0x2(%bp)
   42d54:	6a ff                	push   $0xffff
   42d56:	6a ff                	push   $0xffff
   42d58:	6a 00                	push   $0x0
   42d5a:	6a 40                	push   $0x40
   42d5c:	9a 25 16 68 00       	lcall  $0x68,$0x1625
   42d61:	b8 88 01             	mov    $0x188,%ax
   42d64:	8e c0                	mov    %ax,%es
   42d66:	26 a1 20 73          	mov    %es:0x7320,%ax
   42d6a:	ba 88 01             	mov    $0x188,%dx
   42d6d:	8e c2                	mov    %dx,%es
   42d6f:	26 a3 1a 73          	mov    %ax,%es:0x731a
   42d73:	b8 88 01             	mov    $0x188,%ax
   42d76:	8e c0                	mov    %ax,%es
   42d78:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   42d7e:	74 1f                	je     0x42d9f
   42d80:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
   42d84:	75 19                	jne    0x42d9f
   42d86:	6a 00                	push   $0x0
   42d88:	6a 00                	push   $0x0
   42d8a:	6a 64                	push   $0x64
   42d8c:	6a 00                	push   $0x0
   42d8e:	6a 20                	push   $0x20
   42d90:	6a 00                	push   $0x0
   42d92:	68 34 21             	push   $0x2134
   42d95:	6a 2f                	push   $0x2f
   42d97:	9a 4f 01 38 00       	lcall  $0x38,$0x14f
   42d9c:	83 c4 10             	add    $0x10,%sp
   42d9f:	1e                   	push   %ds
   42da0:	68 95 5b             	push   $0x5b95
   42da3:	9a 57 00 40 01       	lcall  $0x140,$0x57
   42da8:	83 c4 04             	add    $0x4,%sp
   42dab:	3c 1b                	cmp    $0x1b,%al
   42dad:	75 03                	jne    0x42db2
   42daf:	e9 a9 01             	jmp    0x42f5b
   42db2:	b8 88 01             	mov    $0x188,%ax
   42db5:	8e c0                	mov    %ax,%es
   42db7:	26 a1 1e 73          	mov    %es:0x731e,%ax
   42dbb:	ba 88 01             	mov    $0x188,%dx
   42dbe:	8e c2                	mov    %dx,%es
   42dc0:	26 a3 18 73          	mov    %ax,%es:0x7318
   42dc4:	6a 00                	push   $0x0
   42dc6:	b8 88 01             	mov    $0x188,%ax
   42dc9:	8e c0                	mov    %ax,%es
   42dcb:	26 a1 18 73          	mov    %es:0x7318,%ax
   42dcf:	f7 d8                	neg    %ax
   42dd1:	50                   	push   %ax
   42dd2:	6a 00                	push   $0x0
   42dd4:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   42dd9:	83 c4 06             	add    $0x6,%sp
   42ddc:	1e                   	push   %ds
   42ddd:	68 9a 5b             	push   $0x5b9a
   42de0:	9a 57 00 40 01       	lcall  $0x140,$0x57
   42de5:	83 c4 04             	add    $0x4,%sp
   42de8:	3c 1b                	cmp    $0x1b,%al
   42dea:	75 03                	jne    0x42def
   42dec:	e9 6c 01             	jmp    0x42f5b
   42def:	b8 88 01             	mov    $0x188,%ax
   42df2:	8e c0                	mov    %ax,%es
   42df4:	26 a1 1e 73          	mov    %es:0x731e,%ax
   42df8:	ba 88 01             	mov    $0x188,%dx
   42dfb:	8e c2                	mov    %dx,%es
   42dfd:	26 a3 18 73          	mov    %ax,%es:0x7318
   42e01:	6a 00                	push   $0x0
   42e03:	b8 88 01             	mov    $0x188,%ax
   42e06:	8e c0                	mov    %ax,%es
   42e08:	26 a1 18 73          	mov    %es:0x7318,%ax
   42e0c:	f7 d8                	neg    %ax
   42e0e:	50                   	push   %ax
   42e0f:	6a 00                	push   $0x0
   42e11:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   42e16:	83 c4 06             	add    $0x6,%sp
   42e19:	1e                   	push   %ds
   42e1a:	68 9f 5b             	push   $0x5b9f
   42e1d:	9a 57 00 40 01       	lcall  $0x140,$0x57
   42e22:	83 c4 04             	add    $0x4,%sp
   42e25:	3c 1b                	cmp    $0x1b,%al
   42e27:	75 03                	jne    0x42e2c
   42e29:	e9 2f 01             	jmp    0x42f5b
   42e2c:	b8 88 01             	mov    $0x188,%ax
   42e2f:	8e c0                	mov    %ax,%es
   42e31:	26 a1 1e 73          	mov    %es:0x731e,%ax
   42e35:	ba 88 01             	mov    $0x188,%dx
   42e38:	8e c2                	mov    %dx,%es
   42e3a:	26 a3 18 73          	mov    %ax,%es:0x7318
   42e3e:	6a 00                	push   $0x0
   42e40:	b8 88 01             	mov    $0x188,%ax
   42e43:	8e c0                	mov    %ax,%es
   42e45:	26 a1 18 73          	mov    %es:0x7318,%ax
   42e49:	f7 d8                	neg    %ax
   42e4b:	50                   	push   %ax
   42e4c:	6a 00                	push   $0x0
   42e4e:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   42e53:	83 c4 06             	add    $0x6,%sp
   42e56:	b8 88 01             	mov    $0x188,%ax
   42e59:	8e c0                	mov    %ax,%es
   42e5b:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   42e61:	75 03                	jne    0x42e66
   42e63:	e9 81 00             	jmp    0x42ee7
   42e66:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
   42e6a:	75 7b                	jne    0x42ee7
   42e6c:	b8 88 01             	mov    $0x188,%ax
   42e6f:	8e c0                	mov    %ax,%es
   42e71:	26 a1 4c e7          	mov    %es:0xe74c,%ax
   42e75:	26 8b 16 4a e7       	mov    %es:-0x18b6,%dx
   42e7a:	81 c2 e8 03          	add    $0x3e8,%dx
   42e7e:	15 00 00             	adc    $0x0,%ax
   42e81:	89 46 fc             	mov    %ax,-0x4(%bp)
   42e84:	89 56 fa             	mov    %dx,-0x6(%bp)
   42e87:	c7 46 f8 00 00       	movw   $0x0,-0x8(%bp)
   42e8c:	c7 46 f6 20 00       	movw   $0x20,-0xa(%bp)
   42e91:	eb 3d                	jmp    0x42ed0
   42e93:	6a 00                	push   $0x0
   42e95:	68 e8 03             	push   $0x3e8
   42e98:	b8 88 01             	mov    $0x188,%ax
   42e9b:	8b 56 fc             	mov    -0x4(%bp),%dx
   42e9e:	50                   	push   %ax
   42e9f:	8b 46 fa             	mov    -0x6(%bp),%ax
   42ea2:	07                   	pop    %es
   42ea3:	26 2b 06 4a e7       	sub    %es:-0x18b6,%ax
   42ea8:	26 1b 16 4c e7       	sbb    %es:-0x18b4,%dx
   42ead:	b1 05                	mov    $0x5,%cl
   42eaf:	9a 8d 13 00 00       	lcall  $0x0,$0x138d
   42eb4:	52                   	push   %dx
   42eb5:	50                   	push   %ax
   42eb6:	9a e6 12 00 00       	lcall  $0x0,$0x12e6
   42ebb:	89 56 f8             	mov    %dx,-0x8(%bp)
   42ebe:	89 46 f6             	mov    %ax,-0xa(%bp)
   42ec1:	6a 00                	push   $0x0
   42ec3:	6a 00                	push   $0x0
   42ec5:	ff 76 f8             	push   -0x8(%bp)
   42ec8:	ff 76 f6             	push   -0xa(%bp)
   42ecb:	9a 0c 01 60 00       	lcall  $0x60,$0x10c
   42ed0:	83 7e f8 00          	cmpw   $0x0,-0x8(%bp)
   42ed4:	7f bd                	jg     0x42e93
   42ed6:	75 06                	jne    0x42ede
   42ed8:	83 7e f6 00          	cmpw   $0x0,-0xa(%bp)
   42edc:	77 b5                	ja     0x42e93
   42ede:	6a 00                	push   $0x0
   42ee0:	6a 00                	push   $0x0
   42ee2:	9a e6 00 60 00       	lcall  $0x60,$0xe6
   42ee7:	1e                   	push   %ds
   42ee8:	68 a4 5b             	push   $0x5ba4
   42eeb:	9a 57 00 40 01       	lcall  $0x140,$0x57
   42ef0:	83 c4 04             	add    $0x4,%sp
   42ef3:	3c 1b                	cmp    $0x1b,%al
   42ef5:	74 64                	je     0x42f5b
   42ef7:	b8 88 01             	mov    $0x188,%ax
   42efa:	8e c0                	mov    %ax,%es
   42efc:	26 a1 1e 73          	mov    %es:0x731e,%ax
   42f00:	ba 88 01             	mov    $0x188,%dx
   42f03:	8e c2                	mov    %dx,%es
   42f05:	26 a3 18 73          	mov    %ax,%es:0x7318
   42f09:	6a 00                	push   $0x0
   42f0b:	b8 88 01             	mov    $0x188,%ax
   42f0e:	8e c0                	mov    %ax,%es
   42f10:	26 a1 18 73          	mov    %es:0x7318,%ax
   42f14:	f7 d8                	neg    %ax
   42f16:	50                   	push   %ax
   42f17:	6a 00                	push   $0x0
   42f19:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   42f1e:	83 c4 06             	add    $0x6,%sp
   42f21:	1e                   	push   %ds
   42f22:	68 a9 5b             	push   $0x5ba9
   42f25:	9a 57 00 40 01       	lcall  $0x140,$0x57
   42f2a:	83 c4 04             	add    $0x4,%sp
   42f2d:	3c 1b                	cmp    $0x1b,%al
   42f2f:	74 2a                	je     0x42f5b
   42f31:	b8 88 01             	mov    $0x188,%ax
   42f34:	8e c0                	mov    %ax,%es
   42f36:	26 a1 1e 73          	mov    %es:0x731e,%ax
   42f3a:	ba 88 01             	mov    $0x188,%dx
   42f3d:	8e c2                	mov    %dx,%es
   42f3f:	26 a3 18 73          	mov    %ax,%es:0x7318
   42f43:	6a 00                	push   $0x0
   42f45:	b8 88 01             	mov    $0x188,%ax
   42f48:	8e c0                	mov    %ax,%es
   42f4a:	26 a1 18 73          	mov    %es:0x7318,%ax
   42f4e:	f7 d8                	neg    %ax
   42f50:	50                   	push   %ax
   42f51:	6a 00                	push   $0x0
   42f53:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   42f58:	83 c4 06             	add    $0x6,%sp
   42f5b:	b8 88 01             	mov    $0x188,%ax
   42f5e:	8e c0                	mov    %ax,%es
   42f60:	26 a1 1e 73          	mov    %es:0x731e,%ax
   42f64:	ba 88 01             	mov    $0x188,%dx
   42f67:	8e c2                	mov    %dx,%es
   42f69:	26 a3 18 73          	mov    %ax,%es:0x7318
   42f6d:	6a 00                	push   $0x0
   42f6f:	b8 88 01             	mov    $0x188,%ax
   42f72:	8e c0                	mov    %ax,%es
   42f74:	26 a1 18 73          	mov    %es:0x7318,%ax
   42f78:	f7 d8                	neg    %ax
   42f7a:	50                   	push   %ax
   42f7b:	68 e8 03             	push   $0x3e8
   42f7e:	9a 3f 07 30 00       	lcall  $0x30,$0x73f
   42f83:	83 c4 06             	add    $0x6,%sp
   42f86:	b8 88 01             	mov    $0x188,%ax
   42f89:	8e c0                	mov    %ax,%es
   42f8b:	26 80 3e d0 73 00    	cmpb   $0x0,%es:0x73d0
   42f91:	74 0f                	je     0x42fa2
   42f93:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
   42f97:	75 09                	jne    0x42fa2
   42f99:	6a 00                	push   $0x0
   42f9b:	6a 00                	push   $0x0
   42f9d:	9a e6 00 60 00       	lcall  $0x60,$0xe6
