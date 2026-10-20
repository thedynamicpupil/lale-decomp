
analysis/phase-five/world-ui-20261016/party-selector-46e3.bin:     file format binary


Disassembly of section .data:

00047d53 <.data>:
   47d53:	55                   	push   bp
   47d54:	8b ec                	mov    bp,sp
   47d56:	83 ec 02             	sub    sp,0x2
   47d59:	83 7e 06 00          	cmp    WORD PTR [bp+0x6],0x0
   47d5d:	74 03                	je     0x47d62
   47d5f:	e9 21 03             	jmp    0x48083
   47d62:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   47d66:	74 03                	je     0x47d6b
   47d68:	e9 8c 01             	jmp    0x47ef7
   47d6b:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   47d70:	e9 78 01             	jmp    0x47eeb
   47d73:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47d76:	40                   	inc    ax
   47d77:	bb 04 00             	mov    bx,0x4
   47d7a:	99                   	cwd
   47d7b:	f7 fb                	idiv   bx
   47d7d:	6b d2 5c             	imul   dx,dx,0x5c
   47d80:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47d83:	d1 e0                	shl    ax,1
   47d85:	03 d0                	add    dx,ax
   47d87:	b8 88 01             	mov    ax,0x188
   47d8a:	8b da                	mov    bx,dx
   47d8c:	8e c0                	mov    es,ax
   47d8e:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47d93:	50                   	push   ax
   47d94:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47d97:	05 02 00             	add    ax,0x2
   47d9a:	bb 04 00             	mov    bx,0x4
   47d9d:	99                   	cwd
   47d9e:	f7 fb                	idiv   bx
   47da0:	6b d2 5c             	imul   dx,dx,0x5c
   47da3:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47da6:	d1 e0                	shl    ax,1
   47da8:	03 d0                	add    dx,ax
   47daa:	b8 88 01             	mov    ax,0x188
   47dad:	8b da                	mov    bx,dx
   47daf:	8e c0                	mov    es,ax
   47db1:	58                   	pop    ax
   47db2:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47db7:	7d 22                	jge    0x47ddb
   47db9:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47dbc:	40                   	inc    ax
   47dbd:	bb 04 00             	mov    bx,0x4
   47dc0:	99                   	cwd
   47dc1:	f7 fb                	idiv   bx
   47dc3:	6b d2 5c             	imul   dx,dx,0x5c
   47dc6:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47dc9:	d1 e0                	shl    ax,1
   47dcb:	03 d0                	add    dx,ax
   47dcd:	b8 88 01             	mov    ax,0x188
   47dd0:	8b da                	mov    bx,dx
   47dd2:	8e c0                	mov    es,ax
   47dd4:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47dd9:	eb 22                	jmp    0x47dfd
   47ddb:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47dde:	05 02 00             	add    ax,0x2
   47de1:	bb 04 00             	mov    bx,0x4
   47de4:	99                   	cwd
   47de5:	f7 fb                	idiv   bx
   47de7:	6b d2 5c             	imul   dx,dx,0x5c
   47dea:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47ded:	d1 e0                	shl    ax,1
   47def:	03 d0                	add    dx,ax
   47df1:	b8 88 01             	mov    ax,0x188
   47df4:	8b da                	mov    bx,dx
   47df6:	8e c0                	mov    es,ax
   47df8:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47dfd:	50                   	push   ax
   47dfe:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e01:	bb 04 00             	mov    bx,0x4
   47e04:	99                   	cwd
   47e05:	f7 fb                	idiv   bx
   47e07:	6b d2 5c             	imul   dx,dx,0x5c
   47e0a:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e0d:	d1 e0                	shl    ax,1
   47e0f:	03 d0                	add    dx,ax
   47e11:	b8 88 01             	mov    ax,0x188
   47e14:	8b da                	mov    bx,dx
   47e16:	8e c0                	mov    es,ax
   47e18:	58                   	pop    ax
   47e19:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47e1e:	7e 22                	jle    0x47e42
   47e20:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e23:	bb 04 00             	mov    bx,0x4
   47e26:	99                   	cwd
   47e27:	f7 fb                	idiv   bx
   47e29:	6b d2 5c             	imul   dx,dx,0x5c
   47e2c:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e2f:	d1 e0                	shl    ax,1
   47e31:	03 d0                	add    dx,ax
   47e33:	b8 88 01             	mov    ax,0x188
   47e36:	8b da                	mov    bx,dx
   47e38:	8e c0                	mov    es,ax
   47e3a:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47e3f:	e9 8a 00             	jmp    0x47ecc
   47e42:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e45:	40                   	inc    ax
   47e46:	bb 04 00             	mov    bx,0x4
   47e49:	99                   	cwd
   47e4a:	f7 fb                	idiv   bx
   47e4c:	6b d2 5c             	imul   dx,dx,0x5c
   47e4f:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e52:	d1 e0                	shl    ax,1
   47e54:	03 d0                	add    dx,ax
   47e56:	b8 88 01             	mov    ax,0x188
   47e59:	8b da                	mov    bx,dx
   47e5b:	8e c0                	mov    es,ax
   47e5d:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47e62:	50                   	push   ax
   47e63:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e66:	05 02 00             	add    ax,0x2
   47e69:	bb 04 00             	mov    bx,0x4
   47e6c:	99                   	cwd
   47e6d:	f7 fb                	idiv   bx
   47e6f:	6b d2 5c             	imul   dx,dx,0x5c
   47e72:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e75:	d1 e0                	shl    ax,1
   47e77:	03 d0                	add    dx,ax
   47e79:	b8 88 01             	mov    ax,0x188
   47e7c:	8b da                	mov    bx,dx
   47e7e:	8e c0                	mov    es,ax
   47e80:	58                   	pop    ax
   47e81:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47e86:	7d 22                	jge    0x47eaa
   47e88:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47e8b:	40                   	inc    ax
   47e8c:	bb 04 00             	mov    bx,0x4
   47e8f:	99                   	cwd
   47e90:	f7 fb                	idiv   bx
   47e92:	6b d2 5c             	imul   dx,dx,0x5c
   47e95:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47e98:	d1 e0                	shl    ax,1
   47e9a:	03 d0                	add    dx,ax
   47e9c:	b8 88 01             	mov    ax,0x188
   47e9f:	8b da                	mov    bx,dx
   47ea1:	8e c0                	mov    es,ax
   47ea3:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47ea8:	eb 22                	jmp    0x47ecc
   47eaa:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47ead:	05 02 00             	add    ax,0x2
   47eb0:	bb 04 00             	mov    bx,0x4
   47eb3:	99                   	cwd
   47eb4:	f7 fb                	idiv   bx
   47eb6:	6b d2 5c             	imul   dx,dx,0x5c
   47eb9:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47ebc:	d1 e0                	shl    ax,1
   47ebe:	03 d0                	add    dx,ax
   47ec0:	b8 88 01             	mov    ax,0x188
   47ec3:	8b da                	mov    bx,dx
   47ec5:	8e c0                	mov    es,ax
   47ec7:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47ecc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   47ecf:	6b db 5c             	imul   bx,bx,0x5c
   47ed2:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   47ed5:	d1 e2                	shl    dx,1
   47ed7:	03 da                	add    bx,dx
   47ed9:	ba 88 01             	mov    dx,0x188
   47edc:	8e c2                	mov    es,dx
   47ede:	26 3b 87 a6 99       	cmp    ax,WORD PTR es:[bx-0x665a]
   47ee3:	7c 03                	jl     0x47ee8
   47ee5:	e9 2f 02             	jmp    0x48117
   47ee8:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   47eeb:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   47eef:	7f 03                	jg     0x47ef4
   47ef1:	e9 7f fe             	jmp    0x47d73
   47ef4:	e9 20 02             	jmp    0x48117
   47ef7:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   47efc:	e9 78 01             	jmp    0x48077
   47eff:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f02:	40                   	inc    ax
   47f03:	bb 04 00             	mov    bx,0x4
   47f06:	99                   	cwd
   47f07:	f7 fb                	idiv   bx
   47f09:	6b d2 5c             	imul   dx,dx,0x5c
   47f0c:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f0f:	d1 e0                	shl    ax,1
   47f11:	03 d0                	add    dx,ax
   47f13:	b8 88 01             	mov    ax,0x188
   47f16:	8b da                	mov    bx,dx
   47f18:	8e c0                	mov    es,ax
   47f1a:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47f1f:	50                   	push   ax
   47f20:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f23:	05 02 00             	add    ax,0x2
   47f26:	bb 04 00             	mov    bx,0x4
   47f29:	99                   	cwd
   47f2a:	f7 fb                	idiv   bx
   47f2c:	6b d2 5c             	imul   dx,dx,0x5c
   47f2f:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f32:	d1 e0                	shl    ax,1
   47f34:	03 d0                	add    dx,ax
   47f36:	b8 88 01             	mov    ax,0x188
   47f39:	8b da                	mov    bx,dx
   47f3b:	8e c0                	mov    es,ax
   47f3d:	58                   	pop    ax
   47f3e:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47f43:	7e 22                	jle    0x47f67
   47f45:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f48:	40                   	inc    ax
   47f49:	bb 04 00             	mov    bx,0x4
   47f4c:	99                   	cwd
   47f4d:	f7 fb                	idiv   bx
   47f4f:	6b d2 5c             	imul   dx,dx,0x5c
   47f52:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f55:	d1 e0                	shl    ax,1
   47f57:	03 d0                	add    dx,ax
   47f59:	b8 88 01             	mov    ax,0x188
   47f5c:	8b da                	mov    bx,dx
   47f5e:	8e c0                	mov    es,ax
   47f60:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47f65:	eb 22                	jmp    0x47f89
   47f67:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f6a:	05 02 00             	add    ax,0x2
   47f6d:	bb 04 00             	mov    bx,0x4
   47f70:	99                   	cwd
   47f71:	f7 fb                	idiv   bx
   47f73:	6b d2 5c             	imul   dx,dx,0x5c
   47f76:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f79:	d1 e0                	shl    ax,1
   47f7b:	03 d0                	add    dx,ax
   47f7d:	b8 88 01             	mov    ax,0x188
   47f80:	8b da                	mov    bx,dx
   47f82:	8e c0                	mov    es,ax
   47f84:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47f89:	50                   	push   ax
   47f8a:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47f8d:	bb 04 00             	mov    bx,0x4
   47f90:	99                   	cwd
   47f91:	f7 fb                	idiv   bx
   47f93:	6b d2 5c             	imul   dx,dx,0x5c
   47f96:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47f99:	d1 e0                	shl    ax,1
   47f9b:	03 d0                	add    dx,ax
   47f9d:	b8 88 01             	mov    ax,0x188
   47fa0:	8b da                	mov    bx,dx
   47fa2:	8e c0                	mov    es,ax
   47fa4:	58                   	pop    ax
   47fa5:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   47faa:	7d 22                	jge    0x47fce
   47fac:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47faf:	bb 04 00             	mov    bx,0x4
   47fb2:	99                   	cwd
   47fb3:	f7 fb                	idiv   bx
   47fb5:	6b d2 5c             	imul   dx,dx,0x5c
   47fb8:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47fbb:	d1 e0                	shl    ax,1
   47fbd:	03 d0                	add    dx,ax
   47fbf:	b8 88 01             	mov    ax,0x188
   47fc2:	8b da                	mov    bx,dx
   47fc4:	8e c0                	mov    es,ax
   47fc6:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47fcb:	e9 8a 00             	jmp    0x48058
   47fce:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47fd1:	40                   	inc    ax
   47fd2:	bb 04 00             	mov    bx,0x4
   47fd5:	99                   	cwd
   47fd6:	f7 fb                	idiv   bx
   47fd8:	6b d2 5c             	imul   dx,dx,0x5c
   47fdb:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   47fde:	d1 e0                	shl    ax,1
   47fe0:	03 d0                	add    dx,ax
   47fe2:	b8 88 01             	mov    ax,0x188
   47fe5:	8b da                	mov    bx,dx
   47fe7:	8e c0                	mov    es,ax
   47fe9:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   47fee:	50                   	push   ax
   47fef:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   47ff2:	05 02 00             	add    ax,0x2
   47ff5:	bb 04 00             	mov    bx,0x4
   47ff8:	99                   	cwd
   47ff9:	f7 fb                	idiv   bx
   47ffb:	6b d2 5c             	imul   dx,dx,0x5c
   47ffe:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48001:	d1 e0                	shl    ax,1
   48003:	03 d0                	add    dx,ax
   48005:	b8 88 01             	mov    ax,0x188
   48008:	8b da                	mov    bx,dx
   4800a:	8e c0                	mov    es,ax
   4800c:	58                   	pop    ax
   4800d:	26 3b 87 02 9a       	cmp    ax,WORD PTR es:[bx-0x65fe]
   48012:	7e 22                	jle    0x48036
   48014:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   48017:	40                   	inc    ax
   48018:	bb 04 00             	mov    bx,0x4
   4801b:	99                   	cwd
   4801c:	f7 fb                	idiv   bx
   4801e:	6b d2 5c             	imul   dx,dx,0x5c
   48021:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48024:	d1 e0                	shl    ax,1
   48026:	03 d0                	add    dx,ax
   48028:	b8 88 01             	mov    ax,0x188
   4802b:	8b da                	mov    bx,dx
   4802d:	8e c0                	mov    es,ax
   4802f:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   48034:	eb 22                	jmp    0x48058
   48036:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   48039:	05 02 00             	add    ax,0x2
   4803c:	bb 04 00             	mov    bx,0x4
   4803f:	99                   	cwd
   48040:	f7 fb                	idiv   bx
   48042:	6b d2 5c             	imul   dx,dx,0x5c
   48045:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48048:	d1 e0                	shl    ax,1
   4804a:	03 d0                	add    dx,ax
   4804c:	b8 88 01             	mov    ax,0x188
   4804f:	8b da                	mov    bx,dx
   48051:	8e c0                	mov    es,ax
   48053:	26 8b 87 02 9a       	mov    ax,WORD PTR es:[bx-0x65fe]
   48058:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   4805b:	6b db 5c             	imul   bx,bx,0x5c
   4805e:	8b 56 0a             	mov    dx,WORD PTR [bp+0xa]
   48061:	d1 e2                	shl    dx,1
   48063:	03 da                	add    bx,dx
   48065:	ba 88 01             	mov    dx,0x188
   48068:	8e c2                	mov    es,dx
   4806a:	26 3b 87 a6 99       	cmp    ax,WORD PTR es:[bx-0x665a]
   4806f:	7f 03                	jg     0x48074
   48071:	e9 a3 00             	jmp    0x48117
   48074:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   48077:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   4807b:	7f 03                	jg     0x48080
   4807d:	e9 7f fe             	jmp    0x47eff
   48080:	e9 94 00             	jmp    0x48117
   48083:	83 7e 08 00          	cmp    WORD PTR [bp+0x8],0x0
   48087:	75 2e                	jne    0x480b7
   48089:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   4808e:	eb 1f                	jmp    0x480af
   48090:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   48093:	6b db 5c             	imul   bx,bx,0x5c
   48096:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   48099:	d1 e0                	shl    ax,1
   4809b:	03 d8                	add    bx,ax
   4809d:	b8 88 01             	mov    ax,0x188
   480a0:	8e c0                	mov    es,ax
   480a2:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   480a7:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   480aa:	7c 6b                	jl     0x48117
   480ac:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   480af:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   480b3:	7e db                	jle    0x48090
   480b5:	eb 60                	jmp    0x48117
   480b7:	83 7e 08 01          	cmp    WORD PTR [bp+0x8],0x1
   480bb:	75 2e                	jne    0x480eb
   480bd:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   480c2:	eb 1f                	jmp    0x480e3
   480c4:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   480c7:	6b db 5c             	imul   bx,bx,0x5c
   480ca:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   480cd:	d1 e0                	shl    ax,1
   480cf:	03 d8                	add    bx,ax
   480d1:	b8 88 01             	mov    ax,0x188
   480d4:	8e c0                	mov    es,ax
   480d6:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   480db:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   480de:	7f 37                	jg     0x48117
   480e0:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   480e3:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   480e7:	7e db                	jle    0x480c4
   480e9:	eb 2c                	jmp    0x48117
   480eb:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   480f0:	eb 1f                	jmp    0x48111
   480f2:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   480f5:	6b db 5c             	imul   bx,bx,0x5c
   480f8:	8b 46 0a             	mov    ax,WORD PTR [bp+0xa]
   480fb:	d1 e0                	shl    ax,1
   480fd:	03 d8                	add    bx,ax
   480ff:	b8 88 01             	mov    ax,0x188
   48102:	8e c0                	mov    es,ax
   48104:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   48109:	3b 46 06             	cmp    ax,WORD PTR [bp+0x6]
   4810c:	74 09                	je     0x48117
   4810e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   48111:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   48115:	7e db                	jle    0x480f2
   48117:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   4811a:	c9                   	leave
   4811b:	cb                   	retf
   4811c:	55                   	push   bp
   4811d:	8b ec                	mov    bp,sp
   4811f:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   48122:	bb 08 00             	mov    bx,0x8
   48125:	99                   	cwd
   48126:	f7 fb                	idiv   bx
   48128:	b0 01                	mov    al,0x1
   4812a:	8a ca                	mov    cl,dl
   4812c:	d2 e0                	shl    al,cl
   4812e:	50                   	push   ax
   4812f:	8b                   	.byte 0x8b
