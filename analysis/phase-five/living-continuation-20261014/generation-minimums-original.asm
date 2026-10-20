
lale/IST.EXE:     file format binary


Disassembly of section .data:

0003daa1 <.data+0x3daa1>:
   3daa1:	c7 46 fe 03 00       	mov    WORD PTR [bp-0x2],0x3
   3daa6:	e9 95 00             	jmp    0x3db3e
   3daa9:	83 7e fe 06          	cmp    WORD PTR [bp-0x2],0x6
   3daad:	74 2a                	je     0x3dad9
   3daaf:	b8 88 01             	mov    ax,0x188
   3dab2:	8e c0                	mov    es,ax
   3dab4:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dab9:	6b db 5c             	imul   bx,bx,0x5c
   3dabc:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3dabf:	d1 e0                	shl    ax,1
   3dac1:	03 d8                	add    bx,ax
   3dac3:	b8 88 01             	mov    ax,0x188
   3dac6:	8e c0                	mov    es,ax
   3dac8:	26 83 bf a6 99 32    	cmp    WORD PTR es:[bx-0x665a],0x32
   3dace:	7d 05                	jge    0x3dad5
   3dad0:	b8 32 00             	mov    ax,0x32
   3dad3:	eb 48                	jmp    0x3db1d
   3dad5:	eb 28                	jmp    0x3daff
   3dad7:	eb 44                	jmp    0x3db1d
   3dad9:	b8 88 01             	mov    ax,0x188
   3dadc:	8e c0                	mov    es,ax
   3dade:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3dae3:	6b db 5c             	imul   bx,bx,0x5c
   3dae6:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3dae9:	d1 e0                	shl    ax,1
   3daeb:	03 d8                	add    bx,ax
   3daed:	b8 88 01             	mov    ax,0x188
   3daf0:	8e c0                	mov    es,ax
   3daf2:	26 83 bf a6 99 03    	cmp    WORD PTR es:[bx-0x665a],0x3
   3daf8:	7d 05                	jge    0x3daff
   3dafa:	b8 03 00             	mov    ax,0x3
   3dafd:	eb d4                	jmp    0x3dad3
   3daff:	b8 88 01             	mov    ax,0x188
   3db02:	8e c0                	mov    es,ax
   3db04:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db09:	6b db 5c             	imul   bx,bx,0x5c
   3db0c:	8b 46 fe             	mov    ax,WORD PTR [bp-0x2]
   3db0f:	d1 e0                	shl    ax,1
   3db11:	03 d8                	add    bx,ax
   3db13:	b8 88 01             	mov    ax,0x188
   3db16:	8e c0                	mov    es,ax
   3db18:	26 8b 87 a6 99       	mov    ax,WORD PTR es:[bx-0x665a]
   3db1d:	ba 88 01             	mov    dx,0x188
   3db20:	8e c2                	mov    es,dx
   3db22:	26 8b 1e 98 28       	mov    bx,WORD PTR es:0x2898
   3db27:	6b db 5c             	imul   bx,bx,0x5c
   3db2a:	8b 56 fe             	mov    dx,WORD PTR [bp-0x2]
   3db2d:	d1 e2                	shl    dx,1
   3db2f:	03 da                	add    bx,dx
   3db31:	ba 88 01             	mov    dx,0x188
   3db34:	8e c2                	mov    es,dx
   3db36:	26 89 87 a6 99       	mov    WORD PTR es:[bx-0x665a],ax
   3db3b:	ff 46 fe             	inc    WORD PTR [bp-0x2]
   3db3e:	83 7e fe 10          	cmp    WORD PTR [bp-0x2],0x10
   3db42:	7f 03                	jg     0x3db47
   3db44:	e9 62 ff             	jmp    0x3daa9
