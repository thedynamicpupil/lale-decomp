
analysis/phase-four/IST-resident-raw.bin:     file format binary


Disassembly of section .data:

000159d0 <.data+0x59d0>:
   159d0:	9a 2a 00 ba 16       	call   0x16ba:0x2a
   159d5:	8a 46 fb             	mov    al,BYTE PTR [bp-0x5]
   159d8:	50                   	push   ax
   159d9:	6a 0b                	push   0xb
   159db:	9a 2a 00 82 16       	call   0x1682:0x2a
   159e0:	83 c4 04             	add    sp,0x4
   159e3:	48                   	dec    ax
   159e4:	8b d8                	mov    bx,ax
   159e6:	83 fb 05             	cmp    bx,0x5
   159e9:	76 03                	jbe    0x159ee
   159eb:	e9 90 03             	jmp    0x15d7e
   159ee:	d1 e3                	shl    bx,1
   159f0:	2e ff a7 58 09       	jmp    WORD PTR cs:[bx+0x958]
   159f5:	1e                   	push   ds
   159f6:	68 83 3a             	push   0x3a83
   159f9:	e9 98 00             	jmp    0x15a94
   159fc:	9a 57 00 7c 16       	call   0x167c:0x57
   15a01:	0b c0                	or     ax,ax
   15a03:	75 03                	jne    0x15a08
   15a05:	e9 a7 03             	jmp    0x15daf
   15a08:	b8 e0 16             	mov    ax,0x16e0
   15a0b:	8e c0                	mov    es,ax
   15a0d:	26 a1 1a 73          	mov    ax,es:0x731a
   15a11:	f7 d8                	neg    ax
   15a13:	50                   	push   ax
   15a14:	6a 00                	push   0x0
   15a16:	68 e8 03             	push   0x3e8
   15a19:	9a 3f 07 7f 0c       	call   0xc7f:0x73f
   15a1e:	83 c4 06             	add    sp,0x6
   15a21:	b8 e0 16             	mov    ax,0x16e0
   15a24:	8e c0                	mov    es,ax
   15a26:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   15a2c:	74 5d                	je     0x15a8b
   15a2e:	b8 e0 16             	mov    ax,0x16e0
   15a31:	8e c0                	mov    es,ax
   15a33:	26 80 3e d0 73 00    	cmp    BYTE PTR es:0x73d0,0x0
   15a39:	74 50                	je     0x15a8b
   15a3b:	9a 96 12 f6 0e       	call   0xef6:0x1296
   15a40:	b8 e0 16             	mov    ax,0x16e0
   15a43:	8e c0                	mov    es,ax
   15a45:	26 a1 75 bb          	mov    ax,es:0xbb75
   15a49:	26 0b 06 77 bb       	or     ax,WORD PTR es:0xbb77
   15a4e:	74 3b                	je     0x15a8b
   15a50:	b8 e0 16             	mov    ax,0x16e0
   15a53:	8e c0                	mov    es,ax
   15a55:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   15a5a:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   15a5f:	9a 03 00 1b 11       	call   0x111b:0x3
   15a64:	b8 e0 16             	mov    ax,0x16e0
   15a67:	8e c0                	mov    es,ax
   15a69:	26 ff 36 77 bb       	push   WORD PTR es:0xbb77
   15a6e:	26 ff 36 75 bb       	push   WORD PTR es:0xbb75
   15a73:	9a da 00 9e 0e       	call   0xe9e:0xda
   15a78:	b8 e0 16             	mov    ax,0x16e0
   15a7b:	8e c0                	mov    es,ax
   15a7d:	26 c7 06 77 bb 00 00 	mov    WORD PTR es:0xbb77,0x0
   15a84:	26 c7 06 75 bb 00 00 	mov    WORD PTR es:0xbb75,0x0
   15a8b:	9a 2f 00 d3 16       	call   0x16d3:0x2f
   15a90:	1e                   	push   ds
   15a91:	68 90 3a             	push   0x3a90
   15a94:	9a 4d 00 7c 16       	call   0x167c:0x4d
   15a99:	83 c4 04             	add    sp,0x4
   15a9c:	9a 25 00 82 16       	call   0x1682:0x25
   15aa1:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   15aa6:	eb 27                	jmp    0x15acf
   15aa8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15aab:	6b db 06             	imul   bx,bx,0x6
   15aae:	b8 e0 16             	mov    ax,0x16e0
   15ab1:	33 d2                	xor    dx,dx
   15ab3:	8e c0                	mov    es,ax
   15ab5:	26 89 97 dc 5b       	mov    WORD PTR es:[bx+0x5bdc],dx
   15aba:	8b c2                	mov    ax,dx
   15abc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15abf:	6b db 06             	imul   bx,bx,0x6
   15ac2:	ba e0 16             	mov    dx,0x16e0
   15ac5:	8e c2                	mov    es,dx
   15ac7:	26 89 87 da 5b       	mov    WORD PTR es:[bx+0x5bda],ax
   15acc:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   15acf:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   15ad3:	7c d3                	jl     0x15aa8
   15ad5:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   15ada:	eb 62                	jmp    0x15b3e
   15adc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15adf:	c1 e3 03             	shl    bx,0x3
   15ae2:	b8 e0 16             	mov    ax,0x16e0
   15ae5:	8e c0                	mov    es,ax
   15ae7:	26 8b 87 d7 e4       	mov    ax,WORD PTR es:[bx-0x1b29]
   15aec:	26 0b 87 d9 e4       	or     ax,WORD PTR es:[bx-0x1b27]
   15af1:	75 48                	jne    0x15b3b
   15af3:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   15af6:	05 47 00             	add    ax,0x47
   15af9:	50                   	push   ax
   15afa:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15afd:	6b db 5c             	imul   bx,bx,0x5c
   15b00:	b8 e0 16             	mov    ax,0x16e0
   15b03:	8e c0                	mov    es,ax
   15b05:	26 8b 87 44 9a       	mov    ax,WORD PTR es:[bx-0x65bc]
   15b0a:	6b c0 0d             	imul   ax,ax,0xd
   15b0d:	05 9b 26             	add    ax,0x269b
   15b10:	68 e0 16             	push   0x16e0
   15b13:	50                   	push   ax
   15b14:	1e                   	push   ds
   15b15:	68 98 3a             	push   0x3a98
   15b18:	16                   	push   ss
   15b19:	8d 46 8e             	lea    ax,[bp-0x72]
   15b1c:	50                   	push   ax
   15b1d:	9a a3 49 00 00       	call   0x0:0x49a3
   15b22:	83 c4 08             	add    sp,0x8
   15b25:	52                   	push   dx
   15b26:	50                   	push   ax
   15b27:	9a f7 48 00 00       	call   0x0:0x48f7
   15b2c:	83 c4 08             	add    sp,0x8
   15b2f:	52                   	push   dx
   15b30:	50                   	push   ax
   15b31:	6a 01                	push   0x1
   15b33:	9a 20 00 b5 16       	call   0x16b5:0x20
   15b38:	83 c4 08             	add    sp,0x8
   15b3b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   15b3e:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   15b42:	7c 98                	jl     0x15adc
   15b44:	b8 e0 16             	mov    ax,0x16e0
   15b47:	8e c0                	mov    es,ax
   15b49:	26 c7 06 6b bb 00 00 	mov    WORD PTR es:0xbb6b,0x0
   15b50:	9a 8e 17 dc 05       	call   0x5dc:0x178e
   15b55:	6a 01                	push   0x1
   15b57:	b8 e0 16             	mov    ax,0x16e0
   15b5a:	8e c0                	mov    es,ax
   15b5c:	26 ff 36 6b bb       	push   WORD PTR es:0xbb6b
   15b61:	9a 2a 00 70 16       	call   0x1670:0x2a
   15b66:	83 c4 04             	add    sp,0x4
   15b69:	b8 e0 16             	mov    ax,0x16e0
   15b6c:	ba 0a 00             	mov    dx,0xa
   15b6f:	8e c0                	mov    es,ax
   15b71:	26 89 16 6f bb       	mov    WORD PTR es:0xbb6f,dx
   15b76:	8b c2                	mov    ax,dx
   15b78:	ba e0 16             	mov    dx,0x16e0
   15b7b:	8e c2                	mov    es,dx
   15b7d:	26 a3 71 bb          	mov    es:0xbb71,ax
   15b81:	ba e0 16             	mov    dx,0x16e0
   15b84:	8e c2                	mov    es,dx
   15b86:	26 a3 73 bb          	mov    es:0xbb73,ax
   15b8a:	b8 e0 16             	mov    ax,0x16e0
   15b8d:	8e c0                	mov    es,ax
   15b8f:	26 a1 22 73          	mov    ax,es:0x7322
   15b93:	ba e0 16             	mov    dx,0x16e0
   15b96:	8e c2                	mov    es,dx
   15b98:	26 a3 1c 73          	mov    es:0x731c,ax
   15b9c:	b8 e0 16             	mov    ax,0x16e0
   15b9f:	8e c0                	mov    es,ax
   15ba1:	26 c7 06 4d bb 01 00 	mov    WORD PTR es:0xbb4d,0x1
   15ba8:	b8 e0 16             	mov    ax,0x16e0
   15bab:	8e c0                	mov    es,ax
   15bad:	26 c6 06 34 bb 01    	mov    BYTE PTR es:0xbb34,0x1
   15bb3:	b8 e0 16             	mov    ax,0x16e0
   15bb6:	8e c0                	mov    es,ax
   15bb8:	26 c6 06 35 bb 05    	mov    BYTE PTR es:0xbb35,0x5
   15bbe:	b8 e0 16             	mov    ax,0x16e0
   15bc1:	b2 01                	mov    dl,0x1
   15bc3:	8e c0                	mov    es,ax
   15bc5:	26 88 16 38 bb       	mov    BYTE PTR es:0xbb38,dl
   15bca:	8a c2                	mov    al,dl
   15bcc:	ba e0 16             	mov    dx,0x16e0
   15bcf:	8e c2                	mov    es,dx
   15bd1:	26 a2 37 bb          	mov    es:0xbb37,al
   15bd5:	ba e0 16             	mov    dx,0x16e0
   15bd8:	8e c2                	mov    es,dx
   15bda:	26 a2 36 bb          	mov    es:0xbb36,al
   15bde:	b8 e0 16             	mov    ax,0x16e0
   15be1:	8e c0                	mov    es,ax
   15be3:	26 c6 06 39 bb 00    	mov    BYTE PTR es:0xbb39,0x0
   15be9:	9a 7a 00 70 16       	call   0x1670:0x7a
   15bee:	9a 75 00 70 16       	call   0x1670:0x75
   15bf3:	e9 b9 01             	jmp    0x15daf
   15bf6:	9a e3 01 b7 0d       	call   0xdb7:0x1e3
   15bfb:	9a 75 00 70 16       	call   0x1670:0x75
   15c00:	6a ff                	push   0xffff
   15c02:	1e                   	push   ds
   15c03:	68 ab 3a             	push   0x3aab
   15c06:	68 12 01             	push   0x112
   15c09:	1e                   	push   ds
   15c0a:	68 9b 3a             	push   0x3a9b
   15c0d:	e9 97 01             	jmp    0x15da7
   15c10:	9a 2f 00 d3 16       	call   0x16d3:0x2f
   15c15:	9a 39 00 82 16       	call   0x1682:0x39
   15c1a:	e9 92 01             	jmp    0x15daf
   15c1d:	1e                   	push   ds
   15c1e:	68 b5 3a             	push   0x3ab5
   15c21:	9a 4d 00 7c 16       	call   0x167c:0x4d
   15c26:	83 c4 04             	add    sp,0x4
   15c29:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   15c2e:	eb 27                	jmp    0x15c57
   15c30:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15c33:	6b db 06             	imul   bx,bx,0x6
   15c36:	b8 e0 16             	mov    ax,0x16e0
   15c39:	33 d2                	xor    dx,dx
   15c3b:	8e c0                	mov    es,ax
   15c3d:	26 89 97 dc 5b       	mov    WORD PTR es:[bx+0x5bdc],dx
   15c42:	8b c2                	mov    ax,dx
   15c44:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15c47:	6b db 06             	imul   bx,bx,0x6
   15c4a:	ba e0 16             	mov    dx,0x16e0
   15c4d:	8e c2                	mov    es,dx
   15c4f:	26 89 87 da 5b       	mov    WORD PTR es:[bx+0x5bda],ax
   15c54:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   15c57:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   15c5b:	7c d3                	jl     0x15c30
   15c5d:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   15c62:	eb 62                	jmp    0x15cc6
   15c64:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15c67:	c1 e3 03             	shl    bx,0x3
   15c6a:	b8 e0 16             	mov    ax,0x16e0
   15c6d:	8e c0                	mov    es,ax
   15c6f:	26 8b 87 d7 e4       	mov    ax,WORD PTR es:[bx-0x1b29]
   15c74:	26 0b 87 d9 e4       	or     ax,WORD PTR es:[bx-0x1b27]
   15c79:	75 48                	jne    0x15cc3
   15c7b:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   15c7e:	05 47 00             	add    ax,0x47
   15c81:	50                   	push   ax
   15c82:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   15c85:	6b db 5c             	imul   bx,bx,0x5c
   15c88:	b8 e0 16             	mov    ax,0x16e0
   15c8b:	8e c0                	mov    es,ax
   15c8d:	26 8b 87 44 9a       	mov    ax,WORD PTR es:[bx-0x65bc]
   15c92:	6b c0 0d             	imul   ax,ax,0xd
   15c95:	05 9b 26             	add    ax,0x269b
   15c98:	68 e0 16             	push   0x16e0
   15c9b:	50                   	push   ax
   15c9c:	1e                   	push   ds
   15c9d:	68 bd 3a             	push   0x3abd
   15ca0:	16                   	push   ss
   15ca1:	8d 46 8e             	lea    ax,[bp-0x72]
   15ca4:	50                   	push   ax
   15ca5:	9a a3 49 00 00       	call   0x0:0x49a3
   15caa:	83 c4 08             	add    sp,0x8
   15cad:	52                   	push   dx
   15cae:	50                   	push   ax
   15caf:	9a f7 48 00 00       	call   0x0:0x48f7
   15cb4:	83 c4 08             	add    sp,0x8
   15cb7:	52                   	push   dx
   15cb8:	50                   	push   ax
   15cb9:	6a 01                	push   0x1
   15cbb:	9a 20 00 b5 16       	call   0x16b5:0x20
   15cc0:	83 c4 08             	add    sp,0x8
   15cc3:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   15cc6:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   15cca:	7c 98                	jl     0x15c64
   15ccc:	b8 e0 16             	mov    ax,0x16e0
   15ccf:	8e c0                	mov    es,ax
   15cd1:	26 c7 06 6b bb 00 00 	mov    WORD PTR es:0xbb6b,0x0
   15cd8:	9a 8e 17 dc 05       	call   0x5dc:0x178e
   15cdd:	6a 01                	push   0x1
   15cdf:	b8 e0 16             	mov    ax,0x16e0
   15ce2:	8e c0                	mov    es,ax
   15ce4:	26 ff 36 6b bb       	push   WORD PTR es:0xbb6b
   15ce9:	9a 2a 00 70 16       	call   0x1670:0x2a
   15cee:	83 c4 04             	add    sp,0x4
   15cf1:	b8 e0 16             	mov    ax,0x16e0
   15cf4:	ba 0a 00             	mov    dx,0xa
   15cf7:	8e c0                	mov    es,ax
   15cf9:	26 89 16 6f bb       	mov    WORD PTR es:0xbb6f,dx
   15cfe:	8b c2                	mov    ax,dx
   15d00:	ba e0 16             	mov    dx,0x16e0
   15d03:	8e c2                	mov    es,dx
   15d05:	26 a3 71 bb          	mov    es:0xbb71,ax
   15d09:	ba e0 16             	mov    dx,0x16e0
   15d0c:	8e c2                	mov    es,dx
   15d0e:	26 a3 73 bb          	mov    es:0xbb73,ax
   15d12:	b8 e0 16             	mov    ax,0x16e0
   15d15:	8e c0                	mov    es,ax
   15d17:	26 c6 06 f0 b9 02    	mov    BYTE PTR es:0xb9f0,0x2
   15d1d:	b8 e0 16             	mov    ax,0x16e0
   15d20:	8e c0                	mov    es,ax
   15d22:	26 a1 22 73          	mov    ax,es:0x7322
   15d26:	ba e0 16             	mov    dx,0x16e0
   15d29:	8e c2                	mov    es,dx
   15d2b:	26 a3 1c 73          	mov    es:0x731c,ax
   15d2f:	b8 e0 16             	mov    ax,0x16e0
   15d32:	8e c0                	mov    es,ax
   15d34:	26 c7 06 4d bb 01 00 	mov    WORD PTR es:0xbb4d,0x1
   15d3b:	b8 e0 16             	mov    ax,0x16e0
   15d3e:	8e c0                	mov    es,ax
   15d40:	26 c6 06 35 bb 05    	mov    BYTE PTR es:0xbb35,0x5
   15d46:	b8 e0 16             	mov    ax,0x16e0
   15d49:	b2 01                	mov    dl,0x1
   15d4b:	8e c0                	mov    es,ax
   15d4d:	26 88 16 38 bb       	mov    BYTE PTR es:0xbb38,dl
   15d52:	8a c2                	mov    al,dl
   15d54:	ba e0 16             	mov    dx,0x16e0
   15d57:	8e c2                	mov    es,dx
   15d59:	26 a2 37 bb          	mov    es:0xbb37,al
   15d5d:	ba e0 16             	mov    dx,0x16e0
   15d60:	8e c2                	mov    es,dx
   15d62:	26 a2 36 bb          	mov    es:0xbb36,al
   15d66:	b8 e0 16             	mov    ax,0x16e0
   15d69:	8e c0                	mov    es,ax
   15d6b:	26 c6 06 39 bb 00    	mov    BYTE PTR es:0xbb39,0x0
   15d71:	9a 2f 00 d3 16       	call   0x16d3:0x2f
   15d76:	e9 70 fe             	jmp    0x15be9
   15d79:	9a 39 00 82 16       	call   0x1682:0x39
   15d7e:	b8 e0 16             	mov    ax,0x16e0
   15d81:	8e c0                	mov    es,ax
   15d83:	26 ff 36 dc d5       	push   WORD PTR es:0xd5dc
   15d88:	1e                   	push   ds
   15d89:	68 c0 3a             	push   0x3ac0
   15d8c:	16                   	push   ss
   15d8d:	8d 46 8e             	lea    ax,[bp-0x72]
   15d90:	50                   	push   ax
   15d91:	9a b4 48 00 00       	call   0x0:0x48b4
   15d96:	83 c4 0a             	add    sp,0xa
   15d99:	6a ff                	push   0xffff
   15d9b:	16                   	push   ss
   15d9c:	8d 46 8e             	lea    ax,[bp-0x72]
   15d9f:	50                   	push   ax
   15da0:	68 34 01             	push   0x134
   15da3:	1e                   	push   ds
   15da4:	68 e7 3a             	push   0x3ae7
   15da7:	9a 2a 00 c1 16       	call   0x16c1:0x2a
   15dac:	83 c4 0c             	add    sp,0xc
   15daf:	c6 46 fb c8          	mov    BYTE PTR [bp-0x5],0xc8
   15db3:	e9 1f fc             	jmp    0x159d5
   15db6:	c9                   	leave
   15db7:	cb                   	retf
   15db8:	9c                   	pushf
   15db9:	05 96 07             	add    ax,0x796
   15dbc:	95                   	xchg   bp,ax
   15dbd:	05 b0 07             	add    ax,0x7b0
