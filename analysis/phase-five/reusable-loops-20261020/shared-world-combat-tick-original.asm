
analysis/phase-five/reusable-loops-20261020/shared-world-combat-tick-original.bin:     file format binary


Disassembly of section .data:

0003590d <.data>:
   3590d:	55                   	push   bp
   3590e:	8b ec                	mov    bp,sp
   35910:	83 ec 0a             	sub    sp,0xa
   35913:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35916:	01 06 64 3d          	add    WORD PTR ds:0x3d64,ax
   3591a:	a1 64 3d             	mov    ax,ds:0x3d64
   3591d:	bb 3c 00             	mov    bx,0x3c
   35920:	99                   	cwd
   35921:	f7 fb                	idiv   bx
   35923:	01 06 66 3d          	add    WORD PTR ds:0x3d66,ax
   35927:	a1 66 3d             	mov    ax,ds:0x3d66
   3592a:	bb 18 00             	mov    bx,0x18
   3592d:	99                   	cwd
   3592e:	f7 fb                	idiv   bx
   35930:	01 06 68 3d          	add    WORD PTR ds:0x3d68,ax
   35934:	bb 3c 00             	mov    bx,0x3c
   35937:	a1 64 3d             	mov    ax,ds:0x3d64
   3593a:	99                   	cwd
   3593b:	f7 fb                	idiv   bx
   3593d:	89 16 64 3d          	mov    WORD PTR ds:0x3d64,dx
   35941:	bb 18 00             	mov    bx,0x18
   35944:	a1 66 3d             	mov    ax,ds:0x3d66
   35947:	99                   	cwd
   35948:	f7 fb                	idiv   bx
   3594a:	89 16 66 3d          	mov    WORD PTR ds:0x3d66,dx
   3594e:	bb 68 01             	mov    bx,0x168
   35951:	a1 68 3d             	mov    ax,ds:0x3d68
   35954:	99                   	cwd
   35955:	f7 fb                	idiv   bx
   35957:	89 16 68 3d          	mov    WORD PTR ds:0x3d68,dx
   3595b:	c7 46 fe 01 00       	mov    WORD PTR [bp-0x2],0x1
   35960:	e9 95 01             	jmp    0x35af8
   35963:	c7 46 fc 01 00       	mov    WORD PTR [bp-0x4],0x1
   35968:	e9 81 01             	jmp    0x35aec
   3596b:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   3596e:	6b c0 64             	imul   ax,ax,0x64
   35971:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35974:	6b db 5c             	imul   bx,bx,0x5c
   35977:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   3597a:	d1 e2                	shl    dx,1
   3597c:	03 da                	add    bx,dx
   3597e:	ba 88 01             	mov    dx,0x188
   35981:	8e c2                	mov    es,dx
   35983:	26 8b 97 d2 99       	mov    dx,WORD PTR es:[bx-0x662e]
   35988:	2b d0                	sub    dx,ax
   3598a:	0b d2                	or     dx,dx
   3598c:	7d 04                	jge    0x35992
   3598e:	33 c0                	xor    ax,ax
   35990:	eb 21                	jmp    0x359b3
   35992:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35995:	6b c0 64             	imul   ax,ax,0x64
   35998:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   3599b:	6b db 5c             	imul   bx,bx,0x5c
   3599e:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   359a1:	d1 e2                	shl    dx,1
   359a3:	03 da                	add    bx,dx
   359a5:	ba 88 01             	mov    dx,0x188
   359a8:	8e c2                	mov    es,dx
   359aa:	50                   	push   ax
   359ab:	26 8b 87 d2 99       	mov    ax,WORD PTR es:[bx-0x662e]
   359b0:	5a                   	pop    dx
   359b1:	2b c2                	sub    ax,dx
   359b3:	89 46 f8             	mov    WORD PTR [bp-0x8],ax
   359b6:	83 7e f8 00          	cmp    WORD PTR [bp-0x8],0x0
   359ba:	74 1c                	je     0x359d8
   359bc:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   359bf:	6b db 5c             	imul   bx,bx,0x5c
   359c2:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   359c5:	d1 e0                	shl    ax,1
   359c7:	03 d8                	add    bx,ax
   359c9:	b8 88 01             	mov    ax,0x188
   359cc:	8b 56 f8             	mov    dx,WORD PTR [bp-0x8]
   359cf:	8e c0                	mov    es,ax
   359d1:	26 89 97 d2 99       	mov    WORD PTR es:[bx-0x662e],dx
   359d6:	eb 52                	jmp    0x35a2a
   359d8:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   359db:	40                   	inc    ax
   359dc:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   359df:	eb 31                	jmp    0x35a12
   359e1:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   359e4:	6b db 5c             	imul   bx,bx,0x5c
   359e7:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   359ea:	d1 e0                	shl    ax,1
   359ec:	03 d8                	add    bx,ax
   359ee:	b8 88 01             	mov    ax,0x188
   359f1:	8e c0                	mov    es,ax
   359f3:	26 8b 87 d2 99       	mov    ax,WORD PTR es:[bx-0x662e]
   359f8:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   359fb:	6b db 5c             	imul   bx,bx,0x5c
   359fe:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   35a01:	d1 e2                	shl    dx,1
   35a03:	03 da                	add    bx,dx
   35a05:	ba 88 01             	mov    dx,0x188
   35a08:	8e c2                	mov    es,dx
   35a0a:	26 89 87 d0 99       	mov    WORD PTR es:[bx-0x6630],ax
   35a0f:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   35a12:	83 7e fa 05          	cmp    WORD PTR [bp-0x6],0x5
   35a16:	7e c9                	jle    0x359e1
   35a18:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a1b:	6b db 5c             	imul   bx,bx,0x5c
   35a1e:	b8 88 01             	mov    ax,0x188
   35a21:	8e c0                	mov    es,ax
   35a23:	26 c7 87 dc 99 00 00 	mov    WORD PTR es:[bx-0x6624],0x0
   35a2a:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35a2d:	6b c0 64             	imul   ax,ax,0x64
   35a30:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a33:	6b db 28             	imul   bx,bx,0x28
   35a36:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   35a39:	d1 e2                	shl    dx,1
   35a3b:	03 da                	add    bx,dx
   35a3d:	ba 88 01             	mov    dx,0x188
   35a40:	8e c2                	mov    es,dx
   35a42:	26 8b 97 5e a4       	mov    dx,WORD PTR es:[bx-0x5ba2]
   35a47:	2b d0                	sub    dx,ax
   35a49:	0b d2                	or     dx,dx
   35a4b:	7d 04                	jge    0x35a51
   35a4d:	33 c0                	xor    ax,ax
   35a4f:	eb 21                	jmp    0x35a72
   35a51:	8b 46 06             	mov    ax,WORD PTR [bp+0x6]
   35a54:	6b c0 64             	imul   ax,ax,0x64
   35a57:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a5a:	6b db 28             	imul   bx,bx,0x28
   35a5d:	8b 56 fc             	mov    dx,WORD PTR [bp-0x4]
   35a60:	d1 e2                	shl    dx,1
   35a62:	03 da                	add    bx,dx
   35a64:	ba 88 01             	mov    dx,0x188
   35a67:	8e c2                	mov    es,dx
   35a69:	50                   	push   ax
   35a6a:	26 8b 87 5e a4       	mov    ax,WORD PTR es:[bx-0x5ba2]
   35a6f:	5a                   	pop    dx
   35a70:	2b c2                	sub    ax,dx
   35a72:	89 46 f6             	mov    WORD PTR [bp-0xa],ax
   35a75:	83 7e f6 00          	cmp    WORD PTR [bp-0xa],0x0
   35a79:	74 1c                	je     0x35a97
   35a7b:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35a7e:	6b db 28             	imul   bx,bx,0x28
   35a81:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   35a84:	d1 e0                	shl    ax,1
   35a86:	03 d8                	add    bx,ax
   35a88:	b8 88 01             	mov    ax,0x188
   35a8b:	8b 56 f6             	mov    dx,WORD PTR [bp-0xa]
   35a8e:	8e c0                	mov    es,ax
   35a90:	26 89 97 5e a4       	mov    WORD PTR es:[bx-0x5ba2],dx
   35a95:	eb 52                	jmp    0x35ae9
   35a97:	8b 46 fc             	mov    ax,WORD PTR [bp-0x4]
   35a9a:	40                   	inc    ax
   35a9b:	89 46 fa             	mov    WORD PTR [bp-0x6],ax
   35a9e:	eb 31                	jmp    0x35ad1
   35aa0:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35aa3:	6b db 28             	imul   bx,bx,0x28
   35aa6:	8b 46 fa             	mov    ax,WORD PTR [bp-0x6]
   35aa9:	d1 e0                	shl    ax,1
   35aab:	03 d8                	add    bx,ax
   35aad:	b8 88 01             	mov    ax,0x188
   35ab0:	8e c0                	mov    es,ax
   35ab2:	26 8b 87 5e a4       	mov    ax,WORD PTR es:[bx-0x5ba2]
   35ab7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35aba:	6b db 28             	imul   bx,bx,0x28
   35abd:	8b 56 fa             	mov    dx,WORD PTR [bp-0x6]
   35ac0:	d1 e2                	shl    dx,1
   35ac2:	03 da                	add    bx,dx
   35ac4:	ba 88 01             	mov    dx,0x188
   35ac7:	8e c2                	mov    es,dx
   35ac9:	26 89 87 5c a4       	mov    WORD PTR es:[bx-0x5ba4],ax
   35ace:	ff 46 fa             	inc    WORD PTR [bp-0x6]
   35ad1:	83 7e fa 05          	cmp    WORD PTR [bp-0x6],0x5
   35ad5:	7e c9                	jle    0x35aa0
   35ad7:	8b 5e fe             	mov    bx,WORD PTR [bp-0x2]
   35ada:	6b db 28             	imul   bx,bx,0x28
   35add:	b8 88 01             	mov    ax,0x188
   35ae0:	8e c0                	mov    es,ax
   35ae2:	26 c7 87 68 a4 00 00 	mov    WORD PTR es:[bx-0x5b98],0x0
   35ae9:	ff 46 fc             	inc    WORD PTR [bp-0x4]
   35aec:	83 7e fc 05          	cmp    WORD PTR [bp-0x4],0x5
   35af0:	7f 03                	jg     0x35af5
   35af2:	e9 76 fe             	jmp    0x3596b
   35af5:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   35af8:	83 7e fe 04          	cmp    WORD PTR [bp-0x2],0x4
   35afc:	7f 03                	jg     0x35b01
   35afe:	e9 62 fe             	jmp    0x35963
   35b01:	c9                   	leave
   35b02:	cb                   	retf
