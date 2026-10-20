
analysis/phase-four/continuation/original-overlay-167c.bin:     file format binary


Disassembly of section .data:

0003ef12 <.data+0x2312>:
   3ef12:	83 7e fe 39          	cmp    WORD PTR [bp-0x2],0x39
   3ef16:	74 0c                	je     0x3ef24
   3ef18:	83 7e fc 08          	cmp    WORD PTR [bp-0x4],0x8
   3ef1c:	75 40                	jne    0x3ef5e
   3ef1e:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3ef22:	75 3a                	jne    0x3ef5e
   3ef24:	b8 88 01             	mov    ax,0x188
   3ef27:	8e c0                	mov    es,ax
   3ef29:	26 a1 98 28          	mov    ax,es:0x2898
   3ef2d:	69 c0 94 00          	imul   ax,ax,0x94
   3ef31:	05 26 9c             	add    ax,0x9c26
   3ef34:	68 88 01             	push   0x188
   3ef37:	50                   	push   ax
   3ef38:	9a cc 49 00 00       	call   0x0:0x49cc
   3ef3d:	83 c4 04             	add    sp,0x4
   3ef40:	0b c0                	or     ax,ax
   3ef42:	74 1a                	je     0x3ef5e
   3ef44:	b8 88 01             	mov    ax,0x188
   3ef47:	8e c0                	mov    es,ax
   3ef49:	26 83 3e 98 28 04    	cmp    WORD PTR es:0x2898,0x4
   3ef4f:	7d 0d                	jge    0x3ef5e
   3ef51:	b8 88 01             	mov    ax,0x188
   3ef54:	8e c0                	mov    es,ax
   3ef56:	26 ff 06 98 28       	inc    WORD PTR es:0x2898
   3ef5b:	e9 96 00             	jmp    0x3eff4
   3ef5e:	83 7e fe 39          	cmp    WORD PTR [bp-0x2],0x39
   3ef62:	74 0c                	je     0x3ef70
   3ef64:	83 7e fc 08          	cmp    WORD PTR [bp-0x4],0x8
   3ef68:	75 61                	jne    0x3efcb
   3ef6a:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3ef6e:	75 5b                	jne    0x3efcb
   3ef70:	b8 88 01             	mov    ax,0x188
   3ef73:	8e c0                	mov    es,ax
   3ef75:	26 a1 98 28          	mov    ax,es:0x2898
   3ef79:	69 c0 94 00          	imul   ax,ax,0x94
   3ef7d:	05 26 9c             	add    ax,0x9c26
   3ef80:	68 88 01             	push   0x188
   3ef83:	50                   	push   ax
   3ef84:	9a cc 49 00 00       	call   0x0:0x49cc
   3ef89:	83 c4 04             	add    sp,0x4
   3ef8c:	0b c0                	or     ax,ax
   3ef8e:	74 3b                	je     0x3efcb
   3ef90:	b8 88 01             	mov    ax,0x188
   3ef93:	8e c0                	mov    es,ax
   3ef95:	26 83 3e 98 28 04    	cmp    WORD PTR es:0x2898,0x4
   3ef9b:	75 2e                	jne    0x3efcb
   3ef9d:	b8 88 01             	mov    ax,0x188
   3efa0:	8e c0                	mov    es,ax
   3efa2:	26 ff 06 98 28       	inc    WORD PTR es:0x2898
   3efa7:	6a 00                	push   0x0
   3efa9:	b8 88 01             	mov    ax,0x188
   3efac:	8e c0                	mov    es,ax
   3efae:	26 a1 18 73          	mov    ax,es:0x7318
   3efb2:	f7 d8                	neg    ax
   3efb4:	50                   	push   ax
   3efb5:	68 80 0c             	push   0xc80
   3efb8:	9a 3f 07 30 00       	call   0x30:0x73f
   3efbd:	83 c4 06             	add    sp,0x6
   3efc0:	0e                   	push   cs
   3efc1:	e8 6a f4             	call   0x3e42e
   3efc4:	0e                   	push   cs
   3efc5:	e8 52 f6             	call   0x3e61a
   3efc8:	e9 94 00             	jmp    0x3f05f
   3efcb:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   3efcf:	74 0c                	je     0x3efdd
   3efd1:	83 7e fc 07          	cmp    WORD PTR [bp-0x4],0x7
   3efd5:	75 39                	jne    0x3f010
   3efd7:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3efdb:	75 33                	jne    0x3f010
   3efdd:	b8 88 01             	mov    ax,0x188
   3efe0:	8e c0                	mov    es,ax
   3efe2:	26 83 3e 98 28 01    	cmp    WORD PTR es:0x2898,0x1
   3efe8:	7e 26                	jle    0x3f010
   3efea:	b8 88 01             	mov    ax,0x188
   3efed:	8e c0                	mov    es,ax
   3efef:	26 ff 0e 98 28       	dec    WORD PTR es:0x2898
   3eff4:	6a 00                	push   0x0
   3eff6:	b8 88 01             	mov    ax,0x188
   3eff9:	8e c0                	mov    es,ax
   3effb:	26 a1 18 73          	mov    ax,es:0x7318
   3efff:	f7 d8                	neg    ax
   3f001:	50                   	push   ax
   3f002:	68 20 03             	push   0x320
   3f005:	9a 3f 07 30 00       	call   0x30:0x73f
   3f00a:	83 c4 06             	add    sp,0x6
   3f00d:	e9 43 f7             	jmp    0x3e753
   3f010:	83 7e fe 01          	cmp    WORD PTR [bp-0x2],0x1
   3f014:	74 12                	je     0x3f028
   3f016:	83 7e fc 07          	cmp    WORD PTR [bp-0x4],0x7
   3f01a:	74 03                	je     0x3f01f
   3f01c:	e9 2c fa             	jmp    0x3ea4b
   3f01f:	83 7e fa 01          	cmp    WORD PTR [bp-0x6],0x1
   3f023:	74 03                	je     0x3f028
   3f025:	e9 23 fa             	jmp    0x3ea4b
   3f028:	b8 88 01             	mov    ax,0x188
   3f02b:	8e c0                	mov    es,ax
   3f02d:	26 83 3e 98 28 01    	cmp    WORD PTR es:0x2898,0x1
   3f033:	74 03                	je     0x3f038
   3f035:	e9 13 fa             	jmp    0x3ea4b
   3f038:	0e                   	push   cs
   3f039:	e8 de f5             	call   0x3e61a
   3f03c:	6a 00                	push   0x0
   3f03e:	b8 88 01             	mov    ax,0x188
   3f041:	8e c0                	mov    es,ax
   3f043:	26 a1 18 73          	mov    ax,es:0x7318
   3f047:	f7 d8                	neg    ax
   3f049:	50                   	push   ax
   3f04a:	68 20 03             	push   0x320
   3f04d:	9a 3f 07 30 00       	call   0x30:0x73f
   3f052:	83 c4 06             	add    sp,0x6
   3f055:	c7 46 f6 00 00       	mov    WORD PTR [bp-0xa],0x0
   3f05a:	eb 03                	jmp    0x3f05f
   3f05c:	e9 ec f9             	jmp    0x3ea4b
   3f05f:	9a b6 06 30 00       	call   0x30:0x6b6
   3f064:	8b 46 f6             	mov    ax,WORD PTR [bp-0xa]
   3f067:	c9                   	leave
   3f068:	cb                   	retf
