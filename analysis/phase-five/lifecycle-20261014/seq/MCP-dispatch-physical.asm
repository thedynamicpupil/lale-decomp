
lale/IST.EXE:     file format binary


Disassembly of section .data:

00010ee6 <.data+0x10ee6>:
   10ee6:	57                   	push   %di
   10ee7:	1e                   	push   %ds
   10ee8:	07                   	pop    %es
   10ee9:	bf 96 76             	mov    $0x7696,%di
   10eec:	2a c0                	sub    %al,%al
   10eee:	fc                   	cld
   10eef:	b9 00 01             	mov    $0x100,%cx
   10ef2:	f3 aa                	rep stos %al,%es:(%di)
   10ef4:	bf 96 77             	mov    $0x7796,%di
   10ef7:	b9 68 00             	mov    $0x68,%cx
   10efa:	f3 aa                	rep stos %al,%es:(%di)
   10efc:	c6 06 d6 7a 00       	movb   $0x0,0x7ad6
   10f01:	c7 06 94 76 da 00    	movw   $0xda,0x7694
   10f07:	1e                   	push   %ds
   10f08:	68 d7 7a             	push   $0x7ad7
   10f0b:	0e                   	push   %cs
   10f0c:	68 36 00             	push   $0x36
   10f0f:	9a 1b 01 f2 0d       	lcall  $0xdf2,$0x11b
   10f14:	5f                   	pop    %di
   10f15:	cb                   	lret
   10f16:	c8 00 00 00          	enter  $0x0,$0x0
   10f1a:	1e                   	push   %ds
   10f1b:	57                   	push   %di
   10f1c:	56                   	push   %si
   10f1d:	b8 e0 16             	mov    $0x16e0,%ax
   10f20:	8e d8                	mov    %ax,%ds
   10f22:	8e c0                	mov    %ax,%es
   10f24:	b8 ff ff             	mov    $0xffff,%ax
   10f27:	81 3e 94 76 da 00    	cmpw   $0xda,0x7694
   10f2d:	75 38                	jne    0x10f67
   10f2f:	0f b6 3e d6 7a       	movzbw 0x7ad6,%di
   10f34:	c1 e7 05             	shl    $0x5,%di
   10f37:	81 c7 96 76          	add    $0x7696,%di
   10f3b:	a0 d6 7a             	mov    0x7ad6,%al
   10f3e:	b9 20 00             	mov    $0x20,%cx
   10f41:	f3 aa                	rep stos %al,%es:(%di)
   10f43:	0f b6 3e d6 7a       	movzbw 0x7ad6,%di
   10f48:	6b ff 68             	imul   $0x68,%di,%di
   10f4b:	81 c7 96 77          	add    $0x7796,%di
   10f4f:	1e                   	push   %ds
   10f50:	1e                   	push   %ds
   10f51:	07                   	pop    %es
   10f52:	c5 76 06             	lds    0x6(%bp),%si
   10f55:	b9 68 00             	mov    $0x68,%cx
   10f58:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
   10f5a:	1f                   	pop    %ds
   10f5b:	0f b6 06 d6 7a       	movzbw 0x7ad6,%ax
   10f60:	c1 e0 05             	shl    $0x5,%ax
   10f63:	fe 06 d6 7a          	incb   0x7ad6
   10f67:	5e                   	pop    %si
   10f68:	5f                   	pop    %di
   10f69:	1f                   	pop    %ds
   10f6a:	c9                   	leave
   10f6b:	ca 04 00             	lret   $0x4
   10f6e:	cb                   	lret
   10f6f:	c8 00 00 00          	enter  $0x0,$0x0
   10f73:	1e                   	push   %ds
   10f74:	bb e0 16             	mov    $0x16e0,%bx
   10f77:	8e db                	mov    %bx,%ds
   10f79:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
   10f7d:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   10f82:	6b db 68             	imul   $0x68,%bx,%bx
   10f85:	81 c3 96 77          	add    $0x7796,%bx
   10f89:	66 ff 76 0a          	pushl  0xa(%bp)
   10f8d:	66 ff 76 06          	pushl  0x6(%bp)
   10f91:	ff 1f                	lcall  *(%bx)
   10f93:	1f                   	pop    %ds
   10f94:	c9                   	leave
   10f95:	ca 08 00             	lret   $0x8
   10f98:	c8 00 00 00          	enter  $0x0,$0x0
   10f9c:	1e                   	push   %ds
   10f9d:	bb e0 16             	mov    $0x16e0,%bx
   10fa0:	8e db                	mov    %bx,%ds
   10fa2:	66 8b 5e 0e          	mov    0xe(%bp),%ebx
   10fa6:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   10fab:	6b db 68             	imul   $0x68,%bx,%bx
   10fae:	81 c3 96 77          	add    $0x7796,%bx
   10fb2:	66 ff 76 0e          	pushl  0xe(%bp)
   10fb6:	66 ff 76 0a          	pushl  0xa(%bp)
   10fba:	66 ff 76 06          	pushl  0x6(%bp)
   10fbe:	ff 5f 04             	lcall  *0x4(%bx)
   10fc1:	1f                   	pop    %ds
   10fc2:	c9                   	leave
   10fc3:	ca 0c 00             	lret   $0xc
   10fc6:	c8 00 00 00          	enter  $0x0,$0x0
   10fca:	1e                   	push   %ds
   10fcb:	bb e0 16             	mov    $0x16e0,%bx
   10fce:	8e db                	mov    %bx,%ds
   10fd0:	66 8b 5e 06          	mov    0x6(%bp),%ebx
   10fd4:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   10fd9:	6b db 68             	imul   $0x68,%bx,%bx
   10fdc:	81 c3 96 77          	add    $0x7796,%bx
   10fe0:	66 ff 76 06          	pushl  0x6(%bp)
   10fe4:	ff 5f 28             	lcall  *0x28(%bx)
   10fe7:	1f                   	pop    %ds
   10fe8:	c9                   	leave
   10fe9:	ca 04 00             	lret   $0x4
   10fec:	c8 00 00 00          	enter  $0x0,$0x0
   10ff0:	1e                   	push   %ds
   10ff1:	bb e0 16             	mov    $0x16e0,%bx
   10ff4:	8e db                	mov    %bx,%ds
   10ff6:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
   10ffa:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   10fff:	6b db 68             	imul   $0x68,%bx,%bx
   11002:	81 c3 96 77          	add    $0x7796,%bx
   11006:	66 ff 76 0a          	pushl  0xa(%bp)
   1100a:	66 ff 76 06          	pushl  0x6(%bp)
   1100e:	ff 5f 08             	lcall  *0x8(%bx)
   11011:	1f                   	pop    %ds
   11012:	c9                   	leave
   11013:	ca 08 00             	lret   $0x8
   11016:	c8 00 00 00          	enter  $0x0,$0x0
   1101a:	1e                   	push   %ds
   1101b:	bb e0 16             	mov    $0x16e0,%bx
   1101e:	8e db                	mov    %bx,%ds
   11020:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
   11024:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   11029:	6b db 68             	imul   $0x68,%bx,%bx
   1102c:	81 c3 96 77          	add    $0x7796,%bx
   11030:	66 ff 76 0a          	pushl  0xa(%bp)
   11034:	66 ff 76 06          	pushl  0x6(%bp)
   11038:	ff 5f 0c             	lcall  *0xc(%bx)
   1103b:	1f                   	pop    %ds
   1103c:	c9                   	leave
   1103d:	ca 08 00             	lret   $0x8
   11040:	c8 00 00 00          	enter  $0x0,$0x0
   11044:	1e                   	push   %ds
   11045:	bb e0 16             	mov    $0x16e0,%bx
   11048:	8e db                	mov    %bx,%ds
   1104a:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
   1104e:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   11053:	6b db 68             	imul   $0x68,%bx,%bx
   11056:	81 c3 96 77          	add    $0x7796,%bx
   1105a:	66 ff 76 0a          	pushl  0xa(%bp)
   1105e:	66 ff 76 06          	pushl  0x6(%bp)
   11062:	ff 5f 10             	lcall  *0x10(%bx)
   11065:	1f                   	pop    %ds
   11066:	c9                   	leave
   11067:	ca 08 00             	lret   $0x8
   1106a:	c8 00 00 00          	enter  $0x0,$0x0
   1106e:	1e                   	push   %ds
   1106f:	bb e0 16             	mov    $0x16e0,%bx
   11072:	8e db                	mov    %bx,%ds
   11074:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
   11078:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   1107d:	6b db 68             	imul   $0x68,%bx,%bx
   11080:	81 c3 96 77          	add    $0x7796,%bx
   11084:	66 ff 76 0a          	pushl  0xa(%bp)
   11088:	66 ff 76 06          	pushl  0x6(%bp)
   1108c:	ff 5f 14             	lcall  *0x14(%bx)
   1108f:	1f                   	pop    %ds
   11090:	c9                   	leave
   11091:	ca 08 00             	lret   $0x8
   11094:	c8 00 00 00          	enter  $0x0,$0x0
   11098:	1e                   	push   %ds
   11099:	bb e0 16             	mov    $0x16e0,%bx
   1109c:	8e db                	mov    %bx,%ds
   1109e:	66 8b 5e 0a          	mov    0xa(%bp),%ebx
   110a2:	0f b6 9f 96 76       	movzbw 0x7696(%bx),%bx
   110a7:	6b db 68             	imul   $0x68,%bx,%bx
   110aa:	81 c3 96 77          	add    $0x7796,%bx
   110ae:	66 ff 76 0a          	pushl  0xa(%bp)
   110b2:	66 ff 76 06          	pushl  0x6(%bp)
   110b6:	ff 5f 18             	lcall  *0x18(%bx)
   110b9:	1f                   	pop    %ds
   110ba:	c9                   	leave
   110bb:	ca               	lret   $0x8
