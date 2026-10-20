
/home/zabumafu/Projects/LALE DOS/analysis/phase-five/lifecycle-20261014/otopark/dialogue-opcode17.bin:     file format binary


Disassembly of section .data:

00044ae8 <.data>:
   44ae8:	9a b9 1e 10 00       	call   0x10:0x1eb9
   44aed:	90                   	nop
   44aee:	0e                   	push   cs
   44aef:	e8 e1 39             	call   0x484d3
   44af2:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44af5:	80 3e 0b 5c 01       	cmp    BYTE PTR ds:0x5c0b,0x1
   44afa:	76 1b                	jbe    0x44b17
   44afc:	ff 36 9c bb          	push   WORD PTR ds:0xbb9c
   44b00:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44b03:	b4 00                	mov    ah,0x0
   44b05:	50                   	push   ax
   44b06:	1e                   	push   ds
   44b07:	68 a1 5f             	push   0x5fa1
   44b0a:	9a 53 42 00 00       	call   0x0:0x4253
   44b0f:	83 c4 08             	add    sp,0x8
   44b12:	9a d7 29 00 00       	call   0x0:0x29d7
   44b17:	90                   	nop
   44b18:	0e                   	push   cs
   44b19:	e8 b7 39             	call   0x484d3
   44b1c:	88 46 e3             	mov    BYTE PTR [bp-0x1d],al
   44b1f:	8a 46 e3             	mov    al,BYTE PTR [bp-0x1d]
   44b22:	b4 00                	mov    ah,0x0
   44b24:	50                   	push   ax
   44b25:	90                   	nop
   44b26:	0e                   	push   cs
   44b27:	e8 e3 3b             	call   0x4870d
   44b2a:	59                   	pop    cx
   44b2b:	89 56 de             	mov    WORD PTR [bp-0x22],dx
   44b2e:	89 46 dc             	mov    WORD PTR [bp-0x24],ax
   44b31:	80 7e e4 00          	cmp    BYTE PTR [bp-0x1c],0x0
   44b35:	75 20                	jne    0x44b57
   44b37:	6a 00                	push   0x0
   44b39:	68 00 80             	push   0x8000
   44b3c:	9a 79 17 00 00       	call   0x0:0x1779
   44b41:	99                   	cwd
   44b42:	b1 02                	mov    cl,0x2
   44b44:	9a 8d 13 00 00       	call   0x0:0x138d
   44b49:	52                   	push   dx
   44b4a:	50                   	push   ax
   44b4b:	9a df 12 00 00       	call   0x0:0x12df
   44b50:	fe c0                	inc    al
   44b52:	88 46 e4             	mov    BYTE PTR [bp-0x1c],al
   44b55:	eb 27                	jmp    0x44b7e
   44b57:	80 7e e4 05          	cmp    BYTE PTR [bp-0x1c],0x5
   44b5b:	75 21                	jne    0x44b7e
   44b5d:	83 3e 9c bb 04       	cmp    WORD PTR ds:0xbb9c,0x4
   44b62:	7f 05                	jg     0x44b69
   44b64:	a0 9c bb             	mov    al,ds:0xbb9c
   44b67:	eb e9                	jmp    0x44b52
   44b69:	6a 58                	push   0x58
   44b6b:	6a 00                	push   0x0
   44b6d:	6a 00                	push   0x0
   44b6f:	68 6f 02             	push   0x26f
   44b72:	1e                   	push   ds
   44b73:	68 b7 5f             	push   0x5fb7
   44b76:	9a 2a 00 58 01       	call   0x158:0x2a
   44b7b:	83 c4 0c             	add    sp,0xc
   44b7e:	8a 46 e4             	mov    al,BYTE PTR [bp-0x1c]
   44b81:	b4 00                	mov    ah,0x0
   44b83:	50                   	push   ax
   44b84:	6a 00                	push   0x0
   44b86:	ff 76 de             	push   WORD PTR [bp-0x22]
   44b89:	ff 76 dc             	push   WORD PTR [bp-0x24]
   44b8c:	9a 48 29 10 00       	call   0x10:0x2948
   44b91:	83 c4 08             	add    sp,0x8
   44b94:	e9 22 f5             	jmp    0x440b9
