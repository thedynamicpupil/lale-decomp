
analysis/phase-five/character-ui-20261015/otopark/geometry-init-frontier.original.bin:     file format binary


Disassembly of section .data:

00029a07 <.data>:
   29a07:	55                   	push   bp
   29a08:	8b ec                	mov    bp,sp
   29a0a:	83 ec 08             	sub    sp,0x8
   29a0d:	c7 46 fc c8 00       	mov    WORD PTR [bp-0x4],0xc8
   29a12:	c7 46 fa c8 00       	mov    WORD PTR [bp-0x6],0xc8
   29a17:	c7 46 f8 00 00       	mov    WORD PTR [bp-0x8],0x0
   29a1c:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   29a1f:	3b 06 ff 3a          	cmp    ax,WORD PTR ds:0x3aff
   29a23:	75 09                	jne    0x29a2e
   29a25:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   29a28:	3b 06 01 3b          	cmp    ax,WORD PTR ds:0x3b01
   29a2c:	74 05                	je     0x29a33
   29a2e:	c7 46 f8 02 00       	mov    WORD PTR [bp-0x8],0x2
   29a33:	c7 46 fe 00 00       	mov    WORD PTR [bp-0x2],0x0
   29a38:	eb 47                	jmp    0x29a81
   29a3a:	6a 02                	push   0x2
   29a3c:	cd 35                	int    0x35
   29a3e:	06                   	push   es
   29a3f:	05 3c 83             	add    ax,0x833c
   29a42:	ec                   	in     al,dx
   29a43:	04 cd                	add    al,0xcd
   29a45:	35 5e f2             	xor    ax,0xf25e
   29a48:	cd 35                	int    0x35
   29a4a:	06                   	push   es
   29a4b:	05 3c 83             	add    ax,0x833c
   29a4e:	ec                   	in     al,dx
   29a4f:	04 cd                	add    al,0xcd
   29a51:	35 5e ee             	xor    ax,0xee5e
   29a54:	cd 35                	int    0x35
   29a56:	ee                   	out    dx,al
   29a57:	cd 3d                	int    0x3d
   29a59:	83 ec 04             	sub    sp,0x4
   29a5c:	cd 35                	int    0x35
   29a5e:	5e                   	pop    si
   29a5f:	ea cd 35 06 09       	jmp    0x906:0x35cd
   29a64:	3c 83                	cmp    al,0x83
   29a66:	ec                   	in     al,dx
   29a67:	04 cd                	add    al,0xcd
   29a69:	35 5e e6             	xor    ax,0xe65e
   29a6c:	cd 3d                	int    0x3d
   29a6e:	ff 76 fe             	push   WORD PTR [bp-0x2]
   29a71:	68 88 01             	push   0x188
   29a74:	68 2a b7             	push   0xb72a
   29a77:	0e                   	push   cs
   29a78:	e8 d2 f6             	call   0x2914d
   29a7b:	83 c4 18             	add    sp,0x18
   29a7e:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   29a81:	83 7e fe 07          	cmp    WORD PTR [bp-0x2],0x7
   29a85:	7c b3                	jl     0x29a3a
