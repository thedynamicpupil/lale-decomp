
lale/IST.EXE:     file format binary


Disassembly of section .data:

0000994d <.data+0x994d>:
    994d:	cb                   	lret
    994e:	55                   	push   %bp
    994f:	8b ec                	mov    %sp,%bp
    9951:	83 ec 04             	sub    $0x4,%sp
    9954:	b8 e0 16             	mov    $0x16e0,%ax
    9957:	8e c0                	mov    %ax,%es
    9959:	26 a0 d0 73          	mov    %es:0x73d0,%al
    995d:	98                   	cbtw
    995e:	0b c0                	or     %ax,%ax
    9960:	75 03                	jne    0x9965
    9962:	e9 86 01             	jmp    0x9aeb
    9965:	c7 46 fe 01 00       	movw   $0x1,-0x2(%bp)
    996a:	e9 75 01             	jmp    0x9ae2
    996d:	8b 5e fe             	mov    -0x2(%bp),%bx
    9970:	6b db 11             	imul   $0x11,%bx,%bx
    9973:	b8 e0 16             	mov    $0x16e0,%ax
    9976:	8e c0                	mov    %ax,%es
    9978:	26 f7 87 ea 22 01 00 	testw  $0x1,%es:0x22ea(%bx)
    997f:	74 03                	je     0x9984
    9981:	e9 28 01             	jmp    0x9aac
    9984:	b8 e0 16             	mov    $0x16e0,%ax
    9987:	8e c0                	mov    %ax,%es
    9989:	26 a0 72 96          	mov    %es:0x9672,%al
    998d:	b4 00                	mov    $0x0,%ah
    998f:	0b c0                	or     %ax,%ax
    9991:	74 0d                	je     0x99a0
    9993:	3d 01 00             	cmp    $0x1,%ax
    9996:	74 24                	je     0x99bc
    9998:	3d 03 00             	cmp    $0x3,%ax
    999b:	74 3b                	je     0x99d8
    999d:	e9 0c 01             	jmp    0x9aac
    99a0:	8b 5e fe             	mov    -0x2(%bp),%bx
    99a3:	6b db 11             	imul   $0x11,%bx,%bx
    99a6:	b8 e0 16             	mov    $0x16e0,%ax
    99a9:	8e c0                	mov    %ax,%es
    99ab:	26 f7 87 ea 22 04 00 	testw  $0x4,%es:0x22ea(%bx)
    99b2:	74 03                	je     0x99b7
    99b4:	e9 f5 00             	jmp    0x9aac
    99b7:	eb 55                	jmp    0x9a0e
    99b9:	e9 f0 00             	jmp    0x9aac
    99bc:	8b 5e fe             	mov    -0x2(%bp),%bx
    99bf:	6b db 11             	imul   $0x11,%bx,%bx
    99c2:	b8 e0 16             	mov    $0x16e0,%ax
    99c5:	8e c0                	mov    %ax,%es
    99c7:	26 f7 87 ea 22 02 00 	testw  $0x2,%es:0x22ea(%bx)
    99ce:	74 03                	je     0x99d3
    99d0:	e9 d9 00             	jmp    0x9aac
    99d3:	eb 39                	jmp    0x9a0e
    99d5:	e9 d4 00             	jmp    0x9aac
    99d8:	8b 5e fe             	mov    -0x2(%bp),%bx
    99db:	6b db 11             	imul   $0x11,%bx,%bx
    99de:	b8 e0 16             	mov    $0x16e0,%ax
    99e1:	8e c0                	mov    %ax,%es
    99e3:	26 f7 87 ea 22 02 00 	testw  $0x2,%es:0x22ea(%bx)
    99ea:	75 03                	jne    0x99ef
    99ec:	e9 bd 00             	jmp    0x9aac
    99ef:	8b 5e fe             	mov    -0x2(%bp),%bx
    99f2:	6b db 11             	imul   $0x11,%bx,%bx
    99f5:	b8 e0 16             	mov    $0x16e0,%ax
    99f8:	8e c0                	mov    %ax,%es
    99fa:	26 f7 87 ea 22 04 00 	testw  $0x4,%es:0x22ea(%bx)
    9a01:	75 03                	jne    0x9a06
    9a03:	e9 a6 00             	jmp    0x9aac
    9a06:	eb 06                	jmp    0x9a0e
    9a08:	e9 a1 00             	jmp    0x9aac
    9a0b:	e9 9e 00             	jmp    0x9aac
    9a0e:	8b 5e fe             	mov    -0x2(%bp),%bx
    9a11:	6b db 17             	imul   $0x17,%bx,%bx
    9a14:	b8 e0 16             	mov    $0x16e0,%ax
    9a17:	8e c0                	mov    %ax,%es
    9a19:	26 8b 87 34 de       	mov    %es:-0x21cc(%bx),%ax
    9a1e:	26 0b 87 36 de       	or     %es:-0x21ca(%bx),%ax
    9a23:	74 03                	je     0x9a28
    9a25:	e9 b7 00             	jmp    0x9adf
    9a28:	6a 00                	push   $0x0
    9a2a:	6a 00                	push   $0x0
    9a2c:	6a 00                	push   $0x0
    9a2e:	6a 00                	push   $0x0
    9a30:	6a 00                	push   $0x0
    9a32:	ff 76 fe             	push   -0x2(%bp)
    9a35:	8b 46 fe             	mov    -0x2(%bp),%ax
    9a38:	6b c0 11             	imul   $0x11,%ax,%ax
    9a3b:	05 db 22             	add    $0x22db,%ax
    9a3e:	68 e0 16             	push   $0x16e0
    9a41:	50                   	push   %ax
    9a42:	6a 01                	push   $0x1
    9a44:	9a 25 00 c5 16       	lcall  $0x16c5,$0x25
    9a49:	83 c4 12             	add    $0x12,%sp
    9a4c:	89 46 fc             	mov    %ax,-0x4(%bp)
    9a4f:	0b c0                	or     %ax,%ax
    9a51:	75 03                	jne    0x9a56
    9a53:	e9 89 00             	jmp    0x9adf
    9a56:	83 7e fc 01          	cmpw   $0x1,-0x4(%bp)
    9a5a:	75 07                	jne    0x9a63
    9a5c:	8c da                	mov    %ds,%dx
    9a5e:	b8 8a 6c             	mov    $0x6c8a,%ax
    9a61:	eb 05                	jmp    0x9a68
    9a63:	8c da                	mov    %ds,%dx
    9a65:	b8 97 6c             	mov    $0x6c97,%ax
    9a68:	52                   	push   %dx
    9a69:	50                   	push   %ax
    9a6a:	ff 76 fe             	push   -0x2(%bp)
    9a6d:	8b 46 fe             	mov    -0x2(%bp),%ax
    9a70:	6b c0 11             	imul   $0x11,%ax,%ax
    9a73:	05 db 22             	add    $0x22db,%ax
    9a76:	68 e0 16             	push   $0x16e0
    9a79:	50                   	push   %ax
    9a7a:	1e                   	push   %ds
    9a7b:	68 5c 6c             	push   $0x6c5c
    9a7e:	68 e0 16             	push   $0x16e0
    9a81:	68 cc ba             	push   $0xbacc
    9a84:	9a b4 48 00 00       	lcall  $0x0,$0x48b4
    9a89:	83 c4 12             	add    $0x12,%sp
    9a8c:	3d 68 00             	cmp    $0x68,%ax
    9a8f:	7c 4e                	jl     0x9adf
    9a91:	6a ff                	push   $0xffff
    9a93:	68 e0 16             	push   $0x16e0
    9a96:	68 cc ba             	push   $0xbacc
    9a99:	68 97 01             	push   $0x197
    9a9c:	1e                   	push   %ds
    9a9d:	68 a3 6c             	push   $0x6ca3
    9aa0:	9a 2a 00 c1 16       	lcall  $0x16c1,$0x2a
    9aa5:	83 c4 0c             	add    $0xc,%sp
    9aa8:	eb 35                	jmp    0x9adf
    9aaa:	eb 33                	jmp    0x9adf
    9aac:	8b 5e fe             	mov    -0x2(%bp),%bx
    9aaf:	6b db 17             	imul   $0x17,%bx,%bx
    9ab2:	b8 e0 16             	mov    $0x16e0,%ax
    9ab5:	8e c0                	mov    %ax,%es
    9ab7:	26 8b 87 34 de       	mov    %es:-0x21cc(%bx),%ax
    9abc:	26 0b 87 36 de       	or     %es:-0x21ca(%bx),%ax
    9ac1:	74 1c                	je     0x9adf
    9ac3:	1e                   	push   %ds
    9ac4:	68 b5 6c             	push   $0x6cb5
    9ac7:	68 9d 01             	push   $0x19d
    9aca:	8b 46 fe             	mov    -0x2(%bp),%ax
    9acd:	6b c0 17             	imul   $0x17,%ax,%ax
    9ad0:	05 34 de             	add    $0xde34,%ax
    9ad3:	68 e0 16             	push   $0x16e0
    9ad6:	50                   	push   %ax
    9ad7:	9a 2f 02 b7 0d       	lcall  $0xdb7,$0x22f
    9adc:	83 c4 0a             	add    $0xa,%sp
    9adf:	ff 46 fe             	incw   -0x2(%bp)
    9ae2:	83 7e fe 31          	cmpw   $0x31,-0x2(%bp)
    9ae6:	7d 03                	jge    0x9aeb
    9ae8:	e9 82 fe             	jmp    0x996d
    9aeb:	c9                   	leave
    9aec:	cb                   	lret
    9aed:	55                   	push   %bp
    9aee:	8b ec                	mov    %sp,%bp
    9af0:	83 ec 02             	sub    $0x2,%sp
    9af3:	b8 e0 16             	mov    $0x16e0,%ax
    9af6:	8e c0                	mov    %ax,%es
    9af8:	26 a0 d0 73          	mov    %es:0x73d0,%al
    9afc:	98                   	cbtw
    9afd:	0b c0                	or     %ax,%ax
    9aff:	75 03                	jne    0x9b04
    9b01:	e9 24 02             	jmp    0x9d28
    9b04:	8b 5e 06             	mov    0x6(%bp),%bx
    9b07:	6b db 17             	imul   $0x17,%bx,%bx
    9b0a:	b8 e0 16             	mov    $0x16e0,%ax
    9b0d:	8e c0                	mov    %ax,%es
    9b0f:	26 8b 87 34 de       	mov    %es:-0x21cc(%bx),%ax
    9b14:	26 0b 87 36 de       	or     %es:-0x21ca(%bx),%ax
    9b19:	75 7b                	jne    0x9b96
    9b1b:	6a 00                	push   $0x0
    9b1d:	6a 00                	push   $0x0
    9b1f:	6a 00                	push   $0x0
    9b21:	6a 00                	push   $0x0
    9b23:	6a 00                	push   $0x0
    9b25:	ff 76 06             	push   0x6(%bp)
    9b28:	8b 46 06             	mov    0x6(%bp),%ax
    9b2b:	6b c0 11             	imul   $0x11,%ax,%ax
    9b2e:	05 db 22             	add    $0x22db,%ax
    9b31:	68 e0 16             	push   $0x16e0
    9b34:	50                   	push   %ax
    9b35:	6a 01                	push   $0x1
    9b37:	9a 25 00 c5 16       	lcall  $0x16c5,$0x25
    9b3c:	83 c4 12             	add    $0x12,%sp
    9b3f:	89 46 fe             	mov    %ax,-0x2(%bp)
    9b42:	0b c0                	or     %ax,%ax
    9b44:	74 50                	je     0x9b96
    9b46:	83 7e fe 01          	cmpw   $0x1,-0x2(%bp)
    9b4a:	75 07                	jne    0x9b53
    9b4c:	8c da                	mov    %ds,%dx
    9b4e:	b8 e9 6c             	mov    $0x6ce9,%ax
    9b51:	eb 05                	jmp    0x9b58
    9b53:	8c da                	mov    %ds,%dx
    9b55:	b8 f6 6c             	mov    $0x6cf6,%ax
    9b58:	52                   	push   %dx
    9b59:	50                   	push   %ax
    9b5a:	ff 76 06             	push   0x6(%bp)
    9b5d:	8b 46 06             	mov    0x6(%bp),%ax
    9b60:	6b c0 11             	imul   $0x11,%ax,%ax
    9b63:	05 db 22             	add    $0x22db,%ax
    9b66:	68 e0 16             	push   $0x16e0
    9b69:	50                   	push   %ax
    9b6a:	1e                   	push   %ds
    9b6b:	68 c7 6c             	push   $0x6cc7
    9b6e:	68 e0 16             	push   $0x16e0
    9b71:	68 cc ba             	push   $0xbacc
    9b74:	9a b4 48 00 00       	lcall  $0x0,$0x48b4
    9b79:	83 c4 12             	add    $0x12,%sp
    9b7c:	3d 68 00             	cmp    $0x68,%ax
    9b7f:	6a ff                	push   $0xffff
    9b81:	68 e0 16             	push   $0x16e0
    9b84:	68 cc ba             	push   $0xbacc
    9b87:	68 bc 01             	push   $0x1bc
    9b8a:	1e                   	push   %ds
    9b8b:	68 02 6d             	push   $0x6d02
    9b8e:	9a 2a 00 c1 16       	lcall  $0x16c1,$0x2a
    9b93:	83 c4 0c             	add    $0xc,%sp
    9b96:	8b 5e 06             	mov    0x6(%bp),%bx
    9b99:	6b db 11             	imul   $0x11,%bx,%bx
    9b9c:	b8 e0 16             	mov    $0x16e0,%ax
    9b9f:	8e c0                	mov    %ax,%es
    9ba1:	26 8b 87 ea 22       	mov    %es:0x22ea(%bx),%ax
    9ba6:	0b 46 0e             	or     0xe(%bp),%ax
    9ba9:	a9 10 00             	test   $0x10,%ax
    9bac:	74 4d                	je     0x9bfb
    9bae:	9a 79 17 00 00       	lcall  $0x0,$0x1779
    9bb3:	99                   	cwtd
    9bb4:	50                   	push   %ax
    9bb5:	52                   	push   %dx
    9bb6:	6a 00                	push   $0x0
    9bb8:	6a 05                	push   $0x5
    9bba:	ff 76 0a             	push   0xa(%bp)
    9bbd:	ff 76 08             	push   0x8(%bp)
    9bc0:	9a e6 12 00 00       	lcall  $0x0,$0x12e6
    9bc5:	59                   	pop    %cx
    9bc6:	5b                   	pop    %bx
    9bc7:	9a 42 12 00 00       	lcall  $0x0,$0x1242
    9bcc:	b1 0f                	mov    $0xf,%cl
    9bce:	9a ce 13 00 00       	lcall  $0x0,$0x13ce
    9bd3:	99                   	cwtd
    9bd4:	8b 5e 0a             	mov    0xa(%bp),%bx
    9bd7:	8b 4e 08             	mov    0x8(%bp),%cx
    9bda:	03 c8                	add    %ax,%cx
    9bdc:	13 da                	adc    %dx,%bx
    9bde:	51                   	push   %cx
    9bdf:	53                   	push   %bx
    9be0:	6a 00                	push   $0x0
    9be2:	6a 0a                	push   $0xa
    9be4:	ff 76 0a             	push   0xa(%bp)
    9be7:	ff 76 08             	push   0x8(%bp)
    9bea:	9a e6 12 00 00       	lcall  $0x0,$0x12e6
    9bef:	5b                   	pop    %bx
    9bf0:	59                   	pop    %cx
    9bf1:	2b c8                	sub    %ax,%cx
    9bf3:	1b da                	sbb    %dx,%bx
    9bf5:	89 5e 0a             	mov    %bx,0xa(%bp)
    9bf8:	89 4e 08             	mov    %cx,0x8(%bp)
    9bfb:	b8 e0 16             	mov    $0x16e0,%ax
    9bfe:	8e c0                	mov    %ax,%es
    9c00:	26 a0 d7 73          	mov    %es:0x73d7,%al
    9c04:	b4 00                	mov    $0x0,%ah
    9c06:	48                   	dec    %ax
    9c07:	99                   	cwtd
    9c08:	52                   	push   %dx
    9c09:	50                   	push   %ax
    9c0a:	9a e6 00 ae 0e       	lcall  $0xeae,$0xe6
    9c0f:	b8 e0 16             	mov    $0x16e0,%ax
    9c12:	8e c0                	mov    %ax,%es
    9c14:	26 a0 d7 73          	mov    %es:0x73d7,%al
    9c18:	b4 00                	mov    $0x0,%ah
    9c1a:	05 fe ff             	add    $0xfffe,%ax
    9c1d:	99                   	cwtd
    9c1e:	52                   	push   %dx
    9c1f:	50                   	push   %ax
    9c20:	9a e6 00 ae 0e       	lcall  $0xeae,$0xe6
    9c25:	b8 e0 16             	mov    $0x16e0,%ax
    9c28:	8e c0                	mov    %ax,%es
    9c2a:	26 a0 d7 73          	mov    %es:0x73d7,%al
    9c2e:	04 ff                	add    $0xff,%al
    9c30:	50                   	push   %ax
    9c31:	6a 00                	push   $0x0
    9c33:	6a 64                	push   $0x64
    9c35:	6a 00                	push   $0x0
    9c37:	6a 40                	push   $0x40
    9c39:	ff 76 0a             	push   0xa(%bp)
    9c3c:	ff 76 08             	push   0x8(%bp)
    9c3f:	ff 76 06             	push   0x6(%bp)
    9c42:	9a 4f 01 42 0d       	lcall  $0xd42,$0x14f
    9c47:	83 c4 10             	add    $0x10,%sp
    9c4a:	b8 e0 16             	mov    $0x16e0,%ax
    9c4d:	8e c0                	mov    %ax,%es
    9c4f:	26 a0 d7 73          	mov    %es:0x73d7,%al
    9c53:	04 fe                	add    $0xfe,%al
    9c55:	50                   	push   %ax
    9c56:	6a 00                	push   $0x0
    9c58:	6a 64                	push   $0x64
    9c5a:	6a 00                	push   $0x0
    9c5c:	6a 40                	push   $0x40
    9c5e:	ff 76 0a             	push   0xa(%bp)
    9c61:	ff 76 08             	push   0x8(%bp)
    9c64:	ff 76 06             	push   0x6(%bp)
    9c67:	9a 4f 01 42 0d       	lcall  $0xd42,$0x14f
    9c6c:	83 c4 10             	add    $0x10,%sp
    9c6f:	8b 5e 06             	mov    0x6(%bp),%bx
    9c72:	6b db 17             	imul   $0x17,%bx,%bx
    9c75:	b8 e0 16             	mov    $0x16e0,%ax
    9c78:	8e c0                	mov    %ax,%es
    9c7a:	26 8b 87 3e de       	mov    %es:-0x21c2(%bx),%ax
    9c7f:	26 8b 97 3c de       	mov    %es:-0x21c4(%bx),%dx
    9c84:	bb e0 16             	mov    $0x16e0,%bx
    9c87:	8e c3                	mov    %bx,%es
    9c89:	26 a3 ce 73          	mov    %ax,%es:0x73ce
    9c8d:	26 89 16 cc 73       	mov    %dx,%es:0x73cc
    9c92:	b8 e0 16             	mov    $0x16e0,%ax
    9c95:	8e c0                	mov    %ax,%es
    9c97:	26 a1 4c e7          	mov    %es:0xe74c,%ax
    9c9b:	26 8b 16 4a e7       	mov    %es:-0x18b6,%dx
    9ca0:	03 56 0c             	add    0xc(%bp),%dx
    9ca3:	15 00 00             	adc    $0x0,%ax
    9ca6:	bb e0 16             	mov    $0x16e0,%bx
    9ca9:	8e c3                	mov    %bx,%es
    9cab:	26 a3 d3 73          	mov    %ax,%es:0x73d3
    9caf:	26 89 16 d1 73       	mov    %dx,%es:0x73d1
    9cb4:	b8 e0 16             	mov    $0x16e0,%ax
    9cb7:	8b 56 0c             	mov    0xc(%bp),%dx
    9cba:	8e c0                	mov    %ax,%es
    9cbc:	26 89 16 d5 73       	mov    %dx,%es:0x73d5
    9cc1:	8b 5e 06             	mov    0x6(%bp),%bx
    9cc4:	6b db 11             	imul   $0x11,%bx,%bx
    9cc7:	b8 e0 16             	mov    $0x16e0,%ax
    9cca:	8e c0                	mov    %ax,%es
    9ccc:	26 8b 87 ea 22       	mov    %es:0x22ea(%bx),%ax
    9cd1:	0b 46 0e             	or     0xe(%bp),%ax
    9cd4:	a9 08 00             	test   $0x8,%ax
    9cd7:	74 07                	je     0x9ce0
    9cd9:	90                   	nop
    9cda:	0e                   	push   %cs
    9cdb:	e8 fd 01             	call   0x9edb
    9cde:	eb 2e                	jmp    0x9d0e
    9ce0:	8b 5e 06             	mov    0x6(%bp),%bx
    9ce3:	ff 46 06             	incw   0x6(%bp)
    9ce6:	6b db 11             	imul   $0x11,%bx,%bx
    9ce9:	b8 e0 16             	mov    $0x16e0,%ax
    9cec:	8e c0                	mov    %ax,%es
    9cee:	26 f7 87 ea 22 00 02 	testw  $0x200,%es:0x22ea(%bx)
    9cf5:	74 31                	je     0x9d28
    9cf7:	8b 5e 06             	mov    0x6(%bp),%bx
    9cfa:	6b db 11             	imul   $0x11,%bx,%bx
    9cfd:	b8 e0 16             	mov    $0x16e0,%ax
    9d00:	8b 56 08             	mov    0x8(%bp),%dx
    9d03:	8e c0                	mov    %ax,%es
    9d05:	26 89 97 e8 22       	mov    %dx,%es:0x22e8(%bx)
    9d0a:	eb 1c                	jmp    0x9d28
    9d0c:	eb 1a                	jmp    0x9d28
    9d0e:	8b 5e 06             	mov    0x6(%bp),%bx
    9d11:	ff 46 06             	incw   0x6(%bp)
    9d14:	6b db 11             	imul   $0x11,%bx,%bx
    9d17:	b8 e0 16             	mov    $0x16e0,%ax
    9d1a:	8e c0                	mov    %ax,%es
    9d1c:	26 f7 87 ea 22 00 02 	testw  $0x200,%es:0x22ea(%bx)
    9d23:	74 03                	je     0x9d28
    9d25:	e9 d3 fe             	jmp    0x9bfb
    9d28:	c9                   	leave
    9d29:	cb                   	lret
    9d2a:	55                   	push   %bp
    9d2b:	8b ec                	mov    %sp,%bp
    9d2d:	83 ec 02             	sub    $0x2,%sp
    9d30:	c6 46 ff 00          	movb   $0x0,-0x1(%bp)
    9d34:	b8 e0 16             	mov    $0x16e0,%ax
    9d37:	8e c0                	mov    %ax,%es
    9d39:	26 a0 d0 73          	mov    %es:0x73d0,%al
    9d3d:	98                   	cbtw
    9d3e:	0b c0                	or     %ax,%ax
    9d40:	75 1a                	jne    0x9d5c
    9d42:	b8 e0 16             	mov    $0x16e0,%ax
    9d45:	8e c0                	mov    %ax,%es
    9d47:	26 83 3e d3 73 ff    	cmpw   $0xffff,%es:0x73d3
    9d4d:	75 0d                	jne    0x9d5c
    9d4f:	26 83 3e d1 73 ff    	cmpw   $0xffff,%es:0x73d1
    9d55:	75 05                	jne    0x9d5c
    9d57:	33 c0                	xor    %ax,%ax
    9d59:	e9 7d 01             	jmp    0x9ed9
    9d5c:	90                   	nop
    9d5d:	0e                   	push   %cs
    9d5e:	e8 7a 01             	call   0x9edb
    9d61:	88 46 ff             	mov    %al,-0x1(%bp)
    9d64:	e9 e2 00             	jmp    0x9e49
    9d67:	8b 5e 06             	mov    0x6(%bp),%bx
    9d6a:	6b db 11             	imul   $0x11,%bx,%bx
    9d6d:	b8 e0 16             	mov    $0x16e0,%ax
    9d70:	8e c0                	mov    %ax,%es
    9d72:	26 8b 87 ea 22       	mov    %es:0x22ea(%bx),%ax
    9d77:	0b 46 08             	or     0x8(%bp),%ax
    9d7a:	a9 01 00             	test   $0x1,%ax
    9d7d:	75 45                	jne    0x9dc4
    9d7f:	8b 5e 06             	mov    0x6(%bp),%bx
    9d82:	6b db 17             	imul   $0x17,%bx,%bx
    9d85:	b8 e0 16             	mov    $0x16e0,%ax
    9d88:	8e c0                	mov    %ax,%es
    9d8a:	26 8b 87 34 de       	mov    %es:-0x21cc(%bx),%ax
    9d8f:	26 0b 87 36 de       	or     %es:-0x21ca(%bx),%ax
    9d94:	74 2e                	je     0x9dc4
    9d96:	1e                   	push   %ds
    9d97:	68 14 6d             	push   $0x6d14
    9d9a:	68 de 01             	push   $0x1de
    9d9d:	8b 46 06             	mov    0x6(%bp),%ax
    9da0:	6b c0 17             	imul   $0x17,%ax,%ax
    9da3:	05 34 de             	add    $0xde34,%ax
    9da6:	68 e0 16             	push   $0x16e0
    9da9:	50                   	push   %ax
    9daa:	9a 2f 02 b7 0d       	lcall  $0xdb7,$0x22f
    9daf:	83 c4 0a             	add    $0xa,%sp
    9db2:	8b 5e 06             	mov    0x6(%bp),%bx
    9db5:	6b db 11             	imul   $0x11,%bx,%bx
    9db8:	b8 e0 16             	mov    $0x16e0,%ax
    9dbb:	8e c0                	mov    %ax,%es
    9dbd:	26 81 a7 ea 22 ff fd 	andw   $0xfdff,%es:0x22ea(%bx)
    9dc4:	ff 46 06             	incw   0x6(%bp)
    9dc7:	8b 5e 06             	mov    0x6(%bp),%bx
    9dca:	6b db 11             	imul   $0x11,%bx,%bx
    9dcd:	b8 e0 16             	mov    $0x16e0,%ax
    9dd0:	8e c0                	mov    %ax,%es
    9dd2:	26 f7 87 ea 22 00 02 	testw  $0x200,%es:0x22ea(%bx)
    9dd9:	74 20                	je     0x9dfb
    9ddb:	8b 5e 06             	mov    0x6(%bp),%bx
    9dde:	6b db 11             	imul   $0x11,%bx,%bx
    9de1:	b8 e0 16             	mov    $0x16e0,%ax
    9de4:	8e c0                	mov    %ax,%es
    9de6:	26 8b 87 e8 22       	mov    %es:0x22e8(%bx),%ax
    9deb:	8b 5e 06             	mov    0x6(%bp),%bx
    9dee:	6b db 11             	imul   $0x11,%bx,%bx
    9df1:	ba e0 16             	mov    $0x16e0,%dx
    9df4:	8e c2                	mov    %dx,%es
    9df6:	26 89 87 f9 22       	mov    %ax,%es:0x22f9(%bx)
    9dfb:	6a 00                	push   $0x0
    9dfd:	68 f4 01             	push   $0x1f4
    9e00:	8b 5e 06             	mov    0x6(%bp),%bx
    9e03:	6b db 11             	imul   $0x11,%bx,%bx
    9e06:	b8 e0 16             	mov    $0x16e0,%ax
    9e09:	6a 00                	push   $0x0
    9e0b:	8e c0                	mov    %ax,%es
    9e0d:	26 ff b7 e8 22       	push   %es:0x22e8(%bx)
    9e12:	ff 76 06             	push   0x6(%bp)
    9e15:	0e                   	push   %cs
    9e16:	e8 d4 fc             	call   0x9aed
    9e19:	83 c4 0a             	add    $0xa,%sp
    9e1c:	8a 46 ff             	mov    -0x1(%bp),%al
    9e1f:	b4 00                	mov    $0x0,%ah
    9e21:	0b c0                	or     %ax,%ax
    9e23:	75 24                	jne    0x9e49
    9e25:	90                   	nop
    9e26:	0e                   	push   %cs
    9e27:	e8 b1 00             	call   0x9edb
    9e2a:	88 46 ff             	mov    %al,-0x1(%bp)
    9e2d:	0a c0                	or     %al,%al
    9e2f:	74 18                	je     0x9e49
    9e31:	8b 5e 06             	mov    0x6(%bp),%bx
    9e34:	6b db 11             	imul   $0x11,%bx,%bx
    9e37:	b8 e0 16             	mov    $0x16e0,%ax
    9e3a:	8e c0                	mov    %ax,%es
    9e3c:	26 8b 87 ea 22       	mov    %es:0x22ea(%bx),%ax
    9e41:	0b 46 08             	or     0x8(%bp),%ax
    9e44:	a9 08 00             	test   $0x8,%ax
    9e47:	75 d3                	jne    0x9e1c
    9e49:	8b 5e 06             	mov    0x6(%bp),%bx
    9e4c:	6b db 11             	imul   $0x11,%bx,%bx
    9e4f:	b8 e0 16             	mov    $0x16e0,%ax
    9e52:	8e c0                	mov    %ax,%es
    9e54:	26 f7 87 ea 22 00 02 	testw  $0x200,%es:0x22ea(%bx)
    9e5b:	74 1a                	je     0x9e77
    9e5d:	8b 5e 06             	mov    0x6(%bp),%bx
    9e60:	6b db 17             	imul   $0x17,%bx,%bx
    9e63:	b8 e0 16             	mov    $0x16e0,%ax
    9e66:	8e c0                	mov    %ax,%es
    9e68:	26 8b 87 4b de       	mov    %es:-0x21b5(%bx),%ax
    9e6d:	26 0b 87 4d de       	or     %es:-0x21b3(%bx),%ax
    9e72:	74 03                	je     0x9e77
    9e74:	e9 f0 fe             	jmp    0x9d67
    9e77:	8b 5e 06             	mov    0x6(%bp),%bx
    9e7a:	6b db 11             	imul   $0x11,%bx,%bx
    9e7d:	b8 e0 16             	mov    $0x16e0,%ax
    9e80:	8e c0                	mov    %ax,%es
    9e82:	26 8b 87 ea 22       	mov    %es:0x22ea(%bx),%ax
    9e87:	0b 46 08             	or     0x8(%bp),%ax
    9e8a:	a9 01 00             	test   $0x1,%ax
    9e8d:	75 45                	jne    0x9ed4
    9e8f:	8b 5e 06             	mov    0x6(%bp),%bx
    9e92:	6b db 17             	imul   $0x17,%bx,%bx
    9e95:	b8 e0 16             	mov    $0x16e0,%ax
    9e98:	8e c0                	mov    %ax,%es
    9e9a:	26 8b 87 34 de       	mov    %es:-0x21cc(%bx),%ax
    9e9f:	26 0b 87 36 de       	or     %es:-0x21ca(%bx),%ax
    9ea4:	74 2e                	je     0x9ed4
    9ea6:	1e                   	push   %ds
    9ea7:	68 26 6d             	push   $0x6d26
    9eaa:	68 e9 01             	push   $0x1e9
    9ead:	8b 46 06             	mov    0x6(%bp),%ax
    9eb0:	6b c0 17             	imul   $0x17,%ax,%ax
    9eb3:	05 34 de             	add    $0xde34,%ax
    9eb6:	68 e0 16             	push   $0x16e0
    9eb9:	50                   	push   %ax
    9eba:	9a 2f 02 b7 0d       	lcall  $0xdb7,$0x22f
    9ebf:	83 c4 0a             	add    $0xa,%sp
    9ec2:	8b 5e 06             	mov    0x6(%bp),%bx
    9ec5:	6b db 11             	imul   $0x11,%bx,%bx
    9ec8:	b8 e0 16             	mov    $0x16e0,%ax
    9ecb:	8e c0                	mov    %ax,%es
    9ecd:	26 81 a7 ea 22 ff fd 	andw   $0xfdff,%es:0x22ea(%bx)
    9ed4:	8a 46 ff             	mov    -0x1(%bp),%al
    9ed7:	b4 00                	mov    $0x0,%ah
    9ed9:	c9                   	leave
    9eda:	cb                   	lret
    9edb:	55                   	push   %bp
    9edc:	8b ec                	mov    %sp,%bp
    9ede:	83 ec 04             	sub    $0x4,%sp
    9ee1:	b8 e0 16             	mov    $0x16e0,%ax
    9ee4:	8e c0                	mov    %ax,%es
    9ee6:	26 83 3e d3 73 ff    	cmpw   $0xffff,%es:0x73d3
    9eec:	75 0b                	jne    0x9ef9
    9eee:	26 83 3e d1 73 ff    	cmpw   $0xffff,%es:0x73d1
    9ef4:	75 03                	jne    0x9ef9
    9ef6:	e9 21 01             	jmp    0xa01a
    9ef9:	b8 e0 16             	mov    $0x16e0,%ax
    9efc:	8e c0                	mov    %ax,%es
    9efe:	26 a1 d3 73          	mov    %es:0x73d3,%ax
    9f02:	26 8b 16 d1 73       	mov    %es:0x73d1,%dx
    9f07:	bb e0 16             	mov    $0x16e0,%bx
    9f0a:	8e c3                	mov    %bx,%es
    9f0c:	26 2b 16 4a e7       	sub    %es:-0x18b6,%dx
    9f11:	26 1b 06 4c e7       	sbb    %es:-0x18b4,%ax
    9f16:	89 46 fe             	mov    %ax,-0x2(%bp)
    9f19:	89 56 fc             	mov    %dx,-0x4(%bp)
    9f1c:	bb e0 16             	mov    $0x16e0,%bx
    9f1f:	0b c0                	or     %ax,%ax
    9f21:	8e c3                	mov    %bx,%es
    9f23:	72 09                	jb     0x9f2e
    9f25:	77 31                	ja     0x9f58
    9f27:	26 3b 16 d5 73       	cmp    %es:0x73d5,%dx
    9f2c:	77 2a                	ja     0x9f58
    9f2e:	b8 e0 16             	mov    $0x16e0,%ax
    9f31:	8e c0                	mov    %ax,%es
    9f33:	26 ff 36 62 96       	push   %es:-0x699e
    9f38:	26 ff 36 60 96       	push   %es:-0x69a0
    9f3d:	b8 e0 16             	mov    $0x16e0,%ax
    9f40:	8e c0                	mov    %ax,%es
    9f42:	26 ff 1e 4c 96       	lcall  *%es:-0x69b4
    9f47:	83 c4 04             	add    $0x4,%sp
    9f4a:	83 7e fe 00          	cmpw   $0x0,-0x2(%bp)
    9f4e:	7f a9                	jg     0x9ef9
