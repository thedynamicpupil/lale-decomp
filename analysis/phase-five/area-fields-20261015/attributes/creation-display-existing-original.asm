0003db4e <.data+0xf4e>:
   3db4e:	55                   	push   bp
   3db4f:	8b ec                	mov    bp,sp
   3db51:	83 ec 06             	sub    sp,0x6
   3db54:	68 e0 01             	push   0x1e0
   3db57:	68 d0 02             	push   0x2d0
   3db5a:	6a 06                	push   0x6
   3db5c:	6a 01                	push   0x1
   3db5e:	6a 13                	push   0x13
   3db60:	6a 78                	push   0x78
   3db62:	68 8d 00             	push   0x8d
   3db65:	68 c8 00             	push   0xc8
   3db68:	6a 13                	push   0x13
   3db6a:	6a 78                	push   0x78
   3db6c:	9a 30 04 28 00       	call   0x28:0x430
   3db71:	83 c4 14             	add    sp,0x14
   3db74:	6a 0a                	push   0xa
   3db76:	b8 88 01             	mov    ax,0x188
   3db79:	8e c0                	mov    es,ax
   3db7b:	26 a0 66 96          	mov    al,es:0x9666
   3db7f:	b4 00                	mov    ah,0x0
   3db81:	50                   	push   ax
   3db82:	6a 01                	push   0x1
   3db84:	6a 23                	push   0x23
   3db86:	6a 0a                	push   0xa
   3db88:	16                   	push   ss
   3db89:	8d 46 fa             	lea    ax,[bp-0x6]
   3db8c:	50                   	push   ax
   3db8d:	b8 88 01             	mov    ax,0x188
   3db90:	8e c0                	mov    es,ax
   3db92:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db97:	6b db 5c             	imul   bx,bx,0x5c
   3db9a:	b8 88 01             	mov    ax,0x188
   3db9d:	8e c0                	mov    es,ax
   3db9f:	26 ff b7 ca 99       	push   WORD PTR es:[bx-0x6636]
   3dba4:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dba9:	83 c4 08             	add    sp,0x8
   3dbac:	52                   	push   dx
   3dbad:	50                   	push   ax
   3dbae:	9a 52 00 38 01       	call   0x138:0x52
   3dbb3:	83 c4 0c             	add    sp,0xc
   3dbb6:	6a 0a                	push   0xa
   3dbb8:	b8 88 01             	mov    ax,0x188
   3dbbb:	8e c0                	mov    es,ax
   3dbbd:	26 a0 66 96          	mov    al,es:0x9666
   3dbc1:	b4 00                	mov    ah,0x0
   3dbc3:	50                   	push   ax
   3dbc4:	6a 02                	push   0x2
   3dbc6:	6a 23                	push   0x23
   3dbc8:	6a 0a                	push   0xa
   3dbca:	16                   	push   ss
   3dbcb:	8d 46 fa             	lea    ax,[bp-0x6]
   3dbce:	50                   	push   ax
   3dbcf:	b8 88 01             	mov    ax,0x188
   3dbd2:	8e c0                	mov    es,ax
   3dbd4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dbd9:	6b db 5c             	imul   bx,bx,0x5c
   3dbdc:	b8 88 01             	mov    ax,0x188
   3dbdf:	8e c0                	mov    es,ax
   3dbe1:	26 ff b7 cc 99       	push   WORD PTR es:[bx-0x6634]
   3dbe6:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dbeb:	83 c4 08             	add    sp,0x8
   3dbee:	52                   	push   dx
   3dbef:	50                   	push   ax
   3dbf0:	9a 52 00 38 01       	call   0x138:0x52
   3dbf5:	83 c4 0c             	add    sp,0xc
   3dbf8:	6a 0a                	push   0xa
   3dbfa:	b8 88 01             	mov    ax,0x188
   3dbfd:	8e c0                	mov    es,ax
   3dbff:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc04:	6b db 5c             	imul   bx,bx,0x5c
   3dc07:	b8 88 01             	mov    ax,0x188
   3dc0a:	8e c0                	mov    es,ax
   3dc0c:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3dc11:	3b 06 bc 48          	cmp    ax,WORD PTR ds:0x48bc
   3dc15:	7e 05                	jle    0x3dc1c
   3dc17:	b8 48 00             	mov    ax,0x48
   3dc1a:	eb 2d                	jmp    0x3dc49
   3dc1c:	b8 88 01             	mov    ax,0x188
   3dc1f:	8e c0                	mov    es,ax
   3dc21:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc26:	6b db 5c             	imul   bx,bx,0x5c
   3dc29:	b8 88 01             	mov    ax,0x188
   3dc2c:	8e c0                	mov    es,ax
   3dc2e:	26 8b 87 b4 99       	mov    ax,WORD PTR es:[bx-0x664c]
   3dc33:	3b 06 d4 48          	cmp    ax,WORD PTR ds:0x48d4
   3dc37:	7d 05                	jge    0x3dc3e
   3dc39:	b8 de 00             	mov    ax,0xde
   3dc3c:	eb 0b                	jmp    0x3dc49
   3dc3e:	b8 88 01             	mov    ax,0x188
   3dc41:	8e c0                	mov    es,ax
   3dc43:	26 a0 66 96          	mov    al,es:0x9666
   3dc47:	b4 00                	mov    ah,0x0
   3dc49:	50                   	push   ax
   3dc4a:	6a 03                	push   0x3
   3dc4c:	6a 23                	push   0x23
   3dc4e:	6a 0a                	push   0xa
   3dc50:	16                   	push   ss
   3dc51:	8d 46 fa             	lea    ax,[bp-0x6]
   3dc54:	50                   	push   ax
   3dc55:	b8 88 01             	mov    ax,0x188
   3dc58:	8e c0                	mov    es,ax
   3dc5a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc5f:	6b db 5c             	imul   bx,bx,0x5c
   3dc62:	b8 88 01             	mov    ax,0x188
   3dc65:	8e c0                	mov    es,ax
   3dc67:	26 ff b7 b4 99       	push   WORD PTR es:[bx-0x664c]
   3dc6c:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dc71:	83 c4 08             	add    sp,0x8
   3dc74:	52                   	push   dx
   3dc75:	50                   	push   ax
   3dc76:	9a 52 00 38 01       	call   0x138:0x52
   3dc7b:	83 c4 0c             	add    sp,0xc
   3dc7e:	6a 0a                	push   0xa
   3dc80:	b8 88 01             	mov    ax,0x188
   3dc83:	8e c0                	mov    es,ax
   3dc85:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dc8a:	6b db 5c             	imul   bx,bx,0x5c
   3dc8d:	b8 88 01             	mov    ax,0x188
   3dc90:	8e c0                	mov    es,ax
   3dc92:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3dc97:	3b 06 be 48          	cmp    ax,WORD PTR ds:0x48be
   3dc9b:	7e 05                	jle    0x3dca2
   3dc9d:	b8 48 00             	mov    ax,0x48
   3dca0:	eb 2d                	jmp    0x3dccf
   3dca2:	b8 88 01             	mov    ax,0x188
   3dca5:	8e c0                	mov    es,ax
   3dca7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dcac:	6b db 5c             	imul   bx,bx,0x5c
   3dcaf:	b8 88 01             	mov    ax,0x188
   3dcb2:	8e c0                	mov    es,ax
   3dcb4:	26 8b 87 b6 99       	mov    ax,WORD PTR es:[bx-0x664a]
   3dcb9:	3b 06 d6 48          	cmp    ax,WORD PTR ds:0x48d6
   3dcbd:	7d 05                	jge    0x3dcc4
   3dcbf:	b8 de 00             	mov    ax,0xde
   3dcc2:	eb 0b                	jmp    0x3dccf
   3dcc4:	b8 88 01             	mov    ax,0x188
   3dcc7:	8e c0                	mov    es,ax
   3dcc9:	26 a0 66 96          	mov    al,es:0x9666
   3dccd:	b4 00                	mov    ah,0x0
   3dccf:	50                   	push   ax
   3dcd0:	6a 04                	push   0x4
   3dcd2:	6a 23                	push   0x23
   3dcd4:	6a 0a                	push   0xa
   3dcd6:	16                   	push   ss
   3dcd7:	8d 46 fa             	lea    ax,[bp-0x6]
   3dcda:	50                   	push   ax
   3dcdb:	b8 88 01             	mov    ax,0x188
   3dcde:	8e c0                	mov    es,ax
   3dce0:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dce5:	6b db 5c             	imul   bx,bx,0x5c
   3dce8:	b8 88 01             	mov    ax,0x188
   3dceb:	8e c0                	mov    es,ax
   3dced:	26 ff b7 b6 99       	push   WORD PTR es:[bx-0x664a]
   3dcf2:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dcf7:	83 c4 08             	add    sp,0x8
   3dcfa:	52                   	push   dx
   3dcfb:	50                   	push   ax
   3dcfc:	9a 52 00 38 01       	call   0x138:0x52
   3dd01:	83 c4 0c             	add    sp,0xc
   3dd04:	6a 0a                	push   0xa
   3dd06:	b8 88 01             	mov    ax,0x188
   3dd09:	8e c0                	mov    es,ax
   3dd0b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd10:	6b db 5c             	imul   bx,bx,0x5c
   3dd13:	b8 88 01             	mov    ax,0x188
   3dd16:	8e c0                	mov    es,ax
   3dd18:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3dd1d:	3b 06 b8 48          	cmp    ax,WORD PTR ds:0x48b8
   3dd21:	7e 05                	jle    0x3dd28
   3dd23:	b8 48 00             	mov    ax,0x48
   3dd26:	eb 2d                	jmp    0x3dd55
   3dd28:	b8 88 01             	mov    ax,0x188
   3dd2b:	8e c0                	mov    es,ax
   3dd2d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd32:	6b db 5c             	imul   bx,bx,0x5c
   3dd35:	b8 88 01             	mov    ax,0x188
   3dd38:	8e c0                	mov    es,ax
   3dd3a:	26 8b 87 b0 99       	mov    ax,WORD PTR es:[bx-0x6650]
   3dd3f:	3b 06 d0 48          	cmp    ax,WORD PTR ds:0x48d0
   3dd43:	7d 05                	jge    0x3dd4a
   3dd45:	b8 de 00             	mov    ax,0xde
   3dd48:	eb 0b                	jmp    0x3dd55
   3dd4a:	b8 88 01             	mov    ax,0x188
   3dd4d:	8e c0                	mov    es,ax
   3dd4f:	26 a0 66 96          	mov    al,es:0x9666
   3dd53:	b4 00                	mov    ah,0x0
   3dd55:	50                   	push   ax
   3dd56:	6a 05                	push   0x5
   3dd58:	6a 23                	push   0x23
   3dd5a:	6a 0a                	push   0xa
   3dd5c:	16                   	push   ss
   3dd5d:	8d 46 fa             	lea    ax,[bp-0x6]
   3dd60:	50                   	push   ax
   3dd61:	b8 88 01             	mov    ax,0x188
   3dd64:	8e c0                	mov    es,ax
   3dd66:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd6b:	6b db 5c             	imul   bx,bx,0x5c
   3dd6e:	b8 88 01             	mov    ax,0x188
   3dd71:	8e c0                	mov    es,ax
   3dd73:	26 ff b7 b0 99       	push   WORD PTR es:[bx-0x6650]
   3dd78:	9a 58 3f 00 00       	call   0x0:0x3f58
   3dd7d:	83 c4 08             	add    sp,0x8
   3dd80:	52                   	push   dx
   3dd81:	50                   	push   ax
   3dd82:	9a 52 00 38 01       	call   0x138:0x52
   3dd87:	83 c4 0c             	add    sp,0xc
   3dd8a:	6a 0a                	push   0xa
   3dd8c:	b8 88 01             	mov    ax,0x188
   3dd8f:	8e c0                	mov    es,ax
   3dd91:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dd96:	6b db 5c             	imul   bx,bx,0x5c
   3dd99:	b8 88 01             	mov    ax,0x188
   3dd9c:	8e c0                	mov    es,ax
   3dd9e:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   3dda3:	3b 06 ba 48          	cmp    ax,WORD PTR ds:0x48ba
   3dda7:	7e 05                	jle    0x3ddae
   3dda9:	b8 48 00             	mov    ax,0x48
   3ddac:	eb 2d                	jmp    0x3dddb
   3ddae:	b8 88 01             	mov    ax,0x188
   3ddb1:	8e c0                	mov    es,ax
   3ddb3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ddb8:	6b db 5c             	imul   bx,bx,0x5c
   3ddbb:	b8 88 01             	mov    ax,0x188
   3ddbe:	8e c0                	mov    es,ax
   3ddc0:	26 8b 87 b2 99       	mov    ax,WORD PTR es:[bx-0x664e]
   3ddc5:	3b 06 d2 48          	cmp    ax,WORD PTR ds:0x48d2
   3ddc9:	7d 05                	jge    0x3ddd0
   3ddcb:	b8 de 00             	mov    ax,0xde
   3ddce:	eb 0b                	jmp    0x3dddb
   3ddd0:	b8 88 01             	mov    ax,0x188
   3ddd3:	8e c0                	mov    es,ax
   3ddd5:	26 a0 66 96          	mov    al,es:0x9666
   3ddd9:	b4 00                	mov    ah,0x0
   3dddb:	50                   	push   ax
   3dddc:	6a 06                	push   0x6
   3ddde:	6a 23                	push   0x23
   3dde0:	6a 0a                	push   0xa
   3dde2:	16                   	push   ss
   3dde3:	8d 46 fa             	lea    ax,[bp-0x6]
   3dde6:	50                   	push   ax
   3dde7:	b8 88 01             	mov    ax,0x188
   3ddea:	8e c0                	mov    es,ax
   3ddec:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3ddf1:	6b db 5c             	imul   bx,bx,0x5c
   3ddf4:	b8 88 01             	mov    ax,0x188
   3ddf7:	8e c0                	mov    es,ax
   3ddf9:	26 ff b7 b2 99       	push   WORD PTR es:[bx-0x664e]
   3ddfe:	9a 58 3f 00 00       	call   0x0:0x3f58
   3de03:	83 c4 08             	add    sp,0x8
   3de06:	52                   	push   dx
   3de07:	50                   	push   ax
   3de08:	9a 52 00 38 01       	call   0x138:0x52
   3de0d:	83 c4 0c             	add    sp,0xc
   3de10:	6a 0a                	push   0xa
   3de12:	b8 88 01             	mov    ax,0x188
   3de15:	8e c0                	mov    es,ax
   3de17:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3de1c:	6b db 5c             	imul   bx,bx,0x5c
   3de1f:	b8 88 01             	mov    ax,0x188
   3de22:	8e c0                	mov    es,ax
   3de24:	26 8b 87 ba 99       	mov    ax,WORD PTR es:[bx-0x6646]
   3de29:	3b 06 c2 48          	cmp    ax,WORD PTR ds:0x48c2
   3de2d:	7e 05                	jle    0x3de34
   3de2f:	b8 48 00             	mov    ax,0x48
   3de32:	eb 2d                	jmp    0x3de61
   3de34:	b8 88 01             	mov    ax,0x188
   3de37:	8e c0                	mov    es,ax
   3de39:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3de3e:	6b db 5c             	imul   bx,bx,0x5c
   3de41:	b8 88 01             	mov    ax,0x188
   3de44:	8e c0                	mov    es,ax
   3de46:	26 8b 87 ba 99       	mov    ax,WORD PTR es:[bx-0x6646]
   3de4b:	3b 06 da 48          	cmp    ax,WORD PTR ds:0x48da
   3de4f:	7d 05                	jge    0x3de56
   3de51:	b8 de 00             	mov    ax,0xde
   3de54:	eb 0b                	jmp    0x3de61
   3de56:	b8 88 01             	mov    ax,0x188
   3de59:	8e c0                	mov    es,ax
   3de5b:	26 a0 66 96          	mov    al,es:0x9666
   3de5f:	b4 00                	mov    ah,0x0
   3de61:	50                   	push   ax
   3de62:	6a 07                	push   0x7
   3de64:	6a 23                	push   0x23
   3de66:	6a 0a                	push   0xa
   3de68:	16                   	push   ss
   3de69:	8d 46 fa             	lea    ax,[bp-0x6]
   3de6c:	50                   	push   ax
   3de6d:	b8 88 01             	mov    ax,0x188
   3de70:	8e c0                	mov    es,ax
   3de72:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3de77:	6b db 5c             	imul   bx,bx,0x5c
   3de7a:	b8 88 01             	mov    ax,0x188
   3de7d:	8e c0                	mov    es,ax
   3de7f:	26 ff b7 ba 99       	push   WORD PTR es:[bx-0x6646]
   3de84:	9a 58 3f 00 00       	call   0x0:0x3f58
   3de89:	83 c4 08             	add    sp,0x8
   3de8c:	52                   	push   dx
   3de8d:	50                   	push   ax
   3de8e:	9a 52 00 38 01       	call   0x138:0x52
   3de93:	83 c4 0c             	add    sp,0xc
   3de96:	6a 0a                	push   0xa
   3de98:	b8 88 01             	mov    ax,0x188
   3de9b:	8e c0                	mov    es,ax
   3de9d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dea2:	6b db 5c             	imul   bx,bx,0x5c
   3dea5:	b8 88 01             	mov    ax,0x188
   3dea8:	8e c0                	mov    es,ax
   3deaa:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3deaf:	3b 06 c0 48          	cmp    ax,WORD PTR ds:0x48c0
   3deb3:	7e 05                	jle    0x3deba
   3deb5:	b8 48 00             	mov    ax,0x48
   3deb8:	eb 2d                	jmp    0x3dee7
   3deba:	b8 88 01             	mov    ax,0x188
   3debd:	8e c0                	mov    es,ax
   3debf:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dec4:	6b db 5c             	imul   bx,bx,0x5c
   3dec7:	b8 88 01             	mov    ax,0x188
   3deca:	8e c0                	mov    es,ax
   3decc:	26 8b 87 b8 99       	mov    ax,WORD PTR es:[bx-0x6648]
   3ded1:	3b 06 d8 48          	cmp    ax,WORD PTR ds:0x48d8
   3ded5:	7d 05                	jge    0x3dedc
   3ded7:	b8 de 00             	mov    ax,0xde
   3deda:	eb 0b                	jmp    0x3dee7
   3dedc:	b8 88 01             	mov    ax,0x188
   3dedf:	8e c0                	mov    es,ax
   3dee1:	26 a0 66 96          	mov    al,es:0x9666
   3dee5:	b4 00                	mov    ah,0x0
   3dee7:	50                   	push   ax
   3dee8:	6a 08                	push   0x8
   3deea:	6a 23                	push   0x23
   3deec:	6a 0a                	push   0xa
   3deee:	16                   	push   ss
   3deef:	8d 46 fa             	lea    ax,[bp-0x6]
   3def2:	50                   	push   ax
   3def3:	b8 88 01             	mov    ax,0x188
   3def6:	8e c0                	mov    es,ax
   3def8:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3defd:	6b db 5c             	imul   bx,bx,0x5c
   3df00:	b8 88 01             	mov    ax,0x188
   3df03:	8e c0                	mov    es,ax
   3df05:	26 ff b7 b8 99       	push   WORD PTR es:[bx-0x6648]
   3df0a:	9a 58 3f 00 00       	call   0x0:0x3f58
   3df0f:	83 c4 08             	add    sp,0x8
   3df12:	52                   	push   dx
   3df13:	50                   	push   ax
   3df14:	9a 52 00 38 01       	call   0x138:0x52
   3df19:	83 c4 0c             	add    sp,0xc
   3df1c:	6a 0a                	push   0xa
   3df1e:	b8 88 01             	mov    ax,0x188
   3df21:	8e c0                	mov    es,ax
   3df23:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3df28:	6b db 5c             	imul   bx,bx,0x5c
   3df2b:	b8 88 01             	mov    ax,0x188
   3df2e:	8e c0                	mov    es,ax
   3df30:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3df35:	3b 06 c8 48          	cmp    ax,WORD PTR ds:0x48c8
   3df39:	7e 05                	jle    0x3df40
   3df3b:	b8 48 00             	mov    ax,0x48
   3df3e:	eb 2d                	jmp    0x3df6d
   3df40:	b8 88 01             	mov    ax,0x188
   3df43:	8e c0                	mov    es,ax
   3df45:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3df4a:	6b db 5c             	imul   bx,bx,0x5c
   3df4d:	b8 88 01             	mov    ax,0x188
   3df50:	8e c0                	mov    es,ax
   3df52:	26 8b 87 c0 99       	mov    ax,WORD PTR es:[bx-0x6640]
   3df57:	3b 06 e0 48          	cmp    ax,WORD PTR ds:0x48e0
   3df5b:	7d 05                	jge    0x3df62
   3df5d:	b8 de 00             	mov    ax,0xde
   3df60:	eb 0b                	jmp    0x3df6d
   3df62:	b8 88 01             	mov    ax,0x188
   3df65:	8e c0                	mov    es,ax
   3df67:	26 a0 66 96          	mov    al,es:0x9666
   3df6b:	b4 00                	mov    ah,0x0
   3df6d:	50                   	push   ax
   3df6e:	6a 09                	push   0x9
   3df70:	6a 23                	push   0x23
   3df72:	6a 0a                	push   0xa
   3df74:	16                   	push   ss
   3df75:	8d 46 fa             	lea    ax,[bp-0x6]
   3df78:	50                   	push   ax
   3df79:	b8 88 01             	mov    ax,0x188
   3df7c:	8e c0                	mov    es,ax
   3df7e:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3df83:	6b db 5c             	imul   bx,bx,0x5c
   3df86:	b8 88 01             	mov    ax,0x188
   3df89:	8e c0                	mov    es,ax
   3df8b:	26 ff b7 c0 99       	push   WORD PTR es:[bx-0x6640]
   3df90:	9a 58 3f 00 00       	call   0x0:0x3f58
   3df95:	83 c4 08             	add    sp,0x8
   3df98:	52                   	push   dx
   3df99:	50                   	push   ax
   3df9a:	9a 52 00 38 01       	call   0x138:0x52
   3df9f:	83 c4 0c             	add    sp,0xc
   3dfa2:	6a 0a                	push   0xa
   3dfa4:	b8 88 01             	mov    ax,0x188
   3dfa7:	8e c0                	mov    es,ax
   3dfa9:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dfae:	6b db 5c             	imul   bx,bx,0x5c
   3dfb1:	b8 88 01             	mov    ax,0x188
   3dfb4:	8e c0                	mov    es,ax
   3dfb6:	26 8b 87 bc 99       	mov    ax,WORD PTR es:[bx-0x6644]
   3dfbb:	3b 06 c4 48          	cmp    ax,WORD PTR ds:0x48c4
   3dfbf:	7e 05                	jle    0x3dfc6
   3dfc1:	b8 48 00             	mov    ax,0x48
   3dfc4:	eb 2d                	jmp    0x3dff3
   3dfc6:	b8 88 01             	mov    ax,0x188
   3dfc9:	8e c0                	mov    es,ax
   3dfcb:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dfd0:	6b db 5c             	imul   bx,bx,0x5c
   3dfd3:	b8 88 01             	mov    ax,0x188
   3dfd6:	8e c0                	mov    es,ax
   3dfd8:	26 8b 87 bc 99       	mov    ax,WORD PTR es:[bx-0x6644]
   3dfdd:	3b 06 dc 48          	cmp    ax,WORD PTR ds:0x48dc
   3dfe1:	7d 05                	jge    0x3dfe8
   3dfe3:	b8 de 00             	mov    ax,0xde
   3dfe6:	eb 0b                	jmp    0x3dff3
   3dfe8:	b8 88 01             	mov    ax,0x188
   3dfeb:	8e c0                	mov    es,ax
   3dfed:	26 a0 66 96          	mov    al,es:0x9666
   3dff1:	b4 00                	mov    ah,0x0
   3dff3:	50                   	push   ax
   3dff4:	6a 0a                	push   0xa
   3dff6:	6a 23                	push   0x23
   3dff8:	6a 0a                	push   0xa
   3dffa:	16                   	push   ss
   3dffb:	8d 46 fa             	lea    ax,[bp-0x6]
   3dffe:	50                   	push   ax
   3dfff:	b8 88 01             	mov    ax,0x188
   3e002:	8e c0                	mov    es,ax
   3e004:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e009:	6b db 5c             	imul   bx,bx,0x5c
   3e00c:	b8 88 01             	mov    ax,0x188
   3e00f:	8e c0                	mov    es,ax
   3e011:	26 ff b7 bc 99       	push   WORD PTR es:[bx-0x6644]
   3e016:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e01b:	83 c4 08             	add    sp,0x8
   3e01e:	52                   	push   dx
   3e01f:	50                   	push   ax
   3e020:	9a 52 00 38 01       	call   0x138:0x52
   3e025:	83 c4 0c             	add    sp,0xc
   3e028:	6a 0a                	push   0xa
   3e02a:	b8 88 01             	mov    ax,0x188
   3e02d:	8e c0                	mov    es,ax
   3e02f:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e034:	6b db 5c             	imul   bx,bx,0x5c
   3e037:	b8 88 01             	mov    ax,0x188
   3e03a:	8e c0                	mov    es,ax
   3e03c:	26 8b 87 be 99       	mov    ax,WORD PTR es:[bx-0x6642]
   3e041:	3b 06 c6 48          	cmp    ax,WORD PTR ds:0x48c6
   3e045:	7e 05                	jle    0x3e04c
   3e047:	b8 48 00             	mov    ax,0x48
   3e04a:	eb 2d                	jmp    0x3e079
   3e04c:	b8 88 01             	mov    ax,0x188
   3e04f:	8e c0                	mov    es,ax
   3e051:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e056:	6b db 5c             	imul   bx,bx,0x5c
   3e059:	b8 88 01             	mov    ax,0x188
   3e05c:	8e c0                	mov    es,ax
   3e05e:	26 8b 87 be 99       	mov    ax,WORD PTR es:[bx-0x6642]
   3e063:	3b 06 de 48          	cmp    ax,WORD PTR ds:0x48de
   3e067:	7d 05                	jge    0x3e06e
   3e069:	b8 de 00             	mov    ax,0xde
   3e06c:	eb 0b                	jmp    0x3e079
   3e06e:	b8 88 01             	mov    ax,0x188
   3e071:	8e c0                	mov    es,ax
   3e073:	26 a0 66 96          	mov    al,es:0x9666
   3e077:	b4 00                	mov    ah,0x0
   3e079:	50                   	push   ax
   3e07a:	6a 0b                	push   0xb
   3e07c:	6a 23                	push   0x23
   3e07e:	6a 0a                	push   0xa
   3e080:	16                   	push   ss
   3e081:	8d 46 fa             	lea    ax,[bp-0x6]
   3e084:	50                   	push   ax
   3e085:	b8 88 01             	mov    ax,0x188
   3e088:	8e c0                	mov    es,ax
   3e08a:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e08f:	6b db 5c             	imul   bx,bx,0x5c
   3e092:	b8 88 01             	mov    ax,0x188
   3e095:	8e c0                	mov    es,ax
   3e097:	26 ff b7 be 99       	push   WORD PTR es:[bx-0x6642]
   3e09c:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e0a1:	83 c4 08             	add    sp,0x8
   3e0a4:	52                   	push   dx
   3e0a5:	50                   	push   ax
   3e0a6:	9a 52 00 38 01       	call   0x138:0x52
   3e0ab:	83 c4 0c             	add    sp,0xc
   3e0ae:	6a 0a                	push   0xa
   3e0b0:	b8 88 01             	mov    ax,0x188
   3e0b3:	8e c0                	mov    es,ax
   3e0b5:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e0ba:	6b db 5c             	imul   bx,bx,0x5c
   3e0bd:	b8 88 01             	mov    ax,0x188
   3e0c0:	8e c0                	mov    es,ax
   3e0c2:	26 8b 87 c2 99       	mov    ax,WORD PTR es:[bx-0x663e]
   3e0c7:	3b 06 ca 48          	cmp    ax,WORD PTR ds:0x48ca
   3e0cb:	7e 05                	jle    0x3e0d2
   3e0cd:	b8 48 00             	mov    ax,0x48
   3e0d0:	eb 2d                	jmp    0x3e0ff
   3e0d2:	b8 88 01             	mov    ax,0x188
   3e0d5:	8e c0                	mov    es,ax
   3e0d7:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e0dc:	6b db 5c             	imul   bx,bx,0x5c
   3e0df:	b8 88 01             	mov    ax,0x188
   3e0e2:	8e c0                	mov    es,ax
   3e0e4:	26 8b 87 c2 99       	mov    ax,WORD PTR es:[bx-0x663e]
   3e0e9:	3b 06 e2 48          	cmp    ax,WORD PTR ds:0x48e2
   3e0ed:	7d 05                	jge    0x3e0f4
   3e0ef:	b8 de 00             	mov    ax,0xde
   3e0f2:	eb 0b                	jmp    0x3e0ff
   3e0f4:	b8 88 01             	mov    ax,0x188
   3e0f7:	8e c0                	mov    es,ax
   3e0f9:	26 a0 66 96          	mov    al,es:0x9666
   3e0fd:	b4 00                	mov    ah,0x0
   3e0ff:	50                   	push   ax
   3e100:	6a 0c                	push   0xc
   3e102:	6a 23                	push   0x23
   3e104:	6a 0a                	push   0xa
   3e106:	16                   	push   ss
   3e107:	8d 46 fa             	lea    ax,[bp-0x6]
   3e10a:	50                   	push   ax
   3e10b:	b8 88 01             	mov    ax,0x188
   3e10e:	8e c0                	mov    es,ax
   3e110:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e115:	6b db 5c             	imul   bx,bx,0x5c
   3e118:	b8 88 01             	mov    ax,0x188
   3e11b:	8e c0                	mov    es,ax
   3e11d:	26 ff b7 c2 99       	push   WORD PTR es:[bx-0x663e]
   3e122:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e127:	83 c4 08             	add    sp,0x8
   3e12a:	52                   	push   dx
   3e12b:	50                   	push   ax
   3e12c:	9a 52 00 38 01       	call   0x138:0x52
   3e131:	83 c4 0c             	add    sp,0xc
   3e134:	6a 0a                	push   0xa
   3e136:	b8 88 01             	mov    ax,0x188
   3e139:	8e c0                	mov    es,ax
   3e13b:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e140:	6b db 5c             	imul   bx,bx,0x5c
   3e143:	b8 88 01             	mov    ax,0x188
   3e146:	8e c0                	mov    es,ax
   3e148:	26 8b 87 c4 99       	mov    ax,WORD PTR es:[bx-0x663c]
   3e14d:	3b 06 cc 48          	cmp    ax,WORD PTR ds:0x48cc
   3e151:	7e 05                	jle    0x3e158
   3e153:	b8 48 00             	mov    ax,0x48
   3e156:	eb 2d                	jmp    0x3e185
   3e158:	b8 88 01             	mov    ax,0x188
   3e15b:	8e c0                	mov    es,ax
   3e15d:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e162:	6b db 5c             	imul   bx,bx,0x5c
   3e165:	b8 88 01             	mov    ax,0x188
   3e168:	8e c0                	mov    es,ax
   3e16a:	26 8b 87 c4 99       	mov    ax,WORD PTR es:[bx-0x663c]
   3e16f:	3b 06 e4 48          	cmp    ax,WORD PTR ds:0x48e4
   3e173:	7d 05                	jge    0x3e17a
   3e175:	b8 de 00             	mov    ax,0xde
   3e178:	eb 0b                	jmp    0x3e185
   3e17a:	b8 88 01             	mov    ax,0x188
   3e17d:	8e c0                	mov    es,ax
   3e17f:	26 a0 66 96          	mov    al,es:0x9666
   3e183:	b4 00                	mov    ah,0x0
   3e185:	50                   	push   ax
   3e186:	6a 0d                	push   0xd
   3e188:	6a 23                	push   0x23
   3e18a:	6a 0a                	push   0xa
   3e18c:	16                   	push   ss
   3e18d:	8d 46 fa             	lea    ax,[bp-0x6]
   3e190:	50                   	push   ax
   3e191:	b8 88 01             	mov    ax,0x188
   3e194:	8e c0                	mov    es,ax
   3e196:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e19b:	6b db 5c             	imul   bx,bx,0x5c
   3e19e:	b8 88 01             	mov    ax,0x188
   3e1a1:	8e c0                	mov    es,ax
   3e1a3:	26 ff b7 c4 99       	push   WORD PTR es:[bx-0x663c]
   3e1a8:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e1ad:	83 c4 08             	add    sp,0x8
   3e1b0:	52                   	push   dx
   3e1b1:	50                   	push   ax
   3e1b2:	9a 52 00 38 01       	call   0x138:0x52
   3e1b7:	83 c4 0c             	add    sp,0xc
   3e1ba:	6a 0a                	push   0xa
   3e1bc:	b8 88 01             	mov    ax,0x188
   3e1bf:	8e c0                	mov    es,ax
   3e1c1:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e1c6:	6b db 5c             	imul   bx,bx,0x5c
   3e1c9:	b8 88 01             	mov    ax,0x188
   3e1cc:	8e c0                	mov    es,ax
   3e1ce:	26 8b 87 c6 99       	mov    ax,WORD PTR es:[bx-0x663a]
   3e1d3:	3b 06 ce 48          	cmp    ax,WORD PTR ds:0x48ce
   3e1d7:	7e 05                	jle    0x3e1de
   3e1d9:	b8 48 00             	mov    ax,0x48
   3e1dc:	eb 2d                	jmp    0x3e20b
   3e1de:	b8 88 01             	mov    ax,0x188
   3e1e1:	8e c0                	mov    es,ax
   3e1e3:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e1e8:	6b db 5c             	imul   bx,bx,0x5c
   3e1eb:	b8 88 01             	mov    ax,0x188
   3e1ee:	8e c0                	mov    es,ax
   3e1f0:	26 8b 87 c6 99       	mov    ax,WORD PTR es:[bx-0x663a]
   3e1f5:	3b 06 e6 48          	cmp    ax,WORD PTR ds:0x48e6
   3e1f9:	7d 05                	jge    0x3e200
   3e1fb:	b8 de 00             	mov    ax,0xde
   3e1fe:	eb 0b                	jmp    0x3e20b
   3e200:	b8 88 01             	mov    ax,0x188
   3e203:	8e c0                	mov    es,ax
   3e205:	26 a0 66 96          	mov    al,es:0x9666
   3e209:	b4 00                	mov    ah,0x0
   3e20b:	50                   	push   ax
   3e20c:	6a 0e                	push   0xe
   3e20e:	6a 23                	push   0x23
   3e210:	6a 0a                	push   0xa
   3e212:	16                   	push   ss
   3e213:	8d 46 fa             	lea    ax,[bp-0x6]
   3e216:	50                   	push   ax
   3e217:	b8 88 01             	mov    ax,0x188
   3e21a:	8e c0                	mov    es,ax
   3e21c:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3e221:	6b db 5c             	imul   bx,bx,0x5c
   3e224:	b8 88 01             	mov    ax,0x188
   3e227:	8e c0                	mov    es,ax
   3e229:	26 ff b7 c6 99       	push   WORD PTR es:[bx-0x663a]
   3e22e:	9a 58 3f 00 00       	call   0x0:0x3f58
   3e233:	83 c4 08             	add    sp,0x8
   3e236:	52                   	push   dx
   3e237:	50                   	push   ax
   3e238:	9a 52 00 38 01       	call   0x138:0x52
   3e23d:	83 c4 0c             	add    sp,0xc
   3e240:	6a 06                	push   0x6
   3e242:	9a 5c 00 38 01       	call   0x138:0x5c
   3e247:	59                   	pop    cx
   3e248:	c9                   	leave
   3e249:	cb                   	retf

analysis/phase-four/continuation/original-overlay-167c.bin:     file format binary


Disassembly of section .data:

