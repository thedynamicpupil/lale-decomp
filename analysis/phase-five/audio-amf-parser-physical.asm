
lale/IST.EXE:     file format binary


Disassembly of section .data:

00012a3a <.data+0x12a3a>:
   12a3a:	55                   	push   %bp
   12a3b:	8b ec                	mov    %sp,%bp
   12a3d:	83 ec 6e             	sub    $0x6e,%sp
   12a40:	56                   	push   %si
   12a41:	57                   	push   %di
   12a42:	8b 7e 0e             	mov    0xe(%bp),%di
   12a45:	c7 46 fa 00 00       	movw   $0x0,-0x6(%bp)
   12a4a:	c7 46 f8 00 00       	movw   $0x0,-0x8(%bp)
   12a4f:	c7 46 f6 01 00       	movw   $0x1,-0xa(%bp)
   12a54:	c7 46 ec 00 00       	movw   $0x0,-0x14(%bp)
   12a59:	c7 46 ea 00 00       	movw   $0x0,-0x16(%bp)
   12a5e:	1e                   	push   %ds
   12a5f:	68 ba 85             	push   $0x85ba
   12a62:	1e                   	push   %ds
   12a63:	68 8e e7             	push   $0xe78e
   12a66:	9a 16 03 f2 0d       	lcall  $0xdf2,$0x316
   12a6b:	0b c0                	or     %ax,%ax
   12a6d:	75 05                	jne    0x12a74
   12a6f:	b8 01 00             	mov    $0x1,%ax
   12a72:	eb 02                	jmp    0x12a76
   12a74:	33 c0                	xor    %ax,%ax
   12a76:	a3 86 e7             	mov    %ax,0xe786
   12a79:	83 3e 86 e7 00       	cmpw   $0x0,-0x187a
   12a7e:	74 1b                	je     0x12a9b
   12a80:	1e                   	push   %ds
   12a81:	68 c3 85             	push   $0x85c3
   12a84:	1e                   	push   %ds
   12a85:	68 8a e7             	push   $0xe78a
   12a88:	9a 16 03 f2 0d       	lcall  $0xdf2,$0x316
   12a8d:	0b c0                	or     %ax,%ax
   12a8f:	75 05                	jne    0x12a96
   12a91:	b8 01 00             	mov    $0x1,%ax
   12a94:	eb 02                	jmp    0x12a98
   12a96:	33 c0                	xor    %ax,%ax
   12a98:	a3 86 e7             	mov    %ax,0xe786
   12a9b:	8b 46 06             	mov    0x6(%bp),%ax
   12a9e:	a3 88 e7             	mov    %ax,0xe788
   12aa1:	c4 5e 0a             	les    0xa(%bp),%bx
   12aa4:	26 c6 47 5a 7d       	movb   $0x7d,%es:0x5a(%bx)
   12aa9:	26 c6 47 5b 06       	movb   $0x6,%es:0x5b(%bx)
   12aae:	57                   	push   %di
   12aaf:	66 6a 00             	pushl  $0x0
   12ab2:	6a 00                	push   $0x0
   12ab4:	9a 39 00 cd 16       	lcall  $0x16cd,$0x39
   12ab9:	57                   	push   %di
   12aba:	16                   	push   %ss
   12abb:	8d 46 e6             	lea    -0x1a(%bp),%ax
   12abe:	50                   	push   %ax
   12abf:	66 6a 04             	pushl  $0x4
   12ac2:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12ac7:	57                   	push   %di
   12ac8:	8b 46 0a             	mov    0xa(%bp),%ax
   12acb:	05 09 00             	add    $0x9,%ax
   12ace:	ff 76 0c             	push   0xc(%bp)
   12ad1:	50                   	push   %ax
   12ad2:	66 6a 20             	pushl  $0x20
   12ad5:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12ada:	66 81 7e e6 41 4d 46 	cmpl   $0xc464d41,-0x1a(%bp)
   12ae1:	0c 
   12ae2:	7c 05                	jl     0x12ae9
   12ae4:	be 20 00             	mov    $0x20,%si
   12ae7:	eb 03                	jmp    0x12aec
   12ae9:	be 10 00             	mov    $0x10,%si
   12aec:	66 81 7e e6 41 4d 46 	cmpl   $0x1464d41,-0x1a(%bp)
   12af3:	01 
   12af4:	75 07                	jne    0x12afd
   12af6:	c7 46 f8 03 00       	movw   $0x3,-0x8(%bp)
   12afb:	eb 2e                	jmp    0x12b2b
   12afd:	66 81 7e e6 41 4d 46 	cmpl   $0xa464d41,-0x1a(%bp)
   12b04:	0a 
   12b05:	7c 07                	jl     0x12b0e
   12b07:	c7 46 f6 00 00       	movw   $0x0,-0xa(%bp)
   12b0c:	eb 1d                	jmp    0x12b2b
   12b0e:	66 81 7e e6 41 4d 46 	cmpl   $0x8464d41,-0x1a(%bp)
   12b15:	08 
   12b16:	74 13                	je     0x12b2b
   12b18:	66 81 7e e6 41 4d 46 	cmpl   $0x9464d41,-0x1a(%bp)
   12b1f:	09 
   12b20:	74 09                	je     0x12b2b
   12b22:	b8 fd ff             	mov    $0xfffd,%ax
   12b25:	5f                   	pop    %di
   12b26:	5e                   	pop    %si
   12b27:	c9                   	leave
   12b28:	ca 0a 00             	lret   $0xa
   12b2b:	57                   	push   %di
   12b2c:	8b 46 0a             	mov    0xa(%bp),%ax
   12b2f:	05 4a 00             	add    $0x4a,%ax
   12b32:	ff 76 0c             	push   0xc(%bp)
   12b35:	50                   	push   %ax
   12b36:	66 6a 01             	pushl  $0x1
   12b39:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12b3e:	57                   	push   %di
   12b3f:	8b 46 0a             	mov    0xa(%bp),%ax
   12b42:	05 4f 00             	add    $0x4f,%ax
   12b45:	ff 76 0c             	push   0xc(%bp)
   12b48:	50                   	push   %ax
   12b49:	66 6a 01             	pushl  $0x1
   12b4c:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12b51:	57                   	push   %di
   12b52:	8b 46 0a             	mov    0xa(%bp),%ax
   12b55:	05 54 00             	add    $0x54,%ax
   12b58:	ff 76 0c             	push   0xc(%bp)
   12b5b:	50                   	push   %ax
   12b5c:	66 6a 02             	pushl  $0x2
   12b5f:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12b64:	66 81 7e e6 41 4d 46 	cmpl   $0x9464d41,-0x1a(%bp)
   12b6b:	09 
   12b6c:	7c 49                	jl     0x12bb7
   12b6e:	57                   	push   %di
   12b6f:	8b 46 0a             	mov    0xa(%bp),%ax
   12b72:	05 29 00             	add    $0x29,%ax
   12b75:	ff 76 0c             	push   0xc(%bp)
   12b78:	50                   	push   %ax
   12b79:	66 6a 01             	pushl  $0x1
   12b7c:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12b81:	57                   	push   %di
   12b82:	8b 46 0a             	mov    0xa(%bp),%ax
   12b85:	05 2a 00             	add    $0x2a,%ax
   12b88:	ff 76 0c             	push   0xc(%bp)
   12b8b:	50                   	push   %ax
   12b8c:	66 0f b7 c6          	movzwl %si,%eax
   12b90:	66 50                	push   %eax
   12b92:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12b97:	66 81 7e e6 41 4d 46 	cmpl   $0xb464d41,-0x1a(%bp)
   12b9e:	0b 
   12b9f:	7d 16                	jge    0x12bb7
   12ba1:	8b 46 0a             	mov    0xa(%bp),%ax
   12ba4:	05 2a 00             	add    $0x2a,%ax
   12ba7:	ff 76 0c             	push   0xc(%bp)
   12baa:	50                   	push   %ax
   12bab:	1e                   	push   %ds
   12bac:	68 aa 85             	push   $0x85aa
   12baf:	66 6a 10             	pushl  $0x10
   12bb2:	9a 99 00 df 0d       	lcall  $0xddf,$0x99
   12bb7:	66 81 7e e6 41 4d 46 	cmpl   $0xd464d41,-0x1a(%bp)
   12bbe:	0d 
   12bbf:	7c 26                	jl     0x12be7
   12bc1:	57                   	push   %di
   12bc2:	8b 46 0a             	mov    0xa(%bp),%ax
   12bc5:	05 5a 00             	add    $0x5a,%ax
   12bc8:	ff 76 0c             	push   0xc(%bp)
   12bcb:	50                   	push   %ax
   12bcc:	66 6a 01             	pushl  $0x1
   12bcf:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12bd4:	57                   	push   %di
   12bd5:	8b 46 0a             	mov    0xa(%bp),%ax
   12bd8:	05 5b 00             	add    $0x5b,%ax
   12bdb:	ff 76 0c             	push   0xc(%bp)
   12bde:	50                   	push   %ax
   12bdf:	66 6a 01             	pushl  $0x1
   12be2:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12be7:	c4 5e 0a             	les    0xa(%bp),%bx
   12bea:	26 8a 47 4f          	mov    %es:0x4f(%bx),%al
   12bee:	b4 00                	mov    $0x0,%ah
   12bf0:	66 0f bf c0          	movswl %ax,%eax
   12bf4:	66 50                	push   %eax
   12bf6:	66 68 82 00 00 00    	pushl  $0x82
   12bfc:	8b 46 0a             	mov    0xa(%bp),%ax
   12bff:	05 50 00             	add    $0x50,%ax
   12c02:	ff 76 0c             	push   0xc(%bp)
   12c05:	50                   	push   %ax
   12c06:	9a 3f 00 9e 0e       	lcall  $0xe9e,$0x3f
   12c0b:	0b c0                	or     %ax,%ax
   12c0d:	74 09                	je     0x12c18
   12c0f:	b8 ff ff             	mov    $0xffff,%ax
   12c12:	5f                   	pop    %di
   12c13:	5e                   	pop    %si
   12c14:	c9                   	leave
   12c15:	ca 0a 00             	lret   $0xa
   12c18:	c4 5e 0a             	les    0xa(%bp),%bx
   12c1b:	26 8a 47 4a          	mov    %es:0x4a(%bx),%al
   12c1f:	b4 00                	mov    $0x0,%ah
   12c21:	66 0f bf c0          	movswl %ax,%eax
   12c25:	66 50                	push   %eax
   12c27:	66 6a 41             	pushl  $0x41
   12c2a:	8b 46 0a             	mov    0xa(%bp),%ax
   12c2d:	05 4b 00             	add    $0x4b,%ax
   12c30:	ff 76 0c             	push   0xc(%bp)
   12c33:	50                   	push   %ax
   12c34:	9a 3f 00 9e 0e       	lcall  $0xe9e,$0x3f
   12c39:	0b c0                	or     %ax,%ax
   12c3b:	74 09                	je     0x12c46
   12c3d:	b8 ff ff             	mov    $0xffff,%ax
   12c40:	5f                   	pop    %di
   12c41:	5e                   	pop    %si
   12c42:	c9                   	leave
   12c43:	ca 0a 00             	lret   $0xa
   12c46:	c4 5e 0a             	les    0xa(%bp),%bx
   12c49:	26 8b 47 54          	mov    %es:0x54(%bx),%ax
   12c4d:	05 04 00             	add    $0x4,%ax
   12c50:	66 0f b7 c0          	movzwl %ax,%eax
   12c54:	66 50                	push   %eax
   12c56:	66 6a 04             	pushl  $0x4
   12c59:	8b 46 0a             	mov    0xa(%bp),%ax
   12c5c:	05 56 00             	add    $0x56,%ax
   12c5f:	ff 76 0c             	push   0xc(%bp)
   12c62:	50                   	push   %ax
   12c63:	9a 3f 00 9e 0e       	lcall  $0xe9e,$0x3f
   12c68:	0b c0                	or     %ax,%ax
   12c6a:	74 09                	je     0x12c75
   12c6c:	b8 ff ff             	mov    $0xffff,%ax
   12c6f:	5f                   	pop    %di
   12c70:	5e                   	pop    %si
   12c71:	c9                   	leave
   12c72:	ca 0a 00             	lret   $0xa
   12c75:	c4 5e 0a             	les    0xa(%bp),%bx
   12c78:	26 8a 47 4f          	mov    %es:0x4f(%bx),%al
   12c7c:	b4 00                	mov    $0x0,%ah
   12c7e:	ba 82 00             	mov    $0x82,%dx
   12c81:	f7 ea                	imul   %dx
   12c83:	26 8a 57 4a          	mov    %es:0x4a(%bx),%dl
   12c87:	b6 00                	mov    $0x0,%dh
   12c89:	bb 41 00             	mov    $0x41,%bx
   12c8c:	50                   	push   %ax
   12c8d:	8b c2                	mov    %dx,%ax
   12c8f:	f7 eb                	imul   %bx
   12c91:	5a                   	pop    %dx
   12c92:	03 d0                	add    %ax,%dx
   12c94:	8b 5e 0a             	mov    0xa(%bp),%bx
   12c97:	26 8b 47 54          	mov    %es:0x54(%bx),%ax
   12c9b:	c1 e0 02             	shl    $0x2,%ax
   12c9e:	03 d0                	add    %ax,%dx
   12ca0:	83 c2 10             	add    $0x10,%dx
   12ca3:	66 0f b7 c2          	movzwl %dx,%eax
   12ca7:	66 26 01 47 01       	add    %eax,%es:0x1(%bx)
   12cac:	33 f6                	xor    %si,%si
   12cae:	c7 46 d6 00 00       	movw   $0x0,-0x2a(%bp)
   12cb3:	eb 74                	jmp    0x12d29
   12cb5:	66 81 7e e6 41 4d 46 	cmpl   $0xe464d41,-0x1a(%bp)
   12cbc:	0e 
   12cbd:	7c 1a                	jl     0x12cd9
   12cbf:	57                   	push   %di
   12cc0:	c4 5e 0a             	les    0xa(%bp),%bx
   12cc3:	26 8b 47 50          	mov    %es:0x50(%bx),%ax
   12cc7:	03 46 d6             	add    -0x2a(%bp),%ax
   12cca:	26 ff 77 52          	push   %es:0x52(%bx)
   12cce:	50                   	push   %ax
   12ccf:	66 6a 02             	pushl  $0x2
   12cd2:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12cd7:	eb 0f                	jmp    0x12ce8
   12cd9:	c4 5e 0a             	les    0xa(%bp),%bx
   12cdc:	26 c4 5f 50          	les    %es:0x50(%bx),%bx
   12ce0:	03 5e d6             	add    -0x2a(%bp),%bx
   12ce3:	26 c7 07 40 00       	movw   $0x40,%es:(%bx)
   12ce8:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
   12ced:	eb 26                	jmp    0x12d15
   12cef:	57                   	push   %di
   12cf0:	c4 5e 0a             	les    0xa(%bp),%bx
   12cf3:	26 8b 47 50          	mov    %es:0x50(%bx),%ax
   12cf7:	03 46 d6             	add    -0x2a(%bp),%ax
   12cfa:	8b 56 fc             	mov    -0x4(%bp),%dx
   12cfd:	c1 e2 02             	shl    $0x2,%dx
   12d00:	03 c2                	add    %dx,%ax
   12d02:	05 02 00             	add    $0x2,%ax
   12d05:	26 ff 77 52          	push   %es:0x52(%bx)
   12d09:	50                   	push   %ax
   12d0a:	66 6a 02             	pushl  $0x2
   12d0d:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12d12:	ff 46 fc             	incw   -0x4(%bp)
   12d15:	c4 5e 0a             	les    0xa(%bp),%bx
   12d18:	26 8a 47 29          	mov    %es:0x29(%bx),%al
   12d1c:	b4 00                	mov    $0x0,%ah
   12d1e:	3b 46 fc             	cmp    -0x4(%bp),%ax
   12d21:	77 cc                	ja     0x12cef
   12d23:	81 46 d6 82 00       	addw   $0x82,-0x2a(%bp)
   12d28:	46                   	inc    %si
   12d29:	c4 5e 0a             	les    0xa(%bp),%bx
   12d2c:	26 8a 47 4f          	mov    %es:0x4f(%bx),%al
   12d30:	b4 00                	mov    $0x0,%ah
   12d32:	3b c6                	cmp    %si,%ax
   12d34:	76 03                	jbe    0x12d39
   12d36:	e9 7c ff             	jmp    0x12cb5
   12d39:	26 8a 47 4a          	mov    %es:0x4a(%bx),%al
   12d3d:	b4 00                	mov    $0x0,%ah
   12d3f:	66 0f bf c0          	movswl %ax,%eax
   12d43:	66 50                	push   %eax
   12d45:	66 6a 02             	pushl  $0x2
   12d48:	16                   	push   %ss
   12d49:	8d 46 f2             	lea    -0xe(%bp),%ax
   12d4c:	50                   	push   %ax
   12d4d:	9a 3f 00 9e 0e       	lcall  $0xe9e,$0x3f
   12d52:	33 f6                	xor    %si,%si
   12d54:	c7 46 d4 00 00       	movw   $0x0,-0x2c(%bp)
   12d59:	8b 46 fa             	mov    -0x6(%bp),%ax
   12d5c:	d1 e0                	shl    $1,%ax
   12d5e:	89 46 d2             	mov    %ax,-0x2e(%bp)
   12d61:	e9 ee 00             	jmp    0x12e52
   12d64:	83 7e f6 00          	cmpw   $0x0,-0xa(%bp)
   12d68:	74 7a                	je     0x12de4
   12d6a:	57                   	push   %di
   12d6b:	16                   	push   %ss
   12d6c:	8d 46 92             	lea    -0x6e(%bp),%ax
   12d6f:	50                   	push   %ax
   12d70:	66 6a 3b             	pushl  $0x3b
   12d73:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12d78:	c4 5e 0a             	les    0xa(%bp),%bx
   12d7b:	26 8b 47 4d          	mov    %es:0x4d(%bx),%ax
   12d7f:	26 8b 57 4b          	mov    %es:0x4b(%bx),%dx
   12d83:	03 56 d4             	add    -0x2c(%bp),%dx
   12d86:	89 46 dc             	mov    %ax,-0x24(%bp)
   12d89:	89 56 da             	mov    %dx,-0x26(%bp)
   12d8c:	50                   	push   %ax
   12d8d:	52                   	push   %dx
   12d8e:	16                   	push   %ss
   12d8f:	8d 46 92             	lea    -0x6e(%bp),%ax
   12d92:	50                   	push   %ax
   12d93:	66 6a 3b             	pushl  $0x3b
   12d96:	9a 99 00 df 0d       	lcall  $0xddf,$0x99
   12d9b:	66 0f b7 46 c4       	movzwl -0x3c(%bp),%eax
   12da0:	c4 5e da             	les    -0x26(%bp),%bx
   12da3:	66 26 89 47 32       	mov    %eax,%es:0x32(%bx)
   12da8:	8b 46 c6             	mov    -0x3a(%bp),%ax
   12dab:	26 89 47 36          	mov    %ax,%es:0x36(%bx)
   12daf:	8a 46 c8             	mov    -0x38(%bp),%al
   12db2:	26 88 47 38          	mov    %al,%es:0x38(%bx)
   12db6:	66 0f b7 46 c9       	movzwl -0x37(%bp),%eax
   12dbb:	66 26 89 47 39       	mov    %eax,%es:0x39(%bx)
   12dc0:	66 0f b7 46 cb       	movzwl -0x35(%bp),%eax
   12dc5:	66 26 89 47 3d       	mov    %eax,%es:0x3d(%bx)
   12dca:	66 26 81 7f 3d ff ff 	cmpl   $0xffff,%es:0x3d(%bx)
   12dd1:	00 00 
   12dd3:	75 27                	jne    0x12dfc
   12dd5:	66 33 c0             	xor    %eax,%eax
   12dd8:	66 26 89 47 39       	mov    %eax,%es:0x39(%bx)
   12ddd:	66 26 89 47 3d       	mov    %eax,%es:0x3d(%bx)
   12de2:	eb 18                	jmp    0x12dfc
   12de4:	57                   	push   %di
   12de5:	c4 5e 0a             	les    0xa(%bp),%bx
   12de8:	26 8b 47 4b          	mov    %es:0x4b(%bx),%ax
   12dec:	03 46 d4             	add    -0x2c(%bp),%ax
   12def:	26 ff 77 4d          	push   %es:0x4d(%bx)
   12df3:	50                   	push   %ax
   12df4:	66 6a 41             	pushl  $0x41
   12df7:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12dfc:	c4 5e 0a             	les    0xa(%bp),%bx
   12dff:	26 c4 5f 4b          	les    %es:0x4b(%bx),%bx
   12e03:	03 5e d4             	add    -0x2c(%bp),%bx
   12e06:	26 8b 47 2e          	mov    %es:0x2e(%bx),%ax
   12e0a:	3b 46 ea             	cmp    -0x16(%bp),%ax
   12e0d:	76 0d                	jbe    0x12e1c
   12e0f:	c4 5e 0a             	les    0xa(%bp),%bx
   12e12:	26 c4 5f 4b          	les    %es:0x4b(%bx),%bx
   12e16:	03 5e d4             	add    -0x2c(%bp),%bx
   12e19:	89 46 ea             	mov    %ax,-0x16(%bp)
   12e1c:	c4 5e 0a             	les    0xa(%bp),%bx
   12e1f:	26 c4 5f 4b          	les    %es:0x4b(%bx),%bx
   12e23:	03 5e d4             	add    -0x2c(%bp),%bx
   12e26:	26 8b 47 2e          	mov    %es:0x2e(%bx),%ax
   12e2a:	3b 46 fa             	cmp    -0x6(%bp),%ax
   12e2d:	76 1e                	jbe    0x12e4d
   12e2f:	c4 5e 0a             	les    0xa(%bp),%bx
   12e32:	26 c4 5f 4b          	les    %es:0x4b(%bx),%bx
   12e36:	03 5e d4             	add    -0x2c(%bp),%bx
   12e39:	26 8b 47 32          	mov    %es:0x32(%bx),%ax
   12e3d:	c4 5e f2             	les    -0xe(%bp),%bx
   12e40:	03 5e d2             	add    -0x2e(%bp),%bx
   12e43:	26 89 07             	mov    %ax,%es:(%bx)
   12e46:	83 46 d2 02          	addw   $0x2,-0x2e(%bp)
   12e4a:	ff 46 fa             	incw   -0x6(%bp)
   12e4d:	83 46 d4 41          	addw   $0x41,-0x2c(%bp)
   12e51:	46                   	inc    %si
   12e52:	c4 5e 0a             	les    0xa(%bp),%bx
   12e55:	26 8a 47 4a          	mov    %es:0x4a(%bx),%al
   12e59:	b4 00                	mov    $0x0,%ah
   12e5b:	3b c6                	cmp    %si,%ax
   12e5d:	76 03                	jbe    0x12e62
   12e5f:	e9 02 ff             	jmp    0x12d64
   12e62:	8b 46 ea             	mov    -0x16(%bp),%ax
   12e65:	89 46 fa             	mov    %ax,-0x6(%bp)
   12e68:	66 26 0f b7 47 54    	movzwl %es:0x54(%bx),%eax
   12e6e:	66 50                	push   %eax
   12e70:	66 6a 02             	pushl  $0x2
   12e73:	16                   	push   %ss
   12e74:	8d 46 ee             	lea    -0x12(%bp),%ax
   12e77:	50                   	push   %ax
   12e78:	9a 3f 00 9e 0e       	lcall  $0xe9e,$0x3f
   12e7d:	33 f6                	xor    %si,%si
   12e7f:	c7 46 d0 00 00       	movw   $0x0,-0x30(%bp)
   12e84:	eb 2b                	jmp    0x12eb1
   12e86:	57                   	push   %di
   12e87:	8b 46 ee             	mov    -0x12(%bp),%ax
   12e8a:	03 46 d0             	add    -0x30(%bp),%ax
   12e8d:	ff 76 f0             	push   -0x10(%bp)
   12e90:	50                   	push   %ax
   12e91:	66 6a 02             	pushl  $0x2
   12e94:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12e99:	c4 5e ee             	les    -0x12(%bp),%bx
   12e9c:	03 5e d0             	add    -0x30(%bp),%bx
   12e9f:	26 8b 07             	mov    %es:(%bx),%ax
   12ea2:	8b d0                	mov    %ax,%dx
   12ea4:	3b 46 ec             	cmp    -0x14(%bp),%ax
   12ea7:	76 03                	jbe    0x12eac
   12ea9:	89 56 ec             	mov    %dx,-0x14(%bp)
   12eac:	83 46 d0 02          	addw   $0x2,-0x30(%bp)
   12eb0:	46                   	inc    %si
   12eb1:	c4 5e 0a             	les    0xa(%bp),%bx
   12eb4:	26 39 77 54          	cmp    %si,%es:0x54(%bx)
   12eb8:	77 cc                	ja     0x12e86
   12eba:	c7 46 fc 01 00       	movw   $0x1,-0x4(%bp)
   12ebf:	eb 1d                	jmp    0x12ede
   12ec1:	c4 5e 0a             	les    0xa(%bp),%bx
   12ec4:	26 c4 5f 56          	les    %es:0x56(%bx),%bx
   12ec8:	8b 46 fc             	mov    -0x4(%bp),%ax
   12ecb:	c1 e0 02             	shl    $0x2,%ax
   12ece:	03 d8                	add    %ax,%bx
   12ed0:	26 c7 47 02 00 00    	movw   $0x0,%es:0x2(%bx)
   12ed6:	26 c7 07 00 00       	movw   $0x0,%es:(%bx)
   12edb:	ff 46 fc             	incw   -0x4(%bp)
   12ede:	c4 5e 0a             	les    0xa(%bp),%bx
   12ee1:	26 8b 47 54          	mov    %es:0x54(%bx),%ax
   12ee5:	40                   	inc    %ax
   12ee6:	3b 46 fc             	cmp    -0x4(%bp),%ax
   12ee9:	77 d6                	ja     0x12ec1
   12eeb:	33 f6                	xor    %si,%si
   12eed:	3b 76 ec             	cmp    -0x14(%bp),%si
   12ef0:	72 03                	jb     0x12ef5
   12ef2:	e9 ea 00             	jmp    0x12fdf
   12ef5:	57                   	push   %di
   12ef6:	16                   	push   %ss
   12ef7:	8d 46 fe             	lea    -0x2(%bp),%ax
   12efa:	50                   	push   %ax
   12efb:	66 6a 02             	pushl  $0x2
   12efe:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12f03:	57                   	push   %di
   12f04:	16                   	push   %ss
   12f05:	8d 46 fc             	lea    -0x4(%bp),%ax
   12f08:	50                   	push   %ax
   12f09:	66 6a 01             	pushl  $0x1
   12f0c:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12f11:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
   12f15:	75 0a                	jne    0x12f21
   12f17:	66 c7 46 e2 00 00 00 	movl   $0x0,-0x1e(%bp)
   12f1e:	00 
   12f1f:	eb 6e                	jmp    0x12f8f
   12f21:	8b 46 fe             	mov    -0x2(%bp),%ax
   12f24:	d1 e0                	shl    $1,%ax
   12f26:	03 46 fe             	add    -0x2(%bp),%ax
   12f29:	05 06 00             	add    $0x6,%ax
   12f2c:	66 0f b7 c0          	movzwl %ax,%eax
   12f30:	66 50                	push   %eax
   12f32:	16                   	push   %ss
   12f33:	8d 46 e2             	lea    -0x1e(%bp),%ax
   12f36:	50                   	push   %ax
   12f37:	9a 00 00 9e 0e       	lcall  $0xe9e,$0x0
   12f3c:	0b c0                	or     %ax,%ax
   12f3e:	74 09                	je     0x12f49
   12f40:	b8 ff ff             	mov    $0xffff,%ax
   12f43:	5f                   	pop    %di
   12f44:	5e                   	pop    %si
   12f45:	c9                   	leave
   12f46:	ca 0a 00             	lret   $0xa
   12f49:	8b 46 fe             	mov    -0x2(%bp),%ax
   12f4c:	d1 e0                	shl    $1,%ax
   12f4e:	03 46 fe             	add    -0x2(%bp),%ax
   12f51:	05 03 00             	add    $0x3,%ax
   12f54:	66 0f b7 c0          	movzwl %ax,%eax
   12f58:	c4 5e 0a             	les    0xa(%bp),%bx
   12f5b:	66 26 01 47 01       	add    %eax,%es:0x1(%bx)
   12f60:	c4 5e e2             	les    -0x1e(%bp),%bx
   12f63:	26 c6 47 02 00       	movb   $0x0,%es:0x2(%bx)
   12f68:	8b 46 fe             	mov    -0x2(%bp),%ax
   12f6b:	26 89 07             	mov    %ax,%es:(%bx)
   12f6e:	57                   	push   %di
   12f6f:	8b 46 e2             	mov    -0x1e(%bp),%ax
   12f72:	05 03 00             	add    $0x3,%ax
   12f75:	ff 76 e4             	push   -0x1c(%bp)
   12f78:	50                   	push   %ax
   12f79:	8b 46 fe             	mov    -0x2(%bp),%ax
   12f7c:	d1 e0                	shl    $1,%ax
   12f7e:	03 46 fe             	add    -0x2(%bp),%ax
   12f81:	03 46 f8             	add    -0x8(%bp),%ax
   12f84:	66 0f b7 c0          	movzwl %ax,%eax
   12f88:	66 50                	push   %eax
   12f8a:	9a 2f 00 cd 16       	lcall  $0x16cd,$0x2f
   12f8f:	c7 46 fc 00 00       	movw   $0x0,-0x4(%bp)
   12f94:	8b c6                	mov    %si,%ax
   12f96:	40                   	inc    %ax
   12f97:	8b c8                	mov    %ax,%cx
   12f99:	eb 2f                	jmp    0x12fca
   12f9b:	8b 46 fc             	mov    -0x4(%bp),%ax
   12f9e:	d1 e0                	shl    $1,%ax
   12fa0:	c4 5e ee             	les    -0x12(%bp),%bx
   12fa3:	03 d8                	add    %ax,%bx
   12fa5:	26 39 0f             	cmp    %cx,%es:(%bx)
   12fa8:	75 1d                	jne    0x12fc7
   12faa:	8b 46 fc             	mov    -0x4(%bp),%ax
   12fad:	40                   	inc    %ax
   12fae:	c1 e0 02             	shl    $0x2,%ax
   12fb1:	c4 5e 0a             	les    0xa(%bp),%bx
   12fb4:	26 c4 5f 56          	les    %es:0x56(%bx),%bx
   12fb8:	03 d8                	add    %ax,%bx
   12fba:	8b 46 e4             	mov    -0x1c(%bp),%ax
   12fbd:	8b 56 e2             	mov    -0x1e(%bp),%dx
   12fc0:	26 89 47 02          	mov    %ax,%es:0x2(%bx)
   12fc4:	26 89 17             	mov    %dx,%es:(%bx)
   12fc7:	ff 46 fc             	incw   -0x4(%bp)
   12fca:	c4 5e 0a             	les    0xa(%bp),%bx
   12fcd:	26 8b 47 54          	mov    %es:0x54(%bx),%ax
   12fd1:	3b 46 fc             	cmp    -0x4(%bp),%ax
   12fd4:	77 c5                	ja     0x12f9b
   12fd6:	46                   	inc    %si
   12fd7:	3b 76 ec             	cmp    -0x14(%bp),%si
   12fda:	73 03                	jae    0x12fdf
   12fdc:	e9 16 ff             	jmp    0x12ef5
   12fdf:	33 f6                	xor    %si,%si
   12fe1:	c7 46 ce 00 00       	movw   $0x0,-0x32(%bp)
   12fe6:	3b 76 fa             	cmp    -0x6(%bp),%si
   12fe9:	72 03                	jb     0x12fee
   12feb:	e9 45 01             	jmp    0x13133
   12fee:	c4 5e f2             	les    -0xe(%bp),%bx
   12ff1:	03 5e ce             	add    -0x32(%bp),%bx
   12ff4:	8b c3                	mov    %bx,%ax
   12ff6:	26 83 3f 00          	cmpw   $0x0,%es:(%bx)
   12ffa:	77 03                	ja     0x12fff
   12ffc:	e9 27 01             	jmp    0x13126
   12fff:	26 8b 07             	mov    %es:(%bx),%ax
   13002:	05 10 00             	add    $0x10,%ax
   13005:	66 0f b7           	movzwl %ax,%eax
